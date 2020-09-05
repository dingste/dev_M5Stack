	.file	"flash_partitions.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"flash_parts"
.LC7:
	.string	"\033[0;31mE (%d) %s: partition %d invalid - offset 0x%x size 0x%x exceeds flash chip size 0x%x\033[0m\n"
.LC10:
	.string	"\033[0;31mE (%d) %s: Only one MD5 checksum is allowed\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: Incorrect MD5 checksum\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: partition %d invalid magic number 0x%x\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: partition table has no terminating entry, not valid\033[0m\n"
	.section	.text.esp_partition_table_verify,"ax",@progbits
	.literal_position
	.literal .LC3, g_rom_flashchip
	.literal .LC4, 20650
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, -5141
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.global	esp_partition_table_verify
	.type	esp_partition_table_verify, @function
esp_partition_table_verify:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/flash_partitions.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 176
.LCFI0:
.LVL1:
	.loc 1 27 0
	l32r	a5, .LC3
	.loc 1 24 0
	extui	a3, a3, 0, 8
	.loc 1 27 0
	l32i.n	a7, a5, 4
.LVL2:
	.loc 1 28 0
	movi.n	a5, 0
	s32i.n	a5, a4, 0
.LVL3:
	mov.n	a6, a2
	.loc 1 25 0
	mov.n	a15, a5
.LVL4:
.L14:
.LBB2:
	.loc 1 33 0
	l16ui	a9, a6, 0
	l32r	a8, .LC4
	slli	a12, a5, 5
.LVL5:
	bne	a9, a8, .L2
.LVL6:
.LBB3:
	.loc 1 35 0
	l32i.n	a9, a6, 4
	bgeu	a7, a9, .L3
.L6:
	.loc 1 36 0
	bnez.n	a3, .L4
	j	.L27
.L3:
	.loc 1 35 0 discriminator 1
	l32i.n	a8, a6, 8
	add.n	a8, a9, a8
	bgeu	a7, a8, .L7
	j	.L6
.L4:
	.loc 1 37 0 discriminator 2
	call8	esp_log_timestamp
.LVL7:
	s32i.n	a7, sp, 8
	l32i.n	a2, a6, 8
.LVL8:
	l32r	a11, .LC6
	s32i.n	a2, sp, 4
	l32i.n	a2, a6, 4
	l32r	a12, .LC8
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
.L27:
	.loc 1 40 0 discriminator 2
	movi	a2, 0x104
	retw.n
.LVL10:
.L2:
.LBE3:
	.loc 1 42 0
	l32r	a8, .LC9
	extui	a8, a8, 0, 16
	bne	a9, a8, .L8
.LBB4:
	.loc 1 43 0
	beqz.n	a15, .L9
	.loc 1 44 0
	beqz.n	a3, .L11
	.loc 1 45 0 discriminator 2
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC6
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC11
	j	.L26
.LVL12:
.L9:
	.loc 1 52 0
	addi	a10, sp, 16
	s32i	a12, sp, 128
	call8	MD5Init
.LVL13:
	.loc 1 53 0
	l32i	a12, sp, 128
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	MD5Update
.LVL14:
	.loc 1 54 0
	addi	a11, sp, 16
	addi	a10, sp, 104
	call8	MD5Final
.LVL15:
	.loc 1 58 0
	movi.n	a12, 0x10
	addi	a11, sp, 104
	add.n	a10, a6, a12
.LVL16:
	call8	memcmp
.LVL17:
	beqz.n	a10, .L12
	.loc 1 59 0
	beqz.n	a3, .L11
	.loc 1 60 0 discriminator 2
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC6
	l32r	a12, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
.LVL19:
.L26:
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	j	.L11
.LVL21:
.L12:
	.loc 1 66 0
	movi.n	a15, 1
.LBE4:
	j	.L7
.LVL22:
.L11:
.LBB5:
	.loc 1 47 0 discriminator 1
	movi	a2, 0x103
.LVL23:
	retw.n
.LVL24:
.L8:
.LBE5:
	.loc 1 67 0
	l32i.n	a2, a6, 0
.LVL25:
	bnei	a2, -1, .L13
	.loc 1 71 0
	sub	a15, a5, a15
.LVL26:
	s32i.n	a15, a4, 0
	.loc 1 72 0
	movi.n	a2, 0
	retw.n
.LVL27:
.L13:
	.loc 1 77 0
	movi	a2, 0x103
	.loc 1 74 0
	beqz.n	a3, .L5
	.loc 1 75 0 discriminator 2
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC6
	l16ui	a3, a6, 0
.LVL29:
	l32r	a12, .LC15
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	retw.n
.LVL31:
.L7:
.LBE2:
	.loc 1 30 0 discriminator 2
	addi.n	a5, a5, 1
.LVL32:
	movi	a8, 0x60
	addi	a6, a6, 32
.LVL33:
	bne	a5, a8, .L14
.LBB6:
	.loc 1 77 0
	movi	a2, 0x103
.LVL34:
.LBE6:
	.loc 1 81 0
	beqz.n	a3, .L5
	.loc 1 82 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC6
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
.L5:
	.loc 1 85 0
	retw.n
.LFE1:
	.size	esp_partition_table_verify, .-esp_partition_table_verify
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/md5_hash.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x52b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0xcc
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x2f
	.4byte	0x10e
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.4byte	0xd7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x31
	.4byte	0xd7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x32
	.4byte	0xed
	.uleb128 0x7
	.byte	0x20
	.byte	0x5
	.byte	0x37
	.4byte	0x16a
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.4byte	0xc1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x39
	.4byte	0xb6
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3a
	.4byte	0xb6
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x5
	.byte	0x3b
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3c
	.4byte	0x16a
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x3d
	.4byte	0xd7
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xb6
	.4byte	0x17a
	.uleb128 0xb
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3e
	.4byte	0x119
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x1b6
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x18
	.byte	0x6
	.byte	0x8f
	.4byte	0x207
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x90
	.4byte	0xd7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x91
	.4byte	0xd7
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x92
	.4byte	0xd7
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x93
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x94
	.4byte	0xd7
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.byte	0x95
	.4byte	0xd7
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x96
	.4byte	0x1b6
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x58
	.byte	0x7
	.byte	0x18
	.4byte	0x242
	.uleb128 0x9
	.string	"buf"
	.byte	0x7
	.byte	0x19
	.4byte	0x242
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1a
	.4byte	0x252
	.byte	0x10
	.uleb128 0x9
	.string	"in"
	.byte	0x7
	.byte	0x1b
	.4byte	0x262
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0xd7
	.4byte	0x252
	.uleb128 0xb
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0xd7
	.4byte	0x262
	.uleb128 0xb
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xb6
	.4byte	0x272
	.uleb128 0xb
	.4byte	0x90
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x17
	.4byte	0xe2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x496
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x17
	.4byte	0x496
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x17
	.4byte	0x4a1
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x17
	.4byte	0x4a8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1b
	.4byte	0xd7
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.4byte	0x462
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1f
	.4byte	0x496
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x35d
	.uleb128 0x16
	.string	"pos"
	.byte	0x1
	.byte	0x22
	.4byte	0x4ae
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0x4ec
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0x4f7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x421
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x32
	.4byte	0x212
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x33
	.4byte	0x4b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x38
	.4byte	0x9e
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x4ec
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x502
	.4byte	0x3b1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x50d
	.4byte	0x3cc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x518
	.4byte	0x3e8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x523
	.4byte	0x408
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x4ec
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x4f7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x4ec
	.uleb128 0x18
	.4byte	.LVL30
	.4byte	0x4f7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x4ec
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x4f7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49c
	.uleb128 0x6
	.4byte	0x17a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF52
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4b4
	.uleb128 0x6
	.4byte	0x10e
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x4c9
	.uleb128 0xb
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x15
	.4byte	0x4db
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x220
	.4byte	0x207
	.uleb128 0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1d
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x1e
	.uleb128 0x1d
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x1f
	.uleb128 0x1d
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x20
	.uleb128 0x1d
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
	.byte	0x16
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x18
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
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
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x76
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"MD5Init"
.LASF45:
	.string	"num_partitions"
.LASF39:
	.string	"page_size"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/flash_partitions.c"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"type"
.LASF10:
	.string	"long long unsigned int"
.LASF46:
	.string	"md5_found"
.LASF38:
	.string	"sector_size"
.LASF33:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"esp_partition_pos_t"
.LASF44:
	.string	"log_errors"
.LASF42:
	.string	"bits"
.LASF11:
	.string	"long int"
.LASF54:
	.string	"esp_log_write"
.LASF16:
	.string	"uint16_t"
.LASF40:
	.string	"status_mask"
.LASF41:
	.string	"esp_rom_spiflash_chip_t"
.LASF8:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"block_size"
.LASF13:
	.string	"long unsigned int"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"digest"
.LASF26:
	.string	"label"
.LASF25:
	.string	"subtype"
.LASF64:
	.string	"g_rom_flashchip"
.LASF32:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"esp_partition_info_t"
.LASF51:
	.string	"md5sum"
.LASF12:
	.string	"sizetype"
.LASF57:
	.string	"MD5Final"
.LASF56:
	.string	"MD5Update"
.LASF47:
	.string	"num_parts"
.LASF52:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"magic"
.LASF53:
	.string	"esp_log_timestamp"
.LASF30:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"uint32_t"
.LASF63:
	.string	"esp_partition_table_verify"
.LASF14:
	.string	"char"
.LASF34:
	.string	"ESP_LOG_VERBOSE"
.LASF35:
	.string	"device_id"
.LASF6:
	.string	"__uint16_t"
.LASF29:
	.string	"ESP_LOG_NONE"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF7:
	.string	"__int32_t"
.LASF58:
	.string	"memcmp"
.LASF20:
	.string	"offset"
.LASF49:
	.string	"context"
.LASF62:
	.string	"MD5Context"
.LASF48:
	.string	"part"
.LASF36:
	.string	"chip_size"
.LASF31:
	.string	"ESP_LOG_WARN"
.LASF19:
	.string	"esp_err_t"
.LASF15:
	.string	"uint8_t"
.LASF27:
	.string	"flags"
.LASF43:
	.string	"partition_table"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
