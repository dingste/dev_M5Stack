	.file	"cache_sram_mmu.c"
	.text
.Ltext0:
	.section	.iram1.3,"ax",@progbits
	.literal_position
	.literal .LC0, 65535
	.literal .LC1, 1065353215
	.literal .LC2, 1065353216
	.literal .LC3, 4194303
	.literal .LC4, 1072766976
	.literal .LC5, 1072758784
	.literal .LC6, 1072693316
	.literal .LC7, 1072693340
	.align	4
	.global	cache_sram_mmu_set
	.type	cache_sram_mmu_set, @function
cache_sram_mmu_set:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cache_sram_mmu.c"
	.loc 1 62 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 63 0
	s32i.n	a5, sp, 8
	s32i.n	a7, sp, 12
	call8	spi_flash_guard_get
.LVL1:
	.loc 1 62 0
	.loc 1 64 0
	l32i.n	a13, sp, 8
	l32i.n	a15, sp, 12
	bnez.n	a10, .L2
	.loc 1 66 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL2:
	call8	cache_sram_mmu_set_rom
.LVL3:
	mov.n	a5, a10
.LVL4:
	j	.L3
.LVL5:
.L2:
	movi.n	a5, 0x40
.LVL6:
	l32r	a7, .LC0
.LVL7:
	quos	a5, a5, a6
	addi.n	a5, a5, -1
	ssr	a5
	sra	a5, a7
	or	a7, a4, a13
	and	a5, a5, a7
	.loc 1 73 0
	bnez.n	a5, .L11
	.loc 1 77 0
	beqi	a6, 32, .L12
	.loc 1 80 0
	beqi	a6, 16, .L13
	.loc 1 83 0
	beqi	a6, 8, .L14
	.loc 1 86 0
	beqi	a6, 4, .L15
	.loc 1 89 0
	bnei	a6, 2, .L16
	.loc 1 91 0
	movi.n	a7, 4
	.loc 1 90 0
	movi.n	a8, 0xb
	j	.L4
.L12:
	.loc 1 79 0
	mov.n	a7, a5
	.loc 1 78 0
	movi.n	a8, 0xf
	j	.L4
.L13:
	.loc 1 82 0
	movi.n	a7, 1
	.loc 1 81 0
	movi.n	a8, 0xe
	j	.L4
.L14:
	.loc 1 85 0
	movi.n	a7, 2
	.loc 1 84 0
	movi.n	a8, 0xd
	j	.L4
.L15:
	.loc 1 88 0
	movi.n	a7, 3
	.loc 1 87 0
	movi.n	a8, 0xc
.L4:
.LVL8:
	l32r	a9, .LC1
	.loc 1 98 0
	bgeui	a3, 2, .L5
	.loc 1 99 0
	bgeu	a9, a4, .L20
	.loc 1 99 0 is_stmt 0 discriminator 1
	l32r	a3, .LC2
.LVL9:
	slli	a6, a6, 17
.LVL10:
	add.n	a6, a6, a3
	bgeu	a4, a6, .L20
	.loc 1 100 0 is_stmt 1
	l32r	a3, .LC3
	ssr	a7
	sra	a3, a3
	and	a4, a3, a4
.LVL11:
	ssr	a8
	srl	a4, a4
	movi	a3, 0x480
	j	.L21
.LVL12:
.L5:
	.loc 1 105 0
	bgeu	a9, a4, .L20
	.loc 1 105 0 is_stmt 0 discriminator 1
	l32r	a9, .LC2
	slli	a6, a6, 17
.LVL13:
	add.n	a6, a6, a9
	bgeu	a4, a6, .L20
	.loc 1 106 0 is_stmt 1
	l32r	a12, .LC3
	slli	a3, a3, 7
.LVL14:
	ssr	a7
	sra	a12, a12
	and	a4, a12, a4
.LVL15:
	ssr	a8
	srl	a4, a4
	addmi	a3, a3, 0x400
.L21:
	add.n	a3, a4, a3
.LVL16:
	.loc 1 114 0
	l32i.n	a4, a10, 0
	s32i.n	a8, sp, 0
	s32i.n	a10, sp, 4
	s32i.n	a13, sp, 8
	s32i.n	a15, sp, 12
	callx8	a4
.LVL17:
	.loc 1 96 0
	l32i.n	a8, sp, 0
	l32r	a4, .LC4
	l32r	a6, .LC5
	l32i.n	a13, sp, 8
	movnez	a6, a4, a2
	ssr	a8
	srl	a13, a13
	.loc 1 117 0
	movi.n	a4, 0
	l32i.n	a10, sp, 4
	l32i.n	a15, sp, 12
	j	.L7
.LVL18:
.L8:
	add.n	a8, a4, a3
	.loc 1 118 0 discriminator 4
	add.n	a9, a4, a13
	addx4	a8, a8, a6
	memw
	s32i.n	a9, a8, 0
.LVL19:
	.loc 1 117 0 discriminator 4
	addi.n	a4, a4, 1
.LVL20:
.L7:
	.loc 1 117 0 is_stmt 0 discriminator 2
	bne	a4, a15, .L8
	movi	a3, -0x1c1
	slli	a7, a7, 6
.LVL21:
	.loc 1 122 0 is_stmt 1
	bnez.n	a2, .L9
.LVL22:
.LBB6:
.LBB7:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 77 0
	l32r	a2, .LC6
.LVL23:
	j	.L22
.LVL24:
.L9:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	l32r	a2, .LC7
.LVL25:
.L22:
	memw
	l32i.n	a4, a2, 0
.LVL26:
.LBE9:
.LBE8:
	.loc 1 125 0
	and	a3, a4, a3
	or	a7, a3, a7
	memw
	s32i.n	a7, a2, 0
	.loc 1 128 0
	l32i.n	a2, a10, 4
	callx8	a2
.LVL27:
	.loc 1 130 0
	j	.L3
.LVL28:
.L11:
	.loc 1 74 0
	movi.n	a5, 1
	j	.L3
.L16:
	.loc 1 93 0
	movi.n	a5, 3
	j	.L3
.LVL29:
.L20:
	.loc 1 102 0
	movi.n	a5, 5
.LVL30:
.L3:
	.loc 1 131 0
	mov.n	a2, a5
	retw.n
.LFE3:
	.size	cache_sram_mmu_set, .-cache_sram_mmu_set
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x53
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
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x5
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x12f
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x133
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x137
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x13b
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x13f
	.4byte	0xdd
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x8
	.4byte	0xf7
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x73
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.2byte	0x160
	.4byte	0x149
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x161
	.4byte	0xa1
	.byte	0
	.uleb128 0xc
	.string	"end"
	.byte	0x6
	.2byte	0x162
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x163
	.4byte	0xb9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x164
	.4byte	0xc5
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x166
	.4byte	0xd1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x168
	.4byte	0xfe
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x2
	.byte	0x4a
	.4byte	0x68
	.byte	0x3
	.4byte	0x171
	.uleb128 0xe
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0x11
	.string	"pid"
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x11
	.string	"num"
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3f
	.4byte	0x2b6
	.4byte	.LLST6
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x46
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x47
	.4byte	0x53
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	0x155
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x7b
	.4byte	0x259
	.uleb128 0x15
	.4byte	0x165
	.4byte	.LLST12
	.byte	0
	.uleb128 0x14
	.4byte	0x155
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x7d
	.4byte	0x276
	.uleb128 0x15
	.4byte	0x165
	.4byte	.LLST13
	.byte	0
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x2c1
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x2cd
	.4byte	0x2a5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.4byte	.LVL27
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x1a
	.4byte	0x149
	.uleb128 0x1b
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x17a
	.uleb128 0x1c
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x1
	.byte	0x32
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL13
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL17-1
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"op_lock"
.LASF40:
	.string	"cache_sram_mmu_set"
.LASF23:
	.string	"is_safe_write_address"
.LASF30:
	.string	"shift"
.LASF9:
	.string	"size_t"
.LASF15:
	.string	"spi_flash_guard_end_func_t"
.LASF27:
	.string	"paddr"
.LASF20:
	.string	"start"
.LASF24:
	.string	"spi_flash_guard_funcs_t"
.LASF28:
	.string	"psize"
.LASF22:
	.string	"op_unlock"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"guard"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"spi_flash_guard_get"
.LASF25:
	.string	"cpu_no"
.LASF26:
	.string	"vaddr"
.LASF7:
	.string	"__uint32_t"
.LASF18:
	.string	"spi_flash_is_safe_write_address_t"
.LASF4:
	.string	"unsigned int"
.LASF32:
	.string	"mmu_addr"
.LASF6:
	.string	"long long unsigned int"
.LASF38:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF33:
	.string	"mmu_table_val"
.LASF17:
	.string	"spi_flash_op_unlock_func_t"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"spi_flash_op_lock_func_t"
.LASF13:
	.string	"char"
.LASF35:
	.string	"cache_sram_mmu_set_rom"
.LASF31:
	.string	"mask_s"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cache_sram_mmu.c"
.LASF8:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF39:
	.string	"DPORT_REG_READ"
.LASF14:
	.string	"spi_flash_guard_start_func_t"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
