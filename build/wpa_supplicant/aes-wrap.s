	.file	"aes-wrap.c"
	.text
.Ltext0:
	.section	.text.aes_wrap,"ax",@progbits
	.align	4
	.global	aes_wrap
	.type	aes_wrap, @function
aes_wrap:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-wrap.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 64
.LCFI0:
.LVL1:
	.loc 1 35 0
	movi.n	a12, 8
	movi	a11, 0xa6
	mov.n	a10, a5
	call8	memset
.LVL2:
	.loc 1 36 0
	slli	a12, a3, 3
	mov.n	a11, a4
	addi.n	a10, a5, 8
.LVL3:
	call8	memcpy
.LVL4:
	.loc 1 38 0
	mov.n	a10, a2
	movi.n	a11, 0x10
	call8	aes_encrypt_init
.LVL5:
	mov.n	a7, a10
.LVL6:
	.loc 1 40 0
	movi.n	a2, -1
.LVL7:
	.loc 1 39 0
	beqz.n	a10, .L2
	extui	a13, a3, 0, 8
	movi.n	a6, 0
	movi.n	a2, 6
	j	.L3
.LVL8:
.L4:
	.loc 1 52 0 discriminator 3
	movi.n	a12, 8
	mov.n	a11, a5
	mov.n	a10, sp
	s32i.n	a13, sp, 20
	call8	memcpy
.LVL9:
	.loc 1 53 0 discriminator 3
	movi.n	a12, 8
	l32i.n	a11, sp, 16
	add.n	a10, sp, a12
	call8	memcpy
.LVL10:
	.loc 1 54 0 discriminator 3
	mov.n	a12, sp
	mov.n	a11, sp
	mov.n	a10, a7
	call8	aes_encrypt
.LVL11:
	.loc 1 55 0 discriminator 3
	movi.n	a12, 8
	mov.n	a11, sp
	mov.n	a10, a5
	call8	memcpy
.LVL12:
	.loc 1 56 0 discriminator 3
	l8ui	a9, a5, 7
	add.n	a10, a6, a4
	xor	a9, a10, a9
	.loc 1 57 0 discriminator 3
	movi.n	a12, 8
	l32i.n	a10, sp, 16
	.loc 1 56 0 discriminator 3
	s8i	a9, a5, 7
	.loc 1 57 0 discriminator 3
	add.n	a11, sp, a12
	call8	memcpy
.LVL13:
	.loc 1 51 0 discriminator 3
	l32i.n	a13, sp, 20
	addi.n	a4, a4, 1
.LVL14:
.L6:
	addx8	a8, a4, a5
	s32i.n	a8, sp, 16
.LVL15:
	.loc 1 51 0 is_stmt 0 discriminator 1
	bge	a3, a4, .L4
.LVL16:
	add.n	a6, a6, a13
	addi.n	a2, a2, -1
.LVL17:
	extui	a6, a6, 0, 8
	.loc 1 49 0 is_stmt 1 discriminator 2
	beqz.n	a2, .L5
.LVL18:
.L3:
	.loc 1 26 0
	movi.n	a4, 1
	j	.L6
.LVL19:
.L5:
	.loc 1 61 0
	mov.n	a10, a7
	call8	aes_encrypt_deinit
.LVL20:
.L2:
	.loc 1 70 0
	retw.n
.LFE1:
	.size	aes_wrap, .-aes_wrap
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
	.uleb128 0x40
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/aes.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x291
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
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
	.byte	0x6
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e
	.uleb128 0x8
	.string	"kek"
	.byte	0x1
	.byte	0x19
	.4byte	0x23e
	.4byte	.LLST0
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x19
	.4byte	0x23e
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x19
	.4byte	0x249
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x1b
	.4byte	0x249
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0x1b
	.4byte	0x249
	.4byte	.LLST2
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0x1b
	.4byte	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0xd
	.string	"j"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4c
	.4byte	.LLST4
	.uleb128 0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x1d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x25f
	.4byte	0x154
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x26a
	.4byte	0x176
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x273
	.4byte	0x18f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x26a
	.4byte	0x1ae
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x26a
	.4byte	0x1ce
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LVL11
	.4byte	0x27e
	.4byte	0x1ee
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.4byte	.LVL12
	.4byte	0x26a
	.4byte	0x20d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x26a
	.4byte	0x22d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x10
	.4byte	.LVL20
	.4byte	0x289
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x244
	.uleb128 0x12
	.4byte	0x91
	.uleb128 0x11
	.byte	0x4
	.4byte	0x91
	.uleb128 0x13
	.4byte	0x91
	.4byte	0x25f
	.uleb128 0x14
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
	.byte	0x19
	.uleb128 0x16
	.4byte	.LASF23
	.4byte	.LASF23
	.uleb128 0x15
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x74
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20-1
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x36
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x37
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x36
	.byte	0x72
	.sleb128 0
	.byte	0x1c
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
.LASF13:
	.string	"plain"
.LASF7:
	.string	"__uint8_t"
.LASF16:
	.string	"aes_encrypt_init"
.LASF20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-wrap.c"
.LASF18:
	.string	"aes_encrypt_deinit"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"memset"
.LASF22:
	.string	"aes_wrap"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF23:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"cipher"
.LASF21:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF17:
	.string	"aes_encrypt"
.LASF9:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
