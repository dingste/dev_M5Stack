	.file	"crypto_box.c"
	.text
.Ltext0:
	.section	.text.crypto_box_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_box_seedbytes
	.type	crypto_box_seedbytes, @function
crypto_box_seedbytes:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"
	.loc 1 6 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 7 5 view .LVU1
	.loc 1 8 1 is_stmt 0 view .LVU2
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_box_seedbytes, .-crypto_box_seedbytes
	.section	.text.crypto_box_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_publickeybytes
	.type	crypto_box_publickeybytes, @function
crypto_box_publickeybytes:
.LFB17:
	entry	sp, 32
.LCFI1:
	movi.n	a2, 0x20
	retw.n
.LFE17:
	.size	crypto_box_publickeybytes, .-crypto_box_publickeybytes
	.section	.text.crypto_box_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_secretkeybytes
	.type	crypto_box_secretkeybytes, @function
crypto_box_secretkeybytes:
.LFB19:
	entry	sp, 32
.LCFI2:
	movi.n	a2, 0x20
	retw.n
.LFE19:
	.size	crypto_box_secretkeybytes, .-crypto_box_secretkeybytes
	.section	.text.crypto_box_beforenmbytes,"ax",@progbits
	.align	4
	.global	crypto_box_beforenmbytes
	.type	crypto_box_beforenmbytes, @function
crypto_box_beforenmbytes:
.LFB21:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x20
	retw.n
.LFE21:
	.size	crypto_box_beforenmbytes, .-crypto_box_beforenmbytes
	.section	.text.crypto_box_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_box_noncebytes
	.type	crypto_box_noncebytes, @function
crypto_box_noncebytes:
.LFB4:
	.loc 1 30 1 is_stmt 1 view -0
	.loc 1 30 1 is_stmt 0 view .LVU4
	entry	sp, 32
.LCFI4:
	.loc 1 31 5 is_stmt 1 view .LVU5
	.loc 1 32 1 is_stmt 0 view .LVU6
	movi.n	a2, 0x18
	retw.n
.LFE4:
	.size	crypto_box_noncebytes, .-crypto_box_noncebytes
	.section	.text.crypto_box_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_zerobytes
	.type	crypto_box_zerobytes, @function
crypto_box_zerobytes:
.LFB23:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0x20
	retw.n
.LFE23:
	.size	crypto_box_zerobytes, .-crypto_box_zerobytes
	.section	.text.crypto_box_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_boxzerobytes
	.type	crypto_box_boxzerobytes, @function
crypto_box_boxzerobytes:
.LFB25:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x10
	retw.n
.LFE25:
	.size	crypto_box_boxzerobytes, .-crypto_box_boxzerobytes
	.section	.text.crypto_box_macbytes,"ax",@progbits
	.align	4
	.global	crypto_box_macbytes
	.type	crypto_box_macbytes, @function
crypto_box_macbytes:
.LFB7:
	.loc 1 48 1 is_stmt 1 view -0
	.loc 1 48 1 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI7:
	.loc 1 49 5 is_stmt 1 view .LVU9
	.loc 1 50 1 is_stmt 0 view .LVU10
	movi.n	a2, 0x10
	retw.n
.LFE7:
	.size	crypto_box_macbytes, .-crypto_box_macbytes
	.section	.rodata.crypto_box_primitive.str1.1,"aMS",@progbits,1
.LC0:
	.string	"curve25519xsalsa20poly1305"
	.section	.text.crypto_box_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_box_primitive
	.type	crypto_box_primitive, @function
crypto_box_primitive:
.LFB8:
	.loc 1 54 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 55 5 view .LVU12
	.loc 1 56 1 is_stmt 0 view .LVU13
	l32r	a2, .LC1
	retw.n
.LFE8:
	.size	crypto_box_primitive, .-crypto_box_primitive
	.section	.text.crypto_box_seed_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_seed_keypair
	.type	crypto_box_seed_keypair, @function
crypto_box_seed_keypair:
.LVL0:
.LFB9:
	.loc 1 61 1 is_stmt 1 view -0
	.loc 1 61 1 is_stmt 0 view .LVU15
	entry	sp, 32
.LCFI9:
	.loc 1 62 5 is_stmt 1 view .LVU16
	.loc 1 62 12 is_stmt 0 view .LVU17
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_seed_keypair
.LVL1:
	.loc 1 63 1 view .LVU18
	mov.n	a2, a10
.LVL2:
	.loc 1 63 1 view .LVU19
	retw.n
.LFE9:
	.size	crypto_box_seed_keypair, .-crypto_box_seed_keypair
	.section	.text.crypto_box_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_keypair
	.type	crypto_box_keypair, @function
crypto_box_keypair:
.LVL3:
.LFB10:
	.loc 1 67 1 is_stmt 1 view -0
	.loc 1 67 1 is_stmt 0 view .LVU21
	entry	sp, 32
.LCFI10:
	.loc 1 68 5 is_stmt 1 view .LVU22
	.loc 1 68 12 is_stmt 0 view .LVU23
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_keypair
.LVL4:
	.loc 1 69 1 view .LVU24
	mov.n	a2, a10
.LVL5:
	.loc 1 69 1 view .LVU25
	retw.n
.LFE10:
	.size	crypto_box_keypair, .-crypto_box_keypair
	.section	.text.crypto_box_beforenm,"ax",@progbits
	.align	4
	.global	crypto_box_beforenm
	.type	crypto_box_beforenm, @function
crypto_box_beforenm:
.LVL6:
.LFB11:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU27
	entry	sp, 32
.LCFI11:
	.loc 1 75 5 is_stmt 1 view .LVU28
	.loc 1 75 12 is_stmt 0 view .LVU29
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL7:
	.loc 1 76 1 view .LVU30
	mov.n	a2, a10
.LVL8:
	.loc 1 76 1 view .LVU31
	retw.n
.LFE11:
	.size	crypto_box_beforenm, .-crypto_box_beforenm
	.section	.text.crypto_box_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_afternm
	.type	crypto_box_afternm, @function
crypto_box_afternm:
.LVL9:
.LFB12:
	.loc 1 82 1 is_stmt 1 view -0
	.loc 1 82 1 is_stmt 0 view .LVU33
	entry	sp, 32
.LCFI12:
	.loc 1 83 5 is_stmt 1 view .LVU34
	.loc 1 82 1 is_stmt 0 view .LVU35
	mov.n	a15, a7
	.loc 1 83 12 view .LVU36
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_afternm
.LVL10:
	.loc 1 84 1 view .LVU37
	mov.n	a2, a10
.LVL11:
	.loc 1 82 1 view .LVU38
	.loc 1 84 1 view .LVU39
	retw.n
.LFE12:
	.size	crypto_box_afternm, .-crypto_box_afternm
	.section	.text.crypto_box_open_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_open_afternm
	.type	crypto_box_open_afternm, @function
crypto_box_open_afternm:
.LVL12:
.LFB13:
	.loc 1 90 1 is_stmt 1 view -0
	.loc 1 90 1 is_stmt 0 view .LVU41
	entry	sp, 32
.LCFI13:
	.loc 1 91 5 is_stmt 1 view .LVU42
	.loc 1 90 1 is_stmt 0 view .LVU43
	mov.n	a15, a7
	.loc 1 91 12 view .LVU44
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_open_afternm
.LVL13:
	.loc 1 92 1 view .LVU45
	mov.n	a2, a10
.LVL14:
	.loc 1 90 1 view .LVU46
	.loc 1 92 1 view .LVU47
	retw.n
.LFE13:
	.size	crypto_box_open_afternm, .-crypto_box_open_afternm
	.section	.text.crypto_box,"ax",@progbits
	.align	4
	.global	crypto_box
	.type	crypto_box, @function
crypto_box:
.LVL15:
.LFB14:
	.loc 1 98 1 is_stmt 1 view -0
	.loc 1 98 1 is_stmt 0 view .LVU49
	entry	sp, 48
.LCFI14:
	.loc 1 99 5 is_stmt 1 view .LVU50
	.loc 1 99 12 is_stmt 0 view .LVU51
	l32i.n	a8, sp, 48
	.loc 1 98 1 view .LVU52
	mov.n	a15, a7
	.loc 1 99 12 view .LVU53
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305
.LVL16:
	.loc 1 100 1 view .LVU54
	mov.n	a2, a10
.LVL17:
	.loc 1 98 1 view .LVU55
	.loc 1 100 1 view .LVU56
	retw.n
.LFE14:
	.size	crypto_box, .-crypto_box
	.section	.text.crypto_box_open,"ax",@progbits
	.align	4
	.global	crypto_box_open
	.type	crypto_box_open, @function
crypto_box_open:
.LVL18:
.LFB15:
	.loc 1 106 1 is_stmt 1 view -0
	.loc 1 106 1 is_stmt 0 view .LVU58
	entry	sp, 48
.LCFI15:
	.loc 1 107 5 is_stmt 1 view .LVU59
	.loc 1 107 12 is_stmt 0 view .LVU60
	l32i.n	a8, sp, 48
	.loc 1 106 1 view .LVU61
	mov.n	a15, a7
	.loc 1 107 12 view .LVU62
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_open
.LVL19:
	.loc 1 108 1 view .LVU63
	mov.n	a2, a10
.LVL20:
	.loc 1 106 1 view .LVU64
	.loc 1 108 1 view .LVU65
	retw.n
.LFE15:
	.size	crypto_box_open, .-crypto_box_open
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4c1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x67
	.byte	0x20
	.4byte	0xe3
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x67
	.byte	0x38
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF2
	.byte	0x1
	.byte	0x68
	.byte	0x24
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x68
	.byte	0x3f
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x69
	.byte	0x26
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x69
	.byte	0x3f
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LVL19
	.4byte	0x470
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xc
	.4byte	0xe9
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.byte	0x1b
	.4byte	0xe3
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x5f
	.byte	0x33
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x60
	.byte	0x1f
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x60
	.byte	0x3a
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x61
	.byte	0x21
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x61
	.byte	0x3a
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LVL16
	.4byte	0x47c
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x225
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x57
	.byte	0x28
	.4byte	0xe3
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x57
	.byte	0x40
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF2
	.byte	0x1
	.byte	0x58
	.byte	0x2c
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x58
	.byte	0x47
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x59
	.byte	0x2e
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LVL13
	.4byte	0x488
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ab
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x4f
	.byte	0x23
	.4byte	0xe3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.byte	0x3b
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x50
	.byte	0x27
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x50
	.byte	0x42
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x51
	.byte	0x29
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LVL10
	.4byte	0x494
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30e
	.uleb128 0x6
	.string	"k"
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.4byte	0xe3
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x48
	.byte	0x3c
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x49
	.byte	0x2a
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LVL7
	.4byte	0x4a0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35f
	.uleb128 0x6
	.string	"pk"
	.byte	0x1
	.byte	0x42
	.byte	0x23
	.4byte	0xe3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x42
	.byte	0x36
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x4ac
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c4
	.uleb128 0x6
	.string	"pk"
	.byte	0x1
	.byte	0x3b
	.byte	0x28
	.4byte	0xe3
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x3b
	.byte	0x3b
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3c
	.byte	0x2e
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x4b8
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x3da
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xc
	.4byte	0x3e0
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x10
	.4byte	0x454
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x2
	.byte	0x3a
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x31
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.byte	0x59
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x2
	.byte	0x52
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x2
	.byte	0x4c
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x2
	.byte	0x48
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x2
	.byte	0x43
	.byte	0x5
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
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
.LASF16:
	.string	"crypto_box_macbytes"
.LASF33:
	.string	"size_t"
.LASF27:
	.string	"crypto_box_curve25519xsalsa20poly1305_beforenm"
.LASF23:
	.string	"crypto_box_curve25519xsalsa20poly1305_open"
.LASF28:
	.string	"crypto_box_curve25519xsalsa20poly1305_keypair"
.LASF22:
	.string	"crypto_box_publickeybytes"
.LASF2:
	.string	"clen"
.LASF5:
	.string	"crypto_box_open"
.LASF34:
	.string	"crypto_box_seedbytes"
.LASF19:
	.string	"crypto_box_noncebytes"
.LASF32:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF20:
	.string	"crypto_box_beforenmbytes"
.LASF11:
	.string	"crypto_box_keypair"
.LASF29:
	.string	"crypto_box_curve25519xsalsa20poly1305_seed_keypair"
.LASF6:
	.string	"crypto_box"
.LASF4:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"crypto_box_curve25519xsalsa20poly1305"
.LASF14:
	.string	"char"
.LASF12:
	.string	"crypto_box_seed_keypair"
.LASF31:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"
.LASF15:
	.string	"crypto_box_primitive"
.LASF26:
	.string	"crypto_box_curve25519xsalsa20poly1305_afternm"
.LASF7:
	.string	"mlen"
.LASF13:
	.string	"seed"
.LASF8:
	.string	"crypto_box_open_afternm"
.LASF10:
	.string	"crypto_box_beforenm"
.LASF17:
	.string	"crypto_box_boxzerobytes"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"crypto_box_afternm"
.LASF30:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"crypto_box_curve25519xsalsa20poly1305_open_afternm"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"crypto_box_secretkeybytes"
.LASF18:
	.string	"crypto_box_zerobytes"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
