	.file	"sha512.c"
	.text
.Ltext0:
	.section	.text.mbedtls_sha512_ret,"ax",@progbits
	.align	4
	.global	mbedtls_sha512_ret
	.type	mbedtls_sha512_ret, @function
mbedtls_sha512_ret:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/sha512.c"
	.loc 1 426 0
.LVL0:
	entry	sp, 256
.LCFI0:
	.loc 1 430 0
	mov.n	a10, sp
	call8	mbedtls_sha512_init
.LVL1:
	.loc 1 432 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	mbedtls_sha512_starts_ret
.LVL2:
	.loc 1 426 0
	mov.n	a6, a2
	.loc 1 432 0
	mov.n	a2, a10
.LVL3:
	bnez.n	a10, .L2
	.loc 1 435 0
	mov.n	a12, a3
	mov.n	a11, a6
	mov.n	a10, sp
	call8	mbedtls_sha512_update_ret
.LVL4:
	mov.n	a2, a10
.LVL5:
	bnez.n	a10, .L2
	.loc 1 438 0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	mbedtls_sha512_finish_ret
.LVL6:
	mov.n	a2, a10
.LVL7:
.L2:
	.loc 1 442 0
	mov.n	a10, sp
	call8	mbedtls_sha512_free
.LVL8:
	.loc 1 445 0
	retw.n
.LFE0:
	.size	mbedtls_sha512_ret, .-mbedtls_sha512_ret
	.section	.text.mbedtls_sha512,"ax",@progbits
	.align	4
	.global	mbedtls_sha512
	.type	mbedtls_sha512, @function
mbedtls_sha512:
.LFB1:
	.loc 1 452 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 453 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha512_ret
.LVL10:
	retw.n
.LFE1:
	.size	mbedtls_sha512, .-mbedtls_sha512
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Buffer allocation failed"
.LC3:
	.string	"  SHA-%d test #%d: "
.LC8:
	.string	"passed"
.LC10:
	.string	"failed"
	.section	.text.mbedtls_sha512_self_test,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, 1431655766
	.literal .LC4, .LC3
	.literal .LC5, sha512_test_buflen
	.literal .LC6, sha512_test_buf
	.literal .LC7, sha512_test_sum
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	mbedtls_sha512_self_test
	.type	mbedtls_sha512_self_test, @function
mbedtls_sha512_self_test:
.LFB2:
	.loc 1 532 0
.LVL11:
	entry	sp, 320
.LCFI2:
.LVL12:
	.loc 1 538 0
	movi.n	a11, 1
	movi	a10, 0x400
	call8	mbedtls_calloc
.LVL13:
	.loc 1 532 0
	mov.n	a5, a2
	.loc 1 538 0
	mov.n	a6, a10
.LVL14:
	.loc 1 539 0
	bnez.n	a10, .L5
	.loc 1 544 0
	movi.n	a2, 1
.LVL15:
	.loc 1 541 0
	beqz.n	a5, .L6
	.loc 1 542 0
	l32r	a10, .LC1
	call8	puts
.LVL16:
	retw.n
.LVL17:
.L5:
	.loc 1 547 0
	mov.n	a10, sp
	call8	mbedtls_sha512_init
.LVL18:
	.loc 1 549 0
	movi.n	a4, 0
.LVL19:
.L15:
	.loc 1 551 0
	l32r	a2, .LC2
	srai	a11, a4, 31
	mulsh	a3, a4, a2
	.loc 1 552 0
	movi.n	a7, 1
	.loc 1 551 0
	sub	a3, a3, a11
	addx2	a3, a3, a3
	sub	a3, a4, a3
.LVL20:
	.loc 1 552 0
	blti	a4, 3, .L7
	movi.n	a7, 0
.L7:
.LVL21:
	.loc 1 554 0
	beqz.n	a5, .L8
	.loc 1 555 0
	movi.n	a11, 4
	sub	a11, a11, a7
	l32r	a10, .LC4
	addi.n	a12, a3, 1
	slli	a11, a11, 7
	call8	printf
.LVL22:
.L8:
	.loc 1 557 0
	mov.n	a11, a7
	mov.n	a10, sp
	call8	mbedtls_sha512_starts_ret
.LVL23:
	mov.n	a2, a10
.LVL24:
	bnez.n	a10, .L9
	.loc 1 560 0
	bnei	a3, 2, .L10
.LVL25:
	.loc 1 562 0
	movi	a12, 0x3e8
	movi	a11, 0x61
	mov.n	a10, a6
	call8	memset
.LVL26:
	movi	a3, 0x3e8
.LVL27:
.L11:
	.loc 1 566 0
	movi	a12, 0x3e8
	mov.n	a11, a6
	mov.n	a10, sp
	call8	mbedtls_sha512_update_ret
.LVL28:
	mov.n	a2, a10
.LVL29:
	.loc 1 567 0
	bnez.n	a10, .L9
.LVL30:
	addi.n	a3, a3, -1
.LVL31:
	.loc 1 564 0 discriminator 2
	bnez.n	a3, .L11
.LVL32:
.L13:
	.loc 1 579 0
	movi	a11, 0xd8
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	mbedtls_sha512_finish_ret
.LVL33:
	mov.n	a2, a10
.LVL34:
	beqz.n	a10, .L34
	j	.L9
.LVL35:
.L10:
	.loc 1 573 0
	l32r	a2, .LC5
.LVL36:
	subx8	a11, a3, a3
	slli	a11, a11, 4
	addx4	a2, a3, a2
	add.n	a3, a11, a3
.LVL37:
	l32r	a11, .LC6
	l32i.n	a12, a2, 0
	add.n	a11, a11, a3
	mov.n	a10, sp
.LVL38:
	call8	mbedtls_sha512_update_ret
.LVL39:
	mov.n	a2, a10
.LVL40:
	.loc 1 575 0
	beqz.n	a10, .L13
	j	.L9
.LVL41:
.L34:
	.loc 1 582 0
	movi.n	a12, 4
	l32r	a3, .LC7
	sub	a12, a12, a7
	slli	a11, a4, 6
	movi	a10, 0xd8
	slli	a12, a12, 4
	add.n	a11, a3, a11
	add.n	a10, a10, sp
	call8	memcmp
.LVL42:
	bnez.n	a10, .L18
	.loc 1 588 0
	beqz.n	a5, .L14
	.loc 1 589 0
	l32r	a10, .LC9
	call8	puts
.LVL43:
.L14:
	.loc 1 549 0 discriminator 2
	addi.n	a4, a4, 1
.LVL44:
	bnei	a4, 6, .L15
	.loc 1 592 0
	beqz.n	a5, .L16
	.loc 1 593 0
	movi.n	a10, 0xa
	call8	putchar
.LVL45:
	j	.L16
.LVL46:
.L18:
	.loc 1 584 0
	movi.n	a2, 1
.LVL47:
.L9:
	.loc 1 598 0
	beqz.n	a5, .L16
	.loc 1 599 0
	l32r	a10, .LC11
	call8	puts
.LVL48:
.L16:
	.loc 1 602 0
	mov.n	a10, sp
	call8	mbedtls_sha512_free
.LVL49:
	.loc 1 603 0
	mov.n	a10, a6
	call8	mbedtls_free
.LVL50:
.L6:
	.loc 1 606 0
	retw.n
.LFE2:
	.size	mbedtls_sha512_self_test, .-mbedtls_sha512_self_test
	.section	.rodata.sha512_test_sum,"a",@progbits
	.type	sha512_test_sum, @object
	.size	sha512_test_sum, 384
sha512_test_sum:
	.byte	-53
	.byte	0
	.byte	117
	.byte	63
	.byte	69
	.byte	-93
	.byte	94
	.byte	-117
	.byte	-75
	.byte	-96
	.byte	61
	.byte	105
	.byte	-102
	.byte	-58
	.byte	80
	.byte	7
	.byte	39
	.byte	44
	.byte	50
	.byte	-85
	.byte	14
	.byte	-34
	.byte	-47
	.byte	99
	.byte	26
	.byte	-117
	.byte	96
	.byte	90
	.byte	67
	.byte	-1
	.byte	91
	.byte	-19
	.byte	-128
	.byte	-122
	.byte	7
	.byte	43
	.byte	-95
	.byte	-25
	.byte	-52
	.byte	35
	.byte	88
	.byte	-70
	.byte	-20
	.byte	-95
	.byte	52
	.byte	-56
	.byte	37
	.byte	-89
	.zero	16
	.byte	9
	.byte	51
	.byte	12
	.byte	51
	.byte	-9
	.byte	17
	.byte	71
	.byte	-24
	.byte	61
	.byte	25
	.byte	47
	.byte	-57
	.byte	-126
	.byte	-51
	.byte	27
	.byte	71
	.byte	83
	.byte	17
	.byte	27
	.byte	23
	.byte	59
	.byte	59
	.byte	5
	.byte	-46
	.byte	47
	.byte	-96
	.byte	-128
	.byte	-122
	.byte	-29
	.byte	-80
	.byte	-9
	.byte	18
	.byte	-4
	.byte	-57
	.byte	-57
	.byte	26
	.byte	85
	.byte	126
	.byte	45
	.byte	-71
	.byte	102
	.byte	-61
	.byte	-23
	.byte	-6
	.byte	-111
	.byte	116
	.byte	96
	.byte	57
	.zero	16
	.byte	-99
	.byte	14
	.byte	24
	.byte	9
	.byte	113
	.byte	100
	.byte	116
	.byte	-53
	.byte	8
	.byte	110
	.byte	-125
	.byte	78
	.byte	49
	.byte	10
	.byte	74
	.byte	28
	.byte	-19
	.byte	20
	.byte	-98
	.byte	-100
	.byte	0
	.byte	-14
	.byte	72
	.byte	82
	.byte	121
	.byte	114
	.byte	-50
	.byte	-59
	.byte	112
	.byte	76
	.byte	42
	.byte	91
	.byte	7
	.byte	-72
	.byte	-77
	.byte	-36
	.byte	56
	.byte	-20
	.byte	-60
	.byte	-21
	.byte	-82
	.byte	-105
	.byte	-35
	.byte	-40
	.byte	127
	.byte	61
	.byte	-119
	.byte	-123
	.zero	16
	.byte	-35
	.byte	-81
	.byte	53
	.byte	-95
	.byte	-109
	.byte	97
	.byte	122
	.byte	-70
	.byte	-52
	.byte	65
	.byte	115
	.byte	73
	.byte	-82
	.byte	32
	.byte	65
	.byte	49
	.byte	18
	.byte	-26
	.byte	-6
	.byte	78
	.byte	-119
	.byte	-87
	.byte	126
	.byte	-94
	.byte	10
	.byte	-98
	.byte	-18
	.byte	-26
	.byte	75
	.byte	85
	.byte	-45
	.byte	-102
	.byte	33
	.byte	-110
	.byte	-103
	.byte	42
	.byte	39
	.byte	79
	.byte	-63
	.byte	-88
	.byte	54
	.byte	-70
	.byte	60
	.byte	35
	.byte	-93
	.byte	-2
	.byte	-21
	.byte	-67
	.byte	69
	.byte	77
	.byte	68
	.byte	35
	.byte	100
	.byte	60
	.byte	-24
	.byte	14
	.byte	42
	.byte	-102
	.byte	-55
	.byte	79
	.byte	-91
	.byte	76
	.byte	-92
	.byte	-97
	.byte	-114
	.byte	-107
	.byte	-101
	.byte	117
	.byte	-38
	.byte	-29
	.byte	19
	.byte	-38
	.byte	-116
	.byte	-12
	.byte	-9
	.byte	40
	.byte	20
	.byte	-4
	.byte	20
	.byte	63
	.byte	-113
	.byte	119
	.byte	121
	.byte	-58
	.byte	-21
	.byte	-97
	.byte	127
	.byte	-95
	.byte	114
	.byte	-103
	.byte	-82
	.byte	-83
	.byte	-74
	.byte	-120
	.byte	-112
	.byte	24
	.byte	80
	.byte	29
	.byte	40
	.byte	-98
	.byte	73
	.byte	0
	.byte	-9
	.byte	-28
	.byte	51
	.byte	27
	.byte	-103
	.byte	-34
	.byte	-60
	.byte	-75
	.byte	67
	.byte	58
	.byte	-57
	.byte	-45
	.byte	41
	.byte	-18
	.byte	-74
	.byte	-35
	.byte	38
	.byte	84
	.byte	94
	.byte	-106
	.byte	-27
	.byte	91
	.byte	-121
	.byte	75
	.byte	-23
	.byte	9
	.byte	-25
	.byte	24
	.byte	72
	.byte	61
	.byte	12
	.byte	-25
	.byte	105
	.byte	100
	.byte	78
	.byte	46
	.byte	66
	.byte	-57
	.byte	-68
	.byte	21
	.byte	-76
	.byte	99
	.byte	-114
	.byte	31
	.byte	-104
	.byte	-79
	.byte	59
	.byte	32
	.byte	68
	.byte	40
	.byte	86
	.byte	50
	.byte	-88
	.byte	3
	.byte	-81
	.byte	-87
	.byte	115
	.byte	-21
	.byte	-34
	.byte	15
	.byte	-14
	.byte	68
	.byte	-121
	.byte	126
	.byte	-90
	.byte	10
	.byte	76
	.byte	-80
	.byte	67
	.byte	44
	.byte	-27
	.byte	119
	.byte	-61
	.byte	27
	.byte	-21
	.byte	0
	.byte	-100
	.byte	92
	.byte	44
	.byte	73
	.byte	-86
	.byte	46
	.byte	78
	.byte	-83
	.byte	-78
	.byte	23
	.byte	-83
	.byte	-116
	.byte	-64
	.byte	-101
	.section	.rodata.sha512_test_buflen,"a",@progbits
	.align	4
	.type	sha512_test_buflen, @object
	.size	sha512_test_buflen, 12
sha512_test_buflen:
	.word	3
	.word	112
	.word	1000
	.section	.rodata.sha512_test_buf,"a",@progbits
	.type	sha512_test_buf, @object
	.size	sha512_test_buf, 339
sha512_test_buf:
	.string	"abc"
	.zero	109
	.string	"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu"
	.string	""
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x100
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
	.uleb128 0x140
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/include/sha512_alt.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x636
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x20
	.4byte	0xbf
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x24
	.4byte	0xa0
	.uleb128 0x8
	.byte	0xd8
	.byte	0x5
	.byte	0x29
	.4byte	0x10f
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.4byte	0x10f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x11f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x12f
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.4byte	0x33
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2f
	.4byte	0xbf
	.byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x12f
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x31
	.4byte	0xca
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x246
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x3a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x88
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1b9
	.4byte	.L2
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x5ad
	.4byte	0x1dd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x5b8
	.4byte	0x1f8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x5c3
	.4byte	0x219
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x5ce
	.4byte	0x234
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x5d9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24c
	.uleb128 0x14
	.4byte	0x53
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x246
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x3a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x88
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x14a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x213
	.4byte	0x33
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x213
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x215
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.2byte	0x215
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.2byte	0x215
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x215
	.4byte	0x33
	.4byte	.LLST5
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x215
	.4byte	0x33
	.4byte	.LLST6
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.2byte	0x216
	.4byte	0x88
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x217
	.4byte	0x51c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.2byte	0x218
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x255
	.4byte	.L9
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x259
	.4byte	.L16
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x5e4
	.4byte	0x396
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x5ef
	.4byte	0x3ad
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x5ad
	.4byte	0x3c2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0x5fe
	.4byte	0x3e9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x34
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x37
	.byte	0x24
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0x5b8
	.4byte	0x404
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x609
	.4byte	0x425
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x5c3
	.4byte	0x447
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0x5ce
	.4byte	0x463
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x11
	.4byte	.LVL39
	.4byte	0x5c3
	.4byte	0x48b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	sha512_test_buf
	.byte	0x22
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL42
	.4byte	0x614
	.4byte	0x4b5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x34
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0x5ef
	.4byte	0x4cc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL45
	.4byte	0x61f
	.4byte	0x4df
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL48
	.4byte	0x5ef
	.4byte	0x4f6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x11
	.4byte	.LVL49
	.4byte	0x5d9
	.4byte	0x50b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x13
	.4byte	.LVL50
	.4byte	0x62e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x52c
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x542
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x70
	.byte	0
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x554
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_buf
	.uleb128 0x14
	.4byte	0x52c
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x569
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x57b
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_buflen
	.uleb128 0x14
	.4byte	0x559
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x596
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x5
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1db
	.4byte	0x5a8
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_sum
	.uleb128 0x14
	.4byte	0x580
	.uleb128 0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4a
	.uleb128 0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x66
	.uleb128 0x19
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x72
	.uleb128 0x19
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.uleb128 0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x7c
	.uleb128 0x1a
	.4byte	.LASF46
	.4byte	.LASF48
	.byte	0xa
	.byte	0
	.4byte	.LASF46
	.uleb128 0x19
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0xb2
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.byte	0x16
	.uleb128 0x1a
	.4byte	.LASF47
	.4byte	.LASF49
	.byte	0xa
	.byte	0
	.4byte	.LASF47
	.uleb128 0x19
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x7d
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e8
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e9
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e8
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x3b
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x74
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x55555556
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
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
.LASF34:
	.string	"sha512_test_buf"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"exit"
.LASF37:
	.string	"mbedtls_sha512_init"
.LASF19:
	.string	"state"
.LASF54:
	.string	"mbedtls_sha512"
.LASF31:
	.string	"sha512sum"
.LASF20:
	.string	"buffer"
.LASF50:
	.string	"mbedtls_free"
.LASF1:
	.string	"unsigned int"
.LASF49:
	.string	"__builtin_putchar"
.LASF13:
	.string	"uint64_t"
.LASF15:
	.string	"ESP_MBEDTLS_SHA512_HARDWARE"
.LASF27:
	.string	"mbedtls_sha512_ret"
.LASF48:
	.string	"__builtin_puts"
.LASF39:
	.string	"mbedtls_sha512_update_ret"
.LASF24:
	.string	"input"
.LASF25:
	.string	"ilen"
.LASF11:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF47:
	.string	"putchar"
.LASF51:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"unsigned char"
.LASF44:
	.string	"memset"
.LASF38:
	.string	"mbedtls_sha512_starts_ret"
.LASF14:
	.string	"ESP_MBEDTLS_SHA512_UNUSED"
.LASF16:
	.string	"ESP_MBEDTLS_SHA512_SOFTWARE"
.LASF28:
	.string	"mbedtls_sha512_self_test"
.LASF21:
	.string	"is384"
.LASF41:
	.string	"mbedtls_sha512_free"
.LASF0:
	.string	"long long unsigned int"
.LASF42:
	.string	"mbedtls_calloc"
.LASF22:
	.string	"mode"
.LASF53:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF10:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF52:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/sha512.c"
.LASF43:
	.string	"printf"
.LASF5:
	.string	"short int"
.LASF45:
	.string	"memcmp"
.LASF26:
	.string	"output"
.LASF40:
	.string	"mbedtls_sha512_finish_ret"
.LASF18:
	.string	"total"
.LASF9:
	.string	"long int"
.LASF35:
	.string	"sha512_test_buflen"
.LASF23:
	.string	"mbedtls_sha512_context"
.LASF17:
	.string	"esp_mbedtls_sha512_mode"
.LASF3:
	.string	"signed char"
.LASF29:
	.string	"verbose"
.LASF8:
	.string	"__uint64_t"
.LASF46:
	.string	"puts"
.LASF36:
	.string	"sha512_test_sum"
.LASF33:
	.string	"fail"
.LASF30:
	.string	"buflen"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
