	.file	"ip6_frag.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ip6_reass_free: moving p->payload to ip6 header failed\n"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
.LC6:
	.string	"pbufs_freed + clen <= 0xffff"
.LC10:
	.string	"ip_reass_pbufcount >= clen"
	.section	.text.ip6_reass_free_complete_datagram,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6571
	.literal .LC4, .LC3
	.literal .LC5, 65535
	.literal .LC7, .LC6
	.literal .LC8, reassdatagrams
	.literal .LC9, ip6_reass_pbufcount
	.literal .LC11, .LC10
	.align	4
	.type	ip6_reass_free_complete_datagram, @function
ip6_reass_free_complete_datagram:
.LFB28:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
	.loc 1 147 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 155 0
	l32i.n	a5, a2, 4
	l32i.n	a8, a5, 4
.LVL2:
	.loc 1 156 0
	l8ui	a4, a8, 5
	l8ui	a3, a8, 4
	slli	a4, a4, 8
	or	a4, a4, a3
	.loc 1 149 0
	movi.n	a3, 0
	.loc 1 156 0
	bne	a4, a3, .L2
.LVL3:
	.loc 1 160 0
	l8ui	a4, a8, 1
	l8ui	a10, a8, 0
	l8ui	a3, a8, 2
	slli	a4, a4, 8
	or	a9, a4, a10
	slli	a3, a3, 16
	or	a4, a3, a9
	l8ui	a3, a8, 3
	.loc 1 163 0
	l32i.n	a11, a2, 8
	.loc 1 160 0
	slli	a3, a3, 24
	or	a3, a3, a4
	.loc 1 163 0
	sub	a11, a8, a11
	.loc 1 160 0
	s32i.n	a3, a2, 4
	.loc 1 163 0
	sext	a11, a11, 15
	mov.n	a10, a5
	call8	pbuf_header_force
.LVL4:
	beqz.n	a10, .L3
	.loc 1 164 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0xa4
	j	.L16
.L3:
	.loc 1 167 0
	movi.n	a11, 1
	mov.n	a10, a5
	call8	icmp6_time_exceeded
.LVL5:
	.loc 1 169 0
	mov.n	a10, a5
	call8	pbuf_clen
.LVL6:
	mov.n	a3, a10
.LVL7:
	.loc 1 172 0
	mov.n	a10, a5
	call8	pbuf_free
.LVL8:
.L2:
	.loc 1 178 0
	l32i.n	a5, a2, 4
.LVL9:
	.loc 1 179 0
	j	.L4
.L6:
.LBB2:
	.loc 1 181 0
	l32i.n	a11, a5, 4
.LVL10:
	.loc 1 184 0
	l8ui	a8, a11, 1
	l8ui	a10, a11, 0
	l8ui	a4, a11, 2
	slli	a8, a8, 8
	or	a9, a8, a10
	slli	a4, a4, 16
	or	a8, a4, a9
	l8ui	a4, a11, 3
	.loc 1 185 0
	mov.n	a10, a5
	.loc 1 184 0
	slli	a4, a4, 24
	or	a4, a4, a8
.LVL11:
	.loc 1 185 0
	call8	pbuf_clen
.LVL12:
	.loc 1 186 0
	add.n	a10, a3, a10
.LVL13:
	l32r	a3, .LC5
.LVL14:
	bge	a3, a10, .L5
	.loc 1 186 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC2
	movi	a11, 0xba
.LVL15:
.L16:
	l32r	a10, .LC4
	call8	__assert_func
.LVL16:
.L5:
	.loc 1 187 0 is_stmt 1
	extui	a3, a10, 0, 16
.LVL17:
	.loc 1 188 0
	mov.n	a10, a5
.LVL18:
	call8	pbuf_free
.LVL19:
	.loc 1 184 0
	mov.n	a5, a4
.LVL20:
.L4:
.LBE2:
	.loc 1 179 0
	bnez.n	a5, .L6
	.loc 1 192 0
	l32r	a5, .LC8
.LVL21:
	l32i.n	a4, a5, 0
	bne	a2, a4, .L14
	.loc 1 193 0
	l32i.n	a4, a2, 0
	s32i.n	a4, a5, 0
	j	.L8
.LVL22:
.L11:
	.loc 1 197 0
	l32i.n	a5, a4, 0
	beq	a2, a5, .L9
	mov.n	a4, a5
.LVL23:
.L14:
	.loc 1 196 0
	bnez.n	a4, .L11
.LVL24:
.L8:
	.loc 1 206 0
	mov.n	a11, a2
	movi.n	a10, 0xe
	call8	memp_free
.LVL25:
	.loc 1 209 0
	l32r	a2, .LC9
.LVL26:
	l16ui	a10, a2, 0
	bgeu	a10, a3, .L12
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC2
	movi	a11, 0xd1
	j	.L16
.L12:
	.loc 1 210 0 is_stmt 1
	sub	a10, a10, a3
	s16i	a10, a2, 0
	.loc 1 211 0
	retw.n
.LVL27:
.L9:
	.loc 1 203 0
	l32i.n	a5, a2, 0
	s32i.n	a5, a4, 0
	j	.L8
.LFE28:
	.size	ip6_reass_free_complete_datagram, .-ip6_reass_free_complete_datagram
	.section	.text.ip6_reass_remove_oldest_datagram,"ax",@progbits
	.literal_position
	.literal .LC12, reassdatagrams
	.literal .LC13, ip6_reass_pbufcount
	.align	4
	.type	ip6_reass_remove_oldest_datagram, @function
ip6_reass_remove_oldest_datagram:
.LFB29:
	.loc 1 224 0
.LVL28:
	entry	sp, 32
.LCFI1:
	.loc 1 230 0
	l32r	a4, .LC12
.L24:
	l32i.n	a8, a4, 0
.LVL29:
	mov.n	a10, a8
	.loc 1 231 0
	j	.L18
.LVL30:
.L20:
	.loc 1 232 0
	beq	a8, a2, .L19
	.loc 1 233 0
	l8ui	a9, a8, 19
	l8ui	a11, a10, 19
	bltu	a11, a9, .L19
	mov.n	a10, a8
.LVL31:
.L19:
	.loc 1 238 0
	l32i.n	a8, a8, 0
.LVL32:
.L18:
	.loc 1 231 0
	bnez.n	a8, .L20
	.loc 1 240 0
	beq	a10, a2, .L17
	.loc 1 244 0
	beqz.n	a10, .L22
	.loc 1 245 0
	call8	ip6_reass_free_complete_datagram
.LVL33:
.L22:
	.loc 1 247 0
	l32r	a8, .LC13
	.loc 1 247 0
	movi.n	a9, 0xa
	l16ui	a8, a8, 0
	add.n	a8, a8, a3
	bge	a9, a8, .L17
	.loc 1 247 0 discriminator 1
	l32i.n	a8, a4, 0
	bnez.n	a8, .L24
.L17:
	retw.n
.LFE29:
	.size	ip6_reass_remove_oldest_datagram, .-ip6_reass_remove_oldest_datagram
	.section	.text.ip6_reass_tmr,"ax",@progbits
	.literal_position
	.literal .LC14, reassdatagrams
	.align	4
	.global	ip6_reass_tmr
	.type	ip6_reass_tmr, @function
ip6_reass_tmr:
.LFB27:
	.loc 1 112 0
	entry	sp, 32
.LCFI2:
	.loc 1 120 0
	l32r	a2, .LC14
	l32i.n	a10, a2, 0
.LVL34:
	.loc 1 121 0
	j	.L30
.L33:
	.loc 1 124 0
	l8ui	a8, a10, 19
	l32i.n	a2, a10, 0
	beqz.n	a8, .L31
	.loc 1 125 0
	addi.n	a8, a8, -1
	s8i	a8, a10, 19
	j	.L34
.L31:
.LVL35:
	.loc 1 133 0
	call8	ip6_reass_free_complete_datagram
.LVL36:
.L34:
	.loc 1 131 0
	mov.n	a10, a2
.L30:
.LVL37:
	.loc 1 121 0
	bnez.n	a10, .L33
	.loc 1 136 0
	retw.n
.LFE27:
	.size	ip6_reass_tmr, .-ip6_reass_tmr
	.section	.rodata.str1.1
.LC18:
	.string	"check fragments don't overlap"
.LC22:
	.string	"no previous fragment, this must be the first fragment!"
.LC24:
	.string	"sanity check linked list"
.LC26:
	.string	"ip6_reass: moving p->payload to ip6 header failed\n"
	.section	.text.ip6_reass,"ax",@progbits
	.literal_position
	.literal .LC15, ip_data
	.literal .LC16, reassdatagrams
	.literal .LC17, ip6_reass_pbufcount
	.literal .LC19, .LC18
	.literal .LC20, __func__$6614
	.literal .LC21, .LC3
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.global	ip6_reass
	.type	ip6_reass, @function
ip6_reass:
.LFB30:
	.loc 1 260 0
.LVL38:
	entry	sp, 64
.LCFI3:
.LVL39:
	.loc 1 271 0
	l32r	a4, .LC15
	l32i.n	a6, a2, 4
	l32i.n	a5, a4, 12
	addi	a3, a6, -40
	bne	a5, a3, .L36
.LVL40:
	.loc 1 280 0
	mov.n	a10, a2
	call8	pbuf_clen
.LVL41:
	s32i.n	a10, sp, 0
.LVL42:
	.loc 1 282 0
	l8ui	a3, a6, 3
	l8ui	a10, a6, 2
	slli	a3, a3, 8
	or	a10, a3, a10
	call8	lwip_htons
.LVL43:
	.loc 1 287 0
	l32i.n	a3, a4, 12
	.loc 1 282 0
	s32i.n	a10, sp, 4
.LVL44:
	.loc 1 287 0
	l8ui	a10, a3, 4
	l8ui	a3, a3, 5
	slli	a3, a3, 8
	or	a10, a3, a10
	call8	lwip_htons
.LVL45:
	.loc 1 289 0
	l32i.n	a15, a2, 4
	l32i.n	a3, a4, 12
	.loc 1 298 0
	l32i.n	a5, a4, 20
	.loc 1 289 0
	sub	a15, a3, a15
	addi	a15, a15, 32
	add.n	a10, a10, a15
.LVL46:
	.loc 1 293 0
	l32r	a3, .LC16
	.loc 1 298 0
	l32i.n	a8, a4, 24
	.loc 1 289 0
	extui	a10, a10, 0, 16
	s32i.n	a10, sp, 8
.LVL47:
	.loc 1 298 0
	s32i.n	a5, sp, 12
	.loc 1 293 0
	l32i.n	a3, a3, 0
.LVL48:
	.loc 1 298 0
	s32i.n	a8, sp, 16
	l32i.n	a15, a4, 28
	l32i.n	a9, a4, 32
	.loc 1 299 0
	l32i.n	a10, a4, 40
	l32i.n	a11, a4, 44
	l32i.n	a12, a4, 48
	l32i.n	a13, a4, 52
	.loc 1 293 0
	movi.n	a5, 0
	j	.L37
.LVL49:
.L40:
	.loc 1 297 0
	l8ui	a7, a6, 5
	l8ui	a4, a6, 4
	slli	a7, a7, 8
	or	a8, a7, a4
	l8ui	a4, a6, 6
	slli	a4, a4, 16
	or	a7, a4, a8
	l8ui	a4, a6, 7
	slli	a4, a4, 24
	or	a4, a4, a7
	l32i.n	a7, a3, 12
	bne	a4, a7, .L38
	.loc 1 298 0 discriminator 1
	l32i.n	a4, a3, 8
	l8ui	a7, a4, 9
	l8ui	a14, a4, 8
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 10
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 11
	slli	a8, a8, 24
	or	a7, a8, a7
	.loc 1 297 0 discriminator 1
	l32i.n	a8, sp, 12
	bne	a8, a7, .L38
	.loc 1 298 0
	l8ui	a7, a4, 13
	l8ui	a14, a4, 12
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 14
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 15
	slli	a8, a8, 24
	or	a7, a8, a7
	l32i.n	a8, sp, 16
	bne	a8, a7, .L38
	.loc 1 298 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 17
	l8ui	a14, a4, 16
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 18
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 19
	slli	a8, a8, 24
	or	a7, a8, a7
	bne	a15, a7, .L38
	.loc 1 298 0 discriminator 2
	l8ui	a7, a4, 21
	l8ui	a14, a4, 20
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 22
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 23
	slli	a8, a8, 24
	or	a7, a8, a7
	bne	a9, a7, .L38
	.loc 1 299 0 is_stmt 1 discriminator 3
	l8ui	a7, a4, 25
	l8ui	a14, a4, 24
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 26
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 27
	slli	a8, a8, 24
	or	a7, a8, a7
	.loc 1 298 0 discriminator 3
	bne	a10, a7, .L38
	.loc 1 299 0
	l8ui	a7, a4, 29
	l8ui	a14, a4, 28
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 30
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 31
	slli	a8, a8, 24
	or	a7, a8, a7
	bne	a11, a7, .L38
	.loc 1 299 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 33
	l8ui	a14, a4, 32
	slli	a7, a7, 8
	or	a8, a7, a14
	l8ui	a7, a4, 34
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 35
	slli	a8, a8, 24
	or	a7, a8, a7
	bne	a12, a7, .L38
	.loc 1 299 0 discriminator 2
	l8ui	a8, a4, 37
	l8ui	a14, a4, 36
	slli	a7, a8, 8
	or	a8, a7, a14
	l8ui	a7, a4, 38
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a8, a4, 39
	slli	a8, a8, 24
	or	a7, a8, a7
	beq	a13, a7, .L39
.L38:
.LVL50:
	.loc 1 293 0 is_stmt 1 discriminator 2
	mov.n	a5, a3
	l32i.n	a3, a3, 0
.LVL51:
.L37:
	.loc 1 293 0 discriminator 1
	bnez.n	a3, .L40
	j	.L100
.L72:
	.loc 1 312 0
	l32i.n	a11, sp, 0
	mov.n	a10, a3
	call8	ip6_reass_remove_oldest_datagram
.LVL52:
	.loc 1 313 0
	movi.n	a10, 0xe
	call8	memp_malloc
.LVL53:
	mov.n	a3, a10
.LVL54:
	.loc 1 314 0
	beqz.n	a10, .L36
	.loc 1 316 0
	l32r	a4, .LC16
	l32i.n	a5, a4, 0
.LVL55:
	j	.L42
.L44:
	.loc 1 317 0
	l32i.n	a4, a5, 0
	beq	a3, a4, .L43
	mov.n	a5, a4
.LVL56:
.L42:
	.loc 1 316 0 discriminator 1
	bnez.n	a5, .L44
.LVL57:
.L43:
	.loc 1 331 0
	movi.n	a4, 3
	.loc 1 330 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL58:
	.loc 1 331 0
	s8i	a4, a3, 19
	.loc 1 334 0
	l32r	a4, .LC16
	l32i.n	a7, a4, 0
	.loc 1 335 0
	s32i.n	a3, a4, 0
	.loc 1 344 0
	l32r	a4, .LC15
	.loc 1 334 0
	s32i.n	a7, a3, 0
	.loc 1 344 0
	l32i.n	a4, a4, 12
	s32i.n	a4, a3, 8
	.loc 1 348 0
	l8ui	a7, a6, 5
	l8ui	a9, a6, 4
	l8ui	a4, a6, 6
	slli	a7, a7, 8
	slli	a4, a4, 16
	or	a8, a7, a9
	or	a7, a4, a8
	l8ui	a4, a6, 7
	slli	a4, a4, 24
	or	a4, a4, a7
	s32i.n	a4, a3, 12
	.loc 1 351 0
	l8ui	a4, a6, 0
	s8i	a4, a3, 18
.LVL59:
.L39:
	.loc 1 355 0
	l32r	a4, .LC17
	l32i.n	a8, sp, 0
	l16ui	a6, a4, 0
.LVL60:
	movi.n	a7, 0xa
	add.n	a6, a6, a8
	bge	a7, a6, .L45
	.loc 1 357 0
	mov.n	a11, a8
	mov.n	a10, a3
	call8	ip6_reass_remove_oldest_datagram
.LVL61:
	.loc 1 358 0
	l16ui	a5, a4, 0
.LVL62:
	l32i.n	a6, sp, 0
	add.n	a5, a5, a6
	blt	a7, a5, .L36
	.loc 1 360 0
	l32r	a5, .LC16
	l32i.n	a5, a5, 0
.LVL63:
	j	.L46
.L47:
	.loc 1 361 0
	l32i.n	a6, a5, 0
	beq	a3, a6, .L45
	mov.n	a5, a6
.LVL64:
.L46:
	.loc 1 360 0 discriminator 1
	bnez.n	a5, .L47
.L45:
	.loc 1 391 0
	l32i.n	a6, sp, 4
	movi.n	a12, -8
	and	a12, a6, a12
	.loc 1 389 0
	l32i.n	a9, a2, 4
.LVL65:
	.loc 1 391 0
	extui	a12, a12, 0, 16
	srli	a6, a12, 8
	s8i	a6, a9, 5
	.loc 1 392 0
	l32i.n	a6, sp, 8
	.loc 1 390 0
	movi.n	a8, 0
	.loc 1 392 0
	add.n	a15, a6, a12
	extui	a15, a15, 0, 16
	srli	a6, a15, 8
	s8i	a6, a9, 7
	.loc 1 397 0
	l32i.n	a6, a3, 4
.LVL66:
	.loc 1 390 0
	s8i	a8, a9, 0
	s8i	a8, a9, 1
	s8i	a8, a9, 2
	s8i	a8, a9, 3
	.loc 1 391 0
	s8i	a12, a9, 4
	.loc 1 392 0
	s8i	a15, a9, 6
	.loc 1 397 0
	mov.n	a11, a6
	.loc 1 266 0
	movi.n	a10, 1
	.loc 1 397 0
	j	.L48
.LVL67:
.L54:
	.loc 1 398 0
	l32i.n	a13, a11, 4
.LVL68:
	.loc 1 399 0
	l8ui	a7, a13, 5
	l8ui	a14, a13, 4
	slli	a7, a7, 8
	or	a14, a7, a14
	bgeu	a12, a14, .L49
	.loc 1 401 0
	bltu	a14, a15, .L36
	.loc 1 407 0
	beqz.n	a8, .L50
	.loc 1 408 0
	l8ui	a6, a8, 7
	l8ui	a7, a8, 6
	slli	a6, a6, 8
	or	a6, a6, a7
	bltu	a12, a6, .L36
.L50:
	.loc 1 417 0
	extui	a6, a11, 8, 8
	s8i	a11, a9, 0
	s8i	a6, a9, 1
	extui	a6, a11, 16, 8
	extui	a11, a11, 24, 8
.LVL69:
	s8i	a6, a9, 2
	s8i	a11, a9, 3
	.loc 1 418 0
	beqz.n	a8, .L58
	.loc 1 420 0
	extui	a6, a2, 8, 8
	s8i	a2, a8, 0
	s8i	a6, a8, 1
	extui	a6, a2, 16, 8
	extui	a2, a2, 24, 8
.LVL70:
	s8i	a6, a8, 2
	s8i	a2, a8, 3
	j	.L57
.LVL71:
.L49:
	.loc 1 426 0
	beq	a12, a14, .L36
	.loc 1 431 0
	l8ui	a7, a13, 7
	l8ui	a11, a13, 6
.LVL72:
	slli	a7, a7, 8
	or	a11, a7, a11
	bltu	a12, a11, .L36
	.loc 1 439 0
	beqz.n	a8, .L53
	.loc 1 440 0
	l8ui	a7, a8, 6
	l8ui	a8, a8, 7
.LVL73:
	slli	a8, a8, 8
	or	a7, a8, a7
	.loc 1 443 0
	sub	a7, a14, a7
	movi.n	a8, 0
	movnez	a10, a8, a7
.LVL74:
.L53:
	.loc 1 447 0
	l8ui	a7, a13, 1
	l8ui	a11, a13, 0
	slli	a7, a7, 8
	or	a8, a7, a11
	l8ui	a11, a13, 2
	slli	a11, a11, 16
	or	a7, a11, a8
	l8ui	a11, a13, 3
	mov.n	a8, a13
	slli	a11, a11, 24
	or	a11, a11, a7
.LVL75:
.L48:
	.loc 1 397 0 discriminator 1
	bnez.n	a11, .L54
	j	.L101
.L73:
	.loc 1 457 0
	l8ui	a6, a8, 7
	l8ui	a7, a8, 6
	slli	a6, a6, 8
	or	a6, a6, a7
	bgeu	a12, a6, .L56
	.loc 1 457 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0x1c9
.LVL76:
	j	.L103
.LVL77:
.L56:
	.loc 1 459 0 is_stmt 1
	extui	a7, a2, 8, 8
	s8i	a2, a8, 0
	s8i	a7, a8, 1
	.loc 1 461 0
	sub	a6, a12, a6
	.loc 1 459 0
	extui	a7, a2, 16, 8
	extui	a2, a2, 24, 8
.LVL78:
	s8i	a7, a8, 2
	s8i	a2, a8, 3
	.loc 1 461 0
	movnez	a10, a11, a6
.LVL79:
	j	.L57
.LVL80:
.L102:
	.loc 1 465 0
	beqz.n	a6, .L58
	.loc 1 465 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC20
	movi	a11, 0x1d2
.LVL81:
	j	.L103
.L58:
	.loc 1 469 0
	s32i.n	a2, a3, 4
.LVL82:
.L57:
	.loc 1 475 0
	l32r	a6, .LC17
	l32i.n	a8, sp, 0
.LVL83:
	l16ui	a2, a6, 0
	add.n	a2, a8, a2
	s16i	a2, a6, 0
	.loc 1 478 0
	bnez.n	a12, .L59
	.loc 1 485 0
	l32r	a2, .LC15
	l32i.n	a2, a2, 12
	s32i.n	a2, a3, 8
.L59:
	.loc 1 490 0
	l32i.n	a2, sp, 4
	bbsi	a2, 0, .L60
	.loc 1 491 0
	s16i	a15, a3, 16
.L60:
	.loc 1 495 0
	l32i.n	a2, a3, 4
	.loc 1 505 0
	l8ui	a8, a9, 0
	.loc 1 495 0
	l32i.n	a12, a2, 4
.LVL84:
	.loc 1 496 0
	l8ui	a2, a12, 5
	l8ui	a6, a12, 4
	slli	a2, a2, 8
	or	a2, a2, a6
	.loc 1 497 0
	movi.n	a6, 0
	movnez	a10, a6, a2
.LVL85:
	.loc 1 499 0
	l16ui	a2, a3, 16
	.loc 1 500 0
	moveqz	a10, a6, a2
.LVL86:
	.loc 1 505 0
	l8ui	a6, a9, 1
	l8ui	a2, a9, 2
	slli	a6, a6, 8
	slli	a2, a2, 16
	or	a7, a6, a8
	or	a6, a2, a7
	l8ui	a2, a9, 3
	.loc 1 506 0
	extui	a13, a10, 0, 1
	.loc 1 505 0
	slli	a2, a2, 24
	or	a2, a2, a6
.LVL87:
	.loc 1 506 0
	j	.L63
.L65:
	.loc 1 507 0
	l32i.n	a11, a2, 4
.LVL88:
	.loc 1 508 0
	l8ui	a7, a9, 7
	l8ui	a2, a11, 5
.LVL89:
	l8ui	a8, a9, 6
	l8ui	a6, a11, 4
	slli	a7, a7, 8
	slli	a2, a2, 8
	or	a7, a7, a8
	or	a2, a2, a6
	bne	a7, a2, .L76
.LVL90:
	.loc 1 513 0
	l8ui	a6, a11, 1
	l8ui	a8, a11, 0
	l8ui	a2, a11, 2
	slli	a6, a6, 8
	slli	a2, a2, 16
	or	a7, a6, a8
	or	a6, a2, a7
	l8ui	a2, a11, 3
	mov.n	a9, a11
	slli	a2, a2, 24
	or	a2, a2, a6
.LVL91:
.L63:
	.loc 1 506 0
	beqz.n	a2, .L79
	bnez.n	a13, .L65
.L79:
	.loc 1 516 0
	beqz.n	a10, .L77
.LVL92:
.L68:
.LBB3:
.LBB4:
	.loc 1 523 0
	l8ui	a6, a12, 1
	l8ui	a8, a12, 0
	l8ui	a2, a12, 2
	slli	a6, a6, 8
	slli	a2, a2, 16
	or	a7, a6, a8
	or	a6, a2, a7
	l8ui	a2, a12, 3
	slli	a2, a2, 24
	or	a2, a2, a6
.LVL93:
	.loc 1 524 0
	beqz.n	a2, .L67
	.loc 1 526 0
	l32i.n	a12, a2, 4
.LVL94:
	.loc 1 529 0
	movi.n	a11, -8
	mov.n	a10, a2
	s32i.n	a12, sp, 20
	call8	pbuf_header
.LVL95:
	.loc 1 538 0
	l32i.n	a10, a3, 4
	mov.n	a11, a2
	call8	pbuf_cat
.LVL96:
.LBE4:
	.loc 1 522 0
	l32i.n	a12, sp, 20
	bnez.n	a12, .L68
.LVL97:
.L67:
	.loc 1 561 0
	l32i.n	a2, a3, 4
.LVL98:
	.loc 1 557 0
	l32i.n	a8, a3, 8
	.loc 1 561 0
	l32i.n	a10, a2, 4
	l16ui	a2, a3, 16
	sub	a10, a10, a8
	addi	a2, a2, -32
	add.n	a10, a10, a2
	extui	a10, a10, 0, 16
	s16i	a10, a3, 16
	.loc 1 566 0
	s32i.n	a8, sp, 20
	call8	lwip_htons
.LVL99:
	l32i.n	a8, sp, 20
	.loc 1 569 0
	l32i.n	a2, a3, 4
.LVL100:
	.loc 1 566 0
	s8i	a10, a8, 4
	extui	a10, a10, 8, 16
	s8i	a10, a8, 5
	.loc 1 573 0
	l32i.n	a6, a2, 4
.LVL101:
	.loc 1 574 0
	l8ui	a7, a3, 18
	s8i	a7, a6, 0
	.loc 1 575 0
	movi.n	a7, 0
	s8i	a7, a6, 1
	.loc 1 576 0
	movi.n	a7, 0
	s8i	a7, a6, 2
	s8i	a7, a6, 3
	.loc 1 577 0
	s8i	a7, a6, 4
	s8i	a7, a6, 5
	s8i	a7, a6, 6
	s8i	a7, a6, 7
	.loc 1 580 0
	l32r	a6, .LC16
.LVL102:
	l32i.n	a7, a6, 0
	bne	a3, a7, .L69
	.loc 1 582 0
	l32i.n	a5, a3, 0
.LVL103:
	s32i.n	a5, a6, 0
	j	.L70
.LVL104:
.L69:
	.loc 1 585 0
	bnez.n	a5, .L71
	.loc 1 585 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC20
	movi	a11, 0x249
	j	.L103
.L71:
	.loc 1 586 0
	l32i.n	a6, a3, 0
	s32i.n	a6, a5, 0
.LVL105:
.L70:
	.loc 1 588 0
	mov.n	a11, a3
	movi.n	a10, 0xe
	s32i.n	a8, sp, 20
	call8	memp_free
.LVL106:
	.loc 1 591 0
	mov.n	a10, a2
	call8	pbuf_clen
.LVL107:
	.loc 1 595 0
	l32i.n	a11, a2, 4
	.loc 1 591 0
	l16ui	a3, a4, 0
.LVL108:
	.loc 1 595 0
	l32i.n	a8, sp, 20
	.loc 1 591 0
	sub	a10, a3, a10
	.loc 1 595 0
	sub	a11, a11, a8
	.loc 1 591 0
	s16i	a10, a4, 0
	.loc 1 595 0
	sext	a11, a11, 15
	mov.n	a10, a2
	call8	pbuf_header_force
.LVL109:
	beqz.n	a10, .L92
	.loc 1 596 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC20
	movi	a11, 0x254
.LVL110:
.L103:
	l32r	a10, .LC21
	call8	__assert_func
.LVL111:
.L36:
.LDL1:
.LBE3:
	.loc 1 608 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL112:
.L76:
	.loc 1 605 0
	movi.n	a2, 0
	retw.n
.LVL113:
.L77:
	mov.n	a2, a10
.LVL114:
	retw.n
.LVL115:
.L100:
	.loc 1 308 0
	movi.n	a10, 0xe
	call8	memp_malloc
.LVL116:
	mov.n	a3, a10
.LVL117:
	.loc 1 309 0
	bnez.n	a10, .L43
	j	.L72
.LVL118:
.L101:
	.loc 1 453 0
	bnez.n	a8, .L73
	j	.L102
.LVL119:
.L92:
	.loc 1 610 0
	retw.n
.LFE30:
	.size	ip6_reass, .-ip6_reass
	.section	.rodata.__func__$6614,"a",@progbits
	.type	__func__$6614, @object
	.size	__func__$6614, 10
__func__$6614:
	.string	"ip6_reass"
	.section	.rodata.__func__$6571,"a",@progbits
	.type	__func__$6571, @object
	.size	__func__$6571, 33
__func__$6571:
	.string	"ip6_reass_free_complete_datagram"
	.section	.bss.ip6_reass_pbufcount,"aw",@nobits
	.align	2
	.type	ip6_reass_pbufcount, @object
	.size	ip6_reass_pbufcount, 2
ip6_reass_pbufcount:
	.zero	2
	.section	.bss.reassdatagrams,"aw",@nobits
	.align	4
	.type	reassdatagrams, @object
	.size	reassdatagrams, 4
reassdatagrams:
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
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
	.uleb128 0x40
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip6.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_frag.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/icmp6.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/icmp6.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdcf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
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
	.4byte	0x101
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0xb
	.4byte	0xa2
	.4byte	0x123
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0xc4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x5
	.byte	0x8e
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x5
	.byte	0x90
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.byte	0x93
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.byte	0x9c
	.4byte	0xe5
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.byte	0x9f
	.4byte	0xe5
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa2
	.4byte	0xcf
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa5
	.4byte	0xcf
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x5
	.byte	0xac
	.4byte	0xe5
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0xaf
	.4byte	0x345
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0xb0
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0xf0
	.byte	0x6
	.byte	0xeb
	.4byte	0x345
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x6
	.byte	0xed
	.4byte	0x345
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0xf1
	.4byte	0x49d
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0xf2
	.4byte	0x49d
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x6
	.byte	0xf3
	.4byte	0x49d
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0xf7
	.4byte	0x680
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0xfa
	.4byte	0x690
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0xfc
	.4byte	0x6b0
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x102
	.4byte	0x56d
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x108
	.4byte	0x592
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x10d
	.4byte	0x5fc
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x113
	.4byte	0x5c7
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x125
	.4byte	0xa2
	.byte	0x94
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x127
	.4byte	0x113
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x12b
	.4byte	0x6bb
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x12c
	.4byte	0x675
	.byte	0xa8
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x131
	.4byte	0xcf
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x135
	.4byte	0xcf
	.byte	0xad
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x139
	.4byte	0xb9
	.byte	0xb0
	.uleb128 0x11
	.string	"mtu"
	.byte	0x6
	.2byte	0x13f
	.4byte	0xe5
	.byte	0xb4
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x141
	.4byte	0xcf
	.byte	0xb6
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x143
	.4byte	0x6c1
	.byte	0xb7
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x145
	.4byte	0xcf
	.byte	0xbd
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x147
	.4byte	0x6d1
	.byte	0xbe
	.uleb128 0x11
	.string	"num"
	.byte	0x6
	.2byte	0x149
	.4byte	0xcf
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x157
	.4byte	0x621
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x15c
	.4byte	0x64b
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x163
	.4byte	0x1a7
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x164
	.4byte	0x1a7
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x166
	.4byte	0xe5
	.byte	0xd4
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x16b
	.4byte	0xfb
	.byte	0xd8
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x16c
	.4byte	0x49d
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x364
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3b
	.4byte	0x364
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.4byte	0x374
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x7
	.byte	0x3f
	.4byte	0x34b
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.4byte	0x398
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x36
	.4byte	0x364
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x8
	.byte	0x3c
	.4byte	0x37f
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x28
	.byte	0x8
	.byte	0x50
	.4byte	0x3f8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x52
	.4byte	0xf0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x54
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x56
	.4byte	0xcf
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.byte	0x58
	.4byte	0xcf
	.byte	0x7
	.uleb128 0xf
	.string	"src"
	.byte	0x8
	.byte	0x5a
	.4byte	0x398
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x5b
	.4byte	0x398
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x8
	.byte	0x89
	.4byte	0x435
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8b
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x8d
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.byte	0x8f
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x91
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x44e
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x9
	.byte	0x34
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x9
	.byte	0x39
	.4byte	0x435
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x46
	.4byte	0x478
	.uleb128 0x13
	.string	"ip6"
	.byte	0xa
	.byte	0x47
	.4byte	0x374
	.uleb128 0x13
	.string	"ip4"
	.byte	0xa
	.byte	0x48
	.4byte	0x44e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x14
	.byte	0xa
	.byte	0x45
	.4byte	0x49d
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.byte	0x49
	.4byte	0x459
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0xa
	.byte	0x4b
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xa
	.byte	0x4c
	.4byte	0x478
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x11
	.byte	0x34
	.4byte	0x527
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x70
	.4byte	0x550
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x94
	.4byte	0x56d
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x6
	.byte	0xa7
	.4byte	0x578
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57e
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x592
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x345
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x6
	.byte	0xb2
	.4byte	0x59d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a3
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x5bc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0x8
	.4byte	0x44e
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x6
	.byte	0xbf
	.4byte	0x5d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d8
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x5f1
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x5f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f7
	.uleb128 0x8
	.4byte	0x374
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x6
	.byte	0xc9
	.4byte	0x607
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60d
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x621
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x6
	.byte	0xce
	.4byte	0x62c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x632
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x64b
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x550
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x6
	.byte	0xd3
	.4byte	0x656
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65c
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x675
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x5f1
	.uleb128 0xa
	.4byte	0x550
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x6
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x49d
	.4byte	0x690
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6a0
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x6b0
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x18
	.4byte	.LASF172
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b6
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6d1
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x6e1
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x14
	.byte	0xb
	.byte	0x50
	.4byte	0x740
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0xb
	.byte	0x51
	.4byte	0x740
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0xb
	.byte	0x52
	.4byte	0x1a7
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xb
	.byte	0x53
	.4byte	0x746
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xb
	.byte	0x54
	.4byte	0xf0
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xb
	.byte	0x55
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xb
	.byte	0x56
	.4byte	0xcf
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xb
	.byte	0x57
	.4byte	0xcf
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x74
	.4byte	0x769
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x782
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xd
	.byte	0x36
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xd
	.byte	0x3d
	.4byte	0x769
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x14
	.byte	0xd
	.byte	0x47
	.4byte	0x812
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xd
	.byte	0x49
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xd
	.byte	0x4b
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xd
	.byte	0x4d
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xf
	.string	"_id"
	.byte	0xd
	.byte	0x4f
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xd
	.byte	0x51
	.4byte	0xe5
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xd
	.byte	0x57
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xd
	.byte	0x59
	.4byte	0xcf
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xd
	.byte	0x5b
	.4byte	0xe5
	.byte	0xa
	.uleb128 0xf
	.string	"src"
	.byte	0xd
	.byte	0x5d
	.4byte	0x782
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xd
	.byte	0x5e
	.4byte	0x782
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x3c
	.byte	0xe
	.byte	0x69
	.4byte	0x873
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xe
	.byte	0x6c
	.4byte	0x345
	.byte	0
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xe
	.byte	0x6e
	.4byte	0x345
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xe
	.byte	0x71
	.4byte	0x873
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xe
	.byte	0x75
	.4byte	0x746
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0x78
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xe
	.byte	0x7a
	.4byte	0x49d
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xe
	.byte	0x7c
	.4byte	0x49d
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78d
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.4byte	0x8aa
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x1
	.byte	0x5b
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x1
	.byte	0x5c
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x5d
	.4byte	0xe5
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0x92
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e9
	.uleb128 0x1a
	.string	"ipr"
	.byte	0x1
	.byte	0x92
	.4byte	0x740
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x94
	.4byte	0x740
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x1
	.byte	0x95
	.4byte	0xe5
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x96
	.4byte	0xe5
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x97
	.4byte	0x1a7
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x98
	.4byte	0x9e9
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF155
	.4byte	0x9ff
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6571
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x97e
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.byte	0xb4
	.4byte	0x1a7
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0xd5b
	.4byte	0x956
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL16
	.4byte	0xd66
	.4byte	0x96d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0xd71
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0xd7c
	.4byte	0x992
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL5
	.4byte	0xd87
	.4byte	0x9ab
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0xd5b
	.4byte	0x9bf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0xd71
	.4byte	0x9d3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0xd92
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x879
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x9ff
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0x9ef
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x1
	.byte	0xdf
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x22
	.string	"ipr"
	.byte	0x1
	.byte	0xdf
	.4byte	0x740
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0xdf
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0xe1
	.4byte	0x740
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x1
	.byte	0xe1
	.4byte	0x740
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0x8aa
	.byte	0
	.uleb128 0x25
	.4byte	.LASF173
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9d
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0x71
	.4byte	0x740
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.byte	0x71
	.4byte	0x740
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF155
	.4byte	0xaad
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0x8aa
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xaad
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0xa9d
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x103
	.4byte	0x1a7
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd13
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x103
	.4byte	0x1a7
	.4byte	.LLST11
	.uleb128 0x29
	.string	"ipr"
	.byte	0x1
	.2byte	0x105
	.4byte	0x740
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x105
	.4byte	0x740
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x106
	.4byte	0x9e9
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x106
	.4byte	0x9e9
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x106
	.4byte	0x9e9
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x107
	.4byte	0xd13
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x108
	.4byte	0xe5
	.4byte	.LLST18
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x108
	.4byte	0xe5
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x109
	.4byte	0xe5
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10a
	.4byte	0xcf
	.4byte	.LLST21
	.uleb128 0x29
	.string	"q"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1a7
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x25f
	.4byte	.LDL1
	.uleb128 0x1d
	.4byte	.LASF155
	.4byte	0xd29
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6614
	.uleb128 0x1e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xc62
	.uleb128 0x2c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x206
	.4byte	0x746
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xc04
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x20b
	.4byte	0x1a7
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.LVL95
	.4byte	0xd9d
	.4byte	0xbf3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xf8
	.byte	0
	.uleb128 0x21
	.4byte	.LVL96
	.4byte	0xda8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL99
	.4byte	0xdb3
	.uleb128 0x1f
	.4byte	.LVL106
	.4byte	0xd92
	.4byte	0xc26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL107
	.4byte	0xd5b
	.4byte	0xc3a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL109
	.4byte	0xd7c
	.4byte	0xc4e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL111
	.4byte	0xd66
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0xd5b
	.4byte	0xc76
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0xdb3
	.uleb128 0x24
	.4byte	.LVL45
	.4byte	0xdb3
	.uleb128 0x1f
	.4byte	.LVL52
	.4byte	0xa04
	.4byte	0xca3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL53
	.4byte	0xdbe
	.4byte	0xcb6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL58
	.4byte	0xdc9
	.4byte	0xcd4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL61
	.4byte	0xa04
	.4byte	0xcef
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL112
	.4byte	0xd71
	.4byte	0xd03
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL116
	.4byte	0xdbe
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f8
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xd29
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0xd19
	.uleb128 0x2d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x65
	.4byte	0x740
	.uleb128 0x5
	.byte	0x3
	.4byte	reassdatagrams
	.uleb128 0x2d
	.4byte	.LASF158
	.byte	0x1
	.byte	0x66
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	ip6_reass_pbufcount
	.uleb128 0x2e
	.4byte	.LASF176
	.byte	0xe
	.byte	0x7e
	.4byte	0x812
	.uleb128 0x2f
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x5
	.byte	0xef
	.uleb128 0x2f
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xf
	.byte	0x29
	.uleb128 0x2f
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x5
	.byte	0xee
	.uleb128 0x2f
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x5
	.byte	0xec
	.uleb128 0x2f
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x10
	.byte	0x3b
	.uleb128 0x2f
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x11
	.byte	0x95
	.uleb128 0x2f
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x5
	.byte	0xeb
	.uleb128 0x2f
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x5
	.byte	0xf0
	.uleb128 0x2f
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x12
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x11
	.byte	0x93
	.uleb128 0x30
	.4byte	.LASF177
	.4byte	.LASF177
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL51
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL97
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL119
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL84
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL113
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL113
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL42
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL113
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF127:
	.string	"_proto"
.LASF170:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
.LASF87:
	.string	"MEMP_SYS_TIMEOUT"
.LASF40:
	.string	"output_ip6"
.LASF30:
	.string	"pbuf"
.LASF46:
	.string	"rs_count"
.LASF23:
	.string	"next"
.LASF88:
	.string	"MEMP_NETDB"
.LASF136:
	.string	"current_iphdr_dest"
.LASF145:
	.string	"ip6_reass_free_complete_datagram"
.LASF4:
	.string	"__uint8_t"
.LASF164:
	.string	"memp_free"
.LASF140:
	.string	"prev"
.LASF26:
	.string	"type"
.LASF97:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF146:
	.string	"ip6_reass_remove_oldest_datagram"
.LASF89:
	.string	"MEMP_ND6_QUEUE"
.LASF11:
	.string	"long long unsigned int"
.LASF43:
	.string	"dhcps_pcb"
.LASF58:
	.string	"addr"
.LASF35:
	.string	"ip6_addr_state"
.LASF130:
	.string	"current_netif"
.LASF163:
	.string	"icmp6_time_exceeded"
.LASF80:
	.string	"MEMP_TCP_SEG"
.LASF3:
	.string	"__int8_t"
.LASF66:
	.string	"_hoplim"
.LASF7:
	.string	"short int"
.LASF101:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF18:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"long unsigned int"
.LASF52:
	.string	"mld_mac_filter"
.LASF49:
	.string	"hwaddr"
.LASF148:
	.string	"oldest"
.LASF25:
	.string	"tot_len"
.LASF90:
	.string	"MEMP_IP6_REASSDATA"
.LASF41:
	.string	"state"
.LASF47:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF76:
	.string	"MEMP_RAW_PCB"
.LASF72:
	.string	"ip4_addr"
.LASF68:
	.string	"ip6_frag_hdr"
.LASF131:
	.string	"current_input_netif"
.LASF109:
	.string	"dhcp_event_fn"
.LASF98:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF110:
	.string	"ip6_reassdata"
.LASF19:
	.string	"uint16_t"
.LASF48:
	.string	"hwaddr_len"
.LASF60:
	.string	"ip6_addr_packed"
.LASF114:
	.string	"nexth"
.LASF125:
	.string	"_offset"
.LASF96:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF33:
	.string	"netmask"
.LASF143:
	.string	"iprh"
.LASF106:
	.string	"netif_linkoutput_fn"
.LASF86:
	.string	"MEMP_IGMP_GROUP"
.LASF9:
	.string	"__uint32_t"
.LASF6:
	.string	"__int16_t"
.LASF69:
	.string	"reserved"
.LASF168:
	.string	"memp_malloc"
.LASF0:
	.string	"unsigned int"
.LASF57:
	.string	"last_ip_addr"
.LASF105:
	.string	"netif_output_ip6_fn"
.LASF92:
	.string	"MEMP_PBUF"
.LASF38:
	.string	"output"
.LASF113:
	.string	"datagram_len"
.LASF169:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF50:
	.string	"name"
.LASF128:
	.string	"_chksum"
.LASF29:
	.string	"l2_buf"
.LASF78:
	.string	"MEMP_TCP_PCB"
.LASF152:
	.string	"frag_hdr"
.LASF1:
	.string	"short unsigned int"
.LASF120:
	.string	"ip4_addr_p_t"
.LASF135:
	.string	"current_iphdr_src"
.LASF61:
	.string	"ip6_addr_p_t"
.LASF161:
	.string	"pbuf_free"
.LASF119:
	.string	"ip4_addr_packed"
.LASF167:
	.string	"lwip_htons"
.LASF147:
	.string	"pbufs_needed"
.LASF173:
	.string	"ip6_reass_tmr"
.LASF100:
	.string	"netif_mac_filter_action"
.LASF77:
	.string	"MEMP_UDP_PCB"
.LASF94:
	.string	"MEMP_MAX"
.LASF75:
	.string	"ip_addr_t"
.LASF59:
	.string	"ip6_addr_t"
.LASF22:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF55:
	.string	"loop_cnt_current"
.LASF31:
	.string	"netif"
.LASF126:
	.string	"_ttl"
.LASF91:
	.string	"MEMP_MLD6_GROUP"
.LASF51:
	.string	"igmp_mac_filter"
.LASF24:
	.string	"payload"
.LASF165:
	.string	"pbuf_header"
.LASF65:
	.string	"_nexth"
.LASF32:
	.string	"ip_addr"
.LASF104:
	.string	"netif_output_fn"
.LASF142:
	.string	"clen"
.LASF116:
	.string	"icmp6_te_code"
.LASF166:
	.string	"pbuf_cat"
.LASF156:
	.string	"iphdr_ptr"
.LASF162:
	.string	"pbuf_header_force"
.LASF103:
	.string	"netif_input_fn"
.LASF64:
	.string	"_plen"
.LASF71:
	.string	"_identification"
.LASF67:
	.string	"dest"
.LASF28:
	.string	"l2_owner"
.LASF118:
	.string	"ICMP6_TE_FRAG"
.LASF63:
	.string	"_v_tc_fl"
.LASF39:
	.string	"linkoutput"
.LASF21:
	.string	"_Bool"
.LASF160:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF121:
	.string	"ip_hdr"
.LASF107:
	.string	"netif_igmp_mac_filter_fn"
.LASF151:
	.string	"iprh_prev"
.LASF112:
	.string	"identification"
.LASF137:
	.string	"ip6_reass_helper"
.LASF117:
	.string	"ICMP6_TE_HL"
.LASF155:
	.string	"__func__"
.LASF111:
	.string	"iphdr"
.LASF174:
	.string	"ip6_reass"
.LASF44:
	.string	"dhcp_event"
.LASF37:
	.string	"input"
.LASF95:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF108:
	.string	"netif_mld_mac_filter_fn"
.LASF102:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF20:
	.string	"uint32_t"
.LASF34:
	.string	"ip6_addr"
.LASF83:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF149:
	.string	"ipr_prev"
.LASF81:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF79:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF82:
	.string	"MEMP_NETCONN"
.LASF175:
	.string	"nullreturn"
.LASF171:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF133:
	.string	"current_ip6_header"
.LASF93:
	.string	"MEMP_PBUF_POOL"
.LASF85:
	.string	"MEMP_ARP_QUEUE"
.LASF54:
	.string	"loop_last"
.LASF132:
	.string	"current_ip4_header"
.LASF134:
	.string	"current_ip_header_tot_len"
.LASF153:
	.string	"offset"
.LASF53:
	.string	"loop_first"
.LASF42:
	.string	"client_data"
.LASF176:
	.string	"ip_data"
.LASF159:
	.string	"pbuf_clen"
.LASF16:
	.string	"int8_t"
.LASF158:
	.string	"ip6_reass_pbufcount"
.LASF138:
	.string	"next_pbuf"
.LASF144:
	.string	"pcur"
.LASF177:
	.string	"memset"
.LASF99:
	.string	"lwip_internal_netif_client_data_index"
.LASF74:
	.string	"u_addr"
.LASF123:
	.string	"_tos"
.LASF122:
	.string	"_v_hl"
.LASF17:
	.string	"uint8_t"
.LASF27:
	.string	"flags"
.LASF115:
	.string	"timer"
.LASF172:
	.string	"udp_pcb"
.LASF129:
	.string	"ip_globals"
.LASF56:
	.string	"l2_buffer_free_notify"
.LASF36:
	.string	"ipv6_addr_cb"
.LASF45:
	.string	"ip6_autoconfig_enabled"
.LASF70:
	.string	"_fragment_offset"
.LASF73:
	.string	"ip4_addr_t"
.LASF139:
	.string	"start"
.LASF62:
	.string	"ip6_hdr"
.LASF154:
	.string	"valid"
.LASF150:
	.string	"iprh_tmp"
.LASF141:
	.string	"pbufs_freed"
.LASF157:
	.string	"reassdatagrams"
.LASF84:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF124:
	.string	"_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
