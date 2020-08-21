	.file	"crypto_box_easy.c"
	.text
.Ltext0:
	.section	.text.crypto_box_detached_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_detached_afternm
	.type	crypto_box_detached_afternm, @function
crypto_box_detached_afternm:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_easy.c"
	.loc 1 15 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 16 0
	l32i.n	a8, sp, 52
	.loc 1 15 0
	mov.n	a15, a7
	.loc 1 16 0
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	mov.n	a14, a6
	s32i.n	a8, sp, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_detached
.LVL1:
	.loc 1 17 0
	mov.n	a2, a10
.LVL2:
	.loc 1 15 0
	.loc 1 17 0
	retw.n
.LFE12:
	.size	crypto_box_detached_afternm, .-crypto_box_detached_afternm
	.section	.text.crypto_box_detached,"ax",@progbits
	.align	4
	.global	crypto_box_detached
	.type	crypto_box_detached, @function
crypto_box_detached:
.LFB13:
	.loc 1 24 0
.LVL3:
	entry	sp, 96
.LCFI1:
	.loc 1 29 0
	l32i	a12, sp, 104
	l32i	a11, sp, 100
	addi	a5, sp, 16
	.loc 1 24 0
	mov.n	a15, a7
	.loc 1 29 0
	mov.n	a10, a5
	s32i.n	a15, sp, 48
	call8	crypto_box_beforenm
.LVL4:
	.loc 1 24 0
	mov.n	a7, a2
	.loc 1 30 0
	movi.n	a2, -1
.LVL5:
	.loc 1 29 0
	l32i.n	a15, sp, 48
	bnez.n	a10, .L3
.LVL6:
.LBB10:
.LBB11:
	.loc 1 16 0
	l32i	a2, sp, 96
	mov.n	a11, a3
	s32i.n	a2, sp, 0
	s32i.n	a5, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a10, a7
	call8	crypto_secretbox_detached
.LVL7:
	mov.n	a2, a10
.LBE11:
.LBE10:
	.loc 1 33 0
	movi.n	a11, 0x20
	mov.n	a10, a5
	call8	sodium_memzero
.LVL8:
.L3:
	.loc 1 36 0
	retw.n
.LFE13:
	.size	crypto_box_detached, .-crypto_box_detached
	.section	.text.crypto_box_easy_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_easy_afternm
	.type	crypto_box_easy_afternm, @function
crypto_box_easy_afternm:
.LFB14:
	.loc 1 42 0
.LVL9:
	entry	sp, 48
.LCFI2:
	.loc 1 42 0
	mov.n	a12, a3
	mov.n	a14, a4
	mov.n	a15, a5
	.loc 1 43 0
	bnez.n	a5, .L8
	movi.n	a8, -0x11
	bltu	a8, a4, .L8
.LVL10:
.LBB12:
.LBB13:
	.loc 1 16 0
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a11, a2
	addi	a10, a2, 16
.LVL11:
	call8	crypto_secretbox_detached
.LVL12:
.LBE13:
.LBE12:
	.loc 1 46 0
	j	.L6
.LVL13:
.L8:
	.loc 1 44 0
	movi.n	a10, -1
.L6:
	.loc 1 48 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE14:
	.size	crypto_box_easy_afternm, .-crypto_box_easy_afternm
	.section	.text.crypto_box_easy,"ax",@progbits
	.align	4
	.global	crypto_box_easy
	.type	crypto_box_easy, @function
crypto_box_easy:
.LFB15:
	.loc 1 54 0
.LVL15:
	entry	sp, 48
.LCFI3:
	.loc 1 54 0
	mov.n	a12, a3
	mov.n	a14, a4
	mov.n	a15, a5
	.loc 1 55 0
	bnez.n	a5, .L13
	movi.n	a8, -0x11
	bltu	a8, a4, .L13
	.loc 1 58 0
	l32i.n	a8, sp, 48
	s32i.n	a7, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a6, sp, 0
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_box_detached
.LVL16:
	j	.L11
.L13:
	.loc 1 56 0
	movi.n	a10, -1
.L11:
	.loc 1 60 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE15:
	.size	crypto_box_easy, .-crypto_box_easy
	.section	.text.crypto_box_open_detached_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_open_detached_afternm
	.type	crypto_box_open_detached_afternm, @function
crypto_box_open_detached_afternm:
.LFB16:
	.loc 1 68 0
.LVL18:
	entry	sp, 48
.LCFI4:
	.loc 1 69 0
	l32i.n	a8, sp, 52
	.loc 1 68 0
	mov.n	a15, a7
	.loc 1 69 0
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	mov.n	a14, a6
	s32i.n	a8, sp, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_open_detached
.LVL19:
	.loc 1 70 0
	mov.n	a2, a10
.LVL20:
	.loc 1 68 0
	.loc 1 70 0
	retw.n
.LFE16:
	.size	crypto_box_open_detached_afternm, .-crypto_box_open_detached_afternm
	.section	.text.crypto_box_open_detached,"ax",@progbits
	.align	4
	.global	crypto_box_open_detached
	.type	crypto_box_open_detached, @function
crypto_box_open_detached:
.LFB17:
	.loc 1 77 0
.LVL21:
	entry	sp, 96
.LCFI5:
	.loc 1 81 0
	l32i	a12, sp, 104
	l32i	a11, sp, 100
	addi	a5, sp, 16
	.loc 1 77 0
	mov.n	a15, a7
	.loc 1 81 0
	mov.n	a10, a5
	s32i.n	a15, sp, 48
	call8	crypto_box_beforenm
.LVL22:
	.loc 1 77 0
	mov.n	a7, a2
	.loc 1 82 0
	movi.n	a2, -1
.LVL23:
	.loc 1 81 0
	l32i.n	a15, sp, 48
	bnez.n	a10, .L17
.LVL24:
.LBB14:
.LBB15:
	.loc 1 69 0
	l32i	a2, sp, 96
	mov.n	a11, a3
	s32i.n	a2, sp, 0
	s32i.n	a5, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a10, a7
	call8	crypto_secretbox_open_detached
.LVL25:
	mov.n	a2, a10
.LBE15:
.LBE14:
	.loc 1 85 0
	movi.n	a11, 0x20
	mov.n	a10, a5
	call8	sodium_memzero
.LVL26:
.L17:
	.loc 1 88 0
	retw.n
.LFE17:
	.size	crypto_box_open_detached, .-crypto_box_open_detached
	.section	.text.crypto_box_open_easy_afternm,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_box_open_easy_afternm
	.type	crypto_box_open_easy_afternm, @function
crypto_box_open_easy_afternm:
.LFB18:
	.loc 1 94 0
.LVL27:
	entry	sp, 48
.LCFI6:
	.loc 1 94 0
	mov.n	a10, a2
	.loc 1 95 0
	bnez.n	a5, .L24
	movi.n	a8, 0xf
	bgeu	a8, a4, .L25
.L24:
.LVL28:
.LBB16:
.LBB17:
	.loc 1 69 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L22
	movi.n	a15, 0
.L22:
	addi.n	a5, a5, -1
.LVL29:
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	add.n	a15, a15, a5
	mov.n	a12, a3
	addi	a11, a3, 16
	call8	crypto_secretbox_open_detached
.LVL30:
.LBE17:
.LBE16:
	.loc 1 98 0
	j	.L20
.LVL31:
.L25:
	.loc 1 96 0
	movi.n	a10, -1
.L20:
	.loc 1 101 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LFE18:
	.size	crypto_box_open_easy_afternm, .-crypto_box_open_easy_afternm
	.section	.text.crypto_box_open_easy,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_box_open_easy
	.type	crypto_box_open_easy, @function
crypto_box_open_easy:
.LFB19:
	.loc 1 107 0
.LVL33:
	entry	sp, 48
.LCFI7:
	.loc 1 107 0
	mov.n	a10, a2
	.loc 1 108 0
	bnez.n	a5, .L31
	movi.n	a8, 0xf
	bgeu	a8, a4, .L32
.L31:
	.loc 1 111 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L29
	movi.n	a15, 0
.L29:
	l32i.n	a4, sp, 48
.LVL34:
	addi.n	a5, a5, -1
	s32i.n	a4, sp, 8
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	add.n	a15, a15, a5
	mov.n	a12, a3
	addi	a11, a3, 16
	call8	crypto_box_open_detached
.LVL35:
	j	.L27
.LVL36:
.L32:
	.loc 1 109 0
	movi.n	a10, -1
.LVL37:
.L27:
	.loc 1 114 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LFE19:
	.size	crypto_box_open_easy, .-crypto_box_open_easy
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
	.uleb128 0x60
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x60
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x763
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc
	.4byte	0x44
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x6e
	.uleb128 0x6
	.string	"mac"
	.byte	0x1
	.byte	0xc
	.4byte	0x6e
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0xd
	.4byte	0xc6
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.uleb128 0x6
	.string	"n"
	.byte	0x1
	.byte	0xe
	.4byte	0xc6
	.uleb128 0x6
	.string	"k"
	.byte	0x1
	.byte	0xe
	.4byte	0xc6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x8
	.4byte	0x2f
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3f
	.4byte	0x44
	.byte	0x1
	.4byte	0x11c
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x3f
	.4byte	0x6e
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.4byte	0xc6
	.uleb128 0x6
	.string	"mac"
	.byte	0x1
	.byte	0x40
	.4byte	0xc6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x41
	.4byte	0x21
	.uleb128 0x6
	.string	"n"
	.byte	0x1
	.byte	0x42
	.4byte	0xc6
	.uleb128 0x6
	.string	"k"
	.byte	0x1
	.byte	0x43
	.4byte	0xc6
	.byte	0
	.uleb128 0x9
	.4byte	0x7b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f
	.uleb128 0xa
	.4byte	0x8b
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	0xa8
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x73a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x14
	.4byte	0x44
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cb
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x14
	.4byte	0x6e
	.4byte	.LLST1
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0x14
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x15
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.byte	0x15
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x16
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"pk"
	.byte	0x1
	.byte	0x16
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.byte	0x17
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0x19
	.4byte	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x1a
	.4byte	0x44
	.uleb128 0x14
	.4byte	0x7b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x20
	.4byte	0x292
	.uleb128 0xa
	.4byte	0xbc
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	0xb3
	.4byte	.LLST3
	.uleb128 0xa
	.4byte	0xa8
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	0x9f
	.4byte	.LLST5
	.uleb128 0xa
	.4byte	0x94
	.4byte	.LLST6
	.uleb128 0xa
	.4byte	0x8b
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LVL7
	.4byte	0x73a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x745
	.4byte	0x2b4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0x750
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x2f
	.4byte	0x2db
	.uleb128 0x17
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x44
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a1
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x6e
	.4byte	.LLST8
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.byte	0x28
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x28
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x29
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x18
	.4byte	0x7b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x2e
	.uleb128 0xa
	.4byte	0xbc
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	0xb3
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	0xa8
	.uleb128 0xa
	.4byte	0x9f
	.4byte	.LLST11
	.uleb128 0xa
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0xa
	.4byte	0x8b
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LVL12
	.4byte	0x73a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	0x44
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43b
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x33
	.4byte	0x6e
	.4byte	.LLST14
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x33
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.byte	0x34
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x34
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.string	"pk"
	.byte	0x1
	.byte	0x35
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.byte	0x35
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x18f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xd1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ae
	.uleb128 0xa
	.4byte	0xe1
	.4byte	.LLST15
	.uleb128 0xb
	.4byte	0xea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	0xfe
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.4byte	.LVL19
	.4byte	0x75b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x49
	.4byte	0x44
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x49
	.4byte	0x6e
	.4byte	.LLST16
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x49
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0x4a
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4b
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x4b
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"pk"
	.byte	0x1
	.byte	0x4c
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.byte	0x4c
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0x4e
	.4byte	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.4byte	0x44
	.uleb128 0x14
	.4byte	0xd1
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x54
	.4byte	0x5b1
	.uleb128 0xa
	.4byte	0x112
	.4byte	.LLST17
	.uleb128 0xa
	.4byte	0x109
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	0xfe
	.4byte	.LLST19
	.uleb128 0xa
	.4byte	0xf3
	.4byte	.LLST20
	.uleb128 0xa
	.4byte	0xea
	.4byte	.LLST21
	.uleb128 0xa
	.4byte	0xe1
	.4byte	.LLST22
	.uleb128 0xc
	.4byte	.LVL25
	.4byte	0x75b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x745
	.4byte	0x5d3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL26
	.4byte	0x750
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5b
	.4byte	0x44
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6aa
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x5b
	.4byte	0x6e
	.4byte	.LLST23
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x5b
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.byte	0x5c
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x5c
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x18
	.4byte	0xd1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x62
	.uleb128 0xa
	.4byte	0x112
	.4byte	.LLST24
	.uleb128 0xa
	.4byte	0x109
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	0xfe
	.uleb128 0xa
	.4byte	0xf3
	.4byte	.LLST26
	.uleb128 0xa
	.4byte	0xea
	.4byte	.LLST27
	.uleb128 0xa
	.4byte	0xe1
	.4byte	.LLST28
	.uleb128 0xc
	.4byte	.LVL30
	.4byte	0x75b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x68
	.4byte	0x44
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73a
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x68
	.4byte	0x6e
	.4byte	.LLST29
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x68
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF14
	.byte	0x1
	.byte	0x69
	.4byte	0x21
	.4byte	.LLST30
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x69
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.string	"pk"
	.byte	0x1
	.byte	0x6a
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.byte	0x6a
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL35
	.4byte	0x4ae
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.byte	0x59
	.uleb128 0x1b
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x16
	.uleb128 0x1b
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x33
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15
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
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	.LFE19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"crypto_box_open_easy"
.LASF14:
	.string	"clen"
.LASF11:
	.string	"mlen"
.LASF16:
	.string	"crypto_box_easy_afternm"
.LASF12:
	.string	"crypto_box_detached_afternm"
.LASF22:
	.string	"crypto_box_beforenm"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"unsigned char"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_easy.c"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF17:
	.string	"crypto_box_easy"
.LASF21:
	.string	"crypto_secretbox_detached"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"crypto_secretbox_open_detached"
.LASF19:
	.string	"crypto_box_open_easy_afternm"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF13:
	.string	"crypto_box_open_detached_afternm"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"crypto_box_open_detached"
.LASF1:
	.string	"signed char"
.LASF23:
	.string	"sodium_memzero"
.LASF15:
	.string	"crypto_box_detached"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
