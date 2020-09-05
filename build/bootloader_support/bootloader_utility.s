	.file	"bootloader_utility.c"
	.text
.Ltext0:
	.section	.text.index_to_partition,"ax",@progbits
	.align	4
	.type	index_to_partition, @function
index_to_partition:
.LFB24:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_utility.c"
	.loc 1 199 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 200 0
	bnei	a3, -1, .L2
	.loc 1 201 0
	l32i.n	a3, a2, 8
.LVL1:
	l32i.n	a2, a2, 12
.LVL2:
	s32i.n	a3, sp, 0
	j	.L6
.LVL3:
.L2:
	.loc 1 204 0
	movi.n	a8, -2
	bne	a3, a8, .L4
.LVL4:
.LBB45:
.LBB46:
	.loc 1 205 0
	l32i.n	a3, a2, 20
.LVL5:
	l32i.n	a2, a2, 16
.LVL6:
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	j	.L3
.LVL7:
.L4:
.LBE46:
.LBE45:
	.loc 1 208 0
	movi.n	a8, 0xf
	bltu	a8, a3, .L5
	.loc 1 208 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 152
	bgeu	a3, a8, .L5
	.loc 1 209 0 is_stmt 1
	addi.n	a3, a3, 2
.LVL8:
	addx8	a3, a3, a2
.LVL9:
	l32i.n	a8, a3, 8
	l32i.n	a2, a3, 12
.LVL10:
	s32i.n	a8, sp, 0
	j	.L6
.LVL11:
.L5:
	.loc 1 213 0
	movi.n	a2, 0
.LVL12:
	s32i.n	a2, sp, 0
.LVL13:
.L6:
	s32i.n	a2, sp, 4
.L3:
	.loc 1 214 0
	l32i.n	a2, sp, 0
	l32i.n	a3, sp, 4
	retw.n
.LFE24:
	.size	index_to_partition, .-index_to_partition
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" is not bootable"
.LC2:
	.string	"boot"
.LC4:
	.string	"\033[0;31mE (%d) %s: Factory app partition%s\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: Factory test app partition%s\033[0m\n"
.LC8:
	.string	"\033[0;31mE (%d) %s: OTA app partition slot %d%s\033[0m\n"
	.section	.text.log_invalid_app_partition,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.type	log_invalid_app_partition, @function
log_invalid_app_partition:
.LFB25:
	.loc 1 217 0
.LVL14:
	entry	sp, 48
.LCFI1:
.LVL15:
	.loc 1 219 0
	movi.n	a8, -2
	l32r	a4, .LC1
	l32r	a3, .LC3
	beq	a2, a8, .L9
	bnei	a2, -1, .L12
	.loc 1 221 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC5
	j	.L13
.L9:
	.loc 1 224 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a12, .LC7
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
.L13:
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 225 0 discriminator 2
	retw.n
.L12:
.LVL19:
.LBB49:
.LBB50:
	.loc 1 227 0
	call8	esp_log_timestamp
.LVL20:
	l32r	a12, .LC9
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a15, a2
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	retw.n
.LBE50:
.LBE49:
.LFE25:
	.size	log_invalid_app_partition, .-log_invalid_app_partition
	.section	.rodata.str1.1
.LC14:
	.string	"RF data"
.LC16:
	.string	"test app"
.LC18:
	.string	"WiFi data"
.LC20:
	.string	"NVS keys"
.LC22:
	.string	"efuse"
.LC24:
	.string	"Unknown data"
.LC26:
	.string	"OTA data"
.LC28:
	.string	"Unknown app"
.LC30:
	.string	"OTA app"
.LC32:
	.string	"factory app"
.LC34:
	.string	"unknown"
.LC39:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
.LC41:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
.LC43:
	.string	"\033[0;32mI (%d) %s: Partition Table:\033[0m\n"
.LC45:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage          Type ST Offset   Length\033[0m\n"
.LC48:
	.string	"\033[0;32mI (%d) %s: %2d %-16s %-16s %02x %02x %08x %08x\033[0m\n"
.LC50:
	.string	"\033[0;32mI (%d) %s: End of partition table\033[0m\n"
	.section	.text.bootloader_utility_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC36, 3072
	.literal .LC37, 32768
	.literal .LC38, .LC2
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC47, .L27
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.align	4
	.global	bootloader_utility_load_partition_table
	.type	bootloader_utility_load_partition_table, @function
bootloader_utility_load_partition_table:
.LFB23:
	.loc 1 102 0
.LVL22:
	entry	sp, 96
.LCFI2:
	.loc 1 108 0
	l32r	a5, .LC36
	l32r	a4, .LC37
	mov.n	a11, a5
	mov.n	a10, a4
	call8	bootloader_mmap
.LVL23:
	mov.n	a6, a10
.LVL24:
	l32r	a3, .LC38
	.loc 1 109 0
	bnez.n	a10, .L15
	.loc 1 110 0 discriminator 2
	call8	esp_log_timestamp
.LVL25:
	l32r	a12, .LC40
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	j	.L37
.L15:
	.loc 1 115 0
	addi	a12, sp, 32
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL27:
	mov.n	a7, a10
.LVL28:
	.loc 1 116 0
	beqz.n	a10, .L17
	.loc 1 117 0 discriminator 2
	call8	esp_log_timestamp
.LVL29:
	l32r	a12, .LC42
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
.L37:
	.loc 1 118 0 discriminator 2
	movi.n	a2, 0
.LVL31:
	retw.n
.LVL32:
.L17:
	.loc 1 121 0 discriminator 9
	call8	esp_log_timestamp
.LVL33:
	l32r	a12, .LC44
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL34:
	.loc 1 122 0 discriminator 9
	call8	esp_log_timestamp
.LVL35:
	l32r	a12, .LC46
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL36:
	addi.n	a5, a6, 2
.LBB51:
	.loc 1 124 0 discriminator 9
	j	.L18
.LVL37:
.L31:
.LBB52:
	.loc 1 131 0
	l8ui	a4, a5, 0
	addi.n	a9, a5, 2
	beqz.n	a4, .L20
	beqi	a4, 1, .L21
	j	.L35
.L20:
	.loc 1 133 0
	l8ui	a8, a5, 1
	beqz.n	a8, .L23
	beqi	a8, 32, .L24
	j	.L36
.L23:
	.loc 1 135 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 12
.LVL38:
	s32i.n	a8, a2, 8
	.loc 1 136 0
	l32r	a4, .LC33
	.loc 1 137 0
	j	.L19
.LVL39:
.L24:
	.loc 1 139 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 20
.LVL40:
	s32i.n	a8, a2, 16
	.loc 1 140 0
	l32r	a4, .LC17
	.loc 1 141 0
	j	.L19
.LVL41:
.L36:
	.loc 1 144 0
	movi.n	a10, -0x10
	and	a10, a8, a10
	.loc 1 150 0
	l32r	a4, .LC29
	.loc 1 144 0
	bnei	a10, 16, .L19
	.loc 1 145 0
	extui	a8, a8, 0, 4
	l32i.n	a4, a9, 4
	addi.n	a8, a8, 2
	addx8	a8, a8, a2
	l32i.n	a10, a9, 0
	s32i.n	a4, a8, 12
	.loc 1 146 0
	l32i	a4, a2, 152
	.loc 1 145 0
	s32i.n	a10, a8, 8
	.loc 1 146 0
	addi.n	a4, a4, 1
	s32i	a4, a2, 152
.LVL42:
	.loc 1 147 0
	l32r	a4, .LC31
	j	.L19
.LVL43:
.L21:
	.loc 1 156 0
	l8ui	a4, a5, 1
	bgeui	a4, 6, .L25
	l32r	a8, .LC47
	addx4	a4, a4, a8
	l32i.n	a4, a4, 0
	jx	a4
	.section	.rodata.bootloader_utility_load_partition_table,"a",@progbits
	.align	4
	.align	4
.L27:
	.word	.L26
	.word	.L34
	.word	.L28
	.word	.L25
	.word	.L29
	.word	.L30
	.section	.text.bootloader_utility_load_partition_table
.L28:
	.loc 1 165 0
	l32r	a4, .LC19
	j	.L19
.L26:
	.loc 1 158 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 4
.LVL44:
	s32i.n	a8, a2, 0
	.loc 1 159 0
	l32r	a4, .LC27
	.loc 1 160 0
	j	.L19
.LVL45:
.L29:
	.loc 1 168 0
	l32r	a4, .LC21
	.loc 1 169 0
	j	.L19
.LVL46:
.L30:
	.loc 1 171 0
	l32r	a4, .LC23
	.loc 1 175 0
	j	.L19
.LVL47:
.L25:
	.loc 1 177 0
	l32r	a4, .LC25
	.loc 1 178 0
	j	.L19
.LVL48:
.L35:
	.loc 1 128 0
	l32r	a4, .LC35
	j	.L19
.L34:
	.loc 1 162 0
	l32r	a4, .LC15
.LVL49:
.L19:
	.loc 1 186 0 discriminator 9
	s32i.n	a9, sp, 48
	call8	esp_log_timestamp
.LVL50:
	addi.n	a8, a5, 6
	l32i.n	a8, a8, 0
	l32i.n	a9, sp, 48
	s32i.n	a8, sp, 20
	l32i.n	a8, a9, 0
	l32r	a12, .LC49
	s32i.n	a8, sp, 16
	l8ui	a8, a5, 1
	mov.n	a15, a7
	s32i.n	a8, sp, 12
	l8ui	a8, a5, 0
	s32i.n	a4, sp, 4
	addi.n	a4, a5, 10
.LVL51:
	mov.n	a13, a10
	s32i.n	a8, sp, 8
	s32i.n	a4, sp, 0
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL52:
.LBE52:
	.loc 1 124 0 discriminator 9
	addi.n	a7, a7, 1
.LVL53:
	addi	a5, a5, 32
.LVL54:
.L18:
	.loc 1 124 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 32
	blt	a7, a4, .L31
.LBE51:
	.loc 1 191 0 is_stmt 1
	mov.n	a10, a6
	call8	bootloader_munmap
.LVL55:
	.loc 1 193 0
	call8	esp_log_timestamp
.LVL56:
	l32r	a12, .LC51
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL57:
	.loc 1 194 0
	movi.n	a2, 1
.LVL58:
	.loc 1 195 0
	retw.n
.LFE23:
	.size	bootloader_utility_load_partition_table, .-bootloader_utility_load_partition_table
	.section	.rodata.str1.1
.LC54:
	.string	"\033[0;31mE (%d) %s: ota_info partition size %d is too small (minimum %d bytes)\033[0m\n"
.LC57:
	.string	"\033[0;32mI (%d) %s: Defaulting to factory image\033[0m\n"
.LC59:
	.string	"\033[0;32mI (%d) %s: No factory image, trying OTA 0\033[0m\n"
.LC61:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid, falling back to factory\033[0m\n"
.LC63:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid and no factory, will try all partitions\033[0m\n"
	.section	.text.bootloader_utility_get_selected_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC52, 8191
	.literal .LC53, .LC2
	.literal .LC55, .LC54
	.literal .LC56, .LC39
	.literal .LC58, .LC57
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.align	4
	.global	bootloader_utility_get_selected_boot_partition
	.type	bootloader_utility_get_selected_boot_partition, @function
bootloader_utility_get_selected_boot_partition:
.LFB28:
	.loc 1 293 0
.LVL59:
	entry	sp, 112
.LCFI3:
.LVL60:
	.loc 1 297 0
	l32i.n	a10, a2, 0
	.loc 1 293 0
	mov.n	a3, a2
	.loc 1 298 0
	movi.n	a2, -1
.LVL61:
	.loc 1 297 0
	beqz.n	a10, .L64
.LVL62:
.LBB57:
.LBB58:
	.loc 1 82 0
	l32i.n	a11, a3, 4
	l32r	a2, .LC52
	bltu	a2, a11, .L40
	.loc 1 83 0
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC53
	movi.n	a2, 0x20
	s32i.n	a2, sp, 0
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	j	.L67
.L40:
	.loc 1 88 0
	call8	bootloader_mmap
.LVL64:
	mov.n	a2, a10
.LVL65:
	.loc 1 89 0
	bnez.n	a10, .L42
	.loc 1 90 0
	call8	esp_log_timestamp
.LVL66:
	l32i.n	a2, a3, 4
.LVL67:
	l32r	a11, .LC53
	s32i.n	a2, sp, 0
	l32i.n	a15, a3, 0
	l32r	a12, .LC56
	mov.n	a14, a11
	mov.n	a13, a10
.L67:
	movi.n	a10, 1
	call8	esp_log_write
.LVL68:
	j	.L41
.LVL69:
.L42:
	.loc 1 94 0
	mov.n	a11, a10
	movi.n	a12, 0x20
	addi	a10, sp, 16
.LVL70:
	call8	memcpy
.LVL71:
	.loc 1 95 0
	movi.n	a12, 0x20
	addmi	a11, a2, 0x1000
	addi	a10, sp, 48
	call8	memcpy
.LVL72:
	.loc 1 96 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL73:
.LBE58:
.LBE57:
	.loc 1 321 0
	addi	a10, sp, 16
.LVL74:
	call8	bootloader_common_ota_select_invalid
.LVL75:
	bnez.n	a10, .L43
.L46:
	.loc 1 322 0
	l32i	a2, a3, 152
.LVL76:
	beqz.n	a2, .L44
	j	.L65
.LVL77:
.L43:
	.loc 1 322 0 is_stmt 0 discriminator 1
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_invalid
.LVL78:
	.loc 1 321 0 is_stmt 1 discriminator 1
	beqz.n	a10, .L46
.LVL79:
.L44:
	.loc 1 325 0
	l32i.n	a3, a3, 8
.LVL80:
	l32r	a2, .LC53
	beqz.n	a3, .L47
	.loc 1 326 0 discriminator 9
	call8	esp_log_timestamp
.LVL81:
	l32r	a12, .LC58
	mov.n	a14, a2
	mov.n	a13, a10
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL82:
	.loc 1 327 0 discriminator 9
	movi.n	a2, -1
	retw.n
.L47:
	.loc 1 329 0 discriminator 9
	call8	esp_log_timestamp
.LVL83:
	l32r	a12, .LC60
	mov.n	a14, a2
	mov.n	a13, a10
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL84:
	.loc 1 332 0 discriminator 9
	l32i.n	a2, sp, 16
	bnei	a2, -1, .L48
.L51:
	.loc 1 332 0 is_stmt 0
	l32i.n	a2, sp, 48
	bnei	a2, -1, .L66
	j	.L68
.L48:
	.loc 1 332 0 discriminator 2
	l32i.n	a2, sp, 44
	addi	a10, sp, 16
.LVL85:
	call8	bootloader_common_ota_select_crc
.LVL86:
	bne	a2, a10, .L51
	j	.L68
.L66:
	.loc 1 333 0 is_stmt 1
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_crc
.LVL87:
.L68:
	.loc 1 330 0
	movi.n	a2, 0
	retw.n
.LVL88:
.L65:
.LBB59:
	.loc 1 340 0
	addi	a10, sp, 16
.LVL89:
	call8	bootloader_common_get_active_otadata
.LVL90:
	mov.n	a2, a10
.LVL91:
	.loc 1 354 0
	beqi	a10, -1, .L52
.LVL92:
.LBB60:
	.loc 1 356 0
	addi	a2, sp, 16
.LVL93:
	slli	a8, a10, 5
	add.n	a8, a2, a8
	.loc 1 357 0
	l32i.n	a8, a8, 0
	l32i	a2, a3, 152
.LVL94:
	addi.n	a8, a8, -1
	remu	a2, a8, a2
.LVL95:
.LBE60:
	retw.n
.LVL96:
.L52:
	.loc 1 373 0
	l32i.n	a8, a3, 8
	l32r	a3, .LC53
.LVL97:
	beqz.n	a8, .L53
	.loc 1 374 0 discriminator 2
	call8	esp_log_timestamp
.LVL98:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC62
	j	.L69
.L53:
	.loc 1 377 0 discriminator 2
	call8	esp_log_timestamp
.LVL99:
	l32r	a12, .LC64
	mov.n	a14, a3
	mov.n	a13, a10
.L69:
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL100:
	retw.n
.LVL101:
.L41:
.LBE59:
	.loc 1 302 0
	movi	a2, -0x63
.LVL102:
.L64:
	.loc 1 383 0
	retw.n
.LFE28:
	.size	bootloader_utility_get_selected_boot_partition, .-bootloader_utility_get_selected_boot_partition
	.section	.rodata.str1.1
.LC66:
	.string	"\033[0;31mE (%d) %s: No bootable test partition in the partition table\033[0m\n"
.LC68:
	.string	"\033[0;31mE (%d) %s: No bootable app partitions in the partition table\033[0m\n"
	.section	.text.bootloader_utility_load_boot_image,"ax",@progbits
	.literal_position
	.literal .LC65, .LC2
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.align	4
	.global	bootloader_utility_load_boot_image
	.type	bootloader_utility_load_boot_image, @function
bootloader_utility_load_boot_image:
.LFB31:
	.loc 1 426 0
.LVL103:
	entry	sp, 304
.LCFI4:
.LVL104:
	.loc 1 431 0
	movi.n	a4, -2
	beq	a3, a4, .L71
	mov.n	a4, a3
	j	.L72
.L71:
.LVL105:
	.loc 1 435 0
	call8	esp_log_timestamp
.LVL106:
	l32r	a11, .LC65
	l32r	a12, .LC67
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL107:
	j	.L84
.LVL108:
.L74:
	.loc 1 442 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	index_to_partition
.LVL109:
	s32i	a11, sp, 260
.LVL110:
	.loc 1 443 0
	l32i	a8, sp, 260
	.loc 1 442 0
	s32i	a10, sp, 256
	.loc 1 443 0
	beqz.n	a8, .L73
.LVL111:
	.loc 1 451 0
	mov.n	a10, a4
	call8	log_invalid_app_partition
.LVL112:
.L73:
	.loc 1 441 0 discriminator 2
	addi.n	a4, a4, -1
.LVL113:
.L72:
	.loc 1 441 0 is_stmt 0 discriminator 1
	bgei	a4, -1, .L74
	j	.L76
.LVL114:
.L77:
	.loc 1 456 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	index_to_partition
.LVL115:
	s32i	a11, sp, 260
.LVL116:
	.loc 1 457 0
	l32i	a4, sp, 260
	.loc 1 456 0
	s32i	a10, sp, 256
	.loc 1 457 0
	beqz.n	a4, .L76
.LVL117:
	.loc 1 465 0
	mov.n	a10, a3
	call8	log_invalid_app_partition
.LVL118:
.L76:
	.loc 1 455 0 discriminator 2
	l32i	a4, a2, 152
	addi.n	a3, a3, 1
.LVL119:
	bltu	a3, a4, .L77
.LVL120:
	.loc 1 473 0
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC65
	l32r	a12, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	movi.n	a10, 1
	call8	esp_log_write
.LVL122:
	.loc 1 474 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, sp
.LVL123:
	call8	memset
.LVL124:
.L84:
.LBB61:
.LBB62:
	.loc 1 703 0
	call8	abort
.LVL125:
.LBE62:
.LBE61:
.LFE31:
	.size	bootloader_utility_load_boot_image, .-bootloader_utility_load_boot_image
	.section	.text.bootloader_reset,"ax",@progbits
	.align	4
	.global	bootloader_reset
	.type	bootloader_reset, @function
bootloader_reset:
.LFB35:
	.loc 1 695 0
	entry	sp, 32
.LCFI5:
	.loc 1 703 0
	call8	abort
.LVL126:
.LFE35:
	.size	bootloader_reset, .-bootloader_reset
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI5-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_config.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/cache.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe69
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x1f
	.4byte	0x123
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1c
	.4byte	0x169
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.4byte	0xffffffff
	.byte	0
	.uleb128 0xa
	.byte	0x20
	.byte	0x6
	.byte	0x27
	.4byte	0x1a2
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x28
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x29
	.4byte	0x1a2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2a
	.4byte	0xdc
	.byte	0x18
	.uleb128 0xc
	.string	"crc"
	.byte	0x6
	.byte	0x2b
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xbb
	.4byte	0x1b2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2c
	.4byte	0x169
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0x2f
	.4byte	0x1de
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x30
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x31
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x32
	.4byte	0x1bd
	.uleb128 0xa
	.byte	0x20
	.byte	0x6
	.byte	0x37
	.4byte	0x23a
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x38
	.4byte	0xc6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x39
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3a
	.4byte	0xbb
	.byte	0x3
	.uleb128 0xc
	.string	"pos"
	.byte	0x6
	.byte	0x3b
	.4byte	0x1de
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3c
	.4byte	0x23a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x3d
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xbb
	.4byte	0x24a
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x6
	.byte	0x3e
	.4byte	0x1e9
	.uleb128 0x7
	.byte	0x2
	.4byte	0x33
	.byte	0x7
	.byte	0x3e
	.4byte	0x26f
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.2byte	0xffff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x7
	.byte	0x41
	.4byte	0x255
	.uleb128 0xa
	.byte	0x18
	.byte	0x7
	.byte	0x48
	.4byte	0x319
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x49
	.4byte	0xbb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4a
	.4byte	0xbb
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4c
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x7
	.byte	0x4e
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x7
	.byte	0x50
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x51
	.4byte	0xdc
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x54
	.4byte	0xbb
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x56
	.4byte	0x319
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0x57
	.4byte	0x26f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x58
	.4byte	0xbb
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0x59
	.4byte	0x329
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0x5d
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0xbb
	.4byte	0x329
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xbb
	.4byte	0x339
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x7
	.byte	0x5e
	.4byte	0x27a
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x65
	.4byte	0x365
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0x66
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0x67
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x7
	.byte	0x68
	.4byte	0x344
	.uleb128 0xd
	.4byte	0xbb
	.4byte	0x380
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.2byte	0x100
	.byte	0x7
	.byte	0x80
	.4byte	0x3d2
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0x81
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0x82
	.4byte	0x339
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0x83
	.4byte	0x3d2
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0x84
	.4byte	0x3e2
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0x85
	.4byte	0xdc
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0x86
	.4byte	0x370
	.byte	0xe0
	.byte	0
	.uleb128 0xd
	.4byte	0x365
	.4byte	0x3e2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xdc
	.4byte	0x3f2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x7
	.byte	0x87
	.4byte	0x380
	.uleb128 0xa
	.byte	0xa0
	.byte	0x8
	.byte	0x21
	.4byte	0x44e
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x8
	.byte	0x22
	.4byte	0x1de
	.byte	0
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x8
	.byte	0x23
	.4byte	0x1de
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x8
	.byte	0x24
	.4byte	0x1de
	.byte	0x10
	.uleb128 0xc
	.string	"ota"
	.byte	0x8
	.byte	0x25
	.4byte	0x44e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x8
	.byte	0x26
	.4byte	0xdc
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x8
	.byte	0x27
	.4byte	0xdc
	.byte	0x9c
	.byte	0
	.uleb128 0xd
	.4byte	0x1de
	.4byte	0x45e
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x8
	.byte	0x28
	.4byte	0x3fd
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc6
	.4byte	0x1de
	.byte	0x1
	.4byte	0x49a
	.uleb128 0x13
	.string	"bs"
	.byte	0x1
	.byte	0xc6
	.4byte	0x49a
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xd4
	.4byte	0x1de
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4a0
	.uleb128 0x6
	.4byte	0x45e
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf4
	.4byte	0x123
	.byte	0x1
	.4byte	0x4c1
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0xf4
	.4byte	0x4c1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c7
	.uleb128 0x6
	.4byte	0x1de
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x182
	.4byte	0x123
	.byte	0x1
	.4byte	0x4f6
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x182
	.4byte	0x4c1
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x182
	.4byte	0x4f6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.4byte	0x51f
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd8
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0xda
	.4byte	0xb0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x195
	.byte	0x1
	.4byte	0x55e
	.uleb128 0x1a
	.string	"bs"
	.byte	0x1
	.2byte	0x195
	.4byte	0x49a
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x195
	.4byte	0x25
	.uleb128 0x1b
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x198
	.4byte	0x1b2
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x19e
	.4byte	0x123
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x9
	.byte	0x8a
	.byte	0x3
	.4byte	0x583
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x9
	.byte	0x8a
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x9
	.byte	0x8c
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x9
	.byte	0x9a
	.byte	0x3
	.4byte	0x5a8
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x9
	.byte	0x9a
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x9
	.byte	0x9c
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x9
	.byte	0xaa
	.byte	0x3
	.4byte	0x5cd
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x9
	.byte	0xaa
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x9
	.byte	0xac
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0xa
	.byte	0x4a
	.4byte	0xdc
	.byte	0x3
	.4byte	0x5e9
	.uleb128 0x13
	.string	"reg"
	.byte	0xa
	.byte	0x4a
	.4byte	0xdc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x9
	.byte	0x45
	.4byte	0x2c
	.byte	0x3
	.4byte	0x675
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x9
	.byte	0x45
	.4byte	0x25
	.uleb128 0x13
	.string	"pid"
	.byte	0x9
	.byte	0x45
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x9
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x9
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x9
	.byte	0x45
	.4byte	0x25
	.uleb128 0x13
	.string	"num"
	.byte	0x9
	.byte	0x45
	.4byte	0x25
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x9
	.byte	0x47
	.4byte	0x2c
	.4byte	0x669
	.uleb128 0x1e
	.4byte	0x25
	.uleb128 0x1e
	.4byte	0x25
	.uleb128 0x1e
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	0x25
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0x20
	.string	"ret"
	.byte	0x9
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0xb
	.byte	0x85
	.4byte	0xdc
	.byte	0x3
	.4byte	0x69c
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0xb
	.byte	0x85
	.4byte	0xdc
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xb
	.byte	0x85
	.4byte	0xdc
	.byte	0
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2b6
	.byte	0x1
	.uleb128 0x22
	.4byte	0x469
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ff
	.uleb128 0x23
	.4byte	0x479
	.4byte	.LLST0
	.uleb128 0x23
	.4byte	0x483
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	0x48e
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x23
	.4byte	0x483
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	0x479
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x26
	.4byte	0x48e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x4fc
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ab
	.uleb128 0x27
	.4byte	0x508
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	0x513
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x29
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x783
	.uleb128 0x27
	.4byte	0x508
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x26
	.4byte	0x513
	.uleb128 0x2a
	.4byte	.LVL20
	.4byte	0xdf7
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL16
	.4byte	0xdf7
	.uleb128 0x2a
	.4byte	.LVL17
	.4byte	0xdf7
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x65
	.4byte	0x123
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0x2e
	.string	"bs"
	.byte	0x1
	.byte	0x65
	.4byte	0x9bf
	.4byte	.LLST5
	.uleb128 0x2f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x67
	.4byte	0x9c5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	.LASF105
	.byte	0x1
	.byte	0x68
	.4byte	0xb0
	.4byte	.LLST6
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x12a
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	.LASF106
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x879
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x30
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7d
	.4byte	0x9c5
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LVL50
	.4byte	0xdf7
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL23
	.4byte	0xe0d
	.4byte	0x893
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL25
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL26
	.4byte	0xe02
	.4byte	0x8d1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL27
	.4byte	0xe18
	.4byte	0x8ea
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL29
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL30
	.4byte	0xe02
	.4byte	0x91b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL33
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL34
	.4byte	0xe02
	.4byte	0x94c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL35
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL36
	.4byte	0xe02
	.4byte	0x97d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL55
	.4byte	0xe23
	.4byte	0x991
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL56
	.4byte	0xdf7
	.uleb128 0x2b
	.4byte	.LVL57
	.4byte	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x45e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9cb
	.uleb128 0x6
	.4byte	0x24a
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4a
	.4byte	0x12a
	.byte	0x1
	.4byte	0xa02
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4a
	.4byte	0x4c1
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4a
	.4byte	0xa02
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x1
	.byte	0x4c
	.4byte	0xa08
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0e
	.uleb128 0x6
	.4byte	0x1b2
	.uleb128 0x33
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x124
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3f
	.uleb128 0x34
	.string	"bs"
	.byte	0x1
	.2byte	0x124
	.4byte	0x49a
	.4byte	.LLST10
	.uleb128 0x35
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x126
	.4byte	0xc3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x37
	.4byte	0x9d0
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb16
	.uleb128 0x23
	.4byte	0x9eb
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	0x9e0
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x24
	.4byte	0x9f6
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LVL63
	.4byte	0xdf7
	.uleb128 0x2a
	.4byte	.LVL64
	.4byte	0xe0d
	.uleb128 0x2a
	.4byte	.LVL66
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL68
	.4byte	0xe02
	.4byte	0xac2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL71
	.4byte	0xe2e
	.4byte	0xae3
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
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x32
	.4byte	.LVL72
	.4byte	0xe2e
	.4byte	0xb04
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 4096
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL73
	.4byte	0xe23
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0xb8e
	.uleb128 0x36
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x154
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0xb51
	.uleb128 0x36
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x164
	.4byte	0xdc
	.4byte	.LLST16
	.byte	0
	.uleb128 0x32
	.4byte	.LVL90
	.4byte	0xe37
	.4byte	0xb66
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL98
	.4byte	0xdf7
	.uleb128 0x2a
	.4byte	.LVL99
	.4byte	0xdf7
	.uleb128 0x2b
	.4byte	.LVL100
	.4byte	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL75
	.4byte	0xe42
	.4byte	0xba3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x32
	.4byte	.LVL78
	.4byte	0xe42
	.4byte	0xbb7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL81
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL82
	.4byte	0xe02
	.4byte	0xbe8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL83
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL84
	.4byte	0xe02
	.4byte	0xc19
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL86
	.4byte	0xe4d
	.4byte	0xc2e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL87
	.4byte	0xe4d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x1b2
	.4byte	0xc4f
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1a9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb8
	.uleb128 0x39
	.string	"bs"
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3a
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x36
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x36
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1de
	.4byte	.LLST19
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x3f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x37
	.4byte	0x69c
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x1db
	.4byte	0xcd0
	.uleb128 0x2a
	.4byte	.LVL125
	.4byte	0xe58
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL106
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL107
	.4byte	0xe02
	.4byte	0xd07
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x32
	.4byte	.LVL109
	.4byte	0x469
	.4byte	0xd21
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
	.byte	0
	.uleb128 0x32
	.4byte	.LVL112
	.4byte	0x4fc
	.4byte	0xd35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL115
	.4byte	0x469
	.4byte	0xd4f
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
	.byte	0
	.uleb128 0x32
	.4byte	.LVL118
	.4byte	0x4fc
	.4byte	0xd63
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL121
	.4byte	0xdf7
	.uleb128 0x32
	.4byte	.LVL122
	.4byte	0xe02
	.4byte	0xd9a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL124
	.4byte	0xe63
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x69c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd5
	.uleb128 0x2a
	.4byte	.LVL126
	.4byte	0xe58
	.byte	0
	.uleb128 0x3b
	.string	"TAG"
	.byte	0x1
	.byte	0x38
	.4byte	0xde7
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3d
	.4byte	0x123
	.uleb128 0x3c
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x5
	.byte	0x57
	.uleb128 0x3c
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x5
	.byte	0x6b
	.uleb128 0x3c
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xb
	.byte	0x39
	.uleb128 0x3c
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xc
	.byte	0x26
	.uleb128 0x3c
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xb
	.byte	0x41
	.uleb128 0x3d
	.4byte	.LASF128
	.4byte	.LASF128
	.uleb128 0x3c
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xd
	.byte	0x76
	.uleb128 0x3c
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xd
	.byte	0x36
	.uleb128 0x3c
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xd
	.byte	0x26
	.uleb128 0x3c
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xe
	.byte	0x47
	.uleb128 0x3d
	.4byte	.LASF129
	.4byte	.LASF129
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x87
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
	.uleb128 0x39
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE24
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x3
	.4byte	.LC32
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x3
	.4byte	.LC16
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x3
	.4byte	.LC30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x3
	.4byte	.LC26
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x3
	.4byte	.LC20
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x3
	.4byte	.LC22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LFE28
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL74
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75-1
	.4byte	.LVL85
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LVL89
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90-1
	.4byte	.LVL93
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL62
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0xe
	.byte	0x72
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
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0xe
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
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL110
	.4byte	.LVL112-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL112-1
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL118-1
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"write_encrypted"
.LASF113:
	.string	"active_otadata"
.LASF106:
	.string	"num_partitions"
.LASF69:
	.string	"segment_data"
.LASF73:
	.string	"ota_info"
.LASF5:
	.string	"__uint8_t"
.LASF36:
	.string	"seq_label"
.LASF43:
	.string	"type"
.LASF55:
	.string	"entry_addr"
.LASF82:
	.string	"partition"
.LASF85:
	.string	"invalid"
.LASF10:
	.string	"long long unsigned int"
.LASF38:
	.string	"esp_ota_select_entry_t"
.LASF126:
	.string	"bootloader_common_ota_select_crc"
.LASF53:
	.string	"spi_speed"
.LASF75:
	.string	"test"
.LASF105:
	.string	"partition_usage"
.LASF110:
	.string	"bootloader_utility_load_partition_table"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF117:
	.string	"image_data"
.LASF112:
	.string	"boot_index"
.LASF108:
	.string	"two_otadata"
.LASF41:
	.string	"esp_partition_pos_t"
.LASF107:
	.string	"read_otadata"
.LASF49:
	.string	"ESP_CHIP_ID_INVALID"
.LASF12:
	.string	"long int"
.LASF42:
	.string	"magic"
.LASF120:
	.string	"esp_log_write"
.LASF93:
	.string	"Cache_Read_Disable"
.LASF128:
	.string	"memcpy"
.LASF17:
	.string	"uint16_t"
.LASF99:
	.string	"cache_flash_mmu_set"
.LASF97:
	.string	"Cache_Read_Enable_rom"
.LASF8:
	.string	"__uint32_t"
.LASF91:
	.string	"Cache_Flush"
.LASF11:
	.string	"__intptr_t"
.LASF83:
	.string	"try_load_partition"
.LASF94:
	.string	"Cache_Flush_rom"
.LASF122:
	.string	"esp_partition_table_verify"
.LASF63:
	.string	"load_addr"
.LASF35:
	.string	"ota_seq"
.LASF0:
	.string	"unsigned int"
.LASF124:
	.string	"bootloader_common_get_active_otadata"
.LASF109:
	.string	"ota_select_map"
.LASF14:
	.string	"long unsigned int"
.LASF111:
	.string	"bootloader_utility_get_selected_boot_partition"
.LASF121:
	.string	"bootloader_mmap"
.LASF88:
	.string	"set_actual_ota_seq"
.LASF86:
	.string	"not_bootable"
.LASF130:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF50:
	.string	"esp_chip_id_t"
.LASF59:
	.string	"min_chip_rev"
.LASF45:
	.string	"label"
.LASF84:
	.string	"data"
.LASF29:
	.string	"ESP_OTA_IMG_NEW"
.LASF40:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF77:
	.string	"selected_subtype"
.LASF20:
	.string	"intptr_t"
.LASF37:
	.string	"ota_state"
.LASF4:
	.string	"short int"
.LASF87:
	.string	"log_invalid_app_partition"
.LASF7:
	.string	"__int32_t"
.LASF102:
	.string	"psize"
.LASF44:
	.string	"subtype"
.LASF101:
	.string	"paddr"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF47:
	.string	"esp_partition_info_t"
.LASF13:
	.string	"sizetype"
.LASF56:
	.string	"wp_pin"
.LASF125:
	.string	"bootloader_common_ota_select_invalid"
.LASF96:
	.string	"Cache_Read_Enable"
.LASF61:
	.string	"hash_appended"
.LASF114:
	.string	"bootloader_utility_load_boot_image"
.LASF30:
	.string	"ESP_OTA_IMG_PENDING_VERIFY"
.LASF100:
	.string	"vaddr"
.LASF92:
	.string	"cpu_no"
.LASF60:
	.string	"reserved"
.LASF51:
	.string	"segment_count"
.LASF134:
	.string	"bootloader_reset"
.LASF133:
	.string	"cache_flash_mmu_set_rom"
.LASF103:
	.string	"bootloader_cache_pages_to_map"
.LASF62:
	.string	"esp_image_header_t"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"start_addr"
.LASF67:
	.string	"image"
.LASF31:
	.string	"ESP_OTA_IMG_VALID"
.LASF131:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_utility.c"
.LASF129:
	.string	"memset"
.LASF119:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF76:
	.string	"app_count"
.LASF118:
	.string	"ota_has_initial_contents"
.LASF64:
	.string	"data_len"
.LASF95:
	.string	"Cache_Read_Disable_rom"
.LASF104:
	.string	"partitions"
.LASF65:
	.string	"esp_image_segment_header_t"
.LASF81:
	.string	"check_anti_rollback"
.LASF57:
	.string	"spi_pin_drv"
.LASF19:
	.string	"uint32_t"
.LASF58:
	.string	"chip_id"
.LASF52:
	.string	"spi_mode"
.LASF80:
	.string	"index_to_partition"
.LASF15:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__uint16_t"
.LASF79:
	.string	"index"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF127:
	.string	"abort"
.LASF132:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF72:
	.string	"esp_image_metadata_t"
.LASF70:
	.string	"image_len"
.LASF39:
	.string	"offset"
.LASF115:
	.string	"start_index"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF34:
	.string	"ESP_OTA_IMG_UNDEFINED"
.LASF28:
	.string	"esp_err_t"
.LASF54:
	.string	"spi_size"
.LASF68:
	.string	"segments"
.LASF16:
	.string	"uint8_t"
.LASF46:
	.string	"flags"
.LASF78:
	.string	"bootloader_state_t"
.LASF98:
	.string	"DPORT_REG_READ"
.LASF74:
	.string	"factory"
.LASF123:
	.string	"bootloader_munmap"
.LASF33:
	.string	"ESP_OTA_IMG_ABORTED"
.LASF89:
	.string	"otadata"
.LASF48:
	.string	"ESP_CHIP_ID_ESP32"
.LASF71:
	.string	"image_digest"
.LASF116:
	.string	"part"
.LASF32:
	.string	"ESP_OTA_IMG_INVALID"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
