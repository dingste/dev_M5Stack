	.file	"box_curve25519xsalsa20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_box_curve25519xsalsa20poly1305_seed_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_seed_keypair
	.type	crypto_box_curve25519xsalsa20poly1305_seed_keypair, @function
crypto_box_curve25519xsalsa20poly1305_seed_keypair:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/curve25519xsalsa20poly1305/box_curve25519xsalsa20poly1305.c"
	.loc 1 15 0
.LVL0:
	entry	sp, 96
.LCFI0:
	.loc 1 18 0
	l32r	a13, .LC0+4
	l32r	a12, .LC0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512
.LVL1:
	.loc 1 19 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL2:
	.loc 1 20 0
	mov.n	a10, sp
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL3:
	.loc 1 22 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_curve25519_base
.LVL4:
	.loc 1 23 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE0:
	.size	crypto_box_curve25519xsalsa20poly1305_seed_keypair, .-crypto_box_curve25519xsalsa20poly1305_seed_keypair
	.section	.text.crypto_box_curve25519xsalsa20poly1305_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_keypair
	.type	crypto_box_curve25519xsalsa20poly1305_keypair, @function
crypto_box_curve25519xsalsa20poly1305_keypair:
.LFB1:
	.loc 1 28 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 29 0
	mov.n	a10, a3
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL7:
	.loc 1 31 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_curve25519_base
.LVL8:
	.loc 1 32 0
	mov.n	a2, a10
.LVL9:
	retw.n
.LFE1:
	.size	crypto_box_curve25519xsalsa20poly1305_keypair, .-crypto_box_curve25519xsalsa20poly1305_keypair
	.section	.text.crypto_box_curve25519xsalsa20poly1305_beforenm,"ax",@progbits
	.literal_position
	.literal .LC1, zero$2567
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_beforenm
	.type	crypto_box_curve25519xsalsa20poly1305_beforenm, @function
crypto_box_curve25519xsalsa20poly1305_beforenm:
.LFB2:
	.loc 1 38 0
.LVL10:
	entry	sp, 64
.LCFI2:
	.loc 1 42 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_scalarmult_curve25519
.LVL11:
	.loc 1 43 0
	movi.n	a8, -1
	.loc 1 42 0
	bnez.n	a10, .L4
	.loc 1 45 0
	l32r	a11, .LC1
	mov.n	a13, a10
	mov.n	a12, sp
	mov.n	a10, a2
	call8	crypto_core_hsalsa20
.LVL12:
	mov.n	a8, a10
.L4:
	.loc 1 46 0
	mov.n	a2, a8
.LVL13:
	retw.n
.LFE2:
	.size	crypto_box_curve25519xsalsa20poly1305_beforenm, .-crypto_box_curve25519xsalsa20poly1305_beforenm
	.section	.text.crypto_box_curve25519xsalsa20poly1305_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_afternm
	.type	crypto_box_curve25519xsalsa20poly1305_afternm, @function
crypto_box_curve25519xsalsa20poly1305_afternm:
.LFB3:
	.loc 1 54 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 54 0
	mov.n	a15, a7
	.loc 1 55 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305
.LVL15:
	.loc 1 56 0
	mov.n	a2, a10
.LVL16:
	.loc 1 54 0
	.loc 1 56 0
	retw.n
.LFE3:
	.size	crypto_box_curve25519xsalsa20poly1305_afternm, .-crypto_box_curve25519xsalsa20poly1305_afternm
	.section	.text.crypto_box_curve25519xsalsa20poly1305_open_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_open_afternm
	.type	crypto_box_curve25519xsalsa20poly1305_open_afternm, @function
crypto_box_curve25519xsalsa20poly1305_open_afternm:
.LFB4:
	.loc 1 64 0
.LVL17:
	entry	sp, 32
.LCFI4:
	.loc 1 64 0
	mov.n	a15, a7
	.loc 1 65 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305_open
.LVL18:
	.loc 1 66 0
	mov.n	a2, a10
.LVL19:
	.loc 1 64 0
	.loc 1 66 0
	retw.n
.LFE4:
	.size	crypto_box_curve25519xsalsa20poly1305_open_afternm, .-crypto_box_curve25519xsalsa20poly1305_open_afternm
	.section	.text.crypto_box_curve25519xsalsa20poly1305,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305
	.type	crypto_box_curve25519xsalsa20poly1305, @function
crypto_box_curve25519xsalsa20poly1305:
.LFB5:
	.loc 1 74 0
.LVL20:
	entry	sp, 64
.LCFI5:
	.loc 1 78 0
	l32i	a12, sp, 64
	.loc 1 74 0
	mov.n	a11, a7
	.loc 1 78 0
	mov.n	a10, sp
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL21:
	.loc 1 74 0
	mov.n	a7, a2
.LVL22:
	.loc 1 79 0
	movi.n	a2, -1
.LVL23:
	.loc 1 78 0
	bnez.n	a10, .L9
.LVL24:
.LBB6:
.LBB7:
	.loc 1 55 0
	mov.n	a11, a3
	mov.n	a15, sp
.LVL25:
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a7
	call8	crypto_secretbox_xsalsa20poly1305
.LVL26:
	mov.n	a2, a10
.LBE7:
.LBE6:
	.loc 1 82 0
	movi.n	a11, 0x20
	mov.n	a10, sp
.LVL27:
	call8	sodium_memzero
.LVL28:
.L9:
	.loc 1 85 0
	retw.n
.LFE5:
	.size	crypto_box_curve25519xsalsa20poly1305, .-crypto_box_curve25519xsalsa20poly1305
	.section	.text.crypto_box_curve25519xsalsa20poly1305_open,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_open
	.type	crypto_box_curve25519xsalsa20poly1305_open, @function
crypto_box_curve25519xsalsa20poly1305_open:
.LFB6:
	.loc 1 91 0
.LVL29:
	entry	sp, 64
.LCFI6:
	.loc 1 95 0
	l32i	a12, sp, 64
	.loc 1 91 0
	mov.n	a11, a7
	.loc 1 95 0
	mov.n	a10, sp
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL30:
	.loc 1 91 0
	mov.n	a7, a2
.LVL31:
	.loc 1 96 0
	movi.n	a2, -1
.LVL32:
	.loc 1 95 0
	bnez.n	a10, .L12
.LVL33:
.LBB8:
.LBB9:
	.loc 1 65 0
	mov.n	a11, a3
	mov.n	a15, sp
.LVL34:
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a7
	call8	crypto_secretbox_xsalsa20poly1305_open
.LVL35:
	mov.n	a2, a10
.LBE9:
.LBE8:
	.loc 1 99 0
	movi.n	a11, 0x20
	mov.n	a10, sp
.LVL36:
	call8	sodium_memzero
.LVL37:
.L12:
	.loc 1 102 0
	retw.n
.LFE6:
	.size	crypto_box_curve25519xsalsa20poly1305_open, .-crypto_box_curve25519xsalsa20poly1305_open
	.section	.text.crypto_box_curve25519xsalsa20poly1305_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_seedbytes
	.type	crypto_box_curve25519xsalsa20poly1305_seedbytes, @function
crypto_box_curve25519xsalsa20poly1305_seedbytes:
.LFB24:
	entry	sp, 32
.LCFI7:
	movi.n	a2, 0x20
	retw.n
.LFE24:
	.size	crypto_box_curve25519xsalsa20poly1305_seedbytes, .-crypto_box_curve25519xsalsa20poly1305_seedbytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_publickeybytes
	.type	crypto_box_curve25519xsalsa20poly1305_publickeybytes, @function
crypto_box_curve25519xsalsa20poly1305_publickeybytes:
.LFB22:
	entry	sp, 32
.LCFI8:
	movi.n	a2, 0x20
	retw.n
.LFE22:
	.size	crypto_box_curve25519xsalsa20poly1305_publickeybytes, .-crypto_box_curve25519xsalsa20poly1305_publickeybytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_secretkeybytes
	.type	crypto_box_curve25519xsalsa20poly1305_secretkeybytes, @function
crypto_box_curve25519xsalsa20poly1305_secretkeybytes:
.LFB20:
	entry	sp, 32
.LCFI9:
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	crypto_box_curve25519xsalsa20poly1305_secretkeybytes, .-crypto_box_curve25519xsalsa20poly1305_secretkeybytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_beforenmbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_beforenmbytes
	.type	crypto_box_curve25519xsalsa20poly1305_beforenmbytes, @function
crypto_box_curve25519xsalsa20poly1305_beforenmbytes:
.LFB18:
	entry	sp, 32
.LCFI10:
	movi.n	a2, 0x20
	retw.n
.LFE18:
	.size	crypto_box_curve25519xsalsa20poly1305_beforenmbytes, .-crypto_box_curve25519xsalsa20poly1305_beforenmbytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_noncebytes
	.type	crypto_box_curve25519xsalsa20poly1305_noncebytes, @function
crypto_box_curve25519xsalsa20poly1305_noncebytes:
.LFB11:
	.loc 1 130 0
	.loc 1 130 0
	entry	sp, 32
.LCFI11:
	.loc 1 132 0
	movi.n	a2, 0x18
	retw.n
.LFE11:
	.size	crypto_box_curve25519xsalsa20poly1305_noncebytes, .-crypto_box_curve25519xsalsa20poly1305_noncebytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_zerobytes
	.type	crypto_box_curve25519xsalsa20poly1305_zerobytes, @function
crypto_box_curve25519xsalsa20poly1305_zerobytes:
.LFB12:
	.loc 1 136 0
	entry	sp, 32
.LCFI12:
	.loc 1 138 0
	movi.n	a2, 0x20
	retw.n
.LFE12:
	.size	crypto_box_curve25519xsalsa20poly1305_zerobytes, .-crypto_box_curve25519xsalsa20poly1305_zerobytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_boxzerobytes
	.type	crypto_box_curve25519xsalsa20poly1305_boxzerobytes, @function
crypto_box_curve25519xsalsa20poly1305_boxzerobytes:
.LFB16:
	entry	sp, 32
.LCFI13:
	movi.n	a2, 0x10
	retw.n
.LFE16:
	.size	crypto_box_curve25519xsalsa20poly1305_boxzerobytes, .-crypto_box_curve25519xsalsa20poly1305_boxzerobytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_macbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_macbytes
	.type	crypto_box_curve25519xsalsa20poly1305_macbytes, @function
crypto_box_curve25519xsalsa20poly1305_macbytes:
.LFB14:
	.loc 1 148 0
	.loc 1 148 0
	entry	sp, 32
.LCFI14:
	.loc 1 150 0
	movi.n	a2, 0x10
	retw.n
.LFE14:
	.size	crypto_box_curve25519xsalsa20poly1305_macbytes, .-crypto_box_curve25519xsalsa20poly1305_macbytes
	.section	.rodata.zero$2567,"a",@progbits
	.type	zero$2567, @object
	.size	zero$2567, 16
zero$2567:
	.zero	16
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
	.uleb128 0x60
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
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
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
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6a1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x31
	.4byte	0x21
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x31
	.4byte	0x79
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x32
	.4byte	0xc6
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x33
	.4byte	0x5d
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x34
	.4byte	0xc6
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x35
	.4byte	0xc6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x9
	.4byte	0x48
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3b
	.4byte	0x21
	.byte	0x1
	.4byte	0x111
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x3b
	.4byte	0x79
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x3c
	.4byte	0xc6
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3d
	.4byte	0x5d
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc6
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x3f
	.4byte	0xc6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.4byte	0x79
	.4byte	.LLST0
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0xd
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.4byte	0x1ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x643
	.4byte	0x17b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x64e
	.4byte	0x19c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x657
	.4byte	0x1b7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x662
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
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x1de
	.uleb128 0x13
	.4byte	0x6b
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x242
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0x1a
	.4byte	0x79
	.4byte	.LLST1
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x66d
	.4byte	0x22b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x662
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
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dd
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.byte	0x23
	.4byte	0x79
	.4byte	.LLST2
	.uleb128 0xc
	.string	"pk"
	.byte	0x1
	.byte	0x24
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0x25
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.4byte	0x2ed
	.uleb128 0x5
	.byte	0x3
	.4byte	zero$2567
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x28
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x678
	.4byte	0x2bd
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x683
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	zero$2567
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x2ed
	.uleb128 0x13
	.4byte	0x6b
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x2dd
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x302
	.uleb128 0x13
	.4byte	0x6b
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	0x86
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0x16
	.4byte	0x96
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	0xa8
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x17
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x68e
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
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xd1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c2
	.uleb128 0x16
	.4byte	0xe1
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0xea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	0xf3
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x17
	.4byte	0xfe
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	0x107
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x699
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
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x45
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4dd
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x45
	.4byte	0x79
	.4byte	.LLST5
	.uleb128 0xc
	.string	"m"
	.byte	0x1
	.byte	0x45
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x46
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x47
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0x48
	.4byte	0xc6
	.4byte	.LLST6
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0x49
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x4b
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x4c
	.4byte	0x21
	.uleb128 0x19
	.4byte	0x86
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x51
	.4byte	0x4a5
	.uleb128 0x16
	.4byte	0xbc
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	0xb3
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	0xa8
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	0x9f
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	0x96
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x68e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x242
	.4byte	0x4c6
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x657
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x58
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f8
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x59
	.4byte	0x79
	.4byte	.LLST12
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x59
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x59
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc6
	.4byte	.LLST13
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x5c
	.4byte	0x2f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.4byte	0x21
	.uleb128 0x19
	.4byte	0xd1
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x62
	.4byte	0x5c0
	.uleb128 0x16
	.4byte	0x107
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	0xfe
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	0xf3
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	0xea
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	0xe1
	.4byte	.LLST18
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x699
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL30
	.4byte	0x242
	.4byte	0x5e1
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL37
	.4byte	0x657
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x81
	.4byte	0x28
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF23
	.byte	0x1
	.byte	0x87
	.4byte	0x28
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x60d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF24
	.byte	0x1
	.byte	0x93
	.4byte	0x28
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x628
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.byte	0x26
	.uleb128 0x1e
	.4byte	.LASF37
	.4byte	.LASF37
	.uleb128 0x1d
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x16
	.uleb128 0x1d
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1a
	.uleb128 0x1d
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x21
	.uleb128 0x1d
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x4
	.byte	0x15
	.uleb128 0x1d
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x1c
	.uleb128 0x1d
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x25
	.uleb128 0x1d
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2c
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26-1
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"size_t"
.LASF14:
	.string	"clen"
.LASF23:
	.string	"crypto_box_curve25519xsalsa20poly1305_zerobytes"
.LASF31:
	.string	"crypto_secretbox_xsalsa20poly1305"
.LASF21:
	.string	"crypto_box_curve25519xsalsa20poly1305"
.LASF24:
	.string	"crypto_box_curve25519xsalsa20poly1305_macbytes"
.LASF11:
	.string	"mlen"
.LASF20:
	.string	"zero"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"crypto_box_curve25519xsalsa20poly1305_afternm"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF16:
	.string	"crypto_box_curve25519xsalsa20poly1305_seed_keypair"
.LASF13:
	.string	"crypto_box_curve25519xsalsa20poly1305_open_afternm"
.LASF29:
	.string	"crypto_scalarmult_curve25519"
.LASF28:
	.string	"randombytes_buf"
.LASF32:
	.string	"crypto_secretbox_xsalsa20poly1305_open"
.LASF0:
	.string	"unsigned int"
.LASF30:
	.string	"crypto_core_hsalsa20"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"crypto_box_curve25519xsalsa20poly1305_open"
.LASF19:
	.string	"hash"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"crypto_box_curve25519xsalsa20poly1305_noncebytes"
.LASF37:
	.string	"memcpy"
.LASF34:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/curve25519xsalsa20poly1305/box_curve25519xsalsa20poly1305.c"
.LASF25:
	.string	"crypto_hash_sha512"
.LASF27:
	.string	"crypto_scalarmult_curve25519_base"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"seed"
.LASF17:
	.string	"crypto_box_curve25519xsalsa20poly1305_keypair"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"crypto_box_curve25519xsalsa20poly1305_beforenm"
.LASF26:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
