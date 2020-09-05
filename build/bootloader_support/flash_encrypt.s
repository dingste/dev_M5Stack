	.file	"flash_encrypt.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"flash_encrypt"
.LC2:
	.string	"\033[0;31mE (%d) %s: esp_flash_encrypt_region bad src_addr 0x%x\033[0m\n"
.LC5:
	.string	"\033[0;31mE (%d) %s: flash operation failed: 0x%x\033[0m\n"
	.section	.text.esp_flash_encrypt_region,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, 4096
	.literal .LC6, .LC5
	.align	4
	.global	esp_flash_encrypt_region
	.type	esp_flash_encrypt_region, @function
esp_flash_encrypt_region:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/flash_encrypt.c"
	.loc 1 319 0
.LVL0:
	entry	sp, 4128
.LCFI0:
	.loc 1 323 0
	extui	a5, a2, 0, 12
	bnez.n	a5, .L2
.LBB2:
.LBB3:
	.loc 1 331 0 discriminator 1
	l32r	a7, .LC4
	j	.L3
.L2:
.LBE3:
.LBE2:
	.loc 1 324 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC1
	l32r	a12, .LC3
	mov.n	a15, a2
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 325 0 discriminator 2
	movi.n	a2, -1
.LVL3:
	retw.n
.LVL4:
.L6:
.LBB5:
.LBB4:
	.loc 1 329 0
	call8	rtc_wdt_feed
.LVL5:
	add.n	a6, a5, a2
.LVL6:
	.loc 1 331 0
	movi.n	a13, 0
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL7:
	mov.n	a4, a10
.LVL8:
	.loc 1 332 0
	bnez.n	a10, .L5
	.loc 1 335 0
	srli	a10, a6, 12
	call8	bootloader_flash_erase_sector
.LVL9:
	mov.n	a4, a10
.LVL10:
	.loc 1 336 0
	bnez.n	a10, .L5
	.loc 1 339 0
	movi.n	a13, 1
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_write
.LVL11:
	mov.n	a4, a10
.LVL12:
	.loc 1 340 0
	bnez.n	a10, .L5
.LBE4:
	.loc 1 328 0 discriminator 2
	addmi	a5, a5, 0x1000
.LVL13:
.L3:
	.loc 1 328 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L6
.LBE5:
	.loc 1 344 0 is_stmt 1
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L5:
	.loc 1 347 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC1
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 348 0 discriminator 2
	mov.n	a2, a4
.LVL18:
	.loc 1 349 0 discriminator 2
	retw.n
.LFE18:
	.size	esp_flash_encrypt_region, .-esp_flash_encrypt_region
	.section	.rodata.str1.1
.LC11:
	.string	"\033[0;31mE (%d) %s: Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Unknown/unsupported CODING_SCHEME value 0x%x\033[0m\n"
.LC25:
	.string	"\033[0;32mI (%d) %s: Generating new flash encryption key...\033[0m\n"
.LC28:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
.LC32:
	.string	"\033[0;31mE (%d) %s: Flash encryption key has to be either unset or both read and write protected\033[0m\n"
.LC34:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded flash encryption key in EFUSE block 1\033[0m\n"
.LC36:
	.string	"\033[0;32mI (%d) %s: Setting CRYPT_CONFIG efuse to 0xF\033[0m\n"
.LC40:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader encryption...\033[0m\n"
.LC42:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader decryption...\033[0m\n"
.LC44:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader MMU cache...\033[0m\n"
.LC46:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
.LC48:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
.LC52:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader in place: 0x%x\033[0m\n"
.LC54:
	.string	"\033[0;33mW (%d) %s: no valid bootloader was found\033[0m\n"
.LC58:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data\033[0m\n"
.LC60:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition table in place. %x\033[0m\n"
.LC62:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data - not plaintext?\033[0m\n"
.LC66:
	.string	"\033[0;32mI (%d) %s: Encrypting partition %d at offset 0x%x...\033[0m\n"
.LC68:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition %d\033[0m\n"
.LC71:
	.string	"\033[0;33mW (%d) %s: Not disabling FLASH_CRYPT_CNT - plaintext flashing is still possible\033[0m\n"
.LC73:
	.string	"\033[0;32mI (%d) %s: Flash encryption completed\033[0m\n"
	.section	.text.encrypt_flash_contents,"ax",@progbits
	.literal_position
	.literal .LC10, .LC0
	.literal .LC12, .LC11
	.literal .LC13, 1073061912
	.literal .LC15, .LC14
	.literal .LC16, 1073061888
	.literal .LC17, 1073061944
	.literal .LC18, 1073061948
	.literal .LC19, 1073061952
	.literal .LC20, 1073061956
	.literal .LC21, 1073061960
	.literal .LC22, 1073061964
	.literal .LC23, 1073061968
	.literal .LC24, 1073061972
	.literal .LC26, .LC25
	.literal .LC27, 1073062040
	.literal .LC29, .LC28
	.literal .LC30, 1073061916
	.literal .LC31, 65664
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, 1073061936
	.literal .LC39, -268435456
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC50, 1073061940
	.literal .LC51, 4096
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC56, 3072
	.literal .LC57, 32768
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC64, -67174400
	.literal .LC65, 65536
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.literal .LC70, -133169153
	.literal .LC72, .LC71
	.literal .LC74, .LC73
	.literal .LC75, 3360
	.align	4
	.type	encrypt_flash_contents, @function
encrypt_flash_contents:
.LFB14:
	.loc 1 159 0
.LVL19:
	entry	sp, 3408
.LCFI1:
	.loc 1 166 0
	beqz.n	a3, .L8
	.loc 1 167 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC10
	movi.n	a3, 1
.LVL21:
	l32r	a12, .LC12
	s32i.n	a3, sp, 0
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a10, a3
	mov.n	a14, a11
	call8	esp_log_write
.LVL22:
	.loc 1 168 0 discriminator 2
	movi.n	a3, -1
	j	.L36
.LVL23:
.L8:
	.loc 1 171 0
	bnez.n	a2, .L10
.LBB17:
.LBB18:
	.loc 1 65 0
	l32r	a3, .LC13
.LVL24:
	memw
	l32i.n	a4, a3, 0
	l32r	a3, .LC10
	extui	a4, a4, 0, 2
.LVL25:
	.loc 1 66 0
	bltui	a4, 2, .L11
	.loc 1 67 0
	call8	esp_log_timestamp
.LVL26:
	l32r	a12, .LC15
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	mov.n	a15, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 68 0
	movi	a3, 0x106
	j	.L36
.L11:
	.loc 1 74 0
	l32r	a4, .LC16
.LVL28:
	memw
	l32i.n	a5, a4, 0
.LVL29:
	.loc 1 77 0
	movi.n	a4, 1
	extui	a6, a5, 16, 1
	xor	a6, a6, a4
	.loc 1 78 0
	extui	a5, a5, 7, 1
.LVL30:
	xor	a4, a5, a4
	.loc 1 77 0
	beqz.n	a6, .L33
	beqz.n	a4, .L13
	.loc 1 79 0
	l32r	a5, .LC17
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 80 0
	l32r	a5, .LC18
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 81 0
	l32r	a5, .LC19
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 82 0
	l32r	a5, .LC20
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 83 0
	l32r	a5, .LC21
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 84 0
	l32r	a5, .LC22
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 85 0
	l32r	a5, .LC23
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 86 0
	l32r	a5, .LC24
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L13
	.loc 1 87 0
	call8	esp_log_timestamp
.LVL31:
	l32r	a12, .LC26
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL32:
	.loc 1 88 0
	l32r	a10, .LC27
	call8	esp_efuse_write_random_key
.LVL33:
	.loc 1 89 0
	call8	esp_efuse_burn_new_values
.LVL34:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL35:
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL36:
	.loc 1 92 0
	l32r	a5, .LC31
	l32r	a4, .LC30
	memw
	s32i.n	a5, a4, 0
	.loc 1 93 0
	call8	esp_efuse_burn_new_values
.LVL37:
	j	.L14
.L13:
	.loc 1 96 0
	bnez.n	a6, .L32
.L33:
	beqz.n	a4, .L15
.L32:
	.loc 1 97 0
	call8	esp_log_timestamp
.LVL38:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC33
	mov.n	a11, a3
	j	.L44
.L15:
	.loc 1 100 0
	call8	esp_log_timestamp
.LVL39:
	l32r	a12, .LC35
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 2
	call8	esp_log_write
.LVL40:
.L14:
	.loc 1 113 0
	call8	esp_log_timestamp
.LVL41:
	l32r	a12, .LC37
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL42:
	.loc 1 114 0
	l32r	a4, .LC38
	l32r	a5, .LC39
	memw
	s32i.n	a5, a4, 0
	.loc 1 115 0
	call8	esp_efuse_burn_new_values
.LVL43:
	.loc 1 119 0
	call8	esp_log_timestamp
.LVL44:
	l32r	a12, .LC41
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL45:
	.loc 1 125 0
	call8	esp_log_timestamp
.LVL46:
	l32r	a12, .LC43
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL47:
	.loc 1 131 0
	call8	esp_log_timestamp
.LVL48:
	l32r	a12, .LC45
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL49:
	.loc 1 137 0
	call8	esp_log_timestamp
.LVL50:
	l32r	a12, .LC47
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL51:
	.loc 1 143 0
	call8	esp_log_timestamp
.LVL52:
	l32r	a12, .LC49
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL53:
	.loc 1 150 0
	l32r	a3, .LC50
	movi	a4, 0x3c4
	memw
	s32i.n	a4, a3, 0
	.loc 1 151 0
	call8	esp_efuse_burn_new_values
.LVL54:
.L10:
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 228 0
	addi	a10, sp, 16
	call8	esp_image_verify_bootloader
.LVL55:
	bnez.n	a10, .L17
	.loc 1 230 0
	l32i.n	a11, sp, 16
	l32r	a10, .LC51
	call8	esp_flash_encrypt_region
.LVL56:
	mov.n	a3, a10
.LVL57:
	.loc 1 231 0
	beqz.n	a10, .L39
	.loc 1 232 0
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC10
	l32r	a12, .LC53
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
.LBE20:
.LBE19:
	j	.L36
.LVL60:
.L17:
.LBB22:
.LBB21:
	.loc 1 250 0
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC10
	l32r	a12, .LC55
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL62:
.L39:
.LBE21:
.LBE22:
.LBB23:
.LBB24:
	.loc 1 260 0
	l32r	a4, .LC57
	l32r	a12, .LC56
	movi.n	a13, 0
	addi	a11, sp, 16
.LVL63:
	mov.n	a10, a4
	call8	bootloader_flash_read
.LVL64:
	mov.n	a3, a10
.LVL65:
	.loc 1 261 0
	beqz.n	a10, .L19
	.loc 1 262 0
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC10
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC59
	movi.n	a10, 1
	j	.L45
.L19:
	.loc 1 265 0
	addi	a5, sp, 16
.LVL67:
	addmi	a7, a5, 0xd00
	mov.n	a11, a10
	mov.n	a12, a7
	mov.n	a10, a5
	call8	esp_partition_table_verify
.LVL68:
	mov.n	a3, a10
.LVL69:
	bnez.n	a10, .L21
.LBB25:
	.loc 1 267 0
	l32r	a11, .LC51
	mov.n	a10, a4
	call8	esp_flash_encrypt_region
.LVL70:
	mov.n	a5, a10
.LVL71:
	addi	a4, sp, 16
.LVL72:
	.loc 1 269 0
	mov.n	a6, a3
	beqz.n	a10, .L43
	.loc 1 270 0
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC10
	l32r	a12, .LC61
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	mov.n	a3, a5
	j	.L36
.LVL75:
.L21:
.LBE25:
	.loc 1 275 0
	call8	esp_log_timestamp
.LVL76:
	l32r	a11, .LC10
	l32r	a12, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
.LVL77:
.L44:
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	.loc 1 276 0
	movi	a3, 0x103
	j	.L36
.LVL79:
.L29:
.LBE24:
.LBE23:
.LBB26:
.LBB27:
.LBB28:
	.loc 1 289 0
	l8ui	a5, a4, 2
	bnez.n	a5, .L23
.LBB29:
	.loc 1 292 0
	addi	a8, sp, 16
.LVL80:
	addmi	a12, a8, 0xc00
	addi.n	a11, a4, 4
	mov.n	a10, a5
	call8	esp_image_verify
.LVL81:
	.loc 1 295 0
	movi.n	a8, 1
	movnez	a8, a5, a10
	mov.n	a10, a8
.LVL82:
	j	.L24
.LVL83:
.L23:
.LBE29:
	.loc 1 296 0
	addi	a8, sp, 16
.LVL84:
	slli	a5, a6, 5
	add.n	a5, a8, a5
	l32i.n	a8, a5, 0
.LVL85:
	l32r	a5, .LC64
	and	a5, a8, a5
	l32r	a8, .LC65
	bne	a5, a8, .L25
.LVL86:
.L28:
	.loc 1 307 0
	call8	esp_log_timestamp
.LVL87:
	l32i.n	a8, a4, 4
	l32r	a5, .LC10
	l32r	a12, .LC67
	mov.n	a13, a10
	mov.n	a11, a5
	movi.n	a10, 3
	s32i.n	a8, sp, 0
	mov.n	a15, a6
	mov.n	a14, a5
	call8	esp_log_write
.LVL88:
	.loc 1 309 0
	l32i.n	a11, a4, 8
	l32i.n	a10, a4, 4
	call8	esp_flash_encrypt_region
.LVL89:
	.loc 1 310 0
	beqz.n	a10, .L27
	j	.L26
.LVL90:
.L25:
	.loc 1 287 0
	l32i.n	a10, a4, 28
	extui	a10, a10, 0, 1
.LVL91:
.L24:
	.loc 1 302 0
	beqz.n	a10, .L27
	j	.L28
.LVL92:
.L26:
	.loc 1 311 0
	l32r	a2, .LC75
.LVL93:
	add.n	a2, a2, sp
	s32i.n	a10, a2, 0
	call8	esp_log_timestamp
.LVL94:
	l32r	a12, .LC69
	mov.n	a14, a5
	mov.n	a13, a10
	mov.n	a11, a5
	mov.n	a15, a6
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	.loc 1 309 0
	l32r	a5, .LC75
	add.n	a5, a5, sp
	l32i.n	a8, a5, 0
	mov.n	a3, a8
	j	.L36
.LVL96:
.L43:
.LBE28:
.LBE27:
	.loc 1 193 0 discriminator 1
	l32i.n	a5, a7, 0
	blt	a6, a5, .L29
.LBE26:
	.loc 1 203 0
	movi.n	a4, -1
	xor	a4, a4, a2
	extui	a4, a4, 0, 7
	neg	a8, a4
	and	a8, a8, a4
	nsau	a8, a8
	neg	a8, a8
.LVL97:
	.loc 1 207 0
	movi.n	a9, 1
	l32r	a4, .LC30
	addi	a8, a8, 31
.LVL98:
	ssl	a8
	sll	a8, a9
.LVL99:
	memw
	l32i.n	a5, a4, 0
	add.n	a8, a8, a2
	l32r	a2, .LC70
.LVL100:
	extui	a8, a8, 0, 7
	and	a2, a5, a2
	slli	a8, a8, 20
	or	a8, a8, a2
	memw
	s32i.n	a8, a4, 0
	.loc 1 213 0
	call8	esp_log_timestamp
.LVL101:
	l32r	a2, .LC10
	l32r	a12, .LC72
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 2
	call8	esp_log_write
.LVL102:
	.loc 1 216 0
	call8	esp_efuse_burn_new_values
.LVL103:
	.loc 1 218 0
	call8	esp_log_timestamp
.LVL104:
	l32r	a12, .LC74
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
.LVL105:
.L45:
	call8	esp_log_write
.LVL106:
	.loc 1 220 0
	j	.L36
.LVL107:
.L27:
.LBB30:
	.loc 1 193 0
	addi.n	a6, a6, 1
.LVL108:
	addi	a4, a4, 32
	j	.L43
.LVL109:
.L36:
.LBE30:
	.loc 1 221 0
	mov.n	a2, a3
	retw.n
.LFE14:
	.size	encrypt_flash_contents, .-encrypt_flash_contents
	.global	__paritysi2
	.global	__popcountsi2
	.section	.rodata.str1.1
.LC79:
	.string	"\033[0;32mI (%d) %s: flash encryption is enabled (%d plaintext flashes left)\033[0m\n"
	.section	.text.esp_flash_encrypt_check_and_update,"ax",@progbits
	.literal_position
	.literal .LC76, 1073061888
	.literal .LC78, .LC0
	.literal .LC80, .LC79
	.align	4
	.global	esp_flash_encrypt_check_and_update
	.type	esp_flash_encrypt_check_and_update, @function
esp_flash_encrypt_check_and_update:
.LFB12:
	.loc 1 41 0
	entry	sp, 32
.LCFI2:
	.loc 1 42 0
	l32r	a2, .LC76
	memw
	l32i.n	a11, a2, 0
.LVL110:
	.loc 1 45 0
	movi.n	a2, 4
	.loc 1 44 0
	extui	a3, a11, 20, 7
.LVL111:
	.loc 1 48 0
	mov.n	a10, a3
	.loc 1 45 0
	and	a2, a11, a2
.LVL112:
	.loc 1 48 0
	call8	__paritysi2
.LVL113:
	bnei	a10, 1, .L47
.LBB31:
	.loc 1 50 0
	mov.n	a10, a3
	.loc 1 52 0
	movi.n	a3, 0
.LVL114:
	.loc 1 50 0
	call8	__popcountsi2
.LVL115:
	.loc 1 51 0
	bne	a2, a3, .L48
	.loc 1 50 0
	movi.n	a2, 7
.LVL116:
	sub	a3, a2, a10
.LVL117:
	srai	a3, a3, 1
.LVL118:
.L48:
	.loc 1 54 0 discriminator 9
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC78
	l32r	a12, .LC80
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL120:
	.loc 1 55 0 discriminator 9
	movi.n	a2, 0
	retw.n
.LVL121:
.L47:
.LBE31:
	.loc 1 59 0
	movi.n	a8, 0
	movi.n	a11, 1
	moveqz	a11, a8, a2
	mov.n	a10, a3
	call8	encrypt_flash_contents
.LVL122:
	mov.n	a2, a10
.LVL123:
	.loc 1 61 0
	retw.n
.LFE12:
	.size	esp_flash_encrypt_check_and_update, .-esp_flash_encrypt_check_and_update
	.section	.text.esp_flash_write_protect_crypt_cnt,"ax",@progbits
	.literal_position
	.literal .LC81, 1073061888
	.literal .LC82, 1073061916
	.align	4
	.global	esp_flash_write_protect_crypt_cnt
	.type	esp_flash_write_protect_crypt_cnt, @function
esp_flash_write_protect_crypt_cnt:
.LFB19:
	.loc 1 352 0
	entry	sp, 32
.LCFI3:
	.loc 1 353 0
	l32r	a8, .LC81
	memw
	l32i.n	a9, a8, 0
.LVL124:
	.loc 1 355 0
	movi.n	a8, 4
	bany	a9, a8, .L51
	.loc 1 356 0
	l32r	a9, .LC82
.LVL125:
	memw
	s32i.n	a8, a9, 0
	.loc 1 357 0
	call8	esp_efuse_burn_new_values
.LVL126:
.L51:
	retw.n
.LFE19:
	.size	esp_flash_write_protect_crypt_cnt, .-esp_flash_write_protect_crypt_cnt
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x1020
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0xd50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/include/esp_efuse.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe0c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0x60
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x2f
	.4byte	0x11a
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x30
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.4byte	0xf9
	.uleb128 0x7
	.byte	0x20
	.byte	0x6
	.byte	0x37
	.4byte	0x176
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x38
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x39
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3a
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x6
	.byte	0x3b
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3c
	.4byte	0x176
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3d
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x186
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3e
	.4byte	0x125
	.uleb128 0xc
	.byte	0x2
	.4byte	0x3e
	.byte	0x7
	.byte	0x3e
	.4byte	0x1ab
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x41
	.4byte	0x191
	.uleb128 0x7
	.byte	0x18
	.byte	0x7
	.byte	0x48
	.4byte	0x255
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x49
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4a
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4c
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x4e
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x50
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0x51
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0x54
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x7
	.byte	0x56
	.4byte	0x255
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0x57
	.4byte	0x1ab
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x7
	.byte	0x58
	.4byte	0xbb
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x7
	.byte	0x59
	.4byte	0x265
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0x5d
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x265
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x275
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x5e
	.4byte	0x1b6
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x65
	.4byte	0x2a1
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x7
	.byte	0x66
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x7
	.byte	0x67
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x7
	.byte	0x68
	.4byte	0x280
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x2bc
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.2byte	0x100
	.byte	0x7
	.byte	0x80
	.4byte	0x30e
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x7
	.byte	0x81
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x7
	.byte	0x82
	.4byte	0x275
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0x83
	.4byte	0x30e
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x7
	.byte	0x84
	.4byte	0x31e
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x7
	.byte	0x85
	.4byte	0xdc
	.byte	0xdc
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x7
	.byte	0x86
	.4byte	0x2ac
	.byte	0xe0
	.byte	0
	.uleb128 0xa
	.4byte	0x2a1
	.4byte	0x31e
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x32e
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0x87
	.4byte	0x2bc
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x8a
	.4byte	0x352
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x383
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x13e
	.4byte	0xe7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f1
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x13e
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x13e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.2byte	0x140
	.4byte	0xe7
	.4byte	.LLST1
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.2byte	0x141
	.4byte	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x15a
	.4byte	.L5
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.4byte	0x47a
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x148
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x14a
	.4byte	0xdc
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0xd94
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0xd9f
	.4byte	0x440
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0xdaa
	.4byte	0x456
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0xdb5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xdcb
	.4byte	0x4b7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x502
	.uleb128 0x1e
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3f
	.4byte	0xe7
	.byte	0x1
	.4byte	0x54a
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0x41
	.4byte	0xdc
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4a
	.4byte	0xdc
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4b
	.4byte	0xf2
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4c
	.4byte	0xf2
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0x75
	.4byte	0xdc
	.byte	0
	.uleb128 0x21
	.4byte	.LASF105
	.byte	0x1
	.byte	0xdf
	.4byte	0xe7
	.byte	0x1
	.4byte	0x571
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xe1
	.4byte	0xe7
	.uleb128 0x20
	.4byte	.LASF72
	.byte	0x1
	.byte	0xe2
	.4byte	0xdc
	.byte	0
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x100
	.4byte	0xe7
	.byte	0x1
	.4byte	0x5b5
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x100
	.4byte	0x5b5
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x100
	.4byte	0x5bb
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x102
	.4byte	0xe7
	.uleb128 0x26
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xe7
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x186
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x11c
	.4byte	0xe7
	.byte	0x1
	.4byte	0x611
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x11c
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x11c
	.4byte	0x611
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x11e
	.4byte	0xe7
	.uleb128 0x27
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x11f
	.4byte	0xf2
	.uleb128 0x26
	.uleb128 0x27
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x123
	.4byte	0x32e
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x617
	.uleb128 0x6
	.4byte	0x186
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.byte	0x9e
	.4byte	0xe7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc78
	.uleb128 0x29
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.4byte	0xdc
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9e
	.4byte	0xf2
	.4byte	.LLST4
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe7
	.uleb128 0x2a
	.4byte	.LASF75
	.byte	0x1
	.byte	0xa1
	.4byte	0xc78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.4byte	.LASF84
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	.LASF85
	.byte	0x1
	.byte	0xcd
	.4byte	0xdc
	.4byte	.LLST6
	.uleb128 0x2c
	.4byte	0x502
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0xad
	.4byte	0x918
	.uleb128 0x2d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2e
	.4byte	0x512
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	0x51d
	.4byte	.LLST8
	.uleb128 0x2e
	.4byte	0x528
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	0x533
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	0x53e
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0xdcb
	.4byte	0x719
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0xdcb
	.4byte	0x74a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0xdd6
	.4byte	0x761
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff5a098
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0xde2
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0xdcb
	.4byte	0x79b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0xde2
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0xdc0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL40
	.4byte	0xdcb
	.4byte	0x7de
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0xdcb
	.4byte	0x80f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL43
	.4byte	0xde2
	.uleb128 0x1a
	.4byte	.LVL44
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0xdcb
	.4byte	0x849
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0xdcb
	.4byte	0x87a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0xdcb
	.4byte	0x8ab
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL50
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0xdcb
	.4byte	0x8dc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL52
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0xdcb
	.4byte	0x90d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL54
	.4byte	0xde2
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x54a
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xb3
	.4byte	0x9de
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x2e
	.4byte	0x55a
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	0x565
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0xdee
	.4byte	0x957
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0x383
	.4byte	0x96c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL58
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0xdcb
	.4byte	0x9a9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL61
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL62
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x571
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0xb8
	.4byte	0xaea
	.uleb128 0x31
	.4byte	0x58e
	.4byte	.LLST13
	.uleb128 0x31
	.4byte	0x582
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x2e
	.4byte	0x59a
	.4byte	.LLST15
	.uleb128 0x32
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xa80
	.uleb128 0x2e
	.4byte	0x5a7
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0x383
	.4byte	0xa46
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL73
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL74
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0xd9f
	.4byte	0xaa7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0xdf9
	.4byte	0xad0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xbe6
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x34
	.4byte	0x5c1
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xc2
	.uleb128 0x31
	.4byte	0x5de
	.4byte	.LLST18
	.uleb128 0x31
	.4byte	0x5d2
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2e
	.4byte	0x5ea
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	0x5f6
	.4byte	.LLST21
	.uleb128 0x32
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xb70
	.uleb128 0x30
	.4byte	0x603
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0xe04
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x77
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL87
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL88
	.4byte	0xdcb
	.4byte	0xba7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0x383
	.uleb128 0x1a
	.4byte	.LVL94
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL95
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0xdcb
	.4byte	0xc2b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL101
	.4byte	0xdc0
	.uleb128 0x1b
	.4byte	.LVL102
	.4byte	0xdcb
	.4byte	0xc5c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0xde2
	.uleb128 0x1a
	.4byte	.LVL104
	.4byte	0xdc0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0xdcb
	.byte	0
	.uleb128 0xa
	.4byte	0x186
	.4byte	0xc88
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5f
	.byte	0
	.uleb128 0x35
	.4byte	.LASF87
	.byte	0x1
	.byte	0x28
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3d
	.uleb128 0x2b
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2c
	.4byte	0xdc
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2d
	.4byte	0xf2
	.4byte	.LLST24
	.uleb128 0x32
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xd24
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LVL119
	.4byte	0xdc0
	.uleb128 0x1d
	.4byte	.LVL120
	.4byte	0xdcb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL122
	.4byte	0x61c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x15f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7d
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x161
	.4byte	0xdc
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x162
	.4byte	0xf2
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LVL126
	.4byte	0xde2
	.byte	0
	.uleb128 0x37
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0xd8f
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x38
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0x8c
	.uleb128 0x38
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x52
	.uleb128 0x38
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xa
	.byte	0x6d
	.uleb128 0x38
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xa
	.byte	0x64
	.uleb128 0x38
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x6b
	.uleb128 0x39
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x140
	.uleb128 0x39
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x10b
	.uleb128 0x38
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0xed
	.uleb128 0x38
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xc
	.byte	0x26
	.uleb128 0x38
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x7
	.byte	0xc9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x29
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x39
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x78
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x31
	.byte	0x8
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x33
	.byte	0x8
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x8
	.byte	0x31
	.byte	0x78
	.sleb128 31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x8
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x35
	.byte	0x31
	.byte	0x4f
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x38
	.byte	0x31
	.byte	0x4f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xa
	.2byte	0x180
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xa
	.2byte	0x380
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c0
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL62
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL81-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL105
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL79
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL79
	.4byte	.LVL96
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd40
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd40
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0xc
	.byte	0x76
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd24
	.byte	0x1c
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd24
	.byte	0x1c
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd24
	.byte	0x1c
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL110
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x7
	.byte	0x37
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"start_addr"
.LASF40:
	.string	"spi_pin_drv"
.LASF87:
	.string	"esp_flash_encrypt_check_and_update"
.LASF91:
	.string	"bootloader_flash_read"
.LASF72:
	.string	"image_length"
.LASF54:
	.string	"image_digest"
.LASF76:
	.string	"num_partitions"
.LASF66:
	.string	"sec_start"
.LASF98:
	.string	"esp_image_verify_bootloader"
.LASF34:
	.string	"segment_count"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF28:
	.string	"label"
.LASF104:
	.string	"flash_failed"
.LASF65:
	.string	"data_length"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF37:
	.string	"spi_size"
.LASF52:
	.string	"segment_data"
.LASF35:
	.string	"spi_mode"
.LASF78:
	.string	"index"
.LASF97:
	.string	"esp_efuse_burn_new_values"
.LASF55:
	.string	"esp_image_metadata_t"
.LASF86:
	.string	"esp_flash_encrypt_region"
.LASF84:
	.string	"ffs_inv"
.LASF102:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/flash_encrypt.c"
.LASF48:
	.string	"esp_image_segment_header_t"
.LASF30:
	.string	"esp_partition_info_t"
.LASF63:
	.string	"ESP_LOG_VERBOSE"
.LASF42:
	.string	"min_chip_rev"
.LASF10:
	.string	"long long int"
.LASF79:
	.string	"partition"
.LASF88:
	.string	"efuse_blk0"
.LASF12:
	.string	"long int"
.LASF80:
	.string	"should_encrypt"
.LASF22:
	.string	"offset"
.LASF61:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"int32_t"
.LASF64:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF39:
	.string	"wp_pin"
.LASF47:
	.string	"data_len"
.LASF24:
	.string	"esp_partition_pos_t"
.LASF74:
	.string	"encrypt_and_load_partition_table"
.LASF32:
	.string	"ESP_CHIP_ID_INVALID"
.LASF100:
	.string	"esp_image_verify"
.LASF5:
	.string	"unsigned char"
.LASF44:
	.string	"hash_appended"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF71:
	.string	"new_wdata6"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"spi_speed"
.LASF57:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF56:
	.string	"ESP_IMAGE_VERIFY"
.LASF95:
	.string	"esp_log_write"
.LASF69:
	.string	"efuse_key_read_protected"
.LASF46:
	.string	"load_addr"
.LASF33:
	.string	"esp_chip_id_t"
.LASF15:
	.string	"char"
.LASF31:
	.string	"ESP_CHIP_ID_ESP32"
.LASF26:
	.string	"type"
.LASF89:
	.string	"left"
.LASF58:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF68:
	.string	"dis_reg"
.LASF21:
	.string	"_Bool"
.LASF75:
	.string	"partition_table"
.LASF105:
	.string	"encrypt_bootloader"
.LASF60:
	.string	"ESP_LOG_WARN"
.LASF53:
	.string	"image_len"
.LASF93:
	.string	"bootloader_flash_write"
.LASF73:
	.string	"initialise_flash_encryption"
.LASF106:
	.string	"encrypt_flash_contents"
.LASF92:
	.string	"bootloader_flash_erase_sector"
.LASF103:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF99:
	.string	"esp_partition_table_verify"
.LASF82:
	.string	"flash_crypt_cnt"
.LASF50:
	.string	"image"
.LASF43:
	.string	"reserved"
.LASF41:
	.string	"chip_id"
.LASF23:
	.string	"size"
.LASF83:
	.string	"flash_crypt_wr_dis"
.LASF107:
	.string	"esp_flash_write_protect_crypt_cnt"
.LASF8:
	.string	"__int32_t"
.LASF81:
	.string	"data_ignored"
.LASF27:
	.string	"subtype"
.LASF16:
	.string	"uint8_t"
.LASF94:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"ESP_LOG_DEBUG"
.LASF51:
	.string	"segments"
.LASF77:
	.string	"encrypt_partition"
.LASF85:
	.string	"new_flash_crypt_cnt"
.LASF25:
	.string	"magic"
.LASF96:
	.string	"esp_efuse_write_random_key"
.LASF90:
	.string	"rtc_wdt_feed"
.LASF101:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"efuse_key_write_protected"
.LASF67:
	.string	"coding_scheme"
.LASF59:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"esp_err_t"
.LASF45:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
