	.file	"crypto_internal.c"
	.text
.Ltext0:
	.section	.text.crypto_hash_init,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_hash_init
	.type	crypto_hash_init, @function
crypto_hash_init:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 128
.LCFI0:
	.loc 1 44 0
	movi	a11, 0xa4
	movi.n	a10, 1
	call8	calloc
.LVL1:
	mov.n	a5, a10
.LVL2:
	.loc 1 46 0
	mov.n	a8, a10
	.loc 1 45 0
	beqz.n	a10, .L2
	.loc 1 48 0
	s32i.n	a2, a10, 0
	.loc 1 50 0
	beqi	a2, 1, .L4
	beqz.n	a2, .L5
	beqi	a2, 2, .L6
	beqi	a2, 3, .L7
	j	.L23
.L5:
	.loc 1 52 0
	addi.n	a10, a10, 4
	call8	MD5Init
.LVL3:
	j	.L24
.L4:
	.loc 1 55 0
	addi.n	a10, a10, 4
	call8	SHA1Init
.LVL4:
	j	.L24
.L6:
	.loc 1 63 0
	movi.n	a2, 0x40
.LVL5:
	bgeu	a2, a4, .L8
	.loc 1 64 0
	addi.n	a2, a10, 4
	mov.n	a10, a2
	call8	MD5Init
.LVL6:
	.loc 1 65 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	MD5Update
.LVL7:
	.loc 1 66 0
	mov.n	a11, a2
	addi	a10, sp, 64
	call8	MD5Final
.LVL8:
	.loc 1 68 0
	movi.n	a4, 0x10
	.loc 1 67 0
	addi	a3, sp, 64
.LVL9:
.L8:
	.loc 1 70 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a5, 96
	call8	memcpy
.LVL10:
	.loc 1 73 0
	mov.n	a12, a4
	.loc 1 71 0
	s32i	a4, a5, 160
	.loc 1 73 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL11:
	.loc 1 74 0
	beqi	a4, 64, .L9
	.loc 1 75 0
	movi.n	a12, 0x40
	sub	a12, a12, a4
	movi.n	a11, 0
	add.n	a10, sp, a4
	call8	memset
.LVL12:
.L9:
	mov.n	a2, sp
	.loc 1 77 0 discriminator 1
	movi.n	a8, 0x36
	movi.n	a3, 0x40
.LVL13:
.L10:
	.loc 1 77 0 is_stmt 0 discriminator 3
	l8ui	a4, a2, 0
	xor	a4, a4, a8
	s8i	a4, a2, 0
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L10
	.loc 1 78 0 is_stmt 1
	addi.n	a2, a5, 4
	mov.n	a10, a2
	call8	MD5Init
.LVL14:
	.loc 1 79 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	MD5Update
.LVL15:
.L24:
	.loc 1 80 0
	mov.n	a8, a5
	j	.L2
.LVL16:
.L7:
	.loc 1 82 0
	movi.n	a2, 0x40
.LVL17:
	bgeu	a2, a4, .L11
	.loc 1 83 0
	addi.n	a2, a10, 4
	mov.n	a10, a2
	call8	SHA1Init
.LVL18:
	.loc 1 84 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	SHA1Update
.LVL19:
	.loc 1 85 0
	mov.n	a11, a2
	addi	a10, sp, 64
	call8	SHA1Final
.LVL20:
	.loc 1 87 0
	movi.n	a4, 0x14
	.loc 1 86 0
	addi	a3, sp, 64
.LVL21:
.L11:
	.loc 1 89 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a5, 96
	call8	memcpy
.LVL22:
	.loc 1 92 0
	mov.n	a12, a4
	.loc 1 90 0
	s32i	a4, a5, 160
	.loc 1 92 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL23:
	.loc 1 93 0
	beqi	a4, 64, .L12
	.loc 1 94 0
	movi.n	a12, 0x40
	sub	a12, a12, a4
	movi.n	a11, 0
	add.n	a10, sp, a4
	call8	memset
.LVL24:
.L12:
	mov.n	a2, sp
	.loc 1 96 0 discriminator 1
	movi.n	a8, 0x36
	movi.n	a3, 0x40
.LVL25:
.L13:
	.loc 1 96 0 is_stmt 0 discriminator 3
	l8ui	a4, a2, 0
	xor	a4, a4, a8
	s8i	a4, a2, 0
	addi.n	a2, a2, 1
	addi.n	a3, a3, -1
	bnez.n	a3, .L13
	.loc 1 97 0 is_stmt 1
	addi.n	a2, a5, 4
	mov.n	a10, a2
	call8	SHA1Init
.LVL26:
	.loc 1 98 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	SHA1Update
.LVL27:
	j	.L24
.LVL28:
.L23:
	.loc 1 122 0
	call8	free
.LVL29:
	.loc 1 123 0
	movi.n	a8, 0
.LVL30:
.L2:
	.loc 1 127 0
	mov.n	a2, a8
	retw.n
.LFE1:
	.size	crypto_hash_init, .-crypto_hash_init
	.section	.text.crypto_hash_update,"ax",@progbits
	.align	4
	.global	crypto_hash_update
	.type	crypto_hash_update, @function
crypto_hash_update:
.LFB2:
	.loc 1 131 0
.LVL31:
	entry	sp, 32
.LCFI1:
	.loc 1 131 0
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 132 0
	beqz.n	a2, .L25
	.loc 1 135 0
	l32i.n	a8, a2, 0
	beqi	a8, 1, .L27
	beqz.n	a8, .L28
	beqi	a8, 2, .L28
	bnei	a8, 3, .L25
	j	.L27
.L28:
	.loc 1 138 0
	addi.n	a10, a2, 4
	call8	MD5Update
.LVL32:
	.loc 1 139 0
	retw.n
.L27:
	.loc 1 142 0
	addi.n	a10, a2, 4
	call8	SHA1Update
.LVL33:
.L25:
	retw.n
.LFE2:
	.size	crypto_hash_update, .-crypto_hash_update
	.section	.text.crypto_hash_finish,"ax",@progbits
	.align	4
	.global	crypto_hash_finish
	.type	crypto_hash_finish, @function
crypto_hash_finish:
.LFB3:
	.loc 1 157 0
.LVL34:
	entry	sp, 96
.LCFI2:
	.loc 1 162 0
	movi.n	a5, -2
	.loc 1 161 0
	beqz.n	a2, .L45
	.loc 1 164 0
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a3
	extui	a5, a5, 0, 8
	bnez.n	a5, .L54
	moveqz	a5, a6, a4
	beqz.n	a5, .L46
.LVL35:
.L54:
	.loc 1 165 0
	mov.n	a10, a2
	call8	free
.LVL36:
	.loc 1 166 0
	movi.n	a5, 0
	j	.L45
.LVL37:
.L46:
	.loc 1 169 0
	l32i.n	a6, a2, 0
	beqi	a6, 1, .L49
	beqz.n	a6, .L50
	beqi	a6, 2, .L51
	beqi	a6, 3, .L52
	j	.L63
.L50:
	.loc 1 171 0
	l32i.n	a5, a4, 0
	movi.n	a6, 0xf
	bltu	a6, a5, .L53
.L56:
	.loc 1 172 0
	movi.n	a3, 0x10
.LVL38:
	j	.L66
.LVL39:
.L53:
	.loc 1 176 0
	movi.n	a5, 0x10
	s32i.n	a5, a4, 0
	.loc 1 177 0
	addi.n	a11, a2, 4
	j	.L65
.L49:
	.loc 1 180 0
	l32i.n	a5, a4, 0
	movi.n	a6, 0x13
	bltu	a6, a5, .L55
.L58:
	.loc 1 181 0
	movi.n	a3, 0x14
.LVL40:
.L66:
	s32i.n	a3, a4, 0
	j	.L63
.LVL41:
.L55:
	.loc 1 185 0
	movi.n	a5, 0x14
	s32i.n	a5, a4, 0
	.loc 1 186 0
	addi.n	a11, a2, 4
	j	.L64
.L51:
	.loc 1 200 0
	l32i.n	a6, a4, 0
	movi.n	a7, 0xf
	bgeu	a7, a6, .L56
	.loc 1 205 0
	movi.n	a6, 0x10
	s32i.n	a6, a4, 0
	.loc 1 207 0
	addi.n	a6, a2, 4
	mov.n	a11, a6
	mov.n	a10, a3
	call8	MD5Final
.LVL42:
	.loc 1 209 0
	l32i	a7, a2, 160
	addi	a11, a2, 96
	mov.n	a12, a7
	mov.n	a10, sp
	call8	memcpy
.LVL43:
	.loc 1 210 0
	movi.n	a4, 0x40
.LVL44:
	mov.n	a11, a5
	sub	a12, a4, a7
	add.n	a10, sp, a7
	call8	memset
.LVL45:
	mov.n	a5, sp
	.loc 1 213 0
	movi.n	a8, 0x5c
.LVL46:
.L57:
	.loc 1 213 0 is_stmt 0 discriminator 3
	l8ui	a7, a5, 0
	xor	a7, a7, a8
	s8i	a7, a5, 0
	addi.n	a5, a5, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L57
	.loc 1 214 0 is_stmt 1
	mov.n	a10, a6
	call8	MD5Init
.LVL47:
	.loc 1 215 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a6
	call8	MD5Update
.LVL48:
	.loc 1 216 0
	mov.n	a11, a3
	movi.n	a12, 0x10
	mov.n	a10, a6
	call8	MD5Update
.LVL49:
	.loc 1 217 0
	mov.n	a11, a6
.L65:
	mov.n	a10, a3
	call8	MD5Final
.LVL50:
	.loc 1 218 0
	j	.L54
.LVL51:
.L52:
	.loc 1 220 0
	l32i.n	a6, a4, 0
	movi.n	a7, 0x13
	bgeu	a7, a6, .L58
	.loc 1 225 0
	movi.n	a6, 0x14
	s32i.n	a6, a4, 0
	.loc 1 227 0
	addi.n	a6, a2, 4
	mov.n	a11, a6
	mov.n	a10, a3
	call8	SHA1Final
.LVL52:
	.loc 1 229 0
	l32i	a7, a2, 160
	addi	a11, a2, 96
	mov.n	a12, a7
	mov.n	a10, sp
	call8	memcpy
.LVL53:
	.loc 1 230 0
	movi.n	a4, 0x40
.LVL54:
	sub	a12, a4, a7
	mov.n	a11, a5
	add.n	a10, sp, a7
	call8	memset
.LVL55:
	mov.n	a5, sp
	.loc 1 233 0
	movi.n	a7, 0x5c
.LVL56:
.L59:
	.loc 1 233 0 is_stmt 0 discriminator 3
	l8ui	a8, a5, 0
	xor	a8, a8, a7
	s8i	a8, a5, 0
	addi.n	a5, a5, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L59
	.loc 1 234 0 is_stmt 1
	mov.n	a10, a6
	call8	SHA1Init
.LVL57:
	.loc 1 235 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a6
	call8	SHA1Update
.LVL58:
	.loc 1 236 0
	mov.n	a11, a3
	movi.n	a12, 0x14
	mov.n	a10, a6
	call8	SHA1Update
.LVL59:
	.loc 1 237 0
	mov.n	a11, a6
.L64:
	mov.n	a10, a3
	call8	SHA1Final
.LVL60:
	.loc 1 238 0
	j	.L54
.LVL61:
.L63:
	.loc 1 262 0
	mov.n	a10, a2
	call8	free
.LVL62:
	.loc 1 263 0
	movi.n	a5, -1
.LVL63:
.L45:
	.loc 1 269 0
	mov.n	a2, a5
.LVL64:
	retw.n
.LFE3:
	.size	crypto_hash_finish, .-crypto_hash_finish
	.section	.text.crypto_global_init,"ax",@progbits
	.align	4
	.global	crypto_global_init
	.type	crypto_global_init, @function
crypto_global_init:
.LFB4:
	.loc 1 273 0
	entry	sp, 32
.LCFI3:
	.loc 1 275 0
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	crypto_global_init, .-crypto_global_init
	.section	.text.crypto_global_deinit,"ax",@progbits
	.align	4
	.global	crypto_global_deinit
	.type	crypto_global_deinit, @function
crypto_global_deinit:
.LFB5:
	.loc 1 279 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE5:
	.size	crypto_global_deinit, .-crypto_global_deinit
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
	.uleb128 0x80
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
	.uleb128 0x20
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
	.uleb128 0x60
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/sha1_i.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/md5_i.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/crypto.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7e4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.string	"u32"
	.byte	0x5
	.byte	0xa6
	.4byte	0x7e
	.uleb128 0x5
	.string	"u8"
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0xa9
	.4byte	0xfa
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5c
	.byte	0x6
	.byte	0x12
	.4byte	0x12b
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x13
	.4byte	0x12b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x14
	.4byte	0x13b
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x15
	.4byte	0x14b
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xb0
	.4byte	0x13b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0xb0
	.4byte	0x14b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x37
	.4byte	0x15b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x58
	.byte	0x7
	.byte	0x12
	.4byte	0x18b
	.uleb128 0xc
	.string	"buf"
	.byte	0x7
	.byte	0x13
	.4byte	0x18b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x14
	.4byte	0x13b
	.byte	0x10
	.uleb128 0xc
	.string	"in"
	.byte	0x7
	.byte	0x15
	.4byte	0x19b
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0xb0
	.4byte	0x19b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x1ab
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x5c
	.byte	0x1
	.byte	0x18
	.4byte	0x1ca
	.uleb128 0xe
	.string	"md5"
	.byte	0x1
	.byte	0x19
	.4byte	0x15b
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.4byte	0xfa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0xa4
	.byte	0x1
	.byte	0x16
	.4byte	0x205
	.uleb128 0xc
	.string	"alg"
	.byte	0x1
	.byte	0x17
	.4byte	0xc5
	.byte	0
	.uleb128 0xc
	.string	"u"
	.byte	0x1
	.byte	0x1e
	.4byte	0x1ab
	.byte	0x4
	.uleb128 0xc
	.string	"key"
	.byte	0x1
	.byte	0x1f
	.4byte	0x19b
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x20
	.4byte	0x89
	.byte	0xa0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.4byte	0x4a6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a6
	.uleb128 0x11
	.string	"alg"
	.byte	0x1
	.byte	0x24
	.4byte	0xc5
	.4byte	.LLST0
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x24
	.4byte	0x4ac
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x25
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x27
	.4byte	0x4a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x28
	.4byte	0x19b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.string	"tk"
	.byte	0x1
	.byte	0x29
	.4byte	0x4b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x77d
	.4byte	0x29a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x788
	.4byte	0x2ae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x793
	.4byte	0x2c2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0x788
	.4byte	0x2d6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x79e
	.4byte	0x2f6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x7a9
	.4byte	0x310
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x7b4
	.4byte	0x331
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x7b4
	.4byte	0x352
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x7bd
	.4byte	0x37a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x8
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x788
	.4byte	0x38e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x79e
	.4byte	0x3af
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x793
	.4byte	0x3c3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x7c6
	.4byte	0x3e3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0x7d1
	.4byte	0x3fd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0x7b4
	.4byte	0x41e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x7b4
	.4byte	0x43f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x7bd
	.4byte	0x467
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x8
	.byte	0x40
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x793
	.4byte	0x47b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0x7c6
	.4byte	0x49c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x7dc
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x19
	.byte	0x4
	.4byte	0x4b2
	.uleb128 0x1a
	.4byte	0xbb
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x4c7
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x82
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x82
	.4byte	0x4a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x82
	.4byte	0x4ac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x82
	.4byte	0x89
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x79e
	.4byte	0x517
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0x7c6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x749
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a6
	.4byte	.LLST4
	.uleb128 0x11
	.string	"mac"
	.byte	0x1
	.byte	0x9c
	.4byte	0x749
	.4byte	.LLST5
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x9c
	.4byte	0x74f
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9e
	.4byte	0x19b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x7dc
	.4byte	0x59e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0x7a9
	.4byte	0x5b8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0x7b4
	.4byte	0x5da
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL45
	.4byte	0x7bd
	.4byte	0x603
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0x788
	.4byte	0x617
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL48
	.4byte	0x79e
	.4byte	0x638
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0x79e
	.4byte	0x657
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL50
	.4byte	0x7a9
	.4byte	0x66b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL52
	.4byte	0x7d1
	.4byte	0x685
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0x7b4
	.4byte	0x6a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL55
	.4byte	0x7bd
	.4byte	0x6d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL57
	.4byte	0x793
	.4byte	0x6e4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0x7c6
	.4byte	0x705
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL59
	.4byte	0x7c6
	.4byte	0x724
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x16
	.4byte	.LVL60
	.4byte	0x7d1
	.4byte	0x738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL62
	.4byte	0x7dc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x19
	.byte	0x4
	.4byte	0x89
	.uleb128 0x1f
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x110
	.4byte	0x4c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x116
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x18
	.uleb128 0x21
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x18
	.uleb128 0x21
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x19
	.uleb128 0x21
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x1b
	.uleb128 0x22
	.4byte	.LASF40
	.4byte	.LASF40
	.uleb128 0x22
	.4byte	.LASF41
	.4byte	.LASF41
	.uleb128 0x21
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x19
	.uleb128 0x21
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x1a
	.uleb128 0x21
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x5a
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL6-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL18-1
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
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
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL34
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"count"
.LASF36:
	.string	"MD5Init"
.LASF11:
	.string	"size_t"
.LASF4:
	.string	"__uint8_t"
.LASF50:
	.string	"crypto_global_init"
.LASF21:
	.string	"CRYPTO_HASH_ALG_HMAC_SHA256"
.LASF8:
	.string	"long long unsigned int"
.LASF32:
	.string	"data"
.LASF16:
	.string	"CRYPTO_HASH_ALG_MD5"
.LASF33:
	.string	"crypto_hash_init"
.LASF20:
	.string	"CRYPTO_HASH_ALG_SHA256"
.LASF44:
	.string	"free"
.LASF37:
	.string	"SHA1Init"
.LASF46:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/crypto_internal.c"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"SHA1Update"
.LASF28:
	.string	"sha1"
.LASF49:
	.string	"crypto_hash_update"
.LASF22:
	.string	"state"
.LASF27:
	.string	"bits"
.LASF12:
	.string	"long int"
.LASF48:
	.string	"crypto_hash_alg"
.LASF47:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF30:
	.string	"key_len"
.LASF5:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF14:
	.string	"long unsigned int"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"SHA1Context"
.LASF17:
	.string	"CRYPTO_HASH_ALG_SHA1"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"MD5Final"
.LASF29:
	.string	"crypto_hash"
.LASF18:
	.string	"CRYPTO_HASH_ALG_HMAC_MD5"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF15:
	.string	"char"
.LASF34:
	.string	"crypto_hash_finish"
.LASF24:
	.string	"buffer"
.LASF40:
	.string	"memcpy"
.LASF26:
	.string	"MD5Context"
.LASF38:
	.string	"MD5Update"
.LASF41:
	.string	"memset"
.LASF51:
	.string	"crypto_global_deinit"
.LASF35:
	.string	"calloc"
.LASF9:
	.string	"uint8_t"
.LASF19:
	.string	"CRYPTO_HASH_ALG_HMAC_SHA1"
.LASF43:
	.string	"SHA1Final"
.LASF31:
	.string	"k_pad"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
