	.file	"esp_app_desc.c"
	.text
.Ltext0:
	.section	.text.esp_ota_get_app_description,"ax",@progbits
	.literal_position
	.literal .LC0, esp_app_desc
	.align	4
	.global	esp_ota_get_app_description
	.type	esp_ota_get_app_description, @function
esp_ota_get_app_description:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/esp-idf/components/app_update/esp_app_desc.c"
	.loc 1 62 0
	entry	sp, 32
.LCFI0:
	.loc 1 64 0
	l32r	a2, .LC0
	retw.n
.LFE1:
	.size	esp_ota_get_app_description, .-esp_ota_get_app_description
	.section	.iram1.1,"ax",@progbits
	.literal_position
	.literal .LC3, esp_app_desc
	.align	4
	.global	esp_ota_get_app_elf_sha256
	.type	esp_ota_get_app_elf_sha256, @function
esp_ota_get_app_elf_sha256:
.LFB3:
	.loc 1 76 0
.LVL0:
	entry	sp, 32
.LCFI1:
	.loc 1 77 0
	addi.n	a3, a3, -1
.LVL1:
	movi.n	a9, 0x3f
	movi.n	a8, 0x20
	bltu	a9, a3, .L3
	.loc 1 77 0 is_stmt 0 discriminator 1
	srli	a8, a3, 1
.L3:
.LVL2:
	slli	a8, a8, 1
.LVL3:
	l32r	a10, .LC3
	add.n	a11, a2, a8
.LBB7:
.LBB8:
.LBB9:
	.loc 1 72 0 is_stmt 1 discriminator 4
	movi.n	a12, 9
.LBE9:
.LBE8:
	.loc 1 79 0 discriminator 4
	j	.L4
.LVL4:
.L9:
	.loc 1 80 0 discriminator 3
	l8ui	a9, a10, 144
	srli	a9, a9, 4
.LVL5:
.LBB11:
.LBB10:
	.loc 1 72 0 discriminator 3
	addi	a13, a9, 87
	bltu	a12, a9, .L6
	.loc 1 72 0 is_stmt 0
	addi	a13, a9, 48
.L6:
.LBE10:
.LBE11:
	.loc 1 80 0 is_stmt 1
	s8i	a13, a2, 0
	l8ui	a9, a10, 144
.LVL6:
	extui	a9, a9, 0, 4
.LVL7:
.LBB12:
.LBB13:
	.loc 1 72 0
	addi	a13, a9, 87
	bltu	a12, a9, .L8
	addi	a13, a9, 48
.L8:
.LBE13:
.LBE12:
	.loc 1 81 0
	s8i	a13, a2, 1
.LVL8:
	addi.n	a10, a10, 1
.LVL9:
	addi.n	a2, a2, 2
.LVL10:
.L4:
	.loc 1 79 0 discriminator 1
	bne	a11, a2, .L9
.LBE7:
	.loc 1 83 0
	movi.n	a2, 0
	s8i	a2, a11, 0
	.loc 1 85 0
	addi.n	a2, a8, 1
	retw.n
.LFE3:
	.size	esp_ota_get_app_elf_sha256, .-esp_ota_get_app_elf_sha256
	.global	esp_app_desc
	.section	.rodata_desc,"a",@progbits
	.align	4
	.type	esp_app_desc, @object
	.size	esp_app_desc, 256
esp_app_desc:
	.word	-1412606926
	.word	0
	.zero	8
	.string	"c435ef2-dirty"
	.zero	18
	.string	"dev_M5Stack"
	.zero	20
	.string	"18:59:37"
	.zero	7
	.string	"Jun  9 2020"
	.zero	4
	.string	"v3.3.2-dirty"
	.zero	19
	.zero	112
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x293
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x6
	.2byte	0x100
	.byte	0x5
	.byte	0x6f
	.4byte	0x13f
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x70
	.4byte	0xab
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x71
	.4byte	0xab
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x72
	.4byte	0x13f
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x73
	.4byte	0x14f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x74
	.4byte	0x14f
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x75
	.4byte	0x15f
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.byte	0x76
	.4byte	0x15f
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x77
	.4byte	0x14f
	.byte	0x70
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0x78
	.4byte	0x16f
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x79
	.4byte	0x17f
	.byte	0xb0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x14f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x99
	.4byte	0x15f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x99
	.4byte	0x16f
	.uleb128 0x9
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x17f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x18f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x7a
	.4byte	0xbd
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3d
	.4byte	0x1af
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0xb
	.4byte	0x18f
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x46
	.4byte	0x99
	.byte	0x3
	.4byte	0x1d6
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x46
	.4byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4b
	.4byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0xf
	.string	"dst"
	.byte	0x1
	.byte	0x4b
	.4byte	0x93
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.4byte	0x27a
	.uleb128 0x6
	.byte	0x3
	.4byte	esp_app_desc+144
	.byte	0x9f
	.uleb128 0x13
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	0x1ba
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x50
	.4byte	0x25f
	.uleb128 0x15
	.4byte	0x1ca
	.4byte	.LLST4
	.byte	0
	.uleb128 0x16
	.4byte	0x1ba
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.4byte	0x1ca
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x280
	.uleb128 0xb
	.4byte	0xa0
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x16
	.4byte	0x1b5
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_app_desc
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	esp_app_desc
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	esp_app_desc-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	esp_app_desc
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF31:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/app_update"
.LASF34:
	.string	"esp_ota_get_app_elf_sha256"
.LASF21:
	.string	"project_name"
.LASF33:
	.string	"to_hex_digit"
.LASF24:
	.string	"idf_ver"
.LASF25:
	.string	"app_elf_sha256"
.LASF29:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"date"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"version"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF35:
	.string	"esp_app_desc"
.LASF27:
	.string	"esp_app_desc_t"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"time"
.LASF18:
	.string	"secure_version"
.LASF11:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF32:
	.string	"esp_ota_get_app_description"
.LASF19:
	.string	"reserv1"
.LASF26:
	.string	"reserv2"
.LASF6:
	.string	"short int"
.LASF17:
	.string	"magic_word"
.LASF15:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF30:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/app_update/esp_app_desc.c"
.LASF28:
	.string	"size"
.LASF16:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
