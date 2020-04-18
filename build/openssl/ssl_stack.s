	.file	"ssl_stack.c"
	.text
.Ltext0:
	.section	.text.OPENSSL_sk_new,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_new
	.type	OPENSSL_sk_new, @function
OPENSSL_sk_new:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/openssl/library/ssl_stack.c"
	.loc 1 29 1 view -0
	.loc 1 29 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 30 5 is_stmt 1 view .LVU2
	.loc 1 31 5 view .LVU3
	.loc 1 33 5 view .LVU4
	.loc 1 33 13 is_stmt 0 view .LVU5
	movi.n	a10, 0xc
	call8	ssl_mem_zalloc
.LVL1:
	.loc 1 29 1 view .LVU6
	mov.n	a4, a2
	.loc 1 33 13 view .LVU7
	mov.n	a2, a10
.LVL2:
	.loc 1 34 5 is_stmt 1 view .LVU8
	.loc 1 34 8 is_stmt 0 view .LVU9
	beqz.n	a10, .L1
	.loc 1 39 5 is_stmt 1 view .LVU10
	.loc 1 39 12 is_stmt 0 view .LVU11
	movi.n	a10, 0x10
	call8	ssl_mem_zalloc
.LVL3:
	mov.n	a3, a10
.LVL4:
	.loc 1 40 5 is_stmt 1 view .LVU12
	.loc 1 40 8 is_stmt 0 view .LVU13
	bnez.n	a10, .L3
	.loc 1 41 9 is_stmt 1 view .LVU14
	.loc 1 42 9 view .LVU15
.LDL1:
	.loc 1 52 5 view .LVU16
	mov.n	a10, a2
	call8	free
.LVL5:
	.loc 1 54 11 is_stmt 0 view .LVU17
	mov.n	a2, a3
.LVL6:
	.loc 1 54 11 view .LVU18
	j	.L1
.LVL7:
.L3:
	.loc 1 45 5 is_stmt 1 view .LVU19
	.loc 1 46 22 is_stmt 0 view .LVU20
	movi.n	a3, 4
.LVL8:
	.loc 1 45 17 view .LVU21
	s32i.n	a10, a2, 0
	.loc 1 46 5 is_stmt 1 view .LVU22
	.loc 1 46 22 is_stmt 0 view .LVU23
	s32i.n	a3, a2, 4
	.loc 1 47 5 is_stmt 1 view .LVU24
	.loc 1 47 14 is_stmt 0 view .LVU25
	s32i.n	a4, a2, 8
	.loc 1 49 5 is_stmt 1 view .LVU26
.LVL9:
.L1:
	.loc 1 55 1 is_stmt 0 view .LVU27
	retw.n
.LFE0:
	.size	OPENSSL_sk_new, .-OPENSSL_sk_new
	.section	.text.OPENSSL_sk_new_null,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_new_null
	.type	OPENSSL_sk_new_null, @function
OPENSSL_sk_new_null:
.LFB1:
	.loc 1 61 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 62 5 view .LVU29
	.loc 1 62 12 is_stmt 0 view .LVU30
	movi.n	a10, 0
	call8	OPENSSL_sk_new
.LVL10:
	.loc 1 63 1 view .LVU31
	mov.n	a2, a10
	retw.n
.LFE1:
	.size	OPENSSL_sk_new_null, .-OPENSSL_sk_new_null
	.section	.text.OPENSSL_sk_free,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_free
	.type	OPENSSL_sk_free, @function
OPENSSL_sk_free:
.LVL11:
.LFB2:
	.loc 1 69 1 is_stmt 1 view -0
	.loc 1 69 1 is_stmt 0 view .LVU33
	entry	sp, 32
.LCFI2:
	.loc 1 70 5 is_stmt 1 view .LVU34
	.loc 1 72 5 view .LVU35
	l32i.n	a10, a2, 0
	call8	free
.LVL12:
	.loc 1 73 5 view .LVU36
	mov.n	a10, a2
	call8	free
.LVL13:
	.loc 1 74 1 is_stmt 0 view .LVU37
	retw.n
.LFE2:
	.size	OPENSSL_sk_free, .-OPENSSL_sk_free
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/esp-idf/components/openssl/include/internal/ssl_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/malloc.h"
	.file 10 "/home/dieter/Development/esp-idf/components/openssl/include/platform/ssl_port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xad1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0xc
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x27
	.byte	0xf
	.4byte	0x38
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x52
	.uleb128 0x6
	.4byte	0x59
	.uleb128 0x6
	.4byte	0x59
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.4byte	0x5f
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.byte	0x19
	.4byte	0x6c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0xc
	.byte	0x2
	.byte	0x59
	.byte	0x8
	.4byte	0x9f
	.uleb128 0xa
	.4byte	.LASF3
	.byte	0x2
	.byte	0x5b
	.byte	0xc
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5d
	.byte	0x9
	.4byte	0x52
	.byte	0x4
	.uleb128 0xb
	.string	"c"
	.byte	0x2
	.byte	0x5f
	.byte	0x19
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x4
	.byte	0x4
	.4byte	0xab
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0xc
	.4byte	0xab
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.4byte	0xb2
	.uleb128 0xc
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x52
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x102
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0xb9
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x25
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0x161
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0x132
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0x161
	.byte	0
	.uleb128 0x11
	.4byte	0xc0
	.4byte	0x171
	.uleb128 0x12
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x195
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x52
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0x13f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0x171
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x10e
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0xd2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x213
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x213
	.byte	0
	.uleb128 0xb
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x52
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x52
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x52
	.byte	0x10
	.uleb128 0xb
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x219
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x11
	.4byte	0x1ad
	.4byte	0x229
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x2ac
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x52
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x52
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x52
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x52
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x52
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x52
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x52
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x52
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2f1
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2f1
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x1ad
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x1ad
	.2byte	0x104
	.byte	0
	.uleb128 0x11
	.4byte	0xb7
	.4byte	0x301
	.uleb128 0x12
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x343
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x343
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x52
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x349
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x360
	.byte	0x88
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x301
	.uleb128 0x11
	.4byte	0x359
	.4byte	0x359
	.uleb128 0x12
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x35f
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2ac
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x38e
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x52
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x401
	.uleb128 0xb
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0xb
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x52
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0xe6
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0xe6
	.byte	0xe
	.uleb128 0xb
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x366
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x52
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x565
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0x38e
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x565
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x7a0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x7a0
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x7a0
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x52
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0xa5
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x52
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x52
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x908
	.byte	0x20
	.uleb128 0x19
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x90e
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x91f
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x52
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x52
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0xa5
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x925
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x92b
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0xa5
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x93c
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x343
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x301
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x761
	.byte	0xd8
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x7a0
	.byte	0xe4
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x948
	.byte	0xe8
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0xa5
	.byte	0xec
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x406
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x6ae
	.uleb128 0xb
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0xb
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x52
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0xe6
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0xe6
	.byte	0xe
	.uleb128 0xb
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x366
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x52
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x565
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0xb7
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x6cc
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6f0
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x714
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x72e
	.byte	0x30
	.uleb128 0xb
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x366
	.byte	0x34
	.uleb128 0xb
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0xd9
	.byte	0x3c
	.uleb128 0xb
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x52
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x734
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x744
	.byte	0x47
	.uleb128 0xb
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x366
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x52
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x11a
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x1a1
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x195
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x52
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x6cc
	.uleb128 0x6
	.4byte	0x565
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x6
	.4byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x6f0
	.uleb128 0x6
	.4byte	0x565
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x6
	.4byte	0xc7
	.uleb128 0x6
	.4byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6d2
	.uleb128 0x5
	.4byte	0x126
	.4byte	0x714
	.uleb128 0x6
	.4byte	0x565
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x6
	.4byte	0x126
	.uleb128 0x6
	.4byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6f6
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x72e
	.uleb128 0x6
	.4byte	0x565
	.uleb128 0x6
	.4byte	0xb7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x71a
	.uleb128 0x11
	.4byte	0xc0
	.4byte	0x744
	.uleb128 0x12
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	0xc0
	.4byte	0x754
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x56b
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x79a
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x79a
	.byte	0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x7a0
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x761
	.uleb128 0x4
	.byte	0x4
	.4byte	0x754
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ed
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ed
	.byte	0
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ed
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0xed
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0xfb
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	0xed
	.4byte	0x7fd
	.uleb128 0x12
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x844
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x213
	.byte	0
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x52
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x213
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x844
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x213
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8f3
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x195
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x195
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x195
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8f3
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x52
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x195
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x195
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x195
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x195
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x195
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	0xab
	.4byte	0x903
	.uleb128 0x12
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF135
	.uleb128 0x4
	.byte	0x4
	.4byte	0x903
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7fd
	.uleb128 0x1b
	.4byte	0x91f
	.uleb128 0x6
	.4byte	0x565
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x914
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7a6
	.uleb128 0x4
	.byte	0x4
	.4byte	0x229
	.uleb128 0x1b
	.4byte	0x93c
	.uleb128 0x6
	.4byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x942
	.uleb128 0x4
	.byte	0x4
	.4byte	0x931
	.uleb128 0x4
	.byte	0x4
	.4byte	0x84a
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x401
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x401
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x401
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x565
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0xa5
	.uleb128 0x11
	.4byte	0xcd
	.4byte	0x99e
	.uleb128 0x12
	.4byte	0x25
	.byte	0x27
	.byte	0
	.uleb128 0xc
	.4byte	0x98e
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x8
	.byte	0x8e
	.byte	0x1a
	.4byte	0x99e
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ed
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x44
	.byte	0x25
	.4byte	0x9ed
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0xabc
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xabc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x60
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.byte	0x3c
	.byte	0x10
	.4byte	0x9ed
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1d
	.uleb128 0x21
	.4byte	.LVL10
	.4byte	0xa1d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.4byte	0x9ed
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabc
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.byte	0x33
	.4byte	0x2c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0x9ed
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.4byte	0x9f
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	.LDL1
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xac8
	.4byte	0xa98
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xac8
	.4byte	0xaab
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0xabc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.uleb128 0x29
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xa
	.byte	0x1b
	.byte	0x7
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x39
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x39
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU8
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU27
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU27
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"_flock_t"
.LASF80:
	.string	"_misc"
.LASF137:
	.string	"no_mem1"
.LASF138:
	.string	"no_mem2"
.LASF14:
	.string	"_lock_t"
.LASF42:
	.string	"_on_exit_args"
.LASF85:
	.string	"_write"
.LASF112:
	.string	"_wctomb_state"
.LASF73:
	.string	"_r48"
.LASF81:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"num_alloc"
.LASF55:
	.string	"_flags"
.LASF60:
	.string	"_errno"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF84:
	.string	"_read"
.LASF116:
	.string	"_mbrlen_state"
.LASF62:
	.string	"_stdout"
.LASF17:
	.string	"_fpos_t"
.LASF49:
	.string	"_fns"
.LASF83:
	.string	"_cookie"
.LASF26:
	.string	"stack_st"
.LASF27:
	.string	"_Bigint"
.LASF39:
	.string	"__tm_wday"
.LASF105:
	.string	"_result"
.LASF35:
	.string	"__tm_hour"
.LASF21:
	.string	"__count"
.LASF34:
	.string	"__tm_min"
.LASF127:
	.string	"OPENSSL_sk_new_null"
.LASF79:
	.string	"__sf"
.LASF99:
	.string	"_rand48"
.LASF106:
	.string	"_result_k"
.LASF13:
	.string	"long long unsigned int"
.LASF75:
	.string	"_asctime_buf"
.LASF82:
	.string	"__sFILE"
.LASF31:
	.string	"_wds"
.LASF95:
	.string	"__FILE"
.LASF91:
	.string	"_offset"
.LASF88:
	.string	"_ubuf"
.LASF65:
	.string	"_emergency"
.LASF33:
	.string	"__tm_sec"
.LASF125:
	.string	"suboptarg"
.LASF40:
	.string	"__tm_yday"
.LASF64:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF28:
	.string	"_next"
.LASF1:
	.string	"OPENSSL_sk_compfunc"
.LASF22:
	.string	"__value"
.LASF107:
	.string	"_p5s"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF111:
	.string	"_mblen_state"
.LASF5:
	.string	"char"
.LASF36:
	.string	"__tm_mday"
.LASF76:
	.string	"_sig_func"
.LASF117:
	.string	"_mbrtowc_state"
.LASF3:
	.string	"data"
.LASF19:
	.string	"__wch"
.LASF98:
	.string	"_iobs"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF87:
	.string	"_close"
.LASF66:
	.string	"__sdidinit"
.LASF54:
	.string	"__sFILE_fake"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF61:
	.string	"_stdin"
.LASF70:
	.string	"_gamma_signgam"
.LASF12:
	.string	"long long int"
.LASF52:
	.string	"_base"
.LASF108:
	.string	"_freelist"
.LASF101:
	.string	"_mult"
.LASF25:
	.string	"__ULong"
.LASF119:
	.string	"_wcrtomb_state"
.LASF56:
	.string	"_file"
.LASF126:
	.string	"exc_cause_table"
.LASF69:
	.string	"__cleanup"
.LASF23:
	.string	"_mbstate_t"
.LASF104:
	.string	"_mprec"
.LASF41:
	.string	"__tm_isdst"
.LASF37:
	.string	"__tm_mon"
.LASF77:
	.string	"_atexit0"
.LASF38:
	.string	"__tm_year"
.LASF47:
	.string	"_atexit"
.LASF93:
	.string	"_mbstate"
.LASF10:
	.string	"short int"
.LASF136:
	.string	"OPENSSL_sk_free"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_sign"
.LASF58:
	.string	"_data"
.LASF20:
	.string	"__wchb"
.LASF124:
	.string	"_global_impure_ptr"
.LASF134:
	.string	"/home/dieter/Development/ProjektEi/build/openssl"
.LASF109:
	.string	"_misc_reent"
.LASF2:
	.string	"OPENSSL_STACK"
.LASF74:
	.string	"_localtime_buf"
.LASF130:
	.string	"free"
.LASF71:
	.string	"_cvtlen"
.LASF29:
	.string	"_maxwds"
.LASF114:
	.string	"_l64a_buf"
.LASF129:
	.string	"stack"
.LASF90:
	.string	"_blksize"
.LASF32:
	.string	"__tm"
.LASF92:
	.string	"_lock"
.LASF8:
	.string	"long unsigned int"
.LASF97:
	.string	"_niobs"
.LASF132:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF131:
	.string	"ssl_mem_zalloc"
.LASF44:
	.string	"_dso_handle"
.LASF72:
	.string	"_cvtbuf"
.LASF7:
	.string	"unsigned char"
.LASF115:
	.string	"_getdate_err"
.LASF128:
	.string	"OPENSSL_sk_new"
.LASF57:
	.string	"_lbfsize"
.LASF102:
	.string	"_add"
.LASF51:
	.string	"__sbuf"
.LASF133:
	.string	"/home/dieter/Development/esp-idf/components/openssl/library/ssl_stack.c"
.LASF96:
	.string	"_glue"
.LASF78:
	.string	"__sglue"
.LASF110:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbtowc_state"
.LASF68:
	.string	"_locale"
.LASF43:
	.string	"_fnargs"
.LASF9:
	.string	"signed char"
.LASF59:
	.string	"_reent"
.LASF11:
	.string	"short unsigned int"
.LASF45:
	.string	"_fntypes"
.LASF53:
	.string	"_size"
.LASF16:
	.string	"_off_t"
.LASF89:
	.string	"_nbuf"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF123:
	.string	"__sf_fake_stderr"
.LASF94:
	.string	"_flags2"
.LASF46:
	.string	"_is_cxa"
.LASF100:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF135:
	.string	"__locale_t"
.LASF86:
	.string	"_seek"
.LASF63:
	.string	"_stderr"
.LASF18:
	.string	"wint_t"
.LASF121:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
