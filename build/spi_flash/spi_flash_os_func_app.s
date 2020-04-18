	.file	"spi_flash_os_func_app.c"
	.text
.Ltext0:
	.section	.iram1.2,"ax",@progbits
	.literal_position
	.literal .LC0, g_flash_guard_default_ops
	.align	4
	.type	spi1_start, @function
spi1_start:
.LVL0:
.LFB6:
	.file 1 "/home/dieter/Development/esp-idf/components/spi_flash/spi_flash_os_func_app.c"
	.loc 1 57 1 view -0
	.loc 1 57 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 58 5 is_stmt 1 view .LVU2
	.loc 1 58 30 is_stmt 0 view .LVU3
	l32r	a8, .LC0
	.loc 1 63 1 view .LVU4
	movi.n	a2, 0
.LVL1:
	.loc 1 58 5 view .LVU5
	l32i.n	a8, a8, 0
	callx8	a8
.LVL2:
	.loc 1 60 5 is_stmt 1 view .LVU6
	.loc 1 47 5 view .LVU7
	.loc 1 62 5 view .LVU8
	.loc 1 63 1 is_stmt 0 view .LVU9
	retw.n
.LFE6:
	.size	spi1_start, .-spi1_start
	.section	.iram1.3,"ax",@progbits
	.literal_position
	.literal .LC1, g_flash_guard_default_ops
	.align	4
	.type	spi1_end, @function
spi1_end:
.LVL3:
.LFB7:
	.loc 1 65 1 is_stmt 1 view -0
	.loc 1 65 1 is_stmt 0 view .LVU11
	entry	sp, 32
.LCFI1:
	.loc 1 66 5 is_stmt 1 view .LVU12
	.loc 1 66 30 is_stmt 0 view .LVU13
	l32r	a8, .LC1
	.loc 1 71 1 view .LVU14
	movi.n	a2, 0
.LVL4:
	.loc 1 66 5 view .LVU15
	l32i.n	a8, a8, 4
	callx8	a8
.LVL5:
	.loc 1 68 5 is_stmt 1 view .LVU16
	.loc 1 52 5 view .LVU17
	.loc 1 70 5 view .LVU18
	.loc 1 71 1 is_stmt 0 view .LVU19
	retw.n
.LFE7:
	.size	spi1_end, .-spi1_end
	.section	.text.spi23_start,"ax",@progbits
	.align	4
	.type	spi23_start, @function
spi23_start:
.LVL6:
.LFB8:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU21
	entry	sp, 32
.LCFI2:
	.loc 1 75 5 is_stmt 1 view .LVU22
.LVL7:
	.loc 1 47 5 view .LVU23
	.loc 1 76 5 view .LVU24
	.loc 1 77 1 is_stmt 0 view .LVU25
	movi.n	a2, 0
.LVL8:
	.loc 1 77 1 view .LVU26
	retw.n
.LFE8:
	.size	spi23_start, .-spi23_start
	.section	.iram1.4,"ax",@progbits
	.align	4
	.type	delay_ms, @function
delay_ms:
.LVL9:
.LFB10:
	.loc 1 86 1 is_stmt 1 view -0
	.loc 1 86 1 is_stmt 0 view .LVU28
	entry	sp, 32
.LCFI3:
	.loc 1 87 5 is_stmt 1 view .LVU29
	slli	a10, a3, 5
	sub	a10, a10, a3
	slli	a10, a10, 2
	add.n	a10, a10, a3
	slli	a10, a10, 3
	call8	ets_delay_us
.LVL10:
	.loc 1 88 5 view .LVU30
	.loc 1 89 1 is_stmt 0 view .LVU31
	movi.n	a2, 0
.LVL11:
	.loc 1 89 1 view .LVU32
	retw.n
.LFE10:
	.size	delay_ms, .-delay_ms
	.section	.iram1.5,"ax",@progbits
	.align	4
	.type	main_flash_region_protected, @function
main_flash_region_protected:
.LVL12:
.LFB11:
	.loc 1 92 1 is_stmt 1 view -0
	.loc 1 92 1 is_stmt 0 view .LVU34
	entry	sp, 32
.LCFI4:
	.loc 1 93 5 is_stmt 1 view .LVU35
	.loc 1 93 8 is_stmt 0 view .LVU36
	l8ui	a2, a2, 4
.LVL13:
	.loc 1 92 1 view .LVU37
	mov.n	a10, a3
	mov.n	a11, a4
	.loc 1 93 8 view .LVU38
	bnez.n	a2, .L6
	.loc 1 93 52 discriminator 1 view .LVU39
	call8	esp_partition_main_flash_region_safe
.LVL14:
	.loc 1 97 16 discriminator 1 view .LVU40
	movi	a2, 0x106
	.loc 1 93 49 discriminator 1 view .LVU41
	beqz.n	a10, .L5
.L6:
	.loc 1 95 16 view .LVU42
	movi.n	a2, 0
.L5:
	.loc 1 99 1 view .LVU43
	retw.n
.LFE11:
	.size	main_flash_region_protected, .-main_flash_region_protected
	.section	.text.spi23_end,"ax",@progbits
	.align	4
	.type	spi23_end, @function
spi23_end:
.LFB17:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0
	retw.n
.LFE17:
	.size	spi23_end, .-spi23_end
	.section	.text.esp_flash_init_os_functions,"ax",@progbits
	.literal_position
	.literal .LC2, spi2_arg
	.literal .LC3, spi3_arg
	.literal .LC4, esp_flash_spi1_default_os_functions
	.literal .LC5, spi1_arg
	.literal .LC6, esp_flash_spi23_default_os_functions
	.align	4
	.global	esp_flash_init_os_functions
	.type	esp_flash_init_os_functions, @function
esp_flash_init_os_functions:
.LVL15:
.LFB12:
	.loc 1 134 1 is_stmt 1 view -0
	.loc 1 134 1 is_stmt 0 view .LVU45
	entry	sp, 32
.LCFI6:
	.loc 1 135 5 is_stmt 1 view .LVU46
	.loc 1 134 1 is_stmt 0 view .LVU47
	mov.n	a8, a2
	.loc 1 135 8 view .LVU48
	bnez.n	a3, .L12
	.loc 1 137 9 is_stmt 1 view .LVU49
	.loc 1 137 23 is_stmt 0 view .LVU50
	l32r	a2, .LC4
.LVL16:
	.loc 1 137 23 view .LVU51
	s32i.n	a2, a8, 8
	.loc 1 138 9 is_stmt 1 view .LVU52
	.loc 1 138 28 is_stmt 0 view .LVU53
	l32r	a2, .LC5
	j	.L14
.LVL17:
.L12:
	.loc 1 139 12 is_stmt 1 view .LVU54
	.loc 1 139 29 is_stmt 0 view .LVU55
	addi.n	a9, a3, -1
	.loc 1 144 16 view .LVU56
	movi	a2, 0x102
.LVL18:
	.loc 1 139 15 view .LVU57
	bgeui	a9, 2, .L11
	.loc 1 141 9 is_stmt 1 view .LVU58
	.loc 1 141 23 is_stmt 0 view .LVU59
	l32r	a2, .LC6
	s32i.n	a2, a8, 8
	.loc 1 142 9 is_stmt 1 view .LVU60
	.loc 1 142 28 is_stmt 0 view .LVU61
	l32r	a2, .LC2
	beqi	a3, 1, .L14
	l32r	a2, .LC3
.L14:
	.loc 1 142 28 discriminator 4 view .LVU62
	s32i.n	a2, a8, 12
	.loc 1 146 12 discriminator 4 view .LVU63
	movi.n	a2, 0
.L11:
	.loc 1 147 1 view .LVU64
	retw.n
.LFE12:
	.size	esp_flash_init_os_functions, .-esp_flash_init_os_functions
	.section	.text.esp_flash_app_init_os_functions,"ax",@progbits
	.literal_position
	.literal .LC7, esp_flash_spi1_default_os_functions
	.literal .LC8, main_flash_arg
	.align	4
	.global	esp_flash_app_init_os_functions
	.type	esp_flash_app_init_os_functions, @function
esp_flash_app_init_os_functions:
.LVL19:
.LFB13:
	.loc 1 150 1 is_stmt 1 view -0
	.loc 1 150 1 is_stmt 0 view .LVU66
	entry	sp, 32
.LCFI7:
	.loc 1 151 5 is_stmt 1 view .LVU67
	.loc 1 151 19 is_stmt 0 view .LVU68
	l32r	a8, .LC7
	s32i.n	a8, a2, 8
	.loc 1 152 5 is_stmt 1 view .LVU69
	.loc 1 152 24 is_stmt 0 view .LVU70
	l32r	a8, .LC8
	s32i.n	a8, a2, 12
	.loc 1 153 5 is_stmt 1 view .LVU71
	.loc 1 154 1 is_stmt 0 view .LVU72
	movi.n	a2, 0
.LVL20:
	.loc 1 154 1 view .LVU73
	retw.n
.LFE13:
	.size	esp_flash_app_init_os_functions, .-esp_flash_app_init_os_functions
	.global	esp_flash_spi23_default_os_functions
	.section	.rodata.esp_flash_spi23_default_os_functions,"a"
	.align	4
	.type	esp_flash_spi23_default_os_functions, @object
	.size	esp_flash_spi23_default_os_functions, 16
esp_flash_spi23_default_os_functions:
	.word	spi23_start
	.word	spi23_end
	.zero	4
	.word	delay_ms
	.global	esp_flash_spi1_default_os_functions
	.section	.dram1.8,"a"
	.align	4
	.type	esp_flash_spi1_default_os_functions, @object
	.size	esp_flash_spi1_default_os_functions, 16
esp_flash_spi1_default_os_functions:
	.word	spi1_start
	.word	spi1_end
	.word	main_flash_region_protected
	.word	delay_ms
	.section	.data.spi3_arg,"aw"
	.align	4
	.type	spi3_arg, @object
	.size	spi3_arg, 4
spi3_arg:
	.word	2
	.section	.data.spi2_arg,"aw"
	.align	4
	.type	spi2_arg, @object
	.size	spi2_arg, 4
spi2_arg:
	.word	1
	.section	.dram1.7,"aw"
	.align	4
	.type	main_flash_arg, @object
	.size	main_flash_arg, 8
main_flash_arg:
	.zero	8
	.section	.dram1.6,"aw"
	.align	4
	.type	spi1_arg, @object
	.size	spi1_arg, 8
spi1_arg:
	.word	0
	.byte	1
	.zero	3
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
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
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI7-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 10 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 11 "/home/dieter/Development/esp-idf/components/soc/include/hal/spi_flash_types.h"
	.file 12 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_flash.h"
	.file 13 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11f8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0xc
	.4byte	.LASF214
	.4byte	.LASF215
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x41
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x27
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x35
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x56
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x27
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xcb
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xcb
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0x119
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xea
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0x119
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x129
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x14d
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x129
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xbf
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x165
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d2
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x27
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x27
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x178
	.uleb128 0x9
	.4byte	0x16c
	.4byte	0x1e8
	.uleb128 0xa
	.4byte	0x6e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x26b
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x27
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x27
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x27
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x27
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x27
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x27
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b0
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x16c
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x16c
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x25
	.4byte	0x2c0
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x302
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x302
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x27
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x308
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x31f
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x9
	.4byte	0x318
	.4byte	0x318
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26b
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x34d
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x34d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x27
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x41
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c6
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x48
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x48
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x27
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x353
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x52a
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x27
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x782
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x782
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x782
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x27
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x691
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x27
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x27
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ea
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x901
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x27
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x27
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x691
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x907
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x90d
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x691
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x91e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x302
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c0
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x743
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x782
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x691
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3cb
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x673
	.uleb128 0xe
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x34d
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x48
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x48
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x325
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x27
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x52a
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x25
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a3
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6f6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x710
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x325
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x34d
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x27
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x716
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x726
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x325
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x27
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xd2
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x159
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x14d
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x27
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x27
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x691
	.uleb128 0x18
	.4byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x697
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x13
	.4byte	0x697
	.uleb128 0xf
	.byte	0x4
	.4byte	0x673
	.uleb128 0x17
	.4byte	0x27
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69e
	.uleb128 0x13
	.4byte	0x6c7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	0xde
	.4byte	0x6f6
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0xde
	.uleb128 0x18
	.4byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x17
	.4byte	0x27
	.4byte	0x710
	.uleb128 0x18
	.4byte	0x52a
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6fc
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x726
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x736
	.uleb128 0xa
	.4byte	0x6e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x530
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x77c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x77c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x782
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x743
	.uleb128 0xf
	.byte	0x4
	.4byte	0x736
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7cf
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7cf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7cf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x4f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x7c
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x4f
	.4byte	0x7df
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x826
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x27
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x826
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d5
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x691
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x14d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x14d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x14d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x27
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x14d
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x14d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x14d
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x14d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x14d
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x697
	.4byte	0x8e5
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF177
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x1a
	.4byte	0x901
	.uleb128 0x18
	.4byte	0x52a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x788
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x1a
	.4byte	0x91e
	.uleb128 0x18
	.4byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x924
	.uleb128 0xf
	.byte	0x4
	.4byte	0x913
	.uleb128 0xf
	.byte	0x4
	.4byte	0x82c
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c6
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x96a
	.uleb128 0x1c
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x691
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x9
	.byte	0x18
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x147
	.byte	0x10
	.4byte	0x318
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x14b
	.byte	0x10
	.4byte	0x318
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x318
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x153
	.byte	0x10
	.4byte	0x318
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x157
	.byte	0xf
	.4byte	0x9c4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9ca
	.uleb128 0x17
	.4byte	0x9de
	.4byte	0x9de
	.uleb128 0x18
	.4byte	0xa7
	.uleb128 0x18
	.4byte	0xa7
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF134
	.uleb128 0x1e
	.byte	0x14
	.byte	0xa
	.2byte	0x178
	.byte	0x9
	.4byte	0xa36
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x179
	.byte	0x22
	.4byte	0x983
	.byte	0
	.uleb128 0x16
	.string	"end"
	.byte	0xa
	.2byte	0x17a
	.byte	0x20
	.4byte	0x990
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x17b
	.byte	0x1e
	.4byte	0x99d
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x17c
	.byte	0x20
	.4byte	0x9aa
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x17e
	.byte	0x27
	.4byte	0x9b7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x180
	.byte	0x3
	.4byte	0x9e5
	.uleb128 0x13
	.4byte	0xa36
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x197
	.byte	0x26
	.4byte	0xa43
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x19f
	.byte	0x26
	.4byte	0xa43
	.uleb128 0xb
	.byte	0x10
	.byte	0xb
	.byte	0x19
	.byte	0x9
	.4byte	0xaad
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xb
	.byte	0x1a
	.byte	0xd
	.4byte	0x83
	.byte	0
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xb
	.byte	0x1b
	.byte	0xd
	.4byte	0x83
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xb
	.byte	0x1c
	.byte	0xd
	.4byte	0x83
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xb
	.byte	0x1d
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xb
	.byte	0x1e
	.byte	0xe
	.4byte	0xaad
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x9b
	.4byte	0xabd
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0xb
	.byte	0x1f
	.byte	0x3
	.4byte	0xa62
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.4byte	0x6e
	.byte	0xb
	.byte	0x37
	.byte	0xe
	.4byte	0xb02
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF150
	.byte	0x2
	.uleb128 0x20
	.4byte	.LASF151
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0x4
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF154
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0xb
	.byte	0x40
	.byte	0x3
	.4byte	0xac9
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0xb
	.byte	0x46
	.byte	0x28
	.4byte	0xb1a
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x4c
	.byte	0xb
	.byte	0x49
	.byte	0x8
	.4byte	0xc1f
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0xb
	.byte	0x4e
	.byte	0xb
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0xb
	.byte	0x53
	.byte	0x11
	.4byte	0xc34
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0xb
	.byte	0x57
	.byte	0x11
	.4byte	0xc54
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0xb
	.byte	0x5b
	.byte	0x11
	.4byte	0xc74
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0xb
	.byte	0x5f
	.byte	0xc
	.4byte	0xc85
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0xb
	.byte	0x63
	.byte	0xc
	.4byte	0xc9b
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0xb
	.byte	0x67
	.byte	0xc
	.4byte	0xc9b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0xb
	.byte	0x6b
	.byte	0x11
	.4byte	0xcbb
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xb
	.byte	0x6f
	.byte	0x11
	.4byte	0xcd5
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xb
	.byte	0x73
	.byte	0xc
	.4byte	0xcf5
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xb
	.byte	0x75
	.byte	0xb
	.4byte	0xd0f
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xb
	.byte	0x77
	.byte	0xb
	.4byte	0xd0f
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xb
	.byte	0x79
	.byte	0x9
	.4byte	0x27
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xb
	.byte	0x7d
	.byte	0x11
	.4byte	0xd33
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xb
	.byte	0x7f
	.byte	0x9
	.4byte	0x27
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xb
	.byte	0x83
	.byte	0xb
	.4byte	0xd48
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xb
	.byte	0x87
	.byte	0x11
	.4byte	0xd71
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xb
	.byte	0x8d
	.byte	0xc
	.4byte	0xc85
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xb
	.byte	0x92
	.byte	0x11
	.4byte	0xd90
	.byte	0x48
	.byte	0
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0xc2e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb0e
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc1f
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xc4e
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0xc4e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xabd
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc3a
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xc6e
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0xc6e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc5a
	.uleb128 0x1a
	.4byte	0xc85
	.uleb128 0x18
	.4byte	0xc2e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc7a
	.uleb128 0x1a
	.4byte	0xc9b
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x9b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc8b
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xcb5
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0xcb5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x83
	.uleb128 0xf
	.byte	0x4
	.4byte	0xca1
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xcd5
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x9de
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcc1
	.uleb128 0x1a
	.4byte	0xcf5
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x964
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcdb
	.uleb128 0x17
	.4byte	0x9de
	.4byte	0xd0f
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x964
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcfb
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xd33
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd15
	.uleb128 0x17
	.4byte	0x9de
	.4byte	0xd48
	.uleb128 0x18
	.4byte	0xc2e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd39
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xd71
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x27
	.uleb128 0x18
	.4byte	0xb02
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd4e
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xd90
	.uleb128 0x18
	.4byte	0xc2e
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd77
	.uleb128 0x5
	.4byte	.LASF176
	.byte	0xc
	.byte	0x1b
	.byte	0x21
	.4byte	0xda7
	.uleb128 0x13
	.4byte	0xd96
	.uleb128 0x19
	.4byte	.LASF176
	.uleb128 0x5
	.4byte	.LASF178
	.byte	0xc
	.byte	0x1d
	.byte	0x1c
	.4byte	0xdb8
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x1c
	.byte	0xc
	.byte	0x3b
	.byte	0x8
	.4byte	0xe21
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0xc
	.byte	0x3c
	.byte	0x1e
	.4byte	0xc2e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0xc
	.byte	0x3d
	.byte	0x1d
	.4byte	0xebe
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF181
	.byte	0xc
	.byte	0x3f
	.byte	0x25
	.4byte	0xec4
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF183
	.byte	0xc
	.byte	0x42
	.byte	0x19
	.4byte	0xb02
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0xc
	.byte	0x43
	.byte	0xe
	.4byte	0x9b
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0xc
	.byte	0x44
	.byte	0xe
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0xc
	.byte	0x26
	.byte	0x9
	.4byte	0xe5f
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xc
	.byte	0x2b
	.byte	0x11
	.4byte	0xe6e
	.byte	0
	.uleb128 0xe
	.string	"end"
	.byte	0xc
	.byte	0x2e
	.byte	0x11
	.4byte	0xe6e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0xc
	.byte	0x31
	.byte	0x11
	.4byte	0xe8d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0xc
	.byte	0x34
	.byte	0x11
	.4byte	0xea7
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xe6e
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe5f
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xe8d
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0xa7
	.uleb128 0x18
	.4byte	0xa7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe74
	.uleb128 0x17
	.4byte	0x977
	.4byte	0xea7
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	0x6e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe93
	.uleb128 0x5
	.4byte	.LASF188
	.byte	0xc
	.byte	0x35
	.byte	0x3
	.4byte	0xe21
	.uleb128 0x13
	.4byte	0xead
	.uleb128 0xf
	.byte	0x4
	.4byte	0xda2
	.uleb128 0xf
	.byte	0x4
	.4byte	0xeb9
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0xc
	.2byte	0x11f
	.byte	0x15
	.4byte	0xed7
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdac
	.uleb128 0x9
	.4byte	0x6cd
	.4byte	0xeed
	.uleb128 0xa
	.4byte	0x6e
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.4byte	0xedd
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0xd
	.byte	0x8e
	.byte	0x1a
	.4byte	0xeed
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0xf15
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x27
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF192
	.byte	0x1
	.byte	0x25
	.byte	0x3
	.4byte	0xefe
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0xf45
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF193
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x9de
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2a
	.byte	0x3
	.4byte	0xf21
	.uleb128 0x21
	.4byte	.LASF195
	.byte	0x1
	.byte	0x65
	.byte	0x47
	.4byte	0xf45
	.uleb128 0x5
	.byte	0x3
	.4byte	spi1_arg
	.uleb128 0x21
	.4byte	.LASF196
	.byte	0x1
	.byte	0x6a
	.byte	0x47
	.4byte	0xf45
	.uleb128 0x5
	.byte	0x3
	.4byte	main_flash_arg
	.uleb128 0x21
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6f
	.byte	0x17
	.4byte	0xf15
	.uleb128 0x5
	.byte	0x3
	.4byte	spi2_arg
	.uleb128 0x21
	.4byte	.LASF198
	.byte	0x1
	.byte	0x73
	.byte	0x17
	.4byte	0xf15
	.uleb128 0x5
	.byte	0x3
	.4byte	spi3_arg
	.uleb128 0x22
	.4byte	.LASF199
	.byte	0x1
	.byte	0x78
	.byte	0x4b
	.4byte	0xeb9
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_flash_spi1_default_os_functions
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0x7f
	.byte	0x20
	.4byte	0xeb9
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_flash_spi23_default_os_functions
	.uleb128 0x23
	.4byte	.LASF201
	.byte	0x1
	.byte	0x95
	.byte	0xb
	.4byte	0x977
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfec
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0x95
	.byte	0x38
	.4byte	0xed7
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.byte	0x85
	.byte	0xb
	.4byte	0x977
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1029
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0x85
	.byte	0x34
	.4byte	0xed7
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x25
	.4byte	.LASF191
	.byte	0x1
	.byte	0x85
	.byte	0x3e
	.4byte	0x27
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0x5b
	.byte	0x3d
	.4byte	0x977
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108a
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x5b
	.byte	0x5f
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x25
	.4byte	.LASF204
	.byte	0x1
	.byte	0x5b
	.byte	0x6b
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF184
	.byte	0x1
	.byte	0x5b
	.byte	0x7e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0x11e2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x55
	.byte	0x3d
	.4byte	0x977
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e2
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x55
	.byte	0x4c
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2a
	.string	"ms"
	.byte	0x1
	.byte	0x55
	.byte	0x5a
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0x11ee
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF216
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.4byte	0x977
	.4byte	0x10ff
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.byte	0x4f
	.byte	0x22
	.4byte	0x25
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF208
	.byte	0x1
	.byte	0x49
	.byte	0x12
	.4byte	0x977
	.byte	0x1
	.4byte	0x111d
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.byte	0x49
	.byte	0x24
	.4byte	0x25
	.byte	0
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.byte	0x40
	.byte	0x3d
	.4byte	0x977
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1151
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x40
	.byte	0x4c
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2e
	.4byte	.LVL5
	.byte	0
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x38
	.byte	0x3d
	.4byte	0x977
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x38
	.byte	0x4e
	.4byte	0x25
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2e
	.4byte	.LVL2
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF209
	.byte	0x1
	.byte	0x32
	.byte	0x3d
	.4byte	0x977
	.byte	0x1
	.4byte	0x11a3
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x32
	.byte	0x51
	.4byte	0x27
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF210
	.byte	0x1
	.byte	0x2d
	.byte	0x3d
	.4byte	0x977
	.byte	0x1
	.4byte	0x11c1
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x2d
	.byte	0x51
	.4byte	0x27
	.byte	0
	.uleb128 0x30
	.4byte	0x10ff
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e2
	.uleb128 0x31
	.4byte	0x1110
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x32
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xe
	.byte	0x6d
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xd
	.2byte	0x188
	.byte	0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"op_lock"
.LASF81:
	.string	"_misc"
.LASF174:
	.string	"poll_cmd_done"
.LASF193:
	.string	"no_protect"
.LASF14:
	.string	"_lock_t"
.LASF195:
	.string	"spi1_arg"
.LASF200:
	.string	"esp_flash_spi23_default_os_functions"
.LASF43:
	.string	"_on_exit_args"
.LASF165:
	.string	"set_write_protect"
.LASF86:
	.string	"_write"
.LASF204:
	.string	"start_addr"
.LASF186:
	.string	"region_protected"
.LASF114:
	.string	"_wctomb_state"
.LASF145:
	.string	"mosi_data"
.LASF74:
	.string	"_r48"
.LASF164:
	.string	"read_status"
.LASF82:
	.string	"_signal_buf"
.LASF7:
	.string	"unsigned int"
.LASF210:
	.string	"spi_bus_acquire"
.LASF152:
	.string	"SPI_FLASH_QOUT"
.LASF58:
	.string	"_lbfsize"
.LASF56:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF61:
	.string	"_errno"
.LASF199:
	.string	"esp_flash_spi1_default_os_functions"
.LASF198:
	.string	"spi3_arg"
.LASF151:
	.string	"SPI_FLASH_DIO"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF85:
	.string	"_read"
.LASF118:
	.string	"_mbrlen_state"
.LASF205:
	.string	"main_flash_region_protected"
.LASF138:
	.string	"is_safe_write_address"
.LASF63:
	.string	"_stdout"
.LASF18:
	.string	"_fpos_t"
.LASF50:
	.string	"_fns"
.LASF84:
	.string	"_cookie"
.LASF32:
	.string	"_Bigint"
.LASF40:
	.string	"__tm_wday"
.LASF107:
	.string	"_result"
.LASF12:
	.string	"uint32_t"
.LASF36:
	.string	"__tm_hour"
.LASF159:
	.string	"common_command"
.LASF22:
	.string	"__count"
.LASF191:
	.string	"host_id"
.LASF35:
	.string	"__tm_min"
.LASF80:
	.string	"__sf"
.LASF101:
	.string	"_rand48"
.LASF130:
	.string	"spi_flash_guard_end_func_t"
.LASF108:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF76:
	.string	"_asctime_buf"
.LASF209:
	.string	"spi_bus_release"
.LASF83:
	.string	"__sFILE"
.LASF31:
	.string	"_wds"
.LASF179:
	.string	"host"
.LASF97:
	.string	"__FILE"
.LASF92:
	.string	"_offset"
.LASF89:
	.string	"_ubuf"
.LASF153:
	.string	"SPI_FLASH_QIO"
.LASF212:
	.string	"ets_delay_us"
.LASF175:
	.string	"flush_cache"
.LASF66:
	.string	"_emergency"
.LASF211:
	.string	"esp_partition_main_flash_region_safe"
.LASF169:
	.string	"max_write_bytes"
.LASF185:
	.string	"chip_id"
.LASF13:
	.string	"size_t"
.LASF34:
	.string	"__tm_sec"
.LASF127:
	.string	"suboptarg"
.LASF41:
	.string	"__tm_yday"
.LASF65:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF28:
	.string	"_next"
.LASF206:
	.string	"spi1_end"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF160:
	.string	"read_id"
.LASF192:
	.string	"app_func_arg_t"
.LASF173:
	.string	"configure_host_io_mode"
.LASF187:
	.string	"delay_ms"
.LASF133:
	.string	"spi_flash_is_safe_write_address_t"
.LASF214:
	.string	"/home/dieter/Development/esp-idf/components/spi_flash/spi_flash_os_func_app.c"
.LASF23:
	.string	"__value"
.LASF143:
	.string	"mosi_len"
.LASF109:
	.string	"_p5s"
.LASF155:
	.string	"esp_flash_io_mode_t"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF113:
	.string	"_mblen_state"
.LASF96:
	.string	"char"
.LASF37:
	.string	"__tm_mday"
.LASF77:
	.string	"_sig_func"
.LASF119:
	.string	"_mbrtowc_state"
.LASF162:
	.string	"erase_sector"
.LASF25:
	.string	"_flock_t"
.LASF20:
	.string	"__wch"
.LASF100:
	.string	"_iobs"
.LASF10:
	.string	"uint8_t"
.LASF181:
	.string	"os_func"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF140:
	.string	"g_flash_guard_default_ops"
.LASF88:
	.string	"_close"
.LASF67:
	.string	"__sdidinit"
.LASF55:
	.string	"__sFILE_fake"
.LASF196:
	.string	"main_flash_arg"
.LASF207:
	.string	"spi1_start"
.LASF62:
	.string	"_stdin"
.LASF71:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF53:
	.string	"_base"
.LASF182:
	.string	"os_func_data"
.LASF110:
	.string	"_freelist"
.LASF103:
	.string	"_mult"
.LASF183:
	.string	"read_mode"
.LASF27:
	.string	"__ULong"
.LASF121:
	.string	"_wcrtomb_state"
.LASF57:
	.string	"_file"
.LASF188:
	.string	"esp_flash_os_functions_t"
.LASF146:
	.string	"miso_data"
.LASF190:
	.string	"exc_cause_table"
.LASF168:
	.string	"supports_direct_read"
.LASF70:
	.string	"__cleanup"
.LASF24:
	.string	"_mbstate_t"
.LASF106:
	.string	"_mprec"
.LASF167:
	.string	"supports_direct_write"
.LASF184:
	.string	"size"
.LASF129:
	.string	"spi_flash_guard_start_func_t"
.LASF142:
	.string	"command"
.LASF42:
	.string	"__tm_isdst"
.LASF132:
	.string	"spi_flash_op_unlock_func_t"
.LASF135:
	.string	"start"
.LASF150:
	.string	"SPI_FLASH_DOUT"
.LASF202:
	.string	"esp_flash_init_os_functions"
.LASF134:
	.string	"_Bool"
.LASF163:
	.string	"erase_block"
.LASF156:
	.string	"spi_flash_host_driver_t"
.LASF38:
	.string	"__tm_mon"
.LASF131:
	.string	"spi_flash_op_lock_func_t"
.LASF148:
	.string	"SPI_FLASH_SLOWRD"
.LASF78:
	.string	"_atexit0"
.LASF208:
	.string	"spi23_start"
.LASF178:
	.string	"esp_flash_t"
.LASF157:
	.string	"driver_data"
.LASF166:
	.string	"program_page"
.LASF48:
	.string	"_atexit"
.LASF94:
	.string	"_mbstate"
.LASF161:
	.string	"erase_chip"
.LASF2:
	.string	"short int"
.LASF215:
	.string	"/home/dieter/Development/ProjektEi/build/spi_flash"
.LASF16:
	.string	"long int"
.LASF197:
	.string	"spi2_arg"
.LASF30:
	.string	"_sign"
.LASF149:
	.string	"SPI_FLASH_FASTRD"
.LASF59:
	.string	"_data"
.LASF21:
	.string	"__wchb"
.LASF126:
	.string	"_global_impure_ptr"
.LASF39:
	.string	"__tm_year"
.LASF194:
	.string	"spi1_app_func_arg_t"
.LASF111:
	.string	"_misc_reent"
.LASF139:
	.string	"spi_flash_guard_funcs_t"
.LASF75:
	.string	"_localtime_buf"
.LASF201:
	.string	"esp_flash_app_init_os_functions"
.LASF4:
	.string	"__uint8_t"
.LASF72:
	.string	"_cvtlen"
.LASF29:
	.string	"_maxwds"
.LASF116:
	.string	"_l64a_buf"
.LASF147:
	.string	"spi_flash_trans_t"
.LASF91:
	.string	"_blksize"
.LASF33:
	.string	"__tm"
.LASF93:
	.string	"_lock"
.LASF26:
	.string	"long unsigned int"
.LASF99:
	.string	"_niobs"
.LASF213:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"int32_t"
.LASF176:
	.string	"spi_flash_chip_t"
.LASF45:
	.string	"_dso_handle"
.LASF154:
	.string	"SPI_FLASH_READ_MODE_MAX"
.LASF73:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF117:
	.string	"_getdate_err"
.LASF189:
	.string	"esp_flash_default_chip"
.LASF104:
	.string	"_add"
.LASF128:
	.string	"esp_err_t"
.LASF52:
	.string	"__sbuf"
.LASF158:
	.string	"dev_config"
.LASF172:
	.string	"host_idle"
.LASF98:
	.string	"_glue"
.LASF79:
	.string	"__sglue"
.LASF137:
	.string	"op_unlock"
.LASF112:
	.string	"_strtok_last"
.LASF115:
	.string	"_mbtowc_state"
.LASF69:
	.string	"_locale"
.LASF44:
	.string	"_fnargs"
.LASF144:
	.string	"miso_len"
.LASF0:
	.string	"signed char"
.LASF60:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF141:
	.string	"g_flash_guard_no_os_ops"
.LASF203:
	.string	"chip"
.LASF46:
	.string	"_fntypes"
.LASF171:
	.string	"max_read_bytes"
.LASF216:
	.string	"spi23_end"
.LASF54:
	.string	"_size"
.LASF17:
	.string	"_off_t"
.LASF90:
	.string	"_nbuf"
.LASF68:
	.string	"_unspecified_locale_info"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF95:
	.string	"_flags2"
.LASF47:
	.string	"_is_cxa"
.LASF180:
	.string	"chip_drv"
.LASF102:
	.string	"_seed"
.LASF105:
	.string	"_rand_next"
.LASF177:
	.string	"__locale_t"
.LASF170:
	.string	"read"
.LASF87:
	.string	"_seek"
.LASF64:
	.string	"_stderr"
.LASF19:
	.string	"wint_t"
.LASF123:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
