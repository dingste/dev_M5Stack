	.file	"netdb.c"
	.text
.Ltext0:
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.literal_position
	.literal .LC0, s_hostent$6734
	.literal .LC1, h_errno
	.literal .LC2, s_hostent_addr$6736
	.literal .LC3, s_phostent_addr$6737
	.literal .LC4, s_hostname$6738
	.literal .LC5, s_aliases$6735
	.align	4
	.global	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB36:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/api/netdb.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 100 0
	movi.n	a12, 2
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL1:
	extui	a3, a10, 0, 8
.LVL2:
	.loc 1 101 0
	beqz.n	a3, .L2
	.loc 1 103 0
	l32r	a2, .LC1
.LVL3:
	movi	a3, 0xd2
	s32i.n	a3, a2, 0
	.loc 1 104 0
	movi.n	a2, 0
	retw.n
.LVL4:
.L2:
	.loc 1 108 0
	l32r	a5, .LC2
	movi.n	a6, 0x14
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a5
.LVL5:
	call8	memcpy
.LVL6:
	.loc 1 109 0
	l32r	a4, .LC3
	.loc 1 111 0
	mov.n	a11, a2
	.loc 1 109 0
	s32i.n	a5, a4, 0
	.loc 1 111 0
	l32r	a5, .LC4
	movi	a12, 0x100
	.loc 1 112 0
	addmi	a2, a5, 0x100
.LVL7:
	.loc 1 111 0
	mov.n	a10, a5
	.loc 1 110 0
	s32i.n	a3, a4, 4
	.loc 1 111 0
	call8	strncpy
.LVL8:
	.loc 1 112 0
	s8i	a3, a2, 0
	.loc 1 113 0
	l32r	a2, .LC0
	s32i.n	a5, a2, 0
	.loc 1 114 0
	l32r	a5, .LC5
	.loc 1 117 0
	s32i.n	a6, a2, 12
	.loc 1 114 0
	s32i.n	a3, a5, 0
	.loc 1 116 0
	movi.n	a3, 2
.LVL9:
	.loc 1 115 0
	s32i.n	a5, a2, 4
	.loc 1 116 0
	s32i.n	a3, a2, 8
	.loc 1 118 0
	s32i.n	a4, a2, 16
	.loc 1 143 0
	retw.n
.LFE36:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	4
	.global	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB37:
	.loc 1 164 0
.LVL10:
	entry	sp, 64
.LCFI1:
	.loc 1 173 0
	mov.n	a13, sp
	.loc 1 164 0
	.loc 1 173 0
	movnez	a13, a7, a7
.LVL11:
	.loc 1 176 0
	bnez.n	a6, .L6
	j	.L12
.L6:
	.loc 1 182 0
	movi.n	a8, 0
	.loc 1 183 0
	movi.n	a7, 1
	mov.n	a10, a8
	mov.n	a9, a8
	moveqz	a10, a7, a3
	moveqz	a9, a7, a4
	.loc 1 182 0
	s32i.n	a8, a6, 0
	.loc 1 183 0
	or	a8, a10, a9
	bnez.n	a8, .L12
	moveqz	a8, a7, a2
	beqz.n	a8, .L8
.L12:
	.loc 1 185 0
	movi.n	a2, 0x16
.LVL12:
	j	.L13
.LVL13:
.L8:
	.loc 1 189 0
	mov.n	a10, a2
	s32i.n	a13, sp, 20
	call8	strlen
.LVL14:
	.loc 1 190 0
	addi	a7, a10, 36
	.loc 1 189 0
	mov.n	a8, a10
.LVL15:
	.loc 1 190 0
	l32i.n	a13, sp, 20
	bgeu	a5, a7, .L10
.LVL16:
	.loc 1 192 0
	movi.n	a2, 0x22
.LVL17:
	j	.L13
.LVL18:
.L10:
	.loc 1 196 0
	movi.n	a5, -4
.LVL19:
	addi.n	a4, a4, 3
.LVL20:
	and	a4, a4, a5
.LVL21:
	.loc 1 200 0
	addi.n	a5, a4, 8
	mov.n	a11, a5
	movi.n	a12, 2
	mov.n	a10, a2
	s32i.n	a5, sp, 16
	s32i.n	a8, sp, 24
	s32i.n	a13, sp, 20
	call8	netconn_gethostbyname_addrtype
.LVL22:
	extui	a5, a10, 0, 8
	.loc 1 197 0
	addi	a7, a4, 32
.LVL23:
	.loc 1 201 0
	l32i.n	a8, sp, 24
	l32i.n	a13, sp, 20
	beqz.n	a5, .L11
	.loc 1 203 0
	movi	a2, 0xd2
.LVL24:
.L13:
	s32i.n	a2, a13, 0
	.loc 1 204 0
	movi.n	a2, -1
	retw.n
.LVL25:
.L11:
	.loc 1 208 0
	mov.n	a12, a8
	mov.n	a11, a2
	mov.n	a10, a7
.LVL26:
	s32i.n	a8, sp, 24
	call8	memcpy
.LVL27:
	.loc 1 209 0
	l32i.n	a8, sp, 24
	.loc 1 212 0
	l32i.n	a2, sp, 16
.LVL28:
	.loc 1 209 0
	add.n	a8, a7, a8
	s8i	a5, a8, 0
	.loc 1 212 0
	s32i.n	a2, a4, 0
	.loc 1 213 0
	s32i.n	a5, a4, 4
	.loc 1 214 0
	s32i.n	a5, a4, 28
	.loc 1 216 0
	addi	a2, a4, 28
	s32i.n	a2, a3, 4
	.loc 1 217 0
	movi.n	a2, 2
	s32i.n	a2, a3, 8
	.loc 1 218 0
	movi.n	a2, 0x14
	s32i.n	a2, a3, 12
	.loc 1 215 0
	s32i.n	a7, a3, 0
	.loc 1 219 0
	s32i.n	a4, a3, 16
	.loc 1 222 0
	s32i.n	a3, a6, 0
	.loc 1 225 0
	mov.n	a2, a5
	.loc 1 226 0
	retw.n
.LFE37:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	4
	.global	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB38:
	.loc 1 237 0
.LVL29:
	entry	sp, 32
.LCFI2:
	j	.L17
.L16:
	.loc 1 242 0
	movi.n	a10, 0xc
	.loc 1 241 0
	l32i.n	a2, a11, 28
.LVL30:
	.loc 1 242 0
	call8	memp_free
.LVL31:
.L17:
	.loc 1 243 0
	mov.n	a11, a2
	.loc 1 240 0
	bnez.n	a2, .L16
	.loc 1 245 0
	retw.n
.LFE38:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.literal_position
	.literal .LC6, 65534
	.literal .LC7, 16777216
	.literal .LC8, 16777343
	.literal .LC9, -65536
	.align	4
	.global	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB39:
	.loc 1 271 0
.LVL32:
	entry	sp, 80
.LCFI3:
.LVL33:
	.loc 1 271 0
	mov.n	a7, a4
	.loc 1 281 0
	bnez.n	a5, .L19
.LVL34:
.L29:
	.loc 1 282 0
	movi	a9, 0xca
	j	.L79
.LVL35:
.L19:
	.loc 1 284 0
	movi.n	a4, 0
.LVL36:
	s32i.n	a4, a5, 0
	.loc 1 285 0
	bne	a2, a4, .L21
	bne	a3, a4, .L21
.LVL37:
.L26:
	.loc 1 286 0
	movi	a9, 0xc8
	j	.L79
.LVL38:
.L21:
	.loc 1 289 0
	beqz.n	a7, .L45
	.loc 1 290 0
	l32i.n	a4, a7, 4
.LVL39:
	.loc 1 291 0
	movi.n	a6, -3
	bnone	a4, a6, .L22
	.loc 1 299 0
	movi	a9, 0xcc
	.loc 1 296 0
	bnei	a4, 10, .L79
	j	.L22
.LVL40:
.L45:
	.loc 1 302 0
	mov.n	a4, a7
.L22:
.LVL41:
	.loc 1 305 0
	beqz.n	a3, .L23
	.loc 1 308 0
	mov.n	a10, a3
	call8	atoi
.LVL42:
	.loc 1 309 0
	l32r	a8, .LC6
	addi.n	a6, a10, -1
	.loc 1 308 0
	mov.n	a3, a10
.LVL43:
	.loc 1 310 0
	movi	a9, 0xc9
	.loc 1 309 0
	bltu	a8, a6, .L79
.LVL44:
.L23:
	.loc 1 314 0
	beqz.n	a2, .L24
	.loc 1 316 0
	beqz.n	a7, .L25
	.loc 1 316 0 discriminator 1
	l32i.n	a6, a7, 0
	bbci	a6, 2, .L25
	.loc 1 318 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL45:
	beqz.n	a10, .L26
	.loc 1 322 0
	l8ui	a6, sp, 16
	bnei	a6, 6, .L27
	.loc 1 322 0 is_stmt 0 discriminator 1
	bnei	a4, 2, .L28
	j	.L26
.L27:
	.loc 1 322 0 discriminator 3
	bnez.n	a6, .L28
	.loc 1 323 0 is_stmt 1
	beqi	a4, 10, .L26
.LVL46:
.L37:
	.loc 1 368 0
	mov.n	a10, a2
	call8	strlen
.LVL47:
	s32i.n	a10, sp, 32
.LVL48:
	.loc 1 369 0
	movi	a4, 0x100
	bltu	a4, a10, .L29
	j	.L95
.LVL49:
.L25:
.LBB2:
	.loc 1 332 0
	movi.n	a12, 0
	.loc 1 331 0
	beqi	a4, 2, .L31
	.loc 1 330 0
	movi.n	a12, 2
	.loc 1 333 0
	bnei	a4, 10, .L31
.LVL50:
	.loc 1 336 0
	l32i.n	a12, a7, 0
	.loc 1 337 0
	movi.n	a8, 3
	.loc 1 336 0
	extui	a6, a12, 4, 1
	.loc 1 337 0
	movi.n	a12, 1
	movnez	a12, a8, a6
.LVL51:
.L31:
	.loc 1 342 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL52:
	extui	a10, a10, 0, 8
.LVL53:
	.loc 1 343 0
	bnez.n	a10, .L29
	j	.L28
.LVL54:
.L24:
.LBE2:
	.loc 1 349 0
	beqz.n	a7, .L32
	.loc 1 349 0 discriminator 1
	l32i.n	a6, a7, 0
	bbci	a6, 0, .L32
	.loc 1 350 0
	s32i.n	a2, sp, 0
	bnei	a4, 10, .L33
	.loc 1 350 0 is_stmt 0 discriminator 1
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	s32i.n	a2, sp, 12
	j	.L97
.L33:
	.loc 1 350 0 is_stmt 1 discriminator 2
	s8i	a2, sp, 16
	j	.L35
.L32:
	.loc 1 352 0
	bnei	a4, 10, .L36
	.loc 1 352 0 is_stmt 0 discriminator 1
	movi.n	a4, 0
.LVL55:
	s32i.n	a4, sp, 0
	s32i.n	a4, sp, 4
	s32i.n	a4, sp, 8
	l32r	a4, .LC7
	s32i.n	a4, sp, 12
.L97:
	.loc 1 352 0 is_stmt 1 discriminator 1
	movi.n	a4, 6
	s8i	a4, sp, 16
	j	.L34
.LVL56:
.L36:
	.loc 1 352 0 is_stmt 0 discriminator 2
	l32r	a4, .LC8
.LVL57:
	s32i.n	a4, sp, 0
	.loc 1 352 0 is_stmt 1 discriminator 2
	movi.n	a4, 0
	s8i	a4, sp, 16
	j	.L35
.LVL58:
.L28:
	.loc 1 358 0
	bnei	a4, 10, .L37
	j	.L34
.LVL59:
.L43:
	.loc 1 359 0
	l8ui	a4, sp, 16
	bnez.n	a4, .L38
	.loc 1 361 0
	l32i.n	a6, sp, 0
	s32i.n	a4, sp, 4
	s32i.n	a6, sp, 12
	l32r	a6, .LC9
	s32i.n	a4, sp, 0
	s32i.n	a6, sp, 8
.L38:
.LVL60:
	.loc 1 367 0
	bnez.n	a2, .L37
	j	.L35
.LVL61:
.L95:
	.loc 1 373 0
	l32i.n	a6, sp, 32
	addi	a4, a6, 61
.LVL62:
.L44:
	.loc 1 379 0
	movi.n	a10, 0xc
	call8	memp_malloc
.LVL63:
	mov.n	a6, a10
.LVL64:
	.loc 1 381 0
	movi	a9, 0xcb
	.loc 1 380 0
	beqz.n	a10, .L79
	.loc 1 383 0
	mov.n	a12, a4
	movi.n	a11, 0
	call8	memset
.LVL65:
	.loc 1 386 0
	l8ui	a9, sp, 16
	.loc 1 385 0
	addi	a4, a6, 32
.LVL66:
	.loc 1 386 0
	bnei	a9, 6, .L39
.LVL67:
.LBB3:
	.loc 1 390 0
	l32i.n	a9, sp, 0
	.loc 1 393 0
	mov.n	a10, a3
	.loc 1 390 0
	s32i.n	a9, a6, 40
	l32i.n	a9, sp, 4
	.loc 1 394 0
	movi.n	a3, 0xa
.LVL68:
	.loc 1 390 0
	s32i.n	a9, a6, 44
	l32i.n	a9, sp, 8
	s32i.n	a9, a6, 48
	l32i.n	a9, sp, 12
	s32i.n	a9, a6, 52
	.loc 1 391 0
	movi.n	a9, 0xa
	s8i	a9, a6, 33
	.loc 1 392 0
	movi.n	a9, 0x1c
	s8i	a9, a6, 32
	.loc 1 393 0
	call8	lwip_htons
.LVL69:
	s16i	a10, a6, 34
	j	.L96
.LVL70:
.L39:
.LBE3:
.LBB4:
	.loc 1 400 0
	l32i.n	a9, sp, 0
	.loc 1 403 0
	mov.n	a10, a3
	.loc 1 400 0
	s32i.n	a9, a6, 36
	.loc 1 401 0
	movi.n	a9, 2
	s8i	a9, a6, 33
	.loc 1 402 0
	movi.n	a9, 0x10
	s8i	a9, a6, 32
	.loc 1 403 0
	call8	lwip_htons
.LVL71:
	s16i	a10, a6, 34
	.loc 1 404 0
	movi.n	a3, 2
.LVL72:
.L96:
	s32i.n	a3, a6, 4
.LBE4:
	.loc 1 409 0
	beqz.n	a7, .L41
	.loc 1 411 0
	l32i.n	a3, a7, 8
	s32i.n	a3, a6, 8
	.loc 1 412 0
	l32i.n	a3, a7, 12
	s32i.n	a3, a6, 12
.L41:
	.loc 1 414 0
	beqz.n	a2, .L42
	.loc 1 416 0
	addi	a3, a6, 60
	.loc 1 417 0
	l32i.n	a12, sp, 32
	mov.n	a11, a2
	.loc 1 416 0
	s32i.n	a3, a6, 24
	.loc 1 417 0
	mov.n	a10, a3
	call8	memcpy
.LVL73:
	.loc 1 418 0
	l32i.n	a2, sp, 32
.LVL74:
	add.n	a7, a3, a2
.LVL75:
	movi.n	a2, 0
	s8i	a2, a7, 0
.L42:
	.loc 1 420 0
	movi.n	a2, 0x1c
	s32i.n	a2, a6, 16
	.loc 1 421 0
	s32i.n	a4, a6, 20
	.loc 1 423 0
	s32i.n	a6, a5, 0
	.loc 1 425 0
	movi.n	a9, 0
	j	.L79
.LVL76:
.L34:
	.loc 1 358 0
	l32i.n	a4, a7, 0
	bbsi	a4, 4, .L43
	j	.L38
.L35:
	.loc 1 278 0
	movi.n	a4, 0
	s32i.n	a4, sp, 32
	.loc 1 366 0
	movi.n	a4, 0x3c
	j	.L44
.LVL77:
.L79:
	.loc 1 426 0
	mov.n	a2, a9
	retw.n
.LFE39:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.section	.bss.s_aliases$6735,"aw",@nobits
	.align	4
	.type	s_aliases$6735, @object
	.size	s_aliases$6735, 4
s_aliases$6735:
	.zero	4
	.section	.bss.s_hostent$6734,"aw",@nobits
	.align	4
	.type	s_hostent$6734, @object
	.size	s_hostent$6734, 20
s_hostent$6734:
	.zero	20
	.section	.bss.s_hostname$6738,"aw",@nobits
	.type	s_hostname$6738, @object
	.size	s_hostname$6738, 257
s_hostname$6738:
	.zero	257
	.section	.bss.s_phostent_addr$6737,"aw",@nobits
	.align	4
	.type	s_phostent_addr$6737, @object
	.size	s_phostent_addr$6737, 8
s_phostent_addr$6737:
	.zero	8
	.section	.bss.s_hostent_addr$6736,"aw",@nobits
	.align	4
	.type	s_hostent_addr$6736, @object
	.size	s_hostent_addr$6736, 20
s_hostent_addr$6736:
	.zero	20
	.comm	h_errno,4,4
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI0-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netdb.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/api.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xae0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x6
	.4byte	0xba
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xdc
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x108
	.4byte	0x12a
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xe7
	.4byte	0x13a
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x35
	.4byte	0xad
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x15e
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0x34
	.4byte	0x108
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x39
	.4byte	0x145
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x182
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3b
	.4byte	0x182
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x108
	.4byte	0x192
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3f
	.4byte	0x169
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x36
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2e
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x8
	.byte	0x46
	.4byte	0x1df
	.uleb128 0xe
	.string	"ip6"
	.byte	0x8
	.byte	0x47
	.4byte	0x192
	.uleb128 0xe
	.string	"ip4"
	.byte	0x8
	.byte	0x48
	.4byte	0x15e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x14
	.byte	0x8
	.byte	0x45
	.4byte	0x204
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x49
	.4byte	0x1c0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x4b
	.4byte	0xe7
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x4c
	.4byte	0x1df
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x9
	.byte	0x37
	.4byte	0x108
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x233
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3b
	.4byte	0x20f
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.byte	0x3f
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x9
	.byte	0x40
	.4byte	0x182
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x9
	.byte	0x41
	.4byte	0x12a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x10
	.byte	0x9
	.byte	0x3e
	.4byte	0x26a
	.uleb128 0x10
	.string	"un"
	.byte	0x9
	.byte	0x42
	.4byte	0x233
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xa
	.byte	0x39
	.4byte	0xdc
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x3d
	.4byte	0x2e8
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.sleb128 -1
	.uleb128 0x12
	.4byte	.LASF45
	.sleb128 -2
	.uleb128 0x12
	.4byte	.LASF46
	.sleb128 -3
	.uleb128 0x12
	.4byte	.LASF47
	.sleb128 -4
	.uleb128 0x12
	.4byte	.LASF48
	.sleb128 -5
	.uleb128 0x12
	.4byte	.LASF49
	.sleb128 -6
	.uleb128 0x12
	.4byte	.LASF50
	.sleb128 -7
	.uleb128 0x12
	.4byte	.LASF51
	.sleb128 -8
	.uleb128 0x12
	.4byte	.LASF52
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF53
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF54
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF55
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF56
	.sleb128 -13
	.uleb128 0x12
	.4byte	.LASF57
	.sleb128 -14
	.uleb128 0x12
	.4byte	.LASF58
	.sleb128 -15
	.uleb128 0x12
	.4byte	.LASF59
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x3a
	.4byte	0xe7
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xb
	.byte	0x3f
	.4byte	0xfd
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x10
	.byte	0xb
	.byte	0x44
	.4byte	0x347
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xb
	.byte	0x45
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xb
	.byte	0x46
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.byte	0x47
	.4byte	0x2f3
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0x48
	.4byte	0x21a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xb
	.byte	0x4a
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x1c
	.byte	0xb
	.byte	0x4f
	.4byte	0x39c
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xb
	.byte	0x50
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xb
	.byte	0x51
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0x52
	.4byte	0x2f3
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xb
	.byte	0x53
	.4byte	0x108
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xb
	.byte	0x54
	.4byte	0x252
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xb
	.byte	0x55
	.4byte	0x108
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x10
	.byte	0xb
	.byte	0x59
	.4byte	0x3cd
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xb
	.byte	0x5a
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xb
	.byte	0x5b
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xb
	.byte	0x5c
	.4byte	0x3cd
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x3dd
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xb
	.byte	0x5f
	.4byte	0x426
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xb
	.byte	0x60
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.byte	0x61
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0x62
	.4byte	0x426
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.byte	0x63
	.4byte	0x11a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.byte	0x65
	.4byte	0x11a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x436
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xb
	.byte	0x6c
	.4byte	0x108
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x14
	.byte	0xc
	.byte	0x5c
	.4byte	0x48a
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5d
	.4byte	0xb4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5e
	.4byte	0x48a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xc
	.byte	0x60
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.byte	0x61
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xc
	.byte	0x62
	.4byte	0x48a
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x20
	.byte	0xc
	.byte	0x67
	.4byte	0x4fd
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xc
	.byte	0x68
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xc
	.byte	0x69
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6a
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xc
	.byte	0x6b
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xc
	.byte	0x6c
	.4byte	0x436
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xc
	.byte	0x6d
	.4byte	0x4fd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xc
	.byte	0x6e
	.4byte	0xb4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xc
	.byte	0x6f
	.4byte	0x503
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x39c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x490
	.uleb128 0x11
	.byte	0x4
	.4byte	0x30
	.byte	0xd
	.byte	0x34
	.4byte	0x588
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x20
	.byte	0x1
	.byte	0x35
	.4byte	0x5b9
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0x36
	.4byte	0x5b9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.4byte	0x204
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0x1
	.byte	0x38
	.4byte	0xb4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x5c9
	.4byte	0x5c9
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x204
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.byte	0x57
	.4byte	0x6c7
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c7
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0x57
	.4byte	0xc1
	.4byte	.LLST0
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0x59
	.4byte	0x26a
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5a
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5d
	.4byte	0x441
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent$6734
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5e
	.4byte	0xb4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_aliases$6735
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0x5f
	.4byte	0x204
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent_addr$6736
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x60
	.4byte	0x5b9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phostent_addr$6737
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x61
	.4byte	0x6cd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostname$6738
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0xa78
	.4byte	0x688
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0xa84
	.4byte	0x6a8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0xa8d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x441
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x6de
	.uleb128 0x1a
	.4byte	0xa6
	.2byte	0x100
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa2
	.4byte	0x3e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7df
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0xa2
	.4byte	0xc1
	.4byte	.LLST2
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.4byte	0x6c7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.4byte	0xb4
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x1
	.byte	0xa3
	.4byte	0x7df
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x1
	.byte	0xa3
	.4byte	0x7e5
	.4byte	.LLST5
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.4byte	0x26a
	.4byte	.LLST6
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0xa6
	.4byte	0x7eb
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0xa7
	.4byte	0xb4
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0xa98
	.4byte	0x7a9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0xa78
	.4byte	0x7c8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0xa84
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x588
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0xec
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x833
	.uleb128 0x1c
	.string	"ai"
	.byte	0x1
	.byte	0xec
	.4byte	0x503
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0xee
	.4byte	0x503
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xaa3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x10d
	.4byte	0x3e
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x10d
	.4byte	0xc1
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x10d
	.4byte	0xc1
	.4byte	.LLST13
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa2f
	.4byte	.LLST14
	.uleb128 0x22
	.string	"res"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa3a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"err"
	.byte	0x1
	.2byte	0x110
	.4byte	0x26a
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x111
	.4byte	0x204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"ai"
	.byte	0x1
	.2byte	0x112
	.4byte	0x503
	.4byte	.LLST16
	.uleb128 0x23
	.string	"sa"
	.byte	0x1
	.2byte	0x113
	.4byte	0xa40
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x114
	.4byte	0x3e
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x115
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x116
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x117
	.4byte	0x3e
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	.LASF159
	.4byte	0xa56
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x947
	.uleb128 0x25
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x14a
	.4byte	0xe7
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xa78
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x96e
	.uleb128 0x23
	.string	"sa6"
	.byte	0x1
	.2byte	0x184
	.4byte	0xa5b
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LVL69
	.4byte	0xaae
	.byte	0
	.uleb128 0x27
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x99c
	.uleb128 0x23
	.string	"sa4"
	.byte	0x1
	.2byte	0x18e
	.4byte	0xa61
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0xaae
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0xab9
	.4byte	0x9b0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0xac4
	.4byte	0x9cb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0xa98
	.4byte	0x9df
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0xacf
	.4byte	0x9f2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL65
	.4byte	0xada
	.4byte	0xa11
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0xa84
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa35
	.uleb128 0x6
	.4byte	0x490
	.uleb128 0x5
	.byte	0x4
	.4byte	0x503
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xa56
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xa46
	.uleb128 0x5
	.byte	0x4
	.4byte	0x347
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fe
	.uleb128 0x29
	.4byte	.LASF160
	.byte	0x1
	.byte	0x3d
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	h_errno
	.uleb128 0x2a
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x156
	.uleb128 0x2b
	.4byte	.LASF152
	.4byte	.LASF152
	.uleb128 0x2c
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xf
	.byte	0x24
	.uleb128 0x2c
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xf
	.byte	0x21
	.uleb128 0x2c
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x95
	.uleb128 0x2c
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x10
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x11
	.byte	0x4e
	.uleb128 0x2c
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x8
	.byte	0xe0
	.uleb128 0x2c
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xd
	.byte	0x93
	.uleb128 0x2b
	.4byte	.LASF153
	.4byte	.LASF153
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
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
	.uleb128 0x25
	.uleb128 0x34
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE36
	.2byte	0x5
	.byte	0x3
	.4byte	s_aliases$6735
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x74
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL11
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x91
	.sleb128 -64
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LFE37
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x91
	.sleb128 -64
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL25
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22-1
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x77
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL77
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"IPADDR_TYPE_ANY"
.LASF102:
	.string	"MEMP_UDP_PCB"
.LASF121:
	.string	"addr_list"
.LASF112:
	.string	"MEMP_SYS_TIMEOUT"
.LASF53:
	.string	"ERR_ISCONN"
.LASF93:
	.string	"ai_flags"
.LASF114:
	.string	"MEMP_ND6_QUEUE"
.LASF39:
	.string	"u32_addr"
.LASF26:
	.string	"ip6_addr"
.LASF2:
	.string	"size_t"
.LASF40:
	.string	"u8_addr"
.LASF113:
	.string	"MEMP_NETDB"
.LASF122:
	.string	"aliases"
.LASF92:
	.string	"addrinfo"
.LASF5:
	.string	"__uint8_t"
.LASF147:
	.string	"memp_free"
.LASF79:
	.string	"sockaddr_storage"
.LASF34:
	.string	"type"
.LASF145:
	.string	"strncpy"
.LASF12:
	.string	"long long unsigned int"
.LASF36:
	.string	"in_addr_t"
.LASF142:
	.string	"port_nr"
.LASF105:
	.string	"MEMP_TCP_SEG"
.LASF85:
	.string	"socklen_t"
.LASF3:
	.string	"__int8_t"
.LASF143:
	.string	"total_size"
.LASF110:
	.string	"MEMP_ARP_QUEUE"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"long unsigned int"
.LASF51:
	.string	"ERR_USE"
.LASF124:
	.string	"s_aliases"
.LASF46:
	.string	"ERR_TIMEOUT"
.LASF115:
	.string	"MEMP_IP6_REASSDATA"
.LASF134:
	.string	"hostname"
.LASF13:
	.string	"long int"
.LASF101:
	.string	"MEMP_RAW_PCB"
.LASF25:
	.string	"ip4_addr"
.LASF152:
	.string	"memcpy"
.LASF86:
	.string	"hostent"
.LASF71:
	.string	"sin6_port"
.LASF28:
	.string	"ip6_addr_t"
.LASF62:
	.string	"sockaddr_in"
.LASF43:
	.string	"ERR_OK"
.LASF119:
	.string	"MEMP_MAX"
.LASF111:
	.string	"MEMP_IGMP_GROUP"
.LASF10:
	.string	"__uint32_t"
.LASF104:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF7:
	.string	"__int16_t"
.LASF67:
	.string	"sin_zero"
.LASF151:
	.string	"memp_malloc"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"s_addr"
.LASF20:
	.string	"uint16_t"
.LASF136:
	.string	"lh_errno"
.LASF146:
	.string	"strlen"
.LASF23:
	.string	"mem_ptr_t"
.LASF95:
	.string	"ai_socktype"
.LASF87:
	.string	"h_name"
.LASF52:
	.string	"ERR_ALREADY"
.LASF123:
	.string	"s_hostent"
.LASF154:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF130:
	.string	"name"
.LASF103:
	.string	"MEMP_TCP_PCB"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"sin_addr"
.LASF24:
	.string	"ip4_addr_t"
.LASF155:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/api/netdb.c"
.LASF108:
	.string	"MEMP_TCPIP_MSG_API"
.LASF89:
	.string	"h_addrtype"
.LASF61:
	.string	"in_port_t"
.LASF148:
	.string	"lwip_htons"
.LASF157:
	.string	"lwip_ip_addr_type"
.LASF76:
	.string	"sa_len"
.LASF64:
	.string	"sin_family"
.LASF35:
	.string	"ip_addr_t"
.LASF42:
	.string	"err_t"
.LASF14:
	.string	"sizetype"
.LASF150:
	.string	"ipaddr_aton"
.LASF69:
	.string	"sin6_len"
.LASF70:
	.string	"sin6_family"
.LASF126:
	.string	"s_phostent_addr"
.LASF116:
	.string	"MEMP_MLD6_GROUP"
.LASF88:
	.string	"h_aliases"
.LASF32:
	.string	"ip_addr"
.LASF63:
	.string	"sin_len"
.LASF82:
	.string	"s2_data1"
.LASF83:
	.string	"s2_data2"
.LASF84:
	.string	"s2_data3"
.LASF97:
	.string	"ai_addrlen"
.LASF48:
	.string	"ERR_INPROGRESS"
.LASF65:
	.string	"sin_port"
.LASF77:
	.string	"sa_family"
.LASF90:
	.string	"h_length"
.LASF91:
	.string	"h_addr_list"
.LASF49:
	.string	"ERR_VAL"
.LASF74:
	.string	"sin6_scope_id"
.LASF27:
	.string	"addr"
.LASF149:
	.string	"atoi"
.LASF22:
	.string	"_Bool"
.LASF6:
	.string	"unsigned char"
.LASF59:
	.string	"ERR_ARG"
.LASF54:
	.string	"ERR_CONN"
.LASF98:
	.string	"ai_addr"
.LASF8:
	.string	"short int"
.LASF96:
	.string	"ai_protocol"
.LASF127:
	.string	"s_hostname"
.LASF100:
	.string	"ai_next"
.LASF159:
	.string	"__func__"
.LASF131:
	.string	"buflen"
.LASF41:
	.string	"in6_addr"
.LASF158:
	.string	"lwip_freeaddrinfo"
.LASF57:
	.string	"ERR_RST"
.LASF21:
	.string	"uint32_t"
.LASF16:
	.string	"char"
.LASF128:
	.string	"lwip_gethostbyname"
.LASF56:
	.string	"ERR_ABRT"
.LASF81:
	.string	"ss_family"
.LASF72:
	.string	"sin6_flowinfo"
.LASF106:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF44:
	.string	"ERR_MEM"
.LASF107:
	.string	"MEMP_NETCONN"
.LASF156:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF118:
	.string	"MEMP_PBUF_POOL"
.LASF94:
	.string	"ai_family"
.LASF135:
	.string	"namelen"
.LASF160:
	.string	"h_errno"
.LASF58:
	.string	"ERR_CLSD"
.LASF47:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF140:
	.string	"servname"
.LASF55:
	.string	"ERR_IF"
.LASF60:
	.string	"sa_family_t"
.LASF45:
	.string	"ERR_BUF"
.LASF141:
	.string	"hints"
.LASF153:
	.string	"memset"
.LASF33:
	.string	"u_addr"
.LASF68:
	.string	"sockaddr_in6"
.LASF75:
	.string	"sockaddr"
.LASF29:
	.string	"IPADDR_TYPE_V4"
.LASF30:
	.string	"IPADDR_TYPE_V6"
.LASF18:
	.string	"uint8_t"
.LASF138:
	.string	"lwip_getaddrinfo"
.LASF139:
	.string	"nodename"
.LASF129:
	.string	"lwip_gethostbyname_r"
.LASF125:
	.string	"s_hostent_addr"
.LASF50:
	.string	"ERR_WOULDBLOCK"
.LASF80:
	.string	"s2_len"
.LASF78:
	.string	"sa_data"
.LASF137:
	.string	"next"
.LASF99:
	.string	"ai_canonname"
.LASF73:
	.string	"sin6_addr"
.LASF133:
	.string	"h_errnop"
.LASF117:
	.string	"MEMP_PBUF"
.LASF132:
	.string	"result"
.LASF144:
	.string	"netconn_gethostbyname_addrtype"
.LASF120:
	.string	"gethostbyname_r_helper"
.LASF109:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF37:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
