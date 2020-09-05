	.file	"esp_efuse_fields.c"
	.text
.Ltext0:
	.global	__popcountsi2
	.section	.text.esp_efuse_apply_34_encoding$part$0,"ax",@progbits
	.literal_position
	.align	4
	.type	esp_efuse_apply_34_encoding$part$0, @function
esp_efuse_apply_34_encoding$part$0:
.LFB10:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_fields.c"
	.loc 1 89 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 89 0
	s32i.n	a2, sp, 16
	.loc 1 95 0
	mov.n	a7, a4
	j	.L2
.LVL1:
.L4:
	movi.n	a5, 0
	mov.n	a2, a5
	mov.n	a6, a5
.L3:
.LVL2:
.LBB10:
.LBB11:
	.loc 1 100 0
	add.n	a9, a11, a6
	l8ui	a10, a9, 0
	.loc 1 101 0
	addi.n	a6, a6, 1
.LVL3:
	s32i.n	a11, sp, 20
	.loc 1 100 0
	xor	a2, a10, a2
.LVL4:
	.loc 1 101 0
	call8	__popcountsi2
.LVL5:
	mul16u	a10, a6, a10
	.loc 1 99 0
	l32i.n	a11, sp, 20
	.loc 1 101 0
	add.n	a5, a5, a10
.LVL6:
	extui	a5, a5, 0, 8
.LVL7:
	.loc 1 99 0
	bnei	a6, 6, .L3
.LBE11:
	.loc 1 104 0
	mov.n	a12, a6
	mov.n	a10, sp
	call8	memcpy
.LVL8:
	.loc 1 108 0
	mov.n	a10, a3
	movi.n	a12, 8
	mov.n	a11, sp
	.loc 1 105 0
	s8i	a2, sp, 6
	.loc 1 106 0
	s8i	a5, sp, 7
	.loc 1 110 0
	addi	a7, a7, -6
.LVL9:
	.loc 1 108 0
	call8	memcpy
.LVL10:
	.loc 1 112 0
	addi.n	a3, a3, 8
.LVL11:
.L2:
	l32i.n	a2, sp, 16
	sub	a11, a4, a7
	add.n	a11, a2, a11
.LVL12:
.LBE10:
	.loc 1 95 0
	bnez.n	a7, .L4
	.loc 1 116 0
	mov.n	a2, a7
	retw.n
.LFE10:
	.size	esp_efuse_apply_34_encoding$part$0, .-esp_efuse_apply_34_encoding$part$0
	.section	.text.esp_efuse_get_chip_ver,"ax",@progbits
	.literal_position
	.literal .LC2, ESP_EFUSE_CHIP_VER_REV1
	.literal .LC3, ESP_EFUSE_CHIP_VER_REV2
	.literal .LC4, 1073111164
	.literal .LC5, CSWTCH$6
	.align	4
	.global	esp_efuse_get_chip_ver
	.type	esp_efuse_get_chip_ver, @function
esp_efuse_get_chip_ver:
.LFB0:
	.loc 1 34 0
	entry	sp, 48
.LCFI1:
	.loc 1 36 0
	movi.n	a12, 1
	l32r	a10, .LC2
	add.n	a11, sp, a12
	call8	esp_efuse_read_field_blob
.LVL13:
	.loc 1 37 0
	l32r	a10, .LC3
	movi.n	a12, 1
	mov.n	a11, sp
	call8	esp_efuse_read_field_blob
.LVL14:
	.loc 1 38 0
	l32r	a2, .LC4
	l8ui	a8, sp, 0
	memw
	l32i.n	a9, a2, 0
.LVL15:
	l8ui	a10, sp, 1
	slli	a8, a8, 1
	extui	a9, a9, 31, 1
.LVL16:
	or	a8, a8, a10
	slli	a9, a9, 2
	or	a8, a8, a9
	addi.n	a8, a8, -1
	.loc 1 41 0
	movi.n	a2, 0
	bgeui	a8, 7, .L7
	l32r	a2, .LC5
	add.n	a8, a2, a8
	l8ui	a2, a8, 0
.L7:
.LVL17:
	.loc 1 59 0
	retw.n
.LFE0:
	.size	esp_efuse_get_chip_ver, .-esp_efuse_get_chip_ver
	.section	.text.esp_efuse_get_pkg_ver,"ax",@progbits
	.literal_position
	.literal .LC6, ESP_EFUSE_CHIP_VER_PKG
	.align	4
	.global	esp_efuse_get_pkg_ver
	.type	esp_efuse_get_pkg_ver, @function
esp_efuse_get_pkg_ver:
.LFB1:
	.loc 1 63 0
	entry	sp, 48
.LCFI2:
	.loc 1 65 0
	l32r	a10, .LC6
	.loc 1 64 0
	movi.n	a8, 0
	.loc 1 65 0
	movi.n	a12, 3
	mov.n	a11, sp
	.loc 1 64 0
	s32i.n	a8, sp, 0
	.loc 1 65 0
	call8	esp_efuse_read_field_blob
.LVL18:
	.loc 1 67 0
	l32i.n	a2, sp, 0
	retw.n
.LFE1:
	.size	esp_efuse_get_pkg_ver, .-esp_efuse_get_pkg_ver
	.section	.text.esp_efuse_burn_new_values,"ax",@progbits
	.align	4
	.global	esp_efuse_burn_new_values
	.type	esp_efuse_burn_new_values, @function
esp_efuse_burn_new_values:
.LFB2:
	.loc 1 71 0
	entry	sp, 32
.LCFI3:
	.loc 1 72 0
	call8	esp_efuse_utility_burn_efuses
.LVL19:
	retw.n
.LFE2:
	.size	esp_efuse_burn_new_values, .-esp_efuse_burn_new_values
	.section	.text.esp_efuse_reset,"ax",@progbits
	.align	4
	.global	esp_efuse_reset
	.type	esp_efuse_reset, @function
esp_efuse_reset:
.LFB3:
	.loc 1 77 0
	entry	sp, 32
.LCFI4:
	.loc 1 78 0
	call8	esp_efuse_utility_reset
.LVL20:
	retw.n
.LFE3:
	.size	esp_efuse_reset, .-esp_efuse_reset
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"efuse"
.LC10:
	.string	"\033[0;32mI (%d) %s: Disable BASIC ROM Console fallback via efuse...\033[0m\n"
	.section	.text.esp_efuse_disable_basic_rom_console,"ax",@progbits
	.literal_position
	.literal .LC7, ESP_EFUSE_CONSOLE_DEBUG_DISABLE
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	esp_efuse_disable_basic_rom_console
	.type	esp_efuse_disable_basic_rom_console, @function
esp_efuse_disable_basic_rom_console:
.LFB4:
	.loc 1 83 0
	entry	sp, 32
.LCFI5:
	.loc 1 84 0
	l32r	a10, .LC7
	movi.n	a11, 1
	call8	esp_efuse_write_field_cnt
.LVL21:
	bnez.n	a10, .L12
	.loc 1 85 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	mov.n	a11, a10
	l32r	a12, .LC9
	l32r	a10, .LC11
	call8	ets_printf
.LVL23:
.L12:
	retw.n
.LFE4:
	.size	esp_efuse_disable_basic_rom_console, .-esp_efuse_disable_basic_rom_console
	.section	.text.esp_efuse_apply_34_encoding,"ax",@progbits
	.literal_position
	.literal .LC12, -1431655765
	.align	4
	.global	esp_efuse_apply_34_encoding
	.type	esp_efuse_apply_34_encoding, @function
esp_efuse_apply_34_encoding:
.LFB5:
	.loc 1 90 0
.LVL24:
	entry	sp, 32
.LCFI6:
	.loc 1 90 0
	mov.n	a10, a2
	.loc 1 91 0
	movi.n	a9, 0
	movi.n	a2, 1
.LVL25:
	moveqz	a9, a2, a10
	extui	a8, a9, 0, 8
	.loc 1 90 0
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 91 0
	bnez.n	a8, .L16
	moveqz	a8, a2, a3
	bnez.n	a8, .L16
	.loc 1 91 0 discriminator 1
	l32r	a8, .LC12
	muluh	a8, a4, a8
	srli	a8, a8, 2
	addx2	a8, a8, a8
	ssl	a2
	sll	a8, a8
	.loc 1 92 0 discriminator 1
	movi	a2, 0x102
	.loc 1 91 0 discriminator 1
	bne	a4, a8, .L15
	call8	esp_efuse_apply_34_encoding$part$0
.LVL26:
	mov.n	a2, a10
	retw.n
.LVL27:
.L16:
	.loc 1 92 0
	movi	a2, 0x102
.L15:
	.loc 1 116 0
	retw.n
.LFE5:
	.size	esp_efuse_apply_34_encoding, .-esp_efuse_apply_34_encoding
	.section	.rodata.str1.1
.LC16:
	.string	"r == ESP_OK"
.LC19:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_fields.c"
	.section	.text.esp_efuse_write_random_key,"ax",@progbits
	.literal_position
	.literal .LC15, 1073061912
	.literal .LC17, .LC16
	.literal .LC18, __func__$3518
	.literal .LC20, .LC19
	.align	4
	.global	esp_efuse_write_random_key
	.type	esp_efuse_write_random_key, @function
esp_efuse_write_random_key:
.LFB6:
	.loc 1 119 0
.LVL28:
	entry	sp, 96
.LCFI7:
	.loc 1 122 0
	l32r	a8, .LC15
	memw
	l32i.n	a8, a8, 0
.LVL29:
	.loc 1 124 0
	extui	a8, a8, 0, 2
.LVL30:
	bnez.n	a8, .L19
	.loc 1 125 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	bootloader_fill_random
.LVL31:
.L21:
	.loc 1 119 0 discriminator 1
	movi.n	a8, 0
	movi.n	a9, 8
	j	.L20
.LVL32:
.L19:
.LBB12:
	.loc 1 127 0
	movi.n	a11, 0x18
	addi	a10, sp, 32
	call8	bootloader_fill_random
.LVL33:
.LBB13:
.LBB14:
	movi.n	a12, 0x18
	mov.n	a11, sp
.LVL34:
	addi	a10, sp, 32
.LVL35:
	call8	esp_efuse_apply_34_encoding$part$0
.LVL36:
.LBE14:
.LBE13:
	.loc 1 130 0
	beqz.n	a10, .L21
	.loc 1 130 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	l32r	a10, .LC20
	movi	a11, 0x82
	call8	__assert_func
.LVL37:
.L20:
.LBE12:
.LBB15:
	.loc 1 136 0 is_stmt 1 discriminator 2
	add.n	a11, sp, a8
	l32i.n	a11, a11, 0
	add.n	a10, a8, a2
	memw
	s32i.n	a11, a10, 0
	addi.n	a8, a8, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L20
.LBE15:
	.loc 1 138 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL38:
	.loc 1 139 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	addi	a10, sp, 32
	call8	memset
.LVL39:
	retw.n
.LFE6:
	.size	esp_efuse_write_random_key, .-esp_efuse_write_random_key
	.section	.text.esp_efuse_read_secure_version,"ax",@progbits
	.align	4
	.global	esp_efuse_read_secure_version
	.type	esp_efuse_read_secure_version, @function
esp_efuse_read_secure_version:
.LFB7:
	.loc 1 196 0
	entry	sp, 32
.LCFI8:
	.loc 1 210 0
	movi.n	a2, 0
	retw.n
.LFE7:
	.size	esp_efuse_read_secure_version, .-esp_efuse_read_secure_version
	.section	.text.esp_efuse_check_secure_version,"ax",@progbits
	.align	4
	.global	esp_efuse_check_secure_version
	.type	esp_efuse_check_secure_version, @function
esp_efuse_check_secure_version:
.LFB8:
	.loc 1 226 0
.LVL40:
	entry	sp, 32
.LCFI9:
	.loc 1 229 0
	movi.n	a2, 1
.LVL41:
	retw.n
.LFE8:
	.size	esp_efuse_check_secure_version, .-esp_efuse_check_secure_version
	.section	.text.esp_efuse_update_secure_version,"ax",@progbits
	.align	4
	.global	esp_efuse_update_secure_version
	.type	esp_efuse_update_secure_version, @function
esp_efuse_update_secure_version:
.LFB9:
	.loc 1 232 0
.LVL42:
	entry	sp, 32
.LCFI10:
	.loc 1 260 0
	movi.n	a2, 0
.LVL43:
	retw.n
.LFE9:
	.size	esp_efuse_update_secure_version, .-esp_efuse_update_secure_version
	.section	.rodata.CSWTCH$6,"a",@progbits
	.type	CSWTCH$6, @object
	.size	CSWTCH$6, 7
CSWTCH$6:
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.section	.rodata.__func__$3518,"a",@progbits
	.type	__func__$3518, @object
	.size	__func__$3518, 27
__func__$3518:
	.string	"esp_efuse_write_random_key"
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x40
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/include/esp_efuse.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/esp32/include/esp_efuse_table.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_utility.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_random.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x745
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x6
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
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x23
	.4byte	0x148
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x28
	.4byte	0x123
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x36
	.4byte	0x183
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x7
	.byte	0x37
	.4byte	0x148
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x38
	.4byte	0x89
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.4byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.4byte	0x153
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x1
	.byte	0x59
	.4byte	0xe7
	.byte	0x1
	.4byte	0x1ee
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x59
	.4byte	0x1ee
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x59
	.4byte	0x1f9
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x59
	.4byte	0xb5
	.uleb128 0xe
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x60
	.4byte	0x1ff
	.uleb128 0xf
	.string	"xor"
	.byte	0x1
	.byte	0x61
	.4byte	0x89
	.uleb128 0xf
	.string	"mul"
	.byte	0x1
	.byte	0x62
	.4byte	0x89
	.uleb128 0xe
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x63
	.4byte	0x62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x10
	.4byte	0x89
	.4byte	0x20f
	.uleb128 0x11
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0xc3
	.4byte	0xaa
	.byte	0x1
	.uleb128 0x13
	.4byte	0x18e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c7
	.uleb128 0x14
	.4byte	0x19e
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0x1a9
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	0x1b4
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x16
	.4byte	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	0x1cb
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x1d6
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x283
	.uleb128 0x17
	.4byte	0x1e2
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x6de
	.4byte	0x2aa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x6de
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.byte	0x21
	.4byte	0x89
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x358
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF40
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF41
	.byte	0x1
	.byte	0x27
	.4byte	0xaa
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF42
	.byte	0x1
	.byte	0x28
	.4byte	0x89
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x6e7
	.4byte	0x342
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x6e7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3e
	.4byte	0xaa
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x395
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x40
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0x6e7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF46
	.byte	0x1
	.byte	0x46
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b4
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x6f2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x6fd
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF48
	.byte	0x1
	.byte	0x52
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x421
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x708
	.4byte	0x3fb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x713
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x71e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x18e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x469
	.uleb128 0x14
	.4byte	0x19e
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	0x1a9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	0x1b4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x21b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF49
	.byte	0x1
	.byte	0x76
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dd
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0x76
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.byte	0x78
	.4byte	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"raw"
	.byte	0x1
	.byte	0x79
	.4byte	0x5ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.byte	0x7a
	.4byte	0xaa
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	.LASF51
	.4byte	0x60d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3518
	.uleb128 0x18
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x56c
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0x80
	.4byte	0xe7
	.uleb128 0x26
	.4byte	0x18e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x80
	.4byte	0x527
	.uleb128 0x14
	.4byte	0x1b4
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	0x1a9
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	0x19e
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x21b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x729
	.4byte	0x540
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x734
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x82
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3518
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x587
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x86
	.4byte	0x62
	.4byte	.LLST14
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x729
	.4byte	0x5a2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0x73f
	.4byte	0x5c2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x73f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xaa
	.4byte	0x5ed
	.uleb128 0x11
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	0x89
	.4byte	0x5fd
	.uleb128 0x11
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.4byte	0xd5
	.4byte	0x60d
	.uleb128 0x11
	.4byte	0xc7
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x5fd
	.uleb128 0x28
	.4byte	0x20f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0xe1
	.4byte	0x655
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x655
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.byte	0xe1
	.4byte	0xaa
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LASF55
	.byte	0x1
	.byte	0xe3
	.4byte	0xaa
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF56
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe7
	.4byte	0xe7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x685
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.byte	0xe7
	.4byte	0xaa
	.4byte	.LLST16
	.byte	0
	.uleb128 0x24
	.string	"TAG"
	.byte	0x1
	.byte	0x1c
	.4byte	0x697
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0x10
	.4byte	0x6a7
	.4byte	0x6a7
	.uleb128 0x2b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x6
	.4byte	0x183
	.uleb128 0x2c
	.4byte	.LASF58
	.byte	0x8
	.byte	0x28
	.4byte	0x69c
	.uleb128 0x2c
	.4byte	.LASF59
	.byte	0x8
	.byte	0x33
	.4byte	0x69c
	.uleb128 0x2c
	.4byte	.LASF60
	.byte	0x8
	.byte	0x36
	.4byte	0x69c
	.uleb128 0x2c
	.4byte	.LASF61
	.byte	0x8
	.byte	0x37
	.4byte	0x69c
	.uleb128 0x2d
	.4byte	.LASF70
	.4byte	.LASF70
	.uleb128 0x2e
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x7
	.byte	0x4c
	.uleb128 0x2e
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x9
	.byte	0x58
	.uleb128 0x2e
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x9
	.byte	0x6e
	.uleb128 0x2e
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x7
	.byte	0x7c
	.uleb128 0x2e
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xa
	.byte	0xde
	.uleb128 0x2e
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xb
	.byte	0x31
	.uleb128 0x2e
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xc
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF71
	.4byte	.LASF71
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
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
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL9
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x77
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x19
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -47
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
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
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"esp_efuse_utility_burn_efuses"
.LASF38:
	.string	"eco_bit0"
.LASF39:
	.string	"eco_bit1"
.LASF40:
	.string	"eco_bit2"
.LASF15:
	.string	"size_t"
.LASF46:
	.string	"esp_efuse_burn_new_values"
.LASF3:
	.string	"__uint8_t"
.LASF10:
	.string	"long long unsigned int"
.LASF58:
	.string	"ESP_EFUSE_CONSOLE_DEBUG_DISABLE"
.LASF35:
	.string	"in_bytes"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"long int"
.LASF70:
	.string	"memcpy"
.LASF12:
	.string	"uint16_t"
.LASF77:
	.string	"esp_efuse_read_secure_version"
.LASF64:
	.string	"esp_efuse_utility_reset"
.LASF7:
	.string	"__uint32_t"
.LASF50:
	.string	"coding_scheme"
.LASF8:
	.string	"unsigned int"
.LASF53:
	.string	"blk_wdata0_reg"
.LASF37:
	.string	"in_bytes_len"
.LASF76:
	.string	"esp_efuse_apply_34_encoding"
.LASF18:
	.string	"long unsigned int"
.LASF45:
	.string	"pkg_ver"
.LASF72:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"bit_start"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"ESP_EFUSE_CHIP_VER_PKG"
.LASF60:
	.string	"ESP_EFUSE_CHIP_VER_REV1"
.LASF61:
	.string	"ESP_EFUSE_CHIP_VER_REV2"
.LASF36:
	.string	"out_words"
.LASF62:
	.string	"esp_efuse_read_field_blob"
.LASF34:
	.string	"esp_efuse_desc_t"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF17:
	.string	"sizetype"
.LASF66:
	.string	"esp_log_timestamp"
.LASF67:
	.string	"ets_printf"
.LASF49:
	.string	"esp_efuse_write_random_key"
.LASF31:
	.string	"esp_efuse_block_t"
.LASF55:
	.string	"sec_ver_hw"
.LASF54:
	.string	"secure_version"
.LASF56:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"EFUSE_BLK0"
.LASF28:
	.string	"EFUSE_BLK1"
.LASF29:
	.string	"EFUSE_BLK2"
.LASF30:
	.string	"EFUSE_BLK3"
.LASF2:
	.string	"short int"
.LASF71:
	.string	"memset"
.LASF65:
	.string	"esp_efuse_write_field_cnt"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF51:
	.string	"__func__"
.LASF52:
	.string	"esp_efuse_check_secure_version"
.LASF33:
	.string	"bit_count"
.LASF14:
	.string	"uint32_t"
.LASF19:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF4:
	.string	"__uint16_t"
.LASF57:
	.string	"esp_efuse_update_secure_version"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF47:
	.string	"esp_efuse_reset"
.LASF6:
	.string	"__int32_t"
.LASF75:
	.string	"efuse_block"
.LASF74:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/efuse"
.LASF43:
	.string	"esp_efuse_get_chip_ver"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF73:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/src/esp_efuse_fields.c"
.LASF20:
	.string	"esp_err_t"
.LASF11:
	.string	"uint8_t"
.LASF48:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF69:
	.string	"__assert_func"
.LASF44:
	.string	"esp_efuse_get_pkg_ver"
.LASF68:
	.string	"bootloader_fill_random"
.LASF41:
	.string	"combine_value"
.LASF42:
	.string	"chip_ver"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
