	.file	"esp_ota_ops.c"
	.text
.Ltext0:
	.section	.text.image_validate,"ax",@progbits
	.literal_position
	.literal .LC0, 5379
	.align	4
	.type	image_validate, @function
image_validate:
.LFB35:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
	.loc 1 100 0
.LVL0:
	entry	sp, 304
.LCFI0:
	.loc 1 102 0
	l32i.n	a8, a2, 8
	l32i.n	a2, a2, 12
.LVL1:
	.loc 1 107 0
	mov.n	a12, sp
	addmi	a11, sp, 0x100
	mov.n	a10, a3
	.loc 1 102 0
	s32i	a2, sp, 260
	s32i	a8, sp, 256
	.loc 1 107 0
	call8	esp_image_verify
.LVL2:
	.loc 1 108 0
	l32r	a2, .LC0
	movnez	a10, a2, a10
	.loc 1 119 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	image_validate, .-image_validate
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"esp_ota_ops"
.LC3:
	.string	"\033[0;31mE (%d) %s: not found otadata\033[0m\n"
.LC5:
	.string	"\033[0;31mE (%d) %s: mmap otadata filed. Err=0x%8x\033[0m\n"
	.section	.text.read_otadata,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.type	read_otadata, @function
read_otadata:
.LFB34:
	.loc 1 77 0
.LVL3:
	entry	sp, 48
.LCFI1:
	.loc 1 78 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL4:
	mov.n	a3, a10
.LVL5:
	.loc 1 80 0
	bnez.n	a10, .L5
	.loc 1 81 0 discriminator 2
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	j	.L8
.L5:
	.loc 1 86 0
	movi.n	a4, 0
	.loc 1 87 0
	l32i.n	a12, a10, 12
	addi.n	a15, sp, 4
	mov.n	a14, sp
	mov.n	a13, a4
	mov.n	a11, a4
	.loc 1 86 0
	s32i.n	a4, sp, 0
	.loc 1 87 0
	call8	esp_partition_mmap
.LVL8:
	mov.n	a5, a10
.LVL9:
	.loc 1 88 0
	beq	a10, a4, .L7
	.loc 1 89 0 discriminator 2
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC2
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 90 0 discriminator 2
	mov.n	a2, a4
.LVL12:
	retw.n
.LVL13:
.L7:
	.loc 1 92 0
	l32i.n	a4, sp, 0
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a2
	call8	memcpy
.LVL14:
	.loc 1 93 0
	movi.n	a12, 0x20
	addmi	a11, a4, 0x1000
	add.n	a10, a2, a12
	call8	memcpy
.LVL15:
	.loc 1 94 0
	l32i.n	a10, sp, 4
	call8	spi_flash_munmap
.LVL16:
.L8:
	.loc 1 96 0
	mov.n	a2, a3
.LVL17:
	.loc 1 97 0
	retw.n
.LFE34:
	.size	read_otadata, .-read_otadata
	.section	.text.check_invalid_otadata,"ax",@progbits
	.align	4
	.type	check_invalid_otadata, @function
check_invalid_otadata:
.LFB53:
	.loc 1 709 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 711 0
	l32i.n	a3, a2, 0
	bnei	a3, -1, .L10
	j	.L14
.L10:
	.loc 1 711 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	bootloader_common_ota_select_crc
.LVL19:
	.loc 1 710 0 is_stmt 1 discriminator 1
	bne	a3, a10, .L14
	.loc 1 711 0 discriminator 4
	l32i.n	a8, a2, 24
	movi.n	a2, 1
.LVL20:
	addi	a8, a8, -3
	bltui	a8, 2, .L11
.L14:
	movi.n	a2, 0
.L11:
	.loc 1 714 0
	extui	a2, a2, 0, 1
	retw.n
.LFE53:
	.size	check_invalid_otadata, .-check_invalid_otadata
	.section	.rodata.str1.1
.LC7:
	.string	"ota_app_count < 16 && \"must erase the partition before writing to it\""
.LC10:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
	.section	.text.get_ota_partition_count,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC9, __func__$5913
	.literal .LC11, .LC10
	.align	4
	.type	get_ota_partition_count, @function
get_ota_partition_count:
.LFB41:
	.loc 1 329 0
	entry	sp, 32
.LCFI3:
.LVL21:
	.loc 1 331 0
	movi.n	a2, 0
	j	.L16
.LVL22:
.L17:
	addi.n	a2, a2, 1
.LVL23:
	.loc 1 332 0
	movi.n	a8, 0x11
	bne	a2, a8, .L16
.LBB12:
.LBB13:
	l32r	a13, .LC8
	l32r	a12, .LC9
	l32r	a10, .LC11
	movi	a11, 0x14c
	call8	__assert_func
.LVL24:
.L16:
.LBE13:
.LBE12:
	.loc 1 331 0
	movi.n	a12, 0
	addi	a11, a2, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL25:
	bnez.n	a10, .L17
	.loc 1 336 0
	extui	a2, a2, 0, 8
.LVL26:
	retw.n
.LFE41:
	.size	get_ota_partition_count, .-get_ota_partition_count
	.section	.rodata.str1.1
.LC13:
	.string	"\033[0;31mE (%d) %s: invalid partition table, no app partitions\033[0m\n"
	.section	.text.find_default_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC12, .LC1
	.literal .LC14, .LC13
	.align	4
	.type	find_default_boot_partition, @function
find_default_boot_partition:
.LFB44:
	.loc 1 429 0
	entry	sp, 32
.LCFI4:
	.loc 1 433 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL27:
	mov.n	a2, a10
	.loc 1 434 0
	bnez.n	a10, .L20
	movi.n	a2, 0x10
.L21:
.LVL28:
.LBB18:
	.loc 1 440 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a12
.LVL29:
	call8	esp_partition_find_first
.LVL30:
	.loc 1 441 0
	bnez.n	a10, .L23
	.loc 1 439 0 discriminator 2
	addi.n	a2, a2, 1
.LVL31:
	bnei	a2, 32, .L21
.LBE18:
	.loc 1 447 0
	mov.n	a11, a2
	mov.n	a12, a10
	call8	esp_partition_find_first
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 448 0
	bnez.n	a10, .L20
.LBB19:
.LBB20:
	.loc 1 452 0
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC12
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	retw.n
.LVL36:
.L23:
.LBE20:
.LBE19:
.LBB21:
	.loc 1 440 0
	mov.n	a2, a10
.LVL37:
.L20:
.LBE21:
	.loc 1 454 0
	retw.n
.LFE44:
	.size	find_default_boot_partition, .-find_default_boot_partition
	.section	.text.rewrite_ota_seq$part$2,"ax",@progbits
	.literal_position
	.literal .LC15, 4096
	.align	4
	.type	rewrite_ota_seq$part$2, @function
rewrite_ota_seq$part$2:
.LFB60:
	.loc 1 312 0
.LVL38:
	entry	sp, 32
.LCFI5:
	.loc 1 318 0
	slli	a6, a4, 5
	add.n	a2, a2, a6
.LVL39:
	s32i.n	a3, a2, 0
	.loc 1 319 0
	mov.n	a10, a2
	call8	bootloader_common_ota_select_crc
.LVL40:
	.loc 1 320 0
	slli	a4, a4, 12
.LVL41:
	l32r	a12, .LC15
	.loc 1 319 0
	s32i.n	a10, a2, 28
	.loc 1 320 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	esp_partition_erase_range
.LVL42:
	.loc 1 321 0
	bnez.n	a10, .L27
	.loc 1 324 0
	movi.n	a13, 0x20
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a5
.LVL43:
	call8	esp_partition_write
.LVL44:
.L27:
	.loc 1 326 0
	mov.n	a2, a10
	retw.n
.LFE60:
	.size	rewrite_ota_seq$part$2, .-rewrite_ota_seq$part$2
	.section	.rodata.str1.1
.LC18:
	.string	"phys_offs != SPI_FLASH_CACHE2PHYS_FAIL"
.LC22:
	.string	"it != NULL"
	.section	.text.esp_ota_get_running_partition,"ax",@progbits
	.literal_position
	.literal .LC16, curr_partition$5954
	.literal .LC17, esp_ota_get_running_partition
	.literal .LC19, .LC18
	.literal .LC20, __func__$5956
	.literal .LC21, .LC10
	.literal .LC23, .LC22
	.align	4
	.global	esp_ota_get_running_partition
	.type	esp_ota_get_running_partition, @function
esp_ota_get_running_partition:
.LFB46:
	.loc 1 487 0
	entry	sp, 32
.LCFI6:
	.loc 1 494 0
	l32r	a4, .LC16
	l32i.n	a2, a4, 0
	bnez.n	a2, .L30
.LBB25:
.LBB26:
	.loc 1 500 0
	l32r	a10, .LC17
	call8	spi_flash_cache2phys
.LVL45:
	mov.n	a5, a10
.LVL46:
	.loc 1 502 0
	bnei	a10, -1, .L31
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0x1f6
	j	.L37
.L31:
	.loc 1 504 0
	mov.n	a12, a2
	movi	a11, 0xff
	mov.n	a10, a2
	call8	esp_partition_find
.LVL47:
	mov.n	a3, a10
.LVL48:
	.loc 1 507 0
	bnez.n	a10, .L35
	l32r	a13, .LC23
	l32r	a12, .LC20
	movi	a11, 0x1fb
.LVL49:
.L37:
	l32r	a10, .LC21
	call8	__assert_func
.LVL50:
.L35:
.LBB27:
	.loc 1 510 0
	mov.n	a10, a3
	call8	esp_partition_get
.LVL51:
	.loc 1 511 0
	l32i.n	a9, a10, 8
	.loc 1 510 0
	mov.n	a2, a10
.LVL52:
	.loc 1 512 0
	mov.n	a10, a3
	.loc 1 511 0
	bltu	a5, a9, .L33
	l32i.n	a8, a2, 12
	add.n	a8, a9, a8
	bgeu	a5, a8, .L33
	.loc 1 512 0
	call8	esp_partition_iterator_release
.LVL53:
	.loc 1 513 0
	s32i.n	a2, a4, 0
	retw.n
.L33:
	.loc 1 516 0
	call8	esp_partition_next
.LVL54:
	mov.n	a3, a10
.LVL55:
.LBE27:
	.loc 1 509 0
	bnez.n	a10, .L35
	.loc 1 519 0
	call8	abort
.LVL56:
.L30:
.LBE26:
.LBE25:
	.loc 1 520 0
	retw.n
.LFE46:
	.size	esp_ota_get_running_partition, .-esp_ota_get_running_partition
	.section	.text.esp_ota_begin,"ax",@progbits
	.literal_position
	.literal .LC24, 5377
	.literal .LC25, 4095
	.literal .LC26, -4096
	.literal .LC27, s_ota_ops_entries_head
	.literal .LC28, s_ota_ops_last_handle
	.align	4
	.global	esp_ota_begin
	.type	esp_ota_begin, @function
esp_ota_begin:
.LFB37:
	.loc 1 132 0
.LVL57:
	entry	sp, 48
.LCFI7:
.LVL58:
	.loc 1 136 0
	movi.n	a8, 1
	movi.n	a6, 0
	moveqz	a6, a8, a2
	extui	a5, a6, 0, 8
	bnez.n	a5, .L42
	moveqz	a5, a8, a4
	beqz.n	a5, .L39
.LVL59:
.L42:
	.loc 1 137 0
	movi	a2, 0x102
	retw.n
.LVL60:
.L39:
	.loc 1 140 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL61:
	mov.n	a5, a10
.LVL62:
	.loc 1 142 0
	movi	a2, 0x105
	.loc 1 141 0
	beqz.n	a10, .L56
.LVL63:
.LBB31:
.LBB32:
	.loc 1 69 0
	l32i.n	a11, a10, 0
	bnez.n	a11, .L42
	.loc 1 71 0
	l32i.n	a2, a10, 4
	movi.n	a6, 0xf
	addi	a2, a2, -16
	bltu	a6, a2, .L42
	j	.L43
.LVL64:
.L60:
.LBE32:
.LBE31:
	.loc 1 165 0
	addi.n	a6, a3, -1
	movi.n	a2, -3
	bgeu	a2, a6, .L44
	.loc 1 166 0
	l32i.n	a12, a5, 12
	j	.L61
.L44:
.LVL65:
.LBB33:
	.loc 1 169 0
	l32r	a2, .LC25
	l32r	a12, .LC26
	add.n	a2, a3, a2
	and	a12, a2, a12
.LVL66:
.L61:
	mov.n	a10, a5
.LVL67:
	call8	esp_partition_erase_range
.LVL68:
.LBE33:
	mov.n	a2, a10
	.loc 1 172 0
	bnez.n	a10, .L56
	.loc 1 176 0
	movi.n	a11, 1
	movi.n	a10, 0x2c
.LVL69:
	call8	calloc
.LVL70:
	.loc 1 178 0
	movi	a2, 0x101
.LVL71:
	.loc 1 177 0
	beqz.n	a10, .L56
	.loc 1 181 0
	l32r	a2, .LC27
	l32i.n	a8, a2, 0
	s32i.n	a8, a10, 36
	beqz.n	a8, .L46
	.loc 1 181 0 discriminator 1
	addi	a9, a10, 36
	s32i.n	a9, a8, 40
.L46:
	.loc 1 181 0 is_stmt 0 discriminator 3
	s32i.n	a10, a2, 0
	s32i.n	a2, a10, 40
	.loc 1 183 0 is_stmt 1 discriminator 3
	movi.n	a2, -3
	bgeu	a2, a6, .L47
	.loc 1 184 0
	l32i.n	a2, a5, 12
	s32i.n	a2, a10, 8
	j	.L48
.L47:
	.loc 1 186 0
	s32i.n	a3, a10, 8
.L48:
	.loc 1 190 0
	l32r	a3, .LC28
.LVL72:
	.loc 1 189 0
	s32i.n	a5, a10, 4
	.loc 1 190 0
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a10, 0
	.loc 1 191 0
	s32i.n	a2, a4, 0
	.loc 1 192 0
	movi.n	a2, 0
	retw.n
.LVL73:
.L43:
	.loc 1 149 0
	s32i.n	a11, sp, 0
	call8	esp_ota_get_running_partition
.LVL74:
	.loc 1 150 0
	l32i.n	a11, sp, 0
	.loc 1 151 0
	l32r	a2, .LC24
	.loc 1 150 0
	bne	a5, a10, .L60
.LVL75:
.L56:
	.loc 1 193 0
	retw.n
.LFE37:
	.size	esp_ota_begin, .-esp_ota_begin
	.section	.rodata.str1.1
.LC31:
	.string	"\033[0;31mE (%d) %s: write data is invalid\033[0m\n"
.LC34:
	.string	"it->erased_size > 0 && \"must erase the partition before writing to it\""
.LC38:
	.string	"\033[0;31mE (%d) %s: OTA image has invalid magic byte (expected 0xE9, saw 0x%02x)\033[0m\n"
.LC41:
	.string	"\033[0;31mE (%d) %s: not found the handle\033[0m\n"
	.section	.text.esp_ota_write,"ax",@progbits
	.literal_position
	.literal .LC29, 5379
	.literal .LC30, .LC1
	.literal .LC32, .LC31
	.literal .LC33, s_ota_ops_entries_head
	.literal .LC35, .LC34
	.literal .LC36, __func__$5886
	.literal .LC37, .LC10
	.literal .LC39, .LC38
	.literal .LC40, 1073061888
	.literal .LC42, .LC41
	.align	4
	.global	esp_ota_write
	.type	esp_ota_write, @function
esp_ota_write:
.LFB38:
	.loc 1 196 0
.LVL76:
	entry	sp, 48
.LCFI8:
.LVL77:
	.loc 1 201 0
	bnez.n	a3, .L63
	.loc 1 202 0 discriminator 2
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC30
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC32
	j	.L96
.L63:
	.loc 1 207 0
	l32r	a5, .LC33
	l32i.n	a5, a5, 0
.LVL79:
	j	.L65
.L74:
	.loc 1 208 0
	l32i.n	a6, a5, 0
	bne	a6, a2, .L66
	.loc 1 210 0
	l32i.n	a2, a5, 8
.LVL80:
	bnez.n	a2, .L67
	.loc 1 210 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	l32r	a10, .LC37
	movi	a11, 0xd2
	call8	__assert_func
.LVL81:
.L67:
	.loc 1 211 0 is_stmt 1
	l32i.n	a2, a5, 12
	bnez.n	a2, .L68
	.loc 1 211 0 is_stmt 0 discriminator 1
	l8ui	a6, a5, 16
	movi.n	a7, 1
	mov.n	a8, a2
	moveqz	a8, a7, a6
	extui	a6, a8, 0, 8
	beqz.n	a6, .L68
	movnez	a2, a7, a4
	extui	a2, a2, 0, 8
	beqz.n	a2, .L68
	.loc 1 211 0 discriminator 3
	l8ui	a6, a3, 0
	movi	a2, 0xe9
	beq	a6, a2, .L68
	.loc 1 212 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC30
	l8ui	a15, a3, 0
	l32r	a12, .LC39
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a7
	call8	esp_log_write
.LVL83:
	.loc 1 213 0 discriminator 2
	l32r	a10, .LC29
	j	.L64
.L68:
.LBB37:
.LBB38:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a2, .LC40
	.loc 2 41 0
	movi.n	a6, 0
	.loc 2 39 0
	memw
	l32i.n	a10, a2, 0
	.loc 2 44 0
	movi.n	a7, 1
	.loc 2 39 0
	extui	a2, a10, 20, 7
.LVL84:
	j	.L69
.LVL85:
.L71:
	.loc 2 43 0
	bbci	a2, 0, .L70
	.loc 2 44 0
	xor	a6, a6, a7
.LVL86:
	extui	a6, a6, 0, 8
.LVL87:
.L70:
	.loc 2 46 0
	srli	a2, a2, 1
.LVL88:
.L69:
	.loc 2 42 0
	bnez.n	a2, .L71
.LBE38:
.LBE37:
	.loc 1 216 0
	beqz.n	a6, .L72
.LBB39:
	.loc 1 221 0
	l8ui	a10, a5, 16
	beqz.n	a10, .L73
	.loc 1 222 0
	movi.n	a6, 0x10
.LVL89:
	sub	a6, a6, a10
	.loc 1 223 0
	addi	a8, a5, 17
	.loc 1 222 0
	minu	a6, a6, a4
.LVL90:
	.loc 1 223 0
	add.n	a10, a8, a10
	mov.n	a12, a6
	mov.n	a11, a3
	s32i.n	a8, sp, 0
	call8	memcpy
.LVL91:
	.loc 1 224 0
	l8ui	a7, a5, 16
	.loc 1 226 0
	mov.n	a10, a2
	.loc 1 224 0
	add.n	a7, a6, a7
	extui	a7, a7, 0, 8
	s8i	a7, a5, 16
	.loc 1 225 0
	l32i.n	a8, sp, 0
	bnei	a7, 16, .L64
	.loc 1 229 0
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	mov.n	a12, a8
	mov.n	a13, a7
	call8	esp_partition_write
.LVL92:
	.loc 1 230 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L64
	.loc 1 234 0
	mov.n	a12, a7
	movi	a11, 0xff
	mov.n	a10, a8
.LVL93:
	call8	memset
.LVL94:
	.loc 1 235 0
	l32i.n	a2, a5, 12
.LVL95:
	.loc 1 236 0
	add.n	a3, a3, a6
.LVL96:
	.loc 1 235 0
	addi	a2, a2, 16
	s32i.n	a2, a5, 12
	.loc 1 237 0
	sub	a4, a4, a6
.LVL97:
.L73:
	.loc 1 241 0
	extui	a12, a4, 0, 4
	s8i	a12, a5, 16
	.loc 1 242 0
	beqz.n	a12, .L72
	.loc 1 243 0
	sub	a4, a4, a12
.LVL98:
	.loc 1 244 0
	add.n	a11, a3, a4
	addi	a10, a5, 17
	call8	memcpy
.LVL99:
.L72:
.LBE39:
	.loc 1 248 0
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	mov.n	a13, a4
	mov.n	a12, a3
	call8	esp_partition_write
.LVL100:
	.loc 1 249 0
	bnez.n	a10, .L64
	.loc 1 250 0
	l32i.n	a2, a5, 12
	add.n	a4, a2, a4
.LVL101:
	s32i.n	a4, a5, 12
	j	.L64
.LVL102:
.L66:
	.loc 1 207 0 discriminator 2
	l32i.n	a5, a5, 36
.LVL103:
.L65:
	.loc 1 207 0 discriminator 1
	bnez.n	a5, .L74
	.loc 1 257 0 discriminator 2
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC30
	l32r	a12, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
.LVL105:
.L96:
	movi.n	a10, 1
	call8	esp_log_write
.LVL106:
	.loc 1 258 0 discriminator 2
	movi	a10, 0x102
.LVL107:
.L64:
	.loc 1 259 0
	mov.n	a2, a10
	retw.n
.LFE38:
	.size	esp_ota_write, .-esp_ota_write
	.section	.text.esp_ota_end,"ax",@progbits
	.literal_position
	.literal .LC43, 5379
	.literal .LC44, s_ota_ops_entries_head
	.align	4
	.global	esp_ota_end
	.type	esp_ota_end, @function
esp_ota_end:
.LFB39:
	.loc 1 262 0
.LVL108:
	entry	sp, 304
.LCFI9:
.LVL109:
	.loc 1 266 0
	l32r	a3, .LC44
	l32i.n	a3, a3, 0
.LVL110:
	j	.L98
.L100:
	.loc 1 267 0
	l32i.n	a8, a3, 0
	beq	a8, a2, .L99
	.loc 1 266 0 discriminator 2
	l32i.n	a3, a3, 36
.LVL111:
.L98:
	.loc 1 266 0 discriminator 1
	bnez.n	a3, .L100
	.loc 1 273 0
	movi	a2, 0x105
.LVL112:
	retw.n
.L119:
	.loc 1 279 0 discriminator 1
	l32i.n	a11, a3, 12
	beqz.n	a11, .L102
	.loc 1 284 0
	l8ui	a2, a3, 16
	beqz.n	a2, .L103
	.loc 1 286 0
	l32i.n	a10, a3, 4
	movi.n	a13, 0x10
	addi	a12, a3, 17
	call8	esp_partition_write
.LVL113:
	.loc 1 288 0
	movi	a2, 0x103
	.loc 1 287 0
	bnez.n	a10, .L102
	.loc 1 291 0
	l32i.n	a2, a3, 12
	.loc 1 292 0
	s8i	a10, a3, 16
	.loc 1 291 0
	addi	a2, a2, 16
	s32i.n	a2, a3, 12
.LVL114:
.L103:
	.loc 1 297 0
	l32i.n	a2, a3, 4
	.loc 1 301 0
	mov.n	a12, sp
	.loc 1 296 0
	l32i.n	a8, a2, 8
	l32i.n	a2, a2, 12
	.loc 1 301 0
	addmi	a11, sp, 0x100
	movi.n	a10, 0
	.loc 1 296 0
	s32i	a8, sp, 256
	s32i	a2, sp, 260
	.loc 1 301 0
	call8	esp_image_verify
.LVL115:
	.loc 1 302 0
	l32r	a8, .LC43
	movi.n	a2, 0
	movnez	a2, a8, a10
.LVL116:
.L102:
	.loc 1 307 0
	l32i.n	a8, a3, 36
	beqz.n	a8, .L104
	.loc 1 307 0 discriminator 1
	l32i.n	a9, a3, 40
	s32i.n	a9, a8, 40
.L104:
	.loc 1 307 0 is_stmt 0 discriminator 3
	l32i.n	a9, a3, 40
	.loc 1 308 0 is_stmt 1 discriminator 3
	mov.n	a10, a3
	.loc 1 307 0 discriminator 3
	s32i.n	a8, a9, 0
	.loc 1 308 0 discriminator 3
	call8	free
.LVL117:
	.loc 1 309 0 discriminator 3
	retw.n
.LVL118:
.L99:
	.loc 1 279 0
	l32i.n	a8, a3, 8
	.loc 1 280 0
	movi	a2, 0x102
.LVL119:
	.loc 1 279 0
	beqz.n	a8, .L102
	j	.L119
.LFE39:
	.size	esp_ota_end, .-esp_ota_end
	.section	.text.esp_ota_set_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC45, 5379
	.align	4
	.global	esp_ota_set_boot_partition
	.type	esp_ota_set_boot_partition, @function
esp_ota_set_boot_partition:
.LFB43:
	.loc 1 386 0
.LVL120:
	entry	sp, 96
.LCFI10:
	.loc 1 387 0
	bnez.n	a2, .L121
.L123:
	.loc 1 388 0
	movi	a8, 0x102
	j	.L122
.L121:
	.loc 1 391 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	image_validate
.LVL121:
	.loc 1 392 0
	l32r	a8, .LC45
	.loc 1 391 0
	bnez.n	a10, .L122
	.loc 1 396 0
	l32i.n	a4, a2, 0
	bnez.n	a4, .L123
	.loc 1 397 0
	l32i.n	a3, a2, 4
	bnez.n	a3, .L124
.LBB49:
	.loc 1 398 0
	mov.n	a12, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL122:
	.loc 1 402 0
	movi	a8, 0x105
	.loc 1 399 0
	beqz.n	a10, .L122
	.loc 1 400 0
	l32i.n	a12, a10, 12
	mov.n	a11, a3
	call8	esp_partition_erase_range
.LVL123:
	j	.L135
.L124:
.LVL124:
.LBE49:
.LBB50:
.LBB51:
	.loc 1 341 0
	mov.n	a10, sp
	call8	read_otadata
.LVL125:
	mov.n	a2, a10
.LVL126:
	.loc 1 343 0
	movi	a8, 0x105
	.loc 1 342 0
	beqz.n	a10, .L122
	.loc 1 346 0
	call8	get_ota_partition_count
.LVL127:
	.loc 1 347 0
	extui	a3, a3, 0, 4
.LVL128:
	.loc 1 346 0
	mov.n	a5, a10
.LVL129:
	.loc 1 348 0
	movi	a8, 0x102
	.loc 1 347 0
	bgeu	a3, a10, .L122
	.loc 1 367 0
	mov.n	a10, sp
	call8	bootloader_common_get_active_otadata
.LVL130:
	addi.n	a11, a3, 1
	.loc 1 368 0
	beqi	a10, -1, .L126
.LBB52:
	.loc 1 369 0
	slli	a3, a10, 5
	add.n	a3, sp, a3
	l32i.n	a3, a3, 0
.LVL131:
	.loc 1 371 0
	remu	a11, a11, a5
	j	.L127
.LVL132:
.L128:
	add.n	a11, a11, a5
.L127:
	bltu	a11, a3, .L128
	extui	a10, a10, 0, 1
.LVL133:
	movi.n	a12, 1
	xor	a12, a10, a12
.LVL134:
	.loc 1 375 0
	slli	a3, a12, 5
.LVL135:
	add.n	a3, sp, a3
	movi.n	a4, -1
	s32i.n	a4, a3, 24
.LVL136:
.LBB53:
.LBB54:
	mov.n	a13, a2
	j	.L136
.LVL137:
.L126:
.LBE54:
.LBE53:
.LBE52:
.LBB55:
	.loc 1 380 0
	s32i.n	a10, sp, 24
.LVL138:
.LBB56:
.LBB57:
	mov.n	a13, a2
	mov.n	a12, a4
.LVL139:
.L136:
	mov.n	a10, sp
	call8	rewrite_ota_seq$part$2
.LVL140:
.L135:
	mov.n	a8, a10
.L122:
.LBE57:
.LBE56:
.LBE55:
.LBE51:
.LBE50:
	.loc 1 426 0
	mov.n	a2, a8
	retw.n
.LFE43:
	.size	esp_ota_set_boot_partition, .-esp_ota_set_boot_partition
	.section	.rodata.str1.1
.LC47:
	.string	"\033[0;31mE (%d) %s: ota data invalid, no current app. Assuming factory\033[0m\n"
	.section	.text.esp_ota_get_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC46, .LC1
	.literal .LC48, .LC47
	.align	4
	.global	esp_ota_get_boot_partition
	.type	esp_ota_get_boot_partition, @function
esp_ota_get_boot_partition:
.LFB45:
	.loc 1 457 0
	entry	sp, 96
.LCFI11:
	.loc 1 459 0
	mov.n	a10, sp
	call8	read_otadata
.LVL141:
	.loc 1 460 0
	beqz.n	a10, .L138
	.loc 1 464 0
	call8	get_ota_partition_count
.LVL142:
	mov.n	a2, a10
.LVL143:
	.loc 1 467 0
	mov.n	a10, sp
	call8	bootloader_common_ota_select_invalid
.LVL144:
	bnez.n	a10, .L139
.L142:
	.loc 1 468 0
	beqz.n	a2, .L152
	j	.L151
.L139:
	.loc 1 468 0 is_stmt 0 discriminator 1
	addi	a10, sp, 32
	call8	bootloader_common_ota_select_invalid
.LVL145:
	.loc 1 467 0 is_stmt 1 discriminator 1
	beqz.n	a10, .L142
	j	.L152
.L151:
.LBB58:
	.loc 1 473 0
	mov.n	a10, sp
	call8	bootloader_common_get_active_otadata
.LVL146:
	.loc 1 474 0
	beqi	a10, -1, .L143
.LVL147:
.LBB59:
	.loc 1 475 0
	slli	a10, a10, 5
.LVL148:
	add.n	a10, sp, a10
.LVL149:
	.loc 1 477 0
	l32i.n	a11, a10, 0
	movi.n	a12, 0
	addi.n	a11, a11, -1
	remu	a11, a11, a2
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL150:
	j	.L138
.LVL151:
.L143:
.LBE59:
	.loc 1 479 0 discriminator 2
	call8	esp_log_timestamp
.LVL152:
	l32r	a11, .LC46
	l32r	a12, .LC48
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL153:
.L152:
	.loc 1 480 0 discriminator 2
	call8	find_default_boot_partition
.LVL154:
.L138:
.LBE58:
	.loc 1 483 0
	mov.n	a2, a10
	retw.n
.LFE45:
	.size	esp_ota_get_boot_partition, .-esp_ota_get_boot_partition
	.section	.rodata.str1.1
.LC49:
	.string	"start_from != NULL"
	.section	.text.esp_ota_get_next_update_partition,"ax",@progbits
	.literal_position
	.literal .LC50, .LC49
	.literal .LC51, __func__$5967
	.literal .LC52, .LC10
	.align	4
	.global	esp_ota_get_next_update_partition
	.type	esp_ota_get_next_update_partition, @function
esp_ota_get_next_update_partition:
.LFB47:
	.loc 1 524 0
.LVL155:
	entry	sp, 32
.LCFI12:
.LVL156:
	.loc 1 527 0
	bnez.n	a2, .L154
	.loc 1 528 0
	call8	esp_ota_get_running_partition
.LVL157:
	j	.L168
.L154:
	.loc 1 530 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL158:
.L168:
	movi.n	a5, 0
	mov.n	a4, a10
.LVL159:
	movi.n	a3, 0x10
	mov.n	a2, a5
	.loc 1 532 0
	bne	a10, a5, .L165
	.loc 1 532 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	l32r	a10, .LC52
	movi	a11, 0x214
	call8	__assert_func
.LVL160:
.L165:
.LBB60:
.LBB61:
	.loc 1 547 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL161:
	.loc 1 548 0
	beqz.n	a10, .L157
	.loc 1 552 0
	moveqz	a2, a10, a2
.LVL162:
	.loc 1 558 0
	beq	a4, a10, .L161
	.loc 1 562 0
	beqz.n	a5, .L157
	j	.L162
.L161:
	.loc 1 560 0
	movi.n	a5, 1
.LVL163:
.L157:
.LBE61:
	.loc 1 546 0
	addi.n	a3, a3, 1
.LVL164:
	.loc 1 544 0
	bnei	a3, 32, .L165
	retw.n
.L162:
.LBB62:
	.loc 1 547 0
	mov.n	a2, a10
.LVL165:
.LBE62:
.LBE60:
	.loc 1 569 0
	retw.n
.LFE47:
	.size	esp_ota_get_next_update_partition, .-esp_ota_get_next_update_partition
	.section	.text.esp_ota_get_partition_description,"ax",@progbits
	.literal_position
	.literal .LC53, -1412606926
	.align	4
	.global	esp_ota_get_partition_description
	.type	esp_ota_get_partition_description, @function
esp_ota_get_partition_description:
.LFB48:
	.loc 1 572 0
.LVL166:
	entry	sp, 32
.LCFI13:
	.loc 1 573 0
	movi.n	a11, 1
	movi.n	a9, 0
	moveqz	a9, a11, a2
	extui	a8, a9, 0, 8
	.loc 1 572 0
	mov.n	a10, a2
	.loc 1 573 0
	bnez.n	a8, .L171
	moveqz	a8, a11, a3
	bnez.n	a8, .L171
	.loc 1 577 0
	l32i.n	a9, a2, 0
	.loc 1 578 0
	movi	a2, 0x106
.LVL167:
	.loc 1 577 0
	bnez.n	a9, .L170
	.loc 1 581 0
	movi	a13, 0x100
	mov.n	a12, a3
	movi.n	a11, 0x20
	call8	esp_partition_read
.LVL168:
	mov.n	a2, a10
.LVL169:
	.loc 1 582 0
	bnez.n	a10, .L170
	.loc 1 586 0
	l32i.n	a9, a3, 0
	.loc 1 590 0
	l32r	a3, .LC53
.LVL170:
	sub	a9, a9, a3
	movi	a3, 0x105
	movnez	a2, a3, a9
.LVL171:
	retw.n
.LVL172:
.L171:
	.loc 1 574 0
	movi	a2, 0x102
.LVL173:
.L170:
	.loc 1 591 0
	retw.n
.LFE48:
	.size	esp_ota_get_partition_description, .-esp_ota_get_partition_description
	.section	.text.esp_ota_check_rollback_is_possible,"ax",@progbits
	.align	4
	.global	esp_ota_check_rollback_is_possible
	.type	esp_ota_check_rollback_is_possible, @function
esp_ota_check_rollback_is_possible:
.LFB49:
	.loc 1 603 0
	entry	sp, 112
.LCFI14:
	.loc 1 605 0
	mov.n	a10, sp
	call8	read_otadata
.LVL174:
	bnez.n	a10, .L176
.L178:
	.loc 1 606 0
	movi.n	a2, 0
	retw.n
.L176:
	.loc 1 609 0
	call8	get_ota_partition_count
.LVL175:
	mov.n	a4, a10
.LVL176:
	.loc 1 610 0
	beqz.n	a10, .L178
	.loc 1 615 0
	mov.n	a10, sp
	call8	bootloader_common_ota_select_valid
.LVL177:
	s8i	a10, sp, 64
	.loc 1 616 0
	addi	a10, sp, 32
	call8	bootloader_common_ota_select_valid
.LVL178:
	s8i	a10, sp, 65
	.loc 1 618 0
	movi.n	a12, 1
	addi	a11, sp, 64
	mov.n	a10, sp
	call8	bootloader_common_select_otadata
.LVL179:
	.loc 1 619 0
	beqi	a10, -1, .L178
	extui	a10, a10, 0, 1
.LVL180:
	movi.n	a2, 1
	xor	a3, a10, a2
.LVL181:
	.loc 1 626 0
	addi	a5, sp, 64
	add.n	a8, a5, a3
	l8ui	a10, a8, 0
	beqz.n	a10, .L179
.LVL182:
.L181:
	.loc 1 636 0
	addi	a5, sp, 64
	add.n	a2, a5, a3
	l8ui	a2, a2, 0
	beqz.n	a2, .L178
	j	.L180
.LVL183:
.L179:
	.loc 1 627 0
	mov.n	a12, a10
	mov.n	a11, a10
	call8	esp_partition_find_first
.LVL184:
	.loc 1 628 0
	beqz.n	a10, .L181
	.loc 1 629 0
	mov.n	a11, a2
	call8	image_validate
.LVL185:
	bnez.n	a10, .L181
	retw.n
.L180:
.LVL186:
.LBB63:
	.loc 1 637 0
	slli	a3, a3, 5
.LVL187:
	add.n	a3, sp, a3
.LVL188:
	.loc 1 638 0
	l32i.n	a11, a3, 0
	movi.n	a12, 0
	addi.n	a11, a11, -1
	remu	a11, a11, a4
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL189:
	.loc 1 639 0
	beqz.n	a10, .L178
	.loc 1 640 0
	movi.n	a11, 1
	call8	image_validate
.LVL190:
	movi.n	a3, 1
	movi.n	a2, 0
	moveqz	a2, a3, a10
	extui	a2, a2, 0, 8
.LBE63:
	.loc 1 654 0
	retw.n
.LFE49:
	.size	esp_ota_check_rollback_is_possible, .-esp_ota_check_rollback_is_possible
	.section	.rodata.str1.1
.LC56:
	.string	"\033[0;31mE (%d) %s: Rollback is not possible, do not have any suitable apps in slots\033[0m\n"
.LC58:
	.string	"\033[0;32mI (%d) %s: Rollback to previously worked partition. Restart.\033[0m\n"
.LC60:
	.string	"\033[0;31mE (%d) %s: Running firmware is factory\033[0m\n"
	.section	.text.esp_ota_current_ota_is_workable,"ax",@progbits
	.literal_position
	.literal .LC54, 5381
	.literal .LC55, .LC1
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.align	4
	.type	esp_ota_current_ota_is_workable, @function
esp_ota_current_ota_is_workable:
.LFB50:
	.loc 1 659 0
.LVL191:
	entry	sp, 96
.LCFI15:
	.loc 1 661 0
	mov.n	a10, sp
	call8	read_otadata
.LVL192:
	mov.n	a4, a10
.LVL193:
	.loc 1 662 0
	beqz.n	a10, .L203
	.loc 1 666 0
	mov.n	a10, sp
	call8	bootloader_common_get_active_otadata
.LVL194:
	mov.n	a3, a10
.LVL195:
	.loc 1 667 0
	beqi	a10, -1, .L198
	.loc 1 667 0 is_stmt 0 discriminator 1
	call8	get_ota_partition_count
.LVL196:
	beqz.n	a10, .L198
	.loc 1 668 0 is_stmt 1
	beqz.n	a2, .L199
	.loc 1 668 0 discriminator 1
	slli	a8, a3, 5
	add.n	a8, sp, a8
	l32i.n	a2, a8, 24
.LVL197:
	.loc 1 696 0 discriminator 1
	movi.n	a10, 0
	.loc 1 668 0 discriminator 1
	beqi	a2, 2, .L197
.LBB70:
	.loc 1 669 0
	movi.n	a2, 2
	s32i.n	a2, a8, 24
.LVL198:
.LBB71:
.LBB72:
	.loc 1 314 0
	extui	a2, a3, 0, 8
	bltui	a2, 2, .L200
.LVL199:
.L202:
	.loc 1 315 0
	movi	a10, 0x102
	j	.L197
.LVL200:
.L200:
	l32i.n	a11, a8, 0
	mov.n	a13, a4
	extui	a12, a3, 0, 8
	mov.n	a10, sp
.LVL201:
	call8	rewrite_ota_seq$part$2
.LVL202:
	j	.L197
.LVL203:
.L199:
.LBE72:
.LBE71:
.LBE70:
.LBB73:
	.loc 1 679 0
	call8	esp_ota_check_rollback_is_possible
.LVL204:
	bnez.n	a10, .L201
	.loc 1 680 0 discriminator 2
	call8	esp_log_timestamp
.LVL205:
	l32r	a11, .LC55
	l32r	a12, .LC57
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL206:
	.loc 1 681 0 discriminator 2
	l32r	a10, .LC54
	j	.L197
.L201:
	.loc 1 684 0
	slli	a8, a3, 5
	add.n	a8, sp, a8
	movi.n	a2, 3
.LVL207:
	s32i.n	a2, a8, 24
.LVL208:
.LBB74:
.LBB75:
	.loc 1 314 0
	extui	a9, a3, 0, 8
	bgeui	a9, 2, .L202
	l32i.n	a11, a8, 0
	mov.n	a13, a4
	mov.n	a12, a9
	mov.n	a10, sp
.LVL209:
	call8	rewrite_ota_seq$part$2
.LVL210:
.LBE75:
.LBE74:
	.loc 1 686 0
	bnez.n	a10, .L197
	.loc 1 689 0 discriminator 9
	call8	esp_log_timestamp
.LVL211:
	l32r	a11, .LC55
	l32r	a12, .LC59
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a2
	call8	esp_log_write
.LVL212:
	.loc 1 690 0 discriminator 9
	call8	esp_restart
.LVL213:
.L198:
.LBE73:
	.loc 1 693 0
	call8	esp_log_timestamp
.LVL214:
	l32r	a11, .LC55
	l32r	a12, .LC61
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL215:
	.loc 1 694 0
	movi.n	a10, -1
	j	.L197
.LVL216:
.L203:
	.loc 1 663 0
	movi	a10, 0x105
.LVL217:
.L197:
	.loc 1 697 0
	mov.n	a2, a10
	retw.n
.LFE50:
	.size	esp_ota_current_ota_is_workable, .-esp_ota_current_ota_is_workable
	.section	.text.esp_ota_mark_app_valid_cancel_rollback,"ax",@progbits
	.align	4
	.global	esp_ota_mark_app_valid_cancel_rollback
	.type	esp_ota_mark_app_valid_cancel_rollback, @function
esp_ota_mark_app_valid_cancel_rollback:
.LFB51:
	.loc 1 700 0
	entry	sp, 32
.LCFI16:
	.loc 1 701 0
	movi.n	a10, 1
	call8	esp_ota_current_ota_is_workable
.LVL218:
	.loc 1 702 0
	mov.n	a2, a10
	retw.n
.LFE51:
	.size	esp_ota_mark_app_valid_cancel_rollback, .-esp_ota_mark_app_valid_cancel_rollback
	.section	.text.esp_ota_mark_app_invalid_rollback_and_reboot,"ax",@progbits
	.align	4
	.global	esp_ota_mark_app_invalid_rollback_and_reboot
	.type	esp_ota_mark_app_invalid_rollback_and_reboot, @function
esp_ota_mark_app_invalid_rollback_and_reboot:
.LFB52:
	.loc 1 705 0
	entry	sp, 32
.LCFI17:
	.loc 1 706 0
	movi.n	a10, 0
	call8	esp_ota_current_ota_is_workable
.LVL219:
	.loc 1 707 0
	mov.n	a2, a10
	retw.n
.LFE52:
	.size	esp_ota_mark_app_invalid_rollback_and_reboot, .-esp_ota_mark_app_invalid_rollback_and_reboot
	.section	.text.esp_ota_get_last_invalid_partition,"ax",@progbits
	.align	4
	.global	esp_ota_get_last_invalid_partition
	.type	esp_ota_get_last_invalid_partition, @function
esp_ota_get_last_invalid_partition:
.LFB55:
	.loc 1 728 0
	entry	sp, 112
.LCFI18:
	.loc 1 730 0
	mov.n	a10, sp
	call8	read_otadata
.LVL220:
	bnez.n	a10, .L215
.L217:
	.loc 1 731 0
	movi.n	a2, 0
	retw.n
.L215:
.LVL221:
.LBB79:
.LBB80:
	.loc 1 720 0
	mov.n	a10, sp
.LVL222:
	call8	check_invalid_otadata
.LVL223:
	s8i	a10, sp, 64
	.loc 1 721 0
	addi	a10, sp, 32
	call8	check_invalid_otadata
.LVL224:
	s8i	a10, sp, 65
	.loc 1 722 0
	movi.n	a12, 0
	addi	a11, sp, 64
	mov.n	a10, sp
.LVL225:
	call8	bootloader_common_select_otadata
.LVL226:
	mov.n	a2, a10
.LVL227:
.LBE80:
.LBE79:
	.loc 1 736 0
	call8	get_ota_partition_count
.LVL228:
	.loc 1 737 0
	movi.n	a8, 0
	beqi	a2, -1, .L217
	beq	a10, a8, .L217
.LVL229:
.LBB81:
	.loc 1 738 0
	slli	a2, a2, 5
.LVL230:
	add.n	a2, sp, a2
.LVL231:
	.loc 1 741 0
	l32i.n	a11, a2, 0
	mov.n	a12, a8
	addi.n	a11, a11, -1
	remu	a11, a11, a10
	addi	a11, a11, 16
	mov.n	a10, a8
.LVL232:
	call8	esp_partition_find_first
.LVL233:
	mov.n	a2, a10
.LVL234:
	.loc 1 742 0
	beqz.n	a10, .L217
	.loc 1 743 0
	movi.n	a11, 1
	call8	image_validate
.LVL235:
	bnez.n	a10, .L217
.LBE81:
	.loc 1 751 0
	retw.n
.LFE55:
	.size	esp_ota_get_last_invalid_partition, .-esp_ota_get_last_invalid_partition
	.section	.text.esp_ota_get_state_partition,"ax",@progbits
	.literal_position
	.align	4
	.global	esp_ota_get_state_partition
	.type	esp_ota_get_state_partition, @function
esp_ota_get_state_partition:
.LFB56:
	.loc 1 754 0
.LVL236:
	entry	sp, 96
.LCFI19:
	.loc 1 755 0
	movi.n	a7, 1
	movi.n	a8, 0
	moveqz	a8, a7, a2
	extui	a8, a8, 0, 8
	.loc 1 754 0
	mov.n	a6, a2
	.loc 1 755 0
	bnez.n	a8, .L234
	moveqz	a8, a7, a3
	bnez.n	a8, .L234
.LVL237:
.LBB86:
.LBB87:
	.loc 1 69 0
	l32i.n	a4, a2, 0
.LBE87:
.LBE86:
	.loc 1 760 0
	movi	a2, 0x106
.LVL238:
.LBB89:
.LBB88:
	.loc 1 69 0
	bnez.n	a4, .L236
	.loc 1 71 0
	l32i.n	a5, a6, 4
	movi.n	a8, 0xf
	addi	a5, a5, -16
	bltu	a8, a5, .L236
	j	.L229
.LVL239:
.L238:
.LBE88:
.LBE89:
	.loc 1 769 0
	l32i.n	a6, a6, 4
.LVL240:
	mov.n	a4, sp
	addi	a6, a6, -16
.LVL241:
.LBB90:
	.loc 1 771 0
	mov.n	a2, a10
.LVL242:
.L231:
.LBB91:
	.loc 1 773 0
	l32i.n	a8, a4, 0
	addi.n	a8, a8, -1
	remu	a8, a8, a5
	bne	a6, a8, .L230
	.loc 1 773 0 is_stmt 0 discriminator 1
	l32i.n	a7, a4, 28
	mov.n	a10, a4
	call8	bootloader_common_ota_select_crc
.LVL243:
	bne	a7, a10, .L230
	.loc 1 774 0 is_stmt 1
	slli	a2, a2, 5
.LVL244:
	add.n	a2, sp, a2
	l32i.n	a2, a2, 24
	s32i.n	a2, a3, 0
.LVL245:
.LBE91:
.LBE90:
	.loc 1 784 0
	movi.n	a2, 0
	retw.n
.LVL246:
.L230:
.LBB92:
	.loc 1 771 0
	addi.n	a2, a2, 1
.LVL247:
	addi	a4, a4, 32
	bnei	a2, 2, .L231
.LVL248:
.L232:
.LBE92:
	.loc 1 781 0
	movi	a2, 0x105
	retw.n
.LVL249:
.L234:
	.loc 1 756 0
	movi	a2, 0x102
.LVL250:
	retw.n
.LVL251:
.L229:
	.loc 1 764 0
	call8	get_ota_partition_count
.LVL252:
	mov.n	a5, a10
.LVL253:
	.loc 1 765 0
	moveqz	a4, a7, a5
	.loc 1 765 0
	mov.n	a10, sp
	.loc 1 765 0
	extui	a4, a4, 0, 8
	.loc 1 765 0
	call8	read_otadata
.LVL254:
	.loc 1 765 0
	bnez.n	a4, .L232
	moveqz	a4, a7, a10
	mov.n	a10, a4
	bnez.n	a4, .L232
	j	.L238
.LVL255:
.L236:
	.loc 1 785 0
	retw.n
.LFE56:
	.size	esp_ota_get_state_partition, .-esp_ota_get_state_partition
	.section	.text.esp_ota_erase_last_boot_app_partition,"ax",@progbits
	.literal_position
	.literal .LC64, 4096
	.align	4
	.global	esp_ota_erase_last_boot_app_partition
	.type	esp_ota_erase_last_boot_app_partition, @function
esp_ota_erase_last_boot_app_partition:
.LFB57:
	.loc 1 788 0
	entry	sp, 112
.LCFI20:
	.loc 1 790 0
	mov.n	a10, sp
	call8	read_otadata
.LVL256:
	mov.n	a4, a10
.LVL257:
	.loc 1 791 0
	bnez.n	a10, .L240
.L242:
	.loc 1 792 0
	movi.n	a10, -1
	j	.L241
.L240:
	.loc 1 795 0
	mov.n	a10, sp
	call8	bootloader_common_get_active_otadata
.LVL258:
	mov.n	a3, a10
.LVL259:
	.loc 1 797 0
	addi.n	a2, a3, 1
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a2
	.loc 1 796 0
	call8	get_ota_partition_count
.LVL260:
	.loc 1 797 0
	extui	a2, a5, 0, 8
	.loc 1 796 0
	mov.n	a7, a10
.LVL261:
	.loc 1 797 0
	bnez.n	a2, .L242
	moveqz	a2, a6, a10
	bnez.n	a2, .L242
	and	a3, a3, a6
.LVL262:
	xor	a3, a3, a6
.LVL263:
	.loc 1 802 0
	slli	a5, a3, 5
	add.n	a5, sp, a5
	l32i.n	a8, a5, 0
	beqi	a8, -1, .L242
	.loc 1 802 0 is_stmt 0 discriminator 1
	l32i.n	a8, a5, 28
	mov.n	a10, a5
	s32i	a8, sp, 64
	call8	bootloader_common_ota_select_crc
.LVL264:
	l32i	a8, sp, 64
	bne	a8, a10, .L242
.LVL265:
	.loc 1 809 0 is_stmt 1
	l32i.n	a11, a5, 0
	mov.n	a12, a2
	addi.n	a11, a11, -1
	remu	a11, a11, a7
	addi	a11, a11, 16
	mov.n	a10, a2
	call8	esp_partition_find_first
.LVL266:
	mov.n	a5, a10
.LVL267:
	.loc 1 810 0
	beqz.n	a10, .L242
	.loc 1 814 0
	call8	esp_ota_get_running_partition
.LVL268:
	.loc 1 815 0
	mov.n	a11, a6
	movnez	a11, a2, a10
	bnez.n	a11, .L242
	sub	a10, a5, a10
.LVL269:
	moveqz	a11, a6, a10
	bnez.n	a11, .L242
	.loc 1 819 0
	l32i.n	a12, a5, 12
	mov.n	a10, a5
	call8	esp_partition_erase_range
.LVL270:
	.loc 1 820 0
	bnez.n	a10, .L241
.LVL271:
	.loc 1 825 0
	l32r	a12, .LC64
	slli	a11, a3, 12
	mov.n	a10, a4
.LVL272:
	call8	esp_partition_erase_range
.LVL273:
.L241:
	.loc 1 831 0
	mov.n	a2, a10
	retw.n
.LFE57:
	.size	esp_ota_erase_last_boot_app_partition, .-esp_ota_erase_last_boot_app_partition
	.section	.rodata.__func__$5967,"a",@progbits
	.type	__func__$5967, @object
	.size	__func__$5967, 34
__func__$5967:
	.string	"esp_ota_get_next_update_partition"
	.section	.rodata.__func__$5956,"a",@progbits
	.type	__func__$5956, @object
	.size	__func__$5956, 30
__func__$5956:
	.string	"esp_ota_get_running_partition"
	.section	.bss.curr_partition$5954,"aw",@nobits
	.align	4
	.type	curr_partition$5954, @object
	.size	curr_partition$5954, 4
curr_partition$5954:
	.zero	4
	.section	.rodata.__func__$5913,"a",@progbits
	.type	__func__$5913, @object
	.size	__func__$5913, 24
__func__$5913:
	.string	"get_ota_partition_count"
	.section	.rodata.__func__$5886,"a",@progbits
	.type	__func__$5886, @object
	.size	__func__$5886, 14
__func__$5886:
	.string	"esp_ota_write"
	.section	.bss.s_ota_ops_last_handle,"aw",@nobits
	.align	4
	.type	s_ota_ops_last_handle, @object
	.size	s_ota_ops_last_handle, 4
s_ota_ops_last_handle:
	.zero	4
	.section	.bss.s_ota_ops_entries_head,"aw",@nobits
	.align	4
	.type	s_ota_ops_entries_head, @object
	.size	s_ota_ops_entries_head, 4
s_ota_ops_entries_head:
	.zero	4
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI1-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI2-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI4-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI5-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI6-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI7-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI8-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI10-.LFB43
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI12-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI13-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI14-.LFB49
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI15-.LFB50
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI16-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI17-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI18-.LFB55
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI19-.LFB56
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI20-.LFB57
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f35
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0xc
	.4byte	.LASF238
	.4byte	.LASF239
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xed
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x110
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0xa1
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x26
	.4byte	0x152
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x29
	.4byte	0x139
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x2f
	.4byte	0x21e
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x51
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x5b
	.4byte	0x234
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xc
	.4byte	.LASF240
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x64
	.4byte	0x290
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.4byte	0x152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.4byte	0x21e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x68
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x69
	.4byte	0x290
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x6a
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x2a0
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.byte	0x6b
	.4byte	0x23f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.byte	0x1c
	.4byte	0x2df
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF72
	.4byte	0xffffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0x23
	.4byte	0x2ab
	.uleb128 0xd
	.byte	0x20
	.byte	0x9
	.byte	0x27
	.4byte	0x323
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x9
	.byte	0x28
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x9
	.byte	0x29
	.4byte	0x323
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x9
	.byte	0x2a
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x10
	.string	"crc"
	.byte	0x9
	.byte	0x2b
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x333
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x9
	.byte	0x2c
	.4byte	0x2ea
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x2f
	.4byte	0x35f
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x9
	.byte	0x30
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x9
	.byte	0x31
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x9
	.byte	0x32
	.4byte	0x33e
	.uleb128 0xa
	.byte	0x2
	.4byte	0x50
	.byte	0xa
	.byte	0x3e
	.4byte	0x384
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x41
	.4byte	0x36a
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x48
	.4byte	0x42e
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xa
	.byte	0x49
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xa
	.byte	0x4a
	.4byte	0x89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x4c
	.4byte	0x89
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0xa
	.byte	0x4e
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0xa
	.byte	0x50
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xa
	.byte	0x51
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xa
	.byte	0x54
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xa
	.byte	0x56
	.4byte	0x42e
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xa
	.byte	0x57
	.4byte	0x384
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xa
	.byte	0x58
	.4byte	0x89
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xa
	.byte	0x59
	.4byte	0x43e
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xa
	.byte	0x5d
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x43e
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x44e
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xa
	.byte	0x5e
	.4byte	0x38f
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x65
	.4byte	0x47a
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xa
	.byte	0x66
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xa
	.byte	0x67
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x68
	.4byte	0x459
	.uleb128 0x13
	.2byte	0x100
	.byte	0xa
	.byte	0x6f
	.4byte	0x507
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xa
	.byte	0x70
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xa
	.byte	0x71
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xa
	.byte	0x72
	.4byte	0x507
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xa
	.byte	0x73
	.4byte	0x517
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xa
	.byte	0x74
	.4byte	0x517
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xa
	.byte	0x75
	.4byte	0x527
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xa
	.byte	0x76
	.4byte	0x527
	.byte	0x60
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xa
	.byte	0x77
	.4byte	0x517
	.byte	0x70
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xa
	.byte	0x78
	.4byte	0x537
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xa
	.byte	0x79
	.4byte	0x547
	.byte	0xb0
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x517
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x527
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x537
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x547
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x557
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xa
	.byte	0x7a
	.4byte	0x485
	.uleb128 0x13
	.2byte	0x100
	.byte	0xa
	.byte	0x80
	.4byte	0x5b4
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0xa
	.byte	0x81
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xa
	.byte	0x82
	.4byte	0x44e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xa
	.byte	0x83
	.4byte	0x5b4
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xa
	.byte	0x84
	.4byte	0x5c4
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xa
	.byte	0x85
	.4byte	0xaa
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xa
	.byte	0x86
	.4byte	0x537
	.byte	0xe0
	.byte	0
	.uleb128 0x8
	.4byte	0x47a
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x5d4
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xa
	.byte	0x87
	.4byte	0x562
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x8a
	.4byte	0x5f8
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xa
	.byte	0x90
	.4byte	0x5df
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x30
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x63f
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x37
	.4byte	0x660
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x1
	.byte	0x37
	.4byte	0x6c1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x1
	.byte	0x37
	.4byte	0x6c7
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x2c
	.byte	0x1
	.byte	0x30
	.4byte	0x6c1
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x1
	.byte	0x31
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x1
	.byte	0x32
	.4byte	0x6cd
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0x1
	.byte	0x33
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x1
	.byte	0x34
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x1
	.byte	0x35
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x1
	.byte	0x36
	.4byte	0x100
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x1
	.byte	0x37
	.4byte	0x63f
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x660
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x6
	.4byte	0x2a0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x1
	.byte	0x38
	.4byte	0x660
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x4
	.byte	0x1
	.byte	0x3a
	.4byte	0x6fc
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x1
	.byte	0x3a
	.4byte	0x6c1
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x148
	.4byte	0x89
	.byte	0x1
	.4byte	0x727
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x14a
	.4byte	0x94
	.uleb128 0x17
	.4byte	.LASF141
	.4byte	0x737
	.4byte	.LASF142
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x737
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x727
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x6cd
	.byte	0x1
	.4byte	0x766
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x6cd
	.uleb128 0x18
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x21e
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x138
	.4byte	0xee
	.byte	0x1
	.4byte	0x7b4
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x138
	.4byte	0x7b4
	.uleb128 0x1b
	.string	"seq"
	.byte	0x1
	.2byte	0x138
	.4byte	0xaa
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x138
	.4byte	0x89
	.uleb128 0x1a
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x138
	.4byte	0x6cd
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x140
	.4byte	0xee
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x333
	.uleb128 0x1c
	.4byte	.LASF241
	.byte	0x1
	.byte	0x79
	.4byte	0x2df
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x6cd
	.byte	0x1
	.4byte	0x814
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x6cd
	.uleb128 0x16
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xb5
	.uleb128 0x17
	.4byte	.LASF141
	.4byte	0x824
	.4byte	.LASF151
	.uleb128 0x19
	.string	"it"
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x229
	.uleb128 0x18
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x6cd
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x824
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0x814
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x63
	.4byte	0xee
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x899
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x63
	.4byte	0x6cd
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x1
	.byte	0x63
	.4byte	0x5f8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF154
	.byte	0x1
	.byte	0x65
	.4byte	0x5d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.4byte	.LASF155
	.byte	0x1
	.byte	0x66
	.4byte	0x899
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0x1e0e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x35f
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x4c
	.4byte	0x6cd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa06
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4c
	.4byte	0x7b4
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x1
	.byte	0x4e
	.4byte	0x6cd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x1
	.byte	0x55
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.byte	0x56
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x57
	.4byte	0xee
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LVL4
	.4byte	0x1e19
	.4byte	0x91b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0x1e2f
	.4byte	0x952
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0x1e3a
	.4byte	0x97e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x26
	.4byte	.LVL10
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0x1e2f
	.4byte	0x9bb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL14
	.4byte	0x1e46
	.4byte	0x9db
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0x1e46
	.4byte	0x9fc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 4096
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x1e4f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xf9
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3f
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xa3f
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0x1e5a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa45
	.uleb128 0x6
	.4byte	0x333
	.uleb128 0x29
	.4byte	0x6fc
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad6
	.uleb128 0x2a
	.4byte	0x70d
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	0x719
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5913
	.uleb128 0x2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xabb
	.uleb128 0x2d
	.4byte	0x70d
	.uleb128 0x2b
	.4byte	0x719
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5913
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0x1e65
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5913
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL25
	.4byte	0x1e19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x73c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb93
	.uleb128 0x2a
	.4byte	0x74d
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb1f
	.uleb128 0x2a
	.4byte	0x75a
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0x1e19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xb65
	.uleb128 0x2d
	.4byte	0x74d
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x1e24
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0x1e2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL27
	.4byte	0x1e19
	.4byte	0xb82
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0x1e19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x766
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc27
	.uleb128 0x2f
	.4byte	0x777
	.4byte	.LLST7
	.uleb128 0x30
	.4byte	0x783
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	0x78f
	.4byte	.LLST8
	.uleb128 0x30
	.4byte	0x79b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	0x7a7
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LVL40
	.4byte	0x1e5a
	.4byte	0xbe3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x1e70
	.4byte	0xc04
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0x1e7c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x7c6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2c
	.uleb128 0x2b
	.4byte	0x7d7
	.uleb128 0x5
	.byte	0x3
	.4byte	curr_partition$5954
	.uleb128 0x2d
	.4byte	0x7e3
	.uleb128 0x2b
	.4byte	0x7ef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5956
	.uleb128 0x2d
	.4byte	0x7fc
	.uleb128 0x31
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2a
	.4byte	0x7e3
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	0x7fc
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0x7d7
	.uleb128 0x5
	.byte	0x3
	.4byte	curr_partition$5954
	.uleb128 0x2b
	.4byte	0x7ef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5956
	.uleb128 0x2c
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xcd3
	.uleb128 0x2a
	.4byte	0x808
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LVL51
	.4byte	0x1e87
	.4byte	0xcb5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL53
	.4byte	0x1e92
	.4byte	0xcc9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL54
	.4byte	0x1e9d
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x1ea8
	.4byte	0xcea
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ota_get_running_partition
	.byte	0
	.uleb128 0x25
	.4byte	.LVL47
	.4byte	0x1eb4
	.4byte	0xd0a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x1e65
	.4byte	0xd21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL56
	.4byte	0x1ebf
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF161
	.byte	0x1
	.byte	0x42
	.4byte	0xf9
	.byte	0x1
	.4byte	0xd46
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.byte	0x42
	.4byte	0x6cd
	.byte	0
	.uleb128 0x34
	.4byte	.LASF170
	.byte	0x1
	.byte	0x83
	.4byte	0xee
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe38
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x83
	.4byte	0x6cd
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0x1
	.byte	0x83
	.4byte	0xb5
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x1
	.byte	0x83
	.4byte	0xe38
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF164
	.byte	0x1
	.byte	0x85
	.4byte	0xe3e
	.4byte	.LLST15
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.4byte	0xee
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.LASF165
	.byte	0x1
	.byte	0x95
	.4byte	0x6cd
	.4byte	.LLST17
	.uleb128 0x36
	.4byte	0xd2c
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x91
	.4byte	0xdd4
	.uleb128 0x2f
	.4byte	0xd3c
	.4byte	.LLST18
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xe01
	.uleb128 0x35
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa8
	.4byte	0xe44
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.LVL68
	.4byte	0x1e70
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL61
	.4byte	0x1eca
	.4byte	0xe15
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0x1ed5
	.4byte	0xe2e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL74
	.4byte	0x7c6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x603
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x6
	.4byte	0x62
	.uleb128 0x32
	.4byte	.LASF167
	.byte	0x2
	.byte	0x26
	.4byte	0xf9
	.byte	0x3
	.4byte	0xe70
	.uleb128 0x37
	.4byte	.LASF168
	.byte	0x2
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x2
	.byte	0x29
	.4byte	0xf9
	.byte	0
	.uleb128 0x34
	.4byte	.LASF171
	.byte	0x1
	.byte	0xc3
	.4byte	0xee
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1040
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0xc3
	.4byte	0x603
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0xc3
	.4byte	0xe7
	.4byte	.LLST21
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc3
	.4byte	0xb5
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x1
	.byte	0xc5
	.4byte	0x1040
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0xc6
	.4byte	0xee
	.4byte	.LLST23
	.uleb128 0x24
	.string	"it"
	.byte	0x1
	.byte	0xc7
	.4byte	0xe3e
	.4byte	.LLST24
	.uleb128 0x38
	.4byte	.LASF141
	.4byte	0x105b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5886
	.uleb128 0x36
	.4byte	0xe49
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xd8
	.4byte	0xf1f
	.uleb128 0x31
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x2a
	.4byte	0xe59
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	0xe64
	.4byte	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0xf9d
	.uleb128 0x35
	.4byte	.LASF173
	.byte	0x1
	.byte	0xda
	.4byte	0xb5
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LVL91
	.4byte	0x1e46
	.4byte	0xf55
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL92
	.4byte	0x1e7c
	.4byte	0xf69
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL94
	.4byte	0x1ee0
	.4byte	0xf83
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL99
	.4byte	0x1e46
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL78
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL81
	.4byte	0x1e65
	.4byte	0xfd5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5886
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x26
	.4byte	.LVL82
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0x1e2f
	.4byte	0x100d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x25
	.4byte	.LVL100
	.4byte	0x1e7c
	.4byte	0x1027
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x1e24
	.uleb128 0x22
	.4byte	.LVL106
	.4byte	0x1e2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1046
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x105b
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x104b
	.uleb128 0x39
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x105
	.4byte	0xee
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111c
	.uleb128 0x3a
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x105
	.4byte	0x603
	.4byte	.LLST28
	.uleb128 0x3b
	.string	"it"
	.byte	0x1
	.2byte	0x107
	.4byte	0xe3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"ret"
	.byte	0x1
	.2byte	0x108
	.4byte	0xee
	.4byte	.LLST29
	.uleb128 0x3d
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x132
	.4byte	.L102
	.uleb128 0x3e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x127
	.4byte	0x5d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x128
	.4byte	0x899
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL113
	.4byte	0x1e7c
	.4byte	0x10eb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.4byte	.LVL115
	.4byte	0x1e0e
	.4byte	0x110b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x22
	.4byte	.LVL117
	.4byte	0x1eeb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x152
	.4byte	0xee
	.byte	0x1
	.4byte	0x11a0
	.uleb128 0x1a
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x152
	.4byte	0x21e
	.uleb128 0x16
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x154
	.4byte	0x11a0
	.uleb128 0x16
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x155
	.4byte	0x6cd
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x15a
	.4byte	0x62
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x16f
	.4byte	0x62
	.uleb128 0x3f
	.4byte	0x1191
	.uleb128 0x19
	.string	"seq"
	.byte	0x1
	.2byte	0x171
	.4byte	0xaa
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x172
	.4byte	0xaa
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x176
	.4byte	0x62
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x17b
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x333
	.4byte	0x11b0
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x39
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x181
	.4byte	0xee
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1389
	.uleb128 0x3a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x181
	.4byte	0x6cd
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x1227
	.uleb128 0x40
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x18e
	.4byte	0x6cd
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LVL122
	.4byte	0x1e19
	.4byte	0x1216
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL123
	.4byte	0x1e70
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x111c
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x1373
	.uleb128 0x2f
	.4byte	0x112d
	.4byte	.LLST32
	.uleb128 0x31
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x2b
	.4byte	0x1139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.4byte	0x1145
	.4byte	.LLST33
	.uleb128 0x2a
	.4byte	0x1151
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	0x115d
	.4byte	.LLST35
	.uleb128 0x2c
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x12da
	.uleb128 0x2a
	.4byte	0x116e
	.4byte	.LLST36
	.uleb128 0x2a
	.4byte	0x117a
	.4byte	.LLST37
	.uleb128 0x2a
	.4byte	0x1184
	.4byte	.LLST38
	.uleb128 0x42
	.4byte	0x766
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x178
	.uleb128 0x2f
	.4byte	0x79b
	.4byte	.LLST39
	.uleb128 0x43
	.4byte	0x78f
	.uleb128 0x2f
	.4byte	0x783
	.4byte	.LLST40
	.uleb128 0x2f
	.4byte	0x777
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x2d
	.4byte	0x7a7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0x1342
	.uleb128 0x2a
	.4byte	0x1192
	.4byte	.LLST42
	.uleb128 0x42
	.4byte	0x766
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x17d
	.uleb128 0x2f
	.4byte	0x79b
	.4byte	.LLST43
	.uleb128 0x2f
	.4byte	0x78f
	.4byte	.LLST44
	.uleb128 0x43
	.4byte	0x783
	.uleb128 0x2f
	.4byte	0x777
	.4byte	.LLST45
	.uleb128 0x31
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x2d
	.4byte	0x7a7
	.uleb128 0x22
	.4byte	.LVL140
	.4byte	0xb93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL125
	.4byte	0x89e
	.4byte	0x1357
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL127
	.4byte	0x6fc
	.uleb128 0x22
	.4byte	.LVL130
	.4byte	0x1ef6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL121
	.4byte	0x829
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x6cd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14bc
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x40
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x6cd
	.4byte	.LLST46
	.uleb128 0x40
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x62
	.4byte	.LLST47
	.uleb128 0x2c
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x1478
	.uleb128 0x40
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x62
	.4byte	.LLST48
	.uleb128 0x2c
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0x1422
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1db
	.4byte	0x62
	.4byte	.LLST49
	.uleb128 0x22
	.4byte	.LVL150
	.4byte	0x1e19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL146
	.4byte	0x1ef6
	.4byte	0x1437
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL152
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL153
	.4byte	0x1e2f
	.4byte	0x146e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x26
	.4byte	.LVL154
	.4byte	0x73c
	.byte	0
	.uleb128 0x25
	.4byte	.LVL141
	.4byte	0x89e
	.4byte	0x148d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL142
	.4byte	0x6fc
	.uleb128 0x25
	.4byte	.LVL144
	.4byte	0x1f01
	.4byte	0x14ab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL145
	.4byte	0x1f01
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x20b
	.4byte	0x6cd
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a5
	.uleb128 0x3a
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x20b
	.4byte	0x6cd
	.4byte	.LLST50
	.uleb128 0x40
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x20d
	.4byte	0x6cd
	.4byte	.LLST51
	.uleb128 0x40
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x20e
	.4byte	0xf9
	.4byte	.LLST52
	.uleb128 0x38
	.4byte	.LASF141
	.4byte	0x15b5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5967
	.uleb128 0x2c
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x155b
	.uleb128 0x3b
	.string	"t"
	.byte	0x1
	.2byte	0x220
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3b
	.string	"p"
	.byte	0x1
	.2byte	0x223
	.4byte	0x6cd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL161
	.4byte	0x1e19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL157
	.4byte	0x7c6
	.uleb128 0x25
	.4byte	.LVL158
	.4byte	0x1eca
	.4byte	0x1578
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL160
	.4byte	0x1e65
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x214
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5967
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x15b5
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0x15a5
	.uleb128 0x39
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x23b
	.4byte	0xee
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1629
	.uleb128 0x3a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23b
	.4byte	0x6cd
	.4byte	.LLST53
	.uleb128 0x3a
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x23b
	.4byte	0x1629
	.4byte	.LLST54
	.uleb128 0x3c
	.string	"err"
	.byte	0x1
	.2byte	0x245
	.4byte	0xee
	.4byte	.LLST55
	.uleb128 0x22
	.4byte	.LVL168
	.4byte	0x1f0c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x557
	.uleb128 0x39
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x25a
	.4byte	0xf9
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1772
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x25c
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x261
	.4byte	0x62
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x3e
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x266
	.4byte	0x1772
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x26a
	.4byte	0x62
	.4byte	.LLST56
	.uleb128 0x40
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x26e
	.4byte	0x62
	.4byte	.LLST57
	.uleb128 0x40
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x270
	.4byte	0x6cd
	.4byte	.LLST58
	.uleb128 0x2c
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0x16f0
	.uleb128 0x40
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x27d
	.4byte	0x62
	.4byte	.LLST59
	.uleb128 0x25
	.4byte	.LVL189
	.4byte	0x1e19
	.4byte	0x16e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL190
	.4byte	0x829
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL174
	.4byte	0x89e
	.4byte	0x1705
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x26
	.4byte	.LVL175
	.4byte	0x6fc
	.uleb128 0x25
	.4byte	.LVL177
	.4byte	0x1f17
	.4byte	0x1723
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x25
	.4byte	.LVL178
	.4byte	0x1f17
	.4byte	0x1738
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.4byte	.LVL179
	.4byte	0x1f22
	.4byte	0x1758
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL184
	.4byte	0x1e19
	.uleb128 0x22
	.4byte	.LVL185
	.4byte	0x829
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xf9
	.4byte	0x1782
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x292
	.4byte	0xee
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c2
	.uleb128 0x3a
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x292
	.4byte	0xf9
	.4byte	.LLST60
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x294
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3e
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x295
	.4byte	0x6cd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x29a
	.4byte	0x62
	.4byte	.LLST61
	.uleb128 0x2c
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0x1858
	.uleb128 0x19
	.string	"err"
	.byte	0x1
	.2byte	0x29f
	.4byte	0xee
	.uleb128 0x42
	.4byte	0x766
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.2byte	0x29f
	.uleb128 0x2f
	.4byte	0x79b
	.4byte	.LLST62
	.uleb128 0x2f
	.4byte	0x78f
	.4byte	.LLST63
	.uleb128 0x2f
	.4byte	0x783
	.4byte	.LLST64
	.uleb128 0x2f
	.4byte	0x777
	.4byte	.LLST65
	.uleb128 0x31
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x2d
	.4byte	0x7a7
	.uleb128 0x22
	.4byte	.LVL202
	.4byte	0xb93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.4byte	0x195b
	.uleb128 0x19
	.string	"err"
	.byte	0x1
	.2byte	0x2ad
	.4byte	0xee
	.uleb128 0x41
	.4byte	0x766
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x18d9
	.uleb128 0x2f
	.4byte	0x79b
	.4byte	.LLST66
	.uleb128 0x2f
	.4byte	0x78f
	.4byte	.LLST67
	.uleb128 0x2f
	.4byte	0x783
	.4byte	.LLST68
	.uleb128 0x2f
	.4byte	0x777
	.4byte	.LLST69
	.uleb128 0x31
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x2d
	.4byte	0x7a7
	.uleb128 0x22
	.4byte	.LVL210
	.4byte	0xb93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL204
	.4byte	0x162f
	.uleb128 0x26
	.4byte	.LVL205
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL206
	.4byte	0x1e2f
	.4byte	0x1919
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x26
	.4byte	.LVL211
	.4byte	0x1e24
	.uleb128 0x25
	.4byte	.LVL212
	.4byte	0x1e2f
	.4byte	0x1951
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x26
	.4byte	.LVL213
	.4byte	0x1f2d
	.byte	0
	.uleb128 0x25
	.4byte	.LVL192
	.4byte	0x89e
	.4byte	0x1970
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x25
	.4byte	.LVL194
	.4byte	0x1ef6
	.4byte	0x1985
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL196
	.4byte	0x6fc
	.uleb128 0x26
	.4byte	.LVL214
	.4byte	0x1e24
	.uleb128 0x22
	.4byte	.LVL215
	.4byte	0x1e2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2bb
	.4byte	0xee
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ec
	.uleb128 0x22
	.4byte	.LVL218
	.4byte	0x1782
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2c0
	.4byte	0xee
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a16
	.uleb128 0x22
	.4byte	.LVL219
	.4byte	0x1782
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x62
	.byte	0x1
	.4byte	0x1a4c
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xa3f
	.uleb128 0x16
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x1772
	.uleb128 0x16
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x62
	.byte	0
	.uleb128 0x45
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x6cd
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8b
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2de
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x40
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x62
	.4byte	.LLST70
	.uleb128 0x41
	.4byte	0x1a16
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.2byte	0x2de
	.4byte	0x1b13
	.uleb128 0x2f
	.4byte	0x1a27
	.4byte	.LLST71
	.uleb128 0x31
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x2b
	.4byte	0x1a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	0x1a3f
	.4byte	.LLST72
	.uleb128 0x25
	.4byte	.LVL223
	.4byte	0xa06
	.4byte	0x1ae0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x25
	.4byte	.LVL224
	.4byte	0xa06
	.4byte	0x1af5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL226
	.4byte	0x1f22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x1b6c
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x62
	.4byte	.LLST73
	.uleb128 0x3e
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x6cd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL233
	.4byte	0x1e19
	.4byte	0x1b56
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL235
	.4byte	0x829
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL220
	.4byte	0x89e
	.4byte	0x1b81
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x26
	.4byte	.LVL228
	.4byte	0x6fc
	.byte	0
	.uleb128 0x39
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x2f1
	.4byte	0xee
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7e
	.uleb128 0x3a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x6cd
	.4byte	.LLST74
	.uleb128 0x46
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x1c7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2fb
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x40
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x62
	.4byte	.LLST75
	.uleb128 0x40
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x301
	.4byte	0x62
	.4byte	.LLST76
	.uleb128 0x40
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x302
	.4byte	0xf9
	.4byte	.LLST77
	.uleb128 0x47
	.4byte	0xd2c
	.4byte	.LBB86
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x2f7
	.4byte	0x1c21
	.uleb128 0x2f
	.4byte	0xd3c
	.4byte	.LLST78
	.byte	0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x1c63
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.2byte	0x303
	.4byte	0x62
	.4byte	.LLST79
	.uleb128 0x31
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x304
	.4byte	0x62
	.4byte	.LLST80
	.uleb128 0x22
	.4byte	.LVL243
	.4byte	0x1e5a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL252
	.4byte	0x6fc
	.uleb128 0x22
	.4byte	.LVL254
	.4byte	0x89e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2df
	.uleb128 0x39
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x313
	.4byte	0xee
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dda
	.uleb128 0x3e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x315
	.4byte	0x11a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3e
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x316
	.4byte	0x6cd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x31b
	.4byte	0x62
	.4byte	.LLST81
	.uleb128 0x40
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x31c
	.4byte	0x62
	.4byte	.LLST82
	.uleb128 0x40
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x321
	.4byte	0x62
	.4byte	.LLST83
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x326
	.4byte	0x62
	.4byte	.LLST84
	.uleb128 0x40
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x329
	.4byte	0x6cd
	.4byte	.LLST85
	.uleb128 0x40
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x32e
	.4byte	0x6cd
	.4byte	.LLST86
	.uleb128 0x3c
	.string	"err"
	.byte	0x1
	.2byte	0x333
	.4byte	0xee
	.4byte	.LLST87
	.uleb128 0x40
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x338
	.4byte	0x62
	.4byte	.LLST88
	.uleb128 0x25
	.4byte	.LVL256
	.4byte	0x89e
	.4byte	0x1d51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x25
	.4byte	.LVL258
	.4byte	0x1ef6
	.4byte	0x1d66
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x26
	.4byte	.LVL260
	.4byte	0x6fc
	.uleb128 0x25
	.4byte	.LVL264
	.4byte	0x1e5a
	.4byte	0x1d83
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL266
	.4byte	0x1e19
	.4byte	0x1d9d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL268
	.4byte	0x7c6
	.uleb128 0x25
	.4byte	.LVL270
	.4byte	0x1e70
	.4byte	0x1dba
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL273
	.4byte	0x1e70
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF209
	.byte	0x1
	.byte	0x3a
	.4byte	0x6e3
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_entries_head
	.uleb128 0x21
	.4byte	.LASF210
	.byte	0x1
	.byte	0x3d
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_last_handle
	.uleb128 0x48
	.string	"TAG"
	.byte	0x1
	.byte	0x3f
	.4byte	0x110
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x49
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xa
	.byte	0xc9
	.uleb128 0x49
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x8
	.byte	0x8b
	.uleb128 0x49
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xc
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xc
	.byte	0x6b
	.uleb128 0x4a
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x11f
	.uleb128 0x4b
	.4byte	.LASF243
	.4byte	.LASF243
	.uleb128 0x49
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x7
	.byte	0xe9
	.uleb128 0x49
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xd
	.byte	0x26
	.uleb128 0x49
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xe
	.byte	0x29
	.uleb128 0x4a
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x103
	.uleb128 0x49
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x8
	.byte	0xf0
	.uleb128 0x49
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x8
	.byte	0x95
	.uleb128 0x49
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x8
	.byte	0xa8
	.uleb128 0x49
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x8
	.byte	0xa0
	.uleb128 0x4a
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x7
	.2byte	0x10f
	.uleb128 0x49
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x8
	.byte	0x7c
	.uleb128 0x49
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xf
	.byte	0x47
	.uleb128 0x49
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x8
	.byte	0xbc
	.uleb128 0x49
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xf
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x10
	.byte	0x19
	.uleb128 0x49
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xf
	.byte	0x5a
	.uleb128 0x49
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xd
	.byte	0x76
	.uleb128 0x49
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xd
	.byte	0x36
	.uleb128 0x49
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x8
	.byte	0xcf
	.uleb128 0x49
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xd
	.byte	0x2e
	.uleb128 0x49
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xd
	.byte	0x82
	.uleb128 0x49
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x11
	.byte	0x5f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x38
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x47
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
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL46
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x8
	.byte	0x73
	.sleb128 4095
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL76
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL79
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL84
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL120
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL126
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL129
	.4byte	.LVL140
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL143
	.4byte	.LVL154
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x12
	.byte	0x91
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL156
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL156
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168-1
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL166
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL181
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL190-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x12
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL191
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL217
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL195
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL200
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL200
	.4byte	.LVL202-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202-1
	.4byte	.LVL203
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL208
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL208
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL208
	.4byte	.LVL210-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL210-1
	.4byte	.LVL213
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL228
	.4byte	.LVL232
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL223-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL223-1
	.4byte	.LVL225
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226-1
	.4byte	.LFE55
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL227
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x14
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x12
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL240
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL239
	.4byte	.LVL249
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL241
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL241
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL240
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL242
	.4byte	.LVL243-1
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL259
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL261
	.4byte	.LVL273
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL263
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL265
	.4byte	.LVL266-1
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL267
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0
	.4byte	0
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF143:
	.string	"find_default_boot_partition"
.LASF84:
	.string	"segment_count"
.LASF15:
	.string	"size_t"
.LASF17:
	.string	"sizetype"
.LASF88:
	.string	"entry_addr"
.LASF25:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF162:
	.string	"image_size"
.LASF140:
	.string	"ota_app_count"
.LASF110:
	.string	"start_addr"
.LASF13:
	.string	"int32_t"
.LASF188:
	.string	"app_desc"
.LASF141:
	.string	"__func__"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF167:
	.string	"esp_flash_encryption_enabled"
.LASF94:
	.string	"hash_appended"
.LASF199:
	.string	"invalid_otadata"
.LASF60:
	.string	"type"
.LASF161:
	.string	"is_ota_partition"
.LASF240:
	.string	"esp_partition_iterator_opaque_"
.LASF59:
	.string	"esp_partition_iterator_t"
.LASF148:
	.string	"ota_data_partition"
.LASF90:
	.string	"spi_pin_drv"
.LASF97:
	.string	"data_len"
.LASF3:
	.string	"__uint8_t"
.LASF166:
	.string	"aligned_erase_size"
.LASF144:
	.string	"result"
.LASF159:
	.string	"ota_data_map"
.LASF216:
	.string	"spi_flash_munmap"
.LASF79:
	.string	"esp_partition_pos_t"
.LASF74:
	.string	"ota_seq"
.LASF156:
	.string	"image_validate"
.LASF16:
	.string	"long int"
.LASF146:
	.string	"two_otadata"
.LASF222:
	.string	"esp_partition_iterator_release"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF238:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
.LASF208:
	.string	"last_boot_app_partition_from_otadata"
.LASF68:
	.string	"ESP_OTA_IMG_PENDING_VERIFY"
.LASF64:
	.string	"label"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF26:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"uint8_t"
.LASF226:
	.string	"abort"
.LASF204:
	.string	"req_ota_slot"
.LASF1:
	.string	"unsigned char"
.LASF120:
	.string	"esp_ota_handle_t"
.LASF220:
	.string	"esp_partition_write"
.LASF77:
	.string	"esp_ota_select_entry_t"
.LASF116:
	.string	"esp_image_metadata_t"
.LASF152:
	.string	"partition"
.LASF224:
	.string	"spi_flash_cache2phys"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_EFUSE_EM"
.LASF21:
	.string	"_Bool"
.LASF85:
	.string	"spi_mode"
.LASF19:
	.string	"char"
.LASF229:
	.string	"memset"
.LASF66:
	.string	"esp_partition_t"
.LASF112:
	.string	"segments"
.LASF217:
	.string	"bootloader_common_ota_select_crc"
.LASF4:
	.string	"__uint16_t"
.LASF237:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF234:
	.string	"bootloader_common_ota_select_valid"
.LASF175:
	.string	"esp_rewrite_ota_data"
.LASF61:
	.string	"subtype"
.LASF99:
	.string	"magic_word"
.LASF200:
	.string	"num_invalid_otadata"
.LASF91:
	.string	"chip_id"
.LASF122:
	.string	"ESP_LOG_ERROR"
.LASF24:
	.string	"spi_flash_mmap_handle_t"
.LASF186:
	.string	"next_is_result"
.LASF92:
	.string	"min_chip_rev"
.LASF138:
	.string	"ota_ops_entries_head"
.LASF101:
	.string	"reserv1"
.LASF108:
	.string	"reserv2"
.LASF227:
	.string	"esp_partition_verify"
.LASF111:
	.string	"image"
.LASF197:
	.string	"esp_ota_mark_app_invalid_rollback_and_reboot"
.LASF209:
	.string	"s_ota_ops_entries_head"
.LASF183:
	.string	"esp_ota_get_next_update_partition"
.LASF118:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF221:
	.string	"esp_partition_get"
.LASF196:
	.string	"esp_ota_mark_app_valid_cancel_rollback"
.LASF165:
	.string	"running_partition"
.LASF192:
	.string	"last_active_ota"
.LASF149:
	.string	"curr_partition"
.LASF218:
	.string	"__assert_func"
.LASF76:
	.string	"ota_state"
.LASF239:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/app_update"
.LASF169:
	.string	"enabled"
.LASF75:
	.string	"seq_label"
.LASF223:
	.string	"esp_partition_next"
.LASF18:
	.string	"long unsigned int"
.LASF160:
	.string	"check_invalid_otadata"
.LASF80:
	.string	"ESP_CHIP_ID_ESP32"
.LASF62:
	.string	"address"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF155:
	.string	"part_pos"
.LASF235:
	.string	"bootloader_common_select_otadata"
.LASF212:
	.string	"esp_partition_find_first"
.LASF170:
	.string	"esp_ota_begin"
.LASF103:
	.string	"project_name"
.LASF157:
	.string	"read_otadata"
.LASF98:
	.string	"esp_image_segment_header_t"
.LASF69:
	.string	"ESP_OTA_IMG_VALID"
.LASF203:
	.string	"esp_ota_get_state_partition"
.LASF172:
	.string	"data_bytes"
.LASF114:
	.string	"image_len"
.LASF191:
	.string	"active_ota"
.LASF70:
	.string	"ESP_OTA_IMG_INVALID"
.LASF178:
	.string	"next_otadata"
.LASF132:
	.string	"wrote_size"
.LASF65:
	.string	"encrypted"
.LASF7:
	.string	"__uint32_t"
.LASF9:
	.string	"long long int"
.LASF86:
	.string	"spi_speed"
.LASF177:
	.string	"active_otadata"
.LASF231:
	.string	"bootloader_common_get_active_otadata"
.LASF243:
	.string	"memcpy"
.LASF171:
	.string	"esp_ota_write"
.LASF119:
	.string	"esp_image_load_mode_t"
.LASF20:
	.string	"esp_err_t"
.LASF145:
	.string	"rewrite_ota_seq"
.LASF117:
	.string	"ESP_IMAGE_VERIFY"
.LASF96:
	.string	"load_addr"
.LASF71:
	.string	"ESP_OTA_IMG_ABORTED"
.LASF242:
	.string	"cleanup"
.LASF8:
	.string	"unsigned int"
.LASF113:
	.string	"segment_data"
.LASF150:
	.string	"phys_offs"
.LASF202:
	.string	"invalid_partition"
.LASF190:
	.string	"valid_otadata"
.LASF205:
	.string	"not_found"
.LASF134:
	.string	"partial_data"
.LASF72:
	.string	"ESP_OTA_IMG_UNDEFINED"
.LASF123:
	.string	"ESP_LOG_WARN"
.LASF232:
	.string	"bootloader_common_ota_select_invalid"
.LASF163:
	.string	"out_handle"
.LASF78:
	.string	"offset"
.LASF142:
	.string	"get_ota_partition_count"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF89:
	.string	"wp_pin"
.LASF241:
	.string	"set_new_state_otadata"
.LASF198:
	.string	"get_last_invalid_otadata"
.LASF126:
	.string	"ESP_LOG_VERBOSE"
.LASF228:
	.string	"calloc"
.LASF164:
	.string	"new_entry"
.LASF236:
	.string	"esp_restart"
.LASF180:
	.string	"find_partition"
.LASF129:
	.string	"handle"
.LASF158:
	.string	"otadata_partition"
.LASF233:
	.string	"esp_partition_read"
.LASF181:
	.string	"esp_ota_get_boot_partition"
.LASF189:
	.string	"esp_ota_check_rollback_is_possible"
.LASF173:
	.string	"copy_len"
.LASF95:
	.string	"esp_image_header_t"
.LASF213:
	.string	"esp_log_timestamp"
.LASF58:
	.string	"esp_partition_subtype_t"
.LASF63:
	.string	"size"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint16_t"
.LASF211:
	.string	"esp_image_verify"
.LASF136:
	.string	"ota_ops_entry_t"
.LASF121:
	.string	"ESP_LOG_NONE"
.LASF184:
	.string	"start_from"
.LASF102:
	.string	"version"
.LASF124:
	.string	"ESP_LOG_INFO"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF131:
	.string	"erased_size"
.LASF210:
	.string	"s_ota_ops_last_handle"
.LASF104:
	.string	"time"
.LASF22:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF151:
	.string	"esp_ota_get_running_partition"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF206:
	.string	"esp_ota_erase_last_boot_app_partition"
.LASF133:
	.string	"partial_bytes"
.LASF137:
	.string	"ota_ops_entry_"
.LASF73:
	.string	"esp_ota_img_states_t"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF87:
	.string	"spi_size"
.LASF219:
	.string	"esp_partition_erase_range"
.LASF153:
	.string	"load_mode"
.LASF182:
	.string	"ota_slot"
.LASF2:
	.string	"short int"
.LASF185:
	.string	"default_ota"
.LASF109:
	.string	"esp_app_desc_t"
.LASF127:
	.string	"le_next"
.LASF225:
	.string	"esp_partition_find"
.LASF128:
	.string	"le_prev"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF195:
	.string	"valid"
.LASF125:
	.string	"ESP_LOG_DEBUG"
.LASF215:
	.string	"esp_partition_mmap"
.LASF82:
	.string	"esp_chip_id_t"
.LASF107:
	.string	"app_elf_sha256"
.LASF174:
	.string	"esp_ota_end"
.LASF100:
	.string	"secure_version"
.LASF179:
	.string	"esp_ota_set_boot_partition"
.LASF23:
	.string	"SPI_FLASH_MMAP_INST"
.LASF14:
	.string	"uint32_t"
.LASF201:
	.string	"esp_ota_get_last_invalid_partition"
.LASF194:
	.string	"esp_ota_current_ota_is_workable"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF230:
	.string	"free"
.LASF5:
	.string	"short unsigned int"
.LASF83:
	.string	"magic"
.LASF193:
	.string	"slot"
.LASF176:
	.string	"otadata"
.LASF135:
	.string	"entries"
.LASF207:
	.string	"inactive_otadata"
.LASF168:
	.string	"flash_crypt_cnt"
.LASF27:
	.string	"esp_partition_type_t"
.LASF6:
	.string	"__int32_t"
.LASF139:
	.string	"lh_first"
.LASF106:
	.string	"idf_ver"
.LASF187:
	.string	"esp_ota_get_partition_description"
.LASF67:
	.string	"ESP_OTA_IMG_NEW"
.LASF214:
	.string	"esp_log_write"
.LASF93:
	.string	"reserved"
.LASF81:
	.string	"ESP_CHIP_ID_INVALID"
.LASF154:
	.string	"data"
.LASF115:
	.string	"image_digest"
.LASF105:
	.string	"date"
.LASF130:
	.string	"part"
.LASF147:
	.string	"sec_id"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
