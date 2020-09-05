	.file	"diskio_sdmmc.c"
	.text
.Ltext0:
	.section	.text.ff_sdmmc_status,"ax",@progbits
	.align	4
	.global	ff_sdmmc_status
	.type	ff_sdmmc_status, @function
ff_sdmmc_status:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_sdmmc.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE27:
	.size	ff_sdmmc_status, .-ff_sdmmc_status
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"card"
.LC4:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_sdmmc.c"
	.section	.text.ff_sdmmc_ioctl,"ax",@progbits
	.literal_position
	.literal .LC0, s_cards
	.literal .LC2, .LC1
	.literal .LC3, __func__$5487
	.literal .LC5, .LC4
	.align	4
	.global	ff_sdmmc_ioctl
	.type	ff_sdmmc_ioctl, @function
ff_sdmmc_ioctl:
.LFB30:
	.loc 1 60 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 61 0
	l32r	a8, .LC0
	.loc 1 60 0
	extui	a2, a2, 0, 8
	.loc 1 61 0
	addx4	a2, a2, a8
.LVL3:
	l32i.n	a8, a2, 0
.LVL4:
	.loc 1 60 0
	extui	a3, a3, 0, 8
	.loc 1 62 0
	bnez.n	a8, .L3
.LVL5:
.LBB4:
.LBB5:
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi.n	a11, 0x3e
	call8	__assert_func
.LVL6:
.L3:
.LBE5:
.LBE4:
	.loc 1 63 0
	beqi	a3, 1, .L5
	.loc 1 65 0
	movi.n	a2, 0
	.loc 1 63 0
	beq	a3, a2, .L6
	beqi	a3, 2, .L7
	.loc 1 73 0
	movi.n	a2, 1
	retw.n
.L5:
	.loc 1 67 0
	l32i	a2, a8, 96
	s32i.n	a2, a4, 0
	.loc 1 68 0
	movi.n	a2, 0
	retw.n
.L7:
	.loc 1 70 0
	l32i	a3, a8, 100
.LVL7:
	s16i	a3, a4, 0
.L6:
	.loc 1 76 0
	retw.n
.LFE30:
	.size	ff_sdmmc_ioctl, .-ff_sdmmc_ioctl
	.section	.rodata.str1.1
.LC10:
	.string	"diskio_sdmmc"
.LC12:
	.string	"\033[0;31mE (%d) %s: sdmmc_read_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_read,"ax",@progbits
	.literal_position
	.literal .LC6, s_cards
	.literal .LC7, .LC1
	.literal .LC8, __func__$5470
	.literal .LC9, .LC4
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	ff_sdmmc_read
	.type	ff_sdmmc_read, @function
ff_sdmmc_read:
.LFB28:
	.loc 1 36 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 37 0
	l32r	a8, .LC6
	.loc 1 36 0
	extui	a2, a2, 0, 8
	.loc 1 37 0
	addx4	a2, a2, a8
.LVL9:
	l32i.n	a10, a2, 0
	.loc 1 36 0
	mov.n	a12, a4
	mov.n	a13, a5
.LVL10:
	.loc 1 38 0
	bnez.n	a10, .L11
.LVL11:
.LBB8:
.LBB9:
	l32r	a13, .LC7
	l32r	a12, .LC8
	l32r	a10, .LC9
.LVL12:
	movi.n	a11, 0x26
	call8	__assert_func
.LVL13:
.L11:
.LBE9:
.LBE8:
	.loc 1 39 0
	mov.n	a11, a3
	call8	sdmmc_read_sectors
.LVL14:
	.loc 1 44 0
	movi.n	a2, 0
	.loc 1 39 0
	mov.n	a3, a10
.LVL15:
	.loc 1 40 0
	beq	a10, a2, .L12
	.loc 1 41 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC11
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 42 0 discriminator 2
	movi.n	a2, 1
.L12:
	.loc 1 45 0
	retw.n
.LFE28:
	.size	ff_sdmmc_read, .-ff_sdmmc_read
	.section	.rodata.str1.1
.LC19:
	.string	"\033[0;31mE (%d) %s: sdmmc_write_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_write,"ax",@progbits
	.literal_position
	.literal .LC14, s_cards
	.literal .LC15, .LC1
	.literal .LC16, __func__$5479
	.literal .LC17, .LC4
	.literal .LC18, .LC10
	.literal .LC20, .LC19
	.align	4
	.global	ff_sdmmc_write
	.type	ff_sdmmc_write, @function
ff_sdmmc_write:
.LFB29:
	.loc 1 48 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 49 0
	l32r	a8, .LC14
	.loc 1 48 0
	extui	a2, a2, 0, 8
	.loc 1 49 0
	addx4	a2, a2, a8
.LVL19:
	l32i.n	a10, a2, 0
	.loc 1 48 0
	mov.n	a12, a4
	mov.n	a13, a5
.LVL20:
	.loc 1 50 0
	bnez.n	a10, .L16
.LVL21:
.LBB12:
.LBB13:
	l32r	a13, .LC15
	l32r	a12, .LC16
	l32r	a10, .LC17
.LVL22:
	movi.n	a11, 0x32
	call8	__assert_func
.LVL23:
.L16:
.LBE13:
.LBE12:
	.loc 1 51 0
	mov.n	a11, a3
	call8	sdmmc_write_sectors
.LVL24:
	.loc 1 56 0
	movi.n	a2, 0
	.loc 1 51 0
	mov.n	a3, a10
.LVL25:
	.loc 1 52 0
	beq	a10, a2, .L17
	.loc 1 53 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC18
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 54 0 discriminator 2
	movi.n	a2, 1
.L17:
	.loc 1 57 0
	retw.n
.LFE29:
	.size	ff_sdmmc_write, .-ff_sdmmc_write
	.section	.text.ff_sdmmc_initialize,"ax",@progbits
	.align	4
	.global	ff_sdmmc_initialize
	.type	ff_sdmmc_initialize, @function
ff_sdmmc_initialize:
.LFB36:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0
	retw.n
.LFE36:
	.size	ff_sdmmc_initialize, .-ff_sdmmc_initialize
	.section	.text.ff_diskio_register_sdmmc,"ax",@progbits
	.literal_position
	.literal .LC21, s_cards
	.literal .LC22, sdmmc_impl$5496
	.align	4
	.global	ff_diskio_register_sdmmc
	.type	ff_diskio_register_sdmmc, @function
ff_diskio_register_sdmmc:
.LFB31:
	.loc 1 79 0
.LVL28:
	.loc 1 79 0
	entry	sp, 32
.LCFI5:
	.loc 1 87 0
	l32r	a8, .LC21
	.loc 1 79 0
	extui	a10, a2, 0, 8
	.loc 1 88 0
	l32r	a11, .LC22
	.loc 1 87 0
	addx4	a8, a10, a8
	s32i.n	a3, a8, 0
	.loc 1 88 0
	call8	ff_diskio_register
.LVL29:
	retw.n
.LFE31:
	.size	ff_diskio_register_sdmmc, .-ff_diskio_register_sdmmc
	.section	.rodata.sdmmc_impl$5496,"a",@progbits
	.align	4
	.type	sdmmc_impl$5496, @object
	.size	sdmmc_impl$5496, 20
sdmmc_impl$5496:
	.word	ff_sdmmc_initialize
	.word	ff_sdmmc_status
	.word	ff_sdmmc_read
	.word	ff_sdmmc_write
	.word	ff_sdmmc_ioctl
	.section	.rodata.__func__$5487,"a",@progbits
	.type	__func__$5487, @object
	.size	__func__$5487, 15
__func__$5487:
	.string	"ff_sdmmc_ioctl"
	.section	.rodata.__func__$5479,"a",@progbits
	.type	__func__$5479, @object
	.size	__func__$5479, 15
__func__$5479:
	.string	"ff_sdmmc_write"
	.section	.rodata.__func__$5470,"a",@progbits
	.type	__func__$5470, @object
	.size	__func__$5470, 14
__func__$5470:
	.string	"ff_sdmmc_read"
	.section	.bss.s_cards,"aw",@nobits
	.align	4
	.type	s_cards, @object
	.size	s_cards, 8
s_cards:
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI4-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/integer.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/include/sdmmc_cmd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xc
	.4byte	.LASF119
	.4byte	.LASF120
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x13
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x16
	.4byte	0x49
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x62
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1f
	.4byte	0x7b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x12
	.4byte	0x49
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x16
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0xd7
	.uleb128 0x8
	.4byte	0xd7
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x15
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x21
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2c
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2d
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x18
	.4byte	0x10f
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x76
	.4byte	0x11a
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x19f
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x25
	.4byte	0x142
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2d
	.4byte	0xe9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x31
	.4byte	0x1aa
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x227
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x39
	.4byte	0x206
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x247
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3f
	.4byte	0xf9
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x40
	.4byte	0x232
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x45
	.4byte	0x25d
	.uleb128 0x8
	.4byte	0x11a
	.4byte	0x26d
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x2e2
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x52
	.4byte	0x11a
	.byte	0
	.uleb128 0xc
	.string	"arg"
	.byte	0x8
	.byte	0x53
	.4byte	0x11a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x54
	.4byte	0x252
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x55
	.4byte	0xce
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x56
	.4byte	0xc3
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x57
	.4byte	0xc3
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x74
	.4byte	0x125
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x76
	.4byte	0x26d
	.uleb128 0xa
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x39e
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x7f
	.4byte	0x11a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0x8c
	.4byte	0x39e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x8
	.byte	0x8d
	.4byte	0x3aa
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0x8e
	.4byte	0x3c4
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8f
	.4byte	0x3d9
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x8
	.byte	0x90
	.4byte	0x3f3
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x8
	.byte	0x91
	.4byte	0x40d
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x8
	.byte	0x92
	.4byte	0x42d
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x8
	.byte	0x93
	.4byte	0x3aa
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0x94
	.4byte	0x442
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0x95
	.4byte	0x45c
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF70
	.uleb128 0xd
	.4byte	0x125
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a5
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x3c4
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b0
	.uleb128 0xe
	.4byte	0xc3
	.4byte	0x3d9
	.uleb128 0xf
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ca
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x3f3
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3df
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x40d
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x11a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x427
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x427
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x413
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x442
	.uleb128 0xf
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x433
	.uleb128 0xe
	.4byte	0x125
	.4byte	0x45c
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x137
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x448
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0x97
	.4byte	0x2ed
	.uleb128 0xa
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x53f
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x8
	.byte	0x9d
	.4byte	0x462
	.byte	0
	.uleb128 0xc
	.string	"ocr"
	.byte	0x8
	.byte	0x9e
	.4byte	0x11a
	.byte	0x38
	.uleb128 0xc
	.string	"cid"
	.byte	0x8
	.byte	0x9f
	.4byte	0x1fb
	.byte	0x3c
	.uleb128 0xc
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x19f
	.byte	0x58
	.uleb128 0xc
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x227
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x8
	.byte	0xa2
	.4byte	0x247
	.byte	0x7c
	.uleb128 0xc
	.string	"rca"
	.byte	0x8
	.byte	0xa3
	.4byte	0x104
	.byte	0x7e
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa4
	.4byte	0x104
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x8
	.byte	0xa5
	.4byte	0x11a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x8
	.byte	0xa6
	.4byte	0x11a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x8
	.byte	0xa7
	.4byte	0x11a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa8
	.4byte	0x11a
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa9
	.4byte	0x11a
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x8
	.byte	0xaa
	.4byte	0x11a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x8
	.byte	0xab
	.4byte	0x11a
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x8
	.byte	0xac
	.4byte	0x46d
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x9
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x14
	.4byte	0x580
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0x1a
	.4byte	0x555
	.uleb128 0xa
	.byte	0x14
	.byte	0x9
	.byte	0x34
	.4byte	0x5d0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x9
	.byte	0x35
	.4byte	0x5df
	.byte	0
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0x36
	.4byte	0x5df
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0x37
	.4byte	0x609
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x9
	.byte	0x38
	.4byte	0x638
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x9
	.byte	0x39
	.4byte	0x657
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	0x54a
	.4byte	0x5df
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d0
	.uleb128 0xe
	.4byte	0x580
	.4byte	0x603
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x603
	.uleb128 0xf
	.4byte	0x70
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e5
	.uleb128 0xe
	.4byte	0x580
	.4byte	0x62d
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x62d
	.uleb128 0xf
	.4byte	0x70
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x633
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60f
	.uleb128 0xe
	.4byte	0x580
	.4byte	0x657
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0xce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63e
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x9
	.byte	0x3a
	.4byte	0x58b
	.uleb128 0x11
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x699
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3b
	.4byte	0x580
	.byte	0x1
	.4byte	0x6e3
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.uleb128 0x15
	.string	"cmd"
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3b
	.4byte	0xce
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x3d
	.4byte	0x6e3
	.uleb128 0x17
	.4byte	.LASF103
	.4byte	0x6f9
	.4byte	.LASF104
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53f
	.uleb128 0x8
	.4byte	0xd7
	.4byte	0x6f9
	.uleb128 0x9
	.4byte	0xd0
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x6e9
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.byte	0x23
	.4byte	0x580
	.byte	0x1
	.4byte	0x75e
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.byte	0x23
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1
	.byte	0x23
	.4byte	0x603
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x1
	.byte	0x23
	.4byte	0x70
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x1
	.byte	0x23
	.4byte	0x2c
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x25
	.4byte	0x6e3
	.uleb128 0x17
	.4byte	.LASF103
	.4byte	0x76e
	.4byte	.LASF105
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.byte	0x27
	.4byte	0x125
	.byte	0
	.uleb128 0x8
	.4byte	0xd7
	.4byte	0x76e
	.uleb128 0x9
	.4byte	0xd0
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x75e
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2f
	.4byte	0x580
	.byte	0x1
	.4byte	0x7d3
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2f
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2f
	.4byte	0x62d
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2f
	.4byte	0x70
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x31
	.4byte	0x6e3
	.uleb128 0x17
	.4byte	.LASF103
	.4byte	0x7d3
	.4byte	.LASF108
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.byte	0x33
	.4byte	0x125
	.byte	0
	.uleb128 0x7
	.4byte	0x6e9
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1e
	.4byte	0x54a
	.byte	0x1
	.4byte	0x7f4
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.byte	0x1e
	.4byte	0x3e
	.byte	0
	.uleb128 0x19
	.4byte	0x7d8
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x811
	.uleb128 0x1a
	.4byte	0x7e8
	.4byte	.LLST0
	.byte	0
	.uleb128 0x19
	.4byte	0x699
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bc
	.uleb128 0x1a
	.4byte	0x6a9
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x6b4
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x6bf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	0x6ca
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5487
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1a
	.4byte	0x6a9
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x6b4
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	0x6bf
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1f
	.4byte	0x6ca
	.uleb128 0x1d
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5487
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0xb7e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5487
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x6fe
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d0
	.uleb128 0x1a
	.4byte	0x70e
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	0x719
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x724
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	0x72f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	0x73a
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	0x745
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5470
	.uleb128 0x1d
	.4byte	0x752
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x982
	.uleb128 0x23
	.4byte	0x70e
	.uleb128 0x1a
	.4byte	0x719
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	0x724
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x72f
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1f
	.4byte	0x73a
	.uleb128 0x1f
	.4byte	0x752
	.uleb128 0x1d
	.4byte	0x745
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5470
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0xb7e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5470
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xb89
	.4byte	0x996
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0xb94
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0xb9f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x773
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae4
	.uleb128 0x1a
	.4byte	0x783
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	0x78e
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	0x799
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	0x7a4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	0x7af
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	0x7ba
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5479
	.uleb128 0x1d
	.4byte	0x7c7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xa96
	.uleb128 0x23
	.4byte	0x783
	.uleb128 0x1a
	.4byte	0x78e
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	0x799
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	0x7a4
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1f
	.4byte	0x7af
	.uleb128 0x1f
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	0x7ba
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5479
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0xb7e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5479
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0xbaa
	.4byte	0xaaa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL26
	.4byte	0xb94
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0xb9f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb41
	.uleb128 0x27
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4e
	.4byte	0x6e3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF110
	.byte	0x1
	.byte	0x50
	.4byte	0xb41
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5496
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xbb5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5496
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x65d
	.uleb128 0x8
	.4byte	0x6e3
	.4byte	0xb56
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF111
	.byte	0x1
	.byte	0x15
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cards
	.uleb128 0x29
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0xb79
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xde
	.uleb128 0x2a
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.byte	0x29
	.uleb128 0x2a
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xc
	.byte	0x4d
	.uleb128 0x2a
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xa
	.byte	0x6b
	.uleb128 0x2a
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xc
	.byte	0x3d
	.uleb128 0x2a
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x9
	.byte	0x46
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.4byte	.LFE27
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"count"
.LASF29:
	.string	"capacity"
.LASF85:
	.string	"RES_WRPRT"
.LASF32:
	.string	"card_command_class"
.LASF17:
	.string	"size_t"
.LASF12:
	.string	"__uint8_t"
.LASF38:
	.string	"revision"
.LASF27:
	.string	"csd_ver"
.LASF86:
	.string	"RES_NOTRDY"
.LASF60:
	.string	"init"
.LASF63:
	.string	"set_bus_ddr_mode"
.LASF46:
	.string	"sdmmc_ext_csd_t"
.LASF10:
	.string	"long long unsigned int"
.LASF44:
	.string	"sdmmc_scr_t"
.LASF115:
	.string	"esp_log_write"
.LASF49:
	.string	"response"
.LASF98:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"long long int"
.LASF11:
	.string	"signed char"
.LASF61:
	.string	"set_bus_width"
.LASF101:
	.string	"buff"
.LASF7:
	.string	"long int"
.LASF111:
	.string	"s_cards"
.LASF34:
	.string	"sdmmc_csd_t"
.LASF87:
	.string	"RES_PARERR"
.LASF65:
	.string	"do_transaction"
.LASF21:
	.string	"uint16_t"
.LASF102:
	.string	"card"
.LASF8:
	.string	"DWORD"
.LASF109:
	.string	"ff_sdmmc_status"
.LASF35:
	.string	"mfg_id"
.LASF15:
	.string	"__uint32_t"
.LASF100:
	.string	"pdrv"
.LASF2:
	.string	"BYTE"
.LASF41:
	.string	"sdmmc_cid_t"
.LASF72:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF67:
	.string	"io_int_enable"
.LASF104:
	.string	"ff_sdmmc_ioctl"
.LASF1:
	.string	"UINT"
.LASF64:
	.string	"set_card_clk"
.LASF47:
	.string	"sdmmc_response_t"
.LASF77:
	.string	"num_io_functions"
.LASF117:
	.string	"ff_diskio_register"
.LASF118:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"name"
.LASF50:
	.string	"data"
.LASF105:
	.string	"ff_sdmmc_read"
.LASF6:
	.string	"short unsigned int"
.LASF40:
	.string	"date"
.LASF57:
	.string	"slot"
.LASF106:
	.string	"sector"
.LASF69:
	.string	"command_timeout_ms"
.LASF14:
	.string	"__int32_t"
.LASF31:
	.string	"read_block_len"
.LASF91:
	.string	"write"
.LASF97:
	.string	"ESP_LOG_INFO"
.LASF74:
	.string	"is_mem"
.LASF52:
	.string	"blklen"
.LASF120:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/fatfs"
.LASF18:
	.string	"sizetype"
.LASF51:
	.string	"datalen"
.LASF93:
	.string	"ff_diskio_impl_t"
.LASF36:
	.string	"oem_id"
.LASF116:
	.string	"sdmmc_write_sectors"
.LASF26:
	.string	"TickType_t"
.LASF33:
	.string	"tr_speed"
.LASF5:
	.string	"WORD"
.LASF83:
	.string	"RES_OK"
.LASF28:
	.string	"mmc_ver"
.LASF75:
	.string	"is_sdio"
.LASF71:
	.string	"sdmmc_host_t"
.LASF80:
	.string	"reserved"
.LASF70:
	.string	"float"
.LASF54:
	.string	"error"
.LASF73:
	.string	"ext_csd"
.LASF55:
	.string	"timeout_ms"
.LASF30:
	.string	"sector_size"
.LASF76:
	.string	"is_mmc"
.LASF25:
	.string	"_Bool"
.LASF22:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF114:
	.string	"esp_log_timestamp"
.LASF95:
	.string	"ESP_LOG_ERROR"
.LASF103:
	.string	"__func__"
.LASF108:
	.string	"ff_sdmmc_write"
.LASF66:
	.string	"deinit"
.LASF81:
	.string	"sdmmc_card_t"
.LASF88:
	.string	"DRESULT"
.LASF9:
	.string	"long unsigned int"
.LASF19:
	.string	"char"
.LASF99:
	.string	"ESP_LOG_VERBOSE"
.LASF13:
	.string	"__uint16_t"
.LASF94:
	.string	"ESP_LOG_NONE"
.LASF82:
	.string	"DSTATUS"
.LASF92:
	.string	"ioctl"
.LASF56:
	.string	"sdmmc_command_t"
.LASF78:
	.string	"log_bus_width"
.LASF110:
	.string	"sdmmc_impl"
.LASF113:
	.string	"sdmmc_read_sectors"
.LASF23:
	.string	"uint32_t"
.LASF96:
	.string	"ESP_LOG_WARN"
.LASF59:
	.string	"io_voltage"
.LASF89:
	.string	"status"
.LASF45:
	.string	"power_class"
.LASF24:
	.string	"esp_err_t"
.LASF20:
	.string	"uint8_t"
.LASF53:
	.string	"flags"
.LASF39:
	.string	"serial"
.LASF68:
	.string	"io_int_wait"
.LASF90:
	.string	"read"
.LASF112:
	.string	"__assert_func"
.LASF84:
	.string	"RES_ERROR"
.LASF119:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_sdmmc.c"
.LASF43:
	.string	"bus_width"
.LASF58:
	.string	"max_freq_khz"
.LASF121:
	.string	"ff_diskio_register_sdmmc"
.LASF62:
	.string	"get_bus_width"
.LASF42:
	.string	"sd_spec"
.LASF48:
	.string	"opcode"
.LASF79:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
