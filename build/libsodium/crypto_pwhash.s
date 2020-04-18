	.file	"crypto_pwhash.c"
	.text
.Ltext0:
	.section	.text.crypto_pwhash_alg_argon2i13,"ax",@progbits
	.align	4
	.global	crypto_pwhash_alg_argon2i13
	.type	crypto_pwhash_alg_argon2i13, @function
crypto_pwhash_alg_argon2i13:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/crypto_pwhash.c"
	.loc 1 8 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 9 5 view .LVU1
	.loc 1 10 1 is_stmt 0 view .LVU2
	movi.n	a2, 1
	retw.n
.LFE0:
	.size	crypto_pwhash_alg_argon2i13, .-crypto_pwhash_alg_argon2i13
	.section	.text.crypto_pwhash_alg_default,"ax",@progbits
	.align	4
	.global	crypto_pwhash_alg_default
	.type	crypto_pwhash_alg_default, @function
crypto_pwhash_alg_default:
.LFB24:
	entry	sp, 32
.LCFI1:
	movi.n	a2, 1
	retw.n
.LFE24:
	.size	crypto_pwhash_alg_default, .-crypto_pwhash_alg_default
	.section	.text.crypto_pwhash_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_bytes_min
	.type	crypto_pwhash_bytes_min, @function
crypto_pwhash_bytes_min:
.LFB2:
	.loc 1 20 1 is_stmt 1 view -0
	.loc 1 20 1 is_stmt 0 view .LVU4
	entry	sp, 32
.LCFI2:
	.loc 1 21 5 is_stmt 1 view .LVU5
	.loc 1 22 1 is_stmt 0 view .LVU6
	movi.n	a2, 0x10
	retw.n
.LFE2:
	.size	crypto_pwhash_bytes_min, .-crypto_pwhash_bytes_min
	.section	.text.crypto_pwhash_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_bytes_max
	.type	crypto_pwhash_bytes_max, @function
crypto_pwhash_bytes_max:
.LFB3:
	.loc 1 26 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 27 5 view .LVU8
	.loc 1 28 1 is_stmt 0 view .LVU9
	movi.n	a2, -1
	retw.n
.LFE3:
	.size	crypto_pwhash_bytes_max, .-crypto_pwhash_bytes_max
	.section	.text.crypto_pwhash_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_passwd_min
	.type	crypto_pwhash_passwd_min, @function
crypto_pwhash_passwd_min:
.LFB4:
	.loc 1 32 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 33 5 view .LVU11
	.loc 1 34 1 is_stmt 0 view .LVU12
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	crypto_pwhash_passwd_min, .-crypto_pwhash_passwd_min
	.section	.text.crypto_pwhash_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_passwd_max
	.type	crypto_pwhash_passwd_max, @function
crypto_pwhash_passwd_max:
.LFB28:
	entry	sp, 32
.LCFI5:
	movi.n	a2, -1
	retw.n
.LFE28:
	.size	crypto_pwhash_passwd_max, .-crypto_pwhash_passwd_max
	.section	.text.crypto_pwhash_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_saltbytes
	.type	crypto_pwhash_saltbytes, @function
crypto_pwhash_saltbytes:
.LFB26:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x10
	retw.n
.LFE26:
	.size	crypto_pwhash_saltbytes, .-crypto_pwhash_saltbytes
	.section	.text.crypto_pwhash_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_strbytes
	.type	crypto_pwhash_strbytes, @function
crypto_pwhash_strbytes:
.LFB7:
	.loc 1 50 1 is_stmt 1 view -0
	.loc 1 50 1 is_stmt 0 view .LVU14
	entry	sp, 32
.LCFI7:
	.loc 1 51 5 is_stmt 1 view .LVU15
	.loc 1 52 1 is_stmt 0 view .LVU16
	movi	a2, 0x80
	retw.n
.LFE7:
	.size	crypto_pwhash_strbytes, .-crypto_pwhash_strbytes
	.section	.rodata.crypto_pwhash_strprefix.str1.1,"aMS",@progbits,1
.LC0:
	.string	"$argon2i$"
	.section	.text.crypto_pwhash_strprefix,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_pwhash_strprefix
	.type	crypto_pwhash_strprefix, @function
crypto_pwhash_strprefix:
.LFB8:
	.loc 1 56 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 57 5 view .LVU18
	.loc 1 58 1 is_stmt 0 view .LVU19
	l32r	a2, .LC1
	retw.n
.LFE8:
	.size	crypto_pwhash_strprefix, .-crypto_pwhash_strprefix
	.section	.text.crypto_pwhash_opslimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_min
	.type	crypto_pwhash_opslimit_min, @function
crypto_pwhash_opslimit_min:
.LFB9:
	.loc 1 62 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI9:
	.loc 1 63 5 view .LVU21
	.loc 1 64 1 is_stmt 0 view .LVU22
	movi.n	a2, 3
	retw.n
.LFE9:
	.size	crypto_pwhash_opslimit_min, .-crypto_pwhash_opslimit_min
	.section	.text.crypto_pwhash_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_max
	.type	crypto_pwhash_opslimit_max, @function
crypto_pwhash_opslimit_max:
.LFB30:
	entry	sp, 32
.LCFI10:
	movi.n	a2, -1
	retw.n
.LFE30:
	.size	crypto_pwhash_opslimit_max, .-crypto_pwhash_opslimit_max
	.section	.text.crypto_pwhash_memlimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_memlimit_min
	.type	crypto_pwhash_memlimit_min, @function
crypto_pwhash_memlimit_min:
.LFB11:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU24
	entry	sp, 32
.LCFI11:
	.loc 1 75 5 is_stmt 1 view .LVU25
	.loc 1 76 1 is_stmt 0 view .LVU26
	movi.n	a2, 1
	retw.n
.LFE11:
	.size	crypto_pwhash_memlimit_min, .-crypto_pwhash_memlimit_min
	.section	.text.crypto_pwhash_memlimit_max,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.align	4
	.global	crypto_pwhash_memlimit_max
	.type	crypto_pwhash_memlimit_max, @function
crypto_pwhash_memlimit_max:
.LFB12:
	.loc 1 80 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI12:
	.loc 1 81 5 view .LVU28
	.loc 1 82 1 is_stmt 0 view .LVU29
	l32r	a2, .LC2
	retw.n
.LFE12:
	.size	crypto_pwhash_memlimit_max, .-crypto_pwhash_memlimit_max
	.section	.text.crypto_pwhash_opslimit_interactive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_interactive
	.type	crypto_pwhash_opslimit_interactive, @function
crypto_pwhash_opslimit_interactive:
.LFB13:
	.loc 1 86 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI13:
	.loc 1 87 5 view .LVU31
	.loc 1 88 1 is_stmt 0 view .LVU32
	movi.n	a2, 4
	retw.n
.LFE13:
	.size	crypto_pwhash_opslimit_interactive, .-crypto_pwhash_opslimit_interactive
	.section	.text.crypto_pwhash_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC3, 33554432
	.align	4
	.global	crypto_pwhash_memlimit_interactive
	.type	crypto_pwhash_memlimit_interactive, @function
crypto_pwhash_memlimit_interactive:
.LFB14:
	.loc 1 92 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI14:
	.loc 1 93 5 view .LVU34
	.loc 1 94 1 is_stmt 0 view .LVU35
	l32r	a2, .LC3
	retw.n
.LFE14:
	.size	crypto_pwhash_memlimit_interactive, .-crypto_pwhash_memlimit_interactive
	.section	.text.crypto_pwhash_opslimit_moderate,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_moderate
	.type	crypto_pwhash_opslimit_moderate, @function
crypto_pwhash_opslimit_moderate:
.LFB15:
	.loc 1 98 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI15:
	.loc 1 99 5 view .LVU37
	.loc 1 100 1 is_stmt 0 view .LVU38
	movi.n	a2, 6
	retw.n
.LFE15:
	.size	crypto_pwhash_opslimit_moderate, .-crypto_pwhash_opslimit_moderate
	.section	.text.crypto_pwhash_memlimit_moderate,"ax",@progbits
	.literal_position
	.literal .LC4, 134217728
	.align	4
	.global	crypto_pwhash_memlimit_moderate
	.type	crypto_pwhash_memlimit_moderate, @function
crypto_pwhash_memlimit_moderate:
.LFB16:
	.loc 1 104 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI16:
	.loc 1 105 5 view .LVU40
	.loc 1 106 1 is_stmt 0 view .LVU41
	l32r	a2, .LC4
	retw.n
.LFE16:
	.size	crypto_pwhash_memlimit_moderate, .-crypto_pwhash_memlimit_moderate
	.section	.text.crypto_pwhash_opslimit_sensitive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_sensitive
	.type	crypto_pwhash_opslimit_sensitive, @function
crypto_pwhash_opslimit_sensitive:
.LFB17:
	.loc 1 110 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI17:
	.loc 1 111 5 view .LVU43
	.loc 1 112 1 is_stmt 0 view .LVU44
	movi.n	a2, 8
	retw.n
.LFE17:
	.size	crypto_pwhash_opslimit_sensitive, .-crypto_pwhash_opslimit_sensitive
	.section	.text.crypto_pwhash_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC5, 536870912
	.align	4
	.global	crypto_pwhash_memlimit_sensitive
	.type	crypto_pwhash_memlimit_sensitive, @function
crypto_pwhash_memlimit_sensitive:
.LFB18:
	.loc 1 116 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI18:
	.loc 1 117 5 view .LVU46
	.loc 1 118 1 is_stmt 0 view .LVU47
	l32r	a2, .LC5
	retw.n
.LFE18:
	.size	crypto_pwhash_memlimit_sensitive, .-crypto_pwhash_memlimit_sensitive
	.section	.text.crypto_pwhash,"ax",@progbits
	.align	4
	.global	crypto_pwhash
	.type	crypto_pwhash, @function
crypto_pwhash:
.LVL0:
.LFB19:
	.loc 1 125 1 is_stmt 1 view -0
	.loc 1 125 1 is_stmt 0 view .LVU49
	entry	sp, 64
.LCFI19:
	.loc 1 126 5 is_stmt 1 view .LVU50
	.loc 1 125 1 is_stmt 0 view .LVU51
	l32i	a8, sp, 92
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a14, a6
	.loc 1 126 8 view .LVU52
	beqi	a8, 1, .L21
	.loc 1 127 8 is_stmt 1 view .LVU53
	.loc 1 127 10 is_stmt 0 view .LVU54
	call8	__errno
.LVL1:
	.loc 1 127 14 view .LVU55
	movi.n	a8, 0x16
	s32i.n	a8, a10, 0
	.loc 1 128 9 is_stmt 1 view .LVU56
	.loc 1 128 16 is_stmt 0 view .LVU57
	movi.n	a10, -1
	j	.L20
.LVL2:
.L21:
	.loc 1 130 5 is_stmt 1 view .LVU58
	.loc 1 130 12 is_stmt 0 view .LVU59
	s32i.n	a8, sp, 28
	l32i	a8, sp, 88
.LVL3:
	.loc 1 130 12 view .LVU60
	l32i	a9, sp, 84
	s32i.n	a8, sp, 24
	l32i	a8, sp, 80
	s32i.n	a9, sp, 20
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 68
	s32i.n	a8, sp, 8
	l32i	a8, sp, 64
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	call8	crypto_pwhash_argon2i
.LVL4:
.L20:
	.loc 1 132 1 view .LVU61
	mov.n	a2, a10
.LVL5:
	.loc 1 132 1 view .LVU62
	retw.n
.LFE19:
	.size	crypto_pwhash, .-crypto_pwhash
	.section	.text.crypto_pwhash_str,"ax",@progbits
	.align	4
	.global	crypto_pwhash_str
	.type	crypto_pwhash_str, @function
crypto_pwhash_str:
.LVL6:
.LFB20:
	.loc 1 138 1 is_stmt 1 view -0
	.loc 1 138 1 is_stmt 0 view .LVU64
	entry	sp, 48
.LCFI20:
	.loc 1 139 5 is_stmt 1 view .LVU65
	.loc 1 139 12 is_stmt 0 view .LVU66
	l32i.n	a8, sp, 48
	.loc 1 138 1 view .LVU67
	mov.n	a15, a7
	.loc 1 139 12 view .LVU68
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_pwhash_argon2i_str
.LVL7:
	.loc 1 141 1 view .LVU69
	mov.n	a2, a10
.LVL8:
	.loc 1 138 1 view .LVU70
	.loc 1 141 1 view .LVU71
	retw.n
.LFE20:
	.size	crypto_pwhash_str, .-crypto_pwhash_str
	.section	.text.crypto_pwhash_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_str_verify
	.type	crypto_pwhash_str_verify, @function
crypto_pwhash_str_verify:
.LVL9:
.LFB21:
	.loc 1 147 1 is_stmt 1 view -0
	.loc 1 147 1 is_stmt 0 view .LVU73
	entry	sp, 32
.LCFI21:
	.loc 1 148 5 is_stmt 1 view .LVU74
	.loc 1 148 12 is_stmt 0 view .LVU75
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_pwhash_argon2i_str_verify
.LVL10:
	.loc 1 149 1 view .LVU76
	mov.n	a2, a10
.LVL11:
	.loc 1 149 1 view .LVU77
	retw.n
.LFE21:
	.size	crypto_pwhash_str_verify, .-crypto_pwhash_str_verify
	.section	.rodata.crypto_pwhash_primitive.str1.1,"aMS",@progbits,1
.LC6:
	.string	"argon2i"
	.section	.text.crypto_pwhash_primitive,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.align	4
	.global	crypto_pwhash_primitive
	.type	crypto_pwhash_primitive, @function
crypto_pwhash_primitive:
.LFB22:
	.loc 1 152 31 is_stmt 1 view -0
	entry	sp, 32
.LCFI22:
	.loc 1 153 5 view .LVU79
	.loc 1 154 1 is_stmt 0 view .LVU80
	l32r	a2, .LC7
	retw.n
.LFE22:
	.size	crypto_pwhash_primitive, .-crypto_pwhash_primitive
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
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
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
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
	.uleb128 0x20
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
	.uleb128 0x40
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
	.uleb128 0x30
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
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_argon2i.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xce9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xc
	.4byte	.LASF157
	.4byte	.LASF158
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x86
	.uleb128 0x3
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
	.4byte	0x38
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
	.4byte	0x4d
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0x38
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
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x5
	.4byte	0x12f
	.uleb128 0x3
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
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
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
	.4byte	0x38
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
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x25
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
	.4byte	0x38
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
	.4byte	0x25
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
	.4byte	0x38
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
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4d
	.uleb128 0x5
	.4byte	0x31c
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x39a
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
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x59
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
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4fe
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x327
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4fe
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x744
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x744
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x744
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
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
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ac
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x8b2
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8c3
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
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
	.4byte	0x8c9
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8cf
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
	.4byte	0x8e0
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
	.4byte	0x705
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x744
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8ec
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
	.4byte	0x39f
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x647
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
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x59
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
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4fe
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
	.4byte	0x665
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x694
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6b8
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6d2
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
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6d8
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6e8
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
	.4byte	0x25
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
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x665
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x129
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x647
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x689
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x689
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x136
	.uleb128 0x5
	.4byte	0x689
	.uleb128 0xe
	.byte	0x4
	.4byte	0x66b
	.uleb128 0x17
	.4byte	0x99
	.4byte	0x6b8
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x99
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69a
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6d2
	.uleb128 0x18
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	0x120
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6be
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6e8
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6f8
	.uleb128 0xa
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x504
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x73e
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x73e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x744
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x705
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6f8
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x791
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x791
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x791
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x67
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7a1
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7e8
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
	.4byte	0x25
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
	.4byte	0x7e8
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
	.4byte	0x897
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
	.4byte	0x897
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
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
	.4byte	0x8a7
	.uleb128 0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF159
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8a7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7a1
	.uleb128 0x1a
	.4byte	0x8c3
	.uleb128 0x18
	.4byte	0x4fe
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0x1a
	.4byte	0x8e0
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7ee
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4fe
	.uleb128 0x9
	.4byte	0x68f
	.4byte	0x931
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x926
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x6
	.byte	0x14
	.byte	0x1b
	.4byte	0x931
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x6
	.byte	0x15
	.byte	0xc
	.4byte	0x25
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	0x689
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ca
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.byte	0x90
	.byte	0x25
	.4byte	0x689
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x91
	.byte	0x2d
	.4byte	0x68f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x92
	.byte	0x2d
	.4byte	0x67
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0xcbc
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5a
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.byte	0x87
	.byte	0x18
	.4byte	0x129
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x88
	.byte	0x26
	.4byte	0x68f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x88
	.byte	0x41
	.4byte	0x67
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x89
	.byte	0x26
	.4byte	0x67
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0x89
	.byte	0x37
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LVL7
	.4byte	0xcc8
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
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.byte	0x79
	.byte	0x25
	.4byte	0x322
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x79
	.byte	0x3d
	.4byte	0x67
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x7a
	.byte	0x22
	.4byte	0x68f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x7a
	.byte	0x3d
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x7b
	.byte	0x2b
	.4byte	0xb2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x7c
	.byte	0x22
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0x7c
	.byte	0x33
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.string	"alg"
	.byte	0x1
	.byte	0x7c
	.byte	0x41
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x24
	.4byte	.LVL1
	.4byte	0xcd4
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xce0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 28
	.uleb128 0x3
	.byte	0x91
	.sleb128 28
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0x5
	.4byte	0xb25
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF144
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x689
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x25
	.uleb128 0x26
	.4byte	.LASF151
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.uleb128 0x27
	.4byte	0xc82
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	0xc69
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	0xc5c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x7
	.byte	0x6b
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x7
	.byte	0x64
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x6
	.byte	0xf
	.byte	0xd
	.uleb128 0x28
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x7
	.byte	0x5a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 0
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE19
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
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
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF135:
	.string	"crypto_pwhash_memlimit_moderate"
.LASF49:
	.string	"_size"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"_rand48"
.LASF132:
	.string	"crypto_pwhash_primitive"
.LASF61:
	.string	"_emergency"
.LASF128:
	.string	"memlimit"
.LASF54:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF140:
	.string	"crypto_pwhash_memlimit_min"
.LASF159:
	.string	"__locale_t"
.LASF143:
	.string	"crypto_pwhash_strbytes"
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
.LASF84:
	.string	"_ubuf"
.LASF48:
	.string	"_base"
.LASF144:
	.string	"crypto_pwhash_opslimit_max"
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
.LASF154:
	.string	"__errno"
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
.LASF142:
	.string	"crypto_pwhash_strprefix"
.LASF149:
	.string	"crypto_pwhash_bytes_min"
.LASF121:
	.string	"_sys_errlist"
.LASF68:
	.string	"_cvtbuf"
.LASF87:
	.string	"_offset"
.LASF151:
	.string	"crypto_pwhash_alg_argon2i13"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF131:
	.string	"salt"
.LASF45:
	.string	"_fns"
.LASF25:
	.string	"_sign"
.LASF141:
	.string	"crypto_pwhash_opslimit_min"
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
.LASF134:
	.string	"crypto_pwhash_opslimit_sensitive"
.LASF0:
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
.LASF148:
	.string	"crypto_pwhash_bytes_max"
.LASF93:
	.string	"_niobs"
.LASF138:
	.string	"crypto_pwhash_opslimit_interactive"
.LASF123:
	.string	"passwd"
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
.LASF150:
	.string	"crypto_pwhash_alg_default"
.LASF90:
	.string	"_flags2"
.LASF81:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF76:
	.string	"_misc"
.LASF146:
	.string	"crypto_pwhash_passwd_max"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF129:
	.string	"crypto_pwhash"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF158:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF147:
	.string	"crypto_pwhash_passwd_min"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF125:
	.string	"crypto_pwhash_str_verify"
.LASF62:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF136:
	.string	"crypto_pwhash_opslimit_moderate"
.LASF104:
	.string	"_freelist"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF157:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/crypto_pwhash.c"
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
.LASF122:
	.string	"_sys_nerr"
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
.LASF127:
	.string	"opslimit"
.LASF12:
	.string	"_fpos_t"
.LASF56:
	.string	"_errno"
.LASF21:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF155:
	.string	"crypto_pwhash_argon2i"
.LASF97:
	.string	"_mult"
.LASF133:
	.string	"crypto_pwhash_memlimit_sensitive"
.LASF23:
	.string	"_next"
.LASF156:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF139:
	.string	"crypto_pwhash_memlimit_max"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF153:
	.string	"crypto_pwhash_argon2i_str"
.LASF111:
	.string	"_getdate_err"
.LASF126:
	.string	"crypto_pwhash_str"
.LASF120:
	.string	"_global_impure_ptr"
.LASF145:
	.string	"crypto_pwhash_saltbytes"
.LASF124:
	.string	"passwdlen"
.LASF52:
	.string	"_file"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF137:
	.string	"crypto_pwhash_memlimit_interactive"
.LASF110:
	.string	"_l64a_buf"
.LASF152:
	.string	"crypto_pwhash_argon2i_str_verify"
.LASF72:
	.string	"_sig_func"
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
.LASF130:
	.string	"outlen"
.LASF109:
	.string	"_mbtowc_state"
.LASF103:
	.string	"_p5s"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
