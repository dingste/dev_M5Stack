	.file	"aes-cbc.c"
	.text
.Ltext0:
	.section	.text.aes_128_cbc_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	aes_128_cbc_encrypt
	.type	aes_128_cbc_encrypt, @function
aes_128_cbc_encrypt:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-cbc.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 38 0
	mov.n	a10, a2
	movi.n	a11, 0x10
	call8	aes_encrypt_init
.LVL2:
	mov.n	a6, a10
.LVL3:
	.loc 1 40 0
	movi.n	a2, -1
.LVL4:
	.loc 1 39 0
	beqz.n	a10, .L2
	.loc 1 41 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL5:
	.loc 1 43 0
	srli	a5, a5, 4
.LVL6:
	.loc 1 44 0
	movi.n	a2, 0
	j	.L3
.LVL7:
.L4:
	.loc 1 46 0 discriminator 3
	l8ui	a12, a8, 0
	l8ui	a11, a10, 0
	addi.n	a10, a10, 1
	xor	a11, a12, a11
	s8i	a11, a8, 0
.LVL8:
	addi.n	a8, a8, 1
.LVL9:
	addi.n	a9, a9, -1
	bnez.n	a9, .L4
	.loc 1 47 0 discriminator 2
	mov.n	a12, sp
	mov.n	a11, sp
	mov.n	a10, a6
	call8	aes_encrypt
.LVL10:
	.loc 1 48 0 discriminator 2
	mov.n	a10, a4
	movi.n	a12, 0x10
	mov.n	a11, sp
	call8	memcpy
.LVL11:
	.loc 1 44 0 discriminator 2
	addi.n	a2, a2, 1
.LVL12:
	.loc 1 49 0 discriminator 2
	mov.n	a4, a3
.LVL13:
.L3:
	.loc 1 44 0 discriminator 1
	bge	a2, a5, .L5
	mov.n	a8, sp
	mov.n	a10, a4
	addi	a3, a4, 16
	movi.n	a9, 0x10
	j	.L4
.L5:
	.loc 1 51 0
	mov.n	a10, a6
	call8	aes_encrypt_deinit
.LVL14:
	.loc 1 52 0
	movi.n	a2, 0
.LVL15:
.L2:
	.loc 1 53 0
	retw.n
.LFE1:
	.size	aes_128_cbc_encrypt, .-aes_128_cbc_encrypt
	.section	.text.aes_128_cbc_decrypt,"ax",@progbits
	.align	4
	.global	aes_128_cbc_decrypt
	.type	aes_128_cbc_decrypt, @function
aes_128_cbc_decrypt:
.LFB2:
	.loc 1 66 0
.LVL16:
	entry	sp, 64
.LCFI1:
.LVL17:
	.loc 1 72 0
	mov.n	a10, a2
	movi.n	a11, 0x10
	call8	aes_decrypt_init
.LVL18:
	mov.n	a6, a10
.LVL19:
	.loc 1 74 0
	movi.n	a2, -1
.LVL20:
	.loc 1 73 0
	beqz.n	a10, .L9
	.loc 1 75 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	add.n	a10, sp, a12
	call8	memcpy
.LVL21:
	.loc 1 77 0
	srli	a5, a5, 4
.LVL22:
	.loc 1 78 0
	movi.n	a2, 0
	j	.L10
.LVL23:
.L12:
	.loc 1 79 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	mov.n	a10, sp
	call8	memcpy
.LVL24:
	.loc 1 80 0
	mov.n	a10, a6
	mov.n	a12, a4
	mov.n	a11, a4
	call8	aes_decrypt
.LVL25:
	mov.n	a8, a4
	.loc 1 81 0
	movi.n	a10, 0
	movi.n	a9, 0x10
	loop	a9, .L11_LEND
.LVL26:
.L11:
	.loc 1 82 0 discriminator 3
	addi	a3, sp, 16
	add.n	a11, a3, a10
	l8ui	a12, a11, 0
	l8ui	a11, a8, 0
	.loc 1 81 0 discriminator 3
	addi.n	a10, a10, 1
.LVL27:
	.loc 1 82 0 discriminator 3
	xor	a11, a12, a11
	s8i	a11, a8, 0
	addi.n	a8, a8, 1
	.L11_LEND:
	.loc 1 83 0 discriminator 2
	l32i.n	a8, sp, 0
	.loc 1 84 0 discriminator 2
	addi	a4, a4, 16
.LVL28:
	.loc 1 83 0 discriminator 2
	s32i.n	a8, sp, 16
	l32i.n	a8, sp, 4
	.loc 1 78 0 discriminator 2
	addi.n	a2, a2, 1
.LVL29:
	.loc 1 83 0 discriminator 2
	s32i.n	a8, sp, 20
	l32i.n	a8, sp, 8
	s32i.n	a8, sp, 24
	l32i.n	a8, sp, 12
	s32i.n	a8, sp, 28
.LVL30:
.L10:
	.loc 1 78 0 discriminator 1
	blt	a2, a5, .L12
	.loc 1 86 0
	mov.n	a10, a6
	call8	aes_decrypt_deinit
.LVL31:
	.loc 1 87 0
	movi.n	a2, 0
.LVL32:
.L9:
	.loc 1 88 0
	retw.n
.LFE2:
	.size	aes_128_cbc_decrypt, .-aes_128_cbc_decrypt
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/aes.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x379
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.string	"u8"
	.byte	0x6
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d5
	.uleb128 0x8
	.string	"key"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1d5
	.4byte	.LLST0
	.uleb128 0x8
	.string	"iv"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1d5
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1f
	.4byte	0x1e0
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1f
	.4byte	0x73
	.4byte	.LLST3
	.uleb128 0xa
	.string	"ctx"
	.byte	0x1
	.byte	0x21
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"cbc"
	.byte	0x1
	.byte	0x22
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x23
	.4byte	0x1e0
	.4byte	.LLST4
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x24
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x24
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x331
	.4byte	0x166
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x33c
	.4byte	0x185
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x345
	.4byte	0x1a5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x33c
	.4byte	0x1c4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x350
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1db
	.uleb128 0x11
	.4byte	0x9c
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x12
	.4byte	0x9c
	.4byte	0x1f6
	.uleb128 0x13
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x41
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0x8
	.string	"key"
	.byte	0x1
	.byte	0x41
	.4byte	0x1d5
	.4byte	.LLST8
	.uleb128 0x8
	.string	"iv"
	.byte	0x1
	.byte	0x41
	.4byte	0x1d5
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x41
	.4byte	0x1e0
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x41
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0xa
	.string	"ctx"
	.byte	0x1
	.byte	0x43
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"cbc"
	.byte	0x1
	.byte	0x44
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"tmp"
	.byte	0x1
	.byte	0x44
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"pos"
	.byte	0x1
	.byte	0x45
	.4byte	0x1e0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x46
	.4byte	0x4c
	.4byte	.LLST12
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x46
	.4byte	0x4c
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x46
	.4byte	0x4c
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LVL18
	.4byte	0x35b
	.4byte	0x2c2
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x33c
	.4byte	0x2e1
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL24
	.4byte	0x33c
	.4byte	0x300
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL25
	.4byte	0x366
	.4byte	0x320
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL31
	.4byte	0x371
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x5
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.uleb128 0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x5
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.uleb128 0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF19:
	.string	"aes_encrypt_init"
.LASF18:
	.string	"aes_128_cbc_decrypt"
.LASF17:
	.string	"aes_128_cbc_encrypt"
.LASF21:
	.string	"aes_encrypt_deinit"
.LASF15:
	.string	"data_len"
.LASF14:
	.string	"data"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"aes_decrypt_init"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"aes_decrypt_deinit"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF16:
	.string	"blocks"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-cbc.c"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF28:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF20:
	.string	"aes_encrypt"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"aes_decrypt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
