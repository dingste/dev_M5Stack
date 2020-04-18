	.file	"randombytes.c"
	.text
.Ltext0:
	.section	.text.randombytes_set_implementation,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	randombytes_set_implementation
	.type	randombytes_set_implementation, @function
randombytes_set_implementation:
.LVL0:
.LFB13:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
	.loc 1 54 1 view -0
	.loc 1 54 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 55 5 is_stmt 1 view .LVU2
	.loc 1 55 20 is_stmt 0 view .LVU3
	l32r	a8, .LC0
	s32i.n	a2, a8, 0
	.loc 1 57 5 is_stmt 1 view .LVU4
	.loc 1 58 1 is_stmt 0 view .LVU5
	movi.n	a2, 0
.LVL1:
	.loc 1 58 1 view .LVU6
	retw.n
.LFE13:
	.size	randombytes_set_implementation, .-randombytes_set_implementation
	.section	.text.randombytes_stir,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	randombytes_stir
	.type	randombytes_stir, @function
randombytes_stir:
.LFB16:
	.loc 1 86 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 88 5 view .LVU8
	call8	randombytes_init_if_needed
.LVL2:
	.loc 1 89 5 view .LVU9
	.loc 1 89 23 is_stmt 0 view .LVU10
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	.loc 1 89 8 view .LVU11
	beqz.n	a8, .L2
	.loc 1 90 9 is_stmt 1 view .LVU12
	callx8	a8
.LVL3:
.L2:
	.loc 1 121 1 is_stmt 0 view .LVU13
	retw.n
.LFE16:
	.size	randombytes_stir, .-randombytes_stir
	.section	.text.randombytes_init_if_needed,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, randombytes_esp32_implementation
	.align	4
	.type	randombytes_init_if_needed, @function
randombytes_init_if_needed:
.LFB12:
	.loc 1 45 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 46 5 view .LVU15
	.loc 1 46 24 is_stmt 0 view .LVU16
	l32r	a8, .LC2
	.loc 1 46 8 view .LVU17
	l32i.n	a9, a8, 0
	bnez.n	a9, .L7
	.loc 1 47 9 is_stmt 1 view .LVU18
	.loc 1 47 24 is_stmt 0 view .LVU19
	l32r	a9, .LC3
	s32i.n	a9, a8, 0
	.loc 1 48 9 is_stmt 1 view .LVU20
	call8	randombytes_stir
.LVL4:
.L7:
	.loc 1 50 1 is_stmt 0 view .LVU21
	retw.n
.LFE12:
	.size	randombytes_init_if_needed, .-randombytes_init_if_needed
	.section	.text.randombytes_implementation_name,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.align	4
	.global	randombytes_implementation_name
	.type	randombytes_implementation_name, @function
randombytes_implementation_name:
.LFB14:
	.loc 1 62 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 64 5 view .LVU23
	call8	randombytes_init_if_needed
.LVL5:
	.loc 1 65 5 view .LVU24
	.loc 1 65 26 is_stmt 0 view .LVU25
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	.loc 1 65 12 view .LVU26
	l32i.n	a10, a8, 0
	callx8	a10
.LVL6:
	.loc 1 69 1 view .LVU27
	mov.n	a2, a10
	retw.n
.LFE14:
	.size	randombytes_implementation_name, .-randombytes_implementation_name
	.section	.text.randombytes_random,"ax",@progbits
	.literal_position
	.literal .LC5, implementation
	.align	4
	.global	randombytes_random
	.type	randombytes_random, @function
randombytes_random:
.LFB15:
	.loc 1 73 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 75 5 view .LVU29
	call8	randombytes_init_if_needed
.LVL7:
	.loc 1 76 5 view .LVU30
	.loc 1 76 26 is_stmt 0 view .LVU31
	l32r	a8, .LC5
	l32i.n	a8, a8, 0
	.loc 1 76 12 view .LVU32
	l32i.n	a10, a8, 4
	callx8	a10
.LVL8:
	.loc 1 82 1 view .LVU33
	mov.n	a2, a10
	retw.n
.LFE15:
	.size	randombytes_random, .-randombytes_random
	.section	.text.randombytes_uniform,"ax",@progbits
	.literal_position
	.literal .LC6, implementation
	.align	4
	.global	randombytes_uniform
	.type	randombytes_uniform, @function
randombytes_uniform:
.LVL9:
.LFB17:
	.loc 1 125 1 is_stmt 1 view -0
	.loc 1 125 1 is_stmt 0 view .LVU35
	entry	sp, 32
.LCFI5:
	.loc 1 126 5 is_stmt 1 view .LVU36
	.loc 1 127 5 view .LVU37
	.loc 1 130 5 view .LVU38
	call8	randombytes_init_if_needed
.LVL10:
	.loc 1 131 5 view .LVU39
	.loc 1 131 23 is_stmt 0 view .LVU40
	l32r	a3, .LC6
	l32i.n	a3, a3, 0
	l32i.n	a8, a3, 12
	.loc 1 131 8 view .LVU41
	beqz.n	a8, .L12
	.loc 1 132 9 is_stmt 1 view .LVU42
	.loc 1 132 16 is_stmt 0 view .LVU43
	mov.n	a10, a2
	callx8	a8
.LVL11:
	j	.L11
.L12:
	.loc 1 135 5 is_stmt 1 view .LVU44
	.loc 1 136 16 is_stmt 0 view .LVU45
	mov.n	a10, a8
	.loc 1 135 8 view .LVU46
	bltui	a2, 2, .L11
	.loc 1 138 5 is_stmt 1 view .LVU47
	.loc 1 138 15 is_stmt 0 view .LVU48
	neg	a3, a2
	.loc 1 138 9 view .LVU49
	remu	a3, a3, a2
.LVL12:
.L14:
	.loc 1 139 5 is_stmt 1 discriminator 1 view .LVU50
	.loc 1 140 9 discriminator 1 view .LVU51
	.loc 1 140 13 is_stmt 0 discriminator 1 view .LVU52
	call8	randombytes_random
.LVL13:
	.loc 1 141 5 discriminator 1 view .LVU53
	bltu	a10, a3, .L14
	.loc 1 143 5 is_stmt 1 view .LVU54
	.loc 1 143 14 is_stmt 0 view .LVU55
	remu	a10, a10, a2
.LVL14:
.L11:
	.loc 1 144 1 view .LVU56
	mov.n	a2, a10
.LVL15:
	.loc 1 144 1 view .LVU57
	retw.n
.LFE17:
	.size	randombytes_uniform, .-randombytes_uniform
	.section	.text.randombytes_buf,"ax",@progbits
	.literal_position
	.literal .LC7, implementation
	.align	4
	.global	randombytes_buf
	.type	randombytes_buf, @function
randombytes_buf:
.LVL16:
.LFB18:
	.loc 1 148 1 is_stmt 1 view -0
	.loc 1 148 1 is_stmt 0 view .LVU59
	entry	sp, 32
.LCFI6:
	.loc 1 150 5 is_stmt 1 view .LVU60
	call8	randombytes_init_if_needed
.LVL17:
	.loc 1 151 5 view .LVU61
	.loc 1 151 8 is_stmt 0 view .LVU62
	beqz.n	a3, .L17
.LVL18:
.LBB4:
.LBB5:
	.loc 1 152 9 is_stmt 1 view .LVU63
	.loc 1 152 23 is_stmt 0 view .LVU64
	l32r	a8, .LC7
	.loc 1 152 9 view .LVU65
	mov.n	a11, a3
	.loc 1 152 23 view .LVU66
	l32i.n	a8, a8, 0
	.loc 1 152 9 view .LVU67
	mov.n	a10, a2
	l32i.n	a8, a8, 16
	callx8	a8
.LVL19:
.L17:
	.loc 1 152 9 view .LVU68
.LBE5:
.LBE4:
	.loc 1 162 1 view .LVU69
	retw.n
.LFE18:
	.size	randombytes_buf, .-randombytes_buf
	.section	.text.randombytes_buf_deterministic,"ax",@progbits
	.literal_position
	.literal .LC8, nonce$2673
	.align	4
	.global	randombytes_buf_deterministic
	.type	randombytes_buf_deterministic, @function
randombytes_buf_deterministic:
.LVL20:
.LFB19:
	.loc 1 167 1 is_stmt 1 view -0
	.loc 1 167 1 is_stmt 0 view .LVU71
	entry	sp, 32
.LCFI7:
	.loc 1 168 5 is_stmt 1 view .LVU72
	.loc 1 172 5 view .LVU73
	.loc 1 178 5 view .LVU74
	l32r	a14, .LC8
	mov.n	a15, a4
	mov.n	a12, a3
	movi.n	a13, 0
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf
.LVL21:
	.loc 1 180 1 is_stmt 0 view .LVU75
	retw.n
.LFE19:
	.size	randombytes_buf_deterministic, .-randombytes_buf_deterministic
	.section	.text.randombytes_seedbytes,"ax",@progbits
	.align	4
	.global	randombytes_seedbytes
	.type	randombytes_seedbytes, @function
randombytes_seedbytes:
.LFB20:
	.loc 1 184 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI8:
	.loc 1 185 5 view .LVU77
	.loc 1 186 1 is_stmt 0 view .LVU78
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	randombytes_seedbytes, .-randombytes_seedbytes
	.section	.text.randombytes_close,"ax",@progbits
	.literal_position
	.literal .LC9, implementation
	.align	4
	.global	randombytes_close
	.type	randombytes_close, @function
randombytes_close:
.LFB21:
	.loc 1 190 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI9:
	.loc 1 191 5 view .LVU80
	.loc 1 191 24 is_stmt 0 view .LVU81
	l32r	a2, .LC9
	l32i.n	a8, a2, 0
	.loc 1 194 12 view .LVU82
	movi.n	a2, 0
	.loc 1 191 8 view .LVU83
	beq	a8, a2, .L24
	.loc 1 191 48 discriminator 1 view .LVU84
	l32i.n	a10, a8, 20
	.loc 1 191 31 discriminator 1 view .LVU85
	beq	a10, a2, .L24
	.loc 1 192 9 is_stmt 1 view .LVU86
	.loc 1 192 16 is_stmt 0 view .LVU87
	callx8	a10
.LVL22:
	mov.n	a2, a10
.L24:
	.loc 1 195 1 view .LVU88
	retw.n
.LFE21:
	.size	randombytes_close, .-randombytes_close
	.section	.rodata.randombytes.str1.1,"aMS",@progbits,1
.LC10:
	.string	"buf_len <= SIZE_MAX"
.LC13:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
	.section	.text.randombytes,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.literal .LC12, __func__$2684
	.literal .LC14, .LC13
	.align	4
	.global	randombytes
	.type	randombytes, @function
randombytes:
.LVL23:
.LFB22:
	.loc 1 199 1 is_stmt 1 view -0
	.loc 1 199 1 is_stmt 0 view .LVU90
	entry	sp, 32
.LCFI10:
	.loc 1 200 4 is_stmt 1 view .LVU91
	.loc 1 199 1 is_stmt 0 view .LVU92
	mov.n	a10, a2
	mov.n	a11, a4
	.loc 1 200 29 view .LVU93
	beqz.n	a5, .L34
	.loc 1 200 31 discriminator 1 view .LVU94
	l32r	a13, .LC11
	l32r	a12, .LC12
	l32r	a10, .LC14
	movi	a11, 0xc8
	call8	__assert_func
.LVL24:
.L34:
	.loc 1 201 5 is_stmt 1 view .LVU95
	call8	randombytes_buf
.LVL25:
	.loc 1 202 1 is_stmt 0 view .LVU96
	retw.n
.LFE22:
	.size	randombytes, .-randombytes
	.section	.rodata.__func__$2684,"a"
	.type	__func__$2684, @object
	.size	__func__$2684, 12
__func__$2684:
	.string	"randombytes"
	.section	.rodata.nonce$2673,"a"
	.type	nonce$2673, @object
	.size	nonce$2673, 12
nonce$2673:
	.byte	76
	.byte	105
	.byte	98
	.byte	115
	.byte	111
	.byte	100
	.byte	105
	.byte	117
	.byte	109
	.byte	68
	.byte	82
	.byte	71
	.section	.bss.implementation,"aw",@nobits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.zero	4
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 10 "/home/dieter/Development/esp-idf/components/libsodium/port/randombytes_default.h"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0xc
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x36
	.uleb128 0x3
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x52
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x44
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x84
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x36
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xea
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xbb
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xea
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0xfa
	.uleb128 0xa
	.4byte	0x36
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x11e
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xfa
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x90
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.4byte	0x136
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14a
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x13d
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1bc
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1bc
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x44
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x44
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1c2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x162
	.uleb128 0x9
	.4byte	0x156
	.4byte	0x1d2
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x255
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x44
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x44
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x44
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x44
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x44
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x29a
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x29a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x29a
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x156
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x156
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x136
	.4byte	0x2aa
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2ec
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2ec
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x44
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2f2
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x309
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2aa
	.uleb128 0x9
	.4byte	0x302
	.4byte	0x302
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x308
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x255
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x337
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x337
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x44
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x52
	.uleb128 0x3
	.4byte	0x337
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3b5
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x337
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x5e
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x30f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x519
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x342
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x519
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x44
	.byte	0
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x75a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x75a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x75a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x44
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x144
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x44
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8c2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x44
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x44
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x144
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8df
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8e5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x144
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8f6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2ec
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2aa
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x71b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x75a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x902
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x144
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x662
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x337
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x44
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x5e
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x30f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x44
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x519
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x136
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x680
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6aa
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6ce
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x30f
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x337
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x44
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ee
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6fe
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x30f
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x44
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa3
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x12a
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x11e
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x44
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x680
	.uleb128 0x18
	.4byte	0x519
	.uleb128 0x18
	.4byte	0x136
	.uleb128 0x18
	.4byte	0x144
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x662
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x6a4
	.uleb128 0x18
	.4byte	0x519
	.uleb128 0x18
	.4byte	0x136
	.uleb128 0x18
	.4byte	0x6a4
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x151
	.uleb128 0xe
	.byte	0x4
	.4byte	0x686
	.uleb128 0x17
	.4byte	0xaf
	.4byte	0x6ce
	.uleb128 0x18
	.4byte	0x519
	.uleb128 0x18
	.4byte	0x136
	.uleb128 0x18
	.4byte	0xaf
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6b0
	.uleb128 0x17
	.4byte	0x44
	.4byte	0x6e8
	.uleb128 0x18
	.4byte	0x519
	.uleb128 0x18
	.4byte	0x136
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6d4
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x6fe
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x70e
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x51f
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x754
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x754
	.byte	0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x75a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x71b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x70e
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7a7
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7a7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7a7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x3d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x78
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0x7b7
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7fe
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1bc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x44
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1bc
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7fe
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8ad
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x144
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x11e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x11e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x11e
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8ad
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x44
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x11e
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x11e
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x11e
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x11e
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x11e
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x14a
	.4byte	0x8bd
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF152
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8bd
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7b7
	.uleb128 0x1a
	.4byte	0x8d9
	.uleb128 0x18
	.4byte	0x519
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ce
	.uleb128 0xe
	.byte	0x4
	.4byte	0x760
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x1a
	.4byte	0x8f6
	.uleb128 0x18
	.4byte	0x44
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8fc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8eb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x804
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3b5
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3b5
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3b5
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x519
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x144
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x65
	.uleb128 0x3
	.4byte	0x948
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x18
	.byte	0x9
	.byte	0x13
	.byte	0x10
	.4byte	0x9b5
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x9
	.byte	0x14
	.byte	0x13
	.4byte	0x9bf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x9
	.byte	0x15
	.byte	0x10
	.4byte	0x9ca
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x302
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.byte	0x17
	.byte	0x10
	.4byte	0x9df
	.byte	0xc
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0x18
	.byte	0xc
	.4byte	0x9f5
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x9
	.byte	0x19
	.byte	0xb
	.4byte	0xa00
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	0x959
	.uleb128 0x1d
	.4byte	0x6a4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9ba
	.uleb128 0x1d
	.4byte	0x948
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c5
	.uleb128 0x17
	.4byte	0x948
	.4byte	0x9df
	.uleb128 0x18
	.4byte	0x954
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9d0
	.uleb128 0x1a
	.4byte	0x9f5
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x31
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9e5
	.uleb128 0x1d
	.4byte	0x44
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9fb
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x9
	.byte	0x1a
	.byte	0x3
	.4byte	0x959
	.uleb128 0x3
	.4byte	0xa06
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xa
	.byte	0x14
	.byte	0x30
	.4byte	0x9b5
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.byte	0x1d
	.byte	0x2a
	.4byte	0xa35
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa12
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaba
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0xc6
	.byte	0x23
	.4byte	0x33d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0xc6
	.byte	0x41
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x22
	.4byte	.LASF153
	.4byte	0xaca
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2684
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0xd4b
	.4byte	0xab0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2684
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0xb88
	.byte	0
	.uleb128 0x9
	.4byte	0x151
	.4byte	0xaca
	.uleb128 0xa
	.4byte	0x36
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.4byte	0xaba
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x44
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6d
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0xa5
	.byte	0x2c
	.4byte	0x138
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa5
	.byte	0x3e
	.4byte	0x31
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa6
	.byte	0x33
	.4byte	0xb6d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0xa8
	.byte	0x20
	.4byte	0xb83
	.uleb128 0x5
	.byte	0x3
	.4byte	nonce$2673
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0xd57
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	nonce$2673
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x59
	.uleb128 0x9
	.4byte	0x59
	.4byte	0xb83
	.uleb128 0xa
	.4byte	0x36
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.4byte	0xb73
	.uleb128 0x29
	.4byte	.LASF154
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x1
	.4byte	0xbae
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.byte	0x1e
	.4byte	0x138
	.uleb128 0x2b
	.4byte	.LASF136
	.byte	0x1
	.byte	0x93
	.byte	0x30
	.4byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0x948
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc25
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.byte	0x7c
	.byte	0x24
	.4byte	0x954
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2e
	.string	"min"
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0x948
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0x948
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0xcc2
	.uleb128 0x2f
	.4byte	.LVL11
	.4byte	0xc1b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL13
	.4byte	0xc45
	.byte	0
	.uleb128 0x30
	.4byte	.LASF140
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc45
	.uleb128 0x25
	.4byte	.LVL2
	.4byte	0xcc2
	.byte	0
	.uleb128 0x31
	.4byte	.LASF142
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	0x948
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc69
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0xcc2
	.byte	0
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x6a4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8d
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0xcc2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF144
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x44
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbc
	.uleb128 0x2d
	.4byte	.LASF146
	.byte	0x1
	.byte	0x35
	.byte	0x3c
	.4byte	0xcbc
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa06
	.uleb128 0x32
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x25
	.4byte	.LVL4
	.4byte	0xc25
	.byte	0
	.uleb128 0x33
	.4byte	0xb88
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4b
	.uleb128 0x34
	.4byte	0xb95
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	0xba1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	0xb88
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xd41
	.uleb128 0x36
	.4byte	0xba1
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x36
	.4byte	0xb95
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x37
	.4byte	.LVL19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL17
	.4byte	0xcc2
	.byte	0
	.uleb128 0x38
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xb
	.byte	0x29
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.byte	0x3e
	.byte	0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
.LVUS1:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU50
	.uleb128 .LVU56
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE13
	.2byte	0x5
	.byte	0x3
	.4byte	implementation
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU63
	.uleb128 .LVU68
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU63
	.uleb128 .LVU68
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
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
.LASF41:
	.string	"_dso_handle"
.LASF155:
	.string	"randombytes_init_if_needed"
.LASF50:
	.string	"_size"
.LASF154:
	.string	"randombytes_buf"
.LASF5:
	.string	"size_t"
.LASF96:
	.string	"_rand48"
.LASF62:
	.string	"_emergency"
.LASF129:
	.string	"close"
.LASF128:
	.string	"uniform"
.LASF55:
	.string	"_data"
.LASF116:
	.string	"_wcrtomb_state"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF8:
	.string	"long long unsigned int"
.LASF54:
	.string	"_lbfsize"
.LASF152:
	.string	"__locale_t"
.LASF114:
	.string	"_mbrtowc_state"
.LASF109:
	.string	"_wctomb_state"
.LASF30:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF131:
	.string	"buf_len"
.LASF85:
	.string	"_ubuf"
.LASF146:
	.string	"impl"
.LASF136:
	.string	"size"
.LASF49:
	.string	"_base"
.LASF32:
	.string	"__tm_hour"
.LASF76:
	.string	"__sf"
.LASF39:
	.string	"_on_exit_args"
.LASF80:
	.string	"_cookie"
.LASF127:
	.string	"stir"
.LASF75:
	.string	"__sglue"
.LASF11:
	.string	"long int"
.LASF101:
	.string	"_mprec"
.LASF52:
	.string	"_flags"
.LASF43:
	.string	"_is_cxa"
.LASF58:
	.string	"_stdin"
.LASF87:
	.string	"_blksize"
.LASF9:
	.string	"_lock_t"
.LASF141:
	.string	"randombytes_uniform"
.LASF69:
	.string	"_cvtbuf"
.LASF88:
	.string	"_offset"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF107:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbrlen_state"
.LASF40:
	.string	"_fnargs"
.LASF132:
	.string	"randombytes_close"
.LASF126:
	.string	"random"
.LASF46:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"_sign"
.LASF145:
	.string	"upper_bound"
.LASF20:
	.string	"_flock_t"
.LASF60:
	.string	"_stderr"
.LASF28:
	.string	"_Bigint"
.LASF67:
	.string	"_gamma_signgam"
.LASF81:
	.string	"_read"
.LASF103:
	.string	"_result_k"
.LASF29:
	.string	"__tm"
.LASF47:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"__wchb"
.LASF59:
	.string	"_stdout"
.LASF137:
	.string	"seed"
.LASF68:
	.string	"_cvtlen"
.LASF21:
	.string	"long unsigned int"
.LASF51:
	.string	"__sFILE_fake"
.LASF94:
	.string	"_niobs"
.LASF125:
	.string	"implementation_name"
.LASF1:
	.string	"short unsigned int"
.LASF74:
	.string	"_atexit0"
.LASF78:
	.string	"_signal_buf"
.LASF72:
	.string	"_asctime_buf"
.LASF102:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF14:
	.string	"wint_t"
.LASF89:
	.string	"_lock"
.LASF91:
	.string	"_flags2"
.LASF82:
	.string	"_write"
.LASF35:
	.string	"__tm_year"
.LASF133:
	.string	"randombytes_seedbytes"
.LASF77:
	.string	"_misc"
.LASF142:
	.string	"randombytes_random"
.LASF118:
	.string	"__sf_fake_stdin"
.LASF119:
	.string	"__sf_fake_stdout"
.LASF151:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF34:
	.string	"__tm_mon"
.LASF150:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
.LASF122:
	.string	"suboptarg"
.LASF63:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF144:
	.string	"randombytes_set_implementation"
.LASF105:
	.string	"_freelist"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF147:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF95:
	.string	"_iobs"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"__tm_yday"
.LASF48:
	.string	"__sbuf"
.LASF92:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF79:
	.string	"__sFILE"
.LASF90:
	.string	"_mbstate"
.LASF100:
	.string	"_rand_next"
.LASF153:
	.string	"__func__"
.LASF108:
	.string	"_mblen_state"
.LASF61:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF139:
	.string	"nonce"
.LASF65:
	.string	"_locale"
.LASF66:
	.string	"__cleanup"
.LASF64:
	.string	"_unspecified_locale_info"
.LASF25:
	.string	"_maxwds"
.LASF56:
	.string	"_reent"
.LASF97:
	.string	"_seed"
.LASF17:
	.string	"__count"
.LASF18:
	.string	"__value"
.LASF83:
	.string	"_seek"
.LASF13:
	.string	"_fpos_t"
.LASF148:
	.string	"crypto_stream_chacha20_ietf"
.LASF57:
	.string	"_errno"
.LASF22:
	.string	"char"
.LASF134:
	.string	"randombytes"
.LASF31:
	.string	"__tm_min"
.LASF124:
	.string	"randombytes_implementation"
.LASF98:
	.string	"_mult"
.LASF24:
	.string	"_next"
.LASF149:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF42:
	.string	"_fntypes"
.LASF106:
	.string	"_misc_reent"
.LASF99:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF112:
	.string	"_getdate_err"
.LASF121:
	.string	"_global_impure_ptr"
.LASF123:
	.string	"uint32_t"
.LASF143:
	.string	"randombytes_implementation_name"
.LASF135:
	.string	"randombytes_buf_deterministic"
.LASF53:
	.string	"_file"
.LASF27:
	.string	"_wds"
.LASF36:
	.string	"__tm_wday"
.LASF93:
	.string	"_glue"
.LASF111:
	.string	"_l64a_buf"
.LASF140:
	.string	"randombytes_stir"
.LASF73:
	.string	"_sig_func"
.LASF44:
	.string	"_atexit"
.LASF138:
	.string	"implementation"
.LASF86:
	.string	"_nbuf"
.LASF130:
	.string	"randombytes_esp32_implementation"
.LASF38:
	.string	"__tm_isdst"
.LASF71:
	.string	"_localtime_buf"
.LASF84:
	.string	"_close"
.LASF120:
	.string	"__sf_fake_stderr"
.LASF70:
	.string	"_r48"
.LASF110:
	.string	"_mbtowc_state"
.LASF104:
	.string	"_p5s"
.LASF33:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
