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
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_app_desc.c"
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
	.literal .LC3, first_call$3285
	.literal .LC4, esp_app_desc
	.literal .LC5, s_app_elf_sha256$3284
	.align	4
	.global	esp_ota_get_app_elf_sha256
	.type	esp_ota_get_app_elf_sha256, @function
esp_ota_get_app_elf_sha256:
.LFB4:
	.loc 1 87 0
.LVL0:
	entry	sp, 32
.LCFI1:
	.loc 1 90 0
	l32r	a8, .LC3
	l8ui	a9, a8, 0
	bnez.n	a9, .L3
.L7:
	.loc 1 97 0
	movi.n	a10, 1
	movi.n	a9, 0
	moveqz	a9, a10, a2
	extui	a8, a9, 0, 8
	bnez.n	a8, .L15
	moveqz	a8, a10, a3
	beqz.n	a8, .L18
	j	.L15
.L3:
.LBB16:
	.loc 1 91 0
	movi.n	a9, 0
	s8i	a9, a8, 0
.LVL1:
.LBB17:
	.loc 1 94 0
	l32r	a13, .LC5
	l32r	a9, .LC4
	.loc 1 93 0
	movi.n	a10, 0
	.loc 1 94 0
	movi.n	a8, 8
	loop	a8, .L6_LEND
.LVL2:
.L6:
	.loc 1 94 0 is_stmt 0 discriminator 3
	l8ui	a12, a9, 144
	add.n	a11, a10, a13
	s8i	a12, a11, 0
	.loc 1 93 0 is_stmt 1 discriminator 3
	addi.n	a10, a10, 1
.LVL3:
	addi.n	a9, a9, 1
	.L6_LEND:
	j	.L7
.LVL4:
.L18:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	.loc 1 100 0
	addi.n	a3, a3, -1
.LVL5:
	movi.n	a9, 0xf
	movi.n	a8, 8
	bltu	a9, a3, .L8
	srli	a8, a3, 1
.LVL6:
.L8:
	slli	a8, a8, 1
.LVL7:
	l32r	a3, .LC5
	add.n	a11, a2, a8
.LBB20:
.LBB21:
.LBB22:
	.loc 1 72 0
	movi.n	a12, 9
	j	.L9
.LVL8:
.L14:
.LBE22:
.LBE21:
	.loc 1 102 0
	l8ui	a9, a3, 0
	srli	a10, a9, 4
.LVL9:
.LBB24:
.LBB23:
	.loc 1 72 0
	addi	a13, a10, 87
	bltu	a12, a10, .L11
	addi	a13, a10, 48
.L11:
	extui	a9, a9, 0, 4
.LVL10:
.LBE23:
.LBE24:
	.loc 1 102 0
	s8i	a13, a2, 0
.LBB25:
.LBB26:
	.loc 1 72 0
	addi	a10, a9, 87
.LVL11:
	bltu	a12, a9, .L13
	addi	a10, a9, 48
.L13:
.LBE26:
.LBE25:
	.loc 1 103 0
	s8i	a10, a2, 1
.LVL12:
	addi.n	a3, a3, 1
.LVL13:
	addi.n	a2, a2, 2
.LVL14:
.L9:
	.loc 1 101 0
	bne	a11, a2, .L14
.LBE20:
	.loc 1 105 0
	movi.n	a2, 0
	s8i	a2, a11, 0
	.loc 1 106 0
	addi.n	a2, a8, 1
	retw.n
.LVL15:
.L15:
.LBE19:
.LBE18:
	.loc 1 98 0
	movi.n	a2, 0
.LVL16:
	.loc 1 107 0
	retw.n
.LFE4:
	.size	esp_ota_get_app_elf_sha256, .-esp_ota_get_app_elf_sha256
	.section	.text.startup.esp_ota_init_app_elf_sha256,"ax",@progbits
	.align	4
	.global	esp_ota_init_app_elf_sha256
	.type	esp_ota_init_app_elf_sha256, @function
esp_ota_init_app_elf_sha256:
.LFB3:
	.loc 1 76 0
	entry	sp, 32
.LCFI2:
	.loc 1 77 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	esp_ota_get_app_elf_sha256
.LVL17:
	retw.n
.LFE3:
	.size	esp_ota_init_app_elf_sha256, .-esp_ota_init_app_elf_sha256
	.section	.ctors,"aw",@progbits
	.align	4
	.word	esp_ota_init_app_elf_sha256
	.section	.bss.s_app_elf_sha256$3284,"aw",@nobits
	.type	s_app_elf_sha256$3284, @object
	.size	s_app_elf_sha256$3284, 8
s_app_elf_sha256$3284:
	.zero	8
	.section	.data.first_call$3285,"aw",@progbits
	.type	first_call$3285, @object
	.size	first_call$3285, 1
first_call$3285:
	.byte	1
	.global	esp_app_desc
	.section	.rodata_desc,"a",@progbits
	.align	4
	.type	esp_app_desc, @object
	.size	esp_app_desc, 256
esp_app_desc:
	.word	-1412606926
	.word	0
	.zero	8
	.string	"383c25b-dirty"
	.zero	18
	.string	"dev_M5Stack"
	.zero	20
	.string	"17:29:04"
	.zero	7
	.string	"Sep  5 2020"
	.zero	4
	.string	"v3.3.2-270-gf4333c8e3"
	.zero	10
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x38f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.uleb128 0x6
	.4byte	0x99
	.4byte	0xb0
	.uleb128 0x7
	.4byte	0x85
	.byte	0x7
	.byte	0
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
	.uleb128 0x8
	.2byte	0x100
	.byte	0x5
	.byte	0x6f
	.4byte	0x14f
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x70
	.4byte	0xbb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x71
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x72
	.4byte	0x14f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x73
	.4byte	0x15f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x74
	.4byte	0x15f
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x75
	.4byte	0x16f
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x76
	.4byte	0x16f
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x77
	.4byte	0x15f
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x78
	.4byte	0x17f
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x79
	.4byte	0x18f
	.byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x15f
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x99
	.4byte	0x16f
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0x99
	.4byte	0x17f
	.uleb128 0x7
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xb0
	.4byte	0x18f
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x19f
	.uleb128 0x7
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x7a
	.4byte	0xcd
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x56
	.4byte	0x3e
	.byte	0x1
	.4byte	0x217
	.uleb128 0xb
	.string	"dst"
	.byte	0x1
	.byte	0x56
	.4byte	0x93
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x56
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x58
	.4byte	0xa0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x59
	.4byte	0xc6
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x64
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x20b
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.byte	0x5c
	.4byte	0x217
	.uleb128 0x10
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21d
	.uleb128 0x11
	.4byte	0xb0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3d
	.4byte	0x237
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23d
	.uleb128 0x11
	.4byte	0x19f
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x46
	.4byte	0x99
	.byte	0x3
	.4byte	0x25e
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.byte	0x46
	.4byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	0x1aa
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x357
	.uleb128 0x15
	.4byte	0x1ba
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	0x1c5
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	0x1d0
	.uleb128 0x5
	.byte	0x3
	.4byte	s_app_elf_sha256$3284
	.uleb128 0x16
	.4byte	0x1db
	.uleb128 0x5
	.byte	0x3
	.4byte	first_call$3285
	.uleb128 0x17
	.4byte	0x1e6
	.uleb128 0x18
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x2c8
	.uleb128 0x19
	.4byte	0x1f4
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x19
	.4byte	0x200
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x15
	.4byte	0x1c5
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	0x1ba
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x19
	.4byte	0x1e6
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	0x1d0
	.uleb128 0x5
	.byte	0x3
	.4byte	s_app_elf_sha256$3284
	.uleb128 0x16
	.4byte	0x1db
	.uleb128 0x5
	.byte	0x3
	.4byte	first_call$3285
	.uleb128 0x1a
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x19
	.4byte	0x20c
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x242
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.4byte	0x33a
	.uleb128 0x15
	.4byte	0x252
	.4byte	.LLST8
	.byte	0
	.uleb128 0x1c
	.4byte	0x242
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x67
	.uleb128 0x15
	.4byte	0x252
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x381
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x1aa
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF38
	.byte	0x1
	.byte	0x16
	.4byte	0x23d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x3
	.4byte	esp_app_desc+144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	s_app_elf_sha256$3284
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	s_app_elf_sha256$3284-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	s_app_elf_sha256$3284
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL14
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
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB4
	.4byte	.LFE4
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
.LASF33:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/app_update"
.LASF34:
	.string	"esp_ota_get_app_elf_sha256"
.LASF21:
	.string	"project_name"
.LASF36:
	.string	"to_hex_digit"
.LASF24:
	.string	"idf_ver"
.LASF25:
	.string	"app_elf_sha256"
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/esp_app_desc.c"
.LASF31:
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
.LASF29:
	.string	"s_app_elf_sha256"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF38:
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
.LASF35:
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
.LASF37:
	.string	"esp_ota_init_app_elf_sha256"
.LASF30:
	.string	"first_call"
.LASF28:
	.string	"size"
.LASF16:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
