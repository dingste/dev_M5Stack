	.file	"scheme_console.c"
	.text
.Ltext0:
	.section	.text.set_config_service,"ax",@progbits
	.align	4
	.type	set_config_service, @function
set_config_service:
.LFB32:
	.file 1 "/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/src/scheme_console.c"
	.loc 1 75 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 77 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE32:
	.size	set_config_service, .-set_config_service
	.section	.text.set_config_endpoint,"ax",@progbits
	.align	4
	.type	set_config_endpoint, @function
set_config_endpoint:
.LFB33:
	.loc 1 80 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 82 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE33:
	.size	set_config_endpoint, .-set_config_endpoint
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"wifi_prov_scheme_console"
.LC3:
	.string	"\033[0;31mE (%d) %s: Cannot delete null configuration\033[0m\n"
	.section	.text.delete_config,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	delete_config, @function
delete_config:
.LFB31:
	.loc 1 66 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 66 0
	mov.n	a10, a2
	.loc 1 67 0
	bnez.n	a2, .L4
.LVL5:
.LBB4:
.LBB5:
	.loc 1 68 0
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	retw.n
.LVL8:
.L4:
.LBE5:
.LBE4:
	.loc 1 71 0
	call8	free
.LVL9:
	retw.n
.LFE31:
	.size	delete_config, .-delete_config
	.section	.rodata.str1.1
.LC6:
	.string	"\033[0;31mE (%d) %s: Error allocating memory for new configuration\033[0m\n"
	.section	.text.new_config,"ax",@progbits
	.literal_position
	.literal .LC5, .LC1
	.literal .LC7, .LC6
	.literal .LC8, 4096
	.align	4
	.type	new_config, @function
new_config:
.LFB30:
	.loc 1 54 0
	entry	sp, 32
.LCFI3:
	.loc 1 55 0
	movi.n	a10, 8
	call8	malloc
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 56 0
	bnez.n	a10, .L7
.LBB8:
.LBB9:
	.loc 1 57 0
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC5
	l32r	a12, .LC7
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	retw.n
.L7:
.LVL14:
.LBE9:
.LBE8:
	.loc 1 61 0
	l32r	a8, .LC8
	s32i.n	a8, a10, 0
	movi.n	a8, 3
	s32i.n	a8, a10, 4
.LVL15:
	.loc 1 63 0
	retw.n
.LFE30:
	.size	new_config, .-new_config
	.section	.rodata.str1.1
.LC10:
	.string	"\033[0;31mE (%d) %s: Protocomm handle cannot be null\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: Cannot start with null configuration\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Failed to start protocomm HTTP server\033[0m\n"
	.section	.text.prov_start,"ax",@progbits
	.literal_position
	.literal .LC9, .LC1
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.type	prov_start, @function
prov_start:
.LFB29:
	.loc 1 31 0
.LVL16:
	entry	sp, 32
.LCFI4:
	.loc 1 31 0
	mov.n	a11, a3
	.loc 1 32 0
	bnez.n	a2, .L10
	.loc 1 33 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC11
	j	.L15
.L10:
	.loc 1 37 0
	bnez.n	a3, .L12
	.loc 1 38 0 discriminator 2
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC9
	l32r	a12, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
.L15:
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 39 0 discriminator 2
	movi	a2, 0x102
.LVL20:
	retw.n
.LVL21:
.L12:
	.loc 1 45 0
	mov.n	a10, a2
	call8	protocomm_console_start
.LVL22:
	.loc 1 50 0
	movi.n	a2, 0
.LVL23:
	.loc 1 46 0
	beq	a10, a2, .L11
.LVL24:
.LBB12:
.LBB13:
	.loc 1 47 0
	call8	esp_log_timestamp
.LVL25:
	l32r	a11, .LC9
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	movi.n	a2, -1
.LVL27:
.L11:
.LBE13:
.LBE12:
	.loc 1 51 0
	retw.n
.LFE29:
	.size	prov_start, .-prov_start
	.global	wifi_prov_scheme_console
	.section	.rodata.wifi_prov_scheme_console,"a",@progbits
	.align	4
	.type	wifi_prov_scheme_console, @object
	.size	wifi_prov_scheme_console, 28
wifi_prov_scheme_console:
	.word	prov_start
	.word	protocomm_console_stop
	.word	new_config
	.word	delete_config
	.word	set_config_service
	.word	set_config_endpoint
	.word	1
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 10 "/home/dieter/SoftwareDevelop/esp-idf/components/protocomm/include/transports/protocomm_console.h"
	.file 11 "/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/include/wifi_provisioning/manager.h"
	.file 12 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x59c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x1f
	.4byte	0xff
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xb2
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1c
	.4byte	0x135
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x22
	.4byte	0x10a
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x70
	.4byte	0x37
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15d
	.uleb128 0xc
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x2b
	.4byte	0x16d
	.uleb128 0xd
	.4byte	.LASF58
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x1f
	.4byte	0x193
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0xa
	.byte	0x20
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0xa
	.byte	0x21
	.4byte	0x37
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.byte	0x22
	.4byte	0x172
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1c
	.byte	0xb
	.byte	0x6f
	.4byte	0x1ff
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0xb
	.byte	0x75
	.4byte	0x219
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0xb
	.byte	0x7b
	.4byte	0x22e
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0xb
	.byte	0x82
	.4byte	0x157
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0xb
	.byte	0x88
	.4byte	0xbd
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0xb
	.byte	0x8e
	.4byte	0x24d
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0xb
	.byte	0x94
	.4byte	0x26c
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0xb
	.byte	0x9c
	.4byte	0x135
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0xff
	.4byte	0x213
	.uleb128 0x9
	.4byte	0x213
	.uleb128 0x9
	.4byte	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x162
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x11
	.4byte	0xff
	.4byte	0x22e
	.uleb128 0x9
	.4byte	0x213
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x11
	.4byte	0xff
	.4byte	0x24d
	.uleb128 0x9
	.4byte	0x8c
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x234
	.uleb128 0x11
	.4byte	0xff
	.4byte	0x26c
	.uleb128 0x9
	.4byte	0x8c
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x253
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0x9d
	.4byte	0x19e
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0x295
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x41
	.4byte	0x8c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x35
	.4byte	0x8c
	.byte	0x1
	.4byte	0x2bc
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x37
	.4byte	0x2bc
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3c
	.4byte	0x193
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x193
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1e
	.4byte	0xff
	.byte	0x1
	.4byte	0x2fe
	.uleb128 0x16
	.string	"pc"
	.byte	0x1
	.byte	0x1e
	.4byte	0x213
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1e
	.4byte	0x8c
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2a
	.4byte	0x2bc
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x2d
	.4byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4a
	.4byte	0xff
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x341
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4a
	.4byte	0x8c
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4a
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4a
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4f
	.4byte	0xff
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x384
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4f
	.4byte	0x8c
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4f
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.4byte	0x27d
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f2
	.uleb128 0x1c
	.4byte	0x289
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x3e8
	.uleb128 0x1e
	.4byte	0x289
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0x568
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x573
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
	.4byte	.LC1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x57e
	.byte	0
	.uleb128 0x1b
	.4byte	0x295
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x470
	.uleb128 0x22
	.4byte	0x2a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	0x2b0
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x460
	.uleb128 0x24
	.4byte	0x2a5
	.uleb128 0x24
	.4byte	0x2b0
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0x568
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x573
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
	.4byte	.LC1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x589
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x2c2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x540
	.uleb128 0x1e
	.4byte	0x2d2
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x2dc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	0x2e7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	0x2f2
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x50a
	.uleb128 0x1e
	.4byte	0x2d2
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	0x2dc
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x24
	.4byte	0x2e7
	.uleb128 0x24
	.4byte	0x2f2
	.uleb128 0x1f
	.4byte	.LVL25
	.4byte	0x568
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0x573
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
	.4byte	.LC1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL17
	.4byte	0x568
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0x568
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x573
	.4byte	0x52f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x594
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"TAG"
	.byte	0x1
	.byte	0x1a
	.4byte	0x152
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x28
	.4byte	.LASF60
	.byte	0x1
	.byte	0x54
	.4byte	0x563
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_prov_scheme_console
	.uleb128 0x7
	.4byte	0x272
	.uleb128 0x29
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xc
	.byte	0x5a
	.uleb128 0x29
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xc
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0xa
	.byte	0x34
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE32
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
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x33
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"console_config"
.LASF40:
	.string	"set_config_endpoint"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF53:
	.string	"malloc"
.LASF11:
	.string	"sizetype"
.LASF6:
	.string	"__uint16_t"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF46:
	.string	"service_name"
.LASF12:
	.string	"long unsigned int"
.LASF45:
	.string	"config"
.LASF48:
	.string	"endpoint_name"
.LASF60:
	.string	"wifi_prov_scheme_console"
.LASF25:
	.string	"WIFI_MODE_AP"
.LASF34:
	.string	"protocomm_console_config_t"
.LASF26:
	.string	"WIFI_MODE_APSTA"
.LASF44:
	.string	"default_config"
.LASF52:
	.string	"free"
.LASF27:
	.string	"WIFI_MODE_MAX"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"wifi_mode_t"
.LASF10:
	.string	"long int"
.LASF35:
	.string	"prov_start"
.LASF49:
	.string	"uuid"
.LASF41:
	.string	"wifi_mode"
.LASF57:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wifi_provisioning"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"prov_stop"
.LASF58:
	.string	"protocomm"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF33:
	.string	"task_priority"
.LASF24:
	.string	"WIFI_MODE_STA"
.LASF1:
	.string	"short unsigned int"
.LASF56:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/src/scheme_console.c"
.LASF13:
	.string	"char"
.LASF47:
	.string	"service_key"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF15:
	.string	"int32_t"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF29:
	.string	"_Bool"
.LASF39:
	.string	"set_config_service"
.LASF54:
	.string	"protocomm_console_start"
.LASF38:
	.string	"delete_config"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF42:
	.string	"wifi_prov_scheme_t"
.LASF59:
	.string	"wifi_prov_scheme"
.LASF30:
	.string	"UBaseType_t"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF7:
	.string	"__int32_t"
.LASF32:
	.string	"stack_size"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF50:
	.string	"esp_log_timestamp"
.LASF37:
	.string	"new_config"
.LASF31:
	.string	"protocomm_t"
.LASF23:
	.string	"WIFI_MODE_NULL"
.LASF51:
	.string	"esp_log_write"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF22:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
