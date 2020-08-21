	.file	"esp_https_ota.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"esp_https_ota"
.LC2:
	.string	"\033[0;31mE (%d) %s: esp_http_client config not found\033[0m\n"
.LC4:
	.string	"\033[0;31mE (%d) %s: Server certificate not found in esp_http_client config\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: Failed to initialise HTTP connection\033[0m\n"
.LC8:
	.string	"\033[0;31mE (%d) %s: Transport is not over HTTPS\033[0m\n"
.LC10:
	.string	"\033[0;31mE (%d) %s: Failed to open HTTP connection: %s\033[0m\n"
.LC12:
	.string	"\033[0;32mI (%d) %s: Starting OTA...\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Passive OTA partition not found\033[0m\n"
.LC16:
	.string	"\033[0;32mI (%d) %s: Writing to partition subtype %d at offset 0x%x\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: esp_ota_begin failed, error=%d\033[0m\n"
.LC20:
	.string	"\033[0;32mI (%d) %s: esp_ota_begin succeeded\033[0m\n"
.LC22:
	.string	"\033[0;32mI (%d) %s: Please Wait. This may take time\033[0m\n"
.LC24:
	.string	"\033[0;31mE (%d) %s: Couldn't allocate memory to upgrade data buffer\033[0m\n"
.LC26:
	.string	"\033[0;32mI (%d) %s: Connection closed,all data received\033[0m\n"
.LC28:
	.string	"\033[0;31mE (%d) %s: Error: SSL data read error\033[0m\n"
.LC30:
	.string	"\033[0;31mE (%d) %s: Error: esp_ota_write failed! err=0x%d\033[0m\n"
.LC32:
	.string	"\033[0;31mE (%d) %s: Error: esp_ota_end failed! err=0x%d. Image is invalid\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: esp_ota_set_boot_partition failed! err=0x%d\033[0m\n"
.LC36:
	.string	"\033[0;32mI (%d) %s: esp_ota_set_boot_partition succeeded\033[0m\n"
	.section	.text.esp_https_ota,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.align	4
	.global	esp_https_ota
	.type	esp_https_ota, @function
esp_https_ota:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_https_ota/src/esp_https_ota.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 64
.LCFI0:
	l32r	a3, .LC1
	.loc 1 33 0
	bnez.n	a2, .L2
	.loc 1 34 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a12, .LC3
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 35 0 discriminator 2
	movi	a2, 0x102
.LVL3:
	retw.n
.LVL4:
.L2:
	.loc 1 38 0
	l32i.n	a4, a2, 32
	bnez.n	a4, .L4
	.loc 1 39 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC5
	j	.L20
.L4:
	.loc 1 43 0
	mov.n	a10, a2
	call8	esp_http_client_init
.LVL6:
	mov.n	a4, a10
.LVL7:
	.loc 1 44 0
	bnez.n	a10, .L5
	.loc 1 45 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a12, .LC7
	mov.n	a14, a3
	mov.n	a13, a10
.LVL9:
.L20:
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL10:
.L23:
	.loc 1 46 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL11:
.L5:
	.loc 1 49 0
	call8	esp_http_client_get_transport_type
.LVL12:
	beqi	a10, 2, .L6
	.loc 1 50 0 discriminator 2
	call8	esp_log_timestamp
.LVL13:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC9
	j	.L20
.L6:
	.loc 1 54 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	esp_http_client_open
.LVL14:
	mov.n	a2, a10
.LVL15:
	.loc 1 56 0
	mov.n	a10, a4
	.loc 1 55 0
	beqz.n	a2, .L7
	.loc 1 56 0
	call8	esp_http_client_cleanup
.LVL16:
	.loc 1 57 0
	call8	esp_log_timestamp
.LVL17:
	mov.n	a4, a10
.LVL18:
	mov.n	a10, a2
	call8	esp_err_to_name
.LVL19:
	mov.n	a15, a10
	mov.n	a14, a3
	mov.n	a13, a4
	l32r	a12, .LC11
	j	.L22
.LVL20:
.L7:
	.loc 1 60 0
	call8	esp_http_client_fetch_headers
.LVL21:
	.loc 1 62 0
	s32i.n	a2, sp, 16
.LVL22:
	.loc 1 64 0
	call8	esp_log_timestamp
.LVL23:
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL24:
	.loc 1 65 0
	mov.n	a10, a2
	call8	esp_ota_get_next_update_partition
.LVL25:
	mov.n	a5, a10
.LVL26:
	.loc 1 66 0
	bnez.n	a10, .L8
	.loc 1 67 0 discriminator 2
	call8	esp_log_timestamp
.LVL27:
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
.LBB9:
.LBB10:
	.loc 1 27 0 discriminator 2
	mov.n	a10, a4
	call8	esp_http_client_close
.LVL29:
	.loc 1 28 0 discriminator 2
	mov.n	a10, a4
	call8	esp_http_client_cleanup
.LVL30:
	j	.L23
.LVL31:
.L8:
.LBE10:
.LBE9:
	.loc 1 71 0 discriminator 9
	call8	esp_log_timestamp
.LVL32:
	l32i.n	a2, a5, 8
.LVL33:
	l32r	a12, .LC17
	s32i.n	a2, sp, 0
	l32i.n	a15, a5, 4
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL34:
	.loc 1 74 0 discriminator 9
	addi	a12, sp, 16
	movi.n	a11, -1
	mov.n	a10, a5
	call8	esp_ota_begin
.LVL35:
	mov.n	a2, a10
.LVL36:
	.loc 1 75 0 discriminator 9
	beqz.n	a10, .L9
	.loc 1 76 0 discriminator 2
	call8	esp_log_timestamp
.LVL37:
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL38:
.LBB11:
.LBB12:
	.loc 1 27 0 discriminator 2
	mov.n	a10, a4
	call8	esp_http_client_close
.LVL39:
	.loc 1 28 0 discriminator 2
	mov.n	a10, a4
	call8	esp_http_client_cleanup
.LVL40:
	retw.n
.LVL41:
.L9:
.LBE12:
.LBE11:
	.loc 1 80 0 discriminator 9
	call8	esp_log_timestamp
.LVL42:
	l32r	a12, .LC21
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL43:
	.loc 1 81 0 discriminator 9
	call8	esp_log_timestamp
.LVL44:
	l32r	a12, .LC23
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL45:
	.loc 1 84 0 discriminator 9
	movi	a10, 0x100
	call8	malloc
.LVL46:
	mov.n	a6, a10
.LVL47:
	.loc 1 85 0 discriminator 9
	bnez.n	a10, .L18
	.loc 1 86 0 discriminator 2
	call8	esp_log_timestamp
.LVL48:
	l32r	a12, .LC25
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 87 0 discriminator 2
	movi	a2, 0x101
.LVL50:
	retw.n
.LVL51:
.L18:
.LBB13:
	.loc 1 91 0
	movi	a12, 0x100
	mov.n	a11, a6
	mov.n	a10, a4
	call8	esp_http_client_read
.LVL52:
	mov.n	a2, a10
.LVL53:
	.loc 1 92 0
	bnez.n	a10, .L11
	.loc 1 93 0 discriminator 9
	call8	esp_log_timestamp
.LVL54:
	l32r	a12, .LC27
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL55:
	.loc 1 94 0 discriminator 9
	j	.L12
.L11:
	.loc 1 96 0
	bgez	a10, .L13
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL56:
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL57:
	.loc 1 98 0 discriminator 2
	movi.n	a2, 0
.LVL58:
	j	.L12
.LVL59:
.L13:
	.loc 1 101 0
	mov.n	a12, a10
	l32i.n	a10, sp, 16
	mov.n	a11, a6
	call8	esp_ota_write
.LVL60:
	mov.n	a2, a10
.LVL61:
	.loc 1 102 0
	beqz.n	a10, .L18
.LVL62:
.L12:
.LBE13:
	.loc 1 109 0
	mov.n	a10, a6
	call8	free
.LVL63:
.LBB14:
.LBB15:
	.loc 1 27 0
	mov.n	a10, a4
	call8	esp_http_client_close
.LVL64:
	.loc 1 28 0
	mov.n	a10, a4
	call8	esp_http_client_cleanup
.LVL65:
.LBE15:
.LBE14:
	.loc 1 113 0
	l32i.n	a10, sp, 16
	call8	esp_ota_end
.LVL66:
	mov.n	a4, a10
.LVL67:
	.loc 1 114 0
	beqz.n	a2, .L14
	.loc 1 115 0 discriminator 2
	call8	esp_log_timestamp
.LVL68:
	l32r	a12, .LC31
	movi.n	a15, 0
	mov.n	a14, a3
	mov.n	a13, a10
.LVL69:
.L22:
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL70:
	.loc 1 116 0 discriminator 2
	retw.n
.LVL71:
.L14:
	.loc 1 117 0
	beqz.n	a10, .L15
	.loc 1 118 0 discriminator 2
	call8	esp_log_timestamp
.LVL72:
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC33
	j	.L21
.L15:
	.loc 1 122 0
	mov.n	a10, a5
	call8	esp_ota_set_boot_partition
.LVL73:
	mov.n	a4, a10
.LVL74:
	.loc 1 123 0
	beqz.n	a10, .L16
	.loc 1 124 0 discriminator 2
	call8	esp_log_timestamp
.LVL75:
	l32r	a12, .LC35
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a10
.LVL76:
.L21:
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL77:
	.loc 1 125 0 discriminator 2
	mov.n	a2, a4
	retw.n
.LVL78:
.L16:
	.loc 1 127 0 discriminator 9
	call8	esp_log_timestamp
.LVL79:
	l32r	a12, .LC37
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL80:
	.loc 1 130 0 discriminator 9
	retw.n
.LFE18:
	.size	esp_https_ota, .-esp_https_ota
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_client/include/esp_http_client.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb25
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0xd5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdb
	.uleb128 0x8
	.4byte	.LASF145
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x1c
	.byte	0x5
	.byte	0x30
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x31
	.4byte	0x178
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x32
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x33
	.4byte	0x73
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x34
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x35
	.4byte	0x73
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.4byte	0x8a
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.4byte	0x8a
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x23
	.4byte	0x178
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.4byte	0x141
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x38
	.4byte	0xe0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x3e
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x42
	.4byte	0x18e
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0xb8
	.4byte	0x1d8
	.uleb128 0xe
	.4byte	0x1d8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x183
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x49
	.4byte	0x22d
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.byte	0x55
	.4byte	0x1de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x5a
	.4byte	0x257
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0x5e
	.4byte	0x238
	.uleb128 0xf
	.byte	0x48
	.byte	0x5
	.byte	0x63
	.4byte	0x343
	.uleb128 0x10
	.string	"url"
	.byte	0x5
	.byte	0x64
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0x65
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x5
	.byte	0x66
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x5
	.byte	0x67
	.4byte	0x97
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x5
	.byte	0x68
	.4byte	0x97
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x5
	.byte	0x69
	.4byte	0x257
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x5
	.byte	0x6a
	.4byte	0x97
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x5
	.byte	0x6b
	.4byte	0x97
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x5
	.byte	0x6c
	.4byte	0x97
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x5
	.byte	0x6d
	.4byte	0x22d
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x5
	.byte	0x6e
	.4byte	0x4c
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x5
	.byte	0x6f
	.4byte	0xc3
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x5
	.byte	0x70
	.4byte	0x4c
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x5
	.byte	0x71
	.4byte	0x1b8
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x5
	.byte	0x72
	.4byte	0x1ad
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0x73
	.4byte	0x4c
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x74
	.4byte	0x73
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x5
	.byte	0x75
	.4byte	0xc3
	.byte	0x44
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x5
	.byte	0x76
	.4byte	0x262
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x26
	.4byte	0x367
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x29
	.4byte	0x34e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x2f
	.4byte	0x42d
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x1f
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x81
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x82
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x6
	.byte	0x50
	.4byte	0x372
	.uleb128 0xf
	.byte	0x24
	.byte	0x6
	.byte	0x63
	.4byte	0x489
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x6
	.byte	0x64
	.4byte	0x367
	.byte	0
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x6
	.byte	0x65
	.4byte	0x42d
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x6
	.byte	0x66
	.4byte	0xad
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x6
	.byte	0x67
	.4byte	0xad
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x6
	.byte	0x68
	.4byte	0x489
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x6
	.byte	0x69
	.4byte	0xc3
	.byte	0x21
	.byte	0
	.uleb128 0x11
	.4byte	0x90
	.4byte	0x499
	.uleb128 0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x6
	.byte	0x6a
	.4byte	0x438
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x7
	.byte	0x2a
	.4byte	0xad
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x1f
	.4byte	0x4e0
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x4f8
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0xca
	.byte	0
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1
	.byte	0x1f
	.4byte	0xb8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3a
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0x1
	.byte	0x1f
	.4byte	0xa3a
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.byte	0x36
	.4byte	0xb8
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x1
	.byte	0x3e
	.4byte	0x4a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0x1
	.byte	0x3f
	.4byte	0xa45
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x1
	.byte	0x54
	.4byte	0x8a
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.byte	0x59
	.4byte	0x4c
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x1
	.byte	0x71
	.4byte	0xb8
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	0x4e0
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0x44
	.4byte	0x5d4
	.uleb128 0x1c
	.4byte	0x4ec
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0xa67
	.4byte	0x5c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL30
	.4byte	0xa73
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x4e0
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0x4d
	.4byte	0x615
	.uleb128 0x1c
	.4byte	0x4ec
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0xa67
	.4byte	0x604
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0xa73
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x6cb
	.uleb128 0x17
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0xa7f
	.4byte	0x652
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x21
	.4byte	.LVL54
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xa96
	.4byte	0x683
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL56
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0xa96
	.4byte	0x6b4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL60
	.4byte	0xaa1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x4e0
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x6e
	.4byte	0x70c
	.uleb128 0x1c
	.4byte	0x4ec
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0xa67
	.4byte	0x6fb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL65
	.4byte	0xa73
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0xa96
	.4byte	0x73d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0xaac
	.4byte	0x75a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0xa96
	.4byte	0x77c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL12
	.4byte	0xab7
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0xac3
	.4byte	0x7a7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL16
	.4byte	0xa73
	.4byte	0x7bb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0xacf
	.4byte	0x7d8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0xada
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xa96
	.4byte	0x812
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0xae6
	.4byte	0x826
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0xa96
	.4byte	0x857
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL32
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL34
	.4byte	0xa96
	.4byte	0x88f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0xaf1
	.4byte	0x8af
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL38
	.4byte	0xa96
	.4byte	0x8e6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0xa96
	.4byte	0x917
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0xa96
	.4byte	0x948
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0xafc
	.4byte	0x95d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0xa96
	.4byte	0x98e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL63
	.4byte	0xb07
	.4byte	0x9a2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0xb12
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0xa96
	.4byte	0x9cd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL72
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0xb1d
	.4byte	0x9ea
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL75
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LVL77
	.4byte	0xa96
	.4byte	0xa0c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL79
	.4byte	0xa8b
	.uleb128 0x1f
	.4byte	.LVL80
	.4byte	0xa96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa40
	.uleb128 0x7
	.4byte	0x343
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa4b
	.uleb128 0x7
	.4byte	0x499
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0xa62
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0x23
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x15c
	.uleb128 0x23
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x16a
	.uleb128 0x23
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x5
	.2byte	0x13b
	.uleb128 0x24
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x8
	.byte	0x57
	.uleb128 0x24
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
	.byte	0x6b
	.uleb128 0x24
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.byte	0x59
	.uleb128 0x24
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x5
	.byte	0x8e
	.uleb128 0x23
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x5
	.2byte	0x176
	.uleb128 0x23
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x10b
	.uleb128 0x24
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x4
	.byte	0x3a
	.uleb128 0x23
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x124
	.uleb128 0x24
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0xab
	.uleb128 0x24
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x7
	.byte	0x45
	.uleb128 0x24
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x9
	.byte	0x65
	.uleb128 0x24
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x9
	.byte	0x5a
	.uleb128 0x24
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x7
	.byte	0x69
	.uleb128 0x24
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.byte	0x79
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL45
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL47
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL71
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"user_data"
.LASF138:
	.string	"malloc"
.LASF126:
	.string	"esp_http_client_cleanup"
.LASF66:
	.string	"max_redirection_count"
.LASF37:
	.string	"esp_http_client_transport_t"
.LASF130:
	.string	"esp_ota_write"
.LASF105:
	.string	"type"
.LASF58:
	.string	"password"
.LASF60:
	.string	"path"
.LASF34:
	.string	"HTTP_TRANSPORT_UNKNOWN"
.LASF8:
	.string	"long long unsigned int"
.LASF129:
	.string	"esp_log_write"
.LASF20:
	.string	"data"
.LASF144:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_https_ota"
.LASF140:
	.string	"esp_ota_end"
.LASF49:
	.string	"HTTP_METHOD_MAX"
.LASF53:
	.string	"HTTP_AUTH_TYPE_DIGEST"
.LASF136:
	.string	"esp_ota_get_next_update_partition"
.LASF117:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF125:
	.string	"esp_http_client_close"
.LASF148:
	.string	"esp_https_ota"
.LASF65:
	.string	"disable_auto_redirect"
.LASF24:
	.string	"header_value"
.LASF18:
	.string	"event_id"
.LASF103:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF9:
	.string	"long int"
.LASF41:
	.string	"HTTP_METHOD_PUT"
.LASF150:
	.string	"binary_file_len"
.LASF6:
	.string	"unsigned int"
.LASF95:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF87:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF93:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF123:
	.string	"ota_end_err"
.LASF90:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF99:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF50:
	.string	"esp_http_client_method_t"
.LASF76:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF133:
	.string	"esp_http_client_open"
.LASF119:
	.string	"update_handle"
.LASF5:
	.string	"__uint32_t"
.LASF68:
	.string	"transport_type"
.LASF56:
	.string	"port"
.LASF55:
	.string	"host"
.LASF42:
	.string	"HTTP_METHOD_PATCH"
.LASF74:
	.string	"esp_partition_type_t"
.LASF11:
	.string	"long unsigned int"
.LASF142:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF63:
	.string	"method"
.LASF48:
	.string	"HTTP_METHOD_OPTIONS"
.LASF59:
	.string	"auth_type"
.LASF127:
	.string	"esp_http_client_read"
.LASF108:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF132:
	.string	"esp_http_client_get_transport_type"
.LASF121:
	.string	"ota_write_err"
.LASF35:
	.string	"HTTP_TRANSPORT_OVER_TCP"
.LASF109:
	.string	"label"
.LASF40:
	.string	"HTTP_METHOD_POST"
.LASF94:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF2:
	.string	"short int"
.LASF57:
	.string	"username"
.LASF106:
	.string	"subtype"
.LASF137:
	.string	"esp_ota_begin"
.LASF116:
	.string	"ESP_LOG_INFO"
.LASF54:
	.string	"esp_http_client_auth_type_t"
.LASF10:
	.string	"sizetype"
.LASF96:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF67:
	.string	"event_handler"
.LASF107:
	.string	"address"
.LASF139:
	.string	"free"
.LASF73:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF52:
	.string	"HTTP_AUTH_TYPE_BASIC"
.LASF146:
	.string	"esp_http_client_event"
.LASF72:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF112:
	.string	"esp_ota_handle_t"
.LASF118:
	.string	"ESP_LOG_VERBOSE"
.LASF122:
	.string	"upgrade_data_buf"
.LASF64:
	.string	"timeout_ms"
.LASF23:
	.string	"header_key"
.LASF16:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF120:
	.string	"update_partition"
.LASF77:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF78:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF61:
	.string	"query"
.LASF80:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF81:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF26:
	.string	"HTTP_EVENT_ON_CONNECTED"
.LASF83:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF84:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF85:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF86:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF128:
	.string	"esp_log_timestamp"
.LASF114:
	.string	"ESP_LOG_ERROR"
.LASF46:
	.string	"HTTP_METHOD_SUBSCRIBE"
.LASF32:
	.string	"esp_http_client_event_id_t"
.LASF30:
	.string	"HTTP_EVENT_ON_FINISH"
.LASF21:
	.string	"data_len"
.LASF97:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF36:
	.string	"HTTP_TRANSPORT_OVER_SSL"
.LASF110:
	.string	"encrypted"
.LASF39:
	.string	"HTTP_METHOD_GET"
.LASF62:
	.string	"cert_pem"
.LASF14:
	.string	"uint32_t"
.LASF135:
	.string	"esp_http_client_fetch_headers"
.LASF43:
	.string	"HTTP_METHOD_DELETE"
.LASF12:
	.string	"char"
.LASF45:
	.string	"HTTP_METHOD_NOTIFY"
.LASF143:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_https_ota/src/esp_https_ota.c"
.LASF149:
	.string	"config"
.LASF100:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF104:
	.string	"esp_partition_subtype_t"
.LASF113:
	.string	"ESP_LOG_NONE"
.LASF27:
	.string	"HTTP_EVENT_HEADER_SENT"
.LASF33:
	.string	"esp_http_client_event_t"
.LASF4:
	.string	"__int32_t"
.LASF38:
	.string	"http_event_handle_cb"
.LASF79:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF82:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF1:
	.string	"unsigned char"
.LASF131:
	.string	"esp_http_client_init"
.LASF71:
	.string	"esp_http_client_config_t"
.LASF145:
	.string	"esp_http_client"
.LASF51:
	.string	"HTTP_AUTH_TYPE_NONE"
.LASF88:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF89:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF115:
	.string	"ESP_LOG_WARN"
.LASF91:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF92:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF44:
	.string	"HTTP_METHOD_HEAD"
.LASF69:
	.string	"buffer_size"
.LASF15:
	.string	"esp_err_t"
.LASF101:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF98:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF17:
	.string	"esp_http_client_handle_t"
.LASF25:
	.string	"HTTP_EVENT_ERROR"
.LASF147:
	.string	"http_cleanup"
.LASF102:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF75:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF28:
	.string	"HTTP_EVENT_ON_HEADER"
.LASF47:
	.string	"HTTP_METHOD_UNSUBSCRIBE"
.LASF111:
	.string	"esp_partition_t"
.LASF31:
	.string	"HTTP_EVENT_DISCONNECTED"
.LASF134:
	.string	"esp_err_to_name"
.LASF29:
	.string	"HTTP_EVENT_ON_DATA"
.LASF141:
	.string	"esp_ota_set_boot_partition"
.LASF19:
	.string	"client"
.LASF124:
	.string	"data_read"
.LASF70:
	.string	"is_async"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
