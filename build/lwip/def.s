	.file	"def.c"
	.text
.Ltext0:
	.section	.text.lwip_htons,"ax",@progbits
	.align	4
	.global	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/def.c"
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 77 0
	extui	a2, a2, 0, 16
	.loc 1 78 0
	slli	a8, a2, 8
	srli	a2, a2, 8
.LVL1:
	or	a2, a8, a2
	.loc 1 79 0
	extui	a2, a2, 0, 16
	retw.n
.LFE27:
	.size	lwip_htons, .-lwip_htons
	.section	.text.lwip_htonl,"ax",@progbits
	.literal_position
	.literal .LC0, 65280
	.literal .LC1, 16711680
	.align	4
	.global	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB28:
	.loc 1 91 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 92 0
	extui	a8, a2, 24, 8
	slli	a9, a2, 24
	or	a9, a9, a8
	l32r	a8, .LC0
	and	a8, a2, a8
	slli	a8, a8, 8
	or	a8, a9, a8
	l32r	a9, .LC1
	and	a2, a2, a9
.LVL3:
	srli	a2, a2, 8
	.loc 1 93 0
	or	a2, a8, a2
	retw.n
.LFE28:
	.size	lwip_htonl, .-lwip_htonl
	.section	.text.lwip_strnstr,"ax",@progbits
	.literal_position
	.align	4
	.global	lwip_strnstr
	.type	lwip_strnstr, @function
lwip_strnstr:
.LFB29:
	.loc 1 106 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 108 0
	mov.n	a10, a3
	call8	strlen
.LVL5:
	.loc 1 106 0
	mov.n	a5, a2
	.loc 1 108 0
	mov.n	a6, a10
.LVL6:
	.loc 1 109 0
	beqz.n	a10, .L4
	.loc 1 112 0 discriminator 1
	add.n	a4, a2, a4
.LVL7:
	j	.L5
.LVL8:
.L7:
	.loc 1 113 0
	l8ui	a8, a3, 0
	bne	a8, a5, .L6
	.loc 1 113 0 is_stmt 0 discriminator 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	strncmp
.LVL9:
	beqz.n	a10, .L4
.L6:
	.loc 1 112 0 is_stmt 1 discriminator 2
	addi.n	a2, a2, 1
.LVL10:
.L5:
	.loc 1 112 0 is_stmt 0 discriminator 1
	l8ui	a5, a2, 0
	beqz.n	a5, .L10
	.loc 1 112 0 discriminator 3
	add.n	a8, a2, a6
	bgeu	a4, a8, .L7
	.loc 1 117 0 is_stmt 1
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L10:
	mov.n	a2, a5
.LVL13:
.L4:
	.loc 1 118 0
	retw.n
.LFE29:
	.size	lwip_strnstr, .-lwip_strnstr
	.section	.text.lwip_stricmp,"ax",@progbits
	.align	4
	.global	lwip_stricmp
	.type	lwip_stricmp, @function
lwip_stricmp:
.LFB30:
	.loc 1 129 0
.LVL14:
	entry	sp, 32
.LCFI3:
.LBB2:
	.loc 1 136 0
	movi.n	a12, 0x20
	.loc 1 137 0
	movi.n	a13, 0x19
.LVL15:
.L15:
.LBE2:
	.loc 1 133 0
	l8ui	a8, a2, 0
.LVL16:
	.loc 1 134 0
	l8ui	a9, a3, 0
.LVL17:
	.loc 1 135 0
	beq	a8, a9, .L13
.LBB4:
	.loc 1 136 0
	or	a10, a8, a12
	extui	a10, a10, 0, 8
.LVL18:
	.loc 1 137 0
	addi	a11, a10, -97
	extui	a11, a11, 0, 8
	bltu	a13, a11, .L17
.LVL19:
.LBB3:
	.loc 1 141 0
	or	a9, a9, a12
.LVL20:
	extui	a9, a9, 0, 8
	bne	a10, a9, .L17
.LVL21:
.L13:
	addi.n	a2, a2, 1
.LVL22:
	addi.n	a3, a3, 1
.LVL23:
.LBE3:
.LBE4:
	.loc 1 151 0
	bnez.n	a8, .L15
	.loc 1 152 0
	mov.n	a2, a8
.LVL24:
	retw.n
.LVL25:
.L17:
.LBB5:
	.loc 1 148 0
	movi.n	a2, 1
.LVL26:
.LBE5:
	.loc 1 153 0
	retw.n
.LFE30:
	.size	lwip_stricmp, .-lwip_stricmp
	.section	.text.lwip_strnicmp,"ax",@progbits
	.align	4
	.global	lwip_strnicmp
	.type	lwip_strnicmp, @function
lwip_strnicmp:
.LFB31:
	.loc 1 164 0
.LVL27:
	entry	sp, 32
.LCFI4:
	mov.n	a9, a2
.LBB6:
	.loc 1 171 0
	movi.n	a12, 0x20
	.loc 1 172 0
	movi.n	a13, 0x19
.LVL28:
.L22:
.LBE6:
	.loc 1 168 0
	l8ui	a11, a9, 0
.LVL29:
	.loc 1 169 0
	l8ui	a8, a3, 0
.LVL30:
	.loc 1 170 0
	beq	a11, a8, .L20
.LBB8:
	.loc 1 171 0
	or	a10, a11, a12
	extui	a10, a10, 0, 8
.LVL31:
	.loc 1 172 0
	addi	a14, a10, -97
	extui	a14, a14, 0, 8
	bltu	a13, a14, .L25
.LVL32:
.LBB7:
	.loc 1 176 0
	or	a8, a8, a12
.LVL33:
	extui	a8, a8, 0, 8
	bne	a10, a8, .L25
.LVL34:
.L20:
	sub	a8, a4, a9
	add.n	a8, a2, a8
	addi.n	a9, a9, 1
.LVL35:
	addi.n	a3, a3, 1
.LVL36:
.LBE7:
.LBE8:
	.loc 1 186 0
	beqz.n	a11, .L26
	bnez.n	a8, .L22
.L26:
	.loc 1 187 0
	movi.n	a2, 0
.LVL37:
	retw.n
.LVL38:
.L25:
.LBB9:
	.loc 1 183 0
	movi.n	a2, 1
.LBE9:
	.loc 1 188 0
	retw.n
.LFE31:
	.size	lwip_strnicmp, .-lwip_strnicmp
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz"
	.section	.text.lwip_itoa,"ax",@progbits
	.literal_position
	.literal .LC4, 1717986919
	.literal .LC6, .LC5
	.align	4
	.global	lwip_itoa
	.type	lwip_itoa, @function
lwip_itoa:
.LFB32:
	.loc 1 199 0
.LVL39:
	entry	sp, 32
.LCFI5:
.LVL40:
	.loc 1 201 0
	mov.n	a10, a2
	.loc 1 207 0
	l32r	a13, .LC4
	.loc 1 208 0
	l32r	a12, .LC6
	j	.L32
.LVL41:
.L36:
	mov.n	a10, a11
	mov.n	a4, a8
.LVL42:
.L32:
	.loc 1 207 0 discriminator 1
	mulsh	a8, a4, a13
	srai	a9, a4, 31
	srai	a8, a8, 2
	sub	a8, a8, a9
.LVL43:
	.loc 1 208 0 discriminator 1
	slli	a9, a8, 29
	sub	a9, a9, a8
	subx4	a9, a9, a8
	addx2	a9, a9, a12
	add.n	a9, a9, a4
	l8ui	a9, a9, 35
	addi.n	a11, a10, 1
.LVL44:
	s8i	a9, a10, 0
	.loc 1 209 0 discriminator 1
	bnez.n	a8, .L36
	.loc 1 212 0
	bgez	a4, .L33
	.loc 1 213 0
	movi.n	a4, 0x2d
.LVL45:
	addi.n	a11, a10, 2
.LVL46:
	s8i	a4, a10, 1
.L33:
	.loc 1 215 0
	movi.n	a4, 0
	addi.n	a8, a11, -1
.LVL47:
	s8i	a4, a11, 0
	.loc 1 216 0
	j	.L34
.LVL48:
.L35:
	.loc 1 218 0
	l8ui	a9, a2, 0
	.loc 1 217 0
	l8ui	a4, a8, 0
.LVL49:
	.loc 1 218 0
	addi.n	a8, a8, -1
.LVL50:
	s8i	a9, a8, 1
.LVL51:
	.loc 1 219 0
	s8i	a4, a2, 0
	addi.n	a2, a2, 1
.LVL52:
.L34:
	.loc 1 216 0
	bltu	a2, a8, .L35
	.loc 1 221 0
	retw.n
.LFE32:
	.size	lwip_itoa, .-lwip_itoa
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x362
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x95
	.4byte	0x49
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4c
	.4byte	0xb6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.4byte	0xb6
	.4byte	.LLST0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5a
	.4byte	0xc1
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc1
	.4byte	.LLST1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x69
	.4byte	0x9e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x69
	.4byte	0xab
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x69
	.4byte	0xab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.4byte	0xab
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x34f
	.4byte	0x191
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x35a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x80
	.4byte	0x49
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x230
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x80
	.4byte	0xab
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x80
	.4byte	0xab
	.4byte	.LLST6
	.uleb128 0xb
	.string	"c1"
	.byte	0x1
	.byte	0x82
	.4byte	0xa4
	.4byte	.LLST7
	.uleb128 0xb
	.string	"c2"
	.byte	0x1
	.byte	0x82
	.4byte	0xa4
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x88
	.4byte	0xa4
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8c
	.4byte	0xa4
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa3
	.4byte	0x49
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa3
	.4byte	0xab
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa3
	.4byte	0xab
	.4byte	.LLST12
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0xb
	.string	"c1"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa4
	.4byte	.LLST14
	.uleb128 0xb
	.string	"c2"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa4
	.4byte	.LLST15
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0xab
	.4byte	0xa4
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xaf
	.4byte	0xa4
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34a
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc6
	.4byte	0x9e
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc6
	.4byte	0x49
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc8
	.4byte	0x34a
	.byte	0xa
	.uleb128 0xb
	.string	"ptr"
	.byte	0x1
	.byte	0xc9
	.4byte	0x9e
	.4byte	.LLST20
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc9
	.4byte	0x9e
	.4byte	.LLST21
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc9
	.4byte	0xa4
	.4byte	.LLST22
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0xca
	.4byte	0x49
	.4byte	.LLST23
	.byte	0
	.uleb128 0x6
	.4byte	0x49
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x23
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL25
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xa
	.byte	0x79
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x79
	.sleb128 -1
	.4byte	.LVL38
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL38
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x78
	.sleb128 1
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"size_t"
.LASF30:
	.string	"result"
.LASF17:
	.string	"_Bool"
.LASF20:
	.string	"lwip_strnstr"
.LASF38:
	.string	"strncmp"
.LASF1:
	.string	"short unsigned int"
.LASF18:
	.string	"lwip_htons"
.LASF28:
	.string	"c2_upc"
.LASF40:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/def.c"
.LASF37:
	.string	"strlen"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF36:
	.string	"tmp_value"
.LASF25:
	.string	"str1"
.LASF7:
	.string	"__uint16_t"
.LASF8:
	.string	"__uint32_t"
.LASF26:
	.string	"str2"
.LASF3:
	.string	"ptrdiff_t"
.LASF33:
	.string	"base"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF31:
	.string	"bufsize"
.LASF22:
	.string	"token"
.LASF10:
	.string	"long long unsigned int"
.LASF32:
	.string	"number"
.LASF12:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF29:
	.string	"lwip_strnicmp"
.LASF23:
	.string	"tokenlen"
.LASF42:
	.string	"lwip_itoa"
.LASF6:
	.string	"short int"
.LASF41:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF21:
	.string	"buffer"
.LASF15:
	.string	"uint16_t"
.LASF24:
	.string	"lwip_stricmp"
.LASF16:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"tmp_char"
.LASF27:
	.string	"c1_upc"
.LASF34:
	.string	"ptr1"
.LASF19:
	.string	"lwip_htonl"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
