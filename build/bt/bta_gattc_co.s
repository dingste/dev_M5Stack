	.file	"bta_gattc_co.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"gattc_cache_key"
	.section	.text.bta_gattc_co_cache_load,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, cache_env
	.align	4
	.global	bta_gattc_co_cache_load
	.type	bta_gattc_co_cache_load, @function
bta_gattc_co_cache_load:
.LFB44:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gattc_co.c"
	.loc 1 263 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 270 0
	l32r	a8, .LC2
	.loc 1 263 0
	extui	a3, a3, 0, 8
	.loc 1 270 0
	addx4	a3, a3, a3
.LVL2:
	addx4	a3, a3, a8
	l32r	a5, .LC1
	.loc 1 268 0
	movi.n	a4, 0
	.loc 1 270 0
	l32i.n	a10, a3, 8
	mov.n	a13, sp
	mov.n	a12, a4
	mov.n	a11, a5
	.loc 1 268 0
	s32i.n	a4, sp, 0
	.loc 1 270 0
	call8	nvs_get_blob
.LVL3:
	.loc 1 272 0
	l32i.n	a10, a3, 8
	mov.n	a12, a2
	mov.n	a13, sp
	mov.n	a11, a5
	call8	nvs_get_blob
.LVL4:
	.loc 1 276 0
	l32i.n	a2, sp, 0
.LVL5:
	beq	a2, a4, .L5
	mov.n	a2, a4
	beq	a10, a4, .L2
.L5:
	movi	a2, 0x85
.L2:
.LVL6:
	.loc 1 281 0 discriminator 6
	retw.n
.LFE44:
	.size	bta_gattc_co_cache_load, .-bta_gattc_co_cache_load
	.section	.text.bta_gattc_get_cache_attr_length,"ax",@progbits
	.literal_position
	.literal .LC3, .LC0
	.literal .LC4, cache_env
	.align	4
	.global	bta_gattc_get_cache_attr_length
	.type	bta_gattc_get_cache_attr_length, @function
bta_gattc_get_cache_attr_length:
.LFB45:
	.loc 1 284 0
.LVL7:
	entry	sp, 48
.LCFI1:
	.loc 1 285 0
	movi.n	a12, 0
	.loc 1 284 0
	extui	a8, a2, 0, 8
	.loc 1 285 0
	s32i.n	a12, sp, 0
	.loc 1 286 0
	movi	a2, 0xff
.LVL8:
	beq	a8, a2, .L10
	.loc 1 291 0
	l32r	a2, .LC4
	addx4	a8, a8, a8
.LVL9:
	addx4	a8, a8, a2
	l32r	a11, .LC3
	l32i.n	a10, a8, 8
	mov.n	a13, sp
	call8	nvs_get_blob
.LVL10:
	.loc 1 292 0
	l32i.n	a12, sp, 0
.L10:
	.loc 1 293 0
	mov.n	a2, a12
	retw.n
.LFE45:
	.size	bta_gattc_get_cache_attr_length, .-bta_gattc_get_cache_attr_length
	.section	.text.bta_gattc_co_cache_addr_deinit,"ax",@progbits
	.literal_position
	.literal .LC5, cache_env
	.align	4
	.global	bta_gattc_co_cache_addr_deinit
	.type	bta_gattc_co_cache_addr_deinit, @function
bta_gattc_co_cache_addr_deinit:
.LFB50:
	.loc 1 422 0
	entry	sp, 32
.LCFI2:
	.loc 1 423 0
	l32r	a3, .LC5
	l8ui	a2, a3, 4
	beqz.n	a2, .L12
	.loc 1 426 0
	l32i.n	a10, a3, 0
	.loc 1 427 0
	movi.n	a2, 0
	.loc 1 426 0
	call8	nvs_close
.LVL11:
	.loc 1 427 0
	s8i	a2, a3, 4
.LVL12:
.LBB2:
	.loc 1 429 0
	movi.n	a2, 0
.LBB3:
	.loc 1 433 0
	mov.n	a5, a2
.LBE3:
	.loc 1 429 0
	j	.L14
.LVL13:
.L16:
.LBB4:
	.loc 1 432 0
	addx4	a4, a2, a2
	addx4	a4, a4, a3
	l32i.n	a10, a4, 8
	call8	nvs_close
.LVL14:
	.loc 1 434 0
	l32i.n	a10, a4, 24
	.loc 1 433 0
	s8i	a5, a4, 12
	.loc 1 434 0
	beqz.n	a10, .L15
	.loc 1 435 0
	call8	list_free
.LVL15:
.L15:
.LBE4:
	.loc 1 429 0 discriminator 2
	addi.n	a2, a2, 1
.LVL16:
	extui	a2, a2, 0, 8
.LVL17:
.L14:
	.loc 1 429 0 is_stmt 0 discriminator 1
	l8ui	a4, a3, 5
	bltu	a2, a4, .L16
.LVL18:
.L12:
	retw.n
.LBE2:
.LFE50:
	.size	bta_gattc_co_cache_addr_deinit, .-bta_gattc_co_cache_addr_deinit
	.section	.text.bta_gattc_co_addr_in_cache,"ax",@progbits
	.literal_position
	.literal .LC6, cache_env
	.literal .LC7, cache_env+13
	.align	4
	.global	bta_gattc_co_addr_in_cache
	.type	bta_gattc_co_addr_in_cache, @function
bta_gattc_co_addr_in_cache:
.LFB51:
	.loc 1 442 0 is_stmt 1
.LVL19:
	entry	sp, 32
.LCFI3:
.LVL20:
	.loc 1 444 0
	l32r	a3, .LC6
	l8ui	a4, a3, 5
.LVL21:
	.loc 1 446 0
	movi.n	a3, 0
	j	.L22
.LVL22:
.L24:
	.loc 1 447 0
	l32r	a10, .LC7
	movi.n	a12, 6
	mov.n	a11, a2
	call8	memcmp
.LVL23:
	beqz.n	a10, .L25
	.loc 1 446 0 discriminator 2
	addi.n	a3, a3, 1
.LVL24:
	extui	a3, a3, 0, 8
.LVL25:
.L22:
	.loc 1 446 0 is_stmt 0 discriminator 1
	bne	a3, a4, .L24
	.loc 1 452 0 is_stmt 1
	movi.n	a2, 0
.LVL26:
	retw.n
.LVL27:
.L25:
	.loc 1 448 0
	movi.n	a2, 1
.LVL28:
	.loc 1 453 0
	retw.n
.LFE51:
	.size	bta_gattc_co_addr_in_cache, .-bta_gattc_co_addr_in_cache
	.section	.text.bta_gattc_co_find_addr_in_cache,"ax",@progbits
	.literal_position
	.literal .LC8, cache_env
	.align	4
	.global	bta_gattc_co_find_addr_in_cache
	.type	bta_gattc_co_find_addr_in_cache, @function
bta_gattc_co_find_addr_in_cache:
.LFB52:
	.loc 1 456 0
.LVL29:
	entry	sp, 32
.LCFI4:
.LVL30:
	.loc 1 458 0
	l32r	a3, .LC8
	.loc 1 461 0
	movi.n	a4, 0
	.loc 1 458 0
	l8ui	a6, a3, 5
.LVL31:
	mov.n	a5, a3
	.loc 1 461 0
	j	.L27
.LVL32:
.L29:
	.loc 1 462 0
	addx4	a10, a4, a4
	addx4	a10, a10, a5
	movi.n	a12, 6
	mov.n	a11, a2
	addi.n	a10, a10, 13
	call8	memcmp
.LVL33:
	addi.n	a4, a4, 1
.LVL34:
	beqz.n	a10, .L30
.LVL35:
.L27:
	extui	a3, a4, 0, 8
.LVL36:
	.loc 1 461 0 discriminator 1
	bltu	a3, a6, .L29
	.loc 1 467 0
	movi	a2, 0xff
.LVL37:
	retw.n
.LVL38:
.L30:
	mov.n	a2, a3
.LVL39:
	.loc 1 468 0
	retw.n
.LFE52:
	.size	bta_gattc_co_find_addr_in_cache, .-bta_gattc_co_find_addr_in_cache
	.section	.text.bta_gattc_co_cache_close,"ax",@progbits
	.literal_position
	.literal .LC9, cache_env
	.align	4
	.global	bta_gattc_co_cache_close
	.type	bta_gattc_co_cache_close, @function
bta_gattc_co_cache_close:
.LFB47:
	.loc 1 350 0
.LVL40:
	entry	sp, 32
.LCFI5:
.LVL41:
.LBB7:
.LBB8:
	.loc 1 110 0
	mov.n	a10, a2
	call8	bta_gattc_co_find_addr_in_cache
.LVL42:
	movi	a2, 0xff
.LVL43:
	beq	a10, a2, .L31
	.loc 1 111 0
	l32r	a2, .LC9
	addx4	a10, a10, a10
.LVL44:
	addx4	a2, a10, a2
	l8ui	a8, a2, 12
	beqz.n	a8, .L31
	.loc 1 112 0
	l32i.n	a10, a2, 8
	call8	nvs_close
.LVL45:
	.loc 1 113 0
	movi.n	a8, 0
	s8i	a8, a2, 12
.L31:
	retw.n
.LBE8:
.LBE7:
.LFE47:
	.size	bta_gattc_co_cache_close, .-bta_gattc_co_cache_close
	.section	.text.bta_gattc_co_find_hash_in_cache,"ax",@progbits
	.literal_position
	.literal .LC10, cache_env
	.literal .LC11, cache_env+19
	.align	4
	.global	bta_gattc_co_find_hash_in_cache
	.type	bta_gattc_co_find_hash_in_cache, @function
bta_gattc_co_find_hash_in_cache:
.LFB53:
	.loc 1 471 0
.LVL46:
	entry	sp, 32
.LCFI6:
.LVL47:
	.loc 1 473 0
	l32r	a3, .LC10
	l8ui	a4, a3, 5
.LVL48:
	.loc 1 475 0
	movi.n	a3, 0
	j	.L37
.LVL49:
.L39:
	.loc 1 476 0
	l32r	a10, .LC11
	movi.n	a12, 4
	mov.n	a11, a2
	call8	memcmp
.LVL50:
	beqz.n	a10, .L40
	.loc 1 475 0 discriminator 2
	addi.n	a3, a3, 1
.LVL51:
	extui	a3, a3, 0, 8
.LVL52:
.L37:
	.loc 1 475 0 is_stmt 0 discriminator 1
	bne	a3, a4, .L39
	.loc 1 481 0 is_stmt 1
	movi	a2, 0xff
.LVL53:
	retw.n
.LVL54:
.L40:
	mov.n	a2, a3
.LVL55:
	.loc 1 482 0
	retw.n
.LFE53:
	.size	bta_gattc_co_find_hash_in_cache, .-bta_gattc_co_find_hash_in_cache
	.section	.text.bta_gattc_co_get_addr_num,"ax",@progbits
	.literal_position
	.literal .LC12, cache_env
	.align	4
	.global	bta_gattc_co_get_addr_num
	.type	bta_gattc_co_get_addr_num, @function
bta_gattc_co_get_addr_num:
.LFB54:
	.loc 1 485 0
	entry	sp, 32
.LCFI7:
	.loc 1 487 0
	l32r	a8, .LC12
	l8ui	a2, a8, 5
	retw.n
.LFE54:
	.size	bta_gattc_co_get_addr_num, .-bta_gattc_co_get_addr_num
	.section	.text.bta_gattc_co_get_addr_list,"ax",@progbits
	.literal_position
	.literal .LC13, cache_env
	.literal .LC14, cache_env+13
	.align	4
	.global	bta_gattc_co_get_addr_list
	.type	bta_gattc_co_get_addr_list, @function
bta_gattc_co_get_addr_list:
.LFB55:
	.loc 1 490 0
.LVL56:
	entry	sp, 32
.LCFI8:
.LVL57:
	l32r	a3, .LC13
	l32r	a4, .LC14
	l8ui	a8, a3, 5
	addx2	a8, a8, a8
	addx2	a3, a8, a2
.LBB9:
	.loc 1 492 0
	j	.L43
.LVL58:
.L44:
	.loc 1 493 0 discriminator 3
	mov.n	a11, a4
	mov.n	a10, a2
	movi.n	a12, 6
	call8	memcpy
.LVL59:
	addi.n	a2, a2, 6
	addi	a4, a4, 20
.L43:
	.loc 1 492 0 discriminator 1
	bne	a2, a3, .L44
.LBE9:
	.loc 1 495 0
	retw.n
.LFE55:
	.size	bta_gattc_co_get_addr_list, .-bta_gattc_co_get_addr_list
	.section	.rodata.str1.1
.LC21:
	.string	"BT_APPL"
.LC23:
	.string	"\033[0;33mW (%d) %s: %s(), nvs set blob fail, err %d\033[0m\n"
.LC25:
	.string	"cache_addr_tab"
.LC27:
	.string	"\033[0;31mE (%d) %s: %s, Line = %d, nvs flash open fail, err_code = %x\033[0m\n"
	.section	.text.bta_gattc_co_cache_addr_save,"ax",@progbits
	.literal_position
	.literal .LC15, cache_env
	.literal .LC16, 2048
	.literal .LC17, cache_env+13
	.literal .LC18, .LC0
	.literal .LC19, appl_trace_level
	.literal .LC20, __func__$11401
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.align	4
	.global	bta_gattc_co_cache_addr_save
	.type	bta_gattc_co_cache_addr_save, @function
bta_gattc_co_cache_addr_save:
.LFB56:
	.loc 1 498 0
.LVL60:
	entry	sp, 64
.LCFI9:
	.loc 1 500 0
	l32r	a4, .LC15
	.loc 1 502 0
	l32r	a10, .LC16
	.loc 1 500 0
	l8ui	a6, a4, 5
	addi.n	a5, a6, 1
	extui	a5, a5, 0, 8
	s8i	a5, a4, 5
.LVL61:
	.loc 1 502 0
	s32i.n	a2, sp, 16
	call8	malloc
.LVL62:
	mov.n	a7, a10
.LVL63:
	.loc 1 504 0
	mov.n	a10, a3
	call8	bta_gattc_co_find_hash_in_cache
.LVL64:
	movi	a2, 0xff
.LVL65:
	l32i.n	a11, sp, 16
	beq	a10, a2, .L46
	.loc 1 506 0
	mov.n	a10, a11
	call8	bta_gattc_co_find_addr_in_cache
.LVL66:
	l32i.n	a11, sp, 16
	beq	a10, a2, .L47
	.loc 1 509 0
	addx4	a10, a10, a10
.LVL67:
	addx4	a2, a10, a4
	j	.L62
.LVL68:
.L47:
	.loc 1 513 0
	addi.n	a10, a5, -1
.LVL69:
	l8ui	a8, a3, 0
	addx4	a10, a10, a10
	addx4	a10, a10, a4
	l8ui	a9, a3, 1
	s8i	a8, a10, 19
	l8ui	a8, a3, 2
	s8i	a9, a10, 20
	l8ui	a3, a3, 3
.LVL70:
	.loc 1 514 0
	movi.n	a12, 6
	.loc 1 513 0
	s8i	a8, a10, 21
	s8i	a3, a10, 22
	.loc 1 514 0
	addi.n	a10, a10, 13
	call8	memcpy
.LVL71:
	j	.L48
.LVL72:
.L46:
	.loc 1 519 0
	addi.n	a8, a5, -1
	addx4	a8, a8, a8
	addx4	a2, a8, a4
.LVL73:
.L62:
	addi.n	a10, a2, 13
	movi.n	a12, 6
	call8	memcpy
.LVL74:
	.loc 1 520 0
	l8ui	a9, a3, 0
	l8ui	a10, a3, 1
	s8i	a9, a2, 19
	l8ui	a9, a3, 2
	s8i	a10, a2, 20
	addi	a8, a2, 19
	l8ui	a2, a3, 3
	s8i	a9, a8, 2
	s8i	a2, a8, 3
.LVL75:
.L48:
	.loc 1 524 0
	addx4	a5, a5, a5
.LVL76:
	addi.n	a6, a6, 2
.LVL77:
	slli	a5, a5, 1
.LVL78:
	mov.n	a3, a7
	l32r	a8, .LC17
	extui	a6, a6, 0, 8
.LVL79:
.LBB10:
	.loc 1 526 0
	movi.n	a2, 1
	j	.L49
.LVL80:
.L50:
	.loc 1 528 0 discriminator 3
	mov.n	a11, a8
	movi.n	a12, 6
	mov.n	a10, a3
	s32i.n	a8, sp, 16
	call8	memcpy
.LVL81:
	.loc 1 530 0 discriminator 3
	l32i.n	a8, sp, 16
	addi.n	a2, a2, 1
.LVL82:
	l8ui	a11, a8, 6
	l8ui	a12, a8, 7
	s8i	a11, a3, 6
	l8ui	a10, a8, 9
	l8ui	a11, a8, 8
	s8i	a12, a3, 7
	s8i	a11, a3, 8
	s8i	a10, a3, 9
.LVL83:
	extui	a2, a2, 0, 8
	addi.n	a3, a3, 10
	addi	a8, a8, 20
.L49:
.LVL84:
	.loc 1 526 0 discriminator 1
	bne	a2, a6, .L50
.LBE10:
	.loc 1 534 0
	l8ui	a2, a4, 4
.LVL85:
	beqz.n	a2, .L51
	j	.L67
.L51:
	.loc 1 539 0
	l32r	a10, .LC26
	mov.n	a12, a4
	movi.n	a11, 1
	call8	nvs_open
.LVL86:
	mov.n	a2, a10
.LVL87:
	bnez.n	a10, .L55
	.loc 1 540 0
	movi.n	a2, 1
.LVL88:
	s8i	a2, a4, 4
.LVL89:
.L67:
	.loc 1 541 0
	l32r	a11, .LC18
	l32i.n	a10, a4, 0
	mov.n	a13, a5
	mov.n	a12, a7
	call8	nvs_set_blob
.LVL90:
	mov.n	a2, a10
.LVL91:
	beqz.n	a10, .L53
	.loc 1 542 0
	l32r	a3, .LC19
	l8ui	a3, a3, 0
	bltui	a3, 2, .L53
	.loc 1 542 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC22
	l32r	a15, .LC20
	l32r	a12, .LC24
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL93:
	j	.L53
.L55:
	.loc 1 545 0 is_stmt 1
	l32r	a3, .LC19
	l8ui	a3, a3, 0
	beqz.n	a3, .L53
	.loc 1 545 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC22
	s32i.n	a2, sp, 4
	l32r	a15, .LC20
	movi	a2, 0x221
.LVL95:
	l32r	a12, .LC28
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
.L53:
	.loc 1 549 0 is_stmt 1
	mov.n	a10, a7
	call8	free
.LVL97:
	retw.n
.LFE56:
	.size	bta_gattc_co_cache_addr_save, .-bta_gattc_co_cache_addr_save
	.section	.text.bta_gattc_co_cache_new_assoc_list,"ax",@progbits
	.literal_position
	.literal .LC29, osi_free_func
	.literal .LC30, cache_env
	.align	4
	.global	bta_gattc_co_cache_new_assoc_list
	.type	bta_gattc_co_cache_new_assoc_list, @function
bta_gattc_co_cache_new_assoc_list:
.LFB57:
	.loc 1 555 0
.LVL98:
	entry	sp, 32
.LCFI10:
	.loc 1 557 0
	l32r	a10, .LC29
	.loc 1 555 0
	extui	a3, a3, 0, 8
.LVL99:
	.loc 1 557 0
	call8	list_new
.LVL100:
	l32r	a2, .LC30
.LVL101:
	addx4	a3, a3, a3
.LVL102:
	addx4	a3, a3, a2
	s32i.n	a10, a3, 24
	.loc 1 558 0
	movi.n	a2, 0
	movi.n	a3, 1
	movnez	a2, a3, a10
	.loc 1 559 0
	retw.n
.LFE57:
	.size	bta_gattc_co_cache_new_assoc_list, .-bta_gattc_co_cache_new_assoc_list
	.section	.rodata.str1.1
.LC39:
	.string	"\033[0;31mE (%d) %s: %s, Line = %d, nvs flash get blob data fail, err_code = 0x%x\033[0m\n"
	.section	.text.bta_gattc_co_cache_addr_init,"ax",@progbits
	.literal_position
	.literal .LC31, 2048
	.literal .LC32, .LC25
	.literal .LC33, cache_env
	.literal .LC34, .LC0
	.literal .LC35, 4354
	.literal .LC36, appl_trace_level
	.literal .LC37, __func__$11342
	.literal .LC38, .LC21
	.literal .LC40, .LC39
	.literal .LC41, -858993459
	.literal .LC42, cache_env+13
	.literal .LC43, .LC27
	.align	4
	.global	bta_gattc_co_cache_addr_init
	.type	bta_gattc_co_cache_addr_init, @function
bta_gattc_co_cache_addr_init:
.LFB49:
	.loc 1 379 0
	entry	sp, 64
.LCFI11:
	.loc 1 383 0
	l32r	a2, .LC31
	mov.n	a10, a2
	call8	malloc
.LVL103:
	mov.n	a3, a10
.LVL104:
	.loc 1 386 0
	l32r	a10, .LC32
	addi	a12, sp, 20
	movi.n	a11, 1
	.loc 1 384 0
	s32i.n	a2, sp, 16
	.loc 1 386 0
	call8	nvs_open
.LVL105:
	mov.n	a2, a10
.LVL106:
	bnez.n	a10, .L70
	.loc 1 387 0
	l32r	a2, .LC33
.LVL107:
	l32i.n	a10, sp, 20
.LVL108:
	.loc 1 390 0
	l32r	a11, .LC34
	.loc 1 388 0
	movi.n	a4, 1
	.loc 1 390 0
	addi	a13, sp, 16
	mov.n	a12, a3
	.loc 1 388 0
	s8i	a4, a2, 4
	.loc 1 387 0
	s32i.n	a10, a2, 0
	.loc 1 390 0
	call8	nvs_get_blob
.LVL109:
	mov.n	a4, a10
.LVL110:
	beqz.n	a10, .L71
	.loc 1 391 0
	l32r	a2, .LC35
	beq	a10, a2, .L84
	.loc 1 392 0
	l32r	a2, .LC36
	l8ui	a2, a2, 0
	beqz.n	a2, .L84
	.loc 1 392 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL111:
	l32r	a11, .LC38
	movi	a2, 0x188
	s32i.n	a4, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC37
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	j	.L85
.L71:
	.loc 1 397 0 is_stmt 1
	l32r	a9, .LC41
	l32i.n	a8, sp, 16
	l32r	a5, .LC42
	muluh	a8, a8, a9
	mov.n	a6, a3
	srli	a8, a8, 3
.LVL112:
	.loc 1 398 0
	s8i	a8, a2, 5
.LVL113:
	extui	a8, a8, 0, 8
.LVL114:
	addx4	a8, a8, a8
	addx4	a2, a8, a2
	addi.n	a2, a2, 13
.LBB11:
	.loc 1 400 0
	j	.L74
.LVL115:
.L75:
	.loc 1 401 0
	mov.n	a11, a6
	movi.n	a12, 6
	mov.n	a10, a5
	call8	memcpy
.LVL116:
	.loc 1 402 0
	l8ui	a10, a6, 6
	l8ui	a11, a6, 7
	s8i	a10, a5, 6
	l8ui	a9, a6, 9
	l8ui	a10, a6, 8
	s8i	a11, a5, 7
	s8i	a10, a5, 8
	s8i	a9, a5, 9
	.loc 1 409 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	bta_gattc_co_cache_new_assoc_list
.LVL117:
	addi.n	a4, a4, 1
.LVL118:
	addi	a5, a5, 20
	addi.n	a6, a6, 10
.LVL119:
.L74:
	.loc 1 400 0 discriminator 1
	bne	a5, a2, .L75
	j	.L84
.LVL120:
.L70:
.LBE11:
	.loc 1 412 0
	l32r	a4, .LC36
	l8ui	a4, a4, 0
	beqz.n	a4, .L84
	.loc 1 412 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC38
	s32i.n	a2, sp, 4
	l32r	a15, .LC37
	movi	a2, 0x19c
.LVL122:
	l32r	a12, .LC43
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.L85:
	movi.n	a10, 1
	call8	esp_log_write
.LVL123:
.L84:
	.loc 1 417 0 is_stmt 1
	mov.n	a10, a3
	call8	free
.LVL124:
	retw.n
.LFE49:
	.size	bta_gattc_co_cache_addr_init, .-bta_gattc_co_cache_addr_init
	.section	.text.bta_gattc_co_cache_append_assoc_addr,"ax",@progbits
	.literal_position
	.literal .LC44, cache_env
	.align	4
	.global	bta_gattc_co_cache_append_assoc_addr
	.type	bta_gattc_co_cache_append_assoc_addr, @function
bta_gattc_co_cache_append_assoc_addr:
.LFB58:
	.loc 1 562 0
.LVL125:
	entry	sp, 32
.LCFI12:
.LVL126:
	.loc 1 565 0
	movi.n	a10, 6
	call8	malloc
.LVL127:
	.loc 1 566 0
	mov.n	a11, a3
	movi.n	a12, 6
	.loc 1 565 0
	mov.n	a4, a10
.LVL128:
	.loc 1 566 0
	call8	memcpy
.LVL129:
	.loc 1 567 0
	mov.n	a10, a2
	call8	bta_gattc_co_find_addr_in_cache
.LVL130:
	movi	a5, 0xff
	mov.n	a3, a10
.LVL131:
	.loc 1 575 0
	movi.n	a2, 0
.LVL132:
	.loc 1 567 0
	beq	a10, a5, .L87
.LVL133:
	.loc 1 569 0
	l32r	a8, .LC44
	slli	a6, a10, 2
	add.n	a5, a6, a10
	addx4	a5, a5, a8
	l32i.n	a10, a5, 24
	mov.n	a2, a8
	bnez.n	a10, .L88
	.loc 1 570 0
	call8	list_new
.LVL134:
	s32i.n	a10, a5, 24
.L88:
	.loc 1 572 0
	add.n	a3, a6, a3
.LVL135:
	addx4	a3, a3, a2
	l32i.n	a10, a3, 24
	mov.n	a11, a4
	call8	list_append
.LVL136:
	mov.n	a2, a10
.L87:
	.loc 1 576 0
	retw.n
.LFE58:
	.size	bta_gattc_co_cache_append_assoc_addr, .-bta_gattc_co_cache_append_assoc_addr
	.section	.text.bta_gattc_co_cache_remove_assoc_addr,"ax",@progbits
	.literal_position
	.literal .LC45, cache_env
	.align	4
	.global	bta_gattc_co_cache_remove_assoc_addr
	.type	bta_gattc_co_cache_remove_assoc_addr, @function
bta_gattc_co_cache_remove_assoc_addr:
.LFB59:
	.loc 1 579 0
.LVL137:
	entry	sp, 32
.LCFI13:
.LVL138:
	.loc 1 582 0
	mov.n	a10, a2
	call8	bta_gattc_co_find_addr_in_cache
.LVL139:
	movi	a2, 0xff
.LVL140:
	bne	a10, a2, .L91
.LVL141:
.L93:
	.loc 1 598 0
	movi.n	a2, 0
	retw.n
.LVL142:
.L91:
	.loc 1 584 0
	l32r	a6, .LC45
	addx4	a2, a10, a10
	addx4	a5, a2, a6
	l32i.n	a10, a5, 24
.LVL143:
	beqz.n	a10, .L93
.LBB12:
	.loc 1 585 0
	call8	list_begin
.LVL144:
	j	.L100
.LVL145:
.L96:
.LBB13:
	.loc 1 587 0
	mov.n	a10, a4
	call8	list_node
.LVL146:
	.loc 1 588 0
	movi.n	a12, 6
	mov.n	a11, a3
	.loc 1 587 0
	mov.n	a7, a10
.LVL147:
	.loc 1 588 0
	call8	memcmp
.LVL148:
	bnez.n	a10, .L95
	.loc 1 589 0
	addx4	a2, a2, a6
	l32i.n	a10, a2, 24
	mov.n	a11, a7
	call8	list_remove
.LVL149:
	mov.n	a2, a10
	retw.n
.L95:
.LBE13:
	.loc 1 586 0 discriminator 1
	mov.n	a10, a4
	call8	list_next
.LVL150:
.L100:
	mov.n	a4, a10
.LVL151:
	l32i.n	a10, a5, 24
	call8	list_end
.LVL152:
	.loc 1 585 0 discriminator 1
	bne	a4, a10, .L96
	j	.L93
.LBE12:
.LFE59:
	.size	bta_gattc_co_cache_remove_assoc_addr, .-bta_gattc_co_cache_remove_assoc_addr
	.section	.text.bta_gattc_co_cache_find_src_addr,"ax",@progbits
	.literal_position
	.literal .LC48, cache_env+8
	.literal .LC49, cache_env
	.align	4
	.global	bta_gattc_co_cache_find_src_addr
	.type	bta_gattc_co_cache_find_src_addr, @function
bta_gattc_co_cache_find_src_addr:
.LFB60:
	.loc 1 602 0
.LVL153:
	entry	sp, 32
.LCFI14:
	.loc 1 603 0
	l32r	a4, .LC49
	l8ui	a7, a4, 5
.LVL154:
	.loc 1 607 0
	l32i.n	a4, a4, 24
	beqz.n	a4, .L102
	movi.n	a5, 0
	l32r	a4, .LC48
.LVL155:
	j	.L103
.LVL156:
.L102:
	.loc 1 608 0
	movi.n	a2, -1
.LVL157:
	s8i	a2, a3, 0
	.loc 1 609 0
	movi.n	a2, 0
	retw.n
.LVL158:
.L108:
.LBB14:
.LBB15:
	.loc 1 613 0
	l32i.n	a10, a4, 16
	call8	list_begin
.LVL159:
	j	.L115
.LVL160:
.L107:
	.loc 1 615 0
	mov.n	a10, a6
	call8	list_node
.LVL161:
	.loc 1 616 0
	movi.n	a12, 6
	mov.n	a11, a2
	call8	memcmp
.LVL162:
	bnez.n	a10, .L106
	.loc 1 617 0
	s8i	a5, a3, 0
	.loc 1 618 0
	addi.n	a2, a4, 5
.LVL163:
	retw.n
.LVL164:
.L106:
	.loc 1 614 0
	mov.n	a10, a6
	call8	list_next
.LVL165:
.L115:
	mov.n	a6, a10
.LVL166:
	.loc 1 613 0
	l32i.n	a10, a4, 16
	call8	list_end
.LVL167:
	bne	a6, a10, .L107
.LBE15:
	.loc 1 621 0
	addi	a4, a4, 20
.LVL168:
	.loc 1 623 0
	l32i.n	a6, a4, 16
.LVL169:
	beqz.n	a6, .L102
	.loc 1 612 0 discriminator 2
	addi.n	a5, a5, 1
.LVL170:
.L103:
	.loc 1 612 0 is_stmt 0 discriminator 1
	blt	a5, a7, .L108
	j	.L102
.LBE14:
.LFE60:
	.size	bta_gattc_co_cache_find_src_addr, .-bta_gattc_co_cache_find_src_addr
	.section	.rodata.str1.1
.LC51:
	.string	"gatt_"
.LC53:
	.string	"%s%02x%02x%02x%02x"
	.section	.text.cacheOpen,"ax",@progbits
	.literal_position
	.literal .LC50, cache_env
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.align	4
	.type	cacheOpen, @function
cacheOpen:
.LFB41:
	.loc 1 119 0 is_stmt 1
.LVL171:
	entry	sp, 304
.LCFI15:
	.loc 1 121 0
	movi	a3, 0xff
.LVL172:
	mov.n	a12, a3
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL173:
	.loc 1 125 0
	mov.n	a10, a2
	call8	bta_gattc_co_find_addr_in_cache
.LVL174:
	s8i	a10, a4, 0
	beq	a10, a3, .L117
.LVL175:
.L120:
	.loc 1 127 0
	l8ui	a8, a4, 0
	l32r	a3, .LC50
	addx4	a8, a8, a8
	addx4	a8, a8, a3
	l8ui	a2, a8, 12
.LVL176:
	bnez.n	a2, .L118
	j	.L122
.LVL177:
.L117:
	.loc 1 125 0 discriminator 1
	mov.n	a11, a4
	mov.n	a10, a2
	call8	bta_gattc_co_cache_find_src_addr
.LVL178:
	bnez.n	a10, .L120
	.loc 1 123 0
	movi.n	a10, -1
.LVL179:
	j	.L121
.LVL180:
.L122:
.LBB18:
.LBB19:
	.loc 1 103 0
	l8ui	a2, a8, 22
	l8ui	a15, a8, 21
	l8ui	a14, a8, 20
	l8ui	a13, a8, 19
	l32r	a12, .LC52
	l32r	a11, .LC54
	s32i.n	a2, sp, 0
.LVL181:
	addi	a10, sp, 16
.LVL182:
	call8	sprintf
.LVL183:
.LBE19:
.LBE18:
	.loc 1 132 0
	l8ui	a12, a4, 0
	movi.n	a11, 1
	addx4	a12, a12, a12
	addx4	a12, a12, a3
	addi.n	a12, a12, 8
	addi	a10, sp, 16
.LVL184:
	call8	nvs_open
.LVL185:
	bnez.n	a10, .L121
	.loc 1 134 0
	l8ui	a2, a4, 0
	addx4	a2, a2, a2
	addx4	a3, a2, a3
	movi.n	a2, 1
	s8i	a2, a3, 12
.LVL186:
.L121:
	.loc 1 139 0
	movi.n	a2, 0
	movi.n	a3, 1
	moveqz	a2, a3, a10
	extui	a2, a2, 0, 8
.LVL187:
.L118:
	.loc 1 140 0
	retw.n
.LFE41:
	.size	cacheOpen, .-cacheOpen
	.section	.text.bta_gattc_co_cache_open,"ax",@progbits
	.align	4
	.global	bta_gattc_co_cache_open
	.type	bta_gattc_co_cache_open, @function
bta_gattc_co_cache_open:
.LFB43:
	.loc 1 236 0
.LVL188:
	entry	sp, 32
.LCFI16:
.LVL189:
	.loc 1 239 0
	mov.n	a12, a4
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	cacheOpen
.LVL190:
	.loc 1 240 0
	movi.n	a8, 0
	movi	a2, 0x85
.LVL191:
	movnez	a2, a8, a10
.LVL192:
	.loc 1 245 0
	retw.n
.LFE43:
	.size	bta_gattc_co_cache_open, .-bta_gattc_co_cache_open
	.section	.text.bta_gattc_co_cache_save,"ax",@progbits
	.literal_position
	.literal .LC55, .LC0
	.literal .LC56, cache_env
	.align	4
	.global	bta_gattc_co_cache_save
	.type	bta_gattc_co_cache_save, @function
bta_gattc_co_cache_save:
.LFB46:
	.loc 1 313 0
.LVL193:
	entry	sp, 48
.LCFI17:
.LVL194:
	.loc 1 313 0
	extui	a3, a3, 0, 16
	.loc 1 315 0
	movi.n	a8, 0
	.loc 1 318 0
	slli	a3, a3, 5
.LVL195:
	mov.n	a12, sp
	.loc 1 315 0
	s32i.n	a8, sp, 0
	.loc 1 318 0
	mov.n	a11, a3
	.loc 1 316 0
	movi.n	a8, -1
	.loc 1 318 0
	mov.n	a10, a4
	.loc 1 316 0
	s8i	a8, sp, 4
	.loc 1 318 0
	call8	hash_function_blob
.LVL196:
	.loc 1 320 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bta_gattc_co_cache_addr_save
.LVL197:
	.loc 1 322 0
	addi.n	a12, sp, 4
	movi.n	a11, 1
	mov.n	a10, a2
	call8	cacheOpen
.LVL198:
	beqz.n	a10, .L126
.LBB20:
	.loc 1 323 0
	l8ui	a8, sp, 4
	l32r	a2, .LC56
.LVL199:
	addx4	a8, a8, a8
	addx4	a8, a8, a2
	l32r	a11, .LC55
	l32i.n	a10, a8, 8
	mov.n	a13, a3
	mov.n	a12, a4
	call8	nvs_set_blob
.LVL200:
.L126:
	retw.n
.LBE20:
.LFE46:
	.size	bta_gattc_co_cache_save, .-bta_gattc_co_cache_save
	.section	.text.bta_gattc_co_cache_clear_assoc_addr,"ax",@progbits
	.literal_position
	.literal .LC57, cache_env
	.align	4
	.global	bta_gattc_co_cache_clear_assoc_addr
	.type	bta_gattc_co_cache_clear_assoc_addr, @function
bta_gattc_co_cache_clear_assoc_addr:
.LFB61:
	.loc 1 634 0
.LVL201:
	entry	sp, 32
.LCFI18:
.LVL202:
	.loc 1 637 0
	mov.n	a10, a2
	call8	bta_gattc_co_find_addr_in_cache
.LVL203:
	movi	a8, 0xff
	.loc 1 647 0
	movi.n	a2, 0
.LVL204:
	.loc 1 637 0
	beq	a10, a8, .L132
.LVL205:
	.loc 1 639 0
	l32r	a2, .LC57
	addx4	a10, a10, a10
.LVL206:
	addx4	a10, a10, a2
	l32i.n	a10, a10, 24
	.loc 1 647 0
	movi.n	a2, 0
	.loc 1 639 0
	beq	a10, a2, .L132
	.loc 1 640 0
	call8	list_clear
.LVL207:
	.loc 1 644 0
	movi.n	a2, 1
.L132:
	.loc 1 648 0
	retw.n
.LFE61:
	.size	bta_gattc_co_cache_clear_assoc_addr, .-bta_gattc_co_cache_clear_assoc_addr
	.section	.rodata.str1.1
.LC64:
	.string	"\033[0;31mE (%d) %s: %s cacheOpen failed\033[0m\n"
.LC66:
	.string	"\033[0;31mE (%d) %s: %s cache addr list error\033[0m\n"
.LC69:
	.string	"\033[0;31mE (%d) %s: %s malloc error\033[0m\n"
.LC73:
	.string	"\033[0;33mW (%d) %s: %s, nvs set blob failed\033[0m\n"
.LC75:
	.string	"\033[0;33mW (%d) %s: cache_env status is error\033[0m\n"
	.section	.text.bta_gattc_co_cache_reset,"ax",@progbits
	.literal_position
	.literal .LC58, .LC51
	.literal .LC59, .LC53
	.literal .LC60, cache_env
	.literal .LC61, appl_trace_level
	.literal .LC62, __func__$11284
	.literal .LC63, .LC21
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.literal .LC68, 2048
	.literal .LC70, .LC69
	.literal .LC71, cache_env+13
	.literal .LC72, .LC0
	.literal .LC74, .LC73
	.literal .LC76, .LC75
	.align	4
	.global	bta_gattc_co_cache_reset
	.type	bta_gattc_co_cache_reset, @function
bta_gattc_co_cache_reset:
.LFB48:
	.loc 1 374 0
.LVL208:
	entry	sp, 320
.LCFI19:
.LVL209:
.LBB29:
.LBB30:
	.loc 1 144 0
	movi	a6, 0xff
	mov.n	a12, a6
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL210:
.LBB31:
.LBB32:
	.loc 1 103 0
	l8ui	a3, a2, 3
	l8ui	a15, a2, 2
	l8ui	a14, a2, 1
	l8ui	a13, a2, 0
	l32r	a12, .LC58
	l32r	a11, .LC59
	s32i.n	a3, sp, 0
	addi	a10, sp, 16
.LVL211:
	call8	sprintf
.LVL212:
.LBE32:
.LBE31:
	.loc 1 146 0
	addmi	a4, sp, 0x100
	movi.n	a5, 0
	.loc 1 148 0
	mov.n	a10, a2
	.loc 1 146 0
	s8i	a5, a4, 15
	.loc 1 148 0
	call8	bta_gattc_co_find_addr_in_cache
.LVL213:
	s8i	a10, a4, 15
	beq	a10, a6, .L136
.LBB33:
	.loc 1 150 0
	mov.n	a10, a2
	call8	bta_gattc_co_cache_clear_assoc_addr
.LVL214:
	.loc 1 151 0
	l8ui	a8, a4, 15
	l32r	a3, .LC60
	addx4	a8, a8, a8
	addx4	a8, a8, a3
	l8ui	a7, a8, 12
	beqz.n	a7, .L139
	.loc 1 152 0
	l32i.n	a10, a8, 8
	call8	nvs_erase_all
.LVL215:
	.loc 1 153 0
	l8ui	a2, a4, 15
.LVL216:
	addx4	a2, a2, a2
	addx4	a2, a2, a3
	l32i.n	a10, a2, 8
	call8	nvs_close
.LVL217:
	.loc 1 154 0
	l8ui	a2, a4, 15
	addx4	a2, a2, a2
	addx4	a2, a2, a3
	s8i	a5, a2, 12
	j	.L140
.LVL218:
.L139:
	.loc 1 156 0
	addi	a5, sp, 16
.LVL219:
	add.n	a12, a5, a6
	mov.n	a10, a2
	mov.n	a11, a7
	call8	cacheOpen
.LVL220:
	.loc 1 157 0
	l8ui	a2, a4, 15
.LVL221:
	addx4	a2, a2, a2
	addx4	a2, a2, a3
	l8ui	a5, a2, 12
.LVL222:
	beqz.n	a5, .L141
	.loc 1 158 0
	l32i.n	a10, a2, 8
	call8	nvs_erase_all
.LVL223:
	.loc 1 159 0
	l8ui	a2, a4, 15
	addx4	a2, a2, a2
	addx4	a2, a2, a3
	l32i.n	a10, a2, 8
	call8	nvs_close
.LVL224:
	.loc 1 160 0
	l8ui	a2, a4, 15
	addx4	a2, a2, a2
	addx4	a2, a2, a3
	s8i	a7, a2, 12
	j	.L140
.L141:
	.loc 1 162 0
	l32r	a2, .LC61
	l8ui	a2, a2, 0
	beqz.n	a2, .L136
	call8	esp_log_timestamp
.LVL225:
	l32r	a11, .LC63
	l32r	a15, .LC62
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	j	.L169
.L140:
	.loc 1 166 0
	l8ui	a5, a3, 5
	bnez.n	a5, .L144
	.loc 1 167 0
	l32r	a2, .LC61
	l8ui	a2, a2, 0
	beqz.n	a2, .L136
	call8	esp_log_timestamp
.LVL226:
	l32r	a11, .LC63
	l32r	a15, .LC62
	l32r	a12, .LC67
	mov.n	a14, a11
	mov.n	a13, a10
.L169:
	movi.n	a10, 1
	call8	esp_log_write
.LVL227:
	retw.n
.L144:
.LVL228:
.LBB34:
	.loc 1 173 0
	l8ui	a2, a4, 15
.LVL229:
	addi.n	a5, a5, -1
.LVL230:
	j	.L145
.LVL231:
.L146:
	.loc 1 174 0
	addx4	a10, a2, a2
	addi.n	a2, a2, 1
.LVL232:
	addx4	a11, a2, a2
	addx4	a10, a10, a3
	addx4	a11, a11, a3
	movi.n	a12, 0x14
	addi.n	a11, a11, 8
	addi.n	a10, a10, 8
	call8	memcpy
.LVL233:
	.loc 1 173 0
	extui	a2, a2, 0, 8
.LVL234:
.L145:
	blt	a2, a5, .L146
.LBE34:
	.loc 1 177 0
	l8ui	a7, a3, 5
	addi.n	a2, a7, -1
.LVL235:
	extui	a2, a2, 0, 8
	s8i	a2, a3, 5
	.loc 1 180 0
	beqz.n	a2, .L147
.LBB35:
	.loc 1 182 0
	l32r	a10, .LC68
	call8	malloc
.LVL236:
	mov.n	a5, a10
.LVL237:
	.loc 1 183 0
	bnez.n	a10, .L148
	.loc 1 184 0
	l32r	a2, .LC61
	l8ui	a2, a2, 0
	beqz.n	a2, .L136
	call8	esp_log_timestamp
.LVL238:
	l32r	a11, .LC63
	l32r	a15, .LC62
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	j	.L169
.L148:
.LVL239:
	l32r	a9, .LC71
	mov.n	a13, a10
	.loc 1 183 0
	movi.n	a4, 1
.LVL240:
.L149:
.LBB36:
	.loc 1 190 0
	mov.n	a11, a9
	mov.n	a10, a13
	movi.n	a12, 6
	s32i	a9, sp, 272
	call8	memcpy
.LVL241:
	.loc 1 192 0
	l32i	a9, sp, 272
	.loc 1 190 0
	mov.n	a13, a10
	.loc 1 192 0
	addi.n	a6, a10, 6
	l8ui	a10, a9, 6
	l8ui	a11, a9, 7
	s8i	a10, a13, 6
	l8ui	a8, a9, 9
	l8ui	a10, a9, 8
	addi.n	a4, a4, 1
.LVL242:
	s8i	a11, a13, 7
	s8i	a10, a13, 8
	s8i	a8, a13, 9
.LVL243:
	extui	a4, a4, 0, 8
	addi.n	a13, a13, 10
	addi	a9, a9, 20
	.loc 1 188 0
	bne	a7, a4, .L149
.LBE36:
	.loc 1 195 0
	l8ui	a4, a3, 4
	beqz.n	a4, .L151
	.loc 1 196 0
	addx4	a13, a2, a2
	l32r	a11, .LC72
	l32i.n	a10, a3, 0
	slli	a13, a13, 1
	mov.n	a12, a5
	call8	nvs_set_blob
.LVL244:
	beqz.n	a10, .L151
	.loc 1 197 0
	l32r	a2, .LC61
.LVL245:
	l8ui	a2, a2, 0
	bltui	a2, 2, .L151
	call8	esp_log_timestamp
.LVL246:
	l32r	a11, .LC63
	l32r	a15, .LC62
	l32r	a12, .LC74
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL247:
.L151:
	.loc 1 200 0
	mov.n	a10, a5
	call8	free
.LVL248:
	retw.n
.LVL249:
.L147:
.LBE35:
	.loc 1 204 0
	l8ui	a4, a3, 4
	beqz.n	a4, .L153
	.loc 1 205 0
	l32i.n	a10, a3, 0
	call8	nvs_erase_all
.LVL250:
	.loc 1 206 0
	l32i.n	a10, a3, 0
	call8	nvs_close
.LVL251:
	.loc 1 207 0
	s8i	a2, a3, 4
	retw.n
.L153:
	.loc 1 209 0
	l32r	a2, .LC61
	l8ui	a2, a2, 0
	bltui	a2, 2, .L136
	call8	esp_log_timestamp
.LVL252:
	l32r	a11, .LC63
	l32r	a12, .LC76
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL253:
.L136:
	retw.n
.LBE33:
.LBE30:
.LBE29:
.LFE48:
	.size	bta_gattc_co_cache_reset, .-bta_gattc_co_cache_reset
	.section	.rodata.__func__$11401,"a",@progbits
	.type	__func__$11401, @object
	.size	__func__$11401, 29
__func__$11401:
	.string	"bta_gattc_co_cache_addr_save"
	.section	.rodata.__func__$11342,"a",@progbits
	.type	__func__$11342, @object
	.size	__func__$11342, 29
__func__$11342:
	.string	"bta_gattc_co_cache_addr_init"
	.section	.rodata.__func__$11284,"a",@progbits
	.type	__func__$11284, @object
	.size	__func__$11284, 11
__func__$11284:
	.string	"cacheReset"
	.comm	cache_env,1008,4
	.comm	nvs_fp,4,4
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI0-.LFB44
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI2-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI3-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI4-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI5-.LFB47
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x40
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
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI11-.LFB49
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI12-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI13-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI14-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI15-.LFB41
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI16-.LFB43
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
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI18-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI19-.LFB48
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gatt_api.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/hash_functions.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nvs_flash/include/nvs.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x170b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x16
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x5e
	.4byte	0xab
	.uleb128 0x6
	.4byte	0xab
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x9
	.4byte	0xc7
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x82
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1f
	.4byte	0x136
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
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.4byte	0xd9
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1b
	.4byte	0xe4
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1c
	.4byte	0xfa
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x22
	.4byte	0x162
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x12b
	.4byte	0x175
	.uleb128 0x5
	.4byte	0x136
	.4byte	0x185
	.uleb128 0x6
	.4byte	0xab
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x136
	.uleb128 0x5
	.4byte	0x136
	.4byte	0x19b
	.uleb128 0x6
	.4byte	0xab
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.2byte	0x1a4
	.4byte	0x1c9
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x1a5
	.4byte	0x141
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x1a6
	.4byte	0x14c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x1a7
	.4byte	0x18b
	.byte	0
	.uleb128 0xf
	.byte	0x14
	.byte	0x5
	.2byte	0x19d
	.4byte	0x1ec
	.uleb128 0x10
	.string	"len"
	.byte	0x5
	.2byte	0x1a2
	.4byte	0x141
	.byte	0
	.uleb128 0x10
	.string	"uu"
	.byte	0x5
	.2byte	0x1a8
	.4byte	0x19b
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x1aa
	.4byte	0x1c9
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x6
	.byte	0x18
	.4byte	0xef
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x7
	.byte	0x7
	.4byte	0x213
	.uleb128 0x11
	.4byte	.LASF37
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x7
	.byte	0xa
	.4byte	0x223
	.uleb128 0x11
	.4byte	.LASF38
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x8
	.byte	0x8d
	.4byte	0x136
	.uleb128 0xf
	.byte	0x20
	.byte	0x8
	.2byte	0x115
	.4byte	0x2b1
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x116
	.4byte	0x1ec
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x117
	.4byte	0x141
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x118
	.4byte	0x141
	.byte	0x16
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x119
	.4byte	0x136
	.byte	0x18
	.uleb128 0x10
	.string	"id"
	.byte	0x8
	.2byte	0x11a
	.4byte	0x136
	.byte	0x19
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x11b
	.4byte	0x136
	.byte	0x1a
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x11c
	.4byte	0x157
	.byte	0x1b
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x11d
	.4byte	0x141
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x11e
	.4byte	0x141
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x11f
	.4byte	0x233
	.uleb128 0x8
	.byte	0x4
	.4byte	0x169
	.uleb128 0x8
	.byte	0x4
	.4byte	0x218
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x9
	.byte	0x18
	.4byte	0x9b
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa
	.byte	0x1d
	.4byte	0xfa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x3f
	.4byte	0x2f8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x14
	.byte	0x1
	.byte	0x52
	.4byte	0x33d
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x54
	.4byte	0x2d4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x55
	.4byte	0x157
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x56
	.4byte	0x169
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x57
	.4byte	0x2c9
	.byte	0xb
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x58
	.4byte	0x2c3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x1
	.byte	0x59
	.4byte	0x2f8
	.uleb128 0x15
	.2byte	0x3f0
	.byte	0x1
	.byte	0x5b
	.4byte	0x382
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5d
	.4byte	0x2d4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5e
	.4byte	0x157
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5f
	.4byte	0x136
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x60
	.4byte	0x382
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x33d
	.4byte	0x392
	.uleb128 0x6
	.4byte	0xab
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x1
	.byte	0x61
	.4byte	0x348
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x106
	.4byte	0x228
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45a
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x106
	.4byte	0x45a
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x106
	.4byte	0x136
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x109
	.4byte	0x141
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x10b
	.4byte	0x228
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x110
	.4byte	0x1f8
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LASF79
	.4byte	0x470
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x1612
	.4byte	0x43d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0x1612
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2b1
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0x470
	.uleb128 0x6
	.4byte	0xab
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.4byte	0x460
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x11b
	.4byte	0x3a
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cd
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x11b
	.4byte	0x136
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x11d
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0x1612
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
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
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1a5
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x531
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x527
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x136
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x531
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0x161e
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0x162a
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x161e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x33d
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x157
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0x23
	.string	"bda"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x185
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x136
	.4byte	.LLST8
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x136
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x531
	.uleb128 0x6
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x1635
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	cache_env+13
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x136
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x635
	.uleb128 0x23
	.string	"bda"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x185
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x136
	.4byte	.LLST11
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x136
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x531
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x1635
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF96
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	0x658
	.uleb128 0x25
	.string	"bda"
	.byte	0x1
	.byte	0x6b
	.4byte	0x185
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6d
	.4byte	0x136
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e0
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x15d
	.4byte	0x185
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x15d
	.4byte	0x141
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF80
	.4byte	0x6f0
	.uleb128 0x28
	.4byte	0x635
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.2byte	0x161
	.uleb128 0x29
	.4byte	0x641
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2b
	.4byte	0x64c
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0x5b3
	.4byte	0x6d4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL45
	.4byte	0x161e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0x6f0
	.uleb128 0x6
	.4byte	0xab
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	0x6e0
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x136
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x771
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xbb
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x136
	.4byte	.LLST18
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x136
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1da
	.4byte	0x531
	.uleb128 0x6
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LVL50
	.4byte	0x1635
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	cache_env+19
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x136
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1e9
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f1
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x2bd
	.4byte	.LLST20
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x136
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x136
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL59
	.4byte	0x1640
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1f1
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa19
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x185
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1f1
	.4byte	0xbb
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x1f8
	.4byte	.LLST25
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x136
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x136
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x185
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF79
	.4byte	0xa29
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11401
	.uleb128 0x2e
	.string	"fp"
	.byte	0x1
	.2byte	0x20b
	.4byte	0xa2e
	.uleb128 0x6
	.byte	0x3
	.4byte	cache_env
	.byte	0x9f
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x20c
	.4byte	0x141
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x8c5
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x136
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0x1640
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL62
	.4byte	0x1649
	.4byte	0x8da
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x6f5
	.4byte	0x8ee
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL66
	.4byte	0x5b3
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0x1640
	.4byte	0x91c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x75
	.sleb128 -1
	.byte	0x75
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL74
	.4byte	0x1640
	.4byte	0x935
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL86
	.4byte	0x1654
	.4byte	0x957
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL90
	.4byte	0x165f
	.4byte	0x97a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL92
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL93
	.4byte	0x1675
	.4byte	0x9c1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11401
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL94
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0x1675
	.4byte	0xa08
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
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11401
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL97
	.4byte	0x1680
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0xa29
	.uleb128 0x6
	.4byte	0xab
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.4byte	0xa19
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x22a
	.4byte	0x157
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa88
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x22a
	.4byte	0x185
	.4byte	.LLST29
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x22a
	.4byte	0x136
	.4byte	.LLST30
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x22c
	.4byte	0x531
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0x168b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17a
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd8
	.uleb128 0x2e
	.string	"fp"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x17d
	.4byte	0x1f8
	.4byte	.LLST32
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x17e
	.4byte	0x136
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x17f
	.4byte	0x185
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x180
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF79
	.4byte	0xbd8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11342
	.uleb128 0x1f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xb49
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0x136
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LVL116
	.4byte	0x1640
	.4byte	0xb32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL117
	.4byte	0xa34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL103
	.4byte	0x1649
	.4byte	0xb5d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL105
	.4byte	0x1654
	.4byte	0xb7f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x1612
	.4byte	0xba2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL111
	.4byte	0x166a
	.uleb128 0x22
	.4byte	.LVL121
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL123
	.4byte	0x1675
	.4byte	0xbc7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL124
	.4byte	0x1680
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xa19
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x231
	.4byte	0x157
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca5
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x231
	.4byte	0x185
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x231
	.4byte	0x185
	.4byte	.LLST36
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x233
	.4byte	0x136
	.4byte	.LLST37
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x234
	.4byte	0x531
	.4byte	.LLST38
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x235
	.4byte	0x185
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL127
	.4byte	0x1649
	.4byte	0xc58
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL129
	.4byte	0x1640
	.4byte	0xc77
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL130
	.4byte	0x5b3
	.4byte	0xc8b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL134
	.4byte	0x168b
	.uleb128 0x1d
	.4byte	.LVL136
	.4byte	0x1696
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x242
	.4byte	0x157
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb2
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x242
	.4byte	0x185
	.4byte	.LLST39
	.uleb128 0x27
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x242
	.4byte	0x185
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x244
	.4byte	0x136
	.4byte	.LLST40
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x245
	.4byte	0x531
	.4byte	.LLST41
	.uleb128 0x1f
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xda1
	.uleb128 0x20
	.string	"sn"
	.byte	0x1
	.2byte	0x249
	.4byte	0xdb2
	.4byte	.LLST42
	.uleb128 0x1f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xd7a
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x24b
	.4byte	0xb2
	.4byte	.LLST43
	.uleb128 0x1b
	.4byte	.LVL146
	.4byte	0x16a1
	.4byte	0xd4a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL148
	.4byte	0x1635
	.4byte	0xd69
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL149
	.4byte	0x16ac
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL144
	.4byte	0x16b7
	.uleb128 0x1b
	.4byte	.LVL150
	.4byte	0x16c2
	.4byte	0xd97
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL152
	.4byte	0x16cd
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL139
	.4byte	0x5b3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x208
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x259
	.4byte	0x185
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea4
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x259
	.4byte	0x185
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x259
	.4byte	0x185
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x25b
	.4byte	0x136
	.4byte	.LLST45
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x25c
	.4byte	0x531
	.4byte	.LLST46
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x25d
	.4byte	0x185
	.4byte	.LLST47
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x264
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x265
	.4byte	0xea4
	.4byte	.LLST48
	.uleb128 0x22
	.4byte	.LVL159
	.4byte	0x16b7
	.uleb128 0x1b
	.4byte	.LVL161
	.4byte	0x16a1
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL162
	.4byte	0x1635
	.4byte	0xe84
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL165
	.4byte	0x16c2
	.4byte	0xe98
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL167
	.4byte	0x16cd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xeaa
	.uleb128 0x9
	.4byte	0x208
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	0xed2
	.uleb128 0x2f
	.4byte	.LASF98
	.byte	0x1
	.byte	0x65
	.4byte	0xc1
	.uleb128 0x2f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x65
	.4byte	0xbb
	.byte	0
	.uleb128 0x30
	.4byte	.LASF142
	.byte	0x1
	.byte	0x76
	.4byte	0x162
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1007
	.uleb128 0x31
	.string	"bda"
	.byte	0x1
	.byte	0x76
	.4byte	0x185
	.4byte	.LLST49
	.uleb128 0x32
	.4byte	.LASF100
	.byte	0x1
	.byte	0x76
	.4byte	0x162
	.4byte	.LLST50
	.uleb128 0x33
	.4byte	.LASF64
	.byte	0x1
	.byte	0x76
	.4byte	0x185
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	.LASF101
	.byte	0x1
	.byte	0x79
	.4byte	0x1007
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x35
	.4byte	.LASF57
	.byte	0x1
	.byte	0x7a
	.4byte	0x185
	.4byte	.LLST51
	.uleb128 0x35
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7b
	.4byte	0x1f8
	.4byte	.LLST52
	.uleb128 0x35
	.4byte	.LASF56
	.byte	0x1
	.byte	0x7c
	.4byte	0x2c9
	.4byte	.LLST53
	.uleb128 0x36
	.4byte	0xeaf
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x83
	.4byte	0xfa2
	.uleb128 0x29
	.4byte	0xec6
	.4byte	.LLST54
	.uleb128 0x29
	.4byte	0xebb
	.4byte	.LLST55
	.uleb128 0x1d
	.4byte	.LVL183
	.4byte	0x16d8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL173
	.4byte	0x16e3
	.4byte	0xfc2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL174
	.4byte	0x5b3
	.4byte	0xfd6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL178
	.4byte	0xdb8
	.4byte	0xff0
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL185
	.4byte	0x1654
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0x1017
	.uleb128 0x6
	.4byte	0xab
	.byte	0xfe
	.byte	0
	.uleb128 0x37
	.4byte	.LASF102
	.byte	0x1
	.byte	0xeb
	.4byte	0x228
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1091
	.uleb128 0x32
	.4byte	.LASF77
	.byte	0x1
	.byte	0xeb
	.4byte	0x185
	.4byte	.LLST56
	.uleb128 0x33
	.4byte	.LASF100
	.byte	0x1
	.byte	0xeb
	.4byte	0x157
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF64
	.byte	0x1
	.byte	0xeb
	.4byte	0x185
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF66
	.byte	0x1
	.byte	0xee
	.4byte	0x228
	.4byte	.LLST57
	.uleb128 0x1a
	.4byte	.LASF79
	.4byte	0x1091
	.uleb128 0x1d
	.4byte	.LVL190
	.4byte	0xed2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x460
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x137
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119d
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x137
	.4byte	0x185
	.4byte	.LLST58
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x137
	.4byte	0x141
	.4byte	.LLST59
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x138
	.4byte	0x45a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x13a
	.4byte	0x228
	.byte	0
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x13b
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x13c
	.4byte	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.4byte	.LASF79
	.4byte	0x119d
	.uleb128 0x1f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1147
	.uleb128 0x39
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x143
	.4byte	0x1f8
	.uleb128 0x1d
	.4byte	.LVL200
	.4byte	0x165f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL196
	.4byte	0x16ec
	.4byte	0x1167
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
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
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL197
	.4byte	0x7f1
	.4byte	0x1181
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
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL198
	.4byte	0xed2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x460
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x279
	.4byte	0x157
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120a
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x279
	.4byte	0x185
	.4byte	.LLST60
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x27b
	.4byte	0x136
	.4byte	.LLST61
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x27c
	.4byte	0x531
	.4byte	.LLST62
	.uleb128 0x1b
	.4byte	.LVL203
	.4byte	0x5b3
	.4byte	0x1200
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL207
	.4byte	0x16f7
	.byte	0
	.uleb128 0x24
	.4byte	.LASF106
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0x1284
	.uleb128 0x25
	.string	"bda"
	.byte	0x1
	.byte	0x8e
	.4byte	0x185
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.byte	0x90
	.4byte	0x1007
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x92
	.4byte	0x136
	.uleb128 0x3a
	.4byte	.LASF79
	.4byte	0x1294
	.4byte	.LASF106
	.uleb128 0x3b
	.uleb128 0x3c
	.string	"num"
	.byte	0x1
	.byte	0xab
	.4byte	0x136
	.uleb128 0x3d
	.4byte	0x125f
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x136
	.byte	0
	.uleb128 0x3b
	.uleb128 0x26
	.4byte	.LASF86
	.byte	0x1
	.byte	0xb6
	.4byte	0x185
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.byte	0xbb
	.4byte	0x141
	.uleb128 0x3b
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.4byte	0x136
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0x1294
	.uleb128 0x6
	.4byte	0xab
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	0x1284
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x175
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1584
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x175
	.4byte	0x185
	.4byte	.LLST63
	.uleb128 0x28
	.4byte	0x120a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.2byte	0x177
	.uleb128 0x29
	.4byte	0x1216
	.4byte	.LLST64
	.uleb128 0x2a
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x3e
	.4byte	0x1221
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3e
	.4byte	0x122c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x3e
	.4byte	0x1237
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11284
	.uleb128 0x36
	.4byte	0xeaf
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x91
	.4byte	0x134d
	.uleb128 0x29
	.4byte	0xec6
	.4byte	.LLST65
	.uleb128 0x29
	.4byte	0xebb
	.4byte	.LLST66
	.uleb128 0x1d
	.4byte	.LVL212
	.4byte	0x16d8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x1551
	.uleb128 0x2b
	.4byte	0x1245
	.4byte	.LLST67
	.uleb128 0x1f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x13ad
	.uleb128 0x2b
	.4byte	0x1255
	.4byte	.LLST68
	.uleb128 0x1d
	.4byte	.LVL233
	.4byte	0x1640
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x72
	.sleb128 -1
	.byte	0x72
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x148b
	.uleb128 0x2b
	.4byte	0x1260
	.4byte	.LLST69
	.uleb128 0x2b
	.4byte	0x126b
	.4byte	.LLST70
	.uleb128 0x1f
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0x13f2
	.uleb128 0x2b
	.4byte	0x1277
	.4byte	.LLST71
	.uleb128 0x1d
	.4byte	.LVL241
	.4byte	0x1640
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL236
	.4byte	0x1649
	.4byte	0x1407
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x22
	.4byte	.LVL238
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL244
	.4byte	0x165f
	.4byte	0x143a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.4byte	.LVL246
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL247
	.4byte	0x1675
	.4byte	0x147a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$11284
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL248
	.4byte	0x1680
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL214
	.4byte	0x11a2
	.4byte	0x149f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL215
	.4byte	0x1702
	.uleb128 0x22
	.4byte	.LVL217
	.4byte	0x161e
	.uleb128 0x1b
	.4byte	.LVL220
	.4byte	0xed2
	.4byte	0x14d4
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x22
	.4byte	.LVL223
	.4byte	0x1702
	.uleb128 0x22
	.4byte	.LVL224
	.4byte	0x161e
	.uleb128 0x22
	.4byte	.LVL225
	.4byte	0x166a
	.uleb128 0x22
	.4byte	.LVL226
	.4byte	0x166a
	.uleb128 0x1b
	.4byte	.LVL227
	.4byte	0x1675
	.4byte	0x150b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.4byte	.LVL250
	.4byte	0x1702
	.uleb128 0x22
	.4byte	.LVL251
	.4byte	0x161e
	.uleb128 0x22
	.4byte	.LVL252
	.4byte	0x166a
	.uleb128 0x1d
	.4byte	.LVL253
	.4byte	0x1675
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL210
	.4byte	0x16e3
	.4byte	0x1571
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL213
	.4byte	0x5b3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x1597
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x9
	.4byte	0x175
	.uleb128 0x3f
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x15af
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x175
	.uleb128 0x34
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4e
	.4byte	0x203
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4f
	.4byte	0x203
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC25
	.byte	0x9f
	.uleb128 0x40
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x1ad
	.4byte	0x136
	.uleb128 0x40
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x29f
	.4byte	0x136
	.uleb128 0x41
	.4byte	.LASF113
	.byte	0x1
	.byte	0x50
	.4byte	0x2d4
	.uleb128 0x5
	.byte	0x3
	.4byte	nvs_fp
	.uleb128 0x41
	.4byte	.LASF114
	.byte	0x1
	.byte	0x63
	.4byte	0x392
	.uleb128 0x5
	.byte	0x3
	.4byte	cache_env
	.uleb128 0x42
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x13a
	.uleb128 0x42
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x17e
	.uleb128 0x43
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x7
	.byte	0x1b
	.uleb128 0x43
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x16
	.uleb128 0x44
	.4byte	.LASF133
	.4byte	.LASF133
	.uleb128 0x43
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x65
	.uleb128 0x43
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xa
	.byte	0x6d
	.uleb128 0x43
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xa
	.byte	0xce
	.uleb128 0x43
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xb
	.byte	0x57
	.uleb128 0x43
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xb
	.byte	0x6b
	.uleb128 0x43
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xe
	.byte	0x5a
	.uleb128 0x43
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x7
	.byte	0x15
	.uleb128 0x43
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x7
	.byte	0x42
	.uleb128 0x43
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x7
	.byte	0x6c
	.uleb128 0x43
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.byte	0x4c
	.uleb128 0x43
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.byte	0x5c
	.uleb128 0x43
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.byte	0x68
	.uleb128 0x43
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x7
	.byte	0x62
	.uleb128 0x43
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xf
	.byte	0xde
	.uleb128 0x44
	.4byte	.LASF134
	.4byte	.LASF134
	.uleb128 0x43
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x23
	.uleb128 0x43
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0x50
	.uleb128 0x42
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x160
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE44
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x9
	.byte	0x85
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xb
	.byte	0x72
	.sleb128 -1
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	.LVL22
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
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
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	.LVL32
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xb
	.byte	0x74
	.sleb128 -1
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE52
	.2byte	0xb
	.byte	0x74
	.sleb128 -1
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	.LVL49
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE57
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x18
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
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
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL125
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL125
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	.LVL156
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x6
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL171
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL173
	.4byte	.LVL185
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x10
	.byte	0x78
	.sleb128 19
	.byte	0x93
	.uleb128 0x1
	.byte	0x78
	.sleb128 20
	.byte	0x93
	.uleb128 0x1
	.byte	0x78
	.sleb128 21
	.byte	0x93
	.uleb128 0x1
	.byte	0x78
	.sleb128 22
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL181
	.4byte	.LVL183-1
	.2byte	0x6
	.byte	0x78
	.sleb128 19
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL180
	.4byte	.LVL186
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3907
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183-1
	.4byte	.LVL184
	.2byte	0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185-1
	.4byte	.LVL186
	.2byte	0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL189
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL193
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0xe
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	cache_env+8
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL208
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL209
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL210
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212-1
	.4byte	.LVL219
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL222
	.4byte	.LFE48
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x5
	.byte	0x3
	.4byte	cache_env+5
	.4byte	.LVL231
	.4byte	.LVL237
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x74
	.sleb128 15
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL237
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL239
	.4byte	.LVL245
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL249
	.2byte	0x8
	.byte	0x77
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
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
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB47
	.4byte	.LFE47
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
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"malloc"
.LASF83:
	.string	"addr_list"
.LASF126:
	.string	"list_append"
.LASF47:
	.string	"incl_srvc_e_handle"
.LASF132:
	.string	"sprintf"
.LASF107:
	.string	"bta_gattc_co_cache_reset"
.LASF36:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint8_t"
.LASF113:
	.string	"nvs_fp"
.LASF49:
	.string	"hash_key_t"
.LASF106:
	.string	"cacheReset"
.LASF0:
	.string	"long long unsigned int"
.LASF46:
	.string	"incl_srvc_s_handle"
.LASF55:
	.string	"addr"
.LASF96:
	.string	"cacheClose"
.LASF62:
	.string	"cache_env_t"
.LASF43:
	.string	"attr_type"
.LASF124:
	.string	"free"
.LASF58:
	.string	"cache_addr_info_t"
.LASF88:
	.string	"src_addr"
.LASF89:
	.string	"bta_gattc_co_cache_addr_init"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF84:
	.string	"bta_gattc_co_cache_addr_save"
.LASF41:
	.string	"s_handle"
.LASF81:
	.string	"bta_gattc_co_find_hash_in_cache"
.LASF45:
	.string	"is_primary"
.LASF65:
	.string	"num_attr"
.LASF125:
	.string	"list_new"
.LASF130:
	.string	"list_next"
.LASF137:
	.string	"nvs_erase_all"
.LASF12:
	.string	"long int"
.LASF35:
	.string	"tBT_UUID"
.LASF123:
	.string	"esp_log_write"
.LASF133:
	.string	"memcpy"
.LASF111:
	.string	"btif_trace_level"
.LASF120:
	.string	"nvs_open"
.LASF105:
	.string	"bta_gattc_co_cache_clear_assoc_addr"
.LASF17:
	.string	"uint16_t"
.LASF33:
	.string	"uuid32"
.LASF128:
	.string	"list_remove"
.LASF86:
	.string	"p_buf"
.LASF61:
	.string	"cache_addr"
.LASF27:
	.string	"UINT16"
.LASF10:
	.string	"__uint32_t"
.LASF39:
	.string	"tBTA_GATT_STATUS"
.LASF139:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gattc_co.c"
.LASF4:
	.string	"size_t"
.LASF69:
	.string	"bta_gattc_co_cache_load"
.LASF97:
	.string	"getFilename"
.LASF63:
	.string	"attr"
.LASF74:
	.string	"bta_gattc_co_find_addr_in_cache"
.LASF48:
	.string	"tBTA_GATTC_NV_ATTR"
.LASF1:
	.string	"unsigned int"
.LASF102:
	.string	"bta_gattc_co_cache_open"
.LASF53:
	.string	"cache_fp"
.LASF52:
	.string	"NVS_READWRITE"
.LASF14:
	.string	"long unsigned int"
.LASF72:
	.string	"bta_gattc_co_addr_in_cache"
.LASF44:
	.string	"prop"
.LASF80:
	.string	"__FUNCTION__"
.LASF138:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"list_t"
.LASF76:
	.string	"bta_gattc_co_cache_close"
.LASF2:
	.string	"short unsigned int"
.LASF42:
	.string	"e_handle"
.LASF104:
	.string	"p_attr_list"
.LASF116:
	.string	"nvs_close"
.LASF34:
	.string	"uuid128"
.LASF77:
	.string	"server_bda"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF142:
	.string	"cacheOpen"
.LASF94:
	.string	"addr_data"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"__int32_t"
.LASF101:
	.string	"fname"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF50:
	.string	"nvs_handle"
.LASF13:
	.string	"sizetype"
.LASF68:
	.string	"err_code"
.LASF73:
	.string	"addr_index"
.LASF28:
	.string	"UINT32"
.LASF117:
	.string	"list_free"
.LASF37:
	.string	"list_node_t"
.LASF78:
	.string	"conn_id"
.LASF90:
	.string	"bta_gattc_co_cache_append_assoc_addr"
.LASF92:
	.string	"bta_gattc_co_cache_remove_assoc_addr"
.LASF110:
	.string	"cache_key"
.LASF121:
	.string	"nvs_set_blob"
.LASF31:
	.string	"BD_ADDR"
.LASF109:
	.string	"bd_addr_null"
.LASF115:
	.string	"nvs_get_blob"
.LASF54:
	.string	"is_open"
.LASF140:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF75:
	.string	"bta_gattc_co_cache_addr_deinit"
.LASF30:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF6:
	.string	"unsigned char"
.LASF95:
	.string	"node"
.LASF129:
	.string	"list_begin"
.LASF141:
	.string	"bta_gattc_co_get_addr_num"
.LASF91:
	.string	"p_assoc_buf"
.LASF122:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF29:
	.string	"BOOLEAN"
.LASF79:
	.string	"__func__"
.LASF51:
	.string	"NVS_READONLY"
.LASF127:
	.string	"list_node"
.LASF71:
	.string	"addr_info"
.LASF19:
	.string	"uint32_t"
.LASF70:
	.string	"bta_gattc_get_cache_attr_length"
.LASF93:
	.string	"bta_gattc_co_cache_find_src_addr"
.LASF67:
	.string	"length"
.LASF40:
	.string	"uuid"
.LASF15:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF57:
	.string	"assoc_addr"
.LASF8:
	.string	"__uint16_t"
.LASF64:
	.string	"index"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF98:
	.string	"buffer"
.LASF118:
	.string	"memcmp"
.LASF99:
	.string	"hash"
.LASF103:
	.string	"bta_gattc_co_cache_save"
.LASF87:
	.string	"bta_gattc_co_cache_new_assoc_list"
.LASF136:
	.string	"list_clear"
.LASF114:
	.string	"cache_env"
.LASF134:
	.string	"memset"
.LASF112:
	.string	"appl_trace_level"
.LASF135:
	.string	"hash_function_blob"
.LASF66:
	.string	"status"
.LASF82:
	.string	"bta_gattc_co_get_addr_list"
.LASF59:
	.string	"addr_fp"
.LASF26:
	.string	"UINT8"
.LASF16:
	.string	"uint8_t"
.LASF108:
	.string	"bd_addr_any"
.LASF131:
	.string	"list_end"
.LASF60:
	.string	"num_addr"
.LASF85:
	.string	"bd_addr"
.LASF56:
	.string	"hash_key"
.LASF100:
	.string	"to_save"
.LASF32:
	.string	"uuid16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
