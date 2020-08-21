	.file	"bootloader_utility.c"
	.text
.Ltext0:
	.section	.text.index_to_partition,"ax",@progbits
	.align	4
	.type	index_to_partition, @function
index_to_partition:
.LFB23:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_utility.c"
	.loc 1 162 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 163 0
	bnei	a3, -1, .L2
	.loc 1 164 0
	l32i.n	a3, a2, 8
.LVL1:
	l32i.n	a2, a2, 12
.LVL2:
	s32i.n	a3, sp, 0
	j	.L6
.LVL3:
.L2:
	.loc 1 167 0
	movi.n	a8, -2
	bne	a3, a8, .L4
.LVL4:
.LBB39:
.LBB40:
	.loc 1 168 0
	l32i.n	a3, a2, 20
.LVL5:
	l32i.n	a2, a2, 16
.LVL6:
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	j	.L3
.LVL7:
.L4:
.LBE40:
.LBE39:
	.loc 1 171 0
	movi.n	a8, 0xf
	bltu	a8, a3, .L5
	.loc 1 171 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 152
	bgeu	a3, a8, .L5
	.loc 1 172 0 is_stmt 1
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
	.loc 1 176 0
	movi.n	a2, 0
.LVL12:
	s32i.n	a2, sp, 0
.LVL13:
.L6:
	s32i.n	a2, sp, 4
.L3:
	.loc 1 177 0
	l32i.n	a2, sp, 0
	l32i.n	a3, sp, 4
	retw.n
.LFE23:
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
.LFB24:
	.loc 1 180 0
.LVL14:
	entry	sp, 48
.LCFI1:
.LVL15:
	.loc 1 182 0
	movi.n	a8, -2
	l32r	a4, .LC1
	l32r	a3, .LC3
	beq	a2, a8, .L9
	bnei	a2, -1, .L12
	.loc 1 184 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC5
	j	.L13
.L9:
	.loc 1 187 0 discriminator 2
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
	.loc 1 188 0 discriminator 2
	retw.n
.L12:
.LVL19:
.LBB43:
.LBB44:
	.loc 1 190 0
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
.LBE44:
.LBE43:
.LFE24:
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
	.string	"Unknown data"
.LC24:
	.string	"OTA data"
.LC26:
	.string	"Unknown app"
.LC28:
	.string	"OTA app"
.LC30:
	.string	"factory app"
.LC32:
	.string	"unknown"
.LC37:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
.LC39:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
.LC41:
	.string	"\033[0;32mI (%d) %s: Partition Table:\033[0m\n"
.LC43:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage          Type ST Offset   Length\033[0m\n"
.LC45:
	.string	"\033[0;32mI (%d) %s: %2d %-16s %-16s %02x %02x %08x %08x\033[0m\n"
.LC47:
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
	.literal .LC34, 3072
	.literal .LC35, 32768
	.literal .LC36, .LC2
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.align	4
	.global	bootloader_utility_load_partition_table
	.type	bootloader_utility_load_partition_table, @function
bootloader_utility_load_partition_table:
.LFB22:
	.loc 1 71 0
.LVL22:
	entry	sp, 96
.LCFI2:
	.loc 1 77 0
	l32r	a5, .LC34
	l32r	a4, .LC35
	mov.n	a11, a5
	mov.n	a10, a4
	call8	bootloader_mmap
.LVL23:
	mov.n	a6, a10
.LVL24:
	l32r	a3, .LC36
	.loc 1 78 0
	bnez.n	a10, .L15
	.loc 1 79 0 discriminator 2
	call8	esp_log_timestamp
.LVL25:
	l32r	a12, .LC38
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	j	.L36
.L15:
	.loc 1 84 0
	addi	a12, sp, 32
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL27:
	mov.n	a7, a10
.LVL28:
	.loc 1 85 0
	beqz.n	a10, .L17
	.loc 1 86 0 discriminator 2
	call8	esp_log_timestamp
.LVL29:
	l32r	a12, .LC40
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
.L36:
	.loc 1 87 0 discriminator 2
	movi.n	a2, 0
.LVL31:
	retw.n
.LVL32:
.L17:
	.loc 1 90 0 discriminator 9
	call8	esp_log_timestamp
.LVL33:
	l32r	a12, .LC42
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL34:
	.loc 1 91 0 discriminator 9
	call8	esp_log_timestamp
.LVL35:
	l32r	a12, .LC44
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL36:
	addi.n	a5, a6, 2
.LBB45:
	.loc 1 93 0 discriminator 9
	j	.L18
.LVL37:
.L29:
.LBB46:
	.loc 1 100 0
	l8ui	a4, a5, 0
	addi.n	a9, a5, 2
	beqz.n	a4, .L20
	beqi	a4, 1, .L21
	j	.L34
.L20:
	.loc 1 102 0
	l8ui	a8, a5, 1
	beqz.n	a8, .L23
	beqi	a8, 32, .L24
	j	.L35
.L23:
	.loc 1 104 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 12
.LVL38:
	s32i.n	a8, a2, 8
	.loc 1 105 0
	l32r	a4, .LC31
	.loc 1 106 0
	j	.L19
.LVL39:
.L24:
	.loc 1 108 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 20
.LVL40:
	s32i.n	a8, a2, 16
	.loc 1 109 0
	l32r	a4, .LC17
	.loc 1 110 0
	j	.L19
.LVL41:
.L35:
	.loc 1 113 0
	movi.n	a10, -0x10
	and	a10, a8, a10
	.loc 1 119 0
	l32r	a4, .LC27
	.loc 1 113 0
	bnei	a10, 16, .L19
	.loc 1 114 0
	extui	a8, a8, 0, 4
	l32i.n	a4, a9, 4
	addi.n	a8, a8, 2
	addx8	a8, a8, a2
	l32i.n	a10, a9, 0
	s32i.n	a4, a8, 12
	.loc 1 115 0
	l32i	a4, a2, 152
	.loc 1 114 0
	s32i.n	a10, a8, 8
	.loc 1 115 0
	addi.n	a4, a4, 1
	s32i	a4, a2, 152
.LVL42:
	.loc 1 116 0
	l32r	a4, .LC29
	j	.L19
.LVL43:
.L21:
	.loc 1 125 0
	l8ui	a8, a5, 1
	.loc 1 131 0
	l32r	a4, .LC15
	.loc 1 125 0
	beqi	a8, 1, .L19
	beqz.n	a8, .L26
	.loc 1 134 0
	l32r	a4, .LC19
	.loc 1 125 0
	beqi	a8, 2, .L19
	.loc 1 140 0
	l32r	a4, .LC21
	l32r	a10, .LC23
	addi	a8, a8, -4
	movnez	a4, a10, a8
	j	.L19
.L26:
	.loc 1 127 0
	l32i.n	a4, a9, 4
	l32i.n	a8, a9, 0
	s32i.n	a4, a2, 4
.LVL44:
	s32i.n	a8, a2, 0
	.loc 1 128 0
	l32r	a4, .LC25
	.loc 1 129 0
	j	.L19
.LVL45:
.L34:
	.loc 1 97 0
	l32r	a4, .LC33
.LVL46:
.L19:
	.loc 1 149 0 discriminator 9
	s32i.n	a9, sp, 48
	call8	esp_log_timestamp
.LVL47:
	addi.n	a8, a5, 6
	l32i.n	a8, a8, 0
	l32i.n	a9, sp, 48
	s32i.n	a8, sp, 20
	l32i.n	a8, a9, 0
	l32r	a12, .LC46
	s32i.n	a8, sp, 16
	l8ui	a8, a5, 1
	mov.n	a15, a7
	s32i.n	a8, sp, 12
	l8ui	a8, a5, 0
	s32i.n	a4, sp, 4
	addi.n	a4, a5, 10
.LVL48:
	mov.n	a13, a10
	s32i.n	a8, sp, 8
	s32i.n	a4, sp, 0
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL49:
.LBE46:
	.loc 1 93 0 discriminator 9
	addi.n	a7, a7, 1
.LVL50:
	addi	a5, a5, 32
.LVL51:
.L18:
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 32
	blt	a7, a4, .L29
.LBE45:
	.loc 1 154 0 is_stmt 1
	mov.n	a10, a6
	call8	bootloader_munmap
.LVL52:
	.loc 1 156 0
	call8	esp_log_timestamp
.LVL53:
	l32r	a12, .LC48
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL54:
	.loc 1 157 0
	movi.n	a2, 1
.LVL55:
	.loc 1 158 0
	retw.n
.LFE22:
	.size	bootloader_utility_load_partition_table, .-bootloader_utility_load_partition_table
	.section	.rodata.str1.1
.LC51:
	.string	"\033[0;31mE (%d) %s: ota_info partition size %d is too small (minimum %d bytes)\033[0m\n"
.LC54:
	.string	"\033[0;32mI (%d) %s: Defaulting to factory image\033[0m\n"
.LC56:
	.string	"\033[0;32mI (%d) %s: No factory image, trying OTA 0\033[0m\n"
.LC58:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid, falling back to factory\033[0m\n"
.LC60:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid and no factory, will try all partitions\033[0m\n"
	.section	.text.bootloader_utility_get_selected_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC49, 8191
	.literal .LC50, .LC2
	.literal .LC52, .LC51
	.literal .LC53, .LC37
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.align	4
	.global	bootloader_utility_get_selected_boot_partition
	.type	bootloader_utility_get_selected_boot_partition, @function
bootloader_utility_get_selected_boot_partition:
.LFB25:
	.loc 1 196 0
.LVL56:
	entry	sp, 112
.LCFI3:
	.loc 1 200 0
	l32i.n	a10, a2, 0
	.loc 1 196 0
	mov.n	a3, a2
	.loc 1 261 0
	movi.n	a2, -1
.LVL57:
	.loc 1 200 0
	beqz.n	a10, .L61
	.loc 1 202 0
	l32i.n	a11, a3, 4
	l32r	a2, .LC49
	bltu	a2, a11, .L39
	.loc 1 203 0 discriminator 2
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC50
	movi.n	a2, 0x20
	s32i.n	a2, sp, 0
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC52
	j	.L64
.L39:
	.loc 1 208 0
	call8	bootloader_mmap
.LVL59:
	mov.n	a2, a10
.LVL60:
	.loc 1 209 0
	bnez.n	a10, .L40
	.loc 1 210 0 discriminator 2
	call8	esp_log_timestamp
.LVL61:
	l32i.n	a2, a3, 4
.LVL62:
	l32r	a11, .LC50
	s32i.n	a2, sp, 0
	l32i.n	a15, a3, 0
	l32r	a12, .LC53
	mov.n	a14, a11
	mov.n	a13, a10
.L64:
	movi.n	a10, 1
	call8	esp_log_write
.LVL63:
	.loc 1 211 0 discriminator 2
	movi	a2, -0x63
	retw.n
.LVL64:
.L40:
	.loc 1 213 0
	mov.n	a11, a10
	movi.n	a12, 0x20
	addi	a10, sp, 48
	call8	memcpy
.LVL65:
	.loc 1 214 0
	addmi	a11, a2, 0x1000
	movi.n	a12, 0x20
	addi	a10, sp, 16
	call8	memcpy
.LVL66:
	.loc 1 215 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL67:
	.loc 1 218 0
	l32i.n	a2, sp, 48
.LVL68:
	bnei	a2, -1, .L41
	.loc 1 218 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 16
	beqi	a2, -1, .L42
.L41:
	.loc 1 218 0 discriminator 3
	l32i	a2, a3, 152
	bnez.n	a2, .L43
.L42:
	.loc 1 220 0 is_stmt 1
	l32i.n	a2, a3, 8
	l32r	a3, .LC50
.LVL69:
	beqz.n	a2, .L44
	.loc 1 221 0 discriminator 9
	call8	esp_log_timestamp
.LVL70:
	mov.n	a13, a10
	mov.n	a14, a3
	l32r	a12, .LC55
	mov.n	a11, a3
	movi.n	a10, 3
	j	.L65
.L44:
	.loc 1 224 0 discriminator 9
	call8	esp_log_timestamp
.LVL71:
	l32r	a12, .LC57
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL72:
	.loc 1 225 0 discriminator 9
	retw.n
.LVL73:
.L43:
.LBB47:
	.loc 1 231 0
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL74:
	beqz.n	a10, .L45
	.loc 1 231 0 is_stmt 0 discriminator 1
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL75:
	beqz.n	a10, .L45
.LVL76:
	.loc 1 234 0 is_stmt 1
	l32i.n	a2, sp, 48
	l32i.n	a8, sp, 16
	maxu	a8, a8, a2
	j	.L63
.LVL77:
.L45:
	.loc 1 235 0
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL78:
	.loc 1 238 0
	l32i.n	a8, sp, 48
	.loc 1 235 0
	bnez.n	a10, .L63
.L47:
	.loc 1 239 0
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL79:
	beqz.n	a10, .L48
.LVL80:
	.loc 1 242 0
	l32i.n	a8, sp, 16
.LVL81:
.L63:
	addi.n	a8, a8, -1
.LVL82:
	j	.L46
.LVL83:
.L49:
	.loc 1 250 0 discriminator 2
	call8	esp_log_timestamp
.LVL84:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC59
	j	.L66
.L62:
	.loc 1 253 0 discriminator 2
	call8	esp_log_timestamp
.LVL85:
	l32r	a12, .LC61
	mov.n	a14, a2
	mov.n	a13, a10
.L66:
	mov.n	a11, a2
	movi.n	a10, 1
.LVL86:
.L65:
	call8	esp_log_write
.LVL87:
	.loc 1 254 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL88:
.L46:
.LBB48:
	.loc 1 246 0
	l32i	a2, a3, 152
	remu	a2, a8, a2
	.loc 1 248 0
	retw.n
.LVL89:
.L48:
.LBE48:
	.loc 1 249 0
	l32i.n	a3, a3, 8
.LVL90:
	l32r	a2, .LC50
	bnez.n	a3, .L49
	j	.L62
.LVL91:
.L61:
.LBE47:
	.loc 1 262 0
	retw.n
.LFE25:
	.size	bootloader_utility_get_selected_boot_partition, .-bootloader_utility_get_selected_boot_partition
	.section	.rodata.str1.1
.LC63:
	.string	"\033[0;31mE (%d) %s: No bootable test partition in the partition table\033[0m\n"
.LC65:
	.string	"\033[0;31mE (%d) %s: No bootable app partitions in the partition table\033[0m\n"
	.section	.text.bootloader_utility_load_boot_image,"ax",@progbits
	.literal_position
	.literal .LC62, .LC2
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.align	4
	.global	bootloader_utility_load_boot_image
	.type	bootloader_utility_load_boot_image, @function
bootloader_utility_load_boot_image:
.LFB27:
	.loc 1 285 0
.LVL92:
	entry	sp, 304
.LCFI4:
.LVL93:
	.loc 1 290 0
	movi.n	a4, -2
	beq	a3, a4, .L68
	mov.n	a4, a3
	j	.L69
.L68:
.LVL94:
	.loc 1 294 0
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC62
	l32r	a12, .LC64
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
	j	.L81
.LVL97:
.L71:
	.loc 1 301 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	index_to_partition
.LVL98:
	s32i	a11, sp, 260
.LVL99:
	.loc 1 302 0
	l32i	a8, sp, 260
	.loc 1 301 0
	s32i	a10, sp, 256
	.loc 1 302 0
	beqz.n	a8, .L70
.LVL100:
	.loc 1 309 0
	mov.n	a10, a4
	call8	log_invalid_app_partition
.LVL101:
.L70:
	.loc 1 300 0 discriminator 2
	addi.n	a4, a4, -1
.LVL102:
.L69:
	.loc 1 300 0 is_stmt 0 discriminator 1
	bgei	a4, -1, .L71
	j	.L73
.LVL103:
.L74:
	.loc 1 314 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	index_to_partition
.LVL104:
	s32i	a11, sp, 260
.LVL105:
	.loc 1 315 0
	l32i	a4, sp, 260
	.loc 1 314 0
	s32i	a10, sp, 256
	.loc 1 315 0
	beqz.n	a4, .L73
.LVL106:
	.loc 1 322 0
	mov.n	a10, a3
	call8	log_invalid_app_partition
.LVL107:
.L73:
	.loc 1 313 0 discriminator 2
	l32i	a4, a2, 152
	addi.n	a3, a3, 1
.LVL108:
	bltu	a3, a4, .L74
.LVL109:
	.loc 1 330 0
	call8	esp_log_timestamp
.LVL110:
	l32r	a11, .LC62
	l32r	a12, .LC66
	mov.n	a14, a11
	mov.n	a13, a10
	movi.n	a10, 1
	call8	esp_log_write
.LVL111:
	.loc 1 331 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, sp
.LVL112:
	call8	memset
.LVL113:
.L81:
.LBB49:
.LBB50:
	.loc 1 496 0
	call8	abort
.LVL114:
.LBE50:
.LBE49:
.LFE27:
	.size	bootloader_utility_load_boot_image, .-bootloader_utility_load_boot_image
	.section	.text.bootloader_reset,"ax",@progbits
	.align	4
	.global	bootloader_reset
	.type	bootloader_reset, @function
bootloader_reset:
.LFB31:
	.loc 1 488 0
	entry	sp, 32
.LCFI5:
	.loc 1 496 0
	call8	abort
.LVL115:
.LFE31:
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x60
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_config.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/cache.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcf8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xc
	.4byte	.LASF111
	.4byte	.LASF112
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
	.byte	0xb
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
	.uleb128 0x9
	.byte	0x20
	.byte	0x5
	.byte	0x1d
	.4byte	0x162
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1e
	.4byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.4byte	0x162
	.byte	0x4
	.uleb128 0xb
	.string	"crc"
	.byte	0x5
	.byte	0x20
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x172
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x21
	.4byte	0x135
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	0x19e
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x25
	.4byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x26
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x27
	.4byte	0x17d
	.uleb128 0x9
	.byte	0x20
	.byte	0x5
	.byte	0x2c
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2d
	.4byte	0xc6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2e
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2f
	.4byte	0xbb
	.byte	0x3
	.uleb128 0xb
	.string	"pos"
	.byte	0x5
	.byte	0x30
	.4byte	0x19e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x31
	.4byte	0x1fa
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x32
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x20a
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x33
	.4byte	0x1a9
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.byte	0x3b
	.4byte	0x29c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.4byte	0xbb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3d
	.4byte	0xbb
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3f
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x41
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x43
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0x44
	.4byte	0xdc
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0x47
	.4byte	0xbb
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x49
	.4byte	0x29c
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x4b
	.4byte	0x2ac
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0x4f
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x2ac
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x2bc
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x6
	.byte	0x50
	.4byte	0x215
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x57
	.4byte	0x2e8
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0x58
	.4byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0x59
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x6
	.byte	0x5a
	.4byte	0x2c7
	.uleb128 0xf
	.2byte	0x100
	.byte	0x6
	.byte	0x5f
	.4byte	0x345
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0x60
	.4byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0x61
	.4byte	0x2bc
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0x62
	.4byte	0x345
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0x63
	.4byte	0x355
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0x64
	.4byte	0xdc
	.byte	0xdc
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x6
	.byte	0x65
	.4byte	0x365
	.byte	0xe0
	.byte	0
	.uleb128 0xc
	.4byte	0x2e8
	.4byte	0x355
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0xdc
	.4byte	0x365
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x375
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x6
	.byte	0x66
	.4byte	0x2f3
	.uleb128 0x9
	.byte	0xa0
	.byte	0x7
	.byte	0x21
	.4byte	0x3d1
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.byte	0x22
	.4byte	0x19e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.byte	0x23
	.4byte	0x19e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.byte	0x24
	.4byte	0x19e
	.byte	0x10
	.uleb128 0xb
	.string	"ota"
	.byte	0x7
	.byte	0x25
	.4byte	0x3d1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x7
	.byte	0x26
	.4byte	0xdc
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x7
	.byte	0x27
	.4byte	0xdc
	.byte	0x9c
	.byte	0
	.uleb128 0xc
	.4byte	0x19e
	.4byte	0x3e1
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x7
	.byte	0x28
	.4byte	0x380
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa1
	.4byte	0x19e
	.byte	0x1
	.4byte	0x41d
	.uleb128 0x11
	.string	"bs"
	.byte	0x1
	.byte	0xa1
	.4byte	0x41d
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa1
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.byte	0xaf
	.4byte	0x19e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x423
	.uleb128 0x6
	.4byte	0x3e1
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x109
	.4byte	0x123
	.byte	0x1
	.4byte	0x452
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x109
	.4byte	0x452
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x109
	.4byte	0x45d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x458
	.uleb128 0x6
	.4byte	0x19e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x375
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0x486
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb5
	.4byte	0xb0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x8
	.byte	0x8a
	.byte	0x3
	.4byte	0x4ab
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x8a
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x8
	.byte	0x8c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x8
	.byte	0x9a
	.byte	0x3
	.4byte	0x4d0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9a
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x8
	.byte	0x9c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x8
	.byte	0xaa
	.byte	0x3
	.4byte	0x4f5
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0xaa
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x8
	.byte	0xac
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x9
	.byte	0x4a
	.4byte	0xdc
	.byte	0x3
	.4byte	0x511
	.uleb128 0x11
	.string	"reg"
	.byte	0x9
	.byte	0x4a
	.4byte	0xdc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x8
	.byte	0x45
	.4byte	0x2c
	.byte	0x3
	.4byte	0x59d
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x45
	.4byte	0x25
	.uleb128 0x11
	.string	"pid"
	.byte	0x8
	.byte	0x45
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x8
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x8
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x8
	.byte	0x45
	.4byte	0x25
	.uleb128 0x11
	.string	"num"
	.byte	0x8
	.byte	0x45
	.4byte	0x25
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x8
	.byte	0x47
	.4byte	0x2c
	.4byte	0x591
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x2c
	.uleb128 0x18
	.4byte	0x2c
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0x1a
	.string	"ret"
	.byte	0x8
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0xa
	.byte	0x7e
	.4byte	0xdc
	.byte	0x3
	.4byte	0x5c4
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0xa
	.byte	0x7e
	.4byte	0xdc
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0xa
	.byte	0x7e
	.4byte	0xdc
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1e7
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x3ec
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x627
	.uleb128 0x1d
	.4byte	0x3fc
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	0x406
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	0x411
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x1d
	.4byte	0x406
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	0x3fc
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x20
	.4byte	0x411
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x463
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d3
	.uleb128 0x21
	.4byte	0x46f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	0x47a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x23
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x6ab
	.uleb128 0x21
	.4byte	0x46f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x20
	.4byte	0x47a
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0xc78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0xc6d
	.uleb128 0x24
	.4byte	.LVL17
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xc78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF91
	.byte	0x1
	.byte	0x46
	.4byte	0x123
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e7
	.uleb128 0x28
	.string	"bs"
	.byte	0x1
	.byte	0x46
	.4byte	0x8e7
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x1
	.byte	0x48
	.4byte	0x8ed
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x49
	.4byte	0xb0
	.4byte	.LLST6
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0x4a
	.4byte	0x12a
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x7a1
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x2a
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5e
	.4byte	0x8ed
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0xc78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL23
	.4byte	0xc83
	.4byte	0x7bb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL26
	.4byte	0xc78
	.4byte	0x7f9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL27
	.4byte	0xc8e
	.4byte	0x812
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0xc78
	.4byte	0x843
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL34
	.4byte	0xc78
	.4byte	0x874
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL36
	.4byte	0xc78
	.4byte	0x8a5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL52
	.4byte	0xc99
	.4byte	0x8b9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0xc78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f3
	.uleb128 0x6
	.4byte	0x20a
	.uleb128 0x27
	.4byte	.LASF92
	.byte	0x1
	.byte	0xc3
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac5
	.uleb128 0x28
	.string	"bs"
	.byte	0x1
	.byte	0xc3
	.4byte	0x41d
	.4byte	.LLST10
	.uleb128 0x2d
	.string	"sa"
	.byte	0x1
	.byte	0xc5
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"sb"
	.byte	0x1
	.byte	0xc5
	.4byte	0x172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.4byte	.LASF93
	.byte	0x1
	.byte	0xc6
	.4byte	0xac5
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0xa0a
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xe4
	.4byte	0x123
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LASF95
	.byte	0x1
	.byte	0xe5
	.4byte	0xb0
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe6
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x99c
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf6
	.4byte	0x25
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL74
	.4byte	0xcd3
	.4byte	0x9b0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL75
	.4byte	0xcd3
	.4byte	0x9c5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL78
	.4byte	0xcd3
	.4byte	0x9d9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL79
	.4byte	0xcd3
	.4byte	0x9ee
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x24
	.4byte	.LVL84
	.4byte	0xc6d
	.uleb128 0x24
	.4byte	.LVL85
	.4byte	0xc6d
	.uleb128 0x24
	.4byte	.LVL87
	.4byte	0xc78
	.byte	0
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0xc6d
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0xc83
	.uleb128 0x24
	.4byte	.LVL61
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL63
	.4byte	0xc78
	.4byte	0xa38
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL65
	.4byte	0xcde
	.4byte	0xa58
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL66
	.4byte	0xcde
	.4byte	0xa7a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 4096
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL67
	.4byte	0xc99
	.4byte	0xa8e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0xc6d
	.uleb128 0x24
	.4byte	.LVL71
	.4byte	0xc6d
	.uleb128 0x25
	.4byte	.LVL72
	.4byte	0xc78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xacb
	.uleb128 0x6
	.4byte	0x172
	.uleb128 0x2e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc39
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x41d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x11c
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x31
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x11e
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11f
	.4byte	0x19e
	.4byte	.LLST17
	.uleb128 0x32
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x120
	.4byte	0x375
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.4byte	0x5c4
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x14c
	.4byte	0xb51
	.uleb128 0x24
	.4byte	.LVL114
	.4byte	0xce7
	.byte	0
	.uleb128 0x24
	.4byte	.LVL95
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL96
	.4byte	0xc78
	.4byte	0xb88
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL98
	.4byte	0x3ec
	.4byte	0xba2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL101
	.4byte	0x463
	.4byte	0xbb6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL104
	.4byte	0x3ec
	.4byte	0xbd0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL107
	.4byte	0x463
	.4byte	0xbe4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL110
	.4byte	0xc6d
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0xc78
	.4byte	0xc1b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x25
	.4byte	.LVL113
	.4byte	0xcf2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x5c4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc56
	.uleb128 0x24
	.4byte	.LVL115
	.4byte	0xce7
	.byte	0
	.uleb128 0x2d
	.string	"TAG"
	.byte	0x1
	.byte	0x37
	.4byte	0xc68
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x34
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xb
	.byte	0x6b
	.uleb128 0x34
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xa
	.byte	0x32
	.uleb128 0x34
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xc
	.byte	0x26
	.uleb128 0x34
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xa
	.byte	0x3a
	.uleb128 0x35
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x42
	.byte	0x6f
	.byte	0x74
	.byte	0x68
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x73
	.byte	0
	.uleb128 0x35
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x71
	.byte	0x75
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x20
	.byte	0x42
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0
	.uleb128 0x34
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xd
	.byte	0x27
	.uleb128 0x36
	.4byte	.LASF108
	.4byte	.LASF108
	.uleb128 0x34
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xe
	.byte	0x47
	.uleb128 0x36
	.4byte	.LASF109
	.4byte	.LASF109
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE23
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
	.4byte	.LFE23
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
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE22
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
	.4byte	.LC32
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x3
	.4byte	.LC30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x3
	.4byte	.LC32
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
	.4byte	.LC32
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x3
	.4byte	.LC28
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x3
	.4byte	.LC32
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x3
	.4byte	.LC32
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LVL49-1
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
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3236
	.sleb128 0
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3256
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL92
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL101-1
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL107-1
	.4byte	.LVL107
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"psize"
.LASF114:
	.string	"bootloader_reset"
.LASF84:
	.string	"vaddr"
.LASF93:
	.string	"ota_select_map"
.LASF54:
	.string	"start_addr"
.LASF39:
	.string	"flags"
.LASF0:
	.string	"unsigned int"
.LASF68:
	.string	"index_to_partition"
.LASF7:
	.string	"__int32_t"
.LASF43:
	.string	"spi_speed"
.LASF62:
	.string	"factory"
.LASF63:
	.string	"test"
.LASF61:
	.string	"ota_info"
.LASF101:
	.string	"esp_log_timestamp"
.LASF53:
	.string	"esp_image_segment_header_t"
.LASF98:
	.string	"start_index"
.LASF83:
	.string	"cache_flash_mmu_set"
.LASF105:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF50:
	.string	"esp_image_header_t"
.LASF89:
	.string	"partition_usage"
.LASF30:
	.string	"seq_label"
.LASF19:
	.string	"uint32_t"
.LASF81:
	.string	"Cache_Read_Enable_rom"
.LASF85:
	.string	"paddr"
.LASF67:
	.string	"index"
.LASF44:
	.string	"spi_size"
.LASF75:
	.string	"Cache_Flush"
.LASF10:
	.string	"long long unsigned int"
.LASF99:
	.string	"part"
.LASF6:
	.string	"__uint16_t"
.LASF94:
	.string	"ota_valid"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF72:
	.string	"invalid"
.LASF110:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF107:
	.string	"abort"
.LASF40:
	.string	"esp_partition_info_t"
.LASF32:
	.string	"offset"
.LASF79:
	.string	"Cache_Read_Disable_rom"
.LASF27:
	.string	"_Bool"
.LASF58:
	.string	"image_len"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF92:
	.string	"bootloader_utility_get_selected_boot_partition"
.LASF59:
	.string	"image_digest"
.LASF112:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF15:
	.string	"char"
.LASF71:
	.string	"data"
.LASF60:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF80:
	.string	"Cache_Read_Enable"
.LASF31:
	.string	"esp_ota_select_entry_t"
.LASF90:
	.string	"num_partitions"
.LASF65:
	.string	"selected_subtype"
.LASF9:
	.string	"long long int"
.LASF56:
	.string	"segments"
.LASF70:
	.string	"partition"
.LASF95:
	.string	"ota_msg"
.LASF82:
	.string	"DPORT_REG_READ"
.LASF73:
	.string	"not_bootable"
.LASF77:
	.string	"Cache_Read_Disable"
.LASF109:
	.string	"memset"
.LASF33:
	.string	"size"
.LASF97:
	.string	"bootloader_utility_load_boot_image"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF55:
	.string	"image"
.LASF102:
	.string	"esp_log_write"
.LASF20:
	.string	"intptr_t"
.LASF17:
	.string	"uint16_t"
.LASF37:
	.string	"subtype"
.LASF103:
	.string	"bootloader_mmap"
.LASF52:
	.string	"data_len"
.LASF69:
	.string	"try_load_partition"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"bootloader_utility_load_partition_table"
.LASF96:
	.string	"ota_slot"
.LASF12:
	.string	"long int"
.LASF51:
	.string	"load_addr"
.LASF42:
	.string	"spi_mode"
.LASF104:
	.string	"esp_partition_table_verify"
.LASF64:
	.string	"app_count"
.LASF5:
	.string	"__uint8_t"
.LASF35:
	.string	"magic"
.LASF46:
	.string	"wp_pin"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF57:
	.string	"segment_data"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF18:
	.string	"int32_t"
.LASF88:
	.string	"partitions"
.LASF111:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_utility.c"
.LASF36:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF66:
	.string	"bootloader_state_t"
.LASF28:
	.string	"esp_err_t"
.LASF49:
	.string	"hash_appended"
.LASF47:
	.string	"spi_pin_drv"
.LASF38:
	.string	"label"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF76:
	.string	"cpu_no"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF108:
	.string	"memcpy"
.LASF45:
	.string	"entry_addr"
.LASF48:
	.string	"reserved"
.LASF74:
	.string	"log_invalid_app_partition"
.LASF87:
	.string	"bootloader_cache_pages_to_map"
.LASF78:
	.string	"Cache_Flush_rom"
.LASF100:
	.string	"image_data"
.LASF106:
	.string	"bootloader_common_ota_select_valid"
.LASF34:
	.string	"esp_partition_pos_t"
.LASF113:
	.string	"cache_flash_mmu_set_rom"
.LASF29:
	.string	"ota_seq"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF41:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
