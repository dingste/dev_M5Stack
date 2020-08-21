	.file	"ip6_addr.c"
	.text
.Ltext0:
	.section	.text.ip6addr_aton,"ax",@progbits
	.literal_position
	.align	4
	.global	ip6addr_aton
	.type	ip6addr_aton, @function
ip6addr_aton:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_addr.c"
	.loc 1 74 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 81 0
	mov.n	a4, a2
	.loc 1 80 0
	movi.n	a11, 8
	.loc 1 82 0
	movi.n	a6, 0x3a
	.loc 1 84 0
	movi.n	a7, 9
	movi	a9, -0x21
	.loc 1 81 0
	j	.L2
.LVL2:
.L6:
	.loc 1 82 0
	bne	a8, a6, .L3
	.loc 1 83 0
	addi.n	a11, a11, -1
.LVL3:
	j	.L4
.L3:
	.loc 1 84 0
	addi	a5, a8, -48
	extui	a5, a5, 0, 8
	bgeu	a7, a5, .L4
	.loc 1 84 0 is_stmt 0 discriminator 1
	and	a8, a8, a9
	addi	a8, a8, -65
	extui	a8, a8, 0, 8
	bltui	a8, 6, .L4
	movi.n	a8, 0
.L43:
	mov.n	a4, a8
.LVL4:
	mov.n	a9, a8
	.loc 1 94 0 is_stmt 1
	movi.n	a12, 0x3a
	.loc 1 132 0
	movi.n	a13, 9
	.loc 1 135 0
	movi.n	a14, 0x19
	.loc 1 132 0
	movi	a15, -0x21
	j	.L5
.LVL5:
.L4:
	.loc 1 81 0 discriminator 2
	addi.n	a4, a4, 1
.LVL6:
.L2:
	.loc 1 81 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 0
	bnez.n	a8, .L6
	j	.L43
.LVL7:
.L25:
	.loc 1 94 0 is_stmt 1
	bne	a10, a12, .L8
	.loc 1 95 0
	beqz.n	a3, .L9
	slli	a10, a9, 2
	add.n	a10, a3, a10
	.loc 1 96 0
	bbci	a4, 0, .L10
.LVL8:
	.loc 1 97 0
	l32i.n	a5, a10, 0
	addi.n	a9, a9, 1
.LVL9:
	or	a8, a5, a8
.LVL10:
	s32i.n	a8, a10, 0
	j	.L9
.LVL11:
.L10:
	.loc 1 100 0
	slli	a8, a8, 16
.LVL12:
	s32i.n	a8, a10, 0
.L9:
	.loc 1 103 0
	addi.n	a4, a4, 1
.LVL13:
	.loc 1 105 0
	bltui	a4, 8, .L11
.L14:
	.loc 1 107 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L11:
	.loc 1 109 0
	l8ui	a5, a2, 1
	.loc 1 104 0
	movi.n	a8, 0
	.loc 1 109 0
	bne	a5, a12, .L13
	.loc 1 110 0
	l8ui	a5, a2, 2
	bne	a5, a12, .L18
	j	.L14
.L19:
	.loc 1 118 0
	extui	a5, a4, 0, 1
	.loc 1 117 0
	addi.n	a11, a11, -1
.LVL16:
	.loc 1 118 0
	beqz.n	a5, .L16
.LVL17:
	.loc 1 119 0
	addi.n	a9, a9, 1
.LVL18:
	j	.L17
.LVL19:
.L16:
	.loc 1 121 0
	beqz.n	a3, .L17
	.loc 1 122 0
	addx4	a6, a9, a3
	s32i.n	a5, a6, 0
.L17:
	.loc 1 125 0
	addi.n	a4, a4, 1
.LVL20:
	.loc 1 126 0
	beqi	a4, 8, .L14
.L18:
	.loc 1 116 0
	bnez.n	a11, .L19
	.loc 1 114 0
	addi.n	a2, a2, 1
.LVL21:
	.loc 1 104 0
	mov.n	a8, a11
	j	.L13
.LVL22:
.L8:
	.loc 1 132 0
	addi	a5, a10, -48
	extui	a7, a5, 0, 8
	bgeu	a13, a7, .L20
	.loc 1 132 0 is_stmt 0 discriminator 1
	and	a6, a10, a15
	addi	a6, a6, -65
	extui	a6, a6, 0, 8
	bgeui	a6, 6, .L21
.L20:
	.loc 1 134 0 is_stmt 1
	slli	a8, a8, 4
.LVL23:
	.loc 1 135 0
	bgeu	a13, a7, .L23
	.loc 1 135 0 is_stmt 0 discriminator 2
	addi	a6, a10, -97
	extui	a6, a6, 0, 8
	addi	a5, a10, -55
	bltu	a14, a6, .L23
	.loc 1 135 0 discriminator 3
	addi	a5, a10, -87
.L23:
	.loc 1 134 0 is_stmt 1
	add.n	a8, a5, a8
.LVL24:
.L13:
	.loc 1 93 0 discriminator 2
	addi.n	a2, a2, 1
.LVL25:
.L5:
	.loc 1 93 0 is_stmt 0 discriminator 1
	l8ui	a10, a2, 0
	bnez.n	a10, .L25
.L21:
	.loc 1 143 0 is_stmt 1
	bnez.n	a3, .L26
.LVL26:
.L30:
	.loc 1 107 0
	addi	a4, a4, -7
.LVL27:
	movi.n	a3, 1
	movi.n	a2, 0
	moveqz	a2, a3, a4
	retw.n
.LVL28:
.L26:
	slli	a9, a9, 2
	add.n	a9, a3, a9
	.loc 1 144 0
	bbci	a4, 0, .L27
	.loc 1 145 0
	l32i.n	a2, a9, 0
.LVL29:
	or	a8, a2, a8
.LVL30:
	j	.L44
.LVL31:
.L27:
	.loc 1 148 0
	slli	a8, a8, 16
.LVL32:
.L44:
	s32i.n	a8, a9, 0
	j	.L28
.LVL33:
.L29:
	.loc 1 155 0 discriminator 3
	l32i.n	a10, a3, 0
	call8	lwip_htonl
.LVL34:
	s32i.n	a10, a3, 0
	addi.n	a3, a3, 4
	.loc 1 154 0 discriminator 3
	bne	a2, a3, .L29
	j	.L30
.LVL35:
.L28:
	addi	a2, a3, 16
	j	.L29
.LFE18:
	.size	ip6addr_aton, .-ip6addr_aton
	.section	.text.ip6addr_ntoa_r,"ax",@progbits
	.literal_position
	.literal .LC3, 61440
	.literal .LC4, 3840
	.align	4
	.global	ip6addr_ntoa_r
	.type	ip6addr_ntoa_r, @function
ip6addr_ntoa_r:
.LFB20:
	.loc 1 192 0
.LVL36:
	entry	sp, 48
.LCFI1:
.LVL37:
	.loc 1 198 0
	movi.n	a7, 0
	.loc 1 192 0
	mov.n	a9, a4
	.loc 1 197 0
	mov.n	a5, a7
	.loc 1 200 0
	mov.n	a4, a7
.LVL38:
.L70:
	.loc 1 202 0
	srli	a6, a4, 1
	addx4	a6, a6, a2
	l32i.n	a10, a6, 0
	s32i.n	a9, sp, 8
	call8	lwip_htonl
.LVL39:
	mov.n	a6, a10
.LVL40:
	.loc 1 203 0
	extui	a8, a4, 0, 1
	.loc 1 204 0
	extui	a10, a10, 16, 16
	moveqz	a6, a10, a8
.LVL41:
	.loc 1 206 0
	extui	a11, a6, 0, 16
.LVL42:
	.loc 1 209 0
	l32i.n	a9, sp, 8
	bnez.n	a11, .L47
	.loc 1 210 0
	addi	a12, a4, -7
	movi.n	a13, 1
	mov.n	a10, a11
	moveqz	a10, a13, a12
	extui	a12, a10, 0, 8
	beqz.n	a12, .L48
	addi.n	a10, a7, -1
	movnez	a13, a11, a10
	extui	a10, a13, 0, 8
	beqz.n	a10, .L48
.LVL43:
	.loc 1 212 0
	add.n	a2, a3, a5
.LVL44:
	movi.n	a4, 0x3a
.LVL45:
	s8i	a4, a2, 0
	addi.n	a5, a5, 1
.LVL46:
	.loc 1 213 0
	blt	a5, a9, .L49
.LVL47:
.L54:
	.loc 1 214 0
	movi.n	a2, 0
	retw.n
.LVL48:
.L48:
	.loc 1 218 0
	bnez.n	a7, .L51
	.loc 1 221 0
	addi.n	a10, a4, 1
	srli	a10, a10, 1
	addx4	a10, a10, a2
	l32i.n	a10, a10, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 8
	s32i.n	a11, sp, 4
	call8	lwip_htonl
.LVL49:
	.loc 1 223 0
	l32i.n	a8, sp, 0
	.loc 1 226 0
	l32i.n	a9, sp, 8
	.loc 1 223 0
	slli	a8, a8, 4
	ssr	a8
	srl	a10, a10
.LVL50:
	.loc 1 226 0
	extui	a8, a10, 0, 16
.LVL51:
	l32i.n	a11, sp, 4
	bnez.n	a8, .L53
.LVL52:
	.loc 1 228 0
	addi.n	a6, a5, 1
.LVL53:
	movi.n	a7, 0x3a
	add.n	a5, a3, a5
	s8i	a7, a5, 0
	.loc 1 229 0
	bge	a6, a9, .L54
	mov.n	a5, a6
	.loc 1 227 0
	movi.n	a7, 1
	j	.L55
.LVL54:
.L51:
	.loc 1 234 0
	bnei	a7, 1, .L53
	j	.L55
.L47:
	.loc 1 240 0
	addi.n	a10, a7, -1
	movi.n	a8, 2
	moveqz	a7, a8, a10
.LVL55:
.L53:
	.loc 1 243 0
	beqz.n	a4, .L72
	.loc 1 244 0
	addi.n	a8, a5, 1
.LVL56:
	movi.n	a10, 0x3a
	add.n	a5, a3, a5
	s8i	a10, a5, 0
	.loc 1 245 0
	blt	a8, a9, .L56
	j	.L54
.LVL57:
.L72:
	mov.n	a8, a5
.LVL58:
.L56:
	.loc 1 250 0
	l32r	a10, .LC3
	and	a5, a6, a10
	beqz.n	a5, .L73
	.loc 1 253 0
	srli	a5, a5, 12
	addi	a10, a5, 55
	movi.n	a13, 9
	addi.n	a12, a8, 1
.LVL59:
	extui	a10, a10, 0, 8
	add.n	a8, a3, a8
	bltu	a13, a5, .L59
	.loc 1 253 0 is_stmt 0 discriminator 1
	addi	a5, a5, 48
	extui	a10, a5, 0, 8
.L59:
	.loc 1 253 0 discriminator 4
	s8i	a10, a8, 0
.LVL60:
	.loc 1 255 0 is_stmt 1 discriminator 4
	bge	a12, a9, .L54
	mov.n	a8, a12
	.loc 1 254 0
	movi.n	a12, 0
.LVL61:
	j	.L57
.LVL62:
.L73:
	.loc 1 251 0
	movi.n	a12, 1
.L57:
	.loc 1 260 0
	l32r	a5, .LC4
	and	a5, a6, a5
	bnez.n	a5, .L75
	movi.n	a10, 1
	bnez.n	a12, .L60
.L75:
	.loc 1 263 0
	srli	a5, a5, 8
	addi	a10, a5, 55
	movi.n	a13, 9
	addi.n	a12, a8, 1
.LVL63:
	extui	a10, a10, 0, 8
	add.n	a8, a3, a8
	bltu	a13, a5, .L63
	.loc 1 263 0 is_stmt 0 discriminator 1
	addi	a5, a5, 48
	extui	a10, a5, 0, 8
.L63:
	.loc 1 263 0 discriminator 4
	s8i	a10, a8, 0
.LVL64:
	.loc 1 265 0 is_stmt 1 discriminator 4
	bge	a12, a9, .L54
	mov.n	a8, a12
	.loc 1 264 0
	movi.n	a10, 0
.LVL65:
.L60:
	.loc 1 270 0
	movi	a5, 0xf0
	and	a5, a6, a5
	bnez.n	a5, .L76
	bnez.n	a10, .L64
.L76:
	.loc 1 274 0
	srli	a5, a5, 4
	movi.n	a13, 9
	addi.n	a10, a8, 1
.LVL66:
	addi	a12, a5, 55
	add.n	a8, a3, a8
	bltu	a13, a5, .L67
	.loc 1 274 0 is_stmt 0 discriminator 1
	addi	a12, a5, 48
.L67:
	.loc 1 274 0 discriminator 4
	s8i	a12, a8, 0
.LVL67:
	.loc 1 276 0 is_stmt 1 discriminator 4
	bge	a10, a9, .L54
	mov.n	a8, a10
.LVL68:
.L64:
	extui	a11, a11, 0, 4
	.loc 1 281 0
	extui	a6, a6, 0, 4
.LVL69:
	movi.n	a12, 9
	addi.n	a5, a8, 1
.LVL70:
	addi	a10, a11, 55
	add.n	a8, a3, a8
	bltu	a12, a6, .L69
	.loc 1 281 0 is_stmt 0 discriminator 1
	addi	a10, a11, 48
.L69:
	.loc 1 281 0 discriminator 4
	s8i	a10, a8, 0
	.loc 1 282 0 is_stmt 1 discriminator 4
	bge	a5, a9, .L54
.LVL71:
.L55:
	.loc 1 200 0 discriminator 2
	addi.n	a4, a4, 1
.LVL72:
	bnei	a4, 8, .L70
.LVL73:
.L49:
	.loc 1 287 0
	add.n	a5, a3, a5
.LVL74:
	movi.n	a2, 0
	s8i	a2, a5, 0
	.loc 1 289 0
	mov.n	a2, a3
	.loc 1 290 0
	retw.n
.LFE20:
	.size	ip6addr_ntoa_r, .-ip6addr_ntoa_r
	.section	.text.ip6addr_ntoa,"ax",@progbits
	.literal_position
	.literal .LC5, str$5768
	.align	4
	.global	ip6addr_ntoa
	.type	ip6addr_ntoa, @function
ip6addr_ntoa:
.LFB19:
	.loc 1 176 0
.LVL75:
	entry	sp, 32
.LCFI2:
	.loc 1 178 0
	l32r	a11, .LC5
	movi.n	a12, 0x28
	mov.n	a10, a2
	call8	ip6addr_ntoa_r
.LVL76:
	.loc 1 179 0
	mov.n	a2, a10
.LVL77:
	retw.n
.LFE19:
	.size	ip6addr_ntoa, .-ip6addr_ntoa
	.section	.bss.str$5768,"aw",@nobits
	.type	str$5768, @object
	.size	str$5768, 40
str$5768:
	.zero	40
	.global	ip6_addr_any
	.section	.rodata.ip6_addr_any,"a",@progbits
	.align	4
	.type	ip6_addr_any, @object
	.size	ip6_addr_any, 20
ip6_addr_any:
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	6
	.zero	3
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
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
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x36d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x34
	.4byte	0xc1
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.4byte	0xd3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x10
	.byte	0x5
	.byte	0x3a
	.4byte	0x110
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3b
	.4byte	0x110
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xc1
	.4byte	0x120
	.uleb128 0xa
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3f
	.4byte	0xf7
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x36
	.4byte	0x14e
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x2e
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x46
	.4byte	0x16d
	.uleb128 0xe
	.string	"ip6"
	.byte	0x6
	.byte	0x47
	.4byte	0x120
	.uleb128 0xe
	.string	"ip4"
	.byte	0x6
	.byte	0x48
	.4byte	0xec
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x14
	.byte	0x6
	.byte	0x45
	.4byte	0x192
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.byte	0x49
	.4byte	0x14e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.byte	0x4b
	.4byte	0xab
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4c
	.4byte	0x16d
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x49
	.4byte	0x33
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0x10
	.string	"cp"
	.byte	0x1
	.byte	0x49
	.4byte	0xa0
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x49
	.4byte	0x226
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4b
	.4byte	0xc1
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4b
	.4byte	0xc1
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4b
	.4byte	0xc1
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4b
	.4byte	0xc1
	.4byte	.LLST5
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x4c
	.4byte	0xa0
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x365
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x120
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbf
	.4byte	0x93
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2db
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0xbf
	.4byte	0x2db
	.4byte	.LLST7
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xbf
	.4byte	0x93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbf
	.4byte	0x33
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc1
	.4byte	0xc1
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc1
	.4byte	0xc1
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc1
	.4byte	0xc1
	.4byte	.LLST11
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.4byte	0xb6
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc3
	.4byte	0xab
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc3
	.4byte	0xab
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	0x365
	.uleb128 0x14
	.4byte	.LVL49
	.4byte	0x365
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2e1
	.uleb128 0x6
	.4byte	0x120
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0xaf
	.4byte	0x93
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0xaf
	.4byte	0x2db
	.4byte	.LLST15
	.uleb128 0x16
	.string	"str"
	.byte	0x1
	.byte	0xb1
	.4byte	0x33f
	.uleb128 0x5
	.byte	0x3
	.4byte	str$5768
	.uleb128 0x17
	.4byte	.LVL76
	.4byte	0x22c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	str$5768
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x99
	.4byte	0x34f
	.uleb128 0xa
	.4byte	0x85
	.byte	0x27
	.byte	0
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x33
	.4byte	0x360
	.uleb128 0x5
	.byte	0x3
	.4byte	ip6_addr_any
	.uleb128 0x6
	.4byte	0x192
	.uleb128 0x1a
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LVL53
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL69
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"current_block_index"
.LASF5:
	.string	"__uint8_t"
.LASF42:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_addr.c"
.LASF6:
	.string	"__int32_t"
.LASF37:
	.string	"next_block_value"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"ip4_addr"
.LASF35:
	.string	"ip6addr_ntoa_r"
.LASF39:
	.string	"empty_block_flag"
.LASF45:
	.string	"ip6_addr_any"
.LASF22:
	.string	"ip6_addr_t"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"u_addr"
.LASF3:
	.string	"unsigned char"
.LASF38:
	.string	"zero_flag"
.LASF12:
	.string	"long unsigned int"
.LASF21:
	.string	"addr"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"__uint32_t"
.LASF44:
	.string	"lwip_ip_addr_type"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"buflen"
.LASF18:
	.string	"ip4_addr_t"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF34:
	.string	"ip6addr_aton"
.LASF29:
	.string	"ip_addr_t"
.LASF33:
	.string	"current_block_value"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF30:
	.string	"addr_index"
.LASF8:
	.string	"long long int"
.LASF20:
	.string	"ip6_addr"
.LASF28:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF43:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF31:
	.string	"zero_blocks"
.LASF26:
	.string	"ip_addr"
.LASF10:
	.string	"long int"
.LASF40:
	.string	"ip6addr_ntoa"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"IPADDR_TYPE_V4"
.LASF24:
	.string	"IPADDR_TYPE_V6"
.LASF17:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
.LASF25:
	.string	"IPADDR_TYPE_ANY"
.LASF46:
	.string	"lwip_htonl"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
