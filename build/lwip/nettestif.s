	.file	"nettestif.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"\nPacketOut:["
.LC4:
	.string	"%02x"
.LC6:
	.string	"]"
	.section	.text.nettestif_output,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	nettestif_output
	.type	nettestif_output, @function
nettestif_output:
.LFB18:
	.file 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/netif/nettestif.c"
	.loc 1 22 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 24 0
	l32i.n	a4, a3, 4
.LVL1:
	.loc 1 27 0
	l32r	a10, .LC3
	.loc 1 28 0
	mov.n	a2, a4
.LVL2:
	.loc 1 27 0
	call8	printf
.LVL3:
	.loc 1 28 0
	j	.L2
.LVL4:
.L3:
	.loc 1 29 0 discriminator 3
	l8ui	a11, a2, 0
	l32r	a10, .LC5
	addi.n	a2, a2, 1
.LVL5:
	call8	printf
.LVL6:
.L2:
	.loc 1 28 0 discriminator 1
	l16ui	a8, a3, 10
	sub	a9, a2, a4
.LVL7:
	blt	a9, a8, .L3
	.loc 1 31 0
	l32r	a10, .LC7
	.loc 1 34 0
	movi.n	a2, 0
.LVL8:
	.loc 1 31 0
	call8	puts
.LVL9:
	.loc 1 34 0
	retw.n
.LFE18:
	.size	nettestif_output, .-nettestif_output
	.section	.rodata.str1.1
.LC9:
	.string	"espressif"
	.section	.text.nettestif_init,"ax",@progbits
	.literal_position
	.literal .LC8, g_last_netif
	.literal .LC10, .LC9
	.literal .LC11, etharp_output
	.literal .LC12, ethip6_output
	.literal .LC13, nettestif_output
	.align	4
	.global	nettestif_init
	.type	nettestif_init, @function
nettestif_init:
.LFB19:
	.loc 1 38 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 40 0
	l32r	a8, .LC8
	s32i.n	a2, a8, 0
	.loc 1 42 0
	l32r	a8, .LC10
	s32i	a8, a2, 220
	.loc 1 55 0
	l32r	a8, .LC11
	s32i	a8, a2, 184
	.loc 1 57 0
	l32r	a8, .LC12
	s32i	a8, a2, 192
	.loc 1 59 0
	l32r	a8, .LC13
	s32i	a8, a2, 188
	.loc 1 61 0
	movi.n	a8, 6
	s8i	a8, a2, 234
	.loc 1 66 0
	movi	a8, 0x5dc
	s16i	a8, a2, 224
	.loc 1 74 0
	movi.n	a8, 0x2e
	s8i	a8, a2, 235
	.loc 1 79 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LFE19:
	.size	nettestif_init, .-nettestif_init
	.section	.rodata.str1.1
.LC15:
	.string	"error!"
.LC17:
	.string	"simul in: %d\n"
	.section	.text.nettestif_input,"ax",@progbits
	.literal_position
	.literal .LC14, g_last_netif
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	nettestif_input
	.type	nettestif_input, @function
nettestif_input:
.LFB20:
	.loc 1 82 0
.LVL12:
	entry	sp, 32
.LCFI2:
	.loc 1 84 0
	l32r	a5, .LC14
	.loc 1 82 0
	extui	a3, a3, 0, 16
	.loc 1 84 0
	l32i.n	a4, a5, 0
	bnez.n	a4, .L6
	.loc 1 85 0
	l32r	a10, .LC16
	call8	printf
.LVL13:
	.loc 1 86 0
	retw.n
.L6:
	.loc 1 89 0
	l32r	a10, .LC18
	mov.n	a11, a3
	call8	printf
.LVL14:
	.loc 1 90 0
	beqz.n	a3, .L5
	.loc 1 92 0
	mov.n	a11, a3
	movi	a12, 0x280
	movi.n	a10, 0
	call8	pbuf_alloc
.LVL15:
	.loc 1 93 0
	movi.n	a8, 0
	s32i.n	a8, a10, 16
	.loc 1 92 0
	mov.n	a4, a10
.LVL16:
	.loc 1 94 0
	l32i.n	a10, a10, 4
	mov.n	a12, a3
	mov.n	a11, a2
	call8	memcpy
.LVL17:
	.loc 1 100 0
	l32i.n	a11, a5, 0
	mov.n	a10, a4
	l32i	a3, a11, 180
.LVL18:
	callx8	a3
.LVL19:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L5
	.loc 1 102 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL20:
.L5:
	retw.n
.LFE20:
	.size	nettestif_input, .-nettestif_input
	.section	.bss.g_last_netif,"aw",@nobits
	.align	4
	.type	g_last_netif, @object
	.size	g_last_netif, 4
g_last_netif:
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 7 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 8 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 10 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x92c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x107
	.uleb128 0x9
	.4byte	0x112
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0xb
	.4byte	0xf6
	.4byte	0x122
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0xb
	.4byte	0xa2
	.4byte	0x139
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x35
	.4byte	0x1ac
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0
	.uleb128 0xf
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x60
	.4byte	0xca
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x59
	.4byte	0x1e2
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x4a
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x36
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x91
	.4byte	0x209
	.uleb128 0x10
	.4byte	.LASF45
	.2byte	0x280
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x41
	.uleb128 0x10
	.4byte	.LASF48
	.2byte	0x182
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.4byte	0x28e
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x5
	.byte	0xbc
	.4byte	0x28e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x5
	.byte	0xbf
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x5
	.byte	0xc8
	.4byte	0xeb
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x5
	.byte	0xcb
	.4byte	0xeb
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x5
	.byte	0xd0
	.4byte	0xd5
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x5
	.byte	0xd3
	.4byte	0xd5
	.byte	0xd
	.uleb128 0x13
	.string	"ref"
	.byte	0x5
	.byte	0xda
	.4byte	0xd5
	.byte	0xe
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x5
	.byte	0xdd
	.4byte	0xd5
	.byte	0xf
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x5
	.byte	0xe2
	.4byte	0x460
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x5
	.byte	0xe3
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x209
	.uleb128 0x14
	.4byte	.LASF58
	.2byte	0x124
	.byte	0x6
	.2byte	0x10e
	.4byte	0x460
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x111
	.4byte	0x460
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x116
	.4byte	0x593
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x117
	.4byte	0x593
	.byte	0x1c
	.uleb128 0x16
	.string	"gw"
	.byte	0x6
	.2byte	0x118
	.4byte	0x593
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x11c
	.4byte	0x6f8
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x11f
	.4byte	0x708
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x124
	.4byte	0x112
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x125
	.4byte	0x112
	.byte	0xa4
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x128
	.4byte	0x728
	.byte	0xb0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x12d
	.4byte	0x5e4
	.byte	0xb4
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x133
	.4byte	0x609
	.byte	0xb8
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x138
	.4byte	0x673
	.byte	0xbc
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x13e
	.4byte	0x63e
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x150
	.4byte	0xa2
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x152
	.4byte	0x129
	.byte	0xc8
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x156
	.4byte	0x733
	.byte	0xd4
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x157
	.4byte	0x6ec
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x15c
	.4byte	0xbf
	.byte	0xdc
	.uleb128 0x16
	.string	"mtu"
	.byte	0x6
	.2byte	0x162
	.4byte	0xeb
	.byte	0xe0
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x165
	.4byte	0xeb
	.byte	0xe2
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x168
	.4byte	0x739
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x16a
	.4byte	0xd5
	.byte	0xea
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x16c
	.4byte	0xd5
	.byte	0xeb
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x16e
	.4byte	0x749
	.byte	0xec
	.uleb128 0x16
	.string	"num"
	.byte	0x6
	.2byte	0x171
	.4byte	0xd5
	.byte	0xee
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x174
	.4byte	0xd5
	.byte	0xef
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x178
	.4byte	0xd5
	.byte	0xf0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x187
	.4byte	0x698
	.byte	0xf4
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x18c
	.4byte	0x6c2
	.byte	0xf8
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x193
	.4byte	0x28e
	.byte	0xfc
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x194
	.4byte	0x28e
	.2byte	0x100
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x196
	.4byte	0xeb
	.2byte	0x104
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x19a
	.4byte	0x101
	.2byte	0x108
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x19b
	.4byte	0x593
	.2byte	0x10c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x294
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x34
	.4byte	0x4eb
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x504
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x8
	.byte	0x34
	.4byte	0xf6
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x8
	.byte	0x39
	.4byte	0x4eb
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x14
	.byte	0x9
	.byte	0x3b
	.4byte	0x534
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x9
	.byte	0x3c
	.4byte	0x534
	.byte	0
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x9
	.byte	0x3e
	.4byte	0xd5
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0xf6
	.4byte	0x544
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x9
	.byte	0x43
	.4byte	0x50f
	.uleb128 0x18
	.byte	0x14
	.byte	0xa
	.byte	0x46
	.4byte	0x56e
	.uleb128 0x19
	.string	"ip6"
	.byte	0xa
	.byte	0x47
	.4byte	0x544
	.uleb128 0x19
	.string	"ip4"
	.byte	0xa
	.byte	0x48
	.4byte	0x504
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x18
	.byte	0xa
	.byte	0x45
	.4byte	0x593
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xa
	.byte	0x49
	.4byte	0x54f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xa
	.byte	0x4b
	.4byte	0xd5
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0xa
	.byte	0x4c
	.4byte	0x56e
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x76
	.4byte	0x5c7
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0xa1
	.4byte	0x5e4
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x6
	.byte	0xb7
	.4byte	0x5ef
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x609
	.uleb128 0xa
	.4byte	0x28e
	.uleb128 0xa
	.4byte	0x460
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x6
	.byte	0xc2
	.4byte	0x614
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61a
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x633
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0x28e
	.uleb128 0xa
	.4byte	0x633
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x639
	.uleb128 0x8
	.4byte	0x504
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x6
	.byte	0xcf
	.4byte	0x649
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x668
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0x28e
	.uleb128 0xa
	.4byte	0x668
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66e
	.uleb128 0x8
	.4byte	0x544
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x6
	.byte	0xd9
	.4byte	0x67e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x684
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x698
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0x28e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x6
	.byte	0xde
	.4byte	0x6a3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x6c2
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0x633
	.uleb128 0xa
	.4byte	0x5c7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x6
	.byte	0xe3
	.4byte	0x6cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x1b
	.4byte	0x1ac
	.4byte	0x6ec
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0x668
	.uleb128 0xa
	.4byte	0x5c7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x108
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x593
	.4byte	0x708
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xd5
	.4byte	0x718
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x728
	.uleb128 0xa
	.4byte	0x460
	.uleb128 0xa
	.4byte	0xd5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x718
	.uleb128 0x1d
	.4byte	.LASF141
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72e
	.uleb128 0xb
	.4byte	0xd5
	.4byte	0x749
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb8
	.4byte	0x759
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x1
	.byte	0x15
	.4byte	0x1ac
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ea
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x15
	.4byte	0x460
	.4byte	.LLST0
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x15
	.4byte	0x28e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x17
	.4byte	0x33
	.4byte	.LLST1
	.uleb128 0x21
	.string	"dat"
	.byte	0x1
	.byte	0x18
	.4byte	0xb2
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LVL3
	.4byte	0x8f4
	.4byte	0x7bf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0x8f4
	.4byte	0x7d6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x24
	.4byte	.LVL9
	.4byte	0x8ff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.byte	0x25
	.4byte	0x1ac
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x813
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x25
	.4byte	0x460
	.4byte	.LLST3
	.byte	0
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.byte	0x51
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e3
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.byte	0x51
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x51
	.4byte	0xeb
	.4byte	.LLST4
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.byte	0x53
	.4byte	0x28e
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LVL13
	.4byte	0x8f4
	.4byte	0x868
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0x8f4
	.4byte	0x885
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0x90e
	.4byte	0x8a5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.uleb128 0x22
	.4byte	.LVL17
	.4byte	0x91a
	.4byte	0x8bf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x8d2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x923
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.byte	0x12
	.4byte	0x460
	.uleb128 0x5
	.byte	0x3
	.4byte	g_last_netif
	.uleb128 0x2a
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xb
	.byte	0xb2
	.uleb128 0x2b
	.4byte	.LASF143
	.4byte	.LASF144
	.byte	0xc
	.byte	0
	.4byte	.LASF143
	.uleb128 0x2c
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x117
	.uleb128 0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.uleb128 0x2c
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x129
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
	.uleb128 0x4
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x2d
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6-1
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE19
	.2byte	0x5
	.byte	0x3
	.4byte	g_last_netif
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"printf"
.LASF75:
	.string	"mtu6"
.LASF128:
	.string	"netif_igmp_mac_filter_fn"
.LASF100:
	.string	"MEMP_SYS_TIMEOUT"
.LASF69:
	.string	"output_ip6"
.LASF102:
	.string	"MEMP_ND6_QUEUE"
.LASF80:
	.string	"rs_count"
.LASF22:
	.string	"ERR_OK"
.LASF63:
	.string	"ip6_addr_valid_life"
.LASF4:
	.string	"__uint8_t"
.LASF54:
	.string	"if_idx"
.LASF132:
	.string	"nettestif_init"
.LASF114:
	.string	"type"
.LASF118:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF11:
	.string	"long long unsigned int"
.LASF72:
	.string	"dhcps_pcb"
.LASF109:
	.string	"addr"
.LASF62:
	.string	"ip6_addr_state"
.LASF92:
	.string	"MEMP_TCP_SEG"
.LASF101:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"__int8_t"
.LASF57:
	.string	"pbuf"
.LASF49:
	.string	"next"
.LASF122:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF18:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF73:
	.string	"dhcp_event"
.LASF14:
	.string	"long unsigned int"
.LASF30:
	.string	"ERR_USE"
.LASF82:
	.string	"mld_mac_filter"
.LASF76:
	.string	"hwaddr"
.LASF51:
	.string	"tot_len"
.LASF103:
	.string	"MEMP_IP6_REASSDATA"
.LASF70:
	.string	"state"
.LASF74:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF41:
	.string	"PBUF_IP"
.LASF48:
	.string	"PBUF_POOL"
.LASF88:
	.string	"MEMP_RAW_PCB"
.LASF108:
	.string	"ip4_addr"
.LASF47:
	.string	"PBUF_REF"
.LASF144:
	.string	"__builtin_puts"
.LASF145:
	.string	"memcpy"
.LASF130:
	.string	"dhcp_event_fn"
.LASF119:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF34:
	.string	"ERR_IF"
.LASF19:
	.string	"uint16_t"
.LASF77:
	.string	"hwaddr_len"
.LASF89:
	.string	"MEMP_UDP_PCB"
.LASF60:
	.string	"netmask"
.LASF127:
	.string	"netif_linkoutput_fn"
.LASF107:
	.string	"MEMP_MAX"
.LASF99:
	.string	"MEMP_IGMP_GROUP"
.LASF9:
	.string	"__uint32_t"
.LASF6:
	.string	"__int16_t"
.LASF52:
	.string	"type_internal"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF87:
	.string	"last_ip_addr"
.LASF126:
	.string	"netif_output_ip6_fn"
.LASF105:
	.string	"MEMP_PBUF"
.LASF67:
	.string	"output"
.LASF31:
	.string	"ERR_ALREADY"
.LASF138:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF78:
	.string	"name"
.LASF56:
	.string	"l2_buf"
.LASF90:
	.string	"MEMP_TCP_PCB"
.LASF1:
	.string	"short unsigned int"
.LASF137:
	.string	"pbuf_free"
.LASF139:
	.string	"/home/dieter/Development/esp-idf/components/lwip/port/esp32/netif/nettestif.c"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF65:
	.string	"ipv6_addr_cb"
.LASF121:
	.string	"netif_mac_filter_action"
.LASF143:
	.string	"puts"
.LASF115:
	.string	"ip_addr_t"
.LASF16:
	.string	"int8_t"
.LASF140:
	.string	"/home/dieter/Development/ProjektEi/build/lwip"
.LASF39:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF85:
	.string	"loop_cnt_current"
.LASF58:
	.string	"netif"
.LASF104:
	.string	"MEMP_MLD6_GROUP"
.LASF81:
	.string	"igmp_mac_filter"
.LASF50:
	.string	"payload"
.LASF59:
	.string	"ip_addr"
.LASF46:
	.string	"PBUF_ROM"
.LASF124:
	.string	"netif_input_fn"
.LASF42:
	.string	"PBUF_LINK"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF55:
	.string	"l2_owner"
.LASF28:
	.string	"ERR_VAL"
.LASF21:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF38:
	.string	"ERR_ARG"
.LASF33:
	.string	"ERR_CONN"
.LASF117:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF7:
	.string	"short int"
.LASF125:
	.string	"netif_output_fn"
.LASF45:
	.string	"PBUF_RAM"
.LASF66:
	.string	"input"
.LASF116:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF93:
	.string	"MEMP_FRAG_PBUF"
.LASF129:
	.string	"netif_mld_mac_filter_fn"
.LASF44:
	.string	"PBUF_RAW"
.LASF123:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF36:
	.string	"ERR_RST"
.LASF20:
	.string	"uint32_t"
.LASF35:
	.string	"ERR_ABRT"
.LASF131:
	.string	"nettestif_output"
.LASF96:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF91:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF95:
	.string	"MEMP_NETCONN"
.LASF106:
	.string	"MEMP_PBUF_POOL"
.LASF133:
	.string	"buffer"
.LASF98:
	.string	"MEMP_ARP_QUEUE"
.LASF84:
	.string	"loop_last"
.LASF83:
	.string	"loop_first"
.LASF142:
	.string	"nettestif_input"
.LASF113:
	.string	"u_addr"
.LASF37:
	.string	"ERR_CLSD"
.LASF26:
	.string	"ERR_RTE"
.LASF110:
	.string	"ip4_addr_t"
.LASF24:
	.string	"ERR_BUF"
.LASF112:
	.string	"ip6_addr_t"
.LASF120:
	.string	"lwip_internal_netif_client_data_index"
.LASF32:
	.string	"ERR_ISCONN"
.LASF61:
	.string	"ip6_addr"
.LASF17:
	.string	"uint8_t"
.LASF134:
	.string	"g_last_netif"
.LASF53:
	.string	"flags"
.LASF141:
	.string	"udp_pcb"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF86:
	.string	"l2_buffer_free_notify"
.LASF79:
	.string	"ip6_autoconfig_enabled"
.LASF71:
	.string	"client_data"
.LASF111:
	.string	"zone"
.LASF68:
	.string	"linkoutput"
.LASF136:
	.string	"pbuf_alloc"
.LASF23:
	.string	"ERR_MEM"
.LASF64:
	.string	"ip6_addr_pref_life"
.LASF97:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
