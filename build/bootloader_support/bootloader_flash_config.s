	.file	"bootloader_flash_config.c"
	.text
.Ltext0:
	.section	.text.bootloader_flash_update_id,"ax",@progbits
	.literal_position
	.literal .LC0, g_rom_flashchip
	.align	4
	.global	bootloader_flash_update_id
	.type	bootloader_flash_update_id, @function
bootloader_flash_update_id:
.LFB5:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_flash_config.c"
	.loc 1 31 0
	entry	sp, 32
.LCFI0:
	.loc 1 32 0
	call8	bootloader_read_flash_id
.LVL0:
	l32r	a8, .LC0
	s32i.n	a10, a8, 0
	retw.n
.LFE5:
	.size	bootloader_flash_update_id, .-bootloader_flash_update_id
	.section	.iram1.0,"ax",@progbits
	.literal_position
	.literal .LC1, 1072967708
	.literal .LC2, 1072967700
	.literal .LC3, 1072963612
	.literal .LC4, 1072963604
	.align	4
	.global	bootloader_flash_cs_timing_config
	.type	bootloader_flash_cs_timing_config, @function
bootloader_flash_cs_timing_config:
.LFB6:
	.loc 1 36 0
	entry	sp, 32
.LCFI1:
	.loc 1 37 0
	l32r	a9, .LC1
	movi.n	a12, 0x30
	memw
	l32i.n	a8, a9, 0
	.loc 1 38 0
	l32r	a13, .LC2
	.loc 1 37 0
	or	a8, a8, a12
	memw
	s32i.n	a8, a9, 0
	.loc 1 38 0
	memw
	l32i.n	a8, a13, 0
	movi	a11, -0xf1
	and	a8, a8, a11
	movi.n	a10, 0x10
	or	a8, a8, a10
	memw
	s32i.n	a8, a13, 0
	.loc 1 39 0
	memw
	l32i.n	a8, a13, 0
	movi.n	a9, -0x10
	and	a8, a8, a9
	memw
	s32i.n	a8, a13, 0
	.loc 1 40 0
	l32r	a8, .LC3
	memw
	l32i.n	a13, a8, 0
	or	a12, a13, a12
	memw
	s32i.n	a12, a8, 0
	.loc 1 41 0
	l32r	a8, .LC4
	memw
	l32i.n	a12, a8, 0
	and	a11, a12, a11
	or	a10, a11, a10
	memw
	s32i.n	a10, a8, 0
	.loc 1 42 0
	memw
	l32i.n	a10, a8, 0
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE6:
	.size	bootloader_flash_cs_timing_config, .-bootloader_flash_cs_timing_config
	.section	.iram1.1,"ax",@progbits
	.literal_position
	.literal .LC5, CSWTCH$4
	.align	4
	.global	bootloader_flash_clock_config
	.type	bootloader_flash_clock_config, @function
bootloader_flash_clock_config:
.LFB7:
	.loc 1 46 0
.LVL1:
	entry	sp, 32
.LCFI2:
.LVL2:
	.loc 1 48 0
	l8ui	a8, a2, 3
	l32r	a2, .LC5
.LVL3:
	extui	a8, a8, 0, 4
.LVL4:
	add.n	a8, a2, a8
	.loc 1 64 0
	l8ui	a2, a8, 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_config_clk
.LVL5:
	.loc 1 65 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	esp_rom_spiflash_config_clk
.LVL6:
	retw.n
.LFE7:
	.size	bootloader_flash_clock_config, .-bootloader_flash_clock_config
	.section	.iram1.2,"ax",@progbits
	.literal_position
	.literal .LC6, 1073061900
	.literal .LC7, 1072992352
	.literal .LC8, -28673
	.literal .LC9, 4096
	.literal .LC10, -3073
	.literal .LC11, 1072992356
	.literal .LC12, 8192
	.literal .LC13, 1072992360
	.literal .LC14, 1072992340
	.literal .LC15, 1072992344
	.literal .LC16, 1072992348
	.literal .LC17, g_rom_flashchip
	.literal .LC18, 13131798
	.literal .LC19, 3072
	.align	4
	.global	bootloader_flash_gpio_config
	.type	bootloader_flash_gpio_config, @function
bootloader_flash_gpio_config:
.LFB8:
	.loc 1 69 0
.LVL7:
	entry	sp, 32
.LCFI3:
.LVL8:
	.loc 1 71 0
	l8ui	a2, a2, 3
.LVL9:
	.loc 1 72 0
	movi.n	a4, 3
	.loc 1 71 0
	extui	a2, a2, 0, 4
	.loc 1 72 0
	addi	a2, a2, -15
	movi.n	a5, 2
	mov.n	a3, a4
	movnez	a3, a5, a2
	mov.n	a2, a3
.LVL10:
	.loc 1 75 0
	l32r	a3, .LC6
	memw
	l32i.n	a3, a3, 0
.LVL11:
	.loc 1 76 0
	extui	a3, a3, 9, 3
.LVL12:
	.loc 1 78 0
	bne	a3, a5, .L6
	j	.L14
.L6:
	.loc 1 83 0
	bnei	a3, 4, .L8
	j	.L14
.L8:
	.loc 1 88 0
	bnei	a3, 5, .L9
.L14:
	.loc 1 91 0
	l32r	a3, .LC7
.LVL13:
	l32r	a4, .LC8
	memw
	l32i.n	a5, a3, 0
	.loc 1 92 0
	slli	a2, a2, 10
.LVL14:
	.loc 1 91 0
	and	a5, a5, a4
	l32r	a4, .LC9
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LVL15:
	.loc 1 92 0
	memw
	l32i.n	a5, a3, 0
	l32r	a4, .LC10
	and	a4, a5, a4
	or	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
	retw.n
.LVL16:
.L9:
.LBB2:
	.loc 1 94 0
	call8	ets_efuse_get_spiconfig
.LVL17:
	mov.n	a3, a10
.LVL18:
	.loc 1 95 0
	bnez.n	a10, .L4
.LBB3:
	.loc 1 96 0
	mov.n	a13, a10
	mov.n	a12, a10
	movi.n	a11, 5
	movi.n	a10, 0xb
	call8	gpio_matrix_out
.LVL19:
	.loc 1 97 0
	mov.n	a13, a3
	mov.n	a12, a3
	movi.n	a11, 1
	movi.n	a10, 7
	call8	gpio_matrix_out
.LVL20:
	.loc 1 98 0
	mov.n	a12, a3
	movi.n	a11, 1
	movi.n	a10, 7
	call8	gpio_matrix_in
.LVL21:
	.loc 1 99 0
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a5
	movi.n	a10, 8
	call8	gpio_matrix_out
.LVL22:
	.loc 1 100 0
	mov.n	a12, a3
	mov.n	a11, a5
	movi.n	a10, 8
	call8	gpio_matrix_in
.LVL23:
	.loc 1 101 0
	mov.n	a13, a3
	mov.n	a12, a3
	movi.n	a11, 4
	movi.n	a10, 0xa
	call8	gpio_matrix_out
.LVL24:
	.loc 1 102 0
	mov.n	a12, a3
	movi.n	a11, 4
	movi.n	a10, 0xa
	call8	gpio_matrix_in
.LVL25:
	.loc 1 103 0
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a4
	movi.n	a10, 9
	call8	gpio_matrix_out
.LVL26:
	.loc 1 104 0
	mov.n	a12, a3
	mov.n	a11, a4
	movi.n	a10, 9
	call8	gpio_matrix_in
.LVL27:
	.loc 1 106 0
	l32r	a13, .LC11
	l32r	a3, .LC8
.LVL28:
	memw
	l32i.n	a9, a13, 0
	l32r	a8, .LC12
	and	a9, a9, a3
	or	a9, a9, a8
	.loc 1 107 0
	l32r	a12, .LC13
	.loc 1 106 0
	memw
	s32i.n	a9, a13, 0
	.loc 1 107 0
	memw
	l32i.n	a9, a12, 0
	.loc 1 108 0
	l32r	a11, .LC14
	.loc 1 107 0
	and	a9, a9, a3
	or	a9, a9, a8
	memw
	s32i.n	a9, a12, 0
	.loc 1 108 0
	memw
	l32i.n	a9, a11, 0
	.loc 1 109 0
	l32r	a10, .LC15
	.loc 1 108 0
	and	a9, a9, a3
	or	a9, a9, a8
	memw
	s32i.n	a9, a11, 0
	.loc 1 109 0
	memw
	l32i.n	a9, a10, 0
	.loc 1 110 0
	l32r	a4, .LC16
	.loc 1 109 0
	and	a9, a9, a3
	or	a9, a9, a8
	memw
	s32i.n	a9, a10, 0
	.loc 1 110 0
	memw
	l32i.n	a5, a4, 0
	.loc 1 114 0
	slli	a2, a2, 10
.LVL29:
	.loc 1 110 0
	and	a5, a5, a3
	or	a8, a5, a8
	memw
	s32i.n	a8, a4, 0
	.loc 1 113 0
	l32r	a8, .LC7
	memw
	l32i.n	a5, a8, 0
	and	a3, a5, a3
	l32r	a5, .LC9
	or	a3, a3, a5
	memw
	s32i.n	a3, a8, 0
	.loc 1 114 0
	memw
	l32i.n	a5, a8, 0
	l32r	a3, .LC10
	and	a3, a5, a3
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LVL30:
	.loc 1 116 0
	l32r	a2, .LC17
.LVL31:
	.loc 1 117 0
	l32i.n	a3, a2, 0
	l32r	a2, .LC18
.LVL32:
	bne	a3, a2, .L4
	.loc 1 119 0
	memw
	l32i.n	a3, a13, 0
.LVL33:
	l32r	a2, .LC19
	or	a3, a3, a2
	memw
	s32i.n	a3, a13, 0
.LVL34:
	.loc 1 120 0
	memw
	l32i.n	a3, a12, 0
	or	a3, a3, a2
	memw
	s32i.n	a3, a12, 0
	.loc 1 121 0
	memw
	l32i.n	a3, a11, 0
	or	a3, a3, a2
	memw
	s32i.n	a3, a11, 0
	.loc 1 122 0
	memw
	l32i.n	a3, a10, 0
	or	a3, a3, a2
	memw
	s32i.n	a3, a10, 0
	.loc 1 123 0
	memw
	l32i.n	a3, a4, 0
	or	a3, a3, a2
	memw
	s32i.n	a3, a4, 0
	.loc 1 124 0
	memw
	l32i.n	a3, a8, 0
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.L4:
	retw.n
.LBE3:
.LBE2:
.LFE8:
	.size	bootloader_flash_gpio_config, .-bootloader_flash_gpio_config
	.section	.iram1.3,"ax",@progbits
	.literal_position
	.literal .LC20, 1072967688
	.literal .LC23, 8388608
	.literal .LC24, 1072967712
	.literal .LC25, 67108863
	.literal .LC26, 1811939328
	.literal .LC27, 1064960
	.literal .LC28, g_rom_spiflash_dummy_len_plus
	.align	4
	.global	bootloader_flash_dummy_config
	.type	bootloader_flash_dummy_config, @function
bootloader_flash_dummy_config:
.LFB9:
	.loc 1 131 0
.LVL35:
	entry	sp, 32
.LCFI4:
.LVL36:
	.loc 1 133 0
	l32r	a8, .LC20
	memw
	l32i.n	a11, a8, 0
.LVL37:
	.loc 1 132 0
	movi.n	a8, 0
	.loc 1 134 0
	bbci	a11, 13, .L16
	.loc 1 136 0
	movi.n	a8, 3
	.loc 1 135 0
	bbsi	a11, 24, .L16
	.loc 1 137 0
	l32r	a10, .LC23
	and	a10, a11, a10
	beqz.n	a10, .L17
.LVL38:
	.loc 1 139 0
	l32r	a10, .LC24
	l32r	a8, .LC25
	memw
	l32i.n	a9, a10, 0
	and	a9, a9, a8
	l32r	a8, .LC26
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	.loc 1 138 0
	movi.n	a8, 1
	j	.L16
.LVL39:
.L17:
	.loc 1 140 0
	l32r	a9, .LC27
	.loc 1 141 0
	movi.n	a8, 7
	.loc 1 140 0
	and	a9, a11, a9
	.loc 1 141 0
	moveqz	a8, a10, a9
.LVL40:
.L16:
	.loc 1 146 0
	l8ui	a10, a2, 3
	l32r	a9, .LC28
	extui	a10, a10, 0, 4
	bgeui	a10, 3, .L19
	movi.n	a11, 1
.LVL41:
	beqz.n	a10, .L27
	j	.L20
.LVL42:
.L19:
	movi.n	a11, 0xf
.LVL43:
	bne	a10, a11, .L18
	.loc 1 148 0
	movi.n	a10, 2
	j	.L28
.L27:
	.loc 1 152 0
	s8i	a11, a9, 0
	.loc 1 153 0
	s8i	a11, a9, 1
	.loc 1 154 0
	j	.L18
.L20:
	.loc 1 157 0
	movi.n	a10, 0
.L28:
	s8i	a10, a9, 0
	.loc 1 158 0
	s8i	a10, a9, 1
.L18:
	.loc 1 164 0
	l32r	a10, .LC24
	l8ui	a9, a9, 0
	memw
	l32i.n	a11, a10, 0
	add.n	a8, a9, a8
.LVL44:
	movi	a9, -0x100
	extui	a8, a8, 0, 8
	and	a9, a11, a9
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	retw.n
.LFE9:
	.size	bootloader_flash_dummy_config, .-bootloader_flash_dummy_config
	.section	.rodata.CSWTCH$4,"a",@progbits
	.type	CSWTCH$4, @object
	.size	CSWTCH$4, 16
CSWTCH$4:
	.byte	2
	.byte	3
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/flash_qio_mode.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/gpio.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/efuse.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x51e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x18
	.byte	0x4
	.byte	0x8f
	.4byte	0xfd
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x90
	.4byte	0x9a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x91
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x92
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x93
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x94
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x95
	.4byte	0x9a
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x96
	.4byte	0xac
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x27
	.4byte	0x12d
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.4byte	0x2c
	.byte	0x5
	.byte	0x3e
	.4byte	0x147
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.2byte	0xffff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x41
	.4byte	0x12d
	.uleb128 0x5
	.byte	0x18
	.byte	0x5
	.byte	0x48
	.4byte	0x1f1
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x49
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4a
	.4byte	0x8f
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0x4c
	.4byte	0x8f
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4e
	.4byte	0x8f
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0x50
	.4byte	0x8f
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0x51
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x54
	.4byte	0x8f
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.byte	0x56
	.4byte	0x1f1
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.byte	0x57
	.4byte	0x147
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x5
	.byte	0x58
	.4byte	0x8f
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x59
	.4byte	0x201
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x5d
	.4byte	0x8f
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x201
	.uleb128 0xc
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x211
	.uleb128 0xc
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.byte	0x5e
	.4byte	0x152
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x4e9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ae
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2d
	.4byte	0x2ae
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2f
	.4byte	0x9a
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x4f4
	.4byte	0x298
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x4f4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x2b4
	.uleb128 0x17
	.4byte	0x211
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x44
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x476
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x44
	.4byte	0x2ae
	.4byte	.LLST2
	.uleb128 0x18
	.string	"drv"
	.byte	0x1
	.byte	0x46
	.4byte	0x9a
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4b
	.4byte	0x9a
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.4byte	0x9a
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5e
	.4byte	0x476
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x46b
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x74
	.4byte	0x9a
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x500
	.4byte	0x362
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x500
	.4byte	0x386
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x50b
	.4byte	0x3a4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x500
	.4byte	0x3c9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x50b
	.4byte	0x3e8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0x500
	.4byte	0x40c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x50b
	.4byte	0x42a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0x500
	.4byte	0x44f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x50b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x516
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x9a
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x82
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c7
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x82
	.4byte	0x2ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x84
	.4byte	0x33
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x85
	.4byte	0x9a
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0x91
	.4byte	0x4c7
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x4d2
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x220
	.4byte	0xfd
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0x91
	.4byte	0x4c7
	.uleb128 0x1f
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.byte	0x21
	.uleb128 0x20
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x136
	.uleb128 0x1f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0xed
	.uleb128 0x1f
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0xdd
	.uleb128 0x1f
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x48
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
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x13
	.byte	0x72
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	CSWTCH$4
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	CSWTCH$4
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	CSWTCH$4
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x16
	.byte	0x32
	.byte	0x33
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3f
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x39
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5b
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
.LASF37:
	.string	"spi_pin_drv"
.LASF54:
	.string	"g_rom_spiflash_dummy_len_plus"
.LASF18:
	.string	"block_size"
.LASF16:
	.string	"device_id"
.LASF17:
	.string	"chip_size"
.LASF32:
	.string	"spi_mode"
.LASF47:
	.string	"chip_ver"
.LASF49:
	.string	"spiconfig"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"page_size"
.LASF62:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_flash_config.c"
.LASF10:
	.string	"sizetype"
.LASF25:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF21:
	.string	"status_mask"
.LASF6:
	.string	"__uint32_t"
.LASF43:
	.string	"bootloader_flash_clock_config"
.LASF34:
	.string	"spi_size"
.LASF57:
	.string	"esp_rom_spiflash_config_clk"
.LASF44:
	.string	"bootloader_flash_gpio_config"
.LASF55:
	.string	"g_rom_flashchip"
.LASF13:
	.string	"uint8_t"
.LASF52:
	.string	"spi_cache_dummy"
.LASF53:
	.string	"modebit"
.LASF59:
	.string	"gpio_matrix_in"
.LASF39:
	.string	"min_chip_rev"
.LASF7:
	.string	"long long int"
.LASF22:
	.string	"esp_rom_spiflash_chip_t"
.LASF56:
	.string	"bootloader_read_flash_id"
.LASF9:
	.string	"long int"
.LASF50:
	.string	"flash_id"
.LASF5:
	.string	"__uint8_t"
.LASF36:
	.string	"wp_pin"
.LASF19:
	.string	"sector_size"
.LASF26:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF28:
	.string	"ESP_CHIP_ID_INVALID"
.LASF3:
	.string	"unsigned char"
.LASF46:
	.string	"spi_clk_div"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"pkg_ver"
.LASF33:
	.string	"spi_speed"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"esp_chip_id_t"
.LASF12:
	.string	"char"
.LASF27:
	.string	"ESP_CHIP_ID_ESP32"
.LASF65:
	.string	"bootloader_flash_cs_timing_config"
.LASF35:
	.string	"entry_addr"
.LASF58:
	.string	"gpio_matrix_out"
.LASF15:
	.string	"_Bool"
.LASF51:
	.string	"bootloader_flash_dummy_config"
.LASF24:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF11:
	.string	"long unsigned int"
.LASF63:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF31:
	.string	"segment_count"
.LASF40:
	.string	"reserved"
.LASF38:
	.string	"chip_id"
.LASF41:
	.string	"hash_appended"
.LASF45:
	.string	"pfhdr"
.LASF23:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF30:
	.string	"magic"
.LASF61:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF60:
	.string	"ets_efuse_get_spiconfig"
.LASF64:
	.string	"bootloader_flash_update_id"
.LASF42:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
