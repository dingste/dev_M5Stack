	.file	"ssl_cache.c"
	.text
.Ltext0:
	.section	.text.mbedtls_ssl_cache_init,"ax",@progbits
	.literal_position
	.literal .LC0, 86400
	.align	4
	.global	mbedtls_ssl_cache_init
	.type	mbedtls_ssl_cache_init, @function
mbedtls_ssl_cache_init:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ssl_cache.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 48 0
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	.loc 1 50 0
	l32r	a8, .LC0
	s32i.n	a8, a2, 4
	.loc 1 51 0
	movi.n	a8, 0x32
	s32i.n	a8, a2, 8
	retw.n
.LFE17:
	.size	mbedtls_ssl_cache_init, .-mbedtls_ssl_cache_init
	.section	.text.mbedtls_ssl_cache_get,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_cache_get
	.type	mbedtls_ssl_cache_get, @function
mbedtls_ssl_cache_get:
.LFB18:
	.loc 1 59 0
.LVL2:
	entry	sp, 48
.LCFI1:
.LVL3:
	.loc 1 62 0
	movi.n	a10, 0
	call8	time
.LVL4:
	mov.n	a6, a10
.LVL5:
	.loc 1 72 0
	l32i.n	a4, a2, 0
.LVL6:
	.loc 1 91 0
	addi	a7, a3, 16
	.loc 1 75 0
	j	.L3
.LVL7:
.L10:
	.loc 1 81 0
	l32i.n	a5, a2, 4
	.loc 1 78 0
	l32i	a9, a4, 144
.LVL8:
	.loc 1 81 0
	beqz.n	a5, .L4
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32i.n	a8, a4, 0
	sub	a8, a6, a8
	blt	a5, a8, .L5
.L4:
	.loc 1 86 0 is_stmt 1
	l32i.n	a8, a3, 4
	l32i.n	a5, a4, 8
	bne	a8, a5, .L5
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 8
	l32i.n	a5, a4, 12
	bne	a8, a5, .L5
	.loc 1 88 0 is_stmt 1
	l32i.n	a12, a3, 12
	.loc 1 87 0
	l32i.n	a5, a4, 16
	bne	a12, a5, .L5
	.loc 1 91 0
	addi	a11, a4, 20
	mov.n	a10, a7
	s32i.n	a9, sp, 0
	call8	memcmp
.LVL9:
	mov.n	a5, a10
	l32i.n	a9, sp, 0
.LVL10:
	bnez.n	a10, .L5
	.loc 1 95 0
	movi.n	a12, 0x30
	addi	a11, a4, 52
	add.n	a10, a3, a12
	call8	memcpy
.LVL11:
	.loc 1 97 0
	l32i	a2, a4, 104
.LVL12:
	s32i	a2, a3, 100
	.loc 1 103 0
	l32i	a2, a4, 140
	bnez.n	a2, .L6
.L9:
	.loc 1 124 0
	movi.n	a2, 0
	retw.n
.L6:
	.loc 1 105 0
	movi	a11, 0x138
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL13:
	s32i	a10, a3, 96
	bnez.n	a10, .L8
	j	.L18
.L8:
	.loc 1 112 0
	call8	mbedtls_x509_crt_init
.LVL14:
	.loc 1 113 0
	l32i	a12, a4, 136
	l32i	a11, a4, 140
	l32i	a10, a3, 96
	call8	mbedtls_x509_crt_parse
.LVL15:
	beqz.n	a10, .L9
	.loc 1 116 0
	l32i	a10, a3, 96
	call8	mbedtls_free
.LVL16:
	.loc 1 117 0
	s32i	a5, a3, 96
.LVL17:
.L18:
	.loc 1 118 0
	movi.n	a2, 1
	.loc 1 119 0
	retw.n
.LVL18:
.L5:
	.loc 1 59 0
	mov.n	a4, a9
.LVL19:
.L3:
	.loc 1 75 0
	bnez.n	a4, .L10
	j	.L18
.L7:
.LFE18:
	.size	mbedtls_ssl_cache_get, .-mbedtls_ssl_cache_get
	.section	.text.mbedtls_ssl_cache_set,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_cache_set
	.type	mbedtls_ssl_cache_set, @function
mbedtls_ssl_cache_set:
.LFB19:
	.loc 1 138 0
.LVL20:
	entry	sp, 48
.LCFI2:
.LVL21:
	.loc 1 141 0
	movi.n	a10, 0
	call8	time
.LVL22:
	.loc 1 146 0
	movi.n	a6, 0
	.loc 1 141 0
	mov.n	a8, a10
.LVL23:
	.loc 1 153 0
	l32i.n	a4, a2, 0
.LVL24:
	.loc 1 154 0
	mov.n	a7, a6
	.loc 1 142 0
	mov.n	a5, a6
	.loc 1 141 0
	mov.n	a9, a6
	.loc 1 169 0
	addi	a13, a3, 16
	.loc 1 156 0
	j	.L20
.LVL25:
.L25:
	.loc 1 161 0
	l32i.n	a10, a2, 4
	.loc 1 158 0
	addi.n	a6, a6, 1
.LVL26:
	.loc 1 161 0
	beqz.n	a10, .L21
	.loc 1 161 0 is_stmt 0 discriminator 1
	l32i.n	a7, a4, 0
	sub	a7, a8, a7
	bge	a10, a7, .L21
	.loc 1 164 0 is_stmt 1
	s32i.n	a8, a4, 0
	.loc 1 165 0
	j	.L32
.L21:
	.loc 1 169 0
	l32i.n	a12, a4, 16
	mov.n	a10, a13
	addi	a11, a4, 20
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 0
	s32i.n	a13, sp, 4
	call8	memcmp
.LVL27:
	l32i.n	a8, sp, 8
.LVL28:
	l32i.n	a9, sp, 0
.LVL29:
	l32i.n	a13, sp, 4
	beqz.n	a10, .L32
	l32i.n	a7, a4, 0
	.loc 1 173 0
	beqz.n	a9, .L23
	.loc 1 173 0 is_stmt 0 discriminator 1
	bge	a7, a9, .L24
.L23:
	.loc 1 175 0 is_stmt 1
	mov.n	a9, a7
.LVL30:
	mov.n	a5, a4
.LVL31:
.L24:
	.loc 1 181 0
	mov.n	a7, a4
	l32i	a4, a4, 144
.LVL32:
.L20:
	.loc 1 156 0
	bnez.n	a4, .L25
	j	.L56
.LVL33:
.L33:
	.loc 1 192 0
	bnez.n	a5, .L27
.LVL34:
.L29:
	.loc 1 194 0
	movi.n	a2, 1
	retw.n
.LVL35:
.L57:
	.loc 1 224 0
	movi	a11, 0x94
	movi.n	a10, 1
	s32i.n	a8, sp, 8
	call8	mbedtls_calloc
.LVL36:
	mov.n	a5, a10
.LVL37:
	.loc 1 225 0
	l32i.n	a8, sp, 8
	beqz.n	a10, .L29
	.loc 1 231 0
	bnez.n	a7, .L30
	.loc 1 232 0
	s32i.n	a10, a2, 0
	j	.L27
.L30:
	.loc 1 234 0
	s32i	a10, a7, 144
.LVL38:
.L27:
	.loc 1 238 0
	s32i.n	a8, a5, 0
	mov.n	a4, a5
.LVL39:
.L32:
	.loc 1 242 0
	movi	a12, 0x80
	mov.n	a11, a3
	addi.n	a10, a4, 4
	call8	memcpy
.LVL40:
	.loc 1 248 0
	l32i	a10, a4, 140
	beqz.n	a10, .L31
	.loc 1 250 0
	call8	mbedtls_free
.LVL41:
	.loc 1 251 0
	movi	a10, 0x84
	movi.n	a12, 0xc
	movi.n	a11, 0
	add.n	a10, a4, a10
	call8	memset
.LVL42:
.L31:
.L28:
	.loc 1 257 0
	l32i	a5, a3, 96
	.loc 1 274 0
	movi.n	a2, 0
.LVL43:
	.loc 1 257 0
	beq	a5, a2, .L48
	.loc 1 259 0
	l32i.n	a11, a5, 4
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL44:
	s32i	a10, a4, 140
	.loc 1 260 0
	beq	a10, a2, .L29
	.loc 1 266 0
	l32i	a5, a3, 96
	l32i.n	a12, a5, 4
	l32i.n	a11, a5, 8
	call8	memcpy
.LVL45:
	.loc 1 268 0
	l32i	a3, a3, 96
.LVL46:
	l32i.n	a3, a3, 4
	.loc 1 270 0
	s32i	a2, a4, 100
	.loc 1 268 0
	s32i	a3, a4, 136
	retw.n
.LVL47:
.L56:
	.loc 1 190 0
	l32i.n	a4, a2, 8
.LVL48:
	bge	a6, a4, .L33
	j	.L57
.LVL49:
.L48:
	.loc 1 283 0
	retw.n
.LFE19:
	.size	mbedtls_ssl_cache_set, .-mbedtls_ssl_cache_set
	.section	.text.mbedtls_ssl_cache_set_timeout,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_cache_set_timeout
	.type	mbedtls_ssl_cache_set_timeout, @function
mbedtls_ssl_cache_set_timeout:
.LFB20:
	.loc 1 287 0
.LVL50:
	entry	sp, 32
.LCFI3:
.LVL51:
	.loc 1 290 0
	movi.n	a8, 0
	max	a3, a3, a8
.LVL52:
	s32i.n	a3, a2, 4
	retw.n
.LFE20:
	.size	mbedtls_ssl_cache_set_timeout, .-mbedtls_ssl_cache_set_timeout
	.section	.text.mbedtls_ssl_cache_set_max_entries,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_cache_set_max_entries
	.type	mbedtls_ssl_cache_set_max_entries, @function
mbedtls_ssl_cache_set_max_entries:
.LFB21:
	.loc 1 295 0
.LVL53:
	entry	sp, 32
.LCFI4:
.LVL54:
	.loc 1 298 0
	movi.n	a8, 0
	max	a3, a3, a8
.LVL55:
	s32i.n	a3, a2, 8
	retw.n
.LFE21:
	.size	mbedtls_ssl_cache_set_max_entries, .-mbedtls_ssl_cache_set_max_entries
	.section	.text.mbedtls_ssl_cache_free,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_cache_free
	.type	mbedtls_ssl_cache_free, @function
mbedtls_ssl_cache_free:
.LFB22:
	.loc 1 302 0
.LVL56:
	entry	sp, 32
.LCFI5:
	.loc 1 305 0
	l32i.n	a3, a2, 0
.LVL57:
	.loc 1 307 0
	j	.L61
.L62:
.LVL58:
	.loc 1 312 0
	addi.n	a10, a3, 4
	.loc 1 310 0
	l32i	a4, a3, 144
.LVL59:
	.loc 1 312 0
	call8	mbedtls_ssl_session_free
.LVL60:
	.loc 1 315 0
	l32i	a10, a3, 140
	call8	mbedtls_free
.LVL61:
	.loc 1 318 0
	mov.n	a10, a3
	call8	mbedtls_free
.LVL62:
	.loc 1 310 0
	mov.n	a3, a4
.LVL63:
.L61:
	.loc 1 307 0
	bnez.n	a3, .L62
	.loc 1 324 0
	s32i.n	a3, a2, 0
	retw.n
.LFE22:
	.size	mbedtls_ssl_cache_free, .-mbedtls_ssl_cache_free
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/time.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xc
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7a
	.4byte	0x73
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x35
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x3a
	.4byte	0x101
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x45
	.4byte	0xb8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x4e
	.4byte	0x143
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x56
	.4byte	0x10c
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x7d
	.4byte	0x159
	.uleb128 0x9
	.4byte	.LASF35
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x8
	.byte	0x82
	.4byte	0x183
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x84
	.4byte	0x183
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x85
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x189
	.uleb128 0xc
	.4byte	0x14e
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x86
	.4byte	0x15e
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xc
	.byte	0x9
	.byte	0x86
	.4byte	0x1c8
	.uleb128 0xd
	.string	"tag"
	.byte	0x9
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x9
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.string	"p"
	.byte	0x9
	.byte	0x8a
	.4byte	0x8a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x9
	.byte	0x8c
	.4byte	0x199
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x10
	.byte	0x9
	.byte	0x9c
	.4byte	0x1f8
	.uleb128 0xd
	.string	"buf"
	.byte	0x9
	.byte	0x9e
	.4byte	0x1c8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x9f
	.4byte	0x1f8
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x9
	.byte	0xa1
	.4byte	0x1d3
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x20
	.byte	0x9
	.byte	0xa6
	.4byte	0x246
	.uleb128 0xd
	.string	"oid"
	.byte	0x9
	.byte	0xa8
	.4byte	0x1c8
	.byte	0
	.uleb128 0xd
	.string	"val"
	.byte	0x9
	.byte	0xa9
	.4byte	0x1c8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0xaa
	.4byte	0x246
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x209
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0xad
	.4byte	0x209
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0xbd
	.4byte	0x1c8
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0xc8
	.4byte	0x24c
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xa
	.byte	0xcd
	.4byte	0x1fe
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x18
	.byte	0xa
	.byte	0xd0
	.4byte	0x2cd
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xa
	.byte	0xd2
	.4byte	0x3e
	.byte	0
	.uleb128 0xd
	.string	"mon"
	.byte	0xa
	.byte	0xd2
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xd
	.string	"day"
	.byte	0xa
	.byte	0xd2
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xa
	.byte	0xd3
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xd
	.string	"min"
	.byte	0xa
	.byte	0xd3
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xd
	.string	"sec"
	.byte	0xa
	.byte	0xd3
	.4byte	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0xd5
	.4byte	0x278
	.uleb128 0xe
	.4byte	.LASF50
	.2byte	0x138
	.byte	0xb
	.byte	0x35
	.4byte	0x432
	.uleb128 0xd
	.string	"raw"
	.byte	0xb
	.byte	0x37
	.4byte	0x257
	.byte	0
	.uleb128 0xd
	.string	"tbs"
	.byte	0xb
	.byte	0x38
	.4byte	0x257
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xb
	.byte	0x3a
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xb
	.byte	0x3b
	.4byte	0x257
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xb
	.byte	0x3c
	.4byte	0x257
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xb
	.byte	0x3e
	.4byte	0x257
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x3f
	.4byte	0x257
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x41
	.4byte	0x262
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xb
	.byte	0x42
	.4byte	0x262
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xb
	.byte	0x44
	.4byte	0x2cd
	.byte	0x8c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xb
	.byte	0x45
	.4byte	0x2cd
	.byte	0xa4
	.uleb128 0xd
	.string	"pk"
	.byte	0xb
	.byte	0x47
	.4byte	0x18e
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xb
	.byte	0x49
	.4byte	0x257
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xb
	.byte	0x4a
	.4byte	0x257
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xb
	.byte	0x4b
	.4byte	0x257
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xb
	.byte	0x4c
	.4byte	0x26d
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xb
	.byte	0x4e
	.4byte	0x3e
	.byte	0xf8
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xb
	.byte	0x4f
	.4byte	0x3e
	.byte	0xfc
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0xb
	.byte	0x50
	.4byte	0x3e
	.2byte	0x100
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xb
	.byte	0x52
	.4byte	0x30
	.2byte	0x104
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0xb
	.byte	0x54
	.4byte	0x26d
	.2byte	0x108
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0xb
	.byte	0x56
	.4byte	0x4c
	.2byte	0x118
	.uleb128 0x10
	.string	"sig"
	.byte	0xb
	.byte	0x58
	.4byte	0x257
	.2byte	0x11c
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0xb
	.byte	0x59
	.4byte	0x101
	.2byte	0x128
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xb
	.byte	0x5a
	.4byte	0x143
	.2byte	0x12c
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0xb
	.byte	0x5b
	.4byte	0x81
	.2byte	0x130
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0xb
	.byte	0x5d
	.4byte	0x432
	.2byte	0x134
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d8
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5f
	.4byte	0x2d8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x438
	.uleb128 0x11
	.4byte	0x4c
	.4byte	0x459
	.uleb128 0x12
	.4byte	0x7a
	.byte	0x2f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0xc
	.2byte	0x22f
	.4byte	0x465
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x80
	.byte	0xc
	.2byte	0x315
	.4byte	0x528
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x318
	.4byte	0xa2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xc
	.2byte	0x31a
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xc
	.2byte	0x31b
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xc
	.2byte	0x31c
	.4byte	0x25
	.byte	0xc
	.uleb128 0x16
	.string	"id"
	.byte	0xc
	.2byte	0x31d
	.4byte	0x528
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xc
	.2byte	0x31e
	.4byte	0x449
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xc
	.2byte	0x321
	.4byte	0x443
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xc
	.2byte	0x323
	.4byte	0xad
	.byte	0x64
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xc
	.2byte	0x326
	.4byte	0x8a
	.byte	0x68
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xc
	.2byte	0x327
	.4byte	0x25
	.byte	0x6c
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0xc
	.2byte	0x328
	.4byte	0xad
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x32c
	.4byte	0x4c
	.byte	0x74
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xc
	.2byte	0x330
	.4byte	0x3e
	.byte	0x78
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xc
	.2byte	0x334
	.4byte	0x3e
	.byte	0x7c
	.byte	0
	.uleb128 0x11
	.4byte	0x4c
	.4byte	0x538
	.uleb128 0x12
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x459
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0xc
	.4byte	0x459
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xd
	.byte	0x3d
	.4byte	0x554
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0xd
	.byte	0x52
	.4byte	0x585
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xd
	.byte	0x54
	.4byte	0x5cd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xd
	.byte	0x55
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xd
	.byte	0x56
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0x3e
	.4byte	0x590
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x94
	.byte	0xd
	.byte	0x43
	.4byte	0x5cd
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xd
	.byte	0x46
	.4byte	0xa2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0xd
	.byte	0x48
	.4byte	0x459
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xd
	.byte	0x4a
	.4byte	0x257
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xd
	.byte	0x4c
	.4byte	0x5cd
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x585
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x610
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x2e
	.4byte	0x610
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x95a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x549
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3a
	.4byte	0x3e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71d
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3a
	.4byte	0x81
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3a
	.4byte	0x538
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x3c
	.4byte	0x3e
	.byte	0x1
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.byte	0x3e
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0x1
	.byte	0x40
	.4byte	0x610
	.4byte	.LLST1
	.uleb128 0x20
	.string	"cur"
	.byte	0x1
	.byte	0x41
	.4byte	0x5cd
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF96
	.byte	0x1
	.byte	0x41
	.4byte	0x5cd
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x1
	.byte	0x80
	.4byte	.L7
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x963
	.4byte	0x6ad
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL9
	.4byte	0x96e
	.4byte	0x6c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x979
	.4byte	0x6e7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL13
	.4byte	0x982
	.4byte	0x701
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x138
	.byte	0
	.uleb128 0x23
	.4byte	.LVL14
	.4byte	0x98d
	.uleb128 0x23
	.4byte	.LVL15
	.4byte	0x999
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x9a5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x89
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87e
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0x89
	.4byte	0x81
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0x89
	.4byte	0x53e
	.4byte	.LLST5
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x8b
	.4byte	0x3e
	.byte	0x1
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x8d
	.4byte	0xa2
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x8d
	.4byte	0xa2
	.4byte	.LLST7
	.uleb128 0x20
	.string	"old"
	.byte	0x1
	.byte	0x8e
	.4byte	0x5cd
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0x1
	.byte	0x90
	.4byte	0x610
	.4byte	.LLST9
	.uleb128 0x20
	.string	"cur"
	.byte	0x1
	.byte	0x91
	.4byte	0x5cd
	.4byte	.LLST10
	.uleb128 0x20
	.string	"prv"
	.byte	0x1
	.byte	0x91
	.4byte	0x5cd
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x92
	.4byte	0x3e
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x114
	.4byte	.L28
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0x963
	.4byte	0x7e6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0x96e
	.4byte	0x800
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL36
	.4byte	0x982
	.4byte	0x819
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x94
	.byte	0
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x979
	.4byte	0x839
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x9a5
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0x95a
	.4byte	0x861
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 132
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0x982
	.4byte	0x874
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x979
	.byte	0
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b3
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x11e
	.4byte	0x610
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x11e
	.4byte	0x3e
	.4byte	.LLST13
	.byte	0
	.uleb128 0x25
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x126
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e8
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x126
	.4byte	0x610
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.string	"max"
	.byte	0x1
	.2byte	0x126
	.4byte	0x3e
	.4byte	.LLST14
	.byte	0
	.uleb128 0x25
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x12d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95a
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x12d
	.4byte	0x610
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.string	"cur"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x5cd
	.4byte	.LLST15
	.uleb128 0x29
	.string	"prv"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x5cd
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LVL60
	.4byte	0x9b0
	.4byte	0x940
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0x9a5
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x9a5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF108
	.4byte	.LASF108
	.uleb128 0x2b
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xe
	.byte	0x35
	.uleb128 0x2b
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xf
	.byte	0x16
	.uleb128 0x2a
	.4byte	.LASF109
	.4byte	.LASF109
	.uleb128 0x2b
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x10
	.byte	0x7f
	.uleb128 0x2c
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x20a
	.uleb128 0x2c
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x108
	.uleb128 0x2b
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x10
	.byte	0x80
	.uleb128 0x2c
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xc
	.2byte	0xcb8
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x74
	.sleb128 144
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"count"
.LASF62:
	.string	"v3_ext"
.LASF34:
	.string	"mbedtls_pk_type_t"
.LASF5:
	.string	"size_t"
.LASF75:
	.string	"ciphersuite"
.LASF110:
	.string	"mbedtls_calloc"
.LASF98:
	.string	"mbedtls_ssl_cache_set"
.LASF83:
	.string	"ticket_lifetime"
.LASF58:
	.string	"valid_from"
.LASF39:
	.string	"mbedtls_asn1_buf"
.LASF59:
	.string	"valid_to"
.LASF96:
	.string	"entry"
.LASF8:
	.string	"long long unsigned int"
.LASF45:
	.string	"mbedtls_x509_name"
.LASF53:
	.string	"sig_oid"
.LASF92:
	.string	"timestamp"
.LASF117:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF35:
	.string	"mbedtls_pk_info_t"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF99:
	.string	"oldest"
.LASF48:
	.string	"year"
.LASF9:
	.string	"long int"
.LASF87:
	.string	"mbedtls_ssl_cache_context"
.LASF21:
	.string	"MBEDTLS_MD_SHA224"
.LASF104:
	.string	"mbedtls_ssl_cache_set_max_entries"
.LASF109:
	.string	"memcpy"
.LASF97:
	.string	"mbedtls_ssl_cache_get"
.LASF77:
	.string	"id_len"
.LASF44:
	.string	"mbedtls_x509_buf"
.LASF76:
	.string	"compression"
.LASF6:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF68:
	.string	"ext_key_usage"
.LASF116:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ssl_cache.c"
.LASF79:
	.string	"peer_cert"
.LASF111:
	.string	"mbedtls_x509_crt_init"
.LASF89:
	.string	"timeout"
.LASF115:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"mbedtls_ssl_cache_init"
.LASF25:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF95:
	.string	"data"
.LASF81:
	.string	"ticket"
.LASF67:
	.string	"key_usage"
.LASF29:
	.string	"MBEDTLS_PK_ECKEY"
.LASF63:
	.string	"subject_alt_names"
.LASF105:
	.string	"mbedtls_ssl_cache_free"
.LASF71:
	.string	"sig_pk"
.LASF80:
	.string	"verify_result"
.LASF61:
	.string	"subject_id"
.LASF85:
	.string	"trunc_hmac"
.LASF31:
	.string	"MBEDTLS_PK_ECDSA"
.LASF91:
	.string	"mbedtls_ssl_cache_entry"
.LASF36:
	.string	"pk_info"
.LASF10:
	.string	"sizetype"
.LASF69:
	.string	"ns_cert_type"
.LASF78:
	.string	"master"
.LASF24:
	.string	"MBEDTLS_MD_SHA512"
.LASF90:
	.string	"max_entries"
.LASF64:
	.string	"ext_types"
.LASF20:
	.string	"MBEDTLS_MD_SHA1"
.LASF14:
	.string	"mbedtls_time_t"
.LASF82:
	.string	"ticket_len"
.LASF93:
	.string	"session"
.LASF103:
	.string	"mbedtls_ssl_cache_set_timeout"
.LASF49:
	.string	"hour"
.LASF38:
	.string	"mbedtls_pk_context"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF112:
	.string	"mbedtls_x509_crt_parse"
.LASF114:
	.string	"mbedtls_ssl_session_free"
.LASF22:
	.string	"MBEDTLS_MD_SHA256"
.LASF40:
	.string	"mbedtls_asn1_sequence"
.LASF13:
	.string	"time_t"
.LASF72:
	.string	"sig_opts"
.LASF3:
	.string	"unsigned char"
.LASF51:
	.string	"version"
.LASF4:
	.string	"short int"
.LASF55:
	.string	"subject_raw"
.LASF54:
	.string	"issuer_raw"
.LASF86:
	.string	"encrypt_then_mac"
.LASF101:
	.string	"exit"
.LASF88:
	.string	"chain"
.LASF37:
	.string	"pk_ctx"
.LASF23:
	.string	"MBEDTLS_MD_SHA384"
.LASF30:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF11:
	.string	"long unsigned int"
.LASF12:
	.string	"char"
.LASF33:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF70:
	.string	"sig_md"
.LASF28:
	.string	"MBEDTLS_PK_RSA"
.LASF50:
	.string	"mbedtls_x509_crt"
.LASF113:
	.string	"mbedtls_free"
.LASF107:
	.string	"memcmp"
.LASF17:
	.string	"MBEDTLS_MD_MD2"
.LASF18:
	.string	"MBEDTLS_MD_MD4"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF1:
	.string	"short unsigned int"
.LASF32:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF106:
	.string	"time"
.LASF56:
	.string	"issuer"
.LASF15:
	.string	"uint32_t"
.LASF108:
	.string	"memset"
.LASF42:
	.string	"mbedtls_asn1_named_data"
.LASF57:
	.string	"subject"
.LASF84:
	.string	"mfl_code"
.LASF27:
	.string	"MBEDTLS_PK_NONE"
.LASF46:
	.string	"mbedtls_x509_sequence"
.LASF52:
	.string	"serial"
.LASF60:
	.string	"issuer_id"
.LASF43:
	.string	"next_merged"
.LASF41:
	.string	"next"
.LASF65:
	.string	"ca_istrue"
.LASF66:
	.string	"max_pathlen"
.LASF74:
	.string	"start"
.LASF73:
	.string	"mbedtls_ssl_session"
.LASF94:
	.string	"cache"
.LASF47:
	.string	"mbedtls_x509_time"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
