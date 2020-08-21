	.file	"aes-unwrap.c"
	.text
.Ltext0:
	.section	.text.aes_unwrap,"ax",@progbits
	.literal_position
	.align	4
	.global	aes_unwrap
	.type	aes_unwrap, @function
aes_unwrap:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-unwrap.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 80
.LCFI0:
	.loc 1 39 0
	movi.n	a12, 8
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	memcpy
.LVL1:
	.loc 1 41 0
	slli	a6, a3, 3
	mov.n	a12, a6
	addi.n	a11, a4, 8
	mov.n	a10, a5
	call8	memcpy
.LVL2:
	.loc 1 43 0
	movi.n	a11, 0x10
	mov.n	a10, a2
	call8	aes_decrypt_init
.LVL3:
	mov.n	a7, a10
.LVL4:
	.loc 1 44 0
	bnez.n	a10, .L2
.LVL5:
.L7:
	.loc 1 45 0
	movi.n	a2, -1
	retw.n
.LVL6:
.L2:
	extui	a9, a3, 0, 8
	.loc 1 55 0
	addi	a6, a6, -8
	addx4	a4, a9, a9
.LVL7:
	add.n	a13, a5, a6
	extui	a4, a4, 0, 8
	movi.n	a2, 6
.LVL8:
.L6:
	.loc 1 56 0
	mov.n	a5, a3
	.loc 1 55 0
	mov.n	a6, a13
	.loc 1 56 0
	j	.L4
.LVL9:
.L5:
	.loc 1 57 0 discriminator 3
	l32i.n	a10, sp, 16
	l32i.n	a8, sp, 20
	.loc 1 60 0 discriminator 3
	movi.n	a12, 8
	.loc 1 57 0 discriminator 3
	s32i.n	a8, sp, 4
	s32i.n	a10, sp, 0
	.loc 1 58 0 discriminator 3
	extui	a8, a8, 24, 8
	add.n	a10, a4, a5
	xor	a8, a10, a8
	.loc 1 60 0 discriminator 3
	mov.n	a11, a6
	add.n	a10, sp, a12
	s32i.n	a9, sp, 36
	s32i.n	a13, sp, 32
	.loc 1 58 0 discriminator 3
	s8i	a8, sp, 7
	.loc 1 60 0 discriminator 3
	call8	memcpy
.LVL10:
	.loc 1 61 0 discriminator 3
	mov.n	a12, sp
	mov.n	a11, sp
	mov.n	a10, a7
	call8	aes_decrypt
.LVL11:
	.loc 1 62 0 discriminator 3
	l32i.n	a8, sp, 0
	.loc 1 63 0 discriminator 3
	movi.n	a12, 8
	.loc 1 62 0 discriminator 3
	s32i.n	a8, sp, 16
	l32i.n	a8, sp, 4
	.loc 1 63 0 discriminator 3
	mov.n	a10, a6
	add.n	a11, sp, a12
	.loc 1 62 0 discriminator 3
	s32i.n	a8, sp, 20
	.loc 1 63 0 discriminator 3
	call8	memcpy
.LVL12:
	.loc 1 56 0 discriminator 3
	l32i.n	a13, sp, 32
	l32i.n	a9, sp, 36
	.loc 1 64 0 discriminator 3
	addi	a6, a6, -8
.LVL13:
	.loc 1 56 0 discriminator 3
	addi.n	a5, a5, -1
.LVL14:
.L4:
	.loc 1 56 0 is_stmt 0 discriminator 1
	bgei	a5, 1, .L5
.LVL15:
	sub	a4, a4, a9
	addi.n	a2, a2, -1
.LVL16:
	extui	a4, a4, 0, 8
	.loc 1 54 0 is_stmt 1 discriminator 2
	bnez.n	a2, .L6
	.loc 1 67 0
	mov.n	a10, a7
	call8	aes_decrypt_deinit
.LVL17:
	.loc 1 75 0
	movi	a4, 0xa6
	movi.n	a3, 8
.LVL18:
.L8:
	addi	a6, sp, 16
	add.n	a5, a6, a2
	l8ui	a5, a5, 0
	bne	a5, a4, .L7
	.loc 1 74 0 discriminator 2
	addi.n	a2, a2, 1
.LVL19:
	addi.n	a3, a3, -1
	bnez.n	a3, .L8
	.loc 1 79 0
	movi.n	a2, 0
.LVL20:
	.loc 1 80 0
	retw.n
.LFE1:
	.size	aes_unwrap, .-aes_unwrap
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/aes.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x20
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x206
	.uleb128 0x8
	.string	"kek"
	.byte	0x1
	.byte	0x20
	.4byte	0x206
	.4byte	.LLST0
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x20
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x20
	.4byte	0x206
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x20
	.4byte	0x211
	.4byte	.LLST3
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x22
	.4byte	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x22
	.4byte	0x211
	.4byte	.LLST4
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x22
	.4byte	0x227
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0xa
	.string	"ctx"
	.byte	0x1
	.byte	0x24
	.4byte	0x81
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x237
	.4byte	0x15a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x237
	.4byte	0x17a
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
	.byte	0x74
	.sleb128 8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x240
	.4byte	0x193
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x237
	.4byte	0x1b3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x24b
	.4byte	0x1d5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xc
	.4byte	.LVL12
	.4byte	0x237
	.4byte	0x1f5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x256
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x10
	.4byte	0x91
	.uleb128 0xf
	.byte	0x4
	.4byte	0x91
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x227
	.uleb128 0x12
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x237
	.uleb128 0x12
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF22
	.4byte	.LASF22
	.uleb128 0x14
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x4
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x4
	.byte	0x19
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"plain"
.LASF7:
	.string	"__uint8_t"
.LASF18:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"cipher"
.LASF21:
	.string	"aes_unwrap"
.LASF19:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-unwrap.c"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"aes_decrypt_deinit"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF10:
	.string	"sizetype"
.LASF15:
	.string	"aes_decrypt_init"
.LASF5:
	.string	"long long int"
.LASF22:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF9:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"aes_decrypt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
