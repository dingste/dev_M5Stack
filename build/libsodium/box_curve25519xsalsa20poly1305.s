	.file	"box_curve25519xsalsa20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_box_curve25519xsalsa20poly1305_seed_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_seed_keypair
	.type	crypto_box_curve25519xsalsa20poly1305_seed_keypair, @function
crypto_box_curve25519xsalsa20poly1305_seed_keypair:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/curve25519xsalsa20poly1305/box_curve25519xsalsa20poly1305.c"
	.loc 1 15 1 view -0
	.loc 1 15 1 is_stmt 0 view .LVU1
	entry	sp, 96
.LCFI0:
	.loc 1 16 5 is_stmt 1 view .LVU2
	.loc 1 18 5 view .LVU3
	l32r	a13, .LC0+4
	l32r	a12, .LC0
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512
.LVL1:
	.loc 1 19 5 view .LVU4
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL2:
	.loc 1 20 5 view .LVU5
	mov.n	a10, sp
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL3:
	.loc 1 22 5 view .LVU6
	.loc 1 22 12 is_stmt 0 view .LVU7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_curve25519_base
.LVL4:
	.loc 1 23 1 view .LVU8
	mov.n	a2, a10
.LVL5:
	.loc 1 23 1 view .LVU9
	retw.n
.LFE0:
	.size	crypto_box_curve25519xsalsa20poly1305_seed_keypair, .-crypto_box_curve25519xsalsa20poly1305_seed_keypair
	.section	.text.crypto_box_curve25519xsalsa20poly1305_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_keypair
	.type	crypto_box_curve25519xsalsa20poly1305_keypair, @function
crypto_box_curve25519xsalsa20poly1305_keypair:
.LVL6:
.LFB1:
	.loc 1 28 1 is_stmt 1 view -0
	.loc 1 28 1 is_stmt 0 view .LVU11
	entry	sp, 32
.LCFI1:
	.loc 1 29 5 is_stmt 1 view .LVU12
	mov.n	a10, a3
	movi.n	a11, 0x20
	call8	randombytes_buf
.LVL7:
	.loc 1 31 5 view .LVU13
	.loc 1 31 12 is_stmt 0 view .LVU14
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_scalarmult_curve25519_base
.LVL8:
	.loc 1 32 1 view .LVU15
	mov.n	a2, a10
.LVL9:
	.loc 1 32 1 view .LVU16
	retw.n
.LFE1:
	.size	crypto_box_curve25519xsalsa20poly1305_keypair, .-crypto_box_curve25519xsalsa20poly1305_keypair
	.section	.text.crypto_box_curve25519xsalsa20poly1305_beforenm,"ax",@progbits
	.literal_position
	.literal .LC1, zero$2728
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_beforenm
	.type	crypto_box_curve25519xsalsa20poly1305_beforenm, @function
crypto_box_curve25519xsalsa20poly1305_beforenm:
.LVL10:
.LFB2:
	.loc 1 38 1 is_stmt 1 view -0
	.loc 1 38 1 is_stmt 0 view .LVU18
	entry	sp, 64
.LCFI2:
	.loc 1 39 5 is_stmt 1 view .LVU19
	.loc 1 40 5 view .LVU20
	.loc 1 42 5 view .LVU21
	.loc 1 42 9 is_stmt 0 view .LVU22
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_scalarmult_curve25519
.LVL11:
	.loc 1 43 16 view .LVU23
	movi.n	a8, -1
	.loc 1 42 8 view .LVU24
	bnez.n	a10, .L3
	.loc 1 45 5 is_stmt 1 view .LVU25
	.loc 1 45 12 is_stmt 0 view .LVU26
	l32r	a11, .LC1
	mov.n	a13, a10
	mov.n	a12, sp
	mov.n	a10, a2
	call8	crypto_core_hsalsa20
.LVL12:
	mov.n	a8, a10
.L3:
	.loc 1 46 1 view .LVU27
	mov.n	a2, a8
.LVL13:
	.loc 1 46 1 view .LVU28
	retw.n
.LFE2:
	.size	crypto_box_curve25519xsalsa20poly1305_beforenm, .-crypto_box_curve25519xsalsa20poly1305_beforenm
	.section	.text.crypto_box_curve25519xsalsa20poly1305_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_afternm
	.type	crypto_box_curve25519xsalsa20poly1305_afternm, @function
crypto_box_curve25519xsalsa20poly1305_afternm:
.LVL14:
.LFB3:
	.loc 1 54 1 is_stmt 1 view -0
	.loc 1 54 1 is_stmt 0 view .LVU30
	entry	sp, 32
.LCFI3:
	.loc 1 55 5 is_stmt 1 view .LVU31
	.loc 1 54 1 is_stmt 0 view .LVU32
	mov.n	a15, a7
	.loc 1 55 12 view .LVU33
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305
.LVL15:
	.loc 1 56 1 view .LVU34
	mov.n	a2, a10
.LVL16:
	.loc 1 54 1 view .LVU35
	.loc 1 56 1 view .LVU36
	retw.n
.LFE3:
	.size	crypto_box_curve25519xsalsa20poly1305_afternm, .-crypto_box_curve25519xsalsa20poly1305_afternm
	.section	.text.crypto_box_curve25519xsalsa20poly1305_open_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_open_afternm
	.type	crypto_box_curve25519xsalsa20poly1305_open_afternm, @function
crypto_box_curve25519xsalsa20poly1305_open_afternm:
.LVL17:
.LFB4:
	.loc 1 64 1 is_stmt 1 view -0
	.loc 1 64 1 is_stmt 0 view .LVU38
	entry	sp, 32
.LCFI4:
	.loc 1 65 5 is_stmt 1 view .LVU39
	.loc 1 64 1 is_stmt 0 view .LVU40
	mov.n	a15, a7
	.loc 1 65 12 view .LVU41
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305_open
.LVL18:
	.loc 1 66 1 view .LVU42
	mov.n	a2, a10
.LVL19:
	.loc 1 64 1 view .LVU43
	.loc 1 66 1 view .LVU44
	retw.n
.LFE4:
	.size	crypto_box_curve25519xsalsa20poly1305_open_afternm, .-crypto_box_curve25519xsalsa20poly1305_open_afternm
	.section	.text.crypto_box_curve25519xsalsa20poly1305,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305
	.type	crypto_box_curve25519xsalsa20poly1305, @function
crypto_box_curve25519xsalsa20poly1305:
.LVL20:
.LFB5:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU46
	entry	sp, 64
.LCFI5:
	.loc 1 75 5 is_stmt 1 view .LVU47
	.loc 1 76 5 view .LVU48
	.loc 1 78 5 view .LVU49
	.loc 1 78 9 is_stmt 0 view .LVU50
	l32i	a12, sp, 64
	.loc 1 74 1 view .LVU51
	mov.n	a11, a7
	.loc 1 78 9 view .LVU52
	mov.n	a10, sp
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL21:
	.loc 1 74 1 view .LVU53
	mov.n	a7, a2
.LVL22:
	.loc 1 74 1 view .LVU54
	.loc 1 79 16 view .LVU55
	movi.n	a2, -1
.LVL23:
	.loc 1 78 8 view .LVU56
	bnez.n	a10, .L8
	.loc 1 81 5 is_stmt 1 view .LVU57
.LVL24:
.LBB6:
.LBI6:
	.loc 1 49 1 view .LVU58
.LBB7:
	.loc 1 55 5 view .LVU59
	.loc 1 55 12 is_stmt 0 view .LVU60
	mov.n	a11, a3
	mov.n	a15, sp
.LVL25:
	.loc 1 55 12 view .LVU61
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a7
	call8	crypto_secretbox_xsalsa20poly1305
.LVL26:
	.loc 1 55 12 view .LVU62
	mov.n	a2, a10
.LVL27:
	.loc 1 55 12 view .LVU63
.LBE7:
.LBE6:
	.loc 1 82 5 is_stmt 1 view .LVU64
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL28:
	.loc 1 84 5 view .LVU65
.L8:
	.loc 1 85 1 is_stmt 0 view .LVU66
	retw.n
.LFE5:
	.size	crypto_box_curve25519xsalsa20poly1305, .-crypto_box_curve25519xsalsa20poly1305
	.section	.text.crypto_box_curve25519xsalsa20poly1305_open,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_open
	.type	crypto_box_curve25519xsalsa20poly1305_open, @function
crypto_box_curve25519xsalsa20poly1305_open:
.LVL29:
.LFB6:
	.loc 1 91 1 is_stmt 1 view -0
	.loc 1 91 1 is_stmt 0 view .LVU68
	entry	sp, 64
.LCFI6:
	.loc 1 92 5 is_stmt 1 view .LVU69
	.loc 1 93 5 view .LVU70
	.loc 1 95 5 view .LVU71
	.loc 1 95 9 is_stmt 0 view .LVU72
	l32i	a12, sp, 64
	.loc 1 91 1 view .LVU73
	mov.n	a11, a7
	.loc 1 95 9 view .LVU74
	mov.n	a10, sp
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL30:
	.loc 1 91 1 view .LVU75
	mov.n	a7, a2
.LVL31:
	.loc 1 91 1 view .LVU76
	.loc 1 96 16 view .LVU77
	movi.n	a2, -1
.LVL32:
	.loc 1 95 8 view .LVU78
	bnez.n	a10, .L11
	.loc 1 98 5 is_stmt 1 view .LVU79
.LVL33:
.LBB8:
.LBI8:
	.loc 1 59 1 view .LVU80
.LBB9:
	.loc 1 65 5 view .LVU81
	.loc 1 65 12 is_stmt 0 view .LVU82
	mov.n	a11, a3
	mov.n	a15, sp
.LVL34:
	.loc 1 65 12 view .LVU83
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a7
	call8	crypto_secretbox_xsalsa20poly1305_open
.LVL35:
	.loc 1 65 12 view .LVU84
	mov.n	a2, a10
.LVL36:
	.loc 1 65 12 view .LVU85
.LBE9:
.LBE8:
	.loc 1 99 5 is_stmt 1 view .LVU86
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL37:
	.loc 1 101 5 view .LVU87
.L11:
	.loc 1 102 1 is_stmt 0 view .LVU88
	retw.n
.LFE6:
	.size	crypto_box_curve25519xsalsa20poly1305_open, .-crypto_box_curve25519xsalsa20poly1305_open
	.section	.text.crypto_box_curve25519xsalsa20poly1305_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_seedbytes
	.type	crypto_box_curve25519xsalsa20poly1305_seedbytes, @function
crypto_box_curve25519xsalsa20poly1305_seedbytes:
.LFB7:
	.loc 1 106 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI7:
	.loc 1 107 5 view .LVU90
	.loc 1 108 1 is_stmt 0 view .LVU91
	movi.n	a2, 0x20
	retw.n
.LFE7:
	.size	crypto_box_curve25519xsalsa20poly1305_seedbytes, .-crypto_box_curve25519xsalsa20poly1305_seedbytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_publickeybytes
	.type	crypto_box_curve25519xsalsa20poly1305_publickeybytes, @function
crypto_box_curve25519xsalsa20poly1305_publickeybytes:
.LFB16:
	entry	sp, 32
.LCFI8:
	movi.n	a2, 0x20
	retw.n
.LFE16:
	.size	crypto_box_curve25519xsalsa20poly1305_publickeybytes, .-crypto_box_curve25519xsalsa20poly1305_publickeybytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_secretkeybytes
	.type	crypto_box_curve25519xsalsa20poly1305_secretkeybytes, @function
crypto_box_curve25519xsalsa20poly1305_secretkeybytes:
.LFB18:
	entry	sp, 32
.LCFI9:
	movi.n	a2, 0x20
	retw.n
.LFE18:
	.size	crypto_box_curve25519xsalsa20poly1305_secretkeybytes, .-crypto_box_curve25519xsalsa20poly1305_secretkeybytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_beforenmbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_beforenmbytes
	.type	crypto_box_curve25519xsalsa20poly1305_beforenmbytes, @function
crypto_box_curve25519xsalsa20poly1305_beforenmbytes:
.LFB20:
	entry	sp, 32
.LCFI10:
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	crypto_box_curve25519xsalsa20poly1305_beforenmbytes, .-crypto_box_curve25519xsalsa20poly1305_beforenmbytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_noncebytes
	.type	crypto_box_curve25519xsalsa20poly1305_noncebytes, @function
crypto_box_curve25519xsalsa20poly1305_noncebytes:
.LFB11:
	.loc 1 130 1 is_stmt 1 view -0
	.loc 1 130 1 is_stmt 0 view .LVU93
	entry	sp, 32
.LCFI11:
	.loc 1 131 5 is_stmt 1 view .LVU94
	.loc 1 132 1 is_stmt 0 view .LVU95
	movi.n	a2, 0x18
	retw.n
.LFE11:
	.size	crypto_box_curve25519xsalsa20poly1305_noncebytes, .-crypto_box_curve25519xsalsa20poly1305_noncebytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_zerobytes
	.type	crypto_box_curve25519xsalsa20poly1305_zerobytes, @function
crypto_box_curve25519xsalsa20poly1305_zerobytes:
.LFB22:
	entry	sp, 32
.LCFI12:
	movi.n	a2, 0x20
	retw.n
.LFE22:
	.size	crypto_box_curve25519xsalsa20poly1305_zerobytes, .-crypto_box_curve25519xsalsa20poly1305_zerobytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_boxzerobytes
	.type	crypto_box_curve25519xsalsa20poly1305_boxzerobytes, @function
crypto_box_curve25519xsalsa20poly1305_boxzerobytes:
.LFB24:
	entry	sp, 32
.LCFI13:
	movi.n	a2, 0x10
	retw.n
.LFE24:
	.size	crypto_box_curve25519xsalsa20poly1305_boxzerobytes, .-crypto_box_curve25519xsalsa20poly1305_boxzerobytes
	.section	.text.crypto_box_curve25519xsalsa20poly1305_macbytes,"ax",@progbits
	.align	4
	.global	crypto_box_curve25519xsalsa20poly1305_macbytes
	.type	crypto_box_curve25519xsalsa20poly1305_macbytes, @function
crypto_box_curve25519xsalsa20poly1305_macbytes:
.LFB14:
	.loc 1 148 1 is_stmt 1 view -0
	.loc 1 148 1 is_stmt 0 view .LVU97
	entry	sp, 32
.LCFI14:
	.loc 1 149 5 is_stmt 1 view .LVU98
	.loc 1 150 1 is_stmt 0 view .LVU99
	movi.n	a2, 0x10
	retw.n
.LFE14:
	.size	crypto_box_curve25519xsalsa20poly1305_macbytes, .-crypto_box_curve25519xsalsa20poly1305_macbytes
	.section	.rodata.zero$2728,"a"
	.type	zero$2728, @object
	.size	zero$2728, 16
zero$2728:
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x60
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
	.uleb128 0x40
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x40
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI9-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI10-.LFB20
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI12-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI13-.LFB24
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h"
	.file 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1015
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
	.4byte	0x4f9
	.byte	0x1c
	.byte	0
	.uleb128 0x5
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
	.4byte	0x25
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
	.4byte	0x25
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
	.4byte	0x660
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x129
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x642
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x4f9
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x25
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
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x690
	.uleb128 0x17
	.4byte	0x25
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
	.4byte	0x4d
	.4byte	0x6de
	.uleb128 0xa
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x38
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
	.4byte	0x25
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
	.4byte	0x797
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
	.4byte	0x89d
	.uleb128 0xa
	.4byte	0x38
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
	.4byte	0x25
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
	.4byte	.LASF124
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x2c
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF130
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.byte	0x59
	.byte	0x14
	.4byte	0x31c
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0x59
	.byte	0x42
	.4byte	0x67
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0x5a
	.byte	0x32
	.4byte	0xaeb
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x22
	.string	"sk"
	.byte	0x1
	.byte	0x5a
	.byte	0x4b
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.4byte	0xaf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x26
	.4byte	0xc4f
	.4byte	.LBI8
	.byte	.LVU80
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x62
	.byte	0xb
	.4byte	0xab3
	.uleb128 0x27
	.4byte	0xc8a
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x27
	.4byte	0xc80
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x27
	.4byte	0xc74
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x27
	.4byte	0xc6a
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x27
	.4byte	0xc60
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0xfad
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL30
	.4byte	0xcdb
	.4byte	0xad4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0xfb9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xb01
	.uleb128 0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4f
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x45
	.byte	0x36
	.4byte	0x31c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.byte	0x45
	.byte	0x4e
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF132
	.byte	0x1
	.byte	0x46
	.byte	0x3a
	.4byte	0x67
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x47
	.byte	0x3c
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0x48
	.byte	0x3c
	.4byte	0xaeb
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x22
	.string	"sk"
	.byte	0x1
	.byte	0x49
	.byte	0x3c
	.4byte	0xaeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0xaf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.4byte	0xc95
	.4byte	.LBI6
	.byte	.LVU58
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.4byte	0xc17
	.uleb128 0x27
	.4byte	0xcd0
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x27
	.4byte	0xcc6
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x27
	.4byte	0xcba
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x27
	.4byte	0xcb0
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x27
	.4byte	0xca6
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0xfc5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL21
	.4byte	0xcdb
	.4byte	0xc38
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0xfb9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.4byte	0xc95
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.byte	0x3b
	.byte	0x43
	.4byte	0x31c
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.byte	0x3c
	.byte	0x49
	.4byte	0xaeb
	.uleb128 0x2d
	.4byte	.LASF129
	.byte	0x1
	.byte	0x3d
	.byte	0x47
	.4byte	0x67
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.byte	0x3e
	.byte	0x49
	.4byte	0xaeb
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.byte	0x3f
	.byte	0x49
	.4byte	0xaeb
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF134
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.4byte	0xcdb
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.byte	0x31
	.byte	0x3e
	.4byte	0x31c
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.byte	0x32
	.byte	0x44
	.4byte	0xaeb
	.uleb128 0x2d
	.4byte	.LASF132
	.byte	0x1
	.byte	0x33
	.byte	0x42
	.4byte	0x67
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.byte	0x34
	.byte	0x44
	.4byte	0xaeb
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.byte	0x35
	.byte	0x44
	.4byte	0xaeb
	.byte	0
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd80
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0x23
	.byte	0x3f
	.4byte	0x31c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.string	"pk"
	.byte	0x1
	.byte	0x24
	.byte	0x45
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"sk"
	.byte	0x1
	.byte	0x25
	.byte	0x45
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x27
	.byte	0x20
	.4byte	0xd90
	.uleb128 0x5
	.byte	0x3
	.4byte	zero$2728
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0x28
	.byte	0x13
	.4byte	0xaf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL11
	.4byte	0xfd1
	.4byte	0xd60
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xfdd
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	zero$2728
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x54
	.4byte	0xd90
	.uleb128 0xa
	.4byte	0x38
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xd80
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe00
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0x1a
	.byte	0x3e
	.4byte	0x31c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.string	"sk"
	.byte	0x1
	.byte	0x1b
	.byte	0x3e
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LVL7
	.4byte	0xfe9
	.4byte	0xde9
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xff5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec6
	.uleb128 0x21
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.byte	0x43
	.4byte	0x31c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.string	"sk"
	.byte	0x1
	.byte	0xd
	.byte	0x43
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0xe
	.byte	0x49
	.4byte	0xaeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x10
	.byte	0x13
	.4byte	0xec6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0x1001
	.4byte	0xe73
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0x100d
	.4byte	0xe94
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0xfb9
	.4byte	0xeaf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0xff5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4d
	.4byte	0xed6
	.uleb128 0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.uleb128 0x2f
	.4byte	0xc95
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3a
	.uleb128 0x27
	.4byte	0xca6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x30
	.4byte	0xcb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	0xcba
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x30
	.4byte	0xcc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	0xcd0
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xfc5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0xc4f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9e
	.uleb128 0x27
	.4byte	0xc60
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x30
	.4byte	0xc6a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	0xc74
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x30
	.4byte	0xc80
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	0xc8a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LVL18
	.4byte	0xfad
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x990
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.byte	0x2c
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.byte	0x16
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x7
	.byte	0x25
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x15
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x1c
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xb
	.byte	0x21
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x1a
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.byte	0x26
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF154
	.4byte	.LASF155
	.byte	0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x18
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
.LVUS13:
	.uleb128 0
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU85
	.uleb128 .LVU88
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU80
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU63
	.uleb128 .LVU66
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26-1
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU58
	.uleb128 .LVU63
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU58
	.uleb128 .LVU63
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU58
	.uleb128 .LVU63
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU58
	.uleb128 .LVU63
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF125:
	.string	"crypto_box_curve25519xsalsa20poly1305_noncebytes"
.LASF49:
	.string	"_size"
.LASF154:
	.string	"memcpy"
.LASF146:
	.string	"randombytes_buf"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"_rand48"
.LASF122:
	.string	"crypto_box_curve25519xsalsa20poly1305_boxzerobytes"
.LASF61:
	.string	"_emergency"
.LASF143:
	.string	"crypto_secretbox_xsalsa20poly1305"
.LASF54:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF128:
	.string	"crypto_box_curve25519xsalsa20poly1305_publickeybytes"
.LASF53:
	.string	"_lbfsize"
.LASF152:
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
.LASF10:
	.string	"long int"
.LASF153:
	.string	"crypto_box_curve25519xsalsa20poly1305_seedbytes"
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
.LASF127:
	.string	"crypto_box_curve25519xsalsa20poly1305_secretkeybytes"
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
.LASF136:
	.string	"zero"
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
.LASF58:
	.string	"_stdout"
.LASF139:
	.string	"seed"
.LASF67:
	.string	"_cvtlen"
.LASF20:
	.string	"long unsigned int"
.LASF50:
	.string	"__sFILE_fake"
.LASF93:
	.string	"_niobs"
.LASF1:
	.string	"short unsigned int"
.LASF73:
	.string	"_atexit0"
.LASF134:
	.string	"crypto_box_curve25519xsalsa20poly1305_afternm"
.LASF77:
	.string	"_signal_buf"
.LASF71:
	.string	"_asctime_buf"
.LASF130:
	.string	"crypto_box_curve25519xsalsa20poly1305_open"
.LASF101:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF137:
	.string	"crypto_box_curve25519xsalsa20poly1305_keypair"
.LASF13:
	.string	"wint_t"
.LASF155:
	.string	"__builtin_memcpy"
.LASF88:
	.string	"_lock"
.LASF150:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/curve25519xsalsa20poly1305/box_curve25519xsalsa20poly1305.c"
.LASF132:
	.string	"mlen"
.LASF81:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF123:
	.string	"crypto_box_curve25519xsalsa20poly1305_zerobytes"
.LASF76:
	.string	"_misc"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF131:
	.string	"crypto_box_curve25519xsalsa20poly1305"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF151:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF135:
	.string	"crypto_box_curve25519xsalsa20poly1305_beforenm"
.LASF129:
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
.LASF142:
	.string	"sodium_memzero"
.LASF104:
	.string	"_freelist"
.LASF141:
	.string	"crypto_secretbox_xsalsa20poly1305_open"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF147:
	.string	"crypto_scalarmult_curve25519_base"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF47:
	.string	"__sbuf"
.LASF90:
	.string	"_flags2"
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
.LASF126:
	.string	"crypto_box_curve25519xsalsa20poly1305_beforenmbytes"
.LASF97:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF149:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"_fntypes"
.LASF105:
	.string	"_misc_reent"
.LASF140:
	.string	"hash"
.LASF98:
	.string	"_add"
.LASF22:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF145:
	.string	"crypto_core_hsalsa20"
.LASF120:
	.string	"_global_impure_ptr"
.LASF138:
	.string	"crypto_box_curve25519xsalsa20poly1305_seed_keypair"
.LASF133:
	.string	"crypto_box_curve25519xsalsa20poly1305_open_afternm"
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
.LASF144:
	.string	"crypto_scalarmult_curve25519"
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
.LASF124:
	.string	"crypto_box_curve25519xsalsa20poly1305_macbytes"
.LASF148:
	.string	"crypto_hash_sha512"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
