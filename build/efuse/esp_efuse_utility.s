	.file	"esp_efuse_utility.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"blk >= 0 && blk <= 3"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_utility.c"
.LC5:
	.string	"num_reg <= 6"
.LC7:
	.string	"num_reg <= 7"
	.section	.text.write_reg,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3591
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, range_write_addr_blocks
	.align	4
	.type	write_reg, @function
write_reg:
.LFB13:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_utility.c"
	.loc 1 337 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 338 0
	bltui	a2, 4, .L2
	.loc 1 338 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x152
	j	.L5
.L2:
	.loc 1 339 0 is_stmt 1
	bnez.n	a2, .L3
	.loc 1 340 0
	bltui	a3, 7, .L4
.LVL1:
.LBB8:
.LBB9:
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi	a11, 0x154
.LVL2:
.L5:
	l32r	a10, .LC4
	call8	__assert_func
.LVL3:
.L3:
.LBE9:
.LBE8:
	.loc 1 342 0
	bltui	a3, 8, .L4
	.loc 1 342 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC2
	movi	a11, 0x156
	j	.L5
.L4:
.LVL4:
	.loc 1 344 0 is_stmt 1
	l32r	a8, .LC9
	addx8	a2, a2, a8
.LVL5:
	.loc 1 345 0
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
.LVL6:
	memw
	l32i.n	a2, a3, 0
	or	a4, a2, a4
.LVL7:
	.loc 1 347 0
	memw
	s32i.n	a4, a3, 0
	retw.n
.LFE13:
	.size	write_reg, .-write_reg
	.section	.rodata.str1.1
.LC13:
	.string	"bits_counter <= req_size"
.LC17:
	.string	"efuse"
.LC19:
	.string	"\033[0;31mE (%d) %s: Range of data does not match the coding scheme\033[0m\n"
	.section	.text.esp_efuse_utility_process,"ax",@progbits
	.literal_position
	.literal .LC12, 5636
	.literal .LC14, .LC13
	.literal .LC15, __func__$3482
	.literal .LC16, .LC3
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.global	esp_efuse_utility_process
	.type	esp_efuse_utility_process, @function
esp_efuse_utility_process:
.LFB0:
	.loc 1 77 0
.LVL8:
	entry	sp, 64
.LCFI1:
.LVL9:
	.loc 1 79 0
	movi.n	a6, 0
	.loc 1 82 0
	mov.n	a10, a2
	.loc 1 77 0
	s32i.n	a3, sp, 20
	.loc 1 79 0
	s32i.n	a6, sp, 0
	.loc 1 82 0
	call8	esp_efuse_get_field_size
.LVL10:
	.loc 1 83 0
	minu	a3, a10, a4
.LVL11:
	movnez	a10, a3, a4
.LVL12:
	mov.n	a4, a10
.LVL13:
	mov.n	a3, a2
	.loc 1 78 0
	mov.n	a2, a6
.LVL14:
	.loc 1 86 0
	movi.n	a6, 1
	j	.L8
.LVL15:
.L28:
.LBB21:
	.loc 1 87 0
	l8ui	a8, a2, 1
.LBB22:
.LBB23:
	.loc 1 443 0
	l8ui	a10, a2, 0
.LBE23:
.LBE22:
	.loc 1 87 0
	l16ui	a7, a2, 2
.LVL16:
.LBB25:
.LBB24:
	.loc 1 443 0
	s32i.n	a8, sp, 24
	call8	esp_efuse_get_coding_scheme
.LVL17:
	.loc 1 444 0
	l32i.n	a8, sp, 24
	add.n	a2, a8, a7
.LVL18:
	.loc 1 445 0
	movi.n	a7, 0
.LVL19:
	moveqz	a7, a6, a10
	extui	a7, a7, 0, 8
	beqz.n	a7, .L32
	movi	a7, 0x100
	blt	a7, a2, .L9
.L32:
	bnei	a10, 1, .L33
	movi	a7, 0xc0
	blt	a7, a2, .L9
.L33:
	.loc 1 446 0
	bnei	a10, 2, .L34
	movi	a7, 0x80
	blt	a7, a2, .L9
.L34:
	movi.n	a7, 0
	mov.n	a2, a7
.LVL20:
	j	.L16
.LVL21:
.L21:
.LBE24:
.LBE25:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
	.loc 1 388 0
	addi.n	a8, a8, 1
.LVL22:
	addi.n	a9, a8, -1
	sub	a9, a9, a14
	movi.n	a2, 0
	moveqz	a2, a6, a9
	extui	a9, a2, 0, 8
	.loc 1 387 0
	addi.n	a13, a13, 1
.LVL23:
	.loc 1 388 0
	bnez.n	a9, .L35
	extui	a2, a8, 0, 5
	moveqz	a9, a6, a2
	beqz.n	a9, .L17
.L35:
	.loc 1 389 0
	addi.n	a2, a12, 1
.LVL24:
	beq	a7, a12, .L20
	mov.n	a12, a2
	.loc 1 392 0
	movi.n	a13, 0
.LVL25:
.L17:
	.loc 1 386 0
	bge	a14, a8, .L21
.LBE29:
	.loc 1 395 0
	movi.n	a13, 0
.LVL26:
.L20:
.LBE28:
.LBE27:
	.loc 1 98 0
	add.n	a2, a15, a13
	bge	a4, a2, .L22
	.loc 1 99 0
	sub	a13, a4, a15
.LVL27:
.L22:
	.loc 1 103 0
	l32i.n	a14, sp, 20
.LVL28:
	l32i.n	a12, sp, 16
	l8ui	a11, a11, 0
.LVL29:
	mov.n	a15, sp
	callx8	a5
.LVL30:
	mov.n	a2, a10
.LVL31:
	.loc 1 104 0
	addi.n	a7, a7, 1
.LVL32:
.L16:
.LBE26:
	.loc 1 93 0
	movi.n	a9, 0
	l32i.n	a15, sp, 0
	bne	a2, a9, .L23
	bge	a15, a4, .L23
	.loc 1 94 0 discriminator 1
	l32i.n	a11, a3, 0
	l8ui	a8, a11, 1
.LVL33:
.LBB38:
.LBB39:
	.loc 1 367 0 discriminator 1
	l16ui	a2, a11, 2
.LVL34:
	.loc 1 365 0 discriminator 1
	srai	a10, a8, 5
	.loc 1 367 0 discriminator 1
	add.n	a2, a2, a8
.LVL35:
	addi.n	a14, a2, -1
	addi	a2, a2, 30
	movgez	a2, a14, a14
	.loc 1 365 0 discriminator 1
	add.n	a10, a10, a7
.LVL36:
	.loc 1 367 0 discriminator 1
	srai	a2, a2, 5
	bge	a2, a10, .L25
	.loc 1 367 0 is_stmt 0
	mov.n	a2, a9
.LVL37:
.L23:
	addi.n	a3, a3, 4
.L8:
.LVL38:
.LBE39:
.LBE38:
.LBE21:
	.loc 1 86 0 is_stmt 1
	l32i.n	a7, sp, 0
	bnez.n	a2, .L26
	bge	a7, a4, .L26
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32i.n	a2, a3, 0
.LVL39:
	bnez.n	a2, .L28
	retw.n
.LVL40:
.L26:
	.loc 1 108 0 is_stmt 1
	bge	a4, a7, .L52
	.loc 1 108 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	l32r	a10, .LC16
	movi	a11, 0x6c
	call8	__assert_func
.LVL41:
.L9:
.LBB41:
	.loc 1 88 0 is_stmt 1
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC18
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	.loc 1 89 0
	l32r	a2, .LC12
.LVL44:
	j	.L23
.LVL45:
.L25:
.LBB40:
.LBB32:
.LBB33:
	.loc 1 377 0
	extui	a12, a8, 0, 5
	moveqz	a9, a12, a7
.LBE33:
.LBE32:
.LBB35:
.LBB30:
	.loc 1 384 0
	movi.n	a12, 0
.LBE30:
.LBE35:
.LBB36:
.LBB34:
	.loc 1 377 0
	s32i.n	a9, sp, 16
.LVL46:
.LBE34:
.LBE36:
.LBB37:
.LBB31:
	.loc 1 383 0
	mov.n	a13, a12
	j	.L17
.LVL47:
.L52:
.LBE31:
.LBE37:
.LBE40:
.LBE41:
	.loc 1 110 0
	retw.n
.LFE0:
	.size	esp_efuse_utility_process, .-esp_efuse_utility_process
	.section	.text.esp_efuse_utility_reset,"ax",@progbits
	.literal_position
	.literal .LC21, 1073062140
	.literal .LC22, 23205
	.literal .LC23, range_write_addr_blocks
	.align	4
	.global	esp_efuse_utility_reset
	.type	esp_efuse_utility_reset, @function
esp_efuse_utility_reset:
.LFB5:
	.loc 1 176 0
	entry	sp, 32
.LCFI2:
	.loc 1 177 0
	l32r	a8, .LC21
	l32r	a9, .LC22
	movi.n	a10, 4
	memw
	s32i.n	a9, a8, 0
.LVL48:
	l32r	a8, .LC23
.LBB42:
.LBB43:
	.loc 1 180 0
	movi.n	a11, 0
.LVL49:
.L69:
	.loc 1 179 0
	l32i.n	a9, a8, 0
.LVL50:
	l32i.n	a12, a8, 4
	j	.L67
.L68:
	.loc 1 180 0 discriminator 3
	memw
	s32i.n	a11, a9, 0
	.loc 1 179 0 discriminator 3
	addi.n	a9, a9, 4
.LVL51:
.L67:
	.loc 1 179 0 is_stmt 0 discriminator 1
	bgeu	a12, a9, .L68
.LVL52:
	addi.n	a10, a10, -1
.LVL53:
	addi.n	a8, a8, 8
.LBE43:
	.loc 1 178 0 is_stmt 1 discriminator 2
	bnez.n	a10, .L69
.LBE42:
	.loc 1 183 0
	retw.n
.LFE5:
	.size	esp_efuse_utility_reset, .-esp_efuse_utility_reset
	.section	.text.esp_efuse_utility_burn_efuses,"ax",@progbits
	.literal_position
	.literal .LC24, 1125899907
	.literal .LC25, 1073062168
	.literal .LC26, 1073062136
	.literal .LC27, -65281
	.literal .LC28, 1073062140
	.literal .LC29, 23130
	.literal .LC30, 1073062148
	.literal .LC31, 23205
	.align	4
	.global	esp_efuse_utility_burn_efuses
	.type	esp_efuse_utility_burn_efuses, @function
esp_efuse_utility_burn_efuses:
.LFB6:
	.loc 1 187 0
	entry	sp, 32
.LCFI3:
	.loc 1 214 0
	call8	esp_clk_apb_freq
.LVL54:
	l32r	a8, .LC24
	mulsh	a8, a10, a8
	srai	a10, a10, 31
	srai	a8, a8, 18
	sub	a10, a8, a10
.LVL55:
	.loc 1 216 0
	movi.n	a8, 0x1a
	bgeu	a8, a10, .L75
	.loc 1 220 0
	movi.n	a8, 0x28
	bgeu	a8, a10, .L76
	.loc 1 227 0
	movi	a10, 0x64
.LVL56:
	.loc 1 226 0
	movi	a8, 0x80
	.loc 1 225 0
	movi.n	a9, 0x50
	j	.L72
.LVL57:
.L75:
	.loc 1 219 0
	movi.n	a10, 0x34
.LVL58:
	.loc 1 218 0
	movi	a8, 0xff
	.loc 1 217 0
	movi	a9, 0xfa
	j	.L72
.LVL59:
.L76:
	.loc 1 223 0
	movi.n	a10, 0x50
.LVL60:
	.loc 1 222 0
	movi	a8, 0xff
	.loc 1 221 0
	movi	a9, 0xa0
.L72:
.LVL61:
	.loc 1 229 0
	l32r	a13, .LC25
	movi	a11, -0x100
	memw
	l32i.n	a12, a13, 0
	.loc 1 231 0
	slli	a8, a8, 8
.LVL62:
	.loc 1 229 0
	and	a12, a12, a11
	or	a10, a12, a10
.LVL63:
	memw
	s32i.n	a10, a13, 0
	.loc 1 230 0
	l32r	a10, .LC26
	memw
	l32i.n	a12, a10, 0
	and	a11, a12, a11
	or	a9, a11, a9
.LVL64:
	memw
	s32i.n	a9, a10, 0
	.loc 1 231 0
	memw
	l32i.n	a11, a10, 0
	l32r	a9, .LC27
	and	a9, a11, a9
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 233 0
	l32r	a9, .LC28
	l32r	a8, .LC29
	.loc 1 234 0
	movi.n	a10, 2
	.loc 1 233 0
	memw
	s32i.n	a8, a9, 0
	.loc 1 234 0
	l32r	a8, .LC30
	memw
	s32i.n	a10, a8, 0
.L73:
	.loc 1 235 0 discriminator 1
	memw
	l32i.n	a10, a8, 0
	bnez.n	a10, .L73
	.loc 1 236 0
	l32r	a10, .LC31
	memw
	s32i.n	a10, a9, 0
	.loc 1 237 0
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
.L74:
	.loc 1 238 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	bnez.n	a9, .L74
	.loc 1 240 0
	call8	esp_efuse_utility_reset
.LVL65:
	retw.n
.LFE6:
	.size	esp_efuse_utility_burn_efuses, .-esp_efuse_utility_burn_efuses
	.section	.text.esp_efuse_utility_erase_virt_blocks,"ax",@progbits
	.align	4
	.global	esp_efuse_utility_erase_virt_blocks
	.type	esp_efuse_utility_erase_virt_blocks, @function
esp_efuse_utility_erase_virt_blocks:
.LFB7:
	.loc 1 246 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE7:
	.size	esp_efuse_utility_erase_virt_blocks, .-esp_efuse_utility_erase_virt_blocks
	.section	.rodata.str1.1
.LC33:
	.string	"\033[0;32mI (%d) %s: Emulate efuse is disabled\033[0m\n"
	.section	.text.esp_efuse_utility_update_virt_blocks,"ax",@progbits
	.literal_position
	.literal .LC32, .LC17
	.literal .LC34, .LC33
	.align	4
	.global	esp_efuse_utility_update_virt_blocks
	.type	esp_efuse_utility_update_virt_blocks, @function
esp_efuse_utility_update_virt_blocks:
.LFB8:
	.loc 1 254 0
	.loc 1 254 0
	entry	sp, 32
.LCFI5:
	.loc 1 265 0
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC32
	l32r	a12, .LC34
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL67:
	retw.n
.LFE8:
	.size	esp_efuse_utility_update_virt_blocks, .-esp_efuse_utility_update_virt_blocks
	.section	.rodata.str1.1
.LC35:
	.string	"EFUSE_BLKx:"
.LC38:
	.string	"%d) "
.LC40:
	.string	"0x%08x "
	.section	.text.esp_efuse_utility_debug_dump_blocks,"ax",@progbits
	.literal_position
	.literal .LC36, .LC35
	.literal .LC37, range_read_addr_blocks
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.align	4
	.global	esp_efuse_utility_debug_dump_blocks
	.type	esp_efuse_utility_debug_dump_blocks, @function
esp_efuse_utility_debug_dump_blocks:
.LFB9:
	.loc 1 271 0
	entry	sp, 32
.LCFI6:
	.loc 1 272 0
	l32r	a10, .LC36
.LBB44:
	.loc 1 283 0
	movi.n	a2, 0
.LBE44:
	.loc 1 272 0
	call8	puts
.LVL68:
	l32r	a3, .LC37
.LVL69:
.L84:
.LBB46:
	.loc 1 284 0
	l32r	a10, .LC39
	mov.n	a11, a2
	call8	printf
.LVL70:
.LBB45:
	.loc 1 285 0
	l32i.n	a4, a3, 0
.LVL71:
	j	.L82
.L83:
	.loc 1 286 0 discriminator 3
	memw
	l32i.n	a11, a4, 0
	l32r	a10, .LC41
	.loc 1 285 0 discriminator 3
	addi.n	a4, a4, 4
.LVL72:
	.loc 1 286 0 discriminator 3
	call8	printf
.LVL73:
.L82:
	.loc 1 285 0 discriminator 1
	l32i.n	a8, a3, 4
	bgeu	a8, a4, .L83
.LBE45:
	.loc 1 288 0 discriminator 2
	movi.n	a10, 0xa
	.loc 1 283 0 discriminator 2
	addi.n	a2, a2, 1
.LVL74:
	.loc 1 288 0 discriminator 2
	call8	putchar
.LVL75:
	addi.n	a3, a3, 8
	.loc 1 283 0 discriminator 2
	bnei	a2, 4, .L84
.LBE46:
	.loc 1 291 0
	movi.n	a10, 0xa
	call8	putchar
.LVL76:
	retw.n
.LFE9:
	.size	esp_efuse_utility_debug_dump_blocks, .-esp_efuse_utility_debug_dump_blocks
	.section	.text.esp_efuse_utility_get_number_of_items,"ax",@progbits
	.align	4
	.global	esp_efuse_utility_get_number_of_items
	.type	esp_efuse_utility_get_number_of_items, @function
esp_efuse_utility_get_number_of_items:
.LFB10:
	.loc 1 296 0
.LVL77:
	entry	sp, 32
.LCFI7:
	.loc 1 297 0
	rems	a9, a2, a3
	srai	a8, a9, 31
	sub	a8, a8, a9
	extui	a8, a8, 31, 1
	quos	a2, a2, a3
.LVL78:
	.loc 1 298 0
	add.n	a2, a8, a2
	retw.n
.LFE10:
	.size	esp_efuse_utility_get_number_of_items, .-esp_efuse_utility_get_number_of_items
	.section	.text.esp_efuse_utility_read_reg,"ax",@progbits
	.literal_position
	.literal .LC42, .LC0
	.literal .LC43, __func__$3584
	.literal .LC44, .LC3
	.literal .LC45, .LC5
	.literal .LC46, .LC7
	.literal .LC47, range_read_addr_blocks
	.align	4
	.global	esp_efuse_utility_read_reg
	.type	esp_efuse_utility_read_reg, @function
esp_efuse_utility_read_reg:
.LFB12:
	.loc 1 316 0
.LVL79:
	entry	sp, 32
.LCFI8:
	.loc 1 317 0
	bltui	a2, 4, .L88
	.loc 1 317 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x13d
	j	.L91
.L88:
	.loc 1 318 0 is_stmt 1
	bnez.n	a2, .L89
	.loc 1 319 0
	bltui	a3, 7, .L90
.LVL80:
.LBB49:
.LBB50:
	l32r	a13, .LC45
	l32r	a12, .LC43
	movi	a11, 0x13f
.LVL81:
.L91:
	l32r	a10, .LC44
	call8	__assert_func
.LVL82:
.L89:
.LBE50:
.LBE49:
	.loc 1 321 0
	bltui	a3, 8, .L90
	.loc 1 321 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC43
	movi	a11, 0x141
	j	.L91
.L90:
	.loc 1 328 0 is_stmt 1
	l32r	a8, .LC47
	addx8	a2, a2, a8
.LVL83:
	l32i.n	a2, a2, 0
	addx4	a3, a3, a2
.LVL84:
	memw
	l32i.n	a2, a3, 0
.LVL85:
	.loc 1 331 0
	retw.n
.LFE12:
	.size	esp_efuse_utility_read_reg, .-esp_efuse_utility_read_reg
	.global	__ashldi3
	.global	__lshrdi3
	.section	.text.esp_efuse_utility_fill_buff,"ax",@progbits
	.literal_position
	.literal .LC48, -2147483641
	.align	4
	.global	esp_efuse_utility_fill_buff
	.type	esp_efuse_utility_fill_buff, @function
esp_efuse_utility_fill_buff:
.LFB1:
	.loc 1 115 0
.LVL86:
	entry	sp, 48
.LCFI9:
.LVL87:
	.loc 1 117 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL88:
	.loc 1 115 0
	.loc 1 118 0
	ssr	a4
	srl	a10, a10
.LVL89:
.LBB53:
.LBB54:
	.loc 1 357 0
	movi.n	a2, -1
.LVL90:
	.loc 1 354 0
	beqi	a5, 32, .L93
	.loc 1 355 0
	movi.n	a2, 1
	ssl	a5
	sll	a2, a2
	addi.n	a2, a2, -1
.LVL91:
.L93:
.LBE54:
.LBE53:
	.loc 1 118 0
	and	a4, a10, a2
.LVL92:
	.loc 1 120 0
	l32i.n	a8, a7, 0
	l32r	a2, .LC48
.LVL93:
	and	a2, a8, a2
	bgez	a2, .L94
	addi.n	a2, a2, -1
	movi.n	a3, -8
.LVL94:
	or	a2, a2, a3
	addi.n	a2, a2, 1
.L94:
.LVL95:
	.loc 1 121 0
	beqz.n	a2, .L95
	.loc 1 122 0
	addi.n	a3, a8, 7
	movgez	a3, a8, a8
	mov.n	a12, a2
	srai	a3, a3, 3
	mov.n	a10, a4
	movi.n	a11, 0
	add.n	a3, a6, a3
	s32i.n	a8, sp, 4
	call8	__ashldi3
.LVL96:
	l8ui	a9, a3, 0
	or	a10, a10, a9
	s8i	a10, a3, 0
	.loc 1 123 0
	movi.n	a3, 8
	sub	a2, a3, a2
.LVL97:
	.loc 1 124 0
	l32i.n	a8, sp, 4
	.loc 1 123 0
	min	a2, a5, a2
.LVL98:
	.loc 1 124 0
	add.n	a8, a8, a2
	s32i.n	a8, a7, 0
	.loc 1 125 0
	sub	a5, a5, a2
.LVL99:
.L95:
.LBB56:
.LBB55:
	.loc 1 357 0
	movi.n	a8, 0
.LBE55:
.LBE56:
	.loc 1 132 0
	movi.n	a9, 8
	j	.L96
.LVL100:
.L97:
	.loc 1 131 0
	l32i.n	a3, a7, 0
	.loc 1 130 0
	add.n	a8, a8, a2
.LVL101:
	.loc 1 131 0
	addi.n	a2, a3, 7
.LVL102:
	movgez	a2, a3, a3
	mov.n	a12, a8
	srai	a2, a2, 3
	mov.n	a10, a4
	movi.n	a11, 0
	add.n	a2, a6, a2
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	__lshrdi3
.LVL103:
	l8ui	a11, a2, 0
	or	a10, a10, a11
	s8i	a10, a2, 0
	.loc 1 132 0
	l32i.n	a9, sp, 0
	.loc 1 134 0
	l32i.n	a8, sp, 4
	.loc 1 132 0
	min	a2, a5, a9
.LVL104:
	.loc 1 133 0
	add.n	a3, a3, a2
	s32i.n	a3, a7, 0
	.loc 1 134 0
	sub	a5, a5, a2
.LVL105:
.L96:
	.loc 1 129 0
	bgei	a5, 1, .L97
	.loc 1 137 0
	movi.n	a2, 0
.LVL106:
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
	.loc 1 141 0
.LVL107:
	entry	sp, 32
.LCFI10:
	.loc 1 142 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL108:
	.loc 1 141 0
.LBB59:
.LBB60:
	.loc 1 357 0
	movi.n	a8, -1
	.loc 1 354 0
	beqi	a5, 32, .L103
	.loc 1 355 0
	movi.n	a9, 1
	ssl	a5
	sll	a9, a9
	add.n	a8, a9, a8
.LVL109:
.L103:
.LBE60:
.LBE59:
	.loc 1 143 0
	ssl	a4
	sll	a8, a8
.LVL110:
	and	a10, a8, a10
.LVL111:
	call8	__popcountsi2
.LVL112:
	l32i.n	a8, a6, 0
	.loc 1 146 0
	movi.n	a2, 0
.LVL113:
	.loc 1 143 0
	add.n	a10, a8, a10
	s32i.n	a10, a6, 0
	.loc 1 144 0
	l32i.n	a6, a7, 0
.LVL114:
	add.n	a5, a6, a5
.LVL115:
	s32i.n	a5, a7, 0
	.loc 1 146 0
	retw.n
.LFE2:
	.size	esp_efuse_utility_count_once, .-esp_efuse_utility_count_once
	.section	.rodata.str1.1
.LC50:
	.string	"(bit_start_in_reg + bit_count_used_in_reg) <= 32"
	.section	.text.esp_efuse_utility_write_cnt,"ax",@progbits
	.literal_position
	.literal .LC49, 5633
	.literal .LC51, .LC50
	.literal .LC52, __func__$3640
	.literal .LC53, .LC3
	.align	4
	.global	esp_efuse_utility_write_cnt
	.type	esp_efuse_utility_write_cnt, @function
esp_efuse_utility_write_cnt:
.LFB4:
	.loc 1 157 0
.LVL116:
	entry	sp, 32
.LCFI11:
.LVL117:
	.loc 1 159 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	esp_efuse_utility_read_reg
.LVL118:
	.loc 1 157 0
.LBB67:
.LBB68:
	.loc 1 357 0
	movi.n	a8, -1
	.loc 1 354 0
	beqi	a5, 32, .L106
	.loc 1 355 0
	movi.n	a8, 1
	ssl	a5
	sll	a8, a8
	addi.n	a8, a8, -1
.LVL119:
.L106:
	.loc 1 359 0
	ssl	a4
	sll	a8, a8
.LVL120:
.LBE68:
.LBE67:
	.loc 1 162 0
	and	a10, a10, a8
.LVL121:
	.loc 1 163 0
	beq	a10, a8, .L107
.LVL122:
.LBB69:
.LBB70:
.LBB71:
	.loc 1 427 0
	add.n	a9, a5, a4
	movi.n	a8, 0x20
	movi.n	a12, 0
.LBB72:
	.loc 1 430 0
	movi.n	a11, 1
.LBE72:
	.loc 1 427 0
	bge	a8, a9, .L109
.L108:
	l32r	a13, .LC51
	l32r	a12, .LC52
	l32r	a10, .LC53
.LVL123:
	movi	a11, 0x1ab
	call8	__assert_func
.LVL124:
.L112:
.LBB73:
	.loc 1 430 0
	ssl	a4
	sll	a8, a11
	bany	a10, a8, .L110
	.loc 1 431 0
	or	a12, a12, a8
.LVL125:
	.loc 1 432 0
	l32i.n	a8, a6, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a6, 0
	beqz.n	a8, .L111
.L110:
	.loc 1 429 0
	addi.n	a4, a4, 1
.LVL126:
.L109:
	blt	a4, a9, .L112
.L111:
.LBE73:
.LBE71:
.LBE70:
	.loc 1 165 0
	mov.n	a11, a2
	mov.n	a10, a3
.LVL127:
	call8	write_reg
.LVL128:
.L107:
.LBE69:
	.loc 1 167 0
	l32i.n	a2, a7, 0
.LVL129:
	.loc 1 168 0
	l32i.n	a3, a6, 0
.LVL130:
	.loc 1 169 0
	l32r	a4, .LC49
	.loc 1 167 0
	add.n	a5, a2, a5
.LVL131:
	.loc 1 169 0
	movi.n	a2, 0
	.loc 1 167 0
	s32i.n	a5, a7, 0
	.loc 1 169 0
	moveqz	a2, a4, a3
.LVL132:
	.loc 1 172 0
	retw.n
.LFE4:
	.size	esp_efuse_utility_write_cnt, .-esp_efuse_utility_write_cnt
	.section	.rodata.str1.1
.LC56:
	.string	"\033[0;31mE (%d) %s: Repeated programming of programmed bits is strictly forbidden 0x%08x\033[0m\n"
	.section	.text.esp_efuse_utility_write_reg,"ax",@progbits
	.literal_position
	.literal .LC54, 5635
	.literal .LC55, .LC17
	.literal .LC57, .LC56
	.align	4
	.global	esp_efuse_utility_write_reg
	.type	esp_efuse_utility_write_reg, @function
esp_efuse_utility_write_reg:
.LFB11:
	.loc 1 302 0
.LVL133:
	entry	sp, 32
.LCFI12:
.LVL134:
	.loc 1 304 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_efuse_utility_read_reg
.LVL135:
	.loc 1 305 0
	and	a5, a10, a4
	beqz.n	a5, .L120
	.loc 1 306 0 discriminator 2
	call8	esp_log_timestamp
.LVL136:
	l32r	a11, .LC55
	l32r	a12, .LC57
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL137:
	.loc 1 307 0 discriminator 2
	l32r	a2, .LC54
.LVL138:
	retw.n
.LVL139:
.L120:
	.loc 1 309 0
	mov.n	a10, a2
.LVL140:
	mov.n	a12, a4
	mov.n	a11, a3
	call8	write_reg
.LVL141:
	.loc 1 303 0
	mov.n	a2, a5
.LVL142:
	.loc 1 312 0
	retw.n
.LFE11:
	.size	esp_efuse_utility_write_reg, .-esp_efuse_utility_write_reg
	.section	.text.esp_efuse_utility_write_blob,"ax",@progbits
	.literal_position
	.literal .LC58, -2147483641
	.align	4
	.global	esp_efuse_utility_write_blob
	.type	esp_efuse_utility_write_blob, @function
esp_efuse_utility_write_blob:
.LFB3:
	.loc 1 150 0
.LVL143:
	entry	sp, 32
.LCFI13:
.LVL144:
	.loc 1 150 0
	mov.n	a11, a2
.LBB80:
.LBB81:
	.loc 1 403 0
	l32r	a8, .LC58
	l32i.n	a2, a7, 0
.LVL145:
.LBE81:
.LBE80:
	.loc 1 150 0
.LBB84:
.LBB82:
	.loc 1 403 0
	and	a8, a2, a8
.LBE82:
.LBE84:
	.loc 1 150 0
	mov.n	a10, a3
.LBB85:
.LBB83:
	.loc 1 403 0
	bgez	a8, .L123
	addi.n	a8, a8, -1
	movi.n	a3, -8
.LVL146:
	or	a8, a8, a3
	addi.n	a8, a8, 1
.L123:
.LVL147:
	.loc 1 401 0
	movi.n	a9, 0
	.loc 1 404 0
	beq	a8, a9, .L124
	.loc 1 405 0
	addi.n	a3, a2, 7
	movgez	a3, a2, a2
	srai	a3, a3, 3
	add.n	a3, a6, a3
	l8ui	a9, a3, 0
	.loc 1 406 0
	movi.n	a3, 8
	.loc 1 405 0
	ssr	a8
	sra	a9, a9
.LVL148:
	.loc 1 406 0
	sub	a8, a3, a8
.LVL149:
	min	a8, a5, a8
.LVL150:
	.loc 1 407 0
	movi.n	a3, 1
	ssl	a8
	sll	a3, a3
	addi.n	a3, a3, -1
.LVL151:
	.loc 1 408 0
	add.n	a2, a2, a8
	.loc 1 407 0
	and	a9, a3, a9
.LVL152:
	.loc 1 408 0
	s32i.n	a2, a7, 0
	.loc 1 409 0
	sub	a5, a5, a8
.LVL153:
.L124:
	.loc 1 415 0
	movi.n	a15, 8
	.loc 1 416 0
	movi.n	a2, 1
	j	.L125
.LVL154:
.L126:
	.loc 1 414 0
	l32i.n	a14, a7, 0
.LVL155:
	.loc 1 415 0
	min	a12, a5, a15
.LVL156:
	.loc 1 414 0
	addi.n	a3, a14, 7
	movgez	a3, a14, a14
	srai	a3, a3, 3
	add.n	a3, a6, a3
	.loc 1 416 0
	l8ui	a3, a3, 0
	ssl	a12
	sll	a13, a2
	addi.n	a13, a13, -1
	and	a13, a3, a13
	ssl	a8
	sll	a13, a13
	.loc 1 417 0
	add.n	a14, a14, a12
.LVL157:
	.loc 1 416 0
	or	a9, a9, a13
.LVL158:
	.loc 1 417 0
	s32i.n	a14, a7, 0
.LVL159:
	.loc 1 418 0
	sub	a5, a5, a12
.LVL160:
	.loc 1 419 0
	addi.n	a8, a8, 8
.LVL161:
.L125:
	.loc 1 413 0
	bgei	a5, 1, .L126
.LBE83:
.LBE85:
	.loc 1 152 0
	ssl	a4
	sll	a12, a9
	call8	esp_efuse_utility_write_reg
.LVL162:
	.loc 1 153 0
	mov.n	a2, a10
	retw.n
.LFE3:
	.size	esp_efuse_utility_write_blob, .-esp_efuse_utility_write_blob
	.section	.rodata.str1.1
.LC66:
	.string	"\033[0;31mE (%d) %s: Bits are not empty. Write operation is forbidden.\033[0m\n"
	.section	.text.esp_efuse_utility_apply_new_coding_scheme,"ax",@progbits
	.literal_position
	.literal .LC61, 5636
	.literal .LC62, range_write_addr_blocks
	.literal .LC63, range_read_addr_blocks
	.literal .LC64, 715827883
	.literal .LC65, .LC17
	.literal .LC67, .LC66
	.align	4
	.global	esp_efuse_utility_apply_new_coding_scheme
	.type	esp_efuse_utility_apply_new_coding_scheme, @function
esp_efuse_utility_apply_new_coding_scheme:
.LFB23:
	.loc 1 478 0
	entry	sp, 128
.LCFI14:
.LVL163:
	l32r	a6, .LC62
	l32r	a5, .LC63
.LBB101:
	.loc 1 483 0
	movi.n	a4, 1
.LVL164:
.L131:
.LBB102:
	.loc 1 484 0
	mov.n	a10, a4
	call8	esp_efuse_get_coding_scheme
.LVL165:
	mov.n	a3, a10
.LVL166:
	.loc 1 486 0
	bnez.n	a10, .L130
.LVL167:
.L136:
.LBE102:
	.loc 1 483 0
	addi.n	a4, a4, 1
.LVL168:
	addi.n	a6, a6, 8
	addi.n	a5, a5, 8
	bnei	a4, 4, .L131
.LBE101:
	.loc 1 535 0
	movi.n	a2, 0
	retw.n
.LVL169:
.L130:
.LBB120:
.LBB119:
	.loc 1 487 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	add.n	a10, sp, a12
	call8	memset
.LVL170:
	.loc 1 488 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	addi	a10, sp, 64
	call8	memset
.LVL171:
.LBB103:
.LBB104:
.LBB105:
	.loc 1 457 0
	l32i.n	a9, a6, 8
.LVL172:
.LBE105:
	.loc 1 455 0
	movi.n	a7, 0
.LBB106:
	.loc 1 457 0
	l32i.n	a11, a6, 12
	mov.n	a2, a9
	.loc 1 460 0
	mov.n	a12, a7
	j	.L133
.LVL173:
.L135:
	.loc 1 458 0
	memw
	l32i.n	a10, a2, 0
	sub	a8, a2, a9
	addi	a13, sp, 32
.LVL174:
	add.n	a8, a13, a8
	s32i.n	a10, a8, 0
	.loc 1 459 0
	beqz.n	a10, .L134
	.loc 1 460 0
	memw
	s32i.n	a12, a2, 0
.LVL175:
	.loc 1 461 0
	movi.n	a7, 1
.LVL176:
.L134:
	.loc 1 457 0
	addi.n	a2, a2, 4
.LVL177:
.L133:
	bgeu	a11, a2, .L135
.LBE106:
.LBE104:
.LBE103:
	.loc 1 489 0
	beqz.n	a7, .L136
.LVL178:
.LBB107:
.LBB108:
.LBB109:
	.loc 1 470 0
	l32i.n	a8, a5, 8
.LVL179:
	l32i.n	a9, a5, 12
	mov.n	a2, a8
.LVL180:
	j	.L137
.LVL181:
.L138:
	.loc 1 471 0
	memw
	l32i.n	a10, a2, 0
	sub	a7, a2, a8
	add.n	a7, sp, a7
	s32i.n	a10, a7, 0
	.loc 1 470 0
	addi.n	a2, a2, 4
.LVL182:
.L137:
	bgeu	a9, a2, .L138
.LBE109:
.LBE108:
.LBE107:
	.loc 1 491 0
	bnei	a3, 1, .L139
	.loc 1 492 0
	l32i.n	a2, sp, 56
.LVL183:
	bnez.n	a2, .L153
	.loc 1 492 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 60
.LVL184:
	bnez.n	a3, .L153
.L144:
.LVL185:
.LBB110:
	.loc 1 496 0 is_stmt 1
	addi	a8, sp, 32
.LVL186:
	add.n	a2, a8, a3
	l8ui	a2, a2, 0
	beqz.n	a2, .L140
.LBB111:
	.loc 1 497 0
	l32r	a13, .LC64
	mulsh	a2, a3, a13
	srai	a3, a3, 31
.LVL187:
	sub	a2, a2, a3
	slli	a7, a2, 1
	add.n	a10, a7, a2
	slli	a10, a10, 1
.LVL188:
.LBB112:
	.loc 1 499 0
	mov.n	a8, a10
.LVL189:
	j	.L141
.LVL190:
.L143:
	.loc 1 500 0
	add.n	a3, sp, a8
	l8ui	a3, a3, 0
	beqz.n	a3, .L142
	.loc 1 501 0 discriminator 2
	call8	esp_log_timestamp
.LVL191:
	l32r	a11, .LC65
	l32r	a12, .LC67
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL192:
	j	.L153
.LVL193:
.L142:
	.loc 1 499 0 discriminator 2
	addi.n	a8, a8, 1
.LVL194:
.L141:
	.loc 1 499 0 is_stmt 0 discriminator 1
	addi.n	a3, a10, 5
	bge	a3, a8, .L143
.LBE112:
	.loc 1 506 0 is_stmt 1
	addi	a8, sp, 32
.LVL195:
	movi.n	a12, 6
	addi	a11, sp, 64
	add.n	a10, a8, a10
.LVL196:
	call8	esp_efuse_apply_34_encoding
.LVL197:
	.loc 1 507 0
	bnez.n	a10, .L149
.LVL198:
.LBB113:
	.loc 1 513 0
	l32i.n	a9, a6, 8
	addx8	a8, a2, a9
	l32i	a2, sp, 64
	memw
	s32i.n	a2, a8, 0
.LVL199:
	addi.n	a2, a7, 1
	l32i	a7, sp, 68
.LVL200:
	addx4	a2, a2, a9
.LVL201:
	memw
	s32i.n	a7, a2, 0
.LVL202:
.L140:
.LBE113:
.LBE111:
	.loc 1 495 0 discriminator 2
	addi.n	a3, a3, 1
.LVL203:
	movi.n	a2, 0x18
	bne	a3, a2, .L144
	j	.L136
.LVL204:
.L139:
.LBE110:
	.loc 1 518 0
	bnei	a3, 2, .L136
.LVL205:
.LBB115:
.LBB116:
	.loc 1 521 0
	l32i.n	a2, sp, 48
.LVL206:
	bnez.n	a2, .L153
.LVL207:
	l32i.n	a2, sp, 52
	bnez.n	a2, .L153
.LVL208:
	l32i.n	a2, sp, 56
	bnez.n	a2, .L153
.LVL209:
	l32i.n	a2, sp, 60
	bnez.n	a2, .L153
	movi.n	a7, 4
.LVL210:
.L146:
.LBE116:
.LBB117:
	.loc 1 526 0
	addi	a13, sp, 32
.LVL211:
	add.n	a8, a13, a2
	l32i.n	a9, a8, 0
	beqz.n	a9, .L145
	.loc 1 527 0
	l32i.n	a3, a6, 8
	add.n	a10, a2, a3
	memw
	s32i.n	a9, a10, 0
	.loc 1 528 0
	l32i.n	a8, a8, 0
	addi	a9, a2, 16
	add.n	a3, a9, a3
	memw
	s32i.n	a8, a3, 0
.L145:
.LVL212:
	addi.n	a2, a2, 4
	addi.n	a7, a7, -1
	bnez.n	a7, .L146
	j	.L136
.LVL213:
.L149:
.LBE117:
.LBE115:
.LBB118:
.LBB114:
	.loc 1 506 0
	mov.n	a2, a10
	retw.n
.LVL214:
.L153:
.LBE114:
.LBE118:
	.loc 1 493 0
	l32r	a2, .LC61
.LBE119:
.LBE120:
	.loc 1 536 0
	retw.n
.LFE23:
	.size	esp_efuse_utility_apply_new_coding_scheme, .-esp_efuse_utility_apply_new_coding_scheme
	.section	.rodata.__func__$3584,"a",@progbits
	.type	__func__$3584, @object
	.size	__func__$3584, 27
__func__$3584:
	.string	"esp_efuse_utility_read_reg"
	.section	.rodata.__func__$3591,"a",@progbits
	.type	__func__$3591, @object
	.size	__func__$3591, 10
__func__$3591:
	.string	"write_reg"
	.section	.rodata.__func__$3640,"a",@progbits
	.type	__func__$3640, @object
	.size	__func__$3640, 15
__func__$3640:
	.string	"set_cnt_in_reg"
	.section	.rodata.__func__$3482,"a",@progbits
	.type	__func__$3482, @object
	.size	__func__$3482, 26
__func__$3482:
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
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/include/esp_efuse.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_utility.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_clk.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1478
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
	.4byte	.Ldebug_ranges0+0x160
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
	.4byte	.LASF91
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
	.byte	0x2d
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2e
	.4byte	0xe9
	.byte	0
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x2f
	.4byte	0xe9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x1
	.byte	0x30
	.4byte	0x20f
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x150
	.byte	0x1
	.4byte	0x292
	.uleb128 0x11
	.string	"blk"
	.byte	0x1
	.2byte	0x150
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x150
	.4byte	0x37
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x150
	.4byte	0xe9
	.uleb128 0x13
	.4byte	.LASF46
	.4byte	0x2a2
	.4byte	.LASF50
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x158
	.4byte	0xe9
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x159
	.4byte	0xe9
	.byte	0
	.uleb128 0x15
	.4byte	0xb6
	.4byte	0x2a2
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x292
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x177
	.4byte	0x25
	.byte	0x1
	.4byte	0x2d1
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x177
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x177
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13b
	.4byte	0xe9
	.byte	0x1
	.4byte	0x314
	.uleb128 0x11
	.string	"blk"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x13b
	.4byte	0x37
	.uleb128 0x13
	.4byte	.LASF46
	.4byte	0x324
	.4byte	.LASF51
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x144
	.4byte	0xe9
	.byte	0
	.uleb128 0x15
	.4byte	0xb6
	.4byte	0x324
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x314
	.uleb128 0x19
	.4byte	0x23b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ca
	.uleb128 0x1a
	.4byte	0x248
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	0x254
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x260
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3591
	.uleb128 0x1c
	.4byte	0x279
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	0x285
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1a
	.4byte	0x248
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x254
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	0x260
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1e
	.4byte	0x279
	.uleb128 0x1e
	.4byte	0x285
	.uleb128 0x1b
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3591
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0x13fb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x418
	.byte	0x1
	.4byte	0x418
	.uleb128 0x11
	.string	"blk"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x18a
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x25
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.byte	0x1
	.4byte	0x487
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x17d
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x17f
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x180
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x181
	.4byte	0x25
	.uleb128 0x21
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x182
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x16d
	.4byte	0x25
	.byte	0
	.uleb128 0x22
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4c
	.4byte	0xff
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x762
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4c
	.4byte	0x762
	.4byte	.LLST7
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0x4c
	.4byte	0xad
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4c
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LASF66
	.byte	0x1
	.byte	0x4c
	.4byte	0x1d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.byte	0x4e
	.4byte	0xff
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.byte	0x4f
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LASF68
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LASF69
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF46
	.4byte	0x783
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x722
	.uleb128 0x28
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x2c
	.4byte	0x3ca
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x57
	.4byte	0x5e4
	.uleb128 0x1a
	.4byte	0x3f3
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	0x3e7
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	0x3db
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.4byte	0x3ff
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	0x40b
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	.LVL17
	.4byte	0x1406
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x6ab
	.uleb128 0x2b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.byte	0x61
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	0x41f
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x61
	.4byte	0x66a
	.uleb128 0x1a
	.4byte	0x448
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	0x43c
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	0x430
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1c
	.4byte	0x454
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	0x460
	.4byte	.LLST24
	.uleb128 0x1c
	.4byte	0x46c
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x1c
	.4byte	0x479
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x2a7
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x60
	.4byte	0x690
	.uleb128 0x1a
	.4byte	0x2c4
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	0x2b8
	.4byte	.LLST28
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x487
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x5d
	.4byte	0x6ed
	.uleb128 0x1a
	.4byte	0x4b0
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	0x4a4
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	0x498
	.4byte	.LLST31
	.uleb128 0x1d
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x1c
	.4byte	0x4bc
	.4byte	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL42
	.4byte	0x1411
	.uleb128 0x1f
	.4byte	.LVL43
	.4byte	0x141c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL10
	.4byte	0x1427
	.4byte	0x736
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0x13fb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x768
	.uleb128 0x6
	.byte	0x4
	.4byte	0x76e
	.uleb128 0x7
	.4byte	0x1c5
	.uleb128 0x15
	.4byte	0xb6
	.4byte	0x783
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x773
	.uleb128 0x32
	.4byte	.LASF74
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ce
	.uleb128 0x1d
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb2
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb3
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF75
	.byte	0x1
	.byte	0xba
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x832
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd6
	.4byte	0xe9
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd7
	.4byte	0xe9
	.4byte	.LLST35
	.uleb128 0x28
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd7
	.4byte	0xe9
	.4byte	.LLST36
	.uleb128 0x28
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd7
	.4byte	0xe9
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	.LVL54
	.4byte	0x1432
	.uleb128 0x2e
	.4byte	.LVL65
	.4byte	0x788
	.byte	0
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.byte	0xf5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.4byte	.LASF80
	.byte	0x1
	.byte	0xfd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88c
	.uleb128 0x2e
	.4byte	.LVL66
	.4byte	0x1411
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0x141c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x940
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x919
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x11b
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x37
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x8ec
	.uleb128 0x36
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x11d
	.4byte	0xe9
	.4byte	.LLST39
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0x143d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL70
	.4byte	0x143d
	.4byte	0x909
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL75
	.4byte	0x1448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL68
	.4byte	0x1457
	.4byte	0x930
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0x1448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x979
	.uleb128 0x39
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x19
	.4byte	0x2d1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fa
	.uleb128 0x1a
	.4byte	0x2e2
	.4byte	.LLST41
	.uleb128 0x1a
	.4byte	0x2ee
	.4byte	.LLST42
	.uleb128 0x1b
	.4byte	0x2fa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3584
	.uleb128 0x1b
	.4byte	0x307
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x1a
	.4byte	0x2e2
	.4byte	.LLST43
	.uleb128 0x1a
	.4byte	0x2ee
	.4byte	.LLST44
	.uleb128 0x1d
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x1e
	.4byte	0x307
	.uleb128 0x1b
	.4byte	0x2fa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3584
	.uleb128 0x1f
	.4byte	.LVL82
	.4byte	0x13fb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x15f
	.4byte	0xe9
	.byte	0x1
	.4byte	0xa30
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x15f
	.4byte	0x37
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x15f
	.4byte	0x37
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x161
	.4byte	0xe9
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF90
	.byte	0x1
	.byte	0x72
	.4byte	0xff
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2d
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x1
	.byte	0x72
	.4byte	0x37
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.byte	0x72
	.4byte	0x160
	.4byte	.LLST46
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0x72
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x72
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0x72
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0x72
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF93
	.byte	0x1
	.byte	0x74
	.4byte	0xb2d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x75
	.4byte	0xe9
	.4byte	.LLST49
	.uleb128 0x2b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x76
	.4byte	0xf4
	.uleb128 0x28
	.4byte	.LASF95
	.byte	0x1
	.byte	0x78
	.4byte	0x25
	.4byte	.LLST50
	.uleb128 0x28
	.4byte	.LASF96
	.byte	0x1
	.byte	0x80
	.4byte	0x25
	.4byte	.LLST51
	.uleb128 0x2c
	.4byte	0x9fa
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x76
	.4byte	0xb16
	.uleb128 0x3c
	.4byte	0xa17
	.byte	0
	.uleb128 0x1a
	.4byte	0xa0b
	.4byte	.LLST52
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x1c
	.4byte	0xa23
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL88
	.4byte	0x2d1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
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
	.uleb128 0x3b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x8c
	.4byte	0xff
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfd
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8c
	.4byte	0x37
	.4byte	.LLST54
	.uleb128 0x25
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8c
	.4byte	0x160
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x23
	.4byte	.LASF98
	.byte	0x1
	.byte	0x8c
	.4byte	0xad
	.4byte	.LLST56
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0x8c
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x8e
	.4byte	0xe9
	.4byte	.LLST57
	.uleb128 0x30
	.4byte	0x9fa
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0x8f
	.4byte	0xbe6
	.uleb128 0x3d
	.4byte	0xa17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	0xa0b
	.4byte	.LLST58
	.uleb128 0x1d
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x1c
	.4byte	0xa23
	.4byte	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL108
	.4byte	0x2d1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xe9
	.byte	0x1
	.4byte	0xc64
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xe9
	.uleb128 0x11
	.string	"cnt"
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xc64
	.uleb128 0x13
	.4byte	.LASF46
	.4byte	0xc7a
	.4byte	.LASF99
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xe9
	.uleb128 0x21
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x15
	.4byte	0xb6
	.4byte	0xc7a
	.uleb128 0x16
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0xc6a
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.byte	0x9c
	.4byte	0xff
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe49
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9c
	.4byte	0x37
	.4byte	.LLST60
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.byte	0x9c
	.4byte	0x160
	.4byte	.LLST61
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.4byte	.LLST62
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.4byte	.LLST63
	.uleb128 0x3f
	.string	"cnt"
	.byte	0x1
	.byte	0x9c
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.byte	0x9e
	.4byte	0xff
	.4byte	.LLST64
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0x9f
	.4byte	0xe9
	.4byte	.LLST65
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa0
	.4byte	0xc64
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa1
	.4byte	0xe9
	.uleb128 0x28
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa2
	.4byte	0xe9
	.4byte	.LLST66
	.uleb128 0x30
	.4byte	0x9fa
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.byte	0xa1
	.4byte	0xd6c
	.uleb128 0x1a
	.4byte	0xa17
	.4byte	.LLST67
	.uleb128 0x1a
	.4byte	0xa0b
	.4byte	.LLST68
	.uleb128 0x1d
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x1c
	.4byte	0xa23
	.4byte	.LLST69
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0xe32
	.uleb128 0x27
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa4
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x30
	.4byte	0xbfd
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.byte	0xa4
	.4byte	0xe1b
	.uleb128 0x1a
	.4byte	0xc32
	.4byte	.LLST70
	.uleb128 0x1a
	.4byte	0xc26
	.4byte	.LLST71
	.uleb128 0x1a
	.4byte	0xc1a
	.4byte	.LLST72
	.uleb128 0x1a
	.4byte	0xc0e
	.4byte	.LLST73
	.uleb128 0x1d
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x1c
	.4byte	0xc4b
	.4byte	.LLST74
	.uleb128 0x1b
	.4byte	0xc3e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3640
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0xded
	.uleb128 0x1c
	.4byte	0xc58
	.4byte	.LLST75
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL124
	.4byte	0x13fb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ab
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3640
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL128
	.4byte	0x23b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL118
	.4byte	0x2d1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x12d
	.4byte	0xff
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf23
	.uleb128 0x39
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x12d
	.4byte	0x160
	.4byte	.LLST76
	.uleb128 0x3a
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x12d
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x12d
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.string	"err"
	.byte	0x1
	.2byte	0x12f
	.4byte	0xff
	.4byte	.LLST77
	.uleb128 0x40
	.string	"reg"
	.byte	0x1
	.2byte	0x130
	.4byte	0xe9
	.4byte	.LLST78
	.uleb128 0x31
	.4byte	.LVL135
	.4byte	0x2d1
	.4byte	0xec9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL136
	.4byte	0x1411
	.uleb128 0x31
	.4byte	.LVL137
	.4byte	0x141c
	.4byte	0xf06
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL141
	.4byte	0x23b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x18f
	.4byte	0xe9
	.byte	0x1
	.4byte	0xf95
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x18f
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x18f
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x18f
	.4byte	0xb2d
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x18f
	.4byte	0x209
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x191
	.4byte	0xe9
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x192
	.4byte	0xe9
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x193
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x19c
	.4byte	0x25
	.byte	0
	.uleb128 0x22
	.4byte	.LASF112
	.byte	0x1
	.byte	0x95
	.4byte	0xff
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1071
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x1
	.byte	0x95
	.4byte	0x37
	.4byte	.LLST79
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.byte	0x95
	.4byte	0x160
	.4byte	.LLST80
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0x95
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x95
	.4byte	0x25
	.4byte	.LLST81
	.uleb128 0x25
	.4byte	.LASF113
	.byte	0x1
	.byte	0x95
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0x95
	.4byte	0x209
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF48
	.byte	0x1
	.byte	0x97
	.4byte	0xe9
	.uleb128 0x2c
	.4byte	0xf23
	.4byte	.LBB80
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x97
	.4byte	0x1067
	.uleb128 0x3d
	.4byte	0xf58
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3d
	.4byte	0xf4c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3d
	.4byte	0xf40
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3d
	.4byte	0xf34
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x1c
	.4byte	0xf64
	.4byte	.LLST82
	.uleb128 0x1c
	.4byte	0xf70
	.4byte	.LLST83
	.uleb128 0x1c
	.4byte	0xf7c
	.4byte	.LLST84
	.uleb128 0x1c
	.4byte	0xf88
	.4byte	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL162
	.4byte	0xe49
	.byte	0
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x418
	.byte	0x1
	.4byte	0x10bf
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x10bf
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x418
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x25
	.uleb128 0x21
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1d3
	.byte	0x1
	.4byte	0x1103
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x10bf
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x25
	.uleb128 0x21
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xff
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1388
	.uleb128 0x42
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1df
	.4byte	0x1388
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x1388
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x43
	.string	"reg"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x1398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x25
	.4byte	.LLST86
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x36
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x18a
	.4byte	.LLST87
	.uleb128 0x44
	.4byte	0x1071
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x11c6
	.uleb128 0x1a
	.4byte	0x108e
	.4byte	.LLST88
	.uleb128 0x3d
	.4byte	0x1082
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.uleb128 0x1c
	.4byte	0x109a
	.4byte	.LLST89
	.uleb128 0x1c
	.4byte	0x10a6
	.4byte	.LLST90
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x118
	.uleb128 0x1c
	.4byte	0x10b1
	.4byte	.LLST91
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0x10c5
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1212
	.uleb128 0x3d
	.4byte	0x10de
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x3d
	.4byte	0x10d2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.uleb128 0x1c
	.4byte	0x10ea
	.4byte	.LLST92
	.uleb128 0x1d
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.uleb128 0x1c
	.4byte	0x10f5
	.4byte	.LLST93
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x130
	.4byte	0x12ec
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x25
	.4byte	.LLST94
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x36
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x25
	.4byte	.LLST95
	.uleb128 0x40
	.string	"err"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xff
	.4byte	.LLST96
	.uleb128 0x36
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x25
	.4byte	.LLST97
	.uleb128 0x37
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.4byte	0x12ad
	.uleb128 0x40
	.string	"n"
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x25
	.4byte	.LLST98
	.uleb128 0x2e
	.4byte	.LVL191
	.4byte	0x1411
	.uleb128 0x1f
	.4byte	.LVL192
	.4byte	0x141c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x12c9
	.uleb128 0x40
	.string	"r"
	.byte	0x1
	.2byte	0x200
	.4byte	0x25
	.4byte	.LLST99
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL197
	.4byte	0x1466
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.4byte	0x1336
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x207
	.4byte	0x10bf
	.uleb128 0x37
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.4byte	0x1321
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x208
	.4byte	0x25
	.4byte	.LLST100
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL165
	.4byte	0x1406
	.4byte	0x134a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL170
	.4byte	0x1472
	.4byte	0x136a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL171
	.4byte	0x1472
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xc8
	.4byte	0x1398
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	0xe9
	.4byte	0x13a8
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x45
	.string	"TAG"
	.byte	0x1
	.byte	0x18
	.4byte	0x13ba
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC17
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x15
	.4byte	0x230
	.4byte	0x13cf
	.uleb128 0x16
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.byte	0x33
	.4byte	0x13e0
	.uleb128 0x5
	.byte	0x3
	.4byte	range_read_addr_blocks
	.uleb128 0x7
	.4byte	0x13bf
	.uleb128 0x27
	.4byte	.LASF123
	.byte	0x1
	.byte	0x3b
	.4byte	0x13f6
	.uleb128 0x5
	.byte	0x3
	.4byte	range_write_addr_blocks
	.uleb128 0x7
	.4byte	0x13bf
	.uleb128 0x46
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x9
	.byte	0x29
	.uleb128 0x46
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x7
	.byte	0xc9
	.uleb128 0x46
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x6
	.byte	0x57
	.uleb128 0x46
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x6
	.byte	0x6b
	.uleb128 0x46
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.byte	0xa3
	.uleb128 0x46
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xa
	.byte	0x40
	.uleb128 0x46
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xb
	.byte	0xb2
	.uleb128 0x47
	.4byte	.LASF131
	.4byte	.LASF133
	.byte	0xc
	.byte	0
	.4byte	.LASF131
	.uleb128 0x47
	.4byte	.LASF132
	.4byte	.LASF134
	.byte	0xc
	.byte	0
	.4byte	.LASF132
	.uleb128 0x48
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x12e
	.uleb128 0x49
	.4byte	.LASF140
	.4byte	.LASF140
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	range_write_addr_blocks
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	range_write_addr_blocks
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE13
	.2byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	range_write_addr_blocks
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xa
	.2byte	0x1604
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL46
	.4byte	.LVL47
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
.LLST22:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
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
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x9
	.byte	0x7b
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
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
.LLST31:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x7b
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
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
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL21
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
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
.LLST34:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL86
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL100
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL105
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL107
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL107
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL114
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL116
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL116
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL116
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL117
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL118
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL122
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL122
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL124
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL133
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xa
	.2byte	0x1603
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL135
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL162-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL143
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL153
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL144
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL154
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL155
	.4byte	.LVL157
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
	.4byte	.LVL157
	.4byte	.LVL159
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
.LLST84:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL156
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL154
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL204
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL177
	.4byte	.LVL186
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL189
	.4byte	.LVL195
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL197-1
	.4byte	.LVL211
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL213
	.4byte	.LFE23
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL173
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL188
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL191-1
	.4byte	.LVL193
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x73
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x3
	.byte	0x73
	.sleb128 -5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL213
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
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	0
	.4byte	0
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	0
	.4byte	0
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB114
	.4byte	.LBE114
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
.LASF125:
	.string	"esp_efuse_get_coding_scheme"
.LASF107:
	.string	"fill_reg"
.LASF54:
	.string	"offset_in_bits"
.LASF74:
	.string	"esp_efuse_utility_reset"
.LASF124:
	.string	"__assert_func"
.LASF83:
	.string	"esp_efuse_utility_process"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"get_count_bits_in_reg"
.LASF37:
	.string	"esp_efuse_coding_scheme_t"
.LASF8:
	.string	"__int32_t"
.LASF100:
	.string	"bit_start_in_reg"
.LASF49:
	.string	"i_reg"
.LASF126:
	.string	"esp_log_timestamp"
.LASF51:
	.string	"esp_efuse_utility_read_reg"
.LASF135:
	.string	"esp_efuse_apply_34_encoding"
.LASF98:
	.string	"out_cnt"
.LASF72:
	.string	"num_block"
.LASF137:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_utility.c"
.LASF55:
	.string	"size_bits"
.LASF61:
	.string	"last_used_bit"
.LASF96:
	.string	"sum_shift"
.LASF52:
	.string	"get_starting_bit_num_in_reg"
.LASF66:
	.string	"func_proc"
.LASF20:
	.string	"uint32_t"
.LASF97:
	.string	"esp_efuse_utility_count_once"
.LASF79:
	.string	"dac_clk_div"
.LASF88:
	.string	"shift"
.LASF67:
	.string	"bits_counter"
.LASF64:
	.string	"field"
.LASF35:
	.string	"EFUSE_CODING_SCHEME_3_4"
.LASF12:
	.string	"long long unsigned int"
.LASF112:
	.string	"esp_efuse_utility_write_blob"
.LASF43:
	.string	"esp_efuse_range_addr_t"
.LASF7:
	.string	"__uint16_t"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF119:
	.string	"esp_efuse_utility_apply_new_coding_scheme"
.LASF65:
	.string	"ptr_size_bits"
.LASF45:
	.string	"value"
.LASF62:
	.string	"num_bit"
.LASF136:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"reg_masked"
.LASF94:
	.string	"reg_of_aligned_bits"
.LASF132:
	.string	"puts"
.LASF103:
	.string	"esp_efuse_utility_write_cnt"
.LASF3:
	.string	"size_t"
.LASF93:
	.string	"blob"
.LASF58:
	.string	"_Bool"
.LASF120:
	.string	"st_offset_buf"
.LASF87:
	.string	"get_mask"
.LASF105:
	.string	"reg_masked_bits"
.LASF11:
	.string	"__uint64_t"
.LASF44:
	.string	"num_reg"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"bit_start"
.LASF95:
	.string	"shift_bit"
.LASF34:
	.string	"EFUSE_CODING_SCHEME_NONE"
.LASF16:
	.string	"char"
.LASF133:
	.string	"__builtin_putchar"
.LASF71:
	.string	"num_bits"
.LASF109:
	.string	"filled_bits_blob"
.LASF17:
	.string	"uint8_t"
.LASF134:
	.string	"__builtin_puts"
.LASF92:
	.string	"arr_out"
.LASF73:
	.string	"addr_wr_block"
.LASF111:
	.string	"shift_reg"
.LASF85:
	.string	"bits"
.LASF10:
	.string	"long long int"
.LASF90:
	.string	"esp_efuse_utility_fill_buff"
.LASF130:
	.string	"printf"
.LASF116:
	.string	"blk_is_filled"
.LASF91:
	.string	"efuse_block"
.LASF70:
	.string	"start_bit"
.LASF81:
	.string	"esp_efuse_utility_debug_dump_blocks"
.LASF48:
	.string	"reg_to_write"
.LASF140:
	.string	"memset"
.LASF33:
	.string	"esp_efuse_block_t"
.LASF104:
	.string	"set_bits"
.LASF69:
	.string	"req_size"
.LASF99:
	.string	"set_cnt_in_reg"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"bit_count_used_in_reg"
.LASF89:
	.string	"mask"
.LASF127:
	.string	"esp_log_write"
.LASF80:
	.string	"esp_efuse_utility_update_virt_blocks"
.LASF36:
	.string	"EFUSE_CODING_SCHEME_REPEAT"
.LASF18:
	.string	"uint16_t"
.LASF76:
	.string	"apb_freq_mhz"
.LASF129:
	.string	"esp_clk_apb_freq"
.LASF106:
	.string	"esp_efuse_utility_write_reg"
.LASF6:
	.string	"short int"
.LASF68:
	.string	"field_len"
.LASF13:
	.string	"long int"
.LASF57:
	.string	"max_num_bit"
.LASF122:
	.string	"range_read_addr_blocks"
.LASF63:
	.string	"get_reg_num"
.LASF123:
	.string	"range_write_addr_blocks"
.LASF21:
	.string	"uint64_t"
.LASF128:
	.string	"esp_efuse_get_field_size"
.LASF138:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/efuse"
.LASF40:
	.string	"esp_efuse_desc_t"
.LASF4:
	.string	"__uint8_t"
.LASF114:
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
.LASF82:
	.string	"addr_rd_block"
.LASF77:
	.string	"clk_sel0"
.LASF78:
	.string	"clk_sel1"
.LASF19:
	.string	"int32_t"
.LASF110:
	.string	"temp_blob_32"
.LASF47:
	.string	"addr_wr_reg"
.LASF118:
	.string	"buf_r_data"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF60:
	.string	"ret_count"
.LASF22:
	.string	"esp_err_t"
.LASF84:
	.string	"esp_efuse_utility_get_number_of_items"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF50:
	.string	"write_reg"
.LASF115:
	.string	"buf_w_data"
.LASF131:
	.string	"putchar"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"efuse_func_proc_t"
.LASF46:
	.string	"__func__"
.LASF56:
	.string	"scheme"
.LASF86:
	.string	"size_of_base"
.LASF121:
	.string	"buf_32"
.LASF108:
	.string	"bit_count_in_reg"
.LASF139:
	.string	"esp_efuse_utility_erase_virt_blocks"
.LASF75:
	.string	"esp_efuse_utility_burn_efuses"
.LASF117:
	.string	"read_r_data"
.LASF113:
	.string	"arr_in"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF53:
	.string	"check_range_of_bits"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
