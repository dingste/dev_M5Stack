	.file	"esp_efuse_api.c"
	.text
.Ltext0:
	.section	.text.esp_efuse_set_write_protect,"ax",@progbits
	.literal_position
	.literal .LC0, ESP_EFUSE_WR_DIS_BLK1
	.literal .LC1, ESP_EFUSE_WR_DIS_BLK2
	.literal .LC2, ESP_EFUSE_WR_DIS_BLK3
	.align	4
	.global	esp_efuse_set_write_protect
	.type	esp_efuse_set_write_protect, @function
esp_efuse_set_write_protect:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/efuse/src/esp32/esp_efuse_api.c"
	.loc 1 26 1 view -0
	.loc 1 26 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 27 5 is_stmt 1 view .LVU2
	.loc 1 26 1 is_stmt 0 view .LVU3
	mov.n	a11, a2
	.loc 1 28 16 view .LVU4
	l32r	a10, .LC0
	.loc 1 27 8 view .LVU5
	beqi	a2, 1, .L6
.L2:
	.loc 1 29 12 is_stmt 1 view .LVU6
	.loc 1 29 15 is_stmt 0 view .LVU7
	bnei	a2, 2, .L4
	.loc 1 30 9 is_stmt 1 view .LVU8
	.loc 1 30 16 is_stmt 0 view .LVU9
	movi.n	a11, 1
	l32r	a10, .LC1
	j	.L6
.L4:
	.loc 1 31 12 is_stmt 1 view .LVU10
	.loc 1 34 12 is_stmt 0 view .LVU11
	movi	a10, 0x106
	.loc 1 31 15 view .LVU12
	bnei	a2, 3, .L1
	.loc 1 32 9 is_stmt 1 view .LVU13
	.loc 1 32 16 is_stmt 0 view .LVU14
	l32r	a10, .LC2
	movi.n	a11, 1
.L6:
	call8	esp_efuse_write_field_cnt
.LVL1:
.L1:
	.loc 1 35 1 view .LVU15
	mov.n	a2, a10
.LVL2:
	.loc 1 35 1 view .LVU16
	retw.n
.LFE3:
	.size	esp_efuse_set_write_protect, .-esp_efuse_set_write_protect
	.section	.text.esp_efuse_set_read_protect,"ax",@progbits
	.literal_position
	.literal .LC3, ESP_EFUSE_RD_DIS_BLK1
	.literal .LC4, ESP_EFUSE_RD_DIS_BLK2
	.literal .LC5, ESP_EFUSE_RD_DIS_BLK3
	.align	4
	.global	esp_efuse_set_read_protect
	.type	esp_efuse_set_read_protect, @function
esp_efuse_set_read_protect:
.LVL3:
.LFB4:
	.loc 1 39 1 is_stmt 1 view -0
	.loc 1 39 1 is_stmt 0 view .LVU18
	entry	sp, 32
.LCFI1:
	.loc 1 40 5 is_stmt 1 view .LVU19
	.loc 1 39 1 is_stmt 0 view .LVU20
	mov.n	a11, a2
	.loc 1 41 16 view .LVU21
	l32r	a10, .LC3
	.loc 1 40 8 view .LVU22
	beqi	a2, 1, .L12
.L8:
	.loc 1 42 12 is_stmt 1 view .LVU23
	.loc 1 42 15 is_stmt 0 view .LVU24
	bnei	a2, 2, .L10
	.loc 1 43 9 is_stmt 1 view .LVU25
	.loc 1 43 16 is_stmt 0 view .LVU26
	movi.n	a11, 1
	l32r	a10, .LC4
	j	.L12
.L10:
	.loc 1 44 12 is_stmt 1 view .LVU27
	.loc 1 47 12 is_stmt 0 view .LVU28
	movi	a10, 0x106
	.loc 1 44 15 view .LVU29
	bnei	a2, 3, .L7
	.loc 1 45 9 is_stmt 1 view .LVU30
	.loc 1 45 16 is_stmt 0 view .LVU31
	l32r	a10, .LC5
	movi.n	a11, 1
.L12:
	call8	esp_efuse_write_field_cnt
.LVL4:
.L7:
	.loc 1 48 1 view .LVU32
	mov.n	a2, a10
.LVL5:
	.loc 1 48 1 view .LVU33
	retw.n
.LFE4:
	.size	esp_efuse_set_read_protect, .-esp_efuse_set_read_protect
	.section	.text.esp_efuse_get_coding_scheme,"ax",@progbits
	.literal_position
	.literal .LC6, 1073061912
	.align	4
	.global	esp_efuse_get_coding_scheme
	.type	esp_efuse_get_coding_scheme, @function
esp_efuse_get_coding_scheme:
.LVL6:
.LFB5:
	.loc 1 52 1 is_stmt 1 view -0
	.loc 1 52 1 is_stmt 0 view .LVU35
	entry	sp, 32
.LCFI2:
	.loc 1 53 5 is_stmt 1 view .LVU36
	.loc 1 54 5 view .LVU37
	.loc 1 55 16 is_stmt 0 view .LVU38
	movi.n	a8, 0
	.loc 1 54 8 view .LVU39
	beq	a2, a8, .L13
.LBB2:
	.loc 1 57 9 is_stmt 1 view .LVU40
.LBB3:
	.loc 1 57 37 view .LVU41
	.loc 1 57 42 view .LVU42
	.loc 1 57 33 view .LVU43
	.loc 1 57 46 view .LVU44
	.loc 1 57 48 view .LVU45
.LBB4:
	.loc 1 57 53 view .LVU46
	.loc 1 57 58 view .LVU47
	.loc 1 57 33 view .LVU48
	.loc 1 57 46 view .LVU49
	.loc 1 57 48 view .LVU50
	.loc 1 57 49 is_stmt 0 view .LVU51
	l32r	a8, .LC6
	memw
	l32i.n	a8, a8, 0
.LBE4:
	.loc 1 57 107 view .LVU52
	extui	a8, a8, 0, 2
.LVL7:
	.loc 1 57 107 view .LVU53
.LBE3:
	.loc 1 58 9 is_stmt 1 view .LVU54
	.loc 1 58 12 is_stmt 0 view .LVU55
	beqz.n	a8, .L16
	beqi	a8, 3, .L16
	.loc 1 61 16 is_stmt 1 view .LVU56
	.loc 1 64 20 is_stmt 0 view .LVU57
	addi.n	a8, a8, -1
.LVL8:
	.loc 1 64 20 view .LVU58
	movi.n	a10, 1
	movi.n	a9, 2
	moveqz	a9, a10, a8
	mov.n	a8, a9
.LVL9:
	.loc 1 64 20 view .LVU59
	j	.L13
.LVL10:
.L16:
	.loc 1 64 20 view .LVU60
.LBE2:
	.loc 1 55 16 view .LVU61
	movi.n	a8, 0
.LVL11:
.L13:
	.loc 1 69 1 view .LVU62
	mov.n	a2, a8
.LVL12:
	.loc 1 69 1 view .LVU63
	retw.n
.LFE5:
	.size	esp_efuse_get_coding_scheme, .-esp_efuse_get_coding_scheme
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 10 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 11 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/Development/esp-idf/components/efuse/include/esp32/esp_efuse.h"
	.file 13 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
	.file 14 "/home/dieter/Development/esp-idf/components/efuse/esp32/include/esp_efuse_table.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd5e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0xc
	.4byte	.LASF193
	.4byte	.LASF194
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
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x78
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
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xd7
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x78
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x125
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xf6
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x125
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x135
	.uleb128 0xa
	.4byte	0x78
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x159
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0x103
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x171
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1de
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1de
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x65
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1e4
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x184
	.uleb128 0x9
	.4byte	0x178
	.4byte	0x1f4
	.uleb128 0xa
	.4byte	0x78
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x277
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x65
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x65
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2bc
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2bc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2bc
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x178
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x178
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x2cc
	.uleb128 0xa
	.4byte	0x78
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x30e
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x30e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x314
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x32b
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2cc
	.uleb128 0x9
	.4byte	0x324
	.4byte	0x324
	.uleb128 0xa
	.4byte	0x78
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x277
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x359
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x359
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3d2
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x359
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x331
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x536
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x35f
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x536
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x78e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x78e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x78e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x69d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8f6
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8fc
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x90d
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x65
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x65
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x69d
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x913
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x919
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x69d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x92a
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x30e
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2cc
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x74f
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x78e
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x936
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x69d
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x67f
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x359
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x331
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x536
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0xbd
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6af
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6de
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x702
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x71c
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x331
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x359
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x65
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x722
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x732
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x331
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x65
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xde
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x165
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x159
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x65
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x69d
	.uleb128 0x18
	.4byte	0x536
	.uleb128 0x18
	.4byte	0xbd
	.uleb128 0x18
	.4byte	0x69d
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF97
	.uleb128 0x13
	.4byte	0x6a3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x6d3
	.uleb128 0x18
	.4byte	0x536
	.uleb128 0x18
	.4byte	0xbd
	.uleb128 0x18
	.4byte	0x6d3
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6aa
	.uleb128 0x13
	.4byte	0x6d3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6b5
	.uleb128 0x17
	.4byte	0xea
	.4byte	0x702
	.uleb128 0x18
	.4byte	0x536
	.uleb128 0x18
	.4byte	0xbd
	.uleb128 0x18
	.4byte	0xea
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x71c
	.uleb128 0x18
	.4byte	0x536
	.uleb128 0x18
	.4byte	0xbd
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x708
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x732
	.uleb128 0xa
	.4byte	0x78
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x742
	.uleb128 0xa
	.4byte	0x78
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x53c
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x788
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x788
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x78e
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x742
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7db
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7db
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7db
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x7eb
	.uleb128 0xa
	.4byte	0x78
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x832
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1de
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1de
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x832
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8e1
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x69d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x159
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x159
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x159
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8e1
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x65
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x159
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x159
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x159
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x159
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x159
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x6a3
	.4byte	0x8f1
	.uleb128 0xa
	.4byte	0x78
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF195
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7eb
	.uleb128 0x1a
	.4byte	0x90d
	.uleb128 0x18
	.4byte	0x536
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x902
	.uleb128 0xf
	.byte	0x4
	.4byte	0x794
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x1a
	.4byte	0x92a
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x930
	.uleb128 0xf
	.byte	0x4
	.4byte	0x91f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x838
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3d2
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3d2
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3d2
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x536
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x69d
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0x18
	.byte	0x11
	.4byte	0xa5
	.uleb128 0x9
	.4byte	0x6d9
	.4byte	0x998
	.uleb128 0xa
	.4byte	0x78
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.4byte	0x988
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xa
	.byte	0x8e
	.byte	0x1a
	.4byte	0x998
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x78
	.byte	0xb
	.byte	0x23
	.byte	0xe
	.4byte	0x9dc
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x78
	.byte	0xc
	.byte	0x18
	.byte	0xe
	.4byte	0xa09
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xc
	.byte	0x1e
	.byte	0x3
	.4byte	0x9dc
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x78
	.byte	0xc
	.byte	0x23
	.byte	0xe
	.4byte	0xa36
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xc
	.byte	0x27
	.byte	0x3
	.4byte	0xa15
	.uleb128 0xb
	.byte	0x4
	.byte	0xd
	.byte	0x28
	.byte	0x9
	.4byte	0xa76
	.uleb128 0x1f
	.4byte	.LASF196
	.byte	0xd
	.byte	0x29
	.byte	0x17
	.4byte	0xa09
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xd
	.byte	0x2a
	.byte	0xd
	.4byte	0x8d
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.4byte	0x99
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.4byte	0xa42
	.uleb128 0x13
	.4byte	0xa76
	.uleb128 0x9
	.4byte	0xa92
	.4byte	0xa92
	.uleb128 0x20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa82
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0xe
	.byte	0x1b
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0xe
	.byte	0x1c
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0xe
	.byte	0x1d
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0xe
	.byte	0x1e
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0xe
	.byte	0x1f
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0xe
	.byte	0x20
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0xe
	.byte	0x21
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0xe
	.byte	0x22
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0xe
	.byte	0x23
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0xe
	.byte	0x24
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0xe
	.byte	0x25
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0xe
	.byte	0x26
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0xe
	.byte	0x27
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0xe
	.byte	0x28
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0xe
	.byte	0x29
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0xe
	.byte	0x2a
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0xe
	.byte	0x2b
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0xe
	.byte	0x2c
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0xe
	.byte	0x2d
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0xe
	.byte	0x2e
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0xe
	.byte	0x2f
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0xe
	.byte	0x30
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0xe
	.byte	0x31
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0xe
	.byte	0x32
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0xe
	.byte	0x33
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xe
	.byte	0x34
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0xe
	.byte	0x35
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0xe
	.byte	0x36
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0xe
	.byte	0x37
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0xe
	.byte	0x38
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0xe
	.byte	0x39
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF181
	.byte	0xe
	.byte	0x3a
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0xe
	.byte	0x3b
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0xe
	.byte	0x3c
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0xe
	.byte	0x3d
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0xe
	.byte	0x3e
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0xe
	.byte	0x3f
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF187
	.byte	0xe
	.byte	0x40
	.byte	0x20
	.4byte	0xa87
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.4byte	0x6d3
	.uleb128 0x22
	.4byte	.LASF189
	.byte	0x1
	.byte	0x33
	.byte	0x1b
	.4byte	0xa36
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd0
	.uleb128 0x23
	.string	"blk"
	.byte	0x1
	.byte	0x33
	.byte	0x49
	.4byte	0xa09
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x1
	.byte	0x35
	.byte	0x1f
	.4byte	0xa36
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x25
	.4byte	.LASF198
	.4byte	0xce0
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x27
	.4byte	.LASF188
	.byte	0x1
	.byte	0x39
	.byte	0x12
	.4byte	0xb1
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x6aa
	.4byte	0xce0
	.uleb128 0xa
	.4byte	0x78
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.4byte	0xcd0
	.uleb128 0x22
	.4byte	.LASF190
	.byte	0x1
	.byte	0x26
	.byte	0xb
	.4byte	0x97c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1d
	.uleb128 0x23
	.string	"blk"
	.byte	0x1
	.byte	0x26
	.byte	0x38
	.4byte	0xa09
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0xd55
	.byte	0
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.4byte	0x97c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd55
	.uleb128 0x23
	.string	"blk"
	.byte	0x1
	.byte	0x19
	.byte	0x39
	.4byte	0xa09
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xd55
	.byte	0
	.uleb128 0x29
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xd
	.byte	0x6e
	.byte	0xb
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
	.uleb128 0x39
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x39
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x39
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS2:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU53
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU62
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE3
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF166:
	.string	"ESP_EFUSE_WR_DIS_BLK1"
.LASF167:
	.string	"ESP_EFUSE_WR_DIS_BLK2"
.LASF168:
	.string	"ESP_EFUSE_WR_DIS_BLK3"
.LASF190:
	.string	"esp_efuse_set_read_protect"
.LASF82:
	.string	"_misc"
.LASF15:
	.string	"_lock_t"
.LASF44:
	.string	"_on_exit_args"
.LASF87:
	.string	"_write"
.LASF115:
	.string	"_wctomb_state"
.LASF173:
	.string	"ESP_EFUSE_CHIP_VER_DIS_BT"
.LASF75:
	.string	"_r48"
.LASF191:
	.string	"esp_efuse_set_write_protect"
.LASF83:
	.string	"_signal_buf"
.LASF8:
	.string	"unsigned int"
.LASF184:
	.string	"ESP_EFUSE_ADC2_TP_LOW"
.LASF146:
	.string	"esp_efuse_coding_scheme_t"
.LASF59:
	.string	"_lbfsize"
.LASF57:
	.string	"_flags"
.LASF6:
	.string	"__int32_t"
.LASF62:
	.string	"_errno"
.LASF193:
	.string	"/home/dieter/Development/esp-idf/components/efuse/src/esp32/esp_efuse_api.c"
.LASF135:
	.string	"ESP_LOG_DEBUG"
.LASF125:
	.string	"__sf_fake_stdout"
.LASF16:
	.string	"_LOCK_RECURSIVE_T"
.LASF86:
	.string	"_read"
.LASF119:
	.string	"_mbrlen_state"
.LASF64:
	.string	"_stdout"
.LASF189:
	.string	"esp_efuse_get_coding_scheme"
.LASF19:
	.string	"_fpos_t"
.LASF188:
	.string	"coding_scheme"
.LASF51:
	.string	"_fns"
.LASF85:
	.string	"_cookie"
.LASF33:
	.string	"_Bigint"
.LASF41:
	.string	"__tm_wday"
.LASF186:
	.string	"ESP_EFUSE_ADC2_TP_HIGH"
.LASF108:
	.string	"_result"
.LASF14:
	.string	"uint32_t"
.LASF37:
	.string	"__tm_hour"
.LASF174:
	.string	"ESP_EFUSE_CHIP_VER_PKG"
.LASF182:
	.string	"ESP_EFUSE_ADC_VREF_AND_SDIO_DREF"
.LASF23:
	.string	"__count"
.LASF164:
	.string	"ESP_EFUSE_FLASH_CRYPT_CNT"
.LASF36:
	.string	"__tm_min"
.LASF81:
	.string	"__sf"
.LASF144:
	.string	"EFUSE_CODING_SCHEME_3_4"
.LASF102:
	.string	"_rand48"
.LASF109:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF77:
	.string	"_asctime_buf"
.LASF84:
	.string	"__sFILE"
.LASF32:
	.string	"_wds"
.LASF4:
	.string	"__uint16_t"
.LASF151:
	.string	"ESP_EFUSE_MAC_FACTORY_CRC"
.LASF98:
	.string	"__FILE"
.LASF93:
	.string	"_offset"
.LASF90:
	.string	"_ubuf"
.LASF150:
	.string	"ESP_EFUSE_MAC_FACTORY"
.LASF67:
	.string	"_emergency"
.LASF157:
	.string	"ESP_EFUSE_ENCRYPT_FLASH_KEY"
.LASF199:
	.string	"esp_efuse_write_field_cnt"
.LASF35:
	.string	"__tm_sec"
.LASF128:
	.string	"suboptarg"
.LASF42:
	.string	"__tm_yday"
.LASF66:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF29:
	.string	"_next"
.LASF121:
	.string	"_mbsrtowcs_state"
.LASF187:
	.string	"ESP_EFUSE_SECURE_VERSION"
.LASF131:
	.string	"ESP_LOG_NONE"
.LASF24:
	.string	"__value"
.LASF147:
	.string	"bit_start"
.LASF110:
	.string	"_p5s"
.LASF123:
	.string	"_wcsrtombs_state"
.LASF114:
	.string	"_mblen_state"
.LASF143:
	.string	"EFUSE_CODING_SCHEME_NONE"
.LASF97:
	.string	"char"
.LASF38:
	.string	"__tm_mday"
.LASF78:
	.string	"_sig_func"
.LASF120:
	.string	"_mbrtowc_state"
.LASF26:
	.string	"_flock_t"
.LASF21:
	.string	"__wch"
.LASF101:
	.string	"_iobs"
.LASF11:
	.string	"uint8_t"
.LASF52:
	.string	"_on_exit_args_ptr"
.LASF89:
	.string	"_close"
.LASF68:
	.string	"__sdidinit"
.LASF56:
	.string	"__sFILE_fake"
.LASF165:
	.string	"ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT"
.LASF63:
	.string	"_stdin"
.LASF72:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF54:
	.string	"_base"
.LASF111:
	.string	"_freelist"
.LASF104:
	.string	"_mult"
.LASF28:
	.string	"__ULong"
.LASF196:
	.string	"efuse_block"
.LASF122:
	.string	"_wcrtomb_state"
.LASF58:
	.string	"_file"
.LASF130:
	.string	"exc_cause_table"
.LASF169:
	.string	"ESP_EFUSE_RD_DIS_BLK1"
.LASF170:
	.string	"ESP_EFUSE_RD_DIS_BLK2"
.LASF171:
	.string	"ESP_EFUSE_RD_DIS_BLK3"
.LASF152:
	.string	"ESP_EFUSE_MAC_CUSTOM_CRC"
.LASF142:
	.string	"esp_efuse_block_t"
.LASF71:
	.string	"__cleanup"
.LASF25:
	.string	"_mbstate_t"
.LASF107:
	.string	"_mprec"
.LASF43:
	.string	"__tm_isdst"
.LASF134:
	.string	"ESP_LOG_INFO"
.LASF162:
	.string	"ESP_EFUSE_DISABLE_JTAG"
.LASF185:
	.string	"ESP_EFUSE_ADC1_TP_HIGH"
.LASF181:
	.string	"ESP_EFUSE_SDIO_FORCE"
.LASF145:
	.string	"EFUSE_CODING_SCHEME_REPEAT"
.LASF163:
	.string	"ESP_EFUSE_CONSOLE_DEBUG_DISABLE"
.LASF39:
	.string	"__tm_mon"
.LASF12:
	.string	"uint16_t"
.LASF79:
	.string	"_atexit0"
.LASF49:
	.string	"_atexit"
.LASF95:
	.string	"_mbstate"
.LASF198:
	.string	"__func__"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"long int"
.LASF31:
	.string	"_sign"
.LASF179:
	.string	"ESP_EFUSE_XPD_SDIO_REG"
.LASF176:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_RATED"
.LASF183:
	.string	"ESP_EFUSE_ADC1_TP_LOW"
.LASF175:
	.string	"ESP_EFUSE_CHIP_CPU_FREQ_LOW"
.LASF60:
	.string	"_data"
.LASF22:
	.string	"__wchb"
.LASF127:
	.string	"_global_impure_ptr"
.LASF40:
	.string	"__tm_year"
.LASF149:
	.string	"esp_efuse_desc_t"
.LASF177:
	.string	"ESP_EFUSE_CHIP_VER_REV1"
.LASF178:
	.string	"ESP_EFUSE_CHIP_VER_REV2"
.LASF141:
	.string	"EFUSE_BLK_MAX"
.LASF112:
	.string	"_misc_reent"
.LASF132:
	.string	"ESP_LOG_ERROR"
.LASF76:
	.string	"_localtime_buf"
.LASF158:
	.string	"ESP_EFUSE_ENCRYPT_CONFIG"
.LASF3:
	.string	"__uint8_t"
.LASF73:
	.string	"_cvtlen"
.LASF30:
	.string	"_maxwds"
.LASF117:
	.string	"_l64a_buf"
.LASF137:
	.string	"EFUSE_BLK0"
.LASF138:
	.string	"EFUSE_BLK1"
.LASF139:
	.string	"EFUSE_BLK2"
.LASF140:
	.string	"EFUSE_BLK3"
.LASF161:
	.string	"ESP_EFUSE_DISABLE_DL_CACHE"
.LASF92:
	.string	"_blksize"
.LASF34:
	.string	"__tm"
.LASF180:
	.string	"ESP_EFUSE_SDIO_TIEH"
.LASF94:
	.string	"_lock"
.LASF153:
	.string	"ESP_EFUSE_MAC_CUSTOM"
.LASF27:
	.string	"long unsigned int"
.LASF136:
	.string	"ESP_LOG_VERBOSE"
.LASF100:
	.string	"_niobs"
.LASF192:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF159:
	.string	"ESP_EFUSE_DISABLE_DL_ENCRYPT"
.LASF13:
	.string	"int32_t"
.LASF160:
	.string	"ESP_EFUSE_DISABLE_DL_DECRYPT"
.LASF46:
	.string	"_dso_handle"
.LASF74:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF133:
	.string	"ESP_LOG_WARN"
.LASF7:
	.string	"__uint32_t"
.LASF118:
	.string	"_getdate_err"
.LASF105:
	.string	"_add"
.LASF194:
	.string	"/home/dieter/Development/ProjektEi/build/efuse"
.LASF129:
	.string	"esp_err_t"
.LASF53:
	.string	"__sbuf"
.LASF99:
	.string	"_glue"
.LASF80:
	.string	"__sglue"
.LASF113:
	.string	"_strtok_last"
.LASF116:
	.string	"_mbtowc_state"
.LASF70:
	.string	"_locale"
.LASF45:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF61:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF197:
	.string	"scheme"
.LASF47:
	.string	"_fntypes"
.LASF55:
	.string	"_size"
.LASF156:
	.string	"ESP_EFUSE_ABS_DONE_0"
.LASF18:
	.string	"_off_t"
.LASF91:
	.string	"_nbuf"
.LASF154:
	.string	"ESP_EFUSE_MAC_CUSTOM_VER"
.LASF69:
	.string	"_unspecified_locale_info"
.LASF126:
	.string	"__sf_fake_stderr"
.LASF96:
	.string	"_flags2"
.LASF48:
	.string	"_is_cxa"
.LASF172:
	.string	"ESP_EFUSE_CHIP_VER_DIS_APP_CPU"
.LASF103:
	.string	"_seed"
.LASF106:
	.string	"_rand_next"
.LASF195:
	.string	"__locale_t"
.LASF88:
	.string	"_seek"
.LASF65:
	.string	"_stderr"
.LASF20:
	.string	"wint_t"
.LASF148:
	.string	"bit_count"
.LASF124:
	.string	"__sf_fake_stdin"
.LASF155:
	.string	"ESP_EFUSE_SECURE_BOOT_KEY"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
