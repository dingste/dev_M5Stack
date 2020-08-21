	.file	"address.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/address.c"
.LC5:
	.string	"b"
	.section	.text.coap_address_equals,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6330
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	coap_address_equals
	.type	coap_address_equals, @function
coap_address_equals:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/address.c"
	.loc 1 18 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 18 0
	mov.n	a10, a2
	.loc 1 19 0
	l32r	a13, .LC1
	beqz.n	a2, .L13
.L2:
	.loc 1 19 0 is_stmt 0 discriminator 2
	bnez.n	a3, .L3
	.loc 1 19 0 discriminator 3
	l32r	a13, .LC6
.L13:
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi.n	a11, 0x13
	call8	__assert_func
.LVL1:
.L3:
	.loc 1 21 0 is_stmt 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a3, 0
	.loc 1 28 0
	movi.n	a2, 0
.LVL2:
	.loc 1 21 0
	bne	a9, a8, .L4
	.loc 1 21 0 is_stmt 0 discriminator 1
	l8ui	a9, a10, 5
	l8ui	a8, a3, 5
	bne	a8, a9, .L4
	.loc 1 25 0 is_stmt 1
	beqi	a8, 2, .L5
	beqi	a8, 10, .L6
	retw.n
.L5:
	.loc 1 28 0
	l16ui	a9, a10, 6
	l16ui	a8, a3, 6
	bne	a9, a8, .L4
	.loc 1 29 0 discriminator 1
	movi.n	a12, 4
	addi.n	a11, a3, 8
	addi.n	a10, a10, 8
.LVL3:
	j	.L12
.LVL4:
.L6:
	.loc 1 32 0
	l16ui	a9, a10, 6
	l16ui	a8, a3, 6
	bne	a9, a8, .L4
	.loc 1 33 0 discriminator 1
	movi.n	a12, 0x10
	addi.n	a11, a3, 12
	addi.n	a10, a10, 12
.LVL5:
.L12:
	call8	memcmp
.LVL6:
	.loc 1 38 0 discriminator 1
	movi.n	a3, 1
.LVL7:
	moveqz	a2, a3, a10
.L4:
	.loc 1 39 0
	retw.n
.LFE39:
	.size	coap_address_equals, .-coap_address_equals
	.section	.text.coap_is_mcast,"ax",@progbits
	.literal_position
	.literal .LC7, -268435456
	.literal .LC8, 536870912
	.align	4
	.global	coap_is_mcast
	.type	coap_is_mcast, @function
coap_is_mcast:
.LFB40:
	.loc 1 41 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 43 0
	mov.n	a10, a2
	.loc 1 42 0
	beqz.n	a2, .L15
	.loc 1 45 0
	l8ui	a8, a2, 5
	beqi	a8, 2, .L16
	beqi	a8, 10, .L17
	j	.L20
.L16:
	.loc 1 47 0
	l32i.n	a10, a2, 8
	call8	lwip_htonl
.LVL9:
	l32r	a8, .LC7
	and	a10, a10, a8
	l32r	a8, .LC8
	add.n	a8, a10, a8
	j	.L21
.L17:
	.loc 1 49 0
	l32r	a8, .LC7
	addi.n	a2, a2, 12
.LVL10:
	and	a2, a2, a8
	l32r	a8, .LC8
	add.n	a8, a2, a8
.LVL11:
.L21:
	movi.n	a2, 0
	movi.n	a10, 1
	movnez	a10, a2, a8
	j	.L15
.LVL12:
.L20:
	.loc 1 53 0
	movi.n	a10, 0
.LVL13:
.L15:
	.loc 1 54 0
	mov.n	a2, a10
	retw.n
.LFE40:
	.size	coap_is_mcast, .-coap_is_mcast
	.section	.rodata.__func__$6330,"a",@progbits
	.type	__func__$6330, @object
	.size	__func__$6330, 20
__func__$6330:
	.string	"coap_address_equals"
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/../../../lwip/src/include/lwip/inet.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/address.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x408
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
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
	.byte	0x16
	.4byte	0x2c
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x93
	.4byte	0xaa
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
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
	.uleb128 0x5
	.4byte	0xc0
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0xaa
	.4byte	0xf2
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xc0
	.4byte	0x102
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x37
	.4byte	0xc0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4
	.byte	0x3a
	.4byte	0x126
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3b
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.byte	0x3f
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x40
	.4byte	0xf2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x41
	.4byte	0xe2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x10
	.byte	0x4
	.byte	0x3e
	.4byte	0x15d
	.uleb128 0xb
	.string	"un"
	.byte	0x4
	.byte	0x42
	.4byte	0x126
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3a
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3f
	.4byte	0xb5
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x10
	.byte	0x5
	.byte	0x44
	.4byte	0x1bc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x45
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x46
	.4byte	0x15d
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0x47
	.4byte	0x168
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x48
	.4byte	0x10d
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4a
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1c
	.byte	0x5
	.byte	0x4f
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x5
	.byte	0x50
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x51
	.4byte	0x15d
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x52
	.4byte	0x168
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x53
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x5
	.byte	0x54
	.4byte	0x145
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.byte	0x55
	.4byte	0xc0
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x10
	.byte	0x5
	.byte	0x59
	.4byte	0x242
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x5
	.byte	0x5a
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x5
	.byte	0x5b
	.4byte	0x15d
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.byte	0x5c
	.4byte	0x242
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x252
	.uleb128 0x6
	.4byte	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x1c
	.byte	0x5
	.byte	0x5f
	.4byte	0x29b
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5
	.byte	0x60
	.4byte	0xaa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x5
	.byte	0x61
	.4byte	0x15d
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x5
	.byte	0x62
	.4byte	0x29b
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x5
	.byte	0x63
	.4byte	0xd2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x5
	.byte	0x65
	.4byte	0xd2
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x2ab
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x5
	.byte	0x6c
	.4byte	0xc0
	.uleb128 0x9
	.byte	0x1c
	.byte	0x6
	.byte	0x3d
	.4byte	0x2e9
	.uleb128 0xc
	.string	"sa"
	.byte	0x6
	.byte	0x3e
	.4byte	0x211
	.uleb128 0xc
	.string	"st"
	.byte	0x6
	.byte	0x3f
	.4byte	0x252
	.uleb128 0xc
	.string	"sin"
	.byte	0x6
	.byte	0x40
	.4byte	0x173
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x41
	.4byte	0x1bc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x20
	.byte	0x6
	.byte	0x3b
	.4byte	0x30e
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.byte	0x3c
	.4byte	0x2ab
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.byte	0x42
	.4byte	0x2b6
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0x43
	.4byte	0x2e9
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0x12
	.4byte	0x33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38a
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x12
	.4byte	0x38a
	.4byte	.LLST0
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x12
	.4byte	0x38a
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF62
	.4byte	0x3a5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6330
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x3ea
	.4byte	0x380
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6330
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x3f5
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x390
	.uleb128 0x14
	.4byte	0x30e
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x3a5
	.uleb128 0x6
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	0x395
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x29
	.4byte	0x33
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x29
	.4byte	0x38a
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x400
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x4
	.byte	0x56
	.4byte	0x3e5
	.uleb128 0x14
	.4byte	0x145
	.uleb128 0x16
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x29
	.uleb128 0x16
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x16
	.uleb128 0x16
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"ss_family"
.LASF47:
	.string	"s2_data2"
.LASF48:
	.string	"s2_data3"
.LASF40:
	.string	"sa_len"
.LASF24:
	.string	"sa_family_t"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"in6_addr"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"__uint32_t"
.LASF36:
	.string	"sin6_flowinfo"
.LASF37:
	.string	"sin6_addr"
.LASF6:
	.string	"__uint16_t"
.LASF14:
	.string	"uint8_t"
.LASF19:
	.string	"u32_addr"
.LASF38:
	.string	"sin6_scope_id"
.LASF28:
	.string	"sin_family"
.LASF55:
	.string	"coap_is_mcast"
.LASF27:
	.string	"sin_len"
.LASF35:
	.string	"sin6_port"
.LASF57:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"long int"
.LASF53:
	.string	"addr"
.LASF23:
	.string	"s_addr"
.LASF5:
	.string	"__uint8_t"
.LASF50:
	.string	"sin6"
.LASF30:
	.string	"sin_addr"
.LASF3:
	.string	"unsigned char"
.LASF34:
	.string	"sin6_family"
.LASF62:
	.string	"__func__"
.LASF51:
	.string	"coap_address_t"
.LASF49:
	.string	"socklen_t"
.LASF2:
	.string	"signed char"
.LASF31:
	.string	"sin_zero"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"sockaddr_in6"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/coap"
.LASF15:
	.string	"uint16_t"
.LASF58:
	.string	"lwip_htonl"
.LASF46:
	.string	"s2_data1"
.LASF44:
	.string	"s2_len"
.LASF42:
	.string	"sa_data"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF20:
	.string	"u8_addr"
.LASF17:
	.string	"_Bool"
.LASF18:
	.string	"in_addr_t"
.LASF43:
	.string	"sockaddr_storage"
.LASF12:
	.string	"long unsigned int"
.LASF63:
	.string	"in6addr_any"
.LASF52:
	.string	"size"
.LASF29:
	.string	"sin_port"
.LASF54:
	.string	"coap_address_equals"
.LASF25:
	.string	"in_port_t"
.LASF41:
	.string	"sa_family"
.LASF33:
	.string	"sin6_len"
.LASF21:
	.string	"in_addr"
.LASF56:
	.string	"__assert_func"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/address.c"
.LASF26:
	.string	"sockaddr_in"
.LASF39:
	.string	"sockaddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
