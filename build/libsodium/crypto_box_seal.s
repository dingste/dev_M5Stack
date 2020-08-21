	.file	"crypto_box_seal.c"
	.text
.Ltext0:
	.section	.text._crypto_box_seal_nonce,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.type	_crypto_box_seal_nonce, @function
_crypto_box_seal_nonce:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_seal.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
	movi	a5, -0x1b0
	add.n	a5, sp, a5
	mov.n	a7, sp
.LCFI0:
	.loc 1 12 0
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	slli	a5, a5, 6
	.loc 1 15 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a13, 0x18
	mov.n	a10, a5
	call8	crypto_generichash_init
.LVL1:
	.loc 1 16 0
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_generichash_update
.LVL2:
	.loc 1 17 0
	l32r	a13, .LC0+4
	l32r	a12, .LC0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_generichash_update
.LVL3:
	.loc 1 18 0
	mov.n	a11, a2
	movi.n	a12, 0x18
	mov.n	a10, a5
	call8	crypto_generichash_final
.LVL4:
	.loc 1 21 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE12:
	.size	_crypto_box_seal_nonce, .-_crypto_box_seal_nonce
	.section	.text.crypto_box_seal,"ax",@progbits
	.align	4
	.global	crypto_box_seal
	.type	crypto_box_seal, @function
crypto_box_seal:
.LFB13:
	.loc 1 26 0
.LVL6:
	entry	sp, 160
.LCFI1:
	.loc 1 26 0
	s32i	a5, sp, 116
	.loc 1 32 0
	addi	a5, sp, 16
	mov.n	a11, a5
	addi	a10, sp, 48
	.loc 1 26 0
	s32i	a4, sp, 112
	.loc 1 32 0
	call8	crypto_box_keypair
.LVL7:
	.loc 1 26 0
	mov.n	a7, a2
	.loc 1 33 0
	movi.n	a2, -1
.LVL8:
	.loc 1 32 0
	bnez.n	a10, .L3
	.loc 1 35 0
	movi.n	a12, 0x20
	addi	a11, sp, 48
	mov.n	a10, a7
	call8	memcpy
.LVL9:
	.loc 1 36 0
	mov.n	a12, a6
	addi	a11, sp, 48
	addi	a10, sp, 80
	call8	_crypto_box_seal_nonce
.LVL10:
	.loc 1 37 0
	l32i	a12, sp, 112
	l32i	a13, sp, 116
	mov.n	a15, a6
	addi	a14, sp, 80
	mov.n	a11, a3
	s32i.n	a5, sp, 0
	addi	a10, a7, 32
	call8	crypto_box_easy
.LVL11:
	.loc 1 39 0
	movi.n	a11, 0x20
	.loc 1 37 0
	mov.n	a2, a10
.LVL12:
	.loc 1 39 0
	mov.n	a10, a5
	call8	sodium_memzero
.LVL13:
	.loc 1 40 0
	movi.n	a11, 0x20
	addi	a10, sp, 48
	call8	sodium_memzero
.LVL14:
	.loc 1 41 0
	movi.n	a11, 0x18
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL15:
.L3:
	.loc 1 44 0
	retw.n
.LFE13:
	.size	crypto_box_seal, .-crypto_box_seal
	.section	.text.crypto_box_seal_open,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_box_seal_open
	.type	crypto_box_seal_open, @function
crypto_box_seal_open:
.LFB14:
	.loc 1 50 0
.LVL16:
	entry	sp, 80
.LCFI2:
	.loc 1 50 0
	mov.n	a12, a6
	.loc 1 53 0
	bnez.n	a5, .L10
	movi.n	a8, 0x2f
	bgeu	a8, a4, .L11
.L10:
	.loc 1 56 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	_crypto_box_seal_nonce
.LVL17:
	.loc 1 59 0
	addi	a12, a4, -32
	movi.n	a13, 1
	bltu	a12, a4, .L8
	movi.n	a13, 0
.L8:
	addi.n	a5, a5, -1
	s32i.n	a7, sp, 0
	mov.n	a15, a3
	addi	a14, sp, 16
	add.n	a13, a13, a5
	addi	a11, a3, 32
	mov.n	a10, a2
	call8	crypto_box_open_easy
.LVL18:
	mov.n	a2, a10
.LVL19:
	retw.n
.LVL20:
.L11:
	.loc 1 54 0
	movi.n	a2, -1
.LVL21:
	.loc 1 62 0
	retw.n
.LFE14:
	.size	crypto_box_seal_open, .-crypto_box_seal_open
	.section	.text.crypto_box_sealbytes,"ax",@progbits
	.align	4
	.global	crypto_box_sealbytes
	.type	crypto_box_sealbytes, @function
crypto_box_sealbytes:
.LFB15:
	.loc 1 66 0
	entry	sp, 32
.LCFI3:
	.loc 1 68 0
	movi.n	a2, 0x30
	retw.n
.LFE15:
	.size	crypto_box_sealbytes, .-crypto_box_sealbytes
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x20
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
	.uleb128 0xa0
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
	.uleb128 0x50
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
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4af
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x33
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x73
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF18
	.2byte	0x165
	.byte	0x5
	.byte	0x17
	.4byte	0x104
	.uleb128 0x7
	.string	"h"
	.byte	0x5
	.byte	0x18
	.4byte	0x104
	.byte	0
	.uleb128 0x7
	.string	"t"
	.byte	0x5
	.byte	0x19
	.4byte	0x114
	.byte	0x40
	.uleb128 0x7
	.string	"f"
	.byte	0x5
	.byte	0x1a
	.4byte	0x114
	.byte	0x50
	.uleb128 0x7
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x124
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.4byte	0x28
	.2byte	0x160
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0x9c
	.2byte	0x164
	.byte	0
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x114
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x124
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x81
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1e
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x134
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa
	.4byte	0x21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xd
	.string	"pk1"
	.byte	0x1
	.byte	0xb
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"pk2"
	.byte	0x1
	.byte	0xb
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"st"
	.byte	0x1
	.byte	0xd
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x45c
	.4byte	0x1bc
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x467
	.4byte	0x1d6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x467
	.4byte	0x1f0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x472
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x212
	.uleb128 0x12
	.4byte	0x53
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37a
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x18
	.4byte	0x8f
	.4byte	.LLST1
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x18
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.byte	0x19
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"pk"
	.byte	0x1
	.byte	0x19
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1b
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.string	"epk"
	.byte	0x1
	.byte	0x1c
	.4byte	0x38a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.string	"esk"
	.byte	0x1
	.byte	0x1d
	.4byte	0x38a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x1e
	.4byte	0x21
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x47d
	.4byte	0x2bd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x488
	.4byte	0x2de
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x14a
	.4byte	0x300
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x491
	.4byte	0x32e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x49c
	.4byte	0x348
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x49c
	.4byte	0x363
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x49c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x38a
	.uleb128 0xa
	.4byte	0x81
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x39a
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x447
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0x2f
	.4byte	0x8f
	.4byte	.LLST3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x2f
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x30
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"pk"
	.byte	0x1
	.byte	0x31
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"sk"
	.byte	0x1
	.byte	0x31
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.4byte	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x14a
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x4a7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.byte	0x41
	.4byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.uleb128 0x19
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x41
	.uleb128 0x19
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0x34
	.uleb128 0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.uleb128 0x19
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
	.byte	0x37
	.uleb128 0x19
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x8
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3d
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE14
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
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF24:
	.string	"clen"
.LASF19:
	.string	"crypto_generichash_state"
.LASF21:
	.string	"mlen"
.LASF15:
	.string	"uint64_t"
.LASF22:
	.string	"crypto_box_seal"
.LASF32:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"crypto_box_keypair"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_seal.c"
.LASF29:
	.string	"crypto_box_easy"
.LASF20:
	.string	"nonce"
.LASF25:
	.string	"crypto_generichash_init"
.LASF31:
	.string	"crypto_box_open_easy"
.LASF0:
	.string	"unsigned int"
.LASF27:
	.string	"crypto_generichash_final"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF26:
	.string	"crypto_generichash_update"
.LASF35:
	.string	"crypto_box_sealbytes"
.LASF23:
	.string	"crypto_box_seal_open"
.LASF18:
	.string	"crypto_generichash_blake2b_state"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF36:
	.string	"memcpy"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF34:
	.string	"_crypto_box_seal_nonce"
.LASF16:
	.string	"buflen"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF17:
	.string	"last_node"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
