	.file	"aead_xchacha20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_aead_xchacha20poly1305_ietf_encrypt_detached,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_encrypt_detached
	.type	crypto_aead_xchacha20poly1305_ietf_encrypt_detached, @function
crypto_aead_xchacha20poly1305_ietf_encrypt_detached:
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/aead_xchacha20poly1305.c"
	.loc 1 26 1 view -0
	.loc 1 26 1 is_stmt 0 view .LVU1
	entry	sp, 128
.LCFI0:
	.loc 1 27 5 is_stmt 1 view .LVU2
	.loc 1 28 5 view .LVU3
	.loc 1 28 19 is_stmt 0 view .LVU4
	addi	a8, sp, 64
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, a8
	s32i	a7, sp, 84
	call8	memset
.LVL1:
	.loc 1 31 5 view .LVU5
	addi	a7, sp, 32
	l32i	a12, sp, 152
	l32i	a11, sp, 148
	.loc 1 28 19 view .LVU6
	mov.n	a8, a10
	.loc 1 29 5 is_stmt 1 view .LVU7
	.loc 1 31 5 view .LVU8
	movi.n	a13, 0
	mov.n	a10, a7
	s32i	a8, sp, 80
	call8	crypto_core_hchacha20
.LVL2:
	.loc 1 32 5 view .LVU9
	l32i	a9, sp, 148
	movi.n	a12, 8
	addi	a11, a9, 16
	addi	a10, sp, 68
	call8	memcpy
.LVL3:
	.loc 1 34 5 view .LVU10
	.loc 1 34 11 is_stmt 0 view .LVU11
	l32i	a8, sp, 80
	l32i	a9, sp, 140
	s32i.n	a8, sp, 20
	l32i	a8, sp, 144
	l32i	a15, sp, 84
	s32i.n	a8, sp, 16
	l32i	a8, sp, 136
	mov.n	a11, a3
	s32i.n	a8, sp, 8
	l32i	a8, sp, 128
	s32i.n	a7, sp, 24
	s32i.n	a9, sp, 12
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_encrypt_detached
.LVL4:
	mov.n	a2, a10
.LVL5:
	.loc 1 36 5 is_stmt 1 view .LVU12
	movi.n	a11, 0x20
	mov.n	a10, a7
	.loc 1 26 1 is_stmt 0 view .LVU13
	.loc 1 36 5 view .LVU14
	call8	sodium_memzero
.LVL6:
	.loc 1 38 5 is_stmt 1 view .LVU15
	.loc 1 39 1 is_stmt 0 view .LVU16
	retw.n
.LFE12:
	.size	crypto_aead_xchacha20poly1305_ietf_encrypt_detached, .-crypto_aead_xchacha20poly1305_ietf_encrypt_detached
	.section	.text.crypto_aead_xchacha20poly1305_ietf_encrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_encrypt
	.type	crypto_aead_xchacha20poly1305_ietf_encrypt, @function
crypto_aead_xchacha20poly1305_ietf_encrypt:
.LVL7:
.LFB13:
	.loc 1 51 1 is_stmt 1 view -0
	.loc 1 51 1 is_stmt 0 view .LVU18
	entry	sp, 64
.LCFI1:
	.loc 1 52 5 is_stmt 1 view .LVU19
.LVL8:
	.loc 1 53 5 view .LVU20
	.loc 1 55 5 view .LVU21
	.loc 1 51 1 is_stmt 0 view .LVU22
	mov.n	a10, a2
	mov.n	a13, a4
	.loc 1 55 8 view .LVU23
	bnei	a7, -1, .L3
	movi.n	a8, -0x11
	bgeu	a8, a6, .L3
	.loc 1 56 9 is_stmt 1 view .LVU24
	call8	abort
.LVL9:
.L3:
	.loc 1 58 5 view .LVU25
	.loc 1 58 11 is_stmt 0 view .LVU26
	l32i	a8, sp, 88
	l32i	a9, sp, 76
	s32i.n	a8, sp, 24
	l32i	a8, sp, 84
	s32i.n	a9, sp, 12
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	mov.n	a14, a6
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	mov.n	a15, a7
	s32i.n	a8, sp, 8
	l32i	a8, sp, 64
	movi.n	a12, 0
	s32i.n	a8, sp, 0
	add.n	a11, a10, a6
	call8	crypto_aead_xchacha20poly1305_ietf_encrypt_detached
.LVL10:
	.loc 1 60 5 is_stmt 1 view .LVU27
	.loc 1 60 8 is_stmt 0 view .LVU28
	beqz.n	a3, .L2
	.loc 1 61 9 is_stmt 1 view .LVU29
	.loc 1 52 24 is_stmt 0 view .LVU30
	movi.n	a9, 0
	mov.n	a8, a9
	.loc 1 61 12 view .LVU31
	bne	a10, a9, .L6
	.loc 1 62 13 is_stmt 1 view .LVU32
	.loc 1 62 18 is_stmt 0 view .LVU33
	addi	a12, a6, 16
	movi.n	a11, 1
	bltu	a12, a6, .L7
	mov.n	a11, a10
.L7:
	.loc 1 62 18 view .LVU34
	mov.n	a9, a12
	add.n	a8, a11, a7
.LVL11:
.L6:
	.loc 1 64 9 is_stmt 1 view .LVU35
	.loc 1 64 17 is_stmt 0 view .LVU36
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 4
	.loc 1 66 5 is_stmt 1 view .LVU37
.LVL12:
.L2:
	.loc 1 67 1 is_stmt 0 view .LVU38
	mov.n	a2, a10
.LVL13:
	.loc 1 67 1 view .LVU39
	retw.n
.LFE13:
	.size	crypto_aead_xchacha20poly1305_ietf_encrypt, .-crypto_aead_xchacha20poly1305_ietf_encrypt
	.section	.text.crypto_aead_xchacha20poly1305_ietf_decrypt_detached,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_decrypt_detached
	.type	crypto_aead_xchacha20poly1305_ietf_decrypt_detached, @function
crypto_aead_xchacha20poly1305_ietf_decrypt_detached:
.LVL14:
.LFB14:
	.loc 1 79 1 is_stmt 1 view -0
	.loc 1 79 1 is_stmt 0 view .LVU41
	entry	sp, 128
.LCFI2:
	.loc 1 80 5 is_stmt 1 view .LVU42
	.loc 1 81 5 view .LVU43
	.loc 1 79 1 is_stmt 0 view .LVU44
	mov.n	a15, a7
	.loc 1 81 19 view .LVU45
	addi	a7, sp, 64
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, a7
	s32i	a15, sp, 80
	call8	memset
.LVL15:
	.loc 1 82 5 is_stmt 1 view .LVU46
	.loc 1 84 5 view .LVU47
	addi	a5, sp, 32
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	movi.n	a13, 0
	mov.n	a10, a5
	call8	crypto_core_hchacha20
.LVL16:
	.loc 1 85 5 view .LVU48
	l32i	a8, sp, 144
	movi.n	a12, 8
	addi	a11, a8, 16
	addi	a10, sp, 68
	call8	memcpy
.LVL17:
	.loc 1 87 5 view .LVU49
	.loc 1 87 11 is_stmt 0 view .LVU50
	s32i.n	a7, sp, 16
	l32i	a7, sp, 132
	l32i	a8, sp, 136
	l32i	a9, sp, 140
	s32i.n	a7, sp, 4
	l32i	a7, sp, 128
	l32i	a15, sp, 80
	mov.n	a11, a3
	s32i.n	a5, sp, 20
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	s32i.n	a7, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_decrypt_detached
.LVL18:
	mov.n	a2, a10
.LVL19:
	.loc 1 89 5 is_stmt 1 view .LVU51
	movi.n	a11, 0x20
	mov.n	a10, a5
	.loc 1 79 1 is_stmt 0 view .LVU52
	.loc 1 89 5 view .LVU53
	call8	sodium_memzero
.LVL20:
	.loc 1 91 5 is_stmt 1 view .LVU54
	.loc 1 93 1 is_stmt 0 view .LVU55
	retw.n
.LFE14:
	.size	crypto_aead_xchacha20poly1305_ietf_decrypt_detached, .-crypto_aead_xchacha20poly1305_ietf_decrypt_detached
	.section	.text.crypto_aead_xchacha20poly1305_ietf_decrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_decrypt
	.type	crypto_aead_xchacha20poly1305_ietf_decrypt, @function
crypto_aead_xchacha20poly1305_ietf_decrypt:
.LVL21:
.LFB15:
	.loc 1 105 1 is_stmt 1 view -0
	.loc 1 105 1 is_stmt 0 view .LVU57
	entry	sp, 64
.LCFI3:
	.loc 1 106 5 is_stmt 1 view .LVU58
.LVL22:
	.loc 1 107 5 view .LVU59
	.loc 1 109 5 view .LVU60
	.loc 1 105 1 is_stmt 0 view .LVU61
	mov.n	a10, a2
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 109 8 view .LVU62
	bnez.n	a7, .L21
	movi.n	a8, 0xf
	bgeu	a8, a6, .L31
.L21:
	.loc 1 110 9 is_stmt 1 view .LVU63
	.loc 1 110 15 is_stmt 0 view .LVU64
	addi	a13, a6, -16
	movi.n	a9, 1
	bltu	a13, a6, .L17
	movi.n	a9, 0
.L17:
	addi.n	a8, a7, -1
	add.n	a7, a9, a8
	l32i	a8, sp, 84
	l32i	a9, sp, 76
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a9, sp, 12
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	mov.n	a14, a13
	s32i.n	a8, sp, 8
	l32i	a8, sp, 64
	mov.n	a15, a7
	s32i.n	a8, sp, 4
	add.n	a8, a12, a13
	s32i.n	a8, sp, 0
	mov.n	a6, a13
.LVL23:
	.loc 1 110 15 view .LVU65
	call8	crypto_aead_xchacha20poly1305_ietf_decrypt_detached
.LVL24:
	.loc 1 116 5 is_stmt 1 view .LVU66
	.loc 1 116 8 is_stmt 0 view .LVU67
	beqz.n	a3, .L14
	.loc 1 117 9 is_stmt 1 view .LVU68
	.loc 1 117 12 is_stmt 0 view .LVU69
	beqz.n	a10, .L19
	.loc 1 106 24 view .LVU70
	movi.n	a6, 0
	mov.n	a7, a6
.LVL25:
.L19:
	.loc 1 120 9 is_stmt 1 view .LVU71
	.loc 1 120 17 is_stmt 0 view .LVU72
	s32i.n	a6, a3, 0
	s32i.n	a7, a3, 4
	.loc 1 122 5 is_stmt 1 view .LVU73
	.loc 1 122 12 is_stmt 0 view .LVU74
	j	.L14
.LVL26:
.L31:
	.loc 1 116 5 is_stmt 1 view .LVU75
	.loc 1 106 24 is_stmt 0 view .LVU76
	movi.n	a6, 0
.LVL27:
	.loc 1 107 9 view .LVU77
	movi.n	a10, -1
	.loc 1 106 24 view .LVU78
	mov.n	a7, a6
	.loc 1 116 8 view .LVU79
	bne	a3, a6, .L19
.LVL28:
.L14:
	.loc 1 123 1 view .LVU80
	mov.n	a2, a10
.LVL29:
	.loc 1 123 1 view .LVU81
	retw.n
.LFE15:
	.size	crypto_aead_xchacha20poly1305_ietf_decrypt, .-crypto_aead_xchacha20poly1305_ietf_decrypt
	.section	.text.crypto_aead_xchacha20poly1305_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_keybytes
	.type	crypto_aead_xchacha20poly1305_ietf_keybytes, @function
crypto_aead_xchacha20poly1305_ietf_keybytes:
.LFB16:
	.loc 1 127 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 128 5 view .LVU83
	.loc 1 129 1 is_stmt 0 view .LVU84
	movi.n	a2, 0x20
	retw.n
.LFE16:
	.size	crypto_aead_xchacha20poly1305_ietf_keybytes, .-crypto_aead_xchacha20poly1305_ietf_keybytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_npubbytes
	.type	crypto_aead_xchacha20poly1305_ietf_npubbytes, @function
crypto_aead_xchacha20poly1305_ietf_npubbytes:
.LFB17:
	.loc 1 133 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI5:
	.loc 1 134 5 view .LVU86
	.loc 1 135 1 is_stmt 0 view .LVU87
	movi.n	a2, 0x18
	retw.n
.LFE17:
	.size	crypto_aead_xchacha20poly1305_ietf_npubbytes, .-crypto_aead_xchacha20poly1305_ietf_npubbytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_nsecbytes
	.type	crypto_aead_xchacha20poly1305_ietf_nsecbytes, @function
crypto_aead_xchacha20poly1305_ietf_nsecbytes:
.LFB18:
	.loc 1 139 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI6:
	.loc 1 140 5 view .LVU89
	.loc 1 141 1 is_stmt 0 view .LVU90
	movi.n	a2, 0
	retw.n
.LFE18:
	.size	crypto_aead_xchacha20poly1305_ietf_nsecbytes, .-crypto_aead_xchacha20poly1305_ietf_nsecbytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_abytes
	.type	crypto_aead_xchacha20poly1305_ietf_abytes, @function
crypto_aead_xchacha20poly1305_ietf_abytes:
.LFB19:
	.loc 1 145 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
	.loc 1 146 5 view .LVU92
	.loc 1 147 1 is_stmt 0 view .LVU93
	movi.n	a2, 0x10
	retw.n
.LFE19:
	.size	crypto_aead_xchacha20poly1305_ietf_abytes, .-crypto_aead_xchacha20poly1305_ietf_abytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_keygen
	.type	crypto_aead_xchacha20poly1305_ietf_keygen, @function
crypto_aead_xchacha20poly1305_ietf_keygen:
.LVL30:
.LFB20:
	.loc 1 151 1 is_stmt 1 view -0
	.loc 1 151 1 is_stmt 0 view .LVU95
	entry	sp, 32
.LCFI8:
	.loc 1 152 5 is_stmt 1 view .LVU96
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL31:
	.loc 1 153 1 is_stmt 0 view .LVU97
	retw.n
.LFE20:
	.size	crypto_aead_xchacha20poly1305_ietf_keygen, .-crypto_aead_xchacha20poly1305_ietf_keygen
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
	.uleb128 0x80
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
	.uleb128 0x40
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
	.uleb128 0x80
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
	.uleb128 0x40
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
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
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hchacha20.h"
	.file 9 "<built-in>"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_aead_chacha20poly1305.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf77
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
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	0x33
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x86
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x86
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x54
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd4
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd4
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0x54
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x108
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	0x12f
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x122
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x1a7
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x9
	.4byte	0x13b
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x23a
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x4d
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x27f
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x27f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x27f
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x13b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x13b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x120
	.4byte	0x28f
	.uleb128 0xa
	.4byte	0x54
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2d1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2d1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2d7
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2ee
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x28f
	.uleb128 0x9
	.4byte	0x2e7
	.4byte	0x2e7
	.uleb128 0xa
	.4byte	0x54
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2ed
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x31c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x31c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x33
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x395
	.uleb128 0x10
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x31c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x322
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4f9
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4d
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x129
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x4d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4d
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4d
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x129
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8bf
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x129
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2d1
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x28f
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6fb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x129
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x39a
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x642
	.uleb128 0x10
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x31c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x4d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x120
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x660
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x68a
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6ae
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2f4
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x31c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x4d
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ce
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6de
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2f4
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x4d
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x8d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x114
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0x108
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x4d
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x660
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x129
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x642
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x136
	.uleb128 0xe
	.byte	0x4
	.4byte	0x666
	.uleb128 0x17
	.4byte	0x99
	.4byte	0x6ae
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x99
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x4d
	.4byte	0x6c8
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x6de
	.uleb128 0xa
	.4byte	0x54
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ff
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x734
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x734
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x73a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x787
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x787
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x787
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x797
	.uleb128 0xa
	.4byte	0x54
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7de
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1a1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7de
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x88d
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x129
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0x108
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0x108
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0x108
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x88d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4d
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0x108
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0x108
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0x108
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0x108
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0x108
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x89d
	.uleb128 0xa
	.4byte	0x54
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF152
	.uleb128 0xe
	.byte	0x4
	.4byte	0x89d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x797
	.uleb128 0x1a
	.4byte	0x8b9
	.uleb128 0x18
	.4byte	0x4f9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ae
	.uleb128 0xe
	.byte	0x4
	.4byte	0x740
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0x1a
	.4byte	0x8d6
	.uleb128 0x18
	.4byte	0x4d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4f9
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x129
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x961
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x96
	.byte	0x39
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL31
	.4byte	0xf1c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	0x62
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab5
	.uleb128 0x23
	.string	"m"
	.byte	0x1
	.byte	0x60
	.byte	0x3b
	.4byte	0x31c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x24
	.4byte	.LASF126
	.byte	0x1
	.byte	0x61
	.byte	0x40
	.4byte	0xab5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x62
	.byte	0x3b
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x63
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF128
	.byte	0x1
	.byte	0x64
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1e
	.string	"ad"
	.byte	0x1
	.byte	0x65
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x66
	.byte	0x3f
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x67
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x68
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x1
	.byte	0x6a
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1f
	.4byte	.LVL24
	.4byte	0xac1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4f
	.uleb128 0x23
	.string	"m"
	.byte	0x1
	.byte	0x46
	.byte	0x44
	.4byte	0x31c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x47
	.byte	0x44
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x48
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x49
	.byte	0x48
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"mac"
	.byte	0x1
	.byte	0x4a
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"ad"
	.byte	0x1
	.byte	0x4b
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x4c
	.byte	0x48
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x4d
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x4e
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.string	"k2"
	.byte	0x1
	.byte	0x50
	.byte	0x13
	.4byte	0xc4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.byte	0x51
	.byte	0x13
	.4byte	0xc5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2a
	.4byte	.LVL15
	.4byte	0xf28
	.4byte	0xbb2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL16
	.4byte	0xf33
	.4byte	0xbd9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL17
	.4byte	0xf3f
	.4byte	0xbfb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL18
	.4byte	0xf4a
	.4byte	0xc38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0xf56
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0xc5f
	.uleb128 0xa
	.4byte	0x54
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0xc6f
	.uleb128 0xa
	.4byte	0x54
	.byte	0xb
	.byte	0
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd80
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0x2a
	.byte	0x3b
	.4byte	0x31c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2b
	.byte	0x40
	.4byte	0xab5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x2c
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2d
	.byte	0x3f
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"ad"
	.byte	0x1
	.byte	0x2e
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2f
	.byte	0x3f
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x30
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x31
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x32
	.byte	0x41
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.4byte	.LASF128
	.byte	0x1
	.byte	0x34
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0xf62
	.uleb128 0x1f
	.4byte	.LVL10
	.4byte	0xd80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1c
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0x10
	.byte	0x44
	.4byte	0x31c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.string	"mac"
	.byte	0x1
	.byte	0x11
	.byte	0x44
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF138
	.byte	0x1
	.byte	0x12
	.byte	0x49
	.4byte	0xab5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x13
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x14
	.byte	0x48
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"ad"
	.byte	0x1
	.byte	0x15
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x16
	.byte	0x48
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x17
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x18
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.string	"k"
	.byte	0x1
	.byte	0x19
	.byte	0x4a
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.string	"k2"
	.byte	0x1
	.byte	0x1b
	.byte	0x13
	.4byte	0xc4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.byte	0x1c
	.byte	0x13
	.4byte	0xc5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.4byte	0x4d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0xf28
	.4byte	0xe7f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0xf33
	.4byte	0xea6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0xf3f
	.4byte	0xec8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL4
	.4byte	0xf6e
	.4byte	0xf05
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0xf56
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x7
	.byte	0x21
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF141
	.4byte	.LASF143
	.byte	0x9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.byte	0x1c
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF142
	.4byte	.LASF144
	.byte	0x9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x45
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xb
	.byte	0x16
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x6
	.byte	0x49
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
	.byte	0x39
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU59
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU80
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU60
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 .LVU80
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU51
	.uleb128 0
.LLST6:
	.4byte	.LVL19
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU20
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU27
	.uleb128 0
.LLST4:
	.4byte	.LVL10
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
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
.LVUS1:
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF49:
	.string	"_size"
.LASF139:
	.string	"randombytes_buf"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"_rand48"
.LASF61:
	.string	"_emergency"
.LASF123:
	.string	"crypto_aead_xchacha20poly1305_ietf_nsecbytes"
.LASF127:
	.string	"nsec"
.LASF54:
	.string	"_data"
.LASF124:
	.string	"crypto_aead_xchacha20poly1305_ietf_npubbytes"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF143:
	.string	"__builtin_memset"
.LASF0:
	.string	"long long unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF134:
	.string	"npub2"
.LASF152:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF136:
	.string	"clen_p"
.LASF108:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF84:
	.string	"_ubuf"
.LASF133:
	.string	"crypto_aead_xchacha20poly1305_ietf_decrypt_detached"
.LASF48:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF75:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF79:
	.string	"_cookie"
.LASF74:
	.string	"__sglue"
.LASF10:
	.string	"long int"
.LASF100:
	.string	"_mprec"
.LASF51:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF57:
	.string	"_stdin"
.LASF86:
	.string	"_blksize"
.LASF8:
	.string	"_lock_t"
.LASF68:
	.string	"_cvtbuf"
.LASF87:
	.string	"_offset"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF45:
	.string	"_fns"
.LASF25:
	.string	"_sign"
.LASF19:
	.string	"_flock_t"
.LASF59:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF66:
	.string	"_gamma_signgam"
.LASF135:
	.string	"crypto_aead_xchacha20poly1305_ietf_encrypt"
.LASF150:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/aead_xchacha20poly1305.c"
.LASF80:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF5:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF58:
	.string	"_stdout"
.LASF67:
	.string	"_cvtlen"
.LASF20:
	.string	"long unsigned int"
.LASF50:
	.string	"__sFILE_fake"
.LASF93:
	.string	"_niobs"
.LASF129:
	.string	"adlen"
.LASF4:
	.string	"short unsigned int"
.LASF73:
	.string	"_atexit0"
.LASF77:
	.string	"_signal_buf"
.LASF71:
	.string	"_asctime_buf"
.LASF101:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF142:
	.string	"memcpy"
.LASF13:
	.string	"wint_t"
.LASF144:
	.string	"__builtin_memcpy"
.LASF88:
	.string	"_lock"
.LASF145:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt_detached"
.LASF90:
	.string	"_flags2"
.LASF131:
	.string	"mlen"
.LASF81:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF137:
	.string	"crypto_aead_xchacha20poly1305_ietf_encrypt_detached"
.LASF76:
	.string	"_misc"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF151:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF128:
	.string	"clen"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF121:
	.string	"suboptarg"
.LASF62:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF153:
	.string	"crypto_aead_xchacha20poly1305_ietf_keygen"
.LASF146:
	.string	"sodium_memzero"
.LASF148:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt_detached"
.LASF104:
	.string	"_freelist"
.LASF125:
	.string	"crypto_aead_xchacha20poly1305_ietf_keybytes"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF2:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF3:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF47:
	.string	"__sbuf"
.LASF91:
	.string	"__FILE"
.LASF18:
	.string	"_mbstate_t"
.LASF78:
	.string	"__sFILE"
.LASF89:
	.string	"_mbstate"
.LASF99:
	.string	"_rand_next"
.LASF107:
	.string	"_mblen_state"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF130:
	.string	"npub"
.LASF64:
	.string	"_locale"
.LASF65:
	.string	"__cleanup"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF55:
	.string	"_reent"
.LASF96:
	.string	"_seed"
.LASF16:
	.string	"__count"
.LASF17:
	.string	"__value"
.LASF82:
	.string	"_seek"
.LASF12:
	.string	"_fpos_t"
.LASF56:
	.string	"_errno"
.LASF21:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF140:
	.string	"crypto_core_hchacha20"
.LASF147:
	.string	"abort"
.LASF97:
	.string	"_mult"
.LASF138:
	.string	"maclen_p"
.LASF23:
	.string	"_next"
.LASF149:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF126:
	.string	"mlen_p"
.LASF132:
	.string	"crypto_aead_xchacha20poly1305_ietf_decrypt"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF120:
	.string	"_global_impure_ptr"
.LASF141:
	.string	"memset"
.LASF52:
	.string	"_file"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF110:
	.string	"_l64a_buf"
.LASF72:
	.string	"_sig_func"
.LASF122:
	.string	"crypto_aead_xchacha20poly1305_ietf_abytes"
.LASF85:
	.string	"_nbuf"
.LASF37:
	.string	"__tm_isdst"
.LASF70:
	.string	"_localtime_buf"
.LASF83:
	.string	"_close"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF69:
	.string	"_r48"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
