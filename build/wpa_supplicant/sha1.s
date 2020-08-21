	.file	"sha1.c"
	.text
.Ltext0:
	.section	.text.hmac_sha1_vector,"ax",@progbits
	.literal_position
	.align	4
	.global	hmac_sha1_vector
	.type	hmac_sha1_vector, @function
hmac_sha1_vector:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/sha1.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 192
.LCFI0:
	.loc 1 35 0
	s32i	a2, sp, 144
	s32i	a3, sp, 148
	mov.n	a8, a4
	.loc 1 41 0
	bltui	a4, 6, .L2
.LVL1:
.L5:
	.loc 1 46 0
	movi.n	a2, -1
	retw.n
.LVL2:
.L2:
	.loc 1 50 0
	l32i	a2, sp, 148
.LVL3:
	movi.n	a3, 0x40
.LVL4:
	bgeu	a3, a2, .L4
	.loc 1 51 0
	addi	a2, sp, 112
	movi	a12, 0x94
	movi	a11, 0x90
	mov.n	a13, a2
	add.n	a12, sp, a12
	add.n	a11, sp, a11
	movi.n	a10, 1
	s32i	a4, sp, 152
	call8	sha1_vector
.LVL5:
	l32i	a8, sp, 152
	bnez.n	a10, .L5
	.loc 1 53 0
	s32i	a2, sp, 144
	.loc 1 54 0
	movi.n	a2, 0x14
	s32i	a2, sp, 148
.L4:
	.loc 1 67 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	s32i	a8, sp, 152
	call8	memset
.LVL6:
	.loc 1 68 0
	l32i	a11, sp, 144
	l32i	a12, sp, 148
	mov.n	a10, sp
	call8	memcpy
.LVL7:
	.loc 1 71 0
	l32i	a8, sp, 152
	mov.n	a4, sp
.LVL8:
	.loc 1 68 0
	mov.n	a2, sp
	.loc 1 70 0
	movi.n	a3, 0
	.loc 1 71 0
	movi.n	a11, 0x36
	movi.n	a9, 0x40
	loop	a9, .L6_LEND
.LVL9:
.L6:
	.loc 1 71 0 is_stmt 0 discriminator 3
	l8ui	a10, a2, 0
	.loc 1 70 0 is_stmt 1 discriminator 3
	addi.n	a3, a3, 1
.LVL10:
	.loc 1 71 0 discriminator 3
	xor	a10, a10, a11
	s8i	a10, a2, 0
	addi.n	a2, a2, 1
	.L6_LEND:
	addi	a10, sp, 88
	addi	a9, sp, 64
	.loc 1 75 0
	s32i	a3, sp, 64
.LVL11:
	mov.n	a2, a6
	.loc 1 74 0
	s32i	sp, sp, 88
	addx4	a11, a8, a5
	mov.n	a3, a10
	mov.n	a6, a9
.LVL12:
	.loc 1 76 0
	j	.L7
.LVL13:
.L8:
	.loc 1 77 0 discriminator 3
	l32i.n	a12, a5, 0
	addi.n	a5, a5, 4
	s32i.n	a12, a10, 0
	.loc 1 78 0 discriminator 3
	l32i.n	a12, a2, 0
	addi.n	a2, a2, 4
	s32i.n	a12, a9, 0
.L7:
	addi.n	a10, a10, 4
	addi.n	a9, a9, 4
	.loc 1 76 0 discriminator 1
	bne	a5, a11, .L8
	.loc 1 80 0
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a3
	addi.n	a10, a8, 1
	call8	sha1_vector
.LVL14:
	mov.n	a2, a10
	bnez.n	a10, .L5
	.loc 1 83 0
	mov.n	a11, a10
	movi.n	a12, 0x40
	mov.n	a10, sp
	call8	memset
.LVL15:
	.loc 1 84 0
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	mov.n	a10, sp
	call8	memcpy
.LVL16:
	.loc 1 87 0
	movi.n	a9, 0x5c
	movi.n	a5, 0x40
.LVL17:
.L9:
	.loc 1 87 0 is_stmt 0 discriminator 3
	l8ui	a8, a4, 0
	.loc 1 86 0 is_stmt 1 discriminator 3
	addi.n	a2, a2, 1
.LVL18:
	.loc 1 87 0 discriminator 3
	xor	a8, a8, a9
	s8i	a8, a4, 0
	addi.n	a4, a4, 1
	addi.n	a5, a5, -1
	bnez.n	a5, .L9
	.loc 1 91 0
	s32i	a2, sp, 64
	.loc 1 94 0
	mov.n	a13, a7
	.loc 1 93 0
	movi.n	a2, 0x14
.LVL19:
	.loc 1 94 0
	mov.n	a12, a6
	mov.n	a11, a3
	movi.n	a10, 2
	.loc 1 93 0
	s32i	a2, sp, 68
	.loc 1 90 0
	s32i	sp, sp, 88
	.loc 1 92 0
	s32i	a7, sp, 92
	.loc 1 94 0
	call8	sha1_vector
.LVL20:
	mov.n	a2, a10
	.loc 1 95 0
	retw.n
.LFE1:
	.size	hmac_sha1_vector, .-hmac_sha1_vector
	.section	.text.hmac_sha1,"ax",@progbits
	.align	4
	.global	hmac_sha1
	.type	hmac_sha1, @function
hmac_sha1:
.LFB2:
	.loc 1 110 0
.LVL21:
	entry	sp, 48
.LCFI1:
	.loc 1 111 0
	mov.n	a15, a6
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 110 0
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 111 0
	call8	hmac_sha1_vector
.LVL22:
	.loc 1 112 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE2:
	.size	hmac_sha1, .-hmac_sha1
	.section	.text.sha1_prf,"ax",@progbits
	.align	4
	.global	sha1_prf
	.type	sha1_prf, @function
sha1_prf:
.LFB3:
	.loc 1 131 0
.LVL24:
	entry	sp, 80
.LCFI2:
	.loc 1 132 0
	movi.n	a8, 0
	.loc 1 135 0
	mov.n	a10, a4
	.loc 1 132 0
	s8i	a8, sp, 44
	.loc 1 135 0
	call8	strlen
.LVL25:
	.loc 1 139 0
	s32i.n	a4, sp, 32
	.loc 1 143 0
	addi	a4, sp, 44
.LVL26:
	.loc 1 140 0
	addi.n	a10, a10, 1
.LVL27:
	.loc 1 143 0
	s32i.n	a4, sp, 40
	.loc 1 144 0
	movi.n	a4, 1
	.loc 1 141 0
	s32i.n	a5, sp, 36
	.loc 1 144 0
	s32i.n	a4, sp, 28
.LVL28:
	.loc 1 131 0
	.loc 1 140 0
	s32i.n	a10, sp, 20
	.loc 1 142 0
	s32i.n	a6, sp, 24
	.loc 1 146 0
	movi.n	a4, 0
	.loc 1 149 0
	movi.n	a5, 0x13
.LVL29:
	.loc 1 147 0
	j	.L14
.LVL30:
.L19:
	.loc 1 148 0
	l32i	a8, sp, 80
	sub	a6, a8, a4
.LVL31:
	.loc 1 149 0
	bgeu	a5, a6, .L15
	.loc 1 150 0
	add.n	a15, a7, a4
	addi	a14, sp, 20
	addi	a13, sp, 32
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha1_vector
.LVL32:
	beqz.n	a10, .L16
.LVL33:
.L18:
	.loc 1 152 0
	movi.n	a2, -1
	retw.n
.LVL34:
.L16:
	.loc 1 161 0
	l8ui	a8, sp, 44
	.loc 1 153 0
	addi	a4, a4, 20
.LVL35:
	.loc 1 161 0
	addi.n	a8, a8, 1
	s8i	a8, sp, 44
	j	.L14
.L15:
	.loc 1 155 0
	mov.n	a10, a2
	mov.n	a15, sp
	addi	a14, sp, 20
	addi	a13, sp, 32
	movi.n	a12, 3
	mov.n	a11, a3
	call8	hmac_sha1_vector
.LVL36:
	mov.n	a2, a10
.LVL37:
	bnez.n	a10, .L18
	.loc 1 158 0
	mov.n	a12, a6
	mov.n	a11, sp
	add.n	a10, a7, a4
	call8	memcpy
.LVL38:
	.loc 1 159 0
	retw.n
.LVL39:
.L14:
	.loc 1 147 0
	l32i	a6, sp, 80
	bltu	a4, a6, .L19
	.loc 1 164 0
	movi.n	a2, 0
.LVL40:
	.loc 1 165 0
	retw.n
.LFE3:
	.size	sha1_prf, .-sha1_prf
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
	.uleb128 0xc0
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/crypto.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x502
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
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
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x7
	.string	"u8"
	.byte	0x7
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x21
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x238
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x21
	.4byte	0x238
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x22
	.4byte	0x243
	.4byte	.LLST3
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x22
	.4byte	0x249
	.4byte	.LLST4
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x22
	.4byte	0x254
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x24
	.4byte	0x25a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xd
	.string	"tk"
	.byte	0x1
	.byte	0x25
	.4byte	0x26a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x26
	.4byte	0x27a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x73
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x4dd
	.4byte	0x18d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x4e8
	.4byte	0x1ad
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x4f1
	.4byte	0x1c2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x4dd
	.4byte	0x1e2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x4e8
	.4byte	0x202
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x4f1
	.4byte	0x216
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL20
	.4byte	0x4dd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23e
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x238
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x12
	.4byte	0x37
	.4byte	0x26a
	.uleb128 0x13
	.4byte	0x85
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	0x37
	.4byte	0x27a
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0x238
	.4byte	0x28a
	.uleb128 0x13
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0x73
	.4byte	0x29a
	.uleb128 0x13
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6c
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x324
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.4byte	0x238
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0x1
	.byte	0x6c
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6c
	.4byte	0x238
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6c
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x6d
	.4byte	0x254
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0xaf
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x81
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x81
	.4byte	0x238
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0x1
	.byte	0x81
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x81
	.4byte	0x9a
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x82
	.4byte	0x238
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x82
	.4byte	0x73
	.4byte	.LLST10
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x82
	.4byte	0x254
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x82
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x84
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"pos"
	.byte	0x1
	.byte	0x85
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x85
	.4byte	0x73
	.4byte	.LLST12
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x86
	.4byte	0x4a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x87
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x88
	.4byte	0x4b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x89
	.4byte	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	.LVL25
	.4byte	0x4fa
	.4byte	0x41b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL32
	.4byte	0xaf
	.4byte	0x44f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.4byte	.LVL36
	.4byte	0xaf
	.4byte	0x481
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x11
	.4byte	.LVL38
	.4byte	0x4f1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa5
	.4byte	0x4b2
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0x4c2
	.4byte	0x4c2
	.uleb128 0x13
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c8
	.uleb128 0x6
	.4byte	0x37
	.uleb128 0x12
	.4byte	0x73
	.4byte	0x4dd
	.uleb128 0x13
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF31
	.4byte	.LASF31
	.uleb128 0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.uleb128 0x16
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x21
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x15
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL2
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
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF31:
	.string	"memset"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/sha1.c"
.LASF19:
	.string	"_len"
.LASF23:
	.string	"data_len"
.LASF34:
	.string	"strlen"
.LASF22:
	.string	"data"
.LASF35:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF16:
	.string	"addr"
.LASF9:
	.string	"size_t"
.LASF26:
	.string	"buf_len"
.LASF27:
	.string	"counter"
.LASF20:
	.string	"hmac_sha1_vector"
.LASF21:
	.string	"hmac_sha1"
.LASF24:
	.string	"sha1_prf"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF33:
	.string	"sha1_vector"
.LASF29:
	.string	"hash"
.LASF15:
	.string	"num_elem"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"plen"
.LASF37:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF14:
	.string	"key_len"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"label_len"
.LASF25:
	.string	"label"
.LASF17:
	.string	"k_pad"
.LASF18:
	.string	"_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
