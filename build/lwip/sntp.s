	.file	"sntp.c"
	.text
.Ltext0:
	.section	.text.sntp_retry,"ax",@progbits
	.literal_position
	.literal .LC0, sntp_request
	.literal .LC1, sntp_retry_timeout
	.literal .LC2, 30000
	.align	4
	.type	sntp_retry, @function
sntp_retry:
.LFB20:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/apps/sntp/sntp.c"
	.loc 1 266 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 273 0
	l32r	a2, .LC1
.LVL1:
	l32r	a11, .LC0
	l32i.n	a10, a2, 0
	movi.n	a12, 0
	call8	sys_timeout
.LVL2:
.LBB3:
	.loc 1 279 0
	l32i.n	a9, a2, 0
	slli	a8, a9, 1
.LVL3:
	.loc 1 281 0
	bgeu	a9, a8, .L1
	l32r	a9, .LC2
	bltu	a9, a8, .L1
	.loc 1 283 0
	s32i.n	a8, a2, 0
.L1:
	retw.n
.LBE3:
.LFE20:
	.size	sntp_retry, .-sntp_retry
	.section	.text.sntp_recv,"ax",@progbits
	.literal_position
	.literal .LC3, sntp_retry
	.literal .LC4, sntp_request
	.literal .LC5, sntp_opmode
	.literal .LC6, 2085978496
	.literal .LC7, 1023992203
	.literal .LC8, sntp_retry_timeout
	.literal .LC9, 3000
	.literal .LC10, 3600000
	.align	4
	.type	sntp_recv, @function
sntp_recv:
.LFB21:
	.loc 1 336 0
.LVL4:
	entry	sp, 64
.LCFI1:
	.loc 1 346 0
	l32r	a10, .LC3
	movi.n	a11, 0
	call8	sys_untimeout
.LVL5:
	.loc 1 347 0
	l32r	a3, .LC4
.LVL6:
	movi.n	a11, 0
	mov.n	a10, a3
	call8	sys_untimeout
.LVL7:
	.loc 1 360 0
	l16ui	a8, a4, 8
	movi.n	a5, 0x30
.LVL8:
	.loc 1 349 0
	movi	a2, 0xf0
.LVL9:
	.loc 1 360 0
	bne	a8, a5, .L12
	.loc 1 361 0
	movi.n	a13, 0
	movi.n	a12, 1
	addi	a11, sp, 17
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL10:
	.loc 1 362 0
	l8ui	a2, sp, 17
	.loc 1 364 0
	l32r	a5, .LC5
	.loc 1 362 0
	extui	a2, a2, 0, 3
	.loc 1 364 0
	l8ui	a8, a5, 0
	.loc 1 362 0
	s8i	a2, sp, 17
	.loc 1 364 0
	bnez.n	a8, .L13
	.loc 1 364 0 is_stmt 0 discriminator 1
	beqi	a2, 4, .L14
	j	.L20
.L13:
	.loc 1 365 0 is_stmt 1
	bnei	a2, 5, .L20
	bnei	a8, 1, .L20
.L14:
	.loc 1 366 0
	movi.n	a13, 1
	mov.n	a12, a13
	addi	a11, sp, 16
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL11:
	.loc 1 367 0
	l8ui	a5, sp, 16
	.loc 1 369 0
	movi.n	a2, 1
	.loc 1 367 0
	beqz.n	a5, .L12
.LVL12:
	.loc 1 386 0
	movi.n	a12, 8
	movi.n	a13, 0x28
	add.n	a11, sp, a12
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL13:
	.loc 1 385 0
	movi.n	a2, 0
	j	.L12
.LVL14:
.L20:
	.loc 1 392 0
	movi	a2, 0xfd
.LVL15:
.L12:
	.loc 1 404 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL16:
	.loc 1 405 0
	bnez.n	a2, .L15
.LVL17:
.LBB7:
.LBB8:
	.loc 1 215 0
	l32i.n	a10, sp, 8
	call8	lwip_htonl
.LVL18:
	mov.n	a5, a10
.LVL19:
	.loc 1 221 0
	l32i.n	a10, sp, 12
	call8	lwip_htonl
.LVL20:
.LBB9:
	.loc 1 222 0
	l32r	a8, .LC7
	l32r	a4, .LC6
.LVL21:
	muluh	a8, a10, a8
	add.n	a4, a5, a4
.LVL22:
	srli	a8, a8, 10
	mov.n	a11, a2
	mov.n	a10, sp
.LVL23:
	s32i.n	a4, sp, 0
	s32i.n	a8, sp, 4
	call8	settimeofday
.LVL24:
.LBE9:
.LBE8:
.LBE7:
	.loc 1 409 0
	l32r	a4, .LC5
.LVL25:
	l8ui	a4, a4, 0
	bnez.n	a4, .L11
	.loc 1 411 0
	l32r	a8, .LC9
	l32r	a4, .LC8
	.loc 1 413 0
	l32r	a10, .LC10
	mov.n	a12, a2
	mov.n	a11, a3
	.loc 1 411 0
	s32i.n	a8, a4, 0
	.loc 1 413 0
	call8	sys_timeout
.LVL26:
	retw.n
.LVL27:
.L15:
	.loc 1 417 0
	sext	a2, a2, 7
	movi.n	a3, -3
	beq	a2, a3, .L11
	.loc 1 419 0
	l32r	a2, .LC5
	l8ui	a10, a2, 0
	bnez.n	a10, .L11
	.loc 1 422 0
	call8	sntp_retry
.LVL28:
.L11:
	retw.n
.LFE21:
	.size	sntp_recv, .-sntp_recv
	.section	.text.sntp_send_request,"ax",@progbits
	.literal_position
	.literal .LC11, sntp_pcb
	.literal .LC12, sntp_retry
	.literal .LC13, 3000
	.literal .LC14, sntp_request
	.align	4
	.type	sntp_send_request, @function
sntp_send_request:
.LFB22:
	.loc 1 437 0
.LVL29:
	entry	sp, 32
.LCFI2:
	.loc 1 439 0
	movi.n	a12, 0
	movi.n	a11, 0x30
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL30:
	mov.n	a3, a10
.LVL31:
.LBB16:
.LBB17:
	.loc 1 459 0
	mov.n	a12, a10
	l32r	a11, .LC14
.LBE17:
.LBE16:
	.loc 1 440 0
	beqz.n	a10, .L35
.LBB19:
	.loc 1 441 0
	l32i.n	a4, a10, 4
.LVL32:
.LBB20:
.LBB21:
	.loc 1 242 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL33:
	.loc 1 243 0
	movi.n	a8, 0x23
	s8i	a8, a4, 0
.LBE21:
.LBE20:
	.loc 1 446 0
	l32r	a4, .LC11
.LVL34:
	mov.n	a12, a2
	l32i.n	a10, a4, 0
	mov.n	a11, a3
	movi	a13, 0x7b
	call8	udp_sendto
.LVL35:
	.loc 1 448 0
	mov.n	a10, a3
	call8	pbuf_free
.LVL36:
	.loc 1 450 0
	movi.n	a12, 0
	l32r	a11, .LC12
	j	.L35
.L35:
.LBE19:
.LBB22:
.LBB18:
	.loc 1 459 0
	l32r	a10, .LC13
	call8	sys_timeout
.LVL37:
	retw.n
.LBE18:
.LBE22:
.LFE22:
	.size	sntp_send_request, .-sntp_send_request
	.section	.text.sntp_request,"ax",@progbits
	.literal_position
	.literal .LC15, sntp_servers
	.literal .LC16, sntp_dns_found
	.literal .LC17, sntp_retry
	.literal .LC18, 3000
	.align	4
	.type	sntp_request, @function
sntp_request:
.LFB24:
	.loc 1 492 0
.LVL38:
	entry	sp, 64
.LCFI3:
	.loc 1 500 0
	l32r	a3, .LC15
	l32i.n	a2, a3, 0
.LVL39:
	beqz.n	a2, .L37
	.loc 1 502 0
	movi.n	a13, 0
	.loc 1 503 0
	l32r	a12, .LC16
	mov.n	a10, a2
	.loc 1 502 0
	s32i.n	a13, a3, 4
	s32i.n	a13, a3, 8
	s32i.n	a13, a3, 12
	s32i.n	a13, a3, 16
	.loc 1 502 0
	s8i	a13, a3, 20
	.loc 1 503 0
	mov.n	a11, sp
	call8	dns_gethostbyname
.LVL40:
	extui	a10, a10, 0, 8
.LVL41:
	.loc 1 505 0
	sext	a8, a10, 7
	movi.n	a2, -5
	beq	a8, a2, .L36
	.loc 1 509 0
	bnez.n	a10, .L39
	.loc 1 510 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	addi.n	a10, a3, 4
.LVL42:
	call8	memcpy
.LVL43:
	j	.L40
.L37:
	.loc 1 515 0
	addi.n	a11, a3, 4
	movi.n	a12, 0x14
	mov.n	a10, sp
	call8	memcpy
.LVL44:
	.loc 1 516 0
	l8ui	a3, sp, 16
	bnei	a3, 6, .L41
	.loc 1 516 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 0
	bnez.n	a3, .L42
	.loc 1 516 0 discriminator 3
	l32i.n	a3, sp, 4
	bnez.n	a3, .L42
	.loc 1 516 0 discriminator 5
	l32i.n	a3, sp, 8
	bnez.n	a3, .L42
	.loc 1 516 0 discriminator 7
	l32i.n	a8, sp, 12
	movi.n	a3, 1
	moveqz	a2, a3, a8
.L42:
	.loc 1 516 0 discriminator 12
	extui	a2, a2, 0, 1
	j	.L43
.L41:
	.loc 1 516 0 discriminator 2
	l32i.n	a3, sp, 0
	movi.n	a8, 1
	moveqz	a2, a8, a3
	extui	a2, a2, 0, 8
.L43:
	.loc 1 516 0 discriminator 14
	bnez.n	a2, .L39
.L40:
.LVL45:
	.loc 1 522 0 is_stmt 1
	mov.n	a10, sp
	call8	sntp_send_request
.LVL46:
	retw.n
.LVL47:
.L39:
	.loc 1 526 0
	l32r	a11, .LC17
	l32r	a10, .LC18
	movi.n	a12, 0
	call8	sys_timeout
.LVL48:
.L36:
	retw.n
.LFE24:
	.size	sntp_request, .-sntp_request
	.section	.text.sntp_dns_found,"ax",@progbits
	.align	4
	.type	sntp_dns_found, @function
sntp_dns_found:
.LFB23:
	.loc 1 469 0
.LVL49:
	entry	sp, 32
.LCFI4:
	.loc 1 469 0
	mov.n	a10, a3
	.loc 1 473 0
	beqz.n	a3, .L50
	.loc 1 476 0
	call8	sntp_send_request
.LVL50:
	retw.n
.L50:
	.loc 1 480 0
	call8	sntp_retry
.LVL51:
	retw.n
.LFE23:
	.size	sntp_dns_found, .-sntp_dns_found
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC20:
	.string	"Failed to allocate udp pcb for sntp client"
.LC23:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/apps/sntp/sntp.c"
	.section	.text.sntp_init,"ax",@progbits
	.literal_position
	.literal .LC19, sntp_pcb
	.literal .LC21, .LC20
	.literal .LC22, __func__$6721
	.literal .LC24, .LC23
	.literal .LC25, sntp_recv
	.literal .LC26, sntp_opmode
	.literal .LC27, sntp_retry_timeout
	.literal .LC28, 3000
	.literal .LC29, ip_addr_any_type
	.align	4
	.global	sntp_init
	.type	sntp_init, @function
sntp_init:
.LFB25:
	.loc 1 537 0
	entry	sp, 32
.LCFI5:
	.loc 1 546 0
	l32r	a2, .LC19
	l32i.n	a3, a2, 0
	bnez.n	a3, .L52
	.loc 1 547 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL52:
	s32i.n	a10, a2, 0
	.loc 1 548 0
	bnez.n	a10, .L55
	.loc 1 548 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	l32r	a10, .LC24
	movi	a11, 0x224
	call8	__assert_func
.LVL53:
.L55:
	.loc 1 550 0
	l32r	a11, .LC25
	mov.n	a12, a3
	call8	udp_recv
.LVL54:
	.loc 1 552 0
	l32r	a3, .LC26
	l8ui	a10, a3, 0
	bnez.n	a10, .L56
	.loc 1 553 0
	l32r	a3, .LC28
	l32r	a2, .LC27
	s32i.n	a3, a2, 0
	.loc 1 557 0
	call8	sntp_request
.LVL55:
	retw.n
.L56:
	.loc 1 559 0
	bnei	a10, 1, .L52
	.loc 1 560 0
	l32i.n	a10, a2, 0
	movi.n	a8, 0x20
	l8ui	a2, a10, 40
	.loc 1 561 0
	l32r	a11, .LC29
	.loc 1 560 0
	or	a8, a2, a8
	s8i	a8, a10, 40
	.loc 1 561 0
	movi	a12, 0x7b
	call8	udp_bind
.LVL56:
.L52:
	retw.n
.LFE25:
	.size	sntp_init, .-sntp_init
	.section	.text.sntp_stop,"ax",@progbits
	.literal_position
	.literal .LC30, sntp_pcb
	.literal .LC31, sntp_request
	.literal .LC32, sntp_retry
	.align	4
	.global	sntp_stop
	.type	sntp_stop, @function
sntp_stop:
.LFB26:
	.loc 1 573 0
	entry	sp, 32
.LCFI6:
	.loc 1 574 0
	l32r	a2, .LC30
	l32i.n	a8, a2, 0
	beqz.n	a8, .L58
	.loc 1 575 0
	l32r	a10, .LC31
	movi.n	a11, 0
	call8	sys_untimeout
.LVL57:
	.loc 1 576 0
	l32r	a10, .LC32
	movi.n	a11, 0
	call8	sys_untimeout
.LVL58:
	.loc 1 577 0
	l32i.n	a10, a2, 0
	call8	udp_remove
.LVL59:
	.loc 1 578 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L58:
	retw.n
.LFE26:
	.size	sntp_stop, .-sntp_stop
	.section	.text.sntp_enabled,"ax",@progbits
	.literal_position
	.literal .LC33, sntp_pcb
	.align	4
	.global	sntp_enabled
	.type	sntp_enabled, @function
sntp_enabled:
.LFB27:
	.loc 1 587 0
	entry	sp, 32
.LCFI7:
	.loc 1 588 0
	l32r	a2, .LC33
	.loc 1 588 0
	movi.n	a9, 1
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movnez	a2, a9, a8
	.loc 1 589 0
	retw.n
.LFE27:
	.size	sntp_enabled, .-sntp_enabled
	.section	.rodata.str1.1
.LC34:
	.string	"Invalid operating mode"
.LC39:
	.string	"Operating mode must not be set while SNTP client is running"
	.section	.text.sntp_setoperatingmode,"ax",@progbits
	.literal_position
	.literal .LC35, .LC34
	.literal .LC36, __func__$6731
	.literal .LC37, .LC23
	.literal .LC38, sntp_pcb
	.literal .LC40, .LC39
	.literal .LC41, sntp_opmode
	.align	4
	.global	sntp_setoperatingmode
	.type	sntp_setoperatingmode, @function
sntp_setoperatingmode:
.LFB28:
	.loc 1 598 0
.LVL60:
	entry	sp, 32
.LCFI8:
	.loc 1 598 0
	extui	a2, a2, 0, 8
	.loc 1 599 0
	bltui	a2, 2, .L65
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	movi	a11, 0x257
	j	.L67
.L65:
	.loc 1 600 0 is_stmt 1
	l32r	a8, .LC38
	l32i.n	a8, a8, 0
	beqz.n	a8, .L66
	.loc 1 600 0 discriminator 1
	l32r	a13, .LC40
	l32r	a12, .LC36
	movi	a11, 0x258
.L67:
	l32r	a10, .LC37
	call8	__assert_func
.LVL61:
.L66:
	.loc 1 601 0
	l32r	a8, .LC41
	s8i	a2, a8, 0
	retw.n
.LFE28:
	.size	sntp_setoperatingmode, .-sntp_setoperatingmode
	.section	.text.sntp_getoperatingmode,"ax",@progbits
	.literal_position
	.literal .LC42, sntp_opmode
	.align	4
	.global	sntp_getoperatingmode
	.type	sntp_getoperatingmode, @function
sntp_getoperatingmode:
.LFB29:
	.loc 1 610 0
	entry	sp, 32
.LCFI9:
	.loc 1 612 0
	l32r	a8, .LC42
	l8ui	a2, a8, 0
	retw.n
.LFE29:
	.size	sntp_getoperatingmode, .-sntp_getoperatingmode
	.section	.text.sntp_setserver,"ax",@progbits
	.literal_position
	.literal .LC43, sntp_servers
	.align	4
	.global	sntp_setserver
	.type	sntp_setserver, @function
sntp_setserver:
.LFB30:
	.loc 1 638 0
.LVL62:
	entry	sp, 32
.LCFI10:
	.loc 1 638 0
	extui	a2, a2, 0, 8
	mov.n	a11, a3
	.loc 1 639 0
	bnez.n	a2, .L69
	l32r	a2, .LC43
.LVL63:
	.loc 1 640 0
	beqz.n	a3, .L71
	.loc 1 641 0
	movi.n	a12, 0x14
	addi.n	a10, a2, 4
	call8	memcpy
.LVL64:
	j	.L72
.L71:
	.loc 1 643 0
	s32i.n	a3, a2, 4
	s32i.n	a3, a2, 8
	s32i.n	a3, a2, 12
	s32i.n	a3, a2, 16
	.loc 1 643 0
	s8i	a3, a2, 20
.L72:
	.loc 1 646 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L69:
	retw.n
.LFE30:
	.size	sntp_setserver, .-sntp_setserver
	.section	.text.sntp_getserver,"ax",@progbits
	.literal_position
	.literal .LC44, sntp_servers+4
	.literal .LC45, ip_addr_any
	.align	4
	.global	sntp_getserver
	.type	sntp_getserver, @function
sntp_getserver:
.LFB31:
	.loc 1 688 0
.LVL65:
	entry	sp, 32
.LCFI11:
	.loc 1 693 0
	l32r	a8, .LC45
	l32r	a9, .LC44
	.loc 1 688 0
	extui	a2, a2, 0, 8
	.loc 1 693 0
	moveqz	a8, a9, a2
	mov.n	a2, a8
.LVL66:
	retw.n
.LFE31:
	.size	sntp_getserver, .-sntp_getserver
	.section	.text.sntp_setservername,"ax",@progbits
	.literal_position
	.literal .LC46, sntp_servers
	.align	4
	.global	sntp_setservername
	.type	sntp_setservername, @function
sntp_setservername:
.LFB32:
	.loc 1 704 0
.LVL67:
	entry	sp, 32
.LCFI12:
	.loc 1 704 0
	extui	a2, a2, 0, 8
	.loc 1 705 0
	bnez.n	a2, .L76
	.loc 1 706 0
	l32r	a8, .LC46
	s32i.n	a3, a8, 0
.L76:
	retw.n
.LFE32:
	.size	sntp_setservername, .-sntp_setservername
	.section	.text.sntp_getservername,"ax",@progbits
	.literal_position
	.literal .LC47, sntp_servers
	.align	4
	.global	sntp_getservername
	.type	sntp_getservername, @function
sntp_getservername:
.LFB33:
	.loc 1 719 0
.LVL68:
	entry	sp, 32
.LCFI13:
	.loc 1 719 0
	extui	a8, a2, 0, 8
	.loc 1 723 0
	movi.n	a2, 0
.LVL69:
	.loc 1 720 0
	bne	a8, a2, .L79
	.loc 1 721 0
	l32r	a2, .LC47
	l32i.n	a2, a2, 0
.L79:
	.loc 1 724 0
	retw.n
.LFE33:
	.size	sntp_getservername, .-sntp_getservername
	.section	.rodata.__func__$6731,"a",@progbits
	.type	__func__$6731, @object
	.size	__func__$6731, 22
__func__$6731:
	.string	"sntp_setoperatingmode"
	.section	.rodata.__func__$6721,"a",@progbits
	.type	__func__$6721, @object
	.size	__func__$6721, 10
__func__$6721:
	.string	"sntp_init"
	.section	.bss.sntp_retry_timeout,"aw",@nobits
	.align	4
	.type	sntp_retry_timeout, @object
	.size	sntp_retry_timeout, 4
sntp_retry_timeout:
	.zero	4
	.section	.bss.sntp_servers,"aw",@nobits
	.align	4
	.type	sntp_servers, @object
	.size	sntp_servers, 24
sntp_servers:
	.zero	24
	.section	.bss.sntp_pcb,"aw",@nobits
	.align	4
	.type	sntp_pcb, @object
	.size	sntp_pcb, 4
sntp_pcb:
	.zero	4
	.section	.bss.sntp_opmode,"aw",@nobits
	.type	sntp_opmode, @object
	.size	sntp_opmode, 1
sntp_opmode:
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
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
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI13-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/timeouts.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/dns.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0xc
	.4byte	.LASF208
	.4byte	.LASF209
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4
	.byte	0x11
	.4byte	0x106
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x12
	.4byte	0xca
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x13
	.4byte	0xd5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x143
	.uleb128 0xc
	.4byte	0x14e
	.uleb128 0xd
	.4byte	0xa2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0xe
	.4byte	0xa2
	.4byte	0x165
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x17e
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x34
	.4byte	0x132
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.4byte	0x165
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x1a2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3b
	.4byte	0x1a2
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x132
	.4byte	0x1b2
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3f
	.4byte	0x189
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x36
	.4byte	0x1e0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x2e
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x46
	.4byte	0x1ff
	.uleb128 0x13
	.string	"ip6"
	.byte	0x8
	.byte	0x47
	.4byte	0x1b2
	.uleb128 0x13
	.string	"ip4"
	.byte	0x8
	.byte	0x48
	.4byte	0x17e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x14
	.byte	0x8
	.byte	0x45
	.4byte	0x224
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x49
	.4byte	0x1e0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4b
	.4byte	0x111
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4c
	.4byte	0x1ff
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x9
	.byte	0x39
	.4byte	0x106
	.uleb128 0x14
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x3d
	.4byte	0x2ad
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.sleb128 -1
	.uleb128 0x15
	.4byte	.LASF42
	.sleb128 -2
	.uleb128 0x15
	.4byte	.LASF43
	.sleb128 -3
	.uleb128 0x15
	.4byte	.LASF44
	.sleb128 -4
	.uleb128 0x15
	.4byte	.LASF45
	.sleb128 -5
	.uleb128 0x15
	.4byte	.LASF46
	.sleb128 -6
	.uleb128 0x15
	.4byte	.LASF47
	.sleb128 -7
	.uleb128 0x15
	.4byte	.LASF48
	.sleb128 -8
	.uleb128 0x15
	.4byte	.LASF49
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF50
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF51
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF52
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF53
	.sleb128 -13
	.uleb128 0x15
	.4byte	.LASF54
	.sleb128 -14
	.uleb128 0x15
	.4byte	.LASF55
	.sleb128 -15
	.uleb128 0x15
	.4byte	.LASF56
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x48
	.4byte	0x2d8
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x65
	.4byte	0x2fd
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x18
	.byte	0xa
	.byte	0x8e
	.4byte	0x376
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xa
	.byte	0x90
	.4byte	0x376
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xa
	.byte	0x93
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xa
	.byte	0x9c
	.4byte	0x127
	.byte	0x8
	.uleb128 0x16
	.string	"len"
	.byte	0xa
	.byte	0x9f
	.4byte	0x127
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xa
	.byte	0xa2
	.4byte	0x111
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xa
	.byte	0xa5
	.4byte	0x111
	.byte	0xd
	.uleb128 0x16
	.string	"ref"
	.byte	0xa
	.byte	0xac
	.4byte	0x127
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xa
	.byte	0xaf
	.4byte	0x514
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xa
	.byte	0xb0
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2fd
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xf0
	.byte	0xb
	.byte	0xeb
	.4byte	0x514
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xb
	.byte	0xed
	.4byte	0x514
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xb
	.byte	0xf1
	.4byte	0x224
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0xb
	.byte	0xf2
	.4byte	0x224
	.byte	0x18
	.uleb128 0x16
	.string	"gw"
	.byte	0xb
	.byte	0xf3
	.4byte	0x224
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xb
	.byte	0xf7
	.4byte	0x6f2
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xb
	.byte	0xfa
	.4byte	0x702
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xb
	.byte	0xfc
	.4byte	0x722
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x102
	.4byte	0x5df
	.byte	0x84
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x108
	.4byte	0x604
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x10d
	.4byte	0x66e
	.byte	0x8c
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0xb
	.2byte	0x113
	.4byte	0x639
	.byte	0x90
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0xb
	.2byte	0x125
	.4byte	0xa2
	.byte	0x94
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x127
	.4byte	0x155
	.byte	0x98
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x12b
	.4byte	0x7d1
	.byte	0xa4
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0xb
	.2byte	0x12c
	.4byte	0x6e7
	.byte	0xa8
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x131
	.4byte	0x111
	.byte	0xac
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x135
	.4byte	0x111
	.byte	0xad
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x139
	.4byte	0xbf
	.byte	0xb0
	.uleb128 0x18
	.string	"mtu"
	.byte	0xb
	.2byte	0x13f
	.4byte	0x127
	.byte	0xb4
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x141
	.4byte	0x111
	.byte	0xb6
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x143
	.4byte	0x7d7
	.byte	0xb7
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0xb
	.2byte	0x145
	.4byte	0x111
	.byte	0xbd
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x147
	.4byte	0x7e7
	.byte	0xbe
	.uleb128 0x18
	.string	"num"
	.byte	0xb
	.2byte	0x149
	.4byte	0x111
	.byte	0xc0
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x157
	.4byte	0x693
	.byte	0xc4
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x15c
	.4byte	0x6bd
	.byte	0xc8
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x163
	.4byte	0x376
	.byte	0xcc
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x164
	.4byte	0x376
	.byte	0xd0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x166
	.4byte	0x127
	.byte	0xd4
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x16b
	.4byte	0x13d
	.byte	0xd8
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x16c
	.4byte	0x224
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37c
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x34
	.4byte	0x599
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x70
	.4byte	0x5c2
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x94
	.4byte	0x5df
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0xb
	.byte	0xa7
	.4byte	0x5ea
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x604
	.uleb128 0xd
	.4byte	0x376
	.uleb128 0xd
	.4byte	0x514
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0xb
	.byte	0xb2
	.4byte	0x60f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x615
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x62e
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x376
	.uleb128 0xd
	.4byte	0x62e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x634
	.uleb128 0x8
	.4byte	0x17e
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xb
	.byte	0xbf
	.4byte	0x644
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64a
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x663
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x376
	.uleb128 0xd
	.4byte	0x663
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x669
	.uleb128 0x8
	.4byte	0x1b2
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0xb
	.byte	0xc9
	.4byte	0x679
	.uleb128 0x6
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x693
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x376
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0xb
	.byte	0xce
	.4byte	0x69e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a4
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x6bd
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x62e
	.uleb128 0xd
	.4byte	0x5c2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0xb
	.byte	0xd3
	.4byte	0x6c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ce
	.uleb128 0x19
	.4byte	0x22f
	.4byte	0x6e7
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x663
	.uleb128 0xd
	.4byte	0x5c2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0xb
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xe
	.4byte	0x224
	.4byte	0x702
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x111
	.4byte	0x712
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x722
	.uleb128 0xd
	.4byte	0x514
	.uleb128 0xd
	.4byte	0x111
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x712
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x58
	.byte	0xd
	.byte	0x51
	.4byte	0x7d1
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xd
	.byte	0x53
	.4byte	0x224
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xd
	.byte	0x53
	.4byte	0x224
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xd
	.byte	0x53
	.4byte	0x111
	.byte	0x28
	.uleb128 0x16
	.string	"tos"
	.byte	0xd
	.byte	0x53
	.4byte	0x111
	.byte	0x29
	.uleb128 0x16
	.string	"ttl"
	.byte	0xd
	.byte	0x53
	.4byte	0x111
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xd
	.byte	0x57
	.4byte	0x7d1
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xd
	.byte	0x59
	.4byte	0x111
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xd
	.byte	0x5b
	.4byte	0x127
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xd
	.byte	0x5b
	.4byte	0x127
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xd
	.byte	0x5f
	.4byte	0x224
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xd
	.byte	0x61
	.4byte	0x111
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xd
	.byte	0x6a
	.4byte	0x7f7
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xd
	.byte	0x6c
	.4byte	0xa2
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x728
	.uleb128 0xe
	.4byte	0x111
	.4byte	0x7e7
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0x7f7
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0xd
	.byte	0x4d
	.4byte	0x802
	.uleb128 0x6
	.byte	0x4
	.4byte	0x808
	.uleb128 0xc
	.4byte	0x827
	.uleb128 0xd
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0x7d1
	.uleb128 0xd
	.4byte	0x376
	.uleb128 0xd
	.4byte	0x827
	.uleb128 0xd
	.4byte	0x127
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82d
	.uleb128 0x8
	.4byte	0x224
	.uleb128 0xa
	.4byte	.LASF144
	.byte	0x30
	.byte	0x1
	.byte	0x8d
	.4byte	0x8c3
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x1
	.byte	0x8e
	.4byte	0x111
	.byte	0
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x1
	.byte	0x8f
	.4byte	0x111
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x1
	.byte	0x90
	.4byte	0x111
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x1
	.byte	0x91
	.4byte	0x111
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x1
	.byte	0x92
	.4byte	0x132
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x1
	.byte	0x93
	.4byte	0x132
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x1
	.byte	0x94
	.4byte	0x132
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x1
	.byte	0x95
	.4byte	0x8c3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x1
	.byte	0x96
	.4byte	0x8c3
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x1
	.byte	0x97
	.4byte	0x8c3
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x1
	.byte	0x98
	.4byte	0x8c3
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.4byte	0x132
	.4byte	0x8d3
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x18
	.byte	0x1
	.byte	0xa8
	.4byte	0x8f8
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1
	.byte	0xaa
	.4byte	0xb2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0xac
	.4byte	0x224
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1b4
	.byte	0x1
	.4byte	0x92a
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x827
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x376
	.uleb128 0x1d
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x92a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x832
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x109
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.2byte	0x109
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x972
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x115
	.4byte	0x132
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0x1113
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	0x9e3
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.byte	0xd2
	.4byte	0x9e3
	.uleb128 0x27
	.4byte	.LASF161
	.byte	0x1
	.byte	0xd7
	.4byte	0x132
	.uleb128 0x27
	.4byte	.LASF162
	.byte	0x1
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.byte	0xd9
	.4byte	0x132
	.uleb128 0x28
	.string	"tim"
	.byte	0x1
	.byte	0xda
	.4byte	0xca
	.uleb128 0x28
	.string	"us"
	.byte	0x1
	.byte	0xdd
	.4byte	0x132
	.uleb128 0x1d
	.uleb128 0x28
	.string	"tv"
	.byte	0x1
	.byte	0xde
	.4byte	0xe1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x132
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x14f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfe
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.2byte	0x14f
	.4byte	0xa2
	.4byte	.LLST1
	.uleb128 0x20
	.string	"pcb"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x7d1
	.4byte	.LLST2
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x376
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x14f
	.4byte	0x827
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x14f
	.4byte	0x127
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x151
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x152
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x153
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x154
	.4byte	0x22f
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	0x98b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.2byte	0x196
	.4byte	0xb1b
	.uleb128 0x2d
	.4byte	0x997
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2f
	.4byte	0x9a2
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	0x9ad
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	0x9b8
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	0x9c1
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	0x9cc
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xb07
	.uleb128 0x30
	.4byte	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x111e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x1129
	.uleb128 0x31
	.4byte	.LVL20
	.4byte	0x1129
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL5
	.4byte	0x1134
	.4byte	0xb37
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL7
	.4byte	0x1134
	.4byte	0xb50
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL10
	.4byte	0x113f
	.4byte	0xb74
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL11
	.4byte	0x113f
	.4byte	0xb98
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL13
	.4byte	0x113f
	.4byte	0xbbd
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x32
	.4byte	.LVL16
	.4byte	0x114a
	.4byte	0xbd1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL26
	.4byte	0x1113
	.4byte	0xbf4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x36ee80
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL28
	.4byte	0x930
	.byte	0
	.uleb128 0x25
	.4byte	.LASF168
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0xc16
	.uleb128 0x33
	.string	"req"
	.byte	0x1
	.byte	0xf0
	.4byte	0x92a
	.byte	0
	.uleb128 0x34
	.4byte	0x8f8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfd
	.uleb128 0x35
	.4byte	0x905
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	0x911
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc62
	.uleb128 0x37
	.4byte	0x905
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x39
	.4byte	0x911
	.uleb128 0x23
	.4byte	.LVL37
	.4byte	0x1113
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0xce2
	.uleb128 0x2f
	.4byte	0x91c
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	0xbfe
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xcb1
	.uleb128 0x2d
	.4byte	0xc0a
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0x1155
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL35
	.4byte	0x115e
	.4byte	0xcd1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0x114a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL30
	.4byte	0x1169
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1eb
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0xa2
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x224
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x22f
	.4byte	.LLST15
	.uleb128 0x32
	.4byte	.LVL40
	.4byte	0x1174
	.4byte	0xd6a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_dns_found
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL43
	.4byte	0x117f
	.4byte	0xd89
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x32
	.4byte	.LVL44
	.4byte	0x117f
	.4byte	0xda8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x32
	.4byte	.LVL46
	.4byte	0x8f8
	.4byte	0xdbc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0x1113
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1d4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3a
	.uleb128 0x2a
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xbf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x827
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LVL50
	.4byte	0x8f8
	.4byte	0xe30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL51
	.4byte	0x930
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x218
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeda
	.uleb128 0x3c
	.4byte	.LASF173
	.4byte	0xeea
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6721
	.uleb128 0x32
	.4byte	.LVL52
	.4byte	0x1188
	.4byte	0xe73
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x32
	.4byte	.LVL53
	.4byte	0x1193
	.4byte	0xea3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x224
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6721
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x32
	.4byte	.LVL54
	.4byte	0x119e
	.4byte	0xec0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_recv
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL55
	.4byte	0xcfd
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x11a9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0xeea
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0xeda
	.uleb128 0x3b
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x23c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf47
	.uleb128 0x32
	.4byte	.LVL57
	.4byte	0x1134
	.4byte	0xf21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL58
	.4byte	0x1134
	.4byte	0xf3d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL59
	.4byte	0x11b4
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x24a
	.4byte	0x111
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x255
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa4
	.uleb128 0x2a
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x255
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3c
	.4byte	.LASF173
	.4byte	0xfb4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6731
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0x1193
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0xfb4
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	0xfa4
	.uleb128 0x3d
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x261
	.4byte	0x111
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x27d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101f
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x27d
	.4byte	0x111
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x27d
	.4byte	0x827
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0x117f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x2af
	.4byte	0x827
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104a
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x2af
	.4byte	0x111
	.4byte	.LLST17
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x2bf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107d
	.uleb128 0x3a
	.string	"idx"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xb2
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a8
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x111
	.4byte	.LLST18
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa3
	.4byte	0x111
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_opmode
	.uleb128 0x3f
	.4byte	.LASF186
	.byte	0x1
	.byte	0xa6
	.4byte	0x7d1
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_pcb
	.uleb128 0xe
	.4byte	0x8d3
	.4byte	0x10da
	.uleb128 0xf
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF187
	.byte	0x1
	.byte	0xae
	.4byte	0x10ca
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_servers
	.uleb128 0x3f
	.4byte	.LASF188
	.byte	0x1
	.byte	0xbd
	.4byte	0x132
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry_timeout
	.uleb128 0x40
	.4byte	.LASF189
	.byte	0x8
	.byte	0x4e
	.4byte	0x82d
	.uleb128 0x41
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x157
	.4byte	0x82d
	.uleb128 0x42
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xe
	.byte	0x66
	.uleb128 0x42
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x4
	.byte	0x50
	.uleb128 0x42
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xf
	.byte	0x5a
	.uleb128 0x42
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xe
	.byte	0x69
	.uleb128 0x42
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xa
	.byte	0xf4
	.uleb128 0x42
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xa
	.byte	0xee
	.uleb128 0x43
	.4byte	.LASF200
	.4byte	.LASF200
	.uleb128 0x42
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xd
	.byte	0x83
	.uleb128 0x42
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xa
	.byte	0xe4
	.uleb128 0x42
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x10
	.byte	0x71
	.uleb128 0x43
	.4byte	.LASF201
	.4byte	.LASF201
	.uleb128 0x42
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xd
	.byte	0x74
	.uleb128 0x42
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x11
	.byte	0x29
	.uleb128 0x42
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xd
	.byte	0x7b
	.uleb128 0x42
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xd
	.byte	0x76
	.uleb128 0x42
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xd
	.byte	0x75
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
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x75
	.sleb128 2085978496
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x7
	.byte	0x75
	.sleb128 2085978496
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x75
	.sleb128 2085978496
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0xd
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0x10c7
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
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
.LLST18:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"sntp_dns_found"
.LASF34:
	.string	"IPADDR_TYPE_ANY"
.LASF130:
	.string	"netif_igmp_mac_filter_fn"
.LASF109:
	.string	"MEMP_SYS_TIMEOUT"
.LASF50:
	.string	"ERR_ISCONN"
.LASF80:
	.string	"output_ip6"
.LASF66:
	.string	"pbuf"
.LASF86:
	.string	"rs_count"
.LASF125:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF40:
	.string	"ERR_OK"
.LASF205:
	.string	"udp_bind"
.LASF110:
	.string	"MEMP_NETDB"
.LASF168:
	.string	"sntp_initialize_request"
.LASF4:
	.string	"__uint8_t"
.LASF146:
	.string	"stratum"
.LASF37:
	.string	"type"
.LASF88:
	.string	"hwaddr_len"
.LASF121:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF11:
	.string	"long long unsigned int"
.LASF83:
	.string	"dhcps_pcb"
.LASF197:
	.string	"udp_sendto"
.LASF28:
	.string	"addr"
.LASF75:
	.string	"ip6_addr_state"
.LASF181:
	.string	"server"
.LASF3:
	.string	"__int8_t"
.LASF94:
	.string	"loop_last"
.LASF67:
	.string	"next"
.LASF124:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF22:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF84:
	.string	"dhcp_event"
.LASF137:
	.string	"local_port"
.LASF14:
	.string	"long unsigned int"
.LASF48:
	.string	"ERR_USE"
.LASF89:
	.string	"hwaddr"
.LASF43:
	.string	"ERR_TIMEOUT"
.LASF112:
	.string	"MEMP_IP6_REASSDATA"
.LASF81:
	.string	"state"
.LASF87:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF58:
	.string	"PBUF_IP"
.LASF65:
	.string	"PBUF_POOL"
.LASF98:
	.string	"MEMP_RAW_PCB"
.LASF27:
	.string	"ip4_addr"
.LASF64:
	.string	"PBUF_REF"
.LASF132:
	.string	"dhcp_event_fn"
.LASF122:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF52:
	.string	"ERR_IF"
.LASF23:
	.string	"uint16_t"
.LASF164:
	.string	"sntp_recv"
.LASF99:
	.string	"MEMP_UDP_PCB"
.LASF162:
	.string	"is_1900_based"
.LASF74:
	.string	"netmask"
.LASF129:
	.string	"netif_linkoutput_fn"
.LASF185:
	.string	"sntp_opmode"
.LASF108:
	.string	"MEMP_IGMP_GROUP"
.LASF9:
	.string	"__uint32_t"
.LASF101:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF145:
	.string	"li_vn_mode"
.LASF166:
	.string	"new_retry_timeout"
.LASF6:
	.string	"__int16_t"
.LASF17:
	.string	"suseconds_t"
.LASF165:
	.string	"port"
.LASF157:
	.string	"sntpmsg"
.LASF169:
	.string	"sntp_request"
.LASF143:
	.string	"udp_recv_fn"
.LASF97:
	.string	"last_ip_addr"
.LASF128:
	.string	"netif_output_ip6_fn"
.LASF114:
	.string	"MEMP_PBUF"
.LASF182:
	.string	"sntp_setservername"
.LASF152:
	.string	"reference_timestamp"
.LASF78:
	.string	"output"
.LASF49:
	.string	"ERR_ALREADY"
.LASF141:
	.string	"recv"
.LASF136:
	.string	"so_options"
.LASF207:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF90:
	.string	"name"
.LASF72:
	.string	"l2_buf"
.LASF100:
	.string	"MEMP_TCP_PCB"
.LASF191:
	.string	"sys_timeout"
.LASF174:
	.string	"sntp_init"
.LASF190:
	.string	"ip_addr_any"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"ip4_addr_t"
.LASF111:
	.string	"MEMP_ND6_QUEUE"
.LASF196:
	.string	"pbuf_free"
.LASF54:
	.string	"ERR_RST"
.LASF194:
	.string	"sys_untimeout"
.LASF33:
	.string	"IPADDR_TYPE_V6"
.LASF142:
	.string	"recv_arg"
.LASF140:
	.string	"mcast_ttl"
.LASF193:
	.string	"lwip_htonl"
.LASF76:
	.string	"ipv6_addr_cb"
.LASF26:
	.string	"timeval"
.LASF123:
	.string	"netif_mac_filter_action"
.LASF102:
	.string	"MEMP_TCP_SEG"
.LASF117:
	.string	"lwip_ip_addr_type"
.LASF158:
	.string	"sntp_send_request"
.LASF156:
	.string	"sntp_server"
.LASF116:
	.string	"MEMP_MAX"
.LASF38:
	.string	"ip_addr_t"
.LASF39:
	.string	"err_t"
.LASF147:
	.string	"poll"
.LASF13:
	.string	"sizetype"
.LASF180:
	.string	"sntp_setserver"
.LASF178:
	.string	"sntp_enabled"
.LASF73:
	.string	"netif"
.LASF206:
	.string	"udp_remove"
.LASF113:
	.string	"MEMP_MLD6_GROUP"
.LASF91:
	.string	"igmp_mac_filter"
.LASF144:
	.string	"sntp_msg"
.LASF35:
	.string	"ip_addr"
.LASF63:
	.string	"PBUF_ROM"
.LASF179:
	.string	"sntp_getoperatingmode"
.LASF151:
	.string	"reference_identifier"
.LASF95:
	.string	"loop_cnt_current"
.LASF16:
	.string	"time_t"
.LASF204:
	.string	"udp_recv"
.LASF208:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/apps/sntp/sntp.c"
.LASF126:
	.string	"netif_input_fn"
.LASF59:
	.string	"PBUF_LINK"
.LASF45:
	.string	"ERR_INPROGRESS"
.LASF187:
	.string	"sntp_servers"
.LASF18:
	.string	"tv_sec"
.LASF71:
	.string	"l2_owner"
.LASF177:
	.string	"operating_mode"
.LASF46:
	.string	"ERR_VAL"
.LASF92:
	.string	"mld_mac_filter"
.LASF150:
	.string	"root_dispersion"
.LASF139:
	.string	"multicast_ip"
.LASF25:
	.string	"_Bool"
.LASF203:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF56:
	.string	"ERR_ARG"
.LASF51:
	.string	"ERR_CONN"
.LASF134:
	.string	"local_ip"
.LASF120:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF7:
	.string	"short int"
.LASF127:
	.string	"netif_output_fn"
.LASF163:
	.string	"sntp_retry"
.LASF173:
	.string	"__func__"
.LASF53:
	.string	"ERR_ABRT"
.LASF77:
	.string	"input"
.LASF183:
	.string	"sntp_getserver"
.LASF188:
	.string	"sntp_retry_timeout"
.LASF131:
	.string	"netif_mld_mac_filter_fn"
.LASF61:
	.string	"PBUF_RAW"
.LASF60:
	.string	"PBUF_RAW_TX"
.LASF176:
	.string	"sntp_setoperatingmode"
.LASF195:
	.string	"pbuf_copy_partial"
.LASF19:
	.string	"tv_usec"
.LASF24:
	.string	"uint32_t"
.LASF62:
	.string	"PBUF_RAM"
.LASF138:
	.string	"remote_port"
.LASF119:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF148:
	.string	"precision"
.LASF30:
	.string	"ip6_addr"
.LASF105:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF167:
	.string	"mode"
.LASF161:
	.string	"rx_secs"
.LASF0:
	.string	"unsigned int"
.LASF170:
	.string	"sntp_server_address"
.LASF103:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF41:
	.string	"ERR_MEM"
.LASF104:
	.string	"MEMP_NETCONN"
.LASF209:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF57:
	.string	"PBUF_TRANSPORT"
.LASF115:
	.string	"MEMP_PBUF_POOL"
.LASF107:
	.string	"MEMP_ARP_QUEUE"
.LASF184:
	.string	"sntp_getservername"
.LASF149:
	.string	"root_delay"
.LASF159:
	.string	"sntp_process"
.LASF68:
	.string	"payload"
.LASF93:
	.string	"loop_first"
.LASF201:
	.string	"memcpy"
.LASF36:
	.string	"u_addr"
.LASF202:
	.string	"udp_new_ip_type"
.LASF55:
	.string	"ERR_CLSD"
.LASF44:
	.string	"ERR_RTE"
.LASF20:
	.string	"int8_t"
.LASF153:
	.string	"originate_timestamp"
.LASF69:
	.string	"tot_len"
.LASF42:
	.string	"ERR_BUF"
.LASF31:
	.string	"ip6_addr_t"
.LASF200:
	.string	"memset"
.LASF118:
	.string	"lwip_internal_netif_client_data_index"
.LASF189:
	.string	"ip_addr_any_type"
.LASF186:
	.string	"sntp_pcb"
.LASF154:
	.string	"receive_timestamp"
.LASF32:
	.string	"IPADDR_TYPE_V4"
.LASF172:
	.string	"ipaddr"
.LASF199:
	.string	"dns_gethostbyname"
.LASF21:
	.string	"uint8_t"
.LASF192:
	.string	"settimeofday"
.LASF70:
	.string	"flags"
.LASF155:
	.string	"transmit_timestamp"
.LASF133:
	.string	"udp_pcb"
.LASF47:
	.string	"ERR_WOULDBLOCK"
.LASF96:
	.string	"l2_buffer_free_notify"
.LASF85:
	.string	"ip6_autoconfig_enabled"
.LASF82:
	.string	"client_data"
.LASF79:
	.string	"linkoutput"
.LASF160:
	.string	"server_addr"
.LASF135:
	.string	"remote_ip"
.LASF198:
	.string	"pbuf_alloc"
.LASF175:
	.string	"sntp_stop"
.LASF106:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
