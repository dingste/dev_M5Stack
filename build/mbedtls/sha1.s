	.file	"sha1.c"
	.text
.Ltext0:
	.section	.text.mbedtls_sha1_ret,"ax",@progbits
	.align	4
	.global	mbedtls_sha1_ret
	.type	mbedtls_sha1_ret, @function
mbedtls_sha1_ret:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/sha1.c"
	.loc 1 442 0
.LVL0:
	entry	sp, 128
.LCFI0:
	.loc 1 449 0
	mov.n	a10, sp
	call8	mbedtls_sha1_init
.LVL1:
	.loc 1 451 0
	mov.n	a10, sp
	call8	mbedtls_sha1_starts_ret
.LVL2:
	.loc 1 442 0
	mov.n	a5, a2
	.loc 1 451 0
	mov.n	a2, a10
.LVL3:
	bnez.n	a10, .L2
	.loc 1 454 0
	mov.n	a12, a3
	mov.n	a11, a5
	mov.n	a10, sp
	call8	mbedtls_sha1_update_ret
.LVL4:
	mov.n	a2, a10
.LVL5:
	bnez.n	a10, .L2
	.loc 1 457 0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	mbedtls_sha1_finish_ret
.LVL6:
	mov.n	a2, a10
.LVL7:
.L2:
	.loc 1 461 0
	mov.n	a10, sp
	call8	mbedtls_sha1_free
.LVL8:
	.loc 1 464 0
	retw.n
.LFE0:
	.size	mbedtls_sha1_ret, .-mbedtls_sha1_ret
	.section	.text.mbedtls_sha1,"ax",@progbits
	.align	4
	.global	mbedtls_sha1
	.type	mbedtls_sha1, @function
mbedtls_sha1:
.LFB1:
	.loc 1 470 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 471 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha1_ret
.LVL10:
	retw.n
.LFE1:
	.size	mbedtls_sha1, .-mbedtls_sha1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"  SHA-1 test #%d: "
.LC7:
	.string	"passed"
.LC9:
	.string	"failed"
	.section	.text.mbedtls_sha1_self_test,"ax",@progbits
	.literal_position
	.literal .LC2, sha1_test_sum
	.literal .LC3, sha1_test_buf
	.literal .LC5, .LC4
	.literal .LC6, sha1_test_buflen
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.global	mbedtls_sha1_self_test
	.type	mbedtls_sha1_self_test, @function
mbedtls_sha1_self_test:
.LFB2:
	.loc 1 505 0
.LVL11:
	entry	sp, 1184
.LCFI2:
.LVL12:
	.loc 1 511 0
	addmi	a10, sp, 0x400
	call8	mbedtls_sha1_init
.LVL13:
	l32r	a5, .LC2
	l32r	a4, .LC3
	.loc 1 516 0
	movi.n	a3, 0
.LVL14:
.L12:
	.loc 1 518 0
	beqz.n	a2, .L5
	.loc 1 519 0
	l32r	a10, .LC5
	addi.n	a11, a3, 1
	call8	printf
.LVL15:
.L5:
	.loc 1 521 0
	addmi	a10, sp, 0x400
	call8	mbedtls_sha1_starts_ret
.LVL16:
	mov.n	a6, a10
.LVL17:
	bnez.n	a10, .L6
	.loc 1 524 0
	bnei	a3, 2, .L7
.LVL18:
	.loc 1 526 0
	movi	a12, 0x3e8
	movi	a11, 0x61
	mov.n	a10, sp
	call8	memset
.LVL19:
	movi	a7, 0x3e8
.LVL20:
.L8:
	.loc 1 530 0
	movi	a12, 0x3e8
	mov.n	a11, sp
	addmi	a10, sp, 0x400
	call8	mbedtls_sha1_update_ret
.LVL21:
	mov.n	a6, a10
.LVL22:
	.loc 1 531 0
	bnez.n	a10, .L6
.LVL23:
	addi.n	a7, a7, -1
.LVL24:
	.loc 1 528 0 discriminator 2
	bnez.n	a7, .L8
.LVL25:
.L10:
	.loc 1 543 0
	movi	a11, 0x460
	add.n	a11, a11, sp
	addmi	a10, sp, 0x400
	call8	mbedtls_sha1_finish_ret
.LVL26:
	mov.n	a6, a10
.LVL27:
	beqz.n	a10, .L29
	j	.L6
.L7:
	.loc 1 537 0
	l32r	a8, .LC6
	mov.n	a11, a4
	addx4	a6, a3, a8
.LVL28:
	l32i.n	a12, a6, 0
	addmi	a10, sp, 0x400
.LVL29:
	call8	mbedtls_sha1_update_ret
.LVL30:
	mov.n	a6, a10
.LVL31:
	.loc 1 539 0
	beqz.n	a10, .L10
	j	.L6
.L29:
	.loc 1 546 0
	movi	a10, 0x460
	movi.n	a12, 0x14
	mov.n	a11, a5
	add.n	a10, a10, sp
	call8	memcmp
.LVL32:
	bnez.n	a10, .L14
	.loc 1 552 0
	beqz.n	a2, .L11
	.loc 1 553 0
	l32r	a10, .LC8
	call8	puts
.LVL33:
.L11:
	.loc 1 516 0 discriminator 2
	addi.n	a3, a3, 1
.LVL34:
	addi	a5, a5, 20
	addi	a4, a4, 57
	bnei	a3, 3, .L12
	.loc 1 556 0
	beqz.n	a2, .L13
	.loc 1 557 0
	movi.n	a10, 0xa
	call8	putchar
.LVL35:
	j	.L13
.LVL36:
.L14:
	.loc 1 548 0
	movi.n	a6, 1
.LVL37:
.L6:
	.loc 1 562 0
	beqz.n	a2, .L13
	.loc 1 563 0
	l32r	a10, .LC10
	call8	puts
.LVL38:
.L13:
	.loc 1 566 0
	addmi	a10, sp, 0x400
	call8	mbedtls_sha1_free
.LVL39:
	.loc 1 569 0
	mov.n	a2, a6
.LVL40:
	retw.n
.LFE2:
	.size	mbedtls_sha1_self_test, .-mbedtls_sha1_self_test
	.section	.rodata.sha1_test_sum,"a",@progbits
	.type	sha1_test_sum, @object
	.size	sha1_test_sum, 60
sha1_test_sum:
	.byte	-87
	.byte	-103
	.byte	62
	.byte	54
	.byte	71
	.byte	6
	.byte	-127
	.byte	106
	.byte	-70
	.byte	62
	.byte	37
	.byte	113
	.byte	120
	.byte	80
	.byte	-62
	.byte	108
	.byte	-100
	.byte	-48
	.byte	-40
	.byte	-99
	.byte	-124
	.byte	-104
	.byte	62
	.byte	68
	.byte	28
	.byte	59
	.byte	-46
	.byte	110
	.byte	-70
	.byte	-82
	.byte	74
	.byte	-95
	.byte	-7
	.byte	81
	.byte	41
	.byte	-27
	.byte	-27
	.byte	70
	.byte	112
	.byte	-15
	.byte	52
	.byte	-86
	.byte	-105
	.byte	60
	.byte	-44
	.byte	-60
	.byte	-38
	.byte	-92
	.byte	-10
	.byte	30
	.byte	-21
	.byte	43
	.byte	-37
	.byte	-83
	.byte	39
	.byte	49
	.byte	101
	.byte	52
	.byte	1
	.byte	111
	.section	.rodata.sha1_test_buflen,"a",@progbits
	.align	4
	.type	sha1_test_buflen, @object
	.size	sha1_test_buflen, 12
sha1_test_buflen:
	.word	3
	.word	56
	.word	1000
	.section	.rodata.sha1_test_buf,"a",@progbits
	.type	sha1_test_buf, @object
	.size	sha1_test_buf, 171
sha1_test_buf:
	.string	"abc"
	.zero	53
	.string	"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
	.string	""
	.zero	56
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
	.uleb128 0x80
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
	.uleb128 0x4a0
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/include/sha1_alt.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x584
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30
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
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x24
	.4byte	0xa0
	.uleb128 0x8
	.byte	0x60
	.byte	0x5
	.byte	0x29
	.4byte	0x103
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.4byte	0x103
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x113
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x123
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.4byte	0xbf
	.byte	0x5c
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x95
	.4byte	0x123
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x133
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x30
	.4byte	0xca
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x3e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x226
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x88
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1cc
	.4byte	.L2
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x511
	.4byte	0x1c3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x51c
	.4byte	0x1d8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x527
	.4byte	0x1f9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
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
	.4byte	0x532
	.4byte	0x214
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x53d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x14
	.4byte	0x4c
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1d3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28e
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x226
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x88
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x13e
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x3e
	.4byte	.LLST1
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x3e
	.4byte	.LLST5
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x46f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x231
	.4byte	.L6
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x235
	.4byte	.L13
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x511
	.4byte	0x350
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x548
	.4byte	0x36d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x51c
	.4byte	0x382
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0x553
	.4byte	0x3a4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
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
	.4byte	.LVL21
	.4byte	0x527
	.4byte	0x3c7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x532
	.4byte	0x3e2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x11
	.4byte	.LVL30
	.4byte	0x527
	.4byte	0x3fd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL32
	.4byte	0x55e
	.4byte	0x41c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0x569
	.4byte	0x433
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x578
	.4byte	0x446
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL38
	.4byte	0x569
	.4byte	0x45d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x13
	.4byte	.LVL39
	.4byte	0x53d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x480
	.uleb128 0x19
	.4byte	0x7a
	.2byte	0x3ff
	.byte	0
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x490
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x4a6
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x38
	.byte	0
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1df
	.4byte	0x4b8
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_buf
	.uleb128 0x14
	.4byte	0x490
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x4cd
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x4df
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_buflen
	.uleb128 0x14
	.4byte	0x4bd
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x4fa
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x13
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x50c
	.uleb128 0x5
	.byte	0x3
	.4byte	sha1_test_sum
	.uleb128 0x14
	.4byte	0x4e4
	.uleb128 0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x56
	.uleb128 0x1a
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x82
	.uleb128 0x1a
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x95
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa9
	.uleb128 0x1a
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x65
	.uleb128 0x1a
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0xb2
	.uleb128 0x1a
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x19
	.uleb128 0x1a
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x16
	.uleb128 0x1b
	.4byte	.LASF44
	.4byte	.LASF46
	.byte	0x9
	.byte	0
	.4byte	.LASF44
	.uleb128 0x1b
	.4byte	.LASF45
	.4byte	.LASF47
	.byte	0x9
	.byte	0
	.4byte	.LASF45
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e8
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e9
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x7
	.byte	0xa
	.2byte	0x3e8
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x56
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
.LASF33:
	.string	"sha1_test_buf"
.LASF5:
	.string	"size_t"
.LASF31:
	.string	"exit"
.LASF19:
	.string	"state"
.LASF43:
	.string	"memcmp"
.LASF16:
	.string	"ESP_MBEDTLS_SHA1_SOFTWARE"
.LASF37:
	.string	"mbedtls_sha1_starts_ret"
.LASF15:
	.string	"ESP_MBEDTLS_SHA1_HARDWARE"
.LASF47:
	.string	"__builtin_putchar"
.LASF51:
	.string	"mbedtls_sha1"
.LASF49:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/sha1.c"
.LASF17:
	.string	"esp_mbedtls_sha1_mode"
.LASF27:
	.string	"mbedtls_sha1_self_test"
.LASF46:
	.string	"__builtin_puts"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"input"
.LASF24:
	.string	"ilen"
.LASF11:
	.string	"long unsigned int"
.LASF14:
	.string	"ESP_MBEDTLS_SHA1_UNUSED"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"mbedtls_sha1_update_ret"
.LASF13:
	.string	"uint32_t"
.LASF45:
	.string	"putchar"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"verbose"
.LASF42:
	.string	"memset"
.LASF6:
	.string	"__uint32_t"
.LASF36:
	.string	"mbedtls_sha1_init"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"buflen"
.LASF8:
	.string	"long long unsigned int"
.LASF26:
	.string	"mbedtls_sha1_ret"
.LASF21:
	.string	"mode"
.LASF30:
	.string	"sha1sum"
.LASF20:
	.string	"buffer"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"sha1_test_buflen"
.LASF40:
	.string	"mbedtls_sha1_free"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF41:
	.string	"printf"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"output"
.LASF18:
	.string	"total"
.LASF9:
	.string	"long int"
.LASF44:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF39:
	.string	"mbedtls_sha1_finish_ret"
.LASF22:
	.string	"mbedtls_sha1_context"
.LASF35:
	.string	"sha1_test_sum"
.LASF32:
	.string	"fail"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
