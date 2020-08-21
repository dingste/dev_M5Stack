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
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 39 0
	mov.n	a11, a2
	movi.n	a12, 4
	movi.n	a10, -1
	call8	crc32_le
.LVL1:
	.loc 1 40 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE7:
	.size	bootloader_common_ota_select_crc, .-bootloader_common_ota_select_crc
	.section	.text.bootloader_common_ota_select_valid,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_valid
	.type	bootloader_common_ota_select_valid, @function
bootloader_common_ota_select_valid:
.LFB8:
	.loc 1 43 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 44 0
	l32i.n	a3, a2, 0
	.loc 1 43 0
	mov.n	a10, a2
	.loc 1 44 0
	movi.n	a2, 0
.LVL4:
	beqi	a3, -1, .L3
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32i.n	a3, a10, 28
	call8	bootloader_common_ota_select_crc
.LVL5:
	sub	a10, a3, a10
	movi.n	a3, 1
	moveqz	a2, a3, a10
.L3:
	.loc 1 45 0 is_stmt 1 discriminator 6
	retw.n
.LFE8:
	.size	bootloader_common_ota_select_valid, .-bootloader_common_ota_select_valid
	.section	.text.bootloader_common_check_long_hold_gpio,"ax",@progbits
	.literal_position
	.literal .LC0, GPIO_PIN_MUX_REG
	.literal .LC1, 274877907
	.align	4
	.global	bootloader_common_check_long_hold_gpio
	.type	bootloader_common_check_long_hold_gpio, @function
bootloader_common_check_long_hold_gpio:
.LFB9:
	.loc 1 48 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 49 0
	extui	a6, a2, 0, 8
	mov.n	a10, a6
	call8	gpio_pad_select_gpio
.LVL7:
	.loc 1 50 0
	l32r	a4, .LC0
	addx4	a4, a2, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L7
	.loc 1 51 0
	memw
	l32i.n	a8, a4, 0
	movi	a5, 0x200
	or	a5, a8, a5
	memw
	s32i.n	a5, a4, 0
.L7:
	.loc 1 53 0
	mov.n	a10, a6
	call8	gpio_pad_pullup
.LVL8:
	.loc 1 54 0
	call8	esp_log_early_timestamp
.LVL9:
	.loc 1 55 0
	movi.n	a5, 0x1f
	.loc 1 54 0
	mov.n	a4, a10
.LVL10:
	.loc 1 55 0
	bltu	a5, a2, .L8
	.loc 1 55 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL11:
	j	.L20
.L8:
	.loc 1 55 0 discriminator 2
	call8	gpio_input_get_high
.LVL12:
.L20:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	.loc 1 56 0 is_stmt 1 discriminator 2
	movi.n	a5, 0
	.loc 1 55 0 discriminator 2
	bne	a10, a5, .L10
	.loc 1 59 0
	movi.n	a5, 0x1f
.L13:
	bltu	a5, a2, .L11
	.loc 1 59 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL13:
	j	.L21
.L11:
	.loc 1 59 0 discriminator 2
	call8	gpio_input_get_high
.LVL14:
.L21:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	bnez.n	a10, .L15
	.loc 1 62 0 is_stmt 1
	call8	esp_log_early_timestamp
.LVL15:
	l32r	a8, .LC1
	sub	a10, a10, a4
	muluh	a10, a10, a8
	srli	a10, a10, 6
	bltu	a10, a3, .L13
	.loc 1 63 0
	movi.n	a5, 1
	j	.L10
.L15:
	.loc 1 60 0
	movi.n	a5, -1
.L10:
	.loc 1 64 0
	mov.n	a2, a5
.LVL16:
	retw.n
.LFE9:
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
.LFB10:
	.loc 1 68 0
.LVL17:
	entry	sp, 48
.LCFI3:
	.loc 1 69 0
	movi.n	a6, 0
	.loc 1 68 0
	mov.n	a5, a2
	.loc 1 69 0
	movi.n	a4, 1
	mov.n	a2, a6
.LVL18:
	moveqz	a2, a4, a5
	mov.n	a7, a2
	mov.n	a2, a6
	moveqz	a2, a4, a3
	or	a2, a7, a2
	.loc 1 69 0
	bne	a2, a6, .L29
.LVL19:
.LBB8:
.LBB9:
	.loc 1 72 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	strstr
.LVL20:
	mov.n	a7, a10
.LVL21:
	mov.n	a6, a2
	j	.L24
.L28:
.LBB10:
	.loc 1 77 0
	sub	a8, a7, a5
.LVL22:
	.loc 1 78 0
	beqz.n	a8, .L25
	add.n	a8, a5, a8
.LVL23:
	addi.n	a8, a8, -1
	l8ui	a8, a8, 0
	mov.n	a10, a4
	addi	a9, a8, -44
	movnez	a10, a6, a9
	mov.n	a9, a10
	bnez.n	a10, .L25
	addi	a8, a8, -32
	moveqz	a9, a4, a8
	beqz.n	a9, .L26
.L25:
.LBB11:
	.loc 1 80 0
	mov.n	a10, a3
	call8	strlen
.LVL24:
	.loc 1 81 0
	add.n	a10, a7, a10
.LVL25:
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
	.loc 1 82 0
	bnez.n	a8, .L30
.L26:
.LBE11:
	.loc 1 90 0
	l32r	a11, .LC3
	mov.n	a10, a7
	call8	strcspn
.LVL26:
	mov.n	a8, a10
.LVL27:
	.loc 1 91 0
	mov.n	a10, a7
	s32i.n	a8, sp, 0
	call8	strlen
.LVL28:
	l32i.n	a8, sp, 0
.LVL29:
	beq	a8, a10, .L23
	.loc 1 94 0
	add.n	a10, a7, a8
	mov.n	a11, a3
	call8	strstr
.LVL30:
	mov.n	a7, a10
.LVL31:
.L24:
.LBE10:
	.loc 1 73 0
	bnez.n	a7, .L28
	retw.n
.LVL32:
.L29:
.LBE9:
.LBE8:
	.loc 1 70 0
	mov.n	a2, a6
	retw.n
.LVL33:
.L30:
.LBB15:
.LBB14:
.LBB13:
.LBB12:
	.loc 1 84 0
	mov.n	a2, a8
.L23:
.LBE12:
.LBE13:
.LBE14:
.LBE15:
	.loc 1 97 0
	retw.n
.LFE10:
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
.LFB11:
	.loc 1 100 0
.LVL34:
	entry	sp, 96
.LCFI4:
.LVL35:
	.loc 1 100 0
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 56
	.loc 1 107 0
	l32r	a5, .LC13
	l32r	a3, .LC14
.LVL36:
	mov.n	a11, a5
	mov.n	a10, a3
	.loc 1 100 0
	s32i.n	a2, sp, 52
	.loc 1 107 0
	call8	bootloader_mmap
.LVL37:
	mov.n	a2, a10
.LVL38:
	l32r	a4, .LC16
	.loc 1 108 0
	bnez.n	a10, .L38
	.loc 1 109 0 discriminator 2
	call8	esp_log_timestamp
.LVL39:
	l32r	a12, .LC18
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a15, a3
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL40:
	.loc 1 110 0 discriminator 2
	retw.n
.L38:
	.loc 1 114 0
	addi	a12, sp, 36
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL41:
	mov.n	a5, a10
.LVL42:
	.loc 1 115 0
	beqz.n	a10, .L40
	.loc 1 116 0 discriminator 2
	call8	esp_log_timestamp
.LVL43:
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	.loc 1 117 0 discriminator 2
	movi.n	a6, 0
	j	.L41
.LVL45:
.L40:
	.loc 1 119 0 discriminator 9
	call8	esp_log_timestamp
.LVL46:
	l32r	a12, .LC22
	mov.n	a13, a10
	mov.n	a14, a4
	mov.n	a11, a4
	movi.n	a10, 3
	call8	esp_log_write
.LVL47:
	addi.n	a3, a2, 2
	.loc 1 105 0 discriminator 9
	movi.n	a6, 1
.LBB16:
	.loc 1 120 0 discriminator 9
	j	.L42
.LVL48:
.L47:
.LBB17:
	.loc 1 122 0
	movi.n	a12, 0x11
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL49:
	.loc 1 123 0
	l8ui	a7, a3, 0
	bnei	a7, 1, .L43
.LVL50:
.LBB18:
	.loc 1 125 0
	l32i.n	a9, sp, 56
	movi.n	a8, 0
	beq	a9, a8, .L44
	.loc 1 125 0 discriminator 1
	l8ui	a9, a3, 1
	moveqz	a8, a7, a9
	extui	a8, a8, 0, 8
.L44:
.LVL51:
	addi.n	a9, a3, 10
	.loc 1 129 0
	movi.n	a12, 0x10
	mov.n	a11, a9
	add.n	a10, sp, a12
	s32i.n	a8, sp, 60
	s32i.n	a9, sp, 48
	call8	strncpy
.LVL52:
	.loc 1 130 0
	l32i.n	a8, sp, 60
	addi.n	a7, a3, 6
	bnez.n	a8, .L45
.LVL53:
	.loc 1 130 0 discriminator 1
	l32i.n	a10, sp, 52
	addi	a11, sp, 16
	call8	bootloader_common_label_search
.LVL54:
	.loc 1 139 0 discriminator 1
	l32r	a8, .LC8
	.loc 1 130 0 discriminator 1
	beqz.n	a10, .L46
.LVL55:
.L45:
	.loc 1 131 0
	addi.n	a8, a3, 2
	l32i.n	a10, a8, 0
	l32i.n	a11, a7, 0
	call8	bootloader_flash_erase_range
.LVL56:
	.loc 1 136 0
	l32r	a8, .LC10
	.loc 1 132 0
	beqz.n	a10, .L46
.L50:
	.loc 1 134 0
	l32r	a8, .LC12
	.loc 1 133 0
	movi.n	a6, 0
.LVL57:
.L46:
	.loc 1 142 0 discriminator 9
	s32i.n	a8, sp, 60
	call8	esp_log_timestamp
.LVL58:
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
.LVL59:
.L43:
.LBE18:
.LBE17:
	.loc 1 120 0 discriminator 2
	addi.n	a5, a5, 1
.LVL60:
	addi	a3, a3, 32
.LVL61:
.L42:
	.loc 1 120 0 is_stmt 0 discriminator 1
	l32i.n	a7, sp, 36
	blt	a5, a7, .L47
.LVL62:
.L41:
.LBE16:
	.loc 1 148 0 is_stmt 1
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL63:
	.loc 1 150 0
	mov.n	a2, a6
.LVL64:
	.loc 1 151 0
	retw.n
.LFE11:
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
.LFB12:
	.loc 1 154 0
.LVL65:
	entry	sp, 320
.LCFI5:
	.loc 1 155 0
	movi.n	a10, 1
	movi.n	a8, 0
	moveqz	a8, a10, a5
	extui	a8, a8, 0, 8
	bnez.n	a8, .L60
	moveqz	a8, a10, a3
	bnez.n	a8, .L60
	.loc 1 159 0
	bnez.n	a4, .L55
.LBB19:
	.loc 1 160 0
	addi	a4, sp, 16
.LVL66:
	addmi	a11, a4, 0x100
	.loc 1 167 0
	mov.n	a12, a4
	.loc 1 160 0
	s32i.n	a3, a11, 4
	s32i.n	a2, a11, 0
	.loc 1 167 0
	call8	esp_image_verify
.LVL67:
	mov.n	a3, a10
.LVL68:
	bnez.n	a10, .L61
	.loc 1 170 0
	l8ui	a4, sp, 43
	beqz.n	a4, .L57
	.loc 1 171 0
	addi	a2, sp, 16
.LVL69:
	movi	a11, 0xe0
	movi.n	a12, 0x20
	add.n	a11, a2, a11
	mov.n	a10, a5
	call8	memcpy
.LVL70:
	.loc 1 172 0
	j	.L54
.LVL71:
.L57:
	.loc 1 175 0
	l32i	a3, sp, 236
.LVL72:
	j	.L55
.LVL73:
.L61:
	.loc 1 168 0
	l32r	a3, .LC25
	j	.L54
.LVL74:
.L55:
.LBE19:
	.loc 1 178 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL75:
	mov.n	a4, a10
.LVL76:
	.loc 1 179 0
	bnez.n	a10, .L58
	.loc 1 180 0 discriminator 2
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC26
	l32r	a12, .LC27
	s32i.n	a3, sp, 0
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	.loc 1 181 0 discriminator 2
	movi.n	a3, -1
.LVL79:
	j	.L54
.LVL80:
.L58:
	.loc 1 183 0
	call8	bootloader_sha256_start
.LVL81:
	mov.n	a2, a10
.LVL82:
	.loc 1 184 0
	bnez.n	a10, .L59
	.loc 1 185 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL83:
	.loc 1 186 0
	movi	a3, 0x101
.LVL84:
	j	.L54
.LVL85:
.L59:
	.loc 1 188 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	bootloader_sha256_data
.LVL86:
	.loc 1 189 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL87:
	.loc 1 191 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL88:
	.loc 1 193 0
	movi.n	a3, 0
.LVL89:
	j	.L54
.LVL90:
.L60:
	.loc 1 156 0
	movi	a3, 0x102
.LVL91:
.L54:
	.loc 1 194 0
	mov.n	a2, a3
	retw.n
.LFE12:
	.size	bootloader_common_get_sha256_of_partition, .-bootloader_common_get_sha256_of_partition
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
	.uleb128 0x30
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
	.uleb128 0x60
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
	.uleb128 0x140
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/crc.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/gpio.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/gpio_periph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb8a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xc
	.4byte	.LASF117
	.4byte	.LASF118
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
	.byte	0x6
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
	.uleb128 0xb
	.byte	0x20
	.byte	0x5
	.byte	0x1d
	.4byte	0x171
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1e
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.4byte	0x171
	.byte	0x4
	.uleb128 0xd
	.string	"crc"
	.byte	0x5
	.byte	0x20
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x181
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x21
	.4byte	0x144
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x25
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x26
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x27
	.4byte	0x18c
	.uleb128 0xb
	.byte	0x20
	.byte	0x5
	.byte	0x2c
	.4byte	0x209
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2d
	.4byte	0xd5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2e
	.4byte	0xca
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2f
	.4byte	0xca
	.byte	0x3
	.uleb128 0xd
	.string	"pos"
	.byte	0x5
	.byte	0x30
	.4byte	0x1ad
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x31
	.4byte	0x209
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x32
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x219
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x33
	.4byte	0x1b8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x13
	.4byte	0x243
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF42
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x7
	.byte	0x17
	.4byte	0x224
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x2d5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3c
	.4byte	0xca
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3d
	.4byte	0xca
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x3f
	.4byte	0xca
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.byte	0x41
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x8
	.byte	0x43
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x44
	.4byte	0xeb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x47
	.4byte	0xca
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x49
	.4byte	0x2d5
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x4b
	.4byte	0x2e5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x4f
	.4byte	0xca
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x2e5
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x2f5
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x8
	.byte	0x50
	.4byte	0x24e
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x321
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x58
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x59
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x8
	.byte	0x5a
	.4byte	0x300
	.uleb128 0x12
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x37e
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x60
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x61
	.4byte	0x2f5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x62
	.4byte	0x37e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x63
	.4byte	0x38e
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x64
	.4byte	0xeb
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0x65
	.4byte	0x39e
	.byte	0xe0
	.byte	0
	.uleb128 0xe
	.4byte	0x321
	.4byte	0x38e
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xeb
	.4byte	0x39e
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x3ae
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x8
	.byte	0x66
	.4byte	0x32c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x69
	.4byte	0x3d2
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x9
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.byte	0x43
	.4byte	0x13d
	.byte	0x1
	.4byte	0x434
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x43
	.4byte	0xb8
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0xab
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x48
	.4byte	0xb8
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4d
	.4byte	0x33
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x5a
	.4byte	0x33
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0x50
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0x25
	.4byte	0xeb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x476
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x25
	.4byte	0x476
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0xa9e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47c
	.uleb128 0x7
	.4byte	0x181
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x2a
	.4byte	0x13d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b9
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.4byte	0x476
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x434
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2f
	.4byte	0x243
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x1
	.byte	0x36
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0xaa9
	.4byte	0x50f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0xab4
	.4byte	0x523
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0xac0
	.uleb128 0x1f
	.4byte	.LVL11
	.4byte	0xacb
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0xad6
	.uleb128 0x1f
	.4byte	.LVL13
	.4byte	0xacb
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0xad6
	.uleb128 0x1f
	.4byte	.LVL15
	.4byte	0xac0
	.byte	0
	.uleb128 0x20
	.4byte	0x3dd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x21
	.4byte	0x3ed
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	0x3f8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	0x403
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x21
	.4byte	0x3f8
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0x3ed
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x25
	.4byte	0x403
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x627
	.uleb128 0x25
	.4byte	0x40f
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	0x41a
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x5e5
	.uleb128 0x25
	.4byte	0x426
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0xae1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0xaec
	.4byte	0x602
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL28
	.4byte	0xae1
	.4byte	0x616
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0xaf7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0xaf7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x63
	.4byte	0x13d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a8
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0x63
	.4byte	0xb8
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x63
	.4byte	0x13d
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.byte	0x65
	.4byte	0x8a8
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	.LASF83
	.byte	0x1
	.byte	0x66
	.4byte	0xb8
	.4byte	.LLST13
	.uleb128 0x28
	.string	"err"
	.byte	0x1
	.byte	0x67
	.4byte	0x101
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF84
	.byte	0x1
	.byte	0x68
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.4byte	0x13d
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x7c4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x33
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x27
	.4byte	.LASF85
	.byte	0x1
	.byte	0x79
	.4byte	0x8a8
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7a
	.4byte	0x8b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x7a7
	.uleb128 0x27
	.4byte	.LASF86
	.byte	0x1
	.byte	0x7c
	.4byte	0x13d
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	.LVL52
	.4byte	0xb02
	.4byte	0x73f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL54
	.4byte	0x3dd
	.4byte	0x75b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL56
	.4byte	0xb0d
	.uleb128 0x1f
	.4byte	.LVL58
	.4byte	0xb18
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xb23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0xb2e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0xb37
	.4byte	0x7de
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL39
	.4byte	0xb18
	.uleb128 0x1e
	.4byte	.LVL40
	.4byte	0xb23
	.4byte	0x81c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0xb42
	.4byte	0x835
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL43
	.4byte	0xb18
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0xb23
	.4byte	0x866
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL46
	.4byte	0xb18
	.uleb128 0x1e
	.4byte	.LVL47
	.4byte	0xb23
	.4byte	0x897
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0xb4d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0x7
	.4byte	0x219
	.uleb128 0xe
	.4byte	0xb1
	.4byte	0x8c3
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x99
	.4byte	0x101
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5c
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0x99
	.4byte	0xeb
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x99
	.4byte	0xeb
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0x99
	.4byte	0x33
	.4byte	.LLST21
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.byte	0x99
	.4byte	0xa5c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb2
	.4byte	0xc3
	.4byte	.LLST22
	.uleb128 0x27
	.4byte	.LASF91
	.byte	0x1
	.byte	0xb7
	.4byte	0x3d2
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x99c
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa0
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa4
	.4byte	0x3ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.4byte	.LVL67
	.4byte	0xb58
	.4byte	0x97e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 256
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0xb63
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL75
	.4byte	0xb37
	.4byte	0x9b6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xb18
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0xb23
	.4byte	0x9fa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL81
	.4byte	0xb6c
	.uleb128 0x1e
	.4byte	.LVL83
	.4byte	0xb4d
	.4byte	0xa17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0xb77
	.4byte	0xa31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL87
	.4byte	0xb82
	.4byte	0xa4b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL88
	.4byte	0xb4d
	.uleb128 0x1a
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
	.4byte	0x1ad
	.uleb128 0x2b
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0xa79
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0xe
	.4byte	0xeb
	.4byte	0xa8e
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0xf
	.byte	0x19
	.4byte	0xa99
	.uleb128 0x7
	.4byte	0xa7e
	.uleb128 0x2d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.byte	0x33
	.uleb128 0x2d
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0xf6
	.uleb128 0x2e
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x10a
	.uleb128 0x2d
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x6
	.byte	0x61
	.uleb128 0x2d
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x79
	.uleb128 0x2d
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xb
	.byte	0x82
	.uleb128 0x2d
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xc
	.byte	0x21
	.uleb128 0x2d
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xc
	.byte	0x1f
	.uleb128 0x2d
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xc
	.byte	0x28
	.uleb128 0x2d
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xc
	.byte	0x24
	.uleb128 0x2d
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xd
	.byte	0x70
	.uleb128 0x2d
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.byte	0x6b
	.uleb128 0x2f
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x2d
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xd
	.byte	0x32
	.uleb128 0x2d
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xe
	.byte	0x26
	.uleb128 0x2d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xd
	.byte	0x3a
	.uleb128 0x2d
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa8
	.uleb128 0x2f
	.4byte	.LASF112
	.4byte	.LASF112
	.uleb128 0x2d
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0x1d
	.uleb128 0x2d
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0x1f
	.uleb128 0x2d
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x9
	.byte	0x21
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"strlen"
.LASF58:
	.string	"start_addr"
.LASF65:
	.string	"ESP_IMAGE_VERIFY"
.LASF42:
	.string	"GPIO_SHORT_HOLD"
.LASF39:
	.string	"flags"
.LASF91:
	.string	"sha_handle"
.LASF43:
	.string	"GPIO_NOT_HOLD"
.LASF0:
	.string	"unsigned int"
.LASF72:
	.string	"len_label"
.LASF7:
	.string	"__int32_t"
.LASF47:
	.string	"spi_speed"
.LASF105:
	.string	"esp_log_timestamp"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF99:
	.string	"gpio_input_get_high"
.LASF57:
	.string	"esp_image_segment_header_t"
.LASF120:
	.string	"GPIO_PIN_MUX_REG"
.LASF109:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF44:
	.string	"esp_comm_gpio_hold_t"
.LASF54:
	.string	"esp_image_header_t"
.LASF68:
	.string	"list"
.LASF30:
	.string	"seq_label"
.LASF19:
	.string	"uint32_t"
.LASF48:
	.string	"spi_size"
.LASF101:
	.string	"strcspn"
.LASF10:
	.string	"long long unsigned int"
.LASF103:
	.string	"strncpy"
.LASF86:
	.string	"fl_ota_data_erase"
.LASF98:
	.string	"gpio_input_get"
.LASF6:
	.string	"__uint16_t"
.LASF80:
	.string	"ota_data_erase"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF77:
	.string	"delay_sec"
.LASF116:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"esp_partition_info_t"
.LASF32:
	.string	"offset"
.LASF71:
	.string	"pos_delim"
.LASF28:
	.string	"_Bool"
.LASF62:
	.string	"image_len"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF78:
	.string	"bootloader_common_erase_part_type_data"
.LASF63:
	.string	"image_digest"
.LASF118:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF15:
	.string	"char"
.LASF93:
	.string	"data"
.LASF64:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF119:
	.string	"bootloader_common_label_search"
.LASF31:
	.string	"esp_ota_select_entry_t"
.LASF84:
	.string	"num_partitions"
.LASF97:
	.string	"esp_log_early_timestamp"
.LASF9:
	.string	"long long int"
.LASF60:
	.string	"segments"
.LASF85:
	.string	"partition"
.LASF73:
	.string	"bootloader_common_ota_select_crc"
.LASF89:
	.string	"out_sha_256"
.LASF111:
	.string	"memset"
.LASF95:
	.string	"gpio_pad_select_gpio"
.LASF33:
	.string	"size"
.LASF67:
	.string	"bootloader_sha256_handle_t"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF59:
	.string	"image"
.LASF115:
	.string	"bootloader_sha256_finish"
.LASF79:
	.string	"list_erase"
.LASF106:
	.string	"esp_log_write"
.LASF75:
	.string	"bootloader_common_check_long_hold_gpio"
.LASF20:
	.string	"intptr_t"
.LASF17:
	.string	"uint16_t"
.LASF37:
	.string	"subtype"
.LASF107:
	.string	"bootloader_mmap"
.LASF56:
	.string	"data_len"
.LASF83:
	.string	"marker"
.LASF4:
	.string	"short int"
.LASF87:
	.string	"bootloader_common_get_sha256_of_partition"
.LASF12:
	.string	"long int"
.LASF55:
	.string	"load_addr"
.LASF46:
	.string	"spi_mode"
.LASF108:
	.string	"esp_partition_table_verify"
.LASF92:
	.string	"partition_pos"
.LASF69:
	.string	"sub_list_start_like_label"
.LASF66:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF5:
	.string	"__uint8_t"
.LASF90:
	.string	"partition_bin"
.LASF81:
	.string	"tm_start"
.LASF35:
	.string	"magic"
.LASF50:
	.string	"wp_pin"
.LASF70:
	.string	"idx_first"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF88:
	.string	"address"
.LASF61:
	.string	"segment_data"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF102:
	.string	"strstr"
.LASF18:
	.string	"int32_t"
.LASF82:
	.string	"partitions"
.LASF104:
	.string	"bootloader_flash_erase_range"
.LASF36:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF114:
	.string	"bootloader_sha256_data"
.LASF76:
	.string	"num_pin"
.LASF21:
	.string	"esp_err_t"
.LASF53:
	.string	"hash_appended"
.LASF51:
	.string	"spi_pin_drv"
.LASF38:
	.string	"label"
.LASF117:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_common.c"
.LASF41:
	.string	"GPIO_LONG_HOLD"
.LASF96:
	.string	"gpio_pad_pullup"
.LASF94:
	.string	"crc32_le"
.LASF113:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF112:
	.string	"memcpy"
.LASF49:
	.string	"entry_addr"
.LASF52:
	.string	"reserved"
.LASF74:
	.string	"bootloader_common_ota_select_valid"
.LASF34:
	.string	"esp_partition_pos_t"
.LASF110:
	.string	"esp_image_verify"
.LASF29:
	.string	"ota_seq"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF45:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
