	.file	"crypto_secretbox_easy.c"
	.text
.Ltext0:
	.section	.text.crypto_secretbox_detached,"ax",@progbits
	.literal_position
	.literal .LC3, 1, 0
	.align	4
	.global	crypto_secretbox_detached
	.type	crypto_secretbox_detached, @function
crypto_secretbox_detached:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
	.loc 1 20 0
.LVL0:
	entry	sp, 432
.LCFI0:
	.loc 1 20 0
	s32i	a3, sp, 376
	.loc 1 27 0
	movi	a10, 0x140
	addi	a3, sp, 16
.LVL1:
	l32i	a12, sp, 436
	l32i	a11, sp, 432
	movi.n	a13, 0
	add.n	a10, a3, a10
	.loc 1 20 0
	.loc 1 27 0
	call8	crypto_core_hsalsa20
.LVL2:
	.loc 1 29 0
	bltu	a2, a4, .L2
	.loc 1 29 0 is_stmt 0 discriminator 1
	sub	a3, a2, a4
	bnez.n	a7, .L3
	bltu	a3, a6, .L3
	.loc 1 30 0 is_stmt 1
	bltu	a4, a2, .L5
.L2:
	.loc 1 31 0
	sub	a3, a4, a2
	bnez.n	a7, .L3
	bgeu	a3, a6, .L5
.L3:
	.loc 1 33 0
	mov.n	a11, a4
	mov.n	a12, a6
	mov.n	a10, a2
	call8	memmove
.LVL3:
	mov.n	a4, a2
.LVL4:
.L5:
	.loc 1 36 0
	movi.n	a8, 0x20
	addi	a5, sp, 16
	mov.n	a12, a8
	addmi	a10, a5, 0x100
	movi.n	a11, 0
	s32i	a8, sp, 384
	call8	memset
.LVL5:
	mov.n	a3, a6
	mov.n	a5, a7
	l32i	a8, sp, 384
	bnez.n	a7, .L8
	bgeu	a8, a6, .L7
.L8:
	movi.n	a3, 0x20
	movi.n	a5, 0
.L7:
.LVL6:
	addi	a9, sp, 16
	addmi	a8, a9, 0x100
	add.n	a9, a4, a3
	s32i	a9, sp, 368
	s32i	a3, sp, 372
	.loc 1 42 0
	mov.n	a9, a8
	j	.L9
.LVL7:
.L10:
	.loc 1 43 0 discriminator 3
	l8ui	a10, a4, 0
	addi.n	a4, a4, 1
	s8i	a10, a9, 31
.L9:
	.loc 1 42 0 discriminator 1
	l32i	a10, sp, 368
	addi.n	a9, a9, 1
	bne	a10, a4, .L10
	.loc 1 45 0
	l32i	a9, sp, 432
	movi	a15, 0x140
	addi	a10, sp, 16
	addi	a12, a3, 32
	addi	a4, a9, 16
	add.n	a15, a10, a15
	movi.n	a13, 1
	bltu	a12, a3, .L11
	movi.n	a13, 0
.L11:
	addi	a10, sp, 16
	addmi	a9, a10, 0x100
	mov.n	a11, a9
	mov.n	a14, a4
	add.n	a13, a13, a5
	mov.n	a10, a9
	s32i	a8, sp, 384
	s32i	a9, sp, 380
	call8	crypto_stream_salsa20_xor
.LVL8:
	.loc 1 50 0
	l32i	a9, sp, 380
	addi	a10, sp, 16
	mov.n	a11, a9
	call8	crypto_onetimeauth_poly1305_init
.LVL9:
	l32i	a10, sp, 372
	.loc 1 52 0
	l32i	a8, sp, 384
	add.n	a9, a2, a10
	.loc 1 29 0
	mov.n	a10, a2
	.loc 1 52 0
	j	.L12
.LVL10:
.L13:
	.loc 1 53 0 discriminator 3
	l8ui	a11, a8, 31
	s8i	a11, a10, 0
	addi.n	a10, a10, 1
.L12:
	addi.n	a8, a8, 1
	.loc 1 52 0 discriminator 1
	bne	a9, a10, .L13
	.loc 1 55 0
	addi	a8, sp, 16
	movi.n	a11, 0x40
	addmi	a10, a8, 0x100
	s32i	a9, sp, 380
	call8	sodium_memzero
.LVL11:
	.loc 1 56 0
	l32i	a9, sp, 380
	bltu	a5, a7, .L18
	bne	a7, a5, .L14
	bgeu	a3, a6, .L14
.L18:
	.loc 1 57 0
	sub	a12, a6, a3
	movi.n	a8, 1
	bltu	a6, a12, .L16
	movi.n	a8, 0
.L16:
	addi	a10, sp, 16
	l32r	a11, .LC3+4
	movi	a3, 0x140
.LVL12:
	add.n	a3, a10, a3
	l32r	a10, .LC3
	sub	a13, a7, a5
	s32i.n	a11, sp, 4
	l32i	a11, sp, 368
	s32i.n	a10, sp, 0
	s32i.n	a3, sp, 8
	mov.n	a14, a4
	sub	a13, a13, a8
	mov.n	a10, a9
	call8	crypto_stream_salsa20_xor_ic
.LVL13:
.L14:
	.loc 1 60 0
	addi	a3, sp, 16
	movi	a10, 0x140
	add.n	a10, a3, a10
	movi.n	a11, 0x20
	call8	sodium_memzero
.LVL14:
	.loc 1 62 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL15:
	.loc 1 63 0
	l32i	a11, sp, 376
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL16:
	.loc 1 64 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL17:
	.loc 1 67 0
	movi.n	a2, 0
.LVL18:
	retw.n
.LFE12:
	.size	crypto_secretbox_detached, .-crypto_secretbox_detached
	.section	.text.crypto_secretbox_easy,"ax",@progbits
	.align	4
	.global	crypto_secretbox_easy
	.type	crypto_secretbox_easy, @function
crypto_secretbox_easy:
.LFB13:
	.loc 1 73 0
.LVL19:
	entry	sp, 48
.LCFI1:
	.loc 1 73 0
	mov.n	a12, a3
	mov.n	a14, a4
	mov.n	a15, a5
	.loc 1 74 0
	bnez.n	a5, .L22
	movi.n	a8, -0x11
	bltu	a8, a4, .L22
	.loc 1 77 0
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_secretbox_detached
.LVL20:
	j	.L20
.L22:
	.loc 1 75 0
	movi.n	a10, -1
.L20:
	.loc 1 79 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE13:
	.size	crypto_secretbox_easy, .-crypto_secretbox_easy
	.section	.text.crypto_secretbox_open_detached,"ax",@progbits
	.literal_position
	.literal .LC4, 32, 0
	.literal .LC5, 1, 0
	.align	4
	.global	crypto_secretbox_open_detached
	.type	crypto_secretbox_open_detached, @function
crypto_secretbox_open_detached:
.LFB14:
	.loc 1 87 0
.LVL22:
	entry	sp, 176
.LCFI2:
	.loc 1 87 0
	l32i	a5, sp, 176
	mov.n	a8, a4
	.loc 1 93 0
	l32i	a12, sp, 180
	addi	a4, sp, 80
.LVL23:
	mov.n	a11, a5
	movi.n	a13, 0
	mov.n	a10, a4
	s32i	a8, sp, 128
	call8	crypto_core_hsalsa20
.LVL24:
	.loc 1 94 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	addi	a5, a5, 16
	mov.n	a15, a4
	mov.n	a14, a5
	addi	a10, sp, 16
	call8	crypto_stream_salsa20
.LVL25:
	.loc 1 96 0
	l32i	a8, sp, 128
	addi	a14, sp, 16
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a3
	mov.n	a10, a8
	call8	crypto_onetimeauth_poly1305_verify
.LVL26:
	s32i	a10, sp, 112
	.loc 1 87 0
	.loc 1 96 0
	beqz.n	a10, .L25
	.loc 1 97 0
	movi.n	a11, 0x20
	mov.n	a10, a4
	.loc 1 98 0
	movi.n	a2, -1
.LVL27:
	.loc 1 97 0
	call8	sodium_memzero
.LVL28:
	.loc 1 98 0
	s32i	a2, sp, 112
	j	.L26
.LVL29:
.L25:
	.loc 1 100 0
	beqz.n	a2, .L26
	.loc 1 103 0
	bltu	a3, a2, .L27
	.loc 1 103 0 is_stmt 0 discriminator 1
	sub	a8, a3, a2
	bnez.n	a7, .L28
	bltu	a8, a6, .L28
	.loc 1 104 0 is_stmt 1
	bltu	a2, a3, .L30
.L27:
	.loc 1 105 0
	sub	a8, a2, a3
	bnez.n	a7, .L28
	bgeu	a8, a6, .L30
.L28:
	.loc 1 107 0
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a10, a2
	call8	memmove
.LVL30:
	mov.n	a3, a2
.LVL31:
.L30:
	mov.n	a8, a6
	mov.n	a9, a7
	bnez.n	a7, .L33
	movi.n	a10, 0x20
	bgeu	a10, a6, .L32
.L33:
	movi.n	a8, 0x20
	movi.n	a9, 0
.L32:
.LVL32:
	mov.n	a10, a3
	add.n	a11, a10, a8
	addi	a3, sp, 16
.LVL33:
	s32i	a11, sp, 116
	s32i	a8, sp, 120
	.loc 1 114 0
	mov.n	a11, a3
	j	.L34
.LVL34:
.L35:
	.loc 1 115 0 discriminator 3
	l8ui	a12, a10, 0
	addi.n	a10, a10, 1
	s8i	a12, a11, 31
.L34:
	.loc 1 114 0 discriminator 1
	l32i	a12, sp, 116
	addi.n	a11, a11, 1
	bne	a12, a10, .L35
	.loc 1 117 0
	addi	a12, a8, 32
	movi.n	a13, 1
	bltu	a12, a8, .L36
	movi.n	a13, 0
.L36:
	addi	a11, sp, 16
	add.n	a13, a13, a9
	mov.n	a10, a11
	mov.n	a15, a4
	mov.n	a14, a5
	s32i	a8, sp, 128
	s32i	a9, sp, 124
	call8	crypto_stream_salsa20_xor
.LVL35:
	l32i	a11, sp, 120
	.loc 1 120 0
	l32i	a8, sp, 128
	add.n	a10, a2, a11
	l32i	a9, sp, 124
	j	.L37
.LVL36:
.L38:
	.loc 1 121 0 discriminator 3
	l8ui	a11, a3, 31
	s8i	a11, a2, 0
	addi.n	a2, a2, 1
.L37:
	addi.n	a3, a3, 1
	.loc 1 120 0 discriminator 1
	bne	a10, a2, .L38
	.loc 1 123 0
	bltu	a9, a7, .L43
	bne	a7, a9, .L39
	bgeu	a8, a6, .L39
.L43:
	.loc 1 124 0
	sub	a12, a6, a8
	movi.n	a13, 1
	bltu	a6, a12, .L41
	movi.n	a13, 0
.L41:
	l32r	a2, .LC5
	l32r	a3, .LC5+4
	sub	a7, a7, a9
	l32i	a11, sp, 116
	s32i.n	a4, sp, 8
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	mov.n	a14, a5
	sub	a13, a7, a13
	call8	crypto_stream_salsa20_xor_ic
.LVL37:
.L39:
	.loc 1 127 0
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL38:
.L26:
	.loc 1 130 0
	l32i	a2, sp, 112
	retw.n
.LFE14:
	.size	crypto_secretbox_open_detached, .-crypto_secretbox_open_detached
	.section	.text.crypto_secretbox_open_easy,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_secretbox_open_easy
	.type	crypto_secretbox_open_easy, @function
crypto_secretbox_open_easy:
.LFB15:
	.loc 1 136 0
.LVL39:
	entry	sp, 48
.LCFI3:
	.loc 1 136 0
	mov.n	a10, a2
	.loc 1 137 0
	bnez.n	a5, .L52
	movi.n	a8, 0xf
	bgeu	a8, a4, .L53
.L52:
	.loc 1 140 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L50
	movi.n	a15, 0
.L50:
	addi.n	a5, a5, -1
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	add.n	a15, a15, a5
	mov.n	a12, a3
	addi	a11, a3, 16
	call8	crypto_secretbox_open_detached
.LVL40:
	j	.L48
.L53:
	.loc 1 138 0
	movi.n	a10, -1
.L48:
	.loc 1 143 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LFE15:
	.size	crypto_secretbox_open_easy, .-crypto_secretbox_open_easy
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x1b0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x606
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
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
	.4byte	.LASF11
	.byte	0x2
	.byte	0x32
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xaa
	.4byte	0x5d
	.uleb128 0x6
	.4byte	.LASF13
	.2byte	0x100
	.byte	0x4
	.byte	0x13
	.4byte	0xaf
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x14
	.4byte	0xaf
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xbf
	.uleb128 0x9
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x95
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.4byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c3
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x10
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x10
	.4byte	0x7d
	.4byte	.LLST1
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x11
	.4byte	0x2c3
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x12
	.4byte	0x56
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x12
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x13
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.4byte	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.4byte	0x2ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0x56
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.4byte	0x56
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x592
	.4byte	0x1a7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x59d
	.4byte	0x1c7
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x5a8
	.4byte	0x1e7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 256
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
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x5b1
	.4byte	0x209
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
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0x5bc
	.4byte	0x21e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x5c7
	.4byte	0x239
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
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x5d2
	.4byte	0x25b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x5c7
	.4byte	0x276
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x5dd
	.4byte	0x290
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x5e8
	.4byte	0x2ab
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x5c7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x14
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2de
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2ee
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x46
	.4byte	0x33
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x372
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x46
	.4byte	0x7d
	.4byte	.LLST5
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x46
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x47
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x48
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0xca
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x52
	.4byte	0x33
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x52
	.4byte	0x7d
	.4byte	.LLST6
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x52
	.4byte	0x2c3
	.4byte	.LLST7
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x53
	.4byte	0x2c3
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x54
	.4byte	0x56
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x55
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x56
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x58
	.4byte	0x2ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x59
	.4byte	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.4byte	0x56
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5b
	.4byte	0x56
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LVL24
	.4byte	0x592
	.4byte	0x43f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x5f3
	.4byte	0x460
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x5fe
	.4byte	0x47b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x5c7
	.4byte	0x495
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL30
	.4byte	0x59d
	.4byte	0x4b5
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x5b1
	.4byte	0x4db
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL37
	.4byte	0x5d2
	.4byte	0x4fd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x5c7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x85
	.4byte	0x33
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x592
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x85
	.4byte	0x7d
	.4byte	.LLST11
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x85
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x86
	.4byte	0x56
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x86
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x87
	.4byte	0x2c3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x372
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF38
	.4byte	.LASF38
	.uleb128 0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x8
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x4
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x39
	.uleb128 0x15
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x29
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x16
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
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE12
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
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LFE12
	.2byte	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"memmove"
.LASF22:
	.string	"clen"
.LASF15:
	.string	"state"
.LASF12:
	.string	"uintptr_t"
.LASF14:
	.string	"mlen"
.LASF20:
	.string	"crypto_secretbox_easy"
.LASF16:
	.string	"block0"
.LASF30:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF27:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF36:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF33:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"crypto_stream_salsa20_xor_ic"
.LASF38:
	.string	"memset"
.LASF13:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF19:
	.string	"crypto_secretbox_detached"
.LASF31:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF17:
	.string	"subkey"
.LASF23:
	.string	"crypto_secretbox_open_easy"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"__uintptr_t"
.LASF24:
	.string	"crypto_core_hsalsa20"
.LASF6:
	.string	"long long unsigned int"
.LASF26:
	.string	"crypto_stream_salsa20_xor"
.LASF21:
	.string	"crypto_secretbox_open_detached"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF37:
	.string	"opaque"
.LASF32:
	.string	"crypto_stream_salsa20"
.LASF4:
	.string	"short int"
.LASF18:
	.string	"mlen0"
.LASF35:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
