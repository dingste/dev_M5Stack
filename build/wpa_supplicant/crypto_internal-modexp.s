	.file	"crypto_internal-modexp.c"
	.text
.Ltext0:
	.section	.text.crypto_mod_exp,"ax",@progbits
	.align	4
	.global	crypto_mod_exp
	.type	crypto_mod_exp, @function
crypto_mod_exp:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
	.loc 1 27 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 27 0
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	.loc 1 31 0
	s32i.n	a2, sp, 8
	s32i.n	a3, sp, 12
	call8	bignum_init
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 32 0
	call8	bignum_init
.LVL4:
	mov.n	a3, a10
.LVL5:
	.loc 1 33 0
	call8	bignum_init
.LVL6:
	mov.n	a7, a10
.LVL7:
	.loc 1 34 0
	call8	bignum_init
.LVL8:
	.loc 1 36 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a2
	extui	a8, a8, 0, 8
	.loc 1 27 0
	.loc 1 34 0
	mov.n	a6, a10
.LVL9:
	.loc 1 36 0
	l32i.n	a11, sp, 8
	l32i.n	a12, sp, 12
	bnez.n	a8, .L5
	moveqz	a8, a9, a3
	beqz.n	a8, .L2
.L5:
	.loc 1 29 0
	movi.n	a4, -1
.LVL10:
	j	.L4
.LVL11:
.L2:
	.loc 1 36 0 discriminator 1
	moveqz	a8, a9, a7
	bnez.n	a8, .L5
	moveqz	a8, a9, a10
	bnez.n	a8, .L5
	.loc 1 40 0
	mov.n	a10, a2
	call8	bignum_set_unsigned_bin
.LVL12:
	bltz	a10, .L5
	.loc 1 41 0 discriminator 1
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	bignum_set_unsigned_bin
.LVL13:
	.loc 1 40 0 discriminator 1
	bltz	a10, .L5
	.loc 1 42 0
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	mov.n	a10, a7
	call8	bignum_set_unsigned_bin
.LVL14:
	.loc 1 41 0
	bltz	a10, .L5
	.loc 1 45 0
	mov.n	a13, a6
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bignum_exptmod
.LVL15:
	bltz	a10, .L5
	.loc 1 48 0
	l32i.n	a12, sp, 52
	l32i.n	a11, sp, 48
	mov.n	a10, a6
	call8	bignum_get_unsigned_bin
.LVL16:
	mov.n	a4, a10
.LVL17:
.L4:
	.loc 1 51 0
	mov.n	a10, a2
	call8	bignum_deinit
.LVL18:
	.loc 1 52 0
	mov.n	a10, a3
	call8	bignum_deinit
.LVL19:
	.loc 1 53 0
	mov.n	a10, a7
	call8	bignum_deinit
.LVL20:
	.loc 1 54 0
	mov.n	a10, a6
	call8	bignum_deinit
.LVL21:
	.loc 1 56 0
	mov.n	a2, a4
.LVL22:
	retw.n
.LFE1:
	.size	crypto_mod_exp, .-crypto_mod_exp
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x53
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
	.string	"u8"
	.byte	0x6
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x290
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x17
	.4byte	0x290
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x17
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x18
	.4byte	0x290
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.4byte	0x290
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0x73
	.4byte	.LLST4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.4byte	0x2ac
	.4byte	.LLST5
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1c
	.4byte	0x2ac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1c
	.4byte	0x2ac
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
	.4byte	0x2ac
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xb
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x32
	.4byte	.L4
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x2b2
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x2b2
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x2b2
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0x2b2
	.uleb128 0xe
	.4byte	.LVL12
	.4byte	0x2bd
	.4byte	0x1b9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x2bd
	.4byte	0x1d9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x2bd
	.4byte	0x1fb
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LVL15
	.4byte	0x2c8
	.4byte	0x221
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL16
	.4byte	0x2d3
	.4byte	0x243
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0x2de
	.4byte	0x257
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x2de
	.4byte	0x26b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x2de
	.4byte	0x27f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0x2de
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x296
	.uleb128 0x12
	.4byte	0x9a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x73
	.uleb128 0x13
	.4byte	.LASF36
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x15
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
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
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF20:
	.string	"result"
.LASF18:
	.string	"modulus"
.LASF8:
	.string	"uint8_t"
.LASF19:
	.string	"modulus_len"
.LASF16:
	.string	"power"
.LASF32:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
.LASF26:
	.string	"bignum_init"
.LASF36:
	.string	"bignum"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"bn_exp"
.LASF28:
	.string	"bignum_exptmod"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"result_len"
.LASF24:
	.string	"bn_modulus"
.LASF14:
	.string	"base"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"bn_base"
.LASF15:
	.string	"base_len"
.LASF27:
	.string	"bignum_set_unsigned_bin"
.LASF11:
	.string	"sizetype"
.LASF35:
	.string	"error"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF30:
	.string	"bignum_deinit"
.LASF2:
	.string	"short int"
.LASF33:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF10:
	.string	"long int"
.LASF34:
	.string	"crypto_mod_exp"
.LASF17:
	.string	"power_len"
.LASF29:
	.string	"bignum_get_unsigned_bin"
.LASF25:
	.string	"bn_result"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
