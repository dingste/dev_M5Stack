	.file	"esp_ping.c"
	.text
.Ltext0:
	.section	.text.esp_ping_set_target,"ax",@progbits
	.literal_position
	.literal .LC0, 24577
	.literal .LC1, .L4
	.literal .LC2, ping_option_info
	.literal .LC3, ping_option_info+28
	.align	4
	.global	esp_ping_set_target
	.type	esp_ping_set_target, @function
esp_ping_set_target:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/apps/ping/esp_ping.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 39 0
	beqz.n	a3, .L2
	.loc 1 43 0
	addi	a2, a2, -50
.LVL2:
	movi.n	a9, 8
	bltu	a9, a2, .L2
	l32r	a8, .LC1
	addx4	a2, a2, a8
.LVL3:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.esp_ping_set_target,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.section	.text.esp_ping_set_target
.L3:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 45 0
	bltui	a4, 4, .L2
	.loc 1 46 0
	l32i.n	a3, a3, 0
.LVL4:
	l32r	a2, .LC2
	s32i.n	a3, a2, 0
	j	.L24
.LVL5:
.L5:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 49 0
	bltui	a4, 4, .L2
	.loc 1 50 0
	l32i.n	a3, a3, 0
.LVL6:
	l32r	a2, .LC2
	s32i.n	a3, a2, 4
	j	.L24
.LVL7:
.L6:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 53 0
	bltui	a4, 4, .L2
	.loc 1 54 0
	l32i.n	a3, a3, 0
.LVL8:
	l32r	a2, .LC2
	s32i.n	a3, a2, 8
	j	.L24
.LVL9:
.L7:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 57 0
	bltui	a4, 4, .L2
	.loc 1 58 0
	l32i.n	a3, a3, 0
.LVL10:
	l32r	a2, .LC2
	s32i.n	a3, a2, 12
	j	.L24
.LVL11:
.L11:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 61 0
	bltui	a4, 4, .L2
	.loc 1 62 0
	l32i.n	a3, a3, 0
.LVL12:
	l32r	a2, .LC2
	s32i.n	a3, a2, 16
	j	.L24
.LVL13:
.L8:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 65 0
	bltui	a4, 2, .L2
	.loc 1 66 0
	l16ui	a3, a3, 0
.LVL14:
	l32r	a2, .LC2
	s16i	a3, a2, 20
	j	.L24
.LVL15:
.L12:
	.loc 1 40 0
	l32r	a8, .LC0
	.loc 1 69 0
	beqz.n	a4, .L2
	.loc 1 70 0
	l8ui	a3, a3, 0
.LVL16:
	l32r	a2, .LC2
	s8i	a3, a2, 22
	j	.L24
.LVL17:
.L9:
	.loc 1 73 0
	l32r	a2, .LC2
	s32i.n	a3, a2, 24
	j	.L24
.L10:
	.loc 1 76 0
	l32r	a10, .LC3
	movi.n	a12, 0x2c
	movi.n	a11, 0
	call8	memset
.LVL18:
.L24:
	.loc 1 37 0
	movi.n	a8, 0
.L2:
	.loc 1 84 0
	mov.n	a2, a8
	retw.n
.LFE18:
	.size	esp_ping_set_target, .-esp_ping_set_target
	.section	.text.esp_ping_get_target,"ax",@progbits
	.literal_position
	.literal .LC4, 24577
	.literal .LC5, .L28
	.literal .LC6, ping_option_info
	.align	4
	.global	esp_ping_get_target
	.type	esp_ping_get_target, @function
esp_ping_get_target:
.LFB19:
	.loc 1 87 0
.LVL19:
	entry	sp, 32
.LCFI1:
.LVL20:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 90 0
	beqz.n	a3, .L26
	.loc 1 94 0
	addi	a2, a2, -50
.LVL21:
	movi.n	a8, 8
	bltu	a8, a2, .L36
	l32r	a8, .LC5
	addx4	a2, a2, a8
.LVL22:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.esp_ping_get_target,"a",@progbits
	.align	4
	.align	4
.L28:
	.word	.L27
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L36
	.word	.L36
	.word	.L33
	.word	.L34
	.section	.text.esp_ping_get_target
.L27:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 96 0
	bltui	a4, 4, .L26
	.loc 1 97 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
	j	.L45
.L29:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 100 0
	bltui	a4, 4, .L26
	.loc 1 101 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 4
	j	.L45
.L30:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 104 0
	bltui	a4, 4, .L26
	.loc 1 105 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 8
.L45:
	s32i.n	a2, a3, 0
.L46:
	.loc 1 88 0
	movi.n	a8, 0
	.loc 1 106 0
	j	.L26
.L31:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 108 0
	bltui	a4, 4, .L26
	.loc 1 109 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 12
	j	.L45
.L33:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 112 0
	bltui	a4, 4, .L26
	.loc 1 113 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 16
	j	.L45
.L32:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 116 0
	bltui	a4, 2, .L26
	.loc 1 117 0
	l32r	a2, .LC6
	l16ui	a2, a2, 20
	j	.L47
.L34:
	.loc 1 91 0
	l32r	a8, .LC4
	.loc 1 120 0
	bltui	a4, 2, .L26
	.loc 1 121 0
	l32r	a2, .LC6
	l8ui	a2, a2, 22
.L47:
	s16i	a2, a3, 0
	j	.L46
.L36:
	.loc 1 124 0
	l32r	a8, .LC4
.L26:
	.loc 1 129 0
	mov.n	a2, a8
	retw.n
.LFE19:
	.size	esp_ping_get_target, .-esp_ping_get_target
	.section	.text.esp_ping_result,"ax",@progbits
	.literal_position
	.literal .LC7, ping_option_info
	.literal .LC8, ping_option_info+28
	.align	4
	.global	esp_ping_result
	.type	esp_ping_result, @function
esp_ping_result:
.LFB20:
	.loc 1 132 0
.LVL23:
	entry	sp, 32
.LCFI2:
.LVL24:
	.loc 1 135 0
	l32r	a8, .LC7
	.loc 1 132 0
	extui	a2, a2, 0, 8
	.loc 1 135 0
	s8i	a2, a8, 68
	.loc 1 132 0
	extui	a3, a3, 0, 16
	.loc 1 137 0
	beqi	a2, 2, .L49
	.loc 1 140 0
	l32i.n	a9, a8, 52
	.loc 1 138 0
	s32i.n	a3, a8, 48
	.loc 1 140 0
	add.n	a3, a9, a3
.LVL25:
	s32i.n	a3, a8, 52
	.loc 1 141 0
	l32i.n	a3, a8, 36
	.loc 1 139 0
	s32i.n	a4, a8, 28
	.loc 1 141 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 36
	.loc 1 143 0
	bnez.n	a2, .L50
	.loc 1 144 0
	l32i.n	a3, a8, 32
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 32
	j	.L49
.L50:
	.loc 1 146 0
	l32i.n	a3, a8, 60
	beqz.n	a3, .L58
	bgeu	a4, a3, .L51
.L58:
	.loc 1 147 0
	s32i.n	a4, a8, 60
.L51:
	.loc 1 150 0
	l32i	a3, a8, 64
	bgeu	a3, a4, .L54
	.loc 1 151 0
	s32i	a4, a8, 64
.L54:
	.loc 1 155 0
	l32i.n	a3, a8, 56
	add.n	a4, a3, a4
.LVL26:
	.loc 1 156 0
	l32i.n	a3, a8, 40
	.loc 1 155 0
	s32i.n	a4, a8, 56
	.loc 1 156 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 40
.LVL27:
.L49:
	.loc 1 160 0
	l32i.n	a4, a8, 24
	beqz.n	a4, .L56
	.loc 1 161 0
	l32r	a3, .LC8
	movi.n	a10, 0x37
	mov.n	a11, a3
	callx8	a4
.LVL28:
	.loc 1 162 0
	bnei	a2, 2, .L56
	.loc 1 163 0
	movi.n	a12, 0x2c
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL29:
.L56:
	.loc 1 168 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LFE20:
	.size	esp_ping_result, .-esp_ping_result
	.section	.bss.ping_option_info,"aw",@nobits
	.align	4
	.type	ping_option_info, @object
	.size	ping_option_info, 76
ping_option_info:
	.zero	76
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/include/apps/esp_ping.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x456
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF2
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
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xde
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x2c
	.byte	0x6
	.byte	0x22
	.4byte	0x190
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.4byte	0xe9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x24
	.4byte	0xe9
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x6
	.byte	0x25
	.4byte	0xe9
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x26
	.4byte	0xe9
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x6
	.byte	0x27
	.4byte	0xe9
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0x28
	.4byte	0xe9
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x6
	.byte	0x29
	.4byte	0xe9
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2a
	.4byte	0xe9
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2b
	.4byte	0xe9
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2c
	.4byte	0xe9
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2d
	.4byte	0xbd
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2e
	.4byte	0xff
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x30
	.4byte	0x1de
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x33
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x36
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x37
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x39
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x3a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3a
	.4byte	0x19b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x3c
	.4byte	0x208
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0x42
	.4byte	0x213
	.uleb128 0xa
	.byte	0x4
	.4byte	0x219
	.uleb128 0xb
	.4byte	0x229
	.uleb128 0xc
	.4byte	0x1de
	.uleb128 0xc
	.4byte	0x229
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x190
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF49
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x24f
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x7
	.byte	0x34
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x39
	.4byte	0x236
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x4c
	.byte	0x1
	.byte	0x14
	.4byte	0x2df
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x1
	.byte	0x15
	.4byte	0x24f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x1
	.byte	0x16
	.4byte	0xe9
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1
	.byte	0x17
	.4byte	0xe9
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1
	.byte	0x18
	.4byte	0xe9
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x1
	.byte	0x19
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1a
	.4byte	0xd3
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1b
	.4byte	0xc8
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1c
	.4byte	0x208
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1d
	.4byte	0x190
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1e
	.4byte	0xad
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1f
	.4byte	0x25a
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0x23
	.4byte	0xf4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x23
	.4byte	0x1de
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x23
	.4byte	0xad
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.byte	0x23
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x25
	.4byte	0xf4
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x450
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_option_info+28
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x56
	.4byte	0xf4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a8
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x56
	.4byte	0x1de
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x56
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.byte	0x56
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x58
	.4byte	0xf4
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x83
	.4byte	0xf4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42f
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0x83
	.4byte	0xc8
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x83
	.4byte	0xd3
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x1
	.byte	0x83
	.4byte	0xe9
	.4byte	.LLST5
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x85
	.4byte	0xf4
	.byte	0
	.uleb128 0x13
	.4byte	.LVL28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x413
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x37
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL29
	.4byte	0x450
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x2df
	.4byte	0x43f
	.uleb128 0x15
	.4byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x21
	.4byte	0x42f
	.uleb128 0x5
	.byte	0x3
	.4byte	ping_option_info
	.uleb128 0x17
	.4byte	.LASF79
	.4byte	.LASF79
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x72
	.sleb128 50
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x72
	.sleb128 50
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x78
	.sleb128 48
	.4byte	.LVL27
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x5
	.byte	0x3
	.4byte	ping_option_info+28
	.4byte	.LVL27
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"ping_data_len"
.LASF38:
	.string	"PING_TARGET_DELAY_TIME"
.LASF45:
	.string	"PING_RES_TIMEOUT"
.LASF73:
	.string	"ping_len"
.LASF17:
	.string	"int8_t"
.LASF31:
	.string	"min_time"
.LASF40:
	.string	"PING_TARGET_RES_FN"
.LASF78:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF2:
	.string	"size_t"
.LASF14:
	.string	"sizetype"
.LASF75:
	.string	"ping_option_info"
.LASF69:
	.string	"esp_ping_set_target"
.LASF58:
	.string	"ping_delay"
.LASF10:
	.string	"__uint32_t"
.LASF8:
	.string	"__uint16_t"
.LASF7:
	.string	"short int"
.LASF35:
	.string	"PING_TARGET_IP_ADDRESS"
.LASF18:
	.string	"uint8_t"
.LASF46:
	.string	"PING_RES_OK"
.LASF60:
	.string	"ping_id"
.LASF54:
	.string	"_ping_option"
.LASF26:
	.string	"recv_count"
.LASF33:
	.string	"ping_err"
.LASF11:
	.string	"long long int"
.LASF77:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/apps/ping/esp_ping.c"
.LASF9:
	.string	"__int32_t"
.LASF63:
	.string	"ping_res"
.LASF71:
	.string	"esp_ping_result"
.LASF13:
	.string	"long int"
.LASF64:
	.string	"ping_reserve"
.LASF52:
	.string	"addr"
.LASF20:
	.string	"int32_t"
.LASF5:
	.string	"__uint8_t"
.LASF48:
	.string	"esp_ping_found_fn"
.LASF74:
	.string	"ping_time"
.LASF67:
	.string	"opt_val"
.LASF6:
	.string	"unsigned char"
.LASF39:
	.string	"PING_TARGET_ID"
.LASF62:
	.string	"ping_res_fn"
.LASF61:
	.string	"ping_tos"
.LASF50:
	.string	"_ping_found"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"total_time"
.LASF12:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"uint16_t"
.LASF1:
	.string	"short unsigned int"
.LASF36:
	.string	"PING_TARGET_IP_ADDRESS_COUNT"
.LASF3:
	.string	"__int8_t"
.LASF16:
	.string	"char"
.LASF55:
	.string	"ping_target"
.LASF32:
	.string	"max_time"
.LASF68:
	.string	"opt_len"
.LASF49:
	.string	"_Bool"
.LASF29:
	.string	"total_bytes"
.LASF51:
	.string	"ip4_addr"
.LASF44:
	.string	"ping_target_id_t"
.LASF25:
	.string	"send_count"
.LASF15:
	.string	"long unsigned int"
.LASF28:
	.string	"bytes"
.LASF34:
	.string	"esp_ping_found"
.LASF23:
	.string	"resp_time"
.LASF57:
	.string	"ping_rcv_timeout"
.LASF53:
	.string	"ip4_addr_t"
.LASF72:
	.string	"res_val"
.LASF56:
	.string	"ping_count"
.LASF43:
	.string	"PING_TARGET_IP_TOS"
.LASF70:
	.string	"esp_ping_get_target"
.LASF42:
	.string	"PING_TARGET_DATA_LEN"
.LASF66:
	.string	"opt_id"
.LASF79:
	.string	"memset"
.LASF41:
	.string	"PING_TARGET_RES_RESET"
.LASF65:
	.string	"ping_option"
.LASF27:
	.string	"err_count"
.LASF37:
	.string	"PING_TARGET_RCV_TIMEO"
.LASF47:
	.string	"PING_RES_FINISH"
.LASF76:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"timeout_count"
.LASF22:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
