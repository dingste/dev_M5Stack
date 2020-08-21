	.file	"crypto_kx.c"
	.text
.Ltext0:
	.section	.text.crypto_kx_seed_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_kx_seed_keypair
	.type	crypto_kx_seed_keypair, @function
crypto_kx_seed_keypair:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kx/crypto_kx.c"
	.loc 1 15 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 16 0
	movi.n	a8, 0
	l32r	a14, .LC0
	l32r	a15, .LC0+4
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a12, a4
	movi.n	a11, 0x20
	mov.n	a10, a3
	call8	crypto_generichash
.LVL1:
	.loc 1 18 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_base
.LVL2:
	.loc 1 19 0
	mov.n	a2, a10
.LVL3:
	retw.n
.LFE12:
	.size	crypto_kx_seed_keypair, .-crypto_kx_seed_keypair
	.section	.text.crypto_kx_keypair,"ax",@progbits
	.align	4
	.global	crypto_kx_keypair
	.type	crypto_kx_keypair, @function
crypto_kx_keypair:
.LFB13:
	.loc 1 24 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 28 0
	mov.n	a10, a3
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL5:
	.loc 1 29 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_base
.LVL6:
	.loc 1 30 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE13:
	.size	crypto_kx_keypair, .-crypto_kx_keypair
	.section	.text.crypto_kx_client_session_keys,"ax",@progbits
	.literal_position
	.literal .LC3, 32, 0
	.align	4
	.global	crypto_kx_client_session_keys
	.type	crypto_kx_client_session_keys, @function
crypto_kx_client_session_keys:
.LFB14:
	.loc 1 38 0
.LVL8:
	entry	sp, 144
	mov.n	a7, sp
.LCFI2:
	.loc 1 38 0
	s32i	a4, a7, 100
	movi	a4, -0x1b0
.LVL9:
	add.n	a4, sp, a4
	movsp	sp, a4
	.loc 1 44 0
	mov.n	a8, a3
	movnez	a8, a2, a2
	.loc 1 38 0
	addi	a4, sp, 63
	.loc 1 50 0
	mov.n	a12, a6
	mov.n	a11, a5
	addi	a10, a7, 64
	.loc 1 38 0
	srli	a4, a4, 6
	.loc 1 44 0
	s32i	a8, a7, 96
.LVL10:
	.loc 1 50 0
	call8	crypto_scalarmult
.LVL11:
	.loc 1 48 0
	moveqz	a3, a2, a3
.LVL12:
	.loc 1 38 0
	slli	a4, a4, 6
	.loc 1 50 0
	mov.n	a2, a10
	bnez.n	a10, .L8
	.loc 1 54 0
	mov.n	a12, a10
	mov.n	a11, a10
	movi.n	a13, 0x40
	mov.n	a10, a4
	call8	crypto_generichash_init
.LVL13:
	.loc 1 55 0
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	addi	a11, a7, 64
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL14:
	.loc 1 56 0
	movi.n	a11, 0x20
	addi	a10, a7, 64
	call8	sodium_memzero
.LVL15:
	.loc 1 57 0
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	l32i	a11, a7, 100
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL16:
	.loc 1 58 0
	l32r	a13, .LC3+4
	l32r	a12, .LC3
	mov.n	a11, a6
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL17:
	.loc 1 59 0
	movi.n	a12, 0x40
	mov.n	a11, a7
	mov.n	a10, a4
	call8	crypto_generichash_final
.LVL18:
	.loc 1 60 0
	mov.n	a10, a4
	movi	a11, 0x165
	call8	sodium_memzero
.LVL19:
	l32i	a4, a7, 96
	mov.n	a6, a7
.LVL20:
	movi.n	a8, 0x20
	loop	a8, .L7_LEND
.LVL21:
.L7:
	.loc 1 62 0 discriminator 3
	l8ui	a9, a6, 0
	addi.n	a6, a6, 1
.LVL22:
	s8i	a9, a4, 0
	.loc 1 63 0 discriminator 3
	l8ui	a9, a6, 31
	addi.n	a4, a4, 1
	s8i	a9, a3, 0
.LVL23:
	addi.n	a3, a3, 1
	.L7_LEND:
	.loc 1 65 0
	movi.n	a11, 0x40
	mov.n	a10, a7
	call8	sodium_memzero
.LVL24:
	.loc 1 67 0
	retw.n
.LVL25:
.L8:
	.loc 1 51 0
	movi.n	a2, -1
	.loc 1 68 0
	retw.n
.LFE14:
	.size	crypto_kx_client_session_keys, .-crypto_kx_client_session_keys
	.section	.text.crypto_kx_server_session_keys,"ax",@progbits
	.literal_position
	.literal .LC4, 32, 0
	.align	4
	.global	crypto_kx_server_session_keys
	.type	crypto_kx_server_session_keys, @function
crypto_kx_server_session_keys:
.LFB15:
	.loc 1 76 0
.LVL26:
	entry	sp, 144
	mov.n	a7, sp
.LCFI3:
	.loc 1 76 0
	s32i	a4, a7, 100
	movi	a4, -0x1b0
.LVL27:
	add.n	a4, sp, a4
	movsp	sp, a4
	.loc 1 82 0
	mov.n	a8, a3
	movnez	a8, a2, a2
	.loc 1 76 0
	addi	a4, sp, 63
	.loc 1 88 0
	mov.n	a12, a6
	mov.n	a11, a5
	addi	a10, a7, 64
	.loc 1 76 0
	srli	a4, a4, 6
	.loc 1 82 0
	s32i	a8, a7, 96
.LVL28:
	.loc 1 88 0
	call8	crypto_scalarmult
.LVL29:
	.loc 1 86 0
	moveqz	a3, a2, a3
.LVL30:
	.loc 1 76 0
	slli	a4, a4, 6
	.loc 1 88 0
	mov.n	a2, a10
	bnez.n	a10, .L15
	.loc 1 92 0
	mov.n	a12, a10
	mov.n	a11, a10
	movi.n	a13, 0x40
	mov.n	a10, a4
	call8	crypto_generichash_init
.LVL31:
	.loc 1 93 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	addi	a11, a7, 64
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL32:
	.loc 1 94 0
	movi.n	a11, 0x20
	addi	a10, a7, 64
	call8	sodium_memzero
.LVL33:
	.loc 1 95 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	mov.n	a11, a6
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL34:
	.loc 1 96 0
	l32r	a13, .LC4+4
	l32r	a12, .LC4
	l32i	a11, a7, 100
	mov.n	a10, a4
	call8	crypto_generichash_update
.LVL35:
	.loc 1 97 0
	movi.n	a12, 0x40
	mov.n	a11, a7
	mov.n	a10, a4
	call8	crypto_generichash_final
.LVL36:
	.loc 1 98 0
	mov.n	a10, a4
	movi	a11, 0x165
	call8	sodium_memzero
.LVL37:
	l32i	a4, a7, 96
	mov.n	a6, a7
.LVL38:
	movi.n	a8, 0x20
	loop	a8, .L14_LEND
.LVL39:
.L14:
	.loc 1 100 0 discriminator 3
	l8ui	a9, a6, 0
	addi.n	a6, a6, 1
.LVL40:
	s8i	a9, a3, 0
	.loc 1 101 0 discriminator 3
	l8ui	a9, a6, 31
	addi.n	a3, a3, 1
	s8i	a9, a4, 0
.LVL41:
	addi.n	a4, a4, 1
	.L14_LEND:
	.loc 1 103 0
	movi.n	a11, 0x40
	mov.n	a10, a7
	call8	sodium_memzero
.LVL42:
	.loc 1 105 0
	retw.n
.LVL43:
.L15:
	.loc 1 89 0
	movi.n	a2, -1
	.loc 1 106 0
	retw.n
.LFE15:
	.size	crypto_kx_server_session_keys, .-crypto_kx_server_session_keys
	.section	.text.crypto_kx_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_publickeybytes
	.type	crypto_kx_publickeybytes, @function
crypto_kx_publickeybytes:
.LFB26:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0x20
	retw.n
.LFE26:
	.size	crypto_kx_publickeybytes, .-crypto_kx_publickeybytes
	.section	.text.crypto_kx_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_secretkeybytes
	.type	crypto_kx_secretkeybytes, @function
crypto_kx_secretkeybytes:
.LFB24:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0x20
	retw.n
.LFE24:
	.size	crypto_kx_secretkeybytes, .-crypto_kx_secretkeybytes
	.section	.text.crypto_kx_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_kx_seedbytes
	.type	crypto_kx_seedbytes, @function
crypto_kx_seedbytes:
.LFB22:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x20
	retw.n
.LFE22:
	.size	crypto_kx_seedbytes, .-crypto_kx_seedbytes
	.section	.text.crypto_kx_sessionkeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_sessionkeybytes
	.type	crypto_kx_sessionkeybytes, @function
crypto_kx_sessionkeybytes:
.LFB19:
	.loc 1 128 0
	.loc 1 128 0
	entry	sp, 32
.LCFI7:
	.loc 1 130 0
	movi.n	a2, 0x20
	retw.n
.LFE19:
	.size	crypto_kx_sessionkeybytes, .-crypto_kx_sessionkeybytes
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"x25519blake2b"
	.section	.text.crypto_kx_primitive,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.align	4
	.global	crypto_kx_primitive
	.type	crypto_kx_primitive, @function
crypto_kx_primitive:
.LFB20:
	.loc 1 134 0
	entry	sp, 32
.LCFI8:
	.loc 1 136 0
	l32r	a2, .LC6
	retw.n
.LFE20:
	.size	crypto_kx_primitive, .-crypto_kx_primitive
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
	.uleb128 0x30
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
	.uleb128 0x20
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x90
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x90
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x622
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
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
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF18
	.2byte	0x165
	.byte	0x5
	.byte	0x17
	.4byte	0x10f
	.uleb128 0x8
	.string	"h"
	.byte	0x5
	.byte	0x18
	.4byte	0x10f
	.byte	0
	.uleb128 0x8
	.string	"t"
	.byte	0x5
	.byte	0x19
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x8
	.string	"f"
	.byte	0x5
	.byte	0x1a
	.4byte	0x11f
	.byte	0x50
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x12f
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.4byte	0x28
	.2byte	0x160
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0x7a
	.2byte	0x164
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x12f
	.uleb128 0xb
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0x97
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1e
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x13f
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0xd
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0xd
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe
	.4byte	0x1d8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x5cd
	.4byte	0x1c1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x5d8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x247
	.uleb128 0xd
	.string	"pk"
	.byte	0x1
	.byte	0x16
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x17
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0x5e3
	.4byte	0x230
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x5d8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x21
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0xd
	.string	"rx"
	.byte	0x1
	.byte	0x21
	.4byte	0xa5
	.4byte	.LLST2
	.uleb128 0xd
	.string	"tx"
	.byte	0x1
	.byte	0x22
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x23
	.4byte	0x1d8
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x24
	.4byte	0x1d8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x25
	.4byte	0x1d8
	.4byte	.LLST5
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x27
	.4byte	0x14a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x28
	.4byte	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x29
	.4byte	0x3f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.4byte	0x21
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x5ee
	.4byte	0x2fd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x5f9
	.4byte	0x323
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x604
	.4byte	0x33e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x60f
	.4byte	0x359
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x604
	.4byte	0x374
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL17
	.4byte	0x604
	.4byte	0x38e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x61a
	.4byte	0x3af
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL19
	.4byte	0x60f
	.4byte	0x3ca
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.uleb128 0x12
	.4byte	.LVL24
	.4byte	0x60f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x3f2
	.uleb128 0xb
	.4byte	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x402
	.uleb128 0xb
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59d
	.uleb128 0xd
	.string	"rx"
	.byte	0x1
	.byte	0x47
	.4byte	0xa5
	.4byte	.LLST7
	.uleb128 0xd
	.string	"tx"
	.byte	0x1
	.byte	0x48
	.4byte	0xa5
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x49
	.4byte	0x1d8
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4a
	.4byte	0x1d8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4b
	.4byte	0x1d8
	.4byte	.LLST10
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.byte	0x4d
	.4byte	0x14a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x4e
	.4byte	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4f
	.4byte	0x3f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x50
	.4byte	0x21
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LVL29
	.4byte	0x5ee
	.4byte	0x4b8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0x5f9
	.4byte	0x4de
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL32
	.4byte	0x604
	.4byte	0x4f9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	0x60f
	.4byte	0x514
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL34
	.4byte	0x604
	.4byte	0x52e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL35
	.4byte	0x604
	.4byte	0x549
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL36
	.4byte	0x61a
	.4byte	0x56a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL37
	.4byte	0x60f
	.4byte	0x585
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0x60f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7f
	.4byte	0x28
	.byte	0x1
	.uleb128 0x18
	.4byte	0x59d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x85
	.4byte	0xb2
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x32
	.uleb128 0x1a
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x1a
	.uleb128 0x1a
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.byte	0x21
	.uleb128 0x1a
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1d
	.uleb128 0x1a
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x37
	.uleb128 0x1a
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x9
	.byte	0x16
	.uleb128 0x1a
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11-1
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x90
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29-1
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x90
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8f
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF23:
	.string	"crypto_kx_client_session_keys"
.LASF19:
	.string	"crypto_generichash_state"
.LASF27:
	.string	"keys"
.LASF24:
	.string	"client_pk"
.LASF26:
	.string	"server_pk"
.LASF11:
	.string	"uint64_t"
.LASF33:
	.string	"crypto_scalarmult"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF40:
	.string	"crypto_kx_sessionkeybytes"
.LASF30:
	.string	"crypto_generichash"
.LASF34:
	.string	"crypto_generichash_init"
.LASF32:
	.string	"randombytes_buf"
.LASF17:
	.string	"last_node"
.LASF20:
	.string	"seed"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"crypto_generichash_final"
.LASF41:
	.string	"crypto_kx_primitive"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF35:
	.string	"crypto_generichash_update"
.LASF18:
	.string	"crypto_generichash_blake2b_state"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF25:
	.string	"client_sk"
.LASF29:
	.string	"server_sk"
.LASF22:
	.string	"crypto_kx_keypair"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF31:
	.string	"crypto_scalarmult_base"
.LASF16:
	.string	"buflen"
.LASF12:
	.string	"long int"
.LASF39:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kx/crypto_kx.c"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"crypto_kx_seed_keypair"
.LASF28:
	.string	"crypto_kx_server_session_keys"
.LASF36:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
