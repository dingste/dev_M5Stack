	.file	"esp_image_format.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	""
.LC6:
	.string	"map"
.LC9:
	.string	"esp_image"
.LC11:
	.string	"\033[0;31mE (%d) %s: partition size 0x%x invalid, larger than 16MB\033[0m\n"
.LC13:
	.string	"\033[0;31mE (%d) %s: image at 0x%x has invalid magic byte\033[0m\n"
.LC15:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI mode %d\033[0m\n"
.LC17:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI size %d\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: image at 0x%x segment count %d exceeds max %d\033[0m\n"
.LC21:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read failed at 0x%08x\033[0m\n"
.LC24:
	.string	"\033[0;31mE (%d) %s: invalid segment length 0x%x\033[0m\n"
.LC30:
	.string	"\033[0;31mE (%d) %s: Segment %d load address 0x%08x, doesn't match data 0x%08x\033[0m\n"
.LC32:
	.string	"\033[0;32mI (%d) %s: segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
.LC36:
	.string	"\033[0;31mE (%d) %s: image offset has wrapped\033[0m\n"
.LC38:
	.string	"\033[0;31mE (%d) %s: Checksum failed. Calculated 0x%x read 0x%x\033[0m\n"
.LC40:
	.string	"\033[0;31mE (%d) %s: Image length %d doesn't fit in partition length %d\033[0m\n"
.LC43:
	.string	"\033[0;31mE (%d) %s: Image hash failed - image is corrupt\033[0m\n"
	.section	.text.image_load,"ax",@progbits
	.literal_position
	.literal .LC3, 8194
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 16777216
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC23, 16777215
	.literal .LC25, .LC24
	.literal .LC26, -1074593792
	.literal .LC27, 3342335
	.literal .LC28, -1061158912
	.literal .LC29, 4194303
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC42, 4096
	.literal .LC44, .LC43
	.align	4
	.type	image_load, @function
image_load:
.LFB9:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/esp_image_format.c"
	.loc 1 99 0
.LVL0:
	entry	sp, 224
.LCFI0:
.LVL1:
	.loc 1 111 0
	movi.n	a5, 1
	movi.n	a11, 0
	moveqz	a11, a5, a4
	.loc 1 99 0
	s32i	a3, sp, 160
	.loc 1 111 0
	extui	a11, a11, 0, 8
	bnez.n	a11, .L55
	moveqz	a11, a5, a3
	bnez.n	a11, .L55
	.loc 1 115 0
	l32i.n	a3, a3, 4
.LVL2:
	l32r	a6, .LC8
	bgeu	a6, a3, .L3
.LVL3:
	.loc 1 116 0
	movi	a3, 0x102
	.loc 1 117 0
	beq	a2, a5, .L52
	.loc 1 117 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL4:
	l32i	a2, sp, 160
.LVL5:
	l32r	a11, .LC10
	l32i.n	a15, a2, 4
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL6:
	j	.L52
.LVL7:
.L3:
	.loc 1 120 0 is_stmt 1
	movi	a12, 0x100
	mov.n	a10, a4
	call8	memset
.LVL8:
	.loc 1 121 0
	l32i	a3, sp, 160
	.loc 1 124 0
	addi.n	a7, a4, 4
	.loc 1 121 0
	l32i.n	a10, a3, 0
	.loc 1 124 0
	mov.n	a13, a5
	.loc 1 121 0
	s32i.n	a10, a4, 0
	.loc 1 124 0
	movi.n	a12, 0x18
	mov.n	a11, a7
	call8	bootloader_flash_read
.LVL9:
	mov.n	a3, a10
.LVL10:
	.loc 1 125 0
	bnez.n	a10, .L52
	.loc 1 133 0
	l8ui	a5, a4, 27
	beqz.n	a5, .L57
	.loc 1 135 0
	call8	bootloader_sha256_start
.LVL11:
	mov.n	a5, a10
.LVL12:
	.loc 1 137 0
	movi	a6, 0x101
	.loc 1 136 0
	beqz.n	a10, .L99
	.loc 1 139 0
	movi.n	a12, 0x18
	mov.n	a11, a7
	call8	bootloader_sha256_data
.LVL13:
	j	.L5
.LVL14:
.L57:
	.loc 1 109 0
	mov.n	a5, a10
.LVL15:
.L5:
.LBB39:
.LBB40:
	.loc 1 278 0
	l8ui	a9, a4, 4
	movi	a8, 0xe9
.LBE40:
.LBE39:
	.loc 1 149 0
	l32i.n	a6, a4, 0
.LVL16:
.LBB43:
.LBB41:
	.loc 1 278 0
	beq	a9, a8, .L6
	.loc 1 282 0
	l32r	a3, .LC3
.LVL17:
	.loc 1 279 0
	beqi	a2, 1, .L6
	.loc 1 280 0
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC10
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
.L6:
	.loc 1 284 0
	movi.n	a11, 1
	mov.n	a10, a7
	call8	bootloader_common_check_chip_validity
.LVL20:
	bnez.n	a10, .L7
	.loc 1 287 0
	beqi	a2, 1, .L8
.LVL21:
.L54:
	.loc 1 288 0
	l8ui	a7, a4, 6
.LVL22:
	bltui	a7, 6, .L9
	.loc 1 289 0
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC10
	l8ui	a7, a4, 6
	l32r	a12, .LC16
	mov.n	a13, a10
	s32i.n	a7, sp, 0
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL24:
.L9:
	.loc 1 294 0
	l8ui	a7, a4, 7
	extui	a7, a7, 4, 4
	blti	a7, 6, .L8
	.loc 1 295 0
	call8	esp_log_timestamp
.LVL25:
	l8ui	a7, a4, 7
	l32r	a11, .LC10
	extui	a7, a7, 4, 4
	l32r	a12, .LC18
	mov.n	a13, a10
	s32i.n	a7, sp, 0
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL26:
.L8:
.LBE41:
.LBE43:
	.loc 1 150 0
	bnez.n	a3, .L53
	.loc 1 154 0
	l8ui	a7, a4, 5
	movi.n	a6, 0x10
.LVL27:
	bgeu	a6, a7, .L11
	.loc 1 155 0
	beqi	a2, 1, .L13
	.loc 1 155 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC10
	l8ui	a2, a4, 5
.LVL29:
	l32i.n	a15, a4, 0
	l32r	a12, .LC20
	mov.n	a13, a10
	s32i.n	a6, sp, 4
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	j	.L13
.LVL31:
.L11:
	movi	a7, 0x9c
	add.n	a8, a4, a7
	.loc 1 159 0 is_stmt 1
	l32i.n	a6, a4, 0
	s32i	a8, sp, 168
	addi	a9, a4, 28
	.loc 1 108 0
	movi	a8, 0xef
	.loc 1 159 0
	addi	a6, a6, 24
.LVL32:
	s32i	a9, sp, 144
	.loc 1 108 0
	s32i	a8, sp, 152
.LBB44:
	.loc 1 160 0
	s32i	a3, sp, 148
	j	.L14
.LVL33:
.L34:
.LBB45:
.LBB46:
.LBB47:
	.loc 1 306 0
	l32i	a11, sp, 144
	movi.n	a13, 1
	movi.n	a12, 8
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL34:
	mov.n	a7, a10
.LVL35:
	.loc 1 307 0
	beqz.n	a10, .L15
	.loc 1 308 0
	call8	esp_log_timestamp
.LVL36:
	l32r	a11, .LC10
	l32r	a12, .LC22
	mov.n	a13, a10
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL37:
	j	.L16
.L15:
	.loc 1 311 0
	beqz.n	a5, .L17
	.loc 1 312 0
	l32i	a11, sp, 144
	movi.n	a12, 8
	mov.n	a10, a5
	call8	bootloader_sha256_data
.LVL38:
.L17:
	.loc 1 316 0
	l32i	a9, sp, 144
.LBB48:
.LBB49:
	.loc 1 448 0
	movi.n	a8, 1
.LBE49:
.LBE48:
	.loc 1 316 0
	l32i.n	a7, a9, 4
.LVL39:
.LBB59:
.LBB56:
	.loc 1 448 0
	movi.n	a11, 0
	extui	a10, a7, 0, 2
	movnez	a11, a8, a10
	extui	a10, a11, 0, 8
	bnez.n	a10, .L64
	l32r	a9, .LC23
.LVL40:
	bltu	a9, a7, .L64
.LBE56:
.LBE59:
	.loc 1 315 0
	l32i	a12, sp, 144
	.loc 1 317 0
	addi.n	a6, a6, 8
.LVL41:
	.loc 1 315 0
	l32i.n	a9, a12, 0
.LBB60:
.LBB57:
.LBB50:
.LBB51:
	.loc 1 478 0
	l32r	a11, .LC26
.LBE51:
.LBE50:
.LBE57:
.LBE60:
	.loc 1 317 0
	s32i	a6, sp, 156
.LVL42:
.LBB61:
.LBB58:
.LBB54:
.LBB52:
	.loc 1 478 0
	mov.n	a6, a8
.LVL43:
	l32r	a8, .LC27
	add.n	a11, a9, a11
	bgeu	a8, a11, .L22
	j	.L118
.LVL44:
.L64:
.LBE52:
.LBE54:
	.loc 1 449 0
	beqi	a2, 1, .L21
	.loc 1 450 0
	call8	esp_log_timestamp
.LVL45:
	l32i	a3, sp, 148
.LVL46:
	l32r	a11, .LC10
	addx8	a2, a3, a4
.LVL47:
	l32i.n	a15, a2, 32
	l32r	a12, .LC25
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	j	.L21
.LVL49:
.L118:
.LBB55:
.LBB53:
	.loc 1 478 0
	mov.n	a6, a10
.L22:
	l32r	a10, .LC28
	l32r	a11, .LC29
	add.n	a10, a9, a10
	movi.n	a8, 1
	bgeu	a11, a10, .L23
	movi.n	a8, 0
.L23:
	or	a6, a6, a8
	extui	a6, a6, 0, 8
.LBE53:
.LBE55:
	.loc 1 463 0
	beqz.n	a6, .L24
	.loc 1 464 0
	l32i	a10, sp, 156
	xor	a8, a9, a10
	extui	a8, a8, 0, 16
	beqz.n	a8, .L24
	.loc 1 465 0
	beqi	a2, 1, .L21
	.loc 1 466 0
	s32i	a9, sp, 184
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC10
	l32i	a2, sp, 156
.LVL51:
	l32i	a9, sp, 184
	l32i	a15, sp, 148
	l32r	a12, .LC31
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	s32i.n	a9, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL52:
	j	.L21
.LVL53:
.L24:
.LBE58:
.LBE61:
	.loc 1 333 0
	beqi	a2, 1, .L25
	.loc 1 334 0
	s32i	a9, sp, 184
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC7
	l32r	a8, .LC5
	l32i	a9, sp, 184
	movnez	a8, a11, a6
	l32r	a11, .LC10
	l32i	a6, sp, 156
	l32i	a15, sp, 148
	l32r	a12, .LC33
	mov.n	a13, a10
	s32i.n	a8, sp, 16
	s32i.n	a7, sp, 12
	s32i.n	a7, sp, 8
	s32i.n	a9, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL55:
.L25:
	.loc 1 375 0
	call8	bootloader_mmap_get_free_pages
.LVL56:
	s32i	a10, sp, 172
.LVL57:
	.loc 1 378 0
	s32i	a7, sp, 164
.LVL58:
	.loc 1 317 0
	l32i	a7, sp, 156
.LVL59:
	j	.L27
.LVL60:
.L32:
.LBB62:
	.loc 1 382 0
	extui	a6, a7, 0, 16
	movi.n	a9, 1
.LVL61:
	movi.n	a8, 0
	movnez	a8, a9, a6
	mov.n	a6, a8
	l32i	a8, sp, 172
	l32i	a9, sp, 164
	sub	a6, a8, a6
	slli	a6, a6, 16
	minu	a6, a6, a9
.LVL62:
.LBB63:
.LBB64:
	.loc 1 403 0
	mov.n	a11, a6
	mov.n	a10, a7
	call8	bootloader_mmap
.LVL63:
	mov.n	a9, a10
.LVL64:
	.loc 1 404 0
	beqz.n	a10, .L28
	movi.n	a8, 0
.LBB65:
.LBB66:
	.loc 1 435 0
	movi	a13, 0x400
	j	.L29
.L28:
.LBE66:
.LBE65:
	.loc 1 405 0
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC10
	l32r	a12, .LC35
	mov.n	a15, a7
	mov.n	a13, a10
	s32i.n	a6, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	movi.n	a7, -1
.LVL67:
	j	.L16
.LVL68:
.L31:
.LBB68:
.LBB67:
	.loc 1 422 0
	srai	a11, a8, 2
.LVL69:
	addx4	a11, a11, a9
.LVL70:
	.loc 1 423 0
	l32i	a12, sp, 152
	l32i.n	a10, a11, 0
.LVL71:
	xor	a12, a12, a10
.LVL72:
	s32i	a12, sp, 152
.LVL73:
	.loc 1 434 0
	beqz.n	a5, .L30
	.loc 1 434 0
	extui	a10, a8, 0, 10
	bnez.n	a10, .L30
	.loc 1 435 0
	sub	a12, a6, a8
.LVL74:
	minu	a12, a12, a13
	mov.n	a10, a5
	s32i	a8, sp, 180
.LVL75:
	s32i	a9, sp, 184
	s32i	a13, sp, 176
	call8	bootloader_sha256_data
.LVL76:
	l32i	a13, sp, 176
	l32i	a9, sp, 184
	l32i	a8, sp, 180
.L30:
.LBE67:
	.loc 1 420 0
	addi.n	a8, a8, 4
.LVL77:
.L29:
	bltu	a8, a6, .L31
.LBE68:
	.loc 1 440 0
	mov.n	a10, a9
	call8	bootloader_munmap
.LVL78:
.LBE64:
.LBE63:
	.loc 1 388 0
	l32i	a8, sp, 164
	.loc 1 387 0
	add.n	a7, a7, a6
.LVL79:
	.loc 1 388 0
	sub	a8, a8, a6
	s32i	a8, sp, 164
.LVL80:
.L27:
.LBE62:
	.loc 1 379 0
	l32i	a9, sp, 164
	bgei	a9, 1, .L32
	j	.L119
.LVL81:
.L14:
.LBE47:
.LBE46:
.LBE45:
	.loc 1 160 0 discriminator 1
	l8ui	a7, a4, 5
	l32i	a8, sp, 148
	blt	a8, a7, .L34
.LVL82:
.LBE44:
	.loc 1 174 0
	l32i.n	a15, a4, 0
	bgeu	a6, a15, .L35
	.loc 1 175 0
	beqi	a2, 1, .L13
	.loc 1 175 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC10
	l32r	a12, .LC37
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	j	.L13
.LVL85:
.L35:
	.loc 1 178 0 is_stmt 1
	sub	a15, a6, a15
	s32i	a15, a4, 220
	.loc 1 180 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL86:
	mov.n	a7, a10
	beqz.n	a10, .L36
.LVL87:
.L44:
	.loc 1 186 0
	l32i	a9, sp, 160
	l32i	a6, a4, 220
	l32i.n	a7, a9, 4
	bltu	a7, a6, .L37
	j	.L120
.LVL88:
.L36:
.LBB75:
.LBB76:
	.loc 1 544 0
	l32i	a9, a4, 220
.LVL89:
	.loc 1 546 0
	movi.n	a6, -0x10
.LVL90:
	addi	a8, a9, 16
	.loc 1 550 0
	l32i.n	a10, a4, 0
	.loc 1 546 0
	and	a6, a8, a6
.LVL91:
	.loc 1 550 0
	sub	a8, a6, a9
	mov.n	a12, a8
	addi	a11, sp, 32
	add.n	a10, a9, a10
	movi.n	a13, 1
	s32i	a8, sp, 180
	call8	bootloader_flash_read
.LVL92:
	.loc 1 552 0
	l32i	a11, sp, 152
	l32i	a12, sp, 152
	extui	a15, a11, 24, 8
	extui	a11, a11, 16, 16
	xor	a11, a15, a11
	xor	a11, a11, a12
	srli	a15, a12, 8
	xor	a15, a11, a15
	.loc 1 551 0
	l32i	a8, sp, 180
	.loc 1 556 0
	movi.n	a11, 1
	mov.n	a12, a7
	movnez	a12, a11, a10
	.loc 1 551 0
	add.n	a9, sp, a8
	.loc 1 556 0
	extui	a10, a12, 0, 8
.LVL93:
	.loc 1 551 0
	l8ui	a9, a9, 31
.LVL94:
	.loc 1 552 0
	extui	a15, a15, 0, 8
.LVL95:
	.loc 1 556 0
	bnez.n	a10, .L65
	sub	a7, a9, a15
	movnez	a10, a11, a7
	beqz.n	a10, .L39
.L65:
	.loc 1 557 0
	s32i	a9, sp, 184
.LVL96:
	s32i	a15, sp, 176
	call8	esp_log_timestamp
.LVL97:
	l32r	a11, .LC10
	l32i	a9, sp, 184
	l32i	a15, sp, 176
	s32i.n	a9, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC39
	j	.L121
.LVL98:
.L39:
	.loc 1 560 0
	beqz.n	a5, .L42
	.loc 1 561 0
	mov.n	a12, a8
	addi	a11, sp, 32
	mov.n	a10, a5
	call8	bootloader_sha256_data
.LVL99:
.L42:
	.loc 1 564 0
	l8ui	a8, a4, 27
	.loc 1 566 0
	addi	a7, a6, 32
	movnez	a6, a7, a8
.LVL100:
	.loc 1 568 0
	s32i	a6, a4, 220
	j	.L44
.LVL101:
.L37:
.LBE76:
.LBE75:
	.loc 1 187 0
	beqi	a2, 1, .L13
	.loc 1 187 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL102:
	l32i	a3, sp, 160
.LVL103:
	l32r	a11, .LC10
	l32i.n	a2, a3, 4
.LVL104:
	l32i	a15, a4, 220
	l32r	a12, .LC41
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.L121:
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	j	.L13
.LVL106:
.L120:
	.loc 1 196 0 is_stmt 1
	l32i.n	a6, a4, 0
	l32r	a2, .LC42
.LVL107:
	beq	a6, a2, .L45
	.loc 1 202 0
	beqz.n	a5, .L47
	.loc 1 202 0 discriminator 1
	call8	esp_cpu_in_ocd_debug_mode
.LVL108:
	mov.n	a6, a10
.LVL109:
	bnez.n	a10, .L47
.LVL110:
.LBB77:
.LBB78:
	.loc 1 622 0
	movi.n	a12, 0x20
	mov.n	a11, a10
	addi	a10, sp, 97
	call8	memset
.LVL111:
	.loc 1 623 0
	addi	a11, sp, 97
	mov.n	a10, a5
	call8	bootloader_sha256_finish
.LVL112:
.LBB79:
.LBB80:
	.loc 1 647 0
	movi.n	a12, 0x20
	add.n	a10, sp, a12
	addi	a11, sp, 97
.LVL113:
	.loc 1 646 0
	s8i	a6, sp, 96
	.loc 1 647 0
	call8	bootloader_sha256_hex_to_str
.LVL114:
.LBE80:
.LBE79:
	.loc 1 629 0
	l32i.n	a10, a4, 0
	l32i	a2, a4, 220
	movi.n	a11, 0x20
	add.n	a10, a10, a2
	addi	a10, a10, -32
	call8	bootloader_mmap
.LVL115:
	.loc 1 630 0
	movi.n	a12, 0x20
	addi	a11, sp, 97
.LVL116:
	.loc 1 629 0
	mov.n	a2, a10
.LVL117:
	.loc 1 630 0
	call8	memcmp
.LVL118:
	beqz.n	a10, .L49
	.loc 1 631 0
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC10
	l32r	a12, .LC44
	mov.n	a14, a11
	mov.n	a13, a10
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
.LBB81:
.LBB82:
	.loc 1 647 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	add.n	a10, sp, a12
	.loc 1 646 0
	s8i	a6, sp, 96
	.loc 1 647 0
	call8	bootloader_sha256_hex_to_str
.LVL121:
.LBE82:
.LBE81:
	.loc 1 633 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL122:
	.loc 1 634 0
	l32r	a3, .LC3
.LVL123:
	j	.L47
.LVL124:
.L49:
	.loc 1 637 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL125:
	j	.L47
.LVL126:
.L45:
.LBE78:
.LBE77:
	.loc 1 208 0
	beqz.n	a5, .L47
	.loc 1 209 0
	movi.n	a11, 0
	mov.n	a10, a5
	call8	bootloader_sha256_finish
.LVL127:
.L47:
	.loc 1 213 0
	l8ui	a2, a4, 27
	beqz.n	a2, .L51
.LBB83:
	.loc 1 214 0
	l32i	a2, a4, 220
	l32i.n	a10, a4, 0
	movi.n	a11, 0x20
	add.n	a10, a10, a2
	addi	a10, a10, -32
	call8	bootloader_mmap
.LVL128:
	mov.n	a2, a10
.LVL129:
	.loc 1 215 0
	beqz.n	a10, .L62
	.loc 1 219 0
	mov.n	a11, a10
	movi	a10, 0xe0
	movi.n	a12, 0x20
	add.n	a10, a4, a10
	call8	memcpy
.LVL130:
	.loc 1 220 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL131:
.L51:
.LBE83:
	.loc 1 224 0
	bnez.n	a3, .L52
	j	.L122
.LVL132:
.L53:
	.loc 1 249 0
	beqz.n	a5, .L52
	.loc 1 251 0
	movi.n	a11, 0
	mov.n	a10, a5
	call8	bootloader_sha256_finish
.LVL133:
.L52:
	.loc 1 254 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL134:
.L122:
	.loc 1 255 0
	mov.n	a6, a3
	j	.L99
.LVL135:
.L55:
	.loc 1 112 0
	movi	a6, 0x102
	j	.L99
.LVL136:
.L21:
.LBB84:
.LBB74:
.LBB73:
.LBB72:
.LBB71:
.LBB70:
.LBB69:
	.loc 1 405 0
	l32r	a7, .LC3
.LVL137:
	j	.L16
.LVL138:
.L119:
.LBE69:
.LBE70:
.LBE71:
.LBE72:
.LBE73:
	.loc 1 168 0
	l32i	a8, sp, 156
	l32i	a6, sp, 168
	.loc 1 169 0
	l32i	a9, sp, 144
.LVL139:
	.loc 1 168 0
	s32i.n	a8, a6, 0
	.loc 1 169 0
	l32i.n	a6, a9, 4
	l32i	a9, sp, 168
	add.n	a6, a8, a6
.LVL140:
.LBE74:
	.loc 1 160 0
	l32i	a8, sp, 148
	addi.n	a9, a9, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 148
.LVL141:
	l32i	a8, sp, 144
.LVL142:
	s32i	a9, sp, 168
	addi.n	a8, a8, 8
	s32i	a8, sp, 144
.LVL143:
	j	.L14
.LVL144:
.L16:
.LBE84:
	mov.n	a3, a7
	j	.L53
.LVL145:
.L13:
	.loc 1 247 0
	l32r	a3, .LC3
	j	.L53
.LVL146:
.L62:
.LBB85:
	.loc 1 216 0
	movi.n	a3, -1
.LVL147:
	j	.L53
.LVL148:
.L7:
	l32r	a3, .LC3
.LBE85:
.LBB86:
.LBB42:
	.loc 1 287 0
	beqi	a2, 1, .L53
	j	.L54
.LVL149:
.L99:
.LBE42:
.LBE86:
	.loc 1 256 0
	mov.n	a2, a6
	retw.n
.LFE9:
	.size	image_load, .-image_load
	.section	.text.bootloader_load_image,"ax",@progbits
	.align	4
	.global	bootloader_load_image
	.type	bootloader_load_image, @function
bootloader_load_image:
.LFB10:
	.loc 1 259 0
.LVL150:
	entry	sp, 32
.LCFI1:
	.loc 1 265 0
	movi.n	a2, -1
.LVL151:
	retw.n
.LFE10:
	.size	bootloader_load_image, .-bootloader_load_image
	.section	.text.esp_image_verify,"ax",@progbits
	.align	4
	.global	esp_image_verify
	.type	esp_image_verify, @function
esp_image_verify:
.LFB11:
	.loc 1 268 0
.LVL152:
	entry	sp, 32
.LCFI2:
	.loc 1 269 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	image_load
.LVL153:
	.loc 1 270 0
	mov.n	a2, a10
.LVL154:
	retw.n
.LFE11:
	.size	esp_image_verify, .-esp_image_verify
	.global	esp_image_load
	.set	esp_image_load,esp_image_verify
	.section	.rodata
	.align	4
.LC0:
	.word	4096
	.word	28672
	.section	.text.esp_image_verify_bootloader,"ax",@progbits
	.literal_position
	.literal .LC45, .LC0
	.align	4
	.global	esp_image_verify_bootloader
	.type	esp_image_verify_bootloader, @function
esp_image_verify_bootloader:
.LFB18:
	.loc 1 518 0
.LVL155:
	entry	sp, 304
.LCFI3:
.LVL156:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
	.loc 1 532 0
	l32r	a8, .LC45
.LBB97:
.LBB98:
	.loc 1 269 0
	mov.n	a12, sp
.LVL157:
.LBE98:
.LBE97:
	.loc 1 532 0
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
.LBB101:
.LBB99:
	.loc 1 269 0
	addmi	a11, sp, 0x100
	movi.n	a10, 0
.LBE99:
.LBE101:
	.loc 1 532 0
	s32i	a9, sp, 256
	s32i	a8, sp, 260
.LVL158:
.LBB102:
.LBB100:
	.loc 1 269 0
	call8	image_load
.LVL159:
.LBE100:
.LBE102:
.LBE96:
.LBE95:
.LBE94:
.LBE93:
	.loc 1 521 0
	beqz.n	a2, .L126
	.loc 1 522 0
	l32i	a8, sp, 220
	movi.n	a9, 0
	movnez	a8, a9, a10
	s32i.n	a8, a2, 0
.L126:
	.loc 1 525 0
	mov.n	a2, a10
.LVL160:
	retw.n
.LFE18:
	.size	esp_image_verify_bootloader, .-esp_image_verify_bootloader
	.section	.text.esp_image_verify_bootloader_data,"ax",@progbits
	.literal_position
	.literal .LC46, .LC0
	.align	4
	.global	esp_image_verify_bootloader_data
	.type	esp_image_verify_bootloader_data, @function
esp_image_verify_bootloader_data:
.LFB19:
	.loc 1 528 0
.LVL161:
	entry	sp, 48
.LCFI4:
	.loc 1 528 0
	mov.n	a12, a2
	.loc 1 530 0
	movi	a10, 0x102
	.loc 1 529 0
	beqz.n	a2, .L133
.LVL162:
.LBB107:
.LBB108:
	.loc 1 532 0
	l32r	a8, .LC46
.LBB109:
.LBB110:
	.loc 1 269 0
	mov.n	a11, sp
.LBE110:
.LBE109:
	.loc 1 532 0
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
.LBB113:
.LBB111:
	.loc 1 269 0
	movi.n	a10, 0
.LBE111:
.LBE113:
	.loc 1 532 0
	s32i.n	a9, sp, 0
	s32i.n	a8, sp, 4
.LVL163:
.LBB114:
.LBB112:
	.loc 1 269 0
	call8	image_load
.LVL164:
.L133:
.LBE112:
.LBE114:
.LBE108:
.LBE107:
	.loc 1 539 0
	mov.n	a2, a10
.LVL165:
	retw.n
.LFE19:
	.size	esp_image_verify_bootloader_data, .-esp_image_verify_bootloader_data
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
	.byte	0xe
	.uleb128 0xe0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xc
	.4byte	.LASF156
	.4byte	.LASF157
	.4byte	.Ldebug_ranges0+0x168
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x31
	.4byte	0x25
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x52
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x18
	.4byte	0xc8
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x2f
	.4byte	0x189
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x30
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x31
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x32
	.4byte	0x168
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x1a4
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x1d5
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x27
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x2f
	.4byte	0x22b
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.4byte	0x3e
	.byte	0x8
	.byte	0x3e
	.4byte	0x245
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x41
	.4byte	0x22b
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0x48
	.4byte	0x2ef
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x49
	.4byte	0xbd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4a
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x4c
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x8
	.byte	0x4e
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x8
	.byte	0x50
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0x51
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0x54
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x8
	.byte	0x56
	.4byte	0x2ef
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.byte	0x57
	.4byte	0x245
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x8
	.byte	0x58
	.4byte	0xbd
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x8
	.byte	0x59
	.4byte	0x2ff
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x8
	.byte	0x5d
	.4byte	0xbd
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x2ff
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x30f
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0x5e
	.4byte	0x250
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x65
	.4byte	0x33b
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.byte	0x66
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x8
	.byte	0x67
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x68
	.4byte	0x31a
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x356
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.2byte	0x100
	.byte	0x8
	.byte	0x80
	.4byte	0x3a8
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x8
	.byte	0x81
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x8
	.byte	0x82
	.4byte	0x30f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x8
	.byte	0x83
	.4byte	0x3a8
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x8
	.byte	0x84
	.4byte	0x3b8
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x8
	.byte	0x85
	.4byte	0xd3
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x8
	.byte	0x86
	.4byte	0x346
	.byte	0xe0
	.byte	0
	.uleb128 0xd
	.4byte	0x33b
	.4byte	0x3b8
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xd3
	.4byte	0x3c8
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x8
	.byte	0x87
	.4byte	0x356
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x8a
	.4byte	0x3ec
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x8
	.byte	0x90
	.4byte	0x3d3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x428
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF91
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xa
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1b
	.4byte	0x453
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x282
	.byte	0x1
	.4byte	0x485
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x282
	.4byte	0x485
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x282
	.4byte	0xb2
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x285
	.4byte	0x490
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48b
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xd
	.4byte	0xab
	.4byte	0x4a0
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x10b
	.4byte	0x15d
	.byte	0x1
	.4byte	0x4d6
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x10b
	.4byte	0x3ec
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x10b
	.4byte	0x4d6
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10b
	.4byte	0x4e1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x7
	.4byte	0x189
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x20f
	.4byte	0x15d
	.byte	0x1
	.4byte	0x511
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x20f
	.4byte	0x4e1
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x214
	.4byte	0x4dc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x12d
	.4byte	0x15d
	.byte	0x1
	.4byte	0x5e1
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x12d
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x12d
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x12d
	.4byte	0x5e1
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x12d
	.4byte	0x428
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x12d
	.4byte	0x428
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x12d
	.4byte	0x42f
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x12d
	.4byte	0x5e7
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x15d
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x13b
	.4byte	0xde
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x13c
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x13d
	.4byte	0xd3
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.2byte	0x189
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x14a
	.4byte	0x428
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x177
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x17a
	.4byte	0xc8
	.uleb128 0x19
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x17c
	.4byte	0xd3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x112
	.4byte	0x15d
	.byte	0x1
	.4byte	0x62f
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x112
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x112
	.4byte	0x62f
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x112
	.4byte	0x428
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.2byte	0x114
	.4byte	0x15d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x635
	.uleb128 0x7
	.4byte	0x30f
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x15d
	.byte	0x1
	.4byte	0x694
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x694
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x428
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x428
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69a
	.uleb128 0x7
	.4byte	0x33b
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1db
	.4byte	0x428
	.byte	0x1
	.4byte	0x6bd
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1db
	.4byte	0xd3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x428
	.byte	0x1
	.4byte	0x6e7
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x428
	.byte	0
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x191
	.4byte	0x15d
	.byte	0x1
	.4byte	0x789
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x191
	.4byte	0xde
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x191
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x191
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x191
	.4byte	0x428
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x191
	.4byte	0x42f
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x191
	.4byte	0x5e7
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x193
	.4byte	0x789
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x789
	.uleb128 0x19
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x25
	.uleb128 0x19
	.uleb128 0x17
	.string	"w_i"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x25
	.uleb128 0x17
	.string	"w"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x794
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78f
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x21e
	.4byte	0x15d
	.byte	0x1
	.4byte	0x817
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x21e
	.4byte	0x42f
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x21e
	.4byte	0xd3
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x21e
	.4byte	0x4e1
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x220
	.4byte	0xd3
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x221
	.4byte	0xd3
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.2byte	0x225
	.4byte	0x194
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.2byte	0x226
	.4byte	0x15d
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x227
	.4byte	0xbd
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x228
	.4byte	0xbd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x26c
	.4byte	0x15d
	.byte	0x1
	.4byte	0x859
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x26c
	.4byte	0x42f
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x26c
	.4byte	0x4e1
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x26e
	.4byte	0x346
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x275
	.4byte	0xe9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF159
	.byte	0x1
	.byte	0x62
	.4byte	0x15d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120d
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x62
	.4byte	0x3ec
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x62
	.4byte	0x4d6
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0x62
	.4byte	0x4e1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x67
	.4byte	0x428
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x69
	.4byte	0x428
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x6a
	.4byte	0x15d
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x6c
	.4byte	0xd3
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x6d
	.4byte	0x42f
	.4byte	.LLST5
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.byte	0xf5
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9f
	.4byte	0xd3
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0xad
	.4byte	0xd3
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0xbe
	.4byte	0x428
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	0x5ed
	.4byte	.LBB39
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x95
	.4byte	0xa31
	.uleb128 0x22
	.4byte	0x616
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	0x60a
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	0x5fe
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x24
	.4byte	0x622
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x1417
	.4byte	0x992
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0x1422
	.4byte	0x9ab
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL23
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL24
	.4byte	0x1417
	.4byte	0x9ef
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0x140c
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0x1417
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0xdba
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa1
	.4byte	0x5e1
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	0x511
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xa3
	.uleb128 0x22
	.4byte	0x552
	.4byte	.LLST15
	.uleb128 0x22
	.4byte	0x56a
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	0x55e
	.uleb128 0x22
	.4byte	0x546
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	0x53a
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	0x52e
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	0x522
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x24
	.4byte	0x576
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	0x582
	.uleb128 0x24
	.4byte	0x58e
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	0x59a
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	0x5a6
	.uleb128 0x2c
	.4byte	0x5ae
	.uleb128 0x24
	.4byte	0x5ba
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	0x5c6
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	0x63a
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x141
	.4byte	0xbc2
	.uleb128 0x22
	.4byte	0x66f
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	0x663
	.4byte	.LLST27
	.uleb128 0x22
	.4byte	0x657
	.4byte	.LLST28
	.uleb128 0x22
	.4byte	0x64b
	.4byte	.LLST29
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x2c
	.4byte	0x67b
	.uleb128 0x2c
	.4byte	0x687
	.uleb128 0x2e
	.4byte	0x69f
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x1c8
	.4byte	0xb47
	.uleb128 0x2b
	.4byte	0x6b0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL48
	.4byte	0x1417
	.4byte	0xb7e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x140c
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0x1417
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0xcd5
	.uleb128 0x24
	.4byte	0x5d3
	.4byte	.LLST30
	.uleb128 0x2f
	.4byte	0x6e7
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x17f
	.uleb128 0x22
	.4byte	0x734
	.4byte	.LLST31
	.uleb128 0x2b
	.4byte	0x728
	.uleb128 0x22
	.4byte	0x71c
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	0x710
	.4byte	.LLST33
	.uleb128 0x22
	.4byte	0x704
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x6f8
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x24
	.4byte	0x740
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	0x74c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0xc6b
	.uleb128 0x24
	.4byte	0x759
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x24
	.4byte	0x764
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	0x770
	.4byte	.LLST38
	.uleb128 0x24
	.4byte	0x77a
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0x142d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0x1438
	.4byte	0xc85
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0x1417
	.4byte	0xcc9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL78
	.4byte	0x1443
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x144e
	.4byte	0xcfb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x1417
	.4byte	0xd38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0x142d
	.4byte	0xd59
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x1417
	.4byte	0xdad
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL56
	.4byte	0x1459
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x799
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.byte	0xb5
	.4byte	0xe5f
	.uleb128 0x22
	.4byte	0x7c2
	.4byte	.LLST40
	.uleb128 0x2b
	.4byte	0x7b6
	.uleb128 0x22
	.4byte	0x7aa
	.4byte	.LLST41
	.uleb128 0x32
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.uleb128 0x24
	.4byte	0x7ce
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	0x7da
	.4byte	.LLST43
	.uleb128 0x30
	.4byte	0x7e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.4byte	0x7f2
	.4byte	.LLST44
	.uleb128 0x24
	.4byte	0x7fe
	.4byte	.LLST45
	.uleb128 0x24
	.4byte	0x80a
	.4byte	.LLST46
	.uleb128 0x26
	.4byte	.LVL92
	.4byte	0x144e
	.4byte	0xe3d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL97
	.4byte	0x140c
	.uleb128 0x28
	.4byte	.LVL99
	.4byte	0x142d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x817
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.byte	0x1
	.byte	0xcb
	.4byte	0x101c
	.uleb128 0x22
	.4byte	0x834
	.4byte	.LLST47
	.uleb128 0x22
	.4byte	0x828
	.4byte	.LLST48
	.uleb128 0x32
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.uleb128 0x30
	.4byte	0x840
	.uleb128 0x3
	.byte	0x91
	.sleb128 -127
	.uleb128 0x24
	.4byte	0x84c
	.4byte	.LLST49
	.uleb128 0x33
	.4byte	0x453
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.2byte	0x272
	.4byte	0xef7
	.uleb128 0x22
	.4byte	0x46c
	.4byte	.LLST50
	.uleb128 0x22
	.4byte	0x460
	.4byte	.LLST51
	.uleb128 0x32
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x30
	.4byte	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.4byte	.LVL114
	.4byte	0x148a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -127
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x453
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x1
	.2byte	0x278
	.4byte	0xf4e
	.uleb128 0x22
	.4byte	0x46c
	.4byte	.LLST52
	.uleb128 0x22
	.4byte	0x460
	.4byte	.LLST53
	.uleb128 0x32
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.uleb128 0x30
	.4byte	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.4byte	.LVL121
	.4byte	0x148a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL111
	.4byte	0x1495
	.4byte	0xf6f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -127
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL112
	.4byte	0x149e
	.4byte	0xf8a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -127
	.byte	0
	.uleb128 0x26
	.4byte	.LVL115
	.4byte	0x1438
	.4byte	0xf9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL118
	.4byte	0x14a9
	.4byte	0xfbf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -127
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x25
	.4byte	.LVL119
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL120
	.4byte	0x1417
	.4byte	0xff6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x26
	.4byte	.LVL122
	.4byte	0x1443
	.4byte	0x100a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL125
	.4byte	0x1443
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x107a
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0xd6
	.4byte	0xe9
	.4byte	.LLST54
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0x1438
	.4byte	0x1048
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x14b4
	.4byte	0x1069
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 224
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL131
	.4byte	0x1443
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL4
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0x1417
	.4byte	0x10b2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x26
	.4byte	.LVL8
	.4byte	0x1495
	.4byte	0x10cd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x144e
	.4byte	0x10ec
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0x14bd
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0x142d
	.4byte	0x1114
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL30
	.4byte	0x1417
	.4byte	0x1159
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL84
	.4byte	0x1417
	.4byte	0x1190
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x25
	.4byte	.LVL86
	.4byte	0x14c8
	.uleb128 0x25
	.4byte	.LVL102
	.4byte	0x140c
	.uleb128 0x26
	.4byte	.LVL105
	.4byte	0x1417
	.4byte	0x11b5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL108
	.4byte	0x14c8
	.uleb128 0x26
	.4byte	.LVL127
	.4byte	0x149e
	.4byte	0x11d7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL133
	.4byte	0x149e
	.4byte	0x11f0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL134
	.4byte	0x1495
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x102
	.4byte	0x15d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1246
	.uleb128 0x35
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x102
	.4byte	0x4d6
	.4byte	.LLST55
	.uleb128 0x36
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x102
	.4byte	0x4e1
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x37
	.4byte	0x4a0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128d
	.uleb128 0x22
	.4byte	0x4b1
	.4byte	.LLST56
	.uleb128 0x38
	.4byte	0x4bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	0x4c9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LVL153
	.4byte	0x859
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x205
	.4byte	0x15d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1367
	.uleb128 0x35
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x205
	.4byte	0x5e7
	.4byte	.LLST57
	.uleb128 0x39
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x207
	.4byte	0x3c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.2byte	0x208
	.4byte	0x15d
	.uleb128 0x3a
	.4byte	0x4e7
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x208
	.uleb128 0x22
	.4byte	0x4f8
	.4byte	.LLST58
	.uleb128 0x32
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.uleb128 0x2c
	.4byte	0x504
	.uleb128 0x32
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.uleb128 0x22
	.4byte	0x4f8
	.4byte	.LLST58
	.uleb128 0x32
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.uleb128 0x30
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	0x4a0
	.4byte	.LBB97
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x218
	.uleb128 0x22
	.4byte	0x4c9
	.4byte	.LLST60
	.uleb128 0x22
	.4byte	0x4bd
	.4byte	.LLST61
	.uleb128 0x3b
	.4byte	0x4b1
	.byte	0
	.uleb128 0x28
	.4byte	.LVL159
	.4byte	0x859
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x4e7
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f5
	.uleb128 0x22
	.4byte	0x4f8
	.4byte	.LLST62
	.uleb128 0x2c
	.4byte	0x504
	.uleb128 0x32
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.uleb128 0x22
	.4byte	0x4f8
	.4byte	.LLST63
	.uleb128 0x32
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.uleb128 0x30
	.4byte	0x504
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	0x4a0
	.4byte	.LBB109
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.2byte	0x218
	.uleb128 0x22
	.4byte	0x4c9
	.4byte	.LLST64
	.uleb128 0x22
	.4byte	0x4bd
	.4byte	.LLST65
	.uleb128 0x22
	.4byte	0x4b1
	.4byte	.LLST66
	.uleb128 0x28
	.4byte	.LVL164
	.4byte	0x859
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.string	"TAG"
	.byte	0x1
	.byte	0x2b
	.4byte	0x1407
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x3d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x9
	.byte	0x57
	.uleb128 0x3d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x9
	.byte	0x6b
	.uleb128 0x3d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xb
	.byte	0xa2
	.uleb128 0x3d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xa
	.byte	0x1f
	.uleb128 0x3d
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xc
	.byte	0x39
	.uleb128 0x3d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xc
	.byte	0x41
	.uleb128 0x3d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x52
	.uleb128 0x3d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x26
	.uleb128 0x3e
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x43
	.byte	0x61
	.byte	0x6c
	.byte	0x63
	.byte	0x75
	.byte	0x6c
	.byte	0x61
	.byte	0x74
	.byte	0x65
	.byte	0x64
	.byte	0x20
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0
	.uleb128 0x3e
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x45
	.byte	0x78
	.byte	0x70
	.byte	0x65
	.byte	0x63
	.byte	0x74
	.byte	0x65
	.byte	0x64
	.byte	0x20
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
	.byte	0x38
	.uleb128 0x3f
	.4byte	.LASF151
	.4byte	.LASF151
	.uleb128 0x3d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.byte	0x21
	.uleb128 0x3d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xd
	.byte	0x16
	.uleb128 0x3f
	.4byte	.LASF152
	.4byte	.LASF152
	.uleb128 0x3d
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0x1d
	.uleb128 0x3d
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xe
	.byte	0x6f
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
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
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE9
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
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL104
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL135
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LFE9
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x8
	.byte	0xef
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x8
	.byte	0xef
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x3
	.byte	0x8
	.byte	0xef
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x7
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL81
	.2byte	0x7
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL106
	.4byte	.LVL108-1
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL108-1
	.4byte	.LVL109
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL104
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL133
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xa
	.2byte	0x2002
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34-1
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86-1
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL81
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2247
	.sleb128 0
	.4byte	.LVL136
	.4byte	.LVL145
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2247
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x7
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL81
	.2byte	0x7
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x7
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL62
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50-1
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54-1
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL39
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL79
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL62
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2247
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL62
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL62
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL68
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70
	.4byte	.LVL76-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL88
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL88
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xc1
	.byte	0x1c
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xc1
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL95
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97-1
	.4byte	.LVL101
	.2byte	0x1a
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x48
	.byte	0x25
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x27
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x38
	.byte	0x25
	.byte	0x27
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL110
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL110
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL117
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL112
	.4byte	.LVL120
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5220
	.sleb128 0
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5240
	.sleb128 0
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5220
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0x91
	.sleb128 -127
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL114-1
	.4byte	.LVL116
	.2byte	0x4
	.byte	0x91
	.sleb128 -127
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118-1
	.4byte	.LVL126
	.2byte	0x4
	.byte	0x91
	.sleb128 -127
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5240
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL155
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL159-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL159-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL158
	.4byte	.LVL159-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL159-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL158
	.4byte	.LVL159-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL159-1
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164-1
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"verify_image_header"
.LASF93:
	.string	"ESP_IMAGE_BOOTLOADER"
.LASF32:
	.string	"RTCWDT_CPU_RESET"
.LASF121:
	.string	"segment_data_offs"
.LASF138:
	.string	"bootloader_load_image"
.LASF21:
	.string	"POWERON_RESET"
.LASF75:
	.string	"start_addr"
.LASF82:
	.string	"ESP_IMAGE_VERIFY"
.LASF109:
	.string	"sha_handle"
.LASF0:
	.string	"unsigned int"
.LASF54:
	.string	"ESP_IMAGE_FLASH_SIZE_16MB"
.LASF7:
	.string	"__int32_t"
.LASF62:
	.string	"spi_speed"
.LASF42:
	.string	"ESP_IMAGE_SPI_MODE_DIO"
.LASF120:
	.string	"segment"
.LASF74:
	.string	"esp_image_segment_header_t"
.LASF108:
	.string	"do_load"
.LASF97:
	.string	"mode"
.LASF156:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/esp_image_format.c"
.LASF56:
	.string	"ESP_CHIP_ID_ESP32"
.LASF11:
	.string	"__intptr_t"
.LASF52:
	.string	"ESP_IMAGE_FLASH_SIZE_4MB"
.LASF146:
	.string	"bootloader_flash_read"
.LASF140:
	.string	"esp_log_timestamp"
.LASF71:
	.string	"esp_image_header_t"
.LASF84:
	.string	"esp_image_load_mode_t"
.LASF136:
	.string	"end_addr"
.LASF139:
	.string	"esp_image_verify_bootloader"
.LASF45:
	.string	"ESP_IMAGE_SPI_MODE_SLOW_READ"
.LASF18:
	.string	"uint32_t"
.LASF115:
	.string	"offset_page"
.LASF122:
	.string	"map_segment"
.LASF110:
	.string	"checksum"
.LASF95:
	.string	"image_hash"
.LASF104:
	.string	"index"
.LASF107:
	.string	"silent"
.LASF126:
	.string	"process_segment_data"
.LASF63:
	.string	"spi_size"
.LASF154:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"DEEPSLEEP_RESET"
.LASF94:
	.string	"ESP_IMAGE_APPLICATION"
.LASF98:
	.string	"part"
.LASF40:
	.string	"ESP_IMAGE_SPI_MODE_QIO"
.LASF87:
	.string	"ESP_LOG_WARN"
.LASF27:
	.string	"TG1WDT_SYS_RESET"
.LASF155:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF137:
	.string	"is_bootloader"
.LASF55:
	.string	"ESP_IMAGE_FLASH_SIZE_MAX"
.LASF67:
	.string	"chip_id"
.LASF26:
	.string	"TG0WDT_SYS_RESET"
.LASF3:
	.string	"size_t"
.LASF37:
	.string	"offset"
.LASF124:
	.string	"should_load"
.LASF41:
	.string	"ESP_IMAGE_SPI_MODE_QOUT"
.LASF91:
	.string	"_Bool"
.LASF46:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF148:
	.string	"bootloader_sha256_hex_to_str"
.LASF79:
	.string	"image_len"
.LASF101:
	.string	"esp_image_verify_bootloader_data"
.LASF22:
	.string	"SW_RESET"
.LASF25:
	.string	"SDIO_RESET"
.LASF51:
	.string	"ESP_IMAGE_FLASH_SIZE_2MB"
.LASF85:
	.string	"ESP_LOG_NONE"
.LASF33:
	.string	"EXT_CPU_RESET"
.LASF65:
	.string	"wp_pin"
.LASF128:
	.string	"verify_checksum"
.LASF80:
	.string	"image_digest"
.LASF157:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF145:
	.string	"bootloader_munmap"
.LASF15:
	.string	"char"
.LASF103:
	.string	"bootloader_part"
.LASF43:
	.string	"ESP_IMAGE_SPI_MODE_DOUT"
.LASF99:
	.string	"data"
.LASF81:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF130:
	.string	"unpadded_length"
.LASF9:
	.string	"long long int"
.LASF77:
	.string	"segments"
.LASF34:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF30:
	.string	"TGWDT_CPU_RESET"
.LASF111:
	.string	"data_addr"
.LASF147:
	.string	"bootloader_mmap_get_free_pages"
.LASF151:
	.string	"memset"
.LASF48:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF38:
	.string	"size"
.LASF92:
	.string	"bootloader_sha256_handle_t"
.LASF88:
	.string	"ESP_LOG_INFO"
.LASF76:
	.string	"image"
.LASF149:
	.string	"bootloader_sha256_finish"
.LASF106:
	.string	"header"
.LASF141:
	.string	"esp_log_write"
.LASF129:
	.string	"checksum_word"
.LASF19:
	.string	"intptr_t"
.LASF144:
	.string	"bootloader_mmap"
.LASF73:
	.string	"data_len"
.LASF112:
	.string	"is_mapping"
.LASF6:
	.string	"short int"
.LASF57:
	.string	"ESP_CHIP_ID_INVALID"
.LASF12:
	.string	"long int"
.LASF72:
	.string	"load_addr"
.LASF134:
	.string	"hash"
.LASF131:
	.string	"length"
.LASF61:
	.string	"spi_mode"
.LASF31:
	.string	"SW_CPU_RESET"
.LASF150:
	.string	"memcmp"
.LASF83:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF102:
	.string	"hash_print"
.LASF113:
	.string	"free_page_count"
.LASF53:
	.string	"ESP_IMAGE_FLASH_SIZE_8MB"
.LASF4:
	.string	"__uint8_t"
.LASF28:
	.string	"RTCWDT_SYS_RESET"
.LASF158:
	.string	"debug_log_hash"
.LASF59:
	.string	"magic"
.LASF58:
	.string	"esp_chip_id_t"
.LASF35:
	.string	"RTCWDT_RTC_RESET"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF20:
	.string	"NO_MEAN"
.LASF125:
	.string	"load_rtc_memory"
.LASF78:
	.string	"segment_data"
.LASF90:
	.string	"ESP_LOG_VERBOSE"
.LASF17:
	.string	"int32_t"
.LASF159:
	.string	"image_load"
.LASF5:
	.string	"unsigned char"
.LASF132:
	.string	"calc"
.LASF8:
	.string	"__uint32_t"
.LASF143:
	.string	"bootloader_sha256_data"
.LASF68:
	.string	"min_chip_rev"
.LASF23:
	.string	"OWDT_RESET"
.LASF119:
	.string	"verify_segment_header"
.LASF36:
	.string	"esp_err_t"
.LASF127:
	.string	"SHA_CHUNK"
.LASF70:
	.string	"hash_appended"
.LASF135:
	.string	"next_addr"
.LASF66:
	.string	"spi_pin_drv"
.LASF96:
	.string	"label"
.LASF89:
	.string	"ESP_LOG_DEBUG"
.LASF44:
	.string	"ESP_IMAGE_SPI_MODE_FAST_READ"
.LASF29:
	.string	"INTRUSION_RESET"
.LASF105:
	.string	"flash_addr"
.LASF123:
	.string	"should_map"
.LASF153:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF116:
	.string	"process_segment"
.LASF152:
	.string	"memcpy"
.LASF49:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF64:
	.string	"entry_addr"
.LASF69:
	.string	"reserved"
.LASF114:
	.string	"data_len_remain"
.LASF133:
	.string	"verify_simple_hash"
.LASF118:
	.string	"src_addr"
.LASF47:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF50:
	.string	"ESP_IMAGE_FLASH_SIZE_1MB"
.LASF142:
	.string	"bootloader_common_check_chip_validity"
.LASF39:
	.string	"esp_partition_pos_t"
.LASF100:
	.string	"esp_image_verify"
.LASF86:
	.string	"ESP_LOG_ERROR"
.LASF60:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
