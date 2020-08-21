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
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 416
.LCFI0:
	.loc 1 35 0
	addi	a10, sp, 16
	l32i	a15, sp, 440
	.loc 1 29 0
	s32i	a3, sp, 360
	.loc 1 35 0
	l32i	a14, sp, 436
	addmi	a3, a10, 0x100
.LVL1:
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	.loc 1 29 0
	mov.n	a8, a4
	mov.n	a9, a5
	.loc 1 35 0
	mov.n	a10, a3
	s32i	a8, sp, 368
	s32i	a9, sp, 364
	.loc 1 29 0
	l32i	a4, sp, 424
.LVL2:
	l32i	a5, sp, 428
.LVL3:
	.loc 1 35 0
	call8	crypto_stream_chacha20
.LVL4:
	.loc 1 36 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL5:
	.loc 1 37 0
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL6:
	.loc 1 39 0
	l32i	a11, sp, 416
	mov.n	a12, a4
	mov.n	a13, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL7:
.LBB18:
.LBB19:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 64 0
	s32i	a4, sp, 352
	s32i	a5, sp, 356
	l32i	a10, a3, 84
.LBE19:
.LBE18:
	.loc 1 41 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x150
.LBB22:
.LBB20:
	.loc 2 64 0
	s32i	a4, a3, 64
	s32i	a10, a3, 68
.LBE20:
.LBE22:
	.loc 1 41 0
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL8:
	.loc 1 43 0
	l32i	a9, sp, 364
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	l32i	a4, sp, 440
.LVL9:
	l32i	a14, sp, 436
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a12, a6
	mov.n	a11, a9
	mov.n	a13, a7
	s32i.n	a4, sp, 8
	mov.n	a10, a2
	call8	crypto_stream_chacha20_xor_ic
.LVL10:
	.loc 1 45 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL11:
	.loc 1 47 0
	l32r	a12, .LC1
.LBB23:
.LBB24:
	.loc 2 64 0
	s32i	a6, sp, 352
	s32i	a7, sp, 356
.LBE24:
.LBE23:
	.loc 1 47 0
	l32r	a13, .LC1+4
	movi	a11, 0x150
	add.n	a11, a11, sp
.LBB26:
.LBB25:
	.loc 2 64 0
	s32i	a6, a3, 64
	s32i	a7, a3, 68
.LBE25:
.LBE26:
	.loc 1 47 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL12:
	.loc 1 49 0
	l32i	a11, sp, 360
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL13:
	.loc 1 50 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL14:
	.loc 1 52 0
	l32i	a8, sp, 368
	.loc 1 29 0
.LBB27:
.LBB21:
	.loc 2 64 0
	addi	a5, a3, 64
.LVL15:
.LBE21:
.LBE27:
	.loc 1 52 0
	beqz.n	a8, .L2
	.loc 1 53 0
	l32r	a2, .LC3
.LVL16:
	l32r	a3, .LC3+4
	s32i.n	a2, a8, 0
	s32i.n	a3, a8, 4
.L2:
	.loc 1 56 0
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	crypto_aead_chacha20poly1305_encrypt_detached, .-crypto_aead_chacha20poly1305_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_encrypt
	.type	crypto_aead_chacha20poly1305_encrypt, @function
crypto_aead_chacha20poly1305_encrypt:
.LFB13:
	.loc 1 68 0
.LVL17:
	entry	sp, 64
.LCFI1:
.LVL18:
	.loc 1 68 0
	mov.n	a10, a2
	mov.n	a13, a4
	.loc 1 72 0
	bnei	a7, -1, .L7
	movi.n	a8, -0x11
	bgeu	a8, a6, .L7
	.loc 1 73 0
	call8	abort
.LVL19:
.L7:
	.loc 1 75 0
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
.LVL20:
	.loc 1 80 0
	beqz.n	a3, .L9
	.loc 1 69 0
	movi.n	a9, 0
	mov.n	a8, a9
	.loc 1 81 0
	bne	a10, a9, .L10
	.loc 1 82 0
	addi	a12, a6, 16
	movi.n	a11, 1
	bltu	a12, a6, .L11
	mov.n	a11, a10
.L11:
	mov.n	a9, a12
	add.n	a8, a11, a7
.LVL21:
.L10:
	.loc 1 84 0
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 4
.LVL22:
.L9:
	.loc 1 87 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE13:
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
.LFB14:
	.loc 1 100 0
.LVL24:
	entry	sp, 416
.LCFI2:
	.loc 1 106 0
	addi	a10, sp, 16
	.loc 1 100 0
	s32i	a3, sp, 360
	.loc 1 106 0
	l32i	a15, sp, 440
	addmi	a3, a10, 0x100
.LVL25:
	l32i	a14, sp, 436
	.loc 1 100 0
	l32i	a8, sp, 428
	.loc 1 106 0
	l32r	a12, .LC6
	l32r	a13, .LC6+4
	.loc 1 100 0
	mov.n	a9, a5
	.loc 1 106 0
	mov.n	a10, a3
	s32i	a9, sp, 364
	.loc 1 100 0
	l32i	a5, sp, 424
.LVL26:
	.loc 1 106 0
	s32i	a8, sp, 368
	call8	crypto_stream_chacha20_ietf
.LVL27:
	.loc 1 107 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL28:
	.loc 1 108 0
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL29:
	.loc 1 110 0
	l32i	a8, sp, 368
	l32i	a11, sp, 416
	mov.n	a13, a8
	mov.n	a12, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL30:
	.loc 1 111 0
	l32r	a11, .LC8
	neg	a12, a5
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL31:
	.loc 1 113 0
	l32i	a9, sp, 364
	l32i	a10, sp, 440
	l32i	a14, sp, 436
	mov.n	a11, a9
	movi.n	a15, 1
	s32i.n	a10, sp, 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL32:
	.loc 1 115 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL33:
	.loc 1 116 0
	l32r	a11, .LC8
	neg	a12, a6
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL34:
.LBB28:
.LBB29:
	.loc 2 64 0
	l32i	a8, sp, 368
	s32i	a5, sp, 352
	s32i	a8, sp, 356
.LBE29:
.LBE28:
	.loc 1 119 0
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	movi	a11, 0x150
.LBB32:
.LBB30:
	.loc 2 64 0
	s32i	a8, a3, 68
.LBE30:
.LBE32:
	.loc 1 119 0
	add.n	a11, a11, sp
.LBB33:
.LBB31:
	.loc 2 64 0
	s32i	a5, a3, 64
.LBE31:
.LBE33:
	.loc 1 119 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL35:
	.loc 1 122 0
	l32r	a12, .LC9
.LBB34:
.LBB35:
	.loc 2 64 0
	s32i	a6, sp, 352
	s32i	a7, sp, 356
.LBE35:
.LBE34:
	.loc 1 122 0
	l32r	a13, .LC9+4
	movi	a11, 0x150
	add.n	a11, a11, sp
.LBB37:
.LBB36:
	.loc 2 64 0
	s32i	a6, a3, 64
	s32i	a7, a3, 68
.LBE36:
.LBE37:
	.loc 1 122 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL36:
	.loc 1 124 0
	l32i	a11, sp, 360
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL37:
	.loc 1 125 0
	movi	a11, 0x100
	addi	a10, sp, 16
	.loc 1 100 0
	.loc 1 125 0
	call8	sodium_memzero
.LVL38:
	.loc 1 127 0
	beqz.n	a4, .L20
	.loc 1 128 0
	l32r	a2, .LC10
.LVL39:
	l32r	a3, .LC10+4
	s32i.n	a2, a4, 0
	s32i.n	a3, a4, 4
.L20:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LFE14:
	.size	crypto_aead_chacha20poly1305_ietf_encrypt_detached, .-crypto_aead_chacha20poly1305_ietf_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_encrypt
	.type	crypto_aead_chacha20poly1305_ietf_encrypt, @function
crypto_aead_chacha20poly1305_ietf_encrypt:
.LFB15:
	.loc 1 143 0
.LVL40:
	entry	sp, 64
.LCFI3:
.LVL41:
	.loc 1 143 0
	mov.n	a10, a2
	mov.n	a13, a4
	.loc 1 147 0
	bnei	a7, -1, .L25
	movi.n	a8, -0x11
	bgeu	a8, a6, .L25
	.loc 1 148 0
	call8	abort
.LVL42:
.L25:
	.loc 1 150 0
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
.LVL43:
	.loc 1 155 0
	beqz.n	a3, .L27
	.loc 1 144 0
	movi.n	a9, 0
	mov.n	a8, a9
	.loc 1 156 0
	bne	a10, a9, .L28
	.loc 1 157 0
	addi	a12, a6, 16
	movi.n	a11, 1
	bltu	a12, a6, .L29
	mov.n	a11, a10
.L29:
	mov.n	a9, a12
	add.n	a8, a11, a7
.LVL44:
.L28:
	.loc 1 159 0
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 4
.LVL45:
.L27:
	.loc 1 162 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LFE15:
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
.LFB16:
	.loc 1 174 0
.LVL47:
	entry	sp, 416
.LCFI4:
	.loc 1 183 0
	addi	a8, sp, 16
	addmi	a3, a8, 0x100
.LVL48:
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	.loc 1 174 0
	l32i	a9, sp, 424
	.loc 1 183 0
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	mov.n	a10, a3
	s32i	a9, sp, 376
	.loc 1 174 0
	mov.n	a5, a2
	l32i	a2, sp, 428
.LVL49:
	.loc 1 183 0
	call8	crypto_stream_chacha20
.LVL50:
	.loc 1 184 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL51:
	.loc 1 185 0
	mov.n	a10, a3
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL52:
	.loc 1 187 0
	l32i	a9, sp, 376
	l32i	a11, sp, 420
	mov.n	a12, a9
	mov.n	a13, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL53:
.LBB38:
.LBB39:
	.loc 2 64 0
	l32i	a9, sp, 376
	s32i	a2, sp, 372
	s32i	a9, sp, 368
	l32i	a10, a3, 100
.LBE39:
.LBE38:
	.loc 1 189 0
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	movi	a11, 0x160
.LBB41:
.LBB40:
	.loc 2 64 0
	s32i	a9, a3, 80
	s32i	a10, a3, 84
.LBE40:
.LBE41:
	.loc 1 189 0
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL54:
	.loc 1 192 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL55:
	.loc 1 194 0
	l32r	a12, .LC14
	l32r	a13, .LC14+4
.LBB42:
.LBB43:
	.loc 2 64 0
	s32i	a6, sp, 368
	s32i	a7, sp, 372
.LBE43:
.LBE42:
	.loc 1 194 0
	movi	a11, 0x160
.LBB45:
.LBB44:
	.loc 2 64 0
	s32i	a6, a3, 80
	s32i	a7, a3, 84
.LBE44:
.LBE45:
	.loc 1 194 0
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL56:
	.loc 1 196 0
	movi	a11, 0x150
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL57:
	.loc 1 197 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL58:
	.loc 1 200 0
	l32i	a11, sp, 416
	movi	a10, 0x150
	add.n	a10, a10, sp
	call8	crypto_verify_16
.LVL59:
	mov.n	a3, a10
.LVL60:
	.loc 1 201 0
	movi	a10, 0x150
	movi.n	a11, 0x10
	add.n	a10, a10, sp
	.loc 1 174 0
	.loc 1 201 0
	call8	sodium_memzero
.LVL61:
	.loc 1 200 0
	mov.n	a2, a3
	.loc 1 202 0
	beqz.n	a5, .L36
	.loc 1 205 0
	beqz.n	a3, .L37
	.loc 1 206 0
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a5
	call8	memset
.LVL62:
	.loc 1 207 0
	movi.n	a2, -1
	retw.n
.LVL63:
.L37:
	.loc 1 209 0
	l32i	a2, sp, 436
.LVL64:
	l32r	a10, .LC15
	l32r	a11, .LC15+4
	l32i	a14, sp, 432
	s32i.n	a2, sp, 8
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_stream_chacha20_xor_ic
.LVL65:
	.loc 1 211 0
	mov.n	a2, a3
.LVL66:
.L36:
	.loc 1 212 0
	retw.n
.LFE16:
	.size	crypto_aead_chacha20poly1305_decrypt_detached, .-crypto_aead_chacha20poly1305_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_decrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_decrypt
	.type	crypto_aead_chacha20poly1305_decrypt, @function
crypto_aead_chacha20poly1305_decrypt:
.LFB17:
	.loc 1 224 0
.LVL67:
	entry	sp, 64
.LCFI5:
.LVL68:
	.loc 1 224 0
	mov.n	a10, a2
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 228 0
	bnez.n	a7, .L46
	movi.n	a8, 0xf
	bgeu	a8, a6, .L57
.L46:
	.loc 1 229 0
	addi	a13, a6, -16
	movi.n	a9, 1
	bltu	a13, a6, .L42
	movi.n	a9, 0
.L42:
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
.LVL69:
	call8	crypto_aead_chacha20poly1305_decrypt_detached
.LVL70:
	.loc 1 235 0
	beqz.n	a3, .L49
	.loc 1 236 0
	beqz.n	a10, .L44
	.loc 1 225 0
	movi.n	a6, 0
	mov.n	a7, a6
.LVL71:
.L44:
	.loc 1 239 0
	s32i.n	a6, a3, 0
	s32i.n	a7, a3, 4
	j	.L49
.LVL72:
.L57:
	.loc 1 225 0
	movi.n	a6, 0
.LVL73:
	.loc 1 226 0
	movi.n	a10, -1
	.loc 1 225 0
	mov.n	a7, a6
	.loc 1 235 0
	bne	a3, a6, .L44
.LVL74:
.L49:
	.loc 1 242 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LFE17:
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
.LFB18:
	.loc 1 254 0
.LVL76:
	entry	sp, 416
.LCFI6:
	.loc 1 263 0
	addi	a9, sp, 16
	addmi	a3, a9, 0x100
.LVL77:
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	.loc 1 254 0
	l32i	a8, sp, 428
	.loc 1 263 0
	l32r	a12, .LC18
	l32r	a13, .LC18+4
	mov.n	a10, a3
	.loc 1 254 0
	l32i	a5, sp, 424
	.loc 1 263 0
	s32i	a8, sp, 376
	call8	crypto_stream_chacha20_ietf
.LVL78:
	.loc 1 264 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL79:
	.loc 1 265 0
	mov.n	a10, a3
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL80:
	.loc 1 267 0
	l32i	a8, sp, 376
	l32i	a11, sp, 420
	mov.n	a13, a8
	mov.n	a12, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL81:
	.loc 1 268 0
	neg	a12, a5
	l32r	a11, .LC20
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL82:
	.loc 1 271 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL83:
	.loc 1 272 0
	l32r	a11, .LC20
	neg	a12, a6
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL84:
.LBB46:
.LBB47:
	.loc 2 64 0
	l32i	a8, sp, 376
	s32i	a5, sp, 368
	s32i	a8, sp, 372
.LBE47:
.LBE46:
	.loc 1 275 0
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	movi	a11, 0x160
.LBB49:
.LBB48:
	.loc 2 64 0
	s32i	a8, a3, 84
	addi	a9, a3, 80
	s32i	a5, a3, 80
.LBE48:
.LBE49:
	.loc 1 275 0
	add.n	a11, a11, sp
	addi	a10, sp, 16
	s32i	a9, sp, 376
	call8	crypto_onetimeauth_poly1305_update
.LVL85:
.LBB50:
.LBB51:
	.loc 2 64 0
	s32i	a6, sp, 368
	s32i	a7, sp, 372
	s32i	a6, a3, 80
	l32i	a9, sp, 376
.LBE51:
.LBE50:
	.loc 1 278 0
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	movi	a11, 0x160
.LBB53:
.LBB52:
	.loc 2 64 0
	s32i.n	a7, a9, 4
.LBE52:
.LBE53:
	.loc 1 278 0
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL86:
	.loc 1 280 0
	movi	a11, 0x150
	add.n	a11, a11, sp
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL87:
	.loc 1 281 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL88:
	.loc 1 284 0
	l32i	a11, sp, 416
	movi	a10, 0x150
	add.n	a10, a10, sp
	call8	crypto_verify_16
.LVL89:
	mov.n	a5, a10
	.loc 1 285 0
	movi	a10, 0x150
	movi.n	a11, 0x10
	add.n	a10, a10, sp
	.loc 1 254 0
.LVL90:
	.loc 1 285 0
	call8	sodium_memzero
.LVL91:
	.loc 1 284 0
	mov.n	a3, a5
	.loc 1 286 0
	beqz.n	a2, .L61
	.loc 1 289 0
	beqz.n	a5, .L62
	.loc 1 290 0
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL92:
	.loc 1 291 0
	movi.n	a3, -1
	j	.L61
.LVL93:
.L62:
	.loc 1 293 0
	l32i	a3, sp, 436
.LVL94:
	l32i	a14, sp, 432
	s32i.n	a3, sp, 0
	movi.n	a15, 1
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL95:
	.loc 1 295 0
	mov.n	a3, a5
.L61:
	.loc 1 296 0
	mov.n	a2, a3
.LVL96:
	retw.n
.LFE18:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt_detached, .-crypto_aead_chacha20poly1305_ietf_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_decrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_decrypt
	.type	crypto_aead_chacha20poly1305_ietf_decrypt, @function
crypto_aead_chacha20poly1305_ietf_decrypt:
.LFB19:
	.loc 1 308 0
.LVL97:
	entry	sp, 64
.LCFI7:
.LVL98:
	.loc 1 308 0
	mov.n	a10, a2
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 312 0
	bnez.n	a7, .L71
	movi.n	a8, 0xf
	bgeu	a8, a6, .L82
.L71:
	.loc 1 313 0
	addi	a13, a6, -16
	movi.n	a9, 1
	bltu	a13, a6, .L67
	movi.n	a9, 0
.L67:
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
.LVL99:
	call8	crypto_aead_chacha20poly1305_ietf_decrypt_detached
.LVL100:
	.loc 1 319 0
	beqz.n	a3, .L74
	.loc 1 320 0
	beqz.n	a10, .L69
	.loc 1 309 0
	movi.n	a6, 0
	mov.n	a7, a6
.LVL101:
.L69:
	.loc 1 323 0
	s32i.n	a6, a3, 0
	s32i.n	a7, a3, 4
	j	.L74
.LVL102:
.L82:
	.loc 1 309 0
	movi.n	a6, 0
.LVL103:
	.loc 1 310 0
	movi.n	a10, -1
	.loc 1 309 0
	mov.n	a7, a6
	.loc 1 319 0
	bne	a3, a6, .L69
.LVL104:
.L74:
	.loc 1 326 0
	mov.n	a2, a10
.LVL105:
	retw.n
.LFE19:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt, .-crypto_aead_chacha20poly1305_ietf_decrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keybytes
	.type	crypto_aead_chacha20poly1305_ietf_keybytes, @function
crypto_aead_chacha20poly1305_ietf_keybytes:
.LFB35:
	entry	sp, 32
.LCFI8:
	movi.n	a2, 0x20
	retw.n
.LFE35:
	.size	crypto_aead_chacha20poly1305_ietf_keybytes, .-crypto_aead_chacha20poly1305_ietf_keybytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_npubbytes
	.type	crypto_aead_chacha20poly1305_ietf_npubbytes, @function
crypto_aead_chacha20poly1305_ietf_npubbytes:
.LFB21:
	.loc 1 336 0
	.loc 1 336 0
	entry	sp, 32
.LCFI9:
	.loc 1 338 0
	movi.n	a2, 0xc
	retw.n
.LFE21:
	.size	crypto_aead_chacha20poly1305_ietf_npubbytes, .-crypto_aead_chacha20poly1305_ietf_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_nsecbytes
	.type	crypto_aead_chacha20poly1305_ietf_nsecbytes, @function
crypto_aead_chacha20poly1305_ietf_nsecbytes:
.LFB33:
	entry	sp, 32
.LCFI10:
	movi.n	a2, 0
	retw.n
.LFE33:
	.size	crypto_aead_chacha20poly1305_ietf_nsecbytes, .-crypto_aead_chacha20poly1305_ietf_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_abytes
	.type	crypto_aead_chacha20poly1305_ietf_abytes, @function
crypto_aead_chacha20poly1305_ietf_abytes:
.LFB31:
	entry	sp, 32
.LCFI11:
	movi.n	a2, 0x10
	retw.n
.LFE31:
	.size	crypto_aead_chacha20poly1305_ietf_abytes, .-crypto_aead_chacha20poly1305_ietf_abytes
	.section	.text.crypto_aead_chacha20poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keybytes
	.type	crypto_aead_chacha20poly1305_keybytes, @function
crypto_aead_chacha20poly1305_keybytes:
.LFB25:
	.loc 1 360 0
	.loc 1 360 0
	entry	sp, 32
.LCFI12:
	.loc 1 362 0
	movi.n	a2, 0x20
	retw.n
.LFE25:
	.size	crypto_aead_chacha20poly1305_keybytes, .-crypto_aead_chacha20poly1305_keybytes
	.section	.text.crypto_aead_chacha20poly1305_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_npubbytes
	.type	crypto_aead_chacha20poly1305_npubbytes, @function
crypto_aead_chacha20poly1305_npubbytes:
.LFB26:
	.loc 1 366 0
	entry	sp, 32
.LCFI13:
	.loc 1 368 0
	movi.n	a2, 8
	retw.n
.LFE26:
	.size	crypto_aead_chacha20poly1305_npubbytes, .-crypto_aead_chacha20poly1305_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_nsecbytes
	.type	crypto_aead_chacha20poly1305_nsecbytes, @function
crypto_aead_chacha20poly1305_nsecbytes:
.LFB27:
	.loc 1 372 0
	entry	sp, 32
.LCFI14:
	.loc 1 374 0
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	crypto_aead_chacha20poly1305_nsecbytes, .-crypto_aead_chacha20poly1305_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_abytes
	.type	crypto_aead_chacha20poly1305_abytes, @function
crypto_aead_chacha20poly1305_abytes:
.LFB28:
	.loc 1 378 0
	entry	sp, 32
.LCFI15:
	.loc 1 380 0
	movi.n	a2, 0x10
	retw.n
.LFE28:
	.size	crypto_aead_chacha20poly1305_abytes, .-crypto_aead_chacha20poly1305_abytes
	.section	.text.crypto_aead_chacha20poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keygen
	.type	crypto_aead_chacha20poly1305_keygen, @function
crypto_aead_chacha20poly1305_keygen:
.LFB29:
	.loc 1 384 0
.LVL106:
	entry	sp, 32
.LCFI16:
	.loc 1 385 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL107:
	retw.n
.LFE29:
	.size	crypto_aead_chacha20poly1305_keygen, .-crypto_aead_chacha20poly1305_keygen
	.section	.text.crypto_aead_chacha20poly1305_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keygen
	.type	crypto_aead_chacha20poly1305_ietf_keygen, @function
crypto_aead_chacha20poly1305_ietf_keygen:
.LFB37:
	entry	sp, 32
.LCFI17:
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_keygen
	retw.n
.LFE37:
	.size	crypto_aead_chacha20poly1305_ietf_keygen, .-crypto_aead_chacha20poly1305_ietf_keygen
	.section	.rodata._pad0,"a",@progbits
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x1a0
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
	.uleb128 0x1a0
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
	.uleb128 0x1a0
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
	.uleb128 0x40
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
	.uleb128 0x1a0
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
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI12-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI13-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI14-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI15-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI16-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI17-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0xd0
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
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF16
	.2byte	0x100
	.byte	0x6
	.byte	0x13
	.4byte	0xd0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x6
	.byte	0x14
	.4byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xe0
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0xb6
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x10c
	.uleb128 0xb
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0x10c
	.uleb128 0xb
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x13
	.4byte	0x53
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x353
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x13
	.4byte	0xa9
	.4byte	.LLST0
	.uleb128 0xd
	.string	"mac"
	.byte	0x1
	.byte	0x14
	.4byte	0xa9
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x15
	.4byte	0x353
	.4byte	.LLST2
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x16
	.4byte	0x359
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x18
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1b
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x1c
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1e
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1f
	.4byte	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x20
	.4byte	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x28
	.4byte	0x20c
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x2e
	.4byte	0x236
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x104e
	.4byte	0x258
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x1059
	.4byte	0x273
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x1064
	.4byte	0x28d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x106f
	.4byte	0x2a9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x106f
	.4byte	0x2c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x107a
	.4byte	0x2e7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x106f
	.4byte	0x302
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x106f
	.4byte	0x31e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x1085
	.4byte	0x33a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x1064
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.4byte	0x35f
	.uleb128 0x18
	.4byte	0x3e
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x374
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x384
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3b
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47b
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x3b
	.4byte	0xa9
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.4byte	0x353
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x3d
	.4byte	0x359
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x3f
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x41
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x43
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x45
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.4byte	0x53
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x1090
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x112
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fc
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x5a
	.4byte	0xa9
	.4byte	.LLST7
	.uleb128 0xd
	.string	"mac"
	.byte	0x1
	.byte	0x5b
	.4byte	0xa9
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x5c
	.4byte	0x353
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x5d
	.4byte	0x359
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x5f
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x61
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x62
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x63
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x65
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x66
	.4byte	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x67
	.4byte	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x76
	.4byte	0x573
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x79
	.4byte	0x59d
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x109b
	.4byte	0x5bf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x1059
	.4byte	0x5da
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x1064
	.4byte	0x5f4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0x106f
	.4byte	0x610
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x106f
	.4byte	0x62e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x10a6
	.4byte	0x656
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x106f
	.4byte	0x671
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x106f
	.4byte	0x68f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x106f
	.4byte	0x6ab
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x106f
	.4byte	0x6c7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0x1085
	.4byte	0x6e3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x1064
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x86
	.4byte	0x53
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x86
	.4byte	0xa9
	.4byte	.LLST11
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x87
	.4byte	0x353
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x88
	.4byte	0x359
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x8a
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8c
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8d
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x8e
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x90
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x91
	.4byte	0x53
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL42
	.4byte	0x1090
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x47b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa9
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa6
	.4byte	0xa9
	.4byte	.LLST14
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.4byte	0x359
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0xa9
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xaa
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xac
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xad
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xaf
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb0
	.4byte	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb1
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb2
	.4byte	0xaa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xb4
	.4byte	0x53
	.4byte	.LLST15
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xbc
	.4byte	0x90a
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xc1
	.4byte	0x933
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x104e
	.4byte	0x955
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL51
	.4byte	0x1059
	.4byte	0x970
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0x1064
	.4byte	0x98a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0x106f
	.4byte	0x9a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL54
	.4byte	0x106f
	.4byte	0x9c1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0x106f
	.4byte	0x9dc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0x106f
	.4byte	0x9f7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL57
	.4byte	0x1085
	.4byte	0xa13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0x1064
	.4byte	0xa2f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x10b1
	.4byte	0xa4b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0x1064
	.4byte	0xa65
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL62
	.4byte	0x10bc
	.4byte	0xa84
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL65
	.4byte	0x107a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xab9
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd7
	.4byte	0x53
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb99
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xd7
	.4byte	0xa9
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd8
	.4byte	0x353
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd9
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xda
	.4byte	0x359
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0xdb
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xdc
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xdd
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xde
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xdf
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe1
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.4byte	0x53
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LVL70
	.4byte	0x7f3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf5
	.4byte	0x53
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xf5
	.4byte	0xa9
	.4byte	.LLST21
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf6
	.4byte	0xa9
	.4byte	.LLST22
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xf7
	.4byte	0x359
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf8
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0xf9
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xfa
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xfc
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xfd
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xff
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x100
	.4byte	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x101
	.4byte	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x102
	.4byte	0xaa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x103
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x104
	.4byte	0x53
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	0xeb
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x112
	.4byte	0xcb2
	.uleb128 0x20
	.4byte	0x102
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0
	.uleb128 0x1f
	.4byte	0xeb
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x115
	.4byte	0xcdc
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0x109b
	.4byte	0xcfe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL79
	.4byte	0x1059
	.4byte	0xd19
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL80
	.4byte	0x1064
	.4byte	0xd33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL81
	.4byte	0x106f
	.4byte	0xd4f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL82
	.4byte	0x106f
	.4byte	0xd6d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL83
	.4byte	0x106f
	.4byte	0xd88
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL84
	.4byte	0x106f
	.4byte	0xda6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL85
	.4byte	0x106f
	.4byte	0xdc1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL86
	.4byte	0x106f
	.4byte	0xddc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL87
	.4byte	0x1085
	.4byte	0xdf8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0x1064
	.4byte	0xe14
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL89
	.4byte	0x10b1
	.4byte	0xe30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL91
	.4byte	0x1064
	.4byte	0xe4a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL92
	.4byte	0x10bc
	.4byte	0xe69
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL95
	.4byte	0x10a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x12b
	.4byte	0x53
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7f
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.2byte	0x12b
	.4byte	0xa9
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x12c
	.4byte	0x353
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x359
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x24
	.string	"ad"
	.byte	0x1
	.2byte	0x130
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x131
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x132
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x133
	.4byte	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x135
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x136
	.4byte	0x53
	.4byte	.LLST27
	.uleb128 0x17
	.4byte	.LVL100
	.4byte	0xb99
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x14f
	.4byte	0x89
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x167
	.4byte	0x89
	.byte	0x1
	.uleb128 0x29
	.4byte	0xf95
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x16d
	.4byte	0x89
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x173
	.4byte	0x89
	.byte	0x1
	.uleb128 0x29
	.4byte	0xfc7
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x179
	.4byte	0x89
	.byte	0x1
	.uleb128 0x29
	.4byte	0xfe3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1038
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL107
	.4byte	0x10c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x10
	.4byte	0x1049
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.uleb128 0x18
	.4byte	0xaa9
	.uleb128 0x2b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x22
	.uleb128 0x2b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x30
	.uleb128 0x2b
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.byte	0x16
	.uleb128 0x2b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x34
	.uleb128 0x2b
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2b
	.uleb128 0x2b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x39
	.uleb128 0x2b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x9
	.byte	0x47
	.uleb128 0x2b
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x3e
	.uleb128 0x2b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x47
	.uleb128 0x2b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xa
	.byte	0x10
	.uleb128 0x2c
	.4byte	.LASF60
	.4byte	.LASF60
	.uleb128 0x2b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xb
	.byte	0x21
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LFE12
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x7
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL73
	.4byte	.LFE17
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL76
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL97
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL103
	.4byte	.LFE19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x9
	.byte	0xff
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium"
.LASF25:
	.string	"crypto_aead_chacha20poly1305_encrypt_detached"
.LASF53:
	.string	"randombytes_buf"
.LASF11:
	.string	"size_t"
.LASF10:
	.string	"uint64_t"
.LASF51:
	.string	"crypto_stream_chacha20_ietf_xor_ic"
.LASF7:
	.string	"__uint8_t"
.LASF20:
	.string	"nsec"
.LASF57:
	.string	"opaque"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"slen"
.LASF27:
	.string	"clen_p"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF22:
	.string	"state"
.LASF12:
	.string	"long int"
.LASF41:
	.string	"crypto_aead_chacha20poly1305_abytes"
.LASF43:
	.string	"crypto_stream_chacha20"
.LASF48:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF34:
	.string	"mlen_p"
.LASF50:
	.string	"crypto_stream_chacha20_ietf"
.LASF30:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt"
.LASF46:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF40:
	.string	"crypto_aead_chacha20poly1305_nsecbytes"
.LASF5:
	.string	"unsigned int"
.LASF39:
	.string	"crypto_aead_chacha20poly1305_keybytes"
.LASF23:
	.string	"block0"
.LASF14:
	.string	"long unsigned int"
.LASF54:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"adlen"
.LASF4:
	.string	"short unsigned int"
.LASF44:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF26:
	.string	"crypto_aead_chacha20poly1305_encrypt"
.LASF35:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt_detached"
.LASF55:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
.LASF16:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF13:
	.string	"sizetype"
.LASF42:
	.string	"_pad0"
.LASF59:
	.string	"crypto_aead_chacha20poly1305_keygen"
.LASF28:
	.string	"clen"
.LASF45:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF29:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt_detached"
.LASF18:
	.string	"mlen"
.LASF38:
	.string	"crypto_aead_chacha20poly1305_npubbytes"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"npub"
.LASF36:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt"
.LASF52:
	.string	"crypto_verify_16"
.LASF15:
	.string	"char"
.LASF49:
	.string	"abort"
.LASF32:
	.string	"computed_mac"
.LASF58:
	.string	"store64_le"
.LASF17:
	.string	"maclen_p"
.LASF37:
	.string	"crypto_aead_chacha20poly1305_ietf_npubbytes"
.LASF47:
	.string	"crypto_stream_chacha20_xor_ic"
.LASF31:
	.string	"crypto_aead_chacha20poly1305_decrypt_detached"
.LASF60:
	.string	"memset"
.LASF9:
	.string	"uint8_t"
.LASF33:
	.string	"crypto_aead_chacha20poly1305_decrypt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
