	.file	"interrupts.c"
	.text
.Ltext0:
	.global	esp_isr_names
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"WIFI_MAC"
.LC1:
	.string	"WIFI_NMI"
.LC2:
	.string	"WIFI_BB"
.LC3:
	.string	"BT_MAC"
.LC4:
	.string	"BT_BB"
.LC5:
	.string	"BT_BB_NMI"
.LC6:
	.string	"RWBT"
.LC7:
	.string	"RWBLE"
.LC8:
	.string	"RWBT_NMI"
.LC9:
	.string	"RWBLE_NMI"
.LC10:
	.string	"SLC0"
.LC11:
	.string	"SLC1"
.LC12:
	.string	"UHCI0"
.LC13:
	.string	"UHCI1"
.LC14:
	.string	"TG0_T0_LEVEL"
.LC15:
	.string	"TG0_T1_LEVEL"
.LC16:
	.string	"TG0_WDT_LEVEL"
.LC17:
	.string	"TG0_LACT_LEVEL"
.LC18:
	.string	"TG1_T0_LEVEL"
.LC19:
	.string	"TG1_T1_LEVEL"
.LC20:
	.string	"TG1_WDT_LEVEL"
.LC21:
	.string	"TG1_LACT_LEVEL"
.LC22:
	.string	"GPIO"
.LC23:
	.string	"GPIO_NMI"
.LC24:
	.string	"FROM_CPU0"
.LC25:
	.string	"FROM_CPU1"
.LC26:
	.string	"FROM_CPU2"
.LC27:
	.string	"FROM_CPU3"
.LC28:
	.string	"SPI0"
.LC29:
	.string	"SPI1"
.LC30:
	.string	"SPI2"
.LC31:
	.string	"SPI3"
.LC32:
	.string	"I2S0"
.LC33:
	.string	"I2S1"
.LC34:
	.string	"UART0"
.LC35:
	.string	"UART1"
.LC36:
	.string	"UART2"
.LC37:
	.string	"SDIO_HOST"
.LC38:
	.string	"ETH_MAC"
.LC39:
	.string	"PWM0"
.LC40:
	.string	"PWM1"
.LC41:
	.string	"PWM2"
.LC42:
	.string	"PWM3"
.LC43:
	.string	"LEDC"
.LC44:
	.string	"EFUSE"
.LC45:
	.string	"CAN"
.LC46:
	.string	"RTC_CORE"
.LC47:
	.string	"RMT"
.LC48:
	.string	"PCNT"
.LC49:
	.string	"I2C_EXT0"
.LC50:
	.string	"I2C_EXT1"
.LC51:
	.string	"RSA"
.LC52:
	.string	"SPI1_DMA"
.LC53:
	.string	"SPI2_DMA"
.LC54:
	.string	"SPI3_DMA"
.LC55:
	.string	"WDT"
.LC56:
	.string	"TIMER1"
.LC57:
	.string	"TIMER2"
.LC58:
	.string	"TG0_T0_EDGE"
.LC59:
	.string	"TG0_T1_EDGE"
.LC60:
	.string	"TG0_WDT_EDGE"
.LC61:
	.string	"TG0_LACT_EDGE"
.LC62:
	.string	"TG1_T0_EDGE"
.LC63:
	.string	"TG1_T1_EDGE"
.LC64:
	.string	"TG1_WDT_EDGE"
.LC65:
	.string	"TG1_LACT_EDGE"
.LC66:
	.string	"MMU_IA"
.LC67:
	.string	"MPU_IA"
.LC68:
	.string	"CACHE_IA"
	.section	.rodata.esp_isr_names,"a"
	.align	4
	.type	esp_isr_names, @object
	.size	esp_isr_names, 276
esp_isr_names:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.text
.Letext0:
	.file 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 6 "/home/dieter/Development/esp-idf/components/soc/include/soc/interrupts.h"
	.file 7 "/home/dieter/Development/esp-idf/components/soc/esp32/interrupts.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x940
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x1
	.byte	0xc
	.byte	0x11
	.4byte	0x55
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2c
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x72
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x40
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0xa6
	.byte	0x3
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xa8
	.byte	0xc
	.4byte	0x8c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0xa9
	.byte	0x13
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	0x24
	.4byte	0xcb
	.uleb128 0x9
	.4byte	0x40
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x2
	.byte	0xa3
	.byte	0x9
	.4byte	0xef
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x2
	.byte	0xa5
	.byte	0x7
	.4byte	0x39
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x2
	.byte	0xaa
	.byte	0x5
	.4byte	0x99
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0xab
	.byte	0x3
	.4byte	0xcb
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0xaf
	.byte	0x1b
	.4byte	0x61
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xd
	.byte	0x4
	.4byte	0x116
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0xe
	.4byte	0x116
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x109
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x18
	.byte	0x4
	.byte	0x2f
	.byte	0x8
	.4byte	0x188
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x31
	.byte	0x13
	.4byte	0x188
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x4
	.byte	0x32
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x32
	.byte	0xb
	.4byte	0x39
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x32
	.byte	0x14
	.4byte	0x39
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x32
	.byte	0x1b
	.4byte	0x39
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x4
	.byte	0x33
	.byte	0xb
	.4byte	0x18e
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x8
	.4byte	0x122
	.4byte	0x19e
	.uleb128 0x9
	.4byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x24
	.byte	0x4
	.byte	0x37
	.byte	0x8
	.4byte	0x221
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.4byte	0x39
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3a
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x3b
	.byte	0x7
	.4byte	0x39
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x3c
	.byte	0x7
	.4byte	0x39
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x3d
	.byte	0x7
	.4byte	0x39
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x39
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x39
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x39
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x39
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x4
	.byte	0x4a
	.byte	0x8
	.4byte	0x266
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4b
	.byte	0x9
	.4byte	0x266
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4c
	.byte	0x9
	.4byte	0x266
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4e
	.byte	0xa
	.4byte	0x122
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x51
	.byte	0xa
	.4byte	0x122
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x107
	.4byte	0x276
	.uleb128 0x9
	.4byte	0x40
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x4
	.byte	0x55
	.byte	0x8
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x56
	.byte	0x12
	.4byte	0x2b8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0x57
	.byte	0x6
	.4byte	0x39
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.byte	0x58
	.byte	0x9
	.4byte	0x2be
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x4
	.byte	0x59
	.byte	0x20
	.4byte	0x2d5
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x276
	.uleb128 0x8
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0x40
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x221
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4
	.byte	0x75
	.byte	0x8
	.4byte	0x303
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x4
	.byte	0x76
	.byte	0x11
	.4byte	0x303
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x4
	.byte	0x77
	.byte	0x6
	.4byte	0x39
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x20
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0x37c
	.uleb128 0x10
	.string	"_p"
	.byte	0x4
	.byte	0x9a
	.byte	0x12
	.4byte	0x303
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x4
	.byte	0x9b
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x4
	.byte	0x9c
	.byte	0x7
	.4byte	0x39
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0x9d
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0x9e
	.byte	0x9
	.4byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x4
	.byte	0x9f
	.byte	0x11
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xa0
	.byte	0x7
	.4byte	0x39
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xa2
	.byte	0x12
	.4byte	0x4e0
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x309
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x4
	.2byte	0x174
	.byte	0x8
	.4byte	0x4e0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x178
	.byte	0x7
	.4byte	0x39
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x17d
	.byte	0xb
	.4byte	0x726
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x17d
	.byte	0x14
	.4byte	0x726
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x726
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x17f
	.byte	0x7
	.4byte	0x39
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x181
	.byte	0x9
	.4byte	0x110
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x183
	.byte	0x7
	.4byte	0x39
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x185
	.byte	0x7
	.4byte	0x39
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x186
	.byte	0x16
	.4byte	0x88e
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x4
	.2byte	0x188
	.byte	0x12
	.4byte	0x894
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8a5
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x18c
	.byte	0x7
	.4byte	0x39
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x18f
	.byte	0x7
	.4byte	0x39
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x190
	.byte	0x9
	.4byte	0x110
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ab
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b1
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x194
	.byte	0x9
	.4byte	0x110
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x197
	.byte	0xb
	.4byte	0x8c2
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2b8
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x19c
	.byte	0x12
	.4byte	0x276
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6e7
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x726
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8ce
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x110
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x381
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x68
	.byte	0x4
	.byte	0xb5
	.byte	0x8
	.4byte	0x629
	.uleb128 0x10
	.string	"_p"
	.byte	0x4
	.byte	0xb6
	.byte	0x12
	.4byte	0x303
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x4
	.byte	0xb7
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x4
	.byte	0xb8
	.byte	0x7
	.4byte	0x39
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xb9
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0xba
	.byte	0x9
	.4byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x4
	.byte	0xbb
	.byte	0x11
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x39
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xbf
	.byte	0x12
	.4byte	0x4e0
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x4
	.byte	0xc3
	.byte	0xa
	.4byte	0x107
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x4
	.byte	0xc5
	.byte	0x9
	.4byte	0x647
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x4
	.byte	0xc7
	.byte	0x9
	.4byte	0x676
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x4
	.byte	0xca
	.byte	0xd
	.4byte	0x69a
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x4
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b4
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x4
	.byte	0xce
	.byte	0x11
	.4byte	0x2db
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x4
	.byte	0xcf
	.byte	0x12
	.4byte	0x303
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x4
	.byte	0xd0
	.byte	0x7
	.4byte	0x39
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ba
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x4
	.byte	0xd4
	.byte	0x11
	.4byte	0x6ca
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x4
	.byte	0xd7
	.byte	0x11
	.4byte	0x2db
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x4
	.byte	0xda
	.byte	0x7
	.4byte	0x39
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x4
	.byte	0xdb
	.byte	0xa
	.4byte	0x74
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x4
	.byte	0xe2
	.byte	0xc
	.4byte	0xfb
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x4
	.byte	0xe4
	.byte	0xe
	.4byte	0xef
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x4
	.byte	0xe5
	.byte	0x7
	.4byte	0x39
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x39
	.4byte	0x647
	.uleb128 0x18
	.4byte	0x4e0
	.uleb128 0x18
	.4byte	0x107
	.uleb128 0x18
	.4byte	0x110
	.uleb128 0x18
	.4byte	0x39
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x629
	.uleb128 0x17
	.4byte	0x39
	.4byte	0x66b
	.uleb128 0x18
	.4byte	0x4e0
	.uleb128 0x18
	.4byte	0x107
	.uleb128 0x18
	.4byte	0x66b
	.uleb128 0x18
	.4byte	0x39
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11d
	.uleb128 0xe
	.4byte	0x66b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x64d
	.uleb128 0x17
	.4byte	0x80
	.4byte	0x69a
	.uleb128 0x18
	.4byte	0x4e0
	.uleb128 0x18
	.4byte	0x107
	.uleb128 0x18
	.4byte	0x80
	.uleb128 0x18
	.4byte	0x39
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x67c
	.uleb128 0x17
	.4byte	0x39
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x4e0
	.uleb128 0x18
	.4byte	0x107
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x8
	.4byte	0x24
	.4byte	0x6ca
	.uleb128 0x9
	.4byte	0x40
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x24
	.4byte	0x6da
	.uleb128 0x9
	.4byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4e6
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xc
	.byte	0x4
	.2byte	0x123
	.byte	0x8
	.4byte	0x720
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x125
	.byte	0x11
	.4byte	0x720
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x126
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x127
	.byte	0xb
	.4byte	0x726
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6e7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6da
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x18
	.byte	0x4
	.2byte	0x13f
	.byte	0x8
	.4byte	0x773
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x140
	.byte	0x12
	.4byte	0x773
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x141
	.byte	0x12
	.4byte	0x773
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x142
	.byte	0x12
	.4byte	0x32
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x145
	.byte	0x24
	.4byte	0x4e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x783
	.uleb128 0x9
	.4byte	0x40
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x10
	.byte	0x4
	.2byte	0x158
	.byte	0x8
	.4byte	0x7ca
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x15b
	.byte	0x13
	.4byte	0x188
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x15c
	.byte	0x7
	.4byte	0x39
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x15d
	.byte	0x13
	.4byte	0x188
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7ca
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x188
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x50
	.byte	0x4
	.2byte	0x162
	.byte	0x8
	.4byte	0x879
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x165
	.byte	0x9
	.4byte	0x110
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x166
	.byte	0xe
	.4byte	0xef
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x167
	.byte	0xe
	.4byte	0xef
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x168
	.byte	0xe
	.4byte	0xef
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x169
	.byte	0x8
	.4byte	0x879
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x16a
	.byte	0x7
	.4byte	0x39
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x16b
	.byte	0xe
	.4byte	0xef
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x16c
	.byte	0xe
	.4byte	0xef
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x16d
	.byte	0xe
	.4byte	0xef
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x16e
	.byte	0xe
	.4byte	0xef
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x16f
	.byte	0xe
	.4byte	0xef
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x116
	.4byte	0x889
	.uleb128 0x9
	.4byte	0x40
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF125
	.uleb128 0xd
	.byte	0x4
	.4byte	0x889
	.uleb128 0xd
	.byte	0x4
	.4byte	0x783
	.uleb128 0x1a
	.4byte	0x8a5
	.uleb128 0x18
	.4byte	0x4e0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x89a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x72c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x1a
	.4byte	0x8c2
	.uleb128 0x18
	.4byte	0x39
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8b7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d0
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x37c
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x37c
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x37c
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4e0
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x110
	.uleb128 0x8
	.4byte	0x671
	.4byte	0x924
	.uleb128 0x9
	.4byte	0x40
	.byte	0x44
	.byte	0
	.uleb128 0xe
	.4byte	0x914
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x6
	.byte	0x18
	.byte	0x1b
	.4byte	0x924
	.uleb128 0x1d
	.4byte	0x929
	.byte	0x7
	.byte	0x11
	.byte	0x14
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_isr_names
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"_dso_handle"
.LASF48:
	.string	"_size"
.LASF123:
	.string	"/home/dieter/Development/esp-idf/components/soc/esp32/interrupts.c"
.LASF94:
	.string	"_rand48"
.LASF60:
	.string	"_emergency"
.LASF121:
	.string	"esp_isr_names"
.LASF53:
	.string	"_data"
.LASF114:
	.string	"_wcrtomb_state"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF125:
	.string	"__locale_t"
.LASF112:
	.string	"_mbrtowc_state"
.LASF107:
	.string	"_wctomb_state"
.LASF28:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF83:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF30:
	.string	"__tm_hour"
.LASF74:
	.string	"__sf"
.LASF37:
	.string	"_on_exit_args"
.LASF78:
	.string	"_cookie"
.LASF73:
	.string	"__sglue"
.LASF9:
	.string	"long int"
.LASF99:
	.string	"_mprec"
.LASF50:
	.string	"_flags"
.LASF41:
	.string	"_is_cxa"
.LASF56:
	.string	"_stdin"
.LASF85:
	.string	"_blksize"
.LASF7:
	.string	"_lock_t"
.LASF67:
	.string	"_cvtbuf"
.LASF86:
	.string	"_offset"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF105:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbrlen_state"
.LASF38:
	.string	"_fnargs"
.LASF44:
	.string	"_fns"
.LASF24:
	.string	"_sign"
.LASF18:
	.string	"_flock_t"
.LASF58:
	.string	"_stderr"
.LASF26:
	.string	"_Bigint"
.LASF65:
	.string	"_gamma_signgam"
.LASF79:
	.string	"_read"
.LASF101:
	.string	"_result_k"
.LASF27:
	.string	"__tm"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF4:
	.string	"unsigned int"
.LASF14:
	.string	"__wchb"
.LASF57:
	.string	"_stdout"
.LASF66:
	.string	"_cvtlen"
.LASF19:
	.string	"long unsigned int"
.LASF49:
	.string	"__sFILE_fake"
.LASF92:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF72:
	.string	"_atexit0"
.LASF76:
	.string	"_signal_buf"
.LASF70:
	.string	"_asctime_buf"
.LASF100:
	.string	"_result"
.LASF13:
	.string	"__wch"
.LASF124:
	.string	"/home/dieter/Development/ProjektEi/build/soc"
.LASF12:
	.string	"wint_t"
.LASF87:
	.string	"_lock"
.LASF89:
	.string	"_flags2"
.LASF80:
	.string	"_write"
.LASF33:
	.string	"__tm_year"
.LASF75:
	.string	"_misc"
.LASF116:
	.string	"__sf_fake_stdin"
.LASF117:
	.string	"__sf_fake_stdout"
.LASF32:
	.string	"__tm_mon"
.LASF42:
	.string	"_atexit"
.LASF120:
	.string	"suboptarg"
.LASF61:
	.string	"__sdidinit"
.LASF10:
	.string	"_off_t"
.LASF103:
	.string	"_freelist"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF90:
	.string	"__FILE"
.LASF17:
	.string	"_mbstate_t"
.LASF77:
	.string	"__sFILE"
.LASF88:
	.string	"_mbstate"
.LASF98:
	.string	"_rand_next"
.LASF106:
	.string	"_mblen_state"
.LASF59:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF63:
	.string	"_locale"
.LASF64:
	.string	"__cleanup"
.LASF62:
	.string	"_unspecified_locale_info"
.LASF23:
	.string	"_maxwds"
.LASF54:
	.string	"_reent"
.LASF95:
	.string	"_seed"
.LASF15:
	.string	"__count"
.LASF16:
	.string	"__value"
.LASF81:
	.string	"_seek"
.LASF11:
	.string	"_fpos_t"
.LASF55:
	.string	"_errno"
.LASF20:
	.string	"char"
.LASF29:
	.string	"__tm_min"
.LASF96:
	.string	"_mult"
.LASF22:
	.string	"_next"
.LASF122:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"_fntypes"
.LASF104:
	.string	"_misc_reent"
.LASF97:
	.string	"_add"
.LASF21:
	.string	"__ULong"
.LASF110:
	.string	"_getdate_err"
.LASF119:
	.string	"_global_impure_ptr"
.LASF51:
	.string	"_file"
.LASF25:
	.string	"_wds"
.LASF34:
	.string	"__tm_wday"
.LASF91:
	.string	"_glue"
.LASF109:
	.string	"_l64a_buf"
.LASF71:
	.string	"_sig_func"
.LASF84:
	.string	"_nbuf"
.LASF36:
	.string	"__tm_isdst"
.LASF69:
	.string	"_localtime_buf"
.LASF82:
	.string	"_close"
.LASF118:
	.string	"__sf_fake_stderr"
.LASF68:
	.string	"_r48"
.LASF108:
	.string	"_mbtowc_state"
.LASF102:
	.string	"_p5s"
.LASF31:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
