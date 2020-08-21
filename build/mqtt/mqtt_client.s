	.file	"mqtt_client.c"
	.text
.Ltext0:
	.section	.text.esp_mqtt_dispatch_event,"ax",@progbits
	.align	4
	.type	esp_mqtt_dispatch_event, @function
esp_mqtt_dispatch_event:
.LFB52:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/mqtt_client.c"
	.loc 1 501 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 502 0
	l32i.n	a9, a2, 8
	l32i.n	a10, a9, 36
	.loc 1 505 0
	l32i.n	a9, a9, 0
	.loc 1 502 0
	s32i	a10, a2, 176
	.loc 1 503 0
	s32i	a2, a2, 172
	.loc 1 508 0
	movi.n	a10, -1
	.loc 1 505 0
	beqz.n	a9, .L2
	.loc 1 506 0
	movi	a10, 0xa8
	add.n	a10, a2, a10
	callx8	a9
.LVL1:
.L2:
	.loc 1 509 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE52:
	.size	esp_mqtt_dispatch_event, .-esp_mqtt_dispatch_event
	.section	.text.esp_mqtt_destroy_config,"ax",@progbits
	.align	4
	.type	esp_mqtt_destroy_config, @function
esp_mqtt_destroy_config:
.LFB43:
	.loc 1 210 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 211 0
	l32i.n	a3, a2, 8
.LVL4:
	.loc 1 212 0
	l32i.n	a10, a3, 16
	call8	free
.LVL5:
	.loc 1 213 0
	l32i.n	a10, a3, 12
	call8	free
.LVL6:
	.loc 1 214 0
	l32i.n	a10, a3, 20
	call8	free
.LVL7:
	.loc 1 215 0
	l32i.n	a10, a3, 24
	call8	free
.LVL8:
	.loc 1 216 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL9:
	.loc 1 217 0
	l32i	a10, a2, 100
	call8	free
.LVL10:
	.loc 1 218 0
	l32i	a10, a2, 104
	call8	free
.LVL11:
	.loc 1 219 0
	l32i	a10, a2, 88
	call8	free
.LVL12:
	.loc 1 220 0
	l32i	a10, a2, 92
	call8	free
.LVL13:
	.loc 1 221 0
	l32i	a10, a2, 96
	call8	free
.LVL14:
	.loc 1 222 0
	movi.n	a12, 0x28
	movi.n	a11, 0
	addi	a10, a2, 88
	call8	memset
.LVL15:
	.loc 1 223 0
	l32i.n	a10, a2, 8
	.loc 1 225 0
	movi.n	a2, 0
.LVL16:
	.loc 1 223 0
	call8	free
.LVL17:
	.loc 1 225 0
	retw.n
.LFE43:
	.size	esp_mqtt_destroy_config, .-esp_mqtt_destroy_config
	.section	.text.esp_mqtt_dispatch_event_with_msgid,"ax",@progbits
	.align	4
	.type	esp_mqtt_dispatch_event_with_msgid, @function
esp_mqtt_dispatch_event_with_msgid:
.LFB51:
	.loc 1 495 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 496 0
	l16ui	a11, a2, 24
	l32i.n	a10, a2, 16
	call8	mqtt_get_id
.LVL19:
	s32i	a10, a2, 204
	.loc 1 497 0
	mov.n	a10, a2
	call8	esp_mqtt_dispatch_event
.LVL20:
	.loc 1 498 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE51:
	.size	esp_mqtt_dispatch_event_with_msgid, .-esp_mqtt_dispatch_event_with_msgid
	.section	.text.esp_mqtt_abort_connection,"ax",@progbits
	.literal_position
	.literal .LC0, 10000
	.align	4
	.type	esp_mqtt_abort_connection, @function
esp_mqtt_abort_connection:
.LFB45:
	.loc 1 289 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 290 0
	l32i.n	a10, a2, 4
	call8	esp_transport_close
.LVL23:
	.loc 1 291 0
	l32r	a8, .LC0
	s32i	a8, a2, 160
	.loc 1 292 0
	call8	platform_tick_get_ms
.LVL24:
	.loc 1 293 0
	movi.n	a8, 3
	s32i	a8, a2, 128
	.loc 1 295 0
	movi.n	a8, 2
	s32i	a8, a2, 168
	.loc 1 296 0
	movi.n	a8, 0
	.loc 1 292 0
	s32i	a10, a2, 152
	s32i	a11, a2, 156
	.loc 1 296 0
	s8i	a8, a2, 213
	.loc 1 297 0
	mov.n	a10, a2
	call8	esp_mqtt_dispatch_event_with_msgid
.LVL25:
	.loc 1 299 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE45:
	.size	esp_mqtt_abort_connection, .-esp_mqtt_abort_connection
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"MQTT_CLIENT"
.LC3:
	.string	"\033[0;31mE (%d) %s: Error write data or timeout, written len = %d\033[0m\n"
	.section	.text.mqtt_write_data,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	mqtt_write_data, @function
mqtt_write_data:
.LFB50:
	.loc 1 477 0
.LVL27:
	entry	sp, 32
.LCFI4:
	.loc 1 479 0
	l32i.n	a3, a2, 40
	.loc 1 478 0
	l32i.n	a8, a2, 8
	l32i.n	a12, a3, 4
	l32i.n	a11, a3, 0
	l32i.n	a13, a8, 40
	l32i.n	a10, a2, 4
	call8	esp_transport_write
.LVL28:
	mov.n	a3, a10
.LVL29:
	.loc 1 483 0
	bgei	a10, 1, .L8
	.loc 1 484 0 discriminator 2
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	.loc 1 485 0 discriminator 2
	movi.n	a2, -1
.LVL32:
	retw.n
.LVL33:
.L8:
	.loc 1 490 0
	call8	platform_tick_get_ms
.LVL34:
	s32i	a10, a2, 144
	s32i	a11, a2, 148
	.loc 1 491 0
	movi.n	a2, 0
.LVL35:
	.loc 1 492 0
	retw.n
.LFE50:
	.size	mqtt_write_data, .-mqtt_write_data
	.section	.rodata.str1.1
.LC5:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/mqtt_client.c"
.LC8:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC10:
	.string	"Memory exhausted"
	.section	.text.create_string,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, .LC1
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, __FUNCTION__$7199
	.align	4
	.type	create_string, @function
create_string:
.LFB48:
	.loc 1 413 0
.LVL36:
	entry	sp, 48
.LCFI5:
	.loc 1 416 0
	movi.n	a4, 0
	.loc 1 415 0
	blti	a3, 1, .L11
	.loc 1 418 0
	addi.n	a11, a3, 1
	movi.n	a10, 1
	call8	calloc
.LVL37:
	mov.n	a4, a10
.LVL38:
	.loc 1 419 0
	bnez.n	a10, .L12
.LVL39:
.LBB35:
.LBB36:
	call8	esp_log_timestamp
.LVL40:
	l32r	a2, .LC11
.LVL41:
	l32r	a11, .LC7
	s32i.n	a2, sp, 8
	l32r	a2, .LC12
	l32r	a15, .LC6
	s32i.n	a2, sp, 4
	l32r	a12, .LC9
	movi	a2, 0x1a3
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL42:
	j	.L11
.LVL43:
.L12:
.LBE36:
.LBE35:
	.loc 1 420 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	memcpy
.LVL44:
.L11:
	.loc 1 422 0
	mov.n	a2, a4
	retw.n
.LFE48:
	.size	create_string, .-create_string
	.section	.text.is_valid_mqtt_msg,"ax",@progbits
	.align	4
	.type	is_valid_mqtt_msg, @function
is_valid_mqtt_msg:
.LFB54:
	.loc 1 587 0
.LVL45:
	entry	sp, 32
.LCFI6:
	.loc 1 589 0
	l32i	a8, a2, 84
	bnez.n	a8, .L15
.LVL46:
.L18:
	.loc 1 590 0
	movi.n	a2, 0
.LVL47:
	retw.n
.LVL48:
.L15:
	.loc 1 592 0
	l32i	a10, a2, 216
	mov.n	a12, a3
	mov.n	a11, a4
	call8	outbox_delete
.LVL49:
	bnez.n	a10, .L17
.LVL50:
.L19:
	.loc 1 593 0
	l32i	a8, a2, 84
	addi.n	a8, a8, -1
	s32i	a8, a2, 84
	.loc 1 594 0
	movi.n	a2, 1
.LVL51:
	retw.n
.LVL52:
.L17:
	.loc 1 596 0
	l32i	a8, a2, 76
	bne	a3, a8, .L18
.LVL53:
.LBB39:
.LBB40:
	l16ui	a3, a2, 72
.LVL54:
	bne	a4, a3, .L18
	j	.L19
.LBE40:
.LBE39:
.LFE54:
	.size	is_valid_mqtt_msg, .-is_valid_mqtt_msg
	.section	.rodata.str1.1
.LC14:
	.string	"\033[0;31mE (%d) %s: There are no transports valid, stop mqtt client, config scheme = %s\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: There are no transport\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: Error transport connect\033[0m\n"
.LC20:
	.string	"\033[0;32mI (%d) %s: Sending MQTT CONNECT message, type: %d, id: %04X\033[0m\n"
.LC22:
	.string	"\033[0;31mE (%d) %s: Writing failed, errno= %d\033[0m\n"
.LC24:
	.string	"\033[0;31mE (%d) %s: Error network response\033[0m\n"
.LC26:
	.string	"\033[0;31mE (%d) %s: Invalid MSG_TYPE response: %d, read_len: %d\033[0m\n"
.LC29:
	.string	"\033[0;33mW (%d) %s: Connection refused, bad protocol\033[0m\n"
.LC31:
	.string	"\033[0;33mW (%d) %s: Connection refused, server unavailable\033[0m\n"
.LC33:
	.string	"\033[0;33mW (%d) %s: Connection refused, bad username or password\033[0m\n"
.LC35:
	.string	"\033[0;33mW (%d) %s: Connection refused, not authorized\033[0m\n"
.LC37:
	.string	"\033[0;33mW (%d) %s: Connection refused, Unknow reason\033[0m\n"
.LC39:
	.string	"\033[0;31mE (%d) %s: Read error or end of stream\033[0m\n"
.LC42:
	.string	"\033[0;31mE (%d) %s: Error write qos msg repsonse, qos = %d\033[0m\n"
.LC44:
	.string	"\033[0;31mE (%d) %s: Read error or timeout: len_read=%d, errno=%d\033[0m\n"
.LC46:
	.string	"\033[0;31mE (%d) %s: No PING_RESP, disconnected\033[0m\n"
.LC48:
	.string	"\033[0;31mE (%d) %s: Error sending ping\033[0m\n"
.LC50:
	.string	"\033[0;31mE (%d) %s: Can't send ping, disconnected\033[0m\n"
.LC55:
	.string	"\033[0;32mI (%d) %s: Error MQTT Connected\033[0m\n"
	.section	.text.esp_mqtt_task,"ax",@progbits
	.literal_position
	.literal .LC13, .LC1
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC28, .L37
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC41, .L47
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC52, 30000
	.literal .LC53, 4096
	.literal .LC54, -858993459
	.literal .LC56, .LC55
	.align	4
	.type	esp_mqtt_task, @function
esp_mqtt_task:
.LFB58:
	.loc 1 750 0
.LVL55:
	entry	sp, 96
.LCFI7:
	.loc 1 750 0
	mov.n	a6, a2
.LVL56:
	.loc 1 752 0
	movi.n	a2, 1
.LVL57:
	s8i	a2, a6, 212
	.loc 1 755 0
	l32i.n	a2, a6, 8
	l32i.n	a10, a6, 0
	l32i.n	a11, a2, 24
	call8	esp_transport_list_get_transport
.LVL58:
	s32i.n	a10, a6, 4
	mov.n	a2, a10
	.loc 1 757 0
	bnez.n	a10, .L21
	.loc 1 758 0 discriminator 2
	call8	esp_log_timestamp
.LVL59:
	l32i.n	a3, a6, 8
	l32r	a11, .LC13
	l32i.n	a15, a3, 24
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL60:
	.loc 1 759 0 discriminator 2
	s8i	a2, a6, 212
.L21:
	.loc 1 762 0
	l32i.n	a2, a6, 8
	l32i.n	a3, a2, 28
	bnez.n	a3, .L22
	.loc 1 763 0
	l32i.n	a10, a6, 4
	call8	esp_transport_get_default_port
.LVL61:
	s32i.n	a10, a2, 28
.L22:
	.loc 1 766 0
	movi.n	a2, 1
	.loc 1 767 0
	l32i	a10, a6, 220
	.loc 1 766 0
	s32i	a2, a6, 128
	.loc 1 767 0
	mov.n	a11, a2
	call8	xEventGroupClearBits
.LVL62:
	.loc 1 768 0
	j	.L23
.L100:
	.loc 1 770 0
	l32i	a3, a6, 128
	beqi	a3, 2, .L25
	beqi	a3, 3, .L26
	bnei	a3, 1, .L100
	.loc 1 772 0
	movi.n	a2, 7
	s32i	a2, a6, 168
	.loc 1 773 0
	mov.n	a10, a6
	call8	esp_mqtt_dispatch_event_with_msgid
.LVL63:
	.loc 1 775 0
	l32i.n	a4, a6, 4
	l32r	a2, .LC13
	bnez.n	a4, .L28
	.loc 1 776 0 discriminator 2
	call8	esp_log_timestamp
.LVL64:
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_log_write
.LVL65:
	.loc 1 777 0 discriminator 2
	s8i	a4, a6, 212
.L28:
	.loc 1 781 0
	l32i.n	a3, a6, 8
	.loc 1 780 0
	l32i.n	a10, a6, 4
	l32i.n	a13, a3, 40
	l32i.n	a12, a3, 28
	l32i.n	a11, a3, 16
	call8	esp_transport_connect
.LVL66:
	bgez	a10, .L29
	.loc 1 784 0 discriminator 2
	call8	esp_log_timestamp
.LVL67:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC19
	j	.L115
.L29:
.LVL68:
.LBB63:
.LBB64:
	.loc 1 230 0
	movi.n	a3, 0
	.loc 1 231 0
	l16ui	a12, a6, 28
	.loc 1 230 0
	s8i	a3, a6, 213
.LVL69:
	.loc 1 231 0
	l32i.n	a11, a6, 20
	addi	a3, a6, 44
	mov.n	a10, a3
	call8	mqtt_msg_init
.LVL70:
	.loc 1 234 0
	l32i.n	a11, a6, 12
	mov.n	a10, a3
	call8	mqtt_msg_connect
.LVL71:
	mov.n	a3, a10
	s32i.n	a10, a6, 40
	.loc 1 236 0
	l32i.n	a10, a10, 0
.LVL72:
	.loc 1 237 0
	l16ui	a11, a3, 4
	.loc 1 236 0
	l8ui	a4, a10, 0
	srli	a4, a4, 4
	s32i	a4, a6, 76
	.loc 1 237 0
	call8	mqtt_get_id
.LVL73:
	s16i	a10, a6, 72
	.loc 1 239 0
	call8	esp_log_timestamp
.LVL74:
	l16ui	a3, a6, 72
	l32r	a12, .LC21
	l32i	a15, a6, 76
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a11, a2
	movi.n	a10, 3
	mov.n	a14, a2
	call8	esp_log_write
.LVL75:
	.loc 1 244 0
	l32i.n	a3, a6, 40
	.loc 1 243 0
	l32i.n	a4, a6, 8
	l32i.n	a12, a3, 4
	l32i.n	a13, a4, 40
	l32i.n	a11, a3, 0
	l32i.n	a10, a6, 4
	call8	esp_transport_write
.LVL76:
	.loc 1 247 0
	bgez	a10, .L31
	.loc 1 248 0
	call8	esp_log_timestamp
.LVL77:
	mov.n	a3, a10
	call8	__errno
.LVL78:
	l32i.n	a15, a10, 0
	l32r	a12, .LC23
	mov.n	a14, a2
	mov.n	a13, a3
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
	j	.L32
.LVL80:
.L31:
	.loc 1 251 0
	l32i.n	a3, a6, 8
	l32i.n	a12, a6, 24
	l32i.n	a13, a3, 40
	l32i.n	a11, a6, 16
	l32i.n	a10, a6, 4
.LVL81:
	call8	esp_transport_read
.LVL82:
	mov.n	a5, a10
.LVL83:
	.loc 1 255 0
	bgez	a10, .L33
	.loc 1 256 0
	call8	esp_log_timestamp
.LVL84:
	mov.n	a13, a10
	mov.n	a14, a2
	l32r	a12, .LC25
	mov.n	a11, a2
	movi.n	a10, 1
	j	.L113
.L33:
	.loc 1 260 0
	l32i.n	a4, a6, 16
.LVL85:
	l8ui	a3, a4, 0
	srli	a3, a3, 4
	beqi	a3, 2, .L34
	.loc 1 261 0
	call8	esp_log_timestamp
.LVL86:
	l32i.n	a3, a6, 16
	l32r	a12, .LC27
	l8ui	a15, a3, 0
	mov.n	a13, a10
	s32i.n	a5, sp, 0
.LVL87:
	srli	a15, a15, 4
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL88:
	j	.L32
.LVL89:
.L34:
	.loc 1 265 0
	l8ui	a3, a4, 3
	bgeui	a3, 6, .L35
	l32r	a5, .LC28
.LVL90:
	addx4	a3, a3, a5
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.esp_mqtt_task,"a",@progbits
	.align	4
	.align	4
.L37:
	.word	.L36
	.word	.L38
	.word	.L35
	.word	.L39
	.word	.L40
	.word	.L41
	.section	.text.esp_mqtt_task
.L38:
	.loc 1 270 0
	call8	esp_log_timestamp
.LVL91:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC30
	j	.L112
.LVL92:
.L39:
	.loc 1 273 0
	call8	esp_log_timestamp
.LVL93:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC32
	j	.L112
.LVL94:
.L40:
	.loc 1 276 0
	call8	esp_log_timestamp
.LVL95:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC34
	j	.L112
.LVL96:
.L41:
	.loc 1 279 0
	call8	esp_log_timestamp
.LVL97:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC36
	j	.L112
.LVL98:
.L35:
	.loc 1 282 0
	call8	esp_log_timestamp
.LVL99:
	l32r	a12, .LC38
	mov.n	a14, a2
	mov.n	a13, a10
.L112:
	mov.n	a11, a2
	movi.n	a10, 2
.LVL100:
.L113:
	call8	esp_log_write
.LVL101:
	j	.L32
.LVL102:
.L25:
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	.loc 1 650 0
	l32i.n	a12, a6, 24
	l32i.n	a11, a6, 16
	l32i.n	a10, a6, 4
	movi	a13, 0x3e8
	call8	esp_transport_read
.LVL103:
	mov.n	a2, a10
.LVL104:
	.loc 1 652 0
	bgez	a10, .L42
	.loc 1 653 0
	call8	esp_log_timestamp
.LVL105:
	l32r	a11, .LC13
	l32r	a12, .LC40
	mov.n	a14, a11
	mov.n	a13, a10
.LVL106:
.L114:
	movi.n	a10, 1
	j	.L111
.LVL107:
.L42:
	.loc 1 657 0
	movi.n	a3, 0
	bnez.n	a10, .L44
	j	.L43
.LVL108:
.L72:
	.loc 1 664 0
	l32i.n	a10, a6, 16
	.loc 1 666 0
	sub	a7, a2, a3
	.loc 1 664 0
	add.n	a10, a10, a3
	l8ui	a4, a10, 0
.LVL109:
	.loc 1 666 0
	extui	a5, a7, 0, 16
	mov.n	a11, a5
	s32i.n	a5, sp, 44
	.loc 1 670 0
	srli	a5, a4, 4
	.loc 1 666 0
	call8	mqtt_get_id
.LVL110:
	.loc 1 670 0
	addi	a5, a5, -3
	extui	a5, a5, 0, 8
	movi.n	a8, 0xa
	.loc 1 666 0
	mov.n	a11, a10
.LVL111:
	.loc 1 670 0
	bltu	a8, a5, .L45
	l32r	a9, .LC41
	addx4	a5, a5, a9
	l32i.n	a5, a5, 0
	jx	a5
	.section	.rodata.esp_mqtt_task
	.align	4
	.align	4
.L47:
	.word	.L46
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L48
	.word	.L45
	.word	.L52
	.word	.L45
	.word	.L53
	.word	.L45
	.word	.L54
	.section	.text.esp_mqtt_task
.L52:
	.loc 1 673 0
	mov.n	a12, a10
	movi.n	a11, 8
	mov.n	a10, a6
.LVL112:
	call8	is_valid_mqtt_msg
.LVL113:
	.loc 1 675 0
	movi.n	a4, 3
.LVL114:
	.loc 1 673 0
	bnez.n	a10, .L109
	j	.L45
.LVL115:
.L53:
	.loc 1 680 0
	mov.n	a12, a10
	movi.n	a11, 0xa
	mov.n	a10, a6
.LVL116:
	call8	is_valid_mqtt_msg
.LVL117:
	beqz.n	a10, .L45
	.loc 1 682 0
	movi.n	a4, 4
.LVL118:
.L109:
	s32i	a4, a6, 168
	.loc 1 683 0
	mov.n	a10, a6
	call8	esp_mqtt_dispatch_event_with_msgid
.LVL119:
	j	.L45
.LVL120:
.L46:
.LBB67:
.LBB68:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/mqtt_msg.h"
	.loc 2 109 0
	extui	a4, a4, 1, 2
.LVL121:
.LBE68:
.LBE67:
	.loc 1 665 0
	extui	a5, a4, 0, 8
	.loc 1 687 0
	bnei	a4, 1, .L57
	.loc 1 688 0
	addi	a10, a6, 44
.LVL122:
	call8	mqtt_msg_puback
.LVL123:
	j	.L107
.LVL124:
.L57:
	.loc 1 690 0
	bnei	a4, 2, .L58
	.loc 1 691 0
	addi	a10, a6, 44
.LVL125:
	call8	mqtt_msg_pubrec
.LVL126:
.L107:
	s32i.n	a10, a6, 40
.L58:
	.loc 1 694 0
	addi.n	a5, a5, -1
	extui	a5, a5, 0, 8
	bgeui	a5, 2, .L60
	.loc 1 697 0
	mov.n	a10, a6
	call8	mqtt_write_data
.LVL127:
	beqz.n	a10, .L60
	.loc 1 698 0
	call8	esp_log_timestamp
.LVL128:
	l32r	a11, .LC13
	l32r	a12, .LC43
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
.L60:
	.loc 1 706 0
	l32i.n	a10, a6, 16
	.loc 1 705 0
	s32i.n	a7, a6, 36
	.loc 1 706 0
	extui	a11, a7, 0, 16
	add.n	a10, a10, a3
	call8	mqtt_get_total_length
.LVL130:
.LBB69:
.LBB70:
	.loc 1 517 0
	l32i.n	a4, a6, 24
.LBE70:
.LBE69:
	.loc 1 708 0
	l32i.n	a5, a6, 16
	l32i.n	a7, a6, 36
.LVL131:
.LBB73:
.LBB71:
	.loc 1 519 0
	l32i.n	a8, a6, 4
	.loc 1 517 0
	s32i.n	a4, sp, 40
	.loc 1 515 0
	movi.n	a4, 0
.LBE71:
.LBE73:
	.loc 1 706 0
	s32i.n	a10, a6, 32
	.loc 1 708 0
	add.n	a5, a5, a3
.LVL132:
.LBB74:
.LBB72:
	.loc 1 519 0
	s32i.n	a8, sp, 32
.LVL133:
	.loc 1 516 0
	mov.n	a15, a7
	.loc 1 515 0
	s32i.n	a4, sp, 36
.LVL134:
.L70:
	.loc 1 523 0
	bnez.n	a4, .L62
.LVL135:
	.loc 1 525 0
	l32i.n	a10, sp, 32
	call8	esp_transport_get_payload_transport_handle
.LVL136:
	s32i.n	a10, sp, 32
.LVL137:
	.loc 1 527 0
	addi	a11, sp, 20
	mov.n	a10, a5
.LVL138:
	.loc 1 526 0
	s32i.n	a7, sp, 20
	s32i.n	a7, sp, 16
	.loc 1 527 0
	call8	mqtt_get_publish_topic
.LVL139:
	mov.n	a12, a10
.LVL140:
	bnez.n	a10, .L63
.LVL141:
.L65:
	.loc 1 530 0
	l32i.n	a10, a6, 16
	mov.n	a11, a5
	mov.n	a12, a7
	call8	memmove
.LVL142:
	.loc 1 533 0
	l32i.n	a10, a6, 24
	.loc 1 532 0
	l32i.n	a5, a6, 16
.LVL143:
	.loc 1 533 0
	sub	a10, a10, a7
	s32i.n	a10, sp, 40
.LVL144:
	.loc 1 534 0
	movi.n	a15, 0
	j	.L64
.LVL145:
.L63:
	.loc 1 527 0
	addi	a11, sp, 16
	mov.n	a10, a5
.LVL146:
	s32i.n	a12, sp, 52
	call8	mqtt_get_publish_data
.LVL147:
	mov.n	a13, a10
.LVL148:
	l32i.n	a12, sp, 52
	beqz.n	a10, .L65
	.loc 1 536 0
	l32i.n	a10, a6, 32
.LVL149:
	l32i.n	a15, sp, 16
	l32i.n	a9, a6, 36
	add.n	a4, a10, a15
	sub	a4, a4, a9
.LVL150:
	.loc 1 538 0
	bgeu	a9, a10, .L66
	.loc 1 540 0
	sub	a10, a5, a13
	add.n	a9, a10, a9
	s32i.n	a9, sp, 16
.L66:
	.loc 1 543 0
	l16ui	a11, a6, 24
	l32i.n	a10, a6, 16
	s32i.n	a12, sp, 52
	s32i.n	a13, sp, 48
	s32i.n	a15, sp, 56
	call8	mqtt_get_id
.LVL151:
	s32i	a10, a6, 204
.LVL152:
	.loc 1 552 0
	l32i.n	a12, sp, 52
	l32i.n	a13, sp, 48
	l32i.n	a15, sp, 56
	mov.n	a7, a4
.LVL153:
	beqz.n	a4, .L64
	j	.L67
.LVL154:
.L62:
	.loc 1 549 0
	movi.n	a12, 0
	.loc 1 547 0
	l32i.n	a13, a6, 16
.LVL155:
	.loc 1 549 0
	s32i.n	a12, sp, 20
.LVL156:
.L67:
	.loc 1 554 0
	movi.n	a8, 6
	s32i	a8, a6, 168
	.loc 1 560 0
	l32i.n	a9, sp, 20
	.loc 1 558 0
	l32i.n	a8, sp, 36
	.loc 1 556 0
	s32i	a15, a6, 184
	.loc 1 555 0
	s32i	a13, a6, 180
	.loc 1 557 0
	s32i	a4, a6, 188
	.loc 1 558 0
	s32i	a8, a6, 192
	.loc 1 559 0
	s32i	a12, a6, 196
	.loc 1 560 0
	s32i	a9, a6, 200
	.loc 1 561 0
	mov.n	a10, a6
	s32i.n	a15, sp, 56
	call8	esp_mqtt_dispatch_event
.LVL157:
	l32i.n	a15, sp, 56
	movi.n	a7, 0
.LVL158:
.L64:
	.loc 1 564 0
	l32i.n	a8, sp, 36
	.loc 1 565 0
	l32i.n	a12, a6, 36
	.loc 1 564 0
	add.n	a8, a8, a15
	.loc 1 565 0
	l32i.n	a10, a6, 32
	.loc 1 564 0
	s32i.n	a8, sp, 36
.LVL159:
	.loc 1 565 0
	bgeu	a12, a10, .L45
	.loc 1 569 0
	l32i.n	a13, a6, 8
	l32i.n	a8, sp, 40
.LVL160:
	l32i.n	a11, a6, 16
	sub	a12, a10, a12
	l32i.n	a13, a13, 40
	l32i.n	a10, sp, 32
	minu	a12, a12, a8
	add.n	a11, a11, a7
	call8	esp_transport_read
.LVL161:
	.loc 1 576 0
	l32i.n	a8, a6, 24
	.loc 1 569 0
	mov.n	a15, a10
	.loc 1 576 0
	s32i.n	a8, sp, 40
	.loc 1 574 0
	add.n	a7, a7, a10
.LVL162:
	.loc 1 577 0
	bgei	a10, 1, .L69
	.loc 1 578 0
	s32i.n	a10, sp, 56
	call8	esp_log_timestamp
.LVL163:
	mov.n	a4, a10
	call8	__errno
.LVL164:
	l32i.n	a5, a10, 0
.LVL165:
	l32r	a11, .LC13
	l32i.n	a15, sp, 56
	l32r	a12, .LC45
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	mov.n	a13, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL166:
	j	.L45
.LVL167:
.L69:
	.loc 1 581 0
	l32i.n	a10, a6, 36
.LVL168:
	add.n	a10, a10, a15
	s32i.n	a10, a6, 36
	j	.L70
.LVL169:
.L48:
.LBE72:
.LBE74:
	.loc 1 711 0
	mov.n	a12, a10
	movi.n	a11, 3
	mov.n	a10, a6
.LVL170:
	call8	is_valid_mqtt_msg
.LVL171:
	.loc 1 713 0
	movi.n	a4, 5
.LVL172:
	.loc 1 711 0
	bnez.n	a10, .L109
	j	.L45
.LVL173:
.L49:
	.loc 1 720 0
	addi	a10, a6, 44
.LVL174:
	call8	mqtt_msg_pubrel
.LVL175:
	j	.L110
.LVL176:
.L50:
	.loc 1 725 0
	addi	a10, a6, 44
.LVL177:
	call8	mqtt_msg_pubcomp
.LVL178:
.L110:
	s32i.n	a10, a6, 40
	.loc 1 726 0
	mov.n	a10, a6
	call8	mqtt_write_data
.LVL179:
	j	.L45
.LVL180:
.L54:
	.loc 1 739 0
	movi.n	a4, 0
.LVL181:
	s8i	a4, a6, 213
.LVL182:
.L45:
	.loc 1 743 0
	l32i.n	a10, a6, 16
	l32i.n	a11, sp, 44
	add.n	a10, a10, a3
	call8	mqtt_get_total_length
.LVL183:
	add.n	a3, a3, a10
.LVL184:
.L44:
	.loc 1 662 0
	bltu	a3, a2, .L72
	j	.L43
.LVL185:
.L84:
.LBE66:
.LBE65:
	.loc 1 810 0
	l8ui	a2, a6, 213
	beqz.n	a2, .L73
	.loc 1 811 0 discriminator 2
	call8	esp_log_timestamp
.LVL186:
	l32r	a11, .LC13
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL187:
	.loc 1 812 0 discriminator 2
	mov.n	a10, a6
	.loc 1 813 0 discriminator 2
	movi.n	a2, 0
	.loc 1 812 0 discriminator 2
	call8	esp_mqtt_abort_connection
.LVL188:
	.loc 1 813 0 discriminator 2
	s8i	a2, a6, 213
	.loc 1 814 0 discriminator 2
	j	.L23
.L73:
.LVL189:
.LBB75:
.LBB76:
	.loc 1 896 0
	addi	a10, a6, 44
	call8	mqtt_msg_pingreq
.LVL190:
	s32i.n	a10, a6, 40
	.loc 1 898 0
	mov.n	a10, a6
	call8	mqtt_write_data
.LVL191:
	beqz.n	a10, .L74
	.loc 1 899 0
	call8	esp_log_timestamp
.LVL192:
	l32r	a2, .LC13
	l32r	a12, .LC49
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL193:
.LBE76:
.LBE75:
	.loc 1 817 0
	call8	esp_log_timestamp
.LVL194:
	l32r	a12, .LC51
	mov.n	a14, a2
	mov.n	a13, a10
.LVL195:
.L115:
	mov.n	a11, a2
	j	.L114
.LVL196:
.L87:
	.loc 1 826 0
	l32i.n	a2, a6, 8
	l32i.n	a2, a2, 44
	beqz.n	a2, .L76
	.loc 1 827 0 discriminator 1
	call8	platform_tick_get_ms
.LVL197:
	.loc 1 826 0 discriminator 1
	l32i	a2, a6, 136
	l32i	a4, a6, 140
	sub	a2, a10, a2
	movi.n	a3, 1
	bltu	a10, a2, .L78
	movi.n	a3, 0
.L78:
	sub	a11, a11, a4
	sub	a11, a11, a3
	.loc 1 827 0 discriminator 1
	l32i.n	a3, a6, 8
	.loc 1 826 0 discriminator 1
	l32i.n	a3, a3, 44
	srai	a4, a3, 31
	bltu	a4, a11, .L88
	bne	a11, a4, .L76
	bgeu	a3, a2, .L76
.L88:
	.loc 1 829 0
	mov.n	a10, a6
	.loc 1 830 0
	movi.n	a2, 1
	.loc 1 829 0
	call8	esp_mqtt_abort_connection
.LVL198:
	.loc 1 830 0
	s32i	a2, a6, 128
.L76:
	.loc 1 834 0
	l32i	a2, a6, 216
	call8	platform_tick_get_ms
.LVL199:
	l32r	a12, .LC52
	mov.n	a11, a10
	mov.n	a10, a2
	call8	outbox_delete_expired
.LVL200:
	.loc 1 836 0
	l32r	a11, .LC53
	l32i	a10, a6, 216
	call8	outbox_cleanup
.LVL201:
	.loc 1 837 0
	j	.L23
.LVL202:
.L26:
	.loc 1 840 0
	l32i.n	a2, a6, 8
	l8ui	a2, a2, 32
	bnez.n	a2, .L80
	.loc 1 841 0
	s8i	a2, a6, 212
	.loc 1 842 0
	j	.L23
.L80:
	.loc 1 844 0
	call8	platform_tick_get_ms
.LVL203:
	l32i	a2, a6, 152
	l32i	a4, a6, 156
	sub	a2, a10, a2
	movi.n	a3, 1
	bltu	a10, a2, .L82
	movi.n	a3, 0
.L82:
	sub	a11, a11, a4
	sub	a11, a11, a3
	l32i	a3, a6, 160
	srai	a4, a3, 31
	bltu	a4, a11, .L89
	bne	a11, a4, .L81
	bgeu	a3, a2, .L81
.L89:
	.loc 1 845 0
	movi.n	a4, 1
	s32i	a4, a6, 128
	.loc 1 846 0
	call8	platform_tick_get_ms
.LVL204:
	s32i	a10, a6, 152
	s32i	a11, a6, 156
.L81:
	.loc 1 849 0
	l32i	a2, a6, 160
	extui	a10, a2, 31, 1
	add.n	a2, a10, a2
	l32r	a10, .LC54
	srai	a2, a2, 1
	muluh	a10, a2, a10
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL205:
.L23:
	.loc 1 768 0
	l8ui	a2, a6, 212
	bnez.n	a2, .L100
	.loc 1 853 0
	l32i.n	a10, a6, 4
	call8	esp_transport_close
.LVL206:
	.loc 1 854 0
	l32i	a10, a6, 220
	movi.n	a11, 1
	call8	xEventGroupSetBits
.LVL207:
	.loc 1 856 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL208:
	.loc 1 857 0
	retw.n
.LVL209:
.L32:
	.loc 1 790 0
	call8	esp_log_timestamp
.LVL210:
	l32r	a12, .LC56
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
.LVL211:
.L111:
	call8	esp_log_write
.LVL212:
	.loc 1 791 0
	mov.n	a10, a6
	call8	esp_mqtt_abort_connection
.LVL213:
	.loc 1 792 0
	j	.L23
.LVL214:
.L36:
	.loc 1 794 0
	movi.n	a5, 1
	s32i	a5, a6, 168
.LVL215:
	.loc 1 795 0
	l8ui	a2, a4, 2
	.loc 1 797 0
	mov.n	a10, a6
.LVL216:
	.loc 1 795 0
	and	a2, a2, a5
	s32i	a2, a6, 208
	.loc 1 796 0
	movi.n	a2, 2
	s32i	a2, a6, 128
	.loc 1 797 0
	call8	esp_mqtt_dispatch_event_with_msgid
.LVL217:
	.loc 1 798 0
	call8	platform_tick_get_ms
.LVL218:
	s32i	a10, a6, 136
	s32i	a11, a6, 140
	.loc 1 800 0
	j	.L23
.LVL219:
.L43:
	.loc 1 808 0
	call8	platform_tick_get_ms
.LVL220:
	l32i	a3, a6, 144
	l32i	a4, a6, 148
	sub	a3, a10, a3
	movi.n	a2, 1
.LVL221:
	bltu	a10, a3, .L85
	movi.n	a2, 0
.L85:
	sub	a11, a11, a4
	l32i	a4, a6, 108
	sub	a11, a11, a2
	slli	a2, a4, 5
	sub	a2, a2, a4
	addx4	a2, a2, a4
	slli	a2, a2, 2
	srai	a4, a2, 31
	bltu	a4, a11, .L84
	bne	a11, a4, .L87
	bltu	a2, a3, .L84
	j	.L87
.LVL222:
.L74:
	.loc 1 821 0
	movi.n	a2, 1
	s8i	a2, a6, 213
	j	.L87
.LFE58:
	.size	esp_mqtt_task, .-esp_mqtt_task
	.section	.text.mqtt_enqueue,"ax",@progbits
	.align	4
	.type	mqtt_enqueue, @function
mqtt_enqueue:
.LFB56:
	.loc 1 626 0
.LVL223:
	entry	sp, 64
.LCFI8:
	.loc 1 630 0
	l32i	a8, a2, 84
	blti	a8, 1, .L116
.LVL224:
.LBB80:
.LBB81:
	.loc 1 631 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL225:
	.loc 1 632 0
	l32i.n	a8, a2, 40
	l32i.n	a9, a8, 0
	.loc 1 633 0
	l32i.n	a8, a8, 4
	.loc 1 632 0
	s32i.n	a9, sp, 0
	.loc 1 633 0
	s32i.n	a8, sp, 4
	.loc 1 634 0
	l16ui	a8, a2, 72
	s32i.n	a8, sp, 8
	.loc 1 635 0
	l32i	a8, a2, 76
	.loc 1 637 0
	l32i	a2, a2, 216
.LVL226:
	.loc 1 635 0
	s32i.n	a8, sp, 12
	.loc 1 637 0
	call8	platform_tick_get_ms
.LVL227:
	mov.n	a12, a10
	mov.n	a11, sp
	mov.n	a10, a2
	call8	outbox_enqueue
.LVL228:
.L116:
	retw.n
.LBE81:
.LBE80:
.LFE56:
	.size	mqtt_enqueue, .-mqtt_enqueue
	.section	.text.esp_mqtt_set_config,"ax",@progbits
	.literal_position
	.literal .LC57, .LC5
	.literal .LC58, .LC1
	.literal .LC59, .LC8
	.literal .LC60, .LC10
	.literal .LC61, __FUNCTION__$7158
	.literal .LC62, 6144
	.literal .LC63, 10000
	.align	4
	.global	esp_mqtt_set_config
	.type	esp_mqtt_set_config, @function
esp_mqtt_set_config:
.LFB42:
	.loc 1 88 0
.LVL229:
	entry	sp, 48
.LCFI9:
.LVL230:
	.loc 1 92 0
	l32i.n	a4, a2, 8
	bnez.n	a4, .L119
	.loc 1 95 0
	movi.n	a11, 0x30
	movi.n	a10, 1
	call8	calloc
.LVL231:
	mov.n	a4, a10
.LVL232:
	.loc 1 96 0
	bnez.n	a10, .L120
	.loc 1 96 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL233:
	l32r	a2, .LC60
.LVL234:
	l32r	a11, .LC58
	s32i.n	a2, sp, 8
	l32r	a2, .LC61
	l32r	a15, .LC57
	s32i.n	a2, sp, 4
	l32r	a12, .LC59
	movi	a2, 0x60
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL235:
	j	.L201
.LVL236:
.L120:
	.loc 1 97 0 is_stmt 1
	s32i.n	a10, a2, 8
.LVL237:
.L119:
	.loc 1 99 0
	l32i	a5, a3, 64
	beqz.n	a5, .L122
	.loc 1 100 0
	s32i.n	a5, a4, 8
.L122:
	.loc 1 103 0
	l32i.n	a5, a4, 8
	bgei	a5, 1, .L123
	.loc 1 104 0
	movi.n	a5, 5
	s32i.n	a5, a4, 8
.L123:
	.loc 1 106 0
	l32i	a5, a3, 68
	beqz.n	a5, .L124
	.loc 1 107 0
	s32i.n	a5, a4, 4
.L124:
	.loc 1 109 0
	l32i.n	a5, a4, 4
	bnez.n	a5, .L125
	.loc 1 110 0
	l32r	a5, .LC62
	s32i.n	a5, a4, 4
.L125:
	.loc 1 112 0
	l32i.n	a5, a3, 12
	beqz.n	a5, .L126
	.loc 1 113 0
	s32i.n	a5, a4, 28
.L126:
.LVL238:
	.loc 1 117 0
	l32i.n	a5, a3, 4
	beqz.n	a5, .L127
	.loc 1 118 0
	l32i.n	a10, a4, 16
	call8	free
.LVL239:
	.loc 1 119 0
	l32i.n	a10, a3, 4
	call8	strdup
.LVL240:
	s32i.n	a10, a4, 16
	.loc 1 120 0
	bnez.n	a10, .L127
	.loc 1 120 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL241:
	l32r	a3, .LC60
.LVL242:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x78
	j	.L200
.LVL243:
.L127:
	.loc 1 123 0 is_stmt 1
	l32i.n	a5, a3, 20
	beqz.n	a5, .L129
	.loc 1 124 0
	l32i	a10, a2, 92
	call8	free
.LVL244:
	.loc 1 125 0
	l32i.n	a10, a3, 20
	call8	strdup
.LVL245:
	s32i	a10, a2, 92
	.loc 1 126 0
	bnez.n	a10, .L129
	.loc 1 126 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL246:
	l32r	a3, .LC60
.LVL247:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x7e
	j	.L200
.LVL248:
.L129:
	.loc 1 129 0 is_stmt 1
	l32i.n	a5, a3, 24
	beqz.n	a5, .L130
	.loc 1 130 0
	l32i	a10, a2, 96
	call8	free
.LVL249:
	.loc 1 131 0
	l32i.n	a10, a3, 24
	call8	strdup
.LVL250:
	s32i	a10, a2, 96
	.loc 1 132 0
	bnez.n	a10, .L130
	.loc 1 132 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL251:
	l32r	a3, .LC60
.LVL252:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x84
	j	.L200
.LVL253:
.L130:
	.loc 1 135 0 is_stmt 1
	l32i.n	a5, a3, 16
	beqz.n	a5, .L131
	.loc 1 136 0
	l32i	a10, a2, 88
	call8	free
.LVL254:
	.loc 1 137 0
	l32i.n	a10, a3, 16
	call8	strdup
.LVL255:
	s32i	a10, a2, 88
	.loc 1 138 0
	bnez.n	a10, .L133
	.loc 1 138 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL256:
	l32r	a3, .LC60
.LVL257:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x8a
	j	.L200
.LVL258:
.L131:
	.loc 1 139 0 is_stmt 1
	l32i	a5, a2, 88
	bnez.n	a5, .L133
	.loc 1 140 0
	call8	platform_create_id_string
.LVL259:
	s32i	a10, a2, 88
	.loc 1 142 0
	bnez.n	a10, .L133
	.loc 1 142 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL260:
	l32r	a3, .LC60
.LVL261:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x8e
	j	.L200
.LVL262:
.L133:
	.loc 1 145 0 is_stmt 1
	l32i.n	a5, a3, 8
	beqz.n	a5, .L134
	.loc 1 146 0
	l32i.n	a10, a4, 12
	call8	free
.LVL263:
	.loc 1 147 0
	l32i.n	a10, a3, 8
	call8	strdup
.LVL264:
	s32i.n	a10, a4, 12
	.loc 1 148 0
	bnez.n	a10, .L134
	.loc 1 148 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL265:
	l32r	a3, .LC60
.LVL266:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x94
	j	.L200
.LVL267:
.L134:
	.loc 1 151 0 is_stmt 1
	l32i.n	a5, a3, 28
	beqz.n	a5, .L135
	.loc 1 152 0
	l32i	a10, a2, 100
	call8	free
.LVL268:
	.loc 1 153 0
	l32i.n	a10, a3, 28
	call8	strdup
.LVL269:
	s32i	a10, a2, 100
	.loc 1 154 0
	bnez.n	a10, .L135
	.loc 1 154 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL270:
	l32r	a3, .LC60
.LVL271:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0x9a
	j	.L200
.LVL272:
.L135:
	.loc 1 157 0 is_stmt 1
	l32i.n	a8, a3, 44
	l32i.n	a5, a3, 32
	beqz.n	a8, .L136
	.loc 1 157 0 is_stmt 0 discriminator 1
	beqz.n	a5, .L138
	.loc 1 158 0 is_stmt 1
	l32i	a10, a2, 104
	call8	free
.LVL273:
	.loc 1 159 0
	l32i.n	a5, a3, 44
	mov.n	a10, a5
	call8	malloc
.LVL274:
	s32i	a10, a2, 104
	.loc 1 160 0
	bnez.n	a10, .L137
	.loc 1 160 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL275:
	l32r	a3, .LC60
.LVL276:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0xa0
	j	.L200
.LVL277:
.L137:
	.loc 1 161 0 is_stmt 1
	l32i.n	a11, a3, 32
	mov.n	a12, a5
	call8	memcpy
.LVL278:
	.loc 1 162 0
	s32i	a5, a2, 112
	j	.L138
.L136:
	.loc 1 163 0
	beqz.n	a5, .L138
	.loc 1 164 0
	l32i	a10, a2, 104
	call8	free
.LVL279:
	.loc 1 165 0
	l32i.n	a5, a3, 32
	mov.n	a10, a5
	call8	strdup
.LVL280:
	s32i	a10, a2, 104
	.loc 1 166 0
	bnez.n	a10, .L139
	.loc 1 166 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL281:
	l32r	a3, .LC60
.LVL282:
	l32r	a11, .LC58
	s32i.n	a3, sp, 8
	l32r	a3, .LC61
	s32i.n	a3, sp, 4
	movi	a3, 0xa6
.L200:
	l32r	a15, .LC57
	l32r	a12, .LC59
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL283:
	j	.L128
.LVL284:
.L139:
	.loc 1 167 0 is_stmt 1
	mov.n	a10, a5
	call8	strlen
.LVL285:
	s32i	a10, a2, 112
.L138:
	.loc 1 169 0
	l32i.n	a5, a3, 36
	beqz.n	a5, .L140
	.loc 1 170 0
	s32i	a5, a2, 116
.L140:
	.loc 1 172 0
	l32i.n	a5, a3, 40
	beqz.n	a5, .L141
	.loc 1 173 0
	s32i	a5, a2, 120
.L141:
	.loc 1 176 0
	l32i.n	a8, a3, 48
	l32i	a5, a2, 124
	bne	a8, a5, .L142
	.loc 1 177 0
	movi.n	a5, 0
	movi.n	a9, 1
	moveqz	a5, a9, a8
	s32i	a5, a2, 124
.L142:
	.loc 1 179 0
	l32i.n	a5, a3, 52
	beqz.n	a5, .L143
	.loc 1 180 0
	s32i	a5, a2, 108
.L143:
	.loc 1 182 0
	l32i	a5, a2, 108
	bnez.n	a5, .L144
	.loc 1 183 0
	movi	a5, 0x78
	s32i	a5, a2, 108
.L144:
	.loc 1 185 0
	l32r	a2, .LC63
.LVL286:
	s32i.n	a2, a4, 40
	.loc 1 186 0
	l32i.n	a2, a3, 60
	beqz.n	a2, .L145
	.loc 1 187 0
	s32i.n	a2, a4, 36
.L145:
	.loc 1 190 0
	l32i.n	a2, a3, 0
	beqz.n	a2, .L146
	.loc 1 191 0
	s32i.n	a2, a4, 0
.L146:
	.loc 1 194 0
	l32i	a2, a3, 92
	beqz.n	a2, .L147
	.loc 1 195 0
	s32i.n	a2, a4, 44
.L147:
	.loc 1 198 0
	movi.n	a2, 1
	.loc 1 199 0
	l8ui	a3, a3, 56
.LVL287:
	.loc 1 198 0
	s8i	a2, a4, 32
	.loc 1 203 0
	movi.n	a2, 0
	.loc 1 199 0
	beq	a3, a2, .L121
	.loc 1 200 0
	s8i	a2, a4, 32
	retw.n
.LVL288:
.L128:
	.loc 1 205 0
	mov.n	a10, a2
	call8	esp_mqtt_destroy_config
.LVL289:
.L201:
	.loc 1 206 0
	movi	a2, 0x101
.L121:
	.loc 1 207 0
	retw.n
.LFE42:
	.size	esp_mqtt_set_config, .-esp_mqtt_set_config
	.section	.rodata.str1.1
.LC65:
	.string	"\033[0;31mE (%d) %s: Error parse uri = %s\033[0m\n"
.LC67:
	.string	"ws"
.LC69:
	.string	"wss"
	.section	.text.esp_mqtt_client_set_uri,"ax",@progbits
	.literal_position
	.literal .LC64, .LC1
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.literal .LC70, .LC69
	.align	4
	.global	esp_mqtt_client_set_uri
	.type	esp_mqtt_client_set_uri, @function
esp_mqtt_client_set_uri:
.LFB49:
	.loc 1 425 0
.LVL290:
	entry	sp, 64
.LCFI10:
	.loc 1 427 0
	mov.n	a10, sp
	call8	http_parser_url_init
.LVL291:
	.loc 1 428 0
	mov.n	a10, a3
	call8	strlen
.LVL292:
	mov.n	a11, a10
	mov.n	a13, sp
	movi.n	a12, 0
	mov.n	a10, a3
	call8	http_parser_parse_url
.LVL293:
	.loc 1 429 0
	beqz.n	a10, .L203
	.loc 1 430 0 discriminator 2
	call8	esp_log_timestamp
.LVL294:
	l32r	a11, .LC64
	l32r	a12, .LC66
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL295:
	.loc 1 431 0 discriminator 2
	movi.n	a8, -1
	j	.L204
.LVL296:
.L203:
	.loc 1 434 0
	l32i.n	a4, a2, 8
	l32i.n	a8, a4, 24
	bnez.n	a8, .L205
	.loc 1 435 0
	l16ui	a10, sp, 4
.LVL297:
	l16ui	a11, sp, 6
	add.n	a10, a3, a10
	call8	create_string
.LVL298:
	s32i.n	a10, a4, 24
.L205:
	.loc 1 438 0
	l32i.n	a4, a2, 8
	l32i.n	a8, a4, 16
	bnez.n	a8, .L206
	.loc 1 439 0
	l16ui	a10, sp, 8
	l16ui	a11, sp, 10
	add.n	a10, a3, a10
	call8	create_string
.LVL299:
	s32i.n	a10, a4, 16
.L206:
	.loc 1 442 0
	l32i.n	a4, a2, 8
	l32i.n	a8, a4, 20
	bnez.n	a8, .L207
	.loc 1 443 0
	l16ui	a10, sp, 16
	l16ui	a11, sp, 18
	add.n	a10, a3, a10
	call8	create_string
.LVL300:
	s32i.n	a10, a4, 20
.L207:
	.loc 1 445 0
	l32i.n	a4, a2, 8
	l32i.n	a4, a4, 20
	beqz.n	a4, .L209
.LBB82:
	.loc 1 446 0
	l32r	a11, .LC68
	l32i.n	a10, a2, 0
	call8	esp_transport_list_get_transport
.LVL301:
	.loc 1 447 0
	beqz.n	a10, .L210
	.loc 1 448 0
	l32i.n	a4, a2, 8
	l32i.n	a11, a4, 20
	call8	esp_transport_ws_set_path
.LVL302:
.L210:
	.loc 1 450 0
	l32r	a11, .LC70
	l32i.n	a10, a2, 0
	call8	esp_transport_list_get_transport
.LVL303:
	.loc 1 451 0
	beqz.n	a10, .L209
	.loc 1 452 0
	l32i.n	a4, a2, 8
	l32i.n	a11, a4, 20
	call8	esp_transport_ws_set_path
.LVL304:
.L209:
.LBE82:
	.loc 1 456 0
	l16ui	a4, sp, 14
	beqz.n	a4, .L212
	.loc 1 457 0
	l16ui	a10, sp, 12
	l32i.n	a4, a2, 8
	movi.n	a12, 0xa
	movi.n	a11, 0
	add.n	a10, a3, a10
	call8	strtol
.LVL305:
	s32i.n	a10, a4, 28
.L212:
	.loc 1 460 0
	l16ui	a10, sp, 28
	l16ui	a11, sp, 30
	add.n	a10, a3, a10
	call8	create_string
.LVL306:
	mov.n	a3, a10
.LVL307:
	.loc 1 473 0
	mov.n	a8, a10
	.loc 1 461 0
	beqz.n	a10, .L204
.LBB83:
	.loc 1 462 0
	movi.n	a11, 0x3a
	call8	strchr
.LVL308:
	.loc 1 463 0
	beqz.n	a10, .L213
	.loc 1 464 0
	movi.n	a4, 0
	s8i	a4, a10, 0
.LVL309:
	.loc 1 466 0
	addi.n	a10, a10, 1
.LVL310:
	call8	strdup
.LVL311:
	s32i	a10, a2, 96
.L213:
	.loc 1 468 0
	mov.n	a10, a3
	call8	strdup
.LVL312:
	s32i	a10, a2, 92
	.loc 1 470 0
	mov.n	a10, a3
	call8	free
.LVL313:
.LBE83:
	.loc 1 473 0
	movi.n	a8, 0
.LVL314:
.L204:
	.loc 1 474 0
	mov.n	a2, a8
.LVL315:
	retw.n
.LFE49:
	.size	esp_mqtt_client_set_uri, .-esp_mqtt_client_set_uri
	.section	.rodata.str1.1
.LC72:
	.string	"\033[0;31mE (%d) %s: Client has started\033[0m\n"
.LC74:
	.string	"mqtt_task"
.LC78:
	.string	"\033[0;31mE (%d) %s: Error create mqtt task\033[0m\n"
	.section	.text.esp_mqtt_client_start,"ax",@progbits
	.literal_position
	.literal .LC71, .LC1
	.literal .LC73, .LC72
	.literal .LC75, .LC74
	.literal .LC76, esp_mqtt_task
	.literal .LC77, 2147483647
	.literal .LC79, .LC78
	.align	4
	.global	esp_mqtt_client_start
	.type	esp_mqtt_client_start, @function
esp_mqtt_client_start:
.LFB59:
	.loc 1 860 0
.LVL316:
	entry	sp, 48
.LCFI11:
	.loc 1 861 0
	l32i	a8, a2, 128
	blti	a8, 1, .L228
	.loc 1 862 0 discriminator 2
	call8	esp_log_timestamp
.LVL317:
	l32r	a11, .LC71
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC73
	j	.L232
.L228:
.LBB86:
.LBB87:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 3 440 0
	l32r	a9, .LC77
.LBE87:
.LBE86:
	.loc 1 873 0
	l32i.n	a8, a2, 8
.LVL318:
.LBB89:
.LBB88:
	.loc 3 440 0
	s32i.n	a9, sp, 0
.LVL319:
	l32i.n	a14, a8, 8
	l32i.n	a12, a8, 4
	l32r	a11, .LC75
	l32r	a10, .LC76
	mov.n	a13, a2
	movi.n	a15, 0
	call8	xTaskCreatePinnedToCore
.LVL320:
.LBE88:
.LBE89:
	.loc 1 878 0
	movi.n	a2, 0
.LVL321:
	.loc 1 873 0
	beqi	a10, 1, .L229
	.loc 1 874 0 discriminator 2
	call8	esp_log_timestamp
.LVL322:
	l32r	a11, .LC71
	l32r	a12, .LC79
	mov.n	a14, a11
	mov.n	a13, a10
.LVL323:
.L232:
	movi.n	a10, 1
	call8	esp_log_write
.LVL324:
	.loc 1 875 0 discriminator 2
	movi.n	a2, -1
.L229:
	.loc 1 879 0
	retw.n
.LFE59:
	.size	esp_mqtt_client_start, .-esp_mqtt_client_start
	.section	.rodata.str1.1
.LC81:
	.string	"\033[0;33mW (%d) %s: Client asked to stop, but was not started\033[0m\n"
	.section	.text.esp_mqtt_client_stop,"ax",@progbits
	.literal_position
	.literal .LC80, .LC1
	.literal .LC82, .LC81
	.align	4
	.global	esp_mqtt_client_stop
	.type	esp_mqtt_client_stop, @function
esp_mqtt_client_stop:
.LFB60:
	.loc 1 882 0
.LVL325:
	entry	sp, 32
.LCFI12:
	.loc 1 883 0
	l8ui	a8, a2, 212
	beqz.n	a8, .L234
	.loc 1 884 0
	movi.n	a8, 0
	.loc 1 885 0
	movi.n	a13, 1
	l32i	a10, a2, 220
	.loc 1 884 0
	s8i	a8, a2, 212
	.loc 1 885 0
	movi.n	a14, -1
	movi.n	a12, 0
	mov.n	a11, a13
	call8	xEventGroupWaitBits
.LVL326:
	.loc 1 886 0
	movi.n	a8, 0
	s32i	a8, a2, 128
	.loc 1 887 0
	mov.n	a2, a8
.LVL327:
	retw.n
.LVL328:
.L234:
.LBB92:
.LBB93:
	.loc 1 889 0
	call8	esp_log_timestamp
.LVL329:
	l32r	a11, .LC80
	l32r	a12, .LC82
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL330:
	movi.n	a2, -1
.LVL331:
.LBE93:
.LBE92:
	.loc 1 892 0
	retw.n
.LFE60:
	.size	esp_mqtt_client_stop, .-esp_mqtt_client_stop
	.section	.text.esp_mqtt_client_destroy,"ax",@progbits
	.align	4
	.global	esp_mqtt_client_destroy
	.type	esp_mqtt_client_destroy, @function
esp_mqtt_client_destroy:
.LFB47:
	.loc 1 400 0
.LVL332:
	entry	sp, 32
.LCFI13:
	.loc 1 401 0
	mov.n	a10, a2
	call8	esp_mqtt_client_stop
.LVL333:
	.loc 1 402 0
	mov.n	a10, a2
	call8	esp_mqtt_destroy_config
.LVL334:
	.loc 1 403 0
	l32i.n	a10, a2, 0
	call8	esp_transport_list_destroy
.LVL335:
	.loc 1 404 0
	l32i	a10, a2, 216
	call8	outbox_destroy
.LVL336:
	.loc 1 405 0
	l32i	a10, a2, 220
	call8	vEventGroupDelete
.LVL337:
	.loc 1 406 0
	l32i.n	a10, a2, 16
	call8	free
.LVL338:
	.loc 1 407 0
	l32i.n	a10, a2, 20
	call8	free
.LVL339:
	.loc 1 408 0
	mov.n	a10, a2
	call8	free
.LVL340:
	.loc 1 410 0
	movi.n	a2, 0
.LVL341:
	retw.n
.LFE47:
	.size	esp_mqtt_client_destroy, .-esp_mqtt_client_destroy
	.section	.rodata.str1.1
.LC88:
	.string	"mqtt"
.LC92:
	.string	"mqtts"
	.section	.text.esp_mqtt_client_init,"ax",@progbits
	.literal_position
	.literal .LC83, .LC5
	.literal .LC84, .LC1
	.literal .LC85, .LC8
	.literal .LC86, .LC10
	.literal .LC87, __FUNCTION__$7184
	.literal .LC89, .LC88
	.literal .LC90, .LC67
	.literal .LC91, 8883
	.literal .LC93, .LC92
	.literal .LC94, .LC69
	.align	4
	.global	esp_mqtt_client_init
	.type	esp_mqtt_client_init, @function
esp_mqtt_client_init:
.LFB46:
	.loc 1 302 0
.LVL342:
	entry	sp, 64
.LCFI14:
	.loc 1 303 0
	movi	a11, 0xe0
	movi.n	a10, 1
	call8	calloc
.LVL343:
	mov.n	a3, a10
.LVL344:
	.loc 1 304 0
	bnez.n	a10, .L238
	.loc 1 304 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL345:
	l32r	a2, .LC86
.LVL346:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	l32r	a15, .LC83
	s32i.n	a2, sp, 4
	l32r	a12, .LC85
	movi	a2, 0x130
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL347:
	.loc 1 304 0 is_stmt 1 discriminator 4
	mov.n	a2, a3
	retw.n
.LVL348:
.L238:
	.loc 1 306 0
	mov.n	a11, a2
	call8	esp_mqtt_set_config
.LVL349:
	.loc 1 308 0
	call8	esp_transport_list_init
.LVL350:
	s32i.n	a10, a3, 0
	.loc 1 309 0
	bnez.n	a10, .L240
	.loc 1 309 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL351:
	l32r	a2, .LC86
.LVL352:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x135
	j	.L271
.LVL353:
.L240:
	.loc 1 311 0 is_stmt 1
	call8	esp_transport_tcp_init
.LVL354:
	mov.n	a4, a10
.LVL355:
	.loc 1 312 0
	bnez.n	a10, .L242
	.loc 1 312 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL356:
	l32r	a2, .LC86
.LVL357:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x138
	j	.L271
.LVL358:
.L242:
	.loc 1 313 0 is_stmt 1
	movi	a11, 0x75b
	call8	esp_transport_set_default_port
.LVL359:
	.loc 1 314 0
	l32r	a6, .LC89
	l32i.n	a10, a3, 0
	mov.n	a12, a6
	mov.n	a11, a4
	call8	esp_transport_list_add
.LVL360:
	.loc 1 315 0
	l32i	a7, a2, 88
	mov.n	a5, a6
	bnei	a7, 1, .L243
	.loc 1 316 0
	l32i.n	a8, a3, 8
	mov.n	a10, a6
	movi.n	a11, 4
	s32i.n	a8, sp, 16
	call8	create_string
.LVL361:
	l32i.n	a8, sp, 16
	.loc 1 317 0
	l32i.n	a6, a3, 8
	.loc 1 316 0
	s32i.n	a10, a8, 24
	.loc 1 317 0
	l32i.n	a6, a6, 24
	bnez.n	a6, .L243
	.loc 1 317 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL362:
	l32r	a2, .LC86
.LVL363:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	movi	a2, 0x13d
	s32i.n	a2, sp, 0
	l32r	a15, .LC83
	mov.n	a14, a11
	l32r	a12, .LC85
	mov.n	a10, a7
	j	.L272
.LVL364:
.L243:
	.loc 1 321 0 is_stmt 1
	mov.n	a10, a4
	call8	esp_transport_ws_init
.LVL365:
	mov.n	a4, a10
.LVL366:
	.loc 1 322 0
	bnez.n	a10, .L244
	.loc 1 322 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL367:
	l32r	a2, .LC86
.LVL368:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x142
	j	.L271
.LVL369:
.L244:
	.loc 1 323 0 is_stmt 1
	movi.n	a11, 0x50
	call8	esp_transport_set_default_port
.LVL370:
	.loc 1 324 0
	l32r	a6, .LC90
	l32i.n	a10, a3, 0
	mov.n	a11, a4
	mov.n	a12, a6
	call8	esp_transport_list_add
.LVL371:
	.loc 1 325 0
	l32i	a4, a2, 88
.LVL372:
	bnei	a4, 3, .L245
	.loc 1 326 0
	l32i.n	a4, a3, 8
	movi.n	a11, 2
	mov.n	a10, a6
	call8	create_string
.LVL373:
	s32i.n	a10, a4, 24
	.loc 1 327 0
	l32i.n	a4, a3, 8
	l32i.n	a4, a4, 24
	bnez.n	a4, .L245
	.loc 1 327 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL374:
	l32r	a2, .LC86
.LVL375:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x147
	j	.L271
.LVL376:
.L245:
	.loc 1 332 0 is_stmt 1
	call8	esp_transport_ssl_init
.LVL377:
	mov.n	a4, a10
.LVL378:
	.loc 1 333 0
	bnez.n	a10, .L246
	.loc 1 333 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL379:
	l32r	a2, .LC86
.LVL380:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x14d
	j	.L271
.LVL381:
.L246:
	.loc 1 334 0 is_stmt 1
	l32r	a11, .LC91
	call8	esp_transport_set_default_port
.LVL382:
	.loc 1 335 0
	l32i	a6, a2, 76
	beqz.n	a6, .L247
	.loc 1 336 0
	mov.n	a10, a6
	call8	strlen
.LVL383:
	mov.n	a12, a10
	mov.n	a11, a6
	mov.n	a10, a4
	call8	esp_transport_ssl_set_cert_data
.LVL384:
.L247:
	.loc 1 338 0
	l32i	a6, a2, 80
	beqz.n	a6, .L248
	.loc 1 339 0
	mov.n	a10, a6
	call8	strlen
.LVL385:
	mov.n	a12, a10
	mov.n	a11, a6
	mov.n	a10, a4
	call8	esp_transport_ssl_set_client_cert_data
.LVL386:
.L248:
	.loc 1 341 0
	l32i	a6, a2, 84
	beqz.n	a6, .L249
	.loc 1 342 0
	mov.n	a10, a6
	call8	strlen
.LVL387:
	mov.n	a12, a10
	mov.n	a11, a6
	mov.n	a10, a4
	call8	esp_transport_ssl_set_client_key_data
.LVL388:
.L249:
	.loc 1 344 0
	l32r	a6, .LC93
	l32i.n	a10, a3, 0
	mov.n	a12, a6
	mov.n	a11, a4
	call8	esp_transport_list_add
.LVL389:
	.loc 1 345 0
	l32i	a7, a2, 88
	bnei	a7, 2, .L250
	.loc 1 346 0
	l32i.n	a7, a3, 8
	mov.n	a10, a6
	movi.n	a11, 5
	call8	create_string
.LVL390:
	.loc 1 347 0
	l32i.n	a6, a3, 8
	.loc 1 346 0
	s32i.n	a10, a7, 24
	.loc 1 347 0
	l32i.n	a6, a6, 24
	bnez.n	a6, .L250
	.loc 1 347 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL391:
	l32r	a2, .LC86
.LVL392:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x15b
	j	.L271
.LVL393:
.L250:
	.loc 1 352 0 is_stmt 1
	mov.n	a10, a4
	call8	esp_transport_ws_init
.LVL394:
	mov.n	a4, a10
.LVL395:
	.loc 1 353 0
	bnez.n	a10, .L251
	.loc 1 353 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL396:
	l32r	a2, .LC86
.LVL397:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x161
	j	.L271
.LVL398:
.L251:
	.loc 1 354 0 is_stmt 1
	movi	a11, 0x1bb
	call8	esp_transport_set_default_port
.LVL399:
	.loc 1 355 0
	l32r	a6, .LC94
	l32i.n	a10, a3, 0
	mov.n	a11, a4
	mov.n	a12, a6
	call8	esp_transport_list_add
.LVL400:
	.loc 1 356 0
	l32i	a4, a2, 88
.LVL401:
	bnei	a4, 4, .L252
	.loc 1 357 0
	l32i.n	a4, a3, 8
	movi.n	a11, 3
	mov.n	a10, a6
	call8	create_string
.LVL402:
	s32i.n	a10, a4, 24
	.loc 1 358 0
	l32i.n	a4, a3, 8
	l32i.n	a4, a4, 24
	bnez.n	a4, .L252
	.loc 1 358 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL403:
	l32r	a2, .LC86
.LVL404:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x166
	j	.L271
.LVL405:
.L252:
	.loc 1 361 0 is_stmt 1
	l32i.n	a4, a3, 8
	l32i.n	a11, a4, 12
	bnez.n	a11, .L253
.L256:
	.loc 1 367 0
	l32i.n	a4, a3, 8
	l32i.n	a6, a4, 24
	bnez.n	a6, .L255
	j	.L254
.L253:
	.loc 1 362 0
	mov.n	a10, a3
	call8	esp_mqtt_client_set_uri
.LVL406:
	beqz.n	a10, .L256
	j	.L241
.L254:
	.loc 1 368 0
	movi.n	a11, 4
	mov.n	a10, a5
	call8	create_string
.LVL407:
	s32i.n	a10, a4, 24
	.loc 1 369 0
	l32i.n	a4, a3, 8
	l32i.n	a4, a4, 24
	bnez.n	a4, .L255
	.loc 1 369 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL408:
	l32r	a2, .LC86
.LVL409:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x171
	j	.L271
.LVL410:
.L255:
	.loc 1 372 0 is_stmt 1
	call8	platform_tick_get_ms
.LVL411:
	s32i	a10, a3, 144
	s32i	a11, a3, 148
	.loc 1 373 0
	call8	platform_tick_get_ms
.LVL412:
	s32i	a10, a3, 152
	s32i	a11, a3, 156
	.loc 1 374 0
	call8	platform_tick_get_ms
.LVL413:
	.loc 1 375 0
	movi.n	a4, 0
	.loc 1 376 0
	l32i	a2, a2, 72
.LVL414:
	.loc 1 374 0
	s32i	a10, a3, 136
	s32i	a11, a3, 140
	.loc 1 375 0
	s8i	a4, a3, 213
	.loc 1 377 0
	bgei	a2, 1, .L257
	.loc 1 378 0
	movi	a2, 0x400
.LVL415:
.L257:
	.loc 1 381 0
	mov.n	a10, a2
	call8	malloc
.LVL416:
	s32i.n	a10, a3, 16
	.loc 1 382 0
	bnez.n	a10, .L258
	.loc 1 382 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL417:
	l32r	a2, .LC86
.LVL418:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x17e
	j	.L271
.LVL419:
.L258:
	.loc 1 383 0 is_stmt 1
	s32i.n	a2, a3, 24
	.loc 1 384 0
	mov.n	a10, a2
	call8	malloc
.LVL420:
	s32i.n	a10, a3, 20
	.loc 1 385 0
	bnez.n	a10, .L259
	.loc 1 385 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL421:
	l32r	a2, .LC86
.LVL422:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x181
	j	.L271
.LVL423:
.L259:
	.loc 1 387 0 is_stmt 1
	s32i.n	a2, a3, 28
	.loc 1 388 0
	addi	a2, a3, 88
.LVL424:
	s32i.n	a2, a3, 12
	.loc 1 389 0
	call8	outbox_init
.LVL425:
	s32i	a10, a3, 216
	.loc 1 390 0
	bnez.n	a10, .L260
	.loc 1 390 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL426:
	l32r	a2, .LC86
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x186
	j	.L271
.L260:
	.loc 1 391 0 is_stmt 1
	call8	xEventGroupCreate
.LVL427:
	s32i	a10, a3, 220
	mov.n	a2, a3
	.loc 1 392 0
	bnez.n	a10, .L239
.LVL428:
	.loc 1 392 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL429:
	l32r	a2, .LC86
.LVL430:
	l32r	a11, .LC84
	s32i.n	a2, sp, 8
	l32r	a2, .LC87
	s32i.n	a2, sp, 4
	movi	a2, 0x188
.L271:
	l32r	a15, .LC83
	l32r	a12, .LC85
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
.L272:
	call8	esp_log_write
.LVL431:
.L241:
	.loc 1 395 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_mqtt_client_destroy
.LVL432:
	.loc 1 396 0
	movi.n	a2, 0
.L239:
	.loc 1 397 0
	retw.n
.LFE46:
	.size	esp_mqtt_client_init, .-esp_mqtt_client_init
	.section	.rodata.str1.1
.LC96:
	.string	"\033[0;31mE (%d) %s: Client has not connected\033[0m\n"
.LC98:
	.string	"\033[0;31mE (%d) %s: Error to subscribe topic=%s, qos=%d\033[0m\n"
	.section	.text.esp_mqtt_client_subscribe,"ax",@progbits
	.literal_position
	.literal .LC95, .LC1
	.literal .LC97, .LC96
	.literal .LC99, .LC98
	.align	4
	.global	esp_mqtt_client_subscribe
	.type	esp_mqtt_client_subscribe, @function
esp_mqtt_client_subscribe:
.LFB62:
	.loc 1 907 0
.LVL433:
	entry	sp, 48
.LCFI15:
	.loc 1 908 0
	l32i	a8, a2, 128
	beqi	a8, 2, .L274
	.loc 1 909 0 discriminator 2
	call8	esp_log_timestamp
.LVL434:
	l32r	a11, .LC95
	l32r	a12, .LC97
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL435:
	j	.L277
.L274:
	.loc 1 912 0
	mov.n	a10, a2
	call8	mqtt_enqueue
.LVL436:
	.loc 1 913 0
	addi	a13, a2, 72
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a2, 44
	call8	mqtt_msg_subscribe
.LVL437:
	l32i.n	a8, a10, 0
	s32i.n	a10, a2, 40
.LVL438:
	.loc 1 917 0
	l8ui	a8, a8, 0
	.loc 1 920 0
	mov.n	a10, a2
.LVL439:
	.loc 1 917 0
	srli	a8, a8, 4
	s32i	a8, a2, 76
.LVL440:
	.loc 1 918 0
	l32i	a8, a2, 84
	addi.n	a8, a8, 1
	s32i	a8, a2, 84
	.loc 1 920 0
	call8	mqtt_write_data
.LVL441:
	beqz.n	a10, .L276
	.loc 1 921 0 discriminator 2
	call8	esp_log_timestamp
.LVL442:
	l32r	a11, .LC95
	l32r	a12, .LC99
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL443:
.L277:
	.loc 1 922 0 discriminator 2
	movi.n	a2, -1
.LVL444:
	retw.n
.LVL445:
.L276:
	.loc 1 926 0
	l16ui	a2, a2, 72
.LVL446:
	.loc 1 927 0
	retw.n
.LFE62:
	.size	esp_mqtt_client_subscribe, .-esp_mqtt_client_subscribe
	.section	.rodata.str1.1
.LC102:
	.string	"\033[0;31mE (%d) %s: Error to unsubscribe topic=%s\033[0m\n"
	.section	.text.esp_mqtt_client_unsubscribe,"ax",@progbits
	.literal_position
	.literal .LC100, .LC1
	.literal .LC101, .LC96
	.literal .LC103, .LC102
	.align	4
	.global	esp_mqtt_client_unsubscribe
	.type	esp_mqtt_client_unsubscribe, @function
esp_mqtt_client_unsubscribe:
.LFB63:
	.loc 1 930 0
.LVL447:
	entry	sp, 32
.LCFI16:
	.loc 1 931 0
	l32i	a8, a2, 128
	beqi	a8, 2, .L279
	.loc 1 932 0 discriminator 2
	call8	esp_log_timestamp
.LVL448:
	l32r	a11, .LC100
	l32r	a12, .LC101
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL449:
	j	.L282
.L279:
	.loc 1 935 0
	mov.n	a10, a2
	call8	mqtt_enqueue
.LVL450:
	.loc 1 936 0
	addi	a12, a2, 72
	mov.n	a11, a3
	addi	a10, a2, 44
	call8	mqtt_msg_unsubscribe
.LVL451:
	l32i.n	a8, a10, 0
	s32i.n	a10, a2, 40
.LVL452:
	.loc 1 941 0
	l8ui	a8, a8, 0
	.loc 1 944 0
	mov.n	a10, a2
.LVL453:
	.loc 1 941 0
	srli	a8, a8, 4
	s32i	a8, a2, 76
.LVL454:
	.loc 1 942 0
	l32i	a8, a2, 84
	addi.n	a8, a8, 1
	s32i	a8, a2, 84
	.loc 1 944 0
	call8	mqtt_write_data
.LVL455:
	beqz.n	a10, .L281
	.loc 1 945 0 discriminator 2
	call8	esp_log_timestamp
.LVL456:
	l32r	a11, .LC100
	l32r	a12, .LC103
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL457:
.L282:
	.loc 1 946 0 discriminator 2
	movi.n	a2, -1
.LVL458:
	retw.n
.LVL459:
.L281:
	.loc 1 950 0
	l16ui	a2, a2, 72
.LVL460:
	.loc 1 951 0
	retw.n
.LFE63:
	.size	esp_mqtt_client_unsubscribe, .-esp_mqtt_client_unsubscribe
	.section	.rodata.str1.1
.LC106:
	.string	"\033[0;31mE (%d) %s: Error to public data to topic=%s, qos=%d\033[0m\n"
	.section	.text.esp_mqtt_client_publish,"ax",@progbits
	.literal_position
	.literal .LC104, .LC1
	.literal .LC105, .LC96
	.literal .LC107, .LC106
	.align	4
	.global	esp_mqtt_client_publish
	.type	esp_mqtt_client_publish, @function
esp_mqtt_client_publish:
.LFB64:
	.loc 1 954 0
.LVL461:
	entry	sp, 96
.LCFI17:
	.loc 1 954 0
	mov.n	a15, a7
	.loc 1 955 0
	movi.n	a7, 0
.LVL462:
	s16i	a7, sp, 40
	.loc 1 956 0
	l32i	a7, a2, 128
	.loc 1 954 0
	.loc 1 956 0
	beqi	a7, 2, .L284
	.loc 1 957 0 discriminator 2
	call8	esp_log_timestamp
.LVL463:
	l32r	a11, .LC104
	l32r	a12, .LC105
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL464:
	j	.L299
.LVL465:
.L284:
	.loc 1 960 0
	bgei	a5, 1, .L286
	.loc 1 961 0
	mov.n	a10, a4
	s32i.n	a15, sp, 48
	call8	strlen
.LVL466:
	l32i.n	a15, sp, 48
	mov.n	a5, a10
.LVL467:
.L286:
	.loc 1 964 0
	addi	a8, sp, 40
	addi	a7, a2, 44
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a7
	call8	mqtt_msg_publish
.LVL468:
	mov.n	a8, a10
.LVL469:
	.loc 1 970 0
	blti	a6, 1, .L287
	.loc 1 971 0
	mov.n	a10, a2
	s32i.n	a8, sp, 48
	call8	mqtt_enqueue
.LVL470:
	.loc 1 972 0
	l32i.n	a8, sp, 48
	s32i.n	a8, a2, 40
.LVL471:
	l32i.n	a8, a8, 0
.LVL472:
	.loc 1 973 0
	l8ui	a8, a8, 0
.LVL473:
	srli	a8, a8, 4
	s32i	a8, a2, 76
.LVL474:
	.loc 1 974 0
	l16ui	a8, sp, 40
	s16i	a8, a2, 72
	.loc 1 975 0
	l32i	a8, a2, 84
	addi.n	a8, a8, 1
	s32i	a8, a2, 84
.LVL475:
	j	.L288
.LVL476:
.L287:
	.loc 1 977 0
	s32i.n	a10, a2, 40
.LVL477:
.L288:
.LBB100:
	.loc 1 987 0
	mov.n	a10, a2
	call8	mqtt_write_data
.LVL478:
	beqz.n	a10, .L290
	.loc 1 988 0 discriminator 2
	call8	esp_log_timestamp
.LVL479:
	l32r	a11, .LC104
	l32r	a12, .LC107
	mov.n	a13, a10
	s32i.n	a6, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL480:
.L299:
	.loc 1 989 0 discriminator 2
	movi.n	a2, -1
.LVL481:
	retw.n
.LVL482:
.L290:
	.loc 1 992 0
	l32i.n	a9, a2, 40
	l32i.n	a13, a9, 4
	l32i.n	a8, a9, 12
	sub	a8, a13, a8
.LVL483:
	.loc 1 993 0
	sub	a5, a5, a8
.LVL484:
	.loc 1 996 0
	blti	a5, 1, .L291
	.loc 1 994 0
	add.n	a4, a4, a8
.LVL485:
.LBB101:
	.loc 1 999 0
	l32i.n	a8, a2, 56
.LVL486:
	beqz.n	a8, .L293
	.loc 1 1001 0
	s32i.n	a10, a2, 56
.LVL487:
	.loc 1 1002 0
	s32i.n	a10, a2, 52
	.loc 1 1003 0
	blti	a6, 1, .L293
.LVL488:
.LBB102:
.LBB103:
	.loc 1 609 0
	mov.n	a11, a10
	movi.n	a12, 0x18
	addi	a10, sp, 16
	s32i.n	a9, sp, 48
	s32i.n	a13, sp, 52
	call8	memset
.LVL489:
	.loc 1 610 0
	l32i	a8, a2, 84
	l32i.n	a9, sp, 48
	l32i.n	a13, sp, 52
	blti	a8, 1, .L295
	.loc 1 611 0
	addi.n	a8, a8, -1
	s32i	a8, a2, 84
.L295:
	.loc 1 613 0
	l32i.n	a8, a9, 0
	.loc 1 614 0
	s32i.n	a13, sp, 20
	.loc 1 613 0
	s32i.n	a8, sp, 16
	.loc 1 615 0
	l16ui	a8, a2, 72
	.loc 1 617 0
	s32i.n	a4, sp, 32
	.loc 1 615 0
	s32i.n	a8, sp, 24
	.loc 1 616 0
	l32i	a8, a2, 76
	.loc 1 618 0
	s32i.n	a5, sp, 36
	.loc 1 616 0
	s32i.n	a8, sp, 28
	.loc 1 620 0
	l32i	a8, a2, 216
	s32i.n	a8, sp, 48
	call8	platform_tick_get_ms
.LVL490:
	l32i.n	a8, sp, 48
	mov.n	a12, a10
	addi	a11, sp, 16
	mov.n	a10, a8
	call8	outbox_enqueue
.LVL491:
.L293:
.LBE103:
.LBE102:
	.loc 1 1009 0
	l16ui	a12, a2, 68
	l32i	a10, a2, 64
	bge	a12, a5, .L296
	.loc 1 1011 0
	mov.n	a11, a4
	call8	memcpy
.LVL492:
	.loc 1 1012 0
	l16ui	a8, a2, 68
	s32i.n	a8, a2, 48
	j	.L297
.L296:
	.loc 1 1015 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	memcpy
.LVL493:
	.loc 1 1016 0
	s32i.n	a5, a2, 48
.L297:
	.loc 1 1019 0
	l32i	a8, a2, 64
	.loc 1 1020 0
	s32i.n	a7, a2, 40
	.loc 1 1019 0
	s32i.n	a8, a2, 44
	j	.L288
.LVL494:
.L291:
.LBE101:
.LBE100:
	.loc 1 1026 0
	l16ui	a2, sp, 40
.LVL495:
	.loc 1 1027 0
	retw.n
.LFE64:
	.size	esp_mqtt_client_publish, .-esp_mqtt_client_publish
	.section	.rodata.__FUNCTION__$7199,"a",@progbits
	.type	__FUNCTION__$7199, @object
	.size	__FUNCTION__$7199, 14
__FUNCTION__$7199:
	.string	"create_string"
	.section	.rodata.__FUNCTION__$7184,"a",@progbits
	.type	__FUNCTION__$7184, @object
	.size	__FUNCTION__$7184, 21
__FUNCTION__$7184:
	.string	"esp_mqtt_client_init"
	.section	.rodata.__FUNCTION__$7158,"a",@progbits
	.type	__FUNCTION__$7158, @object
	.size	__FUNCTION__$7158, 20
__FUNCTION__$7158:
	.string	"esp_mqtt_set_config"
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
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI0-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI1-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI2-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI3-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI4-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI5-.LFB48
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI6-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI7-.LFB58
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI8-.LFB56
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI11-.LFB59
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI12-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI14-.LFB46
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI15-.LFB62
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI16-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI17-.LFB64
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/include/mqtt_client.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/mqtt_outbox.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/port/include/http_parser.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/platform_esp32_idf.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_ws.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_tcp.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_ssl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a88
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF315
	.byte	0xc
	.4byte	.LASF316
	.4byte	.LASF317
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
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
	.byte	0x5
	.byte	0x15
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
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
	.byte	0x6
	.byte	0x4d
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x6f
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x76
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6e
	.4byte	0x94
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x9
	.byte	0x78
	.4byte	0x94
	.uleb128 0xa
	.4byte	0xb1
	.4byte	0x174
	.uleb128 0xb
	.4byte	0x9d
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1f
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x15
	.4byte	0x1b0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xe0
	.byte	0x1
	.byte	0x3a
	.4byte	0x283
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3b
	.4byte	0x6be
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3c
	.4byte	0x6d4
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3d
	.4byte	0x9a5
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3e
	.4byte	0x8c0
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3f
	.4byte	0x6b3
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x40
	.4byte	0x99a
	.byte	0x80
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x41
	.4byte	0xef
	.byte	0x88
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x42
	.4byte	0xef
	.byte	0x90
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x43
	.4byte	0xef
	.byte	0x98
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x44
	.4byte	0x70
	.byte	0xa0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x45
	.4byte	0x70
	.byte	0xa4
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x46
	.4byte	0x38e
	.byte	0xa8
	.uleb128 0x10
	.string	"run"
	.byte	0x1
	.byte	0x47
	.4byte	0x121
	.byte	0xd4
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x48
	.4byte	0x121
	.byte	0xd5
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x49
	.4byte	0x6ea
	.byte	0xd8
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4a
	.4byte	0x159
	.byte	0xdc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x20
	.4byte	0x2c0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xa
	.byte	0x31
	.4byte	0x283
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x33
	.4byte	0x2f6
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x39
	.4byte	0x2cb
	.uleb128 0x11
	.byte	0x2c
	.byte	0xa
	.byte	0x3e
	.4byte	0x38e
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0xa
	.byte	0x3f
	.4byte	0x2c0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xa
	.byte	0x40
	.4byte	0x1a5
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0xa
	.byte	0x41
	.4byte	0x94
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0xa
	.byte	0x42
	.4byte	0xab
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0xa
	.byte	0x43
	.4byte	0x70
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xa
	.byte	0x44
	.4byte	0x70
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0xa
	.byte	0x45
	.4byte	0x70
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0xa
	.byte	0x46
	.4byte	0xab
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xa
	.byte	0x47
	.4byte	0x70
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xa
	.byte	0x48
	.4byte	0x70
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0xa
	.byte	0x49
	.4byte	0x70
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x4a
	.4byte	0x301
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x4c
	.4byte	0x3a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38e
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x4e
	.4byte	0x3b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bb
	.uleb128 0x12
	.4byte	0x116
	.4byte	0x3ca
	.uleb128 0x9
	.4byte	0x399
	.byte	0
	.uleb128 0x11
	.byte	0x60
	.byte	0xa
	.byte	0x53
	.4byte	0x4f3
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0xa
	.byte	0x54
	.4byte	0x3aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0xa
	.byte	0x55
	.4byte	0xb8
	.byte	0x4
	.uleb128 0x10
	.string	"uri"
	.byte	0xa
	.byte	0x56
	.4byte	0xb8
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0xa
	.byte	0x57
	.4byte	0xe4
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0xa
	.byte	0x58
	.4byte	0xb8
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0xa
	.byte	0x59
	.4byte	0xb8
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5a
	.4byte	0xb8
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5b
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0xa
	.byte	0x5c
	.4byte	0xb8
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xa
	.byte	0x5d
	.4byte	0x70
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0xa
	.byte	0x5e
	.4byte	0x70
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0xa
	.byte	0x5f
	.4byte	0x70
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0xa
	.byte	0x60
	.4byte	0x70
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0xa
	.byte	0x61
	.4byte	0x70
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xa
	.byte	0x62
	.4byte	0x121
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0xa
	.byte	0x63
	.4byte	0x94
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0xa
	.byte	0x64
	.4byte	0x70
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0xa
	.byte	0x65
	.4byte	0x70
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0xa
	.byte	0x66
	.4byte	0x70
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0xa
	.byte	0x67
	.4byte	0xb8
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0xa
	.byte	0x68
	.4byte	0xb8
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0xa
	.byte	0x69
	.4byte	0xb8
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0xa
	.byte	0x6a
	.4byte	0x2f6
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0xa
	.byte	0x6b
	.4byte	0x70
	.byte	0x5c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x6c
	.4byte	0x3ca
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x2b
	.4byte	0x563
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0xb
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x3d
	.4byte	0x598
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x10
	.byte	0x2
	.byte	0x47
	.4byte	0x5d5
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x2
	.byte	0x49
	.4byte	0x5d5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x2
	.byte	0x4a
	.4byte	0xe4
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x2
	.byte	0x4b
	.4byte	0xe4
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x2
	.byte	0x4c
	.4byte	0xe4
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x2
	.byte	0x4d
	.4byte	0x598
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x1c
	.byte	0x2
	.byte	0x4f
	.4byte	0x623
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x2
	.byte	0x51
	.4byte	0x5db
	.byte	0
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x2
	.byte	0x53
	.4byte	0xce
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x2
	.byte	0x54
	.4byte	0x5d5
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x2
	.byte	0x55
	.4byte	0xce
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x2
	.byte	0x57
	.4byte	0x5e6
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x28
	.byte	0x2
	.byte	0x59
	.4byte	0x6b3
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x2
	.byte	0x5b
	.4byte	0xab
	.byte	0
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x2
	.byte	0x5c
	.4byte	0xab
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x2
	.byte	0x5d
	.4byte	0xab
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x2
	.byte	0x5e
	.4byte	0xab
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x2
	.byte	0x5f
	.4byte	0xab
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x2
	.byte	0x60
	.4byte	0x70
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x2
	.byte	0x61
	.4byte	0x70
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x2
	.byte	0x62
	.4byte	0x70
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x2
	.byte	0x63
	.4byte	0x70
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x2
	.byte	0x64
	.4byte	0x70
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x2
	.byte	0x66
	.4byte	0x62e
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xc
	.byte	0x19
	.4byte	0x6c9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6cf
	.uleb128 0x14
	.4byte	.LASF146
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xc
	.byte	0x1a
	.4byte	0x6df
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e5
	.uleb128 0x14
	.4byte	.LASF147
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xd
	.byte	0x10
	.4byte	0x6f5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0x14
	.4byte	.LASF149
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0x18
	.byte	0xd
	.byte	0x14
	.4byte	0x755
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0xd
	.byte	0x15
	.4byte	0x5d5
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0xd
	.byte	0x16
	.4byte	0x70
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xd
	.byte	0x17
	.4byte	0x70
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0xd
	.byte	0x18
	.4byte	0x70
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF152
	.byte	0xd
	.byte	0x19
	.4byte	0x5d5
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0xd
	.byte	0x1a
	.4byte	0x70
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xd
	.byte	0x1b
	.4byte	0x700
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x10e
	.4byte	0x7a2
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0xe
	.2byte	0x125
	.4byte	0x7c6
	.uleb128 0x17
	.string	"off"
	.byte	0xe
	.2byte	0x126
	.4byte	0xce
	.byte	0
	.uleb128 0x17
	.string	"len"
	.byte	0xe
	.2byte	0x127
	.4byte	0xce
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0x20
	.byte	0xe
	.2byte	0x121
	.4byte	0x7fb
	.uleb128 0x19
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x122
	.4byte	0xce
	.byte	0
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0xe
	.2byte	0x123
	.4byte	0xce
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x128
	.4byte	0x7fb
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x7a2
	.4byte	0x80b
	.uleb128 0xb
	.4byte	0x9d
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x4c
	.byte	0x1
	.byte	0x12
	.4byte	0x8b4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x14
	.4byte	0x8b4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF167
	.byte	0x1
	.byte	0x15
	.4byte	0x5d5
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF168
	.byte	0x1
	.byte	0x16
	.4byte	0x5d5
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF169
	.byte	0x1
	.byte	0x17
	.4byte	0x70
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF170
	.byte	0x1
	.byte	0x18
	.4byte	0x70
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF171
	.byte	0x1
	.byte	0x19
	.4byte	0xe4
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF172
	.byte	0x1
	.byte	0x1a
	.4byte	0xe4
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF173
	.byte	0x1
	.byte	0x1b
	.4byte	0x8ba
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1c
	.4byte	0x623
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF174
	.byte	0x1
	.byte	0x1d
	.4byte	0xce
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0x1
	.byte	0x1e
	.4byte	0x70
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF176
	.byte	0x1
	.byte	0x1f
	.4byte	0x70
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF177
	.byte	0x1
	.byte	0x20
	.4byte	0x70
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5db
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x1
	.byte	0x21
	.4byte	0x80b
	.uleb128 0x11
	.byte	0x30
	.byte	0x1
	.byte	0x23
	.4byte	0x964
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1
	.byte	0x24
	.4byte	0x3aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x1
	.byte	0x25
	.4byte	0x70
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x1
	.byte	0x26
	.4byte	0x70
	.byte	0x8
	.uleb128 0x10
	.string	"uri"
	.byte	0x1
	.byte	0x27
	.4byte	0xab
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x1
	.byte	0x28
	.4byte	0xab
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0x1
	.byte	0x29
	.4byte	0xab
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF180
	.byte	0x1
	.byte	0x2a
	.4byte	0xab
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2b
	.4byte	0x70
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2c
	.4byte	0x121
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2d
	.4byte	0x94
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2e
	.4byte	0x70
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2f
	.4byte	0x70
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x1
	.byte	0x30
	.4byte	0x8cb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x70
	.byte	0x1
	.byte	0x32
	.4byte	0x99a
	.uleb128 0x1a
	.4byte	.LASF183
	.sleb128 -1
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF187
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x1
	.byte	0x38
	.4byte	0x96f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x964
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x2
	.byte	0x69
	.4byte	0x70
	.byte	0x3
	.4byte	0x9c7
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x2
	.byte	0x69
	.4byte	0x5d5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x2
	.byte	0x6d
	.4byte	0x70
	.byte	0x3
	.4byte	0x9e3
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x2
	.byte	0x6d
	.4byte	0x5d5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x19c
	.4byte	0xab
	.byte	0x1
	.4byte	0xa26
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xb8
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x70
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x19e
	.4byte	0xab
	.uleb128 0x20
	.4byte	.LASF192
	.4byte	0xa26
	.4byte	.LASF191
	.byte	0
	.uleb128 0x7
	.4byte	0x164
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x2
	.byte	0x6b
	.4byte	0x70
	.byte	0x3
	.4byte	0xa47
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x2
	.byte	0x6b
	.4byte	0x5d5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x1
	.byte	0xe3
	.4byte	0x116
	.byte	0x1
	.4byte	0xa8f
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe3
	.4byte	0x1a5
	.uleb128 0x1c
	.4byte	.LASF195
	.byte	0x1
	.byte	0xe3
	.4byte	0x70
	.uleb128 0x21
	.4byte	.LASF196
	.byte	0x1
	.byte	0xe5
	.4byte	0x70
	.uleb128 0x21
	.4byte	.LASF197
	.byte	0x1
	.byte	0xe5
	.4byte	0x70
	.uleb128 0x21
	.4byte	.LASF198
	.byte	0x1
	.byte	0xe5
	.4byte	0x70
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x24a
	.4byte	0x121
	.byte	0x1
	.4byte	0xac5
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x24a
	.4byte	0x1a5
	.uleb128 0x22
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x24a
	.4byte	0x70
	.uleb128 0x22
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x24a
	.4byte	0x70
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x2
	.byte	0x6a
	.4byte	0x70
	.byte	0x3
	.4byte	0xae1
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x2
	.byte	0x6a
	.4byte	0x5d5
	.byte	0
	.uleb128 0x23
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x271
	.byte	0x1
	.4byte	0xb09
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x271
	.4byte	0x1a5
	.uleb128 0x24
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.2byte	0x277
	.4byte	0x755
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x371
	.4byte	0x116
	.byte	0x1
	.4byte	0xb27
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x371
	.4byte	0x1a5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF201
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x128
	.byte	0x3
	.4byte	0xb81
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x10b
	.uleb128 0x22
	.4byte	.LASF203
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x154
	.uleb128 0x22
	.4byte	.LASF204
	.byte	0x3
	.2byte	0x1b3
	.4byte	0xb81
	.uleb128 0x22
	.4byte	.LASF205
	.byte	0x3
	.2byte	0x1b4
	.4byte	0xb86
	.uleb128 0x22
	.4byte	.LASF206
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x133
	.uleb128 0x22
	.4byte	.LASF207
	.byte	0x3
	.2byte	0x1b6
	.4byte	0xb91
	.byte	0
	.uleb128 0x7
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x149
	.uleb128 0x7
	.4byte	0xb8b
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x116
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbce
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x1a5
	.4byte	.LLST0
	.uleb128 0x28
	.4byte	.LVL1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 168
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF209
	.byte	0x1
	.byte	0xd1
	.4byte	0x116
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9d
	.uleb128 0x2b
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd1
	.4byte	0x1a5
	.4byte	.LLST1
	.uleb128 0x2c
	.string	"cfg"
	.byte	0x1
	.byte	0xd3
	.4byte	0x9a5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LVL5
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL6
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL7
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL8
	.4byte	0x27d1
	.uleb128 0x2e
	.4byte	.LVL9
	.4byte	0x27dc
	.4byte	0xc46
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL11
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL12
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL14
	.4byte	0x27d1
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0x27dc
	.4byte	0xc93
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 88
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL17
	.4byte	0x27d1
	.byte	0
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x116
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce1
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x1a5
	.4byte	.LLST2
	.uleb128 0x2d
	.4byte	.LVL19
	.4byte	0x27e5
	.uleb128 0x2f
	.4byte	.LVL20
	.4byte	0xb96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x120
	.4byte	0x116
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2e
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x120
	.4byte	0x1a5
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LVL23
	.4byte	0x27f0
	.uleb128 0x2d
	.4byte	.LVL24
	.4byte	0x27fb
	.uleb128 0x2f
	.4byte	.LVL25
	.4byte	0xc9d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x116
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb6
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x1a5
	.4byte	.LLST4
	.uleb128 0x30
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1de
	.4byte	0x70
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LVL28
	.4byte	0x2806
	.uleb128 0x2d
	.4byte	.LVL30
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL31
	.4byte	0x281c
	.4byte	0xdac
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL34
	.4byte	0x27fb
	.byte	0
	.uleb128 0x31
	.4byte	0x9e3
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeae
	.uleb128 0x32
	.4byte	0x9f4
	.4byte	.LLST5
	.uleb128 0x33
	.4byte	0xa00
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	0xa0c
	.4byte	.LLST6
	.uleb128 0x35
	.4byte	0xa18
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7199
	.uleb128 0x36
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0xe7e
	.uleb128 0x32
	.4byte	0x9f4
	.4byte	.LLST7
	.uleb128 0x32
	.4byte	0xa00
	.4byte	.LLST8
	.uleb128 0x37
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x38
	.4byte	0xa0c
	.uleb128 0x35
	.4byte	0xa18
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7199
	.uleb128 0x2d
	.4byte	.LVL40
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL42
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7199
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0x2827
	.4byte	0xe97
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL44
	.4byte	0x2832
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0xa8f
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf16
	.uleb128 0x32
	.4byte	0xaa0
	.4byte	.LLST9
	.uleb128 0x32
	.4byte	0xaac
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	0xab8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0xeff
	.uleb128 0x32
	.4byte	0xaac
	.4byte	.LLST11
	.uleb128 0x33
	.4byte	0xab8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	0xaa0
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL49
	.4byte	0x283b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x282
	.4byte	0x116
	.byte	0x1
	.4byte	0xf70
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x282
	.4byte	0x1a5
	.uleb128 0x39
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x284
	.4byte	0x70
	.uleb128 0x39
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x285
	.4byte	0xc3
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x286
	.4byte	0xc3
	.uleb128 0x39
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x287
	.4byte	0xce
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x288
	.4byte	0xe4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1
	.4byte	0x1026
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x1a5
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x5d5
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x70
	.uleb128 0x39
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x201
	.4byte	0xb8
	.uleb128 0x39
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x201
	.4byte	0xb8
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x202
	.4byte	0xe4
	.uleb128 0x39
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x202
	.4byte	0xe4
	.uleb128 0x39
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x203
	.4byte	0xe4
	.uleb128 0x39
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x203
	.4byte	0xe4
	.uleb128 0x39
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x203
	.4byte	0xe4
	.uleb128 0x39
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x204
	.4byte	0x70
	.uleb128 0x39
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x205
	.4byte	0x70
	.uleb128 0x39
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x206
	.4byte	0x70
	.uleb128 0x39
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x207
	.4byte	0x6d4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x37e
	.4byte	0x116
	.byte	0x1
	.4byte	0x1044
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x37e
	.4byte	0x1a5
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x2ed
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17dd
	.uleb128 0x3b
	.string	"pv"
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x3c
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x1a5
	.4byte	.LLST13
	.uleb128 0x3d
	.4byte	0xa47
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.2byte	0x315
	.4byte	0x11f3
	.uleb128 0x32
	.4byte	0xa62
	.4byte	.LLST14
	.uleb128 0x32
	.4byte	0xa57
	.4byte	.LLST15
	.uleb128 0x37
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.uleb128 0x34
	.4byte	0xa6d
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	0xa78
	.4byte	.LLST17
	.uleb128 0x38
	.4byte	0xa83
	.uleb128 0x2e
	.4byte	.LVL70
	.4byte	0x2846
	.4byte	0x10d3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL71
	.4byte	0x2851
	.4byte	0x10e7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL73
	.4byte	0x27e5
	.uleb128 0x2d
	.4byte	.LVL74
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL75
	.4byte	0x281c
	.4byte	0x1128
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL76
	.4byte	0x2806
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL78
	.4byte	0x285c
	.uleb128 0x2e
	.4byte	.LVL79
	.4byte	0x281c
	.4byte	0x1171
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL82
	.4byte	0x2867
	.uleb128 0x2d
	.4byte	.LVL84
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL86
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL88
	.4byte	0x281c
	.4byte	0x11bb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL91
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL93
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL95
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL97
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL99
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL101
	.4byte	0x281c
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0xf16
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.2byte	0x323
	.4byte	0x154f
	.uleb128 0x32
	.4byte	0xf27
	.4byte	.LLST18
	.uleb128 0x37
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x34
	.4byte	0xf33
	.4byte	.LLST19
	.uleb128 0x34
	.4byte	0xf3f
	.4byte	.LLST20
	.uleb128 0x34
	.4byte	0xf4b
	.4byte	.LLST21
	.uleb128 0x34
	.4byte	0xf57
	.4byte	.LLST22
	.uleb128 0x34
	.4byte	0xf63
	.4byte	.LLST23
	.uleb128 0x3d
	.4byte	0x9c7
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.2byte	0x299
	.4byte	0x1264
	.uleb128 0x32
	.4byte	0x9d7
	.4byte	.LLST24
	.byte	0
	.uleb128 0x3e
	.4byte	0xf70
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x13dd
	.uleb128 0x32
	.4byte	0xf95
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	0xf89
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	0xf7d
	.4byte	.LLST27
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x34
	.4byte	0xfa1
	.4byte	.LLST28
	.uleb128 0x34
	.4byte	0xfad
	.4byte	.LLST29
	.uleb128 0x35
	.4byte	0xfb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.4byte	0xfc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.4byte	0xfd1
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	0xfdd
	.4byte	.LLST31
	.uleb128 0x34
	.4byte	0xfe9
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	0xff5
	.4byte	.LLST33
	.uleb128 0x34
	.4byte	0x1001
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	0x100d
	.4byte	.LLST35
	.uleb128 0x34
	.4byte	0x1019
	.4byte	.LLST36
	.uleb128 0x2e
	.4byte	.LVL136
	.4byte	0x2872
	.4byte	0x1310
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL139
	.4byte	0x287d
	.4byte	0x132b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL142
	.4byte	0x2888
	.4byte	0x1345
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL147
	.4byte	0x2893
	.4byte	0x1360
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL151
	.4byte	0x27e5
	.uleb128 0x2e
	.4byte	.LVL157
	.4byte	0xb96
	.4byte	0x137d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL161
	.4byte	0x2867
	.4byte	0x1392
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL163
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL164
	.4byte	0x285c
	.uleb128 0x2f
	.4byte	.LVL166
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL103
	.4byte	0x2867
	.4byte	0x13f2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL105
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL110
	.4byte	0x27e5
	.4byte	0x1410
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL113
	.4byte	0xa8f
	.4byte	0x1429
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL117
	.4byte	0xa8f
	.4byte	0x1442
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL119
	.4byte	0xc9d
	.4byte	0x1456
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL123
	.4byte	0x289e
	.4byte	0x146a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL126
	.4byte	0x28a9
	.4byte	0x147e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL127
	.4byte	0xd2e
	.4byte	0x1492
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL128
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL129
	.4byte	0x281c
	.4byte	0x14cf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL130
	.4byte	0x28b4
	.4byte	0x14e7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL171
	.4byte	0xa8f
	.4byte	0x1500
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL175
	.4byte	0x28bf
	.4byte	0x1514
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL178
	.4byte	0x28ca
	.4byte	0x1528
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL179
	.4byte	0xd2e
	.4byte	0x153c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL183
	.4byte	0x28b4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x1026
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.2byte	0x330
	.4byte	0x15c2
	.uleb128 0x32
	.4byte	0x1037
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	.LVL190
	.4byte	0x28d5
	.4byte	0x1580
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL191
	.4byte	0xd2e
	.4byte	0x1594
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL192
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL193
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL58
	.4byte	0x28e0
	.uleb128 0x2d
	.4byte	.LVL59
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL60
	.4byte	0x281c
	.4byte	0x1602
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL61
	.4byte	0x28eb
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0x28f6
	.4byte	0x161f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL63
	.4byte	0xc9d
	.4byte	0x1633
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL64
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL65
	.4byte	0x281c
	.4byte	0x1665
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL66
	.4byte	0x2902
	.uleb128 0x2d
	.4byte	.LVL67
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL186
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL187
	.4byte	0x281c
	.4byte	0x16ae
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL188
	.4byte	0xce1
	.4byte	0x16c2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL194
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL197
	.4byte	0x27fb
	.uleb128 0x2e
	.4byte	.LVL198
	.4byte	0xce1
	.4byte	0x16e8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL199
	.4byte	0x27fb
	.uleb128 0x2e
	.4byte	.LVL200
	.4byte	0x290d
	.4byte	0x170c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7530
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL201
	.4byte	0x2918
	.4byte	0x1721
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL203
	.4byte	0x27fb
	.uleb128 0x2d
	.4byte	.LVL204
	.4byte	0x27fb
	.uleb128 0x2e
	.4byte	.LVL205
	.4byte	0x2923
	.4byte	0x1760
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
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
	.uleb128 0x2d
	.4byte	.LVL206
	.4byte	0x27f0
	.uleb128 0x2e
	.4byte	.LVL207
	.4byte	0x292f
	.4byte	0x177c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL208
	.4byte	0x293b
	.4byte	0x1790
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL210
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL212
	.4byte	0x281c
	.uleb128 0x2e
	.4byte	.LVL213
	.4byte	0xce1
	.4byte	0x17b6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL217
	.4byte	0xc9d
	.4byte	0x17ca
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL218
	.4byte	0x27fb
	.uleb128 0x2d
	.4byte	.LVL220
	.4byte	0x27fb
	.byte	0
	.uleb128 0x31
	.4byte	0xae1
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x185c
	.uleb128 0x32
	.4byte	0xaee
	.4byte	.LLST38
	.uleb128 0x37
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x32
	.4byte	0xaee
	.4byte	.LLST39
	.uleb128 0x37
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.uleb128 0x35
	.4byte	0xafb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.4byte	.LVL225
	.4byte	0x27dc
	.4byte	0x183a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL227
	.4byte	0x27fb
	.uleb128 0x2f
	.4byte	.LVL228
	.4byte	0x2947
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF229
	.byte	0x1
	.byte	0x57
	.4byte	0x116
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab4
	.uleb128 0x2b
	.4byte	.LASF67
	.byte	0x1
	.byte	0x57
	.4byte	0x1a5
	.4byte	.LLST40
	.uleb128 0x2b
	.4byte	.LASF38
	.byte	0x1
	.byte	0x57
	.4byte	0x1ab4
	.4byte	.LLST41
	.uleb128 0x41
	.string	"err"
	.byte	0x1
	.byte	0x5a
	.4byte	0x116
	.4byte	.LLST42
	.uleb128 0x2c
	.string	"cfg"
	.byte	0x1
	.byte	0x5b
	.4byte	0x9a5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x42
	.4byte	.LASF192
	.4byte	0x1acf
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7158
	.uleb128 0x43
	.4byte	.LASF239
	.byte	0x1
	.byte	0xcc
	.4byte	.L128
	.uleb128 0x2e
	.4byte	.LVL231
	.4byte	0x2827
	.4byte	0x18e2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL233
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL235
	.4byte	0x281c
	.4byte	0x193d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7158
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL239
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL240
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL241
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL244
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL245
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL246
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL249
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL250
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL251
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL254
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL255
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL256
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL259
	.4byte	0x295d
	.uleb128 0x2d
	.4byte	.LVL260
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL263
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL264
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL265
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL268
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL269
	.4byte	0x2952
	.uleb128 0x2d
	.4byte	.LVL270
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL273
	.4byte	0x27d1
	.uleb128 0x2e
	.4byte	.LVL274
	.4byte	0x2968
	.4byte	0x1a0e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL275
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL278
	.4byte	0x2832
	.4byte	0x1a2b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL279
	.4byte	0x27d1
	.uleb128 0x2e
	.4byte	.LVL280
	.4byte	0x2952
	.4byte	0x1a48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL281
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL283
	.4byte	0x281c
	.4byte	0x1a8f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL285
	.4byte	0x2973
	.4byte	0x1aa3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL289
	.4byte	0xbce
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1aba
	.uleb128 0x7
	.4byte	0x4f3
	.uleb128 0xa
	.4byte	0xb1
	.4byte	0x1acf
	.uleb128 0xb
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x1abf
	.uleb128 0x44
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x116
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc1
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x1a5
	.4byte	.LLST43
	.uleb128 0x3b
	.string	"uri"
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xb8
	.4byte	.LLST44
	.uleb128 0x30
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x70
	.4byte	.LLST45
	.uleb128 0x3c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xab
	.4byte	.LLST46
	.uleb128 0x36
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.4byte	0x1b9b
	.uleb128 0x3c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1be
	.4byte	0x6d4
	.4byte	.LLST47
	.uleb128 0x2e
	.4byte	.LVL301
	.4byte	0x28e0
	.4byte	0x1b71
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL302
	.4byte	0x297e
	.uleb128 0x2e
	.4byte	.LVL303
	.4byte	0x28e0
	.4byte	0x1b91
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL304
	.4byte	0x297e
	.byte	0
	.uleb128 0x36
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.4byte	0x1c00
	.uleb128 0x3c
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xab
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LVL308
	.4byte	0x2989
	.4byte	0x1bd2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL311
	.4byte	0x2952
	.uleb128 0x2e
	.4byte	.LVL312
	.4byte	0x2952
	.4byte	0x1bef
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL313
	.4byte	0x27d1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL291
	.4byte	0x2994
	.4byte	0x1c14
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL292
	.4byte	0x2973
	.4byte	0x1c28
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL293
	.4byte	0x29a0
	.4byte	0x1c47
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL294
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL295
	.4byte	0x281c
	.4byte	0x1c84
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL298
	.4byte	0x9e3
	.uleb128 0x2d
	.4byte	.LVL299
	.4byte	0x9e3
	.uleb128 0x2d
	.4byte	.LVL300
	.4byte	0x9e3
	.uleb128 0x2e
	.4byte	.LVL305
	.4byte	0x29ac
	.4byte	0x1cb7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL306
	.4byte	0x9e3
	.byte	0
	.uleb128 0x44
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x35b
	.4byte	0x116
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d89
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x35b
	.4byte	0x1a5
	.4byte	.LLST49
	.uleb128 0x3e
	.4byte	0xb27
	.4byte	.LBB86
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x369
	.4byte	0x1d67
	.uleb128 0x32
	.4byte	0xb38
	.4byte	.LLST50
	.uleb128 0x32
	.4byte	0xb44
	.4byte	.LLST51
	.uleb128 0x32
	.4byte	0xb74
	.4byte	.LLST52
	.uleb128 0x32
	.4byte	0xb68
	.4byte	.LLST53
	.uleb128 0x32
	.4byte	0xb5c
	.4byte	.LLST54
	.uleb128 0x32
	.4byte	0xb50
	.4byte	.LLST55
	.uleb128 0x2f
	.4byte	.LVL320
	.4byte	0x29b7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_mqtt_task
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL317
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL322
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL324
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0xb09
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e0f
	.uleb128 0x32
	.4byte	0xb1a
	.4byte	.LLST56
	.uleb128 0x36
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.4byte	0x1def
	.uleb128 0x32
	.4byte	0xb1a
	.4byte	.LLST57
	.uleb128 0x2d
	.4byte	.LVL329
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL330
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL326
	.4byte	0x29c3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x18f
	.4byte	0x116
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e9f
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1a5
	.4byte	.LLST58
	.uleb128 0x2e
	.4byte	.LVL333
	.4byte	0xb09
	.4byte	0x1e4d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL334
	.4byte	0xbce
	.4byte	0x1e61
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL335
	.4byte	0x29cf
	.uleb128 0x2d
	.4byte	.LVL336
	.4byte	0x29da
	.uleb128 0x2d
	.4byte	.LVL337
	.4byte	0x29e5
	.uleb128 0x2d
	.4byte	.LVL338
	.4byte	0x27d1
	.uleb128 0x2d
	.4byte	.LVL339
	.4byte	0x27d1
	.uleb128 0x2f
	.4byte	.LVL340
	.4byte	0x27d1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1a5
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d1
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1ab4
	.4byte	.LLST59
	.uleb128 0x3c
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x12f
	.4byte	0x1a5
	.4byte	.LLST60
	.uleb128 0x42
	.4byte	.LASF192
	.4byte	0x22e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7184
	.uleb128 0x45
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x18a
	.4byte	.L241
	.uleb128 0x46
	.string	"tcp"
	.byte	0x1
	.2byte	0x137
	.4byte	0x6d4
	.4byte	.LLST61
	.uleb128 0x46
	.string	"ws"
	.byte	0x1
	.2byte	0x141
	.4byte	0x6d4
	.4byte	.LLST62
	.uleb128 0x46
	.string	"ssl"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x6d4
	.4byte	.LLST63
	.uleb128 0x46
	.string	"wss"
	.byte	0x1
	.2byte	0x160
	.4byte	0x6d4
	.4byte	.LLST64
	.uleb128 0x3c
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x178
	.4byte	0x70
	.4byte	.LLST65
	.uleb128 0x2e
	.4byte	.LVL343
	.4byte	0x2827
	.4byte	0x1f5c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL345
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL347
	.4byte	0x281c
	.4byte	0x1fb7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7184
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL349
	.4byte	0x185c
	.4byte	0x1fcb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL350
	.4byte	0x29f1
	.uleb128 0x2d
	.4byte	.LVL351
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL354
	.4byte	0x29fc
	.uleb128 0x2d
	.4byte	.LVL356
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL359
	.4byte	0x2a07
	.4byte	0x2004
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL360
	.4byte	0x2a12
	.4byte	0x201e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL361
	.4byte	0x9e3
	.4byte	0x2037
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL362
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL365
	.4byte	0x2a1d
	.4byte	0x2054
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL367
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL370
	.4byte	0x2a07
	.4byte	0x2071
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL371
	.4byte	0x2a12
	.4byte	0x208b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL373
	.4byte	0x9e3
	.4byte	0x20a4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL374
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL377
	.4byte	0x2a28
	.uleb128 0x2d
	.4byte	.LVL379
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL382
	.4byte	0x2a07
	.4byte	0x20d4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x22b3
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL383
	.4byte	0x2973
	.4byte	0x20e8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL384
	.4byte	0x2a33
	.4byte	0x2102
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL385
	.4byte	0x2973
	.4byte	0x2116
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL386
	.4byte	0x2a3e
	.4byte	0x2130
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL387
	.4byte	0x2973
	.4byte	0x2144
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL388
	.4byte	0x2a49
	.4byte	0x215e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL389
	.4byte	0x2a12
	.4byte	0x2178
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL390
	.4byte	0x9e3
	.4byte	0x2191
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL391
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL394
	.4byte	0x2a1d
	.4byte	0x21ae
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL396
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL399
	.4byte	0x2a07
	.4byte	0x21cc
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bb
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL400
	.4byte	0x2a12
	.4byte	0x21e6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL402
	.4byte	0x9e3
	.4byte	0x21ff
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL403
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL406
	.4byte	0x1ad4
	.4byte	0x221c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL407
	.4byte	0x9e3
	.4byte	0x2235
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL408
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL411
	.4byte	0x27fb
	.uleb128 0x2d
	.4byte	.LVL412
	.4byte	0x27fb
	.uleb128 0x2d
	.4byte	.LVL413
	.4byte	0x27fb
	.uleb128 0x2e
	.4byte	.LVL416
	.4byte	0x2968
	.4byte	0x226d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL417
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL420
	.4byte	0x2968
	.4byte	0x228a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL421
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL425
	.4byte	0x2a54
	.uleb128 0x2d
	.4byte	.LVL426
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL427
	.4byte	0x2a5f
	.uleb128 0x2d
	.4byte	.LVL429
	.4byte	0x2811
	.uleb128 0x2d
	.4byte	.LVL431
	.4byte	0x281c
	.uleb128 0x2f
	.4byte	.LVL432
	.4byte	0x1e0f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xb1
	.4byte	0x22e1
	.uleb128 0xb
	.4byte	0x9d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x22d1
	.uleb128 0x44
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x38a
	.4byte	0x70
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f3
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x38a
	.4byte	0x1a5
	.4byte	.LLST66
	.uleb128 0x47
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x38a
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x48
	.string	"qos"
	.byte	0x1
	.2byte	0x38a
	.4byte	0x70
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LVL434
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL435
	.4byte	0x281c
	.4byte	0x2363
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL436
	.4byte	0xae1
	.4byte	0x2377
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL437
	.4byte	0x2a6a
	.4byte	0x239e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 72
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL441
	.4byte	0xd2e
	.4byte	0x23b2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL442
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL443
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC98
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x70
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24e5
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x1a5
	.4byte	.LLST67
	.uleb128 0x47
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x3a1
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LVL448
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL449
	.4byte	0x281c
	.4byte	0x2462
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL450
	.4byte	0xae1
	.4byte	0x2476
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL451
	.4byte	0x2a75
	.4byte	0x2497
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 44
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 72
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL455
	.4byte	0xd2e
	.4byte	0x24ab
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL456
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL457
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x25c
	.byte	0x1
	.4byte	0x2523
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x25c
	.4byte	0x1a5
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x25c
	.4byte	0x5d5
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x25c
	.4byte	0x70
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.2byte	0x261
	.4byte	0x755
	.byte	0
	.uleb128 0x44
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x70
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a8
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x1a5
	.4byte	.LLST68
	.uleb128 0x47
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x3b9
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x3b9
	.4byte	0xb8
	.4byte	.LLST69
	.uleb128 0x3b
	.string	"len"
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x70
	.4byte	.LLST70
	.uleb128 0x48
	.string	"qos"
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x70
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x27
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x3b9
	.4byte	0x70
	.4byte	.LLST71
	.uleb128 0x30
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x3bb
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x3c4
	.4byte	0x8ba
	.4byte	.LLST72
	.uleb128 0x3c
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x70
	.4byte	.LLST73
	.uleb128 0x3c
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x3d6
	.4byte	0xb8
	.4byte	.LLST74
	.uleb128 0x3c
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x121
	.4byte	.LLST75
	.uleb128 0x36
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.4byte	0x2719
	.uleb128 0x3c
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x3e0
	.4byte	0x70
	.4byte	.LLST76
	.uleb128 0x36
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.4byte	0x26c4
	.uleb128 0x3c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x3e5
	.4byte	0x27a8
	.4byte	.LLST77
	.uleb128 0x3d
	.4byte	0x24e5
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x2699
	.uleb128 0x32
	.4byte	0x250a
	.4byte	.LLST78
	.uleb128 0x32
	.4byte	0x24fe
	.4byte	.LLST79
	.uleb128 0x32
	.4byte	0x24f2
	.4byte	.LLST80
	.uleb128 0x37
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.uleb128 0x35
	.4byte	0x2516
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.4byte	.LVL489
	.4byte	0x27dc
	.4byte	0x267d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL490
	.4byte	0x27fb
	.uleb128 0x2f
	.4byte	.LVL491
	.4byte	0x2947
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL492
	.4byte	0x2832
	.4byte	0x26ad
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL493
	.4byte	0x2832
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL478
	.4byte	0xd2e
	.4byte	0x26d8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL479
	.4byte	0x2811
	.uleb128 0x2f
	.4byte	.LVL480
	.4byte	0x281c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL463
	.4byte	0x2811
	.uleb128 0x2e
	.4byte	.LVL464
	.4byte	0x281c
	.4byte	0x2750
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL466
	.4byte	0x2973
	.4byte	0x2764
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL468
	.4byte	0x2a80
	.4byte	0x2797
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL470
	.4byte	0xae1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x623
	.uleb128 0x2c
	.string	"TAG"
	.byte	0x1
	.byte	0x10
	.4byte	0x154
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x49
	.4byte	.LASF251
	.byte	0x1
	.byte	0x4d
	.4byte	0x27cc
	.byte	0x1
	.uleb128 0x7
	.4byte	0x70
	.uleb128 0x4a
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xf
	.byte	0x5a
	.uleb128 0x4b
	.4byte	.LASF260
	.4byte	.LASF260
	.uleb128 0x4a
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x2
	.byte	0x74
	.uleb128 0x4a
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xc
	.byte	0xdb
	.uleb128 0x4a
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x10
	.byte	0x1c
	.uleb128 0x4a
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xc
	.byte	0xc3
	.uleb128 0x4a
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xb
	.byte	0x57
	.uleb128 0x4a
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xb
	.byte	0x6b
	.uleb128 0x4a
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xf
	.byte	0x57
	.uleb128 0x4b
	.4byte	.LASF261
	.4byte	.LASF261
	.uleb128 0x4a
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xd
	.byte	0x21
	.uleb128 0x4a
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x2
	.byte	0x70
	.uleb128 0x4a
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x2
	.byte	0x76
	.uleb128 0x4a
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x11
	.byte	0xf
	.uleb128 0x4a
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xc
	.byte	0xa8
	.uleb128 0x4a
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0xc
	.byte	0xef
	.uleb128 0x4a
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x2
	.byte	0x72
	.uleb128 0x4a
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0x12
	.byte	0x18
	.uleb128 0x4a
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x2
	.byte	0x73
	.uleb128 0x4a
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x2
	.byte	0x78
	.uleb128 0x4a
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x2
	.byte	0x79
	.uleb128 0x4a
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x2
	.byte	0x71
	.uleb128 0x4a
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x2
	.byte	0x7a
	.uleb128 0x4a
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0x2
	.byte	0x7b
	.uleb128 0x4a
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x2
	.byte	0x7e
	.uleb128 0x4a
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0xc
	.byte	0x57
	.uleb128 0x4a
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0xc
	.byte	0x72
	.uleb128 0x4c
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x16a
	.uleb128 0x4a
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0xc
	.byte	0x8c
	.uleb128 0x4a
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0xd
	.byte	0x24
	.uleb128 0x4a
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0xd
	.byte	0x28
	.uleb128 0x4c
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x3
	.2byte	0x32b
	.uleb128 0x4c
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x1e3
	.uleb128 0x4c
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0x3
	.2byte	0x2fb
	.uleb128 0x4a
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0xd
	.byte	0x1e
	.uleb128 0x4a
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0x12
	.byte	0x50
	.uleb128 0x4a
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x10
	.byte	0x1a
	.uleb128 0x4a
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0xf
	.byte	0x65
	.uleb128 0x4a
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x12
	.byte	0x21
	.uleb128 0x4a
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x13
	.byte	0x1a
	.uleb128 0x4a
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0x12
	.byte	0x1b
	.uleb128 0x4c
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0xe
	.2byte	0x15a
	.uleb128 0x4c
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0xe
	.2byte	0x15d
	.uleb128 0x4a
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0xf
	.byte	0x9d
	.uleb128 0x4c
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x3
	.2byte	0x151
	.uleb128 0x4c
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x137
	.uleb128 0x4a
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0xc
	.byte	0x35
	.uleb128 0x4a
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0xd
	.byte	0x29
	.uleb128 0x4c
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x9
	.2byte	0x2c2
	.uleb128 0x4a
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0xc
	.byte	0x29
	.uleb128 0x4a
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x14
	.byte	0x1d
	.uleb128 0x4a
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xc
	.byte	0x7e
	.uleb128 0x4a
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0xc
	.byte	0x41
	.uleb128 0x4a
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x13
	.byte	0x18
	.uleb128 0x4a
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x15
	.byte	0x1e
	.uleb128 0x4a
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0x15
	.byte	0x29
	.uleb128 0x4a
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x15
	.byte	0x34
	.uleb128 0x4a
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x15
	.byte	0x3f
	.uleb128 0x4a
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0xd
	.byte	0x1d
	.uleb128 0x4a
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x9
	.byte	0xb2
	.uleb128 0x4a
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x2
	.byte	0x7c
	.uleb128 0x4a
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x2
	.byte	0x7d
	.uleb128 0x4a
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x2
	.byte	0x77
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x3a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x1c
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x5
	.byte	0x76
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL214
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL107
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL196
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL219
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL181
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL181
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177
	.4byte	.LVL178-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL132
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL162
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL132
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL131
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL155
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL154
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL134
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL161
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x76
	.sleb128 24
	.4byte	.LVL134
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL162
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL163-1
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL132
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL145
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL189
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL222
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL229
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL289
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL229
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL287
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL230
	.4byte	.LVL238
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL290
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL290
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL293
	.4byte	.LVL294-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL307
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL303
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL311-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL316
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL321
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL318
	.4byte	.LVL323
	.2byte	0x6
	.byte	0x3
	.4byte	esp_mqtt_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL318
	.4byte	.LVL323
	.2byte	0x6
	.byte	0x3
	.4byte	.LC74
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL318
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x2
	.byte	0x78
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL318
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL331
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL328
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL331
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL332
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL341
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL342
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL346
	.4byte	.LVL348
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL348
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL353
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL358
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL364
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL376
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL392
	.4byte	.LVL393
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL393
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL397
	.4byte	.LVL398
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL398
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL404
	.4byte	.LVL405
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL405
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL414
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL344
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL428
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL430
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL355
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL366
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL378
	.4byte	.LVL395
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL395
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL414
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL423
	.4byte	.LVL424
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL424
	.4byte	.LVL425-1
	.2byte	0x2
	.byte	0x73
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL433
	.4byte	.LVL444
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL444
	.4byte	.LVL445
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL445
	.4byte	.LVL446
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL446
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL447
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL460
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL461
	.4byte	.LVL481
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL481
	.4byte	.LVL482
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL482
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL495
	.4byte	.LFE64
	.2byte	0x3
	.byte	0x77
	.sleb128 -44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL461
	.4byte	.LVL477
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL477
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL461
	.4byte	.LVL467
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL484
	.4byte	.LFE64
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL461
	.4byte	.LVL462
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL462
	.4byte	.LVL463-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL463-1
	.4byte	.LVL465
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL465
	.4byte	.LVL466-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL466-1
	.4byte	.LVL467
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL467
	.4byte	.LVL468-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL468-1
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL469
	.4byte	.LVL470-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL476
	.4byte	.LVL477
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL484
	.4byte	.LFE64
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL477
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL482
	.4byte	.LVL484
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL484
	.4byte	.LVL485
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL485
	.4byte	.LVL494
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL494
	.4byte	.LFE64
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL477
	.4byte	.LVL480
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL482
	.4byte	.LVL494
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL494
	.4byte	.LFE64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL483
	.4byte	.LVL486
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL486
	.4byte	.LVL487
	.2byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0x79
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL494
	.4byte	.LFE64
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL485
	.4byte	.LVL494
	.2byte	0x3
	.byte	0x72
	.sleb128 44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL488
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL488
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL488
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0
	.4byte	0
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF177:
	.string	"pending_msg_count"
.LASF231:
	.string	"puri"
.LASF51:
	.string	"MQTT_EVENT_ERROR"
.LASF13:
	.string	"sizetype"
.LASF185:
	.string	"MQTT_STATE_INIT"
.LASF90:
	.string	"lwt_msg_len"
.LASF28:
	.string	"EventGroupHandle_t"
.LASF215:
	.string	"transport_message_offset"
.LASF247:
	.string	"current_data"
.LASF18:
	.string	"int32_t"
.LASF292:
	.string	"strchr"
.LASF179:
	.string	"path"
.LASF301:
	.string	"esp_transport_list_init"
.LASF244:
	.string	"esp_mqtt_client_publish"
.LASF169:
	.string	"in_buffer_length"
.LASF73:
	.string	"topic"
.LASF147:
	.string	"esp_transport_item_t"
.LASF24:
	.string	"BaseType_t"
.LASF95:
	.string	"task_stack"
.LASF104:
	.string	"MQTT_MSG_TYPE_PUBLISH"
.LASF254:
	.string	"esp_transport_close"
.LASF118:
	.string	"CONNECTION_ACCEPTED"
.LASF237:
	.string	"esp_mqtt_client_destroy"
.LASF38:
	.string	"config"
.LASF41:
	.string	"state"
.LASF44:
	.string	"reconnect_tick"
.LASF228:
	.string	"esp_mqtt_client_ping"
.LASF79:
	.string	"mqtt_event_callback_t"
.LASF103:
	.string	"MQTT_MSG_TYPE_CONNACK"
.LASF136:
	.string	"mqtt_connect_info"
.LASF137:
	.string	"will_topic"
.LASF116:
	.string	"mqtt_message_type"
.LASF53:
	.string	"MQTT_EVENT_DISCONNECTED"
.LASF161:
	.string	"UF_FRAGMENT"
.LASF276:
	.string	"mqtt_msg_pingreq"
.LASF70:
	.string	"data_len"
.LASF282:
	.string	"outbox_cleanup"
.LASF74:
	.string	"topic_len"
.LASF227:
	.string	"buffer_offset"
.LASF5:
	.string	"__uint8_t"
.LASF211:
	.string	"esp_mqtt_abort_connection"
.LASF218:
	.string	"mqtt_topic"
.LASF305:
	.string	"esp_transport_ws_init"
.LASF167:
	.string	"in_buffer"
.LASF200:
	.string	"mqtt_get_connect_session_present"
.LASF106:
	.string	"MQTT_MSG_TYPE_PUBREC"
.LASF88:
	.string	"lwt_qos"
.LASF12:
	.string	"long int"
.LASF107:
	.string	"MQTT_MSG_TYPE_PUBREL"
.LASF269:
	.string	"memmove"
.LASF39:
	.string	"mqtt_state"
.LASF253:
	.string	"mqtt_get_id"
.LASF139:
	.string	"will_length"
.LASF191:
	.string	"create_string"
.LASF62:
	.string	"MQTT_TRANSPORT_OVER_SSL"
.LASF164:
	.string	"http_parser_url"
.LASF117:
	.string	"mqtt_connect_return_code"
.LASF212:
	.string	"mqtt_write_data"
.LASF112:
	.string	"MQTT_MSG_TYPE_UNSUBACK"
.LASF157:
	.string	"UF_HOST"
.LASF182:
	.string	"mqtt_config_storage_t"
.LASF80:
	.string	"event_handle"
.LASF311:
	.string	"xEventGroupCreate"
.LASF158:
	.string	"UF_PORT"
.LASF203:
	.string	"pcName"
.LASF312:
	.string	"mqtt_msg_subscribe"
.LASF149:
	.string	"outbox_list_t"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"uint8_t"
.LASF310:
	.string	"outbox_init"
.LASF134:
	.string	"buffer_length"
.LASF86:
	.string	"lwt_topic"
.LASF280:
	.string	"esp_transport_connect"
.LASF184:
	.string	"MQTT_STATE_UNKNOWN"
.LASF265:
	.string	"__errno"
.LASF3:
	.string	"unsigned char"
.LASF296:
	.string	"xTaskCreatePinnedToCore"
.LASF42:
	.string	"refresh_connection_tick"
.LASF127:
	.string	"fragmented_msg_total_length"
.LASF155:
	.string	"http_parser_url_fields"
.LASF156:
	.string	"UF_SCHEMA"
.LASF192:
	.string	"__FUNCTION__"
.LASF50:
	.string	"status_bits"
.LASF221:
	.string	"mqtt_data_length"
.LASF163:
	.string	"UF_MAX"
.LASF294:
	.string	"http_parser_parse_url"
.LASF23:
	.string	"_Bool"
.LASF49:
	.string	"outbox"
.LASF299:
	.string	"outbox_destroy"
.LASF115:
	.string	"MQTT_MSG_TYPE_DISCONNECT"
.LASF249:
	.string	"data_sent"
.LASF121:
	.string	"CONNECTION_REFUSE_SERVER_UNAVAILABLE"
.LASF15:
	.string	"char"
.LASF260:
	.string	"memset"
.LASF220:
	.string	"mqtt_topic_length"
.LASF100:
	.string	"refresh_connection_after_ms"
.LASF46:
	.string	"auto_reconnect"
.LASF65:
	.string	"esp_mqtt_transport_t"
.LASF278:
	.string	"esp_transport_get_default_port"
.LASF6:
	.string	"__uint16_t"
.LASF315:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"transport_list"
.LASF168:
	.string	"out_buffer"
.LASF180:
	.string	"scheme"
.LASF285:
	.string	"vTaskDelete"
.LASF120:
	.string	"CONNECTION_REFUSE_ID_REJECTED"
.LASF140:
	.string	"will_qos"
.LASF288:
	.string	"platform_create_id_string"
.LASF30:
	.string	"ESP_LOG_ERROR"
.LASF35:
	.string	"esp_mqtt_client_handle_t"
.LASF78:
	.string	"esp_mqtt_event_handle_t"
.LASF72:
	.string	"current_data_offset"
.LASF271:
	.string	"mqtt_msg_puback"
.LASF264:
	.string	"mqtt_msg_connect"
.LASF222:
	.string	"mqtt_len"
.LASF302:
	.string	"esp_transport_tcp_init"
.LASF250:
	.string	"connection"
.LASF135:
	.string	"mqtt_connection_t"
.LASF43:
	.string	"keepalive_tick"
.LASF92:
	.string	"keepalive"
.LASF133:
	.string	"buffer"
.LASF273:
	.string	"mqtt_get_total_length"
.LASF277:
	.string	"esp_transport_list_get_transport"
.LASF54:
	.string	"MQTT_EVENT_SUBSCRIBED"
.LASF91:
	.string	"disable_clean_session"
.LASF93:
	.string	"disable_auto_reconnect"
.LASF96:
	.string	"buffer_size"
.LASF175:
	.string	"pending_msg_type"
.LASF201:
	.string	"xTaskCreate"
.LASF144:
	.string	"esp_transport_list_handle_t"
.LASF238:
	.string	"esp_mqtt_client_init"
.LASF83:
	.string	"client_id"
.LASF263:
	.string	"mqtt_msg_init"
.LASF306:
	.string	"esp_transport_ssl_init"
.LASF11:
	.string	"__uint64_t"
.LASF300:
	.string	"vEventGroupDelete"
.LASF101:
	.string	"esp_mqtt_client_config_t"
.LASF14:
	.string	"long unsigned int"
.LASF138:
	.string	"will_message"
.LASF146:
	.string	"esp_transport_list_t"
.LASF239:
	.string	"_mqtt_set_config_failed"
.LASF56:
	.string	"MQTT_EVENT_PUBLISHED"
.LASF174:
	.string	"pending_msg_id"
.LASF89:
	.string	"lwt_retain"
.LASF224:
	.string	"total_mqtt_len"
.LASF159:
	.string	"UF_PATH"
.LASF214:
	.string	"msg_qos"
.LASF99:
	.string	"client_key_pem"
.LASF165:
	.string	"field_set"
.LASF232:
	.string	"parser_status"
.LASF319:
	.string	"esp_mqtt_task"
.LASF268:
	.string	"mqtt_get_publish_topic"
.LASF209:
	.string	"esp_mqtt_destroy_config"
.LASF199:
	.string	"is_valid_mqtt_msg"
.LASF279:
	.string	"xEventGroupClearBits"
.LASF87:
	.string	"lwt_msg"
.LASF291:
	.string	"esp_transport_ws_set_path"
.LASF226:
	.string	"max_to_read"
.LASF242:
	.string	"esp_mqtt_client_unsubscribe"
.LASF195:
	.string	"timeout_ms"
.LASF143:
	.string	"mqtt_connect_info_t"
.LASF40:
	.string	"connect_info"
.LASF190:
	.string	"mqtt_get_qos"
.LASF9:
	.string	"__uint32_t"
.LASF198:
	.string	"connect_rsp_code"
.LASF10:
	.string	"long long int"
.LASF60:
	.string	"MQTT_TRANSPORT_UNKNOWN"
.LASF122:
	.string	"CONNECTION_REFUSE_BAD_USERNAME"
.LASF245:
	.string	"retain"
.LASF150:
	.string	"outbox_message"
.LASF286:
	.string	"outbox_enqueue"
.LASF207:
	.string	"pvCreatedTask"
.LASF68:
	.string	"user_context"
.LASF124:
	.string	"esp_mqtt_client"
.LASF284:
	.string	"xEventGroupSetBits"
.LASF22:
	.string	"esp_err_t"
.LASF219:
	.string	"mqtt_data"
.LASF266:
	.string	"esp_transport_read"
.LASF142:
	.string	"clean_session"
.LASF108:
	.string	"MQTT_MSG_TYPE_PUBCOMP"
.LASF98:
	.string	"client_cert_pem"
.LASF210:
	.string	"esp_mqtt_dispatch_event_with_msgid"
.LASF173:
	.string	"outbound_message"
.LASF21:
	.string	"TaskFunction_t"
.LASF188:
	.string	"mqtt_client_state_t"
.LASF47:
	.string	"event"
.LASF178:
	.string	"mqtt_state_t"
.LASF314:
	.string	"mqtt_msg_publish"
.LASF125:
	.string	"mqtt_message"
.LASF236:
	.string	"esp_mqtt_client_start"
.LASF1:
	.string	"unsigned int"
.LASF132:
	.string	"message_id"
.LASF130:
	.string	"mqtt_connection"
.LASF229:
	.string	"esp_mqtt_set_config"
.LASF183:
	.string	"MQTT_STATE_ERROR"
.LASF217:
	.string	"deliver_publish"
.LASF194:
	.string	"esp_mqtt_connect"
.LASF281:
	.string	"outbox_delete_expired"
.LASF31:
	.string	"ESP_LOG_WARN"
.LASF27:
	.string	"TaskHandle_t"
.LASF170:
	.string	"out_buffer_length"
.LASF262:
	.string	"outbox_delete"
.LASF181:
	.string	"network_timeout_ms"
.LASF248:
	.string	"sending"
.LASF114:
	.string	"MQTT_MSG_TYPE_PINGRESP"
.LASF208:
	.string	"esp_mqtt_dispatch_event"
.LASF57:
	.string	"MQTT_EVENT_DATA"
.LASF45:
	.string	"wait_timeout_ms"
.LASF152:
	.string	"remaining_data"
.LASF75:
	.string	"msg_id"
.LASF233:
	.string	"user_info"
.LASF34:
	.string	"ESP_LOG_VERBOSE"
.LASF259:
	.string	"calloc"
.LASF193:
	.string	"mqtt_get_connect_return_code"
.LASF153:
	.string	"remaining_len"
.LASF105:
	.string	"MQTT_MSG_TYPE_PUBACK"
.LASF55:
	.string	"MQTT_EVENT_UNSUBSCRIBED"
.LASF176:
	.string	"pending_publish_qos"
.LASF128:
	.string	"fragmented_msg_data_offset"
.LASF94:
	.string	"task_prio"
.LASF283:
	.string	"vTaskDelay"
.LASF58:
	.string	"MQTT_EVENT_BEFORE_CONNECT"
.LASF113:
	.string	"MQTT_MSG_TYPE_PINGREQ"
.LASF257:
	.string	"esp_log_timestamp"
.LASF308:
	.string	"esp_transport_ssl_set_client_cert_data"
.LASF59:
	.string	"esp_mqtt_event_id_t"
.LASF0:
	.string	"long long unsigned int"
.LASF317:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mqtt"
.LASF126:
	.string	"length"
.LASF17:
	.string	"uint16_t"
.LASF223:
	.string	"mqtt_offset"
.LASF25:
	.string	"UBaseType_t"
.LASF234:
	.string	"trans"
.LASF213:
	.string	"mqtt_process_receive"
.LASF29:
	.string	"ESP_LOG_NONE"
.LASF26:
	.string	"TickType_t"
.LASF148:
	.string	"outbox_handle_t"
.LASF32:
	.string	"ESP_LOG_INFO"
.LASF225:
	.string	"len_read"
.LASF313:
	.string	"mqtt_msg_unsubscribe"
.LASF204:
	.string	"usStackDepth"
.LASF267:
	.string	"esp_transport_get_payload_transport_handle"
.LASF230:
	.string	"esp_mqtt_client_set_uri"
.LASF109:
	.string	"MQTT_MSG_TYPE_SUBSCRIBE"
.LASF197:
	.string	"read_len"
.LASF289:
	.string	"malloc"
.LASF255:
	.string	"platform_tick_get_ms"
.LASF270:
	.string	"mqtt_get_publish_data"
.LASF196:
	.string	"write_len"
.LASF48:
	.string	"wait_for_ping_resp"
.LASF154:
	.string	"outbox_message_t"
.LASF172:
	.string	"message_length_read"
.LASF287:
	.string	"strdup"
.LASF246:
	.string	"publish_msg"
.LASF316:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/mqtt_client.c"
.LASF166:
	.string	"field_data"
.LASF187:
	.string	"MQTT_STATE_WAIT_TIMEOUT"
.LASF81:
	.string	"host"
.LASF298:
	.string	"esp_transport_list_destroy"
.LASF82:
	.string	"port"
.LASF295:
	.string	"strtol"
.LASF272:
	.string	"mqtt_msg_pubrec"
.LASF4:
	.string	"short int"
.LASF76:
	.string	"session_present"
.LASF274:
	.string	"mqtt_msg_pubrel"
.LASF20:
	.string	"uint64_t"
.LASF37:
	.string	"transport"
.LASF256:
	.string	"esp_transport_write"
.LASF110:
	.string	"MQTT_MSG_TYPE_SUBACK"
.LASF202:
	.string	"pvTaskCode"
.LASF52:
	.string	"MQTT_EVENT_CONNECTED"
.LASF111:
	.string	"MQTT_MSG_TYPE_UNSUBSCRIBE"
.LASF186:
	.string	"MQTT_STATE_CONNECTED"
.LASF240:
	.string	"_mqtt_init_failed"
.LASF61:
	.string	"MQTT_TRANSPORT_OVER_TCP"
.LASF318:
	.string	"esp_mqtt_client_stop"
.LASF66:
	.string	"event_id"
.LASF189:
	.string	"mqtt_get_type"
.LASF33:
	.string	"ESP_LOG_DEBUG"
.LASF290:
	.string	"strlen"
.LASF243:
	.string	"mqtt_enqueue_oversized"
.LASF309:
	.string	"esp_transport_ssl_set_client_key_data"
.LASF71:
	.string	"total_data_len"
.LASF293:
	.string	"http_parser_url_init"
.LASF261:
	.string	"memcpy"
.LASF304:
	.string	"esp_transport_list_add"
.LASF119:
	.string	"CONNECTION_REFUSE_PROTOCOL"
.LASF205:
	.string	"pvParameters"
.LASF85:
	.string	"password"
.LASF102:
	.string	"MQTT_MSG_TYPE_CONNECT"
.LASF19:
	.string	"uint32_t"
.LASF145:
	.string	"esp_transport_handle_t"
.LASF77:
	.string	"esp_mqtt_event_t"
.LASF252:
	.string	"free"
.LASF251:
	.string	"STOPPED_BIT"
.LASF216:
	.string	"mqtt_enqueue"
.LASF7:
	.string	"short unsigned int"
.LASF84:
	.string	"username"
.LASF131:
	.string	"message"
.LASF171:
	.string	"message_length"
.LASF307:
	.string	"esp_transport_ssl_set_cert_data"
.LASF241:
	.string	"esp_mqtt_client_subscribe"
.LASF129:
	.string	"mqtt_message_t"
.LASF63:
	.string	"MQTT_TRANSPORT_OVER_WS"
.LASF123:
	.string	"CONNECTION_REFUSE_NOT_AUTHORIZED"
.LASF8:
	.string	"__int32_t"
.LASF141:
	.string	"will_retain"
.LASF162:
	.string	"UF_USERINFO"
.LASF303:
	.string	"esp_transport_set_default_port"
.LASF275:
	.string	"mqtt_msg_pubcomp"
.LASF258:
	.string	"esp_log_write"
.LASF69:
	.string	"data"
.LASF64:
	.string	"MQTT_TRANSPORT_OVER_WSS"
.LASF67:
	.string	"client"
.LASF151:
	.string	"msg_type"
.LASF297:
	.string	"xEventGroupWaitBits"
.LASF97:
	.string	"cert_pem"
.LASF160:
	.string	"UF_QUERY"
.LASF206:
	.string	"uxPriority"
.LASF235:
	.string	"pass"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
