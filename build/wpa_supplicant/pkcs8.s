	.file	"pkcs8.c"
	.text
.Ltext0:
	.section	.text.pkcs8_key_import,"ax",@progbits
	.literal_position
	.literal .LC0, 113549
	.align	4
	.global	pkcs8_key_import
	.type	pkcs8_key_import, @function
pkcs8_key_import:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/tls/pkcs8.c"
	.loc 1 19 0
.LVL0:
	entry	sp, 224
.LCFI0:
	.loc 1 29 0
	movi	a12, 0xa4
	add.n	a12, a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	asn1_get_next
.LVL1:
	bgez	a10, .L2
.LVL2:
.L4:
	.loc 1 34 0
	movi.n	a2, 0
	retw.n
.LVL3:
.L2:
	.loc 1 29 0 discriminator 1
	l8ui	a2, sp, 169
.LVL4:
	bnez.n	a2, .L4
	.loc 1 30 0
	l32i	a2, sp, 172
	bnei	a2, 16, .L4
	.loc 1 36 0
	l32i	a6, sp, 164
	.loc 1 37 0
	l32i	a5, sp, 176
.LVL5:
	.loc 1 40 0
	movi	a12, 0xa4
	add.n	a12, a12, sp
	mov.n	a11, a5
	mov.n	a10, a6
	.loc 1 36 0
	s32i	a6, sp, 180
	.loc 1 40 0
	call8	asn1_get_next
.LVL6:
	bltz	a10, .L4
	.loc 1 40 0 is_stmt 0 discriminator 1
	l8ui	a2, sp, 169
	bnez.n	a2, .L4
	.loc 1 41 0 is_stmt 1
	l32i	a4, sp, 172
	bnei	a4, 2, .L4
	.loc 1 48 0
	call8	bignum_init
.LVL7:
	mov.n	a4, a10
.LVL8:
	.loc 1 49 0
	beqz.n	a10, .L4
	.loc 1 52 0
	l32i	a12, sp, 176
	l32i	a11, sp, 164
	call8	bignum_set_unsigned_bin
.LVL9:
	bgez	a10, .L5
	j	.L10
.L5:
	.loc 1 57 0
	l32i	a8, sp, 176
	l32i	a9, sp, 164
	.loc 1 59 0
	mov.n	a11, a2
	.loc 1 57 0
	add.n	a8, a9, a8
	.loc 1 59 0
	mov.n	a10, a4
	.loc 1 57 0
	s32i	a8, sp, 180
	.loc 1 59 0
	call8	bignum_cmp_d
.LVL10:
	beqz.n	a10, .L6
.L10:
	.loc 1 63 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL11:
	.loc 1 64 0
	retw.n
.L6:
	.loc 1 66 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL12:
	.loc 1 70 0
	movi	a12, 0xa4
	l32i	a10, sp, 180
	add.n	a12, a12, sp
	mov.n	a11, a3
	call8	asn1_get_next
.LVL13:
	bltz	a10, .L4
	.loc 1 70 0 is_stmt 0 discriminator 1
	l8ui	a2, sp, 169
	bnez.n	a2, .L4
	.loc 1 71 0 is_stmt 1
	l32i	a2, sp, 172
	bnei	a2, 16, .L4
	.loc 1 80 0
	movi	a13, 0xb4
	l32i	a11, sp, 176
	l32i	a10, sp, 164
	add.n	a13, sp, a13
	mov.n	a12, sp
	call8	asn1_get_oid
.LVL14:
	bnez.n	a10, .L4
	.loc 1 86 0
	movi.n	a12, 0x50
	addi	a11, sp, 84
	mov.n	a10, sp
	call8	asn1_oid_to_str
.LVL15:
	.loc 1 89 0
	l32i	a2, sp, 80
	bnei	a2, 7, .L4
	.loc 1 89 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 0
	bnei	a2, 1, .L4
	.loc 1 90 0 is_stmt 1
	l32i.n	a2, sp, 4
	bnei	a2, 2, .L4
	.loc 1 91 0
	l32i.n	a3, sp, 8
.LVL16:
	movi	a2, 0x348
	bne	a3, a2, .L4
	.loc 1 92 0
	l32i.n	a3, sp, 12
	l32r	a2, .LC0
	bne	a3, a2, .L4
	.loc 1 93 0
	l32i.n	a2, sp, 16
	bnei	a2, 1, .L4
	.loc 1 94 0
	l32i.n	a2, sp, 20
	bnei	a2, 1, .L4
	.loc 1 95 0
	l32i.n	a2, sp, 24
	bnei	a2, 1, .L4
	.loc 1 102 0
	l32i	a2, sp, 176
	l32i	a10, sp, 164
	.loc 1 105 0
	add.n	a11, a6, a5
	.loc 1 102 0
	add.n	a10, a10, a2
	.loc 1 105 0
	movi	a12, 0xa4
	add.n	a12, sp, a12
	sub	a11, a11, a10
	.loc 1 102 0
	s32i	a10, sp, 180
	.loc 1 105 0
	call8	asn1_get_next
.LVL17:
	bltz	a10, .L4
	.loc 1 105 0 is_stmt 0 discriminator 1
	l8ui	a2, sp, 169
	bnez.n	a2, .L4
	.loc 1 106 0 is_stmt 1
	l32i	a2, sp, 172
	bnei	a2, 4, .L4
	.loc 1 115 0
	l32i	a11, sp, 176
	l32i	a10, sp, 164
	call8	crypto_rsa_import_private_key
.LVL18:
	mov.n	a2, a10
	.loc 1 117 0
	retw.n
.LFE34:
	.size	pkcs8_key_import, .-pkcs8_key_import
	.section	.text.pkcs8_enc_key_import,"ax",@progbits
	.align	4
	.global	pkcs8_enc_key_import
	.type	pkcs8_enc_key_import, @function
pkcs8_enc_key_import:
.LFB35:
	.loc 1 122 0
.LVL19:
	entry	sp, 64
.LCFI1:
	.loc 1 129 0
	bnez.n	a4, .L12
.LVL20:
.L14:
	.loc 1 130 0
	movi.n	a2, 0
	retw.n
.LVL21:
.L12:
	.loc 1 141 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	asn1_get_next
.LVL22:
	bltz	a10, .L14
	.loc 1 141 0 is_stmt 0 discriminator 1
	l8ui	a2, sp, 5
.LVL23:
	bnez.n	a2, .L14
	.loc 1 142 0 is_stmt 1
	l32i.n	a2, sp, 8
	bnei	a2, 16, .L14
	.loc 1 149 0
	l32i.n	a6, sp, 0
.LVL24:
	.loc 1 150 0
	l32i.n	a2, sp, 12
.LVL25:
	.loc 1 153 0
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a6
	call8	asn1_get_next
.LVL26:
	bltz	a10, .L14
	.loc 1 153 0 is_stmt 0 discriminator 1
	l8ui	a3, sp, 5
.LVL27:
	bnez.n	a3, .L14
	.loc 1 154 0 is_stmt 1
	l32i.n	a3, sp, 8
	bnei	a3, 16, .L14
	.loc 1 162 0
	l32i.n	a3, sp, 0
.LVL28:
	.loc 1 163 0
	l32i.n	a5, sp, 12
.LVL29:
	.loc 1 167 0
	add.n	a11, a6, a2
.LVL30:
	.loc 1 164 0
	add.n	a10, a3, a5
.LVL31:
	.loc 1 167 0
	mov.n	a12, sp
	sub	a11, a11, a10
.LVL32:
	call8	asn1_get_next
.LVL33:
	bltz	a10, .L14
	.loc 1 167 0 is_stmt 0 discriminator 1
	l8ui	a2, sp, 5
.LVL34:
	bnez.n	a2, .L14
	.loc 1 168 0 is_stmt 1
	l32i.n	a2, sp, 8
	bnei	a2, 4, .L14
	.loc 1 176 0
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 0
	mov.n	a10, a3
	addi	a15, sp, 16
	mov.n	a14, a4
	mov.n	a11, a5
	call8	pkcs5_decrypt
.LVL35:
	mov.n	a3, a10
.LVL36:
	.loc 1 178 0
	beqz.n	a10, .L14
.LBB2:
	.loc 1 180 0
	l32i.n	a11, sp, 16
	call8	pkcs8_key_import
.LVL37:
	mov.n	a2, a10
.LVL38:
	.loc 1 181 0
	mov.n	a10, a3
	call8	free
.LVL39:
.LBE2:
	.loc 1 186 0
	retw.n
.LFE35:
	.size	pkcs8_enc_key_import, .-pkcs8_enc_key_import
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
	.uleb128 0xe0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa2/tls/asn1.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa2/tls/bignum.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa2/tls/rsa.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa2/tls/pkcs5.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa/common.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x525
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
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
	.byte	0xa
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0xb
	.byte	0x1f
	.4byte	0xe6
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x2e
	.4byte	0x13b
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2f
	.4byte	0x13b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x6
	.uleb128 0xc
	.string	"tag"
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x54
	.byte	0x5
	.byte	0x35
	.4byte	0x16b
	.uleb128 0xc
	.string	"oid"
	.byte	0x5
	.byte	0x36
	.4byte	0x16b
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x5
	.byte	0x37
	.4byte	0x68
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x17b
	.uleb128 0xe
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x12
	.4byte	0x324
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x324
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.4byte	.LLST0
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x12
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0x12
	.string	"hdr"
	.byte	0x1
	.byte	0x14
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0x15
	.4byte	0x13b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x15
	.4byte	0x13b
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x16
	.4byte	0x32f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"oid"
	.byte	0x1
	.byte	0x17
	.4byte	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x335
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x4ba
	.4byte	0x230
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x4ba
	.4byte	0x250
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x4c5
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x4d0
	.4byte	0x26d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0x4db
	.4byte	0x287
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x4e6
	.4byte	0x29b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0x4e6
	.4byte	0x2af
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x4ba
	.4byte	0x2c9
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x14
	.4byte	.LVL14
	.4byte	0x4f1
	.4byte	0x2e4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0x4fc
	.4byte	0x306
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x4ba
	.4byte	0x31a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x507
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17b
	.uleb128 0xf
	.4byte	.LASF30
	.uleb128 0x5
	.byte	0x4
	.4byte	0x32a
	.uleb128 0xd
	.4byte	0x93
	.4byte	0x345
	.uleb128 0xe
	.4byte	0x85
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.4byte	0x324
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ba
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x79
	.4byte	0x13b
	.4byte	.LLST2
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x79
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"hdr"
	.byte	0x1
	.byte	0x7b
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"pos"
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST4
	.uleb128 0x18
	.string	"end"
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7e
	.4byte	0xaf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x42b
	.uleb128 0x12
	.string	"key"
	.byte	0x1
	.byte	0xb3
	.4byte	0x324
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL37
	.4byte	0x180
	.4byte	0x41a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x512
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x4ba
	.4byte	0x44b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.4byte	.LVL26
	.4byte	0x4ba
	.4byte	0x46b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	0x4ba
	.4byte	0x497
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL35
	.4byte	0x51d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3b
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x14
	.uleb128 0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x18
	.uleb128 0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x1a
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x15
	.uleb128 0x1c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x11
	.uleb128 0x1c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.byte	0xc
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF33:
	.string	"passwd"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"class"
.LASF41:
	.string	"bignum_cmp_d"
.LASF31:
	.string	"pkcs8_key_import"
.LASF37:
	.string	"data_len"
.LASF38:
	.string	"asn1_get_next"
.LASF44:
	.string	"asn1_oid_to_str"
.LASF39:
	.string	"bignum_init"
.LASF27:
	.string	"zero"
.LASF36:
	.string	"data"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"constructed"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"pkcs5_decrypt"
.LASF12:
	.string	"long unsigned int"
.LASF21:
	.string	"identifier"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"pkcs8_enc_key_import"
.LASF30:
	.string	"bignum"
.LASF28:
	.string	"obuf"
.LASF34:
	.string	"enc_alg"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF42:
	.string	"bignum_deinit"
.LASF40:
	.string	"bignum_set_unsigned_bin"
.LASF20:
	.string	"payload"
.LASF35:
	.string	"enc_alg_len"
.LASF11:
	.string	"sizetype"
.LASF46:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"asn1_get_oid"
.LASF29:
	.string	"crypto_private_key"
.LASF2:
	.string	"short int"
.LASF45:
	.string	"crypto_rsa_import_private_key"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF49:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/tls/pkcs8.c"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"asn1_oid"
.LASF24:
	.string	"length"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF25:
	.string	"asn1_hdr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
