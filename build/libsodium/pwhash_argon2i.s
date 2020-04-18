	.file	"pwhash_argon2i.c"
	.text
.Ltext0:
	.section	.text.crypto_pwhash_argon2i_alg_argon2i13,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_alg_argon2i13
	.type	crypto_pwhash_argon2i_alg_argon2i13, @function
crypto_pwhash_argon2i_alg_argon2i13:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c"
	.loc 1 18 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 19 5 view .LVU1
	.loc 1 20 1 is_stmt 0 view .LVU2
	movi.n	a2, 1
	retw.n
.LFE0:
	.size	crypto_pwhash_argon2i_alg_argon2i13, .-crypto_pwhash_argon2i_alg_argon2i13
	.section	.text.crypto_pwhash_argon2i_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_bytes_min
	.type	crypto_pwhash_argon2i_bytes_min, @function
crypto_pwhash_argon2i_bytes_min:
.LFB1:
	.loc 1 24 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 25 5 view .LVU4
	.loc 1 26 1 is_stmt 0 view .LVU5
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_pwhash_argon2i_bytes_min, .-crypto_pwhash_argon2i_bytes_min
	.section	.text.crypto_pwhash_argon2i_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_bytes_max
	.type	crypto_pwhash_argon2i_bytes_max, @function
crypto_pwhash_argon2i_bytes_max:
.LFB2:
	.loc 1 30 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 31 5 view .LVU7
	.loc 1 32 1 is_stmt 0 view .LVU8
	movi.n	a2, -1
	retw.n
.LFE2:
	.size	crypto_pwhash_argon2i_bytes_max, .-crypto_pwhash_argon2i_bytes_max
	.section	.text.crypto_pwhash_argon2i_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_passwd_min
	.type	crypto_pwhash_argon2i_passwd_min, @function
crypto_pwhash_argon2i_passwd_min:
.LFB3:
	.loc 1 36 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 37 5 view .LVU10
	.loc 1 38 1 is_stmt 0 view .LVU11
	movi.n	a2, 0
	retw.n
.LFE3:
	.size	crypto_pwhash_argon2i_passwd_min, .-crypto_pwhash_argon2i_passwd_min
	.section	.text.crypto_pwhash_argon2i_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_passwd_max
	.type	crypto_pwhash_argon2i_passwd_max, @function
crypto_pwhash_argon2i_passwd_max:
.LFB25:
	entry	sp, 32
.LCFI4:
	movi.n	a2, -1
	retw.n
.LFE25:
	.size	crypto_pwhash_argon2i_passwd_max, .-crypto_pwhash_argon2i_passwd_max
	.section	.text.crypto_pwhash_argon2i_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_saltbytes
	.type	crypto_pwhash_argon2i_saltbytes, @function
crypto_pwhash_argon2i_saltbytes:
.LFB23:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0x10
	retw.n
.LFE23:
	.size	crypto_pwhash_argon2i_saltbytes, .-crypto_pwhash_argon2i_saltbytes
	.section	.text.crypto_pwhash_argon2i_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_strbytes
	.type	crypto_pwhash_argon2i_strbytes, @function
crypto_pwhash_argon2i_strbytes:
.LFB6:
	.loc 1 54 1 is_stmt 1 view -0
	.loc 1 54 1 is_stmt 0 view .LVU13
	entry	sp, 32
.LCFI6:
	.loc 1 55 5 is_stmt 1 view .LVU14
	.loc 1 56 1 is_stmt 0 view .LVU15
	movi	a2, 0x80
	retw.n
.LFE6:
	.size	crypto_pwhash_argon2i_strbytes, .-crypto_pwhash_argon2i_strbytes
	.section	.rodata.crypto_pwhash_argon2i_strprefix.str1.1,"aMS",@progbits,1
.LC0:
	.string	"$argon2i$"
	.section	.text.crypto_pwhash_argon2i_strprefix,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_pwhash_argon2i_strprefix
	.type	crypto_pwhash_argon2i_strprefix, @function
crypto_pwhash_argon2i_strprefix:
.LFB7:
	.loc 1 60 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
	.loc 1 61 5 view .LVU17
	.loc 1 62 1 is_stmt 0 view .LVU18
	l32r	a2, .LC1
	retw.n
.LFE7:
	.size	crypto_pwhash_argon2i_strprefix, .-crypto_pwhash_argon2i_strprefix
	.section	.text.crypto_pwhash_argon2i_opslimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_min
	.type	crypto_pwhash_argon2i_opslimit_min, @function
crypto_pwhash_argon2i_opslimit_min:
.LFB8:
	.loc 1 66 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 67 5 view .LVU20
	.loc 1 68 1 is_stmt 0 view .LVU21
	movi.n	a2, 3
	retw.n
.LFE8:
	.size	crypto_pwhash_argon2i_opslimit_min, .-crypto_pwhash_argon2i_opslimit_min
	.section	.text.crypto_pwhash_argon2i_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_max
	.type	crypto_pwhash_argon2i_opslimit_max, @function
crypto_pwhash_argon2i_opslimit_max:
.LFB27:
	entry	sp, 32
.LCFI9:
	movi.n	a2, -1
	retw.n
.LFE27:
	.size	crypto_pwhash_argon2i_opslimit_max, .-crypto_pwhash_argon2i_opslimit_max
	.section	.text.crypto_pwhash_argon2i_memlimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_min
	.type	crypto_pwhash_argon2i_memlimit_min, @function
crypto_pwhash_argon2i_memlimit_min:
.LFB10:
	.loc 1 78 1 is_stmt 1 view -0
	.loc 1 78 1 is_stmt 0 view .LVU23
	entry	sp, 32
.LCFI10:
	.loc 1 79 5 is_stmt 1 view .LVU24
	.loc 1 80 1 is_stmt 0 view .LVU25
	movi.n	a2, 1
	retw.n
.LFE10:
	.size	crypto_pwhash_argon2i_memlimit_min, .-crypto_pwhash_argon2i_memlimit_min
	.section	.text.crypto_pwhash_argon2i_memlimit_max,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_max
	.type	crypto_pwhash_argon2i_memlimit_max, @function
crypto_pwhash_argon2i_memlimit_max:
.LFB11:
	.loc 1 84 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI11:
	.loc 1 85 5 view .LVU27
	.loc 1 86 1 is_stmt 0 view .LVU28
	l32r	a2, .LC2
	retw.n
.LFE11:
	.size	crypto_pwhash_argon2i_memlimit_max, .-crypto_pwhash_argon2i_memlimit_max
	.section	.text.crypto_pwhash_argon2i_opslimit_interactive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_interactive
	.type	crypto_pwhash_argon2i_opslimit_interactive, @function
crypto_pwhash_argon2i_opslimit_interactive:
.LFB12:
	.loc 1 90 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI12:
	.loc 1 91 5 view .LVU30
	.loc 1 92 1 is_stmt 0 view .LVU31
	movi.n	a2, 4
	retw.n
.LFE12:
	.size	crypto_pwhash_argon2i_opslimit_interactive, .-crypto_pwhash_argon2i_opslimit_interactive
	.section	.text.crypto_pwhash_argon2i_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC3, 33554432
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_interactive
	.type	crypto_pwhash_argon2i_memlimit_interactive, @function
crypto_pwhash_argon2i_memlimit_interactive:
.LFB13:
	.loc 1 96 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI13:
	.loc 1 97 5 view .LVU33
	.loc 1 98 1 is_stmt 0 view .LVU34
	l32r	a2, .LC3
	retw.n
.LFE13:
	.size	crypto_pwhash_argon2i_memlimit_interactive, .-crypto_pwhash_argon2i_memlimit_interactive
	.section	.text.crypto_pwhash_argon2i_opslimit_moderate,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_moderate
	.type	crypto_pwhash_argon2i_opslimit_moderate, @function
crypto_pwhash_argon2i_opslimit_moderate:
.LFB14:
	.loc 1 102 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI14:
	.loc 1 103 5 view .LVU36
	.loc 1 104 1 is_stmt 0 view .LVU37
	movi.n	a2, 6
	retw.n
.LFE14:
	.size	crypto_pwhash_argon2i_opslimit_moderate, .-crypto_pwhash_argon2i_opslimit_moderate
	.section	.text.crypto_pwhash_argon2i_memlimit_moderate,"ax",@progbits
	.literal_position
	.literal .LC4, 134217728
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_moderate
	.type	crypto_pwhash_argon2i_memlimit_moderate, @function
crypto_pwhash_argon2i_memlimit_moderate:
.LFB15:
	.loc 1 108 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI15:
	.loc 1 109 5 view .LVU39
	.loc 1 110 1 is_stmt 0 view .LVU40
	l32r	a2, .LC4
	retw.n
.LFE15:
	.size	crypto_pwhash_argon2i_memlimit_moderate, .-crypto_pwhash_argon2i_memlimit_moderate
	.section	.text.crypto_pwhash_argon2i_opslimit_sensitive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_sensitive
	.type	crypto_pwhash_argon2i_opslimit_sensitive, @function
crypto_pwhash_argon2i_opslimit_sensitive:
.LFB16:
	.loc 1 114 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI16:
	.loc 1 115 5 view .LVU42
	.loc 1 116 1 is_stmt 0 view .LVU43
	movi.n	a2, 8
	retw.n
.LFE16:
	.size	crypto_pwhash_argon2i_opslimit_sensitive, .-crypto_pwhash_argon2i_opslimit_sensitive
	.section	.text.crypto_pwhash_argon2i_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC5, 536870912
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_sensitive
	.type	crypto_pwhash_argon2i_memlimit_sensitive, @function
crypto_pwhash_argon2i_memlimit_sensitive:
.LFB17:
	.loc 1 120 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI17:
	.loc 1 121 5 view .LVU45
	.loc 1 122 1 is_stmt 0 view .LVU46
	l32r	a2, .LC5
	retw.n
.LFE17:
	.size	crypto_pwhash_argon2i_memlimit_sensitive, .-crypto_pwhash_argon2i_memlimit_sensitive
	.section	.text.crypto_pwhash_argon2i,"ax",@progbits
	.literal_position
	.literal .LC6, -2147482625
	.literal .LC7, 8191
	.align	4
	.global	crypto_pwhash_argon2i
	.type	crypto_pwhash_argon2i, @function
crypto_pwhash_argon2i:
.LVL0:
.LFB18:
	.loc 1 129 1 is_stmt 1 view -0
	.loc 1 129 1 is_stmt 0 view .LVU48
	entry	sp, 64
.LCFI18:
	.loc 1 130 5 is_stmt 1 view .LVU49
	.loc 1 129 1 is_stmt 0 view .LVU50
	l32i	a14, sp, 64
	l32i	a8, sp, 84
	mov.n	a9, a5
	.loc 1 130 5 view .LVU51
	movi.n	a11, 0
	mov.n	a12, a4
	mov.n	a10, a2
	s32i.n	a8, sp, 24
	s32i.n	a9, sp, 16
	s32i.n	a14, sp, 20
	.loc 1 129 1 view .LVU52
	l32i	a3, sp, 68
	l32i	a5, sp, 80
	l32i	a7, sp, 88
	.loc 1 130 5 view .LVU53
	call8	memset
.LVL1:
	.loc 1 131 5 is_stmt 1 view .LVU54
	.loc 1 131 8 is_stmt 0 view .LVU55
	l32i	a11, sp, 92
	.loc 1 132 16 view .LVU56
	movi.n	a10, -1
	.loc 1 131 8 view .LVU57
	l32i.n	a8, sp, 24
	l32i.n	a9, sp, 16
	l32i.n	a14, sp, 20
	bnei	a11, 1, .L19
	.loc 1 134 5 is_stmt 1 view .LVU58
	.loc 1 134 14 is_stmt 0 view .LVU59
	srli	a11, a7, 10
.LVL2:
	.loc 1 135 5 is_stmt 1 view .LVU60
	.loc 1 135 16 is_stmt 0 view .LVU61
	bnez.n	a9, .L21
	.loc 1 135 43 view .LVU62
	bnez.n	a3, .L21
	.loc 1 136 18 view .LVU63
	bnez.n	a8, .L21
	.loc 1 136 44 view .LVU64
	l32r	a9, .LC6
	bltu	a9, a7, .L21
	.loc 1 140 5 is_stmt 1 view .LVU65
	.loc 1 141 18 is_stmt 0 view .LVU66
	l32i	a9, sp, 92
	mov.n	a3, a9
	bgeui	a5, 3, .L34
	j	.L33
.L21:
	.loc 1 137 8 is_stmt 1 view .LVU67
	.loc 1 137 10 is_stmt 0 view .LVU68
	call8	__errno
.LVL3:
	.loc 1 137 14 view .LVU69
	movi.n	a2, 0x1b
.LVL4:
	.loc 1 137 14 view .LVU70
	j	.L44
.LVL5:
.L34:
	.loc 1 141 18 view .LVU71
	mov.n	a3, a8
.L33:
	.loc 1 141 23 view .LVU72
	l32r	a8, .LC7
	movi.n	a10, 1
	bgeu	a8, a7, .L35
	movi.n	a10, 0
.L35:
	or	a3, a3, a10
	extui	a3, a3, 0, 8
	bnez.n	a3, .L39
	.loc 1 140 22 view .LVU73
	movi.n	a7, 0xf
	bgeu	a7, a4, .L39
	.loc 1 145 5 is_stmt 1 view .LVU74
	.loc 1 145 9 is_stmt 0 view .LVU75
	s32i.n	a2, sp, 4
	l32i	a15, sp, 72
	movi.n	a2, 0x10
.LVL6:
	.loc 1 145 9 view .LVU76
	s32i.n	a2, sp, 0
	s32i.n	a4, sp, 8
	mov.n	a13, a6
	movi.n	a12, 1
	mov.n	a10, a5
	call8	argon2i_hash_raw
.LVL7:
	.loc 1 145 8 view .LVU77
	movi.n	a2, 1
	movnez	a3, a2, a10
	neg	a10, a3
	j	.L19
.LVL8:
.L39:
	.loc 1 142 8 is_stmt 1 view .LVU78
	.loc 1 142 10 is_stmt 0 view .LVU79
	call8	__errno
.LVL9:
	.loc 1 142 14 view .LVU80
	movi.n	a2, 0x16
.LVL10:
.L44:
	.loc 1 142 14 view .LVU81
	s32i.n	a2, a10, 0
.LVL11:
	.loc 1 143 9 is_stmt 1 view .LVU82
	.loc 1 143 16 is_stmt 0 view .LVU83
	movi.n	a10, -1
.L19:
	.loc 1 152 1 view .LVU84
	mov.n	a2, a10
	retw.n
.LFE18:
	.size	crypto_pwhash_argon2i, .-crypto_pwhash_argon2i
	.section	.text.crypto_pwhash_argon2i_str,"ax",@progbits
	.literal_position
	.literal .LC8, -2147482625
	.literal .LC9, 8191
	.align	4
	.global	crypto_pwhash_argon2i_str
	.type	crypto_pwhash_argon2i_str, @function
crypto_pwhash_argon2i_str:
.LVL12:
.LFB19:
	.loc 1 159 1 is_stmt 1 view -0
	.loc 1 159 1 is_stmt 0 view .LVU86
	entry	sp, 80
.LCFI19:
	.loc 1 160 5 is_stmt 1 view .LVU87
	.loc 1 162 5 view .LVU88
	.loc 1 159 1 is_stmt 0 view .LVU89
	l32i	a13, sp, 80
	.loc 1 162 5 view .LVU90
	movi.n	a11, 0
	movi	a12, 0x80
	mov.n	a10, a2
	s32i.n	a13, sp, 32
	call8	memset
.LVL13:
	.loc 1 163 5 is_stmt 1 view .LVU91
	.loc 1 164 19 is_stmt 0 view .LVU92
	movi.n	a10, 0
	movi.n	a9, 1
	mov.n	a11, a10
	movnez	a11, a9, a5
	.loc 1 163 14 view .LVU93
	l32i.n	a13, sp, 32
	.loc 1 164 45 view .LVU94
	moveqz	a9, a10, a7
	.loc 1 164 59 view .LVU95
	or	a5, a11, a9
	.loc 1 159 1 view .LVU96
	.loc 1 163 14 view .LVU97
	srli	a8, a13, 10
.LVL14:
	.loc 1 164 5 is_stmt 1 view .LVU98
	.loc 1 164 59 is_stmt 0 view .LVU99
	bne	a5, a10, .L59
	l32r	a5, .LC8
	bltu	a5, a13, .L59
	.loc 1 169 5 is_stmt 1 view .LVU100
	.loc 1 169 24 is_stmt 0 view .LVU101
	bne	a7, a10, .L57
	j	.L63
.L59:
	.loc 1 166 8 is_stmt 1 view .LVU102
	.loc 1 166 10 is_stmt 0 view .LVU103
	call8	__errno
.LVL15:
	.loc 1 166 14 view .LVU104
	movi.n	a2, 0x1b
.LVL16:
	.loc 1 166 14 view .LVU105
	j	.L64
.LVL17:
.L63:
	.loc 1 169 24 view .LVU106
	bltui	a6, 3, .L60
.L57:
	.loc 1 170 18 view .LVU107
	l32r	a5, .LC9
	bgeu	a5, a13, .L60
	.loc 1 174 5 is_stmt 1 view .LVU108
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	s32i.n	a8, sp, 32
	call8	randombytes_buf
.LVL18:
	.loc 1 175 5 view .LVU109
	.loc 1 175 9 is_stmt 0 view .LVU110
	l32i.n	a8, sp, 32
	s32i.n	a2, sp, 8
	movi.n	a2, 0x20
.LVL19:
	.loc 1 175 9 view .LVU111
	s32i.n	a2, sp, 4
	movi	a5, 0x80
	movi.n	a2, 0x10
	s32i.n	a2, sp, 0
	add.n	a15, sp, a2
	mov.n	a13, a3
	s32i.n	a5, sp, 12
	mov.n	a14, a4
	movi.n	a12, 1
	mov.n	a11, a8
	mov.n	a10, a6
	call8	argon2i_hash_encoded
.LVL20:
	.loc 1 175 8 view .LVU112
	movi.n	a2, 0
	movi.n	a3, 1
.LVL21:
	.loc 1 175 8 view .LVU113
	movnez	a2, a3, a10
	neg	a2, a2
	j	.L45
.LVL22:
.L60:
	.loc 1 171 8 is_stmt 1 view .LVU114
	.loc 1 171 10 is_stmt 0 view .LVU115
	call8	__errno
.LVL23:
	.loc 1 171 14 view .LVU116
	movi.n	a2, 0x16
.LVL24:
.L64:
	.loc 1 171 14 view .LVU117
	s32i.n	a2, a10, 0
	.loc 1 172 9 is_stmt 1 view .LVU118
	.loc 1 172 16 is_stmt 0 view .LVU119
	movi.n	a2, -1
.LVL25:
.L45:
	.loc 1 182 1 view .LVU120
	retw.n
.LFE19:
	.size	crypto_pwhash_argon2i_str, .-crypto_pwhash_argon2i_str
	.section	.text.crypto_pwhash_argon2i_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_str_verify
	.type	crypto_pwhash_argon2i_str_verify, @function
crypto_pwhash_argon2i_str_verify:
.LVL26:
.LFB20:
	.loc 1 188 1 is_stmt 1 view -0
	.loc 1 188 1 is_stmt 0 view .LVU122
	entry	sp, 32
.LCFI20:
	.loc 1 189 5 is_stmt 1 view .LVU123
	.loc 1 188 1 is_stmt 0 view .LVU124
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 189 8 view .LVU125
	beqz.n	a5, .L70
	.loc 1 190 8 is_stmt 1 view .LVU126
	.loc 1 190 14 is_stmt 0 view .LVU127
	movi.n	a2, 0x1b
.LVL27:
	.loc 1 190 10 view .LVU128
	call8	__errno
.LVL28:
	.loc 1 190 14 view .LVU129
	s32i.n	a2, a10, 0
	.loc 1 191 9 is_stmt 1 view .LVU130
	.loc 1 191 16 is_stmt 0 view .LVU131
	movi.n	a2, -1
	j	.L65
.LVL29:
.L70:
	.loc 1 194 5 is_stmt 1 view .LVU132
	.loc 1 199 5 view .LVU133
	.loc 1 199 9 is_stmt 0 view .LVU134
	mov.n	a10, a2
	call8	argon2i_verify
.LVL30:
	.loc 1 199 8 view .LVU135
	movi.n	a2, 1
.LVL31:
	.loc 1 199 8 view .LVU136
	moveqz	a2, a5, a10
	neg	a2, a2
.L65:
	.loc 1 203 1 view .LVU137
	retw.n
.LFE20:
	.size	crypto_pwhash_argon2i_str_verify, .-crypto_pwhash_argon2i_str_verify
	.section	.text._crypto_pwhash_argon2i_pick_best_implementation,"ax",@progbits
	.align	4
	.global	_crypto_pwhash_argon2i_pick_best_implementation
	.type	_crypto_pwhash_argon2i_pick_best_implementation, @function
_crypto_pwhash_argon2i_pick_best_implementation:
.LFB21:
	.loc 1 207 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI21:
	.loc 1 208 5 view .LVU139
	.loc 1 208 12 is_stmt 0 view .LVU140
	call8	argon2_pick_best_implementation
.LVL32:
	.loc 1 209 1 view .LVU141
	mov.n	a2, a10
	retw.n
.LFE21:
	.size	_crypto_pwhash_argon2i_pick_best_implementation, .-_crypto_pwhash_argon2i_pick_best_implementation
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
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
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xef9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0xc
	.4byte	.LASF196
	.4byte	.LASF197
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x92
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xe0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xb1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xf0
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x114
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xbe
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x86
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xe
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x5
	.4byte	0x13b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x12e
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1ad
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF27
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
	.4byte	0x1b3
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x153
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x1c3
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x246
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x28b
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x28b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x28b
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x147
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x147
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x12c
	.4byte	0x29b
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2dd
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2dd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2e3
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2fa
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x29b
	.uleb128 0x9
	.4byte	0x2f3
	.4byte	0x2f3
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2f9
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x246
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x328
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x328
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4d
	.uleb128 0x5
	.4byte	0x328
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3a6
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x328
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
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x300
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x50a
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x333
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x50a
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x750
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x750
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x750
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x135
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8b8
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8be
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8cf
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x135
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d5
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8db
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x135
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ec
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2dd
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x29b
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x711
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x750
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8f8
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x135
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ab
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x653
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x328
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
	.4byte	.LASF52
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x59
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x300
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x50a
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x12c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x671
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a0
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6c4
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6de
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x300
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x328
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e4
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f4
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x300
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x99
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x120
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x114
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x671
	.uleb128 0x18
	.4byte	0x50a
	.uleb128 0x18
	.4byte	0x12c
	.uleb128 0x18
	.4byte	0x135
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x653
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x695
	.uleb128 0x18
	.4byte	0x50a
	.uleb128 0x18
	.4byte	0x12c
	.uleb128 0x18
	.4byte	0x695
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.4byte	0x695
	.uleb128 0xe
	.byte	0x4
	.4byte	0x677
	.uleb128 0x17
	.4byte	0xa5
	.4byte	0x6c4
	.uleb128 0x18
	.4byte	0x50a
	.uleb128 0x18
	.4byte	0x12c
	.uleb128 0x18
	.4byte	0xa5
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6de
	.uleb128 0x18
	.4byte	0x50a
	.uleb128 0x18
	.4byte	0x12c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ca
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6f4
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x704
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x510
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x74a
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x74a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x750
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x711
	.uleb128 0xe
	.byte	0x4
	.4byte	0x704
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79d
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x79d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x79d
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x73
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7ad
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1ad
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1ad
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a3
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x135
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x114
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x114
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x114
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a3
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x114
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x114
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x114
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x114
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x114
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x13b
	.4byte	0x8b3
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF198
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7ad
	.uleb128 0x1a
	.4byte	0x8cf
	.uleb128 0x18
	.4byte	0x50a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x756
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x1a
	.4byte	0x8ec
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7fa
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3a6
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3a6
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3a6
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x50a
	.uleb128 0x9
	.4byte	0x69b
	.4byte	0x93d
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x932
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x7
	.byte	0x14
	.byte	0x1b
	.4byte	0x93d
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x7
	.byte	0x15
	.byte	0xc
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x1e
	.4byte	.LASF199
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x4b
	.byte	0xe
	.4byte	0xa51
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0
	.uleb128 0x20
	.4byte	.LASF126
	.sleb128 -1
	.uleb128 0x20
	.4byte	.LASF127
	.sleb128 -2
	.uleb128 0x20
	.4byte	.LASF128
	.sleb128 -3
	.uleb128 0x20
	.4byte	.LASF129
	.sleb128 -4
	.uleb128 0x20
	.4byte	.LASF130
	.sleb128 -5
	.uleb128 0x20
	.4byte	.LASF131
	.sleb128 -6
	.uleb128 0x20
	.4byte	.LASF132
	.sleb128 -7
	.uleb128 0x20
	.4byte	.LASF133
	.sleb128 -8
	.uleb128 0x20
	.4byte	.LASF134
	.sleb128 -9
	.uleb128 0x20
	.4byte	.LASF135
	.sleb128 -10
	.uleb128 0x20
	.4byte	.LASF136
	.sleb128 -11
	.uleb128 0x20
	.4byte	.LASF137
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF138
	.sleb128 -13
	.uleb128 0x20
	.4byte	.LASF139
	.sleb128 -14
	.uleb128 0x20
	.4byte	.LASF140
	.sleb128 -15
	.uleb128 0x20
	.4byte	.LASF141
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LASF142
	.sleb128 -17
	.uleb128 0x20
	.4byte	.LASF143
	.sleb128 -18
	.uleb128 0x20
	.4byte	.LASF144
	.sleb128 -19
	.uleb128 0x20
	.4byte	.LASF145
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF146
	.sleb128 -21
	.uleb128 0x20
	.4byte	.LASF147
	.sleb128 -22
	.uleb128 0x20
	.4byte	.LASF148
	.sleb128 -23
	.uleb128 0x20
	.4byte	.LASF149
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF150
	.sleb128 -25
	.uleb128 0x20
	.4byte	.LASF151
	.sleb128 -26
	.uleb128 0x20
	.4byte	.LASF152
	.sleb128 -27
	.uleb128 0x20
	.4byte	.LASF153
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF154
	.sleb128 -29
	.uleb128 0x20
	.4byte	.LASF155
	.sleb128 -30
	.uleb128 0x20
	.4byte	.LASF156
	.sleb128 -31
	.uleb128 0x20
	.4byte	.LASF157
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF158
	.sleb128 -33
	.uleb128 0x20
	.4byte	.LASF159
	.sleb128 -34
	.uleb128 0x20
	.4byte	.LASF160
	.sleb128 -35
	.byte	0
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa75
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0xea9
	.byte	0
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xade
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.byte	0xb9
	.byte	0x2d
	.4byte	0x695
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.byte	0xba
	.byte	0x34
	.4byte	0x69b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0xbb
	.byte	0x35
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xeb5
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0xec1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc02
	.uleb128 0x23
	.string	"out"
	.byte	0x1
	.byte	0x9b
	.byte	0x20
	.4byte	0x135
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x27
	.4byte	.LASF163
	.byte	0x1
	.byte	0x9c
	.byte	0x2d
	.4byte	0x69b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0x9d
	.byte	0x2e
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.byte	0x9e
	.byte	0x2e
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x27
	.4byte	.LASF167
	.byte	0x1
	.byte	0x9e
	.byte	0x3f
	.4byte	0x2c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0x1
	.byte	0xa0
	.byte	0x13
	.4byte	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0xecd
	.4byte	0xb88
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
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0xeb5
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0xed8
	.4byte	0xbaa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0xee4
	.4byte	0xbf8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL23
	.4byte	0xeb5
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xc12
	.uleb128 0xa
	.4byte	0x38
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd24
	.uleb128 0x23
	.string	"out"
	.byte	0x1
	.byte	0x7d
	.byte	0x2c
	.4byte	0x32e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x24
	.4byte	.LASF169
	.byte	0x1
	.byte	0x7d
	.byte	0x44
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.byte	0x7e
	.byte	0x29
	.4byte	0x69b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0x7e
	.byte	0x44
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x1
	.byte	0x7f
	.byte	0x32
	.4byte	0xd2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.byte	0x80
	.byte	0x2a
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.4byte	.LASF167
	.byte	0x1
	.byte	0x80
	.byte	0x3b
	.4byte	0x2c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.string	"alg"
	.byte	0x1
	.byte	0x80
	.byte	0x49
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x29
	.4byte	.LVL1
	.4byte	0xecd
	.4byte	0xcd5
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL3
	.4byte	0xeb5
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xef0
	.4byte	0xd1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL9
	.4byte	0xeb5
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0x5
	.4byte	0xd24
	.uleb128 0x2a
	.4byte	.LASF171
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF173
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF174
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF175
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF176
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF177
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF178
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF182
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	0x695
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF183
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	.LASF184
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF187
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF188
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	0xe68
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	0xe5b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x9
	.byte	0xba
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x7
	.byte	0xf
	.byte	0xd
	.uleb128 0x2e
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xa
	.byte	0xfb
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF200
	.4byte	.LASF201
	.byte	0xc
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xb
	.byte	0x21
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xa
	.byte	0xd4
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xa
	.byte	0xe8
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 0
.LLST6:
	.4byte	.LVL26
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU116
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU82
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU82
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF181:
	.string	"crypto_pwhash_argon2i_strbytes"
.LASF140:
	.string	"ARGON2_MEMORY_TOO_MUCH"
.LASF156:
	.string	"ARGON2_ENCODING_FAIL"
.LASF77:
	.string	"_misc"
.LASF155:
	.string	"ARGON2_MISSING_ARGS"
.LASF171:
	.string	"crypto_pwhash_argon2i_memlimit_sensitive"
.LASF142:
	.string	"ARGON2_LANES_TOO_MANY"
.LASF9:
	.string	"_lock_t"
.LASF153:
	.string	"ARGON2_THREADS_TOO_FEW"
.LASF39:
	.string	"_on_exit_args"
.LASF82:
	.string	"_write"
.LASF149:
	.string	"ARGON2_ALLOCATE_MEMORY_CBK_NULL"
.LASF161:
	.string	"_crypto_pwhash_argon2i_pick_best_implementation"
.LASF182:
	.string	"crypto_pwhash_argon2i_opslimit_max"
.LASF109:
	.string	"_wctomb_state"
.LASF190:
	.string	"__errno"
.LASF70:
	.string	"_r48"
.LASF126:
	.string	"ARGON2_OUTPUT_PTR_NULL"
.LASF193:
	.string	"argon2i_hash_encoded"
.LASF78:
	.string	"_signal_buf"
.LASF199:
	.string	"Argon2_ErrorCodes"
.LASF0:
	.string	"unsigned int"
.LASF188:
	.string	"crypto_pwhash_argon2i_alg_argon2i13"
.LASF54:
	.string	"_lbfsize"
.LASF52:
	.string	"_flags"
.LASF131:
	.string	"ARGON2_SALT_TOO_SHORT"
.LASF57:
	.string	"_errno"
.LASF127:
	.string	"ARGON2_OUTPUT_TOO_SHORT"
.LASF123:
	.string	"_sys_nerr"
.LASF119:
	.string	"__sf_fake_stdout"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF81:
	.string	"_read"
.LASF113:
	.string	"_mbrlen_state"
.LASF59:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF80:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF36:
	.string	"__tm_wday"
.LASF102:
	.string	"_result"
.LASF124:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF17:
	.string	"__count"
.LASF31:
	.string	"__tm_min"
.LASF76:
	.string	"__sf"
.LASF96:
	.string	"_rand48"
.LASF103:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF72:
	.string	"_asctime_buf"
.LASF79:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF134:
	.string	"ARGON2_AD_TOO_LONG"
.LASF151:
	.string	"ARGON2_INCORRECT_TYPE"
.LASF92:
	.string	"__FILE"
.LASF186:
	.string	"crypto_pwhash_argon2i_bytes_max"
.LASF88:
	.string	"_offset"
.LASF189:
	.string	"argon2_pick_best_implementation"
.LASF85:
	.string	"_ubuf"
.LASF194:
	.string	"argon2i_hash_raw"
.LASF168:
	.string	"crypto_pwhash_argon2i"
.LASF62:
	.string	"_emergency"
.LASF133:
	.string	"ARGON2_AD_TOO_SHORT"
.LASF178:
	.string	"crypto_pwhash_argon2i_memlimit_min"
.LASF5:
	.string	"size_t"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF61:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF24:
	.string	"_next"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF163:
	.string	"passwd"
.LASF18:
	.string	"__value"
.LASF104:
	.string	"_p5s"
.LASF169:
	.string	"outlen"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF108:
	.string	"_mblen_state"
.LASF22:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF73:
	.string	"_sig_func"
.LASF114:
	.string	"_mbrtowc_state"
.LASF157:
	.string	"ARGON2_DECODING_FAIL"
.LASF166:
	.string	"opslimit"
.LASF159:
	.string	"ARGON2_DECODING_LENGTH_FAIL"
.LASF20:
	.string	"_flock_t"
.LASF185:
	.string	"crypto_pwhash_argon2i_passwd_min"
.LASF15:
	.string	"__wch"
.LASF95:
	.string	"_iobs"
.LASF47:
	.string	"_on_exit_args_ptr"
.LASF84:
	.string	"_close"
.LASF63:
	.string	"__sdidinit"
.LASF51:
	.string	"__sFILE_fake"
.LASF173:
	.string	"crypto_pwhash_argon2i_memlimit_moderate"
.LASF170:
	.string	"salt"
.LASF146:
	.string	"ARGON2_AD_PTR_MISMATCH"
.LASF58:
	.string	"_stdin"
.LASF67:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF49:
	.string	"_base"
.LASF105:
	.string	"_freelist"
.LASF98:
	.string	"_mult"
.LASF23:
	.string	"__ULong"
.LASF184:
	.string	"crypto_pwhash_argon2i_passwd_max"
.LASF167:
	.string	"memlimit"
.LASF116:
	.string	"_wcrtomb_state"
.LASF53:
	.string	"_file"
.LASF130:
	.string	"ARGON2_PWD_TOO_LONG"
.LASF128:
	.string	"ARGON2_OUTPUT_TOO_LONG"
.LASF139:
	.string	"ARGON2_MEMORY_TOO_LITTLE"
.LASF132:
	.string	"ARGON2_SALT_TOO_LONG"
.LASF200:
	.string	"memset"
.LASF66:
	.string	"__cleanup"
.LASF152:
	.string	"ARGON2_OUT_PTR_MISMATCH"
.LASF19:
	.string	"_mbstate_t"
.LASF160:
	.string	"ARGON2_VERIFY_MISMATCH"
.LASF101:
	.string	"_mprec"
.LASF180:
	.string	"crypto_pwhash_argon2i_strprefix"
.LASF179:
	.string	"crypto_pwhash_argon2i_opslimit_min"
.LASF38:
	.string	"__tm_isdst"
.LASF129:
	.string	"ARGON2_PWD_TOO_SHORT"
.LASF192:
	.string	"randombytes_buf"
.LASF150:
	.string	"ARGON2_INCORRECT_PARAMETER"
.LASF34:
	.string	"__tm_mon"
.LASF74:
	.string	"_atexit0"
.LASF144:
	.string	"ARGON2_SALT_PTR_MISMATCH"
.LASF44:
	.string	"_atexit"
.LASF90:
	.string	"_mbstate"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"long int"
.LASF135:
	.string	"ARGON2_SECRET_TOO_SHORT"
.LASF26:
	.string	"_sign"
.LASF55:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF35:
	.string	"__tm_year"
.LASF106:
	.string	"_misc_reent"
.LASF71:
	.string	"_localtime_buf"
.LASF68:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF111:
	.string	"_l64a_buf"
.LASF201:
	.string	"__builtin_memset"
.LASF87:
	.string	"_blksize"
.LASF145:
	.string	"ARGON2_SECRET_PTR_MISMATCH"
.LASF29:
	.string	"__tm"
.LASF89:
	.string	"_lock"
.LASF21:
	.string	"long unsigned int"
.LASF187:
	.string	"crypto_pwhash_argon2i_bytes_min"
.LASF94:
	.string	"_niobs"
.LASF195:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF154:
	.string	"ARGON2_THREADS_TOO_MANY"
.LASF125:
	.string	"ARGON2_OK"
.LASF183:
	.string	"crypto_pwhash_argon2i_saltbytes"
.LASF172:
	.string	"crypto_pwhash_argon2i_opslimit_sensitive"
.LASF138:
	.string	"ARGON2_TIME_TOO_LARGE"
.LASF162:
	.string	"crypto_pwhash_argon2i_str_verify"
.LASF41:
	.string	"_dso_handle"
.LASF165:
	.string	"crypto_pwhash_argon2i_str"
.LASF147:
	.string	"ARGON2_MEMORY_ALLOCATION_ERROR"
.LASF196:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c"
.LASF136:
	.string	"ARGON2_SECRET_TOO_LONG"
.LASF69:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF191:
	.string	"argon2i_verify"
.LASF112:
	.string	"_getdate_err"
.LASF99:
	.string	"_add"
.LASF48:
	.string	"__sbuf"
.LASF158:
	.string	"ARGON2_THREAD_FAIL"
.LASF93:
	.string	"_glue"
.LASF137:
	.string	"ARGON2_TIME_TOO_SMALL"
.LASF148:
	.string	"ARGON2_FREE_MEMORY_CBK_NULL"
.LASF75:
	.string	"__sglue"
.LASF177:
	.string	"crypto_pwhash_argon2i_memlimit_max"
.LASF107:
	.string	"_strtok_last"
.LASF110:
	.string	"_mbtowc_state"
.LASF197:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF65:
	.string	"_locale"
.LASF40:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF56:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF122:
	.string	"_sys_errlist"
.LASF141:
	.string	"ARGON2_LANES_TOO_FEW"
.LASF42:
	.string	"_fntypes"
.LASF50:
	.string	"_size"
.LASF12:
	.string	"_off_t"
.LASF86:
	.string	"_nbuf"
.LASF174:
	.string	"crypto_pwhash_argon2i_opslimit_moderate"
.LASF64:
	.string	"_unspecified_locale_info"
.LASF164:
	.string	"passwdlen"
.LASF120:
	.string	"__sf_fake_stderr"
.LASF91:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF176:
	.string	"crypto_pwhash_argon2i_opslimit_interactive"
.LASF97:
	.string	"_seed"
.LASF100:
	.string	"_rand_next"
.LASF198:
	.string	"__locale_t"
.LASF83:
	.string	"_seek"
.LASF175:
	.string	"crypto_pwhash_argon2i_memlimit_interactive"
.LASF143:
	.string	"ARGON2_PWD_PTR_MISMATCH"
.LASF60:
	.string	"_stderr"
.LASF14:
	.string	"wint_t"
.LASF118:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
