	.file	"spi_flash_rom_patch.c"
	.text
.Ltext0:
	.section	.text.esp_rom_spiflash_read_status,"ax",@progbits
	.literal_position
	.literal .LC0, g_rom_spiflash_dummy_len_plus
	.literal .LC1, 1072963600
	.literal .LC2, 1072963584
	.literal .LC3, 134217728
	.align	4
	.global	esp_rom_spiflash_read_status
	.type	esp_rom_spiflash_read_status, @function
esp_rom_spiflash_read_status:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/spi_flash_rom_patch.c"
	.loc 1 248 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 249 0
	movi.n	a8, 1
	s32i.n	a8, sp, 0
	.loc 1 251 0
	l32r	a8, .LC0
	l8ui	a8, a8, 1
	bnez.n	a8, .L3
	.loc 1 253 0
	l32r	a10, .LC1
	.loc 1 254 0
	l32r	a11, .LC2
	l32r	a12, .LC3
	j	.L2
.L5:
	.loc 1 253 0
	memw
	s32i.n	a8, a10, 0
	.loc 1 254 0
	memw
	s32i.n	a12, a11, 0
.L4:
	.loc 1 255 0 discriminator 1
	memw
	l32i.n	a9, a11, 0
	bnez.n	a9, .L4
	.loc 1 257 0
	memw
	l32i.n	a9, a10, 0
	l32i.n	a13, a2, 20
	and	a9, a13, a9
	s32i.n	a9, sp, 0
.L2:
	.loc 1 252 0
	l32i.n	a9, sp, 0
	bbsi	a9, 0, .L5
	j	.L7
.L6:
	.loc 1 261 0
	movi.n	a11, 5
	mov.n	a10, sp
	call8	esp_rom_spiflash_read_user_cmd
.LVL1:
.L3:
	.loc 1 260 0
	l32i.n	a8, sp, 0
	bbsi	a8, 0, .L6
.L7:
	.loc 1 264 0
	l32i.n	a8, sp, 0
	.loc 1 267 0
	movi.n	a2, 0
.LVL2:
	.loc 1 264 0
	s32i.n	a8, a3, 0
	.loc 1 267 0
	retw.n
.LFE7:
	.size	esp_rom_spiflash_read_status, .-esp_rom_spiflash_read_status
	.section	.text.esp_rom_spiflash_wait_idle,"ax",@progbits
	.literal_position
	.literal .LC4, 1072963832
	.literal .LC5, 1072967928
	.align	4
	.global	esp_rom_spiflash_wait_idle
	.type	esp_rom_spiflash_wait_idle, @function
esp_rom_spiflash_wait_idle:
.LFB0:
	.loc 1 26 0
.LVL3:
	entry	sp, 48
.LCFI1:
	.loc 1 30 0
	l32r	a8, .LC4
.L12:
	.loc 1 30 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a3, a8, 0
	extui	a3, a3, 0, 3
	bnez.n	a3, .L12
	.loc 1 32 0 is_stmt 1
	l32r	a8, .LC5
.L13:
	.loc 1 32 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a3, a8, 0
	extui	a3, a3, 0, 3
	bnez.n	a3, .L13
	.loc 1 35 0 is_stmt 1
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_rom_spiflash_read_status
.LVL4:
	.loc 1 39 0
	movi.n	a2, 1
.LVL5:
	moveqz	a2, a3, a10
	retw.n
.LFE0:
	.size	esp_rom_spiflash_wait_idle, .-esp_rom_spiflash_wait_idle
	.section	.text.esp_rom_spiflash_enable_write$constprop$6,"ax",@progbits
	.literal_position
	.literal .LC6, g_rom_spiflash_chip
	.literal .LC7, 1072963584
	.literal .LC8, 1073741824
	.align	4
	.type	esp_rom_spiflash_enable_write$constprop$6, @function
esp_rom_spiflash_enable_write$constprop$6:
.LFB27:
	.loc 1 291 0
	entry	sp, 48
.LCFI2:
.LVL6:
	.loc 1 293 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	.loc 1 295 0
	l32r	a2, .LC6
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL7:
	.loc 1 298 0
	l32r	a8, .LC7
	l32r	a3, .LC8
	memw
	s32i.n	a3, a8, 0
.L17:
	.loc 1 299 0
	memw
	l32i.n	a3, a8, 0
	bnez.n	a3, .L17
	.loc 1 302 0
	movi.n	a3, 2
	j	.L18
.L19:
	.loc 1 303 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_rom_spiflash_read_status
.LVL8:
.L18:
	.loc 1 302 0
	l32i.n	a8, sp, 0
	bnone	a3, a8, .L19
	.loc 1 307 0
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	esp_rom_spiflash_enable_write$constprop$6, .-esp_rom_spiflash_enable_write$constprop$6
	.section	.text.esp_rom_spiflash_program_page_internal$constprop$4,"ax",@progbits
	.literal_position
	.literal .LC11, 1072963712
	.literal .LC12, g_rom_spiflash_chip
	.literal .LC13, 16777215
	.literal .LC14, 536870912
	.literal .LC15, 1072963588
	.literal .LC17, 1072963584
	.literal .LC18, 33554432
	.align	4
	.type	esp_rom_spiflash_program_page_internal$constprop$4, @function
esp_rom_spiflash_program_page_internal$constprop$4:
.LFB29:
	.loc 1 142 0
.LVL9:
	entry	sp, 32
.LCFI3:
.LVL10:
	.loc 1 151 0
	extui	a5, a4, 0, 2
	beqz.n	a5, .L22
.LVL11:
.L24:
	.loc 1 152 0
	movi.n	a2, 1
	retw.n
.LVL12:
.L22:
	.loc 1 156 0
	l32r	a5, .LC12
	l32i.n	a8, a5, 16
	remu	a6, a2, a8
	add.n	a6, a6, a4
	bltu	a8, a6, .L24
.LVL13:
.LBB4:
.LBB5:
	.loc 1 160 0
	mov.n	a10, a5
	call8	esp_rom_spiflash_wait_idle
.LVL14:
	.loc 1 169 0
	movi.n	a6, 0x1f
	j	.L25
.LVL15:
.L34:
	.loc 1 166 0
	call8	esp_rom_spiflash_enable_write$constprop$6
.LVL16:
	bnez.n	a10, .L24
	l32r	a8, .LC13
	l32r	a10, .LC15
	.loc 1 170 0
	and	a8, a2, a8
	.loc 1 169 0
	bge	a6, a4, .L26
	.loc 1 170 0
	l32r	a9, .LC14
	or	a8, a8, a9
	l32r	a9, .LC11
	memw
	s32i.n	a8, a10, 0
.LVL17:
	mov.n	a10, a3
	.loc 1 172 0
	movi.n	a8, 8
	loop	a8, .L27_LEND
.LVL18:
.L27:
	.loc 1 173 0
	l32i.n	a11, a10, 0
	addi.n	a10, a10, 4
	memw
	s32i.n	a11, a9, 0
	addi.n	a9, a9, 4
	.loc 1 172 0
	.L27_LEND:
	addi	a3, a3, 32
	.loc 1 175 0
	addi	a4, a4, -32
.LVL19:
	.loc 1 176 0
	addi	a2, a2, 32
.LVL20:
	j	.L28
.LVL21:
.L26:
	.loc 1 178 0
	slli	a9, a4, 24
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	.loc 1 180 0
	extui	a10, a4, 0, 2
	srai	a4, a4, 2
.LVL22:
	addi.n	a8, a4, 1
	extui	a9, a8, 0, 8
	extui	a4, a4, 0, 8
	mov.n	a8, a9
	mov.n	a9, a4
	movnez	a9, a8, a10
.LVL23:
	l32r	a8, .LC11
	mov.n	a4, a3
	sub	a8, a8, a4
	addx4	a3, a9, a3
.LVL24:
	j	.L31
.LVL25:
.L32:
	.loc 1 182 0
	l32i.n	a10, a4, 0
	add.n	a9, a8, a4
.LVL26:
	memw
	s32i.n	a10, a9, 0
	addi.n	a4, a4, 4
.LVL27:
.L31:
	.loc 1 181 0
	bne	a3, a4, .L32
	.loc 1 185 0
	movi.n	a4, 0
.LVL28:
.L28:
	.loc 1 188 0
	l32r	a8, .LC17
	l32r	a9, .LC18
	memw
	s32i.n	a9, a8, 0
.L33:
	.loc 1 189 0
	memw
	l32i.n	a9, a8, 0
	bnez.n	a9, .L33
	.loc 1 191 0
	mov.n	a10, a5
	call8	esp_rom_spiflash_wait_idle
.LVL29:
.L25:
	.loc 1 165 0
	bgei	a4, 1, .L34
	.loc 1 194 0
	movi.n	a2, 0
.LVL30:
.LBE5:
.LBE4:
	.loc 1 195 0
	retw.n
.LFE29:
	.size	esp_rom_spiflash_program_page_internal$constprop$4, .-esp_rom_spiflash_program_page_internal$constprop$4
	.section	.text.esp_rom_spiflash_read_statushigh,"ax",@progbits
	.literal_position
	.literal .LC19, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_read_statushigh
	.type	esp_rom_spiflash_read_statushigh, @function
esp_rom_spiflash_read_statushigh:
.LFB8:
	.loc 1 270 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 272 0
	l32r	a10, .LC19
	call8	esp_rom_spiflash_wait_idle
.LVL32:
	.loc 1 273 0
	movi.n	a11, 0x35
	mov.n	a10, a3
	call8	esp_rom_spiflash_read_user_cmd
.LVL33:
	.loc 1 274 0
	l32i.n	a8, a3, 0
	.loc 1 276 0
	mov.n	a2, a10
.LVL34:
	.loc 1 274 0
	slli	a8, a8, 8
	s32i.n	a8, a3, 0
	.loc 1 276 0
	retw.n
.LFE8:
	.size	esp_rom_spiflash_read_statushigh, .-esp_rom_spiflash_read_statushigh
	.section	.text.esp_rom_spiflash_write_status,"ax",@progbits
	.literal_position
	.literal .LC20, 1072963600
	.literal .LC21, 1072963584
	.literal .LC22, 67108864
	.align	4
	.global	esp_rom_spiflash_write_status
	.type	esp_rom_spiflash_write_status, @function
esp_rom_spiflash_write_status:
.LFB9:
	.loc 1 279 0
.LVL35:
	entry	sp, 32
.LCFI5:
	.loc 1 280 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL36:
	.loc 1 279 0
	mov.n	a4, a2
	.loc 1 283 0
	l32r	a2, .LC20
.LVL37:
	.loc 1 284 0
	l32r	a8, .LC21
	.loc 1 283 0
	memw
	s32i.n	a3, a2, 0
	.loc 1 284 0
	l32r	a2, .LC22
	memw
	s32i.n	a2, a8, 0
.L39:
	.loc 1 285 0 discriminator 1
	memw
	l32i.n	a2, a8, 0
	bnez.n	a2, .L39
	.loc 1 286 0
	mov.n	a10, a4
	call8	esp_rom_spiflash_wait_idle
.LVL38:
	.loc 1 289 0
	retw.n
.LFE9:
	.size	esp_rom_spiflash_write_status, .-esp_rom_spiflash_write_status
	.section	.text.esp_rom_spiflash_unlock,"ax",@progbits
	.literal_position
	.literal .LC23, g_rom_spiflash_chip
	.literal .LC24, 1072963584
	.literal .LC25, 1073741824
	.literal .LC26, 1072963592
	.literal .LC27, 4194304
	.align	4
	.global	esp_rom_spiflash_unlock
	.type	esp_rom_spiflash_unlock, @function
esp_rom_spiflash_unlock:
.LFB1:
	.loc 1 55 0
	entry	sp, 48
.LCFI6:
	.loc 1 58 0
	l32r	a2, .LC23
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL39:
	.loc 1 60 0
	mov.n	a10, a2
	mov.n	a11, sp
	call8	esp_rom_spiflash_read_statushigh
.LVL40:
	mov.n	a3, a2
	.loc 1 61 0
	movi.n	a2, 1
	.loc 1 60 0
	bnez.n	a10, .L42
	.loc 1 67 0
	l32i.n	a4, sp, 0
	movi	a2, 0x200
	and	a2, a4, a2
	.loc 1 69 0
	mov.n	a10, a3
	.loc 1 67 0
	s32i.n	a2, sp, 0
	.loc 1 69 0
	call8	esp_rom_spiflash_wait_idle
.LVL41:
	.loc 1 70 0
	l32r	a2, .LC24
	l32r	a4, .LC25
	memw
	s32i.n	a4, a2, 0
.L43:
	.loc 1 71 0 discriminator 1
	memw
	l32i.n	a4, a2, 0
	bnez.n	a4, .L43
	.loc 1 73 0
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL42:
	.loc 1 75 0
	l32r	a2, .LC26
	l32r	a8, .LC27
	memw
	l32i.n	a9, a2, 0
	.loc 1 76 0
	mov.n	a10, a3
	.loc 1 75 0
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	.loc 1 76 0
	l32i.n	a11, sp, 0
	.loc 1 61 0
	movi.n	a2, 1
	.loc 1 76 0
	call8	esp_rom_spiflash_write_status
.LVL43:
	.loc 1 61 0
	moveqz	a2, a4, a10
.L42:
	.loc 1 81 0
	retw.n
.LFE1:
	.size	esp_rom_spiflash_unlock, .-esp_rom_spiflash_unlock
	.section	.text.esp_rom_spiflash_lock,"ax",@progbits
	.literal_position
	.literal .LC28, g_rom_spiflash_chip
	.literal .LC29, 1072963592
	.literal .LC30, 4194304
	.align	4
	.global	esp_rom_spiflash_lock
	.type	esp_rom_spiflash_lock, @function
esp_rom_spiflash_lock:
.LFB12:
	.loc 1 351 0
	entry	sp, 48
.LCFI7:
	.loc 1 355 0
	l32r	a4, .LC28
	mov.n	a11, sp
	mov.n	a10, a4
	call8	esp_rom_spiflash_read_statushigh
.LVL44:
	beqz.n	a10, .L47
.L49:
	.loc 1 356 0
	movi.n	a2, 1
	retw.n
.L47:
	.loc 1 359 0
	l32r	a3, .LC29
	l32r	a2, .LC30
	memw
	l32i.n	a8, a3, 0
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 361 0
	call8	esp_rom_spiflash_enable_write$constprop$6
.LVL45:
	mov.n	a3, a10
	bnez.n	a10, .L49
	.loc 1 365 0
	l32i.n	a2, sp, 0
	movi.n	a11, 0x1c
	or	a11, a11, a2
	mov.n	a10, a4
	call8	esp_rom_spiflash_write_status
.LVL46:
	.loc 1 356 0
	movi.n	a2, 1
	moveqz	a2, a3, a10
	.loc 1 370 0
	retw.n
.LFE12:
	.size	esp_rom_spiflash_lock, .-esp_rom_spiflash_lock
	.section	.text.esp_rom_spiflash_config_readmode,"ax",@progbits
	.literal_position
	.literal .LC31, 1072963832
	.literal .LC32, 1072967928
	.literal .LC33, 1072963592
	.literal .LC34, -26238977
	.literal .LC35, 1072967688
	.literal .LC36, CSWTCH$38
	.literal .LC37, 16785408
	.literal .LC38, 1072967708
	.literal .LC39, -134217729
	.literal .LC40, 1879048192
	.literal .LC41, 1072967712
	.literal .LC42, 67108863
	.literal .LC43, 2080374784
	.literal .LC44, g_rom_spiflash_dummy_len_plus
	.literal .LC45, 1072967716
	.literal .LC46, -65536
	.literal .LC48, 1543503872
	.literal .LC51, 1811939328
	.literal .LC53, -536870913
	.literal .LC54, 536870912
	.literal .LC55, 1342177280
	.align	4
	.global	esp_rom_spiflash_config_readmode
	.type	esp_rom_spiflash_config_readmode, @function
esp_rom_spiflash_config_readmode:
.LFB13:
	.loc 1 374 0
.LVL47:
	entry	sp, 32
.LCFI8:
	.loc 1 377 0
	l32r	a9, .LC31
.L51:
	.loc 1 377 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a8, a9, 0
	extui	a8, a8, 0, 3
	bnez.n	a8, .L51
	.loc 1 379 0 is_stmt 1
	l32r	a8, .LC32
.L52:
	.loc 1 379 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	extui	a9, a9, 0, 3
	bnez.n	a9, .L52
	.loc 1 382 0 is_stmt 1
	l32r	a8, .LC33
	l32r	a10, .LC34
	memw
	l32i.n	a11, a8, 0
	and	a11, a11, a10
	memw
	s32i.n	a11, a8, 0
	.loc 1 383 0
	l32r	a11, .LC35
	memw
	l32i.n	a12, a11, 0
	and	a10, a12, a10
	memw
	s32i.n	a10, a11, 0
	bgeui	a2, 6, .L53
	l32r	a9, .LC36
	addx4	a2, a2, a9
.LVL48:
	l32i.n	a9, a2, 0
.L53:
.LVL49:
	.loc 1 395 0
	memw
	l32i.n	a2, a8, 0
.LBB8:
.LBB9:
	.loc 1 311 0
	l32r	a11, .LC37
.LBE9:
.LBE8:
	.loc 1 395 0
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 396 0
	l32r	a8, .LC35
.LBB12:
.LBB10:
	.loc 1 311 0
	and	a12, a9, a11
.LBE10:
.LBE12:
	.loc 1 396 0
	memw
	l32i.n	a2, a8, 0
	l32r	a10, .LC39
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LVL50:
	l32r	a8, .LC38
	l32r	a2, .LC44
.LBB13:
.LBB11:
	.loc 1 311 0
	bne	a12, a11, .L54
	.loc 1 312 0
	memw
	l32i.n	a9, a8, 0
.LVL51:
	.loc 1 314 0
	l32r	a11, .LC41
	.loc 1 312 0
	and	a10, a9, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 313 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC40
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 314 0
	memw
	l32i.n	a9, a11, 0
	l32r	a8, .LC42
	and	a9, a9, a8
	l32r	a8, .LC43
	or	a8, a9, a8
	memw
	s32i.n	a8, a11, 0
	.loc 1 315 0
	l8ui	a10, a2, 0
	memw
	l32i.n	a8, a11, 0
	movi	a9, -0x100
	addi.n	a10, a10, 3
	and	a8, a8, a9
	extui	a10, a10, 0, 8
	or	a8, a10, a8
	.loc 1 316 0
	l32r	a9, .LC45
	.loc 1 315 0
	memw
	s32i.n	a8, a11, 0
	.loc 1 316 0
	l32r	a2, .LC46
	memw
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	movi	a2, 0xeb
	j	.L65
.LVL52:
.L54:
	.loc 1 317 0
	bbci	a9, 13, .L56
	.loc 1 318 0
	memw
	l32i.n	a11, a8, 0
	and	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 319 0
	memw
	l32i.n	a11, a8, 0
	l32r	a10, .LC40
	or	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 320 0
	l32r	a8, .LC41
	l32r	a10, .LC42
	memw
	l32i.n	a11, a8, 0
	and	a12, a11, a10
	l32r	a11, .LC48
	or	a11, a12, a11
	memw
	s32i.n	a11, a8, 0
	.loc 1 321 0
	bbci	a9, 20, .L57
	.loc 1 322 0
	l32r	a11, .LC45
	l32r	a9, .LC46
.LVL53:
	memw
	l32i.n	a10, a11, 0
	and	a10, a10, a9
	movi	a9, 0x6b
	or	a9, a10, a9
	memw
	s32i.n	a9, a11, 0
	.loc 1 323 0
	l8ui	a11, a2, 0
	memw
	l32i.n	a9, a8, 0
	addi.n	a11, a11, 7
	movi	a10, -0x100
	extui	a11, a11, 0, 8
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	j	.L55
.LVL54:
.L57:
	.loc 1 324 0
	bbci	a9, 23, .L58
	.loc 1 325 0
	memw
	l32i.n	a9, a8, 0
.LVL55:
	and	a10, a9, a10
	l32r	a9, .LC51
	or	a10, a10, a9
	memw
	s32i.n	a10, a8, 0
	.loc 1 326 0
	l8ui	a11, a2, 0
	memw
	l32i.n	a9, a8, 0
	addi.n	a11, a11, 1
	movi	a10, -0x100
	extui	a11, a11, 0, 8
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 327 0
	l32r	a9, .LC45
	l32r	a2, .LC46
	memw
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	movi	a2, 0xbb
	j	.L65
.LVL56:
.L58:
	.loc 1 328 0
	bbci	a9, 14, .L59
	.loc 1 329 0
	l8ui	a11, a2, 0
	memw
	l32i.n	a9, a8, 0
.LVL57:
	addi.n	a11, a11, 7
	movi	a10, -0x100
	extui	a11, a11, 0, 8
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 330 0
	l32r	a9, .LC45
	l32r	a2, .LC46
	memw
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	movi.n	a2, 0x3b
	j	.L65
.LVL58:
.L59:
	.loc 1 332 0
	l8ui	a11, a2, 0
	memw
	l32i.n	a9, a8, 0
.LVL59:
	addi.n	a11, a11, 7
	movi	a10, -0x100
	extui	a11, a11, 0, 8
	and	a9, a9, a10
	or	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 333 0
	l32r	a9, .LC45
	l32r	a2, .LC46
	memw
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	movi.n	a2, 0xb
	j	.L65
.LVL60:
.L56:
	.loc 1 336 0
	memw
	l32i.n	a9, a8, 0
.LVL61:
	and	a10, a9, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 337 0
	l8ui	a9, a2, 0
	bnez.n	a9, .L60
	.loc 1 338 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC53
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	j	.L61
.L60:
	.loc 1 340 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC54
	.loc 1 341 0
	l32r	a11, .LC41
	.loc 1 340 0
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 341 0
	l8ui	a10, a2, 0
	memw
	l32i.n	a8, a11, 0
	addi.n	a10, a10, -1
	movi	a9, -0x100
	extui	a10, a10, 0, 8
	and	a8, a8, a9
	or	a8, a10, a8
	memw
	s32i.n	a8, a11, 0
.L61:
	.loc 1 343 0
	l32r	a8, .LC38
	l32r	a2, .LC55
	memw
	l32i.n	a9, a8, 0
	or	a2, a9, a2
	.loc 1 344 0
	l32r	a9, .LC41
	.loc 1 343 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 344 0
	memw
	l32i.n	a8, a9, 0
	l32r	a2, .LC42
	and	a8, a8, a2
	l32r	a2, .LC48
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	.loc 1 345 0
	l32r	a9, .LC45
	l32r	a2, .LC46
	memw
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	movi.n	a2, 3
.L65:
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.L55:
.LBE11:
.LBE13:
	.loc 1 400 0
	movi.n	a2, 0
	retw.n
.LFE13:
	.size	esp_rom_spiflash_config_readmode, .-esp_rom_spiflash_config_readmode
	.section	.text.esp_rom_spiflash_erase_chip,"ax",@progbits
	.literal_position
	.literal .LC56, g_rom_spiflash_chip
	.literal .LC57, 1072963584
	.literal .LC58, 4194304
	.align	4
	.global	esp_rom_spiflash_erase_chip
	.type	esp_rom_spiflash_erase_chip, @function
esp_rom_spiflash_erase_chip:
.LFB14:
	.loc 1 403 0
	entry	sp, 32
.LCFI9:
	.loc 1 404 0
	call8	esp_rom_spiflash_enable_write$constprop$6
.LVL62:
	mov.n	a2, a10
	bnez.n	a10, .L69
.LVL63:
.LBB16:
.LBB17:
	.loc 1 94 0
	l32r	a3, .LC56
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL64:
	.loc 1 97 0
	l32r	a8, .LC57
	l32r	a9, .LC58
	mov.n	a10, a3
	memw
	s32i.n	a9, a8, 0
.L68:
	.loc 1 98 0
	memw
	l32i.n	a3, a8, 0
	bnez.n	a3, .L68
	.loc 1 101 0
	call8	esp_rom_spiflash_wait_idle
.LVL65:
.LBE17:
.LBE16:
	.loc 1 412 0
	retw.n
.LVL66:
.L69:
	.loc 1 405 0
	movi.n	a2, 1
	.loc 1 413 0
	retw.n
.LFE14:
	.size	esp_rom_spiflash_erase_chip, .-esp_rom_spiflash_erase_chip
	.section	.text.esp_rom_spiflash_erase_block,"ax",@progbits
	.literal_position
	.literal .LC59, 1072963612
	.literal .LC60, -536870913
	.literal .LC61, 1072963616
	.literal .LC62, 67108863
	.literal .LC63, 1543503872
	.literal .LC64, g_rom_spiflash_chip
	.literal .LC65, 16777215
	.literal .LC66, 1072963588
	.literal .LC67, 1072963584
	.literal .LC68, 8388608
	.align	4
	.global	esp_rom_spiflash_erase_block
	.type	esp_rom_spiflash_erase_block, @function
esp_rom_spiflash_erase_block:
.LFB15:
	.loc 1 416 0
.LVL67:
	entry	sp, 32
.LCFI10:
	.loc 1 418 0
	l32r	a4, .LC59
	l32r	a3, .LC60
	memw
	l32i.n	a8, a4, 0
	and	a3, a8, a3
	.loc 1 419 0
	l32r	a8, .LC61
	.loc 1 418 0
	memw
	s32i.n	a3, a4, 0
	.loc 1 419 0
	memw
	l32i.n	a4, a8, 0
	l32r	a3, .LC62
	and	a4, a4, a3
	l32r	a3, .LC63
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 422 0
	l32r	a3, .LC64
	l32i.n	a4, a3, 4
	l32i.n	a8, a3, 8
	quou	a4, a4, a8
	bltu	a2, a4, .L72
.L74:
	.loc 1 423 0
	movi.n	a4, 1
	j	.L73
.L72:
	.loc 1 426 0
	call8	esp_rom_spiflash_enable_write$constprop$6
.LVL68:
	mov.n	a4, a10
	bnez.n	a10, .L74
.LVL69:
.LBB22:
.LBB23:
	.loc 1 430 0
	l32i.n	a8, a3, 8
.LBB24:
.LBB25:
	.loc 1 129 0
	mov.n	a10, a3
.LBE25:
.LBE24:
	.loc 1 430 0
	mull	a2, a2, a8
.LVL70:
.LBB27:
.LBB26:
	.loc 1 129 0
	call8	esp_rom_spiflash_wait_idle
.LVL71:
	.loc 1 132 0
	l32r	a8, .LC65
	and	a2, a2, a8
.LVL72:
	l32r	a8, .LC66
	memw
	s32i.n	a2, a8, 0
	.loc 1 133 0
	l32r	a8, .LC67
	l32r	a2, .LC68
	memw
	s32i.n	a2, a8, 0
.L75:
	.loc 1 134 0
	memw
	l32i.n	a2, a8, 0
	bnez.n	a2, .L75
	.loc 1 136 0
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL73:
.L73:
.LBE26:
.LBE27:
.LBE23:
.LBE22:
	.loc 1 434 0
	mov.n	a2, a4
	retw.n
.LFE15:
	.size	esp_rom_spiflash_erase_block, .-esp_rom_spiflash_erase_block
	.section	.text.esp_rom_spiflash_erase_sector,"ax",@progbits
	.literal_position
	.literal .LC69, 1072963612
	.literal .LC70, -536870913
	.literal .LC71, 1072963616
	.literal .LC72, 67108863
	.literal .LC73, 1543503872
	.literal .LC74, g_rom_spiflash_chip
	.literal .LC75, 16777215
	.literal .LC76, 1072963588
	.literal .LC77, 1072963584
	.literal .LC78, 16777216
	.align	4
	.global	esp_rom_spiflash_erase_sector
	.type	esp_rom_spiflash_erase_sector, @function
esp_rom_spiflash_erase_sector:
.LFB16:
	.loc 1 437 0
.LVL74:
	entry	sp, 32
.LCFI11:
	.loc 1 439 0
	l32r	a4, .LC69
	l32r	a3, .LC70
	memw
	l32i.n	a5, a4, 0
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 440 0
	l32r	a4, .LC71
	l32r	a3, .LC72
	memw
	l32i.n	a5, a4, 0
	and	a5, a5, a3
	l32r	a3, .LC73
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 443 0
	l32r	a3, .LC74
	l32i.n	a5, a3, 4
	l32i.n	a4, a3, 12
	quou	a5, a5, a4
	bltu	a2, a5, .L78
.LVL75:
.L80:
	.loc 1 444 0
	movi.n	a5, 1
	j	.L79
.LVL76:
.L78:
	.loc 1 447 0
	call8	esp_rom_spiflash_enable_write$constprop$6
.LVL77:
	mov.n	a5, a10
	bnez.n	a10, .L80
.LVL78:
.LBB32:
.LBB33:
	.loc 1 451 0
	l32i.n	a4, a3, 12
	mull	a4, a2, a4
.LVL79:
.LBB34:
.LBB35:
	.loc 1 110 0
	extui	a2, a4, 0, 12
.LVL80:
	bnez.n	a2, .L80
	.loc 1 114 0
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL81:
	.loc 1 117 0
	l32r	a2, .LC75
	.loc 1 118 0
	l32r	a8, .LC77
	.loc 1 117 0
	and	a4, a4, a2
.LVL82:
	l32r	a2, .LC76
	memw
	s32i.n	a4, a2, 0
	.loc 1 118 0
	l32r	a2, .LC78
	memw
	s32i.n	a2, a8, 0
.L81:
	.loc 1 119 0
	memw
	l32i.n	a2, a8, 0
	bnez.n	a2, .L81
	.loc 1 121 0
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL83:
.L79:
.LBE35:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 456 0
	mov.n	a2, a5
	retw.n
.LFE16:
	.size	esp_rom_spiflash_erase_sector, .-esp_rom_spiflash_erase_sector
	.section	.text.esp_rom_spiflash_write,"ax",@progbits
	.literal_position
	.literal .LC79, 1072963612
	.literal .LC80, -536870913
	.literal .LC81, 1072963616
	.literal .LC82, 67108863
	.literal .LC83, 1543503872
	.literal .LC84, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_write
	.type	esp_rom_spiflash_write, @function
esp_rom_spiflash_write:
.LFB17:
	.loc 1 459 0
.LVL84:
	entry	sp, 48
.LCFI12:
	.loc 1 465 0
	l32r	a6, .LC79
	l32r	a5, .LC80
	memw
	l32i.n	a7, a6, 0
	and	a5, a7, a5
	.loc 1 466 0
	l32r	a7, .LC81
	.loc 1 465 0
	memw
	s32i.n	a5, a6, 0
	.loc 1 466 0
	memw
	l32i.n	a6, a7, 0
	l32r	a5, .LC82
	and	a6, a6, a5
	l32r	a5, .LC83
	or	a5, a6, a5
	memw
	s32i.n	a5, a7, 0
	.loc 1 469 0
	l32r	a5, .LC84
	add.n	a6, a4, a2
	l32i.n	a7, a5, 4
	bgeu	a7, a6, .L84
.L87:
	.loc 1 470 0
	movi.n	a2, 1
.LVL85:
	retw.n
.LVL86:
.L84:
	.loc 1 473 0
	l32i.n	a7, a5, 16
.LVL87:
	.loc 1 474 0
	remu	a5, a2, a7
	sub	a5, a7, a5
.LVL88:
	.loc 1 475 0
	bgeu	a4, a5, .L86
	.loc 1 476 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	j	.L90
.L86:
	.loc 1 481 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_rom_spiflash_program_page_internal$constprop$4
.LVL89:
	bnez.n	a10, .L87
	.loc 1 487 0
	sub	a8, a4, a5
	quou	a8, a8, a7
.LVL90:
	.loc 1 488 0
	mov.n	a6, a10
	j	.L88
.LVL91:
.L89:
	.loc 1 489 0
	mov.n	a12, a7
	addx4	a11, a11, a3
	s32i.n	a8, sp, 0
	call8	esp_rom_spiflash_program_page_internal$constprop$4
.LVL92:
	l32i.n	a8, sp, 0
	bnez.n	a10, .L87
	.loc 1 488 0 discriminator 2
	addi.n	a6, a6, 1
.LVL93:
	.loc 1 493 0 discriminator 2
	add.n	a5, a5, a7
.LVL94:
	.loc 1 488 0 discriminator 2
	extui	a6, a6, 0, 8
.LVL95:
.L88:
	srli	a11, a5, 2
	add.n	a10, a5, a2
	.loc 1 488 0 is_stmt 0 discriminator 1
	bltu	a6, a8, .L89
	.loc 1 497 0 is_stmt 1
	sub	a12, a4, a5
	addx4	a11, a11, a3
.LVL96:
.L90:
	call8	esp_rom_spiflash_program_page_internal$constprop$4
.LVL97:
	.loc 1 470 0
	movi.n	a3, 1
.LVL98:
	movi.n	a2, 0
.LVL99:
	movnez	a2, a3, a10
	.loc 1 503 0
	retw.n
.LFE17:
	.size	esp_rom_spiflash_write, .-esp_rom_spiflash_write
	.section	.text.esp_rom_spiflash_write_encrypted,"ax",@progbits
	.align	4
	.global	esp_rom_spiflash_write_encrypted
	.type	esp_rom_spiflash_write_encrypted, @function
esp_rom_spiflash_write_encrypted:
.LFB18:
	.loc 1 506 0
.LVL100:
	entry	sp, 32
.LCFI13:
.LVL101:
	.loc 1 510 0
	or	a5, a2, a4
	extui	a5, a5, 0, 5
	.loc 1 506 0
	mov.n	a6, a2
	.loc 1 511 0
	movi.n	a2, 1
.LVL102:
	.loc 1 510 0
	bnez.n	a5, .L92
	.loc 1 514 0
	call8	esp_rom_spiflash_write_encrypted_enable
.LVL103:
	.loc 1 516 0
	srli	a4, a4, 5
.LVL104:
	j	.L93
.LVL105:
.L95:
	.loc 1 517 0
	slli	a11, a5, 5
	add.n	a7, a11, a6
	mov.n	a10, a7
	add.n	a11, a3, a11
	call8	esp_rom_spiflash_prepare_encrypted_data
.LVL106:
	mov.n	a2, a10
.LVL107:
	bnez.n	a10, .L94
	.loc 1 521 0
	movi.n	a12, 0x20
	mov.n	a11, a3
	mov.n	a10, a7
	call8	esp_rom_spiflash_write
.LVL108:
	mov.n	a2, a10
.LVL109:
	bnez.n	a10, .L94
	.loc 1 516 0 discriminator 2
	addi.n	a5, a5, 1
.LVL110:
.L93:
	.loc 1 516 0 is_stmt 0 discriminator 1
	bne	a5, a4, .L95
	movi.n	a2, 0
.LVL111:
.L94:
	.loc 1 526 0 is_stmt 1
	call8	esp_rom_spiflash_write_encrypted_disable
.LVL112:
.L92:
	.loc 1 529 0
	retw.n
.LFE18:
	.size	esp_rom_spiflash_write_encrypted, .-esp_rom_spiflash_write_encrypted
	.section	.text.esp_rom_spiflash_read,"ax",@progbits
	.literal_position
	.literal .LC85, 1072963712
	.literal .LC86, 1072963592
	.literal .LC87, 16785408
	.literal .LC88, 1072963612
	.literal .LC89, -134217729
	.literal .LC90, 1879048192
	.literal .LC91, 1072963616
	.literal .LC92, 67108863
	.literal .LC93, 2080374784
	.literal .LC94, g_rom_spiflash_dummy_len_plus
	.literal .LC95, 1072963620
	.literal .LC96, 1879048427
	.literal .LC98, 1342177280
	.literal .LC100, -536870913
	.literal .LC101, 1879048379
	.literal .LC102, 536870912
	.literal .LC103, -65536
	.literal .LC105, 1879048299
	.literal .LC107, 1879048251
	.literal .LC108, 1879048203
	.literal .LC109, 1543503872
	.literal .LC110, 1879048195
	.literal .LC111, g_rom_spiflash_chip
	.literal .LC112, 1072963628
	.literal .LC113, 1072963588
	.literal .LC114, 1072963584
	.literal .LC115, 262144
	.align	4
	.global	esp_rom_spiflash_read
	.type	esp_rom_spiflash_read, @function
esp_rom_spiflash_read:
.LFB19:
	.loc 1 533 0
.LVL113:
	entry	sp, 32
.LCFI14:
	.loc 1 536 0
	l32r	a5, .LC86
	.loc 1 537 0
	l32r	a9, .LC87
	.loc 1 536 0
	memw
	l32i.n	a8, a5, 0
.LVL114:
	l32r	a6, .LC89
	.loc 1 537 0
	and	a10, a8, a9
	l32r	a5, .LC88
	l32r	a7, .LC94
	bne	a10, a9, .L98
	.loc 1 538 0
	memw
	l32i.n	a8, a5, 0
.LVL115:
	and	a6, a8, a6
	memw
	s32i.n	a6, a5, 0
	.loc 1 539 0
	memw
	l32i.n	a8, a5, 0
	l32r	a6, .LC90
	or	a6, a8, a6
	.loc 1 540 0
	l32r	a8, .LC91
	.loc 1 539 0
	memw
	s32i.n	a6, a5, 0
	.loc 1 540 0
	memw
	l32i.n	a6, a8, 0
	l32r	a5, .LC92
	and	a6, a6, a5
	l32r	a5, .LC93
	or	a5, a6, a5
	memw
	s32i.n	a5, a8, 0
	.loc 1 541 0
	l8ui	a7, a7, 1
	memw
	l32i.n	a5, a8, 0
	movi	a6, -0x100
	addi.n	a7, a7, 3
	and	a5, a5, a6
	extui	a7, a7, 0, 8
	or	a5, a7, a5
	memw
	s32i.n	a5, a8, 0
	.loc 1 543 0
	l32r	a6, .LC96
	j	.L126
.LVL116:
.L98:
	.loc 1 544 0
	bbci	a8, 13, .L100
	.loc 1 545 0
	memw
	l32i.n	a9, a5, 0
	and	a6, a9, a6
	memw
	s32i.n	a6, a5, 0
	.loc 1 546 0
	memw
	l32i.n	a9, a5, 0
	l32r	a6, .LC98
	or	a6, a9, a6
	memw
	s32i.n	a6, a5, 0
	.loc 1 547 0
	bbci	a8, 23, .L101
	.loc 1 548 0
	l8ui	a8, a7, 1
.LVL117:
	l32r	a6, .LC91
	bnez.n	a8, .L102
	.loc 1 549 0
	memw
	l32i.n	a8, a5, 0
	l32r	a7, .LC100
	and	a7, a8, a7
	memw
	s32i.n	a7, a5, 0
	.loc 1 550 0
	memw
	l32i.n	a7, a6, 0
	l32r	a5, .LC92
	and	a7, a7, a5
	l32r	a5, .LC93
	or	a5, a7, a5
	memw
	s32i.n	a5, a6, 0
	.loc 1 551 0
	l32r	a6, .LC101
	j	.L126
.L102:
	.loc 1 553 0
	memw
	l32i.n	a9, a5, 0
	l32r	a8, .LC102
	or	a8, a9, a8
	memw
	s32i.n	a8, a5, 0
	.loc 1 554 0
	memw
	l32i.n	a8, a6, 0
	l32r	a5, .LC92
	and	a8, a8, a5
	l32r	a5, .LC93
	or	a5, a8, a5
	memw
	s32i.n	a5, a6, 0
	.loc 1 555 0
	l8ui	a8, a7, 1
	memw
	l32i.n	a5, a6, 0
	movi	a7, -0x100
	addi.n	a8, a8, -1
	and	a5, a5, a7
	extui	a8, a8, 0, 8
	or	a5, a8, a5
	.loc 1 556 0
	l32r	a7, .LC95
	.loc 1 555 0
	memw
	s32i.n	a5, a6, 0
	.loc 1 556 0
	memw
	l32i.n	a6, a7, 0
	l32r	a5, .LC103
	and	a6, a6, a5
	movi	a5, 0xbb
	or	a5, a6, a5
	memw
	s32i.n	a5, a7, 0
	j	.L99
.LVL118:
.L101:
	l32r	a5, .LC95
	.loc 1 561 0
	l32r	a6, .LC105
	.loc 1 559 0
	bbsi	a8, 20, .L125
.L103:
	.loc 1 564 0
	l32r	a6, .LC107
	.loc 1 562 0
	bbsi	a8, 14, .L125
.L105:
	.loc 1 567 0
	l32r	a6, .LC108
.L125:
	memw
	s32i.n	a6, a5, 0
	.loc 1 569 0
	l32r	a6, .LC88
	l32r	a5, .LC102
	memw
	l32i.n	a8, a6, 0
.LVL119:
	or	a5, a8, a5
	.loc 1 570 0
	l32r	a8, .LC91
	.loc 1 569 0
	memw
	s32i.n	a5, a6, 0
	.loc 1 570 0
	memw
	l32i.n	a6, a8, 0
	l32r	a5, .LC92
	and	a6, a6, a5
	l32r	a5, .LC109
	or	a5, a6, a5
	memw
	s32i.n	a5, a8, 0
	.loc 1 571 0
	l8ui	a7, a7, 1
	memw
	l32i.n	a5, a8, 0
	addi.n	a7, a7, 7
	movi	a6, -0x100
	extui	a7, a7, 0, 8
	and	a5, a5, a6
	or	a5, a7, a5
	memw
	s32i.n	a5, a8, 0
	j	.L99
.LVL120:
.L100:
	.loc 1 574 0
	memw
	l32i.n	a8, a5, 0
.LVL121:
	and	a6, a8, a6
	memw
	s32i.n	a6, a5, 0
	.loc 1 575 0
	l8ui	a6, a7, 1
	bnez.n	a6, .L106
	.loc 1 576 0
	memw
	l32i.n	a7, a5, 0
	l32r	a6, .LC100
	and	a6, a7, a6
	memw
	s32i.n	a6, a5, 0
	j	.L107
.L106:
	.loc 1 578 0
	memw
	l32i.n	a8, a5, 0
	l32r	a6, .LC102
	or	a6, a8, a6
	memw
	s32i.n	a6, a5, 0
	.loc 1 579 0
	l32r	a8, .LC91
	l8ui	a7, a7, 1
	memw
	l32i.n	a5, a8, 0
	addi.n	a7, a7, -1
	movi	a6, -0x100
	extui	a7, a7, 0, 8
	and	a5, a5, a6
	or	a5, a7, a5
	memw
	s32i.n	a5, a8, 0
.L107:
	.loc 1 581 0
	l32r	a6, .LC88
	l32r	a5, .LC98
	memw
	l32i.n	a7, a6, 0
	or	a5, a7, a5
	.loc 1 582 0
	l32r	a7, .LC91
	.loc 1 581 0
	memw
	s32i.n	a5, a6, 0
	.loc 1 582 0
	memw
	l32i.n	a6, a7, 0
	l32r	a5, .LC92
	and	a6, a6, a5
	l32r	a5, .LC109
	or	a5, a6, a5
	.loc 1 584 0
	l32r	a6, .LC110
	.loc 1 582 0
	memw
	s32i.n	a5, a7, 0
.L126:
	.loc 1 584 0
	l32r	a5, .LC95
	memw
	s32i.n	a6, a5, 0
.L99:
.LVL122:
.LBB38:
.LBB39:
	.loc 1 207 0
	l32r	a10, .LC111
	add.n	a5, a4, a2
	l32i.n	a7, a10, 4
.LBE39:
.LBE38:
	.loc 1 588 0
	movi.n	a6, 1
.LBB41:
.LBB40:
	.loc 1 207 0
	bltu	a7, a5, .L108
.LVL123:
	.loc 1 214 0
	call8	esp_rom_spiflash_wait_idle
.LVL124:
	.loc 1 233 0
	l32r	a8, .LC114
	l32r	a14, .LC115
	.loc 1 217 0
	movi.n	a5, 0x3f
	l32r	a12, .LC113
	.loc 1 232 0
	movi	a13, 0x1ff
	.loc 1 221 0
	mov.n	a15, a8
	mov.n	a6, a14
	j	.L109
.LVL125:
.L119:
	slli	a7, a2, 8
	.loc 1 217 0
	bge	a5, a4, .L110
	.loc 1 219 0
	l32r	a9, .LC112
	memw
	s32i.n	a13, a9, 0
	.loc 1 220 0
	memw
	s32i.n	a7, a12, 0
	.loc 1 221 0
	memw
	s32i.n	a6, a15, 0
.L111:
	.loc 1 222 0
	memw
	l32i.n	a7, a15, 0
	bnez.n	a7, .L111
	l32r	a10, .LC85
	mov.n	a11, a3
	.loc 1 224 0
	movi.n	a9, 0x10
	loop	a9, .L112_LEND
.LVL126:
.L112:
	.loc 1 225 0
	memw
	l32i.n	a7, a10, 0
	addi.n	a10, a10, 4
	s32i.n	a7, a11, 0
.LVL127:
	addi.n	a11, a11, 4
	.loc 1 224 0
	.L112_LEND:
	addi	a3, a3, 64
	.loc 1 227 0
	addi	a4, a4, -64
.LVL128:
	.loc 1 228 0
	addi	a2, a2, 64
.LVL129:
	j	.L109
.LVL130:
.L110:
	.loc 1 232 0
	l32r	a2, .LC112
.LVL131:
	.loc 1 231 0
	memw
	s32i.n	a7, a12, 0
	.loc 1 232 0
	memw
	s32i.n	a13, a2, 0
	.loc 1 233 0
	memw
	s32i.n	a14, a8, 0
.L114:
	.loc 1 234 0
	memw
	l32i.n	a2, a8, 0
	bnez.n	a2, .L114
	.loc 1 236 0
	extui	a6, a4, 0, 2
	srai	a4, a4, 2
.LVL132:
	addi.n	a2, a4, 1
	extui	a5, a2, 0, 8
	extui	a4, a4, 0, 8
	mov.n	a2, a5
	mov.n	a5, a4
	l32r	a4, .LC85
	movnez	a5, a2, a6
.LVL133:
	mov.n	a2, a3
	sub	a4, a4, a2
	addx4	a3, a5, a3
.LVL134:
	j	.L117
.LVL135:
.L118:
	add.n	a5, a4, a2
	.loc 1 238 0
	memw
	l32i.n	a5, a5, 0
	s32i.n	a5, a2, 0
	addi.n	a2, a2, 4
.LVL136:
.L117:
	.loc 1 237 0
	bne	a3, a2, .L118
	j	.L124
.LVL137:
.L109:
	.loc 1 216 0
	bgei	a4, 1, .L119
.LVL138:
.L124:
.LBE40:
.LBE41:
	.loc 1 590 0
	movi.n	a6, 0
.L108:
	.loc 1 591 0
	mov.n	a2, a6
	retw.n
.LFE19:
	.size	esp_rom_spiflash_read, .-esp_rom_spiflash_read
	.section	.text.esp_rom_spiflash_erase_area,"ax",@progbits
	.literal_position
	.literal .LC117, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_erase_area
	.type	esp_rom_spiflash_erase_area, @function
esp_rom_spiflash_erase_area:
.LFB20:
	.loc 1 594 0
.LVL139:
	entry	sp, 32
.LCFI15:
	.loc 1 604 0
	movi.n	a10, 5
	call8	esp_rom_spiflash_config_readmode
.LVL140:
	.loc 1 607 0
	l32r	a6, .LC117
	add.n	a4, a2, a3
	l32i.n	a5, a6, 4
	bgeu	a5, a4, .L128
.LVL141:
.L130:
	.loc 1 608 0
	movi.n	a7, 1
	j	.L129
.LVL142:
.L128:
	.loc 1 612 0
	l32i.n	a4, a6, 12
	remu	a4, a2, a4
	bnez.n	a4, .L130
	.loc 1 617 0
	call8	esp_rom_spiflash_unlock
.LVL143:
	mov.n	a7, a10
	bnez.n	a10, .L130
	.loc 1 621 0
	l32i.n	a4, a6, 12
	.loc 1 622 0
	l32i.n	a6, a6, 8
	.loc 1 623 0
	remu	a8, a3, a4
	quou	a3, a3, a4
.LVL144:
	.loc 1 621 0
	quou	a5, a2, a4
.LVL145:
	.loc 1 622 0
	quou	a6, a6, a4
.LVL146:
	.loc 1 623 0
	addi.n	a4, a3, 1
	moveqz	a4, a3, a8
.LVL147:
	.loc 1 627 0
	remu	a3, a5, a6
	sub	a3, a6, a3
.LVL148:
	.loc 1 629 0
	min	a3, a4, a3
.LVL149:
	add.n	a2, a3, a5
.LVL150:
	.loc 1 636 0
	j	.L133
.LVL151:
.L134:
	.loc 1 637 0
	mov.n	a10, a5
	call8	esp_rom_spiflash_erase_sector
.LVL152:
	bnez.n	a10, .L130
	.loc 1 640 0
	addi.n	a5, a5, 1
.LVL153:
.L133:
	.loc 1 636 0
	bne	a5, a2, .L134
	.loc 1 633 0
	sub	a3, a4, a3
.LVL154:
	j	.L135
.LVL155:
.L136:
	.loc 1 644 0
	quou	a10, a2, a6
	call8	esp_rom_spiflash_erase_block
.LVL156:
	bnez.n	a10, .L130
	.loc 1 647 0
	add.n	a2, a2, a6
.LVL157:
	sub	a3, a3, a6
.LVL158:
.L135:
	.loc 1 643 0
	bltu	a6, a3, .L136
	add.n	a2, a2, a3
.LVL159:
	j	.L137
.LVL160:
.L138:
	.loc 1 653 0
	call8	esp_rom_spiflash_erase_sector
.LVL161:
	bnez.n	a10, .L130
.LVL162:
	.loc 1 657 0
	addi.n	a3, a3, -1
.LVL163:
.L137:
	sub	a10, a2, a3
.LVL164:
	.loc 1 652 0
	bgei	a3, 1, .L138
.LVL165:
.L129:
	.loc 1 661 0
	mov.n	a2, a7
	retw.n
.LFE20:
	.size	esp_rom_spiflash_erase_area, .-esp_rom_spiflash_erase_area
	.section	.rodata.CSWTCH$38,"a",@progbits
	.align	4
	.type	CSWTCH$38, @object
	.size	CSWTCH$38, 24
CSWTCH$38:
	.word	16785408
	.word	1056768
	.word	8396800
	.word	24576
	.word	8192
	.word	0
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI4-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI6-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI9-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI10-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI11-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI12-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI13-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI15-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/spi_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbd6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x21
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.byte	0x4
	.byte	0x80
	.4byte	0xef
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x87
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.byte	0x4
	.byte	0x89
	.4byte	0x119
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x8d
	.4byte	0xfa
	.uleb128 0x7
	.byte	0x18
	.byte	0x4
	.byte	0x8f
	.4byte	0x175
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.byte	0x90
	.4byte	0x90
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x91
	.4byte	0x90
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.byte	0x92
	.4byte	0x90
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.byte	0x93
	.4byte	0x90
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.byte	0x94
	.4byte	0x90
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.byte	0x95
	.4byte	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x4
	.byte	0x96
	.4byte	0x124
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8e
	.4byte	0x119
	.byte	0x1
	.4byte	0x1e7
	.uleb128 0xa
	.string	"spi"
	.byte	0x1
	.byte	0x8e
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8e
	.4byte	0x90
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8f
	.4byte	0x1ed
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.4byte	0x85
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x91
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x92
	.4byte	0x85
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x93
	.4byte	0x7a
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x94
	.4byte	0x7a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x175
	.uleb128 0xe
	.byte	0x4
	.4byte	0x90
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x19f
	.4byte	0x119
	.byte	0x1
	.4byte	0x211
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x19f
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x119
	.byte	0x1
	.4byte	0x22f
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.byte	0x5c
	.4byte	0x119
	.byte	0x1
	.4byte	0x24b
	.uleb128 0xa
	.string	"spi"
	.byte	0x1
	.byte	0x5c
	.4byte	0x1e7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6b
	.4byte	0x119
	.byte	0x1
	.4byte	0x272
	.uleb128 0xa
	.string	"spi"
	.byte	0x1
	.byte	0x6b
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6b
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.byte	0x7f
	.4byte	0x119
	.byte	0x1
	.4byte	0x299
	.uleb128 0xa
	.string	"spi"
	.byte	0x1
	.byte	0x7f
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7f
	.4byte	0x90
	.byte	0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x123
	.4byte	0x119
	.byte	0x1
	.4byte	0x2c3
	.uleb128 0x12
	.string	"spi"
	.byte	0x1
	.2byte	0x123
	.4byte	0x1e7
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x125
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc6
	.4byte	0x119
	.byte	0x1
	.4byte	0x32a
	.uleb128 0xa
	.string	"spi"
	.byte	0x1
	.byte	0xc6
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc6
	.4byte	0x90
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc7
	.4byte	0x1ed
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc7
	.4byte	0x85
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc9
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0xca
	.4byte	0x85
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x7a
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0xcc
	.4byte	0x7a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf7
	.4byte	0x119
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x383
	.uleb128 0x15
	.string	"spi"
	.byte	0x1
	.byte	0xf7
	.4byte	0x1e7
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0xf7
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf9
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0xba9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x19
	.4byte	0x119
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d0
	.uleb128 0x15
	.string	"spi"
	.byte	0x1
	.byte	0x19
	.4byte	0x1e7
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x1b
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x32a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x299
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41b
	.uleb128 0x1b
	.4byte	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	0x2aa
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x383
	.4byte	0x404
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x32a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x180
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e8
	.uleb128 0x1e
	.4byte	0x19b
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	0x1a6
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	0x1b1
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	0x1bc
	.uleb128 0x1f
	.4byte	0x1c7
	.uleb128 0x1f
	.4byte	0x1d2
	.uleb128 0x1f
	.4byte	0x1db
	.uleb128 0x1c
	.4byte	0x190
	.uleb128 0x20
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1c
	.4byte	0x190
	.uleb128 0x1e
	.4byte	0x1b1
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	0x1a6
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	0x19b
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	0x1bc
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	0x1c7
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	0x1d2
	.4byte	.LLST10
	.uleb128 0x21
	.4byte	0x1db
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x383
	.4byte	0x4cc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL16
	.4byte	0x3d0
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x383
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x10d
	.4byte	0x119
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54e
	.uleb128 0x24
	.string	"spi"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x1e7
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10d
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x119
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0x383
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xba9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x116
	.4byte	0x119
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ab
	.uleb128 0x24
	.string	"spi"
	.byte	0x1
	.2byte	0x116
	.4byte	0x1e7
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x116
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL36
	.4byte	0x383
	.4byte	0x59a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x383
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x36
	.4byte	0x119
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x639
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x38
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0x383
	.4byte	0x5e6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL40
	.4byte	0x4e8
	.4byte	0x600
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL41
	.4byte	0x383
	.4byte	0x614
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x383
	.4byte	0x628
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x54e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x15e
	.4byte	0x119
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x27
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x160
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x4e8
	.4byte	0x67c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL45
	.4byte	0x3d0
	.uleb128 0x18
	.4byte	.LVL46
	.4byte	0x54e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x135
	.byte	0x1
	.4byte	0x6b8
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x135
	.4byte	0x90
	.byte	0
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x175
	.4byte	0x119
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70d
	.uleb128 0x29
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x175
	.4byte	0xef
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x177
	.4byte	0x90
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0x69e
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x18d
	.uleb128 0x1e
	.4byte	0x6ab
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x192
	.4byte	0x119
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x768
	.uleb128 0x2c
	.4byte	0x22f
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x198
	.4byte	0x75e
	.uleb128 0x1c
	.4byte	0x23f
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0x383
	.4byte	0x754
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL65
	.4byte	0x383
	.byte	0
	.uleb128 0x22
	.4byte	.LVL62
	.4byte	0x3d0
	.byte	0
	.uleb128 0x1a
	.4byte	0x1f3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e8
	.uleb128 0x1e
	.4byte	0x204
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x7de
	.uleb128 0x1e
	.4byte	0x204
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	0x272
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x1ae
	.uleb128 0x1c
	.4byte	0x282
	.uleb128 0x1e
	.4byte	0x28d
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0x383
	.4byte	0x7cc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0x383
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL68
	.4byte	0x3d0
	.byte	0
	.uleb128 0x1a
	.4byte	0x211
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x868
	.uleb128 0x1e
	.4byte	0x222
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x85e
	.uleb128 0x1e
	.4byte	0x222
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	0x24b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x1c3
	.uleb128 0x1c
	.4byte	0x25b
	.uleb128 0x1e
	.4byte	0x266
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0x383
	.4byte	0x84c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL83
	.4byte	0x383
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL77
	.4byte	0x3d0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x119
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x935
	.uleb128 0x29
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x90
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x935
	.4byte	.LLST24
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x90
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x90
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x90
	.4byte	.LLST25
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x7a
	.4byte	.LLST26
	.uleb128 0x1d
	.4byte	.LVL89
	.4byte	0x41b
	.4byte	0x90a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL92
	.4byte	0x41b
	.4byte	0x92b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL97
	.4byte	0x41b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x93b
	.uleb128 0x31
	.4byte	0x90
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x119
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f8
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x90
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x1ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x90
	.4byte	.LLST28
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x119
	.4byte	.LLST29
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x90
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LVL103
	.4byte	0xbb5
	.uleb128 0x1d
	.4byte	.LVL106
	.4byte	0xbc1
	.4byte	0x9ce
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x868
	.4byte	0x9ee
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL112
	.4byte	0xbcd
	.byte	0
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x214
	.4byte	0x119
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab7
	.uleb128 0x29
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x214
	.4byte	0x90
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x214
	.4byte	0x1ed
	.4byte	.LLST32
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x214
	.4byte	0x85
	.4byte	.LLST33
	.uleb128 0x2a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x217
	.4byte	0x90
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x2c3
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x24b
	.uleb128 0x1c
	.4byte	0x2d3
	.uleb128 0x1e
	.4byte	0x2f4
	.4byte	.LLST35
	.uleb128 0x1e
	.4byte	0x2e9
	.4byte	.LLST36
	.uleb128 0x1e
	.4byte	0x2de
	.4byte	.LLST37
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x21
	.4byte	0x2ff
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	0x30a
	.4byte	.LLST39
	.uleb128 0x21
	.4byte	0x315
	.4byte	.LLST40
	.uleb128 0x21
	.4byte	0x31e
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LVL124
	.4byte	0x383
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x251
	.4byte	0x119
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb88
	.uleb128 0x29
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x251
	.4byte	0x90
	.4byte	.LLST42
	.uleb128 0x29
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x251
	.4byte	0x90
	.4byte	.LLST43
	.uleb128 0x2a
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x253
	.4byte	0x85
	.4byte	.LLST44
	.uleb128 0x2a
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x254
	.4byte	0x85
	.4byte	.LLST45
	.uleb128 0x2a
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x255
	.4byte	0x90
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x256
	.4byte	0x90
	.4byte	.LLST47
	.uleb128 0x1d
	.4byte	.LVL140
	.4byte	0x6b8
	.4byte	0xb44
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.4byte	.LVL143
	.4byte	0x5ab
	.uleb128 0x1d
	.4byte	.LVL152
	.4byte	0x211
	.4byte	0xb61
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL156
	.4byte	0x1f3
	.4byte	0xb7e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x21
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x21
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL161
	.4byte	0x211
	.byte	0
	.uleb128 0x33
	.4byte	.LASF85
	.byte	0x1
	.byte	0x17
	.4byte	0x175
	.uleb128 0x34
	.4byte	0x7a
	.4byte	0xb9e
	.uleb128 0x35
	.byte	0
	.uleb128 0x33
	.4byte	.LASF86
	.byte	0x1
	.byte	0x56
	.4byte	0xb93
	.uleb128 0x36
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x11a
	.uleb128 0x36
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x1cf
	.uleb128 0x36
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x1dd
	.uleb128 0x36
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x1e7
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL84
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x15
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1d
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x21
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x21
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL122
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL123
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL123
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149
	.4byte	.LVL154
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL145
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161-1
	.4byte	.LVL162
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL146
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"ESP_ROM_SPIFLASH_DOUT_MODE"
.LASF33:
	.string	"page_size"
.LASF87:
	.string	"esp_rom_spiflash_read_user_cmd"
.LASF5:
	.string	"__uint8_t"
.LASF58:
	.string	"esp_rom_spiflash_read_status"
.LASF24:
	.string	"esp_rom_spiflash_read_mode_t"
.LASF39:
	.string	"temp_addr"
.LASF82:
	.string	"head_sector_num"
.LASF36:
	.string	"spi_addr"
.LASF9:
	.string	"long long unsigned int"
.LASF49:
	.string	"addr"
.LASF63:
	.string	"esp_rom_spiflash_unlock"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF74:
	.string	"esp_rom_spiflash_write_encrypted"
.LASF69:
	.string	"esp_rom_spiflash_write"
.LASF60:
	.string	"status_value"
.LASF56:
	.string	"temp_length"
.LASF13:
	.string	"long int"
.LASF65:
	.string	"modebit"
.LASF51:
	.string	"esp_rom_spiflash_enable_write"
.LASF78:
	.string	"esp_rom_spiflash_erase_area"
.LASF22:
	.string	"ESP_ROM_SPIFLASH_FASTRD_MODE"
.LASF66:
	.string	"esp_rom_spiflash_config_readmode"
.LASF37:
	.string	"addr_source"
.LASF50:
	.string	"esp_rom_spiflash_erase_block_internal"
.LASF35:
	.string	"esp_rom_spiflash_chip_t"
.LASF7:
	.string	"__uint32_t"
.LASF52:
	.string	"flash_status"
.LASF80:
	.string	"area_len"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"block_size"
.LASF15:
	.string	"long unsigned int"
.LASF91:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"ESP_ROM_SPIFLASH_RESULT_TIMEOUT"
.LASF75:
	.string	"data"
.LASF90:
	.string	"esp_rom_spiflash_write_encrypted_disable"
.LASF4:
	.string	"short unsigned int"
.LASF68:
	.string	"esp_rom_spiflash_erase_chip"
.LASF70:
	.string	"target"
.LASF88:
	.string	"esp_rom_spiflash_write_encrypted_enable"
.LASF38:
	.string	"byte_length"
.LASF34:
	.string	"status_mask"
.LASF28:
	.string	"esp_rom_spiflash_result_t"
.LASF14:
	.string	"sizetype"
.LASF85:
	.string	"g_rom_spiflash_chip"
.LASF55:
	.string	"addr_dest"
.LASF45:
	.string	"sector_num"
.LASF53:
	.string	"esp_rom_spiflash_read_data"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/spi_flash_rom_patch.c"
.LASF54:
	.string	"flash_addr"
.LASF62:
	.string	"esp_rom_spiflash_write_status"
.LASF30:
	.string	"chip_size"
.LASF76:
	.string	"esp_rom_spiflash_read"
.LASF44:
	.string	"esp_rom_spiflash_erase_sector"
.LASF73:
	.string	"pgm_num"
.LASF81:
	.string	"total_sector_num"
.LASF47:
	.string	"esp_rom_spiflash_erase_chip_internal"
.LASF32:
	.string	"sector_size"
.LASF17:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF18:
	.string	"ESP_ROM_SPIFLASH_QIO_MODE"
.LASF79:
	.string	"start_addr"
.LASF3:
	.string	"short int"
.LASF43:
	.string	"esp_rom_spiflash_erase_block"
.LASF64:
	.string	"esp_rom_spiflash_lock"
.LASF84:
	.string	"sector_num_per_block"
.LASF93:
	.string	"spi_cache_mode_switch"
.LASF12:
	.string	"uint32_t"
.LASF46:
	.string	"esp_rom_spiflash_program_page_internal"
.LASF16:
	.string	"char"
.LASF67:
	.string	"mode"
.LASF25:
	.string	"ESP_ROM_SPIFLASH_RESULT_OK"
.LASF86:
	.string	"g_rom_spiflash_dummy_len_plus"
.LASF29:
	.string	"device_id"
.LASF71:
	.string	"src_addr"
.LASF6:
	.string	"__int32_t"
.LASF23:
	.string	"ESP_ROM_SPIFLASH_SLOWRD_MODE"
.LASF72:
	.string	"pgm_len"
.LASF61:
	.string	"esp_rom_spiflash_read_statushigh"
.LASF40:
	.string	"temp_bl"
.LASF26:
	.string	"ESP_ROM_SPIFLASH_RESULT_ERR"
.LASF77:
	.string	"dest_addr"
.LASF57:
	.string	"status"
.LASF10:
	.string	"uint8_t"
.LASF59:
	.string	"esp_rom_spiflash_wait_idle"
.LASF48:
	.string	"esp_rom_spiflash_erase_sector_internal"
.LASF41:
	.string	"remain_word_num"
.LASF19:
	.string	"ESP_ROM_SPIFLASH_QOUT_MODE"
.LASF89:
	.string	"esp_rom_spiflash_prepare_encrypted_data"
.LASF83:
	.string	"sector_no"
.LASF20:
	.string	"ESP_ROM_SPIFLASH_DIO_MODE"
.LASF42:
	.string	"block_num"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
