	.file	"nghttp2_priority_spec.c"
	.text
.Ltext0:
	.section	.text.nghttp2_priority_spec_init,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_init
	.type	nghttp2_priority_spec_init, @function
nghttp2_priority_spec_init:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_priority_spec.c"
	.loc 1 29 48 view -0
	.loc 1 29 48 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 30 3 is_stmt 1 view .LVU2
	.loc 1 32 35 is_stmt 0 view .LVU3
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a5
	.loc 1 30 23 view .LVU4
	s32i.n	a3, a2, 0
	.loc 1 31 3 is_stmt 1 view .LVU5
	.loc 1 31 20 is_stmt 0 view .LVU6
	s32i.n	a4, a2, 4
	.loc 1 32 3 is_stmt 1 view .LVU7
	.loc 1 32 35 is_stmt 0 view .LVU8
	mov.n	a5, a8
.LVL1:
	.loc 1 32 35 view .LVU9
	s8i	a8, a2, 8
	.loc 1 33 1 view .LVU10
	retw.n
.LFE3:
	.size	nghttp2_priority_spec_init, .-nghttp2_priority_spec_init
	.section	.text.nghttp2_priority_spec_default_init,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_default_init
	.type	nghttp2_priority_spec_default_init, @function
nghttp2_priority_spec_default_init:
.LVL2:
.LFB4:
	.loc 1 35 74 is_stmt 1 view -0
	.loc 1 35 74 is_stmt 0 view .LVU12
	entry	sp, 32
.LCFI1:
	.loc 1 36 3 is_stmt 1 view .LVU13
	.loc 1 36 23 is_stmt 0 view .LVU14
	movi.n	a8, 0
	.loc 1 37 20 view .LVU15
	movi.n	a9, 0x10
	.loc 1 36 23 view .LVU16
	s32i.n	a8, a2, 0
	.loc 1 37 3 is_stmt 1 view .LVU17
	.loc 1 37 20 is_stmt 0 view .LVU18
	s32i.n	a9, a2, 4
	.loc 1 38 3 is_stmt 1 view .LVU19
	.loc 1 38 23 is_stmt 0 view .LVU20
	s8i	a8, a2, 8
	.loc 1 39 1 view .LVU21
	retw.n
.LFE4:
	.size	nghttp2_priority_spec_default_init, .-nghttp2_priority_spec_default_init
	.section	.text.nghttp2_priority_spec_check_default,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_check_default
	.type	nghttp2_priority_spec_check_default, @function
nghttp2_priority_spec_check_default:
.LVL3:
.LFB5:
	.loc 1 41 80 is_stmt 1 view -0
	.loc 1 41 80 is_stmt 0 view .LVU23
	entry	sp, 32
.LCFI2:
	.loc 1 42 3 is_stmt 1 view .LVU24
	.loc 1 43 33 is_stmt 0 view .LVU25
	l32i.n	a9, a2, 0
	movi.n	a8, 0
	bne	a9, a8, .L3
	.loc 1 42 35 discriminator 1 view .LVU26
	l32i.n	a9, a2, 4
	bnei	a9, 16, .L3
	.loc 1 43 33 discriminator 4 view .LVU27
	l8ui	a9, a2, 8
	movi.n	a2, 1
.LVL4:
	.loc 1 43 33 discriminator 4 view .LVU28
	moveqz	a8, a2, a9
.L3:
	.loc 1 44 1 view .LVU29
	mov.n	a2, a8
	retw.n
.LFE5:
	.size	nghttp2_priority_spec_check_default, .-nghttp2_priority_spec_check_default
	.section	.text.nghttp2_priority_spec_normalize_weight,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_normalize_weight
	.type	nghttp2_priority_spec_normalize_weight, @function
nghttp2_priority_spec_normalize_weight:
.LVL5:
.LFB6:
	.loc 1 46 78 is_stmt 1 view -0
	.loc 1 46 78 is_stmt 0 view .LVU31
	entry	sp, 32
.LCFI3:
	.loc 1 47 3 is_stmt 1 view .LVU32
	.loc 1 47 15 is_stmt 0 view .LVU33
	l32i.n	a9, a2, 4
	.loc 1 48 22 view .LVU34
	movi.n	a8, 1
	.loc 1 47 6 view .LVU35
	blti	a9, 1, .L10
.L8:
	.loc 1 49 10 is_stmt 1 view .LVU36
	.loc 1 49 13 is_stmt 0 view .LVU37
	movi	a8, 0x100
	bge	a8, a9, .L7
.L10:
	.loc 1 50 5 is_stmt 1 view .LVU38
	.loc 1 50 22 is_stmt 0 view .LVU39
	s32i.n	a8, a2, 4
.L7:
	.loc 1 52 1 view .LVU40
	retw.n
.LFE6:
	.size	nghttp2_priority_spec_normalize_weight, .-nghttp2_priority_spec_normalize_weight
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa61
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x59
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x60
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xdd
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0xed
	.uleb128 0xa
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x111
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xed
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x83
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x129
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x196
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x196
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x59
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x19c
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x13c
	.uleb128 0x9
	.4byte	0x130
	.4byte	0x1ac
	.uleb128 0xa
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x22f
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x59
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x59
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x59
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x274
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x274
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x274
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x130
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x130
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x75
	.4byte	0x284
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2c6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2c6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2cc
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2e3
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x284
	.uleb128 0x9
	.4byte	0x2dc
	.4byte	0x2dc
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22f
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x311
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x311
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x38a
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x311
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x2e9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x4ee
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x317
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x4ee
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x741
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x741
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x741
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x655
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8a9
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8af
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8c0
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x59
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x59
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x655
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8c6
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8cc
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x655
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8dd
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2c6
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x284
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x702
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x741
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8e9
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x655
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38f
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x637
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x311
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x2e9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x4ee
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x75
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x667
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x691
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6b5
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6cf
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x2e9
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x311
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x59
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6d5
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6e5
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x2e9
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x59
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x96
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x11d
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x111
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x59
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x655
	.uleb128 0x18
	.4byte	0x4ee
	.uleb128 0x18
	.4byte	0x75
	.uleb128 0x18
	.4byte	0x655
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.uleb128 0x13
	.4byte	0x65b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x637
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x68b
	.uleb128 0x18
	.4byte	0x4ee
	.uleb128 0x18
	.4byte	0x75
	.uleb128 0x18
	.4byte	0x68b
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x662
	.uleb128 0xf
	.byte	0x4
	.4byte	0x66d
	.uleb128 0x17
	.4byte	0xa2
	.4byte	0x6b5
	.uleb128 0x18
	.4byte	0x4ee
	.uleb128 0x18
	.4byte	0x75
	.uleb128 0x18
	.4byte	0xa2
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x697
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x6cf
	.uleb128 0x18
	.4byte	0x4ee
	.uleb128 0x18
	.4byte	0x75
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6bb
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x6e5
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x6f5
	.uleb128 0xa
	.4byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4f4
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x73b
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x73b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x741
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x702
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6f5
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x78e
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x78e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x78e
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x6e
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x79e
	.uleb128 0xa
	.4byte	0x60
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7e5
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x196
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x196
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7e5
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x196
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x894
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x655
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x111
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x111
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x111
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x894
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x59
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x111
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x111
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x111
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x111
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x111
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x65b
	.4byte	0x8a4
	.uleb128 0xa
	.4byte	0x60
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF135
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8a4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x79e
	.uleb128 0x1a
	.4byte	0x8c0
	.uleb128 0x18
	.4byte	0x4ee
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x747
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ac
	.uleb128 0x1a
	.4byte	0x8dd
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7eb
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x38a
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x38a
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x38a
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4ee
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x655
	.uleb128 0x1d
	.byte	0xc
	.byte	0x9
	.2byte	0x3bf
	.byte	0x9
	.4byte	0x97c
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x3c4
	.byte	0xb
	.4byte	0x92f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x3c8
	.byte	0xb
	.4byte	0x92f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x3cc
	.byte	0xb
	.4byte	0x923
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x3cd
	.byte	0x3
	.4byte	0x947
	.uleb128 0x13
	.4byte	0x97c
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b3
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2e
	.byte	0x44
	.4byte	0x9b3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x97c
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x59
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e8
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x29
	.byte	0x46
	.4byte	0x9e8
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x989
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x23
	.byte	0x40
	.4byte	0x9b3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.4byte	0x9b3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1c
	.byte	0x29
	.4byte	0x92f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1c
	.byte	0x3c
	.4byte	0x92f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1d
	.byte	0x25
	.4byte	0x59
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"long int"
.LASF76:
	.string	"_misc"
.LASF9:
	.string	"_lock_t"
.LASF38:
	.string	"_on_exit_args"
.LASF81:
	.string	"_write"
.LASF109:
	.string	"_wctomb_state"
.LASF69:
	.string	"_r48"
.LASF77:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF56:
	.string	"_errno"
.LASF119:
	.string	"__sf_fake_stdout"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF80:
	.string	"_read"
.LASF113:
	.string	"_mbrlen_state"
.LASF58:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF45:
	.string	"_fns"
.LASF79:
	.string	"_cookie"
.LASF27:
	.string	"_Bigint"
.LASF35:
	.string	"__tm_wday"
.LASF102:
	.string	"_result"
.LASF31:
	.string	"__tm_hour"
.LASF127:
	.string	"exclusive"
.LASF17:
	.string	"__count"
.LASF30:
	.string	"__tm_min"
.LASF75:
	.string	"__sf"
.LASF96:
	.string	"_rand48"
.LASF103:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF71:
	.string	"_asctime_buf"
.LASF78:
	.string	"__sFILE"
.LASF26:
	.string	"_wds"
.LASF92:
	.string	"__FILE"
.LASF87:
	.string	"_offset"
.LASF84:
	.string	"_ubuf"
.LASF61:
	.string	"_emergency"
.LASF29:
	.string	"__tm_sec"
.LASF124:
	.string	"suboptarg"
.LASF36:
	.string	"__tm_yday"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF23:
	.string	"_next"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF136:
	.string	"nghttp2_priority_spec_check_default"
.LASF18:
	.string	"__value"
.LASF104:
	.string	"_p5s"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF108:
	.string	"_mblen_state"
.LASF91:
	.string	"char"
.LASF32:
	.string	"__tm_mday"
.LASF72:
	.string	"_sig_func"
.LASF114:
	.string	"_mbrtowc_state"
.LASF20:
	.string	"_flock_t"
.LASF15:
	.string	"__wch"
.LASF95:
	.string	"_iobs"
.LASF122:
	.string	"uint8_t"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF83:
	.string	"_close"
.LASF62:
	.string	"__sdidinit"
.LASF50:
	.string	"__sFILE_fake"
.LASF57:
	.string	"_stdin"
.LASF66:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF48:
	.string	"_base"
.LASF128:
	.string	"nghttp2_priority_spec"
.LASF105:
	.string	"_freelist"
.LASF98:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF116:
	.string	"_wcrtomb_state"
.LASF52:
	.string	"_file"
.LASF65:
	.string	"__cleanup"
.LASF19:
	.string	"_mbstate_t"
.LASF101:
	.string	"_mprec"
.LASF37:
	.string	"__tm_isdst"
.LASF133:
	.string	"/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_priority_spec.c"
.LASF33:
	.string	"__tm_mon"
.LASF125:
	.string	"stream_id"
.LASF131:
	.string	"pri_spec"
.LASF73:
	.string	"_atexit0"
.LASF43:
	.string	"_atexit"
.LASF89:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF134:
	.string	"/home/dieter/Development/ProjektEi/build/nghttp"
.LASF25:
	.string	"_sign"
.LASF54:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF34:
	.string	"__tm_year"
.LASF106:
	.string	"_misc_reent"
.LASF126:
	.string	"weight"
.LASF70:
	.string	"_localtime_buf"
.LASF4:
	.string	"__uint8_t"
.LASF67:
	.string	"_cvtlen"
.LASF24:
	.string	"_maxwds"
.LASF111:
	.string	"_l64a_buf"
.LASF129:
	.string	"nghttp2_priority_spec_normalize_weight"
.LASF86:
	.string	"_blksize"
.LASF28:
	.string	"__tm"
.LASF88:
	.string	"_lock"
.LASF21:
	.string	"long unsigned int"
.LASF94:
	.string	"_niobs"
.LASF132:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF123:
	.string	"int32_t"
.LASF40:
	.string	"_dso_handle"
.LASF137:
	.string	"nghttp2_priority_spec_init"
.LASF68:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF112:
	.string	"_getdate_err"
.LASF99:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF130:
	.string	"nghttp2_priority_spec_default_init"
.LASF93:
	.string	"_glue"
.LASF74:
	.string	"__sglue"
.LASF107:
	.string	"_strtok_last"
.LASF110:
	.string	"_mbtowc_state"
.LASF64:
	.string	"_locale"
.LASF39:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF55:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF12:
	.string	"_off_t"
.LASF85:
	.string	"_nbuf"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF120:
	.string	"__sf_fake_stderr"
.LASF90:
	.string	"_flags2"
.LASF42:
	.string	"_is_cxa"
.LASF97:
	.string	"_seed"
.LASF100:
	.string	"_rand_next"
.LASF135:
	.string	"__locale_t"
.LASF82:
	.string	"_seek"
.LASF59:
	.string	"_stderr"
.LASF14:
	.string	"wint_t"
.LASF118:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
