	.file	"esp_ota_ops.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ota_app_count < 16 && \"must erase the partition before writing to it\""
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
	.section	.text.get_ota_partition_count,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5684
	.literal .LC4, .LC3
	.align	4
	.type	get_ota_partition_count, @function
get_ota_partition_count:
.LFB31:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
	.loc 1 278 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 280 0
	movi.n	a2, 0
	j	.L2
.LVL1:
.L3:
	addi.n	a2, a2, 1
.LVL2:
	.loc 1 281 0
	movi.n	a8, 0x11
	bne	a2, a8, .L2
.LBB16:
.LBB17:
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi	a11, 0x119
	call8	__assert_func
.LVL3:
.L2:
.LBE17:
.LBE16:
	.loc 1 280 0
	movi.n	a12, 0
	addi	a11, a2, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL4:
	bnez.n	a10, .L3
	.loc 1 285 0
	extui	a2, a2, 0, 8
.LVL5:
	retw.n
.LFE31:
	.size	get_ota_partition_count, .-get_ota_partition_count
	.section	.rodata.str1.1
.LC5:
	.string	"esp_ota_ops"
.LC7:
	.string	"\033[0;31mE (%d) %s: invalid partition table, no app partitions\033[0m\n"
	.section	.text.find_default_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	find_default_boot_partition, @function
find_default_boot_partition:
.LFB34:
	.loc 1 409 0
	entry	sp, 32
.LCFI1:
	.loc 1 413 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL6:
	mov.n	a2, a10
	.loc 1 414 0
	bnez.n	a10, .L6
	movi.n	a2, 0x10
.L7:
.LVL7:
.LBB22:
	.loc 1 420 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a12
.LVL8:
	call8	esp_partition_find_first
.LVL9:
	.loc 1 421 0
	bnez.n	a10, .L9
	.loc 1 419 0 discriminator 2
	addi.n	a2, a2, 1
.LVL10:
	bnei	a2, 32, .L7
.LBE22:
	.loc 1 427 0
	mov.n	a11, a2
	mov.n	a12, a10
	call8	esp_partition_find_first
.LVL11:
	mov.n	a2, a10
.LVL12:
	.loc 1 428 0
	bnez.n	a10, .L6
.LBB23:
.LBB24:
	.loc 1 432 0
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC6
	l32r	a12, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	retw.n
.LVL15:
.L9:
.LBE24:
.LBE23:
.LBB25:
	.loc 1 420 0
	mov.n	a2, a10
.LVL16:
.L6:
.LBE25:
	.loc 1 434 0
	retw.n
.LFE34:
	.size	find_default_boot_partition, .-find_default_boot_partition
	.section	.text.rewrite_ota_seq$part$2,"ax",@progbits
	.literal_position
	.literal .LC9, s_ota_select
	.literal .LC10, 4096
	.align	4
	.type	rewrite_ota_seq$part$2, @function
rewrite_ota_seq$part$2:
.LFB40:
	.loc 1 259 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 264 0
	l32r	a8, .LC9
	slli	a5, a3, 5
	add.n	a5, a8, a5
.LBB28:
.LBB29:
	.loc 1 251 0
	movi.n	a12, 4
	mov.n	a11, a5
.LBE29:
.LBE28:
	.loc 1 264 0
	s32i.n	a2, a5, 0
.LVL18:
.LBB31:
.LBB30:
	.loc 1 251 0
	movi.n	a10, -1
	call8	crc32_le
.LVL19:
.LBE30:
.LBE31:
	.loc 1 266 0
	slli	a3, a3, 12
.LVL20:
	l32r	a12, .LC10
	.loc 1 265 0
	s32i.n	a10, a5, 28
	.loc 1 266 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	esp_partition_erase_range
.LVL21:
	.loc 1 267 0
	bnez.n	a10, .L13
	.loc 1 270 0
	movi.n	a13, 0x20
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
.LVL22:
	call8	esp_partition_write
.LVL23:
.L13:
	.loc 1 275 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE40:
	.size	rewrite_ota_seq$part$2, .-rewrite_ota_seq$part$2
	.section	.rodata.str1.1
.LC13:
	.string	"phys_offs != SPI_FLASH_CACHE2PHYS_FAIL"
.LC17:
	.string	"it != NULL"
	.section	.text.esp_ota_get_running_partition,"ax",@progbits
	.literal_position
	.literal .LC11, curr_partition$5732
	.literal .LC12, esp_ota_get_running_partition
	.literal .LC14, .LC13
	.literal .LC15, __func__$5734
	.literal .LC16, .LC3
	.literal .LC18, .LC17
	.align	4
	.global	esp_ota_get_running_partition
	.type	esp_ota_get_running_partition, @function
esp_ota_get_running_partition:
.LFB36:
	.loc 1 495 0
	entry	sp, 32
.LCFI3:
	.loc 1 502 0
	l32r	a4, .LC11
	l32i.n	a2, a4, 0
	bnez.n	a2, .L16
.LBB35:
.LBB36:
	.loc 1 508 0
	l32r	a10, .LC12
	call8	spi_flash_cache2phys
.LVL25:
	mov.n	a5, a10
.LVL26:
	.loc 1 510 0
	bnei	a10, -1, .L17
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi	a11, 0x1fe
	j	.L23
.L17:
	.loc 1 512 0
	mov.n	a12, a2
	movi	a11, 0xff
	mov.n	a10, a2
	call8	esp_partition_find
.LVL27:
	mov.n	a3, a10
.LVL28:
	.loc 1 515 0
	bnez.n	a10, .L21
	l32r	a13, .LC18
	l32r	a12, .LC15
	movi	a11, 0x203
.LVL29:
.L23:
	l32r	a10, .LC16
	call8	__assert_func
.LVL30:
.L21:
.LBB37:
	.loc 1 518 0
	mov.n	a10, a3
	call8	esp_partition_get
.LVL31:
	.loc 1 519 0
	l32i.n	a9, a10, 8
	.loc 1 518 0
	mov.n	a2, a10
.LVL32:
	.loc 1 520 0
	mov.n	a10, a3
	.loc 1 519 0
	bltu	a5, a9, .L19
	l32i.n	a8, a2, 12
	add.n	a8, a9, a8
	bgeu	a5, a8, .L19
	.loc 1 520 0
	call8	esp_partition_iterator_release
.LVL33:
	.loc 1 521 0
	s32i.n	a2, a4, 0
	retw.n
.L19:
	.loc 1 524 0
	call8	esp_partition_next
.LVL34:
	mov.n	a3, a10
.LVL35:
.LBE37:
	.loc 1 517 0
	bnez.n	a10, .L21
	.loc 1 527 0
	call8	abort
.LVL36:
.L16:
.LBE36:
.LBE35:
	.loc 1 528 0
	retw.n
.LFE36:
	.size	esp_ota_get_running_partition, .-esp_ota_get_running_partition
	.section	.text.ota_select_valid,"ax",@progbits
	.align	4
	.type	ota_select_valid, @function
ota_select_valid:
.LFB29:
	.loc 1 255 0
.LVL37:
	entry	sp, 32
.LCFI4:
	.loc 1 256 0
	l32i.n	a3, a2, 0
	.loc 1 255 0
	mov.n	a11, a2
	.loc 1 256 0
	movi.n	a2, 0
.LVL38:
	beqi	a3, -1, .L25
	.loc 1 256 0 is_stmt 0 discriminator 1
	l32i.n	a3, a11, 28
.LVL39:
.LBB40:
.LBB41:
	.loc 1 251 0 is_stmt 1 discriminator 1
	movi.n	a12, 4
	movi.n	a10, -1
	call8	crc32_le
.LVL40:
.LBE41:
.LBE40:
	.loc 1 256 0 discriminator 1
	sub	a10, a3, a10
	movi.n	a3, 1
	moveqz	a2, a3, a10
.LVL41:
.L25:
	.loc 1 257 0 discriminator 6
	retw.n
.LFE29:
	.size	ota_select_valid, .-ota_select_valid
	.section	.text.esp_ota_begin,"ax",@progbits
	.literal_position
	.literal .LC19, 5377
	.literal .LC20, s_ota_ops_entries_head
	.literal .LC21, s_ota_ops_last_handle
	.align	4
	.global	esp_ota_begin
	.type	esp_ota_begin, @function
esp_ota_begin:
.LFB25:
	.loc 1 81 0
.LVL42:
	entry	sp, 48
.LCFI5:
.LVL43:
	.loc 1 85 0
	movi.n	a8, 1
	movi.n	a6, 0
	moveqz	a6, a8, a2
	extui	a5, a6, 0, 8
	bnez.n	a5, .L32
	moveqz	a5, a8, a4
	beqz.n	a5, .L29
.LVL44:
.L32:
	.loc 1 86 0
	movi	a2, 0x102
	retw.n
.LVL45:
.L29:
	.loc 1 89 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL46:
	mov.n	a5, a10
.LVL47:
	.loc 1 91 0
	movi	a2, 0x105
	.loc 1 90 0
	beqz.n	a10, .L46
.LVL48:
.LBB44:
.LBB45:
	.loc 1 75 0
	l32i.n	a11, a10, 0
	bnez.n	a11, .L32
	.loc 1 77 0
	l32i.n	a2, a10, 4
	movi.n	a6, 0xf
	addi	a2, a2, -16
	bltu	a6, a2, .L32
	j	.L33
.L50:
.LBE45:
.LBE44:
	.loc 1 103 0
	addi.n	a6, a3, -1
	movi.n	a2, -3
	bgeu	a2, a6, .L34
	.loc 1 104 0
	l32i.n	a12, a5, 12
	j	.L51
.L34:
	.loc 1 106 0
	srli	a12, a3, 12
	addi.n	a12, a12, 1
	slli	a12, a12, 12
.L51:
	mov.n	a10, a5
	call8	esp_partition_erase_range
.LVL49:
	mov.n	a2, a10
	.loc 1 109 0
	bnez.n	a10, .L46
	.loc 1 113 0
	movi.n	a11, 1
	movi.n	a10, 0x2c
.LVL50:
	call8	calloc
.LVL51:
	.loc 1 115 0
	movi	a2, 0x101
.LVL52:
	.loc 1 114 0
	beqz.n	a10, .L46
	.loc 1 118 0
	l32r	a2, .LC20
	l32i.n	a8, a2, 0
	s32i.n	a8, a10, 36
	beqz.n	a8, .L36
	.loc 1 118 0 discriminator 1
	addi	a9, a10, 36
	s32i.n	a9, a8, 40
.L36:
	.loc 1 118 0 is_stmt 0 discriminator 3
	s32i.n	a10, a2, 0
	s32i.n	a2, a10, 40
	.loc 1 120 0 is_stmt 1 discriminator 3
	movi.n	a2, -3
	bgeu	a2, a6, .L37
	.loc 1 121 0
	l32i.n	a2, a5, 12
	s32i.n	a2, a10, 8
	j	.L38
.L37:
	.loc 1 123 0
	s32i.n	a3, a10, 8
.L38:
	.loc 1 127 0
	l32r	a3, .LC21
.LVL53:
	.loc 1 126 0
	s32i.n	a5, a10, 4
	.loc 1 127 0
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a10, 0
	.loc 1 128 0
	s32i.n	a2, a4, 0
	.loc 1 129 0
	movi.n	a2, 0
	retw.n
.LVL54:
.L33:
	.loc 1 98 0
	s32i.n	a11, sp, 0
	call8	esp_ota_get_running_partition
.LVL55:
	l32i.n	a11, sp, 0
	.loc 1 99 0
	l32r	a2, .LC19
	.loc 1 98 0
	bne	a5, a10, .L50
.LVL56:
.L46:
	.loc 1 130 0
	retw.n
.LFE25:
	.size	esp_ota_begin, .-esp_ota_begin
	.section	.rodata.str1.1
.LC24:
	.string	"\033[0;31mE (%d) %s: write data is invalid\033[0m\n"
.LC27:
	.string	"it->erased_size > 0 && \"must erase the partition before writing to it\""
.LC31:
	.string	"\033[0;31mE (%d) %s: OTA image has invalid magic byte (expected 0xE9, saw 0x%02x\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: not found the handle\033[0m\n"
	.section	.text.esp_ota_write,"ax",@progbits
	.literal_position
	.literal .LC22, 5379
	.literal .LC23, .LC5
	.literal .LC25, .LC24
	.literal .LC26, s_ota_ops_entries_head
	.literal .LC28, .LC27
	.literal .LC29, __func__$5652
	.literal .LC30, .LC3
	.literal .LC32, .LC31
	.literal .LC33, 1073061888
	.literal .LC35, .LC34
	.align	4
	.global	esp_ota_write
	.type	esp_ota_write, @function
esp_ota_write:
.LFB26:
	.loc 1 133 0
.LVL57:
	entry	sp, 48
.LCFI6:
.LVL58:
	.loc 1 138 0
	bnez.n	a3, .L53
	.loc 1 139 0 discriminator 2
	call8	esp_log_timestamp
.LVL59:
	l32r	a11, .LC23
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC25
	j	.L86
.L53:
	.loc 1 144 0
	l32r	a5, .LC26
	l32i.n	a5, a5, 0
.LVL60:
	j	.L55
.L64:
	.loc 1 145 0
	l32i.n	a6, a5, 0
	bne	a6, a2, .L56
	.loc 1 147 0
	l32i.n	a2, a5, 8
.LVL61:
	bnez.n	a2, .L57
	.loc 1 147 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	l32r	a10, .LC30
	movi	a11, 0x93
	call8	__assert_func
.LVL62:
.L57:
	.loc 1 148 0 is_stmt 1
	l32i.n	a2, a5, 12
	bnez.n	a2, .L58
	.loc 1 148 0 is_stmt 0 discriminator 1
	l8ui	a6, a5, 16
	movi.n	a7, 1
	mov.n	a8, a2
	moveqz	a8, a7, a6
	extui	a6, a8, 0, 8
	beqz.n	a6, .L58
	movnez	a2, a7, a4
	extui	a2, a2, 0, 8
	beqz.n	a2, .L58
	.loc 1 148 0 discriminator 3
	l8ui	a6, a3, 0
	movi	a2, 0xe9
	beq	a6, a2, .L58
	.loc 1 149 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC23
	l8ui	a15, a3, 0
	l32r	a12, .LC32
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a7
	call8	esp_log_write
.LVL64:
	.loc 1 150 0 discriminator 2
	l32r	a10, .LC22
	j	.L54
.L58:
.LBB49:
.LBB50:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a2, .LC33
	.loc 2 41 0
	movi.n	a6, 0
	.loc 2 39 0
	memw
	l32i.n	a10, a2, 0
	.loc 2 44 0
	movi.n	a7, 1
	.loc 2 39 0
	extui	a2, a10, 20, 8
.LVL65:
	j	.L59
.LVL66:
.L61:
	.loc 2 43 0
	bbci	a2, 0, .L60
	.loc 2 44 0
	xor	a6, a6, a7
.LVL67:
	extui	a6, a6, 0, 8
.LVL68:
.L60:
	.loc 2 46 0
	srli	a2, a2, 1
.LVL69:
.L59:
	.loc 2 42 0
	bnez.n	a2, .L61
.LBE50:
.LBE49:
	.loc 1 153 0
	beqz.n	a6, .L62
.LBB51:
	.loc 1 158 0
	l8ui	a10, a5, 16
	beqz.n	a10, .L63
	.loc 1 159 0
	movi.n	a6, 0x10
.LVL70:
	sub	a6, a6, a10
	.loc 1 160 0
	addi	a8, a5, 17
	.loc 1 159 0
	minu	a6, a6, a4
.LVL71:
	.loc 1 160 0
	add.n	a10, a8, a10
	mov.n	a12, a6
	mov.n	a11, a3
	s32i.n	a8, sp, 0
	call8	memcpy
.LVL72:
	.loc 1 161 0
	l8ui	a7, a5, 16
	.loc 1 163 0
	mov.n	a10, a2
	.loc 1 161 0
	add.n	a7, a6, a7
	extui	a7, a7, 0, 8
	s8i	a7, a5, 16
	.loc 1 162 0
	l32i.n	a8, sp, 0
	bnei	a7, 16, .L54
	.loc 1 166 0
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	mov.n	a12, a8
	mov.n	a13, a7
	call8	esp_partition_write
.LVL73:
	.loc 1 167 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L54
	.loc 1 171 0
	mov.n	a12, a7
	movi	a11, 0xff
	mov.n	a10, a8
.LVL74:
	call8	memset
.LVL75:
	.loc 1 172 0
	l32i.n	a2, a5, 12
.LVL76:
	.loc 1 173 0
	add.n	a3, a3, a6
.LVL77:
	.loc 1 172 0
	addi	a2, a2, 16
	s32i.n	a2, a5, 12
	.loc 1 174 0
	sub	a4, a4, a6
.LVL78:
.L63:
	.loc 1 178 0
	extui	a12, a4, 0, 4
	s8i	a12, a5, 16
	.loc 1 179 0
	beqz.n	a12, .L62
	.loc 1 180 0
	sub	a4, a4, a12
.LVL79:
	.loc 1 181 0
	add.n	a11, a3, a4
	addi	a10, a5, 17
	call8	memcpy
.LVL80:
.L62:
.LBE51:
	.loc 1 185 0
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	mov.n	a13, a4
	mov.n	a12, a3
	call8	esp_partition_write
.LVL81:
	.loc 1 186 0
	bnez.n	a10, .L54
	.loc 1 187 0
	l32i.n	a2, a5, 12
	add.n	a4, a2, a4
.LVL82:
	s32i.n	a4, a5, 12
	j	.L54
.LVL83:
.L56:
	.loc 1 144 0 discriminator 2
	l32i.n	a5, a5, 36
.LVL84:
.L55:
	.loc 1 144 0 discriminator 1
	bnez.n	a5, .L64
	.loc 1 194 0 discriminator 2
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC23
	l32r	a12, .LC35
	mov.n	a14, a11
	mov.n	a13, a10
.LVL86:
.L86:
	movi.n	a10, 1
	call8	esp_log_write
.LVL87:
	.loc 1 195 0 discriminator 2
	movi	a10, 0x102
.LVL88:
.L54:
	.loc 1 196 0
	mov.n	a2, a10
	retw.n
.LFE26:
	.size	esp_ota_write, .-esp_ota_write
	.section	.text.esp_ota_end,"ax",@progbits
	.literal_position
	.literal .LC36, 5379
	.literal .LC37, s_ota_ops_entries_head
	.align	4
	.global	esp_ota_end
	.type	esp_ota_end, @function
esp_ota_end:
.LFB27:
	.loc 1 199 0
.LVL89:
	entry	sp, 304
.LCFI7:
.LVL90:
	.loc 1 203 0
	l32r	a3, .LC37
	l32i.n	a3, a3, 0
.LVL91:
	j	.L88
.L90:
	.loc 1 204 0
	l32i.n	a8, a3, 0
	beq	a8, a2, .L89
	.loc 1 203 0 discriminator 2
	l32i.n	a3, a3, 36
.LVL92:
.L88:
	.loc 1 203 0 discriminator 1
	bnez.n	a3, .L90
	.loc 1 210 0
	movi	a2, 0x105
.LVL93:
	retw.n
.L109:
	.loc 1 216 0 discriminator 1
	l32i.n	a11, a3, 12
	beqz.n	a11, .L92
	.loc 1 221 0
	l8ui	a2, a3, 16
	beqz.n	a2, .L93
	.loc 1 223 0
	l32i.n	a10, a3, 4
	movi.n	a13, 0x10
	addi	a12, a3, 17
	call8	esp_partition_write
.LVL94:
	.loc 1 225 0
	movi	a2, 0x103
	.loc 1 224 0
	bnez.n	a10, .L92
	.loc 1 228 0
	l32i.n	a2, a3, 12
	.loc 1 229 0
	s8i	a10, a3, 16
	.loc 1 228 0
	addi	a2, a2, 16
	s32i.n	a2, a3, 12
.LVL95:
.L93:
	.loc 1 234 0
	l32i.n	a2, a3, 4
	.loc 1 238 0
	mov.n	a12, sp
	.loc 1 233 0
	l32i.n	a8, a2, 8
	l32i.n	a2, a2, 12
	.loc 1 238 0
	addmi	a11, sp, 0x100
	movi.n	a10, 0
	.loc 1 233 0
	s32i	a8, sp, 256
	s32i	a2, sp, 260
	.loc 1 238 0
	call8	esp_image_verify
.LVL96:
	.loc 1 239 0
	l32r	a8, .LC36
	movi.n	a2, 0
	movnez	a2, a8, a10
.LVL97:
.L92:
	.loc 1 244 0
	l32i.n	a8, a3, 36
	beqz.n	a8, .L94
	.loc 1 244 0 discriminator 1
	l32i.n	a9, a3, 40
	s32i.n	a9, a8, 40
.L94:
	.loc 1 244 0 is_stmt 0 discriminator 3
	l32i.n	a9, a3, 40
	.loc 1 245 0 is_stmt 1 discriminator 3
	mov.n	a10, a3
	.loc 1 244 0 discriminator 3
	s32i.n	a8, a9, 0
	.loc 1 245 0 discriminator 3
	call8	free
.LVL98:
	.loc 1 246 0 discriminator 3
	retw.n
.LVL99:
.L89:
	.loc 1 216 0
	l32i.n	a8, a3, 8
	.loc 1 217 0
	movi	a2, 0x102
.LVL100:
	.loc 1 216 0
	beqz.n	a8, .L92
	j	.L109
.LFE27:
	.size	esp_ota_end, .-esp_ota_end
	.section	.text.esp_ota_set_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC38, 5379
	.literal .LC39, s_ota_select
	.literal .LC40, s_ota_select+32
	.align	4
	.global	esp_ota_set_boot_partition
	.type	esp_ota_set_boot_partition, @function
esp_ota_set_boot_partition:
.LFB33:
	.loc 1 364 0
.LVL101:
	entry	sp, 304
.LCFI8:
.LVL102:
	.loc 1 364 0
	mov.n	a3, a2
	.loc 1 366 0
	bnez.n	a2, .L111
.LVL103:
.L113:
	.loc 1 367 0
	movi	a2, 0x102
	retw.n
.LVL104:
.L111:
	.loc 1 371 0
	l32i.n	a2, a2, 8
.LVL105:
	.loc 1 375 0
	mov.n	a12, sp
	.loc 1 371 0
	s32i	a2, sp, 256
	l32i.n	a2, a3, 12
	.loc 1 375 0
	addmi	a11, sp, 0x100
	movi.n	a10, 0
	.loc 1 371 0
	s32i	a2, sp, 260
	.loc 1 375 0
	call8	esp_image_verify
.LVL106:
	.loc 1 376 0
	l32r	a2, .LC38
	.loc 1 375 0
	bnez.n	a10, .L112
	.loc 1 386 0
	l32i.n	a6, a3, 0
	bnez.n	a6, .L113
	.loc 1 387 0
	l32i.n	a2, a3, 4
	bnez.n	a2, .L114
	.loc 1 388 0
	mov.n	a12, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL107:
	.loc 1 389 0
	bnez.n	a10, .L115
.L116:
	.loc 1 392 0
	movi	a2, 0x105
	retw.n
.L115:
	.loc 1 390 0
	l32i.n	a12, a10, 12
	mov.n	a11, a2
	call8	esp_partition_erase_range
.LVL108:
	j	.L142
.LVL109:
.L114:
	.loc 1 396 0
	mov.n	a12, a6
	mov.n	a11, a6
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL110:
	.loc 1 397 0
	beqz.n	a10, .L116
.LBB64:
.LBB65:
	.loc 1 297 0
	mov.n	a12, a6
	mov.n	a11, a6
	movi.n	a10, 1
.LVL111:
.LBE65:
.LBE64:
	.loc 1 398 0
	l32i.n	a3, a3, 4
.LVL112:
.LBB75:
.LBB74:
	.loc 1 295 0
	s32i	a6, sp, 264
	.loc 1 297 0
	call8	esp_partition_find_first
.LVL113:
	mov.n	a4, a10
.LVL114:
	.loc 1 359 0
	movi	a2, 0x105
	.loc 1 298 0
	beqz.n	a10, .L112
	.loc 1 299 0
	call8	get_ota_partition_count
.LVL115:
	.loc 1 315 0
	extui	a3, a3, 0, 4
.LVL116:
	.loc 1 299 0
	mov.n	a5, a10
.LVL117:
	.loc 1 316 0
	movi	a2, 0x102
	.loc 1 315 0
	bgeu	a3, a10, .L112
	.loc 1 319 0
	movi	a15, 0x10c
	movi	a14, 0x108
	l32i.n	a12, a4, 12
	add.n	a15, sp, a15
	add.n	a14, sp, a14
	mov.n	a13, a6
	mov.n	a11, a6
	mov.n	a10, a4
	call8	esp_partition_mmap
.LVL118:
	.loc 1 320 0
	mov.n	a2, a10
	bnez.n	a10, .L112
	.loc 1 324 0
	l32i	a7, sp, 264
	l32r	a2, .LC39
	movi.n	a12, 0x20
	mov.n	a11, a7
	mov.n	a10, a2
.LVL119:
	call8	memcpy
.LVL120:
	.loc 1 325 0
	l32r	a6, .LC40
	movi.n	a12, 0x20
	addmi	a11, a7, 0x1000
	mov.n	a10, a6
	call8	memcpy
.LVL121:
	.loc 1 326 0
	l32i	a10, sp, 268
	addi.n	a3, a3, 1
	call8	spi_flash_munmap
.LVL122:
	.loc 1 329 0
	mov.n	a10, a2
	call8	ota_select_valid
.LVL123:
	beqz.n	a10, .L118
	mov.n	a10, a6
	call8	ota_select_valid
.LVL124:
	beqz.n	a10, .L118
	.loc 1 330 0
	l32i.n	a6, a2, 0
	l32i.n	a2, a2, 32
	.loc 1 331 0
	remu	a10, a3, a5
	.loc 1 330 0
	maxu	a7, a6, a2
.LVL125:
	j	.L119
.LVL126:
.L120:
	add.n	a10, a10, a5
.L119:
	.loc 1 331 0
	bltu	a10, a7, .L120
.LBB66:
.LBB67:
	mov.n	a12, a4
.LBE67:
.LBE66:
	.loc 1 335 0
	bltu	a6, a2, .L144
.LVL127:
	j	.L145
.LVL128:
.L118:
	.loc 1 341 0
	mov.n	a10, a2
	call8	ota_select_valid
.LVL129:
	beqz.n	a10, .L122
	.loc 1 342 0
	l32i.n	a2, a2, 0
	remu	a10, a3, a5
	j	.L123
.LVL130:
.L124:
	add.n	a10, a10, a5
.L123:
	bltu	a10, a2, .L124
.LVL131:
.LBB68:
.LBB69:
	mov.n	a12, a4
.LVL132:
.L145:
	movi.n	a11, 1
	j	.L143
.LVL133:
.L122:
.LBE69:
.LBE68:
	.loc 1 347 0
	mov.n	a10, a6
	call8	ota_select_valid
.LVL134:
	beqz.n	a10, .L125
	.loc 1 348 0
	l32i.n	a2, a2, 32
	remu	a10, a3, a5
	j	.L126
.LVL135:
.L127:
	add.n	a10, a10, a5
.L126:
	bltu	a10, a2, .L127
.LVL136:
.LBB70:
.LBB71:
	mov.n	a12, a4
.LVL137:
.L144:
	movi.n	a11, 0
	j	.L143
.LVL138:
.L125:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	mov.n	a11, a10
	mov.n	a12, a4
	mov.n	a10, a3
.LVL139:
.L143:
	call8	rewrite_ota_seq$part$2
.LVL140:
.L142:
	mov.n	a2, a10
.L112:
.LBE73:
.LBE72:
.LBE74:
.LBE75:
	.loc 1 406 0
	retw.n
.LFE33:
	.size	esp_ota_set_boot_partition, .-esp_ota_set_boot_partition
	.section	.rodata.str1.1
.LC42:
	.string	"\033[0;31mE (%d) %s: not found ota data\033[0m\n"
.LC44:
	.string	"\033[0;31mE (%d) %s: mmap ota data filed\033[0m\n"
.LC48:
	.string	"\033[0;31mE (%d) %s: ota data invalid, no current app. Assuming factory\033[0m\n"
	.section	.text.esp_ota_get_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC41, .LC5
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC46, s_ota_select
	.literal .LC47, s_ota_select+32
	.literal .LC49, .LC48
	.align	4
	.global	esp_ota_get_boot_partition
	.type	esp_ota_get_boot_partition, @function
esp_ota_get_boot_partition:
.LFB35:
	.loc 1 437 0
	entry	sp, 48
.LCFI9:
.LVL141:
	.loc 1 441 0
	movi.n	a2, 0
	.loc 1 443 0
	mov.n	a12, a2
	mov.n	a11, a2
	movi.n	a10, 1
	.loc 1 441 0
	s32i.n	a2, sp, 0
.LVL142:
	.loc 1 443 0
	call8	esp_partition_find_first
.LVL143:
	mov.n	a3, a10
.LVL144:
	.loc 1 445 0
	bne	a10, a2, .L147
	.loc 1 446 0 discriminator 2
	call8	esp_log_timestamp
.LVL145:
	l32r	a11, .LC41
	l32r	a12, .LC43
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL146:
	.loc 1 447 0 discriminator 2
	mov.n	a10, a3
	j	.L148
.L147:
	.loc 1 450 0
	l32i.n	a12, a10, 12
	addi.n	a15, sp, 4
	mov.n	a14, sp
	mov.n	a13, a2
	mov.n	a11, a2
	call8	esp_partition_mmap
.LVL147:
	.loc 1 451 0
	beqz.n	a10, .L149
	.loc 1 452 0
	l32i.n	a10, sp, 4
.LVL148:
	call8	spi_flash_munmap
.LVL149:
	.loc 1 453 0
	call8	esp_log_timestamp
.LVL150:
	l32r	a11, .LC41
	l32r	a12, .LC45
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL151:
	.loc 1 454 0
	mov.n	a10, a2
	j	.L148
.LVL152:
.L149:
	.loc 1 456 0
	l32i.n	a2, sp, 0
	l32r	a5, .LC46
	mov.n	a11, a2
	movi.n	a12, 0x20
	mov.n	a10, a5
.LVL153:
	call8	memcpy
.LVL154:
	.loc 1 457 0
	l32r	a4, .LC47
	addmi	a11, a2, 0x1000
	movi.n	a12, 0x20
	mov.n	a10, a4
	call8	memcpy
.LVL155:
	.loc 1 458 0
	l32i.n	a10, sp, 4
	mov.n	a2, a5
	call8	spi_flash_munmap
.LVL156:
	.loc 1 460 0
	call8	get_ota_partition_count
.LVL157:
	.loc 1 464 0
	l32i.n	a8, a5, 0
	.loc 1 460 0
	mov.n	a3, a10
.LVL158:
	.loc 1 464 0
	bnei	a8, -1, .L150
	.loc 1 464 0 is_stmt 0 discriminator 1
	l32i.n	a5, a5, 32
	bnei	a5, -1, .L150
	j	.L160
.L150:
	.loc 1 467 0 is_stmt 1
	mov.n	a10, a2
	call8	ota_select_valid
.LVL159:
	beqz.n	a10, .L151
	.loc 1 467 0 is_stmt 0 discriminator 1
	mov.n	a10, a4
	call8	ota_select_valid
.LVL160:
	beqz.n	a10, .L151
	.loc 1 471 0 is_stmt 1
	l32i.n	a11, a2, 0
	l32i.n	a2, a2, 32
	maxu	a11, a11, a2
	j	.L162
.L151:
	.loc 1 473 0
	mov.n	a10, a2
	call8	ota_select_valid
.LVL161:
	mov.n	a5, a10
	beqz.n	a10, .L152
	.loc 1 477 0
	l32i.n	a11, a2, 0
.L162:
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	j	.L161
.L152:
	.loc 1 480 0
	mov.n	a10, a4
	call8	ota_select_valid
.LVL162:
	beqz.n	a10, .L153
	.loc 1 484 0
	l32i.n	a11, a2, 32
	mov.n	a12, a5
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	addi	a11, a11, 16
	mov.n	a10, a5
.L161:
	call8	esp_partition_find_first
.LVL163:
	j	.L148
.L153:
	.loc 1 488 0 discriminator 2
	call8	esp_log_timestamp
.LVL164:
	l32r	a11, .LC41
	l32r	a12, .LC49
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL165:
.L160:
	.loc 1 489 0 discriminator 2
	call8	find_default_boot_partition
.LVL166:
.L148:
	.loc 1 491 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	esp_ota_get_boot_partition, .-esp_ota_get_boot_partition
	.section	.rodata.str1.1
.LC50:
	.string	"start_from != NULL"
	.section	.text.esp_ota_get_next_update_partition,"ax",@progbits
	.literal_position
	.literal .LC51, .LC50
	.literal .LC52, __func__$5745
	.literal .LC53, .LC3
	.align	4
	.global	esp_ota_get_next_update_partition
	.type	esp_ota_get_next_update_partition, @function
esp_ota_get_next_update_partition:
.LFB37:
	.loc 1 532 0
.LVL167:
	entry	sp, 32
.LCFI10:
.LVL168:
	.loc 1 535 0
	bnez.n	a2, .L164
	.loc 1 536 0
	call8	esp_ota_get_running_partition
.LVL169:
	j	.L178
.L164:
	.loc 1 538 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL170:
.L178:
	movi.n	a5, 0
	mov.n	a4, a10
.LVL171:
	movi.n	a3, 0x10
	mov.n	a2, a5
	.loc 1 540 0
	bne	a10, a5, .L175
	.loc 1 540 0 is_stmt 0 discriminator 1
	l32r	a13, .LC51
	l32r	a12, .LC52
	l32r	a10, .LC53
	movi	a11, 0x21c
	call8	__assert_func
.LVL172:
.L175:
.LBB76:
.LBB77:
	.loc 1 555 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL173:
	.loc 1 556 0
	beqz.n	a10, .L167
	.loc 1 560 0
	moveqz	a2, a10, a2
.LVL174:
	.loc 1 566 0
	beq	a4, a10, .L171
	.loc 1 570 0
	beqz.n	a5, .L167
	j	.L172
.L171:
	.loc 1 568 0
	movi.n	a5, 1
.LVL175:
.L167:
.LBE77:
	.loc 1 554 0
	addi.n	a3, a3, 1
.LVL176:
	.loc 1 552 0
	bnei	a3, 32, .L175
	retw.n
.L172:
.LBB78:
	.loc 1 555 0
	mov.n	a2, a10
.LVL177:
.LBE78:
.LBE76:
	.loc 1 577 0
	retw.n
.LFE37:
	.size	esp_ota_get_next_update_partition, .-esp_ota_get_next_update_partition
	.section	.rodata.__func__$5745,"a",@progbits
	.type	__func__$5745, @object
	.size	__func__$5745, 34
__func__$5745:
	.string	"esp_ota_get_next_update_partition"
	.section	.rodata.__func__$5734,"a",@progbits
	.type	__func__$5734, @object
	.size	__func__$5734, 30
__func__$5734:
	.string	"esp_ota_get_running_partition"
	.section	.bss.curr_partition$5732,"aw",@nobits
	.align	4
	.type	curr_partition$5732, @object
	.size	curr_partition$5732, 4
curr_partition$5732:
	.zero	4
	.section	.rodata.__func__$5684,"a",@progbits
	.type	__func__$5684, @object
	.size	__func__$5684, 24
__func__$5684:
	.string	"get_ota_partition_count"
	.section	.rodata.__func__$5652,"a",@progbits
	.type	__func__$5652, @object
	.size	__func__$5652, 14
__func__$5652:
	.string	"esp_ota_write"
	.section	.bss.s_ota_select,"aw",@nobits
	.align	4
	.type	s_ota_select, @object
	.size	s_ota_select, 64
s_ota_select:
	.zero	64
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x130
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
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
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/crc.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.LASF175
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
	.4byte	0x218
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
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x50
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x5a
	.4byte	0x22e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x234
	.uleb128 0xc
	.4byte	.LASF176
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x63
	.4byte	0x28a
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0x64
	.4byte	0x152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.4byte	0x218
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x68
	.4byte	0x28a
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x69
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x29a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x8
	.byte	0x6a
	.4byte	0x239
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x2b5
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x2d6
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x25
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.byte	0x26
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x27
	.4byte	0x2b5
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.4byte	0x368
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xa
	.byte	0x3c
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xa
	.byte	0x3d
	.4byte	0x89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xa
	.byte	0x3f
	.4byte	0x89
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xa
	.byte	0x41
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0xa
	.byte	0x43
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.byte	0x44
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.byte	0x47
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xa
	.byte	0x49
	.4byte	0x368
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xa
	.byte	0x4b
	.4byte	0x378
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0x4f
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x378
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x388
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x50
	.4byte	0x2e1
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x57
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xa
	.byte	0x58
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xa
	.byte	0x59
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x5a
	.4byte	0x393
	.uleb128 0x10
	.2byte	0x100
	.byte	0xa
	.byte	0x5f
	.4byte	0x411
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xa
	.byte	0x60
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xa
	.byte	0x61
	.4byte	0x388
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xa
	.byte	0x62
	.4byte	0x411
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x63
	.4byte	0x421
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xa
	.byte	0x64
	.4byte	0xaa
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0x65
	.4byte	0x431
	.byte	0xe0
	.byte	0
	.uleb128 0x8
	.4byte	0x3b4
	.4byte	0x421
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x431
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x441
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x66
	.4byte	0x3bf
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x69
	.4byte	0x465
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0x2a
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x4a1
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x34
	.4byte	0x4c2
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x1
	.byte	0x34
	.4byte	0x523
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x1
	.byte	0x34
	.4byte	0x529
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x2c
	.byte	0x1
	.byte	0x2d
	.4byte	0x523
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2e
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2f
	.4byte	0x52f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0x30
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x31
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x1
	.byte	0x33
	.4byte	0x100
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x1
	.byte	0x34
	.4byte	0x4a1
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x523
	.uleb128 0x5
	.byte	0x4
	.4byte	0x535
	.uleb128 0x6
	.4byte	0x29a
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x1
	.byte	0x35
	.4byte	0x4c2
	.uleb128 0xd
	.byte	0x20
	.byte	0x1
	.byte	0x39
	.4byte	0x572
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3a
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x1
	.byte	0x3b
	.4byte	0x2a5
	.byte	0x4
	.uleb128 0x12
	.string	"crc"
	.byte	0x1
	.byte	0x3c
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3d
	.4byte	0x545
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x4
	.byte	0x1
	.byte	0x3f
	.4byte	0x596
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3f
	.4byte	0x523
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x115
	.4byte	0x89
	.byte	0x1
	.4byte	0x5c1
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x117
	.4byte	0x94
	.uleb128 0x15
	.4byte	.LASF115
	.4byte	0x5d1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x5d1
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x5c1
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x198
	.4byte	0x52f
	.byte	0x1
	.4byte	0x600
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x19d
	.4byte	0x52f
	.uleb128 0x16
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x218
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x103
	.4byte	0xee
	.byte	0x1
	.4byte	0x642
	.uleb128 0x18
	.string	"seq"
	.byte	0x1
	.2byte	0x103
	.4byte	0xaa
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x103
	.4byte	0x89
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x103
	.4byte	0x52f
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x105
	.4byte	0xee
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x52f
	.byte	0x1
	.4byte	0x690
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x52f
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xb5
	.uleb128 0x15
	.4byte	.LASF115
	.4byte	0x6a0
	.4byte	.LASF124
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.2byte	0x200
	.4byte	0x223
	.uleb128 0x16
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.2byte	0x206
	.4byte	0x52f
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x6a0
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0x690
	.uleb128 0x1b
	.4byte	0x596
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0x1c
	.4byte	0x5a7
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	0x5b3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5684
	.uleb128 0x1e
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x716
	.uleb128 0x1f
	.4byte	0x5a7
	.uleb128 0x1d
	.4byte	0x5b3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5684
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x14d4
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
	.2byte	0x119
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5684
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0x14df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x5d6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ee
	.uleb128 0x1c
	.4byte	0x5e7
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0x77a
	.uleb128 0x1c
	.4byte	0x5f4
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x14df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x7c0
	.uleb128 0x1f
	.4byte	0x5e7
	.uleb128 0x23
	.4byte	.LVL13
	.4byte	0x14ea
	.uleb128 0x20
	.4byte	.LVL14
	.4byte	0x14f5
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
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL6
	.4byte	0x14df
	.4byte	0x7dd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x14df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf9
	.4byte	0xaa
	.byte	0x1
	.4byte	0x808
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.byte	0xf9
	.4byte	0x808
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x6
	.4byte	0x572
	.uleb128 0x1b
	.4byte	0x600
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c3
	.uleb128 0x27
	.4byte	0x611
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	0x61d
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	0x629
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	0x635
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	0x7ee
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x109
	.4byte	0x87f
	.uleb128 0x28
	.4byte	0x7fe
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x1500
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0x150b
	.4byte	0x8a0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
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
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0x1517
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x642
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c8
	.uleb128 0x1d
	.4byte	0x653
	.uleb128 0x5
	.byte	0x3
	.4byte	curr_partition$5732
	.uleb128 0x1f
	.4byte	0x65f
	.uleb128 0x1d
	.4byte	0x66b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5734
	.uleb128 0x1f
	.4byte	0x678
	.uleb128 0x2a
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1c
	.4byte	0x65f
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	0x678
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	0x653
	.uleb128 0x5
	.byte	0x3
	.4byte	curr_partition$5732
	.uleb128 0x1d
	.4byte	0x66b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5734
	.uleb128 0x1e
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x96f
	.uleb128 0x1c
	.4byte	0x684
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x1522
	.4byte	0x951
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0x152d
	.4byte	0x965
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x1538
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x1543
	.4byte	0x986
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ota_get_running_partition
	.byte	0
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0x154f
	.4byte	0x9a6
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
	.byte	0x8
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x14d4
	.4byte	0x9bd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0x155a
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF177
	.byte	0x1
	.byte	0xfe
	.4byte	0xf9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa25
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xfe
	.4byte	0x808
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	0x7ee
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x100
	.uleb128 0x27
	.4byte	0x7fe
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0x1500
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.byte	0x48
	.4byte	0xf9
	.byte	0x1
	.4byte	0xa3f
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x48
	.4byte	0x52f
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF134
	.byte	0x1
	.byte	0x50
	.4byte	0xee
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb09
	.uleb128 0x2f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x50
	.4byte	0x52f
	.4byte	.LLST11
	.uleb128 0x2f
	.4byte	.LASF128
	.byte	0x1
	.byte	0x50
	.4byte	0xb5
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF129
	.byte	0x1
	.byte	0x50
	.4byte	0xb09
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF130
	.byte	0x1
	.byte	0x52
	.4byte	0xb0f
	.4byte	.LLST13
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.byte	0x53
	.4byte	0xee
	.4byte	.LLST14
	.uleb128 0x33
	.4byte	0xa25
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x5e
	.4byte	0xabe
	.uleb128 0x27
	.4byte	0xa35
	.4byte	.LLST15
	.byte	0
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0x1565
	.4byte	0xad2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL49
	.4byte	0x150b
	.4byte	0xae6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL51
	.4byte	0x1570
	.4byte	0xaff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL55
	.4byte	0x642
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x465
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53a
	.uleb128 0x25
	.4byte	.LASF131
	.byte	0x2
	.byte	0x26
	.4byte	0xf9
	.byte	0x3
	.4byte	0xb3c
	.uleb128 0x34
	.4byte	.LASF132
	.byte	0x2
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x34
	.4byte	.LASF133
	.byte	0x2
	.byte	0x29
	.4byte	0xf9
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF135
	.byte	0x1
	.byte	0x84
	.4byte	0xee
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0c
	.uleb128 0x2f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x84
	.4byte	0x465
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LASF136
	.byte	0x1
	.byte	0x84
	.4byte	0xe7
	.4byte	.LLST17
	.uleb128 0x2f
	.4byte	.LASF62
	.byte	0x1
	.byte	0x84
	.4byte	0xb5
	.4byte	.LLST18
	.uleb128 0x35
	.4byte	.LASF137
	.byte	0x1
	.byte	0x86
	.4byte	0xd0c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.byte	0x87
	.4byte	0xee
	.4byte	.LLST19
	.uleb128 0x32
	.string	"it"
	.byte	0x1
	.byte	0x88
	.4byte	0xb0f
	.4byte	.LLST20
	.uleb128 0x36
	.4byte	.LASF115
	.4byte	0xd27
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5652
	.uleb128 0x33
	.4byte	0xb15
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0x99
	.4byte	0xbeb
	.uleb128 0x2a
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x1c
	.4byte	0xb25
	.4byte	.LLST21
	.uleb128 0x1c
	.4byte	0xb30
	.4byte	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0xc69
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x1
	.byte	0x9b
	.4byte	0xb5
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LVL72
	.4byte	0x157b
	.4byte	0xc21
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL73
	.4byte	0x1517
	.4byte	0xc35
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL75
	.4byte	0x1584
	.4byte	0xc4f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL80
	.4byte	0x157b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 17
	.uleb128 0x21
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
	.uleb128 0x23
	.4byte	.LVL59
	.4byte	0x14ea
	.uleb128 0x24
	.4byte	.LVL62
	.4byte	0x14d4
	.4byte	0xca1
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
	.byte	0x93
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5652
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x23
	.4byte	.LVL63
	.4byte	0x14ea
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0x14f5
	.4byte	0xcd9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0x1517
	.4byte	0xcf3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL85
	.4byte	0x14ea
	.uleb128 0x20
	.4byte	.LVL87
	.4byte	0x14f5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd12
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xd27
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0xd17
	.uleb128 0x2e
	.4byte	.LASF139
	.byte	0x1
	.byte	0xc6
	.4byte	0xee
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde1
	.uleb128 0x2f
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc6
	.4byte	0x465
	.4byte	.LLST24
	.uleb128 0x37
	.string	"it"
	.byte	0x1
	.byte	0xc8
	.4byte	0xb0f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.4byte	0xee
	.4byte	.LLST25
	.uleb128 0x38
	.4byte	.LASF178
	.byte	0x1
	.byte	0xf3
	.4byte	.L92
	.uleb128 0x35
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe8
	.4byte	0x441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x35
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe9
	.4byte	0xde1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LVL94
	.4byte	0x1517
	.4byte	0xdb0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL96
	.4byte	0x158f
	.4byte	0xdd0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0x159a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2d6
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x11f
	.4byte	0xee
	.byte	0x1
	.4byte	0xe56
	.uleb128 0x19
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x11f
	.4byte	0x218
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x121
	.4byte	0xee
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x122
	.4byte	0x52f
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x123
	.4byte	0x94
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0xaa
	.uleb128 0x17
	.string	"seq"
	.byte	0x1
	.2byte	0x125
	.4byte	0xaa
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x126
	.4byte	0x12e
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x127
	.4byte	0xe7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x16b
	.4byte	0xee
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116a
	.uleb128 0x3a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x16b
	.4byte	0x52f
	.4byte	.LLST26
	.uleb128 0x3b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x16d
	.4byte	0x52f
	.4byte	.LLST27
	.uleb128 0x3c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x172
	.4byte	0x441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x173
	.4byte	0xde1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	0xde6
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x18e
	.4byte	0x10fb
	.uleb128 0x27
	.4byte	0xdf7
	.4byte	.LLST28
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.4byte	0xe03
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	0xe0f
	.4byte	.LLST30
	.uleb128 0x1c
	.4byte	0xe1b
	.4byte	.LLST31
	.uleb128 0x1c
	.4byte	0xe27
	.4byte	.LLST32
	.uleb128 0x1c
	.4byte	0xe31
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	0xe3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	0xe49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.4byte	0x600
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x150
	.4byte	0xf4d
	.uleb128 0x27
	.4byte	0x629
	.4byte	.LLST34
	.uleb128 0x27
	.4byte	0x61d
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	0x611
	.4byte	.LLST36
	.uleb128 0x2a
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x1f
	.4byte	0x635
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x600
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x159
	.4byte	0xf8c
	.uleb128 0x27
	.4byte	0x629
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	0x61d
	.4byte	.LLST38
	.uleb128 0x27
	.4byte	0x611
	.4byte	.LLST39
	.uleb128 0x2a
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x1f
	.4byte	0x635
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x600
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x15f
	.4byte	0xfcb
	.uleb128 0x27
	.4byte	0x629
	.4byte	.LLST40
	.uleb128 0x27
	.4byte	0x61d
	.4byte	.LLST41
	.uleb128 0x27
	.4byte	0x611
	.4byte	.LLST42
	.uleb128 0x2a
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x1f
	.4byte	0x635
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x600
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.2byte	0x163
	.4byte	0x100f
	.uleb128 0x27
	.4byte	0x629
	.4byte	.LLST43
	.uleb128 0x27
	.4byte	0x61d
	.4byte	.LLST44
	.uleb128 0x3f
	.4byte	0x611
	.uleb128 0x2a
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.uleb128 0x1f
	.4byte	0x635
	.uleb128 0x23
	.4byte	.LVL140
	.4byte	0x813
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL113
	.4byte	0x14df
	.4byte	0x102e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL115
	.4byte	0x596
	.uleb128 0x24
	.4byte	.LVL118
	.4byte	0x15a5
	.4byte	0x1063
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.4byte	.LVL120
	.4byte	0x157b
	.4byte	0x1083
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL121
	.4byte	0x157b
	.4byte	0x10a4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x77
	.sleb128 4096
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x23
	.4byte	.LVL122
	.4byte	0x15b1
	.uleb128 0x24
	.4byte	.LVL123
	.4byte	0x9c8
	.4byte	0x10c1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL124
	.4byte	0x9c8
	.4byte	0x10d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL129
	.4byte	0x9c8
	.4byte	0x10e9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL134
	.4byte	0x9c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL106
	.4byte	0x158f
	.4byte	0x111b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x24
	.4byte	.LVL107
	.4byte	0x14df
	.4byte	0x113a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL108
	.4byte	0x150b
	.4byte	0x114e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL110
	.4byte	0x14df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x52f
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1381
	.uleb128 0x40
	.string	"ret"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xee
	.4byte	.LLST45
	.uleb128 0x3b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x52f
	.4byte	.LLST46
	.uleb128 0x3c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x94
	.4byte	.LLST47
	.uleb128 0x24
	.4byte	.LVL143
	.4byte	0x14df
	.4byte	0x11f1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL145
	.4byte	0x14ea
	.uleb128 0x24
	.4byte	.LVL146
	.4byte	0x14f5
	.4byte	0x1228
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
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x24
	.4byte	.LVL147
	.4byte	0x15a5
	.4byte	0x1254
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.4byte	.LVL149
	.4byte	0x15b1
	.uleb128 0x23
	.4byte	.LVL150
	.4byte	0x14ea
	.uleb128 0x24
	.4byte	.LVL151
	.4byte	0x14f5
	.4byte	0x1294
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
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x24
	.4byte	.LVL154
	.4byte	0x157b
	.4byte	0x12b4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL155
	.4byte	0x157b
	.4byte	0x12d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 4096
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x23
	.4byte	.LVL156
	.4byte	0x15b1
	.uleb128 0x23
	.4byte	.LVL157
	.4byte	0x596
	.uleb128 0x24
	.4byte	.LVL159
	.4byte	0x9c8
	.4byte	0x12fb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL160
	.4byte	0x9c8
	.4byte	0x130f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL161
	.4byte	0x9c8
	.4byte	0x1323
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL162
	.4byte	0x9c8
	.4byte	0x1337
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL163
	.4byte	0x14df
	.uleb128 0x23
	.4byte	.LVL164
	.4byte	0x14ea
	.uleb128 0x24
	.4byte	.LVL165
	.4byte	0x14f5
	.4byte	0x1377
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
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x23
	.4byte	.LVL166
	.4byte	0x5d6
	.byte	0
	.uleb128 0x39
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x213
	.4byte	0x52f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146a
	.uleb128 0x3a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x213
	.4byte	0x52f
	.4byte	.LLST48
	.uleb128 0x3b
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x215
	.4byte	0x52f
	.4byte	.LLST49
	.uleb128 0x3b
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x216
	.4byte	0xf9
	.4byte	.LLST50
	.uleb128 0x36
	.4byte	.LASF115
	.4byte	0x147a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5745
	.uleb128 0x1e
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.4byte	0x1420
	.uleb128 0x41
	.string	"t"
	.byte	0x1
	.2byte	0x228
	.4byte	0x218
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x41
	.string	"p"
	.byte	0x1
	.2byte	0x22b
	.4byte	0x52f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LVL173
	.4byte	0x14df
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL169
	.4byte	0x642
	.uleb128 0x24
	.4byte	.LVL170
	.4byte	0x1565
	.4byte	0x143d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL172
	.4byte	0x14d4
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
	.2byte	0x21c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5745
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x147a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0x146a
	.uleb128 0x35
	.4byte	.LASF150
	.byte	0x1
	.byte	0x3f
	.4byte	0x57d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_entries_head
	.uleb128 0x35
	.4byte	.LASF151
	.byte	0x1
	.byte	0x42
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_last_handle
	.uleb128 0x8
	.4byte	0x572
	.4byte	0x14b1
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x35
	.4byte	.LASF152
	.byte	0x1
	.byte	0x43
	.4byte	0x14a1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.uleb128 0x37
	.string	"TAG"
	.byte	0x1
	.byte	0x45
	.4byte	0x110
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x42
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xd
	.byte	0x29
	.uleb128 0x42
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.byte	0x8a
	.uleb128 0x42
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.byte	0x57
	.uleb128 0x42
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xc
	.byte	0x6b
	.uleb128 0x42
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xe
	.byte	0x33
	.uleb128 0x43
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x102
	.uleb128 0x42
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.byte	0xef
	.uleb128 0x42
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x8
	.byte	0x94
	.uleb128 0x42
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x8
	.byte	0xa7
	.uleb128 0x42
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.byte	0x9f
	.uleb128 0x43
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x10f
	.uleb128 0x42
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0x7b
	.uleb128 0x42
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xf
	.byte	0x47
	.uleb128 0x42
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x8
	.byte	0xbb
	.uleb128 0x42
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xf
	.byte	0x57
	.uleb128 0x44
	.4byte	.LASF179
	.4byte	.LASF179
	.uleb128 0x42
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x10
	.byte	0x19
	.uleb128 0x42
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xa
	.byte	0xa8
	.uleb128 0x42
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xf
	.byte	0x5a
	.uleb128 0x43
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x11e
	.uleb128 0x42
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x7
	.byte	0xe9
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
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
.LLST32:
	.4byte	.LVL112
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL142
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL166
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL167
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"spi_flash_mmap_handle_t"
.LASF147:
	.string	"start_from"
.LASF149:
	.string	"next_is_result"
.LASF15:
	.string	"size_t"
.LASF171:
	.string	"esp_partition_mmap"
.LASF129:
	.string	"out_handle"
.LASF3:
	.string	"__uint8_t"
.LASF109:
	.string	"seq_label"
.LASF135:
	.string	"esp_ota_write"
.LASF59:
	.string	"type"
.LASF124:
	.string	"esp_ota_get_running_partition"
.LASF73:
	.string	"entry_addr"
.LASF123:
	.string	"phys_offs"
.LASF127:
	.string	"partition"
.LASF10:
	.string	"long long unsigned int"
.LASF117:
	.string	"find_default_boot_partition"
.LASF136:
	.string	"data"
.LASF71:
	.string	"spi_speed"
.LASF6:
	.string	"__int32_t"
.LASF58:
	.string	"esp_partition_iterator_t"
.LASF139:
	.string	"esp_ota_end"
.LASF170:
	.string	"free"
.LASF146:
	.string	"esp_ota_get_next_update_partition"
.LASF105:
	.string	"partial_data"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF177:
	.string	"ota_select_valid"
.LASF67:
	.string	"esp_partition_pos_t"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF174:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_ota_ops.c"
.LASF16:
	.string	"long int"
.LASF68:
	.string	"magic"
.LASF144:
	.string	"esp_ota_set_boot_partition"
.LASF156:
	.string	"esp_log_write"
.LASF179:
	.string	"memcpy"
.LASF126:
	.string	"is_ota_partition"
.LASF130:
	.string	"new_entry"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF12:
	.string	"uint16_t"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF90:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF132:
	.string	"flash_crypt_cnt"
.LASF148:
	.string	"default_ota"
.LASF145:
	.string	"esp_ota_get_boot_partition"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF66:
	.string	"offset"
.LASF76:
	.string	"reserved"
.LASF104:
	.string	"partial_bytes"
.LASF79:
	.string	"load_addr"
.LASF166:
	.string	"esp_partition_verify"
.LASF108:
	.string	"ota_seq"
.LASF151:
	.string	"s_ota_ops_last_handle"
.LASF8:
	.string	"unsigned int"
.LASF141:
	.string	"esp_rewrite_ota_data"
.LASF27:
	.string	"esp_partition_type_t"
.LASF18:
	.string	"long unsigned int"
.LASF57:
	.string	"esp_partition_subtype_t"
.LASF102:
	.string	"erased_size"
.LASF173:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF125:
	.string	"ota_select_crc"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF62:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF142:
	.string	"find_partition"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF162:
	.string	"esp_partition_next"
.LASF176:
	.string	"esp_partition_iterator_opaque_"
.LASF161:
	.string	"esp_partition_iterator_release"
.LASF103:
	.string	"wrote_size"
.LASF94:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"label"
.LASF2:
	.string	"short int"
.LASF157:
	.string	"crc32_le"
.LASF111:
	.string	"ota_ops_entry_"
.LASF60:
	.string	"subtype"
.LASF163:
	.string	"spi_flash_cache2phys"
.LASF112:
	.string	"ota_ops_entries_head"
.LASF154:
	.string	"esp_partition_find_first"
.LASF122:
	.string	"curr_partition"
.LASF134:
	.string	"esp_ota_begin"
.LASF95:
	.string	"ESP_LOG_INFO"
.LASF116:
	.string	"get_ota_partition_count"
.LASF99:
	.string	"le_prev"
.LASF106:
	.string	"entries"
.LASF17:
	.string	"sizetype"
.LASF138:
	.string	"copy_len"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF61:
	.string	"address"
.LASF77:
	.string	"hash_appended"
.LASF26:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF152:
	.string	"s_ota_select"
.LASF114:
	.string	"ota_app_count"
.LASF89:
	.string	"ESP_IMAGE_VERIFY"
.LASF22:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF23:
	.string	"SPI_FLASH_MMAP_INST"
.LASF178:
	.string	"cleanup"
.LASF98:
	.string	"le_next"
.LASF120:
	.string	"sec_id"
.LASF25:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF91:
	.string	"esp_ota_handle_t"
.LASF69:
	.string	"segment_count"
.LASF119:
	.string	"rewrite_ota_seq"
.LASF113:
	.string	"lh_first"
.LASF78:
	.string	"esp_image_header_t"
.LASF21:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF82:
	.string	"start_addr"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF83:
	.string	"image"
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
.LASF140:
	.string	"part_pos"
.LASF155:
	.string	"esp_log_timestamp"
.LASF93:
	.string	"ESP_LOG_ERROR"
.LASF110:
	.string	"ota_select"
.LASF115:
	.string	"__func__"
.LASF80:
	.string	"data_len"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF85:
	.string	"segment_data"
.LASF167:
	.string	"calloc"
.LASF81:
	.string	"esp_image_segment_header_t"
.LASF64:
	.string	"encrypted"
.LASF131:
	.string	"esp_flash_encryption_enabled"
.LASF75:
	.string	"spi_pin_drv"
.LASF14:
	.string	"uint32_t"
.LASF133:
	.string	"enabled"
.LASF70:
	.string	"spi_mode"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF19:
	.string	"char"
.LASF97:
	.string	"ESP_LOG_VERBOSE"
.LASF143:
	.string	"ota_data_map"
.LASF169:
	.string	"esp_image_verify"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF4:
	.string	"__uint16_t"
.LASF92:
	.string	"ESP_LOG_NONE"
.LASF158:
	.string	"esp_partition_erase_range"
.LASF165:
	.string	"abort"
.LASF159:
	.string	"esp_partition_write"
.LASF88:
	.string	"esp_image_metadata_t"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF86:
	.string	"image_len"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF172:
	.string	"spi_flash_munmap"
.LASF160:
	.string	"esp_partition_get"
.LASF121:
	.string	"ota_data_partition"
.LASF101:
	.string	"part"
.LASF74:
	.string	"wp_pin"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF107:
	.string	"ota_ops_entry_t"
.LASF128:
	.string	"image_size"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF168:
	.string	"memset"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF20:
	.string	"esp_err_t"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF72:
	.string	"spi_size"
.LASF84:
	.string	"segments"
.LASF11:
	.string	"uint8_t"
.LASF175:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/app_update"
.LASF153:
	.string	"__assert_func"
.LASF100:
	.string	"handle"
.LASF150:
	.string	"s_ota_ops_entries_head"
.LASF65:
	.string	"esp_partition_t"
.LASF164:
	.string	"esp_partition_find"
.LASF96:
	.string	"ESP_LOG_DEBUG"
.LASF87:
	.string	"image_digest"
.LASF137:
	.string	"data_bytes"
.LASF118:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
