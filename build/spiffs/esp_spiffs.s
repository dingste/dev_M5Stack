	.file	"esp_spiffs.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, -10050
	.align	4
	.global	esp32_spi_flash_read
	.type	esp32_spi_flash_read, @function
esp32_spi_flash_read:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/esp_spiffs.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 48 0
	addi.n	a11, a2, 3
	movi.n	a5, -4
	and	a5, a11, a5
.LVL2:
	mov.n	a12, a3
	.loc 1 49 0
	beq	a2, a5, .L2
	.loc 1 50 0
	addi	a5, a5, -4
.LVL3:
	add.n	a12, a3, a2
	.loc 1 51 0
	sub	a12, a12, a5
.LVL4:
.L2:
	.loc 1 57 0
	sub	a8, a5, a2
	movi.n	a9, 1
	movi.n	a6, 0
	movnez	a6, a9, a8
	.loc 1 55 0
	addi.n	a12, a12, 3
.LVL5:
	movi.n	a7, -4
	.loc 1 57 0
	extui	a6, a6, 0, 8
	.loc 1 55 0
	and	a7, a12, a7
.LVL6:
	.loc 1 57 0
	bnez.n	a6, .L10
	sub	a8, a3, a7
	movnez	a6, a9, a8
	beqz.n	a6, .L3
.L10:
	.loc 1 59 0
	addi.n	a10, a7, 4
	call8	malloc
.LVL7:
	mov.n	a8, a10
.LVL8:
	.loc 1 60 0
	bnez.n	a10, .L5
	j	.L11
.L5:
	.loc 1 64 0
	addi.n	a9, a10, 3
	movi.n	a6, -4
	and	a9, a9, a6
.LVL9:
	.loc 1 66 0
	mov.n	a11, a9
	mov.n	a12, a7
	mov.n	a10, a5
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	spi_flash_read
.LVL10:
	mov.n	a6, a10
	l32i.n	a8, sp, 4
	l32i.n	a9, sp, 0
	beqz.n	a10, .L7
	.loc 1 67 0
	mov.n	a10, a8
	call8	free
.LVL11:
.L11:
	.loc 1 68 0
	l32r	a6, .LC0
	j	.L6
.L7:
	.loc 1 71 0
	sub	a11, a2, a5
	mov.n	a12, a3
	add.n	a11, a9, a11
	mov.n	a10, a4
	s32i.n	a8, sp, 4
	call8	memcpy
.LVL12:
	.loc 1 73 0
	l32i.n	a8, sp, 4
	mov.n	a10, a8
	call8	free
.LVL13:
	j	.L6
.LVL14:
.L3:
	.loc 1 75 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_read
.LVL15:
	mov.n	a6, a10
	bnez.n	a10, .L11
.LVL16:
.L6:
	.loc 1 81 0
	mov.n	a2, a6
.LVL17:
	retw.n
.LFE17:
	.size	esp32_spi_flash_read, .-esp32_spi_flash_read
	.literal_position
	.literal .LC1, -10050
	.align	4
	.global	esp32_spi_flash_write
	.type	esp32_spi_flash_write, @function
esp32_spi_flash_write:
.LFB18:
	.loc 1 83 0
.LVL18:
	entry	sp, 48
.LCFI1:
.LVL19:
	.loc 1 92 0
	addi.n	a6, a2, 3
	movi.n	a5, -4
	and	a5, a6, a5
.LVL20:
	mov.n	a6, a3
	.loc 1 93 0
	beq	a2, a5, .L13
	.loc 1 94 0
	addi	a5, a5, -4
.LVL21:
	add.n	a6, a3, a2
	.loc 1 95 0
	sub	a6, a6, a5
.LVL22:
.L13:
	.loc 1 101 0
	sub	a9, a5, a2
	movi.n	a10, 1
	movi.n	a8, 0
	movnez	a8, a10, a9
	.loc 1 99 0
	addi.n	a6, a6, 3
.LVL23:
	movi.n	a7, -4
	.loc 1 101 0
	extui	a8, a8, 0, 8
	.loc 1 99 0
	and	a6, a6, a7
.LVL24:
	.loc 1 101 0
	bnez.n	a8, .L22
	sub	a7, a3, a6
	movnez	a8, a10, a7
	beqz.n	a8, .L14
.L22:
	.loc 1 103 0
	addi.n	a10, a6, 4
	call8	malloc
.LVL25:
	mov.n	a7, a10
.LVL26:
	.loc 1 104 0
	bnez.n	a10, .L16
	j	.L23
.L16:
	.loc 1 108 0
	addi.n	a9, a10, 3
	movi.n	a8, -4
	and	a8, a9, a8
.LVL27:
	.loc 1 110 0
	mov.n	a11, a8
	mov.n	a12, a6
	mov.n	a10, a5
	s32i.n	a8, sp, 0
	call8	spi_flash_read
.LVL28:
	l32i.n	a8, sp, 0
	beqz.n	a10, .L18
	.loc 1 111 0
	mov.n	a10, a7
.LVL29:
.L24:
	call8	free
.LVL30:
.L23:
	.loc 1 112 0
	l32r	a2, .LC1
	retw.n
.LVL31:
.L18:
	.loc 1 115 0
	sub	a10, a2, a5
	mov.n	a12, a3
	mov.n	a11, a4
	add.n	a10, a8, a10
	s32i.n	a8, sp, 0
	call8	memcpy
.LVL32:
	.loc 1 117 0
	l32i.n	a8, sp, 0
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a5
	call8	spi_flash_write
.LVL33:
	mov.n	a2, a10
.LVL34:
	.loc 1 118 0
	mov.n	a10, a7
	.loc 1 117 0
	beqz.n	a2, .L19
	j	.L24
.L19:
	.loc 1 122 0
	call8	free
.LVL35:
	retw.n
.LVL36:
.L14:
	.loc 1 124 0
	mov.n	a10, a2
	mov.n	a12, a3
	mov.n	a11, a4
	call8	spi_flash_write
.LVL37:
	mov.n	a2, a10
.LVL38:
	bnez.n	a10, .L23
	.loc 1 130 0
	retw.n
.LFE18:
	.size	esp32_spi_flash_write, .-esp32_spi_flash_write
	.literal_position
	.literal .LC2, -10050
	.align	4
	.global	esp32_spi_flash_erase
	.type	esp32_spi_flash_erase, @function
esp32_spi_flash_erase:
.LFB19:
	.loc 1 132 0
.LVL39:
	entry	sp, 32
.LCFI2:
	.loc 1 133 0
	srli	a10, a2, 12
	call8	spi_flash_erase_sector
.LVL40:
	.loc 1 134 0
	l32r	a8, .LC2
	movnez	a10, a8, a10
	.loc 1 138 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LFE19:
	.size	esp32_spi_flash_erase, .-esp32_spi_flash_erase
	.comm	spiffs_mutex,4,4
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_config.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x95
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x58
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x1b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.4byte	0xae
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0xb9
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"dst"
	.byte	0x1
	.byte	0x27
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x29
	.4byte	0xcf
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.4byte	0xcf
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2b
	.4byte	0xb9
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LVL7
	.4byte	0x342
	.4byte	0x165
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x34d
	.4byte	0x17f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x358
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x363
	.4byte	0x1a2
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x358
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x34d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x53
	.4byte	0xae
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2de
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x53
	.4byte	0xb9
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x53
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"src"
	.byte	0x1
	.byte	0x53
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x54
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.4byte	0xcf
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x56
	.4byte	0xcf
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x57
	.4byte	0xb9
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LVL25
	.4byte	0x342
	.4byte	0x258
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.4byte	.LVL28
	.4byte	0x34d
	.4byte	0x27b
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x77
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL30
	.4byte	0x358
	.uleb128 0xd
	.4byte	.LVL32
	.4byte	0x363
	.4byte	0x29e
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL33
	.4byte	0x36c
	.4byte	0x2b8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL35
	.4byte	0x358
	.uleb128 0x10
	.4byte	.LVL37
	.4byte	0x36c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e4
	.uleb128 0x11
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x84
	.4byte	0xae
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x84
	.4byte	0xb9
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x84
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL40
	.4byte	0x377
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x6
	.byte	0x22
	.4byte	0xa3
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x13
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0x65
	.uleb128 0x13
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x8
	.byte	0x8b
	.uleb128 0x13
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LASF37
	.4byte	.LASF37
	.uleb128 0x13
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5d
	.uleb128 0x13
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.byte	0x3f
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7c
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL36
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28-1
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x77
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x77
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x76
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF16:
	.string	"s32_t"
.LASF24:
	.string	"asize"
.LASF28:
	.string	"malloc"
.LASF34:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/esp_spiffs.c"
.LASF15:
	.string	"QueueHandle_t"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"spiffs_mutex"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"esp32_spi_flash_write"
.LASF11:
	.string	"long unsigned int"
.LASF19:
	.string	"addr"
.LASF35:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spiffs"
.LASF22:
	.string	"buff"
.LASF21:
	.string	"aaddr"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"u32_t"
.LASF5:
	.string	"ptrdiff_t"
.LASF29:
	.string	"spi_flash_read"
.LASF23:
	.string	"abuff"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF18:
	.string	"u8_t"
.LASF31:
	.string	"spi_flash_write"
.LASF27:
	.string	"esp32_spi_flash_erase"
.LASF10:
	.string	"sizetype"
.LASF30:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"esp32_spi_flash_read"
.LASF37:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF20:
	.string	"size"
.LASF14:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
.LASF32:
	.string	"spi_flash_erase_sector"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
