	.file	"blufi_prf.c"
	.text
.Ltext0:
	.section	.text.btc_blufi_cb_to_app,"ax",@progbits
	.align	4
	.type	btc_blufi_cb_to_app, @function
btc_blufi_cb_to_app:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/blufi_prf.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 73 0
	movi.n	a10, 8
	call8	btc_profile_cb_get
.LVL1:
	mov.n	a8, a10
.LVL2:
	.loc 1 74 0
	beqz.n	a10, .L1
	.loc 1 75 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL3:
.L1:
	retw.n
.LFE39:
	.size	btc_blufi_cb_to_app, .-btc_blufi_cb_to_app
	.section	.text.btc_blufi_report_error,"ax",@progbits
	.align	4
	.global	btc_blufi_report_error
	.type	btc_blufi_report_error, @function
btc_blufi_report_error:
.LFB45:
	.loc 1 375 0
.LVL4:
	entry	sp, 64
.LCFI1:
	.loc 1 377 0
	movi.n	a8, 1
	s8i	a8, sp, 12
	.loc 1 382 0
	movi.n	a12, 0xc
	.loc 1 378 0
	movi.n	a8, 8
	s8i	a8, sp, 14
	.loc 1 382 0
	movi.n	a13, 0
	.loc 1 379 0
	movi.n	a8, 0x19
	.loc 1 382 0
	mov.n	a11, sp
	add.n	a10, sp, a12
	.loc 1 379 0
	s8i	a8, sp, 15
	.loc 1 381 0
	s32i.n	a2, sp, 0
	.loc 1 382 0
	call8	btc_transfer_context
.LVL5:
	retw.n
.LFE45:
	.size	btc_blufi_report_error, .-btc_blufi_report_error
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"BT_BTC"
.LC4:
	.string	"\033[0;31mE (%d) %s: %s no mem\n\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: %s encrypt error %d\n\033[0m\n"
	.section	.text.btc_blufi_send_encap,"ax",@progbits
	.literal_position
	.literal .LC0, blufi_env
	.literal .LC1, __func__$11341
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	btc_blufi_send_encap
	.type	btc_blufi_send_encap, @function
btc_blufi_send_encap:
.LFB47:
	.loc 1 460 0
.LVL6:
	entry	sp, 80
.LCFI2:
.LVL7:
	.loc 1 460 0
	extui	a2, a2, 0, 8
	.loc 1 501 0
	movi.n	a7, 0
	srli	a5, a2, 2
	movi.n	a6, 1
	mov.n	a8, a7
	movnez	a8, a6, a5
	addi	a5, a5, -18
	moveqz	a6, a7, a5
	and	a5, a8, a6
	extui	a8, a2, 0, 2
	s32i.n	a5, sp, 36
	.loc 1 467 0
	l32r	a6, .LC0
	.loc 1 462 0
	mov.n	a5, a4
	s32i.n	a8, sp, 32
	.loc 1 466 0
	j	.L8
.LVL8:
.L24:
	.loc 1 467 0
	l16ui	a12, a6, 26
	bge	a12, a5, .L9
	.loc 1 468 0
	addi.n	a10, a12, 8
	s32i.n	a12, sp, 40
	call8	malloc
.LVL9:
	mov.n	a7, a10
.LVL10:
	.loc 1 469 0
	l32i.n	a12, sp, 40
	bnez.n	a10, .L10
	j	.L56
.L10:
	.loc 1 474 0
	addi.n	a9, a12, 2
	s8i	a9, a10, 3
	.loc 1 477 0
	sub	a11, a4, a5
	.loc 1 476 0
	srai	a9, a5, 8
	s8i	a9, a10, 5
	.loc 1 475 0
	s8i	a5, a10, 4
	.loc 1 477 0
	add.n	a11, a3, a11
	addi.n	a10, a10, 6
	call8	memcpy
.LVL11:
	.loc 1 478 0
	movi.n	a9, 0x10
	s8i	a9, a7, 1
	j	.L12
.LVL12:
.L9:
	.loc 1 480 0
	addi.n	a10, a5, 6
	call8	malloc
.LVL13:
	mov.n	a7, a10
.LVL14:
	.loc 1 481 0
	bnez.n	a10, .L13
.L56:
	.loc 1 482 0 discriminator 1
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC3
	l32r	a15, .LC1
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL16:
	.loc 1 483 0 discriminator 1
	retw.n
.L13:
	.loc 1 485 0
	movi.n	a8, 0
	.loc 1 487 0
	sub	a11, a4, a5
	.loc 1 485 0
	s8i	a8, a10, 1
	.loc 1 486 0
	s8i	a5, a10, 3
	.loc 1 487 0
	extui	a12, a5, 0, 8
	add.n	a11, a3, a11
	addi.n	a10, a10, 4
	call8	memcpy
.LVL17:
.L12:
	.loc 1 491 0
	l8ui	a13, a7, 1
	.loc 1 492 0
	l8ui	a10, a6, 41
	.loc 1 491 0
	movi.n	a9, 4
	or	a9, a13, a9
	s8i	a9, a7, 1
	.loc 1 494 0
	l32i.n	a8, sp, 32
	.loc 1 492 0
	addi.n	a9, a10, 1
	.loc 1 490 0
	s8i	a2, a7, 0
	.loc 1 492 0
	s8i	a9, a6, 41
	s8i	a10, a7, 2
	l8ui	a12, a7, 3
	.loc 1 494 0
	bnez.n	a8, .L14
	.loc 1 495 0
	l8ui	a9, a6, 43
	bbci	a9, 4, .L16
	.loc 1 496 0
	l32i.n	a9, a6, 36
	beqz.n	a9, .L16
	.loc 1 496 0 is_stmt 0 discriminator 1
	l32i.n	a11, a9, 16
	beqz.n	a11, .L16
	.loc 1 497 0 is_stmt 1
	movi.n	a11, 6
	or	a11, a13, a11
	s8i	a11, a7, 1
	.loc 1 498 0
	l32i.n	a9, a9, 16
	addi.n	a11, a7, 2
	addi.n	a12, a12, 2
	callx8	a9
.LVL18:
	.loc 1 499 0
	l8ui	a9, a7, 3
	srli	a11, a10, 8
	add.n	a9, a7, a9
	.loc 1 498 0
	s16i	a10, sp, 16
	.loc 1 499 0
	s8i	a10, a9, 4
	s8i	a11, a9, 5
	j	.L16
.L14:
	.loc 1 501 0
	l32i.n	a8, sp, 32
	bnei	a8, 1, .L17
	.loc 1 501 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 36
	beqz.n	a8, .L16
.L17:
	.loc 1 502 0 is_stmt 1
	l8ui	a9, a6, 43
	bbci	a9, 0, .L18
	.loc 1 503 0
	l32i.n	a9, a6, 36
	beqz.n	a9, .L18
	.loc 1 503 0 is_stmt 0 discriminator 1
	l32i.n	a11, a9, 16
	beqz.n	a11, .L18
	.loc 1 504 0 is_stmt 1
	movi.n	a11, 6
	or	a11, a13, a11
	s8i	a11, a7, 1
	.loc 1 505 0
	l32i.n	a9, a9, 16
	addi.n	a11, a7, 2
	addi.n	a12, a12, 2
	callx8	a9
.LVL19:
	.loc 1 506 0
	l8ui	a9, a7, 3
	srli	a11, a10, 8
	add.n	a9, a7, a9
	.loc 1 505 0
	s16i	a10, sp, 16
	.loc 1 506 0
	s8i	a10, a9, 4
	s8i	a11, a9, 5
.L18:
	.loc 1 509 0
	l8ui	a9, a6, 43
	bbci	a9, 1, .L16
	.loc 1 510 0
	l32i.n	a9, a6, 36
	beqz.n	a9, .L16
	.loc 1 510 0 is_stmt 0 discriminator 1
	l32i.n	a9, a9, 8
	beqz.n	a9, .L16
	.loc 1 511 0 is_stmt 1
	l8ui	a12, a7, 3
	l8ui	a10, a7, 2
	addi.n	a11, a7, 4
	callx8	a9
.LVL20:
	mov.n	a9, a10
.LVL21:
	.loc 1 512 0
	l8ui	a10, a7, 3
	bne	a9, a10, .L19
	.loc 1 513 0
	l8ui	a10, a7, 1
	movi.n	a9, 1
.LVL22:
	or	a9, a10, a9
	s8i	a9, a7, 1
	j	.L16
.LVL23:
.L19:
	.loc 1 515 0 discriminator 1
	s32i.n	a9, sp, 40
	call8	esp_log_timestamp
.LVL24:
	l32r	a11, .LC3
	l32i.n	a9, sp, 40
	l32r	a15, .LC1
	l32r	a12, .LC7
	mov.n	a13, a10
	s32i.n	a9, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL25:
	.loc 1 516 0 discriminator 1
	movi.n	a10, 3
	call8	btc_blufi_report_error
.LVL26:
	.loc 1 517 0 discriminator 1
	mov.n	a10, a7
	call8	free
.LVL27:
	.loc 1 518 0 discriminator 1
	retw.n
.L16:
	l8ui	a9, a7, 3
	.loc 1 523 0
	l8ui	a12, a7, 1
	.loc 1 524 0
	sub	a5, a5, a9
.LVL28:
	.loc 1 523 0
	bbci	a12, 4, .L21
	.loc 1 524 0
	addi.n	a5, a5, 2
.LVL29:
.L21:
	.loc 1 529 0
	extui	a12, a12, 1, 1
	addi.n	a10, a9, 6
	addi.n	a9, a9, 4
.LVL30:
.LBB4:
.LBB5:
	.loc 1 370 0
	moveqz	a10, a9, a12
.LVL31:
	mov.n	a12, a10
	l16ui	a11, a6, 6
	l16ui	a10, a6, 10
.LVL32:
	movi.n	a14, 0
	mov.n	a13, a7
	call8	BTA_GATTS_HandleValueIndication
.LVL33:
.LBE5:
.LBE4:
	.loc 1 534 0
	mov.n	a10, a7
	call8	free
.LVL34:
.L8:
	.loc 1 466 0
	bgei	a5, 1, .L24
	retw.n
.LFE47:
	.size	btc_blufi_send_encap, .-btc_blufi_send_encap
	.section	.rodata.str1.1
.LC14:
	.string	"\033[0;31mE (%d) %s: %s seq %d is not expect %d\n\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: %s decrypt error %d\n\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: %s checksum error %04x, pkt %04x\n\033[0m\n"
.LC20:
	.string	"\033[0;31mE (%d) %s: %s no mem, len %d\n\033[0m\n"
.LC22:
	.string	"\033[0;31mE (%d) %s: %s payload is longer than packet length, len %d \n\033[0m\n"
	.section	.text.btc_blufi_recv_handler$isra$0,"ax",@progbits
	.literal_position
	.literal .LC11, blufi_env
	.literal .LC12, __func__$11331
	.literal .LC13, .LC2
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.align	4
	.type	btc_blufi_recv_handler$isra$0, @function
btc_blufi_recv_handler$isra$0:
.LFB61:
	.loc 1 385 0
.LVL35:
	entry	sp, 64
.LCFI3:
.LVL36:
	.loc 1 391 0
	l32r	a4, .LC11
	l8ui	a5, a2, 2
	l8ui	a8, a4, 42
	mov.n	a3, a4
	beq	a8, a5, .L58
	.loc 1 392 0
	call8	esp_log_timestamp
.LVL37:
	l8ui	a3, a4, 42
	l32r	a11, .LC13
	addi.n	a3, a3, 1
	s32i.n	a3, sp, 4
	l8ui	a2, a2, 2
.LVL38:
	l32r	a15, .LC12
	l32r	a12, .LC15
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL39:
	.loc 1 393 0
	movi.n	a10, 0
	j	.L88
.LVL40:
.L58:
	.loc 1 397 0
	addi.n	a8, a8, 1
	s8i	a8, a4, 42
	.loc 1 400 0
	l8ui	a5, a2, 1
	bbci	a5, 0, .L60
	.loc 1 401 0
	l32i.n	a4, a4, 36
	beqz.n	a4, .L60
	l32i.n	a4, a4, 12
	beqz.n	a4, .L60
	.loc 1 402 0
	l8ui	a12, a2, 3
	l8ui	a10, a2, 2
	addi.n	a11, a2, 4
	callx8	a4
.LVL41:
	.loc 1 403 0
	l8ui	a5, a2, 3
	.loc 1 402 0
	mov.n	a4, a10
.LVL42:
	.loc 1 403 0
	beq	a10, a5, .L60
	.loc 1 404 0
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC13
	l32r	a15, .LC12
	l32r	a12, .LC17
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL44:
	.loc 1 405 0
	movi.n	a10, 2
	j	.L88
.LVL45:
.L60:
	.loc 1 411 0
	l8ui	a4, a2, 1
	bbci	a4, 1, .L61
	.loc 1 412 0
	l32i.n	a4, a3, 36
	beqz.n	a4, .L61
	l32i.n	a4, a4, 16
	beqz.n	a4, .L61
	.loc 1 413 0
	l8ui	a12, a2, 3
	l8ui	a10, a2, 2
	addi.n	a12, a12, 2
	addi.n	a11, a2, 2
	callx8	a4
.LVL46:
	.loc 1 414 0
	l8ui	a8, a2, 3
	.loc 1 413 0
	mov.n	a5, a10
.LVL47:
	.loc 1 414 0
	add.n	a8, a2, a8
	l8ui	a4, a8, 5
	l8ui	a8, a8, 4
	slli	a4, a4, 8
	or	a4, a8, a4
.LVL48:
	.loc 1 415 0
	beq	a10, a4, .L61
	.loc 1 416 0
	call8	esp_log_timestamp
.LVL49:
	l32r	a11, .LC13
	l32r	a15, .LC12
	l32r	a12, .LC19
	mov.n	a13, a10
	s32i.n	a4, sp, 4
	movi.n	a10, 1
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	call8	esp_log_write
.LVL50:
	.loc 1 417 0
	movi.n	a10, 1
	j	.L88
.LVL51:
.L61:
	.loc 1 422 0
	l8ui	a4, a2, 1
	bbci	a4, 3, .L62
.LVL52:
.LBB8:
.LBB9:
	.loc 1 652 0
	l8ui	a4, a2, 2
	.loc 1 654 0
	movi.n	a12, 1
	addi	a11, sp, 16
	movi.n	a10, 0
	.loc 1 652 0
	s8i	a4, sp, 16
	.loc 1 654 0
	call8	btc_blufi_send_encap
.LVL53:
.L62:
.LBE9:
.LBE8:
	.loc 1 426 0
	l8ui	a5, a2, 1
	movi.n	a4, 0x10
	and	a4, a5, a4
	beqz.n	a4, .L63
	.loc 1 427 0
	l16ui	a4, a3, 50
	bnez.n	a4, .L64
	.loc 1 428 0
	l8ui	a10, a2, 5
	l8ui	a5, a2, 4
	slli	a10, a10, 8
	or	a10, a5, a10
	s16i	a10, a3, 48
	.loc 1 429 0
	call8	malloc
.LVL54:
	s32i.n	a10, a3, 44
	.loc 1 430 0
	bnez.n	a10, .L64
	.loc 1 431 0
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC13
	l16ui	a2, a3, 48
.LVL56:
	l32r	a15, .LC12
	l32r	a12, .LC21
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL57:
	.loc 1 432 0
	movi.n	a10, 5
	j	.L88
.LVL58:
.L64:
	.loc 1 436 0
	l8ui	a12, a2, 3
	l16ui	a8, a3, 48
	add.n	a5, a4, a12
	addi	a5, a5, -2
	blt	a8, a5, .L65
	.loc 1 437 0
	l32i.n	a10, a3, 44
	addi.n	a11, a2, 6
	add.n	a10, a10, a4
	addi	a12, a12, -2
	call8	memcpy
.LVL59:
	.loc 1 438 0
	l16ui	a4, a3, 50
	l8ui	a2, a2, 3
.LVL60:
	addi	a4, a4, -2
	add.n	a2, a2, a4
	s16i	a2, a3, 50
	retw.n
.LVL61:
.L65:
	.loc 1 440 0
	call8	esp_log_timestamp
.LVL62:
	l32r	a11, .LC13
	l16ui	a2, a3, 48
.LVL63:
	l32r	a15, .LC12
	l32r	a12, .LC23
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL64:
	.loc 1 441 0
	movi.n	a10, 9
.L88:
	call8	btc_blufi_report_error
.LVL65:
	retw.n
.LVL66:
.L63:
	.loc 1 446 0
	l16ui	a5, a3, 50
	l8ui	a12, a2, 3
	addi.n	a11, a2, 4
	beqz.n	a5, .L66
	.loc 1 447 0
	l32i.n	a10, a3, 44
	add.n	a10, a10, a5
	call8	memcpy
.LVL67:
	.loc 1 449 0
	l16ui	a12, a3, 48
	l32i.n	a11, a3, 44
	l8ui	a10, a2, 0
	call8	btc_blufi_protocol_handler
.LVL68:
	.loc 1 451 0
	l32i.n	a10, a3, 44
	.loc 1 450 0
	s16i	a4, a3, 50
	.loc 1 451 0
	call8	free
.LVL69:
	.loc 1 452 0
	s32i.n	a4, a3, 44
	retw.n
.L66:
	.loc 1 454 0
	l8ui	a10, a2, 0
	call8	btc_blufi_protocol_handler
.LVL70:
	.loc 1 455 0
	s16i	a5, a3, 50
	retw.n
.LFE61:
	.size	btc_blufi_recv_handler$isra$0, .-btc_blufi_recv_handler$isra$0
	.section	.rodata.str1.1
.LC25:
	.string	"BT_BLUFI"
.LC27:
	.string	"\033[0;31mE (%d) %s: BLUFI profile register failed\n\033[0m\n"
.LC32:
	.string	"\033[0;31mE (%d) %s: BLUFI profile unregister failed\n\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: Blufi prep no mem\n\033[0m\n"
.LC36:
	.string	"\033[0;31mE (%d) %s: write data error , error code 0x%x\n\033[0m\n"
	.section	.text.blufi_profile_cb,"ax",@progbits
	.literal_position
	.literal .LC24, .L92
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC29, blufi_env
	.literal .LC30, 65535
	.literal .LC31, blufi_srvc_uuid
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, blufi_char_uuid_p2e
	.literal .LC39, 65281
	.literal .LC40, 65282
	.literal .LC41, blufi_char_uuid_e2p
	.literal .LC42, blufi_descr_uuid_e2p
	.align	4
	.type	blufi_profile_cb, @function
blufi_profile_cb:
.LFB41:
	.loc 1 91 0
.LVL71:
	entry	sp, 656
.LCFI4:
	.loc 1 91 0
	extui	a2, a2, 0, 8
	.loc 1 96 0
	movi.n	a4, 0xf
	bltu	a4, a2, .L89
	l32r	a4, .LC24
	addx4	a2, a2, a4
.LVL72:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.blufi_profile_cb,"a",@progbits
	.align	4
	.align	4
.L92:
	.word	.L91
	.word	.L93
	.word	.L94
	.word	.L95
	.word	.L96
	.word	.L89
	.word	.L97
	.word	.L98
	.word	.L89
	.word	.L99
	.word	.L100
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L101
	.word	.L102
	.section	.text.blufi_profile_cb
.L91:
	.loc 1 100 0
	l8ui	a12, a3, 1
	beqz.n	a12, .L103
	.loc 1 101 0 discriminator 1
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC26
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC28
	j	.L133
.L103:
	.loc 1 105 0
	l32r	a2, .LC29
	.loc 1 106 0
	movi.n	a4, 1
	.loc 1 105 0
	l8ui	a10, a3, 0
	.loc 1 106 0
	s8i	a4, a2, 40
	.loc 1 109 0
	l16ui	a4, a3, 8
	l32r	a3, .LC30
.LVL74:
	.loc 1 105 0
	s8i	a10, a2, 0
	.loc 1 109 0
	bne	a4, a3, .L89
.LBB17:
.LBB18:
	.loc 1 87 0
	l32r	a11, .LC31
	movi.n	a14, 1
	movi.n	a13, 6
	.loc 1 86 0
	s8i	a12, a2, 1
	.loc 1 87 0
	call8	BTA_GATTS_CreateService
.LVL75:
	retw.n
.LVL76:
.L97:
.LBE18:
.LBE17:
.LBB19:
	.loc 1 120 0
	l8ui	a13, a3, 1
	beqz.n	a13, .L106
	.loc 1 121 0 discriminator 1
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC26
	l32r	a12, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
.L133:
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	retw.n
.L106:
	.loc 1 125 0
	l32r	a2, .LC29
	.loc 1 127 0
	movi.n	a3, 1
.LVL79:
	.loc 1 125 0
	s8i	a13, a2, 40
	.loc 1 128 0
	movi.n	a4, 8
	.loc 1 127 0
	addmi	a2, sp, 0x200
	s8i	a3, a2, 100
	.loc 1 128 0
	s8i	a4, a2, 102
	.loc 1 129 0
	s8i	a3, a2, 103
	j	.L136
.LVL80:
.L93:
.LBE19:
	.loc 1 137 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL81:
	.loc 1 138 0
	l32i.n	a2, a3, 16
	.loc 1 141 0
	l8ui	a12, a3, 0
	.loc 1 138 0
	l16ui	a2, a2, 0
	.loc 1 141 0
	l32i.n	a11, a3, 8
	l16ui	a10, a3, 12
	.loc 1 138 0
	s16i	a2, sp, 2
	.loc 1 141 0
	mov.n	a13, sp
	.loc 1 139 0
	movi.n	a2, 1
	s16i	a2, sp, 6
	.loc 1 141 0
	call8	BTA_GATTS_SendRsp
.LVL82:
	.loc 1 143 0
	retw.n
.L94:
	.loc 1 145 0
	l32i.n	a9, a3, 16
	addmi	a2, a9, 0x200
	l8ui	a13, a2, 95
	l32r	a2, .LC29
	beqz.n	a13, .L107
.LVL83:
.LBB20:
	.loc 1 148 0
	l32i.n	a4, a2, 28
	bnez.n	a4, .L108
	.loc 1 149 0
	movi	a10, 0x400
	call8	malloc
.LVL84:
	s32i.n	a10, a2, 28
	.loc 1 150 0
	s32i.n	a4, a2, 32
	.loc 1 151 0
	beqz.n	a10, .L109
.L111:
	.loc 1 146 0
	movi.n	a4, 0
	j	.L110
.L109:
	.loc 1 152 0 discriminator 1
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC26
	l32r	a12, .LC35
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL86:
	.loc 1 153 0 discriminator 1
	movi	a4, 0x80
	j	.L110
.LVL87:
.L108:
	.loc 1 156 0
	l16ui	a8, a9, 2
	movi	a5, 0x400
	.loc 1 157 0
	movi.n	a4, 7
	.loc 1 156 0
	bltu	a5, a8, .L110
	.loc 1 158 0
	l16ui	a4, a9, 4
	add.n	a8, a4, a8
	bge	a5, a8, .L111
	.loc 1 159 0
	movi.n	a4, 0xd
.LVL88:
.L110:
	.loc 1 163 0
	movi	a12, 0x262
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL89:
	.loc 1 164 0
	l32i.n	a11, a3, 16
	.loc 1 167 0
	addi.n	a10, sp, 9
	.loc 1 164 0
	l16ui	a5, a11, 0
	s16i	a5, sp, 2
	.loc 1 165 0
	l16ui	a5, a11, 4
	s16i	a5, sp, 6
	.loc 1 166 0
	l16ui	a5, a11, 2
	s16i	a5, sp, 4
	.loc 1 167 0
	l16ui	a12, a11, 4
	addi.n	a11, a11, 6
	call8	memcpy
.LVL90:
	.loc 1 171 0
	l32i.n	a11, a3, 8
	l16ui	a10, a3, 12
	mov.n	a13, sp
	mov.n	a12, a4
	call8	BTA_GATTS_SendRsp
.LVL91:
	.loc 1 174 0
	beqz.n	a4, .L112
	.loc 1 175 0
	l32i.n	a10, a2, 28
	beqz.n	a10, .L113
	.loc 1 177 0
	movi.n	a3, 0
.LVL92:
	.loc 1 176 0
	call8	free
.LVL93:
	.loc 1 177 0
	s32i.n	a3, a2, 28
	.loc 1 178 0
	s32i.n	a3, a2, 32
.L113:
	.loc 1 180 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC26
	l32r	a12, .LC37
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	.loc 1 181 0 discriminator 1
	retw.n
.LVL96:
.L112:
	.loc 1 183 0
	l32i.n	a11, a3, 16
	l32i.n	a10, a2, 28
	l16ui	a4, a11, 2
.LVL97:
	l16ui	a12, a11, 4
	add.n	a10, a10, a4
	addi.n	a11, a11, 6
	call8	memcpy
.LVL98:
	.loc 1 186 0
	l32i.n	a3, a3, 16
.LVL99:
	l16ui	a4, a3, 4
	l32i.n	a3, a2, 32
	add.n	a3, a4, a3
	j	.L134
.LVL100:
.L107:
.LBE20:
	.loc 1 191 0
	l16ui	a10, a3, 12
	l8ui	a12, a3, 0
	l32i.n	a11, a3, 8
	call8	BTA_GATTS_SendRsp
.LVL101:
	.loc 1 195 0
	l32i.n	a10, a3, 16
	l16ui	a2, a2, 4
	l16ui	a3, a10, 0
.LVL102:
	bne	a3, a2, .L89
	.loc 1 196 0
	addi.n	a10, a10, 6
	call8	btc_blufi_recv_handler$isra$0
.LVL103:
	retw.n
.LVL104:
.L95:
	.loc 1 204 0
	movi.n	a13, 0
	l16ui	a10, a3, 12
	l32i.n	a11, a3, 8
	mov.n	a12, a13
	call8	BTA_GATTS_SendRsp
.LVL105:
	.loc 1 207 0
	l32r	a2, .LC29
	l32i.n	a10, a2, 28
	beqz.n	a10, .L115
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32i.n	a3, a3, 16
.LVL106:
	l8ui	a3, a3, 0
	bnei	a3, 1, .L115
	.loc 1 208 0 is_stmt 1
	call8	btc_blufi_recv_handler$isra$0
.LVL107:
.L115:
	.loc 1 211 0
	l32i.n	a10, a2, 28
	beqz.n	a10, .L89
	.loc 1 213 0
	movi.n	a3, 0
	.loc 1 212 0
	call8	free
.LVL108:
	.loc 1 213 0
	s32i.n	a3, a2, 28
.L134:
	.loc 1 214 0
	s32i.n	a3, a2, 32
	retw.n
.LVL109:
.L96:
	.loc 1 220 0
	l32i.n	a2, a3, 16
	movi	a4, 0xfe
	l16ui	a2, a2, 0
	movi	a3, 0xf4
.LVL110:
	bltu	a4, a2, .L116
	.loc 1 220 0 is_stmt 0 discriminator 1
	addi	a2, a2, -11
	extui	a3, a2, 0, 16
.L116:
	.loc 1 220 0 discriminator 4
	l32r	a2, .LC29
	s16i	a3, a2, 26
	.loc 1 221 0 is_stmt 1 discriminator 4
	retw.n
.LVL111:
.L98:
	.loc 1 227 0
	l16ui	a10, a3, 2
	l32r	a2, .LC29
	.loc 1 230 0
	movi.n	a15, 0
	.loc 1 227 0
	s16i	a10, a2, 2
	.loc 1 230 0
	mov.n	a14, a15
	movi.n	a13, 8
	movi.n	a12, 0x10
	l32r	a11, .LC38
	j	.L135
.L99:
	.loc 1 236 0
	l16ui	a2, a3, 12
	l32r	a4, .LC39
	beq	a2, a4, .L117
	l32r	a4, .LC40
	beq	a2, a4, .L118
	retw.n
.L117:
	.loc 1 238 0
	l32r	a2, .LC29
	l16ui	a3, a3, 4
.LVL112:
	.loc 1 240 0
	movi.n	a15, 0
	l32r	a11, .LC41
	l16ui	a10, a2, 2
	.loc 1 238 0
	s16i	a3, a2, 4
	.loc 1 240 0
	mov.n	a14, a15
	movi.n	a13, 0x12
	movi.n	a12, 1
.L135:
	call8	BTA_GATTS_AddCharacteristic
.LVL113:
	.loc 1 244 0
	retw.n
.LVL114:
.L118:
	.loc 1 246 0
	l32r	a2, .LC29
	l16ui	a3, a3, 4
.LVL115:
	.loc 1 248 0
	movi.n	a14, 0
	l32r	a12, .LC42
	l16ui	a10, a2, 2
	mov.n	a13, a14
	movi.n	a11, 0x11
	.loc 1 246 0
	s16i	a3, a2, 6
	.loc 1 248 0
	call8	BTA_GATTS_AddCharDescriptor
.LVL116:
	.loc 1 252 0
	retw.n
.LVL117:
.L100:
.LBB21:
	.loc 1 262 0
	l32r	a2, .LC29
	l16ui	a3, a3, 4
.LVL118:
	.loc 1 264 0
	l16ui	a10, a2, 2
	.loc 1 262 0
	s16i	a3, a2, 8
	.loc 1 264 0
	movi.n	a11, 2
	.loc 1 266 0
	addmi	a2, sp, 0x200
	movi.n	a3, 1
	.loc 1 264 0
	call8	BTA_GATTS_StartService
.LVL119:
	.loc 1 266 0
	s8i	a3, a2, 100
	.loc 1 267 0
	movi.n	a3, 8
	s8i	a3, a2, 102
	.loc 1 268 0
	movi.n	a3, 0
	s8i	a3, a2, 103
	.loc 1 269 0
	movi.n	a13, 0
.L136:
	s32i.n	a13, sp, 0
	j	.L131
.LVL120:
.L101:
.LBE21:
.LBB22:
	.loc 1 283 0
	l32r	a4, .LC29
	addi.n	a5, a3, 1
	movi.n	a12, 6
	mov.n	a11, a5
	addi.n	a10, a4, 13
	call8	memcpy
.LVL121:
	.loc 1 284 0
	l16ui	a2, a3, 8
	.loc 1 285 0
	movi.n	a8, 1
	.loc 1 284 0
	s16i	a2, a4, 10
	.loc 1 285 0
	s8i	a8, a4, 12
	.loc 1 287 0
	addmi	a4, sp, 0x200
	s8i	a8, a4, 100
	.loc 1 288 0
	movi.n	a8, 8
	s8i	a8, a4, 102
	.loc 1 291 0
	srli	a2, a2, 8
	.loc 1 289 0
	movi.n	a8, 3
	.loc 1 290 0
	movi.n	a12, 6
	mov.n	a11, a5
	mov.n	a10, sp
	.loc 1 289 0
	s8i	a8, a4, 103
	.loc 1 290 0
	call8	memcpy
.LVL122:
	.loc 1 291 0
	s16i	a2, sp, 8
	.loc 1 292 0
	l8ui	a2, a3, 0
	s8i	a2, sp, 6
	j	.L132
.L102:
.LBE22:
.LBB23:
	.loc 1 300 0
	l32r	a2, .LC29
	.loc 1 306 0
	addi.n	a5, a3, 1
	.loc 1 300 0
	movi.n	a4, 0
	.loc 1 306 0
	movi.n	a12, 6
	mov.n	a11, a5
	addi.n	a10, a2, 13
	.loc 1 300 0
	s8i	a4, a2, 12
	.loc 1 306 0
	call8	memcpy
.LVL123:
	.loc 1 307 0
	l16ui	a3, a3, 8
.LVL124:
	.loc 1 309 0
	s8i	a4, a2, 41
	.loc 1 307 0
	s16i	a3, a2, 10
	.loc 1 309 0
	s8i	a4, a2, 42
	.loc 1 312 0
	movi.n	a3, 1
	.loc 1 310 0
	s8i	a4, a2, 43
	.loc 1 312 0
	addmi	a2, sp, 0x200
	s8i	a3, a2, 100
	.loc 1 313 0
	movi.n	a3, 8
	s8i	a3, a2, 102
	.loc 1 315 0
	movi.n	a12, 6
	.loc 1 314 0
	movi.n	a3, 4
	.loc 1 315 0
	mov.n	a11, a5
	mov.n	a10, sp
	.loc 1 314 0
	s8i	a3, a2, 103
	.loc 1 315 0
	call8	memcpy
.LVL125:
.L132:
	.loc 1 316 0
	movi.n	a13, 0
.L131:
	movi	a10, 0x264
	movi.n	a12, 0xc
	mov.n	a11, sp
	add.n	a10, sp, a10
	call8	btc_transfer_context
.LVL126:
.L89:
	retw.n
.LBE23:
.LFE41:
	.size	blufi_profile_cb, .-blufi_profile_cb
	.section	.rodata.str1.1
.LC46:
	.string	"\033[0;31mE (%d) %s: malloc error\n\033[0m\n"
.LC49:
	.string	"\033[0;31mE (%d) %s: %s len error\033[0m\n"
	.section	.text.btc_blufi_send_wifi_list,"ax",@progbits
	.literal_position
	.literal .LC45, .LC2
	.literal .LC47, .LC46
	.literal .LC48, __func__$11368
	.literal .LC50, .LC49
	.align	4
	.global	btc_blufi_send_wifi_list
	.type	btc_blufi_send_wifi_list, @function
btc_blufi_send_wifi_list:
.LFB49:
	.loc 1 613 0
.LVL127:
	entry	sp, 48
.LCFI5:
	.loc 1 613 0
	extui	a2, a2, 0, 16
	.loc 1 619 0
	addx4	a6, a2, a2
	subx8	a6, a6, a6
	.loc 1 620 0
	mov.n	a10, a6
	.loc 1 619 0
	s32i.n	a6, sp, 0
.LVL128:
	.loc 1 620 0
	call8	malloc
.LVL129:
	mov.n	a4, a10
.LVL130:
	.loc 1 621 0
	beqz.n	a10, .L138
	mov.n	a7, a10
	movi.n	a6, 0
.LVL131:
	j	.L139
.LVL132:
.L138:
	.loc 1 622 0 discriminator 1
	call8	esp_log_timestamp
.LVL133:
	l32r	a11, .LC45
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL134:
	.loc 1 623 0 discriminator 1
	retw.n
.LVL135:
.L142:
.LBB24:
.LBB25:
	.loc 1 628 0
	mov.n	a10, a3
	call8	strlen
.LVL136:
	.loc 1 631 0
	addi.n	a5, a5, 2
	l32i.n	a9, sp, 0
	add.n	a5, a5, a10
	.loc 1 628 0
	mov.n	a8, a10
.LVL137:
	.loc 1 631 0
	bgeu	a9, a5, .L141
	.loc 1 632 0 discriminator 1
	call8	esp_log_timestamp
.LVL138:
	l32r	a11, .LC45
	l32r	a15, .LC48
	l32r	a12, .LC50
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL139:
	j	.L143
.LVL140:
.L141:
	.loc 1 636 0 discriminator 2
	addi.n	a5, a10, 1
	.loc 1 637 0 discriminator 2
	l8ui	a10, a3, 33
	.loc 1 636 0 discriminator 2
	s8i	a5, a7, 0
	.loc 1 637 0 discriminator 2
	addi.n	a5, a7, 2
.LVL141:
	s8i	a10, a7, 1
	.loc 1 638 0 discriminator 2
	mov.n	a12, a8
	mov.n	a11, a3
	mov.n	a10, a5
	s32i.n	a8, sp, 4
	call8	memcpy
.LVL142:
	.loc 1 639 0 discriminator 2
	l32i.n	a8, sp, 4
.LBE25:
	.loc 1 626 0 discriminator 2
	addi.n	a6, a6, 1
.LVL143:
.LBB26:
	.loc 1 639 0 discriminator 2
	add.n	a7, a5, a8
.LVL144:
	addi	a3, a3, 34
.LVL145:
.L139:
	sub	a5, a7, a4
.LBE26:
	.loc 1 626 0 discriminator 1
	blt	a6, a2, .L142
.LVL146:
.LBE24:
	.loc 1 642 0
	mov.n	a12, a5
	mov.n	a11, a4
	movi.n	a10, 0x45
	call8	btc_blufi_send_encap
.LVL147:
.L143:
	.loc 1 643 0
	mov.n	a10, a4
	call8	free
.LVL148:
	retw.n
.LFE49:
	.size	btc_blufi_send_wifi_list, .-btc_blufi_send_wifi_list
	.section	.rodata.str1.1
.LC54:
	.string	"\033[0;31mE (%d) %s: %s %d no mem\n\033[0m\n"
	.section	.text.btc_blufi_cb_deep_copy,"ax",@progbits
	.literal_position
	.literal .LC51, .L147
	.literal .LC52, __func__$11400
	.literal .LC53, .LC2
	.literal .LC55, .LC54
	.align	4
	.global	btc_blufi_cb_deep_copy
	.type	btc_blufi_cb_deep_copy, @function
btc_blufi_cb_deep_copy:
.LFB53:
	.loc 1 697 0
.LVL149:
	entry	sp, 48
.LCFI6:
.LVL150:
	.loc 1 701 0
	l8ui	a8, a2, 3
	movi.n	a5, 0x10
	addi	a8, a8, -10
	extui	a8, a8, 0, 8
	bltu	a5, a8, .L144
	l32r	a5, .LC51
	addx4	a8, a8, a5
	l32i.n	a5, a8, 0
	jx	a5
	.section	.rodata.btc_blufi_cb_deep_copy,"a",@progbits
	.align	4
	.align	4
.L147:
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L144
	.word	.L144
	.word	.L144
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L156
	.word	.L144
	.word	.L144
	.word	.L144
	.word	.L157
	.section	.text.btc_blufi_cb_deep_copy
.L156:
	.loc 1 766 0
	l32i.n	a10, a4, 4
	call8	malloc
.LVL151:
	s32i.n	a10, a3, 0
	.loc 1 767 0
	bnez.n	a10, .L167
	.loc 1 768 0 discriminator 1
	call8	esp_log_timestamp
.LVL152:
	l32r	a11, .LC53
	l8ui	a2, a2, 3
.LVL153:
	l32r	a15, .LC52
	l32r	a12, .LC55
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL154:
.L167:
	.loc 1 770 0
	l32i.n	a12, a4, 4
	l32i.n	a11, a4, 0
	l32i.n	a10, a3, 0
	j	.L169
.LVL155:
.L157:
	.loc 1 773 0
	l32i.n	a5, a4, 4
	mov.n	a10, a5
	call8	malloc
.LVL156:
	s32i.n	a10, a3, 0
	.loc 1 774 0
	bnez.n	a10, .L168
	.loc 1 775 0 discriminator 1
	call8	esp_log_timestamp
.LVL157:
	l32r	a11, .LC53
	l8ui	a2, a2, 3
.LVL158:
	l32r	a15, .LC52
	l32r	a12, .LC55
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL159:
	.loc 1 776 0 discriminator 1
	retw.n
.LVL160:
.L168:
	.loc 1 778 0
	l32i.n	a11, a4, 0
	mov.n	a12, a5
.LVL161:
.L169:
	call8	memcpy
.LVL162:
.L144:
	retw.n
.LFE53:
	.size	btc_blufi_cb_deep_copy, .-btc_blufi_cb_deep_copy
	.section	.text.btc_blufi_cb_deep_free,"ax",@progbits
	.literal_position
	.literal .LC56, .L183
	.align	4
	.global	btc_blufi_cb_deep_free
	.type	btc_blufi_cb_deep_free, @function
btc_blufi_cb_deep_free:
.LFB54:
	.loc 1 786 0
.LVL163:
	entry	sp, 32
.LCFI7:
	.loc 1 789 0
	l8ui	a9, a2, 3
	.loc 1 787 0
	l32i.n	a8, a2, 4
.LVL164:
	.loc 1 789 0
	addi	a9, a9, -10
	extui	a9, a9, 0, 8
	movi.n	a2, 0x10
.LVL165:
	bltu	a2, a9, .L180
	l32r	a2, .LC56
	addx4	a9, a9, a2
	l32i.n	a2, a9, 0
	jx	a2
	.section	.rodata.btc_blufi_cb_deep_free,"a",@progbits
	.align	4
	.align	4
.L183:
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L180
	.word	.L180
	.word	.L180
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L180
	.word	.L180
	.word	.L180
	.word	.L193
	.section	.text.btc_blufi_cb_deep_free
.L193:
	.loc 1 821 0
	l32i.n	a10, a8, 0
	call8	free
.LVL166:
.L180:
	retw.n
.LFE54:
	.size	btc_blufi_cb_deep_free, .-btc_blufi_cb_deep_free
	.section	.rodata.str1.1
.LC60:
	.string	"\033[0;31mE (%d) %s: %s UNKNOWN %d\n\033[0m\n"
	.section	.text.btc_blufi_cb_handler,"ax",@progbits
	.literal_position
	.literal .LC57, .L197
	.literal .LC58, __func__$11463
	.literal .LC59, .LC2
	.literal .LC61, .LC60
	.align	4
	.global	btc_blufi_cb_handler
	.type	btc_blufi_cb_handler, @function
btc_blufi_cb_handler:
.LFB55:
	.loc 1 829 0
.LVL167:
	entry	sp, 48
.LCFI8:
	.loc 1 832 0
	l8ui	a8, a2, 3
	movi.n	a9, 0x1a
	.loc 1 830 0
	l32i.n	a11, a2, 4
.LVL168:
	.loc 1 832 0
	bltu	a9, a8, .L195
	l32r	a9, .LC57
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.btc_blufi_cb_handler,"a",@progbits
	.align	4
	.align	4
.L197:
	.word	.L196
	.word	.L198
	.word	.L199
	.word	.L200
	.word	.L201
	.word	.L202
	.word	.L203
	.word	.L204
	.word	.L205
	.word	.L206
	.word	.L207
	.word	.L208
	.word	.L209
	.word	.L210
	.word	.L211
	.word	.L212
	.word	.L213
	.word	.L214
	.word	.L215
	.word	.L216
	.word	.L217
	.word	.L218
	.word	.L219
	.word	.L220
	.word	.L221
	.word	.L222
	.word	.L223
	.section	.text.btc_blufi_cb_handler
.L196:
	.loc 1 834 0
	movi.n	a10, 0
	j	.L225
.L198:
	.loc 1 838 0
	movi.n	a10, 1
.LVL169:
.L225:
	call8	btc_blufi_cb_to_app
.LVL170:
	.loc 1 839 0
	j	.L224
.LVL171:
.L200:
	.loc 1 842 0
	movi.n	a10, 3
	j	.L225
.L201:
	.loc 1 845 0
	movi.n	a10, 4
	j	.L225
.L199:
	.loc 1 848 0
	movi.n	a10, 2
	j	.L225
.L202:
	.loc 1 851 0
	movi.n	a11, 0
.LVL172:
	movi.n	a10, 5
	j	.L225
.LVL173:
.L203:
	.loc 1 854 0
	movi.n	a11, 0
.LVL174:
	movi.n	a10, 6
	j	.L225
.LVL175:
.L204:
	.loc 1 857 0
	movi.n	a11, 0
.LVL176:
	movi.n	a10, 7
	j	.L225
.LVL177:
.L221:
	.loc 1 860 0
	movi.n	a11, 0
.LVL178:
	movi.n	a10, 0x18
	j	.L225
.LVL179:
.L205:
	.loc 1 863 0
	movi.n	a11, 0
.LVL180:
	movi.n	a10, 8
	j	.L225
.LVL181:
.L206:
	.loc 1 866 0
	movi.n	a10, 9
	j	.L225
.L207:
	.loc 1 869 0
	movi.n	a10, 0xa
	j	.L225
.L208:
	.loc 1 872 0
	movi.n	a10, 0xb
	j	.L225
.L209:
	.loc 1 875 0
	movi.n	a10, 0xc
	j	.L225
.L210:
	.loc 1 878 0
	movi.n	a10, 0xd
	j	.L225
.L211:
	.loc 1 881 0
	movi.n	a10, 0xe
	j	.L225
.L212:
	.loc 1 884 0
	movi.n	a10, 0xf
	j	.L225
.L213:
	.loc 1 887 0
	movi.n	a10, 0x10
	j	.L225
.L214:
	.loc 1 890 0
	movi.n	a10, 0x11
	j	.L225
.L215:
	.loc 1 893 0
	movi.n	a10, 0x12
	j	.L225
.L216:
	.loc 1 896 0
	movi.n	a10, 0x13
	j	.L225
.L217:
	.loc 1 899 0
	movi.n	a10, 0x14
	j	.L225
.L218:
	.loc 1 902 0
	movi.n	a10, 0x15
	j	.L225
.L219:
	.loc 1 905 0
	movi.n	a10, 0x16
	j	.L225
.L220:
	.loc 1 908 0
	movi.n	a10, 0x17
	j	.L225
.L222:
	.loc 1 911 0
	movi.n	a10, 0x19
	j	.L225
.L223:
	.loc 1 914 0
	movi.n	a10, 0x1a
	j	.L225
.L195:
	.loc 1 917 0 discriminator 1
	call8	esp_log_timestamp
.LVL182:
	l32r	a11, .LC59
	l8ui	a8, a2, 3
	l32r	a15, .LC58
	l32r	a12, .LC61
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL183:
.L224:
	.loc 1 921 0
	mov.n	a10, a2
	call8	btc_blufi_cb_deep_free
.LVL184:
	retw.n
.LFE55:
	.size	btc_blufi_cb_handler, .-btc_blufi_cb_handler
	.section	.rodata.str1.1
.LC63:
	.string	"\033[0;31mE (%d) %s: custom data is NULL\n\033[0m\n"
.LC65:
	.string	"\033[0;31mE (%d) %s: custom data malloc error\n\033[0m\n"
	.section	.text.btc_blufi_call_deep_copy,"ax",@progbits
	.literal_position
	.literal .LC62, .LC2
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.align	4
	.global	btc_blufi_call_deep_copy
	.type	btc_blufi_call_deep_copy, @function
btc_blufi_call_deep_copy:
.LFB56:
	.loc 1 925 0
.LVL185:
	entry	sp, 32
.LCFI9:
.LVL186:
	.loc 1 929 0
	l8ui	a2, a2, 3
.LVL187:
	beqi	a2, 3, .L228
	beqi	a2, 5, .L229
	bnei	a2, 2, .L226
.LBB27:
	.loc 1 931 0
	l32i.n	a2, a4, 12
.LVL188:
	.loc 1 932 0
	movi.n	a4, 0
.LVL189:
	s32i.n	a4, a3, 16
	.loc 1 933 0
	s32i.n	a4, a3, 12
	.loc 1 935 0
	beq	a2, a4, .L226
	.loc 1 939 0
	movi.n	a11, 0x30
	movi.n	a10, 1
	call8	calloc
.LVL190:
	s32i.n	a10, a3, 12
	mov.n	a4, a10
	.loc 1 940 0
	beqz.n	a10, .L226
	.loc 1 944 0
	l8ui	a5, a2, 6
	beqz.n	a5, .L233
	.loc 1 945 0
	movi.n	a12, 6
	mov.n	a11, a2
	call8	memcpy
.LVL191:
	.loc 1 946 0
	l8ui	a5, a2, 6
	s8i	a5, a4, 6
	.loc 1 947 0
	movi.n	a5, 8
	s32i.n	a5, a3, 16
.L233:
	.loc 1 949 0
	l32i.n	a5, a2, 8
	beqz.n	a5, .L235
	.loc 1 950 0
	l32i.n	a5, a2, 12
	mov.n	a10, a5
	call8	malloc
.LVL192:
	s32i.n	a10, a4, 8
	.loc 1 951 0
	beqz.n	a10, .L235
	.loc 1 952 0
	l32i.n	a11, a2, 8
	mov.n	a12, a5
	call8	memcpy
.LVL193:
	.loc 1 953 0
	l32i.n	a8, a2, 12
	.loc 1 954 0
	l32i.n	a5, a3, 16
	.loc 1 953 0
	s32i.n	a8, a4, 12
	.loc 1 954 0
	addi.n	a8, a8, 2
	add.n	a8, a5, a8
	s32i.n	a8, a3, 16
.L235:
	.loc 1 957 0
	l32i.n	a5, a2, 16
	beqz.n	a5, .L238
	.loc 1 958 0
	l32i.n	a5, a2, 20
	mov.n	a10, a5
	call8	malloc
.LVL194:
	s32i.n	a10, a4, 16
	.loc 1 959 0
	beqz.n	a10, .L238
	.loc 1 960 0
	l32i.n	a11, a2, 16
	mov.n	a12, a5
	call8	memcpy
.LVL195:
	.loc 1 961 0
	l32i.n	a8, a2, 20
	.loc 1 962 0
	l32i.n	a5, a3, 16
	.loc 1 961 0
	s32i.n	a8, a4, 20
	.loc 1 962 0
	addi.n	a8, a8, 2
	add.n	a8, a5, a8
	s32i.n	a8, a3, 16
.L238:
	.loc 1 965 0
	l32i.n	a5, a2, 24
	beqz.n	a5, .L241
	.loc 1 966 0
	l32i.n	a5, a2, 28
	mov.n	a10, a5
	call8	malloc
.LVL196:
	s32i.n	a10, a4, 24
	.loc 1 967 0
	beqz.n	a10, .L241
	.loc 1 968 0
	l32i.n	a11, a2, 24
	mov.n	a12, a5
	call8	memcpy
.LVL197:
	.loc 1 969 0
	l32i.n	a8, a2, 28
	.loc 1 970 0
	l32i.n	a5, a3, 16
	.loc 1 969 0
	s32i.n	a8, a4, 28
	.loc 1 970 0
	addi.n	a8, a8, 2
	add.n	a8, a5, a8
	s32i.n	a8, a3, 16
.L241:
	.loc 1 973 0
	l32i.n	a5, a2, 32
	beqz.n	a5, .L244
	.loc 1 974 0
	l32i.n	a5, a2, 36
	mov.n	a10, a5
	call8	malloc
.LVL198:
	s32i.n	a10, a4, 32
	.loc 1 975 0
	beqz.n	a10, .L244
	.loc 1 976 0
	l32i.n	a11, a2, 32
	mov.n	a12, a5
	call8	memcpy
.LVL199:
	.loc 1 977 0
	l32i.n	a8, a2, 36
	.loc 1 978 0
	l32i.n	a5, a3, 16
	.loc 1 977 0
	s32i.n	a8, a4, 36
	.loc 1 978 0
	addi.n	a8, a8, 2
	add.n	a8, a5, a8
	s32i.n	a8, a3, 16
.L244:
	.loc 1 981 0
	l8ui	a5, a2, 41
	beqz.n	a5, .L246
	.loc 1 982 0
	movi.n	a5, 1
	.loc 1 984 0
	l32i.n	a8, a3, 16
	.loc 1 982 0
	s8i	a5, a4, 41
	.loc 1 983 0
	l8ui	a5, a2, 40
	.loc 1 984 0
	addi.n	a8, a8, 3
	.loc 1 983 0
	s8i	a5, a4, 40
	.loc 1 984 0
	s32i.n	a8, a3, 16
.L246:
	.loc 1 986 0
	l8ui	a5, a2, 43
	beqz.n	a5, .L247
	.loc 1 987 0
	movi.n	a5, 1
	.loc 1 989 0
	l32i.n	a8, a3, 16
	.loc 1 987 0
	s8i	a5, a4, 43
	.loc 1 988 0
	l8ui	a5, a2, 42
	.loc 1 989 0
	addi.n	a8, a8, 3
	.loc 1 988 0
	s8i	a5, a4, 42
	.loc 1 989 0
	s32i.n	a8, a3, 16
.L247:
	.loc 1 991 0
	l8ui	a5, a2, 45
	beqz.n	a5, .L226
	.loc 1 992 0
	movi.n	a5, 1
	s8i	a5, a4, 45
	.loc 1 993 0
	l8ui	a2, a2, 44
.LVL200:
	s8i	a2, a4, 44
	.loc 1 994 0
	l32i.n	a2, a3, 16
	addi.n	a2, a2, 3
	s32i.n	a2, a3, 16
	retw.n
.LVL201:
.L228:
.LBE27:
.LBB28:
	.loc 1 999 0
	l32i.n	a5, a4, 4
.LVL202:
	.loc 1 1000 0
	movi.n	a2, 0
	s32i.n	a2, a4, 4
	.loc 1 1001 0
	beq	a5, a2, .L226
	.loc 1 1001 0 discriminator 1
	l16ui	a2, a4, 0
	beqz.n	a2, .L226
	.loc 1 1004 0
	slli	a12, a2, 4
	add.n	a2, a12, a2
	slli	a2, a2, 1
	mov.n	a10, a2
	call8	malloc
.LVL203:
	s32i.n	a10, a3, 4
	.loc 1 1008 0
	mov.n	a12, a2
	mov.n	a11, a5
	.loc 1 1005 0
	bnez.n	a10, .L287
	j	.L226
.LVL204:
.L229:
.LBE28:
.LBB29:
	.loc 1 1013 0
	l32i.n	a2, a4, 0
	bnez.n	a2, .L248
	.loc 1 1014 0 discriminator 1
	call8	esp_log_timestamp
.LVL205:
	l32r	a11, .LC62
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC64
	j	.L286
.L248:
	.loc 1 1017 0
	l32i.n	a2, a4, 4
.LVL206:
	mov.n	a10, a2
	call8	malloc
.LVL207:
	s32i.n	a10, a3, 0
	.loc 1 1018 0
	bnez.n	a10, .L249
	.loc 1 1019 0 discriminator 1
	call8	esp_log_timestamp
.LVL208:
	l32r	a11, .LC62
	l32r	a12, .LC66
	mov.n	a14, a11
	mov.n	a13, a10
.L286:
	movi.n	a10, 1
	call8	esp_log_write
.LVL209:
	.loc 1 1020 0 discriminator 1
	retw.n
.L249:
	.loc 1 1022 0
	l32i.n	a11, a4, 0
	mov.n	a12, a2
.L287:
	call8	memcpy
.LVL210:
.L226:
	retw.n
.LBE29:
.LFE56:
	.size	btc_blufi_call_deep_copy, .-btc_blufi_call_deep_copy
	.section	.text.btc_blufi_call_deep_free,"ax",@progbits
	.align	4
	.global	btc_blufi_call_deep_free
	.type	btc_blufi_call_deep_free, @function
btc_blufi_call_deep_free:
.LFB57:
	.loc 1 1031 0
.LVL211:
	entry	sp, 32
.LCFI10:
	.loc 1 1032 0
	l32i.n	a8, a2, 4
.LVL212:
	.loc 1 1034 0
	l8ui	a2, a2, 3
.LVL213:
	beqi	a2, 3, .L290
	beqi	a2, 5, .L291
	bnei	a2, 2, .L288
.LBB30:
	.loc 1 1036 0
	l32i.n	a2, a8, 12
.LVL214:
	.loc 1 1038 0
	beqz.n	a2, .L288
	.loc 1 1041 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L293
	.loc 1 1042 0
	call8	free
.LVL215:
.L293:
	.loc 1 1044 0
	l32i.n	a10, a2, 16
	beqz.n	a10, .L294
	.loc 1 1045 0
	call8	free
.LVL216:
.L294:
	.loc 1 1047 0
	l32i.n	a10, a2, 24
	beqz.n	a10, .L295
	.loc 1 1048 0
	call8	free
.LVL217:
.L295:
	.loc 1 1050 0
	l32i.n	a10, a2, 32
	beqz.n	a10, .L296
	.loc 1 1051 0
	call8	free
.LVL218:
.L296:
	.loc 1 1053 0
	mov.n	a10, a2
	j	.L318
.LVL219:
.L290:
.LBE30:
.LBB31:
	.loc 1 1057 0
	l32i.n	a10, a8, 4
.LVL220:
	j	.L320
.LVL221:
.L291:
.LBE31:
.LBB32:
	.loc 1 1064 0
	l32i.n	a10, a8, 0
.L320:
.LVL222:
	.loc 1 1065 0
	beqz.n	a10, .L288
.LVL223:
.L318:
	.loc 1 1066 0
	call8	free
.LVL224:
.L288:
	retw.n
.LBE32:
.LFE57:
	.size	btc_blufi_call_deep_free, .-btc_blufi_call_deep_free
	.section	.rodata.str1.1
.LC70:
	.string	"\033[0;31mE (%d) %s: BLUFI already initialized\033[0m\n"
.LC75:
	.string	"\033[0;31mE (%d) %s: BLUFI already de-initialized\033[0m\n"
.LC78:
	.string	"\033[0;31mE (%d) %s: %s len error %d %d\n\033[0m\n"
.LC81:
	.string	"\033[0;31mE (%d) %s: %s value or value len error\033[0m\n"
.LC83:
	.string	"\033[0;31mE (%d) %s: %s mem malloc error\033[0m\n"
	.section	.text.btc_blufi_call_handler,"ax",@progbits
	.literal_position
	.literal .LC67, .L324
	.literal .LC68, blufi_env
	.literal .LC69, .LC25
	.literal .LC71, .LC70
	.literal .LC72, blufi_profile_cb
	.literal .LC73, blufi_app_uuid
	.literal .LC74, .LC2
	.literal .LC76, .LC75
	.literal .LC77, __func__$11356
	.literal .LC79, .LC78
	.literal .LC80, __func__$11389
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC85, __func__$11503
	.literal .LC86, .LC60
	.align	4
	.global	btc_blufi_call_handler
	.type	btc_blufi_call_handler, @function
btc_blufi_call_handler:
.LFB58:
	.loc 1 1076 0
.LVL225:
	entry	sp, 64
.LCFI11:
	.loc 1 1079 0
	l8ui	a3, a2, 3
	.loc 1 1077 0
	l32i.n	a4, a2, 4
.LVL226:
	.loc 1 1079 0
	bgeui	a3, 6, .L322
	l32r	a5, .LC67
	addx4	a3, a3, a5
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.btc_blufi_call_handler,"a",@progbits
	.align	4
	.align	4
.L324:
	.word	.L323
	.word	.L325
	.word	.L326
	.word	.L327
	.word	.L328
	.word	.L329
	.section	.text.btc_blufi_call_handler
.L323:
.LVL227:
.LBB43:
.LBB44:
	.loc 1 334 0
	l32r	a3, .LC68
	l8ui	a11, a3, 40
	beqz.n	a11, .L330
	.loc 1 335 0
	call8	esp_log_timestamp
.LVL228:
	l32r	a11, .LC69
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC71
	j	.L378
.LVL229:
.L330:
	.loc 1 339 0
	movi.n	a12, 0x34
	mov.n	a10, a3
	.loc 1 332 0
	l32i.n	a4, a3, 36
.LVL230:
	.loc 1 339 0
	call8	memset
.LVL231:
	.loc 1 344 0
	l32r	a11, .LC72
	l32r	a10, .LC73
	.loc 1 340 0
	s32i.n	a4, a3, 36
	.loc 1 341 0
	movi.n	a4, 0xc
	s16i	a4, a3, 26
	.loc 1 344 0
	call8	BTA_GATTS_AppRegister
.LVL232:
	j	.L331
.LVL233:
.L325:
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	.loc 1 351 0
	l32r	a3, .LC68
	l8ui	a4, a3, 40
.LVL234:
	bnez.n	a4, .L332
	.loc 1 352 0
	call8	esp_log_timestamp
.LVL235:
	l32r	a11, .LC74
	l32r	a12, .LC76
	mov.n	a14, a11
	mov.n	a13, a10
.L378:
	movi.n	a10, 1
	call8	esp_log_write
.LVL236:
	j	.L331
.LVL237:
.L332:
	.loc 1 356 0
	l16ui	a10, a3, 2
	call8	BTA_GATTS_StopService
.LVL238:
	.loc 1 357 0
	l16ui	a10, a3, 2
	call8	BTA_GATTS_DeleteService
.LVL239:
	.loc 1 359 0
	l8ui	a10, a3, 0
	call8	BTA_GATTS_AppDeregister
.LVL240:
	j	.L331
.LVL241:
.L326:
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	.loc 1 546 0
	l32i.n	a5, a4, 16
	l8ui	a8, a4, 0
.LVL242:
	addi.n	a5, a5, 3
	.loc 1 547 0
	mov.n	a10, a5
.LBE48:
.LBE47:
	.loc 1 1089 0
	l8ui	a6, a4, 8
	.loc 1 1087 0
	l32i.n	a3, a4, 12
	l8ui	a7, a4, 4
.LVL243:
.LBB50:
.LBB49:
	.loc 1 547 0
	s32i.n	a8, sp, 16
.LVL244:
	call8	malloc
.LVL245:
	mov.n	a4, a10
.LVL246:
	.loc 1 548 0
	l32i.n	a8, sp, 16
	beqz.n	a10, .L331
.LVL247:
	.loc 1 553 0
	s8i	a8, a10, 0
.LVL248:
	.loc 1 554 0
	s8i	a7, a10, 1
	.loc 1 555 0
	s8i	a6, a10, 2
	addi.n	a8, a10, 3
.LVL249:
	.loc 1 557 0
	beqz.n	a3, .L334
	.loc 1 558 0
	l8ui	a6, a3, 6
.LVL250:
	beqz.n	a6, .L335
.LVL251:
	.loc 1 559 0
	movi.n	a6, 1
	s8i	a6, a10, 3
.LVL252:
	.loc 1 560 0
	movi.n	a6, 6
	s8i	a6, a10, 4
	.loc 1 561 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, a10, 5
.LVL253:
	call8	memcpy
.LVL254:
	.loc 1 562 0
	addi.n	a8, a4, 11
.LVL255:
.L335:
	.loc 1 564 0
	l32i.n	a11, a3, 8
	beqz.n	a11, .L336
.LVL256:
	.loc 1 565 0
	movi.n	a6, 2
	s8i	a6, a8, 0
	.loc 1 566 0
	l32i.n	a6, a3, 12
	addi.n	a9, a8, 2
.LVL257:
	s8i	a6, a8, 1
	.loc 1 567 0
	mov.n	a12, a6
	mov.n	a10, a9
	call8	memcpy
.LVL258:
	.loc 1 568 0
	add.n	a8, a10, a6
.LVL259:
.L336:
	.loc 1 570 0
	l32i.n	a11, a3, 16
	beqz.n	a11, .L337
.LVL260:
	.loc 1 571 0
	movi.n	a6, 3
	s8i	a6, a8, 0
	.loc 1 572 0
	l32i.n	a6, a3, 20
	addi.n	a9, a8, 2
.LVL261:
	s8i	a6, a8, 1
	.loc 1 573 0
	mov.n	a12, a6
	mov.n	a10, a9
	call8	memcpy
.LVL262:
	.loc 1 574 0
	add.n	a8, a10, a6
.LVL263:
.L337:
	.loc 1 576 0
	l32i.n	a11, a3, 24
	beqz.n	a11, .L338
.LVL264:
	.loc 1 577 0
	movi.n	a6, 4
	s8i	a6, a8, 0
	.loc 1 578 0
	l32i.n	a6, a3, 28
	addi.n	a9, a8, 2
.LVL265:
	s8i	a6, a8, 1
	.loc 1 579 0
	mov.n	a12, a6
	mov.n	a10, a9
	call8	memcpy
.LVL266:
	.loc 1 580 0
	add.n	a8, a10, a6
.LVL267:
.L338:
	.loc 1 582 0
	l32i.n	a11, a3, 32
	beqz.n	a11, .L339
.LVL268:
	.loc 1 583 0
	movi.n	a6, 5
	s8i	a6, a8, 0
	.loc 1 584 0
	l32i.n	a6, a3, 36
	addi.n	a9, a8, 2
.LVL269:
	s8i	a6, a8, 1
	.loc 1 585 0
	mov.n	a12, a6
	mov.n	a10, a9
	call8	memcpy
.LVL270:
	.loc 1 586 0
	add.n	a8, a10, a6
.LVL271:
.L339:
	.loc 1 588 0
	l8ui	a6, a3, 41
	beqz.n	a6, .L340
.LVL272:
	.loc 1 589 0
	movi.n	a6, 7
	s8i	a6, a8, 0
.LVL273:
	.loc 1 590 0
	movi.n	a6, 1
	s8i	a6, a8, 1
	.loc 1 591 0
	l8ui	a6, a3, 40
	s8i	a6, a8, 2
	addi.n	a8, a8, 3
.LVL274:
.L340:
	.loc 1 593 0
	l8ui	a6, a3, 43
	beqz.n	a6, .L341
.LVL275:
	.loc 1 594 0
	movi.n	a6, 6
	s8i	a6, a8, 0
.LVL276:
	.loc 1 595 0
	movi.n	a6, 1
	s8i	a6, a8, 1
	.loc 1 596 0
	l8ui	a6, a3, 42
	s8i	a6, a8, 2
	addi.n	a8, a8, 3
.LVL277:
.L341:
	.loc 1 598 0
	l8ui	a6, a3, 45
	beqz.n	a6, .L334
.LVL278:
	.loc 1 599 0
	movi.n	a6, 8
	s8i	a6, a8, 0
.LVL279:
	.loc 1 600 0
	movi.n	a6, 1
	s8i	a6, a8, 1
	.loc 1 601 0
	l8ui	a3, a3, 44
.LVL280:
	s8i	a3, a8, 2
	addi.n	a8, a8, 3
.LVL281:
.L334:
	.loc 1 604 0
	sub	a3, a8, a4
	bge	a5, a3, .L342
	.loc 1 605 0
	call8	esp_log_timestamp
.LVL282:
	l32r	a11, .LC74
	l32r	a15, .LC77
	l32r	a12, .LC79
	mov.n	a13, a10
	s32i.n	a5, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL283:
.L342:
	.loc 1 608 0
	movi.n	a10, 0x3d
	mov.n	a12, a5
	mov.n	a11, a4
	call8	btc_blufi_send_encap
.LVL284:
	.loc 1 609 0
	mov.n	a10, a4
	j	.L379
.LVL285:
.L327:
.LBE49:
.LBE50:
	.loc 1 1094 0
	l32i.n	a11, a4, 4
	l16ui	a10, a4, 0
	call8	btc_blufi_send_wifi_list
.LVL286:
	.loc 1 1095 0
	j	.L331
.L328:
.LBB51:
.LBB52:
	.loc 1 664 0
	movi.n	a10, 1
	l8ui	a4, a4, 0
.LVL287:
	call8	malloc
.LVL288:
	mov.n	a3, a10
.LVL289:
	.loc 1 665 0
	beqz.n	a10, .L331
.LVL290:
	.loc 1 670 0
	s8i	a4, a10, 0
	.loc 1 675 0
	mov.n	a11, a10
	movi.n	a12, 1
	movi.n	a10, 0x49
	j	.L381
.LVL291:
.L329:
.LBE52:
.LBE51:
	.loc 1 1101 0
	l32i.n	a6, a4, 0
.LBB53:
.LBB54:
	.loc 1 681 0
	movi.n	a5, 1
	movi.n	a3, 0
	moveqz	a3, a5, a6
	extui	a3, a3, 0, 8
.LBE54:
.LBE53:
	.loc 1 1101 0
	l32i.n	a4, a4, 4
.LVL292:
.LBB56:
.LBB55:
	.loc 1 681 0
	bnez.n	a3, .L347
	moveqz	a3, a5, a4
	beqz.n	a3, .L344
.L347:
	.loc 1 682 0
	call8	esp_log_timestamp
.LVL293:
	l32r	a11, .LC74
	mov.n	a13, a10
	l32r	a15, .LC80
	mov.n	a14, a11
	l32r	a12, .LC82
	movi.n	a10, 1
	j	.L380
.LVL294:
.L344:
	.loc 1 685 0
	mov.n	a10, a4
	call8	malloc
.LVL295:
	mov.n	a3, a10
.LVL296:
	.loc 1 686 0
	bnez.n	a10, .L346
	.loc 1 687 0
	call8	esp_log_timestamp
.LVL297:
	l32r	a11, .LC74
	l32r	a15, .LC80
	l32r	a12, .LC84
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
.LVL298:
.L380:
	call8	esp_log_write
.LVL299:
	j	.L331
.LVL300:
.L346:
	.loc 1 691 0
	mov.n	a12, a4
	mov.n	a11, a6
	call8	memcpy
.LVL301:
	.loc 1 692 0
	mov.n	a12, a4
	mov.n	a11, a3
	movi.n	a10, 0x4d
.LVL302:
.L381:
	call8	btc_blufi_send_encap
.LVL303:
	.loc 1 693 0
	mov.n	a10, a3
.L379:
	call8	free
.LVL304:
	j	.L331
.LVL305:
.L322:
.LBE55:
.LBE56:
	.loc 1 1104 0 discriminator 1
	call8	esp_log_timestamp
.LVL306:
	l32r	a11, .LC74
	l8ui	a3, a2, 3
	l32r	a15, .LC85
	l32r	a12, .LC86
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL307:
.L331:
	.loc 1 1107 0
	mov.n	a10, a2
	call8	btc_blufi_call_deep_free
.LVL308:
	retw.n
.LFE58:
	.size	btc_blufi_call_handler, .-btc_blufi_call_handler
	.section	.text.btc_blufi_set_callbacks,"ax",@progbits
	.literal_position
	.literal .LC87, blufi_env
	.align	4
	.global	btc_blufi_set_callbacks
	.type	btc_blufi_set_callbacks, @function
btc_blufi_set_callbacks:
.LFB59:
	.loc 1 1111 0
.LVL309:
	entry	sp, 32
.LCFI12:
	.loc 1 1112 0
	l32r	a8, .LC87
	s32i.n	a2, a8, 36
	retw.n
.LFE59:
	.size	btc_blufi_set_callbacks, .-btc_blufi_set_callbacks
	.section	.text.btc_blufi_get_version,"ax",@progbits
	.align	4
	.global	btc_blufi_get_version
	.type	btc_blufi_get_version, @function
btc_blufi_get_version:
.LFB60:
	.loc 1 1116 0
	entry	sp, 32
.LCFI13:
	.loc 1 1118 0
	movi	a2, 0x102
	retw.n
.LFE60:
	.size	btc_blufi_get_version, .-btc_blufi_get_version
	.section	.rodata.__func__$11389,"a",@progbits
	.type	__func__$11389, @object
	.size	__func__$11389, 27
__func__$11389:
	.string	"btc_blufi_send_custom_data"
	.section	.rodata.__func__$11356,"a",@progbits
	.type	__func__$11356, @object
	.size	__func__$11356, 27
__func__$11356:
	.string	"btc_blufi_wifi_conn_report"
	.section	.rodata.__func__$11331,"a",@progbits
	.type	__func__$11331, @object
	.size	__func__$11331, 23
__func__$11331:
	.string	"btc_blufi_recv_handler"
	.section	.rodata.__func__$11503,"a",@progbits
	.type	__func__$11503, @object
	.size	__func__$11503, 23
__func__$11503:
	.string	"btc_blufi_call_handler"
	.section	.rodata.__func__$11463,"a",@progbits
	.type	__func__$11463, @object
	.size	__func__$11463, 21
__func__$11463:
	.string	"btc_blufi_cb_handler"
	.section	.rodata.__func__$11400,"a",@progbits
	.type	__func__$11400, @object
	.size	__func__$11400, 23
__func__$11400:
	.string	"btc_blufi_cb_deep_copy"
	.section	.rodata.__func__$11368,"a",@progbits
	.type	__func__$11368, @object
	.size	__func__$11368, 25
__func__$11368:
	.string	"btc_blufi_send_wifi_list"
	.section	.rodata.__func__$11341,"a",@progbits
	.type	__func__$11341, @object
	.size	__func__$11341, 21
__func__$11341:
	.string	"btc_blufi_send_encap"
	.section	.data.blufi_app_uuid,"aw",@progbits
	.align	4
	.type	blufi_app_uuid, @object
	.size	blufi_app_uuid, 20
blufi_app_uuid:
	.short	2
	.zero	2
	.short	-1
	.zero	14
	.section	.data.blufi_descr_uuid_e2p,"aw",@progbits
	.align	4
	.type	blufi_descr_uuid_e2p, @object
	.size	blufi_descr_uuid_e2p, 20
blufi_descr_uuid_e2p:
	.short	2
	.zero	2
	.short	10498
	.zero	14
	.section	.data.blufi_char_uuid_e2p,"aw",@progbits
	.align	4
	.type	blufi_char_uuid_e2p, @object
	.size	blufi_char_uuid_e2p, 20
blufi_char_uuid_e2p:
	.short	2
	.zero	2
	.short	-254
	.zero	14
	.section	.data.blufi_char_uuid_p2e,"aw",@progbits
	.align	4
	.type	blufi_char_uuid_p2e, @object
	.size	blufi_char_uuid_p2e, 20
blufi_char_uuid_p2e:
	.short	2
	.zero	2
	.short	-255
	.zero	14
	.section	.data.blufi_srvc_uuid,"aw",@progbits
	.align	4
	.type	blufi_srvc_uuid, @object
	.size	blufi_srvc_uuid, 20
blufi_srvc_uuid:
	.short	2
	.zero	2
	.short	-1
	.zero	14
	.comm	blufi_env,52,4
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
	.uleb128 0x40
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
	.uleb128 0x50
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI3-.LFB61
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x290
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI5-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI6-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI7-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI8-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI9-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI10-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI11-.LFB58
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI12-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI13-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_ble_api.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/gatt_api.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gatt_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_blufi_api.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/include/btc_blufi_prf.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/include/blufi_int.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_manage.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d0d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF436
	.byte	0xc
	.4byte	.LASF437
	.4byte	.LASF438
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x70
	.4byte	0x74
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1c
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x5
	.byte	0x22
	.4byte	0x13b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x12b
	.4byte	0x14e
	.uleb128 0x9
	.4byte	0x10f
	.4byte	0x15e
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10f
	.uleb128 0x9
	.4byte	0x10f
	.4byte	0x174
	.uleb128 0xa
	.4byte	0xbc
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x5
	.2byte	0x1a4
	.4byte	0x1a2
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x1a5
	.4byte	0x11a
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x1a6
	.4byte	0x125
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x1a7
	.4byte	0x164
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0x5
	.2byte	0x19d
	.4byte	0x1c5
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x1a2
	.4byte	0x11a
	.byte	0
	.uleb128 0xf
	.string	"uu"
	.byte	0x5
	.2byte	0x1a8
	.4byte	0x174
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x1aa
	.4byte	0x1a2
	.uleb128 0x9
	.4byte	0x94
	.4byte	0x1e1
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.2byte	0x1c2
	.4byte	0x309
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x2e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.2byte	0x6ec
	.4byte	0x341
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x209
	.4byte	0x10f
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x9
	.byte	0x51
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x139
	.4byte	0x10f
	.uleb128 0x11
	.2byte	0x262
	.byte	0x9
	.2byte	0x13d
	.4byte	0x3c3
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x13e
	.4byte	0x11a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x13f
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x140
	.4byte	0x11a
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x9
	.2byte	0x141
	.4byte	0x11a
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x142
	.4byte	0x35e
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x143
	.4byte	0x3c3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.4byte	0x10f
	.4byte	0x3d4
	.uleb128 0x13
	.4byte	0xbc
	.2byte	0x257
	.byte	0
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x144
	.4byte	0x36a
	.uleb128 0x14
	.2byte	0x262
	.byte	0x9
	.2byte	0x156
	.4byte	0x403
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x158
	.4byte	0x3d4
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x15a
	.4byte	0x11a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x15c
	.4byte	0x3e0
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x166
	.4byte	0x10f
	.uleb128 0xe
	.byte	0x6
	.byte	0x9
	.2byte	0x169
	.4byte	0x459
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x16a
	.4byte	0x11a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x16b
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x16c
	.4byte	0x130
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x16d
	.4byte	0x130
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x16e
	.4byte	0x41b
	.uleb128 0x11
	.2byte	0x260
	.byte	0x9
	.2byte	0x171
	.4byte	0x4c0
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x172
	.4byte	0x11a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x173
	.4byte	0x11a
	.byte	0x2
	.uleb128 0xf
	.string	"len"
	.byte	0x9
	.2byte	0x174
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x175
	.4byte	0x3c3
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x176
	.4byte	0x130
	.2byte	0x25e
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x177
	.4byte	0x130
	.2byte	0x25f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x178
	.4byte	0x465
	.uleb128 0x14
	.2byte	0x260
	.byte	0x9
	.2byte	0x17b
	.4byte	0x513
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x17c
	.4byte	0x459
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x17e
	.4byte	0x4c0
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x181
	.4byte	0x11a
	.uleb128 0x16
	.string	"mtu"
	.byte	0x9
	.2byte	0x182
	.4byte	0x11a
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x183
	.4byte	0x40f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x184
	.4byte	0x4cc
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.2byte	0x188
	.4byte	0x54b
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xa
	.byte	0x8d
	.4byte	0x10f
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xa
	.byte	0xf4
	.4byte	0x11a
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x1d5
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x1d6
	.4byte	0x347
	.uleb128 0x8
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x212
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x218
	.4byte	0x403
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x227
	.4byte	0x513
	.uleb128 0xe
	.byte	0x1c
	.byte	0xa
	.2byte	0x229
	.4byte	0x60f
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x22a
	.4byte	0x54b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x22b
	.4byte	0x142
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x22c
	.4byte	0x125
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x22d
	.4byte	0x11a
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x22e
	.4byte	0x11a
	.byte	0xe
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x22f
	.4byte	0x60f
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x230
	.4byte	0x11a
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x231
	.4byte	0x15e
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x591
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x232
	.4byte	0x59d
	.uleb128 0xe
	.byte	0x18
	.byte	0xa
	.2byte	0x234
	.4byte	0x652
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x235
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x236
	.4byte	0x54b
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x237
	.4byte	0x1c5
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x238
	.4byte	0x621
	.uleb128 0xe
	.byte	0x1c
	.byte	0xa
	.2byte	0x23b
	.4byte	0x6b6
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x23c
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x23d
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x23e
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x23f
	.4byte	0x130
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x240
	.4byte	0x54b
	.byte	0x7
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x241
	.4byte	0x1c5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x242
	.4byte	0x65e
	.uleb128 0xe
	.byte	0x1c
	.byte	0xa
	.2byte	0x244
	.4byte	0x70d
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x245
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x246
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x247
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x248
	.4byte	0x54b
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x249
	.4byte	0x1c5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x24a
	.4byte	0x6c2
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.2byte	0x24b
	.4byte	0x757
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x24c
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x24d
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x24e
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x24f
	.4byte	0x54b
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x250
	.4byte	0x719
	.uleb128 0xe
	.byte	0x6
	.byte	0xa
	.2byte	0x252
	.4byte	0x794
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x253
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x254
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x255
	.4byte	0x54b
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x256
	.4byte	0x763
	.uleb128 0xe
	.byte	0xe
	.byte	0xa
	.2byte	0x259
	.4byte	0x7eb
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x25a
	.4byte	0x56d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x25b
	.4byte	0x142
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x25c
	.4byte	0x11a
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x25d
	.4byte	0x556
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x25e
	.4byte	0x579
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x25f
	.4byte	0x7a0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.2byte	0x261
	.4byte	0x81b
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x262
	.4byte	0x11a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x263
	.4byte	0x130
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x264
	.4byte	0x7f7
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.2byte	0x266
	.4byte	0x84b
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x267
	.4byte	0x11a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x268
	.4byte	0x54b
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x269
	.4byte	0x827
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.2byte	0x26b
	.4byte	0x87b
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x26c
	.4byte	0x54b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x26d
	.4byte	0x11a
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x26e
	.4byte	0x857
	.uleb128 0xe
	.byte	0x2
	.byte	0xa
	.2byte	0x270
	.4byte	0x8ab
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x271
	.4byte	0x54b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x272
	.4byte	0x56d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x273
	.4byte	0x887
	.uleb128 0xe
	.byte	0x2
	.byte	0xa
	.2byte	0x275
	.4byte	0x8db
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x276
	.4byte	0x54b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x277
	.4byte	0x56d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x278
	.4byte	0x8b7
	.uleb128 0xe
	.byte	0x2
	.byte	0xa
	.2byte	0x27a
	.4byte	0x90b
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x27b
	.4byte	0x54b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x27c
	.4byte	0x56d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x27d
	.4byte	0x8e7
	.uleb128 0xc
	.byte	0x1c
	.byte	0xa
	.2byte	0x27f
	.4byte	0x9c9
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x280
	.4byte	0x652
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x281
	.4byte	0x6b6
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x282
	.4byte	0x794
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x283
	.4byte	0x54b
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x284
	.4byte	0x70d
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x287
	.4byte	0x757
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x288
	.4byte	0x615
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x289
	.4byte	0x7eb
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x28a
	.4byte	0x81b
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x28b
	.4byte	0x84b
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x28c
	.4byte	0x87b
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x28d
	.4byte	0x8db
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x28e
	.4byte	0x90b
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x28f
	.4byte	0x8ab
	.byte	0
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x291
	.4byte	0x917
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x17
	.4byte	.LASF269
	.byte	0x8
	.byte	0xb
	.byte	0x1a
	.4byte	0xa24
	.uleb128 0x18
	.string	"sig"
	.byte	0xb
	.byte	0x1b
	.4byte	0x94
	.byte	0
	.uleb128 0x18
	.string	"aid"
	.byte	0xb
	.byte	0x1c
	.4byte	0x94
	.byte	0x1
	.uleb128 0x18
	.string	"pid"
	.byte	0xb
	.byte	0x1d
	.4byte	0x94
	.byte	0x2
	.uleb128 0x18
	.string	"act"
	.byte	0xb
	.byte	0x1e
	.4byte	0x94
	.byte	0x3
	.uleb128 0x18
	.string	"arg"
	.byte	0xb
	.byte	0x1f
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0xb
	.byte	0x20
	.4byte	0x9db
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x27
	.4byte	0xa4e
	.uleb128 0x7
	.4byte	.LASF166
	.byte	0
	.uleb128 0x7
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF168
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x2d
	.4byte	0xac1
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0
	.uleb128 0x7
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF175
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF176
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF178
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF179
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF180
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF181
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF182
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF183
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF184
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF185
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa24
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0xc
	.byte	0x69
	.4byte	0x1d1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x1c
	.4byte	0xafd
	.uleb128 0x7
	.4byte	.LASF187
	.byte	0
	.uleb128 0x7
	.4byte	.LASF188
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF189
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF190
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF191
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0xd
	.byte	0x22
	.4byte	0xad2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x37
	.4byte	0xb3f
	.uleb128 0x7
	.4byte	.LASF193
	.byte	0
	.uleb128 0x7
	.4byte	.LASF194
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF195
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF196
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF197
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF199
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0xd
	.byte	0x3f
	.4byte	0xb08
	.uleb128 0x9
	.4byte	0x94
	.4byte	0xb5a
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x1b
	.4byte	0xc09
	.uleb128 0x7
	.4byte	.LASF201
	.byte	0
	.uleb128 0x7
	.4byte	.LASF202
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF203
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF204
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF205
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF207
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF208
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF210
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF211
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF212
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF213
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF214
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF215
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF216
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF217
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF218
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF219
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF220
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF221
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF222
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF223
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF224
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF225
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF226
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF227
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF228
	.byte	0xe
	.byte	0x38
	.4byte	0xb5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x3b
	.4byte	0xc2d
	.uleb128 0x7
	.4byte	.LASF229
	.byte	0
	.uleb128 0x7
	.4byte	.LASF230
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0xe
	.byte	0x3e
	.4byte	0xc14
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x41
	.4byte	0xc51
	.uleb128 0x7
	.4byte	.LASF232
	.byte	0
	.uleb128 0x7
	.4byte	.LASF233
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0xe
	.byte	0x44
	.4byte	0xc38
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x47
	.4byte	0xc75
	.uleb128 0x7
	.4byte	.LASF235
	.byte	0
	.uleb128 0x7
	.4byte	.LASF236
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF237
	.byte	0xe
	.byte	0x4a
	.4byte	0xc5c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x4c
	.4byte	0xcc9
	.uleb128 0x7
	.4byte	.LASF238
	.byte	0
	.uleb128 0x7
	.4byte	.LASF239
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF240
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF241
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF242
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF244
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF245
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF246
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF247
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0xe
	.byte	0x57
	.4byte	0xc80
	.uleb128 0x19
	.byte	0x30
	.byte	0xe
	.byte	0x5c
	.4byte	0xd9d
	.uleb128 0x1a
	.4byte	.LASF249
	.byte	0xe
	.byte	0x5e
	.4byte	0x1d1
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF250
	.byte	0xe
	.byte	0x5f
	.4byte	0x13b
	.byte	0x6
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0xe
	.byte	0x60
	.4byte	0x341
	.byte	0x8
	.uleb128 0x1a
	.4byte	.LASF252
	.byte	0xe
	.byte	0x61
	.4byte	0x62
	.byte	0xc
	.uleb128 0x1a
	.4byte	.LASF253
	.byte	0xe
	.byte	0x62
	.4byte	0x341
	.byte	0x10
	.uleb128 0x1a
	.4byte	.LASF254
	.byte	0xe
	.byte	0x63
	.4byte	0x62
	.byte	0x14
	.uleb128 0x1a
	.4byte	.LASF255
	.byte	0xe
	.byte	0x64
	.4byte	0x341
	.byte	0x18
	.uleb128 0x1a
	.4byte	.LASF256
	.byte	0xe
	.byte	0x65
	.4byte	0x62
	.byte	0x1c
	.uleb128 0x1a
	.4byte	.LASF257
	.byte	0xe
	.byte	0x66
	.4byte	0x341
	.byte	0x20
	.uleb128 0x1a
	.4byte	.LASF258
	.byte	0xe
	.byte	0x67
	.4byte	0x62
	.byte	0x24
	.uleb128 0x1a
	.4byte	.LASF259
	.byte	0xe
	.byte	0x68
	.4byte	0x94
	.byte	0x28
	.uleb128 0x1a
	.4byte	.LASF260
	.byte	0xe
	.byte	0x69
	.4byte	0x13b
	.byte	0x29
	.uleb128 0x1a
	.4byte	.LASF261
	.byte	0xe
	.byte	0x6a
	.4byte	0x94
	.byte	0x2a
	.uleb128 0x1a
	.4byte	.LASF262
	.byte	0xe
	.byte	0x6b
	.4byte	0x13b
	.byte	0x2b
	.uleb128 0x1a
	.4byte	.LASF263
	.byte	0xe
	.byte	0x6c
	.4byte	0x94
	.byte	0x2c
	.uleb128 0x1a
	.4byte	.LASF264
	.byte	0xe
	.byte	0x6d
	.4byte	0x13b
	.byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0xe
	.byte	0x6e
	.4byte	0xcd4
	.uleb128 0x19
	.byte	0x22
	.byte	0xe
	.byte	0x71
	.4byte	0xdc9
	.uleb128 0x1a
	.4byte	.LASF266
	.byte	0xe
	.byte	0x72
	.4byte	0xb4a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF267
	.byte	0xe
	.byte	0x73
	.4byte	0x89
	.byte	0x21
	.byte	0
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0xe
	.byte	0x74
	.4byte	0xda8
	.uleb128 0x17
	.4byte	.LASF270
	.byte	0x4
	.byte	0xe
	.byte	0x7d
	.4byte	0xded
	.uleb128 0x1a
	.4byte	.LASF271
	.byte	0xe
	.byte	0x7e
	.4byte	0xc51
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF272
	.byte	0x4
	.byte	0xe
	.byte	0x84
	.4byte	0xe06
	.uleb128 0x1a
	.4byte	.LASF271
	.byte	0xe
	.byte	0x85
	.4byte	0xc75
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF273
	.byte	0x4
	.byte	0xe
	.byte	0x8b
	.4byte	0xe1f
	.uleb128 0x1a
	.4byte	.LASF274
	.byte	0xe
	.byte	0x8c
	.4byte	0xafd
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF275
	.byte	0xa
	.byte	0xe
	.byte	0x92
	.4byte	0xe50
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0xe
	.byte	0x93
	.4byte	0xac7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0xe
	.byte	0x94
	.4byte	0x94
	.byte	0x6
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x95
	.4byte	0x9f
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF276
	.byte	0x6
	.byte	0xe
	.byte	0x9b
	.4byte	0xe69
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0xe
	.byte	0x9c
	.4byte	0xac7
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF277
	.byte	0x6
	.byte	0xe
	.byte	0xa5
	.4byte	0xe82
	.uleb128 0x1a
	.4byte	.LASF278
	.byte	0xe
	.byte	0xa6
	.4byte	0x1d1
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF279
	.byte	0x8
	.byte	0xe
	.byte	0xac
	.4byte	0xea7
	.uleb128 0x1a
	.4byte	.LASF266
	.byte	0xe
	.byte	0xad
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF280
	.byte	0xe
	.byte	0xae
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF281
	.byte	0x8
	.byte	0xe
	.byte	0xb5
	.4byte	0xecc
	.uleb128 0x1a
	.4byte	.LASF282
	.byte	0xe
	.byte	0xb6
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF283
	.byte	0xe
	.byte	0xb7
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF284
	.byte	0x8
	.byte	0xe
	.byte	0xbd
	.4byte	0xef1
	.uleb128 0x1a
	.4byte	.LASF266
	.byte	0xe
	.byte	0xbe
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF280
	.byte	0xe
	.byte	0xbf
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF285
	.byte	0x8
	.byte	0xe
	.byte	0xc6
	.4byte	0xf16
	.uleb128 0x1a
	.4byte	.LASF282
	.byte	0xe
	.byte	0xc7
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF283
	.byte	0xe
	.byte	0xc8
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF286
	.byte	0x4
	.byte	0xe
	.byte	0xce
	.4byte	0xf2f
	.uleb128 0x1a
	.4byte	.LASF287
	.byte	0xe
	.byte	0xcf
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF288
	.byte	0x4
	.byte	0xe
	.byte	0xd6
	.4byte	0xf48
	.uleb128 0x1a
	.4byte	.LASF289
	.byte	0xe
	.byte	0xd7
	.4byte	0xb3f
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF290
	.byte	0x1
	.byte	0xe
	.byte	0xde
	.4byte	0xf61
	.uleb128 0x1a
	.4byte	.LASF291
	.byte	0xe
	.byte	0xdf
	.4byte	0x94
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF292
	.byte	0x8
	.byte	0xe
	.byte	0xe5
	.4byte	0xf86
	.uleb128 0x1a
	.4byte	.LASF293
	.byte	0xe
	.byte	0xe6
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF294
	.byte	0xe
	.byte	0xe7
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF295
	.byte	0x8
	.byte	0xe
	.byte	0xed
	.4byte	0xfab
	.uleb128 0x1a
	.4byte	.LASF296
	.byte	0xe
	.byte	0xee
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF297
	.byte	0xe
	.byte	0xef
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF298
	.byte	0x8
	.byte	0xe
	.byte	0xf5
	.4byte	0xfd0
	.uleb128 0x1a
	.4byte	.LASF296
	.byte	0xe
	.byte	0xf6
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF297
	.byte	0xe
	.byte	0xf7
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF299
	.byte	0x8
	.byte	0xe
	.byte	0xfd
	.4byte	0xff5
	.uleb128 0x1a
	.4byte	.LASF296
	.byte	0xe
	.byte	0xfe
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF297
	.byte	0xe
	.byte	0xff
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF300
	.byte	0x8
	.byte	0xe
	.2byte	0x105
	.4byte	0x101d
	.uleb128 0x12
	.4byte	.LASF301
	.byte	0xe
	.2byte	0x106
	.4byte	0x341
	.byte	0
	.uleb128 0x12
	.4byte	.LASF302
	.byte	0xe
	.2byte	0x107
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF303
	.byte	0x8
	.byte	0xe
	.2byte	0x10c
	.4byte	0x1045
	.uleb128 0x12
	.4byte	.LASF301
	.byte	0xe
	.2byte	0x10d
	.4byte	0x341
	.byte	0
	.uleb128 0x12
	.4byte	.LASF302
	.byte	0xe
	.2byte	0x10e
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF304
	.byte	0x4
	.byte	0xe
	.2byte	0x114
	.4byte	0x1060
	.uleb128 0x12
	.4byte	.LASF271
	.byte	0xe
	.2byte	0x115
	.4byte	0xcc9
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF305
	.byte	0x8
	.byte	0xe
	.2byte	0x11b
	.4byte	0x1088
	.uleb128 0x12
	.4byte	.LASF306
	.byte	0xe
	.2byte	0x11c
	.4byte	0x341
	.byte	0
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xe
	.2byte	0x11d
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.byte	0xc
	.byte	0xe
	.byte	0x79
	.4byte	0x117c
	.uleb128 0x1d
	.4byte	.LASF307
	.byte	0xe
	.byte	0x7f
	.4byte	0xdd4
	.uleb128 0x1d
	.4byte	.LASF308
	.byte	0xe
	.byte	0x86
	.4byte	0xded
	.uleb128 0x1d
	.4byte	.LASF309
	.byte	0xe
	.byte	0x8d
	.4byte	0xe06
	.uleb128 0x1d
	.4byte	.LASF310
	.byte	0xe
	.byte	0x96
	.4byte	0xe1f
	.uleb128 0x1d
	.4byte	.LASF311
	.byte	0xe
	.byte	0x9d
	.4byte	0xe50
	.uleb128 0x1d
	.4byte	.LASF249
	.byte	0xe
	.byte	0xa7
	.4byte	0xe69
	.uleb128 0x1d
	.4byte	.LASF251
	.byte	0xe
	.byte	0xaf
	.4byte	0xe82
	.uleb128 0x1d
	.4byte	.LASF253
	.byte	0xe
	.byte	0xb8
	.4byte	0xea7
	.uleb128 0x1d
	.4byte	.LASF255
	.byte	0xe
	.byte	0xc0
	.4byte	0xecc
	.uleb128 0x1d
	.4byte	.LASF257
	.byte	0xe
	.byte	0xc9
	.4byte	0xef1
	.uleb128 0x1d
	.4byte	.LASF261
	.byte	0xe
	.byte	0xd0
	.4byte	0xf16
	.uleb128 0x1d
	.4byte	.LASF312
	.byte	0xe
	.byte	0xd8
	.4byte	0xf2f
	.uleb128 0x1d
	.4byte	.LASF263
	.byte	0xe
	.byte	0xe0
	.4byte	0xf48
	.uleb128 0x1d
	.4byte	.LASF313
	.byte	0xe
	.byte	0xe8
	.4byte	0xf61
	.uleb128 0x1e
	.string	"ca"
	.byte	0xe
	.byte	0xf0
	.4byte	0xf86
	.uleb128 0x1d
	.4byte	.LASF314
	.byte	0xe
	.byte	0xf8
	.4byte	0xfab
	.uleb128 0xd
	.4byte	.LASF315
	.byte	0xe
	.2byte	0x100
	.4byte	0xfd0
	.uleb128 0xd
	.4byte	.LASF316
	.byte	0xe
	.2byte	0x108
	.4byte	0xff5
	.uleb128 0xd
	.4byte	.LASF317
	.byte	0xe
	.2byte	0x10f
	.4byte	0x101d
	.uleb128 0xd
	.4byte	.LASF318
	.byte	0xe
	.2byte	0x116
	.4byte	0x1045
	.uleb128 0xd
	.4byte	.LASF319
	.byte	0xe
	.2byte	0x11e
	.4byte	0x1060
	.byte	0
	.uleb128 0x8
	.4byte	.LASF320
	.byte	0xe
	.2byte	0x11f
	.4byte	0x1088
	.uleb128 0x8
	.4byte	.LASF321
	.byte	0xe
	.2byte	0x126
	.4byte	0x1194
	.uleb128 0xb
	.byte	0x4
	.4byte	0x119a
	.uleb128 0x1f
	.4byte	0x11aa
	.uleb128 0x20
	.4byte	0xc09
	.uleb128 0x20
	.4byte	0x11aa
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x117c
	.uleb128 0x8
	.4byte	.LASF322
	.byte	0xe
	.2byte	0x131
	.4byte	0x11bc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11c2
	.uleb128 0x1f
	.4byte	0x11e1
	.uleb128 0x20
	.4byte	0x341
	.uleb128 0x20
	.4byte	0x62
	.uleb128 0x20
	.4byte	0x11e1
	.uleb128 0x20
	.4byte	0x11e7
	.uleb128 0x20
	.4byte	0x11ed
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x341
	.uleb128 0xb
	.byte	0x4
	.4byte	0x62
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x8
	.4byte	.LASF323
	.byte	0xe
	.2byte	0x13a
	.4byte	0x11ff
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1205
	.uleb128 0x21
	.4byte	0x62
	.4byte	0x121e
	.uleb128 0x20
	.4byte	0x94
	.uleb128 0x20
	.4byte	0x341
	.uleb128 0x20
	.4byte	0x62
	.byte	0
	.uleb128 0x8
	.4byte	.LASF324
	.byte	0xe
	.2byte	0x143
	.4byte	0x11ff
	.uleb128 0x8
	.4byte	.LASF325
	.byte	0xe
	.2byte	0x14b
	.4byte	0x1236
	.uleb128 0xb
	.byte	0x4
	.4byte	0x123c
	.uleb128 0x21
	.4byte	0x9f
	.4byte	0x1255
	.uleb128 0x20
	.4byte	0x94
	.uleb128 0x20
	.4byte	0x341
	.uleb128 0x20
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0xe
	.2byte	0x150
	.4byte	0x12a0
	.uleb128 0x12
	.4byte	.LASF326
	.byte	0xe
	.2byte	0x151
	.4byte	0x1188
	.byte	0
	.uleb128 0x12
	.4byte	.LASF327
	.byte	0xe
	.2byte	0x152
	.4byte	0x11b0
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0xe
	.2byte	0x153
	.4byte	0x11f3
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF329
	.byte	0xe
	.2byte	0x154
	.4byte	0x121e
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xe
	.2byte	0x155
	.4byte	0x122a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF331
	.byte	0xe
	.2byte	0x156
	.4byte	0x1255
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
	.byte	0xf
	.byte	0x16
	.4byte	0x12dd
	.uleb128 0x7
	.4byte	.LASF332
	.byte	0
	.uleb128 0x7
	.4byte	.LASF333
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF334
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF335
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF336
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF337
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	.LASF338
	.byte	0x14
	.byte	0xf
	.byte	0x20
	.4byte	0x1326
	.uleb128 0x1a
	.4byte	.LASF339
	.byte	0xf
	.byte	0x21
	.4byte	0xafd
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF340
	.byte	0xf
	.byte	0x22
	.4byte	0xc2d
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF341
	.byte	0xf
	.byte	0x23
	.4byte	0x94
	.byte	0x8
	.uleb128 0x1a
	.4byte	.LASF342
	.byte	0xf
	.byte	0x24
	.4byte	0x1326
	.byte	0xc
	.uleb128 0x1a
	.4byte	.LASF343
	.byte	0xf
	.byte	0x25
	.4byte	0x62
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9d
	.uleb128 0x17
	.4byte	.LASF344
	.byte	0x8
	.byte	0xf
	.byte	0x2a
	.4byte	0x1351
	.uleb128 0x1a
	.4byte	.LASF345
	.byte	0xf
	.byte	0x2b
	.4byte	0x9f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF346
	.byte	0xf
	.byte	0x2c
	.4byte	0x1351
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xdc9
	.uleb128 0x17
	.4byte	.LASF347
	.byte	0x4
	.byte	0xf
	.byte	0x31
	.4byte	0x1370
	.uleb128 0x1a
	.4byte	.LASF271
	.byte	0xf
	.byte	0x32
	.4byte	0xcc9
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF348
	.byte	0x8
	.byte	0xf
	.byte	0x37
	.4byte	0x1395
	.uleb128 0x1a
	.4byte	.LASF306
	.byte	0xf
	.byte	0x38
	.4byte	0x341
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0xf
	.byte	0x39
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.byte	0x14
	.byte	0xf
	.byte	0x1f
	.4byte	0x13ca
	.uleb128 0x1d
	.4byte	.LASF349
	.byte	0xf
	.byte	0x26
	.4byte	0x12dd
	.uleb128 0x1d
	.4byte	.LASF350
	.byte	0xf
	.byte	0x2d
	.4byte	0x132c
	.uleb128 0x1d
	.4byte	.LASF351
	.byte	0xf
	.byte	0x33
	.4byte	0x1357
	.uleb128 0x1d
	.4byte	.LASF319
	.byte	0xf
	.byte	0x3a
	.4byte	0x1370
	.byte	0
	.uleb128 0x2
	.4byte	.LASF352
	.byte	0xf
	.byte	0x3b
	.4byte	0x1395
	.uleb128 0x19
	.byte	0x34
	.byte	0x10
	.byte	0x17
	.4byte	0x14e6
	.uleb128 0x1a
	.4byte	.LASF353
	.byte	0x10
	.byte	0x19
	.4byte	0x347
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF354
	.byte	0x10
	.byte	0x1a
	.4byte	0x10f
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF355
	.byte	0x10
	.byte	0x1b
	.4byte	0x11a
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF356
	.byte	0x10
	.byte	0x1c
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF357
	.byte	0x10
	.byte	0x1d
	.4byte	0x11a
	.byte	0x6
	.uleb128 0x1a
	.4byte	.LASF358
	.byte	0x10
	.byte	0x1e
	.4byte	0x11a
	.byte	0x8
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x10
	.byte	0x1f
	.4byte	0x11a
	.byte	0xa
	.uleb128 0x1a
	.4byte	.LASF359
	.byte	0x10
	.byte	0x20
	.4byte	0x130
	.byte	0xc
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x10
	.byte	0x21
	.4byte	0x142
	.byte	0xd
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x10
	.byte	0x22
	.4byte	0x125
	.byte	0x14
	.uleb128 0x1a
	.4byte	.LASF158
	.byte	0x10
	.byte	0x23
	.4byte	0x10f
	.byte	0x18
	.uleb128 0x1a
	.4byte	.LASF360
	.byte	0x10
	.byte	0x24
	.4byte	0x11a
	.byte	0x1a
	.uleb128 0x1a
	.4byte	.LASF361
	.byte	0x10
	.byte	0x26
	.4byte	0x341
	.byte	0x1c
	.uleb128 0x1a
	.4byte	.LASF362
	.byte	0x10
	.byte	0x27
	.4byte	0x62
	.byte	0x20
	.uleb128 0x18
	.string	"cbs"
	.byte	0x10
	.byte	0x29
	.4byte	0x14e6
	.byte	0x24
	.uleb128 0x1a
	.4byte	.LASF363
	.byte	0x10
	.byte	0x2a
	.4byte	0x130
	.byte	0x28
	.uleb128 0x1a
	.4byte	.LASF364
	.byte	0x10
	.byte	0x2b
	.4byte	0x94
	.byte	0x29
	.uleb128 0x1a
	.4byte	.LASF365
	.byte	0x10
	.byte	0x2c
	.4byte	0x94
	.byte	0x2a
	.uleb128 0x1a
	.4byte	.LASF366
	.byte	0x10
	.byte	0x2d
	.4byte	0x94
	.byte	0x2b
	.uleb128 0x1a
	.4byte	.LASF367
	.byte	0x10
	.byte	0x2e
	.4byte	0x341
	.byte	0x2c
	.uleb128 0x1a
	.4byte	.LASF368
	.byte	0x10
	.byte	0x2f
	.4byte	0x9f
	.byte	0x30
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x10
	.byte	0x30
	.4byte	0x9f
	.byte	0x32
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12a0
	.uleb128 0x2
	.4byte	.LASF369
	.byte	0x10
	.byte	0x31
	.4byte	0x13d5
	.uleb128 0x17
	.4byte	.LASF370
	.byte	0x4
	.byte	0x10
	.byte	0x34
	.4byte	0x153f
	.uleb128 0x1a
	.4byte	.LASF371
	.byte	0x10
	.byte	0x35
	.4byte	0x94
	.byte	0
	.uleb128 0x18
	.string	"fc"
	.byte	0x10
	.byte	0x36
	.4byte	0x94
	.byte	0x1
	.uleb128 0x18
	.string	"seq"
	.byte	0x10
	.byte	0x37
	.4byte	0x94
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x10
	.byte	0x38
	.4byte	0x94
	.byte	0x3
	.uleb128 0x1a
	.4byte	.LASF306
	.byte	0x10
	.byte	0x39
	.4byte	0x153f
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x94
	.4byte	0x154e
	.uleb128 0x22
	.4byte	0xbc
	.byte	0
	.uleb128 0x23
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x15b1
	.uleb128 0x24
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x181
	.4byte	0x341
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x181
	.4byte	0x62
	.uleb128 0x26
	.string	"hdr"
	.byte	0x1
	.2byte	0x183
	.4byte	0x15b1
	.uleb128 0x27
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x184
	.4byte	0x9f
	.uleb128 0x27
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x184
	.4byte	0x9f
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x185
	.4byte	0x62
	.uleb128 0x28
	.4byte	.LASF374
	.4byte	0x15c7
	.4byte	.LASF378
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x14f7
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x15c7
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x16
	.byte	0
	.uleb128 0x29
	.4byte	0x15b7
	.uleb128 0x2a
	.4byte	.LASF386
	.byte	0x1
	.byte	0x47
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1630
	.uleb128 0x2b
	.4byte	.LASF375
	.byte	0x1
	.byte	0x47
	.4byte	0xc09
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF376
	.byte	0x1
	.byte	0x47
	.4byte	0x11aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF377
	.byte	0x1
	.byte	0x49
	.4byte	0x1188
	.4byte	.LLST0
	.uleb128 0x2d
	.4byte	.LVL1
	.4byte	0x2c23
	.4byte	0x161d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1693
	.uleb128 0x31
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x176
	.4byte	0xcc9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.string	"msg"
	.byte	0x1
	.2byte	0x178
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x17c
	.4byte	0x117c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.4byte	.LVL5
	.4byte	0x2c2e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x16c
	.byte	0x1
	.4byte	0x16dd
	.uleb128 0x25
	.string	"pkt"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x341
	.uleb128 0x24
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x16c
	.4byte	0x62
	.uleb128 0x27
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x16e
	.4byte	0x11a
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x16f
	.4byte	0x11a
	.uleb128 0x26
	.string	"rsp"
	.byte	0x1
	.2byte	0x170
	.4byte	0x13b
	.byte	0
	.uleb128 0x30
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x1cb
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191a
	.uleb128 0x31
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x341
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.string	"hdr"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x15b1
	.4byte	.LLST1
	.uleb128 0x36
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x33
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x37
	.4byte	.LASF374
	.4byte	0x192a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11341
	.uleb128 0x38
	.4byte	0x1693
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x211
	.4byte	0x17cc
	.uleb128 0x39
	.4byte	0x16ac
	.4byte	.LLST4
	.uleb128 0x39
	.4byte	0x16a0
	.4byte	.LLST5
	.uleb128 0x3a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x3b
	.4byte	0x16b8
	.4byte	.LLST6
	.uleb128 0x3b
	.4byte	0x16c4
	.4byte	.LLST7
	.uleb128 0x3b
	.4byte	0x16d0
	.4byte	.LLST8
	.uleb128 0x34
	.4byte	.LVL33
	.4byte	0x2c39
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL9
	.4byte	0x2c45
	.uleb128 0x2d
	.4byte	.LVL11
	.4byte	0x2c50
	.4byte	0x17f5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0x2c45
	.4byte	0x1809
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 6
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL15
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL16
	.4byte	0x2c64
	.4byte	0x1849
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11341
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL17
	.4byte	0x2c50
	.4byte	0x1872
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL18
	.4byte	0x1882
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 2
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL19
	.4byte	0x1892
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 2
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL20
	.4byte	0x18a2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL24
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0x2c64
	.4byte	0x18e2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11341
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL26
	.4byte	0x1630
	.4byte	0x18f5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL27
	.4byte	0x2c6f
	.4byte	0x1909
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL34
	.4byte	0x2c6f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x192a
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x14
	.byte	0
	.uleb128 0x29
	.4byte	0x191a
	.uleb128 0x23
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x286
	.byte	0x1
	.4byte	0x1961
	.uleb128 0x25
	.string	"seq"
	.byte	0x1
	.2byte	0x286
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x288
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x289
	.4byte	0x94
	.byte	0
	.uleb128 0x3e
	.4byte	0x154e
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf8
	.uleb128 0x39
	.4byte	0x155b
	.4byte	.LLST9
	.uleb128 0x3f
	.4byte	0x1567
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x1567
	.byte	0x9f
	.uleb128 0x3b
	.4byte	0x1573
	.4byte	.LLST10
	.uleb128 0x3b
	.4byte	0x157f
	.4byte	.LLST11
	.uleb128 0x3b
	.4byte	0x158b
	.4byte	.LLST12
	.uleb128 0x3b
	.4byte	0x1597
	.4byte	.LLST13
	.uleb128 0x40
	.4byte	0x15a3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x38
	.4byte	0x192f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x1a0b
	.uleb128 0x39
	.4byte	0x193c
	.4byte	.LLST14
	.uleb128 0x3a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x3b
	.4byte	0x1948
	.4byte	.LLST15
	.uleb128 0x40
	.4byte	0x1954
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LVL53
	.4byte	0x16dd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL37
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL39
	.4byte	0x2c64
	.4byte	0x1a59
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.4byte	.LVL41
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1a6c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL43
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL44
	.4byte	0x2c64
	.4byte	0x1ab3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.4byte	.LVL46
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1ac6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL49
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL50
	.4byte	0x2c64
	.4byte	0x1b14
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL54
	.4byte	0x2c45
	.uleb128 0x3c
	.4byte	.LVL55
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL57
	.4byte	0x2c64
	.4byte	0x1b64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL59
	.4byte	0x2c50
	.4byte	0x1b78
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 6
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL62
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL64
	.4byte	0x2c64
	.4byte	0x1bbf
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11331
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL65
	.4byte	0x1630
	.uleb128 0x2d
	.4byte	.LVL67
	.4byte	0x2c50
	.4byte	0x1bdc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL68
	.4byte	0x2c7a
	.uleb128 0x3c
	.4byte	.LVL69
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL70
	.4byte	0x2c7a
	.byte	0
	.uleb128 0x42
	.4byte	.LASF439
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF387
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f99
	.uleb128 0x43
	.4byte	.LASF375
	.byte	0x1
	.byte	0x5a
	.4byte	0x561
	.4byte	.LLST16
	.uleb128 0x43
	.4byte	.LASF126
	.byte	0x1
	.byte	0x5a
	.4byte	0x9d5
	.4byte	.LLST17
	.uleb128 0x44
	.string	"rsp"
	.byte	0x1
	.byte	0x5c
	.4byte	0x585
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x45
	.4byte	.LASF374
	.4byte	0x1fa9
	.uleb128 0x46
	.4byte	0x1bf8
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x6f
	.4byte	0x1c7c
	.uleb128 0x34
	.4byte	.LVL75
	.4byte	0x2c85
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_srvc_uuid
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x1cbf
	.uleb128 0x48
	.4byte	.LASF376
	.byte	0x1
	.byte	0x73
	.4byte	0x117c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x44
	.string	"msg"
	.byte	0x1
	.byte	0x74
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.4byte	.LVL77
	.4byte	0x2c59
	.uleb128 0x34
	.4byte	.LVL78
	.4byte	0x2c64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1dc8
	.uleb128 0x2c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x92
	.4byte	0x54b
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.LVL84
	.4byte	0x2c45
	.4byte	0x1cf0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL85
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL86
	.4byte	0x2c64
	.4byte	0x1d27
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL89
	.4byte	0x2c91
	.4byte	0x1d48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x262
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL90
	.4byte	0x2c50
	.4byte	0x1d5d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -647
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL91
	.4byte	0x2c9a
	.4byte	0x1d78
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL93
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL94
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL95
	.4byte	0x2c64
	.4byte	0x1dbe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL98
	.4byte	0x2c50
	.byte	0
	.uleb128 0x47
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x1e04
	.uleb128 0x33
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x103
	.4byte	0x117c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x32
	.string	"msg"
	.byte	0x1
	.2byte	0x104
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.4byte	.LVL119
	.4byte	0x2ca6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1e6c
	.uleb128 0x32
	.string	"msg"
	.byte	0x1
	.2byte	0x113
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x114
	.4byte	0x117c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2d
	.4byte	.LVL121
	.4byte	0x2c50
	.4byte	0x1e4f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 13
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x34
	.4byte	.LVL122
	.4byte	0x2c50
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x1ef4
	.uleb128 0x32
	.string	"msg"
	.byte	0x1
	.2byte	0x129
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x12a
	.4byte	0x117c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2d
	.4byte	.LVL123
	.4byte	0x2c50
	.4byte	0x1eb7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL125
	.4byte	0x2c50
	.4byte	0x1ed7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x34
	.4byte	.LVL126
	.4byte	0x2c2e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL73
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL81
	.4byte	0x2c91
	.4byte	0x1f1c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL82
	.4byte	0x2c9a
	.4byte	0x1f31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL101
	.4byte	0x2c9a
	.uleb128 0x3c
	.4byte	.LVL103
	.4byte	0x1961
	.uleb128 0x2d
	.4byte	.LVL105
	.4byte	0x2c9a
	.4byte	0x1f5b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL107
	.4byte	0x1961
	.uleb128 0x3c
	.4byte	.LVL108
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL113
	.4byte	0x2cb2
	.uleb128 0x34
	.4byte	.LVL116
	.4byte	0x2cbe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_descr_uuid_e2p
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x1fa9
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x10
	.byte	0
	.uleb128 0x29
	.4byte	0x1f99
	.uleb128 0x30
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x264
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2151
	.uleb128 0x31
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x264
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x49
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x264
	.4byte	0x1351
	.4byte	.LLST19
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x266
	.4byte	0x94
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x267
	.4byte	0x341
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x268
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x269
	.4byte	0x341
	.4byte	.LLST21
	.uleb128 0x36
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x26b
	.4byte	0xd3
	.4byte	.LLST22
	.uleb128 0x37
	.4byte	.LASF374
	.4byte	0x2161
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11368
	.uleb128 0x47
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x20d5
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x272
	.4byte	0x62
	.4byte	.LLST23
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.2byte	0x274
	.4byte	0xd3
	.4byte	.LLST24
	.uleb128 0x2d
	.4byte	.LVL136
	.4byte	0x2cca
	.4byte	0x207d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL138
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL139
	.4byte	0x2c64
	.4byte	0x20bd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11368
	.byte	0
	.uleb128 0x34
	.4byte	.LVL142
	.4byte	0x2c50
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL129
	.4byte	0x2c45
	.4byte	0x20e9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL133
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL134
	.4byte	0x2c64
	.4byte	0x2120
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL147
	.4byte	0x16dd
	.4byte	0x2140
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x45
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL148
	.4byte	0x2c6f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x2161
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x18
	.byte	0
	.uleb128 0x29
	.4byte	0x2151
	.uleb128 0x30
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x2b8
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2288
	.uleb128 0x4b
	.string	"msg"
	.byte	0x1
	.2byte	0x2b8
	.4byte	0xac1
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x2b8
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x2b8
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"dst"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x11aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.2byte	0x2bb
	.4byte	0x11aa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x37
	.4byte	.LASF374
	.4byte	0x2288
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11400
	.uleb128 0x3c
	.4byte	.LVL151
	.4byte	0x2c45
	.uleb128 0x3c
	.4byte	.LVL152
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL154
	.4byte	0x2c64
	.4byte	0x2223
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11400
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL156
	.4byte	0x2c45
	.4byte	0x2237
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL157
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL159
	.4byte	0x2c64
	.4byte	0x227e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11400
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL162
	.4byte	0x2c50
	.byte	0
	.uleb128 0x29
	.4byte	0x15b7
	.uleb128 0x30
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x311
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22cd
	.uleb128 0x4b
	.string	"msg"
	.byte	0x1
	.2byte	0x311
	.4byte	0xac1
	.4byte	.LLST26
	.uleb128 0x36
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x313
	.4byte	0x11aa
	.4byte	.LLST27
	.uleb128 0x3c
	.4byte	.LVL166
	.4byte	0x2c6f
	.byte	0
	.uleb128 0x30
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x33c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x236a
	.uleb128 0x4c
	.string	"msg"
	.byte	0x1
	.2byte	0x33c
	.4byte	0xac1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x33e
	.4byte	0x11aa
	.4byte	.LLST28
	.uleb128 0x37
	.4byte	.LASF374
	.4byte	0x236a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11463
	.uleb128 0x3c
	.4byte	.LVL170
	.4byte	0x15cc
	.uleb128 0x3c
	.4byte	.LVL182
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL183
	.4byte	0x2c64
	.4byte	0x2359
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11463
	.byte	0
	.uleb128 0x34
	.4byte	.LVL184
	.4byte	0x228d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x191a
	.uleb128 0x30
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x39c
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x254e
	.uleb128 0x4b
	.string	"msg"
	.byte	0x1
	.2byte	0x39c
	.4byte	0xac1
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x39c
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x49
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x39c
	.4byte	0xc3
	.4byte	.LLST30
	.uleb128 0x32
	.string	"dst"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x254e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.2byte	0x39f
	.4byte	0x254e
	.4byte	.LLST31
	.uleb128 0x47
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x24c3
	.uleb128 0x36
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x3a3
	.4byte	0x1326
	.4byte	.LLST32
	.uleb128 0x2d
	.4byte	.LVL190
	.4byte	0x2cd5
	.4byte	0x2407
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL191
	.4byte	0x2c50
	.4byte	0x2426
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL192
	.4byte	0x2c45
	.4byte	0x243a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL193
	.4byte	0x2c50
	.4byte	0x244e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL194
	.4byte	0x2c45
	.4byte	0x2462
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL195
	.4byte	0x2c50
	.4byte	0x2476
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL196
	.4byte	0x2c45
	.4byte	0x248a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL197
	.4byte	0x2c50
	.4byte	0x249e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL198
	.4byte	0x2c45
	.4byte	0x24b2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL199
	.4byte	0x2c50
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x24f1
	.uleb128 0x36
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x3e7
	.4byte	0x1351
	.4byte	.LLST33
	.uleb128 0x34
	.4byte	.LVL203
	.4byte	0x2c45
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x36
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x3f4
	.4byte	0x341
	.4byte	.LLST34
	.uleb128 0x3c
	.4byte	.LVL205
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL207
	.4byte	0x2c45
	.4byte	0x2527
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL208
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL209
	.4byte	0x2c64
	.4byte	0x2543
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL210
	.4byte	0x2c50
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13ca
	.uleb128 0x30
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x406
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x260e
	.uleb128 0x4b
	.string	"msg"
	.byte	0x1
	.2byte	0x406
	.4byte	0xac1
	.4byte	.LLST35
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.2byte	0x408
	.4byte	0x254e
	.4byte	.LLST36
	.uleb128 0x47
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x25cc
	.uleb128 0x36
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x40c
	.4byte	0x1326
	.4byte	.LLST37
	.uleb128 0x3c
	.4byte	.LVL215
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL216
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL217
	.4byte	0x2c6f
	.uleb128 0x3c
	.4byte	.LVL218
	.4byte	0x2c6f
	.byte	0
	.uleb128 0x47
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x25ea
	.uleb128 0x36
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x421
	.4byte	0x1351
	.4byte	.LLST38
	.byte	0
	.uleb128 0x3a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x36
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x428
	.4byte	0x341
	.4byte	.LLST39
	.uleb128 0x3c
	.4byte	.LVL224
	.4byte	0x2c6f
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x14a
	.4byte	0x353
	.byte	0x1
	.4byte	0x262c
	.uleb128 0x27
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x14c
	.4byte	0x14e6
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x15d
	.4byte	0x353
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x21b
	.byte	0x1
	.4byte	0x26be
	.uleb128 0x24
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x21b
	.4byte	0x94
	.uleb128 0x24
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x21b
	.4byte	0x94
	.uleb128 0x24
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x21b
	.4byte	0x94
	.uleb128 0x24
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x21b
	.4byte	0x1326
	.uleb128 0x24
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x21b
	.4byte	0x62
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x21d
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x21e
	.4byte	0x341
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x21f
	.4byte	0x62
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x220
	.4byte	0x341
	.uleb128 0x28
	.4byte	.LASF374
	.4byte	0x26ce
	.4byte	.LASF400
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x26ce
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x1a
	.byte	0
	.uleb128 0x29
	.4byte	0x26be
	.uleb128 0x23
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x290
	.byte	0x1
	.4byte	0x2728
	.uleb128 0x24
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x290
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x292
	.4byte	0x94
	.uleb128 0x27
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x293
	.4byte	0x341
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x294
	.4byte	0x62
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x295
	.4byte	0x341
	.uleb128 0x28
	.4byte	.LASF374
	.4byte	0x2738
	.4byte	.LASF402
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x2738
	.uleb128 0xa
	.4byte	0xbc
	.byte	0x19
	.byte	0
	.uleb128 0x29
	.4byte	0x2728
	.uleb128 0x23
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x2a7
	.byte	0x1
	.4byte	0x2788
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x341
	.uleb128 0x24
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xaa
	.uleb128 0x28
	.4byte	.LASF374
	.4byte	0x2788
	.4byte	.LASF403
	.uleb128 0x27
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x341
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x94
	.byte	0
	.uleb128 0x29
	.4byte	0x26be
	.uleb128 0x30
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x433
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b4d
	.uleb128 0x4c
	.string	"msg"
	.byte	0x1
	.2byte	0x433
	.4byte	0xac1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.2byte	0x435
	.4byte	0x254e
	.4byte	.LLST40
	.uleb128 0x37
	.4byte	.LASF374
	.4byte	0x2b4d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11503
	.uleb128 0x38
	.4byte	0x260e
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x439
	.4byte	0x2837
	.uleb128 0x3a
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x3b
	.4byte	0x261f
	.4byte	.LLST41
	.uleb128 0x3c
	.4byte	.LVL228
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL231
	.4byte	0x2c91
	.4byte	0x2819
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.uleb128 0x34
	.4byte	.LVL232
	.4byte	0x2ce0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_app_uuid
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_profile_cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x262c
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x43c
	.4byte	0x2883
	.uleb128 0x3c
	.4byte	.LVL235
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL236
	.4byte	0x2c64
	.4byte	0x2867
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL238
	.4byte	0x2cec
	.uleb128 0x3c
	.4byte	.LVL239
	.4byte	0x2cf8
	.uleb128 0x3c
	.4byte	.LVL240
	.4byte	0x2d04
	.byte	0
	.uleb128 0x4f
	.4byte	0x2639
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x43f
	.4byte	0x29e7
	.uleb128 0x39
	.4byte	0x2676
	.4byte	.LLST42
	.uleb128 0x39
	.4byte	0x266a
	.4byte	.LLST43
	.uleb128 0x39
	.4byte	0x265e
	.4byte	.LLST44
	.uleb128 0x39
	.4byte	0x2652
	.4byte	.LLST45
	.uleb128 0x39
	.4byte	0x2646
	.4byte	.LLST46
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3b
	.4byte	0x2682
	.4byte	.LLST47
	.uleb128 0x3b
	.4byte	0x268e
	.4byte	.LLST48
	.uleb128 0x3b
	.4byte	0x269a
	.4byte	.LLST49
	.uleb128 0x3b
	.4byte	0x26a6
	.4byte	.LLST50
	.uleb128 0x40
	.4byte	0x26b0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11356
	.uleb128 0x2d
	.4byte	.LVL245
	.4byte	0x2c45
	.4byte	0x290c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL254
	.4byte	0x2c50
	.4byte	0x292b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL258
	.4byte	0x2c50
	.4byte	0x293f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL262
	.4byte	0x2c50
	.4byte	0x2953
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL266
	.4byte	0x2c50
	.4byte	0x2967
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL270
	.4byte	0x2c50
	.4byte	0x297b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL282
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL283
	.4byte	0x2c64
	.4byte	0x29c9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11356
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL284
	.4byte	0x16dd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x26d3
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.2byte	0x44a
	.4byte	0x2a47
	.uleb128 0x39
	.4byte	0x26e0
	.4byte	.LLST51
	.uleb128 0x3a
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x3b
	.4byte	0x26ec
	.4byte	.LLST52
	.uleb128 0x3b
	.4byte	0x26f8
	.4byte	.LLST53
	.uleb128 0x3b
	.4byte	0x2704
	.4byte	.LLST54
	.uleb128 0x3b
	.4byte	0x2710
	.4byte	.LLST55
	.uleb128 0x50
	.4byte	0x271a
	.uleb128 0x34
	.4byte	.LVL288
	.4byte	0x2c45
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	0x273d
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x44d
	.4byte	0x2aec
	.uleb128 0x39
	.4byte	0x2756
	.4byte	.LLST56
	.uleb128 0x39
	.4byte	0x274a
	.4byte	.LLST57
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3b
	.4byte	0x276f
	.4byte	.LLST58
	.uleb128 0x3b
	.4byte	0x277b
	.4byte	.LLST59
	.uleb128 0x40
	.4byte	0x2762
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11389
	.uleb128 0x3c
	.4byte	.LVL293
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL295
	.4byte	0x2c45
	.4byte	0x2aac
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL297
	.4byte	0x2c59
	.uleb128 0x3c
	.4byte	.LVL299
	.4byte	0x2c64
	.uleb128 0x2d
	.4byte	.LVL301
	.4byte	0x2c50
	.4byte	0x2ad8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL303
	.4byte	0x16dd
	.uleb128 0x3c
	.4byte	.LVL304
	.4byte	0x2c6f
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL286
	.4byte	0x1fae
	.uleb128 0x3c
	.4byte	.LVL306
	.4byte	0x2c59
	.uleb128 0x2d
	.4byte	.LVL307
	.4byte	0x2c64
	.4byte	0x2b3c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11503
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL308
	.4byte	0x2554
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x15b7
	.uleb128 0x30
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x456
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b77
	.uleb128 0x31
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x456
	.4byte	0x14e6
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x51
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x45b
	.4byte	0x9f
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x52
	.4byte	.LASF408
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x2ba0
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x29
	.4byte	0x14e
	.uleb128 0x52
	.4byte	.LASF409
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x2bb8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x14e
	.uleb128 0x48
	.4byte	.LASF410
	.byte	0x1
	.byte	0x3c
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_srvc_uuid
	.uleb128 0x48
	.4byte	.LASF411
	.byte	0x1
	.byte	0x3d
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_char_uuid_p2e
	.uleb128 0x48
	.4byte	.LASF412
	.byte	0x1
	.byte	0x3e
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_char_uuid_e2p
	.uleb128 0x48
	.4byte	.LASF413
	.byte	0x1
	.byte	0x3f
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_descr_uuid_e2p
	.uleb128 0x48
	.4byte	.LASF414
	.byte	0x1
	.byte	0x40
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_app_uuid
	.uleb128 0x53
	.4byte	.LASF443
	.byte	0x1
	.byte	0x3a
	.4byte	0x14ec
	.uleb128 0x5
	.byte	0x3
	.4byte	blufi_env
	.uleb128 0x54
	.4byte	.LASF415
	.4byte	.LASF415
	.byte	0x11
	.byte	0x18
	.uleb128 0x54
	.4byte	.LASF416
	.4byte	.LASF416
	.byte	0xb
	.byte	0x5f
	.uleb128 0x55
	.4byte	.LASF417
	.4byte	.LASF417
	.byte	0xa
	.2byte	0x553
	.uleb128 0x54
	.4byte	.LASF418
	.4byte	.LASF418
	.byte	0x12
	.byte	0x65
	.uleb128 0x56
	.4byte	.LASF424
	.4byte	.LASF424
	.uleb128 0x54
	.4byte	.LASF419
	.4byte	.LASF419
	.byte	0x6
	.byte	0x57
	.uleb128 0x54
	.4byte	.LASF420
	.4byte	.LASF420
	.byte	0x6
	.byte	0x6b
	.uleb128 0x54
	.4byte	.LASF421
	.4byte	.LASF421
	.byte	0x12
	.byte	0x5a
	.uleb128 0x54
	.4byte	.LASF422
	.4byte	.LASF422
	.byte	0x10
	.byte	0xb0
	.uleb128 0x55
	.4byte	.LASF423
	.4byte	.LASF423
	.byte	0xa
	.2byte	0x4de
	.uleb128 0x56
	.4byte	.LASF425
	.4byte	.LASF425
	.uleb128 0x55
	.4byte	.LASF426
	.4byte	.LASF426
	.byte	0xa
	.2byte	0x566
	.uleb128 0x55
	.4byte	.LASF427
	.4byte	.LASF427
	.byte	0xa
	.2byte	0x535
	.uleb128 0x55
	.4byte	.LASF428
	.4byte	.LASF428
	.byte	0xa
	.2byte	0x501
	.uleb128 0x55
	.4byte	.LASF429
	.4byte	.LASF429
	.byte	0xa
	.2byte	0x516
	.uleb128 0x54
	.4byte	.LASF430
	.4byte	.LASF430
	.byte	0x13
	.byte	0x21
	.uleb128 0x54
	.4byte	.LASF431
	.4byte	.LASF431
	.byte	0x12
	.byte	0x57
	.uleb128 0x55
	.4byte	.LASF432
	.4byte	.LASF432
	.byte	0xa
	.2byte	0x4bb
	.uleb128 0x55
	.4byte	.LASF433
	.4byte	.LASF433
	.byte	0xa
	.2byte	0x542
	.uleb128 0x55
	.4byte	.LASF434
	.4byte	.LASF434
	.byte	0xa
	.2byte	0x527
	.uleb128 0x55
	.4byte	.LASF435
	.4byte	.LASF435
	.byte	0xa
	.2byte	0x4c9
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x5
	.byte	0x3
	.4byte	blufi_env+10
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x5
	.byte	0x3
	.4byte	blufi_env+6
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	.LVL53-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL127
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL130
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL144
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL135
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL135
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL149
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL164
	.4byte	.LVL166-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL169
	.4byte	.LVL170-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL181
	.4byte	.LVL182-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL189
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL189
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL188
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL204
	.4byte	.LVL205-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL205-1
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL212
	.4byte	.LVL215-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL219
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL214
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230
	.4byte	.LVL231-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL234
	.4byte	.LVL235-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL237
	.4byte	.LVL238-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL241
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL287
	.4byte	.LVL288-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL292
	.4byte	.LVL293-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL294
	.4byte	.LVL295-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL227
	.4byte	.LVL228-1
	.2byte	0x5
	.byte	0x3
	.4byte	blufi_env+36
	.4byte	.LVL229
	.4byte	.LVL231-1
	.2byte	0x5
	.byte	0x3
	.4byte	blufi_env+36
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x74
	.sleb128 16
	.4byte	.LVL244
	.4byte	.LVL285
	.2byte	0x3
	.byte	0x75
	.sleb128 -3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL243
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x74
	.sleb128 8
	.4byte	.LVL244
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL244
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL244
	.4byte	.LVL245-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL247
	.4byte	.LVL285
	.2byte	0x3
	.byte	0x8
	.byte	0x3d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL246
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL243
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL254-1
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL258-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL266-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL270-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LVL282-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL287
	.4byte	.LVL288-1
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.4byte	.LVL288-1
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL287
	.4byte	.LVL291
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL292
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL292
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL296
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL300
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL300
	.4byte	.LVL302
	.2byte	0x3
	.byte	0x8
	.byte	0x4d
	.byte	0x9f
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF212:
	.string	"ESP_BLUFI_EVENT_RECV_STA_PASSWD"
.LASF349:
	.string	"wifi_conn_report"
.LASF15:
	.string	"long int"
.LASF86:
	.string	"BTM_PM_STS_PARK"
.LASF172:
	.string	"BTC_PID_GATTC"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF261:
	.string	"softap_max_conn_num"
.LASF389:
	.string	"malloc_size"
.LASF216:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE"
.LASF117:
	.string	"tBTA_GATT_REASON"
.LASF131:
	.string	"tBTA_GATTS_REG_OPER"
.LASF171:
	.string	"BTC_PID_GATTS"
.LASF146:
	.string	"tBTA_GATTS_CONF"
.LASF312:
	.string	"softap_auth_mode"
.LASF18:
	.string	"char"
.LASF143:
	.string	"tBTA_GATTS_CONN"
.LASF200:
	.string	"wifi_auth_mode_t"
.LASF157:
	.string	"conn"
.LASF224:
	.string	"ESP_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE"
.LASF381:
	.string	"btc_blufi_report_error"
.LASF162:
	.string	"cancel_open"
.LASF154:
	.string	"add_result"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF119:
	.string	"tBTA_GATTS_IF"
.LASF283:
	.string	"passwd_len"
.LASF189:
	.string	"WIFI_MODE_AP"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF214:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_PASSWD"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF137:
	.string	"char_uuid"
.LASF288:
	.string	"blufi_recv_softap_auth_mode_evt_param"
.LASF400:
	.string	"btc_blufi_wifi_conn_report"
.LASF369:
	.string	"tBLUFI_ENV"
.LASF304:
	.string	"blufi_get_error_evt_param"
.LASF377:
	.string	"btc_blufi_cb"
.LASF311:
	.string	"disconnect"
.LASF105:
	.string	"is_prep"
.LASF365:
	.string	"recv_seq"
.LASF329:
	.string	"decrypt_func"
.LASF327:
	.string	"negotiate_data_handler"
.LASF126:
	.string	"p_data"
.LASF91:
	.string	"tGATT_STATUS"
.LASF292:
	.string	"blufi_recv_username_evt_param"
.LASF135:
	.string	"tBTA_GATTS_CREATE"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF148:
	.string	"tBTA_GATTS_SERVICE_CHANGE"
.LASF273:
	.string	"blufi_set_wifi_mode_evt_param"
.LASF426:
	.string	"BTA_GATTS_SendRsp"
.LASF220:
	.string	"ESP_BLUFI_EVENT_RECV_CLIENT_CERT"
.LASF247:
	.string	"ESP_BLUFI_DATA_FORMAT_ERROR"
.LASF419:
	.string	"esp_log_timestamp"
.LASF176:
	.string	"BTC_PID_SPPLIKE"
.LASF410:
	.string	"blufi_srvc_uuid"
.LASF138:
	.string	"tBTA_GATTS_ADD_RESULT"
.LASF101:
	.string	"tGATT_EXEC_FLAG"
.LASF384:
	.string	"remain_len"
.LASF340:
	.string	"sta_conn_state"
.LASF19:
	.string	"uint"
.LASF29:
	.string	"BOOLEAN"
.LASF8:
	.string	"unsigned int"
.LASF386:
	.string	"btc_blufi_cb_to_app"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF235:
	.string	"ESP_BLUFI_DEINIT_OK"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF208:
	.string	"ESP_BLUFI_EVENT_GET_WIFI_STATUS"
.LASF99:
	.string	"attr_value"
.LASF258:
	.string	"softap_passwd_len"
.LASF295:
	.string	"blufi_recv_ca_evt_param"
.LASF412:
	.string	"blufi_char_uuid_e2p"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF33:
	.string	"uuid32"
.LASF431:
	.string	"calloc"
.LASF152:
	.string	"create"
.LASF321:
	.string	"esp_blufi_event_cb_t"
.LASF302:
	.string	"pkey_len"
.LASF213:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_SSID"
.LASF360:
	.string	"frag_size"
.LASF367:
	.string	"aggr_buf"
.LASF193:
	.string	"WIFI_AUTH_OPEN"
.LASF346:
	.string	"list"
.LASF196:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF427:
	.string	"BTA_GATTS_StartService"
.LASF194:
	.string	"WIFI_AUTH_WEP"
.LASF168:
	.string	"BTC_SIG_NUM"
.LASF35:
	.string	"tBT_UUID"
.LASF279:
	.string	"blufi_recv_sta_ssid_evt_param"
.LASF28:
	.string	"UINT32"
.LASF202:
	.string	"ESP_BLUFI_EVENT_DEINIT_FINISH"
.LASF14:
	.string	"uint32_t"
.LASF231:
	.string	"esp_blufi_sta_conn_state_t"
.LASF328:
	.string	"encrypt_func"
.LASF339:
	.string	"opmode"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF308:
	.string	"deinit_finish"
.LASF375:
	.string	"event"
.LASF13:
	.string	"uint16_t"
.LASF417:
	.string	"BTA_GATTS_HandleValueIndication"
.LASF85:
	.string	"BTM_PM_STS_SNIFF"
.LASF10:
	.string	"long long unsigned int"
.LASF238:
	.string	"ESP_BLUFI_SEQUENCE_ERROR"
.LASF221:
	.string	"ESP_BLUFI_EVENT_RECV_SERVER_CERT"
.LASF106:
	.string	"tGATT_WRITE_REQ"
.LASF390:
	.string	"btc_blufi_cb_deep_copy"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF112:
	.string	"GATTS_REQ_TYPE_WRITE"
.LASF309:
	.string	"wifi_mode"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF141:
	.string	"reason"
.LASF429:
	.string	"BTA_GATTS_AddCharDescriptor"
.LASF408:
	.string	"bd_addr_any"
.LASF334:
	.string	"BTC_BLUFI_ACT_SEND_CFG_REPORT"
.LASF236:
	.string	"ESP_BLUFI_DEINIT_FAILED"
.LASF319:
	.string	"custom_data"
.LASF222:
	.string	"ESP_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF5:
	.string	"__uint16_t"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF399:
	.string	"store_p"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF87:
	.string	"BTM_PM_STS_SSR"
.LASF350:
	.string	"wifi_list"
.LASF97:
	.string	"value"
.LASF192:
	.string	"wifi_mode_t"
.LASF153:
	.string	"srvc_oper"
.LASF314:
	.string	"client_cert"
.LASF144:
	.string	"congested"
.LASF428:
	.string	"BTA_GATTS_AddCharacteristic"
.LASF184:
	.string	"BTC_PID_SPP"
.LASF257:
	.string	"softap_passwd"
.LASF230:
	.string	"ESP_BLUFI_STA_CONN_FAIL"
.LASF203:
	.string	"ESP_BLUFI_EVENT_SET_WIFI_OPMODE"
.LASF186:
	.string	"esp_bd_addr_t"
.LASF100:
	.string	"tGATTS_RSP"
.LASF156:
	.string	"req_data"
.LASF439:
	.string	"blufi_create_service"
.LASF6:
	.string	"short unsigned int"
.LASF95:
	.string	"offset"
.LASF316:
	.string	"client_pkey"
.LASF300:
	.string	"blufi_recv_client_pkey_evt_param"
.LASF211:
	.string	"ESP_BLUFI_EVENT_RECV_STA_SSID"
.LASF296:
	.string	"cert"
.LASF30:
	.string	"_Bool"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF139:
	.string	"tBAT_GATTS_ATTR_VAL_RESULT"
.LASF361:
	.string	"prepare_buf"
.LASF434:
	.string	"BTA_GATTS_DeleteService"
.LASF441:
	.string	"btc_blufi_profile_deinit"
.LASF110:
	.string	"tGATTS_DATA"
.LASF219:
	.string	"ESP_BLUFI_EVENT_RECV_CA_CERT"
.LASF130:
	.string	"uuid"
.LASF421:
	.string	"free"
.LASF255:
	.string	"softap_ssid"
.LASF109:
	.string	"exec_write"
.LASF259:
	.string	"softap_authmode"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF301:
	.string	"pkey"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF287:
	.string	"max_conn_num"
.LASF372:
	.string	"checksum"
.LASF124:
	.string	"remote_bda"
.LASF256:
	.string	"softap_ssid_len"
.LASF406:
	.string	"btc_blufi_set_callbacks"
.LASF436:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"int8_t"
.LASF338:
	.string	"blufi_cfg_report"
.LASF299:
	.string	"blufi_recv_server_cert_evt_param"
.LASF233:
	.string	"ESP_BLUFI_INIT_FAILED"
.LASF355:
	.string	"handle_srvc"
.LASF121:
	.string	"tBTA_GATTS_RSP"
.LASF31:
	.string	"BD_ADDR"
.LASF245:
	.string	"ESP_BLUFI_READ_PARAM_ERROR"
.LASF237:
	.string	"esp_blufi_deinit_state_t"
.LASF266:
	.string	"ssid"
.LASF294:
	.string	"name_len"
.LASF228:
	.string	"esp_blufi_cb_event_t"
.LASF104:
	.string	"tGATT_READ_REQ"
.LASF344:
	.string	"blufi_wifi_list"
.LASF272:
	.string	"blufi_deinit_finish_evt_param"
.LASF34:
	.string	"uuid128"
.LASF393:
	.string	"btc_blufi_cb_deep_free"
.LASF227:
	.string	"ESP_BLUFI_EVENT_RECV_CUSTOM_DATA"
.LASF358:
	.string	"handle_descr_e2p"
.LASF281:
	.string	"blufi_recv_sta_passwd_evt_param"
.LASF315:
	.string	"server_cert"
.LASF158:
	.string	"congest"
.LASF160:
	.string	"close"
.LASF364:
	.string	"send_seq"
.LASF98:
	.string	"tGATT_VALUE"
.LASF422:
	.string	"btc_blufi_protocol_handler"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF114:
	.string	"GATTS_REQ_TYPE_MTU"
.LASF306:
	.string	"data"
.LASF407:
	.string	"callbacks"
.LASF118:
	.string	"tBTA_GATTS_EVT"
.LASF175:
	.string	"BTC_PID_BLE_HID"
.LASF12:
	.string	"uint8_t"
.LASF173:
	.string	"BTC_PID_GATT_COMMON"
.LASF123:
	.string	"status"
.LASF317:
	.string	"server_pkey"
.LASF370:
	.string	"blufi_hdr"
.LASF411:
	.string	"blufi_char_uuid_p2e"
.LASF210:
	.string	"ESP_BLUFI_EVENT_RECV_STA_BSSID"
.LASF280:
	.string	"ssid_len"
.LASF403:
	.string	"btc_blufi_send_custom_data"
.LASF373:
	.string	"checksum_pkt"
.LASF248:
	.string	"esp_blufi_error_state_t"
.LASF250:
	.string	"sta_bssid_set"
.LASF437:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/profile/esp/blufi/blufi_prf.c"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF289:
	.string	"auth_mode"
.LASF397:
	.string	"btc_blufi_call_deep_free"
.LASF128:
	.string	"tBTA_GATTS_REQ"
.LASF145:
	.string	"tBTA_GATTS_CONGEST"
.LASF332:
	.string	"BTC_BLUFI_ACT_INIT"
.LASF9:
	.string	"long long int"
.LASF385:
	.string	"btc_blufi_send_ack"
.LASF134:
	.string	"is_primary"
.LASF187:
	.string	"WIFI_MODE_NULL"
.LASF142:
	.string	"transport"
.LASF404:
	.string	"value_len"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF277:
	.string	"blufi_recv_sta_bssid_evt_param"
.LASF415:
	.string	"btc_profile_cb_get"
.LASF324:
	.string	"esp_blufi_decrypt_func_t"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF125:
	.string	"trans_id"
.LASF243:
	.string	"ESP_BLUFI_DH_MALLOC_ERROR"
.LASF388:
	.string	"btc_blufi_send_wifi_list"
.LASF368:
	.string	"total_len"
.LASF111:
	.string	"GATTS_REQ_TYPE_READ"
.LASF425:
	.string	"memset"
.LASF174:
	.string	"BTC_PID_GAP_BLE"
.LASF269:
	.string	"btc_msg"
.LASF336:
	.string	"BTC_BLUFI_ACT_SEND_ERR_INFO"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF249:
	.string	"sta_bssid"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF376:
	.string	"param"
.LASF438:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF90:
	.string	"tGATT_IF"
.LASF356:
	.string	"handle_char_p2e"
.LASF398:
	.string	"info"
.LASF251:
	.string	"sta_ssid"
.LASF151:
	.string	"reg_oper"
.LASF177:
	.string	"BTC_PID_BLUFI"
.LASF420:
	.string	"esp_log_write"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF89:
	.string	"BTM_PM_STS_ERROR"
.LASF387:
	.string	"blufi_profile_cb"
.LASF401:
	.string	"info_len"
.LASF0:
	.string	"__int8_t"
.LASF94:
	.string	"handle"
.LASF430:
	.string	"strlen"
.LASF391:
	.string	"p_dest"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF333:
	.string	"BTC_BLUFI_ACT_DEINIT"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF159:
	.string	"confirm"
.LASF335:
	.string	"BTC_BLUFI_ACT_SEND_WIFI_LIST"
.LASF362:
	.string	"prepare_len"
.LASF379:
	.string	"btc_blufi_send_notify"
.LASF204:
	.string	"ESP_BLUFI_EVENT_BLE_CONNECT"
.LASF164:
	.string	"tBTA_GATTS"
.LASF218:
	.string	"ESP_BLUFI_EVENT_RECV_USERNAME"
.LASF96:
	.string	"auth_req"
.LASF84:
	.string	"BTM_PM_STS_HOLD"
.LASF170:
	.string	"BTC_PID_DEV"
.LASF291:
	.string	"channel"
.LASF127:
	.string	"data_len"
.LASF103:
	.string	"need_rsp"
.LASF274:
	.string	"op_mode"
.LASF396:
	.string	"src_info"
.LASF198:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF286:
	.string	"blufi_recv_softap_max_conn_num_evt_param"
.LASF409:
	.string	"bd_addr_null"
.LASF325:
	.string	"esp_blufi_checksum_func_t"
.LASF191:
	.string	"WIFI_MODE_MAX"
.LASF405:
	.string	"btc_blufi_call_handler"
.LASF363:
	.string	"enabled"
.LASF383:
	.string	"total_data_len"
.LASF341:
	.string	"softap_conn_num"
.LASF4:
	.string	"short int"
.LASF93:
	.string	"conn_id"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF310:
	.string	"connect"
.LASF270:
	.string	"blufi_init_finish_evt_param"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF297:
	.string	"cert_len"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF290:
	.string	"blufi_recv_softap_channel_evt_param"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF252:
	.string	"sta_ssid_len"
.LASF263:
	.string	"softap_channel"
.LASF133:
	.string	"svc_instance"
.LASF313:
	.string	"username"
.LASF244:
	.string	"ESP_BLUFI_DH_PARAM_ERROR"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF132:
	.string	"service_id"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF423:
	.string	"BTA_GATTS_CreateService"
.LASF440:
	.string	"btc_blufi_profile_init"
.LASF115:
	.string	"GATTS_REQ_TYPE_CONF"
.LASF242:
	.string	"ESP_BLUFI_INIT_SECURITY_ERROR"
.LASF166:
	.string	"BTC_SIG_API_CALL"
.LASF92:
	.string	"tGATT_AUTH_REQ"
.LASF240:
	.string	"ESP_BLUFI_DECRYPT_ERROR"
.LASF147:
	.string	"tBTA_GATTS_CLOSE"
.LASF229:
	.string	"ESP_BLUFI_STA_CONN_SUCCESS"
.LASF161:
	.string	"open"
.LASF234:
	.string	"esp_blufi_init_state_t"
.LASF182:
	.string	"BTC_PID_A2DP"
.LASF83:
	.string	"BTM_PM_STS_ACTIVE"
.LASF197:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF413:
	.string	"blufi_descr_uuid_e2p"
.LASF278:
	.string	"bssid"
.LASF1:
	.string	"__uint8_t"
.LASF305:
	.string	"blufi_recv_custom_data_evt_param"
.LASF414:
	.string	"blufi_app_uuid"
.LASF150:
	.string	"tBTA_GATTS_CANCEL_OPEN"
.LASF293:
	.string	"name"
.LASF195:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF140:
	.string	"tBTA_GATTS_SRVC_OPER"
.LASF285:
	.string	"blufi_recv_softap_passwd_evt_param"
.LASF322:
	.string	"esp_blufi_negotiate_data_handler_t"
.LASF149:
	.string	"tBTA_GATTS_OPEN"
.LASF267:
	.string	"rssi"
.LASF122:
	.string	"tBTA_GATTS_REQ_DATA"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF232:
	.string	"ESP_BLUFI_INIT_OK"
.LASF357:
	.string	"handle_char_e2p"
.LASF107:
	.string	"read_req"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF16:
	.string	"sizetype"
.LASF353:
	.string	"gatt_if"
.LASF17:
	.string	"long unsigned int"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF179:
	.string	"BTC_PID_ALARM"
.LASF239:
	.string	"ESP_BLUFI_CHECKSUM_ERROR"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF169:
	.string	"BTC_PID_MAIN_INIT"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF435:
	.string	"BTA_GATTS_AppDeregister"
.LASF331:
	.string	"esp_blufi_callbacks_t"
.LASF337:
	.string	"BTC_BLUFI_ACT_SEND_CUSTOM_DATA"
.LASF432:
	.string	"BTA_GATTS_AppRegister"
.LASF382:
	.string	"btc_blufi_send_encap"
.LASF345:
	.string	"apCount"
.LASF371:
	.string	"type"
.LASF262:
	.string	"softap_max_conn_num_set"
.LASF27:
	.string	"UINT16"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF241:
	.string	"ESP_BLUFI_ENCRYPT_ERROR"
.LASF254:
	.string	"sta_passwd_len"
.LASF7:
	.string	"__uint32_t"
.LASF265:
	.string	"esp_blufi_extra_info_t"
.LASF276:
	.string	"blufi_disconnect_evt_param"
.LASF264:
	.string	"softap_channel_set"
.LASF395:
	.string	"btc_blufi_call_deep_copy"
.LASF205:
	.string	"ESP_BLUFI_EVENT_BLE_DISCONNECT"
.LASF167:
	.string	"BTC_SIG_API_CB"
.LASF307:
	.string	"init_finish"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF136:
	.string	"attr_id"
.LASF282:
	.string	"passwd"
.LASF253:
	.string	"sta_passwd"
.LASF209:
	.string	"ESP_BLUFI_EVENT_DEAUTHENTICATE_STA"
.LASF380:
	.string	"pkt_len"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF163:
	.string	"service_change"
.LASF330:
	.string	"checksum_func"
.LASF271:
	.string	"state"
.LASF181:
	.string	"BTC_PID_PRF_QUE"
.LASF318:
	.string	"report_error"
.LASF366:
	.string	"sec_mode"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF442:
	.string	"btc_blufi_get_version"
.LASF348:
	.string	"blufi_custom_data"
.LASF347:
	.string	"blufi_error_infor"
.LASF102:
	.string	"is_long"
.LASF326:
	.string	"event_cb"
.LASF418:
	.string	"malloc"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF201:
	.string	"ESP_BLUFI_EVENT_INIT_FINISH"
.LASF268:
	.string	"esp_blufi_ap_record_t"
.LASF32:
	.string	"uuid16"
.LASF303:
	.string	"blufi_recv_server_pkey_evt_param"
.LASF275:
	.string	"blufi_connect_evt_param"
.LASF215:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM"
.LASF359:
	.string	"is_connected"
.LASF155:
	.string	"attr_val"
.LASF108:
	.string	"write_req"
.LASF2:
	.string	"signed char"
.LASF246:
	.string	"ESP_BLUFI_MAKE_PUBLIC_ERROR"
.LASF226:
	.string	"ESP_BLUFI_EVENT_REPORT_ERROR"
.LASF129:
	.string	"server_if"
.LASF392:
	.string	"p_src"
.LASF343:
	.string	"extra_info_len"
.LASF183:
	.string	"BTC_PID_AVRC"
.LASF352:
	.string	"btc_blufi_args_t"
.LASF217:
	.string	"ESP_BLUFI_EVENT_RECV_SOFTAP_CHANNEL"
.LASF120:
	.string	"tBTA_GATT_TRANSPORT"
.LASF424:
	.string	"memcpy"
.LASF342:
	.string	"extra_info"
.LASF185:
	.string	"BTC_PID_NUM"
.LASF320:
	.string	"esp_blufi_cb_param_t"
.LASF323:
	.string	"esp_blufi_encrypt_func_t"
.LASF443:
	.string	"blufi_env"
.LASF116:
	.string	"tBTA_GATT_STATUS"
.LASF374:
	.string	"__func__"
.LASF402:
	.string	"btc_blufi_send_error_info"
.LASF188:
	.string	"WIFI_MODE_STA"
.LASF298:
	.string	"blufi_recv_client_cert_evt_param"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF207:
	.string	"ESP_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP"
.LASF26:
	.string	"UINT8"
.LASF178:
	.string	"BTC_PID_DM_SEC"
.LASF433:
	.string	"BTA_GATTS_StopService"
.LASF260:
	.string	"softap_authmode_set"
.LASF354:
	.string	"srvc_inst"
.LASF378:
	.string	"btc_blufi_recv_handler"
.LASF223:
	.string	"ESP_BLUFI_EVENT_RECV_SERVER_PRIV_KEY"
.LASF199:
	.string	"WIFI_AUTH_MAX"
.LASF165:
	.string	"btc_msg_t"
.LASF225:
	.string	"ESP_BLUFI_EVENT_GET_WIFI_LIST"
.LASF416:
	.string	"btc_transfer_context"
.LASF190:
	.string	"WIFI_MODE_APSTA"
.LASF180:
	.string	"BTC_PID_GAP_BT"
.LASF284:
	.string	"blufi_recv_softap_ssid_evt_param"
.LASF113:
	.string	"GATTS_REQ_TYPE_WRITE_EXEC"
.LASF88:
	.string	"BTM_PM_STS_PENDING"
.LASF394:
	.string	"btc_blufi_cb_handler"
.LASF206:
	.string	"ESP_BLUFI_EVENT_REQ_CONNECT_TO_AP"
.LASF351:
	.string	"blufi_err_infor"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF82:
	.string	"BTM_EIR_MAX_SERVICES"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
