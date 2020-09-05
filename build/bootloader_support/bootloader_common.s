	.file	"bootloader_common.c"
	.text
.Ltext0:
	.section	.text.bootloader_common_ota_select_crc,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_crc
	.type	bootloader_common_ota_select_crc, @function
bootloader_common_ota_select_crc:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_common.c"
	.loc 1 44 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 45 0
	mov.n	a11, a2
	movi.n	a12, 4
	movi.n	a10, -1
	call8	crc32_le
.LVL1:
	.loc 1 46 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE7:
	.size	bootloader_common_ota_select_crc, .-bootloader_common_ota_select_crc
	.section	.text.bootloader_common_ota_select_invalid,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_invalid
	.type	bootloader_common_ota_select_invalid, @function
bootloader_common_ota_select_invalid:
.LFB8:
	.loc 1 49 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 50 0
	l32i.n	a9, a2, 0
	movi.n	a8, 1
	beqi	a9, -1, .L3
	.loc 1 50 0 is_stmt 0 discriminator 2
	l32i.n	a9, a2, 24
	addi	a9, a9, -3
	bltui	a9, 2, .L3
	movi.n	a8, 0
.L3:
	.loc 1 51 0 is_stmt 1 discriminator 8
	extui	a2, a8, 0, 1
.LVL4:
	retw.n
.LFE8:
	.size	bootloader_common_ota_select_invalid, .-bootloader_common_ota_select_invalid
	.section	.text.bootloader_common_ota_select_valid,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_valid
	.type	bootloader_common_ota_select_valid, @function
bootloader_common_ota_select_valid:
.LFB9:
	.loc 1 54 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 55 0
	mov.n	a10, a2
	.loc 1 54 0
	mov.n	a4, a2
	.loc 1 55 0
	call8	bootloader_common_ota_select_invalid
.LVL6:
	.loc 1 55 0
	movi.n	a2, 0
.LVL7:
	bne	a10, a2, .L7
	.loc 1 55 0 is_stmt 0 discriminator 1
	l32i.n	a3, a4, 28
	mov.n	a10, a4
	call8	bootloader_common_ota_select_crc
.LVL8:
	sub	a10, a3, a10
	movi.n	a3, 1
	moveqz	a2, a3, a10
.L7:
	.loc 1 56 0 is_stmt 1 discriminator 6
	retw.n
.LFE9:
	.size	bootloader_common_ota_select_valid, .-bootloader_common_ota_select_valid
	.section	.text.bootloader_common_check_long_hold_gpio,"ax",@progbits
	.literal_position
	.literal .LC0, GPIO_PIN_MUX_REG
	.literal .LC1, 274877907
	.align	4
	.global	bootloader_common_check_long_hold_gpio
	.type	bootloader_common_check_long_hold_gpio, @function
bootloader_common_check_long_hold_gpio:
.LFB10:
	.loc 1 59 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 60 0
	extui	a6, a2, 0, 8
	mov.n	a10, a6
	call8	gpio_pad_select_gpio
.LVL10:
	.loc 1 61 0
	l32r	a4, .LC0
	addx4	a4, a2, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L10
	.loc 1 62 0
	memw
	l32i.n	a8, a4, 0
	movi	a5, 0x200
	or	a5, a8, a5
	memw
	s32i.n	a5, a4, 0
.L10:
	.loc 1 64 0
	mov.n	a10, a6
	call8	gpio_pad_pullup
.LVL11:
	.loc 1 65 0
	call8	esp_log_early_timestamp
.LVL12:
	.loc 1 66 0
	movi.n	a5, 0x1f
	.loc 1 65 0
	mov.n	a4, a10
.LVL13:
	.loc 1 66 0
	bltu	a5, a2, .L11
	.loc 1 66 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL14:
	j	.L23
.L11:
	.loc 1 66 0 discriminator 2
	call8	gpio_input_get_high
.LVL15:
.L23:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	.loc 1 67 0 is_stmt 1 discriminator 2
	movi.n	a5, 0
	.loc 1 66 0 discriminator 2
	bne	a10, a5, .L13
	.loc 1 70 0
	movi.n	a5, 0x1f
.L16:
	bltu	a5, a2, .L14
	.loc 1 70 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL16:
	j	.L24
.L14:
	.loc 1 70 0 discriminator 2
	call8	gpio_input_get_high
.LVL17:
.L24:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	bnez.n	a10, .L18
	.loc 1 73 0 is_stmt 1
	call8	esp_log_early_timestamp
.LVL18:
	l32r	a8, .LC1
	sub	a10, a10, a4
	muluh	a10, a10, a8
	srli	a10, a10, 6
	bltu	a10, a3, .L16
	.loc 1 74 0
	movi.n	a5, 1
	j	.L13
.L18:
	.loc 1 71 0
	movi.n	a5, -1
.L13:
	.loc 1 75 0
	mov.n	a2, a5
.LVL19:
	retw.n
.LFE10:
	.size	bootloader_common_check_long_hold_gpio, .-bootloader_common_check_long_hold_gpio
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	", "
	.section	.text.bootloader_common_label_search,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.align	4
	.global	bootloader_common_label_search
	.type	bootloader_common_label_search, @function
bootloader_common_label_search:
.LFB11:
	.loc 1 79 0
.LVL20:
	entry	sp, 48
.LCFI4:
	.loc 1 80 0
	movi.n	a6, 0
	.loc 1 79 0
	mov.n	a5, a2
	.loc 1 80 0
	movi.n	a4, 1
	mov.n	a2, a6
.LVL21:
	moveqz	a2, a4, a5
	mov.n	a7, a2
	mov.n	a2, a6
	moveqz	a2, a4, a3
	or	a2, a7, a2
	.loc 1 80 0
	bne	a2, a6, .L32
.LVL22:
.LBB10:
.LBB11:
	.loc 1 83 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	strstr
.LVL23:
	mov.n	a7, a10
.LVL24:
	mov.n	a6, a2
	j	.L27
.L31:
.LBB12:
	.loc 1 88 0
	sub	a8, a7, a5
.LVL25:
	.loc 1 89 0
	beqz.n	a8, .L28
	add.n	a8, a5, a8
.LVL26:
	addi.n	a8, a8, -1
	l8ui	a8, a8, 0
	mov.n	a10, a4
	addi	a9, a8, -44
	movnez	a10, a6, a9
	mov.n	a9, a10
	bnez.n	a10, .L28
	addi	a8, a8, -32
	moveqz	a9, a4, a8
	beqz.n	a9, .L29
.L28:
.LBB13:
	.loc 1 91 0
	mov.n	a10, a3
	call8	strlen
.LVL27:
	.loc 1 92 0
	add.n	a10, a7, a10
.LVL28:
	l8ui	a9, a10, 0
	movi	a10, -0x21
	and	a8, a9, a10
	mov.n	a10, a6
	moveqz	a10, a4, a8
	mov.n	a8, a10
	addi	a9, a9, -44
	mov.n	a10, a6
	moveqz	a10, a4, a9
	or	a8, a8, a10
	.loc 1 93 0
	bnez.n	a8, .L33
.L29:
.LBE13:
	.loc 1 101 0
	l32r	a11, .LC3
	mov.n	a10, a7
	call8	strcspn
.LVL29:
	mov.n	a8, a10
.LVL30:
	.loc 1 102 0
	mov.n	a10, a7
	s32i.n	a8, sp, 0
	call8	strlen
.LVL31:
	l32i.n	a8, sp, 0
.LVL32:
	beq	a8, a10, .L26
	.loc 1 105 0
	add.n	a10, a7, a8
	mov.n	a11, a3
	call8	strstr
.LVL33:
	mov.n	a7, a10
.LVL34:
.L27:
.LBE12:
	.loc 1 84 0
	bnez.n	a7, .L31
	retw.n
.LVL35:
.L32:
.LBE11:
.LBE10:
	.loc 1 81 0
	mov.n	a2, a6
	retw.n
.LVL36:
.L33:
.LBB17:
.LBB16:
.LBB15:
.LBB14:
	.loc 1 95 0
	mov.n	a2, a8
.L26:
.LBE14:
.LBE15:
.LBE16:
.LBE17:
	.loc 1 108 0
	retw.n
.LFE11:
	.size	bootloader_common_label_search, .-bootloader_common_label_search
	.section	.rodata.str1.1
.LC7:
	.string	"no"
.LC9:
	.string	"yes"
.LC11:
	.string	"err"
.LC15:
	.string	"boot_comm"
.LC17:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
.LC21:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage Offset   Length   Cleaned\033[0m\n"
.LC23:
	.string	"\033[0;32mI (%d) %s: %2d %-16s data  %08x %08x [%s]\033[0m\n"
	.section	.text.bootloader_common_erase_part_type_data,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, 3072
	.literal .LC14, 32768
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.global	bootloader_common_erase_part_type_data
	.type	bootloader_common_erase_part_type_data, @function
bootloader_common_erase_part_type_data:
.LFB12:
	.loc 1 111 0
.LVL37:
	entry	sp, 96
.LCFI5:
.LVL38:
	.loc 1 111 0
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 56
	.loc 1 118 0
	l32r	a5, .LC13
	l32r	a3, .LC14
.LVL39:
	mov.n	a11, a5
	mov.n	a10, a3
	.loc 1 111 0
	s32i.n	a2, sp, 52
	.loc 1 118 0
	call8	bootloader_mmap
.LVL40:
	mov.n	a2, a10
.LVL41:
	l32r	a4, .LC16
	.loc 1 119 0
	bnez.n	a10, .L41
	.loc 1 120 0 discriminator 2
	call8	esp_log_timestamp
.LVL42:
	l32r	a12, .LC18
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a15, a3
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	.loc 1 121 0 discriminator 2
	retw.n
.L41:
	.loc 1 125 0
	addi	a12, sp, 36
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL44:
	mov.n	a5, a10
.LVL45:
	.loc 1 126 0
	beqz.n	a10, .L43
	.loc 1 127 0 discriminator 2
	call8	esp_log_timestamp
.LVL46:
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 1 128 0 discriminator 2
	movi.n	a6, 0
	j	.L44
.LVL48:
.L43:
	.loc 1 130 0 discriminator 9
	call8	esp_log_timestamp
.LVL49:
	l32r	a12, .LC22
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 3
	call8	esp_log_write
.LVL50:
	addi.n	a3, a2, 2
	.loc 1 116 0 discriminator 9
	movi.n	a6, 1
.LBB18:
	.loc 1 131 0 discriminator 9
	j	.L45
.LVL51:
.L50:
.LBB19:
	.loc 1 133 0
	movi.n	a12, 0x11
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL52:
	.loc 1 134 0
	l8ui	a7, a3, 0
	bnei	a7, 1, .L46
.LVL53:
.LBB20:
	.loc 1 136 0
	l32i.n	a9, sp, 56
	movi.n	a8, 0
	beq	a9, a8, .L47
	.loc 1 136 0 discriminator 1
	l8ui	a9, a3, 1
	moveqz	a8, a7, a9
	extui	a8, a8, 0, 8
.L47:
.LVL54:
	addi.n	a9, a3, 10
	.loc 1 140 0
	movi.n	a12, 0x10
	mov.n	a11, a9
	add.n	a10, sp, a12
	s32i.n	a8, sp, 60
	s32i.n	a9, sp, 48
	call8	strncpy
.LVL55:
	.loc 1 141 0
	l32i.n	a8, sp, 60
	addi.n	a7, a3, 6
	bnez.n	a8, .L48
.LVL56:
	.loc 1 141 0 discriminator 1
	l32i.n	a10, sp, 52
	addi	a11, sp, 16
	call8	bootloader_common_label_search
.LVL57:
	.loc 1 150 0 discriminator 1
	l32r	a8, .LC8
	.loc 1 141 0 discriminator 1
	beqz.n	a10, .L49
.LVL58:
.L48:
	.loc 1 142 0
	addi.n	a8, a3, 2
	l32i.n	a10, a8, 0
	l32i.n	a11, a7, 0
	call8	bootloader_flash_erase_range
.LVL59:
	.loc 1 147 0
	l32r	a8, .LC10
	.loc 1 143 0
	beqz.n	a10, .L49
.L53:
	.loc 1 145 0
	l32r	a8, .LC12
	.loc 1 144 0
	movi.n	a6, 0
.LVL60:
.L49:
	.loc 1 153 0 discriminator 9
	s32i.n	a8, sp, 60
	call8	esp_log_timestamp
.LVL61:
	l32i.n	a8, sp, 60
	l32r	a12, .LC24
	s32i.n	a8, sp, 12
	l32i.n	a7, a7, 0
	l32i.n	a8, sp, 48
	s32i.n	a7, sp, 8
	addi.n	a7, a3, 2
	l32i.n	a7, a7, 0
	mov.n	a13, a10
	s32i.n	a7, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 3
	call8	esp_log_write
.LVL62:
.L46:
.LBE20:
.LBE19:
	.loc 1 131 0 discriminator 2
	addi.n	a5, a5, 1
.LVL63:
	addi	a3, a3, 32
.LVL64:
.L45:
	.loc 1 131 0 is_stmt 0 discriminator 1
	l32i.n	a7, sp, 36
	blt	a5, a7, .L50
.LVL65:
.L44:
.LBE18:
	.loc 1 159 0 is_stmt 1
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL66:
	.loc 1 161 0
	mov.n	a2, a6
.LVL67:
	.loc 1 162 0
	retw.n
.LFE12:
	.size	bootloader_common_erase_part_type_data, .-bootloader_common_erase_part_type_data
	.section	.text.bootloader_common_get_sha256_of_partition,"ax",@progbits
	.literal_position
	.literal .LC25, 8194
	.literal .LC26, .LC15
	.literal .LC27, .LC17
	.align	4
	.global	bootloader_common_get_sha256_of_partition
	.type	bootloader_common_get_sha256_of_partition, @function
bootloader_common_get_sha256_of_partition:
.LFB13:
	.loc 1 165 0
.LVL68:
	entry	sp, 320
.LCFI6:
	.loc 1 166 0
	movi.n	a10, 1
	movi.n	a8, 0
	moveqz	a8, a10, a5
	extui	a8, a8, 0, 8
	bnez.n	a8, .L63
	moveqz	a8, a10, a3
	bnez.n	a8, .L63
	.loc 1 170 0
	bnez.n	a4, .L58
.LBB21:
	.loc 1 171 0
	addi	a4, sp, 16
.LVL69:
	addmi	a11, a4, 0x100
	.loc 1 178 0
	mov.n	a12, a4
	.loc 1 171 0
	s32i.n	a3, a11, 4
	s32i.n	a2, a11, 0
	.loc 1 178 0
	call8	esp_image_verify
.LVL70:
	mov.n	a3, a10
.LVL71:
	bnez.n	a10, .L64
	.loc 1 181 0
	l8ui	a4, sp, 43
	beqz.n	a4, .L60
	.loc 1 182 0
	addi	a2, sp, 16
.LVL72:
	movi	a11, 0xe0
	movi.n	a12, 0x20
	add.n	a11, a2, a11
	mov.n	a10, a5
	call8	memcpy
.LVL73:
	.loc 1 183 0
	j	.L57
.LVL74:
.L60:
	.loc 1 186 0
	l32i	a3, sp, 236
.LVL75:
	j	.L58
.LVL76:
.L64:
	.loc 1 179 0
	l32r	a3, .LC25
	j	.L57
.LVL77:
.L58:
.LBE21:
	.loc 1 189 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL78:
	mov.n	a4, a10
.LVL79:
	.loc 1 190 0
	bnez.n	a10, .L61
	.loc 1 191 0 discriminator 2
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC26
	l32r	a12, .LC27
	s32i.n	a3, sp, 0
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 192 0 discriminator 2
	movi.n	a3, -1
.LVL82:
	j	.L57
.LVL83:
.L61:
	.loc 1 194 0
	call8	bootloader_sha256_start
.LVL84:
	mov.n	a2, a10
.LVL85:
	.loc 1 195 0
	bnez.n	a10, .L62
	.loc 1 196 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL86:
	.loc 1 197 0
	movi	a3, 0x101
.LVL87:
	j	.L57
.LVL88:
.L62:
	.loc 1 199 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	bootloader_sha256_data
.LVL89:
	.loc 1 200 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL90:
	.loc 1 202 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL91:
	.loc 1 204 0
	movi.n	a3, 0
.LVL92:
	j	.L57
.LVL93:
.L63:
	.loc 1 167 0
	movi	a3, 0x102
.LVL94:
.L57:
	.loc 1 205 0
	mov.n	a2, a3
	retw.n
.LFE13:
	.size	bootloader_common_get_sha256_of_partition, .-bootloader_common_get_sha256_of_partition
	.section	.text.bootloader_common_select_otadata,"ax",@progbits
	.align	4
	.global	bootloader_common_select_otadata
	.type	bootloader_common_select_otadata, @function
bootloader_common_select_otadata:
.LFB14:
	.loc 1 208 0
.LVL95:
	entry	sp, 32
.LCFI7:
	.loc 1 209 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a2
	extui	a8, a8, 0, 8
	.loc 1 208 0
	mov.n	a11, a2
	extui	a4, a4, 0, 8
	.loc 1 209 0
	bnez.n	a8, .L70
	moveqz	a8, a9, a3
	bnez.n	a8, .L70
.LVL96:
	.loc 1 213 0
	l8ui	a2, a3, 0
.LVL97:
	l8ui	a3, a3, 1
.LVL98:
	bnez.n	a2, .L67
.LVL99:
.LBB27:
	.loc 1 222 0
	movi.n	a2, -1
	movnez	a2, a9, a3
	retw.n
.LVL100:
.L67:
.LBE27:
	mov.n	a2, a8
	.loc 1 213 0 discriminator 1
	beqz.n	a3, .L66
.LVL101:
	l32i.n	a8, a11, 0
	l32i.n	a10, a11, 32
.LBB28:
.LBB29:
.LBB30:
	.loc 1 214 0
	maxu	a3, a10, a8
	minu	a10, a10, a8
	movnez	a10, a3, a4
.LVL102:
.LBE30:
.LBE29:
.LBE28:
	.loc 1 210 0
	sub	a8, a8, a10
	movnez	a2, a9, a8
	retw.n
.LVL103:
.L70:
	.loc 1 212 0
	movi.n	a2, -1
.LVL104:
.L66:
	.loc 1 231 0
	retw.n
.LFE14:
	.size	bootloader_common_select_otadata, .-bootloader_common_select_otadata
	.section	.text.bootloader_common_get_active_otadata,"ax",@progbits
	.align	4
	.global	bootloader_common_get_active_otadata
	.type	bootloader_common_get_active_otadata, @function
bootloader_common_get_active_otadata:
.LFB15:
	.loc 1 234 0
.LVL105:
	entry	sp, 48
.LCFI8:
	.loc 1 236 0
	movi.n	a10, -1
	.loc 1 235 0
	beqz.n	a2, .L75
	.loc 1 239 0
	mov.n	a10, a2
	call8	bootloader_common_ota_select_valid
.LVL106:
	s8i	a10, sp, 0
	.loc 1 240 0
	addi	a10, a2, 32
	call8	bootloader_common_ota_select_valid
.LVL107:
	s8i	a10, sp, 1
	.loc 1 241 0
	movi.n	a12, 1
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bootloader_common_select_otadata
.LVL108:
.L75:
	.loc 1 242 0
	mov.n	a2, a10
.LVL109:
	retw.n
.LFE15:
	.size	bootloader_common_get_active_otadata, .-bootloader_common_get_active_otadata
	.section	.text.bootloader_common_get_partition_description,"ax",@progbits
	.literal_position
	.literal .LC28, .LC15
	.literal .LC29, .LC17
	.literal .LC30, -1412606926
	.align	4
	.global	bootloader_common_get_partition_description
	.type	bootloader_common_get_partition_description, @function
bootloader_common_get_partition_description:
.LFB16:
	.loc 1 245 0
.LVL110:
	entry	sp, 48
.LCFI9:
	.loc 1 246 0
	movi.n	a5, 1
	movi.n	a4, 0
	moveqz	a4, a5, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L80
	moveqz	a4, a5, a3
	bnez.n	a4, .L80
	.loc 1 246 0 discriminator 1
	l32i.n	a10, a2, 0
	.loc 1 247 0 discriminator 1
	movi	a8, 0x102
	.loc 1 246 0 discriminator 1
	beqz.n	a10, .L78
	.loc 1 250 0
	l32i.n	a11, a2, 4
	call8	bootloader_mmap
.LVL111:
	mov.n	a6, a10
.LVL112:
	.loc 1 251 0
	bnez.n	a10, .L79
	.loc 1 252 0 discriminator 2
	call8	esp_log_timestamp
.LVL113:
	l32i.n	a3, a2, 4
.LVL114:
	l32r	a11, .LC28
	s32i.n	a3, sp, 0
	l32i.n	a15, a2, 0
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL115:
	.loc 1 253 0 discriminator 2
	movi.n	a8, -1
	j	.L78
.LVL116:
.L79:
	.loc 1 256 0
	addi	a11, a10, 32
	movi	a12, 0x100
	mov.n	a10, a3
	call8	memcpy
.LVL117:
	.loc 1 257 0
	mov.n	a10, a6
	call8	bootloader_munmap
.LVL118:
	.loc 1 259 0
	l32i.n	a8, a3, 0
	.loc 1 263 0
	l32r	a2, .LC30
.LVL119:
	sub	a8, a8, a2
	movi	a2, 0x105
	movnez	a4, a2, a8
	mov.n	a8, a4
	j	.L78
.LVL120:
.L80:
	.loc 1 247 0
	movi	a8, 0x102
.LVL121:
.L78:
	.loc 1 264 0
	mov.n	a2, a8
	retw.n
.LFE16:
	.size	bootloader_common_get_partition_description, .-bootloader_common_get_partition_description
	.section	.text.bootloader_common_vddsdio_configure,"ax",@progbits
	.align	4
	.global	bootloader_common_vddsdio_configure
	.type	bootloader_common_vddsdio_configure, @function
bootloader_common_vddsdio_configure:
.LFB17:
	.loc 1 267 0
	entry	sp, 32
.LCFI10:
	.loc 1 269 0
	call8	rtc_vddsdio_get_config
.LVL122:
	.loc 1 270 0
	movi.n	a8, 6
	and	a8, a10, a8
	bnei	a8, 2, .L84
.LVL123:
	.loc 1 275 0
	movi	a8, 0x1f9
	or	a10, a10, a8
.LVL124:
	call8	rtc_vddsdio_set_config
.LVL125:
	.loc 1 276 0
	movi.n	a10, 0xa
	call8	ets_delay_us
.LVL126:
.L84:
	retw.n
.LFE17:
	.size	bootloader_common_vddsdio_configure, .-bootloader_common_vddsdio_configure
	.section	.text.bootloader_common_get_chip_revision,"ax",@progbits
	.literal_position
	.literal .LC31, 1073061900
	.literal .LC32, 1073061908
	.literal .LC33, 1073111164
	.literal .LC36, CSWTCH$43
	.align	4
	.global	bootloader_common_get_chip_revision
	.type	bootloader_common_get_chip_revision, @function
bootloader_common_get_chip_revision:
.LFB18:
	.loc 1 283 0
	entry	sp, 32
.LCFI11:
	.loc 1 285 0
	l32r	a2, .LC31
	memw
	l32i.n	a10, a2, 0
.LVL127:
	.loc 1 286 0
	l32r	a2, .LC32
	memw
	l32i.n	a9, a2, 0
.LVL128:
	.loc 1 287 0
	l32r	a2, .LC33
	extui	a9, a9, 20, 1
.LVL129:
	memw
	l32i.n	a8, a2, 0
.LVL130:
	slli	a9, a9, 1
	extui	a8, a8, 31, 1
.LVL131:
	slli	a11, a8, 2
	extui	a8, a10, 15, 1
	or	a8, a11, a8
	or	a8, a8, a9
	addi.n	a8, a8, -1
	.loc 1 290 0
	movi.n	a2, 0
	bgeui	a8, 7, .L87
	l32r	a2, .LC36
	add.n	a8, a2, a8
	l8ui	a2, a8, 0
.L87:
.LVL132:
	.loc 1 308 0
	retw.n
.LFE18:
	.size	bootloader_common_get_chip_revision, .-bootloader_common_get_chip_revision
	.section	.rodata.str1.1
.LC37:
	.string	"bootloader"
.LC39:
	.string	"application"
.LC42:
	.string	"\033[0;31mE (%d) %s: mismatch chip ID, expected %d, found %d\033[0m\n"
.LC44:
	.string	"\033[0;31mE (%d) %s: can't run on lower chip revision, expected %d, found %d\033[0m\n"
.LC46:
	.string	"\033[0;32mI (%d) %s: chip revision: %d, min. %s chip revision: %d\033[0m\n"
	.section	.text.bootloader_common_check_chip_validity,"ax",@progbits
	.literal_position
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC41, .LC15
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.align	4
	.global	bootloader_common_check_chip_validity
	.type	bootloader_common_check_chip_validity, @function
bootloader_common_check_chip_validity:
.LFB19:
	.loc 1 312 0
.LVL133:
	entry	sp, 48
.LCFI12:
.LVL134:
	.loc 1 315 0
	l8ui	a5, a2, 13
	l8ui	a4, a2, 12
	slli	a5, a5, 8
	or	a5, a5, a4
	.loc 1 313 0
	movi.n	a4, 0
	.loc 1 315 0
	beq	a5, a4, .L90
	.loc 1 316 0 discriminator 2
	call8	esp_log_timestamp
.LVL135:
	l8ui	a5, a2, 13
	l8ui	a8, a2, 12
	l32r	a11, .LC41
	slli	a5, a5, 8
	or	a5, a5, a8
	l32r	a12, .LC43
	mov.n	a15, a4
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL136:
	.loc 1 317 0 discriminator 2
	movi.n	a4, -1
.LVL137:
.L90:
	.loc 1 319 0
	call8	bootloader_common_get_chip_revision
.LVL138:
	.loc 1 320 0
	l8ui	a8, a2, 14
	.loc 1 319 0
	mov.n	a5, a10
.LVL139:
	.loc 1 320 0
	bgeu	a10, a8, .L91
	.loc 1 321 0 discriminator 2
	call8	esp_log_timestamp
.LVL140:
	l32r	a11, .LC41
	l8ui	a2, a2, 14
.LVL141:
	l32r	a12, .LC45
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL142:
	.loc 1 322 0 discriminator 2
	movi.n	a4, -1
	j	.L92
.LVL143:
.L91:
	.loc 1 323 0
	beq	a10, a8, .L92
	.loc 1 324 0 discriminator 21
	call8	esp_log_timestamp
.LVL144:
	l32r	a8, .LC38
	l32r	a9, .LC40
	l8ui	a2, a2, 14
.LVL145:
	l32r	a11, .LC41
	movnez	a8, a9, a3
	l32r	a12, .LC47
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 3
	mov.n	a3, a8
.LVL146:
	call8	esp_log_write
.LVL147:
.L92:
	.loc 1 327 0
	mov.n	a2, a4
	retw.n
.LFE19:
	.size	bootloader_common_check_chip_validity, .-bootloader_common_check_chip_validity
	.section	.rodata.CSWTCH$43,"a",@progbits
	.type	CSWTCH$43, @object
	.size	CSWTCH$43, 7
CSWTCH$43:
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	3
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI1-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI2-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI3-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI7-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI8-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI9-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI12-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/crc.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/gpio.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/gpio_periph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1224
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0xc
	.4byte	.LASF172
	.4byte	.LASF173
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x8
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
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xe0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x1f
	.4byte	0x13d
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x1c
	.4byte	0x178
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.4byte	0xffffffff
	.byte	0
	.uleb128 0xc
	.byte	0x20
	.byte	0x6
	.byte	0x27
	.4byte	0x1b1
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x28
	.4byte	0xeb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x29
	.4byte	0x1b1
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2a
	.4byte	0xeb
	.byte	0x18
	.uleb128 0xe
	.string	"crc"
	.byte	0x6
	.byte	0x2b
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	0xca
	.4byte	0x1c1
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2c
	.4byte	0x178
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x2f
	.4byte	0x1ed
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.byte	0x30
	.4byte	0xeb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0x31
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x32
	.4byte	0x1cc
	.uleb128 0xc
	.byte	0x20
	.byte	0x6
	.byte	0x37
	.4byte	0x249
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.byte	0x38
	.4byte	0xd5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.byte	0x39
	.4byte	0xca
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3a
	.4byte	0xca
	.byte	0x3
	.uleb128 0xe
	.string	"pos"
	.byte	0x6
	.byte	0x3b
	.4byte	0x1ed
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3c
	.4byte	0x249
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.byte	0x3d
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	0xca
	.4byte	0x259
	.uleb128 0x10
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x6
	.byte	0x3e
	.4byte	0x1f8
	.uleb128 0x9
	.byte	0x2
	.4byte	0x2c
	.byte	0x7
	.byte	0x3e
	.4byte	0x27e
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.2byte	0xffff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x7
	.byte	0x41
	.4byte	0x264
	.uleb128 0xc
	.byte	0x18
	.byte	0x7
	.byte	0x48
	.4byte	0x328
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x7
	.byte	0x49
	.4byte	0xca
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4a
	.4byte	0xca
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4c
	.4byte	0xca
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x7
	.byte	0x4e
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x7
	.byte	0x50
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0x51
	.4byte	0xeb
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0x54
	.4byte	0xca
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0x56
	.4byte	0x328
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0x57
	.4byte	0x27e
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x58
	.4byte	0xca
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0x59
	.4byte	0x338
	.byte	0xf
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x7
	.byte	0x5d
	.4byte	0xca
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	0xca
	.4byte	0x338
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	0xca
	.4byte	0x348
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x7
	.byte	0x5e
	.4byte	0x289
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.byte	0x65
	.4byte	0x374
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0x66
	.4byte	0xeb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0x67
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x7
	.byte	0x68
	.4byte	0x353
	.uleb128 0x13
	.2byte	0x100
	.byte	0x7
	.byte	0x6f
	.4byte	0x401
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0x70
	.4byte	0xeb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x7
	.byte	0x71
	.4byte	0xeb
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0x72
	.4byte	0x401
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x7
	.byte	0x73
	.4byte	0x411
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.byte	0x74
	.4byte	0x411
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x7
	.byte	0x75
	.4byte	0x421
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x7
	.byte	0x76
	.4byte	0x421
	.byte	0x60
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0x77
	.4byte	0x411
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.byte	0x78
	.4byte	0x431
	.byte	0x90
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x7
	.byte	0x79
	.4byte	0x441
	.byte	0xb0
	.byte	0
	.uleb128 0xf
	.4byte	0xeb
	.4byte	0x411
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0x421
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0x431
	.uleb128 0x10
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xca
	.4byte	0x441
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	0xeb
	.4byte	0x451
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x7
	.byte	0x7a
	.4byte	0x37f
	.uleb128 0x13
	.2byte	0x100
	.byte	0x7
	.byte	0x80
	.4byte	0x4ae
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x7
	.byte	0x81
	.4byte	0xeb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.byte	0x82
	.4byte	0x348
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x7
	.byte	0x83
	.4byte	0x4ae
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x7
	.byte	0x84
	.4byte	0x4be
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x7
	.byte	0x85
	.4byte	0xeb
	.byte	0xdc
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x7
	.byte	0x86
	.4byte	0x431
	.byte	0xe0
	.byte	0
	.uleb128 0xf
	.4byte	0x374
	.4byte	0x4be
	.uleb128 0x10
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xeb
	.4byte	0x4ce
	.uleb128 0x10
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x7
	.byte	0x87
	.4byte	0x45c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x8a
	.4byte	0x4f2
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x15
	.4byte	0x511
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF87
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x8
	.byte	0x19
	.4byte	0x4f2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x1b
	.4byte	0x535
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x8
	.byte	0x1e
	.4byte	0x51c
	.uleb128 0x15
	.byte	0x4
	.byte	0x9
	.2byte	0x2b8
	.4byte	0x5aa
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x2b9
	.4byte	0xeb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x2ba
	.4byte	0xeb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x2bb
	.4byte	0xeb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x2bc
	.4byte	0xeb
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x2bd
	.4byte	0xeb
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x2be
	.4byte	0xeb
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x2bf
	.4byte	0x540
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xa
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.byte	0x4e
	.4byte	0x13d
	.byte	0x1
	.4byte	0x618
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0x4e
	.4byte	0xb8
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4e
	.4byte	0xab
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.uleb128 0x1b
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x58
	.4byte	0x33
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x65
	.4byte	0x33
	.uleb128 0x1b
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.byte	0x5b
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x1
	.byte	0xcf
	.4byte	0x33
	.byte	0x1
	.4byte	0x671
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.byte	0xcf
	.4byte	0x671
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x1
	.byte	0xcf
	.4byte	0x67c
	.uleb128 0x1c
	.string	"max"
	.byte	0x1
	.byte	0xcf
	.4byte	0x13d
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x1
	.byte	0xd4
	.4byte	0x33
	.uleb128 0x1d
	.4byte	0x665
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.byte	0xd6
	.4byte	0x33
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xde
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x677
	.uleb128 0x7
	.4byte	0x1c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13d
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0x2b
	.4byte	0xeb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c4
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x2b
	.4byte	0x671
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0x1114
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF113
	.byte	0x1
	.byte	0x30
	.4byte	0x13d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6eb
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x30
	.4byte	0x671
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF114
	.byte	0x1
	.byte	0x35
	.4byte	0x13d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x35
	.4byte	0x671
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LVL6
	.4byte	0x6c4
	.4byte	0x725
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0x682
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0x1
	.byte	0x3a
	.4byte	0x511
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d7
	.uleb128 0x24
	.4byte	.LASF116
	.byte	0x1
	.byte	0x3a
	.4byte	0xeb
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3a
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x1
	.byte	0x41
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0x111f
	.4byte	0x78c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0x112a
	.4byte	0x7a0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0x1136
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0x1141
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0x114c
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0x1141
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x114c
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0x1136
	.byte	0
	.uleb128 0x28
	.4byte	0x5c1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bd
	.uleb128 0x29
	.4byte	0x5d1
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	0x5dc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	0x5e7
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	0x5dc
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	0x5d1
	.4byte	.LLST6
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2d
	.4byte	0x5e7
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x8a4
	.uleb128 0x2d
	.4byte	0x5f3
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	0x5fe
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x862
	.uleb128 0x2d
	.4byte	0x60a
	.4byte	.LLST10
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1157
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL29
	.4byte	0x1162
	.4byte	0x87f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0x1157
	.4byte	0x893
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL33
	.4byte	0x116d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x116d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.byte	0x6e
	.4byte	0x13d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0x24
	.4byte	.LASF119
	.byte	0x1
	.byte	0x6e
	.4byte	0xb8
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0x6e
	.4byte	0x13d
	.4byte	.LLST12
	.uleb128 0x2f
	.4byte	.LASF122
	.byte	0x1
	.byte	0x70
	.4byte	0xb25
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x71
	.4byte	0xb8
	.4byte	.LLST14
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.byte	0x72
	.4byte	0x101
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x1
	.byte	0x73
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.byte	0x74
	.4byte	0x13d
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0xa41
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0x83
	.4byte	0x33
	.4byte	.LLST17
	.uleb128 0x32
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2f
	.4byte	.LASF125
	.byte	0x1
	.byte	0x84
	.4byte	0xb25
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF45
	.byte	0x1
	.byte	0x85
	.4byte	0xb30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xa24
	.uleb128 0x2f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x87
	.4byte	0x13d
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LVL55
	.4byte	0x1178
	.4byte	0x9bc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x5c1
	.4byte	0x9d8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.4byte	.LVL59
	.4byte	0x1183
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x118e
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0x1199
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL52
	.4byte	0x11a4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x11ad
	.4byte	0xa5b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL42
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL43
	.4byte	0x1199
	.4byte	0xa99
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x11b8
	.4byte	0xab2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x27
	.4byte	.LVL46
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0x1199
	.4byte	0xae3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL49
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL50
	.4byte	0x1199
	.4byte	0xb14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0x11c3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2b
	.uleb128 0x7
	.4byte	0x259
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0xb40
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0xa4
	.4byte	0x101
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd9
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0xa4
	.4byte	0xeb
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa4
	.4byte	0xeb
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa4
	.4byte	0x33
	.4byte	.LLST22
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa4
	.4byte	0xcd9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF130
	.byte	0x1
	.byte	0xbd
	.4byte	0xc3
	.4byte	.LLST23
	.uleb128 0x2f
	.4byte	.LASF131
	.byte	0x1
	.byte	0xc2
	.4byte	0x5b6
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0xc19
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.byte	0xab
	.4byte	0xcdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.byte	0xaf
	.4byte	0x4ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0x11ce
	.4byte	0xbfb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 256
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0x11d9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0x11ad
	.4byte	0xc33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL80
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0x1199
	.4byte	0xc77
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL84
	.4byte	0x11e2
	.uleb128 0x23
	.4byte	.LVL86
	.4byte	0x11c3
	.4byte	0xc94
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0x11ed
	.4byte	0xcae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL90
	.4byte	0x11f8
	.4byte	0xcc8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL91
	.4byte	0x11c3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x7
	.4byte	0x1ed
	.uleb128 0x28
	.4byte	0x618
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd78
	.uleb128 0x29
	.4byte	0x628
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	0x633
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	0x63e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	0x649
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xd30
	.uleb128 0x2d
	.4byte	0x666
	.4byte	.LLST28
	.byte	0
	.uleb128 0x32
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x29
	.4byte	0x633
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	0x63e
	.4byte	.LLST30
	.uleb128 0x29
	.4byte	0x628
	.4byte	.LLST31
	.uleb128 0x32
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x2b
	.4byte	0x649
	.uleb128 0x32
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2d
	.4byte	0x659
	.4byte	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe9
	.4byte	0x33
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf2
	.uleb128 0x24
	.4byte	.LASF108
	.byte	0x1
	.byte	0xe9
	.4byte	0xdf2
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.byte	0xee
	.4byte	0xdf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LVL106
	.4byte	0x6eb
	.4byte	0xdc2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL107
	.4byte	0x6eb
	.4byte	0xdd6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.byte	0
	.uleb128 0x21
	.4byte	.LVL108
	.4byte	0x618
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0xf
	.4byte	0x13d
	.4byte	0xe08
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0x1
	.byte	0xf4
	.4byte	0x101
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec8
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf4
	.4byte	0xec8
	.4byte	.LLST34
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0xf4
	.4byte	0xece
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	.LASF78
	.byte	0x1
	.byte	0xfa
	.4byte	0xed4
	.4byte	.LLST36
	.uleb128 0x27
	.4byte	.LVL111
	.4byte	0x11ad
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL115
	.4byte	0x1199
	.4byte	0xe96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL117
	.4byte	0x11d9
	.4byte	0xeb7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x21
	.4byte	.LVL118
	.4byte	0x11c3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcdf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x451
	.uleb128 0x6
	.byte	0x4
	.4byte	0xeda
	.uleb128 0x7
	.4byte	0xca
	.uleb128 0x33
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x10a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x34
	.string	"cfg"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x5aa
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x1203
	.uleb128 0x27
	.4byte	.LVL125
	.4byte	0x120f
	.uleb128 0x21
	.4byte	.LVL126
	.4byte	0x121b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x11a
	.4byte	0xca
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf94
	.uleb128 0x36
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x11c
	.4byte	0xca
	.uleb128 0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xf000
	.byte	0x1a
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x11c
	.4byte	0xca
	.4byte	.LLST38
	.uleb128 0x37
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x11c
	.4byte	0xca
	.4byte	.LLST39
	.uleb128 0x38
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x120
	.4byte	0xeb
	.uleb128 0x37
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x121
	.4byte	0xca
	.4byte	.LLST40
	.byte	0
	.uleb128 0x35
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x137
	.4byte	0x101
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d2
	.uleb128 0x39
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x137
	.4byte	0x10d2
	.4byte	.LLST41
	.uleb128 0x39
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x137
	.4byte	0x535
	.4byte	.LLST42
	.uleb128 0x34
	.string	"err"
	.byte	0x1
	.2byte	0x139
	.4byte	0x101
	.4byte	.LLST43
	.uleb128 0x3a
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x13a
	.4byte	0x27e
	.byte	0
	.uleb128 0x36
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x13f
	.4byte	0xca
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LVL135
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL136
	.4byte	0x1199
	.4byte	0x103d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL138
	.4byte	0xf27
	.uleb128 0x27
	.4byte	.LVL140
	.4byte	0x118e
	.uleb128 0x23
	.4byte	.LVL142
	.4byte	0x1199
	.4byte	0x108a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL144
	.4byte	0x118e
	.uleb128 0x21
	.4byte	.LVL147
	.4byte	0x1199
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10d8
	.uleb128 0x7
	.4byte	0x348
	.uleb128 0x3b
	.string	"TAG"
	.byte	0x1
	.byte	0x29
	.4byte	0x10ef
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0xf
	.4byte	0xeb
	.4byte	0x1104
	.uleb128 0x10
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF175
	.byte	0x11
	.byte	0x1d
	.4byte	0x110f
	.uleb128 0x7
	.4byte	0x10f4
	.uleb128 0x3d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xb
	.byte	0x54
	.uleb128 0x3d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0xf6
	.uleb128 0x3e
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.2byte	0x10a
	.uleb128 0x3d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x5
	.byte	0x61
	.uleb128 0x3d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xc
	.byte	0x79
	.uleb128 0x3d
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xc
	.byte	0x82
	.uleb128 0x3d
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xd
	.byte	0x21
	.uleb128 0x3d
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xd
	.byte	0x1f
	.uleb128 0x3d
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.byte	0x28
	.uleb128 0x3d
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xd
	.byte	0x24
	.uleb128 0x3d
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xe
	.byte	0x77
	.uleb128 0x3d
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x5
	.byte	0x57
	.uleb128 0x3d
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x5
	.byte	0x6b
	.uleb128 0x3f
	.4byte	.LASF163
	.4byte	.LASF163
	.uleb128 0x3d
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xe
	.byte	0x39
	.uleb128 0x3d
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xf
	.byte	0x26
	.uleb128 0x3d
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xe
	.byte	0x41
	.uleb128 0x3d
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x7
	.byte	0xc9
	.uleb128 0x3f
	.4byte	.LASF164
	.4byte	.LASF164
	.uleb128 0x3d
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x1d
	.uleb128 0x3d
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xa
	.byte	0x1f
	.uleb128 0x3d
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x21
	.uleb128 0x3e
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x2c8
	.uleb128 0x3e
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x2d1
	.uleb128 0x3e
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x10
	.2byte	0x17f
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL85
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL112
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x33
	.byte	0x26
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x24
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x9
	.byte	0xfd
	.byte	0x24
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x19
	.uleb128 0
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1a
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x33
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x33
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x33
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x17
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x40
	.byte	0x24
	.byte	0x1a
	.byte	0x44
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL133
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL133
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF152:
	.string	"strlen"
.LASF77:
	.string	"start_addr"
.LASF84:
	.string	"ESP_IMAGE_VERIFY"
.LASF169:
	.string	"rtc_vddsdio_set_config"
.LASF87:
	.string	"GPIO_SHORT_HOLD"
.LASF46:
	.string	"flags"
.LASF131:
	.string	"sha_handle"
.LASF88:
	.string	"GPIO_NOT_HOLD"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"version"
.LASF105:
	.string	"len_label"
.LASF7:
	.string	"__int32_t"
.LASF53:
	.string	"spi_speed"
.LASF174:
	.string	"bootloader_common_vddsdio_configure"
.LASF157:
	.string	"esp_log_timestamp"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF151:
	.string	"gpio_input_get_high"
.LASF65:
	.string	"esp_image_segment_header_t"
.LASF175:
	.string	"GPIO_PIN_MUX_REG"
.LASF48:
	.string	"ESP_CHIP_ID_ESP32"
.LASF11:
	.string	"__intptr_t"
.LASF89:
	.string	"esp_comm_gpio_hold_t"
.LASF62:
	.string	"esp_image_header_t"
.LASF101:
	.string	"list"
.LASF36:
	.string	"seq_label"
.LASF19:
	.string	"uint32_t"
.LASF168:
	.string	"rtc_vddsdio_get_config"
.LASF134:
	.string	"bootloader_common_get_active_otadata"
.LASF33:
	.string	"ESP_OTA_IMG_ABORTED"
.LASF54:
	.string	"spi_size"
.LASF153:
	.string	"strcspn"
.LASF10:
	.string	"long long unsigned int"
.LASF91:
	.string	"ESP_IMAGE_APPLICATION"
.LASF155:
	.string	"strncpy"
.LASF142:
	.string	"chip_ver"
.LASF93:
	.string	"force"
.LASF126:
	.string	"fl_ota_data_erase"
.LASF150:
	.string	"gpio_input_get"
.LASF6:
	.string	"__uint16_t"
.LASF120:
	.string	"ota_data_erase"
.LASF137:
	.string	"bootloader_common_get_chip_revision"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF71:
	.string	"time"
.LASF94:
	.string	"enable"
.LASF117:
	.string	"delay_sec"
.LASF171:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF76:
	.string	"esp_app_desc_t"
.LASF58:
	.string	"chip_id"
.LASF47:
	.string	"esp_partition_info_t"
.LASF39:
	.string	"offset"
.LASF104:
	.string	"pos_delim"
.LASF139:
	.string	"eco_bit1"
.LASF140:
	.string	"eco_bit2"
.LASF28:
	.string	"_Bool"
.LASF81:
	.string	"image_len"
.LASF73:
	.string	"idf_ver"
.LASF68:
	.string	"reserv1"
.LASF75:
	.string	"reserv2"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF118:
	.string	"bootloader_common_erase_part_type_data"
.LASF56:
	.string	"wp_pin"
.LASF82:
	.string	"image_digest"
.LASF92:
	.string	"esp_image_type"
.LASF135:
	.string	"bootloader_common_get_partition_description"
.LASF173:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF161:
	.string	"bootloader_munmap"
.LASF15:
	.string	"char"
.LASF100:
	.string	"bootloader_sha256_handle_t"
.LASF108:
	.string	"two_otadata"
.LASF30:
	.string	"ESP_OTA_IMG_PENDING_VERIFY"
.LASF145:
	.string	"revision"
.LASF133:
	.string	"data"
.LASF83:
	.string	"esp_image_metadata_t"
.LASF72:
	.string	"date"
.LASF16:
	.string	"uint8_t"
.LASF74:
	.string	"app_elf_sha256"
.LASF106:
	.string	"bootloader_common_label_search"
.LASF38:
	.string	"esp_ota_select_entry_t"
.LASF138:
	.string	"eco_bit0"
.LASF124:
	.string	"num_partitions"
.LASF149:
	.string	"esp_log_early_timestamp"
.LASF9:
	.string	"long long int"
.LASF79:
	.string	"segments"
.LASF170:
	.string	"ets_delay_us"
.LASF125:
	.string	"partition"
.LASF112:
	.string	"bootloader_common_ota_select_crc"
.LASF129:
	.string	"out_sha_256"
.LASF109:
	.string	"valid_two_otadata"
.LASF163:
	.string	"memset"
.LASF107:
	.string	"bootloader_common_select_otadata"
.LASF147:
	.string	"gpio_pad_select_gpio"
.LASF40:
	.string	"size"
.LASF90:
	.string	"ESP_IMAGE_BOOTLOADER"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF78:
	.string	"image"
.LASF167:
	.string	"bootloader_sha256_finish"
.LASF99:
	.string	"rtc_vddsdio_config_t"
.LASF119:
	.string	"list_erase"
.LASF158:
	.string	"esp_log_write"
.LASF115:
	.string	"bootloader_common_check_long_hold_gpio"
.LASF70:
	.string	"project_name"
.LASF29:
	.string	"ESP_OTA_IMG_NEW"
.LASF20:
	.string	"intptr_t"
.LASF17:
	.string	"uint16_t"
.LASF44:
	.string	"subtype"
.LASF159:
	.string	"bootloader_mmap"
.LASF37:
	.string	"ota_state"
.LASF64:
	.string	"data_len"
.LASF123:
	.string	"marker"
.LASF31:
	.string	"ESP_OTA_IMG_VALID"
.LASF4:
	.string	"short int"
.LASF110:
	.string	"active_otadata"
.LASF127:
	.string	"bootloader_common_get_sha256_of_partition"
.LASF49:
	.string	"ESP_CHIP_ID_INVALID"
.LASF12:
	.string	"long int"
.LASF63:
	.string	"load_addr"
.LASF52:
	.string	"spi_mode"
.LASF160:
	.string	"esp_partition_table_verify"
.LASF132:
	.string	"partition_pos"
.LASF102:
	.string	"sub_list_start_like_label"
.LASF85:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF96:
	.string	"drefh"
.LASF98:
	.string	"drefl"
.LASF97:
	.string	"drefm"
.LASF5:
	.string	"__uint8_t"
.LASF130:
	.string	"partition_bin"
.LASF95:
	.string	"tieh"
.LASF121:
	.string	"tm_start"
.LASF42:
	.string	"magic"
.LASF50:
	.string	"esp_chip_id_t"
.LASF103:
	.string	"idx_first"
.LASF113:
	.string	"bootloader_common_ota_select_invalid"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF128:
	.string	"address"
.LASF80:
	.string	"segment_data"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF154:
	.string	"strstr"
.LASF18:
	.string	"int32_t"
.LASF122:
	.string	"partitions"
.LASF32:
	.string	"ESP_OTA_IMG_INVALID"
.LASF156:
	.string	"bootloader_flash_erase_range"
.LASF67:
	.string	"secure_version"
.LASF144:
	.string	"img_hdr"
.LASF43:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF136:
	.string	"app_desc"
.LASF166:
	.string	"bootloader_sha256_data"
.LASF116:
	.string	"num_pin"
.LASF59:
	.string	"min_chip_rev"
.LASF21:
	.string	"esp_err_t"
.LASF61:
	.string	"hash_appended"
.LASF57:
	.string	"spi_pin_drv"
.LASF45:
	.string	"label"
.LASF172:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_common.c"
.LASF86:
	.string	"GPIO_LONG_HOLD"
.LASF148:
	.string	"gpio_pad_pullup"
.LASF146:
	.string	"crc32_le"
.LASF165:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF164:
	.string	"memcpy"
.LASF66:
	.string	"magic_word"
.LASF55:
	.string	"entry_addr"
.LASF60:
	.string	"reserved"
.LASF141:
	.string	"combine_value"
.LASF34:
	.string	"ESP_OTA_IMG_UNDEFINED"
.LASF143:
	.string	"bootloader_common_check_chip_validity"
.LASF114:
	.string	"bootloader_common_ota_select_valid"
.LASF111:
	.string	"condition"
.LASF41:
	.string	"esp_partition_pos_t"
.LASF162:
	.string	"esp_image_verify"
.LASF35:
	.string	"ota_seq"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF51:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
