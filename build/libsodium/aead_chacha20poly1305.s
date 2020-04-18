	.file	"aead_chacha20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_aead_chacha20poly1305_encrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.literal .LC1, 8, 0
	.literal .LC2, 1, 0
	.literal .LC3, 16, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_encrypt_detached
	.type	crypto_aead_chacha20poly1305_encrypt_detached, @function
crypto_aead_chacha20poly1305_encrypt_detached:
.LVL0:
.LFB15:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
	.loc 1 29 1 view -0
	.loc 1 29 1 is_stmt 0 view .LVU1
	entry	sp, 400
.LCFI0:
	.loc 1 30 5 is_stmt 1 view .LVU2
	.loc 1 31 5 view .LVU3
	.loc 1 32 5 view .LVU4
	.loc 1 34 5 view .LVU5
	.loc 1 35 5 view .LVU6
	addi	a10, sp, 16
	l32i	a15, sp, 424
	.loc 1 29 1 is_stmt 0 view .LVU7
	s32i	a3, sp, 352
	.loc 1 35 5 view .LVU8
	l32i	a14, sp, 420
	addmi	a3, a10, 0x100
.LVL1:
	.loc 1 35 5 view .LVU9
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	.loc 1 29 1 view .LVU10
	mov.n	a8, a4
	mov.n	a9, a5
	.loc 1 35 5 view .LVU11
	mov.n	a10, a3
	s32i	a8, sp, 360
	s32i	a9, sp, 356
	.loc 1 29 1 view .LVU12
	l32i	a4, sp, 408
.LVL2:
	.loc 1 29 1 view .LVU13
	l32i	a5, sp, 412
.LVL3:
	.loc 1 35 5 view .LVU14
	call8	crypto_stream_chacha20
.LVL4:
	.loc 1 36 5 is_stmt 1 view .LVU15
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL5:
	.loc 1 37 5 view .LVU16
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL6:
	.loc 1 39 5 view .LVU17
	l32i	a11, sp, 400
	mov.n	a12, a4
	mov.n	a13, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL7:
	.loc 1 40 5 view .LVU18
	.loc 1 40 5 is_stmt 0 view .LVU19
	s32i	a4, sp, 344
	s32i	a5, sp, 348
.LVL8:
.LBB18:
.LBI18:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 61 1 is_stmt 1 view .LVU20
.LBB19:
	.loc 2 64 5 view .LVU21
	l32i	a10, a3, 76
.LBE19:
.LBE18:
	.loc 1 41 5 is_stmt 0 view .LVU22
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x150
.LBB22:
.LBB20:
	.loc 2 64 5 view .LVU23
	s32i	a4, a3, 64
	s32i	a10, a3, 68
.LVL9:
	.loc 2 64 5 view .LVU24
.LBE20:
.LBE22:
	.loc 1 41 5 is_stmt 1 view .LVU25
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL10:
	.loc 1 43 5 view .LVU26
	l32i	a9, sp, 356
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	l32i	a4, sp, 424
	l32i	a14, sp, 420
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a12, a6
	mov.n	a11, a9
	mov.n	a13, a7
	s32i.n	a4, sp, 8
	mov.n	a10, a2
	call8	crypto_stream_chacha20_xor_ic
.LVL11:
	.loc 1 45 5 view .LVU27
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL12:
	.loc 1 46 5 view .LVU28
	.loc 1 47 5 is_stmt 0 view .LVU29
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x150
	add.n	a11, a11, sp
.LBB23:
.LBB24:
	.loc 2 64 5 view .LVU30
	s32i	a6, a3, 64
	s32i	a7, a3, 68
.LBE24:
.LBE23:
	.loc 1 47 5 view .LVU31
	addi	a10, sp, 16
	s32i	a6, sp, 344
	s32i	a7, sp, 348
.LVL13:
.LBB26:
.LBI23:
	.loc 2 61 1 is_stmt 1 view .LVU32
.LBB25:
	.loc 2 64 5 view .LVU33
	.loc 2 64 5 is_stmt 0 view .LVU34
.LBE25:
.LBE26:
	.loc 1 47 5 is_stmt 1 view .LVU35
	call8	crypto_onetimeauth_poly1305_update
.LVL14:
	.loc 1 49 5 view .LVU36
	l32i	a11, sp, 352
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL15:
	.loc 1 50 5 view .LVU37
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL16:
	.loc 1 52 5 view .LVU38
	.loc 1 52 8 is_stmt 0 view .LVU39
	l32i	a8, sp, 360
	.loc 1 29 1 view .LVU40
.LBB27:
.LBB21:
	.loc 2 64 5 view .LVU41
	addi	a5, a3, 64
.LBE21:
.LBE27:
	.loc 1 52 8 view .LVU42
	beqz.n	a8, .L2
	.loc 1 53 9 is_stmt 1 view .LVU43
	.loc 1 53 19 is_stmt 0 view .LVU44
	l32r	a2, .LC3
.LVL17:
	.loc 1 53 19 view .LVU45
	l32r	a3, .LC3+4
	s32i.n	a2, a8, 0
	s32i.n	a3, a8, 4
.L2:
	.loc 1 55 5 is_stmt 1 view .LVU46
	.loc 1 56 1 is_stmt 0 view .LVU47
	movi.n	a2, 0
	retw.n
.LFE15:
	.size	crypto_aead_chacha20poly1305_encrypt_detached, .-crypto_aead_chacha20poly1305_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_encrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_encrypt
	.type	crypto_aead_chacha20poly1305_encrypt, @function
crypto_aead_chacha20poly1305_encrypt:
.LVL18:
.LFB16:
	.loc 1 68 1 is_stmt 1 view -0
	.loc 1 68 1 is_stmt 0 view .LVU49
	entry	sp, 64
.LCFI1:
	.loc 1 69 5 is_stmt 1 view .LVU50
.LVL19:
	.loc 1 70 5 view .LVU51
	.loc 1 72 5 view .LVU52
	.loc 1 68 1 is_stmt 0 view .LVU53
	mov.n	a10, a2
	mov.n	a13, a4
	.loc 1 72 8 view .LVU54
	bnei	a7, -1, .L7
	movi.n	a8, -0x11
	bgeu	a8, a6, .L7
	.loc 1 73 9 is_stmt 1 view .LVU55
	call8	abort
.LVL20:
.L7:
	.loc 1 75 5 view .LVU56
	.loc 1 75 11 is_stmt 0 view .LVU57
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
	call8	crypto_aead_chacha20poly1305_encrypt_detached
.LVL21:
	.loc 1 80 5 is_stmt 1 view .LVU58
	.loc 1 80 8 is_stmt 0 view .LVU59
	beqz.n	a3, .L6
	.loc 1 81 9 is_stmt 1 view .LVU60
	.loc 1 69 24 is_stmt 0 view .LVU61
	movi.n	a9, 0
	mov.n	a8, a9
	.loc 1 81 12 view .LVU62
	bne	a10, a9, .L10
	.loc 1 82 13 is_stmt 1 view .LVU63
	.loc 1 82 18 is_stmt 0 view .LVU64
	addi	a12, a6, 16
	movi.n	a11, 1
	bltu	a12, a6, .L11
	mov.n	a11, a10
.L11:
	.loc 1 82 18 view .LVU65
	mov.n	a9, a12
	add.n	a8, a11, a7
.LVL22:
.L10:
	.loc 1 84 9 is_stmt 1 view .LVU66
	.loc 1 84 17 is_stmt 0 view .LVU67
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 4
	.loc 1 86 5 is_stmt 1 view .LVU68
.LVL23:
.L6:
	.loc 1 87 1 is_stmt 0 view .LVU69
	mov.n	a2, a10
.LVL24:
	.loc 1 87 1 view .LVU70
	retw.n
.LFE16:
	.size	crypto_aead_chacha20poly1305_encrypt, .-crypto_aead_chacha20poly1305_encrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_encrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC6, 64, 0
	.literal .LC8, _pad0
	.literal .LC9, 8, 0
	.literal .LC10, 16, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_encrypt_detached
	.type	crypto_aead_chacha20poly1305_ietf_encrypt_detached, @function
crypto_aead_chacha20poly1305_ietf_encrypt_detached:
.LVL25:
.LFB17:
	.loc 1 100 1 is_stmt 1 view -0
	.loc 1 100 1 is_stmt 0 view .LVU72
	entry	sp, 400
.LCFI2:
	.loc 1 101 5 is_stmt 1 view .LVU73
	.loc 1 102 5 view .LVU74
	.loc 1 103 5 view .LVU75
	.loc 1 105 5 view .LVU76
	.loc 1 106 5 view .LVU77
	addi	a10, sp, 16
	.loc 1 100 1 is_stmt 0 view .LVU78
	s32i	a3, sp, 352
	.loc 1 106 5 view .LVU79
	l32i	a15, sp, 424
	addmi	a3, a10, 0x100
.LVL26:
	.loc 1 106 5 view .LVU80
	l32i	a14, sp, 420
	.loc 1 100 1 view .LVU81
	l32i	a8, sp, 412
	.loc 1 106 5 view .LVU82
	l32r	a12, .LC6
	l32r	a13, .LC6+4
	.loc 1 100 1 view .LVU83
	mov.n	a9, a5
	.loc 1 106 5 view .LVU84
	mov.n	a10, a3
	s32i	a9, sp, 356
	.loc 1 100 1 view .LVU85
	l32i	a5, sp, 408
.LVL27:
	.loc 1 106 5 view .LVU86
	s32i	a8, sp, 360
	call8	crypto_stream_chacha20_ietf
.LVL28:
	.loc 1 107 5 is_stmt 1 view .LVU87
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL29:
	.loc 1 108 5 view .LVU88
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL30:
	.loc 1 110 5 view .LVU89
	l32i	a8, sp, 360
	l32i	a11, sp, 400
	mov.n	a13, a8
	mov.n	a12, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL31:
	.loc 1 111 5 view .LVU90
	l32r	a11, .LC8
	.loc 1 111 70 is_stmt 0 view .LVU91
	neg	a12, a5
	.loc 1 111 5 view .LVU92
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL32:
	.loc 1 113 5 is_stmt 1 view .LVU93
	l32i	a9, sp, 356
	l32i	a10, sp, 424
	l32i	a14, sp, 420
	mov.n	a11, a9
	movi.n	a15, 1
	s32i.n	a10, sp, 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL33:
	.loc 1 115 5 view .LVU94
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL34:
	.loc 1 116 5 view .LVU95
	l32r	a11, .LC8
	.loc 1 116 69 is_stmt 0 view .LVU96
	neg	a12, a6
	.loc 1 116 5 view .LVU97
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL35:
	.loc 1 118 5 is_stmt 1 view .LVU98
	.loc 1 118 5 is_stmt 0 view .LVU99
	l32i	a8, sp, 360
	.loc 1 119 5 view .LVU100
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	movi	a11, 0x150
.LBB28:
.LBB29:
	.loc 2 64 5 view .LVU101
	s32i	a8, a3, 68
.LBE29:
.LBE28:
	.loc 1 119 5 view .LVU102
	add.n	a11, a11, sp
.LBB32:
.LBB30:
	.loc 2 64 5 view .LVU103
	s32i	a5, a3, 64
.LBE30:
.LBE32:
	.loc 1 119 5 view .LVU104
	addi	a10, sp, 16
	s32i	a8, sp, 348
.LVL36:
.LBB33:
.LBI28:
	.loc 2 61 1 is_stmt 1 view .LVU105
.LBB31:
	.loc 2 64 5 view .LVU106
	.loc 2 64 5 is_stmt 0 view .LVU107
.LBE31:
.LBE33:
	.loc 1 119 5 is_stmt 1 view .LVU108
	s32i	a5, sp, 344
	call8	crypto_onetimeauth_poly1305_update
.LVL37:
	.loc 1 121 5 view .LVU109
	.loc 1 122 5 is_stmt 0 view .LVU110
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	movi	a11, 0x150
	add.n	a11, a11, sp
.LBB34:
.LBB35:
	.loc 2 64 5 view .LVU111
	s32i	a6, a3, 64
	s32i	a7, a3, 68
.LBE35:
.LBE34:
	.loc 1 122 5 view .LVU112
	addi	a10, sp, 16
	s32i	a6, sp, 344
	s32i	a7, sp, 348
.LVL38:
.LBB37:
.LBI34:
	.loc 2 61 1 is_stmt 1 view .LVU113
.LBB36:
	.loc 2 64 5 view .LVU114
	.loc 2 64 5 is_stmt 0 view .LVU115
.LBE36:
.LBE37:
	.loc 1 122 5 is_stmt 1 view .LVU116
	call8	crypto_onetimeauth_poly1305_update
.LVL39:
	.loc 1 124 5 view .LVU117
	l32i	a11, sp, 352
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL40:
	.loc 1 125 5 view .LVU118
	movi	a11, 0x100
	addi	a10, sp, 16
	.loc 1 100 1 is_stmt 0 view .LVU119
	.loc 1 125 5 view .LVU120
	call8	sodium_memzero
.LVL41:
	.loc 1 127 5 is_stmt 1 view .LVU121
	.loc 1 127 8 is_stmt 0 view .LVU122
	beqz.n	a4, .L20
	.loc 1 128 9 is_stmt 1 view .LVU123
	.loc 1 128 19 is_stmt 0 view .LVU124
	l32r	a2, .LC10
.LVL42:
	.loc 1 128 19 view .LVU125
	l32r	a3, .LC10+4
	s32i.n	a2, a4, 0
	s32i.n	a3, a4, 4
.L20:
	.loc 1 130 5 is_stmt 1 view .LVU126
	.loc 1 131 1 is_stmt 0 view .LVU127
	movi.n	a2, 0
	retw.n
.LFE17:
	.size	crypto_aead_chacha20poly1305_ietf_encrypt_detached, .-crypto_aead_chacha20poly1305_ietf_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_encrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_encrypt
	.type	crypto_aead_chacha20poly1305_ietf_encrypt, @function
crypto_aead_chacha20poly1305_ietf_encrypt:
.LVL43:
.LFB18:
	.loc 1 143 1 is_stmt 1 view -0
	.loc 1 143 1 is_stmt 0 view .LVU129
	entry	sp, 64
.LCFI3:
	.loc 1 144 5 is_stmt 1 view .LVU130
.LVL44:
	.loc 1 145 5 view .LVU131
	.loc 1 147 5 view .LVU132
	.loc 1 143 1 is_stmt 0 view .LVU133
	mov.n	a10, a2
	mov.n	a13, a4
	.loc 1 147 8 view .LVU134
	bnei	a7, -1, .L25
	movi.n	a8, -0x11
	bgeu	a8, a6, .L25
	.loc 1 148 9 is_stmt 1 view .LVU135
	call8	abort
.LVL45:
.L25:
	.loc 1 150 5 view .LVU136
	.loc 1 150 11 is_stmt 0 view .LVU137
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
	call8	crypto_aead_chacha20poly1305_ietf_encrypt_detached
.LVL46:
	.loc 1 155 5 is_stmt 1 view .LVU138
	.loc 1 155 8 is_stmt 0 view .LVU139
	beqz.n	a3, .L24
	.loc 1 156 9 is_stmt 1 view .LVU140
	.loc 1 144 24 is_stmt 0 view .LVU141
	movi.n	a9, 0
	mov.n	a8, a9
	.loc 1 156 12 view .LVU142
	bne	a10, a9, .L28
	.loc 1 157 13 is_stmt 1 view .LVU143
	.loc 1 157 18 is_stmt 0 view .LVU144
	addi	a12, a6, 16
	movi.n	a11, 1
	bltu	a12, a6, .L29
	mov.n	a11, a10
.L29:
	.loc 1 157 18 view .LVU145
	mov.n	a9, a12
	add.n	a8, a11, a7
.LVL47:
.L28:
	.loc 1 159 9 is_stmt 1 view .LVU146
	.loc 1 159 17 is_stmt 0 view .LVU147
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 4
	.loc 1 161 5 is_stmt 1 view .LVU148
.LVL48:
.L24:
	.loc 1 162 1 is_stmt 0 view .LVU149
	mov.n	a2, a10
.LVL49:
	.loc 1 162 1 view .LVU150
	retw.n
.LFE18:
	.size	crypto_aead_chacha20poly1305_ietf_encrypt, .-crypto_aead_chacha20poly1305_ietf_encrypt
	.section	.text.crypto_aead_chacha20poly1305_decrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC13, 64, 0
	.literal .LC14, 8, 0
	.literal .LC15, 1, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_decrypt_detached
	.type	crypto_aead_chacha20poly1305_decrypt_detached, @function
crypto_aead_chacha20poly1305_decrypt_detached:
.LVL50:
.LFB19:
	.loc 1 174 1 is_stmt 1 view -0
	.loc 1 174 1 is_stmt 0 view .LVU152
	entry	sp, 416
.LCFI4:
	.loc 1 175 5 is_stmt 1 view .LVU153
	.loc 1 176 5 view .LVU154
	.loc 1 177 5 view .LVU155
	.loc 1 178 5 view .LVU156
	.loc 1 179 5 view .LVU157
	.loc 1 180 5 view .LVU158
	.loc 1 182 5 view .LVU159
	.loc 1 183 5 view .LVU160
	addi	a8, sp, 16
	addmi	a3, a8, 0x100
.LVL51:
	.loc 1 183 5 is_stmt 0 view .LVU161
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	.loc 1 174 1 view .LVU162
	l32i	a9, sp, 424
	.loc 1 183 5 view .LVU163
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	mov.n	a10, a3
	s32i	a9, sp, 368
	.loc 1 174 1 view .LVU164
	mov.n	a5, a2
	l32i	a2, sp, 428
.LVL52:
	.loc 1 183 5 view .LVU165
	call8	crypto_stream_chacha20
.LVL53:
	.loc 1 184 5 is_stmt 1 view .LVU166
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL54:
	.loc 1 185 5 view .LVU167
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL55:
	.loc 1 187 5 view .LVU168
	l32i	a9, sp, 368
	l32i	a11, sp, 420
	mov.n	a12, a9
	mov.n	a13, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL56:
	.loc 1 188 5 view .LVU169
	.loc 1 188 5 is_stmt 0 view .LVU170
	l32i	a9, sp, 368
	s32i	a2, sp, 340
.LVL57:
.LBB38:
.LBI38:
	.loc 2 61 1 is_stmt 1 view .LVU171
.LBB39:
	.loc 2 64 5 view .LVU172
	s32i	a9, sp, 336
.LVL58:
	.loc 2 64 5 is_stmt 0 view .LVU173
	l32i	a10, a3, 68
.LBE39:
.LBE38:
	.loc 1 189 5 view .LVU174
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	movi	a11, 0x160
.LBB41:
.LBB40:
	.loc 2 64 5 view .LVU175
	s32i	a9, a3, 80
	s32i	a10, a3, 84
.LVL59:
	.loc 2 64 5 view .LVU176
.LBE40:
.LBE41:
	.loc 1 189 5 is_stmt 1 view .LVU177
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL60:
	.loc 1 191 5 view .LVU178
	.loc 1 192 5 view .LVU179
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL61:
	.loc 1 193 5 view .LVU180
	.loc 1 194 5 is_stmt 0 view .LVU181
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	movi	a11, 0x160
	add.n	a11, a11, sp
.LBB42:
.LBB43:
	.loc 2 64 5 view .LVU182
	s32i	a6, a3, 80
	s32i	a7, a3, 84
.LBE43:
.LBE42:
	.loc 1 194 5 view .LVU183
	addi	a10, sp, 16
	s32i	a6, sp, 336
	s32i	a7, sp, 340
.LVL62:
.LBB45:
.LBI42:
	.loc 2 61 1 is_stmt 1 view .LVU184
.LBB44:
	.loc 2 64 5 view .LVU185
	.loc 2 64 5 is_stmt 0 view .LVU186
.LBE44:
.LBE45:
	.loc 1 194 5 is_stmt 1 view .LVU187
	call8	crypto_onetimeauth_poly1305_update
.LVL63:
	.loc 1 196 5 view .LVU188
	movi	a11, 0x150
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL64:
	.loc 1 197 5 view .LVU189
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL65:
	.loc 1 199 5 view .LVU190
	.loc 1 200 5 view .LVU191
	.loc 1 200 11 is_stmt 0 view .LVU192
	l32i	a11, sp, 416
	movi	a10, 0x150
	add.n	a10, a10, sp
	call8	crypto_verify_16
.LVL66:
	mov.n	a2, a10
.LVL67:
	.loc 1 201 5 is_stmt 1 view .LVU193
	movi	a10, 0x150
	movi.n	a11, 0x10
	add.n	a10, a10, sp
	.loc 1 174 1 is_stmt 0 view .LVU194
	.loc 1 201 5 view .LVU195
	call8	sodium_memzero
.LVL68:
	.loc 1 202 5 is_stmt 1 view .LVU196
	.loc 1 202 8 is_stmt 0 view .LVU197
	beqz.n	a5, .L35
	.loc 1 205 5 is_stmt 1 view .LVU198
	.loc 1 205 8 is_stmt 0 view .LVU199
	beqz.n	a2, .L37
	.loc 1 206 9 is_stmt 1 view .LVU200
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a5
	call8	memset
.LVL69:
	.loc 1 207 9 view .LVU201
	.loc 1 207 16 is_stmt 0 view .LVU202
	movi.n	a2, -1
.LVL70:
	.loc 1 207 16 view .LVU203
	j	.L35
.LVL71:
.L37:
	.loc 1 209 5 is_stmt 1 view .LVU204
	l32r	a10, .LC15
	l32r	a11, .LC15+4
	l32i	a3, sp, 436
	l32i	a14, sp, 432
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	s32i.n	a3, sp, 8
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_stream_chacha20_xor_ic
.LVL72:
	.loc 1 211 5 view .LVU205
.L35:
	.loc 1 212 1 is_stmt 0 view .LVU206
	retw.n
.LFE19:
	.size	crypto_aead_chacha20poly1305_decrypt_detached, .-crypto_aead_chacha20poly1305_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_decrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_decrypt
	.type	crypto_aead_chacha20poly1305_decrypt, @function
crypto_aead_chacha20poly1305_decrypt:
.LVL73:
.LFB20:
	.loc 1 224 1 is_stmt 1 view -0
	.loc 1 224 1 is_stmt 0 view .LVU208
	entry	sp, 64
.LCFI5:
	.loc 1 225 5 is_stmt 1 view .LVU209
.LVL74:
	.loc 1 226 5 view .LVU210
	.loc 1 228 5 view .LVU211
	.loc 1 224 1 is_stmt 0 view .LVU212
	mov.n	a10, a2
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 228 8 view .LVU213
	bnez.n	a7, .L48
	movi.n	a8, 0xf
	bgeu	a8, a6, .L58
.L48:
	.loc 1 229 9 is_stmt 1 view .LVU214
	.loc 1 229 15 is_stmt 0 view .LVU215
	addi	a13, a6, -16
	movi.n	a9, 1
	bltu	a13, a6, .L44
	movi.n	a9, 0
.L44:
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
.LVL75:
	.loc 1 229 15 view .LVU216
	call8	crypto_aead_chacha20poly1305_decrypt_detached
.LVL76:
	.loc 1 235 5 is_stmt 1 view .LVU217
	.loc 1 235 8 is_stmt 0 view .LVU218
	beqz.n	a3, .L41
	.loc 1 236 9 is_stmt 1 view .LVU219
	.loc 1 236 12 is_stmt 0 view .LVU220
	beqz.n	a10, .L46
	.loc 1 225 24 view .LVU221
	movi.n	a6, 0
	mov.n	a7, a6
.LVL77:
.L46:
	.loc 1 239 9 is_stmt 1 view .LVU222
	.loc 1 239 17 is_stmt 0 view .LVU223
	s32i.n	a6, a3, 0
	s32i.n	a7, a3, 4
	.loc 1 241 5 is_stmt 1 view .LVU224
	.loc 1 241 12 is_stmt 0 view .LVU225
	j	.L41
.LVL78:
.L58:
	.loc 1 235 5 is_stmt 1 view .LVU226
	.loc 1 225 24 is_stmt 0 view .LVU227
	movi.n	a6, 0
.LVL79:
	.loc 1 226 9 view .LVU228
	movi.n	a10, -1
	.loc 1 225 24 view .LVU229
	mov.n	a7, a6
	.loc 1 235 8 view .LVU230
	bne	a3, a6, .L46
.LVL80:
.L41:
	.loc 1 242 1 view .LVU231
	mov.n	a2, a10
.LVL81:
	.loc 1 242 1 view .LVU232
	retw.n
.LFE20:
	.size	crypto_aead_chacha20poly1305_decrypt, .-crypto_aead_chacha20poly1305_decrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_decrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC18, 64, 0
	.literal .LC20, _pad0
	.literal .LC21, 8, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_decrypt_detached
	.type	crypto_aead_chacha20poly1305_ietf_decrypt_detached, @function
crypto_aead_chacha20poly1305_ietf_decrypt_detached:
.LVL82:
.LFB21:
	.loc 1 254 1 is_stmt 1 view -0
	.loc 1 254 1 is_stmt 0 view .LVU234
	entry	sp, 416
.LCFI6:
	.loc 1 263 5 view .LVU235
	addi	a9, sp, 16
	addmi	a3, a9, 0x100
.LVL83:
	.loc 1 263 5 view .LVU236
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	.loc 1 254 1 view .LVU237
	l32i	a8, sp, 428
	.loc 1 263 5 view .LVU238
	l32r	a12, .LC18
	l32r	a13, .LC18+4
	mov.n	a10, a3
	.loc 1 254 1 view .LVU239
	l32i	a5, sp, 424
	.loc 1 263 5 view .LVU240
	s32i	a8, sp, 368
	call8	crypto_stream_chacha20_ietf
.LVL84:
	.loc 1 264 5 view .LVU241
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL85:
	.loc 1 265 5 view .LVU242
	mov.n	a10, a3
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL86:
	.loc 1 267 5 view .LVU243
	l32i	a8, sp, 368
	l32i	a11, sp, 420
	mov.n	a13, a8
	mov.n	a12, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL87:
	.loc 1 268 5 view .LVU244
	l32r	a11, .LC20
	.loc 1 268 70 view .LVU245
	neg	a12, a5
	.loc 1 268 5 view .LVU246
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL88:
	.loc 1 271 5 view .LVU247
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL89:
	.loc 1 272 5 view .LVU248
	l32r	a11, .LC20
	.loc 1 272 69 view .LVU249
	neg	a12, a6
	.loc 1 272 5 view .LVU250
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL90:
	l32i	a8, sp, 368
	.loc 1 275 5 view .LVU251
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	movi	a11, 0x160
.LBB46:
.LBB47:
	.loc 2 64 5 view .LVU252
	s32i	a8, a3, 84
	addi	a9, a3, 80
	s32i	a5, a3, 80
.LBE47:
.LBE46:
	.loc 1 275 5 view .LVU253
	add.n	a11, a11, sp
	addi	a10, sp, 16
	s32i	a8, sp, 340
	s32i	a9, sp, 368
	s32i	a5, sp, 336
	call8	crypto_onetimeauth_poly1305_update
.LVL91:
.LBB49:
.LBB50:
	.loc 2 64 5 view .LVU254
	s32i	a6, a3, 80
	l32i	a9, sp, 368
.LBE50:
.LBE49:
	.loc 1 278 5 view .LVU255
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	movi	a11, 0x160
.LBB53:
.LBB51:
	.loc 2 64 5 view .LVU256
	s32i.n	a7, a9, 4
.LBE51:
.LBE53:
	.loc 1 278 5 view .LVU257
	add.n	a11, a11, sp
	addi	a10, sp, 16
	s32i	a6, sp, 336
	s32i	a7, sp, 340
	call8	crypto_onetimeauth_poly1305_update
.LVL92:
	.loc 1 280 5 view .LVU258
	movi	a11, 0x150
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL93:
	.loc 1 281 5 view .LVU259
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL94:
	.loc 1 284 11 view .LVU260
	l32i	a11, sp, 416
	movi	a10, 0x150
	add.n	a10, a10, sp
	call8	crypto_verify_16
.LVL95:
	mov.n	a3, a10
	.loc 1 285 5 view .LVU261
	movi	a10, 0x150
	movi.n	a11, 0x10
	add.n	a10, a10, sp
	.loc 1 254 1 view .LVU262
	.loc 1 255 5 is_stmt 1 view .LVU263
	.loc 1 256 5 view .LVU264
	.loc 1 257 5 view .LVU265
	.loc 1 258 5 view .LVU266
	.loc 1 259 5 view .LVU267
	.loc 1 260 5 view .LVU268
	.loc 1 262 5 view .LVU269
	.loc 1 263 5 view .LVU270
	.loc 1 264 5 view .LVU271
	.loc 1 265 5 view .LVU272
	.loc 1 267 5 view .LVU273
	.loc 1 268 5 view .LVU274
	.loc 1 270 5 view .LVU275
.LVL96:
	.loc 1 271 5 view .LVU276
	.loc 1 272 5 view .LVU277
	.loc 1 274 5 view .LVU278
.LBB54:
.LBI46:
	.loc 2 61 1 view .LVU279
.LBB48:
	.loc 2 64 5 view .LVU280
	.loc 2 64 5 is_stmt 0 view .LVU281
.LBE48:
.LBE54:
	.loc 1 275 5 is_stmt 1 view .LVU282
	.loc 1 277 5 view .LVU283
.LBB55:
.LBI49:
	.loc 2 61 1 view .LVU284
.LBB52:
	.loc 2 64 5 view .LVU285
	.loc 2 64 5 is_stmt 0 view .LVU286
.LBE52:
.LBE55:
	.loc 1 278 5 is_stmt 1 view .LVU287
	.loc 1 280 5 view .LVU288
	.loc 1 281 5 view .LVU289
	.loc 1 283 5 view .LVU290
	.loc 1 284 5 view .LVU291
	.loc 1 285 5 view .LVU292
	call8	sodium_memzero
.LVL97:
	.loc 1 286 5 view .LVU293
	.loc 1 286 8 is_stmt 0 view .LVU294
	beqz.n	a2, .L59
	.loc 1 289 5 is_stmt 1 view .LVU295
	.loc 1 289 8 is_stmt 0 view .LVU296
	beqz.n	a3, .L63
	.loc 1 290 9 is_stmt 1 view .LVU297
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL98:
	.loc 1 291 9 view .LVU298
	.loc 1 291 16 is_stmt 0 view .LVU299
	movi.n	a3, -1
.LVL99:
	.loc 1 291 16 view .LVU300
	j	.L59
.LVL100:
.L63:
	.loc 1 293 5 is_stmt 1 view .LVU301
	l32i	a5, sp, 436
	l32i	a14, sp, 432
	s32i.n	a5, sp, 0
	movi.n	a15, 1
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL101:
	.loc 1 295 5 view .LVU302
.L59:
	.loc 1 296 1 is_stmt 0 view .LVU303
	mov.n	a2, a3
.LVL102:
	.loc 1 296 1 view .LVU304
	retw.n
.LFE21:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt_detached, .-crypto_aead_chacha20poly1305_ietf_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_decrypt,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_decrypt
	.type	crypto_aead_chacha20poly1305_ietf_decrypt, @function
crypto_aead_chacha20poly1305_ietf_decrypt:
.LVL103:
.LFB22:
	.loc 1 308 1 is_stmt 1 view -0
	.loc 1 308 1 is_stmt 0 view .LVU306
	entry	sp, 64
.LCFI7:
	.loc 1 309 5 is_stmt 1 view .LVU307
.LVL104:
	.loc 1 310 5 view .LVU308
	.loc 1 312 5 view .LVU309
	.loc 1 308 1 is_stmt 0 view .LVU310
	mov.n	a10, a2
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 312 8 view .LVU311
	bnez.n	a7, .L74
	movi.n	a8, 0xf
	bgeu	a8, a6, .L84
.L74:
	.loc 1 313 9 is_stmt 1 view .LVU312
	.loc 1 313 15 is_stmt 0 view .LVU313
	addi	a13, a6, -16
	movi.n	a9, 1
	bltu	a13, a6, .L70
	movi.n	a9, 0
.L70:
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
.LVL105:
	.loc 1 313 15 view .LVU314
	call8	crypto_aead_chacha20poly1305_ietf_decrypt_detached
.LVL106:
	.loc 1 319 5 is_stmt 1 view .LVU315
	.loc 1 319 8 is_stmt 0 view .LVU316
	beqz.n	a3, .L67
	.loc 1 320 9 is_stmt 1 view .LVU317
	.loc 1 320 12 is_stmt 0 view .LVU318
	beqz.n	a10, .L72
	.loc 1 309 24 view .LVU319
	movi.n	a6, 0
	mov.n	a7, a6
.LVL107:
.L72:
	.loc 1 323 9 is_stmt 1 view .LVU320
	.loc 1 323 17 is_stmt 0 view .LVU321
	s32i.n	a6, a3, 0
	s32i.n	a7, a3, 4
	.loc 1 325 5 is_stmt 1 view .LVU322
	.loc 1 325 12 is_stmt 0 view .LVU323
	j	.L67
.LVL108:
.L84:
	.loc 1 319 5 is_stmt 1 view .LVU324
	.loc 1 309 24 is_stmt 0 view .LVU325
	movi.n	a6, 0
.LVL109:
	.loc 1 310 9 view .LVU326
	movi.n	a10, -1
	.loc 1 309 24 view .LVU327
	mov.n	a7, a6
	.loc 1 319 8 view .LVU328
	bne	a3, a6, .L72
.LVL110:
.L67:
	.loc 1 326 1 view .LVU329
	mov.n	a2, a10
.LVL111:
	.loc 1 326 1 view .LVU330
	retw.n
.LFE22:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt, .-crypto_aead_chacha20poly1305_ietf_decrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keybytes
	.type	crypto_aead_chacha20poly1305_ietf_keybytes, @function
crypto_aead_chacha20poly1305_ietf_keybytes:
.LFB23:
	.loc 1 330 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 331 5 view .LVU332
	.loc 1 332 1 is_stmt 0 view .LVU333
	movi.n	a2, 0x20
	retw.n
.LFE23:
	.size	crypto_aead_chacha20poly1305_ietf_keybytes, .-crypto_aead_chacha20poly1305_ietf_keybytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_npubbytes
	.type	crypto_aead_chacha20poly1305_ietf_npubbytes, @function
crypto_aead_chacha20poly1305_ietf_npubbytes:
.LFB24:
	.loc 1 336 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI9:
	.loc 1 337 5 view .LVU335
	.loc 1 338 1 is_stmt 0 view .LVU336
	movi.n	a2, 0xc
	retw.n
.LFE24:
	.size	crypto_aead_chacha20poly1305_ietf_npubbytes, .-crypto_aead_chacha20poly1305_ietf_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_nsecbytes
	.type	crypto_aead_chacha20poly1305_ietf_nsecbytes, @function
crypto_aead_chacha20poly1305_ietf_nsecbytes:
.LFB25:
	.loc 1 342 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI10:
	.loc 1 343 5 view .LVU338
	.loc 1 344 1 is_stmt 0 view .LVU339
	movi.n	a2, 0
	retw.n
.LFE25:
	.size	crypto_aead_chacha20poly1305_ietf_nsecbytes, .-crypto_aead_chacha20poly1305_ietf_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_abytes
	.type	crypto_aead_chacha20poly1305_ietf_abytes, @function
crypto_aead_chacha20poly1305_ietf_abytes:
.LFB26:
	.loc 1 348 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI11:
	.loc 1 349 5 view .LVU341
	.loc 1 350 1 is_stmt 0 view .LVU342
	movi.n	a2, 0x10
	retw.n
.LFE26:
	.size	crypto_aead_chacha20poly1305_ietf_abytes, .-crypto_aead_chacha20poly1305_ietf_abytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keygen
	.type	crypto_aead_chacha20poly1305_ietf_keygen, @function
crypto_aead_chacha20poly1305_ietf_keygen:
.LVL112:
.LFB27:
	.loc 1 354 1 is_stmt 1 view -0
	.loc 1 354 1 is_stmt 0 view .LVU344
	entry	sp, 32
.LCFI12:
	.loc 1 355 5 is_stmt 1 view .LVU345
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL113:
	.loc 1 356 1 is_stmt 0 view .LVU346
	retw.n
.LFE27:
	.size	crypto_aead_chacha20poly1305_ietf_keygen, .-crypto_aead_chacha20poly1305_ietf_keygen
	.section	.text.crypto_aead_chacha20poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keybytes
	.type	crypto_aead_chacha20poly1305_keybytes, @function
crypto_aead_chacha20poly1305_keybytes:
.LFB34:
	entry	sp, 32
.LCFI13:
	movi.n	a2, 0x20
	retw.n
.LFE34:
	.size	crypto_aead_chacha20poly1305_keybytes, .-crypto_aead_chacha20poly1305_keybytes
	.section	.text.crypto_aead_chacha20poly1305_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_npubbytes
	.type	crypto_aead_chacha20poly1305_npubbytes, @function
crypto_aead_chacha20poly1305_npubbytes:
.LFB29:
	.loc 1 366 1 is_stmt 1 view -0
	.loc 1 366 1 is_stmt 0 view .LVU348
	entry	sp, 32
.LCFI14:
	.loc 1 367 5 is_stmt 1 view .LVU349
	.loc 1 368 1 is_stmt 0 view .LVU350
	movi.n	a2, 8
	retw.n
.LFE29:
	.size	crypto_aead_chacha20poly1305_npubbytes, .-crypto_aead_chacha20poly1305_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_nsecbytes
	.type	crypto_aead_chacha20poly1305_nsecbytes, @function
crypto_aead_chacha20poly1305_nsecbytes:
.LFB36:
	entry	sp, 32
.LCFI15:
	movi.n	a2, 0
	retw.n
.LFE36:
	.size	crypto_aead_chacha20poly1305_nsecbytes, .-crypto_aead_chacha20poly1305_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_abytes
	.type	crypto_aead_chacha20poly1305_abytes, @function
crypto_aead_chacha20poly1305_abytes:
.LFB38:
	entry	sp, 32
.LCFI16:
	movi.n	a2, 0x10
	retw.n
.LFE38:
	.size	crypto_aead_chacha20poly1305_abytes, .-crypto_aead_chacha20poly1305_abytes
	.section	.text.crypto_aead_chacha20poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keygen
	.type	crypto_aead_chacha20poly1305_keygen, @function
crypto_aead_chacha20poly1305_keygen:
.LFB40:
	entry	sp, 32
.LCFI17:
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_keygen
	retw.n
.LFE40:
	.size	crypto_aead_chacha20poly1305_keygen, .-crypto_aead_chacha20poly1305_keygen
	.section	.rodata._pad0,"a"
	.type	_pad0, @object
	.size	_pad0, 16
_pad0:
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x190
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
	.uleb128 0x40
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
	.uleb128 0x190
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
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x1a0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x1a0
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI9-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI10-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI15-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI17-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1aea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0xd8
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x5
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.byte	0x16
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x6
	.byte	0xb
	.byte	0xd
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x6
	.byte	0xc
	.byte	0x11
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2c
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x60
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.byte	0x3
	.4byte	0x104
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.4byte	0xd5
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.byte	0x13
	.4byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x114
	.uleb128 0xa
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x138
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa5
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x7
	.byte	0xaa
	.byte	0x5
	.4byte	0xe2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0xaf
	.byte	0x1b
	.4byte	0xaa
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0x4
	.4byte	0x15f
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x152
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0x31
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x32
	.byte	0xb
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.4byte	0x59
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x8
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
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.byte	0x8
	.4byte	0x26a
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3a
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3b
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x3d
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x59
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x59
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.byte	0x8
	.4byte	0x2af
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x2af
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x2af
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4e
	.byte	0xa
	.4byte	0x16b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x51
	.byte	0xa
	.4byte	0x16b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x150
	.4byte	0x2bf
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x8
	.byte	0x55
	.byte	0x8
	.4byte	0x301
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0x56
	.byte	0x12
	.4byte	0x301
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x57
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x307
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
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
	.4byte	0x60
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
	.byte	0x8
	.byte	0x75
	.byte	0x8
	.4byte	0x34c
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x76
	.byte	0x11
	.4byte	0x34c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x77
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3f
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x20
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x3c5
	.uleb128 0x10
	.string	"_p"
	.byte	0x8
	.byte	0x9a
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x8
	.byte	0x9b
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x8
	.byte	0x9c
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x9d
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa0
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa2
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x352
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x8
	.2byte	0x174
	.byte	0x8
	.4byte	0x529
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x178
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x17d
	.byte	0xb
	.4byte	0x76a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x17d
	.byte	0x14
	.4byte	0x76a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x76a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x17f
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x181
	.byte	0x9
	.4byte	0x159
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x183
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x186
	.byte	0x16
	.4byte	0x8d2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x8
	.2byte	0x188
	.byte	0x12
	.4byte	0x8d8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8e9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x18c
	.byte	0x7
	.4byte	0x59
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x18f
	.byte	0x7
	.4byte	0x59
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x190
	.byte	0x9
	.4byte	0x159
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ef
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x193
	.byte	0x10
	.4byte	0x8f5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x194
	.byte	0x9
	.4byte	0x159
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x197
	.byte	0xb
	.4byte	0x906
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x19b
	.byte	0x13
	.4byte	0x301
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2bf
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x19f
	.byte	0x10
	.4byte	0x72b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x76a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x912
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
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
	.byte	0x8
	.byte	0xb5
	.byte	0x8
	.4byte	0x672
	.uleb128 0x10
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0xb9
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0xbf
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.byte	0xc3
	.byte	0xa
	.4byte	0x150
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x690
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x6ba
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.byte	0xca
	.byte	0xd
	.4byte	0x6de
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x6f8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.byte	0x11
	.4byte	0x324
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.byte	0x12
	.4byte	0x34c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.byte	0x7
	.4byte	0x59
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x6fe
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x70e
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x324
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x8
	.byte	0xda
	.byte	0x7
	.4byte	0x59
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x8
	.byte	0xdb
	.byte	0xa
	.4byte	0xbd
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x8
	.byte	0xe2
	.byte	0xc
	.4byte	0x144
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x8
	.byte	0xe4
	.byte	0xe
	.4byte	0x138
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x8
	.byte	0xe5
	.byte	0x7
	.4byte	0x59
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x690
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x18
	.4byte	0x159
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x672
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x150
	.uleb128 0x18
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x59
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
	.4byte	0x59
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c0
	.uleb128 0x17
	.4byte	0x59
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
	.4byte	0x3f
	.4byte	0x70e
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x71e
	.uleb128 0xa
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52f
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.byte	0x8
	.4byte	0x764
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x8
	.2byte	0x125
	.byte	0x11
	.4byte	0x764
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x8
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
	.byte	0x8
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7b7
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x140
	.byte	0x12
	.4byte	0x7b7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x141
	.byte	0x12
	.4byte	0x7b7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x7c7
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0x80e
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x15c
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
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
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0x8bd
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x165
	.byte	0x9
	.4byte	0x159
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x166
	.byte	0xe
	.4byte	0x138
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x167
	.byte	0xe
	.4byte	0x138
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x168
	.byte	0xe
	.4byte	0x138
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x169
	.byte	0x8
	.4byte	0x8bd
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x16a
	.byte	0x7
	.4byte	0x59
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x16b
	.byte	0xe
	.4byte	0x138
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x16c
	.byte	0xe
	.4byte	0x138
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x16d
	.byte	0xe
	.4byte	0x138
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x16e
	.byte	0xe
	.4byte	0x138
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x16f
	.byte	0xe
	.4byte	0x138
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x15f
	.4byte	0x8cd
	.uleb128 0xa
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF171
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
	.4byte	0x59
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
	.byte	0x8
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x30a
	.byte	0x18
	.4byte	0x529
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x159
	.uleb128 0x11
	.4byte	.LASF126
	.2byte	0x100
	.byte	0xa
	.byte	0x13
	.byte	0x2e
	.4byte	0x974
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xa
	.byte	0x14
	.byte	0x13
	.4byte	0x974
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x984
	.uleb128 0xa
	.4byte	0x60
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0xa
	.byte	0x15
	.byte	0x3
	.4byte	0x958
	.byte	0x10
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x9a1
	.uleb128 0xa
	.4byte	0x60
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x991
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.byte	0x10
	.byte	0x1c
	.4byte	0x9a1
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.4byte	0x9d1
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.2byte	0x17f
	.byte	0x33
	.4byte	0x34c
	.byte	0
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x179
	.byte	0x1
	.4byte	0x92
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x173
	.byte	0x1
	.4byte	0x92
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x16d
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x167
	.byte	0x1
	.4byte	0x92
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4a
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x161
	.byte	0x38
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL113
	.4byte	0x1a5e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x15b
	.byte	0x1
	.4byte	0x92
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x155
	.byte	0x1
	.4byte	0x92
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x14f
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x149
	.byte	0x1
	.4byte	0x92
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb93
	.uleb128 0x29
	.string	"m"
	.byte	0x1
	.2byte	0x12b
	.byte	0x3a
	.4byte	0x34c
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x12c
	.byte	0x3f
	.4byte	0xb93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x12d
	.byte	0x3a
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x12e
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x12f
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x24
	.string	"ad"
	.byte	0x1
	.2byte	0x130
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x131
	.byte	0x3e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x132
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x133
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x135
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x136
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x25
	.4byte	.LVL106
	.4byte	0xb9f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
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
	.4byte	0x46
	.uleb128 0x2e
	.4byte	.LASF143
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec3
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0xf5
	.byte	0x43
	.4byte	0x34c
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x30
	.4byte	.LASF137
	.byte	0x1
	.byte	0xf6
	.byte	0x43
	.4byte	0x34c
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.byte	0xf7
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF138
	.byte	0x1
	.byte	0xf8
	.byte	0x47
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xf9
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0xfa
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0xfb
	.byte	0x47
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0xfc
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0xfd
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0xff
	.byte	0x27
	.4byte	0x984
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x33
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x100
	.byte	0x13
	.4byte	0xec3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x101
	.byte	0x13
	.4byte	0xed3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x102
	.byte	0x13
	.4byte	0xee3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x103
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x104
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x34
	.4byte	0x1a07
	.4byte	.LBI46
	.byte	.LVU279
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x112
	.byte	0x5
	.4byte	0xcdf
	.uleb128 0x35
	.4byte	0x1a20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.uleb128 0x34
	.4byte	0x1a07
	.4byte	.LBI49
	.byte	.LVU284
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.4byte	0xd0c
	.uleb128 0x35
	.4byte	0x1a20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.uleb128 0x37
	.4byte	.LVL84
	.4byte	0x1a6a
	.4byte	0xd2e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL85
	.4byte	0x1a76
	.4byte	0xd49
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL86
	.4byte	0x1a82
	.4byte	0xd63
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL87
	.4byte	0x1a8e
	.4byte	0xd7f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL88
	.4byte	0x1a8e
	.4byte	0xd9d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL89
	.4byte	0x1a8e
	.4byte	0xdb8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL90
	.4byte	0x1a8e
	.4byte	0xdd6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL91
	.4byte	0x1a8e
	.4byte	0xdf1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL92
	.4byte	0x1a8e
	.4byte	0xe0c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL93
	.4byte	0x1a9a
	.4byte	0xe28
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x37
	.4byte	.LVL94
	.4byte	0x1a82
	.4byte	0xe44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x37
	.4byte	.LVL95
	.4byte	0x1aa6
	.4byte	0xe60
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL97
	.4byte	0x1a82
	.4byte	0xe7a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL98
	.4byte	0x1ab2
	.4byte	0xe99
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL101
	.4byte	0x1abd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xed3
	.uleb128 0xa
	.4byte	0x60
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xee3
	.uleb128 0xa
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xef3
	.uleb128 0xa
	.4byte	0x60
	.byte	0xf
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfef
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0xd7
	.byte	0x35
	.4byte	0x34c
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x32
	.4byte	.LASF136
	.byte	0x1
	.byte	0xd8
	.byte	0x3a
	.4byte	0xb93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0xd9
	.byte	0x35
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.byte	0xda
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.4byte	.LASF138
	.byte	0x1
	.byte	0xdb
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0xdc
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0xdd
	.byte	0x39
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0xde
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0xdf
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.4byte	.LASF141
	.byte	0x1
	.byte	0xe1
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x39
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x25
	.4byte	.LVL76
	.4byte	0xfef
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d3
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0xa5
	.byte	0x3e
	.4byte	0x34c
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x30
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa6
	.byte	0x3e
	.4byte	0x34c
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF138
	.byte	0x1
	.byte	0xa8
	.byte	0x42
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xa9
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0xaa
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0xab
	.byte	0x42
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0xac
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0xad
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0xaf
	.byte	0x27
	.4byte	0x984
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb0
	.byte	0x13
	.4byte	0xec3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb1
	.byte	0x13
	.4byte	0xed3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.byte	0x13
	.4byte	0xee3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb3
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x39
	.string	"ret"
	.byte	0x1
	.byte	0xb4
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI38
	.byte	.LVU171
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xbc
	.byte	0x5
	.4byte	0x112d
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI42
	.byte	.LVU184
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0x115d
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.uleb128 0x37
	.4byte	.LVL53
	.4byte	0x1ac9
	.4byte	0x117f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL54
	.4byte	0x1a76
	.4byte	0x119a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL55
	.4byte	0x1a82
	.4byte	0x11b4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL56
	.4byte	0x1a8e
	.4byte	0x11d0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL60
	.4byte	0x1a8e
	.4byte	0x11eb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL61
	.4byte	0x1a8e
	.4byte	0x1206
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL63
	.4byte	0x1a8e
	.4byte	0x1221
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL64
	.4byte	0x1a9a
	.4byte	0x123d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x37
	.4byte	.LVL65
	.4byte	0x1a82
	.4byte	0x1259
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x37
	.4byte	.LVL66
	.4byte	0x1aa6
	.4byte	0x1275
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL68
	.4byte	0x1a82
	.4byte	0x128f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL69
	.4byte	0x1ab2
	.4byte	0x12ae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL72
	.4byte	0x1ad5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e4
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.byte	0x86
	.byte	0x3a
	.4byte	0x34c
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x1
	.byte	0x87
	.byte	0x3f
	.4byte	0xb93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.string	"m"
	.byte	0x1
	.byte	0x88
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF141
	.byte	0x1
	.byte	0x89
	.byte	0x3e
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0x8a
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0x8b
	.byte	0x3e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0x8c
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0x8d
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0x8e
	.byte	0x40
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.4byte	.LASF138
	.byte	0x1
	.byte	0x90
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x39
	.string	"ret"
	.byte	0x1
	.byte	0x91
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x3b
	.4byte	.LVL45
	.4byte	0x1ae1
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0x13e4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x168b
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.byte	0x5a
	.byte	0x43
	.4byte	0x34c
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2f
	.string	"mac"
	.byte	0x1
	.byte	0x5b
	.byte	0x43
	.4byte	0x34c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x32
	.4byte	.LASF154
	.byte	0x1
	.byte	0x5c
	.byte	0x48
	.4byte	0xb93
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0x5d
	.byte	0x49
	.4byte	0xb99
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x32
	.4byte	.LASF141
	.byte	0x1
	.byte	0x5e
	.byte	0x47
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0x5f
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0x60
	.byte	0x47
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0x61
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0x62
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0x63
	.byte	0x49
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x65
	.byte	0x27
	.4byte	0x984
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x66
	.byte	0x13
	.4byte	0xec3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x67
	.byte	0x13
	.4byte	0xed3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI28
	.byte	.LVU105
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x14fe
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI34
	.byte	.LVU113
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x152e
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x37
	.4byte	.LVL28
	.4byte	0x1a6a
	.4byte	0x1550
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL29
	.4byte	0x1a76
	.4byte	0x156b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL30
	.4byte	0x1a82
	.4byte	0x1585
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL31
	.4byte	0x1a8e
	.4byte	0x15a1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL32
	.4byte	0x1a8e
	.4byte	0x15bf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL33
	.4byte	0x1abd
	.4byte	0x15e7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL34
	.4byte	0x1a8e
	.4byte	0x1602
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL35
	.4byte	0x1a8e
	.4byte	0x1620
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL37
	.4byte	0x1a8e
	.4byte	0x163b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL39
	.4byte	0x1a8e
	.4byte	0x1656
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL40
	.4byte	0x1a9a
	.4byte	0x1672
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.4byte	.LVL41
	.4byte	0x1a82
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179c
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.byte	0x3b
	.byte	0x35
	.4byte	0x34c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x1
	.byte	0x3c
	.byte	0x3a
	.4byte	0xb93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.string	"m"
	.byte	0x1
	.byte	0x3d
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3e
	.byte	0x39
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0x3f
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0x40
	.byte	0x39
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0x41
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0x42
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0x43
	.byte	0x3b
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.4byte	.LASF138
	.byte	0x1
	.byte	0x45
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x39
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.4byte	0x59
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x3b
	.4byte	.LVL20
	.4byte	0x1ae1
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0x179c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x59
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a07
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.byte	0x13
	.byte	0x3e
	.4byte	0x34c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2f
	.string	"mac"
	.byte	0x1
	.byte	0x14
	.byte	0x3e
	.4byte	0x34c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x30
	.4byte	.LASF154
	.byte	0x1
	.byte	0x15
	.byte	0x43
	.4byte	0xb93
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0x16
	.byte	0x44
	.4byte	0xb99
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x32
	.4byte	.LASF141
	.byte	0x1
	.byte	0x17
	.byte	0x42
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.string	"ad"
	.byte	0x1
	.byte	0x18
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF139
	.byte	0x1
	.byte	0x19
	.byte	0x42
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0x1a
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.byte	0x1b
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.byte	0x1c
	.byte	0x44
	.4byte	0xb99
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x1e
	.byte	0x27
	.4byte	0x984
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.4byte	0xec3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x20
	.byte	0x13
	.4byte	0xed3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI18
	.byte	.LVU20
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x18bc
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x3a
	.4byte	0x1a07
	.4byte	.LBI23
	.byte	.LVU32
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x18ec
	.uleb128 0x36
	.4byte	0x1a20
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x36
	.4byte	0x1a14
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x37
	.4byte	.LVL4
	.4byte	0x1ac9
	.4byte	0x190e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL5
	.4byte	0x1a76
	.4byte	0x1929
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL6
	.4byte	0x1a82
	.4byte	0x1943
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x37
	.4byte	.LVL7
	.4byte	0x1a8e
	.4byte	0x195f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL10
	.4byte	0x1a8e
	.4byte	0x197a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL11
	.4byte	0x1ad5
	.4byte	0x199c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL12
	.4byte	0x1a8e
	.4byte	0x19b7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL14
	.4byte	0x1a8e
	.4byte	0x19d2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL15
	.4byte	0x1a9a
	.4byte	0x19ee
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0x1a82
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF174
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.4byte	0x1a2b
	.uleb128 0x3d
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.4byte	0x1a2b
	.uleb128 0x3d
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.byte	0x25
	.4byte	0x86
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x3e
	.4byte	0xa7d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	0xa58
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	0xa4a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xb
	.byte	0x21
	.byte	0x6
	.uleb128 0x3f
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x3e
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xa
	.byte	0x30
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xd
	.byte	0x16
	.byte	0x6
	.uleb128 0x3f
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xa
	.byte	0x34
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xa
	.byte	0x39
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xe
	.byte	0x10
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF175
	.4byte	.LASF176
	.byte	0xf
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xc
	.byte	0x47
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xc
	.byte	0x22
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xc
	.byte	0x2b
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x9
	.byte	0x49
	.byte	0x6
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x5
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
.LVUS39:
	.uleb128 0
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 0
.LLST39:
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109
	.4byte	.LFE22
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU308
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU329
.LLST41:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU309
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU329
.LLST42:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 0
.LLST33:
	.4byte	.LVL82
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 0
.LLST34:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU276
	.uleb128 0
.LLST35:
	.4byte	.LVL96
	.4byte	.LFE21
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU292
	.uleb128 .LVU300
	.uleb128 .LVU301
	.uleb128 .LVU303
.LLST36:
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU279
	.uleb128 .LVU281
.LLST37:
	.4byte	.LVL96
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU284
	.uleb128 .LVU286
.LLST38:
	.4byte	.LVL96
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL79
	.4byte	.LFE20
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU210
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU231
.LLST31:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU211
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU222
	.uleb128 .LVU226
	.uleb128 .LVU231
.LLST32:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST22:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU179
	.uleb128 0
.LLST23:
	.4byte	.LVL60
	.4byte	.LFE19
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU193
	.uleb128 .LVU203
	.uleb128 .LVU204
	.uleb128 .LVU206
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU171
	.uleb128 .LVU173
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU170
	.uleb128 .LVU176
.LLST26:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU181
	.uleb128 .LVU186
.LLST28:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU131
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU149
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU138
	.uleb128 0
.LLST20:
	.4byte	.LVL46
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU99
	.uleb128 .LVU107
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU113
	.uleb128 .LVU115
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU110
	.uleb128 .LVU115
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU51
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU69
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU58
	.uleb128 0
.LLST10:
	.4byte	.LVL21
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
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
	.uleb128 .LVU9
	.uleb128 .LVU9
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
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU20
	.uleb128 .LVU24
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU19
	.uleb128 .LVU24
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU32
	.uleb128 .LVU34
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU29
	.uleb128 .LVU34
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"_dso_handle"
.LASF16:
	.string	"_fpos_t"
.LASF53:
	.string	"_size"
.LASF156:
	.string	"crypto_aead_chacha20poly1305_encrypt_detached"
.LASF173:
	.string	"crypto_aead_chacha20poly1305_ietf_keygen"
.LASF157:
	.string	"randombytes_buf"
.LASF11:
	.string	"size_t"
.LASF99:
	.string	"_rand48"
.LASF65:
	.string	"_emergency"
.LASF10:
	.string	"uint64_t"
.LASF129:
	.string	"crypto_aead_chacha20poly1305_nsecbytes"
.LASF164:
	.string	"crypto_stream_chacha20_ietf_xor_ic"
.LASF7:
	.string	"__uint8_t"
.LASF137:
	.string	"nsec"
.LASF58:
	.string	"_data"
.LASF119:
	.string	"_wcrtomb_state"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF176:
	.string	"__builtin_memset"
.LASF0:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF147:
	.string	"slen"
.LASF171:
	.string	"__locale_t"
.LASF117:
	.string	"_mbrtowc_state"
.LASF152:
	.string	"clen_p"
.LASF112:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF6:
	.string	"long long int"
.LASF1:
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
.LASF145:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF128:
	.string	"crypto_aead_chacha20poly1305_abytes"
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
.LASF72:
	.string	"_cvtbuf"
.LASF91:
	.string	"_offset"
.LASF135:
	.string	"crypto_aead_chacha20poly1305_ietf_keybytes"
.LASF165:
	.string	"crypto_stream_chacha20"
.LASF162:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_strtok_last"
.LASF116:
	.string	"_mbrlen_state"
.LASF151:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt"
.LASF43:
	.string	"_fnargs"
.LASF161:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF49:
	.string	"_fns"
.LASF29:
	.string	"_sign"
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
.LASF32:
	.string	"__tm"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF5:
	.string	"unsigned int"
.LASF19:
	.string	"__wchb"
.LASF62:
	.string	"_stdout"
.LASF71:
	.string	"_cvtlen"
.LASF146:
	.string	"block0"
.LASF24:
	.string	"long unsigned int"
.LASF54:
	.string	"__sFILE_fake"
.LASF97:
	.string	"_niobs"
.LASF139:
	.string	"adlen"
.LASF4:
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
.LASF155:
	.string	"crypto_aead_chacha20poly1305_encrypt"
.LASF92:
	.string	"_lock"
.LASF143:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt_detached"
.LASF94:
	.string	"_flags2"
.LASF141:
	.string	"mlen"
.LASF85:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF126:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF80:
	.string	"_misc"
.LASF159:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF121:
	.string	"__sf_fake_stdin"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF170:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF144:
	.string	"_pad0"
.LASF172:
	.string	"crypto_aead_chacha20poly1305_keygen"
.LASF138:
	.string	"clen"
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
.LASF160:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF131:
	.string	"crypto_aead_chacha20poly1305_ietf_abytes"
.LASF153:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt_detached"
.LASF108:
	.string	"_freelist"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF133:
	.string	"crypto_aead_chacha20poly1305_npubbytes"
.LASF2:
	.string	"unsigned char"
.LASF98:
	.string	"_iobs"
.LASF3:
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
.LASF140:
	.string	"npub"
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
.LASF142:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt"
.LASF169:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
.LASF158:
	.string	"crypto_stream_chacha20_ietf"
.LASF60:
	.string	"_errno"
.LASF25:
	.string	"char"
.LASF34:
	.string	"__tm_min"
.LASF130:
	.string	"crypto_aead_chacha20poly1305_keybytes"
.LASF132:
	.string	"crypto_aead_chacha20poly1305_ietf_nsecbytes"
.LASF148:
	.string	"computed_mac"
.LASF174:
	.string	"store64_le"
.LASF101:
	.string	"_mult"
.LASF154:
	.string	"maclen_p"
.LASF27:
	.string	"_next"
.LASF134:
	.string	"crypto_aead_chacha20poly1305_ietf_npubbytes"
.LASF168:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"_fntypes"
.LASF109:
	.string	"_misc_reent"
.LASF136:
	.string	"mlen_p"
.LASF102:
	.string	"_add"
.LASF26:
	.string	"__ULong"
.LASF127:
	.string	"opaque"
.LASF115:
	.string	"_getdate_err"
.LASF124:
	.string	"_global_impure_ptr"
.LASF166:
	.string	"crypto_stream_chacha20_xor_ic"
.LASF150:
	.string	"crypto_aead_chacha20poly1305_decrypt_detached"
.LASF175:
	.string	"memset"
.LASF56:
	.string	"_file"
.LASF30:
	.string	"_wds"
.LASF39:
	.string	"__tm_wday"
.LASF96:
	.string	"_glue"
.LASF9:
	.string	"uint8_t"
.LASF114:
	.string	"_l64a_buf"
.LASF76:
	.string	"_sig_func"
.LASF149:
	.string	"crypto_aead_chacha20poly1305_decrypt"
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
.LASF163:
	.string	"crypto_verify_16"
.LASF113:
	.string	"_mbtowc_state"
.LASF107:
	.string	"_p5s"
.LASF167:
	.string	"abort"
.LASF36:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
