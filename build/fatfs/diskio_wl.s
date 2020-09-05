	.file	"diskio_wl.c"
	.text
.Ltext0:
	.section	.text.ff_wl_status,"ax",@progbits
	.align	4
	.global	ff_wl_status
	.type	ff_wl_status, @function
ff_wl_status:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_wl.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 38 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE27:
	.size	ff_wl_status, .-ff_wl_status
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"wl_handle + 1"
.LC4:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_wl.c"
.LC6:
	.string	"ff_diskio_spiflash"
.LC8:
	.string	"\033[0;31mE (%d) %s: wl_erase_range failed (%d)\033[0m\n"
.LC10:
	.string	"\033[0;31mE (%d) %s: wl_write failed (%d)\033[0m\n"
	.section	.text.ff_wl_write,"ax",@progbits
	.literal_position
	.literal .LC0, ff_wl_handles
	.literal .LC2, .LC1
	.literal .LC3, __func__$5833
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	ff_wl_write
	.type	ff_wl_write, @function
ff_wl_write:
.LFB29:
	.loc 1 54 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 56 0
	l32r	a6, .LC0
	.loc 1 54 0
	extui	a2, a2, 0, 8
	.loc 1 56 0
	addx4	a2, a2, a6
.LVL3:
	l32i.n	a6, a2, 0
.LVL4:
	.loc 1 57 0
	bnei	a6, -1, .L3
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi.n	a11, 0x39
	call8	__assert_func
.LVL5:
.L3:
	.loc 1 58 0 is_stmt 1
	mov.n	a10, a6
	call8	wl_sector_size
.LVL6:
	mull	a2, a10, a4
	mov.n	a10, a6
	call8	wl_sector_size
.LVL7:
	mull	a12, a10, a5
	mov.n	a11, a2
	mov.n	a10, a6
	call8	wl_erase_range
.LVL8:
	mov.n	a2, a10
.LVL9:
	.loc 1 59 0
	beqz.n	a10, .L4
	.loc 1 60 0 discriminator 2
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	j	.L8
.L4:
	.loc 1 63 0
	mov.n	a10, a6
	call8	wl_sector_size
.LVL11:
	mull	a4, a4, a10
.LVL12:
	mov.n	a10, a6
	call8	wl_sector_size
.LVL13:
	mull	a13, a5, a10
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a6
	call8	wl_write
.LVL14:
	mov.n	a3, a10
.LVL15:
	.loc 1 64 0
	beqz.n	a10, .L5
	.loc 1 65 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC7
	l32r	a12, .LC11
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
.LVL17:
.L8:
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 66 0 discriminator 2
	movi.n	a2, 1
.L5:
	.loc 1 69 0
	retw.n
.LFE29:
	.size	ff_wl_write, .-ff_wl_write
	.section	.rodata.str1.1
.LC17:
	.string	"\033[0;31mE (%d) %s: wl_read failed (%d)\033[0m\n"
	.section	.text.ff_wl_read,"ax",@progbits
	.literal_position
	.literal .LC12, ff_wl_handles
	.literal .LC13, .LC1
	.literal .LC14, __func__$5824
	.literal .LC15, .LC4
	.literal .LC16, .LC6
	.literal .LC18, .LC17
	.align	4
	.global	ff_wl_read
	.type	ff_wl_read, @function
ff_wl_read:
.LFB28:
	.loc 1 41 0
.LVL19:
	entry	sp, 32
.LCFI2:
	.loc 1 43 0
	l32r	a8, .LC12
	.loc 1 41 0
	extui	a2, a2, 0, 8
	.loc 1 43 0
	addx4	a2, a2, a8
.LVL20:
	l32i.n	a2, a2, 0
.LVL21:
	.loc 1 44 0
	bnei	a2, -1, .L10
.LVL22:
.LBB4:
.LBB5:
	l32r	a13, .LC13
	l32r	a12, .LC14
	l32r	a10, .LC15
	movi.n	a11, 0x2c
	call8	__assert_func
.LVL23:
.L10:
.LBE5:
.LBE4:
	.loc 1 45 0
	mov.n	a10, a2
	call8	wl_sector_size
.LVL24:
	mull	a4, a10, a4
.LVL25:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL26:
	mull	a13, a10, a5
	mov.n	a11, a4
	mov.n	a10, a2
	mov.n	a12, a3
	call8	wl_read
.LVL27:
	.loc 1 50 0
	movi.n	a2, 0
.LVL28:
	.loc 1 45 0
	mov.n	a4, a10
.LVL29:
	.loc 1 46 0
	beq	a10, a2, .L11
	.loc 1 47 0 discriminator 2
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC16
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a15, a4
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	.loc 1 48 0 discriminator 2
	movi.n	a2, 1
.L11:
	.loc 1 51 0
	retw.n
.LFE28:
	.size	ff_wl_read, .-ff_wl_read
	.section	.text.ff_wl_ioctl,"ax",@progbits
	.literal_position
	.literal .LC19, ff_wl_handles
	.literal .LC20, .LC1
	.literal .LC21, __func__$5841
	.literal .LC22, .LC4
	.align	4
	.global	ff_wl_ioctl
	.type	ff_wl_ioctl, @function
ff_wl_ioctl:
.LFB30:
	.loc 1 72 0
.LVL32:
	entry	sp, 32
.LCFI3:
	.loc 1 73 0
	l32r	a5, .LC19
	.loc 1 72 0
	extui	a2, a2, 0, 8
	.loc 1 73 0
	addx4	a2, a2, a5
.LVL33:
	l32i.n	a5, a2, 0
.LVL34:
	.loc 1 72 0
	extui	a3, a3, 0, 8
	.loc 1 75 0
	bnei	a5, -1, .L15
.LVL35:
.LBB8:
.LBB9:
	l32r	a13, .LC20
	l32r	a12, .LC21
	l32r	a10, .LC22
	movi.n	a11, 0x4b
	call8	__assert_func
.LVL36:
.L15:
.LBE9:
.LBE8:
	.loc 1 76 0
	beqi	a3, 1, .L17
	.loc 1 78 0
	movi.n	a2, 0
	.loc 1 76 0
	beq	a3, a2, .L18
	beqi	a3, 2, .L19
	.loc 1 86 0
	movi.n	a2, 1
	retw.n
.L17:
	.loc 1 80 0
	mov.n	a10, a5
	call8	wl_size
.LVL37:
	mov.n	a2, a10
	mov.n	a10, a5
	call8	wl_sector_size
.LVL38:
	quou	a10, a2, a10
	s32i.n	a10, a4, 0
	.loc 1 81 0
	movi.n	a2, 0
	retw.n
.L19:
	.loc 1 83 0
	mov.n	a10, a5
	call8	wl_sector_size
.LVL39:
	s16i	a10, a4, 0
.L18:
	.loc 1 89 0
	retw.n
.LFE30:
	.size	ff_wl_ioctl, .-ff_wl_ioctl
	.section	.text.ff_wl_initialize,"ax",@progbits
	.align	4
	.global	ff_wl_initialize
	.type	ff_wl_initialize, @function
ff_wl_initialize:
.LFB37:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0
	retw.n
.LFE37:
	.size	ff_wl_initialize, .-ff_wl_initialize
	.section	.text.ff_diskio_register_wl_partition,"ax",@progbits
	.literal_position
	.literal .LC23, ff_wl_handles
	.literal .LC24, wl_impl$5850
	.align	4
	.global	ff_diskio_register_wl_partition
	.type	ff_diskio_register_wl_partition, @function
ff_diskio_register_wl_partition:
.LFB31:
	.loc 1 93 0
.LVL40:
	.loc 1 93 0
	entry	sp, 32
.LCFI5:
	.loc 1 93 0
	extui	a10, a2, 0, 8
	.loc 1 95 0
	movi	a2, 0x102
.LVL41:
	.loc 1 94 0
	bgeui	a10, 2, .L24
	.loc 1 104 0
	l32r	a8, .LC23
	.loc 1 105 0
	l32r	a11, .LC24
	.loc 1 104 0
	addx4	a8, a10, a8
	s32i.n	a3, a8, 0
	.loc 1 106 0
	movi.n	a2, 0
	.loc 1 105 0
	call8	ff_diskio_register
.LVL42:
.L24:
	.loc 1 107 0
	retw.n
.LFE31:
	.size	ff_diskio_register_wl_partition, .-ff_diskio_register_wl_partition
	.section	.text.ff_diskio_get_pdrv_wl,"ax",@progbits
	.literal_position
	.literal .LC25, ff_wl_handles
	.align	4
	.global	ff_diskio_get_pdrv_wl
	.type	ff_diskio_get_pdrv_wl, @function
ff_diskio_get_pdrv_wl:
.LFB32:
	.loc 1 110 0
.LVL43:
	entry	sp, 32
.LCFI6:
.LVL44:
.LBB10:
	.loc 1 112 0
	l32r	a8, .LC25
	l32i.n	a9, a8, 0
	beq	a2, a9, .L29
.LVL45:
	l32i.n	a9, a8, 4
.LBE10:
	.loc 1 116 0
	movi	a8, 0xff
.LBB11:
	.loc 1 112 0
	bne	a2, a9, .L28
	.loc 1 111 0
	movi.n	a8, 1
	j	.L27
.LVL46:
.L29:
	movi.n	a8, 0
.LVL47:
.L27:
	.loc 1 113 0
	extui	a8, a8, 0, 8
.L28:
.LBE11:
	.loc 1 117 0
	mov.n	a2, a8
.LVL48:
	retw.n
.LFE32:
	.size	ff_diskio_get_pdrv_wl, .-ff_diskio_get_pdrv_wl
	.section	.text.ff_diskio_clear_pdrv_wl,"ax",@progbits
	.literal_position
	.literal .LC26, ff_wl_handles
	.align	4
	.global	ff_diskio_clear_pdrv_wl
	.type	ff_diskio_clear_pdrv_wl, @function
ff_diskio_clear_pdrv_wl:
.LFB33:
	.loc 1 120 0
.LVL49:
	entry	sp, 32
.LCFI7:
.LVL50:
.LBB12:
	.loc 1 122 0
	l32r	a8, .LC26
	l32i.n	a9, a8, 0
	bne	a2, a9, .L32
	.loc 1 123 0
	movi.n	a9, -1
	s32i.n	a9, a8, 0
.L32:
.LVL51:
	.loc 1 122 0
	l32i.n	a9, a8, 4
	bne	a2, a9, .L31
	.loc 1 123 0
	movi.n	a2, -1
.LVL52:
	s32i.n	a2, a8, 4
.LVL53:
.L31:
	retw.n
.LBE12:
.LFE33:
	.size	ff_diskio_clear_pdrv_wl, .-ff_diskio_clear_pdrv_wl
	.section	.rodata.wl_impl$5850,"a",@progbits
	.align	4
	.type	wl_impl$5850, @object
	.size	wl_impl$5850, 20
wl_impl$5850:
	.word	ff_wl_initialize
	.word	ff_wl_status
	.word	ff_wl_read
	.word	ff_wl_write
	.word	ff_wl_ioctl
	.section	.rodata.__func__$5841,"a",@progbits
	.type	__func__$5841, @object
	.size	__func__$5841, 12
__func__$5841:
	.string	"ff_wl_ioctl"
	.section	.rodata.__func__$5833,"a",@progbits
	.type	__func__$5833, @object
	.size	__func__$5833, 12
__func__$5833:
	.string	"ff_wl_write"
	.section	.rodata.__func__$5824,"a",@progbits
	.type	__func__$5824, @object
	.size	__func__$5824, 11
__func__$5824:
	.string	"ff_wl_read"
	.global	ff_wl_handles
	.section	.data.ff_wl_handles,"aw",@progbits
	.align	4
	.type	ff_wl_handles, @object
	.size	ff_wl_handles, 8
ff_wl_handles:
	.word	-1
	.word	-1
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI4-.LFB37
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/integer.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wear_levelling/include/wear_levelling.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x84e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xc
	.4byte	.LASF64
	.4byte	.LASF65
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
	.4byte	.LASF11
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x16
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1f
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x14
	.4byte	0x117
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1a
	.4byte	0xec
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.byte	0x34
	.4byte	0x167
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x35
	.4byte	0x176
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x36
	.4byte	0x176
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.4byte	0x1a0
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x38
	.4byte	0x1cf
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.4byte	0x1ee
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0xe1
	.4byte	0x176
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x167
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x19a
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x19a
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x91
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17c
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x1c4
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x1c4
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x91
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x1ee
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.4byte	0x122
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x230
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1c
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0x28
	.4byte	0x117
	.byte	0x1
	.4byte	0x29b
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x28
	.4byte	0x9c
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x28
	.4byte	0x19a
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x28
	.4byte	0xb2
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x28
	.4byte	0x91
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.4byte	0x230
	.uleb128 0x11
	.4byte	.LASF45
	.4byte	0x2ab
	.4byte	.LASF46
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x2d
	.4byte	0xc8
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x2ab
	.uleb128 0x14
	.4byte	0x6f
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x29b
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x47
	.4byte	0x117
	.byte	0x1
	.4byte	0x2fa
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.uleb128 0x15
	.string	"cmd"
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x47
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x49
	.4byte	0x230
	.uleb128 0x11
	.4byte	.LASF45
	.4byte	0x30a
	.4byte	.LASF47
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x30a
	.uleb128 0x14
	.4byte	0x6f
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x2fa
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x23
	.4byte	0xe1
	.byte	0x1
	.4byte	0x32b
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x23
	.4byte	0x9c
	.byte	0
	.uleb128 0x16
	.4byte	0x30f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x348
	.uleb128 0x17
	.4byte	0x31f
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x35
	.4byte	0x117
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a1
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x35
	.4byte	0x9c
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x35
	.4byte	0x1c4
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0x35
	.4byte	0x91
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x38
	.4byte	0x230
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF45
	.4byte	0x4a1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0xc8
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LVL5
	.4byte	0x7ee
	.4byte	0x3f5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x7f9
	.4byte	0x409
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x7f9
	.4byte	0x41d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0x804
	.4byte	0x437
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x80f
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x7f9
	.4byte	0x454
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL13
	.4byte	0x7f9
	.4byte	0x468
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x81a
	.4byte	0x488
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x80f
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0x825
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2fa
	.uleb128 0x16
	.4byte	0x23b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f2
	.uleb128 0x17
	.4byte	0x24b
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	0x256
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	0x261
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	0x26c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	0x277
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	0x282
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5824
	.uleb128 0x24
	.4byte	0x28f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x570
	.uleb128 0x17
	.4byte	0x24b
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	0x256
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	0x261
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	0x26c
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x27
	.4byte	0x277
	.uleb128 0x27
	.4byte	0x28f
	.uleb128 0x24
	.4byte	0x282
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5824
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x7ee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5824
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL24
	.4byte	0x7f9
	.4byte	0x584
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0x7f9
	.4byte	0x598
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0x830
	.4byte	0x5b8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL30
	.4byte	0x80f
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x825
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x2b0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d5
	.uleb128 0x17
	.4byte	0x2c0
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	0x2d6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x2e1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	0x2ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5841
	.uleb128 0x25
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x69c
	.uleb128 0x17
	.4byte	0x2c0
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	0x2cb
	.4byte	.LLST14
	.uleb128 0x17
	.4byte	0x2d6
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x27
	.4byte	0x2e1
	.uleb128 0x24
	.4byte	0x2ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5841
	.uleb128 0x21
	.4byte	.LVL36
	.4byte	0x7ee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5841
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0x83b
	.4byte	0x6b0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL38
	.4byte	0x7f9
	.4byte	0x6c4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x7f9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5c
	.4byte	0xc8
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5c
	.4byte	0x9c
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5c
	.4byte	0x230
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x1
	.byte	0x61
	.4byte	0x739
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5850
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x846
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5850
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1f4
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6d
	.4byte	0x9c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77a
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6d
	.4byte	0x230
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.byte	0x77
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b6
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0x77
	.4byte	0x230
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x79
	.4byte	0x25
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x7c8
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x13
	.4byte	0x230
	.4byte	0x7dd
	.uleb128 0x14
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF67
	.byte	0x1
	.byte	0x19
	.4byte	0x7cd
	.uleb128 0x5
	.byte	0x3
	.4byte	ff_wl_handles
	.uleb128 0x2c
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.byte	0x29
	.uleb128 0x2c
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x8
	.byte	0x81
	.uleb128 0x2c
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x8
	.byte	0x47
	.uleb128 0x2c
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x5f
	.uleb128 0x2c
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0x6b
	.uleb128 0x2c
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x71
	.uleb128 0x2c
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x8
	.byte	0x79
	.uleb128 0x2c
	.4byte	.LASF62
	.4byte	.LASF62
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.4byte	.LVL2
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
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
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"ff_diskio_register"
.LASF40:
	.string	"pdrv"
.LASF22:
	.string	"RES_ERROR"
.LASF30:
	.string	"write"
.LASF65:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/fatfs"
.LASF38:
	.string	"ESP_LOG_VERBOSE"
.LASF21:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
.LASF41:
	.string	"buff"
.LASF13:
	.string	"BYTE"
.LASF51:
	.string	"flash_handle"
.LASF14:
	.string	"WORD"
.LASF39:
	.string	"wl_handle_t"
.LASF61:
	.string	"wl_size"
.LASF42:
	.string	"sector"
.LASF64:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/fatfs/src/diskio_wl.c"
.LASF46:
	.string	"ff_wl_read"
.LASF56:
	.string	"wl_erase_range"
.LASF19:
	.string	"float"
.LASF48:
	.string	"ff_wl_status"
.LASF29:
	.string	"read"
.LASF50:
	.string	"ff_diskio_register_wl_partition"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"ESP_LOG_NONE"
.LASF23:
	.string	"RES_WRPRT"
.LASF12:
	.string	"UINT"
.LASF32:
	.string	"ff_diskio_impl_t"
.LASF20:
	.string	"DSTATUS"
.LASF44:
	.string	"wl_handle"
.LASF15:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF45:
	.string	"__func__"
.LASF58:
	.string	"wl_write"
.LASF49:
	.string	"ff_wl_write"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF47:
	.string	"ff_wl_ioctl"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"ioctl"
.LASF52:
	.string	"wl_impl"
.LASF55:
	.string	"wl_sector_size"
.LASF59:
	.string	"esp_log_write"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"status"
.LASF10:
	.string	"char"
.LASF27:
	.string	"init"
.LASF37:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF67:
	.string	"ff_wl_handles"
.LASF24:
	.string	"RES_NOTRDY"
.LASF18:
	.string	"_Bool"
.LASF53:
	.string	"ff_diskio_get_pdrv_wl"
.LASF35:
	.string	"ESP_LOG_WARN"
.LASF9:
	.string	"long unsigned int"
.LASF66:
	.string	"ff_diskio_clear_pdrv_wl"
.LASF60:
	.string	"wl_read"
.LASF43:
	.string	"count"
.LASF11:
	.string	"__int32_t"
.LASF26:
	.string	"DRESULT"
.LASF57:
	.string	"esp_log_timestamp"
.LASF54:
	.string	"__assert_func"
.LASF63:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"RES_PARERR"
.LASF34:
	.string	"ESP_LOG_ERROR"
.LASF17:
	.string	"esp_err_t"
.LASF36:
	.string	"ESP_LOG_INFO"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
