	.file	"diskio_rawflash.c"
	.text
.Ltext0:
	.section	.text.ff_raw_status,"ax",@progbits
	.align	4
	.global	ff_raw_status
	.type	ff_raw_status, @function
ff_raw_status:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_rawflash.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 35 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE27:
	.size	ff_raw_status, .-ff_raw_status
	.section	.text.ff_raw_write,"ax",@progbits
	.align	4
	.global	ff_raw_write
	.type	ff_raw_write, @function
ff_raw_write:
.LFB29:
	.loc 1 52 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 54 0
	movi.n	a2, 1
.LVL3:
	retw.n
.LFE29:
	.size	ff_raw_write, .-ff_raw_write
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"part"
.LC4:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_rawflash.c"
	.section	.text.ff_raw_ioctl,"ax",@progbits
	.literal_position
	.literal .LC0, ff_raw_handles
	.literal .LC2, .LC1
	.literal .LC3, __func__$5812
	.literal .LC5, .LC4
	.literal .LC6, 4096
	.align	4
	.global	ff_raw_ioctl
	.type	ff_raw_ioctl, @function
ff_raw_ioctl:
.LFB30:
	.loc 1 57 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 58 0
	l32r	a8, .LC0
	.loc 1 57 0
	extui	a2, a2, 0, 8
	.loc 1 58 0
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 57 0
	extui	a3, a3, 0, 8
	.loc 1 60 0
	bnez.n	a2, .L4
.LVL7:
.LBB4:
.LBB5:
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi.n	a11, 0x3c
	call8	__assert_func
.LVL8:
.L4:
.LBE5:
.LBE4:
	.loc 1 61 0
	beqi	a3, 1, .L6
	.loc 1 63 0
	movi.n	a2, 0
.LVL9:
	.loc 1 61 0
	beq	a3, a2, .L7
	beqi	a3, 2, .L8
	.loc 1 71 0
	movi.n	a2, 1
	retw.n
.LVL10:
.L6:
	.loc 1 65 0
	l32i.n	a2, a2, 12
.LVL11:
	srli	a2, a2, 12
	s32i.n	a2, a4, 0
	.loc 1 66 0
	movi.n	a2, 0
	retw.n
.L8:
	.loc 1 68 0
	l32r	a3, .LC6
.LVL12:
	s16i	a3, a4, 0
.L7:
	.loc 1 74 0
	retw.n
.LFE30:
	.size	ff_raw_ioctl, .-ff_raw_ioctl
	.section	.rodata.str1.1
.LC11:
	.string	"diskio_rawflash"
.LC13:
	.string	"\033[0;31mE (%d) %s: esp_partition_read failed (0x%x)\033[0m\n"
	.section	.text.ff_raw_read,"ax",@progbits
	.literal_position
	.literal .LC7, ff_raw_handles
	.literal .LC8, .LC1
	.literal .LC9, __func__$5798
	.literal .LC10, .LC4
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	ff_raw_read
	.type	ff_raw_read, @function
ff_raw_read:
.LFB28:
	.loc 1 38 0
.LVL13:
	entry	sp, 32
.LCFI3:
	.loc 1 40 0
	l32r	a8, .LC7
	.loc 1 38 0
	extui	a2, a2, 0, 8
	.loc 1 40 0
	addx4	a2, a2, a8
.LVL14:
	l32i.n	a10, a2, 0
.LVL15:
	.loc 1 41 0
	bnez.n	a10, .L12
.LVL16:
.LBB8:
.LBB9:
	l32r	a13, .LC8
	l32r	a12, .LC9
	l32r	a10, .LC10
.LVL17:
	movi.n	a11, 0x29
	call8	__assert_func
.LVL18:
.L12:
.LBE9:
.LBE8:
	.loc 1 42 0
	mov.n	a12, a3
	slli	a13, a5, 12
	slli	a11, a4, 12
	call8	esp_partition_read
.LVL19:
	.loc 1 47 0
	movi.n	a2, 0
	.loc 1 42 0
	mov.n	a3, a10
.LVL20:
	.loc 1 43 0
	beq	a10, a2, .L13
	.loc 1 44 0 discriminator 2
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC12
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	.loc 1 45 0 discriminator 2
	movi.n	a2, 1
.L13:
	.loc 1 48 0
	retw.n
.LFE28:
	.size	ff_raw_read, .-ff_raw_read
	.section	.text.ff_raw_initialize,"ax",@progbits
	.align	4
	.global	ff_raw_initialize
	.type	ff_raw_initialize, @function
ff_raw_initialize:
.LFB36:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0
	retw.n
.LFE36:
	.size	ff_raw_initialize, .-ff_raw_initialize
	.section	.text.ff_diskio_register_raw_partition,"ax",@progbits
	.literal_position
	.literal .LC15, raw_impl$5821
	.literal .LC16, ff_raw_handles
	.align	4
	.global	ff_diskio_register_raw_partition
	.type	ff_diskio_register_raw_partition, @function
ff_diskio_register_raw_partition:
.LFB31:
	.loc 1 78 0
.LVL23:
	.loc 1 78 0
	entry	sp, 32
.LCFI5:
	.loc 1 78 0
	extui	a4, a2, 0, 8
	.loc 1 80 0
	movi	a2, 0x102
.LVL24:
	.loc 1 79 0
	bgeui	a4, 2, .L18
	.loc 1 89 0
	l32r	a11, .LC15
	mov.n	a10, a4
	call8	ff_diskio_register
.LVL25:
	.loc 1 90 0
	l32r	a2, .LC16
	addx4	a4, a4, a2
.LVL26:
	s32i.n	a3, a4, 0
	.loc 1 91 0
	movi.n	a2, 0
.L18:
	.loc 1 93 0
	retw.n
.LFE31:
	.size	ff_diskio_register_raw_partition, .-ff_diskio_register_raw_partition
	.section	.text.ff_diskio_get_pdrv_raw,"ax",@progbits
	.literal_position
	.literal .LC17, ff_raw_handles
	.align	4
	.global	ff_diskio_get_pdrv_raw
	.type	ff_diskio_get_pdrv_raw, @function
ff_diskio_get_pdrv_raw:
.LFB32:
	.loc 1 97 0
.LVL27:
	entry	sp, 32
.LCFI6:
.LVL28:
.LBB10:
	.loc 1 99 0
	l32r	a8, .LC17
	l32i.n	a9, a8, 0
	beq	a2, a9, .L23
.LVL29:
	l32i.n	a9, a8, 4
.LBE10:
	.loc 1 103 0
	movi	a8, 0xff
.LBB11:
	.loc 1 99 0
	bne	a2, a9, .L22
	.loc 1 98 0
	movi.n	a8, 1
	j	.L21
.LVL30:
.L23:
	movi.n	a8, 0
.LVL31:
.L21:
	.loc 1 100 0
	extui	a8, a8, 0, 8
.L22:
.LBE11:
	.loc 1 104 0
	mov.n	a2, a8
.LVL32:
	retw.n
.LFE32:
	.size	ff_diskio_get_pdrv_raw, .-ff_diskio_get_pdrv_raw
	.section	.rodata.raw_impl$5821,"a",@progbits
	.align	4
	.type	raw_impl$5821, @object
	.size	raw_impl$5821, 20
raw_impl$5821:
	.word	ff_raw_initialize
	.word	ff_raw_status
	.word	ff_raw_read
	.word	ff_raw_write
	.word	ff_raw_ioctl
	.section	.rodata.__func__$5812,"a",@progbits
	.type	__func__$5812, @object
	.size	__func__$5812, 13
__func__$5812:
	.string	"ff_raw_ioctl"
	.section	.rodata.__func__$5798,"a",@progbits
	.type	__func__$5798, @object
	.size	__func__$5798, 12
__func__$5798:
	.string	"ff_raw_read"
	.comm	ff_raw_handles,8,4
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/integer.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x16
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1f
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x18
	.4byte	0xc8
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x11
	.4byte	0xa7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x14
	.4byte	0x12d
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x1a
	.4byte	0x102
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.byte	0x34
	.4byte	0x17d
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x35
	.4byte	0x18c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x36
	.4byte	0x18c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.4byte	0x1b6
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x38
	.4byte	0x1e5
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x39
	.4byte	0x204
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0xf7
	.4byte	0x18c
	.uleb128 0xd
	.4byte	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17d
	.uleb128 0xc
	.4byte	0x12d
	.4byte	0x1b0
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x1b0
	.uleb128 0xd
	.4byte	0xbd
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x192
	.uleb128 0xc
	.4byte	0x12d
	.4byte	0x1da
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x1da
	.uleb128 0xd
	.4byte	0xbd
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0xc
	.4byte	0x12d
	.4byte	0x204
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0xd
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1eb
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.4byte	0x138
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x246
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x26
	.4byte	0x25f
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x246
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x2f
	.4byte	0x32b
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x82
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x8
	.byte	0x51
	.4byte	0x26a
	.uleb128 0xa
	.byte	0x24
	.byte	0x8
	.byte	0x64
	.4byte	0x387
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x8
	.byte	0x65
	.4byte	0x25f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x8
	.byte	0x66
	.4byte	0x32b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x8
	.byte	0x67
	.4byte	0xd3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x8
	.byte	0x68
	.4byte	0xd3
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x8
	.byte	0x69
	.4byte	0x387
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x8
	.byte	0x6a
	.4byte	0xe9
	.byte	0x21
	.byte	0
	.uleb128 0xe
	.4byte	0x8a
	.4byte	0x397
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x8
	.byte	0x6b
	.4byte	0x336
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1
	.byte	0x38
	.4byte	0x12d
	.byte	0x1
	.4byte	0x3ec
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x38
	.4byte	0xa7
	.uleb128 0x12
	.string	"cmd"
	.byte	0x1
	.byte	0x38
	.4byte	0xa7
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0x38
	.4byte	0x81
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3a
	.4byte	0x3ec
	.uleb128 0x14
	.4byte	.LASF85
	.4byte	0x407
	.4byte	.LASF86
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x7
	.4byte	0x397
	.uleb128 0xe
	.4byte	0x8a
	.4byte	0x407
	.uleb128 0xf
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x3f7
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1
	.byte	0x25
	.4byte	0x12d
	.byte	0x1
	.4byte	0x46c
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x25
	.4byte	0xa7
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0x25
	.4byte	0x1b0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0x25
	.4byte	0xbd
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0x25
	.4byte	0x9c
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x28
	.4byte	0x3ec
	.uleb128 0x14
	.4byte	.LASF85
	.4byte	0x47c
	.4byte	.LASF87
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0x2a
	.4byte	0xde
	.byte	0
	.uleb128 0xe
	.4byte	0x8a
	.4byte	0x47c
	.uleb128 0xf
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x46c
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1
	.byte	0x20
	.4byte	0xf7
	.byte	0x1
	.4byte	0x49d
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x20
	.4byte	0xa7
	.byte	0
	.uleb128 0x16
	.4byte	0x481
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ba
	.uleb128 0x17
	.4byte	0x491
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x1
	.byte	0x33
	.4byte	0x12d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.byte	0x33
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x33
	.4byte	0x1da
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0x33
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x33
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x16
	.4byte	0x3a2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b5
	.uleb128 0x17
	.4byte	0x3b2
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	0x3bd
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	0x3c8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	0x3d3
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	0x3de
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5812
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x17
	.4byte	0x3b2
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	0x3bd
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	0x3c8
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1f
	.4byte	0x3d3
	.uleb128 0x1d
	.4byte	0x3de
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5812
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x7b6
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
	.byte	0x3c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5812
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
	.uleb128 0x16
	.4byte	0x40c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd
	.uleb128 0x17
	.4byte	0x41c
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	0x427
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x432
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	0x43d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	0x448
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	0x453
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x1d
	.4byte	0x460
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x67f
	.uleb128 0x17
	.4byte	0x41c
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	0x427
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	0x432
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	0x43d
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1f
	.4byte	0x448
	.uleb128 0x1f
	.4byte	0x460
	.uleb128 0x1d
	.4byte	0x453
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x7b6
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
	.byte	0x29
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0x7c1
	.4byte	0x6a3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0x7cc
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x7d7
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
	.4byte	.LC11
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4d
	.4byte	0xde
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73d
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4d
	.4byte	0xa7
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x4d
	.4byte	0x3ec
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF95
	.byte	0x1
	.byte	0x52
	.4byte	0x73d
	.uleb128 0x5
	.byte	0x3
	.4byte	raw_impl$5821
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0x7e2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	raw_impl$5821
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x20a
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x60
	.4byte	0xa7
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77e
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x1
	.byte	0x60
	.4byte	0x3ec
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x62
	.4byte	0x25
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"TAG"
	.byte	0x1
	.byte	0x16
	.4byte	0x790
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0xe
	.4byte	0x3ec
	.4byte	0x7a5
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0x18
	.4byte	0x795
	.uleb128 0x5
	.byte	0x3
	.4byte	ff_raw_handles
	.uleb128 0x2a
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x9
	.byte	0x29
	.uleb128 0x2a
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0xcf
	.uleb128 0x2a
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x7
	.byte	0x6b
	.uleb128 0x2a
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x29
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE30
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF100:
	.string	"ff_diskio_register"
.LASF82:
	.string	"pdrv"
.LASF92:
	.string	"ff_diskio_register_raw_partition"
.LASF24:
	.string	"RES_ERROR"
.LASF32:
	.string	"write"
.LASF103:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/fatfs"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF40:
	.string	"ESP_LOG_VERBOSE"
.LASF66:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF23:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF79:
	.string	"label"
.LASF10:
	.string	"sizetype"
.LASF65:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF6:
	.string	"__uint32_t"
.LASF83:
	.string	"buff"
.LASF90:
	.string	"ff_raw_status"
.LASF38:
	.string	"ESP_LOG_INFO"
.LASF64:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF68:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF15:
	.string	"WORD"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF104:
	.string	"ff_raw_handles"
.LASF59:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF60:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF61:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF88:
	.string	"sector"
.LASF42:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF63:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF69:
	.string	"ESP_PARTITION_SUBTYPE_DATA_EFUSE_EM"
.LASF21:
	.string	"float"
.LASF31:
	.string	"read"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF73:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF43:
	.string	"esp_partition_type_t"
.LASF12:
	.string	"char"
.LASF84:
	.string	"part"
.LASF9:
	.string	"long int"
.LASF81:
	.string	"esp_partition_t"
.LASF25:
	.string	"RES_WRPRT"
.LASF13:
	.string	"UINT"
.LASF95:
	.string	"raw_impl"
.LASF71:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF34:
	.string	"ff_diskio_impl_t"
.LASF58:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF22:
	.string	"DSTATUS"
.LASF16:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF62:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF85:
	.string	"__func__"
.LASF2:
	.string	"signed char"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF77:
	.string	"address"
.LASF75:
	.string	"type"
.LASF72:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF41:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF33:
	.string	"ioctl"
.LASF70:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF102:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_rawflash.c"
.LASF99:
	.string	"esp_log_write"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"status"
.LASF87:
	.string	"ff_raw_read"
.LASF14:
	.string	"BYTE"
.LASF74:
	.string	"esp_partition_subtype_t"
.LASF39:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"int32_t"
.LASF35:
	.string	"ESP_LOG_NONE"
.LASF5:
	.string	"__int32_t"
.LASF26:
	.string	"RES_NOTRDY"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF20:
	.string	"_Bool"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF37:
	.string	"ESP_LOG_WARN"
.LASF97:
	.string	"esp_partition_read"
.LASF18:
	.string	"uint32_t"
.LASF11:
	.string	"long unsigned int"
.LASF67:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF93:
	.string	"part_handle"
.LASF78:
	.string	"size"
.LASF89:
	.string	"count"
.LASF94:
	.string	"ff_diskio_get_pdrv_raw"
.LASF76:
	.string	"subtype"
.LASF28:
	.string	"DRESULT"
.LASF98:
	.string	"esp_log_timestamp"
.LASF80:
	.string	"encrypted"
.LASF91:
	.string	"ff_raw_write"
.LASF96:
	.string	"__assert_func"
.LASF101:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"RES_PARERR"
.LASF86:
	.string	"ff_raw_ioctl"
.LASF36:
	.string	"ESP_LOG_ERROR"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF19:
	.string	"esp_err_t"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF29:
	.string	"init"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
