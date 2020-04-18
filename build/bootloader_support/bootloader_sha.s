	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/bootloader_sha.c"
	.loc 1 22 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 23 5 view .LVU1
	.loc 1 23 61 is_stmt 0 view .LVU2
	movi	a10, 0x70
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 24 5 is_stmt 1 view .LVU3
	.loc 1 24 8 is_stmt 0 view .LVU4
	beqz.n	a10, .L2
	.loc 1 27 5 is_stmt 1 view .LVU5
	call8	mbedtls_sha256_init
.LVL2:
	.loc 1 28 5 view .LVU6
	.loc 1 28 15 is_stmt 0 view .LVU7
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha256_starts_ret
.LVL3:
	.loc 1 29 5 is_stmt 1 view .LVU8
	.loc 1 29 8 is_stmt 0 view .LVU9
	beqz.n	a10, .L1
.LVL4:
.L2:
	.loc 1 30 9 is_stmt 1 view .LVU10
	.loc 1 30 15 is_stmt 0 view .LVU11
	movi.n	a2, 0
.LVL5:
.L1:
	.loc 1 33 1 view .LVU12
	retw.n
.LFE3:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.bootloader_sha256_data.str1.1,"aMS",@progbits,1
.LC0:
	.string	"handle != NULL"
.LC3:
	.string	"/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/bootloader_sha.c"
.LC5:
	.string	"ret == 0"
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3372
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LVL6:
.LFB4:
	.loc 1 36 1 is_stmt 1 view -0
	.loc 1 36 1 is_stmt 0 view .LVU14
	entry	sp, 32
.LCFI1:
	.loc 1 37 4 is_stmt 1 view .LVU15
	.loc 1 36 1 is_stmt 0 view .LVU16
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 37 27 view .LVU17
	bnez.n	a2, .L11
	.loc 1 37 29 discriminator 1 view .LVU18
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x25
	j	.L13
.L11:
	.loc 1 38 5 is_stmt 1 view .LVU19
.LVL7:
	.loc 1 39 5 view .LVU20
	.loc 1 39 15 is_stmt 0 view .LVU21
	call8	mbedtls_sha256_update_ret
.LVL8:
	.loc 1 40 4 is_stmt 1 view .LVU22
	.loc 1 40 16 is_stmt 0 view .LVU23
	beqz.n	a10, .L10
	.loc 1 40 18 discriminator 1 view .LVU24
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x28
.LVL9:
.L13:
	.loc 1 40 18 discriminator 1 view .LVU25
	l32r	a10, .LC4
	call8	__assert_func
.LVL10:
.L10:
	.loc 1 41 1 view .LVU26
	retw.n
.LFE4:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$3379
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LVL11:
.LFB5:
	.loc 1 44 1 is_stmt 1 view -0
	.loc 1 44 1 is_stmt 0 view .LVU28
	entry	sp, 32
.LCFI2:
	.loc 1 45 4 is_stmt 1 view .LVU29
	.loc 1 44 1 is_stmt 0 view .LVU30
	mov.n	a11, a3
	.loc 1 45 27 view .LVU31
	bnez.n	a2, .L15
	.loc 1 45 29 discriminator 1 view .LVU32
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x2d
	j	.L23
.L15:
	.loc 1 46 5 is_stmt 1 view .LVU33
.LVL12:
	.loc 1 47 5 view .LVU34
	.loc 1 47 8 is_stmt 0 view .LVU35
	beqz.n	a3, .L16
.LBB2:
	.loc 1 48 9 is_stmt 1 view .LVU36
	.loc 1 48 19 is_stmt 0 view .LVU37
	mov.n	a10, a2
	call8	mbedtls_sha256_finish_ret
.LVL13:
	.loc 1 49 8 is_stmt 1 view .LVU38
	.loc 1 49 20 is_stmt 0 view .LVU39
	beqz.n	a10, .L16
	.loc 1 49 22 discriminator 1 view .LVU40
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi.n	a11, 0x31
.LVL14:
.L23:
	.loc 1 49 22 discriminator 1 view .LVU41
	l32r	a10, .LC9
	call8	__assert_func
.LVL15:
.L16:
	.loc 1 49 22 discriminator 1 view .LVU42
.LBE2:
	.loc 1 51 5 is_stmt 1 view .LVU43
	mov.n	a10, a2
	call8	mbedtls_sha256_free
.LVL16:
	.loc 1 52 5 view .LVU44
	mov.n	a10, a2
	call8	free
.LVL17:
	.loc 1 53 1 is_stmt 0 view .LVU45
	retw.n
.LFE5:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.rodata.__func__$3379,"a"
	.type	__func__$3379, @object
	.size	__func__$3379, 25
__func__$3379:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$3372,"a"
	.type	__func__$3372, @object
	.size	__func__$3372, 23
__func__$3372:
	.string	"bootloader_sha256_data"
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
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 10 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/sha256_alt.h"
	.file 11 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.file 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc84
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xc
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0x99
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xd0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x10f
	.uleb128 0x9
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x133
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x10f
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xa5
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xd
	.byte	0x4
	.4byte	0x15a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0xe
	.4byte	0x15a
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x14d
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1cc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x172
	.uleb128 0x8
	.4byte	0x166
	.4byte	0x1e2
	.uleb128 0x9
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x265
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x4d
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2aa
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2aa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2aa
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x166
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x166
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14b
	.4byte	0x2ba
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x2fc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x2fc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x302
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x319
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0x8
	.4byte	0x312
	.4byte	0x312
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x318
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x265
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x347
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x347
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c0
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x347
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x31f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x524
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x34d
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x524
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x765
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x765
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x765
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x154
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8cd
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8d3
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8e4
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4d
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x154
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ea
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8f0
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x154
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x901
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2fc
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2ba
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x726
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x765
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x90d
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x154
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x66d
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x347
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x31f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x524
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x14b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x68b
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6b5
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6d9
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x6f3
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x31f
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x347
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x4d
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x6f9
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x709
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x31f
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x4d
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xb8
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x13f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x133
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x4d
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x68b
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0x154
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x66d
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x6af
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0x6af
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x161
	.uleb128 0xd
	.byte	0x4
	.4byte	0x691
	.uleb128 0x17
	.4byte	0xc4
	.4byte	0x6d9
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0xc4
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6bb
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x6f3
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6df
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x709
	.uleb128 0x9
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x719
	.uleb128 0x9
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52a
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x75f
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x75f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x765
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x726
	.uleb128 0xd
	.byte	0x4
	.4byte	0x719
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7b2
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7b2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7b2
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x6e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x46
	.4byte	0x7c2
	.uleb128 0x9
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x809
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1cc
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x809
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8b8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x154
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x133
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x133
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x133
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8b8
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4d
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x133
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x133
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x133
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x133
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x133
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x15a
	.4byte	0x8c8
	.uleb128 0x9
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF155
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7c2
	.uleb128 0x1a
	.4byte	0x8e4
	.uleb128 0x18
	.4byte	0x524
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8d9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x76b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x1a
	.4byte	0x901
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x907
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x80f
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x524
	.uleb128 0xd
	.byte	0x4
	.4byte	0x94d
	.uleb128 0x1c
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x154
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x1b
	.byte	0xf
	.4byte	0x14b
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.4byte	0x60
	.byte	0xa
	.byte	0x20
	.byte	0xe
	.4byte	0x987
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xa
	.byte	0x24
	.byte	0x3
	.4byte	0x966
	.uleb128 0xa
	.byte	0x70
	.byte	0xa
	.byte	0x29
	.byte	0x9
	.4byte	0x9de
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.4byte	0x9de
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xa
	.byte	0x2c
	.byte	0xe
	.4byte	0x9ee
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.byte	0x2d
	.byte	0x13
	.4byte	0x9fe
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.byte	0x2e
	.byte	0x9
	.4byte	0x4d
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa
	.byte	0x2f
	.byte	0x1d
	.4byte	0x987
	.byte	0x6c
	.byte	0
	.uleb128 0x8
	.4byte	0x81
	.4byte	0x9ee
	.uleb128 0x9
	.4byte	0x60
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x81
	.4byte	0x9fe
	.uleb128 0x9
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0xa0e
	.uleb128 0x9
	.4byte	0x60
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xa
	.byte	0x31
	.byte	0x1
	.4byte	0x993
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadd
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2b
	.byte	0x3a
	.4byte	0x95a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2b
	.byte	0x4b
	.4byte	0xadd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF143
	.4byte	0xaf3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3379
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x2e
	.byte	0x1d
	.4byte	0xaf8
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xab8
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x25
	.4byte	.LVL13
	.4byte	0xc27
	.4byte	0xaa4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0xc33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0xc3f
	.4byte	0xacc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0xc4b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x75
	.uleb128 0x8
	.4byte	0x161
	.4byte	0xaf3
	.uleb128 0x9
	.4byte	0x60
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	0xae3
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa0e
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb92
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0x23
	.byte	0x38
	.4byte	0x95a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0x23
	.byte	0x4c
	.4byte	0x947
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0x23
	.byte	0x59
	.4byte	0x8d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF143
	.4byte	0xba2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3372
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x26
	.byte	0x1d
	.4byte	0xaf8
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xc57
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xc33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x161
	.4byte	0xba2
	.uleb128 0x9
	.4byte	0x60
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	0xb92
	.uleb128 0x29
	.4byte	.LASF156
	.byte	0x1
	.byte	0x15
	.byte	0x1c
	.4byte	0x95a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc27
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x17
	.byte	0x1d
	.4byte	0xaf8
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.4byte	.LVL0
	.4byte	0xc63
	.4byte	0xbfd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x25
	.4byte	.LVL2
	.4byte	0xc6f
	.4byte	0xc11
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0xc7b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x8b
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xc
	.byte	0x29
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xb
	.byte	0x56
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x8
	.byte	0x61
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xb
	.byte	0x7b
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x8
	.byte	0x6c
	.byte	0x8
	.uleb128 0x2a
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xb
	.byte	0x4d
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xb
	.byte	0x6c
	.byte	0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS4:
	.uleb128 .LVU34
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU20
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU3
	.uleb128 .LVU12
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU8
	.uleb128 .LVU10
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
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
.LASF44:
	.string	"_dso_handle"
.LASF149:
	.string	"malloc"
.LASF139:
	.string	"bootloader_sha256_finish"
.LASF53:
	.string	"_size"
.LASF144:
	.string	"mbedtls_sha256_finish_ret"
.LASF11:
	.string	"size_t"
.LASF99:
	.string	"_rand48"
.LASF65:
	.string	"_emergency"
.LASF151:
	.string	"mbedtls_sha256_starts_ret"
.LASF128:
	.string	"ESP_MBEDTLS_SHA256_HARDWARE"
.LASF4:
	.string	"__uint8_t"
.LASF58:
	.string	"_data"
.LASF119:
	.string	"_wcrtomb_state"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF8:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF155:
	.string	"__locale_t"
.LASF117:
	.string	"_mbrtowc_state"
.LASF147:
	.string	"free"
.LASF112:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF150:
	.string	"mbedtls_sha256_init"
.LASF88:
	.string	"_ubuf"
.LASF52:
	.string	"_base"
.LASF35:
	.string	"__tm_hour"
.LASF79:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF83:
	.string	"_cookie"
.LASF78:
	.string	"__sglue"
.LASF132:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF146:
	.string	"mbedtls_sha256_free"
.LASF104:
	.string	"_mprec"
.LASF55:
	.string	"_flags"
.LASF46:
	.string	"_is_cxa"
.LASF61:
	.string	"_stdin"
.LASF90:
	.string	"_blksize"
.LASF12:
	.string	"_lock_t"
.LASF129:
	.string	"ESP_MBEDTLS_SHA256_SOFTWARE"
.LASF72:
	.string	"_cvtbuf"
.LASF91:
	.string	"_offset"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_strtok_last"
.LASF116:
	.string	"_mbrlen_state"
.LASF43:
	.string	"_fnargs"
.LASF49:
	.string	"_fns"
.LASF5:
	.string	"__uint32_t"
.LASF29:
	.string	"_sign"
.LASF23:
	.string	"_flock_t"
.LASF63:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF70:
	.string	"_gamma_signgam"
.LASF84:
	.string	"_read"
.LASF106:
	.string	"_result_k"
.LASF32:
	.string	"__tm"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF6:
	.string	"unsigned int"
.LASF19:
	.string	"__wchb"
.LASF62:
	.string	"_stdout"
.LASF71:
	.string	"_cvtlen"
.LASF24:
	.string	"long unsigned int"
.LASF54:
	.string	"__sFILE_fake"
.LASF97:
	.string	"_niobs"
.LASF141:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF77:
	.string	"_atexit0"
.LASF81:
	.string	"_signal_buf"
.LASF75:
	.string	"_asctime_buf"
.LASF138:
	.string	"digest"
.LASF105:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF17:
	.string	"wint_t"
.LASF92:
	.string	"_lock"
.LASF153:
	.string	"/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/bootloader_sha.c"
.LASF94:
	.string	"_flags2"
.LASF156:
	.string	"bootloader_sha256_start"
.LASF85:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF148:
	.string	"mbedtls_sha256_update_ret"
.LASF80:
	.string	"_misc"
.LASF140:
	.string	"bootloader_sha256_data"
.LASF121:
	.string	"__sf_fake_stdin"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF37:
	.string	"__tm_mon"
.LASF47:
	.string	"_atexit"
.LASF125:
	.string	"suboptarg"
.LASF66:
	.string	"__sdidinit"
.LASF15:
	.string	"_off_t"
.LASF154:
	.string	"/home/dieter/Development/ProjektEi/build/bootloader_support"
.LASF108:
	.string	"_freelist"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF145:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF98:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF40:
	.string	"__tm_yday"
.LASF51:
	.string	"__sbuf"
.LASF95:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF82:
	.string	"__sFILE"
.LASF93:
	.string	"_mbstate"
.LASF103:
	.string	"_rand_next"
.LASF143:
	.string	"__func__"
.LASF142:
	.string	"data_len"
.LASF111:
	.string	"_mblen_state"
.LASF64:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF68:
	.string	"_locale"
.LASF69:
	.string	"__cleanup"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF28:
	.string	"_maxwds"
.LASF59:
	.string	"_reent"
.LASF100:
	.string	"_seed"
.LASF20:
	.string	"__count"
.LASF10:
	.string	"uint32_t"
.LASF86:
	.string	"_seek"
.LASF16:
	.string	"_fpos_t"
.LASF60:
	.string	"_errno"
.LASF25:
	.string	"char"
.LASF135:
	.string	"mode"
.LASF34:
	.string	"__tm_min"
.LASF134:
	.string	"is224"
.LASF133:
	.string	"buffer"
.LASF101:
	.string	"_mult"
.LASF27:
	.string	"_next"
.LASF152:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"__value"
.LASF45:
	.string	"_fntypes"
.LASF109:
	.string	"_misc_reent"
.LASF126:
	.string	"bootloader_sha256_handle_t"
.LASF102:
	.string	"_add"
.LASF26:
	.string	"__ULong"
.LASF115:
	.string	"_getdate_err"
.LASF130:
	.string	"esp_mbedtls_sha256_mode"
.LASF131:
	.string	"total"
.LASF124:
	.string	"_global_impure_ptr"
.LASF56:
	.string	"_file"
.LASF30:
	.string	"_wds"
.LASF39:
	.string	"__tm_wday"
.LASF96:
	.string	"_glue"
.LASF9:
	.string	"uint8_t"
.LASF114:
	.string	"_l64a_buf"
.LASF76:
	.string	"_sig_func"
.LASF89:
	.string	"_nbuf"
.LASF136:
	.string	"mbedtls_sha256_context"
.LASF137:
	.string	"handle"
.LASF41:
	.string	"__tm_isdst"
.LASF74:
	.string	"_localtime_buf"
.LASF87:
	.string	"_close"
.LASF123:
	.string	"__sf_fake_stderr"
.LASF73:
	.string	"_r48"
.LASF113:
	.string	"_mbtowc_state"
.LASF107:
	.string	"_p5s"
.LASF36:
	.string	"__tm_mday"
.LASF127:
	.string	"ESP_MBEDTLS_SHA256_UNUSED"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
