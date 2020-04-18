	.file	"crypto_hash_sha256_mbedtls.c"
	.text
.Ltext0:
	.section	.text.sha256_mbedtls_to_libsodium,"ax",@progbits
	.align	4
	.type	sha256_mbedtls_to_libsodium, @function
sha256_mbedtls_to_libsodium:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/port/crypto_hash_mbedtls/crypto_hash_sha256_mbedtls.c"
	.loc 1 47 1 view -0
	.loc 1 47 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 48 5 is_stmt 1 view .LVU2
	mov.n	a11, a3
	movi.n	a12, 8
	addi	a10, a2, 32
	call8	memcpy
.LVL1:
	.loc 1 49 5 view .LVU3
	addi.n	a11, a3, 8
	movi.n	a12, 0x20
	mov.n	a10, a2
	call8	memcpy
.LVL2:
	.loc 1 50 5 view .LVU4
	movi.n	a12, 0x40
	addi	a11, a3, 40
	addi	a10, a2, 40
	call8	memcpy
.LVL3:
	.loc 1 51 1 is_stmt 0 view .LVU5
	retw.n
.LFE0:
	.size	sha256_mbedtls_to_libsodium, .-sha256_mbedtls_to_libsodium
	.section	.text.sha256_libsodium_to_mbedtls,"ax",@progbits
	.align	4
	.type	sha256_libsodium_to_mbedtls, @function
sha256_libsodium_to_mbedtls:
.LVL4:
.LFB1:
	.loc 1 54 1 is_stmt 1 view -0
	.loc 1 54 1 is_stmt 0 view .LVU7
	entry	sp, 32
.LCFI1:
	.loc 1 55 5 is_stmt 1 view .LVU8
	addi	a11, a3, 32
	movi.n	a12, 8
	mov.n	a10, a2
	call8	memcpy
.LVL5:
	.loc 1 56 5 view .LVU9
	mov.n	a11, a3
	movi.n	a12, 0x20
	addi.n	a10, a2, 8
	call8	memcpy
.LVL6:
	.loc 1 57 5 view .LVU10
	addi	a11, a3, 40
	movi.n	a12, 0x40
	addi	a10, a2, 40
	call8	memcpy
.LVL7:
	.loc 1 58 5 view .LVU11
	.loc 1 58 19 is_stmt 0 view .LVU12
	movi.n	a3, 0
.LVL8:
	.loc 1 58 19 view .LVU13
	s32i	a3, a2, 104
	.loc 1 59 1 view .LVU14
	retw.n
.LFE1:
	.size	sha256_libsodium_to_mbedtls, .-sha256_libsodium_to_mbedtls
	.section	.text.crypto_hash_sha256_init,"ax",@progbits
	.literal_position
	.literal .LC0, __stack_chk_guard
	.align	4
	.global	crypto_hash_sha256_init
	.type	crypto_hash_sha256_init, @function
crypto_hash_sha256_init:
.LVL9:
.LFB2:
	.loc 1 63 1 is_stmt 1 view -0
	.loc 1 63 1 is_stmt 0 view .LVU16
	entry	sp, 144
.LCFI2:
	.loc 1 63 1 view .LVU17
	l32r	a3, .LC0
	mov.n	a4, a2
	memw
	l32i.n	a2, a3, 0
.LVL10:
	.loc 1 65 5 view .LVU18
	mov.n	a10, sp
	.loc 1 63 1 view .LVU19
	memw
	s32i	a2, sp, 108
	.loc 1 64 5 is_stmt 1 view .LVU20
	.loc 1 65 5 view .LVU21
	call8	mbedtls_sha256_init
.LVL11:
	.loc 1 66 5 view .LVU22
	.loc 1 66 15 is_stmt 0 view .LVU23
	movi.n	a11, 0
	mov.n	a10, sp
	call8	mbedtls_sha256_starts_ret
.LVL12:
	mov.n	a2, a10
.LVL13:
	.loc 1 67 5 is_stmt 1 view .LVU24
	.loc 1 67 8 is_stmt 0 view .LVU25
	bnez.n	a10, .L3
	.loc 1 70 5 is_stmt 1 view .LVU26
	mov.n	a11, sp
	mov.n	a10, a4
	call8	sha256_mbedtls_to_libsodium
.LVL14:
	.loc 1 71 5 view .LVU27
.L3:
	.loc 1 72 1 is_stmt 0 view .LVU28
	memw
	l32i	a8, sp, 108
	memw
	l32i.n	a3, a3, 0
	beq	a8, a3, .L5
	call8	__stack_chk_fail
.LVL15:
.L5:
	retw.n
.LFE2:
	.size	crypto_hash_sha256_init, .-crypto_hash_sha256_init
	.section	.text.crypto_hash_sha256_update,"ax",@progbits
	.literal_position
	.literal .LC1, __stack_chk_guard
	.align	4
	.global	crypto_hash_sha256_update
	.type	crypto_hash_sha256_update, @function
crypto_hash_sha256_update:
.LVL16:
.LFB3:
	.loc 1 77 1 is_stmt 1 view -0
	.loc 1 77 1 is_stmt 0 view .LVU30
	entry	sp, 144
.LCFI3:
	.loc 1 77 1 view .LVU31
	l32r	a5, .LC1
	mov.n	a6, a2
	memw
	l32i.n	a2, a5, 0
.LVL17:
	.loc 1 79 5 view .LVU32
	mov.n	a11, a6
	mov.n	a10, sp
	.loc 1 77 1 view .LVU33
	memw
	s32i	a2, sp, 108
	.loc 1 78 5 is_stmt 1 view .LVU34
	.loc 1 79 5 view .LVU35
	call8	sha256_libsodium_to_mbedtls
.LVL18:
	.loc 1 80 5 view .LVU36
	.loc 1 80 15 is_stmt 0 view .LVU37
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_sha256_update_ret
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 81 5 is_stmt 1 view .LVU38
	.loc 1 81 8 is_stmt 0 view .LVU39
	bnez.n	a10, .L6
	.loc 1 84 5 is_stmt 1 view .LVU40
	mov.n	a11, sp
	mov.n	a10, a6
	call8	sha256_mbedtls_to_libsodium
.LVL21:
	.loc 1 85 5 view .LVU41
.L6:
	.loc 1 86 1 is_stmt 0 view .LVU42
	memw
	l32i	a6, sp, 108
.LVL22:
	.loc 1 86 1 view .LVU43
	memw
	l32i.n	a5, a5, 0
	beq	a6, a5, .L8
	call8	__stack_chk_fail
.LVL23:
.L8:
	retw.n
.LFE3:
	.size	crypto_hash_sha256_update, .-crypto_hash_sha256_update
	.section	.text.crypto_hash_sha256_final,"ax",@progbits
	.literal_position
	.literal .LC2, __stack_chk_guard
	.align	4
	.global	crypto_hash_sha256_final
	.type	crypto_hash_sha256_final, @function
crypto_hash_sha256_final:
.LVL24:
.LFB4:
	.loc 1 90 1 is_stmt 1 view -0
	.loc 1 90 1 is_stmt 0 view .LVU45
	entry	sp, 144
.LCFI4:
	.loc 1 90 1 view .LVU46
	l32r	a4, .LC2
	.loc 1 92 5 view .LVU47
	mov.n	a11, a2
	.loc 1 90 1 view .LVU48
	memw
	l32i.n	a8, a4, 0
	.loc 1 92 5 view .LVU49
	mov.n	a10, sp
	.loc 1 90 1 view .LVU50
	memw
	s32i	a8, sp, 108
	.loc 1 91 5 is_stmt 1 view .LVU51
	.loc 1 92 5 view .LVU52
	call8	sha256_libsodium_to_mbedtls
.LVL25:
	.loc 1 93 5 view .LVU53
	.loc 1 93 12 is_stmt 0 view .LVU54
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_sha256_finish_ret
.LVL26:
	.loc 1 94 1 view .LVU55
	memw
	l32i	a8, sp, 108
	memw
	l32i.n	a4, a4, 0
	mov.n	a2, a10
.LVL27:
	.loc 1 94 1 view .LVU56
	beq	a8, a4, .L10
	call8	__stack_chk_fail
.LVL28:
.L10:
	retw.n
.LFE4:
	.size	crypto_hash_sha256_final, .-crypto_hash_sha256_final
	.section	.text.crypto_hash_sha256,"ax",@progbits
	.align	4
	.global	crypto_hash_sha256
	.type	crypto_hash_sha256, @function
crypto_hash_sha256:
.LVL29:
.LFB5:
	.loc 1 99 1 is_stmt 1 view -0
	.loc 1 99 1 is_stmt 0 view .LVU58
	entry	sp, 32
.LCFI5:
	.loc 1 100 5 is_stmt 1 view .LVU59
	.loc 1 100 12 is_stmt 0 view .LVU60
	mov.n	a12, a2
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	mbedtls_sha256_ret
.LVL30:
	.loc 1 101 1 view .LVU61
	mov.n	a2, a10
.LVL31:
	.loc 1 101 1 view .LVU62
	retw.n
.LFE5:
	.size	crypto_hash_sha256, .-crypto_hash_sha256
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
	.uleb128 0x90
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
	.uleb128 0x90
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
	.uleb128 0x90
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 10 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe34
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xaa
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xc2
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x110
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x110
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x120
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x144
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xee
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x120
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xb6
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x5
	.4byte	0x16b
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x15e
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1dd
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1dd
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF31
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
	.4byte	0x1e3
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x183
	.uleb128 0x9
	.4byte	0x177
	.4byte	0x1f3
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x276
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2bb
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2bb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2bb
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x177
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x177
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x15c
	.4byte	0x2cb
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x30d
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x30d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x313
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x32a
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2cb
	.uleb128 0x9
	.4byte	0x323
	.4byte	0x323
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x329
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x276
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x358
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x358
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3d1
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x358
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
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x330
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x535
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x35e
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x535
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x776
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x776
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x776
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x165
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8de
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8e4
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8f5
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x165
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8fb
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x901
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x165
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x912
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x30d
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2cb
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x737
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x776
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x91e
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x165
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3d6
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x67e
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x358
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
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x330
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x535
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x15c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x69c
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6c6
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6ea
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x704
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x330
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x358
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x70a
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x71a
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x330
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xc9
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x150
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x144
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x69c
	.uleb128 0x18
	.4byte	0x535
	.uleb128 0x18
	.4byte	0x15c
	.uleb128 0x18
	.4byte	0x165
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6c0
	.uleb128 0x18
	.4byte	0x535
	.uleb128 0x18
	.4byte	0x15c
	.uleb128 0x18
	.4byte	0x6c0
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x172
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a2
	.uleb128 0x17
	.4byte	0xd5
	.4byte	0x6ea
	.uleb128 0x18
	.4byte	0x535
	.uleb128 0x18
	.4byte	0x15c
	.uleb128 0x18
	.4byte	0xd5
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x704
	.uleb128 0x18
	.4byte	0x535
	.uleb128 0x18
	.4byte	0x15c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x71a
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x72a
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x53b
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x770
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x770
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x776
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x737
	.uleb128 0xe
	.byte	0x4
	.4byte	0x72a
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7c3
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7c3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7c3
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x33
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x7f
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x7d3
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x81a
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1dd
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1dd
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x81a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c9
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x165
	.byte	0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x144
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x144
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x144
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c9
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x144
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x144
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x144
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x144
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x144
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x16b
	.4byte	0x8d9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF151
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d9
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d3
	.uleb128 0x1a
	.4byte	0x8f5
	.uleb128 0x18
	.4byte	0x535
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ea
	.uleb128 0xe
	.byte	0x4
	.4byte	0x77c
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0x1a
	.4byte	0x912
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x918
	.uleb128 0xe
	.byte	0x4
	.4byte	0x907
	.uleb128 0xe
	.byte	0x4
	.4byte	0x820
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3d1
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3d1
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3d1
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x535
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x165
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x68
	.byte	0x9
	.byte	0x18
	.byte	0x10
	.4byte	0x999
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x999
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0x9e
	.byte	0x20
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x1b
	.byte	0xd
	.4byte	0x9a9
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0x9a9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x86
	.4byte	0x9b9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x964
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x6c
	.byte	0xa
	.byte	0x3a
	.byte	0x10
	.4byte	0xa07
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xa
	.byte	0x3c
	.byte	0xe
	.4byte	0xa07
	.byte	0
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xa
	.byte	0x3d
	.byte	0xe
	.4byte	0x999
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xa
	.byte	0x3e
	.byte	0x13
	.4byte	0xa17
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xa
	.byte	0x3f
	.byte	0x9
	.4byte	0x25
	.byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.4byte	0xa17
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xa27
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0xa
	.byte	0x42
	.byte	0x1
	.4byte	0x9c5
	.uleb128 0x5
	.4byte	0xa27
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa8
	.uleb128 0x1e
	.string	"out"
	.byte	0x1
	.byte	0x61
	.byte	0x23
	.4byte	0x358
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1f
	.string	"in"
	.byte	0x1
	.byte	0x61
	.byte	0x3d
	.4byte	0xaa8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.byte	0x62
	.byte	0x27
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0xde7
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
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3a
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x59
	.byte	0x34
	.4byte	0xb3a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1f
	.string	"out"
	.byte	0x1
	.byte	0x59
	.byte	0x4a
	.4byte	0x358
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	0xa27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0xcb9
	.4byte	0xb15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL26
	.4byte	0xdf3
	.4byte	0xb30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL28
	.4byte	0xdff
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9b9
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc13
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x4b
	.byte	0x35
	.4byte	0xb3a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.string	"in"
	.byte	0x1
	.byte	0x4c
	.byte	0x30
	.4byte	0xaa8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4c
	.byte	0x47
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x4e
	.byte	0x1c
	.4byte	0xa27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xcb9
	.4byte	0xbcd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL19
	.4byte	0xe08
	.4byte	0xbee
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0xd53
	.4byte	0xc09
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x26
	.4byte	.LVL23
	.4byte	0xdff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb9
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x3e
	.byte	0x33
	.4byte	0xb3a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x40
	.byte	0x1c
	.4byte	0xa27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0xe14
	.4byte	0xc7a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0xe20
	.4byte	0xc94
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL14
	.4byte	0xd53
	.4byte	0xcaf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x26
	.4byte	.LVL15
	.4byte	0xdff
	.byte	0
	.uleb128 0x28
	.4byte	.LASF141
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4d
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x35
	.byte	0x41
	.4byte	0xd4d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x35
	.byte	0x63
	.4byte	0xb3a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0xe2c
	.4byte	0xd10
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
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0xe2c
	.4byte	0xd30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
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
	.uleb128 0x21
	.4byte	.LVL7
	.4byte	0xe2c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa27
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde1
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x2e
	.byte	0x43
	.4byte	0xb3a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2e
	.byte	0x6b
	.4byte	0xde1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL1
	.4byte	0xe2c
	.4byte	0xda4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.4byte	.LVL2
	.4byte	0xe2c
	.4byte	0xdc4
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
	.sleb128 8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0xe2c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa33
	.uleb128 0x29
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xa
	.byte	0xf1
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xa
	.byte	0x8b
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF152
	.4byte	.LASF152
	.uleb128 0x29
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x7b
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.byte	0x4d
	.byte	0x6
	.uleb128 0x29
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x6c
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF153
	.4byte	.LASF154
	.byte	0xb
	.byte	0
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
.LVUS6:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE4
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
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU38
	.uleb128 0
.LLST4:
	.4byte	.LVL20
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU24
	.uleb128 0
.LLST2:
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF129:
	.string	"count"
.LASF54:
	.string	"_size"
.LASF144:
	.string	"mbedtls_sha256_finish_ret"
.LASF139:
	.string	"mb_ctx"
.LASF100:
	.string	"_rand48"
.LASF66:
	.string	"_emergency"
.LASF12:
	.string	"uint64_t"
.LASF135:
	.string	"crypto_hash_sha256"
.LASF5:
	.string	"__uint8_t"
.LASF59:
	.string	"_data"
.LASF120:
	.string	"_wcrtomb_state"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF58:
	.string	"_lbfsize"
.LASF151:
	.string	"__locale_t"
.LASF118:
	.string	"_mbrtowc_state"
.LASF113:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF146:
	.string	"mbedtls_sha256_init"
.LASF143:
	.string	"mbedtls_sha256_ret"
.LASF89:
	.string	"_ubuf"
.LASF53:
	.string	"_base"
.LASF36:
	.string	"__tm_hour"
.LASF80:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF84:
	.string	"_cookie"
.LASF79:
	.string	"__sglue"
.LASF128:
	.string	"state"
.LASF15:
	.string	"long int"
.LASF137:
	.string	"crypto_hash_sha256_update"
.LASF105:
	.string	"_mprec"
.LASF56:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF62:
	.string	"_stdin"
.LASF91:
	.string	"_blksize"
.LASF13:
	.string	"_lock_t"
.LASF73:
	.string	"_cvtbuf"
.LASF92:
	.string	"_offset"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF117:
	.string	"_mbrlen_state"
.LASF44:
	.string	"_fnargs"
.LASF134:
	.string	"inlen"
.LASF50:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF30:
	.string	"_sign"
.LASF24:
	.string	"_flock_t"
.LASF64:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF71:
	.string	"_gamma_signgam"
.LASF85:
	.string	"_read"
.LASF107:
	.string	"_result_k"
.LASF33:
	.string	"__tm"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"__wchb"
.LASF63:
	.string	"_stdout"
.LASF72:
	.string	"_cvtlen"
.LASF25:
	.string	"long unsigned int"
.LASF55:
	.string	"__sFILE_fake"
.LASF98:
	.string	"_niobs"
.LASF147:
	.string	"mbedtls_sha256_starts_ret"
.LASF136:
	.string	"crypto_hash_sha256_final"
.LASF1:
	.string	"short unsigned int"
.LASF78:
	.string	"_atexit0"
.LASF82:
	.string	"_signal_buf"
.LASF76:
	.string	"_asctime_buf"
.LASF106:
	.string	"_result"
.LASF19:
	.string	"__wch"
.LASF153:
	.string	"memcpy"
.LASF18:
	.string	"wint_t"
.LASF154:
	.string	"__builtin_memcpy"
.LASF93:
	.string	"_lock"
.LASF95:
	.string	"_flags2"
.LASF86:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF145:
	.string	"mbedtls_sha256_update_ret"
.LASF81:
	.string	"_misc"
.LASF127:
	.string	"crypto_hash_sha256_state"
.LASF122:
	.string	"__sf_fake_stdin"
.LASF123:
	.string	"__sf_fake_stdout"
.LASF150:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF149:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/port/crypto_hash_mbedtls/crypto_hash_sha256_mbedtls.c"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF126:
	.string	"suboptarg"
.LASF67:
	.string	"__sdidinit"
.LASF16:
	.string	"_off_t"
.LASF148:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fstack-protector"
.LASF8:
	.string	"__uint64_t"
.LASF141:
	.string	"sha256_libsodium_to_mbedtls"
.LASF109:
	.string	"_freelist"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF99:
	.string	"_iobs"
.LASF4:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF52:
	.string	"__sbuf"
.LASF96:
	.string	"__FILE"
.LASF23:
	.string	"_mbstate_t"
.LASF83:
	.string	"__sFILE"
.LASF94:
	.string	"_mbstate"
.LASF104:
	.string	"_rand_next"
.LASF112:
	.string	"_mblen_state"
.LASF65:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF142:
	.string	"sha256_mbedtls_to_libsodium"
.LASF69:
	.string	"_locale"
.LASF70:
	.string	"__cleanup"
.LASF68:
	.string	"_unspecified_locale_info"
.LASF152:
	.string	"__stack_chk_fail"
.LASF29:
	.string	"_maxwds"
.LASF60:
	.string	"_reent"
.LASF101:
	.string	"_seed"
.LASF21:
	.string	"__count"
.LASF11:
	.string	"uint32_t"
.LASF87:
	.string	"_seek"
.LASF138:
	.string	"crypto_hash_sha256_init"
.LASF17:
	.string	"_fpos_t"
.LASF61:
	.string	"_errno"
.LASF26:
	.string	"char"
.LASF35:
	.string	"__tm_min"
.LASF133:
	.string	"is224"
.LASF132:
	.string	"buffer"
.LASF102:
	.string	"_mult"
.LASF140:
	.string	"ls_state"
.LASF28:
	.string	"_next"
.LASF111:
	.string	"_strtok_last"
.LASF22:
	.string	"__value"
.LASF46:
	.string	"_fntypes"
.LASF110:
	.string	"_misc_reent"
.LASF130:
	.string	"mbedtls_sha256_context"
.LASF103:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF116:
	.string	"_getdate_err"
.LASF131:
	.string	"total"
.LASF125:
	.string	"_global_impure_ptr"
.LASF57:
	.string	"_file"
.LASF31:
	.string	"_wds"
.LASF40:
	.string	"__tm_wday"
.LASF97:
	.string	"_glue"
.LASF10:
	.string	"uint8_t"
.LASF115:
	.string	"_l64a_buf"
.LASF77:
	.string	"_sig_func"
.LASF90:
	.string	"_nbuf"
.LASF42:
	.string	"__tm_isdst"
.LASF75:
	.string	"_localtime_buf"
.LASF88:
	.string	"_close"
.LASF124:
	.string	"__sf_fake_stderr"
.LASF74:
	.string	"_r48"
.LASF114:
	.string	"_mbtowc_state"
.LASF108:
	.string	"_p5s"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
