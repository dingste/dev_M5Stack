	.file	"u8x8_u16toa.c"
	.text
.Ltext0:
	.section	.text.u8x8_u16toap,"ax",@progbits
	.literal_position
	.literal .LC0, 10000
	.literal .LC1, -858993459
	.align	4
	.global	u8x8_u16toap
	.type	u8x8_u16toap, @function
u8x8_u16toap:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_u16toa.c"
	.loc 1 41 1 view -0
	.loc 1 41 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 42 3 is_stmt 1 view .LVU2
	.loc 1 43 3 view .LVU3
	.loc 1 44 3 view .LVU4
	.loc 1 45 3 view .LVU5
.LVL1:
	.loc 1 46 3 view .LVU6
	.loc 1 41 1 is_stmt 0 view .LVU7
	extui	a3, a3, 0, 16
	.loc 1 48 9 view .LVU8
	movi.n	a10, 0
	.loc 1 45 5 view .LVU9
	l32r	a8, .LC0
	.loc 1 48 9 view .LVU10
	movi.n	a11, 0x30
	.loc 1 55 9 view .LVU11
	l32r	a12, .LC1
	j	.L2
.LVL2:
.L3:
	.loc 1 51 2 is_stmt 1 view .LVU12
	.loc 1 51 4 is_stmt 0 view .LVU13
	sub	a3, a3, a8
.LVL3:
	.loc 1 52 3 view .LVU14
	addi.n	a9, a9, 1
.LVL4:
	.loc 1 51 4 view .LVU15
	extui	a3, a3, 0, 16
.LVL5:
	.loc 1 52 2 is_stmt 1 view .LVU16
	.loc 1 52 3 is_stmt 0 view .LVU17
	extui	a9, a9, 0, 8
.LVL6:
.L5:
	.loc 1 49 12 view .LVU18
	bgeu	a3, a8, .L3
	.loc 1 54 7 is_stmt 1 discriminator 2 view .LVU19
	.loc 1 54 17 is_stmt 0 discriminator 2 view .LVU20
	add.n	a13, a2, a10
	.loc 1 55 9 discriminator 2 view .LVU21
	muluh	a8, a8, a12
.LVL7:
	.loc 1 54 17 discriminator 2 view .LVU22
	s8i	a9, a13, 0
	.loc 1 55 7 is_stmt 1 discriminator 2 view .LVU23
	addi.n	a10, a10, 1
.LVL8:
	.loc 1 55 9 is_stmt 0 discriminator 2 view .LVU24
	srli	a8, a8, 3
.LVL9:
	.loc 1 46 3 discriminator 2 view .LVU25
	beqi	a10, 5, .L4
.LVL10:
.L2:
	.loc 1 48 9 view .LVU26
	mov.n	a9, a11
	j	.L5
.LVL11:
.L4:
	.loc 1 57 3 is_stmt 1 view .LVU27
	.loc 1 57 11 is_stmt 0 view .LVU28
	movi.n	a3, 0
.LVL12:
	.loc 1 57 11 view .LVU29
	s8i	a3, a2, 5
	.loc 1 58 3 is_stmt 1 view .LVU30
	.loc 1 59 1 is_stmt 0 view .LVU31
	retw.n
.LFE0:
	.size	u8x8_u16toap, .-u8x8_u16toap
	.section	.text.u8x8_u16toa,"ax",@progbits
	.literal_position
	.literal .LC3, buf$2832
	.align	4
	.global	u8x8_u16toa
	.type	u8x8_u16toa, @function
u8x8_u16toa:
.LVL13:
.LFB1:
	.loc 1 63 1 is_stmt 1 view -0
	.loc 1 63 1 is_stmt 0 view .LVU33
	entry	sp, 32
.LCFI1:
	.loc 1 64 3 is_stmt 1 view .LVU34
	.loc 1 65 3 view .LVU35
	.loc 1 66 10 is_stmt 0 view .LVU36
	extui	a11, a2, 0, 16
	.loc 1 63 1 view .LVU37
	extui	a3, a3, 0, 8
.LVL14:
	.loc 1 66 3 is_stmt 1 view .LVU38
	.loc 1 66 10 is_stmt 0 view .LVU39
	l32r	a10, .LC3
	.loc 1 65 5 view .LVU40
	movi.n	a2, 5
.LVL15:
	.loc 1 65 5 view .LVU41
	sub	a2, a2, a3
	.loc 1 66 10 view .LVU42
	call8	u8x8_u16toap
.LVL16:
	.loc 1 66 31 view .LVU43
	extui	a2, a2, 0, 8
	.loc 1 67 1 view .LVU44
	add.n	a2, a10, a2
	retw.n
.LFE1:
	.size	u8x8_u16toa, .-u8x8_u16toa
	.section	.text.u8x8_utoa,"ax",@progbits
	.align	4
	.global	u8x8_utoa
	.type	u8x8_utoa, @function
u8x8_utoa:
.LVL17:
.LFB2:
	.loc 1 70 1 is_stmt 1 view -0
	.loc 1 70 1 is_stmt 0 view .LVU46
	entry	sp, 32
.LCFI2:
	.loc 1 71 3 is_stmt 1 view .LVU47
	.loc 1 71 19 is_stmt 0 view .LVU48
	movi.n	a11, 5
	extui	a10, a2, 0, 16
	call8	u8x8_u16toa
.LVL18:
	.loc 1 72 3 is_stmt 1 view .LVU49
	.loc 1 72 8 is_stmt 0 view .LVU50
	movi.n	a9, 0x30
	j	.L8
.L9:
	.loc 1 73 5 is_stmt 1 view .LVU51
	.loc 1 73 6 is_stmt 0 view .LVU52
	addi.n	a10, a10, 1
.LVL19:
.L8:
	.loc 1 72 10 view .LVU53
	l8ui	a8, a10, 0
	.loc 1 72 8 view .LVU54
	beq	a8, a9, .L9
	.loc 1 74 3 is_stmt 1 view .LVU55
	.loc 1 74 6 is_stmt 0 view .LVU56
	bnez.n	a8, .L7
	.loc 1 75 5 is_stmt 1 view .LVU57
	.loc 1 75 6 is_stmt 0 view .LVU58
	addi.n	a10, a10, -1
.LVL20:
	.loc 1 76 3 is_stmt 1 view .LVU59
.L7:
	.loc 1 77 1 is_stmt 0 view .LVU60
	mov.n	a2, a10
.LVL21:
	.loc 1 77 1 view .LVU61
	retw.n
.LFE2:
	.size	u8x8_utoa, .-u8x8_utoa
	.section	.bss.buf$2832,"aw",@nobits
	.type	buf$2832, @object
	.size	buf$2832, 6
buf$2832:
	.zero	6
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.4byte	.LASF147
	.4byte	.LASF148
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x6
	.4byte	0x81
	.4byte	0x9d
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x92
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x420
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x421
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x422
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x423
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x424
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x425
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x426
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x427
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x428
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x429
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x42a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x42b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x42c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x42d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x42e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x42f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x430
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x431
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x432
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x433
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x434
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x435
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x436
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x437
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x438
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x439
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x43a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x43b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x43c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x43d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x43e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x43f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x440
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x441
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x442
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x443
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x444
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x445
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x446
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x447
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x448
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x449
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x44a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x44b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x44c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x44e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x44f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x450
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x451
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x452
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x453
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x454
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x455
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x456
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x457
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x458
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x459
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x45a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x45b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x45c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x45d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x45e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x45f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x460
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x461
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x462
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x463
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x464
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x465
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x466
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x467
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x468
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x469
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x46a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x46b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x46c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x46d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x46e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x46f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x470
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x471
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x472
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x473
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x474
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x475
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x476
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x477
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x478
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x479
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x47a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x47b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x47c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x47d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x47e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x47f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x480
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x481
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x482
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x483
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x484
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x485
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x486
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x487
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x488
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x489
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x48a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x48b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x48c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x48d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x48e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x48f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x490
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x491
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x492
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x493
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x494
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x495
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x496
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x497
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x498
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x499
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x49a
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x49b
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x49c
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x49d
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x49e
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x49f
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x4a0
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x1
	.byte	0x45
	.byte	0xd
	.4byte	0x7a1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a1
	.uleb128 0xa
	.string	"v"
	.byte	0x1
	.byte	0x45
	.byte	0x20
	.4byte	0x86
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0x47
	.byte	0xf
	.4byte	0x7a1
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xc
	.4byte	.LVL18
	.4byte	0x7b3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7ae
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
	.uleb128 0x5
	.4byte	0x7a7
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0x7a1
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x822
	.uleb128 0xa
	.string	"v"
	.byte	0x1
	.byte	0x3e
	.byte	0x22
	.4byte	0x86
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.string	"d"
	.byte	0x1
	.byte	0x3e
	.byte	0x2d
	.4byte	0x75
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.byte	0xf
	.4byte	0x822
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2832
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x832
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	buf$2832
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x7a7
	.4byte	0x832
	.uleb128 0x10
	.4byte	0x60
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x7a1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a5
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x1
	.byte	0x28
	.byte	0x21
	.4byte	0x8a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"v"
	.byte	0x1
	.byte	0x28
	.byte	0x30
	.4byte	0x86
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x2a
	.byte	0xb
	.4byte	0x75
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.string	"d"
	.byte	0x1
	.byte	0x2b
	.byte	0xb
	.4byte	0x75
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7a7
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
	.uleb128 0x39
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
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x39
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
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU49
	.uleb128 0
.LLST7:
	.4byte	.LVL18
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x5
	.byte	0x35
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU29
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU7
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 .LVU27
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xa
	.2byte	0x2710
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"u8x8_font_artosserif8_n"
.LASF38:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF65:
	.string	"u8x8_font_artosserif8_u"
.LASF92:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF78:
	.string	"u8x8_font_victoriamedium8_n"
.LASF148:
	.string	"/home/dieter/Development/ProjektEi/build/u8g2"
.LASF3:
	.string	"__uint8_t"
.LASF94:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_n"
.LASF34:
	.string	"u8x8_font_open_iconic_check_1x1"
.LASF141:
	.string	"u8x8_font_px437wyse700b_2x2_n"
.LASF93:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_r"
.LASF140:
	.string	"u8x8_font_px437wyse700b_2x2_r"
.LASF132:
	.string	"u8x8_font_pxplustandynewtv_f"
.LASF76:
	.string	"u8x8_font_victoriabold8_u"
.LASF8:
	.string	"long long unsigned int"
.LASF134:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF114:
	.string	"u8x8_font_inb46_4x8_r"
.LASF133:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF135:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF113:
	.string	"u8x8_font_inb46_4x8_f"
.LASF27:
	.string	"u8x8_font_7x14_1x2_f"
.LASF75:
	.string	"u8x8_font_victoriabold8_n"
.LASF115:
	.string	"u8x8_font_inb46_4x8_n"
.LASF74:
	.string	"u8x8_font_victoriabold8_r"
.LASF29:
	.string	"u8x8_font_7x14_1x2_n"
.LASF55:
	.string	"u8x8_font_open_iconic_thing_8x8"
.LASF28:
	.string	"u8x8_font_7x14_1x2_r"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF72:
	.string	"u8x8_font_torussansbold8_n"
.LASF71:
	.string	"u8x8_font_torussansbold8_r"
.LASF73:
	.string	"u8x8_font_torussansbold8_u"
.LASF77:
	.string	"u8x8_font_victoriamedium8_r"
.LASF79:
	.string	"u8x8_font_victoriamedium8_u"
.LASF144:
	.string	"u8x8_u16toa"
.LASF43:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF61:
	.string	"u8x8_font_artossans8_n"
.LASF83:
	.string	"u8x8_font_courR18_2x3_f"
.LASF60:
	.string	"u8x8_font_artossans8_r"
.LASF62:
	.string	"u8x8_font_artossans8_u"
.LASF147:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_u16toa.c"
.LASF120:
	.string	"u8x8_font_pcsenior_f"
.LASF85:
	.string	"u8x8_font_courR18_2x3_n"
.LASF84:
	.string	"u8x8_font_courR18_2x3_r"
.LASF122:
	.string	"u8x8_font_pcsenior_n"
.LASF121:
	.string	"u8x8_font_pcsenior_r"
.LASF123:
	.string	"u8x8_font_pcsenior_u"
.LASF145:
	.string	"u8x8_u16toap"
.LASF108:
	.string	"u8x8_font_inb21_2x4_r"
.LASF110:
	.string	"u8x8_font_inb33_3x6_f"
.LASF107:
	.string	"u8x8_font_inb21_2x4_f"
.LASF89:
	.string	"u8x8_font_courR24_3x4_f"
.LASF109:
	.string	"u8x8_font_inb21_2x4_n"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF91:
	.string	"u8x8_font_courR24_3x4_n"
.LASF39:
	.string	"u8x8_font_open_iconic_arrow_2x2"
.LASF90:
	.string	"u8x8_font_courR24_3x4_r"
.LASF143:
	.string	"u8x8_utoa"
.LASF118:
	.string	"u8x8_font_pressstart2p_n"
.LASF48:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF41:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF26:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF124:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF126:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF125:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF127:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF45:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF37:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF47:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF69:
	.string	"u8x8_font_saikyosansbold8_n"
.LASF111:
	.string	"u8x8_font_inb33_3x6_r"
.LASF70:
	.string	"u8x8_font_saikyosansbold8_u"
.LASF139:
	.string	"u8x8_font_px437wyse700b_2x2_f"
.LASF50:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF104:
	.string	"u8x8_font_inr46_4x8_f"
.LASF106:
	.string	"u8x8_font_inr46_4x8_n"
.LASF46:
	.string	"u8x8_font_open_iconic_check_4x4"
.LASF105:
	.string	"u8x8_font_inr46_4x8_r"
.LASF136:
	.string	"u8x8_font_px437wyse700a_2x2_f"
.LASF88:
	.string	"u8x8_font_courB24_3x4_n"
.LASF128:
	.string	"u8x8_font_pxplusibmcga_f"
.LASF138:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF137:
	.string	"u8x8_font_px437wyse700a_2x2_r"
.LASF130:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF112:
	.string	"u8x8_font_inb33_3x6_n"
.LASF95:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF97:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF21:
	.string	"u8x8_font_8x13_1x2_f"
.LASF57:
	.string	"u8x8_font_profont29_2x3_f"
.LASF96:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF23:
	.string	"u8x8_font_8x13_1x2_n"
.LASF59:
	.string	"u8x8_font_profont29_2x3_n"
.LASF22:
	.string	"u8x8_font_8x13_1x2_r"
.LASF58:
	.string	"u8x8_font_profont29_2x3_r"
.LASF54:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF1:
	.string	"unsigned char"
.LASF149:
	.string	"dest"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF101:
	.string	"u8x8_font_inr33_3x6_f"
.LASF51:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF98:
	.string	"u8x8_font_inr21_2x4_f"
.LASF103:
	.string	"u8x8_font_inr33_3x6_n"
.LASF42:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF100:
	.string	"u8x8_font_inr21_2x4_n"
.LASF102:
	.string	"u8x8_font_inr33_3x6_r"
.LASF99:
	.string	"u8x8_font_inr21_2x4_r"
.LASF24:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF53:
	.string	"u8x8_font_open_iconic_embedded_8x8"
.LASF11:
	.string	"u8x8_font_amstrad_cpc_extended_f"
.LASF18:
	.string	"u8x8_font_5x8_f"
.LASF25:
	.string	"u8x8_font_8x13B_1x2_r"
.LASF142:
	.string	"char"
.LASF13:
	.string	"u8x8_font_amstrad_cpc_extended_n"
.LASF20:
	.string	"u8x8_font_5x8_n"
.LASF116:
	.string	"u8x8_font_pressstart2p_f"
.LASF12:
	.string	"u8x8_font_amstrad_cpc_extended_r"
.LASF19:
	.string	"u8x8_font_5x8_r"
.LASF14:
	.string	"u8x8_font_amstrad_cpc_extended_u"
.LASF129:
	.string	"u8x8_font_pxplusibmcga_r"
.LASF56:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF4:
	.string	"__uint16_t"
.LASF131:
	.string	"u8x8_font_pxplusibmcga_u"
.LASF117:
	.string	"u8x8_font_pressstart2p_r"
.LASF119:
	.string	"u8x8_font_pressstart2p_u"
.LASF52:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF146:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF63:
	.string	"u8x8_font_artosserif8_r"
.LASF80:
	.string	"u8x8_font_courB18_2x3_f"
.LASF44:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF49:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF82:
	.string	"u8x8_font_courB18_2x3_n"
.LASF81:
	.string	"u8x8_font_courB18_2x3_r"
.LASF40:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF36:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF9:
	.string	"uint8_t"
.LASF15:
	.string	"u8x8_font_5x7_f"
.LASF86:
	.string	"u8x8_font_courB24_3x4_f"
.LASF17:
	.string	"u8x8_font_5x7_n"
.LASF33:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF16:
	.string	"u8x8_font_5x7_r"
.LASF87:
	.string	"u8x8_font_courB24_3x4_r"
.LASF67:
	.string	"u8x8_font_chroma48medium8_n"
.LASF66:
	.string	"u8x8_font_chroma48medium8_r"
.LASF68:
	.string	"u8x8_font_chroma48medium8_u"
.LASF30:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF32:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF31:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
