	.file	"pwhash_scryptsalsa208sha256.c"
	.text
.Ltext0:
	.global	__udivdi3
	.global	__ashldi3
	.global	__lshrdi3
	.section	.text.pickparams,"ax",@progbits
	.literal_position
	.literal .LC1, 32768, 0
	.literal .LC2, 1, 0
	.literal .LC3, 1073741823
	.literal .LC4, 1073741823, 0
	.align	4
	.type	pickparams, @function
pickparams:
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
	.loc 1 21 1 view -0
	.loc 1 21 1 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 22 5 is_stmt 1 view .LVU2
	.loc 1 23 5 view .LVU3
	.loc 1 25 5 view .LVU4
	.loc 1 21 1 is_stmt 0 view .LVU5
	mov.n	a8, a4
	bnez.n	a3, .L2
	bgeui	a2, 32768, .L2
	l32r	a2, .LC1
.LVL1:
	.loc 1 21 1 view .LVU6
	l32r	a3, .LC1+4
.L2:
.LVL2:
	.loc 1 28 5 is_stmt 1 view .LVU7
	.loc 1 28 8 is_stmt 0 view .LVU8
	movi.n	a4, 8
.LVL3:
	.loc 1 28 8 view .LVU9
	s32i.n	a4, a7, 0
	.loc 1 29 5 is_stmt 1 view .LVU10
	.loc 1 29 29 is_stmt 0 view .LVU11
	movi.n	a13, 0
	srli	a9, a8, 5
	movi.n	a4, 1
	.loc 1 29 8 view .LVU12
	bne	a13, a3, .L4
	bgeu	a2, a9, .L4
	.loc 1 30 9 is_stmt 1 view .LVU13
	.loc 1 30 12 is_stmt 0 view .LVU14
	s32i.n	a4, a6, 0
	.loc 1 31 9 is_stmt 1 view .LVU15
	.loc 1 31 14 is_stmt 0 view .LVU16
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a12, 0x20
	call8	__udivdi3
.LVL4:
	.loc 1 32 9 is_stmt 1 view .LVU17
	.loc 1 33 49 is_stmt 0 view .LVU18
	ssr	a4
	srl	a3, a10
	slli	a2, a11, 31
.LVL5:
	.loc 1 32 22 view .LVU19
	s32i.n	a4, a5, 0
	.loc 1 33 49 view .LVU20
	or	a3, a2, a3
	ssr	a4
	srl	a4, a11
	.loc 1 32 9 view .LVU21
	movi.n	a6, 0x3e
.LVL6:
	.loc 1 33 31 view .LVU22
	l32r	a8, .LC2
	l32r	a9, .LC2+4
	.loc 1 32 9 view .LVU23
	j	.L6
.LVL7:
.L9:
	.loc 1 33 13 is_stmt 1 view .LVU24
	.loc 1 33 31 is_stmt 0 view .LVU25
	mov.n	a10, a8
	mov.n	a11, a9
	mov.n	a12, a2
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	__ashldi3
.LVL8:
	.loc 1 33 16 view .LVU26
	l32i.n	a8, sp, 4
	l32i.n	a9, sp, 0
	bltu	a4, a11, .L7
	bne	a11, a4, .L18
	bltu	a3, a10, .L7
.L18:
	.loc 1 32 49 discriminator 2 view .LVU27
	addi.n	a2, a2, 1
	s32i.n	a2, a5, 0
.L6:
	.loc 1 32 27 discriminator 1 view .LVU28
	l32i.n	a2, a5, 0
	.loc 1 32 9 discriminator 1 view .LVU29
	bgeu	a6, a2, .L9
	j	.L7
.LVL9:
.L4:
	.loc 1 38 9 is_stmt 1 view .LVU30
	.loc 1 39 9 view .LVU31
	.loc 1 39 22 is_stmt 0 view .LVU32
	s32i.n	a4, a5, 0
	.loc 1 40 49 view .LVU33
	srli	a8, a8, 11
.LVL10:
	.loc 1 39 9 view .LVU34
	movi.n	a14, 0x3e
	j	.L10
.L15:
	.loc 1 40 13 is_stmt 1 view .LVU35
	.loc 1 40 31 is_stmt 0 view .LVU36
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	mov.n	a12, a4
	s32i.n	a8, sp, 4
	s32i.n	a14, sp, 0
	call8	__ashldi3
.LVL11:
	.loc 1 40 16 view .LVU37
	l32i.n	a8, sp, 4
	l32i.n	a14, sp, 0
	bnez.n	a11, .L16
	bgeu	a8, a10, .L19
.L16:
	.loc 1 44 9 is_stmt 1 view .LVU38
	.loc 1 44 27 is_stmt 0 view .LVU39
	slli	a10, a3, 30
	srli	a2, a2, 2
.LVL12:
	.loc 1 44 15 view .LVU40
	mov.n	a12, a4
	or	a10, a10, a2
	srli	a11, a3, 2
	call8	__lshrdi3
.LVL13:
	.loc 1 46 9 is_stmt 1 view .LVU41
	.loc 1 50 9 view .LVU42
	.loc 1 50 14 is_stmt 0 view .LVU43
	bnez.n	a11, .L14
	l32r	a2, .LC3
	bgeu	a2, a10, .L13
.L14:
	l32r	a10, .LC4
.LVL14:
.L13:
	.loc 1 50 32 view .LVU44
	l32i.n	a2, a7, 0
	quou	a10, a10, a2
	.loc 1 50 12 view .LVU45
	s32i.n	a10, a6, 0
	j	.L7
.LVL15:
.L19:
	.loc 1 39 49 discriminator 2 view .LVU46
	addi.n	a4, a4, 1
	s32i.n	a4, a5, 0
.L10:
	.loc 1 39 27 discriminator 1 view .LVU47
	l32i.n	a4, a5, 0
	.loc 1 39 9 discriminator 1 view .LVU48
	bgeu	a14, a4, .L15
	j	.L16
.LVL16:
.L7:
	.loc 1 52 5 is_stmt 1 view .LVU49
	.loc 1 53 1 is_stmt 0 view .LVU50
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	pickparams, .-pickparams
	.section	.text.crypto_pwhash_scryptsalsa208sha256_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_bytes_min
	.type	crypto_pwhash_scryptsalsa208sha256_bytes_min, @function
crypto_pwhash_scryptsalsa208sha256_bytes_min:
.LFB13:
	.loc 1 57 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 58 5 view .LVU52
	.loc 1 59 1 is_stmt 0 view .LVU53
	movi.n	a2, 0x10
	retw.n
.LFE13:
	.size	crypto_pwhash_scryptsalsa208sha256_bytes_min, .-crypto_pwhash_scryptsalsa208sha256_bytes_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_bytes_max
	.type	crypto_pwhash_scryptsalsa208sha256_bytes_max, @function
crypto_pwhash_scryptsalsa208sha256_bytes_max:
.LFB14:
	.loc 1 63 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 64 5 view .LVU55
	.loc 1 65 1 is_stmt 0 view .LVU56
	movi.n	a2, -1
	retw.n
.LFE14:
	.size	crypto_pwhash_scryptsalsa208sha256_bytes_max, .-crypto_pwhash_scryptsalsa208sha256_bytes_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_passwd_min
	.type	crypto_pwhash_scryptsalsa208sha256_passwd_min, @function
crypto_pwhash_scryptsalsa208sha256_passwd_min:
.LFB15:
	.loc 1 69 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 70 5 view .LVU58
	.loc 1 71 1 is_stmt 0 view .LVU59
	movi.n	a2, 0
	retw.n
.LFE15:
	.size	crypto_pwhash_scryptsalsa208sha256_passwd_min, .-crypto_pwhash_scryptsalsa208sha256_passwd_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_passwd_max
	.type	crypto_pwhash_scryptsalsa208sha256_passwd_max, @function
crypto_pwhash_scryptsalsa208sha256_passwd_max:
.LFB32:
	entry	sp, 32
.LCFI4:
	movi.n	a2, -1
	retw.n
.LFE32:
	.size	crypto_pwhash_scryptsalsa208sha256_passwd_max, .-crypto_pwhash_scryptsalsa208sha256_passwd_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_saltbytes
	.type	crypto_pwhash_scryptsalsa208sha256_saltbytes, @function
crypto_pwhash_scryptsalsa208sha256_saltbytes:
.LFB17:
	.loc 1 81 1 is_stmt 1 view -0
	.loc 1 81 1 is_stmt 0 view .LVU61
	entry	sp, 32
.LCFI5:
	.loc 1 82 5 is_stmt 1 view .LVU62
	.loc 1 83 1 is_stmt 0 view .LVU63
	movi.n	a2, 0x20
	retw.n
.LFE17:
	.size	crypto_pwhash_scryptsalsa208sha256_saltbytes, .-crypto_pwhash_scryptsalsa208sha256_saltbytes
	.section	.text.crypto_pwhash_scryptsalsa208sha256_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_strbytes
	.type	crypto_pwhash_scryptsalsa208sha256_strbytes, @function
crypto_pwhash_scryptsalsa208sha256_strbytes:
.LFB18:
	.loc 1 87 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI6:
	.loc 1 88 5 view .LVU65
	.loc 1 89 1 is_stmt 0 view .LVU66
	movi	a2, 0x66
	retw.n
.LFE18:
	.size	crypto_pwhash_scryptsalsa208sha256_strbytes, .-crypto_pwhash_scryptsalsa208sha256_strbytes
	.section	.rodata.crypto_pwhash_scryptsalsa208sha256_strprefix.str1.1,"aMS",@progbits,1
.LC5:
	.string	"$7$"
	.section	.text.crypto_pwhash_scryptsalsa208sha256_strprefix,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_strprefix
	.type	crypto_pwhash_scryptsalsa208sha256_strprefix, @function
crypto_pwhash_scryptsalsa208sha256_strprefix:
.LFB19:
	.loc 1 93 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
	.loc 1 94 5 view .LVU68
	.loc 1 95 1 is_stmt 0 view .LVU69
	l32r	a2, .LC6
	retw.n
.LFE19:
	.size	crypto_pwhash_scryptsalsa208sha256_strprefix, .-crypto_pwhash_scryptsalsa208sha256_strprefix
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_min,"ax",@progbits
	.literal_position
	.literal .LC7, 32768
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_min
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_min, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_min:
.LFB20:
	.loc 1 99 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 100 5 view .LVU71
	.loc 1 101 1 is_stmt 0 view .LVU72
	l32r	a2, .LC7
	retw.n
.LFE20:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_min, .-crypto_pwhash_scryptsalsa208sha256_opslimit_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_max
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_max, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_max:
.LFB34:
	entry	sp, 32
.LCFI9:
	movi.n	a2, -1
	retw.n
.LFE34:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_max, .-crypto_pwhash_scryptsalsa208sha256_opslimit_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_min,"ax",@progbits
	.literal_position
	.literal .LC8, 16777216
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_min
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_min, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_min:
.LFB22:
	.loc 1 111 1 is_stmt 1 view -0
	.loc 1 111 1 is_stmt 0 view .LVU74
	entry	sp, 32
.LCFI10:
	.loc 1 112 5 is_stmt 1 view .LVU75
	.loc 1 113 1 is_stmt 0 view .LVU76
	l32r	a2, .LC8
	retw.n
.LFE22:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_min, .-crypto_pwhash_scryptsalsa208sha256_memlimit_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_max
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_max, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_max:
.LFB36:
	entry	sp, 32
.LCFI11:
	movi.n	a2, -1
	retw.n
.LFE36:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_max, .-crypto_pwhash_scryptsalsa208sha256_memlimit_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC9, 524288
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_interactive:
.LFB24:
	.loc 1 123 1 is_stmt 1 view -0
	.loc 1 123 1 is_stmt 0 view .LVU78
	entry	sp, 32
.LCFI12:
	.loc 1 124 5 is_stmt 1 view .LVU79
	.loc 1 125 1 is_stmt 0 view .LVU80
	l32r	a2, .LC9
	retw.n
.LFE24:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive, .-crypto_pwhash_scryptsalsa208sha256_opslimit_interactive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC10, 16777216
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_interactive:
.LFB38:
	entry	sp, 32
.LCFI13:
	l32r	a2, .LC10
	retw.n
.LFE38:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive, .-crypto_pwhash_scryptsalsa208sha256_memlimit_interactive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC11, 33554432
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive:
.LFB26:
	.loc 1 135 1 is_stmt 1 view -0
	.loc 1 135 1 is_stmt 0 view .LVU82
	entry	sp, 32
.LCFI14:
	.loc 1 136 5 is_stmt 1 view .LVU83
	.loc 1 137 1 is_stmt 0 view .LVU84
	l32r	a2, .LC11
	retw.n
.LFE26:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive, .-crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC12, 1073741824
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive:
.LFB27:
	.loc 1 141 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI15:
	.loc 1 142 5 view .LVU86
	.loc 1 143 1 is_stmt 0 view .LVU87
	l32r	a2, .LC12
	retw.n
.LFE27:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive, .-crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive
	.section	.text.crypto_pwhash_scryptsalsa208sha256,"ax",@progbits
	.literal_position
	.literal .LC13, 1, 0
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256
	.type	crypto_pwhash_scryptsalsa208sha256, @function
crypto_pwhash_scryptsalsa208sha256:
.LVL17:
.LFB28:
	.loc 1 152 1 is_stmt 1 view -0
	.loc 1 152 1 is_stmt 0 view .LVU89
	entry	sp, 64
.LCFI16:
	.loc 1 153 5 is_stmt 1 view .LVU90
	.loc 1 154 5 view .LVU91
	.loc 1 155 5 view .LVU92
	.loc 1 157 5 view .LVU93
	.loc 1 152 1 is_stmt 0 view .LVU94
	l32i	a7, sp, 68
	.loc 1 157 5 view .LVU95
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 152 1 view .LVU96
	l32i	a3, sp, 64
	.loc 1 157 5 view .LVU97
	call8	memset
.LVL18:
	.loc 1 158 5 is_stmt 1 view .LVU98
	.loc 1 158 19 is_stmt 0 view .LVU99
	bnez.n	a7, .L46
	.loc 1 159 16 view .LVU100
	bnez.n	a5, .L46
	.loc 1 163 8 view .LVU101
	movi.n	a8, 0xf
	bltu	a8, a4, .L43
	j	.L45
.L46:
	.loc 1 160 8 is_stmt 1 view .LVU102
	.loc 1 160 10 is_stmt 0 view .LVU103
	call8	__errno
.LVL19:
	.loc 1 160 14 view .LVU104
	movi.n	a2, 0x1b
.LVL20:
	.loc 1 160 14 view .LVU105
	j	.L49
.LVL21:
.L45:
	.loc 1 165 8 is_stmt 1 view .LVU106
	.loc 1 165 10 is_stmt 0 view .LVU107
	call8	__errno
.LVL22:
	.loc 1 165 14 view .LVU108
	movi.n	a2, 0x16
.LVL23:
.L49:
	.loc 1 165 14 view .LVU109
	s32i.n	a2, a10, 0
.LVL24:
	.loc 1 166 9 is_stmt 1 view .LVU110
	.loc 1 166 16 is_stmt 0 view .LVU111
	movi.n	a10, -1
	j	.L35
.LVL25:
.L43:
	.loc 1 164 9 discriminator 1 view .LVU112
	l32i	a12, sp, 88
	l32i	a10, sp, 80
	l32i	a11, sp, 84
	addi	a15, sp, 16
	addi	a14, sp, 20
	addi	a13, sp, 24
	call8	pickparams
.LVL26:
	.loc 1 163 22 discriminator 1 view .LVU113
	bnez.n	a10, .L45
	.loc 1 168 5 is_stmt 1 view .LVU114
	.loc 1 168 12 is_stmt 0 view .LVU115
	l32i.n	a12, sp, 24
	l32r	a10, .LC13
	l32r	a11, .LC13+4
	call8	__ashldi3
.LVL27:
	s32i.n	a2, sp, 8
	l32i.n	a2, sp, 20
.LVL28:
	.loc 1 168 12 view .LVU116
	l32i	a12, sp, 72
	s32i.n	a2, sp, 4
	l32i.n	a2, sp, 16
	mov.n	a14, a10
	mov.n	a15, a11
	s32i.n	a4, sp, 12
	s32i.n	a2, sp, 0
	movi.n	a13, 0x20
	mov.n	a11, a3
	mov.n	a10, a6
	call8	crypto_pwhash_scryptsalsa208sha256_ll
.LVL29:
.L35:
	.loc 1 172 1 view .LVU117
	mov.n	a2, a10
	retw.n
.LFE28:
	.size	crypto_pwhash_scryptsalsa208sha256, .-crypto_pwhash_scryptsalsa208sha256
	.section	.text.crypto_pwhash_scryptsalsa208sha256_str,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_str
	.type	crypto_pwhash_scryptsalsa208sha256_str, @function
crypto_pwhash_scryptsalsa208sha256_str:
.LVL30:
.LFB29:
	.loc 1 179 1 is_stmt 1 view -0
	.loc 1 179 1 is_stmt 0 view .LVU119
	entry	sp, 192
.LCFI17:
	.loc 1 180 5 is_stmt 1 view .LVU120
	.loc 1 181 5 view .LVU121
	.loc 1 182 5 view .LVU122
	.loc 1 183 5 view .LVU123
	.loc 1 184 5 view .LVU124
	.loc 1 185 5 view .LVU125
	.loc 1 187 5 view .LVU126
	.loc 1 179 1 is_stmt 0 view .LVU127
	mov.n	a8, a7
	.loc 1 187 5 view .LVU128
	movi	a12, 0x66
	movi.n	a11, 0
	mov.n	a10, a2
	s32i	a8, sp, 144
	call8	memset
.LVL31:
	.loc 1 188 5 is_stmt 1 view .LVU129
	.loc 1 179 1 is_stmt 0 view .LVU130
	mov.n	a7, a2
	.loc 1 188 8 view .LVU131
	l32i	a8, sp, 144
	beqz.n	a5, .L59
	.loc 1 189 8 is_stmt 1 view .LVU132
	.loc 1 189 10 is_stmt 0 view .LVU133
	call8	__errno
.LVL32:
	.loc 1 189 14 view .LVU134
	movi.n	a2, 0x1b
.LVL33:
	.loc 1 189 14 view .LVU135
	j	.L60
.LVL34:
.L59:
	.loc 1 192 5 is_stmt 1 view .LVU136
	.loc 1 193 9 is_stmt 0 view .LVU137
	addi	a2, sp, 16
.LVL35:
	.loc 1 193 9 view .LVU138
	l32i	a12, sp, 192
	addi	a15, sp, 120
	addi	a14, sp, 124
	addi	a13, a2, 112
	mov.n	a10, a6
	mov.n	a11, a8
	call8	pickparams
.LVL36:
	.loc 1 192 8 view .LVU139
	beqz.n	a10, .L54
	.loc 1 194 8 is_stmt 1 view .LVU140
	j	.L61
.L54:
	.loc 1 197 5 view .LVU141
	movi.n	a11, 0x20
	addi	a10, sp, 74
	call8	randombytes_buf
.LVL37:
	.loc 1 198 5 view .LVU142
	.loc 1 198 9 is_stmt 0 view .LVU143
	movi.n	a2, 0x3a
	l32i	a12, sp, 124
	l32i	a11, sp, 120
	l32i	a10, sp, 128
	s32i.n	a2, sp, 0
	addi	a15, sp, 16
	movi.n	a14, 0x20
	addi	a13, sp, 74
	call8	escrypt_gensalt_r
.LVL38:
	.loc 1 198 8 view .LVU144
	bnez.n	a10, .L55
	.loc 1 200 8 is_stmt 1 view .LVU145
	j	.L61
.L55:
	.loc 1 203 5 view .LVU146
	.loc 1 203 9 is_stmt 0 view .LVU147
	addi	a10, sp, 108
	call8	escrypt_init_local
.LVL39:
	mov.n	a2, a10
	.loc 1 203 8 view .LVU148
	bnez.n	a10, .L57
	.loc 1 206 5 is_stmt 1 view .LVU149
	.loc 1 206 9 is_stmt 0 view .LVU150
	movi	a15, 0x66
	mov.n	a14, a7
	addi	a13, sp, 16
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, sp, 108
	call8	escrypt_r
.LVL40:
	.loc 1 206 8 view .LVU151
	bnez.n	a10, .L56
	.loc 1 210 9 is_stmt 1 view .LVU152
	addi	a10, sp, 108
	call8	escrypt_free_local
.LVL41:
.L61:
	.loc 1 211 8 view .LVU153
	.loc 1 211 10 is_stmt 0 view .LVU154
	call8	__errno
.LVL42:
	.loc 1 211 14 view .LVU155
	movi.n	a2, 0x16
.L60:
	s32i.n	a2, a10, 0
.LVL43:
	.loc 1 212 9 is_stmt 1 view .LVU156
	j	.L57
.LVL44:
.L56:
	.loc 1 215 5 view .LVU157
	addi	a10, sp, 108
	call8	escrypt_free_local
.LVL45:
	.loc 1 217 5 view .LVU158
	.loc 1 220 5 view .LVU159
	.loc 1 225 5 view .LVU160
	.loc 1 225 12 is_stmt 0 view .LVU161
	j	.L50
.LVL46:
.L57:
	.loc 1 204 16 view .LVU162
	movi.n	a2, -1
.L50:
	.loc 1 226 1 view .LVU163
	retw.n
.LFE29:
	.size	crypto_pwhash_scryptsalsa208sha256_str, .-crypto_pwhash_scryptsalsa208sha256_str
	.section	.text.crypto_pwhash_scryptsalsa208sha256_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_str_verify
	.type	crypto_pwhash_scryptsalsa208sha256_str_verify, @function
crypto_pwhash_scryptsalsa208sha256_str_verify:
.LVL47:
.LFB30:
	.loc 1 232 1 is_stmt 1 view -0
	.loc 1 232 1 is_stmt 0 view .LVU165
	entry	sp, 160
.LCFI18:
	.loc 1 233 5 is_stmt 1 view .LVU166
	.loc 1 234 5 view .LVU167
	.loc 1 235 5 view .LVU168
.LVL48:
	.loc 1 237 5 view .LVU169
	.loc 1 237 9 is_stmt 0 view .LVU170
	movi	a12, 0x66
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memchr
.LVL49:
	.loc 1 238 9 view .LVU171
	addi	a8, a2, 101
	.loc 1 237 8 view .LVU172
	beq	a8, a10, .L63
	j	.L67
.L63:
	.loc 1 241 5 is_stmt 1 view .LVU173
	.loc 1 241 9 is_stmt 0 view .LVU174
	addi	a10, sp, 104
	call8	escrypt_init_local
.LVL50:
	.loc 1 241 8 view .LVU175
	bnez.n	a10, .L67
	.loc 1 244 5 is_stmt 1 view .LVU176
	mov.n	a11, a10
	movi	a12, 0x66
	mov.n	a10, sp
	call8	memset
.LVL51:
	.loc 1 245 5 view .LVU177
	.loc 1 245 9 is_stmt 0 view .LVU178
	movi	a15, 0x66
	mov.n	a14, sp
	mov.n	a13, a2
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, sp, 104
	call8	escrypt_r
.LVL52:
	.loc 1 245 8 view .LVU179
	bnez.n	a10, .L66
	.loc 1 248 9 is_stmt 1 view .LVU180
	addi	a10, sp, 104
	call8	escrypt_free_local
.LVL53:
.L67:
	.loc 1 249 9 view .LVU181
	.loc 1 249 16 is_stmt 0 view .LVU182
	movi.n	a2, -1
.LVL54:
	.loc 1 249 16 view .LVU183
	j	.L62
.LVL55:
.L66:
	.loc 1 251 5 is_stmt 1 view .LVU184
	addi	a10, sp, 104
	call8	escrypt_free_local
.LVL56:
	.loc 1 252 5 view .LVU185
	.loc 1 252 11 is_stmt 0 view .LVU186
	mov.n	a11, a2
	movi	a12, 0x66
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL57:
	mov.n	a2, a10
.LVL58:
	.loc 1 253 5 is_stmt 1 view .LVU187
	movi	a11, 0x66
	mov.n	a10, sp
	call8	sodium_memzero
.LVL59:
	.loc 1 255 5 view .LVU188
.L62:
	.loc 1 256 1 is_stmt 0 view .LVU189
	retw.n
.LFE30:
	.size	crypto_pwhash_scryptsalsa208sha256_str_verify, .-crypto_pwhash_scryptsalsa208sha256_str_verify
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
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
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI11-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI13-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI15-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI16-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI17-.LFB29
	.byte	0xe
	.uleb128 0xc0
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI18-.LFB30
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x110a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0xc
	.4byte	.LASF176
	.4byte	.LASF177
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x65
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xaf
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xaf
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xce
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xfd
	.byte	0
	.uleb128 0x9
	.4byte	0x65
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x131
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xdb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x10d
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xa3
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xe
	.byte	0x4
	.4byte	0x158
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x5
	.4byte	0x158
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x14b
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ca
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1ca
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF29
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
	.4byte	0x1d0
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x170
	.uleb128 0x9
	.4byte	0x164
	.4byte	0x1e0
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x263
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x33
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2a8
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2a8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2a8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x164
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x164
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x149
	.4byte	0x2b8
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2fa
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2fa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x300
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x317
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	0x310
	.4byte	0x310
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x316
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x263
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x345
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x345
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65
	.uleb128 0x5
	.4byte	0x345
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3c3
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x345
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
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x71
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x71
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x31d
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x527
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x350
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x527
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x76d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x76d
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x76d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x152
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8d5
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8db
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8ec
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x33
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x152
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8f2
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8f8
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x152
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x909
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2fa
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2b8
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x72e
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x76d
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x915
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x152
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x670
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x345
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
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x71
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x71
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x31d
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x527
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x149
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x68e
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6bd
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6e1
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6fb
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x31d
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x345
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x33
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x701
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x711
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x31d
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x33
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xb6
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x13d
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x131
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x68e
	.uleb128 0x18
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x18
	.4byte	0x152
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x670
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x6b2
	.uleb128 0x18
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x18
	.4byte	0x6b2
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x5
	.4byte	0x6b2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x694
	.uleb128 0x17
	.4byte	0xc2
	.4byte	0x6e1
	.uleb128 0x18
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x18
	.4byte	0xc2
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c3
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x6fb
	.uleb128 0x18
	.4byte	0x527
	.uleb128 0x18
	.4byte	0x149
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6e7
	.uleb128 0x9
	.4byte	0x65
	.4byte	0x711
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x65
	.4byte	0x721
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52d
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x767
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x767
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x76d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x72e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x721
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ba
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ba
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ba
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x4b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x4b
	.4byte	0x7ca
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x811
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1ca
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1ca
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x811
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x152
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x131
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x131
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x131
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c0
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x33
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x131
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x131
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x131
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x131
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x131
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x158
	.4byte	0x8d0
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF178
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7ca
	.uleb128 0x1a
	.4byte	0x8ec
	.uleb128 0x18
	.4byte	0x527
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x773
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x1a
	.4byte	0x909
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x90f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8fe
	.uleb128 0xe
	.byte	0x4
	.4byte	0x817
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c3
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c3
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c3
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x527
	.uleb128 0x9
	.4byte	0x6b8
	.4byte	0x95a
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x94f
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x7
	.byte	0x14
	.byte	0x1b
	.4byte	0x95a
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x7
	.byte	0x15
	.byte	0xc
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.4byte	0x8b
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x9cc
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x9
	.byte	0x35
	.byte	0xc
	.4byte	0x149
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x9
	.byte	0x35
	.byte	0x13
	.4byte	0x149
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.4byte	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x9
	.byte	0x37
	.byte	0x3
	.4byte	0x99b
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x9
	.byte	0x3e
	.byte	0x1a
	.4byte	0x9cc
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x152
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb54
	.uleb128 0x1f
	.string	"str"
	.byte	0x1
	.byte	0xe6
	.byte	0x10
	.4byte	0x6b2
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe7
	.byte	0x17
	.4byte	0x6b8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe7
	.byte	0x32
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe9
	.byte	0xa
	.4byte	0xb54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0xea
	.byte	0x15
	.4byte	0x9d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0xeb
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x108a
	.4byte	0xa91
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.4byte	.LVL50
	.4byte	0x1096
	.4byte	0xaa5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0x10a2
	.4byte	0xac0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x10ad
	.4byte	0xaf3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.4byte	.LVL53
	.4byte	0x10b9
	.4byte	0xb07
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x10b9
	.4byte	0xb1b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x10c5
	.4byte	0xb3c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x25
	.4byte	.LVL59
	.4byte	0x10d1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x158
	.4byte	0xb64
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x65
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd44
	.uleb128 0x1f
	.string	"out"
	.byte	0x1
	.byte	0xb0
	.byte	0xa
	.4byte	0x152
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0xb1
	.byte	0x17
	.4byte	0x6b8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0xb1
	.byte	0x32
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb2
	.byte	0x18
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb2
	.byte	0x29
	.4byte	0x3a
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x1
	.byte	0xb4
	.byte	0xd
	.4byte	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.byte	0xb5
	.byte	0xa
	.4byte	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0xb6
	.byte	0x15
	.4byte	0x9d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb7
	.byte	0xe
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xb9
	.byte	0xe
	.4byte	0x983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0x10a2
	.4byte	0xc54
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0x10dd
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0xfca
	.4byte	0xc87
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 112
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x23
	.4byte	.LVL37
	.4byte	0x10e9
	.4byte	0xca2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0x10f5
	.4byte	0xccb
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0x1096
	.4byte	0xce0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x10ad
	.4byte	0xd14
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x10b9
	.4byte	0xd29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0x10dd
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x10b9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x977
	.4byte	0xd54
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x158
	.4byte	0xd64
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x39
	.byte	0
	.uleb128 0x29
	.4byte	.LASF146
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeaf
	.uleb128 0x1f
	.string	"out"
	.byte	0x1
	.byte	0x92
	.byte	0x39
	.4byte	0x34b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x20
	.4byte	.LASF147
	.byte	0x1
	.byte	0x93
	.byte	0x37
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0x94
	.byte	0x36
	.4byte	0x6b8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x95
	.byte	0x37
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x1
	.byte	0x96
	.byte	0x3f
	.4byte	0xeb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x1
	.byte	0x97
	.byte	0x37
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0x97
	.byte	0x48
	.4byte	0x3a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0x10a2
	.4byte	0xe3c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x10dd
	.uleb128 0x28
	.4byte	.LVL22
	.4byte	0x10dd
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0xfca
	.4byte	0xe75
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0x1101
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x5
	.4byte	0xeaf
	.uleb128 0x2a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.4byte	0x3a
	.uleb128 0x2a
	.4byte	.LASF150
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF152
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.4byte	0x3a
	.uleb128 0x2c
	.4byte	.LASF160
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3a
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	0x3a
	.uleb128 0x2a
	.4byte	.LASF154
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF155
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	0x6b2
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF156
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF157
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF158
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0x3a
	.uleb128 0x2a
	.4byte	.LASF159
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x3a
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF179
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1061
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x1
	.byte	0x13
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0x13
	.byte	0x36
	.4byte	0x46
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x14
	.byte	0x1c
	.4byte	0x1067
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.4byte	0x1067
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.byte	0x14
	.byte	0x47
	.4byte	0x1067
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF163
	.byte	0x1
	.byte	0x16
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2f
	.4byte	.LASF164
	.byte	0x1
	.byte	0x17
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x983
	.uleb128 0x5
	.4byte	0x1061
	.uleb128 0x30
	.4byte	0xfa7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	0xf14
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.byte	0x1d
	.byte	0x8
	.uleb128 0x31
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x9
	.byte	0x40
	.byte	0xc
	.uleb128 0x32
	.4byte	.LASF180
	.4byte	.LASF181
	.byte	0xf
	.byte	0
	.uleb128 0x31
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x9
	.byte	0x56
	.byte	0x11
	.uleb128 0x31
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x9
	.byte	0x42
	.byte	0xc
	.uleb128 0x31
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xc
	.byte	0x1f
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xc
	.byte	0x16
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x7
	.byte	0xf
	.byte	0xd
	.uleb128 0x31
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xd
	.byte	0x21
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x9
	.byte	0x5a
	.byte	0x11
	.uleb128 0x31
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xe
	.byte	0x66
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU169
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU189
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU156
	.uleb128 .LVU157
	.uleb128 .LVU162
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL29-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU117
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU19
	.uleb128 .LVU30
	.uleb128 .LVU40
	.uleb128 .LVU46
	.uleb128 .LVU49
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU17
	.uleb128 .LVU24
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU49
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3a
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU43
	.uleb128 .LVU44
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x14
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x25
	.byte	0x12
	.byte	0xc
	.4byte	0x3fffffff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"_dso_handle"
.LASF52:
	.string	"_size"
.LASF153:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_max"
.LASF172:
	.string	"randombytes_buf"
.LASF4:
	.string	"size_t"
.LASF98:
	.string	"_rand48"
.LASF64:
	.string	"_emergency"
.LASF128:
	.string	"uint64_t"
.LASF169:
	.string	"sodium_memcmp"
.LASF142:
	.string	"memlimit"
.LASF5:
	.string	"__uint8_t"
.LASF148:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive"
.LASF154:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_min"
.LASF57:
	.string	"_data"
.LASF164:
	.string	"maxrp"
.LASF118:
	.string	"_wcrtomb_state"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF176:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
.LASF149:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive"
.LASF0:
	.string	"long long unsigned int"
.LASF56:
	.string	"_lbfsize"
.LASF166:
	.string	"escrypt_init_local"
.LASF178:
	.string	"__locale_t"
.LASF179:
	.string	"pickparams"
.LASF116:
	.string	"_mbrtowc_state"
.LASF111:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF140:
	.string	"crypto_pwhash_scryptsalsa208sha256_str"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF165:
	.string	"memchr"
.LASF133:
	.string	"escrypt_local_t"
.LASF87:
	.string	"_ubuf"
.LASF51:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF78:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF82:
	.string	"_cookie"
.LASF162:
	.string	"crypto_pwhash_scryptsalsa208sha256_bytes_min"
.LASF77:
	.string	"__sglue"
.LASF171:
	.string	"__errno"
.LASF13:
	.string	"long int"
.LASF103:
	.string	"_mprec"
.LASF54:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF60:
	.string	"_stdin"
.LASF89:
	.string	"_blksize"
.LASF11:
	.string	"_lock_t"
.LASF124:
	.string	"_sys_errlist"
.LASF71:
	.string	"_cvtbuf"
.LASF90:
	.string	"_offset"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF109:
	.string	"_strtok_last"
.LASF115:
	.string	"_mbrlen_state"
.LASF145:
	.string	"N_log2"
.LASF42:
	.string	"_fnargs"
.LASF143:
	.string	"salt"
.LASF48:
	.string	"_fns"
.LASF156:
	.string	"crypto_pwhash_scryptsalsa208sha256_strbytes"
.LASF8:
	.string	"__uint32_t"
.LASF28:
	.string	"_sign"
.LASF22:
	.string	"_flock_t"
.LASF62:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF69:
	.string	"_gamma_signgam"
.LASF151:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_interactive"
.LASF83:
	.string	"_read"
.LASF105:
	.string	"_result_k"
.LASF31:
	.string	"__tm"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF1:
	.string	"unsigned int"
.LASF18:
	.string	"__wchb"
.LASF61:
	.string	"_stdout"
.LASF70:
	.string	"_cvtlen"
.LASF23:
	.string	"long unsigned int"
.LASF53:
	.string	"__sFILE_fake"
.LASF96:
	.string	"_niobs"
.LASF135:
	.string	"passwd"
.LASF131:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF76:
	.string	"_atexit0"
.LASF173:
	.string	"escrypt_gensalt_r"
.LASF80:
	.string	"_signal_buf"
.LASF74:
	.string	"_asctime_buf"
.LASF104:
	.string	"_result"
.LASF17:
	.string	"__wch"
.LASF16:
	.string	"wint_t"
.LASF91:
	.string	"_lock"
.LASF93:
	.string	"_flags2"
.LASF155:
	.string	"crypto_pwhash_scryptsalsa208sha256_strprefix"
.LASF161:
	.string	"crypto_pwhash_scryptsalsa208sha256_bytes_max"
.LASF84:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF79:
	.string	"_misc"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF177:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF157:
	.string	"crypto_pwhash_scryptsalsa208sha256_saltbytes"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF134:
	.string	"suboptarg"
.LASF65:
	.string	"__sdidinit"
.LASF14:
	.string	"_off_t"
.LASF168:
	.string	"escrypt_free_local"
.LASF170:
	.string	"sodium_memzero"
.LASF10:
	.string	"__uint64_t"
.LASF181:
	.string	"__builtin_memset"
.LASF107:
	.string	"_freelist"
.LASF144:
	.string	"setting"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF129:
	.string	"base"
.LASF6:
	.string	"unsigned char"
.LASF97:
	.string	"_iobs"
.LASF146:
	.string	"crypto_pwhash_scryptsalsa208sha256"
.LASF137:
	.string	"wanted"
.LASF7:
	.string	"short int"
.LASF39:
	.string	"__tm_yday"
.LASF50:
	.string	"__sbuf"
.LASF94:
	.string	"__FILE"
.LASF21:
	.string	"_mbstate_t"
.LASF81:
	.string	"__sFILE"
.LASF125:
	.string	"_sys_nerr"
.LASF92:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF110:
	.string	"_mblen_state"
.LASF63:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF67:
	.string	"_locale"
.LASF68:
	.string	"__cleanup"
.LASF66:
	.string	"_unspecified_locale_info"
.LASF174:
	.string	"crypto_pwhash_scryptsalsa208sha256_ll"
.LASF27:
	.string	"_maxwds"
.LASF58:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF19:
	.string	"__count"
.LASF158:
	.string	"crypto_pwhash_scryptsalsa208sha256_passwd_max"
.LASF20:
	.string	"__value"
.LASF85:
	.string	"_seek"
.LASF152:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_max"
.LASF141:
	.string	"opslimit"
.LASF15:
	.string	"_fpos_t"
.LASF59:
	.string	"_errno"
.LASF24:
	.string	"char"
.LASF159:
	.string	"crypto_pwhash_scryptsalsa208sha256_passwd_min"
.LASF33:
	.string	"__tm_min"
.LASF160:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_min"
.LASF132:
	.string	"escrypt_region_t"
.LASF139:
	.string	"crypto_pwhash_scryptsalsa208sha256_str_verify"
.LASF100:
	.string	"_mult"
.LASF138:
	.string	"escrypt_local"
.LASF26:
	.string	"_next"
.LASF175:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"_fntypes"
.LASF108:
	.string	"_misc_reent"
.LASF101:
	.string	"_add"
.LASF25:
	.string	"__ULong"
.LASF114:
	.string	"_getdate_err"
.LASF123:
	.string	"_global_impure_ptr"
.LASF127:
	.string	"uint32_t"
.LASF180:
	.string	"memset"
.LASF167:
	.string	"escrypt_r"
.LASF136:
	.string	"passwdlen"
.LASF163:
	.string	"maxN"
.LASF55:
	.string	"_file"
.LASF29:
	.string	"_wds"
.LASF38:
	.string	"__tm_wday"
.LASF95:
	.string	"_glue"
.LASF130:
	.string	"aligned"
.LASF126:
	.string	"uint8_t"
.LASF113:
	.string	"_l64a_buf"
.LASF75:
	.string	"_sig_func"
.LASF88:
	.string	"_nbuf"
.LASF40:
	.string	"__tm_isdst"
.LASF73:
	.string	"_localtime_buf"
.LASF86:
	.string	"_close"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF72:
	.string	"_r48"
.LASF147:
	.string	"outlen"
.LASF112:
	.string	"_mbtowc_state"
.LASF106:
	.string	"_p5s"
.LASF150:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_interactive"
.LASF35:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
