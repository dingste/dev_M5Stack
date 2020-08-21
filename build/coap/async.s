	.file	"async.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"coap_register_async: insufficient memory\n"
.LC2:
	.string	"asynchronous state for transaction %d already registered\n"
	.section	.text.coap_register_async,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.global	coap_register_async
	.type	coap_register_async, @function
coap_register_async:
.LFB61:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/async.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 25 0
	s32i.n	a3, sp, 16
	.loc 1 29 0
	l32i.n	a10, sp, 16
	.loc 1 25 0
	mov.n	a3, a4
.LVL1:
	.loc 1 29 0
	mov.n	a12, sp
	mov.n	a11, a3
	call8	coap_transaction_id
.LVL2:
	.loc 1 25 0
	extui	a4, a5, 0, 8
.LVL3:
	.loc 1 30 0
	l32i.n	a12, sp, 0
	l32i.n	a5, a2, 16
.LVL4:
	j	.L2
.L4:
	.loc 1 30 0 is_stmt 0 discriminator 4
	l32i.n	a7, a5, 16
	beq	a7, a12, .L3
	.loc 1 30 0 discriminator 2
	l32i.n	a5, a5, 20
.LVL5:
.L2:
	.loc 1 30 0 discriminator 3
	bnez.n	a5, .L4
	j	.L14
.LVL6:
.L9:
	.loc 1 43 0 is_stmt 1
	l32r	a11, .LC1
	movi.n	a10, 2
	call8	coap_log_impl
.LVL7:
	.loc 1 44 0
	mov.n	a2, a5
.LVL8:
	retw.n
.LVL9:
.L16:
	.loc 1 47 0
	l32i.n	a9, a3, 4
	mov.n	a11, a5
	l32i.n	a12, a9, 0
	.loc 1 50 0
	movi.n	a5, -2
	.loc 1 47 0
	extui	a12, a12, 0, 4
	.loc 1 50 0
	and	a4, a4, a5
.LVL10:
	.loc 1 47 0
	addi	a12, a12, 60
	mov.n	a10, a7
	call8	memset
.LVL11:
	.loc 1 50 0
	s8i	a4, a7, 0
	.loc 1 51 0
	l32i.n	a5, a3, 4
	movi.n	a9, 0x30
	l32i.n	a5, a5, 0
	bany	a9, a5, .L7
	.loc 1 52 0
	movi.n	a5, 1
	or	a4, a4, a5
	s8i	a4, a7, 0
.L7:
	.loc 1 56 0
	l32i.n	a11, sp, 16
	.loc 1 54 0
	s32i.n	a6, a7, 8
	.loc 1 56 0
	movi.n	a12, 0x20
	addi	a10, a7, 24
	call8	memcpy
.LVL12:
	.loc 1 58 0
	l32i.n	a11, a3, 4
	l32i.n	a3, a11, 0
.LVL13:
	extui	a4, a3, 0, 4
	beqz.n	a4, .L8
	.loc 1 59 0
	s32i.n	a4, a7, 56
	.loc 1 60 0
	l32i.n	a12, a11, 0
	addi	a10, a7, 60
	extui	a12, a12, 0, 4
	addi.n	a11, a11, 4
	call8	memcpy
.LVL14:
.L8:
	.loc 1 63 0
	l8ui	a4, sp, 0
.LBB8:
.LBB9:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/async.h"
	.loc 2 140 0
	addi.n	a10, a7, 4
.LBE9:
.LBE8:
	.loc 1 63 0
	s8i	a4, a7, 16
	l8ui	a4, sp, 1
	s8i	a4, a7, 17
	l8ui	a4, sp, 2
	s8i	a4, a7, 18
	l8ui	a4, sp, 3
	s8i	a4, a7, 19
.LBB11:
.LBB10:
	.loc 2 140 0
	call8	coap_ticks
.LVL15:
.LBE10:
.LBE11:
	.loc 1 67 0
	l32i.n	a3, a2, 16
	s32i.n	a3, a7, 20
	s32i.n	a7, a2, 16
	.loc 1 69 0
	mov.n	a2, a7
.LVL16:
	retw.n
.LVL17:
.L3:
	.loc 1 35 0
	l32r	a11, .LC3
	movi.n	a10, 7
	call8	coap_log_impl
.LVL18:
	.loc 1 36 0
	movi.n	a2, 0
.LVL19:
	retw.n
.LVL20:
.L14:
	.loc 1 41 0
	l32i.n	a7, a3, 4
.LBB12:
.LBB13:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/mem.h"
	.loc 3 71 0
	mov.n	a10, a5
.LBE13:
.LBE12:
	.loc 1 41 0
	l32i.n	a11, a7, 0
.LBB15:
.LBB14:
	.loc 3 71 0
	extui	a11, a11, 0, 4
	addi	a11, a11, 60
	call8	coap_malloc_type
.LVL21:
	mov.n	a7, a10
.LVL22:
.LBE14:
.LBE15:
	.loc 1 42 0
	bnez.n	a10, .L16
	j	.L9
.LFE61:
	.size	coap_register_async, .-coap_register_async
	.section	.text.coap_find_async,"ax",@progbits
	.align	4
	.global	coap_find_async
	.type	coap_find_async, @function
coap_find_async:
.LFB62:
	.loc 1 73 0
.LVL23:
	entry	sp, 32
.LCFI1:
	.loc 1 75 0
	l32i.n	a2, a2, 16
.LVL24:
	j	.L18
.L20:
	.loc 1 75 0 is_stmt 0 discriminator 4
	l32i.n	a8, a2, 16
	beq	a8, a3, .L19
	.loc 1 75 0 discriminator 2
	l32i.n	a2, a2, 20
.LVL25:
.L18:
	.loc 1 75 0 discriminator 3
	bnez.n	a2, .L20
.L19:
	.loc 1 77 0 is_stmt 1
	retw.n
.LFE62:
	.size	coap_find_async, .-coap_find_async
	.section	.text.coap_remove_async,"ax",@progbits
	.align	4
	.global	coap_remove_async
	.type	coap_remove_async, @function
coap_remove_async:
.LFB63:
	.loc 1 81 0
.LVL26:
	entry	sp, 32
.LCFI2:
	.loc 1 82 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_find_async
.LVL27:
	.loc 1 84 0
	beqz.n	a10, .L22
.LBB16:
	.loc 1 85 0
	l32i.n	a8, a2, 16
	bne	a10, a8, .L31
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 20
	s32i.n	a8, a2, 16
	j	.L22
.LVL28:
.L26:
	mov.n	a8, a2
.LVL29:
.L31:
	.loc 1 85 0 discriminator 3
	l32i.n	a2, a8, 20
	beqz.n	a2, .L22
	.loc 1 85 0 discriminator 5
	bne	a10, a2, .L26
	j	.L34
.LVL30:
.L22:
.LBE16:
	.loc 1 87 0 is_stmt 1
	s32i.n	a10, a4, 0
	.loc 1 88 0
	movi.n	a2, 0
	movi.n	a4, 1
.LVL31:
	movnez	a2, a4, a10
	retw.n
.LVL32:
.L34:
.LBB17:
	.loc 1 85 0
	l32i.n	a2, a10, 20
	s32i.n	a2, a8, 20
	j	.L22
.LBE17:
.LFE63:
	.size	coap_remove_async, .-coap_remove_async
	.section	.text.coap_free_async,"ax",@progbits
	.align	4
	.global	coap_free_async
	.type	coap_free_async, @function
coap_free_async:
.LFB64:
	.loc 1 92 0
.LVL33:
	entry	sp, 32
.LCFI3:
	.loc 1 93 0
	beqz.n	a2, .L37
	.loc 1 93 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 0
	bbci	a8, 3, .L37
.LVL34:
.LBB22:
.LBB23:
	.loc 3 78 0 is_stmt 1
	l32i.n	a11, a2, 8
	movi.n	a10, 0
	call8	coap_free_type
.LVL35:
.L37:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	mov.n	a11, a2
	movi.n	a10, 0
	call8	coap_free_type
.LVL36:
	retw.n
.LBE25:
.LBE24:
.LFE64:
	.size	coap_free_async, .-coap_free_async
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
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI0-.LFB61
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI1-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI2-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI3-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/address.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/coap_io.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/coap_time.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/str.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/hashkey.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/pdu.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/option.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/net.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/resource.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/debug.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/subscribe.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd31
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x4
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x5
	.byte	0x12
	.4byte	0x57
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
	.byte	0x5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x5
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
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x6
	.byte	0x37
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x57
	.4byte	0xab
	.uleb128 0x6
	.4byte	0xab
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0xc1
	.4byte	0xd8
	.uleb128 0x6
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x7
	.byte	0xcb
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x8
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x8
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x8
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	0xf9
	.4byte	0x11b
	.uleb128 0x6
	.4byte	0xab
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0xe3
	.4byte	0x12b
	.uleb128 0x6
	.4byte	0xab
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xf9
	.4byte	0x13b
	.uleb128 0x6
	.4byte	0xab
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x9
	.byte	0x37
	.4byte	0xf9
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x15f
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x9
	.byte	0x3b
	.4byte	0x13b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0x9
	.byte	0x3f
	.4byte	0x17e
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x9
	.byte	0x40
	.4byte	0x12b
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x9
	.byte	0x41
	.4byte	0x11b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x10
	.byte	0x9
	.byte	0x3e
	.4byte	0x196
	.uleb128 0xd
	.string	"un"
	.byte	0x9
	.byte	0x42
	.4byte	0x15f
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0xa
	.byte	0x3a
	.4byte	0xe3
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xa
	.byte	0x3f
	.4byte	0xee
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x10
	.byte	0xa
	.byte	0x44
	.4byte	0x1f5
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xa
	.byte	0x45
	.4byte	0xe3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xa
	.byte	0x46
	.4byte	0x196
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xa
	.byte	0x47
	.4byte	0x1a1
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xa
	.byte	0x48
	.4byte	0x146
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xa
	.byte	0x4a
	.4byte	0xc8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1c
	.byte	0xa
	.byte	0x4f
	.4byte	0x24a
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xa
	.byte	0x50
	.4byte	0xe3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xa
	.byte	0x51
	.4byte	0x196
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xa
	.byte	0x52
	.4byte	0x1a1
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xa
	.byte	0x53
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xa
	.byte	0x54
	.4byte	0x17e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xa
	.byte	0x55
	.4byte	0xf9
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x10
	.byte	0xa
	.byte	0x59
	.4byte	0x27b
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0xa
	.byte	0x5a
	.4byte	0xe3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0xa
	.byte	0x5b
	.4byte	0x196
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xa
	.byte	0x5c
	.4byte	0x27b
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0xc1
	.4byte	0x28b
	.uleb128 0x6
	.4byte	0xab
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1c
	.byte	0xa
	.byte	0x5f
	.4byte	0x2d4
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xa
	.byte	0x60
	.4byte	0xe3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xa
	.byte	0x61
	.4byte	0x196
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xa
	.byte	0x62
	.4byte	0x2d4
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xa
	.byte	0x63
	.4byte	0x10b
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xa
	.byte	0x65
	.4byte	0x10b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0xc1
	.4byte	0x2e4
	.uleb128 0x6
	.4byte	0xab
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa
	.byte	0x6c
	.4byte	0xf9
	.uleb128 0xb
	.byte	0x1c
	.byte	0xb
	.byte	0x3d
	.4byte	0x322
	.uleb128 0xe
	.string	"sa"
	.byte	0xb
	.byte	0x3e
	.4byte	0x24a
	.uleb128 0xe
	.string	"st"
	.byte	0xb
	.byte	0x3f
	.4byte	0x28b
	.uleb128 0xe
	.string	"sin"
	.byte	0xb
	.byte	0x40
	.4byte	0x1ac
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xb
	.byte	0x41
	.4byte	0x1f5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x20
	.byte	0xb
	.byte	0x3b
	.4byte	0x347
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xb
	.byte	0x3c
	.4byte	0x2e4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xb
	.byte	0x42
	.4byte	0x2ef
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xb
	.byte	0x43
	.4byte	0x322
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xc
	.byte	0x1b
	.4byte	0x35d
	.uleb128 0xf
	.4byte	.LASF57
	.uleb128 0xb
	.byte	0x4
	.byte	0xc
	.byte	0x25
	.4byte	0x380
	.uleb128 0xe
	.string	"fd"
	.byte	0xc
	.byte	0x26
	.4byte	0x3e
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0xc
	.byte	0x27
	.4byte	0xb2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x2c
	.byte	0xc
	.byte	0x23
	.4byte	0x3bd
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xc
	.byte	0x28
	.4byte	0x362
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xc
	.byte	0x32
	.4byte	0x347
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0x33
	.4byte	0x3e
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xc
	.byte	0x34
	.4byte	0x3e
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xc
	.byte	0x35
	.4byte	0x380
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xd
	.byte	0x54
	.4byte	0xb4
	.uleb128 0x10
	.byte	0x8
	.byte	0xe
	.byte	0xf
	.4byte	0x3f2
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xe
	.byte	0x10
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.string	"s"
	.byte	0xe
	.byte	0x11
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"str"
	.byte	0xe
	.byte	0x12
	.4byte	0x3d3
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xf
	.byte	0x14
	.4byte	0x9b
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x10
	.byte	0xa3
	.4byte	0x3e
	.uleb128 0x10
	.byte	0x4
	.byte	0x10
	.byte	0xb9
	.4byte	0x46f
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x10
	.byte	0xba
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x10
	.byte	0xbb
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x10
	.byte	0xbc
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x10
	.byte	0xbd
	.4byte	0x30
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"id"
	.byte	0x10
	.byte	0xbf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x10
	.byte	0xc0
	.4byte	0x46f
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x57
	.4byte	0x47e
	.uleb128 0x13
	.4byte	0xab
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x10
	.byte	0xc1
	.4byte	0x413
	.uleb128 0x10
	.byte	0x10
	.byte	0x10
	.byte	0xe3
	.4byte	0x4ce
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x10
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.string	"hdr"
	.byte	0x10
	.byte	0xe5
	.4byte	0x4ce
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x10
	.byte	0xe9
	.4byte	0x37
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x10
	.byte	0xea
	.4byte	0x37
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x10
	.byte	0xeb
	.4byte	0xbb
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x47e
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x10
	.byte	0xf7
	.4byte	0x489
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x11
	.byte	0x87
	.4byte	0x4ea
	.uleb128 0x5
	.4byte	0xee
	.4byte	0x4fa
	.uleb128 0x6
	.4byte	0xab
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x64
	.byte	0x12
	.byte	0x1f
	.4byte	0x564
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x12
	.byte	0x20
	.4byte	0x564
	.byte	0
	.uleb128 0xd
	.string	"t"
	.byte	0x12
	.byte	0x21
	.4byte	0x3c8
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x12
	.byte	0x22
	.4byte	0x57
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x12
	.byte	0x24
	.4byte	0x30
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x12
	.byte	0x25
	.4byte	0x3bd
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x12
	.byte	0x26
	.4byte	0x347
	.byte	0x3c
	.uleb128 0xd
	.string	"id"
	.byte	0x12
	.byte	0x27
	.4byte	0x408
	.byte	0x5c
	.uleb128 0xd
	.string	"pdu"
	.byte	0x12
	.byte	0x28
	.4byte	0x56a
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4fa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d4
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x12
	.byte	0x29
	.4byte	0x4fa
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x12
	.byte	0x3e
	.4byte	0x586
	.uleb128 0x8
	.byte	0x4
	.4byte	0x58c
	.uleb128 0x14
	.4byte	0x5b0
	.uleb128 0x15
	.4byte	0x5b0
	.uleb128 0x15
	.4byte	0x653
	.uleb128 0x15
	.4byte	0x65e
	.uleb128 0x15
	.4byte	0x56a
	.uleb128 0x15
	.4byte	0x56a
	.uleb128 0x15
	.4byte	0x669
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x38
	.byte	0x12
	.byte	0x4c
	.4byte	0x653
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x12
	.byte	0x4d
	.4byte	0x4df
	.byte	0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x12
	.byte	0x4e
	.4byte	0x70b
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x12
	.byte	0x53
	.4byte	0x789
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x12
	.byte	0x59
	.4byte	0x3c8
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x12
	.byte	0x5a
	.4byte	0x78f
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x12
	.byte	0x5b
	.4byte	0x795
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x12
	.byte	0x5e
	.4byte	0x3e
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x12
	.byte	0x72
	.4byte	0x37
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x12
	.byte	0x78
	.4byte	0x30
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x12
	.byte	0x7a
	.4byte	0x57b
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x12
	.byte	0x7c
	.4byte	0x7be
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x12
	.byte	0x81
	.4byte	0x7e4
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x659
	.uleb128 0x16
	.4byte	0x3bd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x664
	.uleb128 0x16
	.4byte	0x347
	.uleb128 0x16
	.4byte	0x408
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x30
	.byte	0x13
	.byte	0x4b
	.4byte	0x70b
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x13
	.byte	0x4c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x13
	.byte	0x4d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x13
	.byte	0x4f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x13
	.byte	0x50
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x13
	.byte	0x58
	.4byte	0x9bd
	.byte	0x4
	.uleb128 0xd
	.string	"key"
	.byte	0x13
	.byte	0x5a
	.4byte	0x3fd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x13
	.byte	0x5d
	.4byte	0x70b
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x13
	.byte	0x62
	.4byte	0x9cd
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x13
	.byte	0x63
	.4byte	0x9d3
	.byte	0x20
	.uleb128 0xd
	.string	"uri"
	.byte	0x13
	.byte	0x69
	.4byte	0x3f2
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x13
	.byte	0x6a
	.4byte	0x3e
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x66e
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x3c
	.byte	0x2
	.byte	0x1f
	.4byte	0x789
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x2
	.byte	0x20
	.4byte	0x57
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x2
	.byte	0x27
	.4byte	0x3c8
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x2
	.byte	0x2d
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x2
	.byte	0x2e
	.4byte	0x37
	.byte	0xc
	.uleb128 0xd
	.string	"id"
	.byte	0x2
	.byte	0x2f
	.4byte	0x408
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x2
	.byte	0x30
	.4byte	0x789
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x2
	.byte	0x31
	.4byte	0x347
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x2
	.byte	0x32
	.4byte	0x25
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x2
	.byte	0x33
	.4byte	0x46f
	.byte	0x3c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x711
	.uleb128 0x8
	.byte	0x4
	.4byte	0x570
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3bd
	.uleb128 0x17
	.4byte	0xd8
	.4byte	0x7be
	.uleb128 0x15
	.4byte	0x5b0
	.uleb128 0x15
	.4byte	0x653
	.uleb128 0x15
	.4byte	0x65e
	.uleb128 0x15
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x17
	.4byte	0xd8
	.4byte	0x7d8
	.uleb128 0x15
	.4byte	0x795
	.uleb128 0x15
	.4byte	0x7d8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7de
	.uleb128 0x8
	.byte	0x4
	.4byte	0x352
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7c4
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x12
	.byte	0x83
	.4byte	0x5b6
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x2
	.byte	0x34
	.4byte	0x711
	.uleb128 0x18
	.byte	0x4
	.4byte	0x30
	.byte	0x14
	.byte	0x1a
	.4byte	0x83d
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x30
	.byte	0x3
	.byte	0x1d
	.4byte	0x88c
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x60
	.byte	0x15
	.byte	0x36
	.4byte	0x902
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x15
	.byte	0x37
	.4byte	0x902
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x15
	.byte	0x38
	.4byte	0x3bd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x15
	.byte	0x39
	.4byte	0x347
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0x15
	.byte	0x3b
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0x15
	.byte	0x3c
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x15
	.byte	0x3d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x15
	.byte	0x40
	.4byte	0x25
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x15
	.byte	0x41
	.4byte	0x908
	.byte	0x58
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x88c
	.uleb128 0x5
	.4byte	0x57
	.4byte	0x918
	.uleb128 0x6
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x15
	.byte	0x42
	.4byte	0x88c
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x13
	.byte	0x29
	.4byte	0x92e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x934
	.uleb128 0x14
	.4byte	0x95d
	.uleb128 0x15
	.4byte	0x95d
	.uleb128 0x15
	.4byte	0x70b
	.uleb128 0x15
	.4byte	0x653
	.uleb128 0x15
	.4byte	0x963
	.uleb128 0x15
	.4byte	0x56a
	.uleb128 0x15
	.4byte	0x969
	.uleb128 0x15
	.4byte	0x56a
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0x8
	.byte	0x4
	.4byte	0x347
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x18
	.byte	0x13
	.byte	0x35
	.4byte	0x9ac
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x13
	.byte	0x36
	.4byte	0x9ac
	.byte	0
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x13
	.byte	0x37
	.4byte	0x3f2
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x13
	.byte	0x38
	.4byte	0x3f2
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x13
	.byte	0x39
	.4byte	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x96f
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x13
	.byte	0x3a
	.4byte	0x96f
	.uleb128 0x5
	.4byte	0x923
	.4byte	0x9cd
	.uleb128 0x6
	.4byte	0xab
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9b2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x918
	.uleb128 0x1a
	.4byte	.LASF144
	.byte	0x2
	.byte	0x8c
	.byte	0x3
	.4byte	0x9ef
	.uleb128 0x1b
	.string	"s"
	.byte	0x2
	.byte	0x8c
	.4byte	0x9ef
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f5
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x3
	.byte	0x46
	.4byte	0xb2
	.byte	0x3
	.4byte	0xa11
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x3
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x18
	.4byte	0x9ef
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb82
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x18
	.4byte	0x95d
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.byte	0x18
	.4byte	0x963
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.byte	0x19
	.4byte	0x56a
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.byte	0x19
	.4byte	0x57
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.byte	0x19
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0x1a
	.4byte	0x9ef
	.4byte	.LLST4
	.uleb128 0x22
	.string	"id"
	.byte	0x1
	.byte	0x1b
	.4byte	0x408
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	0x9d9
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.4byte	0xab6
	.uleb128 0x24
	.4byte	0x9e5
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0xce9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x9f5
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x28
	.4byte	0xae3
	.uleb128 0x27
	.4byte	0xa05
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0xcf5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xd00
	.4byte	0xb04
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0xd0c
	.4byte	0xb20
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xd17
	.4byte	0xb34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xd20
	.4byte	0xb55
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0xd20
	.4byte	0xb69
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 60
	.byte	0
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xd0c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0x49
	.4byte	0x9ef
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc4
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x49
	.4byte	0x95d
	.4byte	.LLST6
	.uleb128 0x29
	.string	"id"
	.byte	0x1
	.byte	0x49
	.4byte	0x408
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"tmp"
	.byte	0x1
	.byte	0x4a
	.4byte	0x9ef
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0x50
	.4byte	0x3e
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc42
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x50
	.4byte	0x95d
	.4byte	.LLST7
	.uleb128 0x29
	.string	"id"
	.byte	0x1
	.byte	0x50
	.4byte	0x408
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0x51
	.4byte	0xc42
	.4byte	.LLST8
	.uleb128 0x22
	.string	"tmp"
	.byte	0x1
	.byte	0x52
	.4byte	0x9ef
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xc2b
	.uleb128 0x2c
	.4byte	.LASF143
	.byte	0x1
	.byte	0x55
	.4byte	0x789
	.4byte	.LLST9
	.byte	0
	.uleb128 0x25
	.4byte	.LVL27
	.4byte	0xb82
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9ef
	.uleb128 0x1a
	.4byte	.LASF145
	.byte	0x3
	.byte	0x4d
	.byte	0x3
	.4byte	0xc60
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x3
	.byte	0x4d
	.4byte	0xb2
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd9
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.4byte	0x9ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	0xc48
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x5e
	.4byte	0xcac
	.uleb128 0x27
	.4byte	0xc54
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	.LVL35
	.4byte	0xd29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0xc48
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x30
	.4byte	0xc54
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0xd29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF159
	.byte	0x9
	.byte	0x56
	.4byte	0xce4
	.uleb128 0x16
	.4byte	0x17e
	.uleb128 0x32
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x12
	.2byte	0x1d7
	.uleb128 0x33
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x3
	.byte	0x37
	.uleb128 0x32
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x12
	.2byte	0x186
	.uleb128 0x33
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x14
	.byte	0x37
	.uleb128 0x34
	.4byte	.LASF151
	.4byte	.LASF151
	.uleb128 0x34
	.4byte	.LASF152
	.4byte	.LASF152
	.uleb128 0x33
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x3
	.byte	0x41
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE61
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0xb
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x2
	.byte	0x72
	.sleb128 8
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
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"COAP_STRING"
.LASF74:
	.string	"max_delta"
.LASF40:
	.string	"sin6_addr"
.LASF101:
	.string	"observable"
.LASF3:
	.string	"size_t"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF16:
	.string	"ssize_t"
.LASF46:
	.string	"sockaddr_storage"
.LASF68:
	.string	"type"
.LASF127:
	.string	"COAP_PDU_BUF"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"in_addr_t"
.LASF56:
	.string	"addr"
.LASF135:
	.string	"coap_attr_t"
.LASF111:
	.string	"LOG_EMERG"
.LASF52:
	.string	"socklen_t"
.LASF155:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/async.c"
.LASF150:
	.string	"coap_log_impl"
.LASF79:
	.string	"next"
.LASF146:
	.string	"object"
.LASF78:
	.string	"coap_queue_t"
.LASF92:
	.string	"sockfd"
.LASF9:
	.string	"long long int"
.LASF148:
	.string	"coap_malloc_type"
.LASF98:
	.string	"coap_resource_t"
.LASF156:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/coap"
.LASF72:
	.string	"coap_hdr_t"
.LASF67:
	.string	"token_length"
.LASF11:
	.string	"long int"
.LASF58:
	.string	"conn"
.LASF117:
	.string	"LOG_INFO"
.LASF106:
	.string	"coap_async_state_t"
.LASF96:
	.string	"network_send"
.LASF38:
	.string	"sin6_port"
.LASF130:
	.string	"coap_subscription_t"
.LASF120:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF108:
	.string	"appdata"
.LASF149:
	.string	"coap_transaction_id"
.LASF8:
	.string	"__uint32_t"
.LASF118:
	.string	"LOG_DEBUG"
.LASF34:
	.string	"sin_zero"
.LASF137:
	.string	"value"
.LASF86:
	.string	"known_options"
.LASF87:
	.string	"resources"
.LASF116:
	.string	"LOG_NOTICE"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"s_addr"
.LASF124:
	.string	"COAP_CONTEXT"
.LASF18:
	.string	"uint16_t"
.LASF91:
	.string	"endpoint"
.LASF14:
	.string	"long unsigned int"
.LASF81:
	.string	"timeout"
.LASF93:
	.string	"message_id"
.LASF154:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF136:
	.string	"name"
.LASF76:
	.string	"coap_pdu_t"
.LASF75:
	.string	"data"
.LASF55:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"sin_addr"
.LASF109:
	.string	"peer"
.LASF65:
	.string	"coap_key_t"
.LASF57:
	.string	"coap_packet_t"
.LASF142:
	.string	"coap_remove_async"
.LASF61:
	.string	"ifindex"
.LASF152:
	.string	"memcpy"
.LASF100:
	.string	"partiallydirty"
.LASF140:
	.string	"coap_register_async"
.LASF63:
	.string	"coap_tick_t"
.LASF66:
	.string	"coap_tid_t"
.LASF80:
	.string	"retransmit_cnt"
.LASF60:
	.string	"handle"
.LASF103:
	.string	"handler"
.LASF43:
	.string	"sa_len"
.LASF31:
	.string	"sin_family"
.LASF104:
	.string	"link_attr"
.LASF13:
	.string	"sizetype"
.LASF153:
	.string	"coap_free_type"
.LASF36:
	.string	"sin6_len"
.LASF126:
	.string	"COAP_PDU"
.LASF37:
	.string	"sin6_family"
.LASF122:
	.string	"COAP_PACKET"
.LASF113:
	.string	"LOG_CRIT"
.LASF30:
	.string	"sin_len"
.LASF49:
	.string	"s2_data1"
.LASF50:
	.string	"s2_data2"
.LASF51:
	.string	"s2_data3"
.LASF85:
	.string	"coap_context_t"
.LASF133:
	.string	"fail_cnt"
.LASF59:
	.string	"coap_endpoint_t"
.LASF95:
	.string	"response_handler"
.LASF32:
	.string	"sin_port"
.LASF44:
	.string	"sa_family"
.LASF105:
	.string	"subscribers"
.LASF143:
	.string	"_tmp"
.LASF128:
	.string	"COAP_RESOURCE"
.LASF97:
	.string	"network_read"
.LASF89:
	.string	"sendqueue_basetime"
.LASF41:
	.string	"sin6_scope_id"
.LASF99:
	.string	"dirty"
.LASF141:
	.string	"coap_find_async"
.LASF20:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF131:
	.string	"subscriber"
.LASF159:
	.string	"in6addr_any"
.LASF134:
	.string	"coap_method_handler_t"
.LASF94:
	.string	"observe"
.LASF82:
	.string	"local_if"
.LASF6:
	.string	"short int"
.LASF115:
	.string	"LOG_WARNING"
.LASF151:
	.string	"memset"
.LASF107:
	.string	"created"
.LASF145:
	.string	"coap_free"
.LASF53:
	.string	"sin6"
.LASF129:
	.string	"COAP_RESOURCEATTR"
.LASF25:
	.string	"in6_addr"
.LASF112:
	.string	"LOG_ALERT"
.LASF19:
	.string	"uint32_t"
.LASF83:
	.string	"remote"
.LASF90:
	.string	"sendqueue"
.LASF23:
	.string	"u8_addr"
.LASF15:
	.string	"char"
.LASF48:
	.string	"ss_family"
.LASF39:
	.string	"sin6_flowinfo"
.LASF7:
	.string	"__uint16_t"
.LASF17:
	.string	"uint8_t"
.LASF88:
	.string	"async_state"
.LASF144:
	.string	"coap_touch_async"
.LASF132:
	.string	"non_cnt"
.LASF138:
	.string	"context"
.LASF69:
	.string	"version"
.LASF110:
	.string	"tokenlen"
.LASF22:
	.string	"u32_addr"
.LASF139:
	.string	"request"
.LASF71:
	.string	"token"
.LASF27:
	.string	"sa_family_t"
.LASF70:
	.string	"code"
.LASF157:
	.string	"coap_malloc"
.LASF35:
	.string	"sockaddr_in6"
.LASF102:
	.string	"cacheable"
.LASF42:
	.string	"sockaddr"
.LASF29:
	.string	"sockaddr_in"
.LASF84:
	.string	"coap_response_handler_t"
.LASF73:
	.string	"max_size"
.LASF12:
	.string	"_ssize_t"
.LASF62:
	.string	"flags"
.LASF123:
	.string	"COAP_NODE"
.LASF158:
	.string	"coap_free_async"
.LASF64:
	.string	"length"
.LASF125:
	.string	"COAP_ENDPOINT"
.LASF47:
	.string	"s2_len"
.LASF45:
	.string	"sa_data"
.LASF147:
	.string	"coap_ticks"
.LASF121:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF114:
	.string	"LOG_ERR"
.LASF54:
	.string	"coap_address_t"
.LASF28:
	.string	"in_port_t"
.LASF77:
	.string	"coap_opt_filter_t"
.LASF24:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
