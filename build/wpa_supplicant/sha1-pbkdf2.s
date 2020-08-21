	.file	"sha1-pbkdf2.c"
	.text
.Ltext0:
	.section	.text.pbkdf2_sha1,"ax",@progbits
	.literal_position
	.align	4
	.global	pbkdf2_sha1
	.type	pbkdf2_sha1, @function
pbkdf2_sha1:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
	.loc 1 83 0
.LVL0:
	entry	sp, 144
.LCFI0:
.LVL1:
	.loc 1 83 0
	s32i	a3, sp, 84
	s32i	a4, sp, 88
	s32i	a5, sp, 92
	.loc 1 84 0
	movi.n	a3, 0
.LVL2:
	.loc 1 89 0
	j	.L2
.LVL3:
.L10:
.LBB4:
.LBB5:
	.loc 1 31 0
	mov.n	a10, a2
	call8	strlen
.LVL4:
	.loc 1 34 0
	l32i	a4, sp, 88
.LBE5:
.LBE4:
	.loc 1 90 0
	addi.n	a3, a3, 1
.LVL5:
.LBB8:
.LBB6:
	.loc 1 34 0
	s32i.n	a4, sp, 60
	.loc 1 36 0
	movi.n	a4, 4
.LVL6:
	s32i	a4, sp, 64
	.loc 1 44 0
	extui	a4, a3, 24, 8
	s8i	a4, sp, 76
	.loc 1 45 0
	extui	a4, a3, 16, 16
	.loc 1 33 0
	l32i	a8, sp, 84
	.loc 1 45 0
	s8i	a4, sp, 77
	.loc 1 46 0
	srli	a4, a3, 8
	s8i	a4, sp, 78
	.loc 1 48 0
	addi	a4, sp, 20
	.loc 1 31 0
	s32i	a10, sp, 80
.LVL7:
	.loc 1 33 0
	s32i	a8, sp, 68
	.loc 1 48 0
	mov.n	a11, a10
	.loc 1 35 0
	addi	a8, sp, 76
	.loc 1 48 0
	mov.n	a15, a4
	addi	a14, sp, 60
	addi	a13, sp, 68
	movi.n	a12, 2
	mov.n	a10, a2
.LVL8:
	.loc 1 35 0
	s32i	a8, sp, 72
	.loc 1 47 0
	s8i	a3, sp, 79
	.loc 1 48 0
	call8	hmac_sha1_vector
.LVL9:
	beqz.n	a10, .L3
.L6:
.LBE6:
.LBE8:
	.loc 1 93 0
	movi.n	a2, -1
.LVL10:
	retw.n
.LVL11:
.L3:
.LBB9:
.LBB7:
	.loc 1 51 0
	movi.n	a12, 0x14
	mov.n	a11, a4
	addi	a10, sp, 40
.LVL12:
	call8	memcpy
.LVL13:
	.loc 1 53 0
	movi.n	a5, 1
	j	.L5
.LVL14:
.L8:
	.loc 1 54 0
	l32i	a11, sp, 80
	mov.n	a14, sp
	movi.n	a13, 0x14
	mov.n	a12, a4
	mov.n	a10, a2
	call8	hmac_sha1
.LVL15:
	mov.n	a8, a10
	bnez.n	a10, .L6
	.loc 1 57 0
	mov.n	a11, sp
	movi.n	a12, 0x14
	mov.n	a10, a4
	s32i	a8, sp, 96
	call8	memcpy
.LVL16:
	.loc 1 58 0
	l32i	a8, sp, 96
	addi	a11, sp, 40
.LVL17:
	mov.n	a10, a8
	movi.n	a8, 0x14
	loop	a8, .L7_LEND
.LVL18:
.L7:
	.loc 1 59 0
	add.n	a12, sp, a10
	l8ui	a13, a12, 0
	l8ui	a12, a11, 0
	.loc 1 58 0
	addi.n	a10, a10, 1
.LVL19:
	.loc 1 59 0
	xor	a12, a13, a12
	s8i	a12, a11, 0
	addi.n	a11, a11, 1
	.loc 1 58 0
	.L7_LEND:
	.loc 1 53 0
	addi.n	a5, a5, 1
.LVL20:
.L5:
	l32i	a8, sp, 92
	blt	a5, a8, .L8
.LBE7:
.LBE9:
	.loc 1 94 0
	movi.n	a4, 0x14
	minu	a4, a7, a4
.LVL21:
	.loc 1 95 0
	mov.n	a10, a6
	mov.n	a12, a4
	addi	a11, sp, 40
.LVL22:
	call8	memcpy
.LVL23:
	.loc 1 96 0
	add.n	a6, a6, a4
.LVL24:
	.loc 1 97 0
	sub	a7, a7, a4
.LVL25:
.L2:
	.loc 1 89 0
	bnez.n	a7, .L10
	.loc 1 100 0
	mov.n	a2, a7
.LVL26:
	.loc 1 101 0
	retw.n
.LFE2:
	.size	pbkdf2_sha1, .-pbkdf2_sha1
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/sha1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3f1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	0x37
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x95
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x8
	.4byte	0xa9
	.uleb128 0x9
	.string	"u8"
	.byte	0x7
	.byte	0xa8
	.4byte	0x68
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x16
	.4byte	0x4c
	.byte	0x1
	.4byte	0x16c
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x16
	.4byte	0xb0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x16
	.4byte	0xb0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.4byte	0x73
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x53
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.4byte	0x16c
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x1a
	.4byte	0x172
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x172
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.4byte	0x85
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1d
	.4byte	0x182
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.4byte	0x19d
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1f
	.4byte	0x73
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x5
	.4byte	0x37
	.4byte	0x182
	.uleb128 0x6
	.4byte	0x95
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.4byte	0x192
	.4byte	0x192
	.uleb128 0x6
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x198
	.uleb128 0x8
	.4byte	0xbb
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x51
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ca
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0x51
	.4byte	0xb0
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF15
	.byte	0x1
	.byte	0x51
	.4byte	0xb0
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x51
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x52
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.4byte	0x16c
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.4byte	0x73
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0x55
	.4byte	0xa3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x56
	.4byte	0x73
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x57
	.4byte	0x172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x14
	.4byte	0xc5
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5b
	.4byte	0x3ac
	.uleb128 0x15
	.4byte	0x10c
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	0x101
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	0xf6
	.uleb128 0x15
	.4byte	0xeb
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	0xe0
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	0xd5
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	0x117
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x18
	.4byte	0x122
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x19
	.4byte	0x12d
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	0x136
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.4byte	0x14a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.4byte	0x155
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.4byte	0x160
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x3ca
	.4byte	0x30d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x3d5
	.4byte	0x341
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x3e0
	.4byte	0x361
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x3e9
	.4byte	0x38e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x3e0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0x3e0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x21
	.uleb128 0x1d
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF35
	.4byte	.LASF35
	.uleb128 0x1d
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.byte	0x16
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
.LASF7:
	.string	"__uint8_t"
.LASF34:
	.string	"pbkdf2_sha1"
.LASF18:
	.string	"count"
.LASF21:
	.string	"count_buf"
.LASF25:
	.string	"left"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"tmp2"
.LASF27:
	.string	"strlen"
.LASF30:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"ssid_len"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF22:
	.string	"addr"
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"iterations"
.LASF28:
	.string	"hmac_sha1_vector"
.LASF29:
	.string	"hmac_sha1"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"buflen"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF35:
	.string	"memcpy"
.LASF33:
	.string	"pbkdf2_sha1_f"
.LASF15:
	.string	"ssid"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"passphrase_len"
.LASF26:
	.string	"plen"
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF19:
	.string	"digest"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF14:
	.string	"passphrase"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
