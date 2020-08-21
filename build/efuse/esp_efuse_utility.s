	.file	"esp_efuse_utility.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"blk >= 0 && blk <= 3"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_utility.c"
.LC5:
	.string	"num_reg <= 6"
.LC7:
	.string	"num_reg <= 7"
.LC12:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((addr_wr_reg)) >= 0x3ff00000) && ((addr_wr_reg)) <= 0x3ff13FFC))"
	.section	.text.write_reg,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3590
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, range_write_addr_blocks
	.literal .LC10, -1072693248
	.literal .LC11, 81916
	.literal .LC13, .LC12
	.align	4
	.type	write_reg, @function
write_reg:
.LFB13:
	.file 1 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_utility.c"
	.loc 1 317 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 318 0
	bltui	a2, 4, .L2
	.loc 1 318 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x13e
	j	.L6
.L2:
	.loc 1 319 0 is_stmt 1
	bnez.n	a2, .L3
	.loc 1 320 0
	bltui	a3, 7, .L4
	.loc 1 320 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi	a11, 0x140
.LVL1:
.L6:
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 322 0 is_stmt 1
	bltui	a3, 8, .L4
	.loc 1 322 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC2
	movi	a11, 0x142
	j	.L6
.L4:
	.loc 1 324 0 is_stmt 1
	l32r	a8, .LC9
	addx8	a2, a2, a8
.LVL3:
	l32i.n	a2, a2, 0
.LBB11:
	.loc 1 325 0
	l32r	a8, .LC11
.LBE11:
	.loc 1 324 0
	addx4	a3, a3, a2
.LVL4:
.LBB12:
	.loc 1 325 0
	l32r	a2, .LC10
	add.n	a2, a3, a2
	bltu	a8, a2, .L5
	.loc 1 325 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC2
	movi	a11, 0x145
	j	.L6
.L5:
	.loc 1 325 0 discriminator 2
	memw
	l32i.n	a2, a3, 0
.LBE12:
	or	a4, a2, a4
.LVL5:
.LBB13:
	.loc 1 327 0 is_stmt 1 discriminator 2
	memw
	s32i.n	a4, a3, 0
	retw.n
.LBE13:
.LFE13:
	.size	write_reg, .-write_reg
	.section	.rodata.str1.1
.LC17:
	.string	"bits_counter <= req_size"
.LC21:
	.string	"efuse"
.LC23:
	.string	"\033[0;31mE (%d) %s: Range of data does not match the coding scheme\033[0m\n"
	.section	.text.esp_efuse_utility_process,"ax",@progbits
	.literal_position
	.literal .LC16, 5636
	.literal .LC18, .LC17
	.literal .LC19, __func__$3472
	.literal .LC20, .LC3
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.global	esp_efuse_utility_process
	.type	esp_efuse_utility_process, @function
esp_efuse_utility_process:
.LFB0:
	.loc 1 76 0
.LVL6:
	entry	sp, 64
.LCFI1:
.LVL7:
	.loc 1 78 0
	movi.n	a6, 0
	.loc 1 81 0
	mov.n	a10, a2
	.loc 1 76 0
	s32i.n	a3, sp, 20
	.loc 1 78 0
	s32i.n	a6, sp, 0
	.loc 1 81 0
	call8	esp_efuse_get_field_size
.LVL8:
	.loc 1 82 0
	minu	a3, a10, a4
.LVL9:
	movnez	a10, a3, a4
.LVL10:
	mov.n	a4, a10
.LVL11:
	mov.n	a3, a2
	.loc 1 77 0
	mov.n	a2, a6
.LVL12:
	.loc 1 85 0
	movi.n	a6, 1
	j	.L9
.LVL13:
.L29:
.LBB25:
	.loc 1 86 0
	l8ui	a8, a2, 1
.LBB26:
.LBB27:
	.loc 1 423 0
	l8ui	a10, a2, 0
.LBE27:
.LBE26:
	.loc 1 86 0
	l16ui	a7, a2, 2
.LVL14:
.LBB29:
.LBB28:
	.loc 1 423 0
	s32i.n	a8, sp, 24
	call8	esp_efuse_get_coding_scheme
.LVL15:
	.loc 1 424 0
	l32i.n	a8, sp, 24
	add.n	a2, a8, a7
.LVL16:
	.loc 1 425 0
	movi.n	a7, 0
.LVL17:
	moveqz	a7, a6, a10
	extui	a7, a7, 0, 8
	beqz.n	a7, .L33
	movi	a7, 0x100
	blt	a7, a2, .L10
.L33:
	bnei	a10, 1, .L34
	movi	a7, 0xc0
	blt	a7, a2, .L10
.L34:
	.loc 1 426 0
	bnei	a10, 2, .L35
	movi	a7, 0x80
	blt	a7, a2, .L10
.L35:
	movi.n	a7, 0
	mov.n	a2, a7
.LVL18:
	j	.L17
.LVL19:
.L22:
.LBE28:
.LBE29:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 1 368 0
	addi.n	a8, a8, 1
.LVL20:
	addi.n	a9, a8, -1
	sub	a9, a9, a14
	movi.n	a2, 0
	moveqz	a2, a6, a9
	extui	a9, a2, 0, 8
	.loc 1 367 0
	addi.n	a13, a13, 1
.LVL21:
	.loc 1 368 0
	bnez.n	a9, .L36
	extui	a2, a8, 0, 5
	moveqz	a9, a6, a2
	beqz.n	a9, .L18
.L36:
	.loc 1 369 0
	addi.n	a2, a12, 1
.LVL22:
	beq	a7, a12, .L21
	mov.n	a12, a2
	.loc 1 372 0
	movi.n	a13, 0
.LVL23:
.L18:
	.loc 1 366 0
	bge	a14, a8, .L22
.LBE33:
	.loc 1 375 0
	movi.n	a13, 0
.LVL24:
.L21:
.LBE32:
.LBE31:
	.loc 1 97 0
	add.n	a2, a15, a13
	bge	a4, a2, .L23
	.loc 1 98 0
	sub	a13, a4, a15
.LVL25:
.L23:
	.loc 1 102 0
	l32i.n	a14, sp, 20
.LVL26:
	l32i.n	a12, sp, 16
	l8ui	a11, a11, 0
.LVL27:
	mov.n	a15, sp
	callx8	a5
.LVL28:
	mov.n	a2, a10
.LVL29:
	.loc 1 103 0
	addi.n	a7, a7, 1
.LVL30:
.L17:
.LBE30:
	.loc 1 92 0
	movi.n	a9, 0
	l32i.n	a15, sp, 0
	bne	a2, a9, .L24
	bge	a15, a4, .L24
	.loc 1 93 0 discriminator 1
	l32i.n	a11, a3, 0
	l8ui	a8, a11, 1
.LVL31:
.LBB42:
.LBB43:
	.loc 1 347 0 discriminator 1
	l16ui	a2, a11, 2
.LVL32:
	.loc 1 345 0 discriminator 1
	srai	a10, a8, 5
	.loc 1 347 0 discriminator 1
	add.n	a2, a2, a8
.LVL33:
	addi.n	a14, a2, -1
	addi	a2, a2, 30
	movgez	a2, a14, a14
	.loc 1 345 0 discriminator 1
	add.n	a10, a10, a7
.LVL34:
	.loc 1 347 0 discriminator 1
	srai	a2, a2, 5
	bge	a2, a10, .L26
	.loc 1 347 0 is_stmt 0
	mov.n	a2, a9
.LVL35:
.L24:
	addi.n	a3, a3, 4
.L9:
.LVL36:
.LBE43:
.LBE42:
.LBE25:
	.loc 1 85 0 is_stmt 1
	l32i.n	a7, sp, 0
	bnez.n	a2, .L27
	bge	a7, a4, .L27
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32i.n	a2, a3, 0
.LVL37:
	bnez.n	a2, .L29
	retw.n
.LVL38:
.L27:
	.loc 1 107 0 is_stmt 1
	bge	a4, a7, .L53
	.loc 1 107 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC20
	movi	a11, 0x6b
	call8	__assert_func
.LVL39:
.L10:
.LBB45:
	.loc 1 87 0 is_stmt 1
	call8	esp_log_timestamp
.LVL40:
	l32r	a11, .LC22
	l32r	a12, .LC24
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL41:
	.loc 1 88 0
	l32r	a2, .LC16
.LVL42:
	j	.L24
.LVL43:
.L26:
.LBB44:
.LBB36:
.LBB37:
	.loc 1 357 0
	extui	a12, a8, 0, 5
	moveqz	a9, a12, a7
.LBE37:
.LBE36:
.LBB39:
.LBB34:
	.loc 1 364 0
	movi.n	a12, 0
.LBE34:
.LBE39:
.LBB40:
.LBB38:
	.loc 1 357 0
	s32i.n	a9, sp, 16
.LVL44:
.LBE38:
.LBE40:
.LBB41:
.LBB35:
	.loc 1 363 0
	mov.n	a13, a12
	j	.L18
.LVL45:
.L53:
.LBE35:
.LBE41:
.LBE44:
.LBE45:
	.loc 1 109 0
	retw.n
.LFE0:
	.size	esp_efuse_utility_process, .-esp_efuse_utility_process
	.section	.rodata.str1.1
.LC30:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((addr_wr_block)) >= 0x3ff00000) && ((addr_wr_block)) <= 0x3ff13FFC))"
	.section	.text.esp_efuse_utility_reset,"ax",@progbits
	.literal_position
	.literal .LC25, 1073062140
	.literal .LC26, 23205
	.literal .LC27, range_write_addr_blocks
	.literal .LC28, -1072693248
	.literal .LC29, 81916
	.literal .LC31, .LC30
	.literal .LC32, __func__$3524
	.literal .LC33, .LC3
	.align	4
	.global	esp_efuse_utility_reset
	.type	esp_efuse_utility_reset, @function
esp_efuse_utility_reset:
.LFB5:
	.loc 1 175 0
	entry	sp, 32
.LCFI2:
.LBB56:
	.loc 1 176 0
	l32r	a9, .LC26
	l32r	a8, .LC25
.LBE56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 179 0
	l32r	a11, .LC28
.LBE59:
.LBE58:
.LBE57:
.LBB67:
	.loc 1 176 0
	memw
	s32i.n	a9, a8, 0
.LVL46:
.LBE67:
.LBB68:
.LBB64:
.LBB60:
	.loc 1 179 0
	l32r	a12, .LC29
	l32r	a9, .LC27
.LBE60:
.LBE64:
.LBE68:
.LBB69:
	.loc 1 176 0
	movi.n	a10, 4
.LBE69:
.LBB70:
.LBB65:
.LBB61:
	.loc 1 179 0
	movi.n	a13, 0
.LVL47:
.L71:
.LBE61:
	.loc 1 178 0
	l32i.n	a8, a9, 0
.LVL48:
	l32i.n	a14, a9, 4
	j	.L68
.L70:
.LBB62:
	.loc 1 179 0
	add.n	a15, a8, a11
	bltu	a12, a15, .L69
.LBE62:
.LBE65:
.LBE70:
.LBB71:
.LBB72:
.LBB73:
.LBB74:
.LBB75:
	l32r	a13, .LC31
	l32r	a12, .LC32
	l32r	a10, .LC33
.LVL49:
	movi	a11, 0xb3
	call8	__assert_func
.LVL50:
.L69:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
.LBE71:
.LBB76:
.LBB66:
.LBB63:
	.loc 1 179 0 is_stmt 0 discriminator 2
	memw
	s32i.n	a13, a8, 0
.LBE63:
	.loc 1 178 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 4
.LVL51:
.L68:
	bgeu	a14, a8, .L70
.LVL52:
	addi.n	a10, a10, -1
.LVL53:
	addi.n	a9, a9, 8
.LBE66:
	.loc 1 177 0 discriminator 2
	bnez.n	a10, .L71
.LBE76:
	.loc 1 182 0
	retw.n
.LFE5:
	.size	esp_efuse_utility_reset, .-esp_efuse_utility_reset
	.section	.text.esp_efuse_utility_burn_efuses,"ax",@progbits
	.literal_position
	.literal .LC34, 1073062140
	.literal .LC35, 23130
	.literal .LC36, 1073062148
	.literal .LC37, 23205
	.align	4
	.global	esp_efuse_utility_burn_efuses
	.type	esp_efuse_utility_burn_efuses, @function
esp_efuse_utility_burn_efuses:
.LFB6:
	.loc 1 186 0
	entry	sp, 32
.LCFI3:
.LBB77:
	.loc 1 213 0
	l32r	a8, .LC35
	l32r	a9, .LC34
.LBE77:
.LBB78:
	.loc 1 214 0
	movi.n	a10, 2
.LBE78:
.LBB79:
	.loc 1 213 0
	memw
	s32i.n	a8, a9, 0
.LBE79:
.LBB80:
	.loc 1 214 0
	l32r	a8, .LC36
	memw
	s32i.n	a10, a8, 0
.L74:
.LBE80:
.LBB81:
	.loc 1 215 0 discriminator 1
	memw
	l32i.n	a10, a8, 0
.LBE81:
	bnez.n	a10, .L74
.LBB82:
	.loc 1 216 0
	l32r	a10, .LC37
	memw
	s32i.n	a10, a9, 0
.LBE82:
.LBB83:
	.loc 1 217 0
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
.L75:
.LBE83:
.LBB84:
	.loc 1 218 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
.LBE84:
	bnez.n	a9, .L75
	.loc 1 220 0
	call8	esp_efuse_utility_reset
.LVL54:
	retw.n
.LFE6:
	.size	esp_efuse_utility_burn_efuses, .-esp_efuse_utility_burn_efuses
	.section	.text.esp_efuse_utility_erase_virt_blocks,"ax",@progbits
	.align	4
	.global	esp_efuse_utility_erase_virt_blocks
	.type	esp_efuse_utility_erase_virt_blocks, @function
esp_efuse_utility_erase_virt_blocks:
.LFB7:
	.loc 1 226 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE7:
	.size	esp_efuse_utility_erase_virt_blocks, .-esp_efuse_utility_erase_virt_blocks
	.section	.rodata.str1.1
.LC39:
	.string	"\033[0;32mI (%d) %s: Emulate efuse is disabled\033[0m\n"
	.section	.text.esp_efuse_utility_update_virt_blocks,"ax",@progbits
	.literal_position
	.literal .LC38, .LC21
	.literal .LC40, .LC39
	.align	4
	.global	esp_efuse_utility_update_virt_blocks
	.type	esp_efuse_utility_update_virt_blocks, @function
esp_efuse_utility_update_virt_blocks:
.LFB8:
	.loc 1 234 0
	.loc 1 234 0
	entry	sp, 32
.LCFI5:
	.loc 1 245 0
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC38
	l32r	a12, .LC40
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL56:
	retw.n
.LFE8:
	.size	esp_efuse_utility_update_virt_blocks, .-esp_efuse_utility_update_virt_blocks
	.section	.rodata.str1.1
.LC41:
	.string	"EFUSE_BLKx:"
.LC44:
	.string	"%d) "
.LC48:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((addr_rd_block)) >= 0x3ff00000) && ((addr_rd_block)) <= 0x3ff13FFC))"
.LC52:
	.string	"0x%08x "
	.section	.text.esp_efuse_utility_debug_dump_blocks,"ax",@progbits
	.literal_position
	.literal .LC42, .LC41
	.literal .LC43, range_read_addr_blocks
	.literal .LC45, .LC44
	.literal .LC46, -1072693248
	.literal .LC47, 81916
	.literal .LC49, .LC48
	.literal .LC50, __func__$3559
	.literal .LC51, .LC3
	.literal .LC53, .LC52
	.align	4
	.global	esp_efuse_utility_debug_dump_blocks
	.type	esp_efuse_utility_debug_dump_blocks, @function
esp_efuse_utility_debug_dump_blocks:
.LFB9:
	.loc 1 251 0
	entry	sp, 32
.LCFI6:
	.loc 1 252 0
	l32r	a10, .LC42
.LBB85:
	.loc 1 263 0
	movi.n	a3, 0
.LBE85:
	.loc 1 252 0
	call8	puts
.LVL57:
	l32r	a4, .LC43
.LVL58:
.L84:
.LBB88:
	.loc 1 264 0
	l32r	a10, .LC45
	mov.n	a11, a3
	call8	printf
.LVL59:
.LBB86:
	.loc 1 265 0
	l32i.n	a2, a4, 0
.LVL60:
	j	.L81
.L83:
.LBB87:
	.loc 1 266 0
	l32r	a5, .LC46
	l32r	a9, .LC47
	add.n	a8, a2, a5
	bltu	a9, a8, .L82
	.loc 1 266 0 is_stmt 0 discriminator 1
	l32r	a13, .LC49
	l32r	a12, .LC50
	l32r	a10, .LC51
	movi	a11, 0x10a
	call8	__assert_func
.LVL61:
.L82:
	.loc 1 266 0 discriminator 2
	memw
	l32i.n	a11, a2, 0
.LBE87:
	l32r	a10, .LC53
	.loc 1 265 0 is_stmt 1 discriminator 2
	addi.n	a2, a2, 4
.LVL62:
	.loc 1 266 0 discriminator 2
	call8	printf
.LVL63:
.L81:
	.loc 1 265 0 discriminator 2
	l32i.n	a8, a4, 4
	bgeu	a8, a2, .L83
.LBE86:
	.loc 1 268 0 discriminator 2
	movi.n	a10, 0xa
	.loc 1 263 0 discriminator 2
	addi.n	a3, a3, 1
.LVL64:
	.loc 1 268 0 discriminator 2
	call8	putchar
.LVL65:
	addi.n	a4, a4, 8
	.loc 1 263 0 discriminator 2
	bnei	a3, 4, .L84
.LBE88:
	.loc 1 271 0
	movi.n	a10, 0xa
	call8	putchar
.LVL66:
	retw.n
.LFE9:
	.size	esp_efuse_utility_debug_dump_blocks, .-esp_efuse_utility_debug_dump_blocks
	.section	.text.esp_efuse_utility_get_number_of_items,"ax",@progbits
	.align	4
	.global	esp_efuse_utility_get_number_of_items
	.type	esp_efuse_utility_get_number_of_items, @function
esp_efuse_utility_get_number_of_items:
.LFB10:
	.loc 1 276 0
.LVL67:
	entry	sp, 32
.LCFI7:
	.loc 1 277 0
	rems	a9, a2, a3
	srai	a8, a9, 31
	sub	a8, a8, a9
	extui	a8, a8, 31, 1
	quos	a2, a2, a3
.LVL68:
	.loc 1 278 0
	add.n	a2, a8, a2
	retw.n
.LFE10:
	.size	esp_efuse_utility_get_number_of_items, .-esp_efuse_utility_get_number_of_items
	.section	.rodata.str1.1
.LC62:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((range_read_addr_blocks[blk].start + num_reg * 4)) >= 0x3ff00000) && ((range_read_addr_blocks[blk].start + num_reg * 4)) <= 0x3ff13FFC))"
	.section	.text.esp_efuse_utility_read_reg,"ax",@progbits
	.literal_position
	.literal .LC54, .LC0
	.literal .LC55, __func__$3582
	.literal .LC56, .LC3
	.literal .LC57, .LC5
	.literal .LC58, .LC7
	.literal .LC59, range_read_addr_blocks
	.literal .LC60, -1072693248
	.literal .LC61, 81916
	.literal .LC63, .LC62
	.align	4
	.global	esp_efuse_utility_read_reg
	.type	esp_efuse_utility_read_reg, @function
esp_efuse_utility_read_reg:
.LFB12:
	.loc 1 296 0
.LVL69:
	entry	sp, 32
.LCFI8:
	.loc 1 297 0
	bltui	a2, 4, .L88
	.loc 1 297 0 is_stmt 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC55
	movi	a11, 0x129
	j	.L92
.L88:
	.loc 1 298 0 is_stmt 1
	bnez.n	a2, .L89
	.loc 1 299 0
	bltui	a3, 7, .L90
.LVL70:
.LBB93:
.LBB94:
	l32r	a13, .LC57
	l32r	a12, .LC55
	movi	a11, 0x12b
.LVL71:
.L92:
	l32r	a10, .LC56
	call8	__assert_func
.LVL72:
.L89:
.LBE94:
.LBE93:
	.loc 1 301 0
	bltui	a3, 8, .L90
	.loc 1 301 0 is_stmt 0 discriminator 1
	l32r	a13, .LC58
	l32r	a12, .LC55
	movi	a11, 0x12d
	j	.L92
.L90:
.LBB95:
	.loc 1 308 0 is_stmt 1
	l32r	a8, .LC59
	addx8	a2, a2, a8
.LVL73:
	l32i.n	a2, a2, 0
	l32r	a8, .LC61
	addx4	a3, a3, a2
.LVL74:
	l32r	a2, .LC60
	add.n	a2, a3, a2
	bltu	a8, a2, .L91
	.loc 1 308 0 is_stmt 0 discriminator 1
	l32r	a13, .LC63
	l32r	a12, .LC55
	movi	a11, 0x134
	j	.L92
.L91:
	.loc 1 308 0 discriminator 2
	memw
	l32i.n	a2, a3, 0
.LVL75:
.LBE95:
	.loc 1 311 0 is_stmt 1 discriminator 2
	retw.n
.LFE12:
	.size	esp_efuse_utility_read_reg, .-esp_efuse_utility_read_reg
	.global	__ashldi3
	.global	__lshrdi3
	.section	.text.esp_efuse_utility_fill_buff,"ax",@progbits
	.literal_position
	.literal .LC64, -2147483641
	.align	4
	.global	esp_efuse_utility_fill_buff
	.type	esp_efuse_utility_fill_buff, @function
esp_efuse_utility_fill_buff:
.LFB1:
	.loc 1 114 0
.LVL76:
	entry	sp, 48
.LCFI9:
.LVL77:
	.loc 1 116 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL78:
	.loc 1 114 0
	.loc 1 117 0
	ssr	a4
	srl	a10, a10
.LVL79:
.LBB98:
.LBB99:
	.loc 1 337 0
	movi.n	a2, -1
.LVL80:
	.loc 1 334 0
	beqi	a5, 32, .L94
	.loc 1 335 0
	movi.n	a2, 1
	ssl	a5
	sll	a2, a2
	addi.n	a2, a2, -1
.LVL81:
.L94:
.LBE99:
.LBE98:
	.loc 1 117 0
	and	a4, a10, a2
.LVL82:
	.loc 1 119 0
	l32i.n	a8, a7, 0
	l32r	a2, .LC64
.LVL83:
	and	a2, a8, a2
	bgez	a2, .L95
	addi.n	a2, a2, -1
	movi.n	a3, -8
.LVL84:
	or	a2, a2, a3
	addi.n	a2, a2, 1
.L95:
.LVL85:
	.loc 1 120 0
	beqz.n	a2, .L96
	.loc 1 121 0
	addi.n	a3, a8, 7
	movgez	a3, a8, a8
	mov.n	a12, a2
	srai	a3, a3, 3
	mov.n	a10, a4
	movi.n	a11, 0
	add.n	a3, a6, a3
	s32i.n	a8, sp, 4
	call8	__ashldi3
.LVL86:
	l8ui	a9, a3, 0
	or	a10, a10, a9
	s8i	a10, a3, 0
	.loc 1 122 0
	movi.n	a3, 8
	sub	a2, a3, a2
.LVL87:
	.loc 1 123 0
	l32i.n	a8, sp, 4
	.loc 1 122 0
	min	a2, a5, a2
.LVL88:
	.loc 1 123 0
	add.n	a8, a8, a2
	s32i.n	a8, a7, 0
	.loc 1 124 0
	sub	a5, a5, a2
.LVL89:
.L96:
.LBB101:
.LBB100:
	.loc 1 337 0
	movi.n	a8, 0
.LBE100:
.LBE101:
	.loc 1 131 0
	movi.n	a9, 8
	j	.L97
.LVL90:
.L98:
	.loc 1 130 0
	l32i.n	a3, a7, 0
	.loc 1 129 0
	add.n	a8, a8, a2
.LVL91:
	.loc 1 130 0
	addi.n	a2, a3, 7
.LVL92:
	movgez	a2, a3, a3
	mov.n	a12, a8
	srai	a2, a2, 3
	mov.n	a10, a4
	movi.n	a11, 0
	add.n	a2, a6, a2
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	__lshrdi3
.LVL93:
	l8ui	a11, a2, 0
	or	a10, a10, a11
	s8i	a10, a2, 0
	.loc 1 131 0
	l32i.n	a9, sp, 0
	.loc 1 133 0
	l32i.n	a8, sp, 4
	.loc 1 131 0
	min	a2, a5, a9
.LVL94:
	.loc 1 132 0
	add.n	a3, a3, a2
	s32i.n	a3, a7, 0
	.loc 1 133 0
	sub	a5, a5, a2
.LVL95:
.L97:
	.loc 1 128 0
	bgei	a5, 1, .L98
	.loc 1 136 0
	movi.n	a2, 0
.LVL96:
	retw.n
.LFE1:
	.size	esp_efuse_utility_fill_buff, .-esp_efuse_utility_fill_buff
	.global	__popcountsi2
	.section	.text.esp_efuse_utility_count_once,"ax",@progbits
	.align	4
	.global	esp_efuse_utility_count_once
	.type	esp_efuse_utility_count_once, @function
esp_efuse_utility_count_once:
.LFB2:
	.loc 1 140 0
.LVL97:
	entry	sp, 32
.LCFI10:
	.loc 1 141 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL98:
	.loc 1 140 0
.LBB104:
.LBB105:
	.loc 1 337 0
	movi.n	a8, -1
	.loc 1 334 0
	beqi	a5, 32, .L104
	.loc 1 335 0
	movi.n	a9, 1
	ssl	a5
	sll	a9, a9
	add.n	a8, a9, a8
.LVL99:
.L104:
.LBE105:
.LBE104:
	.loc 1 142 0
	ssl	a4
	sll	a8, a8
.LVL100:
	and	a10, a8, a10
.LVL101:
	call8	__popcountsi2
.LVL102:
	l32i.n	a8, a6, 0
	.loc 1 145 0
	movi.n	a2, 0
.LVL103:
	.loc 1 142 0
	add.n	a10, a8, a10
	s32i.n	a10, a6, 0
	.loc 1 143 0
	l32i.n	a6, a7, 0
.LVL104:
	add.n	a5, a6, a5
.LVL105:
	s32i.n	a5, a7, 0
	.loc 1 145 0
	retw.n
.LFE2:
	.size	esp_efuse_utility_count_once, .-esp_efuse_utility_count_once
	.section	.rodata.str1.1
.LC66:
	.string	"(bit_start_in_reg + bit_count_used_in_reg) <= 32"
	.section	.text.esp_efuse_utility_write_cnt,"ax",@progbits
	.literal_position
	.literal .LC65, 5633
	.literal .LC67, .LC66
	.literal .LC68, __func__$3641
	.literal .LC69, .LC3
	.align	4
	.global	esp_efuse_utility_write_cnt
	.type	esp_efuse_utility_write_cnt, @function
esp_efuse_utility_write_cnt:
.LFB4:
	.loc 1 156 0
.LVL106:
	entry	sp, 32
.LCFI11:
.LVL107:
	.loc 1 158 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL108:
	.loc 1 156 0
.LBB112:
.LBB113:
	.loc 1 337 0
	movi.n	a8, -1
	.loc 1 334 0
	beqi	a5, 32, .L107
	.loc 1 335 0
	movi.n	a8, 1
	ssl	a5
	sll	a8, a8
	addi.n	a8, a8, -1
.LVL109:
.L107:
	.loc 1 339 0
	ssl	a4
	sll	a8, a8
.LVL110:
.LBE113:
.LBE112:
	.loc 1 161 0
	and	a10, a10, a8
.LVL111:
	.loc 1 162 0
	beq	a10, a8, .L108
.LVL112:
.LBB114:
.LBB115:
.LBB116:
	.loc 1 407 0
	add.n	a9, a5, a4
	movi.n	a8, 0x20
	movi.n	a12, 0
.LBB117:
	.loc 1 410 0
	movi.n	a11, 1
.LBE117:
	.loc 1 407 0
	bge	a8, a9, .L110
.L109:
	l32r	a13, .LC67
	l32r	a12, .LC68
	l32r	a10, .LC69
.LVL113:
	movi	a11, 0x197
	call8	__assert_func
.LVL114:
.L113:
.LBB118:
	.loc 1 410 0
	ssl	a4
	sll	a8, a11
	bany	a10, a8, .L111
	.loc 1 411 0
	or	a12, a12, a8
.LVL115:
	.loc 1 412 0
	l32i.n	a8, a6, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a6, 0
	beqz.n	a8, .L112
.L111:
	.loc 1 409 0
	addi.n	a4, a4, 1
.LVL116:
.L110:
	blt	a4, a9, .L113
.L112:
.LBE118:
.LBE116:
.LBE115:
	.loc 1 164 0
	mov.n	a11, a2
	mov.n	a10, a3
.LVL117:
	call8	write_reg
.LVL118:
.L108:
.LBE114:
	.loc 1 166 0
	l32i.n	a2, a7, 0
.LVL119:
	.loc 1 167 0
	l32i.n	a3, a6, 0
.LVL120:
	.loc 1 168 0
	l32r	a4, .LC65
	.loc 1 166 0
	add.n	a5, a2, a5
.LVL121:
	.loc 1 168 0
	movi.n	a2, 0
	.loc 1 166 0
	s32i.n	a5, a7, 0
	.loc 1 168 0
	moveqz	a2, a4, a3
.LVL122:
	.loc 1 171 0
	retw.n
.LFE4:
	.size	esp_efuse_utility_write_cnt, .-esp_efuse_utility_write_cnt
	.section	.rodata.str1.1
.LC72:
	.string	"\033[0;31mE (%d) %s: Repeated programming of programmed bits is strictly forbidden 0x%08x\033[0m\n"
	.section	.text.esp_efuse_utility_write_reg,"ax",@progbits
	.literal_position
	.literal .LC70, 5635
	.literal .LC71, .LC21
	.literal .LC73, .LC72
	.align	4
	.global	esp_efuse_utility_write_reg
	.type	esp_efuse_utility_write_reg, @function
esp_efuse_utility_write_reg:
.LFB11:
	.loc 1 282 0
.LVL123:
	entry	sp, 32
.LCFI12:
.LVL124:
	.loc 1 284 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_efuse_utility_read_reg
.LVL125:
	.loc 1 285 0
	and	a5, a10, a4
	beqz.n	a5, .L121
	.loc 1 286 0 discriminator 2
	call8	esp_log_timestamp
.LVL126:
	l32r	a11, .LC71
	l32r	a12, .LC73
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL127:
	.loc 1 287 0 discriminator 2
	l32r	a2, .LC70
.LVL128:
	retw.n
.LVL129:
.L121:
	.loc 1 289 0
	mov.n	a10, a2
.LVL130:
	mov.n	a12, a4
	mov.n	a11, a3
	call8	write_reg
.LVL131:
	.loc 1 283 0
	mov.n	a2, a5
.LVL132:
	.loc 1 292 0
	retw.n
.LFE11:
	.size	esp_efuse_utility_write_reg, .-esp_efuse_utility_write_reg
	.section	.text.esp_efuse_utility_write_blob,"ax",@progbits
	.literal_position
	.literal .LC74, -2147483641
	.align	4
	.global	esp_efuse_utility_write_blob
	.type	esp_efuse_utility_write_blob, @function
esp_efuse_utility_write_blob:
.LFB3:
	.loc 1 149 0
.LVL133:
	entry	sp, 32
.LCFI13:
.LVL134:
	.loc 1 149 0
	mov.n	a11, a2
.LBB125:
.LBB126:
	.loc 1 383 0
	l32r	a8, .LC74
	l32i.n	a2, a7, 0
.LVL135:
.LBE126:
.LBE125:
	.loc 1 149 0
.LBB129:
.LBB127:
	.loc 1 383 0
	and	a8, a2, a8
.LBE127:
.LBE129:
	.loc 1 149 0
	mov.n	a10, a3
.LBB130:
.LBB128:
	.loc 1 383 0
	bgez	a8, .L124
	addi.n	a8, a8, -1
	movi.n	a3, -8
.LVL136:
	or	a8, a8, a3
	addi.n	a8, a8, 1
.L124:
.LVL137:
	.loc 1 381 0
	movi.n	a9, 0
	.loc 1 384 0
	beq	a8, a9, .L125
	.loc 1 385 0
	addi.n	a3, a2, 7
	movgez	a3, a2, a2
	srai	a3, a3, 3
	add.n	a3, a6, a3
	l8ui	a9, a3, 0
	.loc 1 386 0
	movi.n	a3, 8
	.loc 1 385 0
	ssr	a8
	sra	a9, a9
.LVL138:
	.loc 1 386 0
	sub	a8, a3, a8
.LVL139:
	min	a8, a5, a8
.LVL140:
	.loc 1 387 0
	movi.n	a3, 1
	ssl	a8
	sll	a3, a3
	addi.n	a3, a3, -1
.LVL141:
	.loc 1 388 0
	add.n	a2, a2, a8
	.loc 1 387 0
	and	a9, a3, a9
.LVL142:
	.loc 1 388 0
	s32i.n	a2, a7, 0
	.loc 1 389 0
	sub	a5, a5, a8
.LVL143:
.L125:
	.loc 1 395 0
	movi.n	a15, 8
	.loc 1 396 0
	movi.n	a2, 1
	j	.L126
.LVL144:
.L127:
	.loc 1 394 0
	l32i.n	a14, a7, 0
.LVL145:
	.loc 1 395 0
	min	a12, a5, a15
.LVL146:
	.loc 1 394 0
	addi.n	a3, a14, 7
	movgez	a3, a14, a14
	srai	a3, a3, 3
	add.n	a3, a6, a3
	.loc 1 396 0
	l8ui	a3, a3, 0
	ssl	a12
	sll	a13, a2
	addi.n	a13, a13, -1
	and	a13, a3, a13
	ssl	a8
	sll	a13, a13
	.loc 1 397 0
	add.n	a14, a14, a12
.LVL147:
	.loc 1 396 0
	or	a9, a9, a13
.LVL148:
	.loc 1 397 0
	s32i.n	a14, a7, 0
.LVL149:
	.loc 1 398 0
	sub	a5, a5, a12
.LVL150:
	.loc 1 399 0
	addi.n	a8, a8, 8
.LVL151:
.L126:
	.loc 1 393 0
	bgei	a5, 1, .L127
.LBE128:
.LBE130:
	.loc 1 151 0
	ssl	a4
	sll	a12, a9
	call8	esp_efuse_utility_write_reg
.LVL152:
	.loc 1 152 0
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	esp_efuse_utility_write_blob, .-esp_efuse_utility_write_blob
	.section	.rodata.str1.1
.LC82:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((addr_wr_block)) >= 0x3ff00000) && ((addr_wr_block)) <= 0x3ff13FFC))"
.LC90:
	.string	"\033[0;31mE (%d) %s: Bits are not empty. Write operation is forbidden.\033[0m\n"
.LC92:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((range_write_addr_blocks[num_block].start + (num_reg + r) * 4)) >= 0x3ff00000) && ((range_write_addr_blocks[num_block].start + (num_reg + r) * 4)) <= 0x3ff13FFC))"
.LC95:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((range_write_addr_blocks[num_block].start + i * 4)) >= 0x3ff00000) && ((range_write_addr_blocks[num_block].start + i * 4)) <= 0x3ff13FFC))"
.LC97:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((range_write_addr_blocks[num_block].start + (i + 4) * 4)) >= 0x3ff00000) && ((range_write_addr_blocks[num_block].start + (i + 4) * 4)) <= 0x3ff13FFC))"
	.section	.text.esp_efuse_utility_apply_new_coding_scheme,"ax",@progbits
	.literal_position
	.literal .LC77, 5636
	.literal .LC78, range_write_addr_blocks
	.literal .LC79, range_read_addr_blocks
	.literal .LC80, -1072693248
	.literal .LC81, 81916
	.literal .LC83, .LC82
	.literal .LC84, __func__$3661
	.literal .LC85, .LC3
	.literal .LC86, .LC48
	.literal .LC87, __func__$3673
	.literal .LC88, 715827883
	.literal .LC89, .LC21
	.literal .LC91, .LC90
	.literal .LC93, .LC92
	.literal .LC94, __func__$3694
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.align	4
	.global	esp_efuse_utility_apply_new_coding_scheme
	.type	esp_efuse_utility_apply_new_coding_scheme, @function
esp_efuse_utility_apply_new_coding_scheme:
.LFB23:
	.loc 1 458 0
	entry	sp, 128
.LCFI14:
.LVL153:
	l32r	a6, .LC78
	l32r	a5, .LC79
.LBB152:
	.loc 1 463 0
	movi.n	a4, 1
.LVL154:
.L132:
.LBB153:
	.loc 1 464 0
	mov.n	a10, a4
	call8	esp_efuse_get_coding_scheme
.LVL155:
	mov.n	a7, a10
.LVL156:
	.loc 1 466 0
	bnez.n	a10, .L131
.LVL157:
.L138:
.LBE153:
	.loc 1 463 0
	addi.n	a4, a4, 1
.LVL158:
	addi.n	a6, a6, 8
	addi.n	a5, a5, 8
	bnei	a4, 4, .L132
.LBE152:
	.loc 1 515 0
	movi.n	a2, 0
	retw.n
.LVL159:
.L131:
.LBB180:
.LBB179:
	.loc 1 467 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	add.n	a10, sp, a12
	call8	memset
.LVL160:
	.loc 1 468 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	addi	a10, sp, 64
	call8	memset
.LVL161:
.LBB154:
.LBB155:
.LBB156:
	.loc 1 437 0
	l32i.n	a9, a6, 8
.LVL162:
.LBE156:
	.loc 1 435 0
	movi.n	a3, 0
.LBB161:
	.loc 1 437 0
	l32i.n	a11, a6, 12
	mov.n	a2, a9
.LBB157:
	.loc 1 438 0
	l32r	a12, .LC80
	l32r	a13, .LC81
.LBE157:
.LBB158:
	.loc 1 440 0
	mov.n	a14, a3
	j	.L134
.LVL163:
.L137:
	addi	a10, sp, 32
.LVL164:
	sub	a8, a2, a9
	add.n	a8, a10, a8
.LBE158:
.LBB159:
	.loc 1 438 0
	add.n	a10, a2, a12
.LVL165:
	bltu	a13, a10, .L135
	l32r	a13, .LC83
	l32r	a12, .LC84
	movi	a11, 0x1b6
	j	.L176
.L135:
	memw
	l32i.n	a10, a2, 0
.LBE159:
	s32i.n	a10, a8, 0
	.loc 1 439 0
	beqz.n	a10, .L136
.LBB160:
	.loc 1 440 0
	memw
	s32i.n	a14, a2, 0
.LVL166:
.LBE160:
	.loc 1 441 0
	movi.n	a3, 1
.LVL167:
.L136:
	.loc 1 437 0
	addi.n	a2, a2, 4
.LVL168:
.L134:
	bgeu	a11, a2, .L137
.LBE161:
.LBE155:
.LBE154:
	.loc 1 469 0
	beqz.n	a3, .L138
.LVL169:
.LBB162:
.LBB163:
.LBB164:
	.loc 1 450 0
	l32i.n	a8, a5, 8
.LVL170:
	l32i.n	a9, a5, 12
	mov.n	a2, a8
.LVL171:
.LBB165:
	.loc 1 451 0
	l32r	a10, .LC80
	l32r	a11, .LC81
	j	.L139
.LVL172:
.L141:
	sub	a3, a2, a8
	add.n	a12, a2, a10
	add.n	a3, sp, a3
	bltu	a11, a12, .L140
	l32r	a13, .LC86
	l32r	a12, .LC87
	movi	a11, 0x1c3
	j	.L176
.L140:
	memw
	l32i.n	a12, a2, 0
.LBE165:
	.loc 1 450 0
	addi.n	a2, a2, 4
.LVL173:
	.loc 1 451 0
	s32i.n	a12, a3, 0
.L139:
	.loc 1 450 0
	bgeu	a9, a2, .L141
.LBE164:
.LBE163:
.LBE162:
	.loc 1 471 0
	bnei	a7, 1, .L142
	.loc 1 472 0
	l32i.n	a2, sp, 56
.LVL174:
	bnez.n	a2, .L160
	.loc 1 472 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 60
	bnez.n	a3, .L160
.LVL175:
.L149:
.LBB166:
	.loc 1 476 0 is_stmt 1
	addi	a8, sp, 32
.LVL176:
	add.n	a2, a8, a3
	l8ui	a2, a2, 0
	beqz.n	a2, .L143
.LBB167:
	.loc 1 477 0
	l32r	a10, .LC88
	mulsh	a8, a3, a10
.LVL177:
	srai	a3, a3, 31
.LVL178:
	sub	a7, a8, a3
	slli	a2, a7, 1
	add.n	a10, a2, a7
	slli	a10, a10, 1
.LVL179:
.LBB168:
	.loc 1 479 0
	mov.n	a9, a10
	j	.L144
.LVL180:
.L146:
	.loc 1 480 0
	add.n	a3, sp, a9
	l8ui	a3, a3, 0
	beqz.n	a3, .L145
	.loc 1 481 0 discriminator 2
	call8	esp_log_timestamp
.LVL181:
	l32r	a11, .LC89
	l32r	a12, .LC91
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL182:
	j	.L160
.LVL183:
.L145:
	.loc 1 479 0 discriminator 2
	addi.n	a9, a9, 1
.LVL184:
.L144:
	.loc 1 479 0 is_stmt 0 discriminator 1
	addi.n	a3, a10, 5
	bge	a3, a9, .L146
.LBE168:
	.loc 1 486 0 is_stmt 1
	addi	a8, sp, 32
.LVL185:
	movi.n	a12, 6
	addi	a11, sp, 64
	add.n	a10, a8, a10
.LVL186:
	call8	esp_efuse_apply_34_encoding
.LVL187:
	.loc 1 487 0
	bnez.n	a10, .L156
.LVL188:
.LBB169:
.LBB170:
	.loc 1 493 0
	l32i.n	a10, a6, 8
.LVL189:
	l32r	a9, .LC80
	addx8	a8, a7, a10
	l32r	a7, .LC81
	add.n	a11, a8, a9
	bgeu	a7, a11, .L147
	l32i	a11, sp, 64
	addi.n	a2, a2, 1
.LVL190:
	addx4	a2, a2, a10
.LVL191:
	memw
	s32i.n	a11, a8, 0
.LVL192:
	add.n	a9, a2, a9
	bltu	a7, a9, .L148
.LVL193:
.L147:
	.loc 1 493 0 is_stmt 0 discriminator 1
	l32r	a13, .LC93
	l32r	a12, .LC94
	movi	a11, 0x1ed
	j	.L176
.LVL194:
.L148:
	.loc 1 493 0 discriminator 2
	l32i	a7, sp, 68
	memw
	s32i.n	a7, a2, 0
.LVL195:
.L143:
.LBE170:
.LBE169:
.LBE167:
	.loc 1 475 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL196:
	movi.n	a2, 0x18
	bne	a3, a2, .L149
	j	.L138
.LVL197:
.L142:
.LBE166:
	.loc 1 498 0
	bnei	a7, 2, .L138
.LVL198:
.LBB172:
.LBB173:
	.loc 1 501 0
	l32i.n	a2, sp, 48
.LVL199:
	bnez.n	a2, .L160
.LVL200:
	l32i.n	a2, sp, 52
	bnez.n	a2, .L160
.LVL201:
	l32i.n	a2, sp, 56
	bnez.n	a2, .L160
.LVL202:
	l32i.n	a2, sp, 60
	bnez.n	a2, .L160
.LBE173:
.LBB174:
.LBB175:
	.loc 1 507 0
	l32r	a7, .LC80
.LVL203:
	l32r	a12, .LC81
	movi.n	a8, 4
	loop	a8, .L153_LEND
.L153:
.LBE175:
	.loc 1 506 0
	addi	a10, sp, 32
.LVL204:
	add.n	a9, a10, a2
	l32i.n	a11, a9, 0
	beqz.n	a11, .L150
.LBB176:
	.loc 1 507 0
	l32i.n	a3, a6, 8
	add.n	a10, a3, a2
.LVL205:
	add.n	a13, a10, a7
	bltu	a12, a13, .L151
	.loc 1 507 0 is_stmt 0 discriminator 1
	l32r	a13, .LC96
	l32r	a12, .LC94
	movi	a11, 0x1fb
	j	.L176
.L151:
	.loc 1 507 0 discriminator 2
	memw
	s32i.n	a11, a10, 0
.LBE176:
.LBB177:
	.loc 1 508 0 is_stmt 1 discriminator 2
	addi	a10, a2, 16
	add.n	a3, a10, a3
	add.n	a10, a3, a7
	bltu	a12, a10, .L152
	.loc 1 508 0 is_stmt 0 discriminator 1
	l32r	a13, .LC98
	l32r	a12, .LC94
	movi	a11, 0x1fc
.LVL206:
.L176:
	l32r	a10, .LC85
	call8	__assert_func
.LVL207:
.L152:
	.loc 1 508 0 discriminator 2
	l32i.n	a9, a9, 0
	memw
	s32i.n	a9, a3, 0
.L150:
.LVL208:
	addi.n	a2, a2, 4
	.L153_LEND:
.LBE177:
	j	.L138
.LVL209:
.L156:
.LBE174:
.LBE172:
.LBB178:
.LBB171:
	.loc 1 486 0 is_stmt 1
	mov.n	a2, a10
	retw.n
.LVL210:
.L160:
.LBE171:
.LBE178:
	.loc 1 473 0
	l32r	a2, .LC77
.LBE179:
.LBE180:
	.loc 1 516 0
	retw.n
.LFE23:
	.size	esp_efuse_utility_apply_new_coding_scheme, .-esp_efuse_utility_apply_new_coding_scheme
	.section	.rodata.__func__$3673,"a",@progbits
	.type	__func__$3673, @object
	.size	__func__$3673, 12
__func__$3673:
	.string	"read_r_data"
	.section	.rodata.__func__$3661,"a",@progbits
	.type	__func__$3661, @object
	.size	__func__$3661, 27
__func__$3661:
	.string	"read_w_data_and_check_fill"
	.section	.rodata.__func__$3694,"a",@progbits
	.type	__func__$3694, @object
	.size	__func__$3694, 42
__func__$3694:
	.string	"esp_efuse_utility_apply_new_coding_scheme"
	.section	.rodata.__func__$3582,"a",@progbits
	.type	__func__$3582, @object
	.size	__func__$3582, 27
__func__$3582:
	.string	"esp_efuse_utility_read_reg"
	.section	.rodata.__func__$3559,"a",@progbits
	.type	__func__$3559, @object
	.size	__func__$3559, 36
__func__$3559:
	.string	"esp_efuse_utility_debug_dump_blocks"
	.section	.rodata.__func__$3524,"a",@progbits
	.type	__func__$3524, @object
	.size	__func__$3524, 24
__func__$3524:
	.string	"esp_efuse_utility_reset"
	.section	.rodata.__func__$3590,"a",@progbits
	.type	__func__$3590, @object
	.size	__func__$3590, 10
__func__$3590:
	.string	"write_reg"
	.section	.rodata.__func__$3641,"a",@progbits
	.type	__func__$3641, @object
	.size	__func__$3641, 15
__func__$3641:
	.string	"set_cnt_in_reg"
	.section	.rodata.__func__$3472,"a",@progbits
	.type	__func__$3472, @object
	.size	__func__$3472, 26
__func__$3472:
	.string	"esp_efuse_utility_process"
	.section	.rodata.range_write_addr_blocks,"a",@progbits
	.align	4
	.type	range_write_addr_blocks, @object
	.size	range_write_addr_blocks, 32
range_write_addr_blocks:
	.word	1073061916
	.word	1073061940
	.word	1073062040
	.word	1073062068
	.word	1073062072
	.word	1073062100
	.word	1073062104
	.word	1073062132
	.section	.rodata.range_read_addr_blocks,"a",@progbits
	.align	4
	.type	range_read_addr_blocks, @object
	.size	range_read_addr_blocks, 32
range_read_addr_blocks:
	.word	1073061888
	.word	1073061912
	.word	1073061944
	.word	1073061972
	.word	1073061976
	.word	1073062004
	.word	1073062008
	.word	1073062036
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI6-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI7-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI8-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI9-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI10-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI11-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI12-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI13-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI14-.LFB23
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/include/esp_efuse.h"
	.file 8 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_utility.h"
	.file 9 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/assert.h"
	.file 10 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x154a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
	.4byte	.Ldebug_ranges0+0x1b0
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x98
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xde
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x1f
	.4byte	0x13b
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x23
	.4byte	0x160
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x28
	.4byte	0x13b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x2d
	.4byte	0x18a
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x31
	.4byte	0x16b
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.byte	0x36
	.4byte	0x1c5
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x7
	.byte	0x37
	.4byte	0x160
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x38
	.4byte	0xc8
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x39
	.4byte	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3a
	.4byte	0x195
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x29
	.4byte	0x1db
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e1
	.uleb128 0xd
	.4byte	0xff
	.4byte	0x209
	.uleb128 0xe
	.4byte	0x37
	.uleb128 0xe
	.4byte	0x160
	.uleb128 0xe
	.4byte	0x25
	.uleb128 0xe
	.4byte	0x25
	.uleb128 0xe
	.4byte	0xad
	.uleb128 0xe
	.4byte	0x209
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0xa
	.byte	0x8
	.byte	0x1
	.byte	0x2c
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2d
	.4byte	0xe9
	.byte	0
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x2e
	.4byte	0xe9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x20f
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.byte	0x1
	.4byte	0x265
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.byte	0
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	0x299
	.uleb128 0x13
	.4byte	.LASF45
	.4byte	0x2a9
	.4byte	.LASF49
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb1
	.4byte	0x25
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb2
	.4byte	0xe9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x2a9
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x299
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x127
	.4byte	0xe9
	.byte	0x1
	.4byte	0x2f1
	.uleb128 0x19
	.string	"blk"
	.byte	0x1
	.2byte	0x127
	.4byte	0x160
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x127
	.4byte	0x37
	.uleb128 0x13
	.4byte	.LASF45
	.4byte	0x301
	.4byte	.LASF50
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x130
	.4byte	0xe9
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x301
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x2f1
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x13c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38b
	.uleb128 0x1c
	.string	"blk"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x160
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x13c
	.4byte	0x37
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13c
	.4byte	0xe9
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	0x39b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3590
	.uleb128 0x1f
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x144
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x145
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x39b
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x38b
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x3ee
	.byte	0x1
	.4byte	0x3ee
	.uleb128 0x19
	.string	"blk"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x160
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x18a
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x25
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF60
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x169
	.4byte	0x25
	.byte	0x1
	.4byte	0x45d
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x169
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x169
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x169
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x16c
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x16d
	.4byte	0x25
	.uleb128 0x14
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x16e
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x157
	.4byte	0x25
	.byte	0x1
	.4byte	0x49f
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x157
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x157
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x157
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x159
	.4byte	0x25
	.byte	0
	.uleb128 0x22
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4b
	.4byte	0xff
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x738
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.byte	0x4b
	.4byte	0x738
	.4byte	.LLST3
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0x4b
	.4byte	0xad
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4b
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.byte	0x4d
	.4byte	0xff
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	.LASF71
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	0x759
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3472
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6f8
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.uleb128 0x2a
	.4byte	0x3a0
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x56
	.4byte	0x5ba
	.uleb128 0x2b
	.4byte	0x3c9
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	0x3bd
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0x3b1
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.4byte	0x3d5
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	0x3e1
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0x14e3
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x681
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	0x3f5
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x60
	.4byte	0x640
	.uleb128 0x2b
	.4byte	0x41e
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	0x412
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	0x406
	.4byte	.LLST18
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2d
	.4byte	0x42a
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	0x436
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	0x442
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2d
	.4byte	0x44f
	.4byte	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x23b
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x5f
	.4byte	0x666
	.uleb128 0x2b
	.4byte	0x258
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	0x24c
	.4byte	.LLST24
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x45d
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x5c
	.4byte	0x6c3
	.uleb128 0x2b
	.4byte	0x486
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	0x47a
	.4byte	.LLST26
	.uleb128 0x2b
	.4byte	0x46e
	.4byte	.LLST27
	.uleb128 0x2f
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x2d
	.4byte	0x492
	.4byte	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL40
	.4byte	0x14ee
	.uleb128 0x20
	.4byte	.LVL41
	.4byte	0x14f9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL8
	.4byte	0x1504
	.4byte	0x70c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3472
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x744
	.uleb128 0x7
	.4byte	0x1c5
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x759
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x749
	.uleb128 0x33
	.4byte	0x265
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x34
	.4byte	0x271
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x79e
	.uleb128 0x2d
	.4byte	0x27f
	.4byte	.LLST29
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x2d
	.4byte	0x28b
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x34
	.4byte	0x271
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x2f
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.uleb128 0x35
	.4byte	0x27f
	.uleb128 0x2f
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.uleb128 0x35
	.4byte	0x28b
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF113
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x825
	.uleb128 0x37
	.4byte	.LASF45
	.4byte	0x835
	.uleb128 0x2e
	.4byte	.LVL54
	.4byte	0x265
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x835
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0x825
	.uleb128 0x38
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x894
	.uleb128 0x2e
	.4byte	.LVL55
	.4byte	0x14ee
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0x14f9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF75
	.byte	0x1
	.byte	0xfa
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x986
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	0x996
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3559
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x95f
	.uleb128 0x3a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x107
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x3b
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x932
	.uleb128 0x3a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x109
	.4byte	0xe9
	.4byte	.LLST32
	.uleb128 0x32
	.4byte	.LVL61
	.4byte	0x14d8
	.4byte	0x91e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3559
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL63
	.4byte	0x150f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL59
	.4byte	0x150f
	.4byte	0x94f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0x151a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL57
	.4byte	0x1529
	.4byte	0x976
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x20
	.4byte	.LVL66
	.4byte	0x151a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x996
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x23
	.byte	0
	.uleb128 0x7
	.4byte	0x986
	.uleb128 0x3c
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x113
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d4
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x113
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x3d
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x113
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.4byte	0x2ae
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa55
	.uleb128 0x2b
	.4byte	0x2bf
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x2cb
	.4byte	.LLST35
	.uleb128 0x34
	.4byte	0x2d7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3582
	.uleb128 0x34
	.4byte	0x2e4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.uleb128 0x2b
	.4byte	0x2bf
	.4byte	.LLST36
	.uleb128 0x2b
	.4byte	0x2cb
	.4byte	.LLST37
	.uleb128 0x2f
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.uleb128 0x35
	.4byte	0x2e4
	.uleb128 0x34
	.4byte	0x2d7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3582
	.uleb128 0x20
	.4byte	.LVL72
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x14b
	.4byte	0xe9
	.byte	0x1
	.4byte	0xa8b
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x14b
	.4byte	0x37
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x14b
	.4byte	0x37
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x14d
	.4byte	0xe9
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF84
	.byte	0x1
	.byte	0x71
	.4byte	0xff
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb88
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0x71
	.4byte	0x37
	.4byte	.LLST38
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0x71
	.4byte	0x160
	.4byte	.LLST39
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x25
	.4byte	.LASF86
	.byte	0x1
	.byte	0x71
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x71
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF87
	.byte	0x1
	.byte	0x73
	.4byte	0xb88
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x74
	.4byte	0xe9
	.4byte	.LLST42
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x75
	.4byte	0xf4
	.uleb128 0x28
	.4byte	.LASF89
	.byte	0x1
	.byte	0x77
	.4byte	0x25
	.4byte	.LLST43
	.uleb128 0x28
	.4byte	.LASF90
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.4byte	.LLST44
	.uleb128 0x2a
	.4byte	0xa55
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0x75
	.4byte	0xb71
	.uleb128 0x3f
	.4byte	0xa72
	.byte	0
	.uleb128 0x2b
	.4byte	0xa66
	.4byte	.LLST45
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x2d
	.4byte	0xa7e
	.4byte	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL78
	.4byte	0x2ae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x3e
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8b
	.4byte	0xff
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc58
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8b
	.4byte	0x37
	.4byte	.LLST47
	.uleb128 0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x8b
	.4byte	0x160
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x23
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8b
	.4byte	0xad
	.4byte	.LLST49
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8b
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x8d
	.4byte	0xe9
	.4byte	.LLST50
	.uleb128 0x31
	.4byte	0xa55
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.byte	0x8e
	.4byte	0xc41
	.uleb128 0x40
	.4byte	0xa72
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	0xa66
	.4byte	.LLST51
	.uleb128 0x2f
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.uleb128 0x2d
	.4byte	0xa7e
	.4byte	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0x2ae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x195
	.4byte	0xe9
	.byte	0x1
	.4byte	0xcbf
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x195
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x195
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x195
	.4byte	0xe9
	.uleb128 0x19
	.string	"cnt"
	.byte	0x1
	.2byte	0x195
	.4byte	0xcbf
	.uleb128 0x13
	.4byte	.LASF45
	.4byte	0xcd5
	.4byte	.LASF93
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x198
	.4byte	0xe9
	.uleb128 0x14
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x199
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0xcd5
	.uleb128 0x17
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0xcc5
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0x9b
	.4byte	0xff
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea4
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0x9b
	.4byte	0x37
	.4byte	.LLST53
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0x9b
	.4byte	0x160
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0x9b
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9b
	.4byte	0x25
	.4byte	.LLST56
	.uleb128 0x42
	.string	"cnt"
	.byte	0x1
	.byte	0x9b
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x9b
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.byte	0x9d
	.4byte	0xff
	.4byte	.LLST57
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x9e
	.4byte	0xe9
	.4byte	.LLST58
	.uleb128 0x27
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9f
	.4byte	0xcbf
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa0
	.4byte	0xe9
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x1
	.byte	0xa1
	.4byte	0xe9
	.4byte	.LLST59
	.uleb128 0x31
	.4byte	0xa55
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.byte	0xa0
	.4byte	0xdc7
	.uleb128 0x2b
	.4byte	0xa72
	.4byte	.LLST60
	.uleb128 0x2b
	.4byte	0xa66
	.4byte	.LLST61
	.uleb128 0x2f
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.uleb128 0x2d
	.4byte	0xa7e
	.4byte	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.4byte	0xe8d
	.uleb128 0x27
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa3
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x31
	.4byte	0xc58
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x1
	.byte	0xa3
	.4byte	0xe76
	.uleb128 0x2b
	.4byte	0xc8d
	.4byte	.LLST63
	.uleb128 0x2b
	.4byte	0xc81
	.4byte	.LLST64
	.uleb128 0x2b
	.4byte	0xc75
	.4byte	.LLST65
	.uleb128 0x2b
	.4byte	0xc69
	.4byte	.LLST66
	.uleb128 0x2f
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.uleb128 0x2d
	.4byte	0xca6
	.4byte	.LLST67
	.uleb128 0x34
	.4byte	0xc99
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3641
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0xe48
	.uleb128 0x2d
	.4byte	0xcb3
	.4byte	.LLST68
	.byte	0
	.uleb128 0x20
	.4byte	.LVL114
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x197
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3641
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL118
	.4byte	0x306
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL108
	.4byte	0x2ae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x119
	.4byte	0xff
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7e
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x119
	.4byte	0x160
	.4byte	.LLST69
	.uleb128 0x3d
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x119
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3d
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x119
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.string	"err"
	.byte	0x1
	.2byte	0x11b
	.4byte	0xff
	.4byte	.LLST70
	.uleb128 0x43
	.string	"reg"
	.byte	0x1
	.2byte	0x11c
	.4byte	0xe9
	.4byte	.LLST71
	.uleb128 0x32
	.4byte	.LVL125
	.4byte	0x2ae
	.4byte	0xf24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL126
	.4byte	0x14ee
	.uleb128 0x32
	.4byte	.LVL127
	.4byte	0x14f9
	.4byte	0xf61
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL131
	.4byte	0x306
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x17b
	.4byte	0xe9
	.byte	0x1
	.4byte	0xff0
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x17b
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x17b
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x17b
	.4byte	0xb88
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x17b
	.4byte	0x209
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x17d
	.4byte	0xe9
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x17e
	.4byte	0xe9
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17f
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x188
	.4byte	0x25
	.byte	0
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.byte	0x94
	.4byte	0xff
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cc
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0x94
	.4byte	0x37
	.4byte	.LLST72
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0x94
	.4byte	0x160
	.4byte	.LLST73
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0x94
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x94
	.4byte	0x25
	.4byte	.LLST74
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.byte	0x94
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x94
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x96
	.4byte	0xe9
	.uleb128 0x2a
	.4byte	0xf7e
	.4byte	.LBB125
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0x96
	.4byte	0x10c2
	.uleb128 0x40
	.4byte	0xfb3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x40
	.4byte	0xfa7
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x40
	.4byte	0xf9b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x40
	.4byte	0xf8f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x118
	.uleb128 0x2d
	.4byte	0xfbf
	.4byte	.LLST75
	.uleb128 0x2d
	.4byte	0xfcb
	.4byte	.LLST76
	.uleb128 0x2d
	.4byte	0xfd7
	.4byte	.LLST77
	.uleb128 0x2d
	.4byte	0xfe3
	.4byte	.LLST78
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL152
	.4byte	0xea4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x3ee
	.byte	0x1
	.4byte	0x1127
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x160
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x1127
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x3ee
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF45
	.4byte	0x112d
	.4byte	.LASF108
	.uleb128 0x14
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x7
	.4byte	0x2f1
	.uleb128 0x44
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1bf
	.byte	0x1
	.4byte	0x117d
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x160
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1127
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF45
	.4byte	0x118d
	.4byte	.LASF112
	.uleb128 0x14
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x118d
	.uleb128 0x17
	.4byte	0xa6
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x117d
	.uleb128 0x45
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xff
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1450
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x1450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x1450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x46
	.string	"reg"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x1460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	0x1480
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3694
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x3a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST79
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x3a
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x18a
	.4byte	.LLST80
	.uleb128 0x47
	.4byte	0x10cc
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x126f
	.uleb128 0x2b
	.4byte	0x10e9
	.4byte	.LLST81
	.uleb128 0x40
	.4byte	0x10dd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.uleb128 0x2d
	.4byte	0x10f5
	.4byte	.LLST82
	.uleb128 0x2d
	.4byte	0x1101
	.4byte	.LLST83
	.uleb128 0x34
	.4byte	0x110b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3661
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x168
	.uleb128 0x2d
	.4byte	0x1119
	.4byte	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0x1132
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x12c7
	.uleb128 0x2b
	.4byte	0x114b
	.4byte	.LLST85
	.uleb128 0x2b
	.4byte	0x113f
	.4byte	.LLST86
	.uleb128 0x2f
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.uleb128 0x2d
	.4byte	0x1157
	.4byte	.LLST87
	.uleb128 0x34
	.4byte	0x1161
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3673
	.uleb128 0x2f
	.4byte	.LBB164
	.4byte	.LBE164-.LBB164
	.uleb128 0x2d
	.4byte	0x116f
	.4byte	.LLST88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x180
	.4byte	0x13a1
	.uleb128 0x43
	.string	"i"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x25
	.4byte	.LLST89
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x198
	.uleb128 0x3a
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x25
	.4byte	.LLST90
	.uleb128 0x43
	.string	"err"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0xff
	.4byte	.LLST91
	.uleb128 0x3a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x25
	.4byte	.LLST92
	.uleb128 0x3b
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.4byte	0x1362
	.uleb128 0x43
	.string	"n"
	.byte	0x1
	.2byte	0x1df
	.4byte	0x25
	.4byte	.LLST93
	.uleb128 0x2e
	.4byte	.LVL181
	.4byte	0x14ee
	.uleb128 0x20
	.4byte	.LVL182
	.4byte	0x14f9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB169
	.4byte	.LBE169-.LBB169
	.4byte	0x137e
	.uleb128 0x43
	.string	"r"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x25
	.4byte	.LLST94
	.byte	0
	.uleb128 0x20
	.4byte	.LVL187
	.4byte	0x1538
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x65
	.byte	0x1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.4byte	0x13fe
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x1127
	.uleb128 0x3b
	.4byte	.LBB173
	.4byte	.LBE173-.LBB173
	.4byte	0x13d6
	.uleb128 0x43
	.string	"i"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x25
	.4byte	.LLST95
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x25
	.uleb128 0x20
	.4byte	.LVL207
	.4byte	0x14d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL155
	.4byte	0x14e3
	.4byte	0x1412
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL160
	.4byte	0x1544
	.4byte	0x1432
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.4byte	.LVL161
	.4byte	0x1544
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xc8
	.4byte	0x1460
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	0xe9
	.4byte	0x1470
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.4byte	0xb6
	.4byte	0x1480
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x29
	.byte	0
	.uleb128 0x7
	.4byte	0x1470
	.uleb128 0x48
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x1497
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC21
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x16
	.4byte	0x230
	.4byte	0x14ac
	.uleb128 0x17
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.4byte	.LASF117
	.byte	0x1
	.byte	0x32
	.4byte	0x14bd
	.uleb128 0x5
	.byte	0x3
	.4byte	range_read_addr_blocks
	.uleb128 0x7
	.4byte	0x149c
	.uleb128 0x27
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3a
	.4byte	0x14d3
	.uleb128 0x5
	.byte	0x3
	.4byte	range_write_addr_blocks
	.uleb128 0x7
	.4byte	0x149c
	.uleb128 0x49
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x9
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x7
	.byte	0xc9
	.uleb128 0x49
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x6
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x6
	.byte	0x6b
	.uleb128 0x49
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x7
	.byte	0xa3
	.uleb128 0x49
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xa
	.byte	0xb2
	.uleb128 0x4a
	.4byte	.LASF125
	.4byte	.LASF127
	.byte	0xb
	.byte	0
	.4byte	.LASF125
	.uleb128 0x4a
	.4byte	.LASF126
	.4byte	.LASF128
	.byte	0xb
	.byte	0
	.4byte	.LASF126
	.uleb128 0x4b
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x12e
	.uleb128 0x4c
	.4byte	.LASF135
	.4byte	.LASF135
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x18
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
	.uleb128 0x2116
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xa
	.2byte	0x1604
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x13
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x19
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL19
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x5
	.byte	0x35
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE5
	.2byte	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL76
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL76
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL90
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL79
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL97
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL106
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL106
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL106
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL106
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL107
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL108
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL114
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xa
	.2byte	0x1603
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL152-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL133
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL134
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL144
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0xd
	.byte	0x7e
	.sleb128 0
	.byte	0x38
	.byte	0x1b
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL144
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL159
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL176
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL177
	.4byte	.LVL185
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL187-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL187-1
	.4byte	.LVL204
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL205
	.4byte	.LFE23
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL163
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL169
	.4byte	.LVL206
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LFE23
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL169
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL207
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL175
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL179
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181-1
	.4byte	.LVL183
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL195
	.2byte	0x3
	.byte	0x73
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x3
	.byte	0x73
	.sleb128 -5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL183
	.4byte	.LVL187-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL188
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL206
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x37
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	.LBB129
	.4byte	.LBE129
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	0
	.4byte	0
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	0
	.4byte	0
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	.LBB179
	.4byte	.LBE179
	.4byte	0
	.4byte	0
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	0
	.4byte	0
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB178
	.4byte	.LBE178
	.4byte	0
	.4byte	0
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	.LBB171
	.4byte	.LBE171
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF120:
	.string	"esp_efuse_get_coding_scheme"
.LASF101:
	.string	"fill_reg"
.LASF56:
	.string	"offset_in_bits"
.LASF49:
	.string	"esp_efuse_utility_reset"
.LASF119:
	.string	"__assert_func"
.LASF77:
	.string	"esp_efuse_utility_process"
.LASF0:
	.string	"unsigned int"
.LASF61:
	.string	"get_count_bits_in_reg"
.LASF37:
	.string	"esp_efuse_coding_scheme_t"
.LASF8:
	.string	"__int32_t"
.LASF94:
	.string	"bit_start_in_reg"
.LASF44:
	.string	"i_reg"
.LASF121:
	.string	"esp_log_timestamp"
.LASF50:
	.string	"esp_efuse_utility_read_reg"
.LASF129:
	.string	"esp_efuse_apply_34_encoding"
.LASF92:
	.string	"out_cnt"
.LASF46:
	.string	"num_block"
.LASF57:
	.string	"size_bits"
.LASF63:
	.string	"last_used_bit"
.LASF90:
	.string	"sum_shift"
.LASF54:
	.string	"get_starting_bit_num_in_reg"
.LASF68:
	.string	"func_proc"
.LASF20:
	.string	"uint32_t"
.LASF91:
	.string	"esp_efuse_utility_count_once"
.LASF82:
	.string	"shift"
.LASF69:
	.string	"bits_counter"
.LASF66:
	.string	"field"
.LASF35:
	.string	"EFUSE_CODING_SCHEME_3_4"
.LASF12:
	.string	"long long unsigned int"
.LASF106:
	.string	"esp_efuse_utility_write_blob"
.LASF43:
	.string	"esp_efuse_range_addr_t"
.LASF7:
	.string	"__uint16_t"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF114:
	.string	"esp_efuse_utility_apply_new_coding_scheme"
.LASF67:
	.string	"ptr_size_bits"
.LASF51:
	.string	"value"
.LASF64:
	.string	"num_bit"
.LASF130:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF96:
	.string	"reg_masked"
.LASF88:
	.string	"reg_of_aligned_bits"
.LASF126:
	.string	"puts"
.LASF97:
	.string	"esp_efuse_utility_write_cnt"
.LASF3:
	.string	"size_t"
.LASF87:
	.string	"blob"
.LASF60:
	.string	"_Bool"
.LASF115:
	.string	"st_offset_buf"
.LASF81:
	.string	"get_mask"
.LASF99:
	.string	"reg_masked_bits"
.LASF11:
	.string	"__uint64_t"
.LASF48:
	.string	"num_reg"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"bit_start"
.LASF89:
	.string	"shift_bit"
.LASF34:
	.string	"EFUSE_CODING_SCHEME_NONE"
.LASF16:
	.string	"char"
.LASF127:
	.string	"__builtin_putchar"
.LASF73:
	.string	"num_bits"
.LASF103:
	.string	"filled_bits_blob"
.LASF17:
	.string	"uint8_t"
.LASF128:
	.string	"__builtin_puts"
.LASF86:
	.string	"arr_out"
.LASF47:
	.string	"addr_wr_block"
.LASF105:
	.string	"shift_reg"
.LASF79:
	.string	"bits"
.LASF10:
	.string	"long long int"
.LASF84:
	.string	"esp_efuse_utility_fill_buff"
.LASF124:
	.string	"printf"
.LASF110:
	.string	"blk_is_filled"
.LASF85:
	.string	"efuse_block"
.LASF72:
	.string	"start_bit"
.LASF75:
	.string	"esp_efuse_utility_debug_dump_blocks"
.LASF53:
	.string	"reg_to_write"
.LASF131:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_utility.c"
.LASF135:
	.string	"memset"
.LASF33:
	.string	"esp_efuse_block_t"
.LASF98:
	.string	"set_bits"
.LASF71:
	.string	"req_size"
.LASF93:
	.string	"set_cnt_in_reg"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF95:
	.string	"bit_count_used_in_reg"
.LASF83:
	.string	"mask"
.LASF122:
	.string	"esp_log_write"
.LASF74:
	.string	"esp_efuse_utility_update_virt_blocks"
.LASF36:
	.string	"EFUSE_CODING_SCHEME_REPEAT"
.LASF18:
	.string	"uint16_t"
.LASF100:
	.string	"esp_efuse_utility_write_reg"
.LASF6:
	.string	"short int"
.LASF70:
	.string	"field_len"
.LASF13:
	.string	"long int"
.LASF59:
	.string	"max_num_bit"
.LASF117:
	.string	"range_read_addr_blocks"
.LASF65:
	.string	"get_reg_num"
.LASF118:
	.string	"range_write_addr_blocks"
.LASF21:
	.string	"uint64_t"
.LASF123:
	.string	"esp_efuse_get_field_size"
.LASF132:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/efuse"
.LASF40:
	.string	"esp_efuse_desc_t"
.LASF4:
	.string	"__uint8_t"
.LASF108:
	.string	"read_w_data_and_check_fill"
.LASF39:
	.string	"bit_count"
.LASF42:
	.string	"start"
.LASF29:
	.string	"EFUSE_BLK0"
.LASF30:
	.string	"EFUSE_BLK1"
.LASF31:
	.string	"EFUSE_BLK2"
.LASF32:
	.string	"EFUSE_BLK3"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF76:
	.string	"addr_rd_block"
.LASF19:
	.string	"int32_t"
.LASF104:
	.string	"temp_blob_32"
.LASF52:
	.string	"addr_wr_reg"
.LASF111:
	.string	"buf_r_data"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF62:
	.string	"ret_count"
.LASF22:
	.string	"esp_err_t"
.LASF78:
	.string	"esp_efuse_utility_get_number_of_items"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF133:
	.string	"write_reg"
.LASF109:
	.string	"buf_w_data"
.LASF125:
	.string	"putchar"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"efuse_func_proc_t"
.LASF45:
	.string	"__func__"
.LASF58:
	.string	"scheme"
.LASF80:
	.string	"size_of_base"
.LASF116:
	.string	"buf_32"
.LASF102:
	.string	"bit_count_in_reg"
.LASF134:
	.string	"esp_efuse_utility_erase_virt_blocks"
.LASF113:
	.string	"esp_efuse_utility_burn_efuses"
.LASF112:
	.string	"read_r_data"
.LASF107:
	.string	"arr_in"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF55:
	.string	"check_range_of_bits"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
