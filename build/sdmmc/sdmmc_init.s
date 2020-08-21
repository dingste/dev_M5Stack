	.file	"sdmmc_init.c"
	.text
.Ltext0:
	.section	.text.sdmmc_card_init,"ax",@progbits
	.literal_position
	.align	4
	.global	sdmmc_card_init
	.type	sdmmc_card_init, @function
sdmmc_card_init:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_init.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 36 0
	movi	a12, 0x88
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL1:
	.loc 1 37 0
	movi.n	a12, 0x38
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcpy
.LVL2:
.LBB25:
.LBB26:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.loc 2 122 0
	l32i.n	a4, a3, 0
	movi.n	a5, 8
	and	a5, a5, a4
.LVL3:
.LBE26:
.LBE25:
	.loc 1 43 0
	beqz.n	a5, .L2
.L5:
.LBB27:
	.loc 1 46 0
	mov.n	a10, a3
	call8	sdmmc_io_reset
.LVL4:
	bnez.n	a10, .L50
	j	.L51
.LVL5:
.L2:
.LBE27:
.LBB28:
	.loc 1 43 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_fix_host_flags
.LVL6:
	beqz.n	a10, .L5
	j	.L50
.LVL7:
.L51:
.LBE28:
.LBB29:
	.loc 1 49 0 discriminator 1
	mov.n	a10, a3
.LVL8:
	call8	sdmmc_send_cmd_go_idle_state
.LVL9:
	bnez.n	a10, .L50
.LBE29:
.LBB30:
	.loc 1 52 0 discriminator 1
	mov.n	a10, a3
.LVL10:
	call8	sdmmc_init_sd_if_cond
.LVL11:
	bnez.n	a10, .L50
.LBE30:
.LBB31:
	.loc 1 55 0 discriminator 1
	mov.n	a10, a3
.LVL12:
	call8	sdmmc_init_io
.LVL13:
	bnez.n	a10, .L50
.LBE31:
	.loc 1 57 0
	l32i	a4, a3, 128
	extui	a4, a4, 16, 1
.LVL14:
	.loc 1 61 0
	bnez.n	a5, .L6
.LVL15:
.L9:
	.loc 1 64 0
	beqz.n	a4, .L8
	j	.L7
.LVL16:
.L6:
.LBB32:
	.loc 1 61 0 discriminator 1
	mov.n	a10, a3
.LVL17:
	call8	sdmmc_init_spi_crc
.LVL18:
	beqz.n	a10, .L9
	j	.L50
.LVL19:
.L7:
.LBE32:
.LBB33:
	.loc 1 64 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_ocr
.LVL20:
	beqz.n	a10, .L52
	j	.L50
.LVL21:
.L8:
.LBE33:
	.loc 1 66 0
	movi.n	a6, 0
.L27:
.LVL22:
.LBB34:
	.loc 1 73 0 discriminator 6
	mov.n	a10, a3
	call8	sdmmc_init_cid
.LVL23:
	bnez.n	a10, .L50
.LBE34:
	.loc 1 76 0
	bnez.n	a4, .L11
.LVL24:
.L14:
	.loc 1 66 0
	mov.n	a7, a6
	.loc 1 82 0
	bnez.n	a5, .L56
	j	.L12
.LVL25:
.L11:
.LBB35:
	.loc 1 76 0 discriminator 1
	mov.n	a10, a3
.LVL26:
	call8	sdmmc_init_csd
.LVL27:
	beqz.n	a10, .L14
	j	.L50
.LVL28:
.L12:
.LBE35:
.LBB36:
	.loc 1 82 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_select_card
.LVL29:
	bnez.n	a10, .L50
.LVL30:
.L56:
.LBE36:
	.loc 1 89 0
	bltu	a7, a4, .L15
.L18:
	.loc 1 94 0
	bnez.n	a6, .L16
.LBB37:
	j	.L17
.L15:
.LBE37:
.LBB38:
	.loc 1 89 0
	mov.n	a10, a3
	call8	sdmmc_init_sd_blocklen
.LVL31:
	bnez.n	a10, .L50
.LBE38:
.LBB39:
	.loc 1 90 0 discriminator 1
	mov.n	a10, a3
.LVL32:
	call8	sdmmc_init_sd_scr
.LVL33:
	bnez.n	a10, .L50
.LBE39:
.LBB40:
	.loc 1 91 0 discriminator 1
	mov.n	a10, a3
.LVL34:
	call8	sdmmc_init_sd_wait_data_ready
.LVL35:
	beqz.n	a10, .L18
	j	.L50
.LVL36:
.L17:
.LBE40:
.LBB41:
	.loc 1 99 0
	mov.n	a10, a3
	call8	sdmmc_init_card_hs_mode
.LVL37:
	beqz.n	a10, .L54
	j	.L50
.LVL38:
.L16:
.LBE41:
.LBB42:
	.loc 1 94 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_mmc_read_ext_csd
.LVL39:
	beqz.n	a10, .L17
	j	.L50
.LVL40:
.L54:
.LBE42:
	.loc 1 102 0
	beqz.n	a5, .L20
.LVL41:
.L26:
.LBB43:
	.loc 1 110 0
	mov.n	a10, a3
	call8	sdmmc_init_host_frequency
.LVL42:
	beqz.n	a10, .L55
	j	.L50
.LVL43:
.L20:
.LBE43:
	.loc 1 103 0
	bgeu	a7, a4, .L22
.LBB44:
	.loc 1 103 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL44:
	call8	sdmmc_init_sd_bus_width
.LVL45:
.L57:
	bnez.n	a10, .L50
.LVL46:
.L25:
.LBE44:
	.loc 1 105 0 is_stmt 1
	bnez.n	a6, .L23
.LBB45:
	j	.L24
.LVL47:
.L22:
.LBE45:
	.loc 1 104 0
	bnez.n	a4, .L25
.LBB46:
	.loc 1 104 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL48:
	call8	sdmmc_init_io_bus_width
.LVL49:
	j	.L57
.LVL50:
.L24:
.LBE46:
.LBB47:
	.loc 1 106 0 is_stmt 1
	mov.n	a10, a3
	call8	sdmmc_init_host_bus_width
.LVL51:
	beqz.n	a10, .L26
	j	.L50
.LVL52:
.L23:
.LBE47:
.LBB48:
	.loc 1 105 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_mmc_bus_width
.LVL53:
	beqz.n	a10, .L24
	j	.L50
.LVL54:
.L55:
.LBE48:
	.loc 1 113 0
	bgeu	a7, a4, .L50
.LBB49:
	.loc 1 113 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL55:
	call8	sdmmc_check_scr
.LVL56:
	j	.L50
.LVL57:
.L52:
.LBE49:
	.loc 1 66 0 is_stmt 1
	l32i	a7, a3, 128
	movi.n	a6, 1
	bbsi	a7, 18, .L27
	j	.L8
.LVL58:
.L50:
	.loc 1 117 0
	mov.n	a2, a10
.LVL59:
	retw.n
.LFE21:
	.size	sdmmc_card_init, .-sdmmc_card_init
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb4d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x76
	.4byte	0xee
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x25
	.4byte	0x147
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x200
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2d
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x31
	.4byte	0x1af
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x22c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x39
	.4byte	0x20b
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x24c
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3f
	.4byte	0xcd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x40
	.4byte	0x237
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x45
	.4byte	0x262
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x272
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x2e7
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x52
	.4byte	0xee
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x8
	.byte	0x53
	.4byte	0xee
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x54
	.4byte	0x257
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x55
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x56
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x74
	.4byte	0x12a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x76
	.4byte	0x272
	.uleb128 0xc
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x3a3
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7f
	.4byte	0xee
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x8
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0x8c
	.4byte	0x3a3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8d
	.4byte	0x3af
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8e
	.4byte	0x3c9
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8f
	.4byte	0x3de
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x90
	.4byte	0x3f8
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x91
	.4byte	0x412
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x92
	.4byte	0x432
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x93
	.4byte	0x3af
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0x94
	.4byte	0x447
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0x95
	.4byte	0x461
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x8
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0xf
	.4byte	0x12a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3aa
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x3c9
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x10
	.4byte	0x2c
	.4byte	0x3de
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x3f8
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x135
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e4
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x412
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fe
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x42c
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x42c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x418
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x447
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x438
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x461
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x13c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44d
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x97
	.4byte	0x2f2
	.uleb128 0xc
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x544
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x8
	.byte	0x9d
	.4byte	0x467
	.byte	0
	.uleb128 0xe
	.string	"ocr"
	.byte	0x8
	.byte	0x9e
	.4byte	0xee
	.byte	0x38
	.uleb128 0xe
	.string	"cid"
	.byte	0x8
	.byte	0x9f
	.4byte	0x200
	.byte	0x3c
	.uleb128 0xe
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x1a4
	.byte	0x58
	.uleb128 0xe
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x22c
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0xa2
	.4byte	0x24c
	.byte	0x7c
	.uleb128 0xe
	.string	"rca"
	.byte	0x8
	.byte	0xa3
	.4byte	0xd8
	.byte	0x7e
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa4
	.4byte	0xd8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0xa5
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa6
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa7
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa8
	.4byte	0xee
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa9
	.4byte	0xee
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0xaa
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0xab
	.4byte	0xee
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0xac
	.4byte	0x472
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x2
	.byte	0x78
	.4byte	0x135
	.byte	0x3
	.4byte	0x56b
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x2
	.byte	0x78
	.4byte	0x56b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x571
	.uleb128 0x7
	.4byte	0x544
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x1
	.byte	0x22
	.4byte	0x12a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0b
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x22
	.4byte	0xa0b
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.byte	0x22
	.4byte	0xa16
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x26
	.4byte	0xa1c
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.byte	0x27
	.4byte	0xa1c
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.byte	0x28
	.4byte	0xa1c
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF118
	.4byte	0xa31
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x39
	.4byte	0xa1c
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3a
	.4byte	0xa1c
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x42
	.4byte	0xa1c
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0x43
	.4byte	0xa1c
	.uleb128 0x1c
	.4byte	0x54f
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x26
	.4byte	0x62a
	.uleb128 0x1d
	.4byte	0x55f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x657
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x2e
	.4byte	0x12a
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xa48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x684
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x2b
	.4byte	0x12a
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0xa53
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x6b1
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x31
	.4byte	0x12a
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0xa5e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x6de
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x34
	.4byte	0x12a
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0xa69
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x70b
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x37
	.4byte	0x12a
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0xa74
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x738
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x3d
	.4byte	0x12a
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0xa7f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x765
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x40
	.4byte	0x12a
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0xa8a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x792
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x49
	.4byte	0x12a
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0xa95
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x7bf
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.4byte	0x12a
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0xaa0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0x7ec
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x52
	.4byte	0x12a
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xaab
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0x815
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5e
	.4byte	0x12a
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0xab6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.4byte	0x842
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x59
	.4byte	0x12a
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0xac1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0x86f
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5a
	.4byte	0x12a
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	.LVL33
	.4byte	0xacc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x89c
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5b
	.4byte	0x12a
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0xad7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x8c9
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x63
	.4byte	0x12a
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0xae2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x8f6
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x6e
	.4byte	0x12a
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0xaed
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x923
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x67
	.4byte	0x12a
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0xaf8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x94c
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x12a
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0xb03
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0x979
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x68
	.4byte	0x12a
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LVL49
	.4byte	0xb0e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x9a6
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x6a
	.4byte	0x12a
	.4byte	.LLST23
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0xb19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x9cf
	.uleb128 0x23
	.string	"err"
	.byte	0x1
	.byte	0x71
	.4byte	0x12a
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0xb24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0xb2f
	.4byte	0x9ee
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xb38
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa11
	.uleb128 0x7
	.4byte	0x467
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0x7
	.4byte	0x135
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xa31
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xa21
	.uleb128 0x25
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2881
	.sleb128 0
	.uleb128 0x26
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x2
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x2
	.byte	0x87
	.uleb128 0x26
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x2
	.byte	0x32
	.uleb128 0x26
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x2
	.byte	0x64
	.uleb128 0x26
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x2
	.byte	0x6a
	.uleb128 0x26
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x2
	.byte	0x69
	.uleb128 0x26
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x2
	.byte	0x68
	.uleb128 0x26
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x2
	.byte	0x67
	.uleb128 0x26
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x2
	.byte	0x66
	.uleb128 0x26
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x2
	.byte	0x65
	.uleb128 0x26
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x2
	.byte	0x6e
	.uleb128 0x26
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x2
	.byte	0x6b
	.uleb128 0x26
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x2
	.byte	0x6c
	.uleb128 0x26
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x2
	.byte	0x6d
	.uleb128 0x26
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x2
	.byte	0x74
	.uleb128 0x26
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x2
	.byte	0x75
	.uleb128 0x26
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x2
	.byte	0x71
	.uleb128 0x26
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x2
	.byte	0x73
	.uleb128 0x26
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x2
	.byte	0x72
	.uleb128 0x26
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x2
	.byte	0x70
	.uleb128 0x26
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x2
	.byte	0x4d
	.uleb128 0x27
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x27
	.4byte	.LASF112
	.4byte	.LASF112
	.uleb128 0x28
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x73
	.byte	0x64
	.byte	0x6d
	.byte	0x6d
	.byte	0x63
	.byte	0x5f
	.byte	0x69
	.byte	0x6e
	.byte	0x69
	.byte	0x74
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x73
	.sleb128 128
	.byte	0x6
	.byte	0x9
	.byte	0xf3
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0xa
	.byte	0x73
	.sleb128 128
	.byte	0x6
	.byte	0x9
	.byte	0xf3
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xb
	.byte	0x73
	.sleb128 128
	.byte	0x6
	.byte	0x9
	.byte	0xf3
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0xb
	.byte	0x73
	.sleb128 128
	.byte	0x6
	.byte	0x9
	.byte	0xf3
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"capacity"
.LASF34:
	.string	"card_command_class"
.LASF108:
	.string	"sdmmc_init_io_bus_width"
.LASF116:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF94:
	.string	"sdmmc_init_io"
.LASF4:
	.string	"__uint8_t"
.LASF40:
	.string	"revision"
.LASF29:
	.string	"csd_ver"
.LASF62:
	.string	"init"
.LASF101:
	.string	"sdmmc_init_sd_blocklen"
.LASF65:
	.string	"set_bus_ddr_mode"
.LASF48:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF109:
	.string	"sdmmc_init_host_bus_width"
.LASF117:
	.string	"sdmmc_card_init"
.LASF104:
	.string	"sdmmc_init_card_hs_mode"
.LASF51:
	.string	"response"
.LASF103:
	.string	"sdmmc_init_sd_wait_data_ready"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"set_bus_width"
.LASF107:
	.string	"sdmmc_init_mmc_bus_width"
.LASF12:
	.string	"long int"
.LASF36:
	.string	"sdmmc_csd_t"
.LASF67:
	.string	"do_transaction"
.LASF17:
	.string	"uint16_t"
.LASF106:
	.string	"sdmmc_init_sd_bus_width"
.LASF93:
	.string	"sdmmc_init_sd_if_cond"
.LASF37:
	.string	"mfg_id"
.LASF92:
	.string	"sdmmc_send_cmd_go_idle_state"
.LASF9:
	.string	"__uint32_t"
.LASF105:
	.string	"sdmmc_init_host_frequency"
.LASF91:
	.string	"sdmmc_fix_host_flags"
.LASF82:
	.string	"reserved"
.LASF115:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF43:
	.string	"sdmmc_cid_t"
.LASF74:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF96:
	.string	"sdmmc_init_ocr"
.LASF66:
	.string	"set_card_clk"
.LASF49:
	.string	"sdmmc_response_t"
.LASF79:
	.string	"num_io_functions"
.LASF90:
	.string	"sdmmc_io_reset"
.LASF113:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"name"
.LASF86:
	.string	"always"
.LASF52:
	.string	"data"
.LASF69:
	.string	"io_int_enable"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"date"
.LASF59:
	.string	"slot"
.LASF71:
	.string	"command_timeout_ms"
.LASF100:
	.string	"sdmmc_init_mmc_read_ext_csd"
.LASF97:
	.string	"sdmmc_init_cid"
.LASF85:
	.string	"card"
.LASF33:
	.string	"read_block_len"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF76:
	.string	"is_mem"
.LASF54:
	.string	"blklen"
.LASF46:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF53:
	.string	"datalen"
.LASF38:
	.string	"oem_id"
.LASF28:
	.string	"TickType_t"
.LASF35:
	.string	"tr_speed"
.LASF30:
	.string	"mmc_ver"
.LASF114:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_init.c"
.LASF77:
	.string	"is_sdio"
.LASF73:
	.string	"sdmmc_host_t"
.LASF72:
	.string	"float"
.LASF98:
	.string	"sdmmc_init_csd"
.LASF56:
	.string	"error"
.LASF75:
	.string	"ext_csd"
.LASF57:
	.string	"timeout_ms"
.LASF32:
	.string	"sector_size"
.LASF78:
	.string	"is_mmc"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF102:
	.string	"sdmmc_init_sd_scr"
.LASF87:
	.string	"io_supported"
.LASF6:
	.string	"short int"
.LASF111:
	.string	"memset"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF118:
	.string	"__func__"
.LASF95:
	.string	"sdmmc_init_spi_crc"
.LASF68:
	.string	"deinit"
.LASF83:
	.string	"sdmmc_card_t"
.LASF99:
	.string	"sdmmc_init_select_card"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF84:
	.string	"config"
.LASF7:
	.string	"__uint16_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"__int32_t"
.LASF58:
	.string	"sdmmc_command_t"
.LASF112:
	.string	"memcpy"
.LASF80:
	.string	"log_bus_width"
.LASF110:
	.string	"sdmmc_check_scr"
.LASF88:
	.string	"is_spi"
.LASF19:
	.string	"uint32_t"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF61:
	.string	"io_voltage"
.LASF47:
	.string	"power_class"
.LASF26:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF55:
	.string	"flags"
.LASF41:
	.string	"serial"
.LASF70:
	.string	"io_int_wait"
.LASF45:
	.string	"bus_width"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF89:
	.string	"is_sdmem"
.LASF60:
	.string	"max_freq_khz"
.LASF64:
	.string	"get_bus_width"
.LASF44:
	.string	"sd_spec"
.LASF50:
	.string	"opcode"
.LASF81:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
