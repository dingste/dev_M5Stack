	.file	"eap_peap_common.c"
	.text
.Ltext0:
	.section	.text.peap_prfplus,"ax",@progbits
	.literal_position
	.align	4
	.global	peap_prfplus
	.type	peap_prfplus, @function
peap_prfplus:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/eap_peer/eap_peap_common.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 112
.LCFI0:
	.loc 1 21 0
	mov.n	a9, a2
	.loc 1 25 0
	mov.n	a10, a5
	.loc 1 22 0
	movi.n	a2, 0
.LVL1:
	.loc 1 25 0
	s32i	a9, sp, 64
	.loc 1 22 0
	s8i	a2, sp, 62
	.loc 1 25 0
	call8	strlen
.LVL2:
	.loc 1 31 0
	movi.n	a11, 0
	.loc 1 37 0
	l32i	a9, sp, 64
.LVL3:
	.loc 1 32 0
	s32i.n	a5, sp, 44
	.loc 1 30 0
	s32i.n	sp, sp, 40
	.loc 1 31 0
	s32i.n	a11, sp, 20
	.loc 1 33 0
	s32i.n	a10, sp, 24
	.loc 1 34 0
	s32i.n	a6, sp, 48
	.loc 1 35 0
	s32i.n	a7, sp, 28
	.loc 1 21 0
	addi	a5, sp, 62
.LVL4:
	addi	a8, sp, 60
	.loc 1 37 0
	bne	a9, a11, .L2
	.loc 1 47 0
	s8i	a2, sp, 61
	.loc 1 50 0
	movi.n	a2, 1
	s32i.n	a2, sp, 32
	.loc 1 46 0
	s8i	a9, sp, 60
	.loc 1 49 0
	s32i.n	a5, sp, 52
	.loc 1 51 0
	s32i.n	a8, sp, 56
	.loc 1 52 0
	movi.n	a2, 2
	j	.L9
.L2:
	.loc 1 63 0
	l32i	a2, sp, 116
	.loc 1 65 0
	s32i.n	a8, sp, 52
	.loc 1 63 0
	s8i	a2, sp, 60
	.loc 1 66 0
	movi.n	a2, 1
	s32i.n	a2, sp, 32
	.loc 1 67 0
	s32i.n	a5, sp, 56
.L9:
	.loc 1 68 0
	s32i.n	a2, sp, 36
	.loc 1 21 0
	movi.n	a2, 0
	j	.L4
.LVL5:
.L7:
	.loc 1 73 0
	l8ui	a8, sp, 62
	.loc 1 74 0
	l32i	a6, sp, 116
	.loc 1 73 0
	addi.n	a8, a8, 1
	.loc 1 75 0
	mov.n	a15, sp
	addi	a14, sp, 20
	addi	a13, sp, 40
	movi.n	a12, 5
	mov.n	a11, a4
	mov.n	a10, a3
	.loc 1 73 0
	s8i	a8, sp, 62
	.loc 1 74 0
	sub	a5, a6, a2
.LVL6:
	.loc 1 75 0
	call8	hmac_sha1_vector
.LVL7:
	bltz	a10, .L8
	l32i	a6, sp, 112
	.loc 1 77 0
	movi.n	a8, 0x13
	add.n	a10, a6, a2
	bgeu	a8, a5, .L6
	.loc 1 78 0
	movi.n	a5, 0x14
.LVL8:
	mov.n	a12, a5
	mov.n	a11, sp
	call8	memcpy
.LVL9:
	.loc 1 79 0
	add.n	a2, a2, a5
.LVL10:
	.loc 1 84 0
	s32i.n	a5, sp, 20
	j	.L4
.LVL11:
.L6:
	.loc 1 81 0
	mov.n	a12, a5
	mov.n	a11, sp
	call8	memcpy
.LVL12:
	j	.L10
.LVL13:
.L4:
	.loc 1 72 0
	l32i	a5, sp, 116
	bltu	a2, a5, .L7
.L10:
	.loc 1 87 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L8:
	.loc 1 76 0
	movi.n	a2, -1
.LVL16:
	.loc 1 88 0
	retw.n
.LFE34:
	.size	peap_prfplus, .-peap_prfplus
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/sha1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x7
	.string	"u8"
	.byte	0x7
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x12
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x238
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x12
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x12
	.4byte	0x238
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.4byte	0x9a
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.4byte	0x238
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0x68
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.string	"buf"
	.byte	0x1
	.byte	0x14
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xd
	.string	"pos"
	.byte	0x1
	.byte	0x17
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x17
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x243
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x19
	.4byte	0x68
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1b
	.4byte	0x263
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.4byte	0x27e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x28e
	.4byte	0x1c8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x299
	.4byte	0x1fc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x2a4
	.4byte	0x220
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x2a4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23e
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x13
	.4byte	0xa5
	.4byte	0x253
	.uleb128 0x14
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.4byte	0xa5
	.4byte	0x263
	.uleb128 0x14
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	0x273
	.4byte	0x273
	.uleb128 0x14
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x279
	.uleb128 0x6
	.4byte	0x37
	.uleb128 0x13
	.4byte	0x68
	.4byte	0x28e
	.uleb128 0x14
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF32
	.4byte	.LASF32
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL5
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL5
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF24:
	.string	"extra"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"strlen"
.LASF29:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/eap_peer/eap_peap_common.c"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"peap_prfplus"
.LASF12:
	.string	"long unsigned int"
.LASF25:
	.string	"addr"
.LASF8:
	.string	"size_t"
.LASF19:
	.string	"buf_len"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"counter"
.LASF27:
	.string	"hmac_sha1_vector"
.LASF14:
	.string	"version"
.LASF17:
	.string	"seed"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"hash"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"seed_len"
.LASF21:
	.string	"plen"
.LASF30:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF15:
	.string	"key_len"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"label_len"
.LASF16:
	.string	"label"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
