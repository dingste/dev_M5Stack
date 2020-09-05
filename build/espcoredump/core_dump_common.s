	.file	"core_dump_common.c"
	.text
.Ltext0:
	.section	.text.esp_core_dump_init,"ax",@progbits
	.align	4
	.global	esp_core_dump_init
	.type	esp_core_dump_init, @function
esp_core_dump_init:
.LFB28:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/espcoredump/src/core_dump_common.c"
	.loc 1 157 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE28:
	.size	esp_core_dump_init, .-esp_core_dump_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\033[0;31mE (%d) %s: No core dump partition found!\033[0m\n"
.LC3:
	.string	"\033[0;31mE (%d) %s: Too small core dump partition!\033[0m\n"
.LC5:
	.string	"\033[0;31mE (%d) %s: Failed to mmap core dump data (%d)!\033[0m\n"
.LC7:
	.string	"\033[0;31mE (%d) %s: Core dump data CRC check failed: 0x%x -> 0x%x!\033[0m\n"
	.section	.text.esp_core_dump_image_get,"ax",@progbits
	.literal_position
	.literal .LC0, TAG
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	esp_core_dump_image_get
	.type	esp_core_dump_image_get, @function
esp_core_dump_image_get:
.LFB29:
	.loc 1 167 0
.LVL0:
	.loc 1 167 0
	entry	sp, 64
.LCFI1:
	.loc 1 167 0
	mov.n	a7, a2
	.loc 1 172 0
	movi.n	a5, 1
	movi.n	a2, 0
.LVL1:
	moveqz	a2, a5, a7
	extui	a2, a2, 0, 8
	bnez.n	a2, .L9
	moveqz	a2, a5, a3
	bnez.n	a2, .L9
	.loc 1 176 0
	mov.n	a12, a2
	movi.n	a11, 3
	mov.n	a10, a5
	call8	esp_partition_find_first
.LVL2:
	mov.n	a6, a10
.LVL3:
	.loc 1 177 0
	bnez.n	a10, .L4
	.loc 1 178 0 discriminator 2
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC0
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC2
	j	.L11
.L4:
	.loc 1 181 0
	l32i.n	a4, a10, 12
	bgeui	a4, 4, .L5
	.loc 1 182 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC0
	l32r	a12, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
.L11:
	mov.n	a10, a5
	call8	esp_log_write
.LVL6:
	j	.L10
.L5:
	.loc 1 186 0
	addi	a15, sp, 16
	addi	a14, sp, 20
	mov.n	a13, a2
	movi.n	a12, 4
	mov.n	a11, a2
	call8	esp_partition_mmap
.LVL7:
	mov.n	a4, a10
.LVL8:
	.loc 1 188 0
	beqz.n	a10, .L6
	.loc 1 189 0 discriminator 2
	call8	esp_log_timestamp
.LVL9:
	l32r	a11, .LC0
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL10:
	.loc 1 190 0 discriminator 2
	mov.n	a2, a4
	retw.n
.L6:
.LVL11:
	.loc 1 193 0
	l32i.n	a2, sp, 20
	.loc 1 194 0
	l32i.n	a10, sp, 16
	.loc 1 193 0
	l32i.n	a2, a2, 0
	s32i.n	a2, a3, 0
	.loc 1 194 0
	call8	spi_flash_munmap
.LVL12:
	.loc 1 197 0
	l32i.n	a12, a3, 0
	addi	a15, sp, 16
	addi	a14, sp, 20
	mov.n	a13, a4
	mov.n	a11, a4
	mov.n	a10, a6
	call8	esp_partition_mmap
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 199 0
	beqz.n	a10, .L7
	.loc 1 200 0 discriminator 2
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC0
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL16:
	.loc 1 201 0 discriminator 2
	retw.n
.L7:
	.loc 1 203 0
	l32i.n	a12, a3, 0
	l32i.n	a11, sp, 20
	add.n	a3, a11, a12
.LVL17:
	.loc 1 206 0
	addi	a12, a12, -4
	call8	crc32_le
.LVL18:
	.loc 1 207 0
	addi	a3, a3, -4
.LVL19:
	l32i.n	a8, a3, 0
	.loc 1 206 0
	mov.n	a4, a10
.LVL20:
	.loc 1 207 0
	beq	a10, a8, .L8
	.loc 1 208 0 discriminator 2
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC0
	s32i.n	a4, sp, 0
	l32i.n	a15, a3, 0
	l32r	a12, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL22:
	.loc 1 209 0 discriminator 2
	l32i.n	a10, sp, 16
	call8	spi_flash_munmap
.LVL23:
.L10:
	.loc 1 210 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL24:
.L8:
	.loc 1 213 0
	l32i.n	a10, sp, 16
	call8	spi_flash_munmap
.LVL25:
	.loc 1 215 0
	l32i.n	a3, a6, 8
.LVL26:
	s32i.n	a3, a7, 0
	.loc 1 216 0
	retw.n
.LVL27:
.L9:
	.loc 1 173 0
	movi	a2, 0x102
	.loc 1 217 0
	retw.n
.LFE29:
	.size	esp_core_dump_image_get, .-esp_core_dump_image_get
	.section	.dram1.14,"a",@progbits
	.type	TAG, @object
	.size	TAG, 21
TAG:
	.string	"esp_core_dump_common"
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/espcoredump/include_core_dump/esp_core_dump_priv.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/crc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x542
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x6
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0xb0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0xa1
	.4byte	0xf1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.4byte	0xbb
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x26
	.4byte	0x11c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x29
	.4byte	0x103
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x2f
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x82
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0x51
	.4byte	0x127
	.uleb128 0x9
	.byte	0x24
	.byte	0x7
	.byte	0x64
	.4byte	0x244
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x7
	.byte	0x65
	.4byte	0x11c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x7
	.byte	0x66
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x7
	.byte	0x67
	.4byte	0xbb
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x7
	.byte	0x68
	.4byte	0xbb
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.byte	0x69
	.4byte	0x244
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.byte	0x6a
	.4byte	0xfc
	.byte	0x21
	.byte	0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x254
	.uleb128 0xc
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x7
	.byte	0x6b
	.4byte	0x1f3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x290
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x9
	.byte	0x26
	.4byte	0xbb
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa6
	.4byte	0xcd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c5
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa6
	.4byte	0x4c5
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa6
	.4byte	0x4c5
	.4byte	.LLST1
	.uleb128 0x10
	.string	"err"
	.byte	0x1
	.byte	0xa8
	.4byte	0xcd
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa9
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0xaa
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.byte	0xb0
	.4byte	0x4cb
	.4byte	.LLST3
	.uleb128 0x10
	.string	"dw"
	.byte	0x1
	.byte	0xc0
	.4byte	0x4d6
	.4byte	.LLST4
	.uleb128 0x10
	.string	"crc"
	.byte	0x1
	.byte	0xcb
	.4byte	0x4d6
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.byte	0xce
	.4byte	0x290
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x502
	.4byte	0x368
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x50d
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x50d
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x518
	.4byte	0x38e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x523
	.4byte	0x3b9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x50d
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x518
	.4byte	0x3f7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x52f
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0x523
	.4byte	0x42c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x50d
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x518
	.4byte	0x46a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0x53a
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0x50d
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x518
	.4byte	0x4b2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x52f
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0x52f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d1
	.uleb128 0x16
	.4byte	0x254
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbb
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x4ec
	.uleb128 0xc
	.4byte	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x17
	.string	"TAG"
	.byte	0x1
	.byte	0x15
	.4byte	0x4fd
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x16
	.4byte	0x4dc
	.uleb128 0x18
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x7
	.byte	0x8b
	.uleb128 0x18
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0x57
	.uleb128 0x18
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0x6b
	.uleb128 0x19
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x11f
	.uleb128 0x18
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.byte	0xe9
	.uleb128 0x18
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xa
	.byte	0x54
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF81:
	.string	"spi_flash_munmap"
.LASF73:
	.string	"core_data"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/espcoredump/src/core_dump_common.c"
.LASF86:
	.string	"esp_core_dump_init"
.LASF26:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF61:
	.string	"label"
.LASF12:
	.string	"sizetype"
.LASF77:
	.string	"esp_partition_find_first"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/espcoredump"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF8:
	.string	"__uint32_t"
.LASF19:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF80:
	.string	"esp_partition_mmap"
.LASF15:
	.string	"uint8_t"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF17:
	.string	"uint32_t"
.LASF24:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_EFUSE_EM"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF25:
	.string	"esp_partition_type_t"
.LASF14:
	.string	"char"
.LASF11:
	.string	"long int"
.LASF63:
	.string	"esp_partition_t"
.LASF67:
	.string	"ESP_LOG_INFO"
.LASF4:
	.string	"__uint8_t"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF72:
	.string	"out_size"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF5:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF59:
	.string	"address"
.LASF71:
	.string	"out_addr"
.LASF57:
	.string	"type"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF23:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"SPI_FLASH_MMAP_INST"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF79:
	.string	"esp_log_write"
.LASF1:
	.string	"short unsigned int"
.LASF70:
	.string	"core_dump_crc_t"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF56:
	.string	"esp_partition_subtype_t"
.LASF68:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF64:
	.string	"ESP_LOG_NONE"
.LASF22:
	.string	"_Bool"
.LASF27:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF66:
	.string	"ESP_LOG_WARN"
.LASF74:
	.string	"core_data_handle"
.LASF87:
	.string	"esp_core_dump_image_get"
.LASF13:
	.string	"long unsigned int"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF60:
	.string	"size"
.LASF69:
	.string	"ESP_LOG_VERBOSE"
.LASF75:
	.string	"core_part"
.LASF7:
	.string	"__int32_t"
.LASF58:
	.string	"subtype"
.LASF78:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"encrypted"
.LASF76:
	.string	"cur_crc"
.LASF21:
	.string	"spi_flash_mmap_handle_t"
.LASF83:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF82:
	.string	"crc32_le"
.LASF65:
	.string	"ESP_LOG_ERROR"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF18:
	.string	"esp_err_t"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
