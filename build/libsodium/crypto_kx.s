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
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kx/crypto_kx.c"
	.loc 1 15 1 view -0
	.loc 1 15 1 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 16 5 is_stmt 1 view .LVU2
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
	.loc 1 18 5 view .LVU3
	.loc 1 18 12 is_stmt 0 view .LVU4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_base
.LVL2:
	.loc 1 19 1 view .LVU5
	mov.n	a2, a10
.LVL3:
	.loc 1 19 1 view .LVU6
	retw.n
.LFE12:
	.size	crypto_kx_seed_keypair, .-crypto_kx_seed_keypair
	.section	.text.crypto_kx_keypair,"ax",@progbits
	.align	4
	.global	crypto_kx_keypair
	.type	crypto_kx_keypair, @function
crypto_kx_keypair:
.LVL4:
.LFB13:
	.loc 1 24 1 is_stmt 1 view -0
	.loc 1 24 1 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI1:
	.loc 1 25 5 is_stmt 1 view .LVU9
	.loc 1 26 5 view .LVU10
	.loc 1 28 5 view .LVU11
	mov.n	a10, a3
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL5:
	.loc 1 29 5 view .LVU12
	.loc 1 29 12 is_stmt 0 view .LVU13
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_base
.LVL6:
	.loc 1 30 1 view .LVU14
	mov.n	a2, a10
.LVL7:
	.loc 1 30 1 view .LVU15
	retw.n
.LFE13:
	.size	crypto_kx_keypair, .-crypto_kx_keypair
	.section	.text.crypto_kx_client_session_keys,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_kx_client_session_keys
	.type	crypto_kx_client_session_keys, @function
crypto_kx_client_session_keys:
.LVL8:
.LFB14:
	.loc 1 38 1 is_stmt 1 view -0
	.loc 1 38 1 is_stmt 0 view .LVU17
	entry	sp, 544
.LCFI2:
	.loc 1 39 5 is_stmt 1 view .LVU18
	.loc 1 40 5 view .LVU19
	.loc 1 41 5 view .LVU20
	.loc 1 42 5 view .LVU21
	.loc 1 44 5 view .LVU22
	.loc 1 38 1 is_stmt 0 view .LVU23
	addi	a7, sp, 63
	srli	a7, a7, 6
	slli	a7, a7, 6
	.loc 1 44 8 view .LVU24
	bnez.n	a2, .L4
	mov.n	a2, a3
.LVL9:
.L4:
	.loc 1 47 5 is_stmt 1 view .LVU25
	.loc 1 47 8 is_stmt 0 view .LVU26
	bnez.n	a3, .L5
	.loc 1 48 12 view .LVU27
	mov.n	a3, a2
.LVL10:
.L5:
	.loc 1 50 5 is_stmt 1 view .LVU28
	.loc 1 50 9 is_stmt 0 view .LVU29
	movi	a10, 0x1e0
	mov.n	a11, a5
	mov.n	a12, a6
	add.n	a10, a10, sp
	call8	crypto_scalarmult
.LVL11:
	mov.n	a5, a10
.LVL12:
	.loc 1 50 8 view .LVU30
	bnez.n	a10, .L8
	.loc 1 53 5 is_stmt 1 view .LVU31
	.loc 1 54 5 view .LVU32
	mov.n	a12, a10
	mov.n	a11, a10
	movi.n	a13, 0x40
	mov.n	a10, a7
	call8	crypto_generichash_init
.LVL13:
	.loc 1 55 5 view .LVU33
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x1e0
	add.n	a11, a11, sp
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL14:
	.loc 1 56 5 view .LVU34
	movi	a10, 0x1e0
	movi.n	a11, 0x20
	add.n	a10, a10, sp
	call8	sodium_memzero
.LVL15:
	.loc 1 57 5 view .LVU35
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, a4
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL16:
	.loc 1 58 5 view .LVU36
	l32r	a13, .LC1+4
	l32r	a12, .LC1
	mov.n	a11, a6
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL17:
	.loc 1 59 5 view .LVU37
	movi	a11, 0x1a0
	movi.n	a12, 0x40
	add.n	a11, a11, sp
	mov.n	a10, a7
	call8	crypto_generichash_final
.LVL18:
	.loc 1 60 5 view .LVU38
	mov.n	a10, a7
	movi	a11, 0x165
	movi	a4, 0x1a0
.LVL19:
	.loc 1 60 5 is_stmt 0 view .LVU39
	call8	sodium_memzero
.LVL20:
	.loc 1 61 5 is_stmt 1 view .LVU40
	.loc 1 61 5 is_stmt 0 view .LVU41
	add.n	a4, a4, sp
	mov.n	a7, a4
	.loc 1 61 12 view .LVU42
	mov.n	a8, a5
	movi.n	a9, 0x20
	loop	a9, .L7_LEND
.LVL21:
.L7:
	.loc 1 62 9 is_stmt 1 discriminator 3 view .LVU43
	.loc 1 62 15 is_stmt 0 discriminator 3 view .LVU44
	l8ui	a6, a7, 0
	add.n	a4, a2, a8
	s8i	a6, a4, 0
	.loc 1 63 9 is_stmt 1 discriminator 3 view .LVU45
	.loc 1 63 15 is_stmt 0 discriminator 3 view .LVU46
	l8ui	a6, a7, 32
	add.n	a4, a3, a8
	s8i	a6, a4, 0
	.loc 1 61 26 discriminator 3 view .LVU47
	addi.n	a8, a8, 1
.LVL22:
	.loc 1 61 26 discriminator 3 view .LVU48
	addi.n	a7, a7, 1
	.L7_LEND:
	.loc 1 65 5 is_stmt 1 view .LVU49
	movi	a10, 0x1a0
	movi.n	a11, 0x40
	add.n	a10, sp, a10
	call8	sodium_memzero
.LVL23:
	.loc 1 67 5 view .LVU50
	.loc 1 67 12 is_stmt 0 view .LVU51
	j	.L3
.LVL24:
.L8:
	.loc 1 51 16 view .LVU52
	movi.n	a5, -1
.LVL25:
.L3:
	.loc 1 68 1 view .LVU53
	mov.n	a2, a5
.LVL26:
	.loc 1 68 1 view .LVU54
	retw.n
.LFE14:
	.size	crypto_kx_client_session_keys, .-crypto_kx_client_session_keys
	.section	.text.crypto_kx_server_session_keys,"ax",@progbits
	.literal_position
	.literal .LC2, 32, 0
	.align	4
	.global	crypto_kx_server_session_keys
	.type	crypto_kx_server_session_keys, @function
crypto_kx_server_session_keys:
.LVL27:
.LFB15:
	.loc 1 76 1 is_stmt 1 view -0
	.loc 1 76 1 is_stmt 0 view .LVU56
	entry	sp, 544
.LCFI3:
	.loc 1 77 5 is_stmt 1 view .LVU57
	.loc 1 78 5 view .LVU58
	.loc 1 79 5 view .LVU59
	.loc 1 80 5 view .LVU60
	.loc 1 82 5 view .LVU61
	.loc 1 76 1 is_stmt 0 view .LVU62
	addi	a7, sp, 63
	srli	a7, a7, 6
	slli	a7, a7, 6
	.loc 1 82 8 view .LVU63
	bnez.n	a2, .L11
	mov.n	a2, a3
.LVL28:
.L11:
	.loc 1 85 5 is_stmt 1 view .LVU64
	.loc 1 85 8 is_stmt 0 view .LVU65
	bnez.n	a3, .L12
	.loc 1 86 12 view .LVU66
	mov.n	a3, a2
.LVL29:
.L12:
	.loc 1 88 5 is_stmt 1 view .LVU67
	.loc 1 88 9 is_stmt 0 view .LVU68
	movi	a10, 0x1e0
	mov.n	a11, a5
	mov.n	a12, a6
	add.n	a10, a10, sp
	call8	crypto_scalarmult
.LVL30:
	mov.n	a5, a10
.LVL31:
	.loc 1 88 8 view .LVU69
	bnez.n	a10, .L15
	.loc 1 91 5 is_stmt 1 view .LVU70
	.loc 1 92 5 view .LVU71
	mov.n	a12, a10
	mov.n	a11, a10
	movi.n	a13, 0x40
	mov.n	a10, a7
	call8	crypto_generichash_init
.LVL32:
	.loc 1 93 5 view .LVU72
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	movi	a11, 0x1e0
	add.n	a11, a11, sp
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL33:
	.loc 1 94 5 view .LVU73
	movi	a10, 0x1e0
	movi.n	a11, 0x20
	add.n	a10, a10, sp
	call8	sodium_memzero
.LVL34:
	.loc 1 95 5 view .LVU74
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a6
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL35:
	.loc 1 96 5 view .LVU75
	l32r	a13, .LC2+4
	l32r	a12, .LC2
	mov.n	a11, a4
	mov.n	a10, a7
	call8	crypto_generichash_update
.LVL36:
	.loc 1 97 5 view .LVU76
	movi	a11, 0x1a0
	movi.n	a12, 0x40
	add.n	a11, a11, sp
	mov.n	a10, a7
	call8	crypto_generichash_final
.LVL37:
	.loc 1 98 5 view .LVU77
	mov.n	a10, a7
	movi	a11, 0x165
	movi	a4, 0x1a0
.LVL38:
	.loc 1 98 5 is_stmt 0 view .LVU78
	call8	sodium_memzero
.LVL39:
	.loc 1 99 5 is_stmt 1 view .LVU79
	.loc 1 99 5 is_stmt 0 view .LVU80
	add.n	a4, a4, sp
	mov.n	a7, a4
	.loc 1 99 12 view .LVU81
	mov.n	a8, a5
	movi.n	a9, 0x20
	loop	a9, .L14_LEND
.LVL40:
.L14:
	.loc 1 100 9 is_stmt 1 discriminator 3 view .LVU82
	.loc 1 100 15 is_stmt 0 discriminator 3 view .LVU83
	l8ui	a6, a7, 0
	add.n	a4, a3, a8
	s8i	a6, a4, 0
	.loc 1 101 9 is_stmt 1 discriminator 3 view .LVU84
	.loc 1 101 15 is_stmt 0 discriminator 3 view .LVU85
	l8ui	a6, a7, 32
	add.n	a4, a2, a8
	s8i	a6, a4, 0
	.loc 1 99 26 discriminator 3 view .LVU86
	addi.n	a8, a8, 1
.LVL41:
	.loc 1 99 26 discriminator 3 view .LVU87
	addi.n	a7, a7, 1
	.L14_LEND:
	.loc 1 103 5 is_stmt 1 view .LVU88
	movi	a10, 0x1a0
	movi.n	a11, 0x40
	add.n	a10, sp, a10
	call8	sodium_memzero
.LVL42:
	.loc 1 105 5 view .LVU89
	.loc 1 105 12 is_stmt 0 view .LVU90
	j	.L10
.LVL43:
.L15:
	.loc 1 89 16 view .LVU91
	movi.n	a5, -1
.LVL44:
.L10:
	.loc 1 106 1 view .LVU92
	mov.n	a2, a5
.LVL45:
	.loc 1 106 1 view .LVU93
	retw.n
.LFE15:
	.size	crypto_kx_server_session_keys, .-crypto_kx_server_session_keys
	.section	.text.crypto_kx_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_publickeybytes
	.type	crypto_kx_publickeybytes, @function
crypto_kx_publickeybytes:
.LFB16:
	.loc 1 110 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 111 5 view .LVU95
	.loc 1 112 1 is_stmt 0 view .LVU96
	movi.n	a2, 0x20
	retw.n
.LFE16:
	.size	crypto_kx_publickeybytes, .-crypto_kx_publickeybytes
	.section	.text.crypto_kx_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_secretkeybytes
	.type	crypto_kx_secretkeybytes, @function
crypto_kx_secretkeybytes:
.LFB22:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0x20
	retw.n
.LFE22:
	.size	crypto_kx_secretkeybytes, .-crypto_kx_secretkeybytes
	.section	.text.crypto_kx_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_kx_seedbytes
	.type	crypto_kx_seedbytes, @function
crypto_kx_seedbytes:
.LFB24:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x20
	retw.n
.LFE24:
	.size	crypto_kx_seedbytes, .-crypto_kx_seedbytes
	.section	.text.crypto_kx_sessionkeybytes,"ax",@progbits
	.align	4
	.global	crypto_kx_sessionkeybytes
	.type	crypto_kx_sessionkeybytes, @function
crypto_kx_sessionkeybytes:
.LFB26:
	entry	sp, 32
.LCFI7:
	movi.n	a2, 0x20
	retw.n
.LFE26:
	.size	crypto_kx_sessionkeybytes, .-crypto_kx_sessionkeybytes
	.section	.rodata.crypto_kx_primitive.str1.1,"aMS",@progbits,1
.LC3:
	.string	"x25519blake2b"
	.section	.text.crypto_kx_primitive,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.align	4
	.global	crypto_kx_primitive
	.type	crypto_kx_primitive, @function
crypto_kx_primitive:
.LFB20:
	.loc 1 134 1 is_stmt 1 view -0
	.loc 1 134 1 is_stmt 0 view .LVU98
	entry	sp, 32
.LCFI8:
	.loc 1 135 5 is_stmt 1 view .LVU99
	.loc 1 136 1 is_stmt 0 view .LVU100
	l32r	a2, .LC4
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
	.byte	0xe
	.uleb128 0x220
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
	.uleb128 0x220
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
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
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf3e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	0x59
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
	.byte	0x69
	.byte	0x20
	.4byte	0x7f
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0x104
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xd5
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x114
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x138
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xe2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xaa
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0x5
	.4byte	0x15f
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x152
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d7
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x177
	.uleb128 0x9
	.4byte	0x16b
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x26a
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2af
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2af
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2af
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x16b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x16b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x150
	.4byte	0x2bf
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x301
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x301
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x307
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x31e
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x317
	.4byte	0x317
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x31d
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x26a
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x34c
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x34c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x59
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c5
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x352
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x529
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x76a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x76a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x76a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x159
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8d2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8d8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8e9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x159
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ef
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8f5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x159
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x906
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x301
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2bf
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x72b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x76a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x912
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x159
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ca
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x672
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x150
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x690
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6ba
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6de
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x6f8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x324
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x34c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x6fe
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x70e
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x324
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xbd
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x144
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x138
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x690
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x18
	.4byte	0x159
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x672
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x18
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x166
	.uleb128 0xe
	.byte	0x4
	.4byte	0x696
	.uleb128 0x17
	.4byte	0xc9
	.4byte	0x6de
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6f8
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x70e
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x71e
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52f
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x764
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x764
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x76a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x72b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x71e
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7b7
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7b7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7b7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x7f
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7c7
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x80e
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x80e
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8bd
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x159
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x138
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x138
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x138
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8bd
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x138
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x138
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x138
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x138
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x138
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x15f
	.4byte	0x8cd
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8cd
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7c7
	.uleb128 0x1a
	.4byte	0x8e9
	.uleb128 0x18
	.4byte	0x529
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8de
	.uleb128 0xe
	.byte	0x4
	.4byte	0x770
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x1a
	.4byte	0x906
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x90c
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8fb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x814
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x529
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x159
	.uleb128 0x11
	.4byte	.LASF126
	.2byte	0x165
	.byte	0x9
	.byte	0x17
	.byte	0x2e
	.4byte	0x9b1
	.uleb128 0x10
	.string	"h"
	.byte	0x9
	.byte	0x18
	.byte	0xe
	.4byte	0x9b1
	.byte	0
	.uleb128 0x10
	.string	"t"
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x9c1
	.byte	0x40
	.uleb128 0x10
	.string	"f"
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0x9c1
	.byte	0x50
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9d1
	.byte	0x60
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x9
	.byte	0x1c
	.byte	0xc
	.4byte	0x2c
	.2byte	0x160
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0x9
	.byte	0x1d
	.byte	0xd
	.4byte	0x86
	.2byte	0x164
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0x9c1
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0x9d1
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x86
	.4byte	0x9e1
	.uleb128 0xa
	.4byte	0x38
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x9
	.byte	0x1e
	.byte	0x3
	.4byte	0x958
	.byte	0x40
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0xa
	.byte	0x2c
	.byte	0x2a
	.4byte	0x9e1
	.byte	0x40
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	0x6b4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfc
	.uleb128 0x22
	.string	"rx"
	.byte	0x1
	.byte	0x47
	.byte	0x2d
	.4byte	0x34c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x22
	.string	"tx"
	.byte	0x1
	.byte	0x48
	.byte	0x2d
	.4byte	0x34c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0x49
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4a
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x4b
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x24
	.string	"h"
	.byte	0x1
	.byte	0x4d
	.byte	0x1e
	.4byte	0x9ee
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.string	"q"
	.byte	0x1
	.byte	0x4e
	.byte	0x13
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x1
	.byte	0x4f
	.byte	0x13
	.4byte	0xc12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0xee1
	.4byte	0xb1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0xeed
	.4byte	0xb40
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0xef9
	.4byte	0xb5a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL34
	.4byte	0xf05
	.4byte	0xb74
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL35
	.4byte	0xef9
	.4byte	0xb8e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL36
	.4byte	0xef9
	.4byte	0xba8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0xf11
	.4byte	0xbc9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0xf05
	.4byte	0xbe4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0xf05
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xc12
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xc22
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x22
	.string	"rx"
	.byte	0x1
	.byte	0x21
	.byte	0x2d
	.4byte	0x34c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.string	"tx"
	.byte	0x1
	.byte	0x22
	.byte	0x2d
	.4byte	0x34c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x23
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0x24
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0x25
	.byte	0x33
	.4byte	0xbfc
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x24
	.string	"h"
	.byte	0x1
	.byte	0x27
	.byte	0x1e
	.4byte	0x9ee
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.string	"q"
	.byte	0x1
	.byte	0x28
	.byte	0x13
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0xc12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x27
	.4byte	.LVL11
	.4byte	0xee1
	.4byte	0xcfa
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xeed
	.4byte	0xd20
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0xef9
	.4byte	0xd3a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0xf05
	.4byte	0xd54
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0xef9
	.4byte	0xd6e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0xef9
	.4byte	0xd88
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xf11
	.4byte	0xda9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL20
	.4byte	0xf05
	.4byte	0xdc4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.uleb128 0x29
	.4byte	.LVL23
	.4byte	0xf05
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe47
	.uleb128 0x22
	.string	"pk"
	.byte	0x1
	.byte	0x16
	.byte	0x21
	.4byte	0x34c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.string	"sk"
	.byte	0x1
	.byte	0x17
	.byte	0x21
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL5
	.4byte	0xf1d
	.4byte	0xe30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0xf29
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed2
	.uleb128 0x22
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.byte	0x26
	.4byte	0x34c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2a
	.string	"sk"
	.byte	0x1
	.byte	0xd
	.byte	0x26
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe
	.byte	0x2c
	.4byte	0xbfc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0xf35
	.4byte	0xebb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xf29
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0xa35
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x1d
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xa
	.byte	0x37
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x3c
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x16
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x41
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xd
	.byte	0x21
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xb
	.byte	0x1a
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x32
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
.LVUS8:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU93
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU89
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU54
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU50
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"_dso_handle"
.LASF145:
	.string	"crypto_generichash_update"
.LASF53:
	.string	"_size"
.LASF148:
	.string	"randombytes_buf"
.LASF3:
	.string	"size_t"
.LASF99:
	.string	"_rand48"
.LASF65:
	.string	"_emergency"
.LASF11:
	.string	"uint64_t"
.LASF4:
	.string	"__uint8_t"
.LASF58:
	.string	"_data"
.LASF119:
	.string	"_wcrtomb_state"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF154:
	.string	"__locale_t"
.LASF117:
	.string	"_mbrtowc_state"
.LASF137:
	.string	"crypto_kx_server_session_keys"
.LASF112:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF88:
	.string	"_ubuf"
.LASF52:
	.string	"_base"
.LASF35:
	.string	"__tm_hour"
.LASF79:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF83:
	.string	"_cookie"
.LASF78:
	.string	"__sglue"
.LASF14:
	.string	"long int"
.LASF104:
	.string	"_mprec"
.LASF55:
	.string	"_flags"
.LASF46:
	.string	"_is_cxa"
.LASF61:
	.string	"_stdin"
.LASF90:
	.string	"_blksize"
.LASF12:
	.string	"_lock_t"
.LASF135:
	.string	"client_pk"
.LASF72:
	.string	"_cvtbuf"
.LASF91:
	.string	"_offset"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_strtok_last"
.LASF116:
	.string	"_mbrlen_state"
.LASF43:
	.string	"_fnargs"
.LASF127:
	.string	"buflen"
.LASF49:
	.string	"_fns"
.LASF29:
	.string	"_sign"
.LASF155:
	.string	"crypto_kx_primitive"
.LASF23:
	.string	"_flock_t"
.LASF63:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF70:
	.string	"_gamma_signgam"
.LASF84:
	.string	"_read"
.LASF106:
	.string	"_result_k"
.LASF131:
	.string	"crypto_kx_seedbytes"
.LASF32:
	.string	"__tm"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"__wchb"
.LASF62:
	.string	"_stdout"
.LASF140:
	.string	"crypto_kx_keypair"
.LASF71:
	.string	"_cvtlen"
.LASF24:
	.string	"long unsigned int"
.LASF54:
	.string	"__sFILE_fake"
.LASF152:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_kx/crypto_kx.c"
.LASF97:
	.string	"_niobs"
.LASF1:
	.string	"short unsigned int"
.LASF77:
	.string	"_atexit0"
.LASF81:
	.string	"_signal_buf"
.LASF75:
	.string	"_asctime_buf"
.LASF105:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF17:
	.string	"wint_t"
.LASF92:
	.string	"_lock"
.LASF94:
	.string	"_flags2"
.LASF126:
	.string	"crypto_generichash_blake2b_state"
.LASF150:
	.string	"crypto_generichash"
.LASF85:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF130:
	.string	"crypto_kx_sessionkeybytes"
.LASF80:
	.string	"_misc"
.LASF133:
	.string	"server_pk"
.LASF121:
	.string	"__sf_fake_stdin"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF153:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF37:
	.string	"__tm_mon"
.LASF47:
	.string	"_atexit"
.LASF125:
	.string	"suboptarg"
.LASF66:
	.string	"__sdidinit"
.LASF15:
	.string	"_off_t"
.LASF146:
	.string	"sodium_memzero"
.LASF136:
	.string	"keys"
.LASF8:
	.string	"__uint64_t"
.LASF132:
	.string	"crypto_kx_secretkeybytes"
.LASF108:
	.string	"_freelist"
.LASF144:
	.string	"crypto_generichash_init"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF139:
	.string	"client_sk"
.LASF5:
	.string	"unsigned char"
.LASF98:
	.string	"_iobs"
.LASF6:
	.string	"short int"
.LASF40:
	.string	"__tm_yday"
.LASF51:
	.string	"__sbuf"
.LASF95:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF82:
	.string	"__sFILE"
.LASF93:
	.string	"_mbstate"
.LASF103:
	.string	"_rand_next"
.LASF111:
	.string	"_mblen_state"
.LASF64:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF68:
	.string	"_locale"
.LASF69:
	.string	"__cleanup"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF28:
	.string	"_maxwds"
.LASF59:
	.string	"_reent"
.LASF100:
	.string	"_seed"
.LASF20:
	.string	"__count"
.LASF21:
	.string	"__value"
.LASF86:
	.string	"_seek"
.LASF129:
	.string	"crypto_generichash_state"
.LASF16:
	.string	"_fpos_t"
.LASF60:
	.string	"_errno"
.LASF25:
	.string	"char"
.LASF34:
	.string	"__tm_min"
.LASF101:
	.string	"_mult"
.LASF27:
	.string	"_next"
.LASF151:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF141:
	.string	"crypto_kx_seed_keypair"
.LASF45:
	.string	"_fntypes"
.LASF109:
	.string	"_misc_reent"
.LASF128:
	.string	"last_node"
.LASF102:
	.string	"_add"
.LASF26:
	.string	"__ULong"
.LASF115:
	.string	"_getdate_err"
.LASF149:
	.string	"crypto_scalarmult_base"
.LASF138:
	.string	"crypto_kx_client_session_keys"
.LASF124:
	.string	"_global_impure_ptr"
.LASF147:
	.string	"crypto_generichash_final"
.LASF56:
	.string	"_file"
.LASF30:
	.string	"_wds"
.LASF39:
	.string	"__tm_wday"
.LASF96:
	.string	"_glue"
.LASF10:
	.string	"uint8_t"
.LASF114:
	.string	"_l64a_buf"
.LASF134:
	.string	"server_sk"
.LASF156:
	.string	"crypto_kx_publickeybytes"
.LASF76:
	.string	"_sig_func"
.LASF142:
	.string	"seed"
.LASF89:
	.string	"_nbuf"
.LASF41:
	.string	"__tm_isdst"
.LASF74:
	.string	"_localtime_buf"
.LASF87:
	.string	"_close"
.LASF123:
	.string	"__sf_fake_stderr"
.LASF73:
	.string	"_r48"
.LASF113:
	.string	"_mbtowc_state"
.LASF107:
	.string	"_p5s"
.LASF143:
	.string	"crypto_scalarmult"
.LASF36:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
