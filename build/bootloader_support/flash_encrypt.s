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
	.loc 1 311 0
.LVL0:
	entry	sp, 4128
.LCFI0:
	.loc 1 315 0
	extui	a5, a2, 0, 12
	bnez.n	a5, .L2
.LBB2:
.LBB3:
	.loc 1 323 0 discriminator 1
	l32r	a7, .LC4
	j	.L3
.L2:
.LBE3:
.LBE2:
	.loc 1 316 0 discriminator 2
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
	.loc 1 317 0 discriminator 2
	movi.n	a2, -1
.LVL3:
	retw.n
.LVL4:
.L6:
.LBB5:
.LBB4:
	.loc 1 321 0
	call8	rtc_wdt_feed
.LVL5:
	add.n	a6, a5, a2
.LVL6:
	.loc 1 323 0
	movi.n	a13, 0
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL7:
	mov.n	a4, a10
.LVL8:
	.loc 1 324 0
	bnez.n	a10, .L5
	.loc 1 327 0
	srli	a10, a6, 12
	call8	bootloader_flash_erase_sector
.LVL9:
	mov.n	a4, a10
.LVL10:
	.loc 1 328 0
	bnez.n	a10, .L5
	.loc 1 331 0
	movi.n	a13, 1
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_write
.LVL11:
	mov.n	a4, a10
.LVL12:
	.loc 1 332 0
	bnez.n	a10, .L5
.LBE4:
	.loc 1 320 0 discriminator 2
	addmi	a5, a5, 0x1000
.LVL13:
.L3:
	.loc 1 320 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L6
.LBE5:
	.loc 1 336 0 is_stmt 1
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L5:
	.loc 1 339 0 discriminator 2
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
	.loc 1 340 0 discriminator 2
	mov.n	a2, a4
.LVL18:
	.loc 1 341 0 discriminator 2
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
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader IV & digest in place: 0x%x\033[0m\n"
.LC56:
	.string	"\033[0;33mW (%d) %s: no valid bootloader was found\033[0m\n"
.LC60:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data\033[0m\n"
.LC62:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition table in place. %x\033[0m\n"
.LC64:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data - not plaintext?\033[0m\n"
.LC68:
	.string	"\033[0;32mI (%d) %s: Encrypting partition %d at offset 0x%x...\033[0m\n"
.LC70:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition %d\033[0m\n"
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
	.literal .LC57, .LC56
	.literal .LC58, 3072
	.literal .LC59, 32768
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.literal .LC66, -67174400
	.literal .LC67, 65536
	.literal .LC69, .LC68
	.literal .LC71, .LC70
	.literal .LC72, -267386881
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
	movi	a4, -0xff
	add.n	a4, a2, a4
	movi.n	a5, 1
	beqz.n	a4, .L34
	beqz.n	a3, .L8
.L34:
	.loc 1 167 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC10
	l32r	a12, .LC12
	s32i.n	a3, sp, 0
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 168 0 discriminator 2
	movi.n	a3, -1
.LVL22:
	j	.L41
.LVL23:
.L8:
	.loc 1 171 0
	bnez.n	a2, .L11
.LBB19:
.LBB20:
	.loc 1 65 0
	l32r	a3, .LC13
.LVL24:
	memw
	l32i.n	a4, a3, 0
	l32r	a3, .LC10
	extui	a4, a4, 0, 2
.LVL25:
	.loc 1 66 0
	bltui	a4, 2, .L12
	.loc 1 67 0
	call8	esp_log_timestamp
.LVL26:
	l32r	a12, .LC15
	mov.n	a14, a3
	mov.n	a13, a10
	mov.n	a11, a3
	mov.n	a15, a4
	mov.n	a10, a5
	call8	esp_log_write
.LVL27:
	.loc 1 68 0
	movi	a3, 0x106
	j	.L41
.L12:
	.loc 1 74 0
	l32r	a4, .LC16
.LVL28:
	memw
	l32i.n	a10, a4, 0
.LVL29:
	.loc 1 77 0
	extui	a4, a10, 16, 1
	xor	a4, a4, a5
	.loc 1 78 0
	extui	a10, a10, 7, 1
.LVL30:
	xor	a10, a10, a5
	.loc 1 77 0
	beqz.n	a4, .L36
	beqz.n	a10, .L14
	.loc 1 79 0
	l32r	a5, .LC17
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 80 0
	l32r	a5, .LC18
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 81 0
	l32r	a5, .LC19
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 82 0
	l32r	a5, .LC20
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 83 0
	l32r	a5, .LC21
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 84 0
	l32r	a5, .LC22
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 85 0
	l32r	a5, .LC23
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
	.loc 1 86 0
	l32r	a5, .LC24
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L14
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
	j	.L15
.L14:
	.loc 1 96 0
	bnez.n	a4, .L35
.L36:
	beqz.n	a10, .L16
.L35:
	.loc 1 97 0
	call8	esp_log_timestamp
.LVL38:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC33
	mov.n	a11, a3
	j	.L51
.L16:
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
.L15:
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
.L11:
.LBE20:
.LBE19:
.LBB21:
.LBB22:
	.loc 1 220 0
	addi	a10, sp, 16
	call8	esp_image_verify_bootloader
.LVL55:
	mov.n	a3, a10
	bnez.n	a10, .L18
	.loc 1 222 0
	l32r	a5, .LC51
	l32i.n	a11, sp, 16
	mov.n	a10, a5
	call8	esp_flash_encrypt_region
.LVL56:
	mov.n	a4, a10
.LVL57:
	.loc 1 223 0
	beqz.n	a10, .L19
	.loc 1 224 0
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC10
	l32r	a12, .LC53
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
	mov.n	a3, a4
	j	.L20
.L19:
.LBB23:
.LBB24:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.loc 2 46 0
	l32r	a4, .LC13
.LVL60:
	memw
	l32i.n	a4, a4, 0
.LBE24:
.LBE23:
	.loc 1 228 0
	bbci	a4, 4, .L40
	.loc 1 233 0
	mov.n	a10, a3
.LVL61:
	mov.n	a11, a5
	call8	esp_flash_encrypt_region
.LVL62:
	mov.n	a3, a10
.LVL63:
	.loc 1 235 0
	beqz.n	a10, .L40
	.loc 1 236 0
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC10
	l32r	a12, .LC55
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL65:
	j	.L20
.LVL66:
.L18:
	.loc 1 242 0
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC10
	l32r	a12, .LC57
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL68:
	j	.L40
.LVL69:
.L20:
.LBE22:
.LBE21:
	.loc 1 180 0
	bnez.n	a3, .L41
.LVL70:
.L40:
.LBB25:
.LBB26:
	.loc 1 252 0
	l32r	a4, .LC59
	l32r	a12, .LC58
	movi.n	a13, 0
	addi	a11, sp, 16
.LVL71:
	mov.n	a10, a4
	call8	bootloader_flash_read
.LVL72:
	mov.n	a3, a10
.LVL73:
	.loc 1 253 0
	beqz.n	a10, .L21
	.loc 1 254 0
	call8	esp_log_timestamp
.LVL74:
	l32r	a11, .LC10
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC61
	movi.n	a10, 1
	j	.L52
.L21:
	.loc 1 257 0
	addi	a5, sp, 16
.LVL75:
	addmi	a7, a5, 0xd00
	mov.n	a11, a10
	mov.n	a12, a7
	mov.n	a10, a5
	call8	esp_partition_table_verify
.LVL76:
	mov.n	a3, a10
.LVL77:
	bnez.n	a10, .L23
.LBB27:
	.loc 1 259 0
	l32r	a11, .LC51
	mov.n	a10, a4
	call8	esp_flash_encrypt_region
.LVL78:
	mov.n	a5, a10
.LVL79:
	addi	a4, sp, 16
.LVL80:
	.loc 1 261 0
	mov.n	a6, a3
	beqz.n	a10, .L50
	.loc 1 262 0
	call8	esp_log_timestamp
.LVL81:
	l32r	a11, .LC10
	l32r	a12, .LC63
	mov.n	a13, a10
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL82:
	mov.n	a3, a5
	j	.L41
.LVL83:
.L23:
.LBE27:
	.loc 1 267 0
	call8	esp_log_timestamp
.LVL84:
	l32r	a11, .LC10
	l32r	a12, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
.LVL85:
.L51:
	movi.n	a10, 1
	call8	esp_log_write
.LVL86:
	.loc 1 268 0
	movi	a3, 0x103
	j	.L41
.LVL87:
.L31:
.LBE26:
.LBE25:
.LBB28:
.LBB29:
.LBB30:
	.loc 1 281 0
	l8ui	a5, a4, 2
	bnez.n	a5, .L25
.LBB31:
	.loc 1 284 0
	addi	a8, sp, 16
.LVL88:
	addmi	a12, a8, 0xc00
	addi.n	a11, a4, 4
	mov.n	a10, a5
	call8	esp_image_verify
.LVL89:
	.loc 1 287 0
	movi.n	a8, 1
	movnez	a8, a5, a10
	mov.n	a10, a8
.LVL90:
	j	.L26
.LVL91:
.L25:
.LBE31:
	.loc 1 288 0
	addi	a8, sp, 16
.LVL92:
	slli	a5, a6, 5
	add.n	a5, a8, a5
	l32i.n	a8, a5, 0
.LVL93:
	l32r	a5, .LC66
	and	a5, a8, a5
	l32r	a8, .LC67
	bne	a5, a8, .L27
.LVL94:
.L30:
	.loc 1 299 0
	call8	esp_log_timestamp
.LVL95:
	l32i.n	a8, a4, 4
	l32r	a5, .LC10
	l32r	a12, .LC69
	mov.n	a13, a10
	mov.n	a11, a5
	movi.n	a10, 3
	s32i.n	a8, sp, 0
	mov.n	a15, a6
	mov.n	a14, a5
	call8	esp_log_write
.LVL96:
	.loc 1 301 0
	l32i.n	a11, a4, 8
	l32i.n	a10, a4, 4
	call8	esp_flash_encrypt_region
.LVL97:
	.loc 1 302 0
	beqz.n	a10, .L29
	j	.L28
.LVL98:
.L27:
	.loc 1 279 0
	l32i.n	a10, a4, 28
	extui	a10, a10, 0, 1
.LVL99:
.L26:
	.loc 1 294 0
	beqz.n	a10, .L29
	j	.L30
.LVL100:
.L28:
	.loc 1 303 0
	l32r	a2, .LC75
.LVL101:
	add.n	a2, a2, sp
	s32i.n	a10, a2, 0
	call8	esp_log_timestamp
.LVL102:
	l32r	a12, .LC71
	mov.n	a14, a5
	mov.n	a13, a10
	mov.n	a11, a5
	mov.n	a15, a6
	movi.n	a10, 1
	call8	esp_log_write
.LVL103:
	.loc 1 301 0
	l32r	a5, .LC75
	add.n	a5, a5, sp
	l32i.n	a8, a5, 0
	mov.n	a3, a8
	j	.L41
.LVL104:
.L50:
.LBE30:
.LBE29:
	.loc 1 193 0 discriminator 1
	l32i.n	a5, a7, 0
	blt	a6, a5, .L31
.LBE28:
	.loc 1 203 0
	movi.n	a4, -1
	xor	a4, a4, a2
	extui	a4, a4, 0, 8
	neg	a8, a4
	and	a8, a8, a4
	nsau	a8, a8
	neg	a8, a8
.LVL105:
	.loc 1 207 0
	l32r	a4, .LC30
	movi.n	a9, 1
	addi	a8, a8, 31
.LVL106:
	ssl	a8
	sll	a8, a9
.LVL107:
	memw
	l32i.n	a5, a4, 0
	add.n	a8, a8, a2
	l32r	a2, .LC72
.LVL108:
	extui	a8, a8, 0, 8
	slli	a8, a8, 20
	and	a2, a5, a2
	or	a8, a8, a2
	memw
	s32i.n	a8, a4, 0
	.loc 1 208 0
	call8	esp_efuse_burn_new_values
.LVL109:
	.loc 1 210 0
	call8	esp_log_timestamp
.LVL110:
	l32r	a11, .LC10
	l32r	a12, .LC74
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
.LVL111:
.L52:
	call8	esp_log_write
.LVL112:
	.loc 1 212 0
	j	.L41
.LVL113:
.L29:
.LBB32:
	.loc 1 193 0
	addi.n	a6, a6, 1
.LVL114:
	addi	a4, a4, 32
	j	.L50
.LVL115:
.L41:
.LBE32:
	.loc 1 213 0
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
	l32i.n	a3, a2, 0
.LVL116:
	.loc 1 45 0
	movi.n	a2, 4
	.loc 1 44 0
	extui	a4, a3, 20, 8
.LVL117:
	.loc 1 48 0
	mov.n	a10, a4
	.loc 1 45 0
	and	a3, a3, a2
.LVL118:
	.loc 1 48 0
	call8	__paritysi2
.LVL119:
	bnei	a10, 1, .L54
.LBB33:
	.loc 1 50 0
	mov.n	a10, a4
	.loc 1 52 0
	movi.n	a2, 0
	.loc 1 50 0
	call8	__popcountsi2
.LVL120:
	.loc 1 51 0
	bne	a3, a2, .L55
	.loc 1 50 0
	movi.n	a2, 7
	sub	a10, a2, a10
.LVL121:
	extui	a2, a10, 31, 1
	add.n	a10, a2, a10
.LVL122:
	srai	a2, a10, 1
.L55:
.LVL123:
	.loc 1 54 0 discriminator 9
	call8	esp_log_timestamp
.LVL124:
	l32r	a11, .LC78
	l32r	a12, .LC80
	mov.n	a15, a2
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL125:
	.loc 1 55 0 discriminator 9
	movi.n	a2, 0
.LVL126:
	retw.n
.L54:
.LBE33:
	.loc 1 59 0
	movi.n	a2, 0
	movi.n	a11, 1
	moveqz	a11, a2, a3
	mov.n	a10, a4
	call8	encrypt_flash_contents
.LVL127:
	mov.n	a2, a10
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
	.loc 1 344 0
	entry	sp, 32
.LCFI3:
	.loc 1 345 0
	l32r	a8, .LC81
	memw
	l32i.n	a9, a8, 0
.LVL128:
	.loc 1 347 0
	movi.n	a8, 4
	bany	a9, a8, .L58
	.loc 1 348 0
	l32r	a9, .LC82
.LVL129:
	memw
	s32i.n	a8, a9, 0
	.loc 1 349 0
	call8	esp_efuse_burn_new_values
.LVL130:
.L58:
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
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_efuse.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe16
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x7
	.byte	0x25
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0xf2
	.uleb128 0x7
	.byte	0x20
	.byte	0x7
	.byte	0x2c
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2e
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2f
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x30
	.4byte	0x113
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.4byte	0x16f
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x33
	.4byte	0x11e
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3c
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3d
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3f
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x41
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x43
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x44
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x47
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x8
	.byte	0x49
	.4byte	0x211
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4b
	.4byte	0x221
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4f
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x221
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x231
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x50
	.4byte	0x18a
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x25d
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x58
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x59
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x5a
	.4byte	0x23c
	.uleb128 0xd
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x2ba
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x8
	.byte	0x60
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x61
	.4byte	0x231
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x62
	.4byte	0x2ba
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x63
	.4byte	0x2ca
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x64
	.4byte	0xdc
	.byte	0xdc
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x65
	.4byte	0x2da
	.byte	0xe0
	.byte	0
	.uleb128 0xa
	.4byte	0x25d
	.4byte	0x2ca
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x2da
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x66
	.4byte	0x268
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x69
	.4byte	0x30e
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x33f
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x136
	.4byte	0xe7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ad
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x136
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x136
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.2byte	0x138
	.4byte	0xe7
	.4byte	.LLST1
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.2byte	0x139
	.4byte	0x4ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x152
	.4byte	.L5
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x436
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.2byte	0x140
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x142
	.4byte	0xdc
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0xda0
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0xdab
	.4byte	0x3fc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0xdb6
	.4byte	0x412
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0xdc1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0xdd7
	.4byte	0x473
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL17
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x4be
	.uleb128 0x1d
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3f
	.4byte	0xe7
	.byte	0x1
	.4byte	0x506
	.uleb128 0x1f
	.4byte	.LASF61
	.byte	0x1
	.byte	0x41
	.4byte	0xdc
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4a
	.4byte	0xdc
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4b
	.4byte	0x506
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4c
	.4byte	0x506
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.byte	0x75
	.4byte	0xdc
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF66
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd7
	.4byte	0xe7
	.byte	0x1
	.4byte	0x534
	.uleb128 0x21
	.string	"err"
	.byte	0x1
	.byte	0xd9
	.4byte	0xe7
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.byte	0xda
	.4byte	0xdc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x2
	.byte	0x2d
	.4byte	0x506
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf8
	.4byte	0xe7
	.byte	0x1
	.4byte	0x580
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x1
	.byte	0xf8
	.4byte	0x580
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf8
	.4byte	0x586
	.uleb128 0x21
	.string	"err"
	.byte	0x1
	.byte	0xfa
	.4byte	0xe7
	.uleb128 0x24
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x103
	.4byte	0xe7
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x114
	.4byte	0xe7
	.byte	0x1
	.4byte	0x5dc
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.uleb128 0x27
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x114
	.4byte	0x5dc
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x116
	.4byte	0xe7
	.uleb128 0x28
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x117
	.4byte	0x506
	.uleb128 0x24
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2ea
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e2
	.uleb128 0x6
	.4byte	0x17f
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0x9e
	.4byte	0xe7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7c
	.uleb128 0x2a
	.4byte	.LASF77
	.byte	0x1
	.byte	0x9e
	.4byte	0xdc
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9e
	.4byte	0x506
	.4byte	.LLST4
	.uleb128 0x21
	.string	"err"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe7
	.uleb128 0x2b
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa1
	.4byte	0xc7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x2b
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.4byte	.LASF79
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0x1
	.byte	0xcd
	.4byte	0xdc
	.4byte	.LLST6
	.uleb128 0x2d
	.4byte	0x4be
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0xad
	.4byte	0x8e4
	.uleb128 0x2e
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2f
	.4byte	0x4ce
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	0x4d9
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	0x4e4
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	0x4ef
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	0x4fa
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0xdd7
	.4byte	0x6e5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL32
	.4byte	0xdd7
	.4byte	0x716
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0xde2
	.4byte	0x72d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff5a098
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0xded
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL36
	.4byte	0xdd7
	.4byte	0x767
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0xded
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0xdcc
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0xdd7
	.4byte	0x7aa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL42
	.4byte	0xdd7
	.4byte	0x7db
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0xded
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0xdd7
	.4byte	0x815
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL47
	.4byte	0xdd7
	.4byte	0x846
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL49
	.4byte	0xdd7
	.4byte	0x877
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0xdd7
	.4byte	0x8a8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0xdd7
	.4byte	0x8d9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0xded
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x50d
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0xb3
	.4byte	0xa13
	.uleb128 0x2e
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2f
	.4byte	0x51d
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	0x528
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x31
	.4byte	0x534
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0xe4
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0xdf8
	.4byte	0x936
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x33f
	.4byte	0x94a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0xdd7
	.4byte	0x987
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x33f
	.4byte	0x9a1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL65
	.4byte	0xdd7
	.4byte	0x9de
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL68
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x540
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0xb8
	.4byte	0xb1f
	.uleb128 0x32
	.4byte	0x55b
	.4byte	.LLST13
	.uleb128 0x32
	.4byte	0x550
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2f
	.4byte	0x566
	.4byte	.LLST15
	.uleb128 0x33
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xab5
	.uleb128 0x2f
	.4byte	0x572
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LVL78
	.4byte	0x33f
	.4byte	0xa7b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL82
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0xdab
	.4byte	0xadc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL74
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xe03
	.4byte	0xb05
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL86
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xc1b
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x35
	.4byte	0x58c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xc2
	.uleb128 0x32
	.4byte	0x5a9
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	0x59d
	.4byte	.LLST19
	.uleb128 0x2e
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2f
	.4byte	0x5b5
	.4byte	.LLST20
	.uleb128 0x2f
	.4byte	0x5c1
	.4byte	.LLST21
	.uleb128 0x33
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xba5
	.uleb128 0x30
	.4byte	0x5ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1c
	.4byte	.LVL89
	.4byte	0xe0e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x77
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0xdd7
	.4byte	0xbdc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL97
	.4byte	0x33f
	.uleb128 0x19
	.4byte	.LVL102
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL103
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0xdcc
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0xdd7
	.4byte	0xc60
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL109
	.4byte	0xded
	.uleb128 0x19
	.4byte	.LVL110
	.4byte	0xdcc
	.uleb128 0x19
	.4byte	.LVL112
	.4byte	0xdd7
	.byte	0
	.uleb128 0xa
	.4byte	0x17f
	.4byte	0xc8c
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5f
	.byte	0
	.uleb128 0x36
	.4byte	.LASF82
	.byte	0x1
	.byte	0x28
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd49
	.uleb128 0x2c
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2c
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x2d
	.4byte	0x506
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x33
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xd28
	.uleb128 0x2c
	.4byte	.LASF84
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LVL124
	.4byte	0xdcc
	.uleb128 0x1c
	.4byte	.LVL125
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL127
	.4byte	0x5e7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xc
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x157
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd89
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x159
	.4byte	0xdc
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x15a
	.4byte	0x506
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	.LVL130
	.4byte	0xded
	.byte	0
	.uleb128 0x38
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0xd9b
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x39
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xa
	.byte	0x8c
	.uleb128 0x39
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.byte	0x4b
	.uleb128 0x39
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xb
	.byte	0x66
	.uleb128 0x39
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5d
	.uleb128 0x39
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x9
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0x6b
	.uleb128 0x39
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5c
	.uleb128 0x39
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xc
	.byte	0x2b
	.uleb128 0x39
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0xcc
	.uleb128 0x39
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xd
	.byte	0x26
	.uleb128 0x39
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0xa8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.byte	0
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0xb
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
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
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
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
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
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x78
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
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
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
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
	.4byte	.LVL108
	.4byte	.LVL111
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
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
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
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x8
	.byte	0x31
	.byte	0x78
	.sleb128 31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x8
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
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
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
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
	.4byte	.LVL108
	.4byte	.LVL111
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
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
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
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x7a
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
	.byte	0x7a
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
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89-1
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL111
	.2byte	0x4
	.byte	0x77
	.sleb128 -3328
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x4
	.byte	0x91
	.sleb128 -3392
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL87
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL87
	.4byte	.LVL104
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
	.4byte	.LVL113
	.4byte	.LVL114
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
	.4byte	.LVL114
	.4byte	.LVL115
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
	.4byte	.LVL87
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL87
	.4byte	.LVL89-1
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
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL94
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
	.4byte	.LVL98
	.4byte	.LVL99
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
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x7
	.byte	0x37
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL128
	.4byte	.LVL129
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
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB32
	.4byte	.LBE32
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
.LASF43:
	.string	"start_addr"
.LASF36:
	.string	"spi_pin_drv"
.LASF82:
	.string	"esp_flash_encrypt_check_and_update"
.LASF86:
	.string	"bootloader_flash_read"
.LASF31:
	.string	"spi_mode"
.LASF48:
	.string	"image_digest"
.LASF71:
	.string	"num_partitions"
.LASF60:
	.string	"sec_start"
.LASF93:
	.string	"esp_image_verify_bootloader"
.LASF30:
	.string	"segment_count"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF27:
	.string	"label"
.LASF99:
	.string	"flash_failed"
.LASF59:
	.string	"data_length"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF33:
	.string	"spi_size"
.LASF46:
	.string	"segment_data"
.LASF73:
	.string	"index"
.LASF92:
	.string	"esp_efuse_burn_new_values"
.LASF49:
	.string	"esp_image_metadata_t"
.LASF81:
	.string	"esp_flash_encrypt_region"
.LASF79:
	.string	"ffs_inv"
.LASF97:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/flash_encrypt.c"
.LASF42:
	.string	"esp_image_segment_header_t"
.LASF29:
	.string	"esp_partition_info_t"
.LASF57:
	.string	"ESP_LOG_VERBOSE"
.LASF10:
	.string	"long long int"
.LASF74:
	.string	"partition"
.LASF83:
	.string	"efuse_blk0"
.LASF12:
	.string	"long int"
.LASF75:
	.string	"should_encrypt"
.LASF21:
	.string	"offset"
.LASF55:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"int32_t"
.LASF58:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF67:
	.string	"image_length"
.LASF41:
	.string	"data_len"
.LASF23:
	.string	"esp_partition_pos_t"
.LASF69:
	.string	"encrypt_and_load_partition_table"
.LASF95:
	.string	"esp_image_verify"
.LASF5:
	.string	"unsigned char"
.LASF38:
	.string	"hash_appended"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF65:
	.string	"new_wdata6"
.LASF14:
	.string	"long unsigned int"
.LASF32:
	.string	"spi_speed"
.LASF35:
	.string	"wp_pin"
.LASF51:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF50:
	.string	"ESP_IMAGE_VERIFY"
.LASF90:
	.string	"esp_log_write"
.LASF63:
	.string	"efuse_key_read_protected"
.LASF40:
	.string	"load_addr"
.LASF15:
	.string	"char"
.LASF25:
	.string	"type"
.LASF84:
	.string	"left"
.LASF52:
	.string	"ESP_LOG_NONE"
.LASF34:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF62:
	.string	"dis_reg"
.LASF66:
	.string	"_Bool"
.LASF70:
	.string	"partition_table"
.LASF100:
	.string	"encrypt_bootloader"
.LASF54:
	.string	"ESP_LOG_WARN"
.LASF47:
	.string	"image_len"
.LASF88:
	.string	"bootloader_flash_write"
.LASF101:
	.string	"esp_secure_boot_enabled"
.LASF68:
	.string	"initialise_flash_encryption"
.LASF102:
	.string	"encrypt_flash_contents"
.LASF87:
	.string	"bootloader_flash_erase_sector"
.LASF98:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF94:
	.string	"esp_partition_table_verify"
.LASF77:
	.string	"flash_crypt_cnt"
.LASF44:
	.string	"image"
.LASF37:
	.string	"reserved"
.LASF22:
	.string	"size"
.LASF78:
	.string	"flash_crypt_wr_dis"
.LASF103:
	.string	"esp_flash_write_protect_crypt_cnt"
.LASF8:
	.string	"__int32_t"
.LASF76:
	.string	"data_ignored"
.LASF26:
	.string	"subtype"
.LASF16:
	.string	"uint8_t"
.LASF89:
	.string	"esp_log_timestamp"
.LASF56:
	.string	"ESP_LOG_DEBUG"
.LASF45:
	.string	"segments"
.LASF72:
	.string	"encrypt_partition"
.LASF80:
	.string	"new_flash_crypt_cnt"
.LASF24:
	.string	"magic"
.LASF91:
	.string	"esp_efuse_write_random_key"
.LASF85:
	.string	"rtc_wdt_feed"
.LASF96:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF64:
	.string	"efuse_key_write_protected"
.LASF61:
	.string	"coding_scheme"
.LASF53:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"esp_err_t"
.LASF39:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
