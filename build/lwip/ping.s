	.file	"ping.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"setting receive timeout failed"
.LC8:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/apps/ping/ping.c"
.LC10:
	.string	"setting IP_TOS failed"
.LC14:
	.string	"ping_size is too big"
	.section	.text.ping_thread,"ax",@progbits
	.literal_position
	.literal .LC2, 274877907
	.literal .LC3, 4102
	.literal .LC4, 4095
	.literal .LC6, .LC5
	.literal .LC7, __func__$6957
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, ping_init_flag
	.literal .LC13, 65535
	.literal .LC15, .LC14
	.literal .LC16, __func__$6922
	.literal .LC17, ping_seq_num
	.literal .LC18, ping_time
	.literal .LC19, -20561
	.literal .LC20, ping_sem
	.align	4
	.type	ping_thread, @function
ping_thread:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/apps/ping/ping.c"
	.loc 1 239 0
.LVL0:
	entry	sp, 176
.LCFI0:
	.loc 1 248 0
	movi.n	a4, 3
	.loc 1 240 0
	movi	a2, 0x3e8
.LVL1:
	.loc 1 252 0
	movi.n	a12, 4
	addi	a11, sp, 108
	movi.n	a10, 0x33
	.loc 1 240 0
	s32i	a2, sp, 116
	.loc 1 241 0
	s32i	a2, sp, 112
.LVL2:
	.loc 1 248 0
	s32i	a4, sp, 108
	.loc 1 252 0
	call8	esp_ping_get_target
.LVL3:
	.loc 1 253 0
	movi.n	a12, 4
	addi	a11, sp, 116
	movi.n	a10, 0x34
	call8	esp_ping_get_target
.LVL4:
	.loc 1 254 0
	movi.n	a12, 4
	addi	a11, sp, 112
	movi.n	a10, 0x35
	call8	esp_ping_get_target
.LVL5:
	.loc 1 255 0
	movi.n	a12, 4
	addi	a11, sp, 104
	movi.n	a10, 0x32
	call8	esp_ping_get_target
.LVL6:
	.loc 1 256 0
	l32i	a2, sp, 104
	.loc 1 265 0
	l32i	a5, sp, 116
	.loc 1 256 0
	s32i	a2, sp, 128
	.loc 1 265 0
	l32r	a2, .LC2
.LBB30:
.LBB31:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 593 0
	movi.n	a12, 1
.LBE31:
.LBE30:
	.loc 1 265 0
	muluh	a2, a5, a2
.LBB35:
.LBB32:
	.loc 2 593 0
	mov.n	a11, a4
.LBE32:
.LBE35:
	.loc 1 265 0
	srli	a2, a2, 6
	.loc 1 266 0
	slli	a3, a2, 5
	sub	a3, a3, a2
	.loc 1 265 0
	s32i	a2, sp, 88
	.loc 1 266 0
	addx4	a2, a3, a2
	ssl	a4
	sll	a2, a2
	sub	a2, a5, a2
	slli	a3, a2, 5
	sub	a3, a3, a2
	addx4	a2, a3, a2
	ssl	a4
	sll	a2, a2
.LBB36:
.LBB33:
	.loc 2 593 0
	movi.n	a10, 2
.LBE33:
.LBE36:
	.loc 1 266 0
	s32i	a2, sp, 92
.LVL7:
.LBB37:
.LBB34:
	.loc 2 593 0
	call8	lwip_socket
.LVL8:
	mov.n	a2, a10
.LBE34:
.LBE37:
	.loc 1 271 0
	bltz	a10, .L2
.LVL9:
.LBB38:
.LBB39:
	.loc 2 571 0
	l32r	a12, .LC3
	l32r	a11, .LC4
	movi.n	a14, 8
	addi	a13, sp, 88
.LVL10:
	call8	lwip_setsockopt_r
.LVL11:
	mov.n	a4, a10
.LBE39:
.LBE38:
	.loc 1 276 0
	beqz.n	a10, .L3
	.loc 1 276 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0x114
	j	.L38
.L3:
	.loc 1 280 0 is_stmt 1
	s32i	a10, sp, 100
	.loc 1 281 0
	movi.n	a12, 4
	addi	a11, sp, 100
	movi.n	a10, 0x3a
	call8	esp_ping_get_target
.LVL12:
	.loc 1 282 0
	l32i	a3, sp, 100
	bgei	a3, 1, .L4
.L6:
	.loc 1 239 0
	movi.n	a3, 0
.LBB40:
.LBB41:
	.loc 1 148 0
	mov.n	a5, a3
	j	.L5
.L4:
.LBE41:
.LBE40:
	.loc 1 283 0
	slli	a3, a3, 5
.LBB49:
.LBB50:
	.loc 2 571 0
	movi.n	a14, 4
	addi	a13, sp, 100
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a2
.LBE50:
.LBE49:
	.loc 1 283 0
	s32i	a3, sp, 100
.LVL13:
.LBB52:
.LBB51:
	.loc 2 571 0
	call8	lwip_setsockopt_r
.LVL14:
.LBE51:
.LBE52:
	.loc 1 285 0
	beqz.n	a10, .L6
	.loc 1 285 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC7
	movi	a11, 0x11d
.LVL15:
.L38:
	l32r	a10, .LC9
	call8	__assert_func
.LVL16:
.L5:
	.loc 1 292 0 is_stmt 1
	addi.n	a4, a3, 1
	s32i	a4, sp, 132
.LVL17:
	l32i	a4, sp, 108
.LVL18:
	bgeu	a3, a4, .L7
	.loc 1 296 0
	l32r	a8, .LC12
	l8ui	a3, a8, 0
	beqz.n	a3, .L7
.LVL19:
.LBB53:
.LBB48:
	.loc 1 149 0
	movi.n	a12, 4
	addi	a11, sp, 64
	movi.n	a10, 0x39
	.loc 1 148 0
	s32i	a5, sp, 64
	.loc 1 149 0
	call8	esp_ping_get_target
.LVL20:
	.loc 1 151 0
	l32i	a6, sp, 64
	beqz.n	a6, .L19
	.loc 1 160 0
	l32r	a3, .LC13
	.loc 1 152 0
	addi.n	a6, a6, 8
.LVL21:
	.loc 1 160 0
	bgeu	a3, a6, .L8
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0xa0
	j	.L38
.LVL22:
.L19:
	.loc 1 154 0
	movi.n	a6, 0x28
.L8:
.LVL23:
	.loc 1 163 0
	mov.n	a10, a6
	call8	mem_malloc
.LVL24:
	mov.n	a3, a10
.LVL25:
	.loc 1 164 0
	beqz.n	a10, .L12
.LVL26:
.LBB42:
.LBB43:
	.loc 1 122 0
	movi.n	a4, 8
	s8i	a4, a10, 0
	.loc 1 123 0
	movi.n	a4, 0
	s8i	a4, a10, 1
	.loc 1 125 0
	movi	a4, -0x51
	s8i	a4, a10, 4
	s8i	a4, a10, 5
	.loc 1 126 0
	l32r	a4, .LC17
	.loc 1 124 0
	s8i	a5, a10, 2
	s8i	a5, a10, 3
	.loc 1 126 0
	l16ui	a10, a4, 0
	.loc 1 120 0
	addi	a7, a6, -8
.LVL27:
	.loc 1 126 0
	addi.n	a10, a10, 1
	extui	a10, a10, 0, 16
	s16i	a10, a4, 0
	call8	lwip_htons
.LVL28:
	s8i	a10, a3, 6
	extui	a10, a10, 8, 16
	s8i	a10, a3, 7
.LVL29:
	.loc 1 129 0
	movi.n	a8, 0
	addi.n	a10, a3, 8
	j	.L10
.LVL30:
.L11:
	.loc 1 130 0
	s8i	a8, a10, 0
	.loc 1 129 0
	addi.n	a8, a8, 1
.LVL31:
	addi.n	a10, a10, 1
.LVL32:
.L10:
	bltu	a8, a7, .L11
	.loc 1 133 0
	mov.n	a11, a6
	mov.n	a10, a3
	call8	inet_chksum
.LVL33:
	s8i	a10, a3, 2
	extui	a10, a10, 8, 16
	s8i	a10, a3, 3
.LBE43:
.LBE42:
	.loc 1 170 0
	movi.n	a8, 0x10
	s8i	a8, sp, 0
	.loc 1 171 0
	movi.n	a8, 2
	s8i	a8, sp, 1
	.loc 1 172 0
	l32i	a8, sp, 128
.LBB44:
.LBB45:
	.loc 2 591 0
	mov.n	a12, a6
	movi.n	a15, 0x10
	mov.n	a14, sp
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LBE45:
.LBE44:
	.loc 1 172 0
	s32i.n	a8, sp, 4
.LVL34:
.LBB47:
.LBB46:
	.loc 2 591 0
	call8	lwip_sendto_r
.LVL35:
	mov.n	a6, a10
.LVL36:
.LBE46:
.LBE47:
	.loc 1 176 0
	mov.n	a10, a3
	call8	mem_free
.LVL37:
	.loc 1 178 0
	beqz.n	a6, .L12
.LBE48:
.LBE53:
	.loc 1 305 0
	l32r	a3, .LC18
.LVL38:
	movi.n	a11, 0
	mov.n	a10, a3
	call8	gettimeofday
.LVL39:
	j	.L14
.LVL40:
.L15:
.LBB54:
.LBB55:
	.loc 1 193 0
	movi.n	a8, 0x1b
	bge	a8, a6, .L14
	.loc 1 194 0
	l8ui	a8, sp, 65
	bnei	a8, 2, .L14
.LVL41:
	l8ui	a8, sp, 0
.LBB56:
	.loc 1 205 0
	movi.n	a11, 0
	.loc 1 201 0
	extui	a8, a8, 0, 4
	.loc 1 205 0
	addi	a10, sp, 80
	.loc 1 201 0
	addx4	a7, a8, sp
.LVL42:
	.loc 1 205 0
	call8	gettimeofday
.LVL43:
	.loc 1 208 0
	l8ui	a10, a7, 5
	l8ui	a11, a7, 4
	l32r	a9, .LC19
	slli	a10, a10, 8
	or	a10, a10, a11
	extui	a9, a9, 0, 16
	bne	a10, a9, .L14
	l8ui	a9, a7, 7
	l8ui	a10, a7, 6
	slli	a9, a9, 8
	or	a9, a9, a10
	l16ui	a10, a4, 0
	s32i	a9, sp, 136
	call8	lwip_htons
.LVL44:
	l32i	a9, sp, 136
	bne	a9, a10, .L14
	.loc 1 211 0
	l32i.n	a12, a3, 0
	l32i	a4, sp, 80
	movi.n	a10, 1
	sub	a4, a4, a12
	slli	a12, a4, 5
	sub	a12, a12, a4
	addx4	a12, a12, a4
	l32i.n	a4, a3, 4
	l32i	a3, sp, 84
	extui	a11, a6, 0, 16
	sub	a3, a3, a4
	l32r	a4, .LC2
	mulsh	a4, a3, a4
	srai	a3, a3, 31
	srai	a4, a4, 6
	sub	a3, a4, a3
	l8ui	a4, a7, 0
	addx8	a12, a12, a3
	movnez	a10, a5, a4
	j	.L37
.LVL45:
.L14:
.LBE56:
	.loc 1 221 0
	movi.n	a6, 0x10
.LBB57:
.LBB58:
	.loc 2 585 0
	addi	a15, sp, 96
	addi	a14, sp, 64
	movi.n	a13, 0
	movi.n	a12, 0x40
	mov.n	a11, sp
.LVL46:
	mov.n	a10, a2
.LBE58:
.LBE57:
	.loc 1 221 0
	s32i	a6, sp, 96
.LVL47:
.LBB60:
.LBB59:
	.loc 2 585 0
	call8	lwip_recvfrom_r
.LVL48:
	mov.n	a6, a10
.LBE59:
.LBE60:
	.loc 1 192 0
	bgei	a10, 1, .L15
	.loc 1 224 0
	movi.n	a11, 0
	addi	a10, sp, 80
	call8	gettimeofday
.LVL49:
	.loc 1 231 0
	l32i.n	a12, a3, 0
	l32i	a4, sp, 80
	extui	a11, a6, 0, 16
	sub	a4, a4, a12
	slli	a12, a4, 5
	sub	a12, a12, a4
	addx4	a12, a12, a4
	l32i.n	a4, a3, 4
	l32i	a3, sp, 84
	movi.n	a10, 0
	sub	a3, a3, a4
	l32r	a4, .LC2
	mulsh	a4, a3, a4
	srai	a3, a3, 31
	srai	a4, a4, 6
	sub	a3, a4, a3
	addx8	a12, a12, a3
.L37:
	call8	esp_ping_result
.LVL50:
.L12:
.LBE55:
.LBE54:
	.loc 1 312 0
	l32i	a10, sp, 112
	call8	sys_msleep
.LVL51:
	.loc 1 292 0
	l32i	a3, sp, 132
	.loc 1 313 0
	j	.L5
.LVL52:
.L7:
	.loc 1 317 0
	mov.n	a10, a2
	call8	close
.LVL53:
.L2:
	.loc 1 320 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 2
	call8	esp_ping_result
.LVL54:
	.loc 1 321 0
	call8	sys_arch_protect
.LVL55:
	.loc 1 322 0
	l32r	a2, .LC12
	.loc 1 321 0
	mov.n	a3, a10
.LVL56:
	.loc 1 322 0
	l8ui	a4, a2, 0
	l32r	a2, .LC20
	beqz.n	a4, .L16
	.loc 1 324 0
	l32i.n	a4, a2, 0
	beqz.n	a4, .L17
	.loc 1 325 0
	mov.n	a10, a2
	call8	sys_sem_free
.LVL57:
.L17:
	.loc 1 328 0
	l32r	a8, .LC12
	.loc 1 327 0
	movi.n	a4, 0
	.loc 1 329 0
	mov.n	a10, a3
	.loc 1 327 0
	s32i.n	a4, a2, 0
	.loc 1 328 0
	s8i	a4, a8, 0
	.loc 1 329 0
	call8	sys_arch_unprotect
.LVL58:
	j	.L18
.L16:
	.loc 1 332 0
	call8	sys_arch_unprotect
.LVL59:
	.loc 1 333 0
	l32i.n	a3, a2, 0
.LVL60:
	beqz.n	a3, .L18
	.loc 1 334 0
	mov.n	a10, a2
	call8	sys_sem_signal
.LVL61:
.L18:
	.loc 1 337 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL62:
	retw.n
.LFE39:
	.size	ping_thread, .-ping_thread
	.section	.rodata.str1.1
.LC25:
	.string	"ping_thread"
	.section	.text.ping_init,"ax",@progbits
	.literal_position
	.literal .LC21, ping_init_flag
	.literal .LC22, ping_sem
	.literal .LC23, 3584
	.literal .LC24, ping_thread
	.literal .LC26, .LC25
	.align	4
	.global	ping_init
	.type	ping_init, @function
ping_init:
.LFB40:
	.loc 1 441 0
	entry	sp, 32
.LCFI1:
	.loc 1 445 0
	call8	sys_arch_protect
.LVL63:
	.loc 1 446 0
	l32r	a4, .LC21
	.loc 1 445 0
	mov.n	a3, a10
.LVL64:
	.loc 1 446 0
	l8ui	a11, a4, 0
	beqz.n	a11, .L40
	.loc 1 447 0
	call8	sys_arch_unprotect
.LVL65:
	.loc 1 449 0
	movi.n	a2, -5
	retw.n
.L40:
	.loc 1 451 0
	l32r	a10, .LC22
	call8	sys_sem_new
.LVL66:
	extui	a2, a10, 0, 8
.LVL67:
	.loc 1 452 0
	beqz.n	a2, .L42
	.loc 1 453 0
	mov.n	a10, a3
	call8	sys_arch_unprotect
.LVL68:
	.loc 1 454 0
	movi.n	a2, -1
.LVL69:
	retw.n
.LVL70:
.L42:
	.loc 1 456 0
	movi.n	a8, 1
	.loc 1 457 0
	mov.n	a10, a3
	.loc 1 456 0
	s8i	a8, a4, 0
	.loc 1 457 0
	call8	sys_arch_unprotect
.LVL71:
	.loc 1 459 0
	l32r	a13, .LC23
	l32r	a11, .LC24
	l32r	a10, .LC26
	movi.n	a14, 0x12
	mov.n	a12, a2
	call8	sys_thread_new
.LVL72:
	.loc 1 464 0
	retw.n
.LFE40:
	.size	ping_init, .-ping_init
	.section	.text.ping_deinit,"ax",@progbits
	.literal_position
	.literal .LC27, ping_init_flag
	.literal .LC28, ping_sem
	.align	4
	.global	ping_deinit
	.type	ping_deinit, @function
ping_deinit:
.LFB41:
	.loc 1 468 0
	entry	sp, 32
.LCFI2:
	.loc 1 471 0
	call8	sys_arch_protect
.LVL73:
	.loc 1 472 0
	l32r	a2, .LC27
	l8ui	a3, a2, 0
	bnez.n	a3, .L44
	j	.L49
.L44:
	.loc 1 477 0
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 478 0
	call8	sys_arch_unprotect
.LVL74:
	.loc 1 479 0
	l32r	a2, .LC28
	l32i.n	a3, a2, 0
	beqz.n	a3, .L43
	.loc 1 480 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	sys_arch_sem_wait
.LVL75:
	.loc 1 482 0
	call8	sys_arch_protect
.LVL76:
	mov.n	a3, a10
.LVL77:
	.loc 1 483 0
	mov.n	a10, a2
	call8	sys_sem_free
.LVL78:
	.loc 1 484 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 485 0
	mov.n	a10, a3
.LVL79:
.L49:
	call8	sys_arch_unprotect
.LVL80:
.L43:
	retw.n
.LFE41:
	.size	ping_deinit, .-ping_deinit
	.section	.rodata.__func__$6922,"a",@progbits
	.type	__func__$6922, @object
	.size	__func__$6922, 10
__func__$6922:
	.string	"ping_send"
	.section	.rodata.__func__$6957,"a",@progbits
	.type	__func__$6957, @object
	.size	__func__$6957, 12
__func__$6957:
	.string	"ping_thread"
	.section	.bss.ping_init_flag,"aw",@nobits
	.type	ping_init_flag, @object
	.size	ping_init_flag, 1
ping_init_flag:
	.zero	1
	.section	.bss.ping_sem,"aw",@nobits
	.align	4
	.type	ping_sem, @object
	.size	ping_sem, 4
ping_sem:
	.zero	4
	.section	.bss.ping_time,"aw",@nobits
	.align	4
	.type	ping_time, @object
	.size	ping_time, 8
ping_time:
	.zero	8
	.section	.bss.ping_seq_num,"aw",@nobits
	.align	2
	.type	ping_seq_num, @object
	.size	ping_seq_num, 2
ping_seq_num:
	.zero	2
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip4.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/icmp.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/include/apps/esp_ping.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet_chksum.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 26 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/unistd.h"
	.file 27 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10b3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0xc
	.4byte	.LASF192
	.4byte	.LASF193
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x4
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0xcd
	.uleb128 0x7
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x9
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7a
	.4byte	0x9f
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x11d
	.4byte	0x9f
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.4byte	0x110
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0x12
	.4byte	0xd4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.byte	0x13
	.4byte	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x7
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x8
	.byte	0x58
	.4byte	0xad
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x4f
	.4byte	0x14e
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0xa
	.byte	0x2f
	.4byte	0x159
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xb
	.byte	0x32
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xc
	.byte	0x39
	.4byte	0x110
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x3d
	.4byte	0x1f8
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF41
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF42
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF43
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF44
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF45
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF46
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF47
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF48
	.sleb128 -16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xd
	.byte	0x33
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xd
	.byte	0x34
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xd
	.byte	0x39
	.4byte	0x1f8
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x10
	.byte	0xe
	.byte	0x3a
	.4byte	0x235
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xe
	.byte	0x3b
	.4byte	0x235
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x13c
	.4byte	0x245
	.uleb128 0x7
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xe
	.byte	0x3f
	.4byte	0x21c
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x4
	.4byte	0x30
	.byte	0xf
	.byte	0x36
	.4byte	0x273
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x2e
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0xf
	.byte	0x46
	.4byte	0x292
	.uleb128 0x12
	.string	"ip6"
	.byte	0xf
	.byte	0x47
	.4byte	0x245
	.uleb128 0x12
	.string	"ip4"
	.byte	0xf
	.byte	0x48
	.4byte	0x211
	.byte	0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x14
	.byte	0xf
	.byte	0x45
	.4byte	0x2b7
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xf
	.byte	0x49
	.4byte	0x273
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xf
	.byte	0x4b
	.4byte	0x11b
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xf
	.byte	0x4c
	.4byte	0x292
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x10
	.byte	0x34
	.4byte	0x341
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.4byte	0x30
	.byte	0x11
	.byte	0x70
	.4byte	0x36a
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x4
	.byte	0x12
	.byte	0x35
	.4byte	0x383
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x12
	.byte	0x36
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x12
	.byte	0x3d
	.4byte	0x36a
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x14
	.byte	0x12
	.byte	0x47
	.4byte	0x413
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x12
	.byte	0x49
	.4byte	0x11b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x12
	.byte	0x4b
	.4byte	0x11b
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x12
	.byte	0x4d
	.4byte	0x131
	.byte	0x2
	.uleb128 0x13
	.string	"_id"
	.byte	0x12
	.byte	0x4f
	.4byte	0x131
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x12
	.byte	0x51
	.4byte	0x131
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x12
	.byte	0x57
	.4byte	0x11b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x12
	.byte	0x59
	.4byte	0x11b
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x12
	.byte	0x5b
	.4byte	0x131
	.byte	0xa
	.uleb128 0x13
	.string	"src"
	.byte	0x12
	.byte	0x5d
	.4byte	0x383
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x12
	.byte	0x5e
	.4byte	0x383
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x38e
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x8
	.byte	0x13
	.byte	0x45
	.4byte	0x461
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x13
	.byte	0x46
	.4byte	0x11b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x13
	.byte	0x47
	.4byte	0x11b
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x13
	.byte	0x48
	.4byte	0x131
	.byte	0x2
	.uleb128 0x13
	.string	"id"
	.byte	0x13
	.byte	0x49
	.4byte	0x131
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x13
	.byte	0x4a
	.4byte	0x131
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x14
	.byte	0x37
	.4byte	0x13c
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x4
	.byte	0x14
	.byte	0x3a
	.4byte	0x485
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x14
	.byte	0x3b
	.4byte	0x461
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.byte	0x3a
	.4byte	0x11b
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x2
	.byte	0x3f
	.4byte	0x131
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x4e4
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x2
	.byte	0x45
	.4byte	0x11b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x2
	.byte	0x46
	.4byte	0x485
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x2
	.byte	0x47
	.4byte	0x490
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x2
	.byte	0x48
	.4byte	0x46c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x2
	.byte	0x4a
	.4byte	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x515
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x2
	.byte	0x5a
	.4byte	0x11b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x2
	.byte	0x5b
	.4byte	0x485
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x2
	.byte	0x5c
	.4byte	0x515
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0x525
	.uleb128 0x7
	.4byte	0xa6
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.byte	0x6c
	.4byte	0x13c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x15
	.byte	0x30
	.4byte	0x573
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x32
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x33
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x35
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x36
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x37
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x39
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x15
	.byte	0x3c
	.4byte	0x592
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x24e
	.4byte	0x3e
	.byte	0x3
	.4byte	0x5e9
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x24e
	.4byte	0xcd
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x24e
	.4byte	0x3e
	.uleb128 0x15
	.string	"to"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x5e9
	.uleb128 0x16
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x24e
	.4byte	0x525
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ef
	.uleb128 0x17
	.4byte	0x4e4
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x248
	.4byte	0x3e
	.byte	0x3
	.4byte	0x64c
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x248
	.4byte	0x3e
	.uleb128 0x15
	.string	"mem"
	.byte	0x2
	.2byte	0x248
	.4byte	0xad
	.uleb128 0x15
	.string	"len"
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x248
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x248
	.4byte	0x64c
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x248
	.4byte	0x652
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4e4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x525
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.byte	0x3
	.4byte	0x68e
	.uleb128 0x16
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x250
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.byte	0x3
	.4byte	0x6da
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x23a
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x23a
	.4byte	0xcd
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x2
	.2byte	0x23a
	.4byte	0x525
	.byte	0
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x1
	.byte	0x8c
	.4byte	0x17a
	.byte	0x1
	.4byte	0x742
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x8c
	.4byte	0x3e
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.byte	0x8c
	.4byte	0x742
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x8e
	.4byte	0x3e
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x8f
	.4byte	0x748
	.uleb128 0x1b
	.string	"to"
	.byte	0x1
	.byte	0x90
	.4byte	0x49b
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x1
	.byte	0x91
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x94
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF150
	.4byte	0x75e
	.4byte	.LASF146
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2b7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x419
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0x75e
	.uleb128 0x7
	.4byte	0xa6
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.4byte	0x74e
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0x79a
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x1
	.byte	0x75
	.4byte	0x748
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x75
	.4byte	0x131
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x77
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x1
	.byte	0x78
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	0x80a
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xb6
	.4byte	0x3e
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0xb8
	.4byte	0x80a
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0xb9
	.4byte	0x3e
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x1
	.byte	0xba
	.4byte	0x49b
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x1
	.byte	0xbb
	.4byte	0x413
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0xbc
	.4byte	0x748
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.byte	0xbd
	.4byte	0x3e
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.byte	0xbe
	.4byte	0xeb
	.uleb128 0x1f
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0xc6
	.4byte	0x211
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0x81a
	.uleb128 0x7
	.4byte	0xa6
	.byte	0x3f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF194
	.byte	0x1
	.byte	0xee
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe28
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0xee
	.4byte	0xad
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0x1
	.byte	0xf0
	.4byte	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0x1
	.byte	0xf1
	.4byte	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x1
	.byte	0xf2
	.4byte	0x2b7
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xf3
	.4byte	0x3e
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0xf4
	.4byte	0x3e
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0xf7
	.4byte	0x13c
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x1
	.byte	0xf8
	.4byte	0x13c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.byte	0xf9
	.4byte	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"lev"
	.byte	0x1
	.byte	0xfa
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x108
	.4byte	0xeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x13f
	.4byte	.L2
	.uleb128 0x27
	.4byte	.LASF150
	.4byte	0xe38
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6957
	.uleb128 0x28
	.string	"tos"
	.byte	0x1
	.2byte	0x118
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x13c
	.4byte	.L7
	.uleb128 0x29
	.4byte	0x658
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x10f
	.4byte	0x93d
	.uleb128 0x2a
	.4byte	0x681
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x675
	.byte	0x3
	.uleb128 0x2a
	.4byte	0x669
	.byte	0x2
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xfbc
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x68e
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x113
	.4byte	0x9a9
	.uleb128 0x2e
	.4byte	0x6cd
	.4byte	.LLST3
	.uleb128 0x2e
	.4byte	0x6c1
	.4byte	.LLST4
	.uleb128 0x2e
	.4byte	0x6b5
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	0x6a9
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	0x69f
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0xfc8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1006
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x6da
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb23
	.uleb128 0x2e
	.4byte	0x6f3
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	0x6ea
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x31
	.4byte	0x6fe
	.uleb128 0x32
	.4byte	0x709
	.4byte	.LLST9
	.uleb128 0x33
	.4byte	0x714
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x32
	.4byte	0x71e
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	0x729
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.4byte	0x734
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6922
	.uleb128 0x34
	.4byte	0x763
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xa8
	.4byte	0xa65
	.uleb128 0x2e
	.4byte	0x77a
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	0x76f
	.4byte	.LLST12
	.uleb128 0x35
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x32
	.4byte	0x785
	.4byte	.LLST13
	.uleb128 0x32
	.4byte	0x78e
	.4byte	.LLST14
	.uleb128 0x36
	.4byte	.LVL28
	.4byte	0xfd4
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0xfdf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x592
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xae
	.4byte	0xadd
	.uleb128 0x2e
	.4byte	0x5dc
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	0x5d1
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	0x5c5
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	0x5b9
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	0x5ad
	.4byte	.LLST19
	.uleb128 0x2e
	.4byte	0x5a3
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LVL35
	.4byte	0xfea
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL20
	.4byte	0xff6
	.4byte	0xafd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL24
	.4byte	0x1001
	.4byte	0xb11
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL37
	.4byte	0x100c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x68e
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x11c
	.4byte	0xb8c
	.uleb128 0x2e
	.4byte	0x6cd
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	0x6c1
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	0x6b5
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	0x6a9
	.4byte	.LLST24
	.uleb128 0x2e
	.4byte	0x69f
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LVL14
	.4byte	0xfc8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x79a
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x132
	.4byte	0xcc1
	.uleb128 0x2f
	.4byte	0x7a6
	.uleb128 0x35
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x33
	.4byte	0x7af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.4byte	0x7ba
	.uleb128 0x33
	.4byte	0x7c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.4byte	0x7d0
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	0x7db
	.4byte	.LLST27
	.uleb128 0x33
	.4byte	0x7e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.4byte	0x7f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0xc20
	.uleb128 0x31
	.4byte	0x7fd
	.uleb128 0x38
	.4byte	.LVL43
	.4byte	0x1017
	.4byte	0xc16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL44
	.4byte	0xfd4
	.byte	0
	.uleb128 0x37
	.4byte	0x5f4
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xc0
	.4byte	0xc9b
	.uleb128 0x2e
	.4byte	0x63f
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	0x633
	.4byte	.LLST29
	.uleb128 0x2e
	.4byte	0x627
	.4byte	.LLST30
	.uleb128 0x2e
	.4byte	0x61b
	.4byte	.LLST31
	.uleb128 0x2e
	.4byte	0x60f
	.4byte	.LLST32
	.uleb128 0x2e
	.4byte	0x605
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0x1022
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL49
	.4byte	0x1017
	.4byte	0xcb6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL50
	.4byte	0x102e
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL3
	.4byte	0xff6
	.4byte	0xce1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL4
	.4byte	0xff6
	.4byte	0xd00
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL5
	.4byte	0xff6
	.4byte	0xd1f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL6
	.4byte	0xff6
	.4byte	0xd3f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL12
	.4byte	0xff6
	.4byte	0xd5f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL16
	.4byte	0x1039
	.4byte	0xd76
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x38
	.4byte	.LVL39
	.4byte	0x1017
	.4byte	0xd90
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL51
	.4byte	0x1044
	.uleb128 0x38
	.4byte	.LVL53
	.4byte	0x104f
	.4byte	0xdad
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL54
	.4byte	0x102e
	.4byte	0xdca
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL55
	.4byte	0x105a
	.uleb128 0x38
	.4byte	.LVL57
	.4byte	0x1066
	.4byte	0xde7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL58
	.4byte	0x1071
	.4byte	0xdfb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL59
	.4byte	0x1071
	.uleb128 0x38
	.4byte	.LVL61
	.4byte	0x107d
	.4byte	0xe18
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL62
	.4byte	0x1088
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0xe38
	.uleb128 0x7
	.4byte	0xa6
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.4byte	0xe28
	.uleb128 0x3a
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x3e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf00
	.uleb128 0x3b
	.string	"ret"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x3e
	.4byte	.LLST34
	.uleb128 0x28
	.string	"lev"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LVL63
	.4byte	0x105a
	.uleb128 0x38
	.4byte	.LVL65
	.4byte	0x1071
	.4byte	0xe92
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL66
	.4byte	0x1094
	.4byte	0xea9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_sem
	.byte	0
	.uleb128 0x38
	.4byte	.LVL68
	.4byte	0x1071
	.4byte	0xebd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL71
	.4byte	0x1071
	.4byte	0xed1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL72
	.4byte	0x109f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_thread
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe00
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1d3
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf78
	.uleb128 0x3b
	.string	"lev"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x3e
	.4byte	.LLST35
	.uleb128 0x36
	.4byte	.LVL73
	.4byte	0x105a
	.uleb128 0x36
	.4byte	.LVL74
	.4byte	0x1071
	.uleb128 0x38
	.4byte	.LVL75
	.4byte	0x10ab
	.4byte	0xf51
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL76
	.4byte	0x105a
	.uleb128 0x38
	.4byte	.LVL78
	.4byte	0x1066
	.4byte	0xf6e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL80
	.4byte	0x1071
	.byte	0
	.uleb128 0x22
	.4byte	.LASF165
	.byte	0x1
	.byte	0x66
	.4byte	0x131
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_seq_num
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x67
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_time
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x1
	.byte	0x69
	.4byte	0x164
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_sem
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0x1
	.byte	0x6a
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_init_flag
	.uleb128 0x3d
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x2
	.2byte	0x228
	.uleb128 0x3d
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x3e
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x16
	.byte	0x55
	.uleb128 0x3e
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x17
	.byte	0x4a
	.uleb128 0x3d
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x2
	.2byte	0x226
	.uleb128 0x3e
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x15
	.byte	0x5c
	.uleb128 0x3e
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xb
	.byte	0x5a
	.uleb128 0x3e
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xb
	.byte	0x5c
	.uleb128 0x3e
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x6
	.byte	0x4d
	.uleb128 0x3d
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x2
	.2byte	0x222
	.uleb128 0x3e
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x15
	.byte	0x69
	.uleb128 0x3e
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x18
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x19
	.byte	0xef
	.uleb128 0x3e
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x1a
	.byte	0x1e
	.uleb128 0x3d
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x19
	.2byte	0x19f
	.uleb128 0x3e
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x19
	.byte	0xcc
	.uleb128 0x3d
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x19
	.2byte	0x1a0
	.uleb128 0x3e
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x19
	.byte	0xb5
	.uleb128 0x3d
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x1b
	.2byte	0x2fb
	.uleb128 0x3e
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x19
	.byte	0xaf
	.uleb128 0x3d
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x19
	.2byte	0x15e
	.uleb128 0x3e
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x19
	.byte	0xc6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x17
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-1
	.4byte	.LVL53
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xa
	.2byte	0x1006
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL52
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2138
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x77
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x77
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL34
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x77
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE40
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"_proto"
.LASF57:
	.string	"IPADDR_TYPE_ANY"
.LASF63:
	.string	"MEMP_UDP_PCB"
.LASF73:
	.string	"MEMP_SYS_TIMEOUT"
.LASF42:
	.string	"ERR_ISCONN"
.LASF75:
	.string	"MEMP_ND6_QUEUE"
.LASF2:
	.string	"size_t"
.LASF138:
	.string	"socket"
.LASF35:
	.string	"ERR_TIMEOUT"
.LASF170:
	.string	"lwip_setsockopt_r"
.LASF122:
	.string	"PING_TARGET_ID"
.LASF80:
	.string	"MEMP_MAX"
.LASF5:
	.string	"__uint8_t"
.LASF195:
	.string	"ping_init"
.LASF129:
	.string	"PING_RES_FINISH"
.LASF148:
	.string	"ping_size"
.LASF60:
	.string	"type"
.LASF85:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF12:
	.string	"long long unsigned int"
.LASF102:
	.string	"in_addr_t"
.LASF51:
	.string	"addr"
.LASF143:
	.string	"optname"
.LASF66:
	.string	"MEMP_TCP_SEG"
.LASF117:
	.string	"socklen_t"
.LASF27:
	.string	"QueueHandle_t"
.LASF121:
	.string	"PING_TARGET_DELAY_TIME"
.LASF103:
	.string	"in_addr"
.LASF71:
	.string	"MEMP_ARP_QUEUE"
.LASF29:
	.string	"sys_sem_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF159:
	.string	"ping_count_cur"
.LASF182:
	.string	"close"
.LASF183:
	.string	"sys_arch_protect"
.LASF40:
	.string	"ERR_USE"
.LASF3:
	.string	"__int8_t"
.LASF101:
	.string	"seqno"
.LASF165:
	.string	"ping_seq_num"
.LASF161:
	.string	"ipaddr"
.LASF76:
	.string	"MEMP_IP6_REASSDATA"
.LASF13:
	.string	"long int"
.LASF62:
	.string	"MEMP_RAW_PCB"
.LASF135:
	.string	"recvfrom"
.LASF50:
	.string	"ip4_addr"
.LASF146:
	.string	"ping_send"
.LASF157:
	.string	"ping_delay"
.LASF192:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/apps/ping/ping.c"
.LASF86:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF44:
	.string	"ERR_IF"
.LASF24:
	.string	"uint16_t"
.LASF54:
	.string	"ip6_addr_t"
.LASF166:
	.string	"ping_time"
.LASF163:
	.string	"_exit_new_socket_failed"
.LASF107:
	.string	"sockaddr_in"
.LASF32:
	.string	"ERR_OK"
.LASF190:
	.string	"sys_arch_sem_wait"
.LASF72:
	.string	"MEMP_IGMP_GROUP"
.LASF98:
	.string	"icmp_echo_hdr"
.LASF10:
	.string	"__uint32_t"
.LASF65:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF7:
	.string	"__int16_t"
.LASF112:
	.string	"sin_zero"
.LASF18:
	.string	"suseconds_t"
.LASF176:
	.string	"mem_free"
.LASF0:
	.string	"unsigned int"
.LASF104:
	.string	"s_addr"
.LASF147:
	.string	"iecho"
.LASF181:
	.string	"sys_msleep"
.LASF189:
	.string	"sys_thread_new"
.LASF15:
	.string	"long unsigned int"
.LASF41:
	.string	"ERR_ALREADY"
.LASF162:
	.string	"timeout"
.LASF191:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF96:
	.string	"_chksum"
.LASF64:
	.string	"MEMP_TCP_PCB"
.LASF142:
	.string	"level"
.LASF156:
	.string	"ping_timeout"
.LASF131:
	.string	"size"
.LASF164:
	.string	"_exit"
.LASF111:
	.string	"sin_addr"
.LASF52:
	.string	"ip4_addr_t"
.LASF74:
	.string	"MEMP_NETDB"
.LASF46:
	.string	"ERR_RST"
.LASF55:
	.string	"IPADDR_TYPE_V4"
.LASF133:
	.string	"tolen"
.LASF56:
	.string	"IPADDR_TYPE_V6"
.LASF125:
	.string	"PING_TARGET_DATA_LEN"
.LASF87:
	.string	"ip4_addr_packed"
.LASF8:
	.string	"short int"
.LASF49:
	.string	"timeval"
.LASF173:
	.string	"lwip_sendto_r"
.LASF171:
	.string	"lwip_htons"
.LASF136:
	.string	"from"
.LASF124:
	.string	"PING_TARGET_RES_RESET"
.LASF149:
	.string	"ping_data_len"
.LASF81:
	.string	"lwip_ip_addr_type"
.LASF172:
	.string	"inet_chksum"
.LASF184:
	.string	"sys_sem_free"
.LASF31:
	.string	"err_t"
.LASF114:
	.string	"sa_len"
.LASF109:
	.string	"sin_family"
.LASF61:
	.string	"ip_addr_t"
.LASF120:
	.string	"PING_TARGET_RCV_TIMEO"
.LASF14:
	.string	"sizetype"
.LASF93:
	.string	"_offset"
.LASF94:
	.string	"_ttl"
.LASF77:
	.string	"MEMP_MLD6_GROUP"
.LASF144:
	.string	"opval"
.LASF58:
	.string	"ip_addr"
.LASF116:
	.string	"sa_data"
.LASF108:
	.string	"sin_len"
.LASF97:
	.string	"dest"
.LASF17:
	.string	"time_t"
.LASF37:
	.string	"ERR_INPROGRESS"
.LASF110:
	.string	"sin_port"
.LASF126:
	.string	"PING_TARGET_IP_TOS"
.LASF19:
	.string	"tv_sec"
.LASF179:
	.string	"esp_ping_result"
.LASF38:
	.string	"ERR_VAL"
.LASF140:
	.string	"protocol"
.LASF26:
	.string	"_Bool"
.LASF180:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned char"
.LASF48:
	.string	"ERR_ARG"
.LASF43:
	.string	"ERR_CONN"
.LASF89:
	.string	"ip_hdr"
.LASF158:
	.string	"ping_target"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF88:
	.string	"ip4_addr_p_t"
.LASF188:
	.string	"sys_sem_new"
.LASF115:
	.string	"sa_family"
.LASF185:
	.string	"sys_arch_unprotect"
.LASF150:
	.string	"__func__"
.LASF154:
	.string	"iphdr"
.LASF151:
	.string	"data_len"
.LASF137:
	.string	"fromlen"
.LASF83:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF160:
	.string	"ping_count_max"
.LASF20:
	.string	"tv_usec"
.LASF152:
	.string	"ping_prepare_echo"
.LASF25:
	.string	"uint32_t"
.LASF45:
	.string	"ERR_ABRT"
.LASF118:
	.string	"PING_TARGET_IP_ADDRESS"
.LASF53:
	.string	"ip6_addr"
.LASF69:
	.string	"MEMP_TCPIP_MSG_API"
.LASF169:
	.string	"lwip_socket"
.LASF28:
	.string	"SemaphoreHandle_t"
.LASF16:
	.string	"char"
.LASF130:
	.string	"dataptr"
.LASF134:
	.string	"sendto"
.LASF67:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF33:
	.string	"ERR_MEM"
.LASF187:
	.string	"vTaskDelete"
.LASF193:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF79:
	.string	"MEMP_PBUF_POOL"
.LASF145:
	.string	"optlen"
.LASF127:
	.string	"PING_RES_TIMEOUT"
.LASF1:
	.string	"short unsigned int"
.LASF123:
	.string	"PING_TARGET_RES_FN"
.LASF47:
	.string	"ERR_CLSD"
.LASF36:
	.string	"ERR_RTE"
.LASF186:
	.string	"sys_sem_signal"
.LASF21:
	.string	"int8_t"
.LASF175:
	.string	"mem_malloc"
.LASF119:
	.string	"PING_TARGET_IP_ADDRESS_COUNT"
.LASF105:
	.string	"sa_family_t"
.LASF34:
	.string	"ERR_BUF"
.LASF194:
	.string	"ping_thread"
.LASF30:
	.string	"mem_size_t"
.LASF82:
	.string	"lwip_internal_netif_client_data_index"
.LASF59:
	.string	"u_addr"
.LASF91:
	.string	"_tos"
.LASF68:
	.string	"MEMP_NETCONN"
.LASF113:
	.string	"sockaddr"
.LASF128:
	.string	"PING_RES_OK"
.LASF141:
	.string	"setsockopt"
.LASF90:
	.string	"_v_hl"
.LASF22:
	.string	"uint8_t"
.LASF153:
	.string	"ping_recv"
.LASF99:
	.string	"code"
.LASF132:
	.string	"flags"
.LASF177:
	.string	"gettimeofday"
.LASF139:
	.string	"domain"
.LASF178:
	.string	"lwip_recvfrom_r"
.LASF39:
	.string	"ERR_WOULDBLOCK"
.LASF155:
	.string	"fromaddr"
.LASF100:
	.string	"chksum"
.LASF168:
	.string	"ping_init_flag"
.LASF167:
	.string	"ping_sem"
.LASF196:
	.string	"ping_deinit"
.LASF174:
	.string	"esp_ping_get_target"
.LASF23:
	.string	"int16_t"
.LASF78:
	.string	"MEMP_PBUF"
.LASF106:
	.string	"in_port_t"
.LASF70:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF92:
	.string	"_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
