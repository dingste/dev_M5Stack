	.file	"transport_tcp.c"
	.text
.Ltext0:
	.section	.text.tcp_destroy,"ax",@progbits
	.align	4
	.type	tcp_destroy, @function
tcp_destroy:
.LFB52:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport_tcp.c"
	.loc 1 176 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 177 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL1:
	mov.n	a3, a10
.LVL2:
	.loc 1 178 0
	mov.n	a10, a2
	call8	esp_transport_close
.LVL3:
	.loc 1 179 0
	mov.n	a10, a3
	call8	free
.LVL4:
	.loc 1 181 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE52:
	.size	tcp_destroy, .-tcp_destroy
	.section	.text.tcp_close,"ax",@progbits
	.align	4
	.type	tcp_close, @function
tcp_close:
.LFB51:
	.loc 1 165 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 166 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL7:
	mov.n	a3, a10
.LVL8:
	.loc 1 168 0
	l32i.n	a10, a10, 0
	movi.n	a4, -1
	.loc 1 167 0
	mov.n	a2, a4
.LVL9:
	.loc 1 168 0
	bltz	a10, .L3
	.loc 1 169 0
	call8	close
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 170 0
	s32i.n	a4, a3, 0
.LVL12:
.L3:
	.loc 1 173 0
	retw.n
.LFE51:
	.size	tcp_close, .-tcp_close
	.section	.text.tcp_write,"ax",@progbits
	.align	4
	.type	tcp_write, @function
tcp_write:
.LFB47:
	.loc 1 95 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 97 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL14:
	mov.n	a6, a10
.LVL15:
	.loc 1 98 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	esp_transport_poll_write
.LVL16:
	blti	a10, 1, .L6
	.loc 1 101 0
	l32i.n	a10, a6, 0
.LVL17:
	mov.n	a12, a4
	mov.n	a11, a3
	call8	write
.LVL18:
.L6:
	.loc 1 102 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE47:
	.size	tcp_write, .-tcp_write
	.section	.text.tcp_read,"ax",@progbits
	.align	4
	.type	tcp_read, @function
tcp_read:
.LFB48:
	.loc 1 105 0
.LVL20:
	entry	sp, 32
.LCFI3:
	.loc 1 106 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL21:
	mov.n	a6, a10
.LVL22:
	.loc 1 108 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	esp_transport_poll_read
.LVL23:
	blti	a10, 1, .L9
	.loc 1 111 0
	l32i.n	a10, a6, 0
.LVL24:
	mov.n	a12, a4
	mov.n	a11, a3
	call8	read
.LVL25:
	.loc 1 112 0
	movi.n	a2, -1
.LVL26:
	moveqz	a10, a2, a10
.LVL27:
.L9:
	.loc 1 116 0
	mov.n	a2, a10
	retw.n
.LFE48:
	.size	tcp_read, .-tcp_read
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"TRANS_TCP"
.LC4:
	.string	"\033[0;31mE (%d) %s: tcp_poll_write select error %d, errno = %s, fd = %d\033[0m\n"
	.section	.text.tcp_poll_write,"ax",@progbits
	.literal_position
	.literal .LC0, 4103
	.literal .LC1, 4095
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	tcp_poll_write, @function
tcp_poll_write:
.LFB50:
	.loc 1 142 0
.LVL28:
	entry	sp, 80
.LCFI4:
	.loc 1 143 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL29:
.LBB11:
	.loc 1 147 0
	movi.n	a8, 0
	s8i	a8, sp, 32
	s8i	a8, sp, 33
	s8i	a8, sp, 34
	s8i	a8, sp, 35
	s8i	a8, sp, 36
	s8i	a8, sp, 37
	s8i	a8, sp, 38
	s8i	a8, sp, 39
.LBE11:
.LBB12:
	.loc 1 148 0
	s8i	a8, sp, 24
	s8i	a8, sp, 25
	s8i	a8, sp, 26
	s8i	a8, sp, 27
	s8i	a8, sp, 28
	s8i	a8, sp, 29
	s8i	a8, sp, 30
	s8i	a8, sp, 31
.LBE12:
	.loc 1 149 0
	l32i.n	a8, a10, 0
	addi	a2, sp, 16
.LVL30:
	srli	a9, a8, 5
	addx4	a9, a9, a2
	movi.n	a4, 1
	.loc 1 143 0
	mov.n	a5, a10
.LVL31:
	.loc 1 149 0
	l32i.n	a10, a9, 16
	.loc 1 150 0
	l32i.n	a2, a9, 8
	.loc 1 149 0
	ssl	a8
	sll	a8, a4
	or	a10, a10, a8
	s32i.n	a10, a9, 16
	.loc 1 150 0
	or	a8, a2, a8
	.loc 1 152 0
	addi	a11, sp, 16
	mov.n	a10, a3
	.loc 1 150 0
	s32i.n	a8, a9, 8
	.loc 1 152 0
	call8	esp_transport_utils_ms_to_timeval
.LVL32:
	.loc 1 153 0
	l32i.n	a10, a5, 0
	addi	a14, sp, 16
	addi	a13, sp, 24
	addi	a12, sp, 32
.LVL33:
	movi.n	a11, 0
	add.n	a10, a10, a4
	call8	select
.LVL34:
	.loc 1 154 0
	blt	a10, a4, .L13
	.loc 1 154 0 is_stmt 0 discriminator 1
	l32i.n	a2, a5, 0
	addi	a3, sp, 16
.LVL35:
	srli	a8, a2, 5
	addx4	a8, a8, a3
	l32i.n	a3, a8, 8
	bbc	a3, a2, .L13
.LBB13:
	.loc 1 155 0 is_stmt 1
	movi.n	a2, 0
	s32i.n	a2, sp, 44
	.loc 1 156 0
	movi.n	a2, 4
	s32i.n	a2, sp, 40
.LVL36:
.LBB14:
.LBB15:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 573 0
	l32r	a12, .LC0
	l32r	a11, .LC1
	l32i.n	a10, a5, 0
.LVL37:
	addi	a14, sp, 40
.LVL38:
	addi	a13, sp, 44
.LVL39:
	call8	lwip_getsockopt_r
.LVL40:
.LBE15:
.LBE14:
	.loc 1 158 0
	call8	esp_log_timestamp
.LVL41:
	l32i.n	a2, sp, 44
	mov.n	a3, a10
	mov.n	a10, a2
	call8	strerror
.LVL42:
	l32r	a11, .LC3
	l32i.n	a5, a5, 0
.LVL43:
	l32r	a12, .LC5
	s32i.n	a10, sp, 0
	s32i.n	a5, sp, 4
	mov.n	a10, a4
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a3
	call8	esp_log_write
.LVL44:
	.loc 1 159 0
	movi.n	a10, -1
.LVL45:
.L13:
.LBE13:
	.loc 1 162 0
	mov.n	a2, a10
	retw.n
.LFE50:
	.size	tcp_poll_write, .-tcp_poll_write
	.section	.rodata.str1.1
.LC7:
	.string	"\033[0;31mE (%d) %s: DNS lookup failed err=%d res=%p\033[0m\n"
.LC9:
	.string	"\033[0;31mE (%d) %s: Error create socket\033[0m\n"
	.section	.text.tcp_connect,"ax",@progbits
	.literal_position
	.literal .LC6, .LC2
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, 4102
	.literal .LC12, 4095
	.literal .LC13, 4101
	.align	4
	.type	tcp_connect, @function
tcp_connect:
.LFB46:
	.loc 1 55 0
.LVL46:
	entry	sp, 112
.LCFI5:
	.loc 1 58 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL47:
	.loc 1 60 0
	movi.n	a11, 0
	.loc 1 58 0
	mov.n	a6, a10
.LVL48:
	.loc 1 60 0
	movi.n	a12, 0x10
	addi	a10, sp, 48
	call8	memset
.LVL49:
	.loc 1 63 0
	addi	a11, sp, 52
	mov.n	a10, a3
	call8	ip4addr_aton
.LVL50:
	bnei	a10, 1, .L18
.LVL51:
.L25:
.LBB26:
.LBB27:
	.loc 2 593 0
	movi.n	a12, 0
	movi.n	a11, 1
	movi.n	a10, 2
	call8	lwip_socket
.LVL52:
.LBE27:
.LBE26:
	.loc 1 69 0
	s32i.n	a10, a6, 0
	.loc 1 71 0
	bgez	a10, .L28
	j	.L19
.LVL53:
.L18:
.LBB28:
.LBB29:
	.loc 1 37 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL54:
	movi.n	a8, 1
	.loc 1 43 0
	mov.n	a10, a3
	.loc 1 37 0
	movi.n	a2, 2
.LVL55:
	.loc 1 43 0
	addi	a13, sp, 64
	addi	a12, sp, 16
	movi.n	a11, 0
	.loc 1 37 0
	s32i.n	a2, sp, 20
	s32i.n	a8, sp, 24
	.loc 1 43 0
	call8	lwip_getaddrinfo
.LVL56:
	mov.n	a3, a10
.LVL57:
	.loc 1 44 0
	bnez.n	a10, .L21
	l32i	a10, sp, 64
	bnez.n	a10, .L22
.L21:
	.loc 1 45 0
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC6
	l32i	a2, sp, 64
	l32r	a12, .LC8
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
	j	.L29
.L22:
	.loc 1 49 0
	l32i.n	a3, a10, 20
.LVL60:
	.loc 1 48 0
	s8i	a2, sp, 49
	.loc 1 49 0
	addi.n	a2, a3, 4
	l8ui	a3, a3, 4
	l8ui	a8, a2, 1
	s8i	a3, sp, 52
	l8ui	a3, a2, 2
	s8i	a8, sp, 53
	l8ui	a2, a2, 3
	s8i	a3, sp, 54
	s8i	a2, sp, 55
	.loc 1 50 0
	call8	lwip_freeaddrinfo
.LVL61:
	j	.L25
.LVL62:
.L19:
.LBE29:
.LBE28:
	.loc 1 72 0 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC6
	l32r	a12, .LC10
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
.L29:
	.loc 1 73 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL65:
.L28:
	.loc 1 76 0
	movi.n	a2, 2
	.loc 1 77 0
	extui	a10, a4, 0, 16
	.loc 1 76 0
	s8i	a2, sp, 49
	.loc 1 77 0
	call8	lwip_htons
.LVL66:
	s16i	a10, sp, 50
	.loc 1 79 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	esp_transport_utils_ms_to_timeval
.LVL67:
.LBB30:
.LBB31:
	.loc 2 571 0
	l32r	a2, .LC12
	l32r	a12, .LC11
	l32i.n	a10, a6, 0
	movi.n	a14, 8
	addi	a13, sp, 16
.LVL68:
	mov.n	a11, a2
	call8	lwip_setsockopt_r
.LVL69:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	l32r	a12, .LC13
	l32i.n	a10, a6, 0
	mov.n	a11, a2
	movi.n	a14, 8
	addi	a13, sp, 16
.LVL70:
	call8	lwip_setsockopt_r
.LVL71:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 577 0
	l32i.n	a10, a6, 0
	movi.n	a12, 0x10
	addi	a11, sp, 48
.LVL72:
	call8	lwip_connect_r
.LVL73:
.LBE35:
.LBE34:
	.loc 1 86 0
	beqz.n	a10, .L26
	.loc 1 87 0
	l32i.n	a10, a6, 0
	.loc 1 88 0
	movi.n	a2, -1
	.loc 1 87 0
	call8	close
.LVL74:
	.loc 1 88 0
	s32i.n	a2, a6, 0
	.loc 1 89 0
	retw.n
.L26:
	.loc 1 91 0
	l32i.n	a2, a6, 0
	.loc 1 92 0
	retw.n
.LFE46:
	.size	tcp_connect, .-tcp_connect
	.section	.rodata.str1.1
.LC17:
	.string	"\033[0;31mE (%d) %s: tcp_poll_read select error %d, errno = %s, fd = %d\033[0m\n"
	.section	.text.tcp_poll_read,"ax",@progbits
	.literal_position
	.literal .LC14, 4103
	.literal .LC15, 4095
	.literal .LC16, .LC2
	.literal .LC18, .LC17
	.align	4
	.type	tcp_poll_read, @function
tcp_poll_read:
.LFB49:
	.loc 1 119 0
.LVL75:
	entry	sp, 80
.LCFI6:
	.loc 1 120 0
	mov.n	a10, a2
	call8	esp_transport_get_context_data
.LVL76:
.LBB41:
	.loc 1 124 0
	movi.n	a8, 0
	s8i	a8, sp, 32
	s8i	a8, sp, 33
	s8i	a8, sp, 34
	s8i	a8, sp, 35
	s8i	a8, sp, 36
	s8i	a8, sp, 37
	s8i	a8, sp, 38
	s8i	a8, sp, 39
.LBE41:
.LBB42:
	.loc 1 125 0
	s8i	a8, sp, 24
	s8i	a8, sp, 25
	s8i	a8, sp, 26
	s8i	a8, sp, 27
	s8i	a8, sp, 28
	s8i	a8, sp, 29
	s8i	a8, sp, 30
	s8i	a8, sp, 31
.LBE42:
	.loc 1 126 0
	l32i.n	a8, a10, 0
	addi	a2, sp, 16
.LVL77:
	srli	a9, a8, 5
	addx4	a9, a9, a2
	movi.n	a4, 1
	.loc 1 120 0
	mov.n	a5, a10
.LVL78:
	.loc 1 126 0
	l32i.n	a10, a9, 16
	.loc 1 127 0
	l32i.n	a2, a9, 8
	.loc 1 126 0
	ssl	a8
	sll	a8, a4
	or	a10, a10, a8
	s32i.n	a10, a9, 16
	.loc 1 127 0
	or	a8, a2, a8
	.loc 1 129 0
	addi	a11, sp, 16
	mov.n	a10, a3
	.loc 1 127 0
	s32i.n	a8, a9, 8
	.loc 1 129 0
	call8	esp_transport_utils_ms_to_timeval
.LVL79:
	.loc 1 130 0
	l32i.n	a10, a5, 0
	addi	a14, sp, 16
	addi	a13, sp, 24
	movi.n	a12, 0
	addi	a11, sp, 32
.LVL80:
	add.n	a10, a10, a4
	call8	select
.LVL81:
	.loc 1 131 0
	blt	a10, a4, .L31
	.loc 1 131 0 is_stmt 0 discriminator 1
	l32i.n	a2, a5, 0
	addi	a3, sp, 16
.LVL82:
	srli	a8, a2, 5
	addx4	a8, a8, a3
	l32i.n	a3, a8, 8
	bbc	a3, a2, .L31
.LBB43:
	.loc 1 132 0 is_stmt 1
	movi.n	a2, 0
	s32i.n	a2, sp, 44
	.loc 1 133 0
	movi.n	a2, 4
	s32i.n	a2, sp, 40
.LVL83:
.LBB44:
.LBB45:
	.loc 2 573 0
	l32r	a12, .LC14
	l32r	a11, .LC15
	l32i.n	a10, a5, 0
.LVL84:
	addi	a14, sp, 40
.LVL85:
	addi	a13, sp, 44
.LVL86:
	call8	lwip_getsockopt_r
.LVL87:
.LBE45:
.LBE44:
	.loc 1 135 0
	call8	esp_log_timestamp
.LVL88:
	l32i.n	a2, sp, 44
	mov.n	a3, a10
	mov.n	a10, a2
	call8	strerror
.LVL89:
	l32r	a11, .LC16
	l32i.n	a5, a5, 0
.LVL90:
	l32r	a12, .LC18
	s32i.n	a10, sp, 0
	s32i.n	a5, sp, 4
	mov.n	a10, a4
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a3
	call8	esp_log_write
.LVL91:
	.loc 1 136 0
	movi.n	a10, -1
.LVL92:
.L31:
.LBE43:
	.loc 1 139 0
	mov.n	a2, a10
	retw.n
.LFE49:
	.size	tcp_poll_read, .-tcp_poll_read
	.section	.rodata.str1.1
.LC19:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport_tcp.c"
.LC22:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC24:
	.string	"Memory exhausted"
	.section	.text.esp_transport_tcp_init,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, .LC2
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, __FUNCTION__$6663
	.literal .LC27, tcp_poll_read
	.literal .LC28, tcp_close
	.literal .LC29, tcp_write
	.literal .LC30, tcp_read
	.literal .LC31, tcp_connect
	.literal .LC32, tcp_destroy
	.literal .LC33, tcp_poll_write
	.align	4
	.global	esp_transport_tcp_init
	.type	esp_transport_tcp_init, @function
esp_transport_tcp_init:
.LFB53:
	.loc 1 184 0
	entry	sp, 48
.LCFI7:
	.loc 1 185 0
	call8	esp_transport_init
.LVL93:
	mov.n	a3, a10
.LVL94:
	.loc 1 186 0
	movi.n	a11, 4
	movi.n	a10, 1
	call8	calloc
.LVL95:
	mov.n	a2, a10
.LVL96:
	.loc 1 187 0
	bnez.n	a10, .L36
	.loc 1 187 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL97:
	l32r	a3, .LC25
.LVL98:
	l32r	a11, .LC21
	s32i.n	a3, sp, 8
	l32r	a3, .LC26
	l32r	a15, .LC20
	s32i.n	a3, sp, 4
	l32r	a12, .LC23
	movi	a3, 0xbb
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL99:
	.loc 1 187 0 is_stmt 1 discriminator 4
	retw.n
.LVL100:
.L36:
	.loc 1 188 0
	movi.n	a8, -1
	s32i.n	a8, a10, 0
	.loc 1 189 0
	l32r	a8, .LC32
	l32r	a15, .LC27
	s32i.n	a8, sp, 4
	l32r	a8, .LC33
	l32r	a14, .LC28
	l32r	a13, .LC29
	l32r	a12, .LC30
	l32r	a11, .LC31
	s32i.n	a8, sp, 0
	mov.n	a10, a3
	call8	esp_transport_set_func
.LVL101:
	.loc 1 190 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_transport_set_context_data
.LVL102:
	.loc 1 192 0
	mov.n	a2, a3
.LVL103:
	.loc 1 193 0
	retw.n
.LFE53:
	.size	esp_transport_tcp_init, .-esp_transport_tcp_init
	.section	.rodata.__FUNCTION__$6663,"a",@progbits
	.type	__FUNCTION__$6663, @object
	.size	__FUNCTION__$6663, 23
__FUNCTION__$6663:
	.string	"esp_transport_tcp_init"
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
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI3-.LFB48
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
	.uleb128 0x50
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI5-.LFB46
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI6-.LFB49
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI7-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netdb.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/unistd.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport_utils.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/sys/select.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x118e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0xa
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0xf4
	.4byte	0x94
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5
	.byte	0xfc
	.4byte	0x109
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0xfd
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe5
	.4byte	0x119
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0xfe
	.4byte	0xf0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.4byte	0x155
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0x12
	.4byte	0xda
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x13
	.4byte	0x124
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0x18
	.4byte	0x16b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x1b1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x34
	.4byte	0x176
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x9
	.byte	0x39
	.4byte	0x198
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x10
	.byte	0xa
	.byte	0x3a
	.4byte	0x1d5
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xa
	.byte	0x3b
	.4byte	0x1d5
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1e5
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xa
	.byte	0x3f
	.4byte	0x1bc
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x36
	.4byte	0x213
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x2e
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xb
	.byte	0x46
	.4byte	0x232
	.uleb128 0x11
	.string	"ip6"
	.byte	0xb
	.byte	0x47
	.4byte	0x1e5
	.uleb128 0x11
	.string	"ip4"
	.byte	0xb
	.byte	0x48
	.4byte	0x1b1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x14
	.byte	0xb
	.byte	0x45
	.4byte	0x257
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xb
	.byte	0x49
	.4byte	0x213
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xb
	.byte	0x4b
	.4byte	0x155
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xb
	.byte	0x4c
	.4byte	0x232
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xc
	.byte	0x37
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0xc
	.byte	0x3a
	.4byte	0x286
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xc
	.byte	0x3b
	.4byte	0x262
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x2
	.byte	0x3a
	.4byte	0x155
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x2
	.byte	0x3f
	.4byte	0x160
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x2
	.byte	0x45
	.4byte	0x155
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0x46
	.4byte	0x286
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x2
	.byte	0x47
	.4byte	0x291
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0x48
	.4byte	0x26d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x2
	.byte	0x4a
	.4byte	0xc3
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x316
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x2
	.byte	0x5a
	.4byte	0x155
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x2
	.byte	0x5b
	.4byte	0x286
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x2
	.byte	0x5c
	.4byte	0x316
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0x326
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x2
	.byte	0x6c
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x20
	.byte	0xd
	.byte	0x67
	.4byte	0x39e
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xd
	.byte	0x68
	.4byte	0x3e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xd
	.byte	0x69
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xd
	.byte	0x6a
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xd
	.byte	0x6b
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xd
	.byte	0x6c
	.4byte	0x326
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xd
	.byte	0x6d
	.4byte	0x39e
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xd
	.byte	0x6e
	.4byte	0xab
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xd
	.byte	0x6f
	.4byte	0x3a4
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x331
	.uleb128 0x12
	.byte	0x4
	.4byte	0x30
	.byte	0x11
	.byte	0x1f
	.4byte	0x3db
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xe
	.byte	0x1a
	.4byte	0x3e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ec
	.uleb128 0x13
	.4byte	.LASF140
	.uleb128 0x14
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.4byte	0x406
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x1
	.byte	0x20
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x1
	.byte	0x21
	.4byte	0x3f1
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.byte	0x3
	.4byte	0x447
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x240
	.4byte	0x3e
	.byte	0x3
	.4byte	0x47b
	.uleb128 0x17
	.string	"s"
	.byte	0x2
	.2byte	0x240
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x240
	.4byte	0x47b
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x240
	.4byte	0x326
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x481
	.uleb128 0x7
	.4byte	0x2e5
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.byte	0x3
	.4byte	0x4d2
	.uleb128 0x17
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x23a
	.4byte	0xd3
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x23a
	.4byte	0x326
	.byte	0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x23c
	.4byte	0x3e
	.byte	0x3
	.4byte	0x51e
	.uleb128 0x17
	.string	"s"
	.byte	0x2
	.2byte	0x23c
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x23c
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x23c
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x23c
	.4byte	0xa2
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x23c
	.4byte	0x51e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x326
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xaf
	.4byte	0x181
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x590
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0xaf
	.4byte	0x3db
	.4byte	.LLST0
	.uleb128 0x1a
	.string	"tcp"
	.byte	0x1
	.byte	0xb1
	.4byte	0x590
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x1070
	.4byte	0x56b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x107b
	.4byte	0x57f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0x1086
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x406
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa4
	.4byte	0x3e
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0xa4
	.4byte	0x3db
	.4byte	.LLST1
	.uleb128 0x1a
	.string	"tcp"
	.byte	0x1
	.byte	0xa6
	.4byte	0x590
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x1070
	.4byte	0x5ec
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL10
	.4byte	0x1091
	.byte	0
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5e
	.4byte	0x3e
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x5e
	.4byte	0x3db
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x5e
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x5e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x5e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.byte	0x60
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"tcp"
	.byte	0x1
	.byte	0x61
	.4byte	0x590
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x1070
	.4byte	0x673
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x109c
	.4byte	0x68d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x10a7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x68
	.4byte	0x3e
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x761
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x68
	.4byte	0x3db
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x68
	.4byte	0xab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x68
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x68
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"tcp"
	.byte	0x1
	.byte	0x6a
	.4byte	0x590
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.byte	0x6b
	.4byte	0x3e
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF95
	.byte	0x1
	.byte	0x6f
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x1070
	.4byte	0x730
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x10b2
	.4byte	0x74a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x10bd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0x8d
	.4byte	0x3e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x8d
	.4byte	0x3db
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8d
	.4byte	0x3e
	.4byte	.LLST9
	.uleb128 0x1e
	.string	"tcp"
	.byte	0x1
	.byte	0x8f
	.4byte	0x590
	.4byte	.LLST10
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x90
	.4byte	0x3e
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0x91
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF98
	.byte	0x1
	.byte	0x92
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0x97
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x807
	.uleb128 0x26
	.string	"__i"
	.byte	0x1
	.byte	0x93
	.4byte	0x25
	.byte	0x8
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x93
	.4byte	0xab
	.4byte	.LLST12
	.byte	0
	.uleb128 0x25
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x830
	.uleb128 0x26
	.string	"__i"
	.byte	0x1
	.byte	0x94
	.4byte	0x25
	.byte	0x8
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x94
	.4byte	0xab
	.4byte	.LLST13
	.byte	0
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x91a
	.uleb128 0x24
	.4byte	.LASF101
	.byte	0x1
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9c
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	0x4d2
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x9d
	.4byte	0x8be
	.uleb128 0x28
	.4byte	0x4ed
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	0x4f9
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	0x511
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	0x505
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	0x4e3
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LVL40
	.4byte	0x10c8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0x10d4
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0x10df
	.4byte	0x8db
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x10ea
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x1070
	.4byte	0x92e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0x10f5
	.4byte	0x948
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL34
	.4byte	0x1100
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0x23
	.4byte	0x3e
	.byte	0x1
	.4byte	0x9b1
	.uleb128 0x2a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x23
	.4byte	0xb8
	.uleb128 0x2b
	.string	"ip"
	.byte	0x1
	.byte	0x23
	.4byte	0x9b1
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x1
	.byte	0x25
	.4byte	0x9b7
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.byte	0x29
	.4byte	0x3a4
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.byte	0x2b
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29c
	.uleb128 0x7
	.4byte	0x331
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0x36
	.4byte	0x3e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd14
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x36
	.4byte	0x3db
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.byte	0x36
	.4byte	0xb8
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x36
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x36
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF107
	.byte	0x1
	.byte	0x38
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"tv"
	.byte	0x1
	.byte	0x39
	.4byte	0x130
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.string	"tcp"
	.byte	0x1
	.byte	0x3a
	.4byte	0x590
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x27
	.4byte	0x411
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x45
	.4byte	0xa7c
	.uleb128 0x28
	.4byte	0x43a
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0x42e
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	0x422
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x110b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x96a
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x40
	.4byte	0xb59
	.uleb128 0x28
	.4byte	0x985
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	0x97a
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2f
	.4byte	0x98f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.4byte	0x99a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.4byte	0x9a5
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0x1117
	.4byte	0xae4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0x1120
	.4byte	0xb0a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL58
	.4byte	0x10d4
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0x10ea
	.4byte	0xb4e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL61
	.4byte	0x112b
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x486
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x51
	.4byte	0xbb6
	.uleb128 0x31
	.4byte	0x4a1
	.2byte	0xfff
	.uleb128 0x32
	.4byte	0x4c5
	.byte	0x8
	.uleb128 0x28
	.4byte	0x4b9
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	0x4ad
	.2byte	0x1006
	.uleb128 0x28
	.4byte	0x497
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.LVL69
	.4byte	0x1136
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1006
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x486
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x52
	.4byte	0xc13
	.uleb128 0x31
	.4byte	0x4a1
	.2byte	0xfff
	.uleb128 0x32
	.4byte	0x4c5
	.byte	0x8
	.uleb128 0x28
	.4byte	0x4b9
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	0x4ad
	.2byte	0x1005
	.uleb128 0x28
	.4byte	0x497
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0x1136
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1005
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x447
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x56
	.4byte	0xc54
	.uleb128 0x32
	.4byte	0x46e
	.byte	0x10
	.uleb128 0x28
	.4byte	0x462
	.4byte	.LLST31
	.uleb128 0x28
	.4byte	0x458
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x1142
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0x1070
	.4byte	0xc68
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x1117
	.4byte	0xc86
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL50
	.4byte	0x114e
	.4byte	0xca0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL63
	.4byte	0x10d4
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x10ea
	.4byte	0xcd7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0x1159
	.4byte	0xcef
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x10f5
	.4byte	0xd0a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL74
	.4byte	0x1091
	.byte	0
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x1
	.byte	0x76
	.4byte	0x3e
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1d
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x76
	.4byte	0x3db
	.4byte	.LLST33
	.uleb128 0x23
	.4byte	.LASF92
	.byte	0x1
	.byte	0x76
	.4byte	0x3e
	.4byte	.LLST34
	.uleb128 0x1e
	.string	"tcp"
	.byte	0x1
	.byte	0x78
	.4byte	0x590
	.4byte	.LLST35
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x79
	.4byte	0x3e
	.4byte	.LLST36
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x1
	.byte	0x7a
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF98
	.byte	0x1
	.byte	0x7b
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0x80
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0xdba
	.uleb128 0x26
	.string	"__i"
	.byte	0x1
	.byte	0x7c
	.4byte	0x25
	.byte	0x8
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x7c
	.4byte	0xab
	.4byte	.LLST37
	.byte	0
	.uleb128 0x25
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0xde3
	.uleb128 0x26
	.string	"__i"
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.byte	0x8
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x7d
	.4byte	0xab
	.4byte	.LLST38
	.byte	0
	.uleb128 0x25
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0xecd
	.uleb128 0x24
	.4byte	.LASF101
	.byte	0x1
	.byte	0x84
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.byte	0x85
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	0x4d2
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x86
	.4byte	0xe71
	.uleb128 0x28
	.4byte	0x4ed
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	0x4f9
	.4byte	.LLST40
	.uleb128 0x28
	.4byte	0x511
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	0x505
	.4byte	.LLST42
	.uleb128 0x28
	.4byte	0x4e3
	.4byte	.LLST43
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0x10c8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL88
	.4byte	0x10d4
	.uleb128 0x1b
	.4byte	.LVL89
	.4byte	0x10df
	.4byte	0xe8e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x10ea
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL76
	.4byte	0x1070
	.4byte	0xee1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL79
	.4byte	0x10f5
	.4byte	0xefb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0x1100
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb7
	.4byte	0x3db
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1049
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.byte	0xb9
	.4byte	0x3db
	.4byte	.LLST44
	.uleb128 0x1e
	.string	"tcp"
	.byte	0x1
	.byte	0xba
	.4byte	0x590
	.4byte	.LLST45
	.uleb128 0x34
	.4byte	.LASF110
	.4byte	0x1059
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6663
	.uleb128 0x1f
	.4byte	.LVL93
	.4byte	0x1164
	.uleb128 0x1b
	.4byte	.LVL95
	.4byte	0x116f
	.4byte	0xf82
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL97
	.4byte	0x10d4
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x10ea
	.4byte	0xfdd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6663
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL101
	.4byte	0x117a
	.4byte	0x1032
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_connect
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_read
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_write
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_close
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_poll_read
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_poll_write
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_destroy
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL102
	.4byte	0x1186
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0x1059
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x1049
	.uleb128 0x1a
	.string	"TAG"
	.byte	0x1
	.byte	0x1d
	.4byte	0x193
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x35
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xe
	.byte	0xe4
	.uleb128 0x35
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xe
	.byte	0xdb
	.uleb128 0x35
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xf
	.byte	0x5a
	.uleb128 0x35
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x10
	.byte	0x1e
	.uleb128 0x35
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xe
	.byte	0xd0
	.uleb128 0x35
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x10
	.byte	0xc5
	.uleb128 0x35
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xe
	.byte	0xb5
	.uleb128 0x35
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x10
	.byte	0x95
	.uleb128 0x36
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x21a
	.uleb128 0x35
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x11
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x12
	.byte	0x20
	.uleb128 0x35
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x11
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x13
	.byte	0x1d
	.uleb128 0x35
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x14
	.byte	0x19
	.uleb128 0x36
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x228
	.uleb128 0x37
	.4byte	.LASF142
	.4byte	.LASF142
	.uleb128 0x35
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xd
	.byte	0x7e
	.uleb128 0x35
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xd
	.byte	0x7d
	.uleb128 0x36
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x36
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x21d
	.uleb128 0x35
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x9
	.byte	0xd8
	.uleb128 0x35
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x15
	.byte	0x55
	.uleb128 0x35
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xe
	.byte	0x5e
	.uleb128 0x35
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xf
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x10b
	.uleb128 0x35
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xe
	.byte	0xfa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
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
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
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
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40-1
	.4byte	.LFE50
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34-1
	.4byte	.LFE50
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xa
	.2byte	0x1007
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40-1
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40-1
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL40-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL69-1
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL71-1
	.4byte	.LFE46
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL71-1
	.4byte	.LFE46
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL71-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73-1
	.4byte	.LFE46
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL78
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87-1
	.4byte	.LFE49
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-1
	.4byte	.LFE49
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xa
	.2byte	0x1007
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87-1
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL87-1
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL83
	.4byte	.LVL87-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"ai_family"
.LASF37:
	.string	"IPADDR_TYPE_ANY"
.LASF101:
	.string	"sock_errno"
.LASF59:
	.string	"ai_flags"
.LASF3:
	.string	"size_t"
.LASF90:
	.string	"tcp_write"
.LASF78:
	.string	"socket"
.LASF128:
	.string	"lwip_setsockopt_r"
.LASF58:
	.string	"addrinfo"
.LASF4:
	.string	"__uint8_t"
.LASF68:
	.string	"ESP_LOG_ERROR"
.LASF40:
	.string	"type"
.LASF94:
	.string	"tcp_read"
.LASF124:
	.string	"select"
.LASF11:
	.string	"long long unsigned int"
.LASF42:
	.string	"in_addr_t"
.LASF31:
	.string	"addr"
.LASF84:
	.string	"optname"
.LASF57:
	.string	"socklen_t"
.LASF97:
	.string	"writeset"
.LASF113:
	.string	"free"
.LASF87:
	.string	"getsockopt"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF114:
	.string	"close"
.LASF12:
	.string	"long int"
.LASF30:
	.string	"ip4_addr"
.LASF122:
	.string	"esp_log_write"
.LASF25:
	.string	"uint16_t"
.LASF34:
	.string	"ip6_addr_t"
.LASF135:
	.string	"esp_transport_set_context_data"
.LASF47:
	.string	"sockaddr_in"
.LASF9:
	.string	"__uint32_t"
.LASF74:
	.string	"sock"
.LASF100:
	.string	"__tmp"
.LASF52:
	.string	"sin_zero"
.LASF19:
	.string	"suseconds_t"
.LASF105:
	.string	"tcp_connect"
.LASF103:
	.string	"host"
.LASF123:
	.string	"esp_transport_utils_ms_to_timeval"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"s_addr"
.LASF95:
	.string	"read_len"
.LASF102:
	.string	"resolve_dns"
.LASF61:
	.string	"ai_socktype"
.LASF14:
	.string	"long unsigned int"
.LASF99:
	.string	"timeout"
.LASF110:
	.string	"__FUNCTION__"
.LASF136:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"name"
.LASF138:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/tcp_transport"
.LASF83:
	.string	"level"
.LASF1:
	.string	"short unsigned int"
.LASF51:
	.string	"sin_addr"
.LASF106:
	.string	"port"
.LASF88:
	.string	"tcp_destroy"
.LASF35:
	.string	"IPADDR_TYPE_V4"
.LASF75:
	.string	"transport_tcp_t"
.LASF20:
	.string	"timeval"
.LASF8:
	.string	"__int32_t"
.LASF131:
	.string	"lwip_htons"
.LASF130:
	.string	"ip4addr_aton"
.LASF117:
	.string	"esp_transport_poll_read"
.LASF139:
	.string	"lwip_ip_addr_type"
.LASF116:
	.string	"write"
.LASF70:
	.string	"ESP_LOG_INFO"
.LASF54:
	.string	"sa_len"
.LASF49:
	.string	"sin_family"
.LASF41:
	.string	"ip_addr_t"
.LASF134:
	.string	"esp_transport_set_func"
.LASF93:
	.string	"poll"
.LASF13:
	.string	"sizetype"
.LASF17:
	.string	"fd_mask"
.LASF22:
	.string	"tv_sec"
.LASF85:
	.string	"opval"
.LASF38:
	.string	"ip_addr"
.LASF48:
	.string	"sin_len"
.LASF73:
	.string	"esp_transport_handle_t"
.LASF119:
	.string	"lwip_getsockopt_r"
.LASF115:
	.string	"esp_transport_poll_write"
.LASF112:
	.string	"esp_transport_close"
.LASF16:
	.string	"time_t"
.LASF63:
	.string	"ai_addrlen"
.LASF108:
	.string	"tcp_poll_read"
.LASF50:
	.string	"sin_port"
.LASF55:
	.string	"sa_family"
.LASF92:
	.string	"timeout_ms"
.LASF77:
	.string	"protocol"
.LASF29:
	.string	"_Bool"
.LASF26:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF21:
	.string	"fds_bits"
.LASF64:
	.string	"ai_addr"
.LASF6:
	.string	"short int"
.LASF142:
	.string	"memset"
.LASF120:
	.string	"esp_log_timestamp"
.LASF132:
	.string	"esp_transport_init"
.LASF141:
	.string	"esp_transport_tcp_init"
.LASF66:
	.string	"ai_next"
.LASF129:
	.string	"lwip_connect_r"
.LASF133:
	.string	"calloc"
.LASF79:
	.string	"connect"
.LASF127:
	.string	"lwip_freeaddrinfo"
.LASF23:
	.string	"tv_usec"
.LASF27:
	.string	"uint32_t"
.LASF109:
	.string	"readset"
.LASF33:
	.string	"ip6_addr"
.LASF125:
	.string	"lwip_socket"
.LASF15:
	.string	"char"
.LASF72:
	.string	"ESP_LOG_VERBOSE"
.LASF111:
	.string	"esp_transport_get_context_data"
.LASF7:
	.string	"__uint16_t"
.LASF67:
	.string	"ESP_LOG_NONE"
.LASF91:
	.string	"buffer"
.LASF86:
	.string	"optlen"
.LASF81:
	.string	"namelen"
.LASF140:
	.string	"esp_transport_item_t"
.LASF18:
	.string	"_types_fd_set"
.LASF137:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport_tcp.c"
.LASF32:
	.string	"ip4_addr_t"
.LASF96:
	.string	"tcp_poll_write"
.LASF45:
	.string	"sa_family_t"
.LASF104:
	.string	"hints"
.LASF69:
	.string	"ESP_LOG_WARN"
.LASF39:
	.string	"u_addr"
.LASF28:
	.string	"esp_err_t"
.LASF82:
	.string	"setsockopt"
.LASF36:
	.string	"IPADDR_TYPE_V6"
.LASF24:
	.string	"uint8_t"
.LASF126:
	.string	"lwip_getaddrinfo"
.LASF89:
	.string	"tcp_close"
.LASF98:
	.string	"errset"
.LASF76:
	.string	"domain"
.LASF118:
	.string	"read"
.LASF56:
	.string	"sa_data"
.LASF65:
	.string	"ai_canonname"
.LASF71:
	.string	"ESP_LOG_DEBUG"
.LASF121:
	.string	"strerror"
.LASF107:
	.string	"remote_ip"
.LASF62:
	.string	"ai_protocol"
.LASF46:
	.string	"in_port_t"
.LASF53:
	.string	"sockaddr"
.LASF43:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
