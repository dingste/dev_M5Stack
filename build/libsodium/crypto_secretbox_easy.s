	.file	"crypto_secretbox_easy.c"
	.text
.Ltext0:
	.section	.text.crypto_secretbox_detached,"ax",@progbits
	.literal_position
	.literal .LC1, 1, 0
	.align	4
	.global	crypto_secretbox_detached
	.type	crypto_secretbox_detached, @function
crypto_secretbox_detached:
.LVL0:
.LFB15:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
	.loc 1 20 1 view -0
	.loc 1 20 1 is_stmt 0 view .LVU1
	entry	sp, 432
.LCFI0:
	.loc 1 21 5 is_stmt 1 view .LVU2
	.loc 1 22 5 view .LVU3
	.loc 1 23 5 view .LVU4
	.loc 1 24 5 view .LVU5
	.loc 1 25 5 view .LVU6
	.loc 1 27 5 view .LVU7
	.loc 1 20 1 is_stmt 0 view .LVU8
	s32i	a3, sp, 376
	.loc 1 27 5 view .LVU9
	movi	a10, 0x140
	addi	a3, sp, 16
.LVL1:
	.loc 1 27 5 view .LVU10
	l32i	a12, sp, 436
	l32i	a11, sp, 432
	movi.n	a13, 0
	add.n	a10, a3, a10
	.loc 1 20 1 view .LVU11
	.loc 1 27 5 view .LVU12
	call8	crypto_core_hsalsa20
.LVL2:
	.loc 1 29 5 is_stmt 1 view .LVU13
	.loc 1 29 8 is_stmt 0 view .LVU14
	bltu	a2, a4, .L2
	.loc 1 30 24 discriminator 1 view .LVU15
	sub	a3, a2, a4
	.loc 1 29 41 discriminator 1 view .LVU16
	bnez.n	a7, .L3
	bltu	a3, a6, .L3
	.loc 1 30 48 view .LVU17
	bne	a2, a4, .L5
.L2:
	.loc 1 32 24 view .LVU18
	sub	a3, a4, a2
	.loc 1 31 41 view .LVU19
	bnez.n	a7, .L3
	bgeu	a3, a6, .L5
.L3:
	.loc 1 33 9 is_stmt 1 view .LVU20
	mov.n	a11, a4
	mov.n	a12, a6
	mov.n	a10, a2
	call8	memmove
.LVL3:
	.loc 1 34 9 view .LVU21
	.loc 1 33 9 is_stmt 0 view .LVU22
	mov.n	a4, a2
.LVL4:
.L5:
	.loc 1 36 5 is_stmt 1 view .LVU23
	movi.n	a8, 0x20
	addi	a5, sp, 16
	mov.n	a12, a8
	addmi	a10, a5, 0x100
	movi.n	a11, 0
	s32i	a8, sp, 384
	call8	memset
.LVL5:
	.loc 1 37 5 view .LVU24
	.loc 1 38 5 view .LVU25
	.loc 1 39 5 view .LVU26
	mov.n	a3, a6
	mov.n	a5, a7
	l32i	a8, sp, 384
	bnez.n	a7, .L8
	.loc 1 39 5 is_stmt 0 view .LVU27
	bgeu	a8, a6, .L7
.L8:
	movi.n	a3, 0x20
	movi.n	a5, 0
.L7:
.LVL6:
	.loc 1 42 5 is_stmt 1 view .LVU28
	.loc 1 42 5 is_stmt 0 view .LVU29
	addi	a9, sp, 16
	addmi	a8, a9, 0x100
	s32i	a3, sp, 372
	mov.n	a10, a8
	movi.n	a9, 0
	j	.L9
.LVL7:
.L10:
	.loc 1 43 9 is_stmt 1 discriminator 3 view .LVU30
	.loc 1 43 36 is_stmt 0 discriminator 3 view .LVU31
	add.n	a11, a4, a9
	.loc 1 43 33 discriminator 3 view .LVU32
	l8ui	a11, a11, 0
	addi.n	a9, a9, 1
	s8i	a11, a10, 31
.L9:
	.loc 1 42 5 discriminator 1 view .LVU33
	l32i	a11, sp, 372
	addi.n	a10, a10, 1
	bne	a11, a9, .L10
	.loc 1 45 5 is_stmt 1 view .LVU34
	l32i	a9, sp, 432
	movi	a15, 0x140
	addi	a9, a9, 16
	addi	a10, sp, 16
	s32i	a9, sp, 368
	addi	a12, a3, 32
	add.n	a15, a10, a15
	movi.n	a13, 1
	bltu	a12, a3, .L11
	movi.n	a13, 0
.L11:
	addi	a11, sp, 16
	addmi	a9, a11, 0x100
	l32i	a14, sp, 368
	mov.n	a11, a9
	add.n	a13, a13, a5
	mov.n	a10, a9
	s32i	a8, sp, 384
	s32i	a9, sp, 380
	call8	crypto_stream_salsa20_xor
.LVL8:
	.loc 1 48 5 view .LVU35
	.loc 1 50 5 view .LVU36
	l32i	a9, sp, 380
	addi	a10, sp, 16
	mov.n	a11, a9
	call8	crypto_onetimeauth_poly1305_init
.LVL9:
	.loc 1 52 5 view .LVU37
	.loc 1 52 5 is_stmt 0 view .LVU38
	movi.n	a9, 0
	l32i	a8, sp, 384
	j	.L12
.LVL10:
.L13:
	.loc 1 53 9 is_stmt 1 discriminator 3 view .LVU39
	.loc 1 53 14 is_stmt 0 discriminator 3 view .LVU40
	l8ui	a11, a8, 31
	add.n	a10, a2, a9
	s8i	a11, a10, 0
	addi.n	a9, a9, 1
.L12:
	.loc 1 52 5 discriminator 1 view .LVU41
	l32i	a10, sp, 372
	addi.n	a8, a8, 1
	bne	a9, a10, .L13
	.loc 1 55 5 is_stmt 1 view .LVU42
	addi	a8, sp, 16
	movi.n	a11, 0x40
	addmi	a10, a8, 0x100
	call8	sodium_memzero
.LVL11:
	.loc 1 56 5 view .LVU43
	.loc 1 56 8 is_stmt 0 view .LVU44
	bltu	a5, a7, .L18
	bne	a7, a5, .L14
	bgeu	a3, a6, .L14
.L18:
	.loc 1 57 9 is_stmt 1 view .LVU45
	sub	a12, a6, a3
	movi.n	a8, 1
	bltu	a6, a12, .L16
	movi.n	a8, 0
.L16:
	movi	a3, 0x140
.LVL12:
	.loc 1 57 9 is_stmt 0 view .LVU46
	addi	a9, sp, 16
	add.n	a3, a9, a3
	l32r	a10, .LC1
	l32r	a11, .LC1+4
	s32i.n	a3, sp, 8
	l32i	a3, sp, 372
	sub	a13, a7, a5
	l32i	a14, sp, 368
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	sub	a13, a13, a8
	add.n	a11, a4, a3
	add.n	a10, a2, a3
	call8	crypto_stream_salsa20_xor_ic
.LVL13:
.L14:
	.loc 1 60 5 is_stmt 1 view .LVU47
	addi	a5, sp, 16
.LVL14:
	.loc 1 60 5 is_stmt 0 view .LVU48
	movi	a10, 0x140
	add.n	a10, a5, a10
	movi.n	a11, 0x20
	call8	sodium_memzero
.LVL15:
	.loc 1 62 5 is_stmt 1 view .LVU49
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL16:
	.loc 1 63 5 view .LVU50
	l32i	a11, sp, 376
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL17:
	.loc 1 64 5 view .LVU51
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL18:
	.loc 1 66 5 view .LVU52
	.loc 1 67 1 is_stmt 0 view .LVU53
	movi.n	a2, 0
.LVL19:
	.loc 1 67 1 view .LVU54
	retw.n
.LFE15:
	.size	crypto_secretbox_detached, .-crypto_secretbox_detached
	.section	.text.crypto_secretbox_easy,"ax",@progbits
	.align	4
	.global	crypto_secretbox_easy
	.type	crypto_secretbox_easy, @function
crypto_secretbox_easy:
.LVL20:
.LFB16:
	.loc 1 73 1 is_stmt 1 view -0
	.loc 1 73 1 is_stmt 0 view .LVU56
	entry	sp, 48
.LCFI1:
	.loc 1 74 5 is_stmt 1 view .LVU57
	.loc 1 73 1 is_stmt 0 view .LVU58
	mov.n	a12, a3
	mov.n	a14, a4
	mov.n	a15, a5
	.loc 1 74 8 view .LVU59
	bnez.n	a5, .L22
	movi.n	a8, -0x11
	bltu	a8, a4, .L22
	.loc 1 77 5 is_stmt 1 view .LVU60
	.loc 1 77 12 is_stmt 0 view .LVU61
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_secretbox_detached
.LVL21:
	j	.L19
.L22:
	.loc 1 75 16 view .LVU62
	movi.n	a10, -1
.L19:
	.loc 1 79 1 view .LVU63
	mov.n	a2, a10
.LVL22:
	.loc 1 79 1 view .LVU64
	retw.n
.LFE16:
	.size	crypto_secretbox_easy, .-crypto_secretbox_easy
	.section	.text.crypto_secretbox_open_detached,"ax",@progbits
	.literal_position
	.literal .LC2, 32, 0
	.literal .LC3, 1, 0
	.align	4
	.global	crypto_secretbox_open_detached
	.type	crypto_secretbox_open_detached, @function
crypto_secretbox_open_detached:
.LVL23:
.LFB17:
	.loc 1 87 1 is_stmt 1 view -0
	.loc 1 87 1 is_stmt 0 view .LVU66
	entry	sp, 176
.LCFI2:
	.loc 1 88 5 is_stmt 1 view .LVU67
	.loc 1 89 5 view .LVU68
	.loc 1 90 5 view .LVU69
	.loc 1 91 5 view .LVU70
	.loc 1 93 5 view .LVU71
	l32i	a11, sp, 176
	addi	a5, sp, 80
	l32i	a12, sp, 180
	movi.n	a13, 0
	mov.n	a10, a5
	call8	crypto_core_hsalsa20
.LVL24:
	.loc 1 94 5 view .LVU72
	l32i	a8, sp, 176
	l32r	a12, .LC2
	addi	a8, a8, 16
	l32r	a13, .LC2+4
	mov.n	a14, a8
	mov.n	a15, a5
	addi	a10, sp, 16
	s32i	a8, sp, 116
	call8	crypto_stream_salsa20
.LVL25:
	.loc 1 96 5 view .LVU73
	.loc 1 96 9 is_stmt 0 view .LVU74
	addi	a14, sp, 16
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a3
	mov.n	a10, a4
	call8	crypto_onetimeauth_poly1305_verify
.LVL26:
	s32i	a10, sp, 120
	.loc 1 87 1 view .LVU75
	.loc 1 96 8 view .LVU76
	beqz.n	a10, .L25
	.loc 1 97 9 is_stmt 1 view .LVU77
	movi.n	a11, 0x20
	mov.n	a10, a5
	.loc 1 98 16 is_stmt 0 view .LVU78
	movi.n	a2, -1
.LVL27:
	.loc 1 97 9 view .LVU79
	call8	sodium_memzero
.LVL28:
	.loc 1 98 9 is_stmt 1 view .LVU80
	.loc 1 98 16 is_stmt 0 view .LVU81
	s32i	a2, sp, 120
	j	.L24
.LVL29:
.L25:
	.loc 1 100 5 is_stmt 1 view .LVU82
	.loc 1 100 8 is_stmt 0 view .LVU83
	beqz.n	a2, .L24
	.loc 1 103 5 is_stmt 1 view .LVU84
	.loc 1 103 8 is_stmt 0 view .LVU85
	bltu	a3, a2, .L27
	.loc 1 104 24 discriminator 1 view .LVU86
	sub	a4, a3, a2
.LVL30:
	.loc 1 103 41 discriminator 1 view .LVU87
	bnez.n	a7, .L28
	bltu	a4, a6, .L28
	.loc 1 104 48 view .LVU88
	bne	a3, a2, .L30
.L27:
	.loc 1 106 24 view .LVU89
	sub	a4, a2, a3
	.loc 1 105 41 view .LVU90
	bnez.n	a7, .L28
	bgeu	a4, a6, .L30
.L28:
	.loc 1 107 9 is_stmt 1 view .LVU91
	mov.n	a11, a3
	mov.n	a12, a6
	mov.n	a10, a2
	call8	memmove
.LVL31:
	.loc 1 108 9 view .LVU92
	.loc 1 107 9 is_stmt 0 view .LVU93
	mov.n	a3, a2
.LVL32:
.L30:
	.loc 1 110 5 is_stmt 1 view .LVU94
	.loc 1 111 5 view .LVU95
	mov.n	a4, a6
	mov.n	a9, a7
	bnez.n	a7, .L33
.LVL33:
	.loc 1 111 5 is_stmt 0 view .LVU96
	movi.n	a8, 0x20
	bgeu	a8, a6, .L32
.L33:
	movi.n	a4, 0x20
.LVL34:
	.loc 1 111 5 view .LVU97
	movi.n	a9, 0
.L32:
.LVL35:
	.loc 1 114 5 is_stmt 1 view .LVU98
	.loc 1 114 5 is_stmt 0 view .LVU99
	addi	a8, sp, 16
	s32i	a4, sp, 112
	mov.n	a11, a8
	movi.n	a10, 0
	j	.L34
.LVL36:
.L35:
	.loc 1 115 9 is_stmt 1 discriminator 3 view .LVU100
	.loc 1 115 36 is_stmt 0 discriminator 3 view .LVU101
	add.n	a12, a3, a10
	.loc 1 115 33 discriminator 3 view .LVU102
	l8ui	a12, a12, 0
	addi.n	a10, a10, 1
	s8i	a12, a11, 31
.L34:
	.loc 1 114 5 discriminator 1 view .LVU103
	l32i	a12, sp, 112
	addi.n	a11, a11, 1
	bne	a10, a12, .L35
	.loc 1 117 5 is_stmt 1 view .LVU104
	addi	a12, a4, 32
	movi.n	a13, 1
	bltu	a12, a4, .L36
	movi.n	a13, 0
.L36:
	addi	a11, sp, 16
	l32i	a14, sp, 116
	add.n	a13, a13, a9
	mov.n	a15, a5
	mov.n	a10, a11
	s32i	a8, sp, 124
	s32i	a9, sp, 128
	call8	crypto_stream_salsa20_xor
.LVL37:
	.loc 1 120 5 view .LVU105
	.loc 1 120 5 is_stmt 0 view .LVU106
	movi.n	a10, 0
	l32i	a8, sp, 124
	l32i	a9, sp, 128
	j	.L37
.LVL38:
.L38:
	.loc 1 121 9 is_stmt 1 discriminator 3 view .LVU107
	.loc 1 121 14 is_stmt 0 discriminator 3 view .LVU108
	l8ui	a12, a8, 31
	add.n	a11, a2, a10
	s8i	a12, a11, 0
	addi.n	a10, a10, 1
.L37:
	.loc 1 120 5 discriminator 1 view .LVU109
	l32i	a11, sp, 112
	addi.n	a8, a8, 1
	bne	a10, a11, .L38
	.loc 1 123 5 is_stmt 1 view .LVU110
	.loc 1 123 8 is_stmt 0 view .LVU111
	bltu	a9, a7, .L43
	bne	a7, a9, .L39
	bgeu	a4, a6, .L39
.L43:
	.loc 1 124 9 is_stmt 1 view .LVU112
	sub	a12, a6, a4
	movi.n	a13, 1
	bltu	a6, a12, .L41
	movi.n	a13, 0
.L41:
	sub	a7, a7, a9
	l32i	a4, sp, 112
	.loc 1 124 9 is_stmt 0 view .LVU113
	l32r	a8, .LC3
	l32r	a9, .LC3+4
	l32i	a14, sp, 116
	s32i.n	a5, sp, 8
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	sub	a13, a7, a13
	add.n	a11, a3, a4
	add.n	a10, a2, a4
	call8	crypto_stream_salsa20_xor_ic
.LVL39:
.L39:
	.loc 1 127 5 is_stmt 1 view .LVU114
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL40:
	.loc 1 129 5 view .LVU115
.L24:
	.loc 1 130 1 is_stmt 0 view .LVU116
	l32i	a2, sp, 120
	retw.n
.LFE17:
	.size	crypto_secretbox_open_detached, .-crypto_secretbox_open_detached
	.section	.text.crypto_secretbox_open_easy,"ax",@progbits
	.align	4
	.global	crypto_secretbox_open_easy
	.type	crypto_secretbox_open_easy, @function
crypto_secretbox_open_easy:
.LVL41:
.LFB18:
	.loc 1 136 1 is_stmt 1 view -0
	.loc 1 136 1 is_stmt 0 view .LVU118
	entry	sp, 48
.LCFI3:
	.loc 1 137 5 is_stmt 1 view .LVU119
	.loc 1 136 1 is_stmt 0 view .LVU120
	mov.n	a10, a2
	.loc 1 137 8 view .LVU121
	bnez.n	a5, .L52
	movi.n	a8, 0xf
	bgeu	a8, a4, .L53
.L52:
	.loc 1 140 5 is_stmt 1 view .LVU122
	.loc 1 140 12 is_stmt 0 view .LVU123
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
.LVL42:
	j	.L47
.L53:
	.loc 1 138 16 view .LVU124
	movi.n	a10, -1
.L47:
	.loc 1 143 1 view .LVU125
	mov.n	a2, a10
.LVL43:
	.loc 1 143 1 view .LVU126
	retw.n
.LFE18:
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x1b0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.uleb128 0x4
	.4byte	0x41
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
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x33
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
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x25
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
	.4byte	0x41
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0x25
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
	.4byte	0x33
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
	.uleb128 0x4
	.4byte	0x12f
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x122
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x33
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
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
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x23a
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x33
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x27f
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x27f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x27f
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x13b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x13b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x120
	.4byte	0x28f
	.uleb128 0xa
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2d1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2d1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2d7
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
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
	.4byte	0x25
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
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x31c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x31c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x395
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x31c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x322
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4f9
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x73a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x73a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x73a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x129
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x33
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x129
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8bf
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x129
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2d1
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x28f
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6fb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x73a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
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
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x642
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x31c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4f9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x120
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x660
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x68a
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6ae
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2f4
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x31c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x33
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ce
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6de
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2f4
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x33
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x8d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x114
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x108
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x660
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x129
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x642
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x33
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
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x33
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
	.4byte	0x41
	.4byte	0x6de
	.uleb128 0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4ff
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x734
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x734
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
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
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x787
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x787
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x787
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x797
	.uleb128 0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7de
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1a1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
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
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x88d
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x129
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x108
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x108
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x108
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x88d
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x33
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x108
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x108
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x108
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x108
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x108
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x89d
	.uleb128 0xa
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF148
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
	.4byte	0x33
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
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x395
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4f9
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x129
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x8
	.byte	0x52
	.byte	0x15
	.4byte	0x62
	.uleb128 0x11
	.4byte	.LASF123
	.2byte	0x100
	.byte	0x9
	.byte	0x13
	.byte	0x2e
	.4byte	0x950
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x9
	.byte	0x14
	.byte	0x13
	.4byte	0x950
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x960
	.uleb128 0xa
	.4byte	0x25
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x9
	.byte	0x15
	.byte	0x3
	.4byte	0x934
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f5
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.byte	0x85
	.byte	0x2b
	.4byte	0x31c
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x85
	.byte	0x43
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x86
	.byte	0x2f
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x86
	.byte	0x4a
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x87
	.byte	0x31
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0x9fb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x48
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd2
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.byte	0x52
	.byte	0x2f
	.4byte	0x31c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x52
	.byte	0x47
	.4byte	0x9f5
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1f
	.string	"mac"
	.byte	0x1
	.byte	0x53
	.byte	0x35
	.4byte	0x9f5
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x54
	.byte	0x33
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x55
	.byte	0x35
	.4byte	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x56
	.byte	0x35
	.4byte	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x58
	.byte	0x13
	.4byte	0xbd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x59
	.byte	0x13
	.4byte	0xbe2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	0x5b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LASF130
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x5b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0xea7
	.4byte	0xae7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0xeb3
	.4byte	0xb09
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xebf
	.4byte	0xb2a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x27
	.4byte	.LVL28
	.4byte	0xecb
	.4byte	0xb44
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0xed7
	.4byte	0xb64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0xee3
	.4byte	0xb8d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0xeef
	.4byte	0xbbb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0xecb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xbe2
	.uleb128 0xa
	.4byte	0x25
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xbf2
	.uleb128 0xa
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc80
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x46
	.byte	0x26
	.4byte	0x31c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x46
	.byte	0x3e
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x47
	.byte	0x2a
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x47
	.byte	0x45
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x48
	.byte	0x2c
	.4byte	0x9f5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0xc80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea7
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x10
	.byte	0x2a
	.4byte	0x31c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.string	"mac"
	.byte	0x1
	.byte	0x10
	.byte	0x3c
	.4byte	0x31c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.4byte	0x9f5
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x12
	.byte	0x2e
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x12
	.byte	0x49
	.4byte	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.4byte	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x1
	.byte	0x15
	.byte	0x27
	.4byte	0x960
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x16
	.byte	0x13
	.4byte	0xbd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0xbe2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.4byte	0x5b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x26
	.4byte	.LASF130
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.4byte	0x5b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0xea7
	.4byte	0xd7d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 320
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0xed7
	.4byte	0xd9d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL5
	.4byte	0xefb
	.4byte	0xdbd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 256
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0xee3
	.4byte	0xde0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0xf06
	.4byte	0xdf5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.uleb128 0x27
	.4byte	.LVL11
	.4byte	0xecb
	.4byte	0xe10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xeef
	.4byte	0xe3f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0xecb
	.4byte	0xe5a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 320
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0xf12
	.4byte	0xe74
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0xf1e
	.4byte	0xe8f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0xecb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x1c
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x20
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x29
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x16
	.byte	0x6
	.uleb128 0x28
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xd
	.byte	0x20
	.byte	0x8
	.uleb128 0x28
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xb
	.byte	0x24
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xb
	.byte	0x29
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF149
	.4byte	.LASF150
	.byte	0xe
	.byte	0
	.uleb128 0x28
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x9
	.byte	0x30
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x9
	.byte	0x34
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS11:
	.uleb128 0
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST6:
	.4byte	.LVL23
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
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU107
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU105
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
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
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU38
	.uleb128 .LVU39
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
.LVUS4:
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
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
	.4byte	.LVL14
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF49:
	.string	"_size"
.LASF95:
	.string	"_rand48"
.LASF61:
	.string	"_emergency"
.LASF89:
	.string	"_mbstate"
.LASF123:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF54:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF150:
	.string	"__builtin_memset"
.LASF6:
	.string	"long long unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF139:
	.string	"memmove"
.LASF148:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF127:
	.string	"crypto_secretbox_open_detached"
.LASF84:
	.string	"_ubuf"
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
.LASF134:
	.string	"state"
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
.LASF133:
	.string	"crypto_secretbox_detached"
.LASF86:
	.string	"_blksize"
.LASF8:
	.string	"_lock_t"
.LASF68:
	.string	"_cvtbuf"
.LASF87:
	.string	"_offset"
.LASF144:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF143:
	.string	"crypto_onetimeauth_poly1305_update"
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
.LASF80:
	.string	"_read"
.LASF102:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF136:
	.string	"crypto_stream_salsa20"
.LASF58:
	.string	"_stdout"
.LASF67:
	.string	"_cvtlen"
.LASF128:
	.string	"block0"
.LASF20:
	.string	"long unsigned int"
.LASF50:
	.string	"__sFILE_fake"
.LASF146:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
.LASF93:
	.string	"_niobs"
.LASF130:
	.string	"mlen0"
.LASF1:
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
.LASF13:
	.string	"wint_t"
.LASF88:
	.string	"_lock"
.LASF90:
	.string	"_flags2"
.LASF132:
	.string	"mlen"
.LASF81:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF76:
	.string	"_misc"
.LASF142:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF147:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF125:
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
.LASF122:
	.string	"uintptr_t"
.LASF138:
	.string	"sodium_memzero"
.LASF104:
	.string	"_freelist"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF131:
	.string	"crypto_secretbox_easy"
.LASF94:
	.string	"_iobs"
.LASF4:
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
.LASF137:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF7:
	.string	"__uintptr_t"
.LASF99:
	.string	"_rand_next"
.LASF107:
	.string	"_mblen_state"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF141:
	.string	"crypto_stream_salsa20_xor_ic"
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
.LASF97:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF145:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF124:
	.string	"opaque"
.LASF111:
	.string	"_getdate_err"
.LASF135:
	.string	"crypto_core_hsalsa20"
.LASF120:
	.string	"_global_impure_ptr"
.LASF149:
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
.LASF140:
	.string	"crypto_stream_salsa20_xor"
.LASF72:
	.string	"_sig_func"
.LASF85:
	.string	"_nbuf"
.LASF129:
	.string	"subkey"
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
.LASF126:
	.string	"crypto_secretbox_open_easy"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
