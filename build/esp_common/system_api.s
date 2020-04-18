	.file	"system_api.c"
	.text
.Ltext0:
	.section	.text.esp_register_shutdown_handler,"ax",@progbits
	.literal_position
	.literal .LC0, shutdown_handlers
	.align	4
	.global	esp_register_shutdown_handler
	.type	esp_register_shutdown_handler, @function
esp_register_shutdown_handler:
.LVL0:
.LFB14:
	.file 1 "/home/dieter/Development/esp-idf/components/esp_common/src/system_api.c"
	.loc 1 12 1 view -0
	.loc 1 12 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 13 5 is_stmt 1 view .LVU2
.LBB2:
	.loc 1 13 10 view .LVU3
.LVL1:
	.loc 1 14 9 view .LVU4
	.loc 1 14 30 is_stmt 0 view .LVU5
	l32r	a9, .LC0
	.loc 1 15 20 view .LVU6
	movi	a10, 0x103
	.loc 1 14 30 view .LVU7
	l32i.n	a8, a9, 0
	.loc 1 14 12 view .LVU8
	beq	a2, a8, .L1
	.loc 1 16 16 is_stmt 1 view .LVU9
	.loc 1 16 19 is_stmt 0 view .LVU10
	beqz.n	a8, .L3
.LVL2:
	.loc 1 14 9 is_stmt 1 view .LVU11
	.loc 1 14 30 is_stmt 0 view .LVU12
	l32i.n	a8, a9, 4
	.loc 1 14 12 view .LVU13
	beq	a2, a8, .L1
	.loc 1 16 16 is_stmt 1 view .LVU14
.LBE2:
	.loc 1 21 12 is_stmt 0 view .LVU15
	movi	a10, 0x101
.LBB3:
	.loc 1 16 19 view .LVU16
	bnez.n	a8, .L1
	.loc 1 13 29 view .LVU17
	movi.n	a8, 1
.LVL3:
.L3:
	.loc 1 17 13 is_stmt 1 view .LVU18
	.loc 1 17 34 is_stmt 0 view .LVU19
	slli	a8, a8, 2
	add.n	a8, a9, a8
	s32i.n	a2, a8, 0
	.loc 1 18 13 is_stmt 1 view .LVU20
	.loc 1 18 20 is_stmt 0 view .LVU21
	movi.n	a10, 0
.L1:
	.loc 1 18 20 view .LVU22
.LBE3:
	.loc 1 22 1 view .LVU23
	mov.n	a2, a10
.LVL4:
	.loc 1 22 1 view .LVU24
	retw.n
.LFE14:
	.size	esp_register_shutdown_handler, .-esp_register_shutdown_handler
	.section	.text.esp_unregister_shutdown_handler,"ax",@progbits
	.literal_position
	.literal .LC1, shutdown_handlers
	.align	4
	.global	esp_unregister_shutdown_handler
	.type	esp_unregister_shutdown_handler, @function
esp_unregister_shutdown_handler:
.LVL5:
.LFB15:
	.loc 1 25 1 is_stmt 1 view -0
	.loc 1 25 1 is_stmt 0 view .LVU26
	entry	sp, 32
.LCFI1:
	.loc 1 26 5 is_stmt 1 view .LVU27
.LBB4:
	.loc 1 26 10 view .LVU28
.LVL6:
	.loc 1 27 9 view .LVU29
	.loc 1 27 30 is_stmt 0 view .LVU30
	l32r	a8, .LC1
.LBE4:
	.loc 1 25 1 view .LVU31
	mov.n	a9, a2
.LBB5:
	.loc 1 27 12 view .LVU32
	l32i.n	a2, a8, 0
.LVL7:
	.loc 1 27 12 view .LVU33
	beq	a9, a2, .L11
.LVL8:
	.loc 1 27 9 is_stmt 1 view .LVU34
	.loc 1 27 12 is_stmt 0 view .LVU35
	l32i.n	a10, a8, 4
.LBE5:
	.loc 1 32 12 view .LVU36
	movi	a2, 0x103
.LBB6:
	.loc 1 27 12 view .LVU37
	bne	a9, a10, .L8
	.loc 1 26 29 view .LVU38
	movi.n	a2, 1
	j	.L9
.LVL9:
.L11:
	.loc 1 26 14 view .LVU39
	movi.n	a2, 0
.LVL10:
.L9:
	.loc 1 28 13 is_stmt 1 view .LVU40
	.loc 1 28 34 is_stmt 0 view .LVU41
	slli	a2, a2, 2
	add.n	a8, a8, a2
	movi.n	a2, 0
	s32i.n	a2, a8, 0
	.loc 1 29 13 is_stmt 1 view .LVU42
.L8:
.LBE6:
	.loc 1 33 1 is_stmt 0 view .LVU43
	retw.n
.LFE15:
	.size	esp_unregister_shutdown_handler, .-esp_unregister_shutdown_handler
	.section	.iram1.3,"ax",@progbits
	.literal_position
	.literal .LC2, shutdown_handlers
	.align	4
	.global	esp_restart
	.type	esp_restart, @function
esp_restart:
.LFB16:
	.loc 1 36 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 37 5 view .LVU45
.LBB7:
	.loc 1 37 10 view .LVU46
.LVL11:
	.loc 1 38 9 view .LVU47
	.loc 1 38 30 is_stmt 0 view .LVU48
	l32r	a2, .LC2
	l32i.n	a8, a2, 4
	.loc 1 38 12 view .LVU49
	beqz.n	a8, .L14
	.loc 1 39 13 is_stmt 1 view .LVU50
	callx8	a8
.LVL12:
.L14:
	.loc 1 38 9 view .LVU51
	.loc 1 38 30 is_stmt 0 view .LVU52
	l32i.n	a8, a2, 0
	.loc 1 38 12 view .LVU53
	beqz.n	a8, .L15
	.loc 1 39 13 is_stmt 1 view .LVU54
	callx8	a8
.LVL13:
.L15:
	.loc 1 39 13 is_stmt 0 view .LVU55
.LBE7:
	.loc 1 44 5 is_stmt 1 view .LVU56
	call8	vTaskSuspendAll
.LVL14:
	.loc 1 46 5 view .LVU57
	call8	esp_restart_noos
.LVL15:
.LFE16:
	.size	esp_restart, .-esp_restart
	.section	.text.esp_get_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC3, 4096
	.align	4
	.global	esp_get_free_heap_size
	.type	esp_get_free_heap_size, @function
esp_get_free_heap_size:
.LFB17:
	.loc 1 50 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 51 5 view .LVU59
	.loc 1 51 12 is_stmt 0 view .LVU60
	l32r	a10, .LC3
	call8	heap_caps_get_free_size
.LVL16:
	.loc 1 52 1 view .LVU61
	mov.n	a2, a10
	retw.n
.LFE17:
	.size	esp_get_free_heap_size, .-esp_get_free_heap_size
	.section	.text.esp_get_minimum_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC4, 4096
	.align	4
	.global	esp_get_minimum_free_heap_size
	.type	esp_get_minimum_free_heap_size, @function
esp_get_minimum_free_heap_size:
.LFB18:
	.loc 1 55 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 56 5 view .LVU63
	.loc 1 56 12 is_stmt 0 view .LVU64
	l32r	a10, .LC4
	call8	heap_caps_get_minimum_free_size
.LVL17:
	.loc 1 57 1 view .LVU65
	mov.n	a2, a10
	retw.n
.LFE18:
	.size	esp_get_minimum_free_heap_size, .-esp_get_minimum_free_heap_size
	.section	.rodata.esp_get_idf_version.str1.1,"aMS",@progbits,1
.LC5:
	.string	"v4.1-dev-1086-g93a8603c5-dirty"
	.section	.text.esp_get_idf_version,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.align	4
	.global	esp_get_idf_version
	.type	esp_get_idf_version, @function
esp_get_idf_version:
.LFB19:
	.loc 1 60 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI5:
	.loc 1 61 5 view .LVU67
	.loc 1 62 1 is_stmt 0 view .LVU68
	l32r	a2, .LC6
	retw.n
.LFE19:
	.size	esp_get_idf_version, .-esp_get_idf_version
	.section	.bss.shutdown_handlers,"aw",@nobits
	.align	4
	.type	shutdown_handlers, @object
	.size	shutdown_handlers, 8
shutdown_handlers:
	.zero	8
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
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
	.file 10 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
	.file 11 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 12 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 13 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 14 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 15 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
	.file 16 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/system_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1294
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF275
	.byte	0xc
	.4byte	.LASF276
	.4byte	.LASF277
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x3f
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x57
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x57
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x63
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x57
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xbb
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x109
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xda
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x109
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x119
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x13d
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x57
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xe7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x119
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x155
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1c2
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1c2
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x57
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x57
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x57
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1c8
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x168
	.uleb128 0xa
	.4byte	0x15c
	.4byte	0x1d8
	.uleb128 0xb
	.4byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x25b
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x57
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x57
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x57
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x57
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x57
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x57
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x57
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x57
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2a0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2a0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2a0
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x15c
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x15c
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x2b0
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x2f2
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x2f2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x57
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x2f8
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x30f
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2b0
	.uleb128 0xa
	.4byte	0x308
	.4byte	0x308
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x30e
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x25b
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x33d
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x33d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3b6
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x33d
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x57
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x315
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x57
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x51a
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x343
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x51a
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x57
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x772
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x772
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x772
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x57
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x681
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x57
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x57
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8da
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8e0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8f1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x57
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x57
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x681
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8f7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8fd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x681
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x90e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2f2
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2b0
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x733
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x772
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x91a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x681
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3bb
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x663
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x33d
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x57
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x315
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x57
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x51a
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0xa1
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x693
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6c2
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6e6
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x700
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x315
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x33d
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x57
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x706
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x716
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x315
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x57
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xc2
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x149
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x13d
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x57
	.4byte	0x681
	.uleb128 0x18
	.4byte	0x51a
	.uleb128 0x18
	.4byte	0xa1
	.uleb128 0x18
	.4byte	0x681
	.uleb128 0x18
	.4byte	0x57
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x687
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x3
	.4byte	0x687
	.uleb128 0x10
	.byte	0x4
	.4byte	0x663
	.uleb128 0x17
	.4byte	0x57
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x51a
	.uleb128 0x18
	.4byte	0xa1
	.uleb128 0x18
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x57
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x68e
	.uleb128 0x3
	.4byte	0x6b7
	.uleb128 0x10
	.byte	0x4
	.4byte	0x699
	.uleb128 0x17
	.4byte	0xce
	.4byte	0x6e6
	.uleb128 0x18
	.4byte	0x51a
	.uleb128 0x18
	.4byte	0xa1
	.uleb128 0x18
	.4byte	0xce
	.uleb128 0x18
	.4byte	0x57
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x17
	.4byte	0x57
	.4byte	0x700
	.uleb128 0x18
	.4byte	0x51a
	.uleb128 0x18
	.4byte	0xa1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6ec
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x716
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x726
	.uleb128 0xb
	.4byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x520
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x76c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x76c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x772
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x733
	.uleb128 0x10
	.byte	0x4
	.4byte	0x726
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7bf
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7bf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7bf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x82
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x3f
	.4byte	0x7cf
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x816
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1c2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1c2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x816
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c5
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x681
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x13d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x13d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x13d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x57
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x13d
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x13d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x13d
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x13d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x13d
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	0x687
	.4byte	0x8d5
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF278
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7cf
	.uleb128 0x1a
	.4byte	0x8f1
	.uleb128 0x18
	.4byte	0x51a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0x10
	.byte	0x4
	.4byte	0x778
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0x1a
	.4byte	0x90e
	.uleb128 0x18
	.4byte	0x57
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x914
	.uleb128 0x10
	.byte	0x4
	.4byte	0x903
	.uleb128 0x10
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3b6
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3b6
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3b6
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x51a
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x681
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x9
	.byte	0x18
	.byte	0x11
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0xa
	.byte	0x45
	.byte	0x10
	.4byte	0x308
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0xb
	.byte	0x94
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x994
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0xb
	.byte	0xb3
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0xb
	.byte	0xb4
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xb
	.byte	0xb6
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0xb
	.byte	0xb7
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0xb
	.byte	0xbd
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0xb
	.byte	0xbe
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xa
	.4byte	0x76
	.4byte	0x9ec
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9dc
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0xb
	.byte	0xbf
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0xb
	.byte	0xc0
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0xb
	.byte	0xc1
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0xb
	.byte	0xc2
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xa
	.4byte	0x6bd
	.4byte	0xa31
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xa21
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0xb
	.byte	0xc4
	.byte	0x1b
	.4byte	0xa31
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0xb
	.byte	0xd1
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0xb
	.byte	0xd4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0xb
	.byte	0xd6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0xb
	.byte	0xda
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0xb
	.byte	0xed
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0xb
	.byte	0xee
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0xb
	.byte	0xf6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0xb
	.byte	0xf7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0xb
	.byte	0xf9
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0xb
	.byte	0xfa
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0xb
	.byte	0xfd
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0xb
	.byte	0xfe
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0xb
	.2byte	0x100
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x160
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0xb
	.2byte	0x193
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x194
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x198
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x199
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0xb
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xa
	.4byte	0x76
	.4byte	0xc82
	.uleb128 0xb
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc72
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc82
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc82
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xcb1
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xca1
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0xb
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0xb
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0xa
	.4byte	0x5e
	.4byte	0xced
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xcdd
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0xb
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xced
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0xb
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0xb
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0xb
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0xb
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0xb
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0xb
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0xb
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0xb
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0xb
	.2byte	0x30b
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0xb
	.2byte	0x315
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x318
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0xb
	.2byte	0x325
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0xb
	.2byte	0x326
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0xb
	.2byte	0x327
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x328
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0xb
	.2byte	0x329
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xa
	.4byte	0x76
	.4byte	0xdf4
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0xde9
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0xb
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0xb
	.2byte	0x330
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0xb
	.2byte	0x331
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0xb
	.2byte	0x332
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x333
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x334
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0xb
	.2byte	0x335
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0xb
	.2byte	0x336
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0xb
	.2byte	0x337
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0xb
	.2byte	0x338
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0xb
	.2byte	0x339
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0xb
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0xb
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0xb
	.2byte	0x343
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0xb
	.2byte	0x344
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0xb
	.2byte	0x346
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0xb
	.2byte	0x347
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0xb
	.2byte	0x349
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0xb
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0xb
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0xb
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0xb
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0xb
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0xb
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0xb
	.2byte	0x390
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0xb
	.2byte	0x392
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0xb
	.2byte	0x393
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0xb
	.2byte	0x394
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0xb
	.2byte	0x395
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0xb
	.2byte	0x396
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0xb
	.2byte	0x397
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0xb
	.2byte	0x398
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0xb
	.2byte	0x399
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0xb
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0xb
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0xb
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0xb
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0xb
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0xb
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0xc
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0xc
	.2byte	0x500
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0xc
	.2byte	0x503
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0xc
	.2byte	0x504
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xc
	.2byte	0x507
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xc
	.2byte	0x508
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xc
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xc
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xc
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xc
	.2byte	0x510
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xc
	.2byte	0x513
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xc
	.2byte	0x514
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xc
	.2byte	0x517
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xc
	.2byte	0x518
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xc
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0xc
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x76
	.uleb128 0xa
	.4byte	0x6bd
	.4byte	0x10ee
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	0x10de
	.uleb128 0x1c
	.4byte	.LASF264
	.byte	0xd
	.byte	0x8e
	.byte	0x1a
	.4byte	0x10ee
	.uleb128 0xa
	.4byte	0x96c
	.4byte	0x110f
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF279
	.byte	0x1
	.byte	0x9
	.byte	0x1b
	.4byte	0x10ff
	.uleb128 0x5
	.byte	0x3
	.4byte	shutdown_handlers
	.uleb128 0x1f
	.4byte	.LASF280
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.4byte	0x6b7
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF265
	.byte	0x1
	.byte	0x36
	.byte	0xa
	.4byte	0x95
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1163
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x1266
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF266
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.4byte	0x95
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118f
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x1272
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF267
	.byte	0x1
	.byte	0x23
	.byte	0x31
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d8
	.uleb128 0x24
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x11c5
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x57
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL14
	.4byte	0x127e
	.uleb128 0x26
	.4byte	.LVL15
	.4byte	0x128b
	.byte	0
	.uleb128 0x20
	.4byte	.LASF268
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0x960
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121f
	.uleb128 0x27
	.4byte	.LASF270
	.byte	0x1
	.byte	0x18
	.byte	0x3e
	.4byte	0x96c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0x57
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF269
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.4byte	0x960
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1266
	.uleb128 0x27
	.4byte	.LASF270
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.4byte	0x96c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.4byte	0x57
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0xe
	.byte	0x96
	.byte	0x8
	.uleb128 0x29
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0xe
	.byte	0x84
	.byte	0x8
	.uleb128 0x2a
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0xf
	.2byte	0x4cb
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x10
	.byte	0x22
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x87
	.uleb128 0x19
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2a
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
.LVUS4:
	.uleb128 .LVU47
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU29
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU40
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU18
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
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
.LASF178:
	.string	"Xthal_hw_release_name"
.LASF174:
	.string	"Xthal_hw_configid0"
.LASF175:
	.string	"Xthal_hw_configid1"
.LASF239:
	.string	"Xthal_mmu_ca_bits"
.LASF78:
	.string	"_misc"
.LASF191:
	.string	"Xthal_have_ccount"
.LASF157:
	.string	"Xthal_memory_order"
.LASF266:
	.string	"esp_get_free_heap_size"
.LASF11:
	.string	"_lock_t"
.LASF253:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF40:
	.string	"_on_exit_args"
.LASF83:
	.string	"_write"
.LASF206:
	.string	"Xthal_num_xlmi"
.LASF111:
	.string	"_wctomb_state"
.LASF209:
	.string	"Xthal_instrom_size"
.LASF246:
	.string	"Xthal_dtlb_ways"
.LASF71:
	.string	"_r48"
.LASF146:
	.string	"Xthal_dcache_linewidth"
.LASF138:
	.string	"Xthal_cp_names"
.LASF152:
	.string	"Xthal_debug_configured"
.LASF79:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF141:
	.string	"Xthal_cp_max"
.LASF181:
	.string	"Xthal_num_interrupts"
.LASF245:
	.string	"Xthal_dtlb_way_bits"
.LASF55:
	.string	"_lbfsize"
.LASF53:
	.string	"_flags"
.LASF236:
	.string	"Xthal_mmu_rings"
.LASF156:
	.string	"Xthal_release_internal"
.LASF4:
	.string	"__int32_t"
.LASF58:
	.string	"_errno"
.LASF274:
	.string	"esp_restart_noos"
.LASF134:
	.string	"Xthal_cpregs_size"
.LASF270:
	.string	"handler"
.LASF228:
	.string	"Xthal_have_spanning_way"
.LASF186:
	.string	"Xthal_inttype"
.LASF128:
	.string	"Xthal_cpregs_save_fn"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF197:
	.string	"Xthal_have_highlevel_interrupts"
.LASF180:
	.string	"Xthal_num_intlevels"
.LASF82:
	.string	"_read"
.LASF115:
	.string	"_mbrlen_state"
.LASF230:
	.string	"Xthal_have_mimic_cacheattr"
.LASF60:
	.string	"_stdout"
.LASF135:
	.string	"Xthal_cpregs_align"
.LASF15:
	.string	"_fpos_t"
.LASF240:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF47:
	.string	"_fns"
.LASF226:
	.string	"Xthal_icache_line_lockable"
.LASF81:
	.string	"_cookie"
.LASF269:
	.string	"esp_register_shutdown_handler"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF130:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF104:
	.string	"_result"
.LASF10:
	.string	"uint32_t"
.LASF257:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF33:
	.string	"__tm_hour"
.LASF183:
	.string	"Xthal_intlevel_mask"
.LASF233:
	.string	"Xthal_have_tlbs"
.LASF145:
	.string	"Xthal_icache_linewidth"
.LASF176:
	.string	"Xthal_hw_release_major"
.LASF19:
	.string	"__count"
.LASF265:
	.string	"esp_get_minimum_free_heap_size"
.LASF143:
	.string	"Xthal_num_aregs"
.LASF32:
	.string	"__tm_min"
.LASF77:
	.string	"__sf"
.LASF210:
	.string	"Xthal_instram_vaddr"
.LASF98:
	.string	"_rand48"
.LASF105:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF73:
	.string	"_asctime_buf"
.LASF192:
	.string	"Xthal_num_ccompare"
.LASF80:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF238:
	.string	"Xthal_mmu_sr_bits"
.LASF271:
	.string	"heap_caps_get_minimum_free_size"
.LASF94:
	.string	"__FILE"
.LASF207:
	.string	"Xthal_instrom_vaddr"
.LASF252:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF89:
	.string	"_offset"
.LASF86:
	.string	"_ubuf"
.LASF273:
	.string	"vTaskSuspendAll"
.LASF261:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF164:
	.string	"Xthal_have_sext"
.LASF163:
	.string	"Xthal_have_minmax"
.LASF204:
	.string	"Xthal_num_datarom"
.LASF63:
	.string	"_emergency"
.LASF160:
	.string	"Xthal_have_booleans"
.LASF247:
	.string	"Xthal_dtlb_arf_ways"
.LASF202:
	.string	"Xthal_num_instrom"
.LASF166:
	.string	"Xthal_have_mac16"
.LASF280:
	.string	"esp_get_idf_version"
.LASF201:
	.string	"Xthal_tram_sync"
.LASF249:
	.string	"Xthal_cp_mask_FPU"
.LASF211:
	.string	"Xthal_instram_paddr"
.LASF31:
	.string	"__tm_sec"
.LASF150:
	.string	"Xthal_dcache_size"
.LASF124:
	.string	"suboptarg"
.LASF38:
	.string	"__tm_yday"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF258:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF25:
	.string	"_next"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF242:
	.string	"Xthal_itlb_way_bits"
.LASF208:
	.string	"Xthal_instrom_paddr"
.LASF222:
	.string	"Xthal_icache_setwidth"
.LASF168:
	.string	"Xthal_have_fp"
.LASF205:
	.string	"Xthal_num_dataram"
.LASF203:
	.string	"Xthal_num_instram"
.LASF20:
	.string	"__value"
.LASF158:
	.string	"Xthal_have_windowed"
.LASF106:
	.string	"_p5s"
.LASF195:
	.string	"Xthal_xea_version"
.LASF229:
	.string	"Xthal_have_identity_map"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF110:
	.string	"_mblen_state"
.LASF177:
	.string	"Xthal_hw_release_minor"
.LASF93:
	.string	"char"
.LASF34:
	.string	"__tm_mday"
.LASF167:
	.string	"Xthal_have_mul16"
.LASF74:
	.string	"_sig_func"
.LASF116:
	.string	"_mbrtowc_state"
.LASF185:
	.string	"Xthal_intlevel"
.LASF198:
	.string	"Xthal_have_nmi"
.LASF22:
	.string	"_flock_t"
.LASF199:
	.string	"Xthal_tram_pending"
.LASF17:
	.string	"__wch"
.LASF97:
	.string	"_iobs"
.LASF155:
	.string	"Xthal_release_name"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF132:
	.string	"Xthal_extra_size"
.LASF85:
	.string	"_close"
.LASF64:
	.string	"__sdidinit"
.LASF52:
	.string	"__sFILE_fake"
.LASF129:
	.string	"Xthal_cpregs_restore_fn"
.LASF182:
	.string	"Xthal_excm_level"
.LASF59:
	.string	"_stdin"
.LASF68:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF232:
	.string	"Xthal_have_cacheattr"
.LASF133:
	.string	"Xthal_extra_align"
.LASF50:
	.string	"_base"
.LASF173:
	.string	"Xthal_build_unique_id"
.LASF107:
	.string	"_freelist"
.LASF100:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF212:
	.string	"Xthal_instram_size"
.LASF118:
	.string	"_wcrtomb_state"
.LASF149:
	.string	"Xthal_icache_size"
.LASF127:
	.string	"Xthal_rev_no"
.LASF54:
	.string	"_file"
.LASF264:
	.string	"exc_cause_table"
.LASF216:
	.string	"Xthal_dataram_vaddr"
.LASF260:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF237:
	.string	"Xthal_mmu_ring_bits"
.LASF67:
	.string	"__cleanup"
.LASF21:
	.string	"_mbstate_t"
.LASF231:
	.string	"Xthal_have_xlt_cacheattr"
.LASF103:
	.string	"_mprec"
.LASF172:
	.string	"Xthal_num_writebuffer_entries"
.LASF189:
	.string	"Xthal_num_ibreak"
.LASF131:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF39:
	.string	"__tm_isdst"
.LASF221:
	.string	"Xthal_xlmi_size"
.LASF153:
	.string	"Xthal_release_major"
.LASF256:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF255:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF224:
	.string	"Xthal_icache_ways"
.LASF184:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF35:
	.string	"__tm_mon"
.LASF248:
	.string	"Xthal_cp_id_FPU"
.LASF217:
	.string	"Xthal_dataram_paddr"
.LASF268:
	.string	"esp_unregister_shutdown_handler"
.LASF75:
	.string	"_atexit0"
.LASF223:
	.string	"Xthal_dcache_setwidth"
.LASF227:
	.string	"Xthal_dcache_line_lockable"
.LASF45:
	.string	"_atexit"
.LASF91:
	.string	"_mbstate"
.LASF159:
	.string	"Xthal_have_density"
.LASF234:
	.string	"Xthal_mmu_asid_bits"
.LASF276:
	.string	"/home/dieter/Development/esp-idf/components/esp_common/src/system_api.c"
.LASF2:
	.string	"short int"
.LASF213:
	.string	"Xthal_datarom_vaddr"
.LASF136:
	.string	"Xthal_all_extra_size"
.LASF13:
	.string	"long int"
.LASF161:
	.string	"Xthal_have_loops"
.LASF277:
	.string	"/home/dieter/Development/ProjektEi/build/esp_common"
.LASF148:
	.string	"Xthal_dcache_linesize"
.LASF215:
	.string	"Xthal_datarom_size"
.LASF27:
	.string	"_sign"
.LASF250:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF56:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF123:
	.string	"_global_impure_ptr"
.LASF36:
	.string	"__tm_year"
.LASF108:
	.string	"_misc_reent"
.LASF187:
	.string	"Xthal_inttype_mask"
.LASF244:
	.string	"Xthal_itlb_arf_ways"
.LASF72:
	.string	"_localtime_buf"
.LASF69:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF165:
	.string	"Xthal_have_clamps"
.LASF214:
	.string	"Xthal_datarom_paddr"
.LASF88:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF140:
	.string	"Xthal_cp_num"
.LASF144:
	.string	"Xthal_num_aregs_log2"
.LASF90:
	.string	"_lock"
.LASF151:
	.string	"Xthal_dcache_is_writeback"
.LASF154:
	.string	"Xthal_release_minor"
.LASF23:
	.string	"long unsigned int"
.LASF218:
	.string	"Xthal_dataram_size"
.LASF96:
	.string	"_niobs"
.LASF275:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF147:
	.string	"Xthal_icache_linesize"
.LASF9:
	.string	"int32_t"
.LASF42:
	.string	"_dso_handle"
.LASF188:
	.string	"Xthal_timer_interrupt"
.LASF162:
	.string	"Xthal_have_nsa"
.LASF267:
	.string	"esp_restart"
.LASF243:
	.string	"Xthal_itlb_ways"
.LASF70:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint32_t"
.LASF254:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF114:
	.string	"_getdate_err"
.LASF272:
	.string	"heap_caps_get_free_size"
.LASF225:
	.string	"Xthal_dcache_ways"
.LASF263:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF219:
	.string	"Xthal_xlmi_vaddr"
.LASF101:
	.string	"_add"
.LASF125:
	.string	"esp_err_t"
.LASF196:
	.string	"Xthal_have_interrupts"
.LASF262:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF49:
	.string	"__sbuf"
.LASF169:
	.string	"Xthal_have_speculation"
.LASF95:
	.string	"_glue"
.LASF241:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF193:
	.string	"Xthal_have_prid"
.LASF76:
	.string	"__sglue"
.LASF179:
	.string	"Xthal_hw_release_internal"
.LASF109:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbtowc_state"
.LASF200:
	.string	"Xthal_tram_enabled"
.LASF66:
	.string	"_locale"
.LASF41:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF57:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF251:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF126:
	.string	"shutdown_handler_t"
.LASF43:
	.string	"_fntypes"
.LASF51:
	.string	"_size"
.LASF194:
	.string	"Xthal_have_exceptions"
.LASF220:
	.string	"Xthal_xlmi_paddr"
.LASF14:
	.string	"_off_t"
.LASF87:
	.string	"_nbuf"
.LASF259:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF235:
	.string	"Xthal_mmu_asid_kernel"
.LASF171:
	.string	"Xthal_have_pif"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF190:
	.string	"Xthal_num_dbreak"
.LASF92:
	.string	"_flags2"
.LASF137:
	.string	"Xthal_all_extra_align"
.LASF44:
	.string	"_is_cxa"
.LASF99:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF278:
	.string	"__locale_t"
.LASF170:
	.string	"Xthal_have_threadptr"
.LASF84:
	.string	"_seek"
.LASF142:
	.string	"Xthal_cp_mask"
.LASF61:
	.string	"_stderr"
.LASF279:
	.string	"shutdown_handlers"
.LASF16:
	.string	"wint_t"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF139:
	.string	"Xthal_num_coprocessors"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
