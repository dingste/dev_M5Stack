	.file	"sign_ed25519.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_ed25519ph_statebytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_statebytes
	.type	crypto_sign_ed25519ph_statebytes, @function
crypto_sign_ed25519ph_statebytes:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/sign_ed25519.c"
	.loc 1 10 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 11 5 view .LVU1
	.loc 1 12 1 is_stmt 0 view .LVU2
	movi	a2, 0xd0
	retw.n
.LFE0:
	.size	crypto_sign_ed25519ph_statebytes, .-crypto_sign_ed25519ph_statebytes
	.section	.text.crypto_sign_ed25519_bytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_bytes
	.type	crypto_sign_ed25519_bytes, @function
crypto_sign_ed25519_bytes:
.LFB1:
	.loc 1 16 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 17 5 view .LVU4
	.loc 1 18 1 is_stmt 0 view .LVU5
	movi.n	a2, 0x40
	retw.n
.LFE1:
	.size	crypto_sign_ed25519_bytes, .-crypto_sign_ed25519_bytes
	.section	.text.crypto_sign_ed25519_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_seedbytes
	.type	crypto_sign_ed25519_seedbytes, @function
crypto_sign_ed25519_seedbytes:
.LFB2:
	.loc 1 22 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 23 5 view .LVU7
	.loc 1 24 1 is_stmt 0 view .LVU8
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_seedbytes, .-crypto_sign_ed25519_seedbytes
	.section	.text.crypto_sign_ed25519_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_publickeybytes
	.type	crypto_sign_ed25519_publickeybytes, @function
crypto_sign_ed25519_publickeybytes:
.LFB14:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x20
	retw.n
.LFE14:
	.size	crypto_sign_ed25519_publickeybytes, .-crypto_sign_ed25519_publickeybytes
	.section	.text.crypto_sign_ed25519_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_secretkeybytes
	.type	crypto_sign_ed25519_secretkeybytes, @function
crypto_sign_ed25519_secretkeybytes:
.LFB12:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0x40
	retw.n
.LFE12:
	.size	crypto_sign_ed25519_secretkeybytes, .-crypto_sign_ed25519_secretkeybytes
	.section	.text.crypto_sign_ed25519_sk_to_seed,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_sk_to_seed
	.type	crypto_sign_ed25519_sk_to_seed, @function
crypto_sign_ed25519_sk_to_seed:
.LVL0:
.LFB5:
	.loc 1 40 1 is_stmt 1 view -0
	.loc 1 40 1 is_stmt 0 view .LVU10
	entry	sp, 32
.LCFI5:
	.loc 1 41 5 is_stmt 1 view .LVU11
	movi.n	a12, 0x20
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memmove
.LVL1:
	.loc 1 43 5 view .LVU12
	.loc 1 44 1 is_stmt 0 view .LVU13
	movi.n	a2, 0
.LVL2:
	.loc 1 44 1 view .LVU14
	retw.n
.LFE5:
	.size	crypto_sign_ed25519_sk_to_seed, .-crypto_sign_ed25519_sk_to_seed
	.section	.text.crypto_sign_ed25519_sk_to_pk,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_sk_to_pk
	.type	crypto_sign_ed25519_sk_to_pk, @function
crypto_sign_ed25519_sk_to_pk:
.LVL3:
.LFB6:
	.loc 1 48 1 is_stmt 1 view -0
	.loc 1 48 1 is_stmt 0 view .LVU16
	entry	sp, 32
.LCFI6:
	.loc 1 49 5 is_stmt 1 view .LVU17
	movi.n	a12, 0x20
	add.n	a11, a3, a12
	mov.n	a10, a2
	call8	memmove
.LVL4:
	.loc 1 51 5 view .LVU18
	.loc 1 52 1 is_stmt 0 view .LVU19
	movi.n	a2, 0
.LVL5:
	.loc 1 52 1 view .LVU20
	retw.n
.LFE6:
	.size	crypto_sign_ed25519_sk_to_pk, .-crypto_sign_ed25519_sk_to_pk
	.section	.text.crypto_sign_ed25519ph_init,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_init
	.type	crypto_sign_ed25519ph_init, @function
crypto_sign_ed25519ph_init:
.LVL6:
.LFB7:
	.loc 1 56 1 is_stmt 1 view -0
	.loc 1 56 1 is_stmt 0 view .LVU22
	entry	sp, 32
.LCFI7:
	.loc 1 57 5 is_stmt 1 view .LVU23
	mov.n	a10, a2
	call8	crypto_hash_sha512_init
.LVL7:
	.loc 1 58 5 view .LVU24
	.loc 1 59 1 is_stmt 0 view .LVU25
	movi.n	a2, 0
.LVL8:
	.loc 1 59 1 view .LVU26
	retw.n
.LFE7:
	.size	crypto_sign_ed25519ph_init, .-crypto_sign_ed25519ph_init
	.section	.text.crypto_sign_ed25519ph_update,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_update
	.type	crypto_sign_ed25519ph_update, @function
crypto_sign_ed25519ph_update:
.LVL9:
.LFB8:
	.loc 1 64 1 is_stmt 1 view -0
	.loc 1 64 1 is_stmt 0 view .LVU28
	entry	sp, 32
.LCFI8:
	.loc 1 65 5 is_stmt 1 view .LVU29
	.loc 1 65 12 is_stmt 0 view .LVU30
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha512_update
.LVL10:
	.loc 1 66 1 view .LVU31
	mov.n	a2, a10
.LVL11:
	.loc 1 66 1 view .LVU32
	retw.n
.LFE8:
	.size	crypto_sign_ed25519ph_update, .-crypto_sign_ed25519ph_update
	.section	.text.crypto_sign_ed25519ph_final_create,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.align	4
	.global	crypto_sign_ed25519ph_final_create
	.type	crypto_sign_ed25519ph_final_create, @function
crypto_sign_ed25519ph_final_create:
.LVL12:
.LFB9:
	.loc 1 73 1 is_stmt 1 view -0
	.loc 1 73 1 is_stmt 0 view .LVU34
	entry	sp, 112
.LCFI9:
	.loc 1 74 5 is_stmt 1 view .LVU35
	.loc 1 76 5 view .LVU36
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	crypto_hash_sha512_final
.LVL13:
	.loc 1 78 5 view .LVU37
	.loc 1 78 12 is_stmt 0 view .LVU38
	movi.n	a8, 1
	l32r	a14, .LC0
	l32r	a15, .LC0+4
	s32i.n	a8, sp, 4
	s32i.n	a5, sp, 0
	addi	a12, sp, 16
	mov.n	a11, a4
	mov.n	a10, a3
	call8	_crypto_sign_ed25519_detached
.LVL14:
	.loc 1 79 1 view .LVU39
	mov.n	a2, a10
.LVL15:
	.loc 1 79 1 view .LVU40
	retw.n
.LFE9:
	.size	crypto_sign_ed25519ph_final_create, .-crypto_sign_ed25519ph_final_create
	.section	.text.crypto_sign_ed25519ph_final_verify,"ax",@progbits
	.literal_position
	.literal .LC1, 64, 0
	.align	4
	.global	crypto_sign_ed25519ph_final_verify
	.type	crypto_sign_ed25519ph_final_verify, @function
crypto_sign_ed25519ph_final_verify:
.LVL16:
.LFB10:
	.loc 1 85 1 is_stmt 1 view -0
	.loc 1 85 1 is_stmt 0 view .LVU42
	entry	sp, 96
.LCFI10:
	.loc 1 86 5 is_stmt 1 view .LVU43
	.loc 1 88 5 view .LVU44
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha512_final
.LVL17:
	.loc 1 90 5 view .LVU45
	.loc 1 90 12 is_stmt 0 view .LVU46
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi.n	a15, 1
	mov.n	a14, a4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	_crypto_sign_ed25519_verify_detached
.LVL18:
	.loc 1 91 1 view .LVU47
	mov.n	a2, a10
.LVL19:
	.loc 1 91 1 view .LVU48
	retw.n
.LFE10:
	.size	crypto_sign_ed25519ph_final_verify, .-crypto_sign_ed25519ph_final_verify
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
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
	.uleb128 0x20
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
	.uleb128 0x70
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
	.uleb128 0x60
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_sign_ed25519.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/ed25519_ref10.h"
	.file 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd50
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0xc
	.4byte	.LASF150
	.4byte	.LASF151
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
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x86
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x9e
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xec
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xfc
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x120
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x92
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x5
	.4byte	0x147
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x13a
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x1cf
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x252
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x297
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x297
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x297
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x153
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x153
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x138
	.4byte	0x2a7
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2e9
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2e9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2ef
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x306
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x9
	.4byte	0x2ff
	.4byte	0x2ff
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x305
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x334
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x334
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x59
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3ad
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x33a
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x511
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x752
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x752
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x752
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x141
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ba
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x141
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8dd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x141
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ee
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2e9
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2a7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x713
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x752
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8fa
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x141
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x65a
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x334
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x65
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x30c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x511
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x138
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x678
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6c6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e0
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x30c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x334
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e6
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f6
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x30c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x12c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x120
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x678
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x141
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65a
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x17
	.4byte	0xb1
	.4byte	0x6c6
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0xb1
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6e0
	.uleb128 0x18
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x138
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x6f6
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x59
	.4byte	0x706
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x517
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x74c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x74c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x752
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x713
	.uleb128 0xe
	.byte	0x4
	.4byte	0x706
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79f
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x79f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x79f
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x7f
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7af
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1b9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1b9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f6
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a5
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x141
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x120
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x120
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x120
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x120
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x120
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x120
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x120
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x120
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x8b5
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF152
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7af
	.uleb128 0x1a
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0x511
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x758
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x1a
	.4byte	0x8ee
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3ad
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x511
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x141
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0xd0
	.byte	0x9
	.byte	0x18
	.byte	0x10
	.4byte	0x98d
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x98d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0x99d
	.byte	0x40
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9ad
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x940
	.4byte	0x99d
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x940
	.4byte	0x9ad
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x934
	.4byte	0x9bd
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x958
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0xd0
	.byte	0xa
	.byte	0xf
	.byte	0x10
	.4byte	0x9e3
	.uleb128 0x10
	.string	"hs"
	.byte	0xa
	.byte	0x10
	.byte	0x1e
	.4byte	0x9bd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.4byte	0x9c9
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa85
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x52
	.byte	0x41
	.4byte	0xa85
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1f
	.string	"sig"
	.byte	0x1
	.byte	0x53
	.byte	0x33
	.4byte	0x334
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"pk"
	.byte	0x1
	.byte	0x54
	.byte	0x39
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"ph"
	.byte	0x1
	.byte	0x56
	.byte	0x13
	.4byte	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0xd0b
	.4byte	0xa62
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0xd17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9e3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xaa1
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4d
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x45
	.byte	0x41
	.4byte	0xa85
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.byte	0x33
	.4byte	0x334
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF132
	.byte	0x1
	.byte	0x47
	.byte	0x38
	.4byte	0xb4d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.byte	0x39
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"ph"
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xd0b
	.4byte	0xb22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL14
	.4byte	0xd23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb7
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x3e
	.byte	0x3b
	.4byte	0xa85
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.byte	0x3f
	.byte	0x33
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x1
	.byte	0x3f
	.byte	0x49
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0xd2f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x37
	.byte	0x39
	.4byte	0xa85
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0xd3b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4d
	.uleb128 0x25
	.string	"pk"
	.byte	0x1
	.byte	0x2f
	.byte	0x2d
	.4byte	0x334
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.string	"sk"
	.byte	0x1
	.byte	0x2f
	.byte	0x46
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL4
	.4byte	0xd47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca5
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.byte	0x27
	.byte	0x2f
	.4byte	0x334
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.string	"sk"
	.byte	0x1
	.byte	0x27
	.byte	0x4a
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL1
	.4byte	0xd47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	0xcca
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	0xcbd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x9
	.byte	0x32
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0xd
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xb
	.byte	0x7
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.byte	0x2d
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x2a
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.byte	0x20
	.byte	0x8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LVUS5:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_dso_handle"
.LASF128:
	.string	"count"
.LASF51:
	.string	"_size"
.LASF3:
	.string	"size_t"
.LASF97:
	.string	"_rand48"
.LASF63:
	.string	"_emergency"
.LASF124:
	.string	"uint64_t"
.LASF4:
	.string	"__uint8_t"
.LASF56:
	.string	"_data"
.LASF142:
	.string	"crypto_sign_ed25519_bytes"
.LASF117:
	.string	"_wcrtomb_state"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF148:
	.string	"memmove"
.LASF152:
	.string	"__locale_t"
.LASF126:
	.string	"crypto_hash_sha512_state"
.LASF115:
	.string	"_mbrtowc_state"
.LASF110:
	.string	"_wctomb_state"
.LASF31:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF86:
	.string	"_ubuf"
.LASF50:
	.string	"_base"
.LASF33:
	.string	"__tm_hour"
.LASF77:
	.string	"__sf"
.LASF40:
	.string	"_on_exit_args"
.LASF81:
	.string	"_cookie"
.LASF76:
	.string	"__sglue"
.LASF127:
	.string	"state"
.LASF12:
	.string	"long int"
.LASF132:
	.string	"siglen_p"
.LASF135:
	.string	"crypto_sign_ed25519ph_init"
.LASF102:
	.string	"_mprec"
.LASF53:
	.string	"_flags"
.LASF44:
	.string	"_is_cxa"
.LASF59:
	.string	"_stdin"
.LASF88:
	.string	"_blksize"
.LASF10:
	.string	"_lock_t"
.LASF70:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF108:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fnargs"
.LASF47:
	.string	"_fns"
.LASF27:
	.string	"_sign"
.LASF21:
	.string	"_flock_t"
.LASF61:
	.string	"_stderr"
.LASF29:
	.string	"_Bigint"
.LASF68:
	.string	"_gamma_signgam"
.LASF82:
	.string	"_read"
.LASF104:
	.string	"_result_k"
.LASF143:
	.string	"crypto_hash_sha512_final"
.LASF30:
	.string	"__tm"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF129:
	.string	"crypto_sign_ed25519ph_state"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"__wchb"
.LASF60:
	.string	"_stdout"
.LASF138:
	.string	"seed"
.LASF69:
	.string	"_cvtlen"
.LASF22:
	.string	"long unsigned int"
.LASF52:
	.string	"__sFILE_fake"
.LASF140:
	.string	"crypto_sign_ed25519_publickeybytes"
.LASF95:
	.string	"_niobs"
.LASF1:
	.string	"short unsigned int"
.LASF133:
	.string	"crypto_sign_ed25519ph_update"
.LASF75:
	.string	"_atexit0"
.LASF79:
	.string	"_signal_buf"
.LASF73:
	.string	"_asctime_buf"
.LASF103:
	.string	"_result"
.LASF16:
	.string	"__wch"
.LASF15:
	.string	"wint_t"
.LASF90:
	.string	"_lock"
.LASF92:
	.string	"_flags2"
.LASF146:
	.string	"crypto_hash_sha512_update"
.LASF134:
	.string	"mlen"
.LASF153:
	.string	"crypto_sign_ed25519ph_statebytes"
.LASF83:
	.string	"_write"
.LASF36:
	.string	"__tm_year"
.LASF78:
	.string	"_misc"
.LASF119:
	.string	"__sf_fake_stdin"
.LASF120:
	.string	"__sf_fake_stdout"
.LASF151:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF144:
	.string	"_crypto_sign_ed25519_verify_detached"
.LASF35:
	.string	"__tm_mon"
.LASF45:
	.string	"_atexit"
.LASF125:
	.string	"suboptarg"
.LASF64:
	.string	"__sdidinit"
.LASF13:
	.string	"_off_t"
.LASF8:
	.string	"__uint64_t"
.LASF131:
	.string	"crypto_sign_ed25519ph_final_create"
.LASF106:
	.string	"_freelist"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF145:
	.string	"_crypto_sign_ed25519_detached"
.LASF5:
	.string	"unsigned char"
.LASF96:
	.string	"_iobs"
.LASF6:
	.string	"short int"
.LASF38:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF93:
	.string	"__FILE"
.LASF20:
	.string	"_mbstate_t"
.LASF80:
	.string	"__sFILE"
.LASF91:
	.string	"_mbstate"
.LASF101:
	.string	"_rand_next"
.LASF109:
	.string	"_mblen_state"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF66:
	.string	"_locale"
.LASF67:
	.string	"__cleanup"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF26:
	.string	"_maxwds"
.LASF57:
	.string	"_reent"
.LASF98:
	.string	"_seed"
.LASF18:
	.string	"__count"
.LASF19:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF14:
	.string	"_fpos_t"
.LASF58:
	.string	"_errno"
.LASF23:
	.string	"char"
.LASF32:
	.string	"__tm_min"
.LASF136:
	.string	"crypto_sign_ed25519_sk_to_pk"
.LASF99:
	.string	"_mult"
.LASF150:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/sign_ed25519.c"
.LASF25:
	.string	"_next"
.LASF149:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"_fntypes"
.LASF107:
	.string	"_misc_reent"
.LASF139:
	.string	"crypto_sign_ed25519_secretkeybytes"
.LASF100:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF113:
	.string	"_getdate_err"
.LASF122:
	.string	"_global_impure_ptr"
.LASF130:
	.string	"crypto_sign_ed25519ph_final_verify"
.LASF141:
	.string	"crypto_sign_ed25519_seedbytes"
.LASF54:
	.string	"_file"
.LASF28:
	.string	"_wds"
.LASF37:
	.string	"__tm_wday"
.LASF94:
	.string	"_glue"
.LASF123:
	.string	"uint8_t"
.LASF112:
	.string	"_l64a_buf"
.LASF74:
	.string	"_sig_func"
.LASF87:
	.string	"_nbuf"
.LASF39:
	.string	"__tm_isdst"
.LASF72:
	.string	"_localtime_buf"
.LASF85:
	.string	"_close"
.LASF121:
	.string	"__sf_fake_stderr"
.LASF71:
	.string	"_r48"
.LASF111:
	.string	"_mbtowc_state"
.LASF105:
	.string	"_p5s"
.LASF137:
	.string	"crypto_sign_ed25519_sk_to_seed"
.LASF147:
	.string	"crypto_hash_sha512_init"
.LASF34:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
