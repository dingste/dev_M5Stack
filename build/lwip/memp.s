	.file	"memp.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"memp_malloc: memp properly aligned"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/memp.c"
	.section	.text.do_memp_malloc_pool$isra$0,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$7914
	.literal .LC4, .LC3
	.align	4
	.type	do_memp_malloc_pool$isra$0, @function
do_memp_malloc_pool$isra$0:
.LFB44:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/memp.c"
	.loc 1 292 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 301 0
	addi.n	a2, a2, 3
	movi.n	a10, -4
	and	a10, a2, a10
	call8	mem_malloc
.LVL1:
	mov.n	a2, a10
.LVL2:
	.loc 1 302 0
	call8	sys_arch_protect
.LVL3:
	.loc 1 309 0
	beqz.n	a2, .L2
	.loc 1 328 0
	extui	a8, a2, 0, 2
	beqz.n	a8, .L2
.LBB6:
.LBB7:
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
.LVL4:
	movi	a11, 0x149
	call8	__assert_func
.LVL5:
.L2:
.LBE7:
.LBE6:
	.loc 1 346 0
	call8	sys_arch_unprotect
.LVL6:
	.loc 1 348 0
	retw.n
.LFE44:
	.size	do_memp_malloc_pool$isra$0, .-do_memp_malloc_pool$isra$0
	.section	.rodata.str1.1
.LC5:
	.string	"memp_free: mem properly aligned"
	.section	.text.do_memp_free_pool$isra$2,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$7931
	.literal .LC8, .LC3
	.align	4
	.type	do_memp_free_pool$isra$2, @function
do_memp_free_pool$isra$2:
.LFB46:
	.loc 1 407 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 412 0
	extui	a8, a2, 0, 2
	beqz.n	a8, .L6
.LVL9:
.LBB10:
.LBB11:
	l32r	a13, .LC6
	l32r	a12, .LC7
	l32r	a10, .LC8
	movi	a11, 0x19d
	call8	__assert_func
.LVL10:
.L6:
.LBE11:
.LBE10:
	.loc 1 418 0
	call8	sys_arch_protect
.LVL11:
	.loc 1 431 0
	call8	sys_arch_unprotect
.LVL12:
	.loc 1 432 0
	mov.n	a10, a2
	call8	mem_free
.LVL13:
	retw.n
.LFE46:
	.size	do_memp_free_pool$isra$2, .-do_memp_free_pool$isra$2
	.section	.text.memp_init_pool,"ax",@progbits
	.align	4
	.global	memp_init_pool
	.type	memp_init_pool, @function
memp_init_pool:
.LFB36:
	.loc 1 231 0
.LVL14:
	entry	sp, 32
.LCFI2:
	retw.n
.LFE36:
	.size	memp_init_pool, .-memp_init_pool
	.section	.text.memp_init,"ax",@progbits
	.align	4
	.global	memp_init
	.type	memp_init, @function
memp_init:
.LFB37:
	.loc 1 272 0
	.loc 1 272 0
	entry	sp, 32
.LCFI3:
.LVL15:
	retw.n
.LFE37:
	.size	memp_init, .-memp_init
	.section	.rodata.str1.1
.LC9:
	.string	"invalid pool desc"
	.section	.text.memp_malloc_pool,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, __func__$7919
	.literal .LC12, .LC3
	.align	4
	.global	memp_malloc_pool
	.type	memp_malloc_pool, @function
memp_malloc_pool:
.LFB39:
	.loc 1 363 0
.LVL16:
	.loc 1 363 0
	entry	sp, 32
.LCFI4:
	.loc 1 364 0
	bnez.n	a2, .L10
	.loc 1 364 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	l32r	a10, .LC12
	movi	a11, 0x16c
	call8	__assert_func
.LVL17:
.L10:
	.loc 1 370 0
	l16ui	a10, a2, 4
	call8	do_memp_malloc_pool$isra$0
.LVL18:
	.loc 1 374 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE39:
	.size	memp_malloc_pool, .-memp_malloc_pool
	.section	.rodata.str1.1
.LC13:
	.string	"memp_malloc: type < MEMP_MAX"
	.section	.text.memp_malloc,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.literal .LC15, memp_pools
	.align	4
	.global	memp_malloc
	.type	memp_malloc, @function
memp_malloc:
.LFB40:
	.loc 1 389 0
.LVL20:
	entry	sp, 32
.LCFI5:
	.loc 1 391 0
	movi.n	a8, 0x11
	bgeu	a8, a2, .L12
	.loc 1 391 0 is_stmt 0 discriminator 1
	l32r	a10, .LC14
	.loc 1 391 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
.LVL21:
	.loc 1 391 0 discriminator 1
	call8	puts
.LVL22:
	.loc 1 391 0 discriminator 1
	retw.n
.LVL23:
.L12:
	.loc 1 398 0
	l32r	a8, .LC15
	addx4	a2, a2, a8
.LVL24:
	l32i.n	a2, a2, 0
	l16ui	a10, a2, 4
	call8	do_memp_malloc_pool$isra$0
.LVL25:
	mov.n	a2, a10
	.loc 1 404 0
	retw.n
.LFE40:
	.size	memp_malloc, .-memp_malloc
	.section	.text.memp_free_pool,"ax",@progbits
	.literal_position
	.literal .LC16, .LC9
	.literal .LC17, __func__$7936
	.literal .LC18, .LC3
	.align	4
	.global	memp_free_pool
	.type	memp_free_pool, @function
memp_free_pool:
.LFB42:
	.loc 1 453 0
.LVL26:
	entry	sp, 32
.LCFI6:
	.loc 1 453 0
	mov.n	a10, a3
	.loc 1 454 0
	bnez.n	a2, .L15
	.loc 1 454 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32r	a10, .LC18
	movi	a11, 0x1c6
	call8	__assert_func
.LVL27:
.L15:
	.loc 1 455 0
	beqz.n	a3, .L14
	.loc 1 459 0
	call8	do_memp_free_pool$isra$2
.LVL28:
.L14:
	retw.n
.LFE42:
	.size	memp_free_pool, .-memp_free_pool
	.section	.rodata.str1.1
.LC19:
	.string	"memp_free: type < MEMP_MAX"
	.section	.text.memp_free,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.align	4
	.global	memp_free
	.type	memp_free, @function
memp_free:
.LFB43:
	.loc 1 470 0
.LVL29:
	entry	sp, 32
.LCFI7:
	.loc 1 475 0
	movi.n	a8, 0x11
	.loc 1 470 0
	mov.n	a10, a3
	.loc 1 475 0
	bgeu	a8, a2, .L21
	.loc 1 475 0 is_stmt 0 discriminator 1
	l32r	a10, .LC20
	call8	puts
.LVL30:
	retw.n
.L21:
	.loc 1 477 0 is_stmt 1
	beqz.n	a3, .L20
	.loc 1 489 0
	call8	do_memp_free_pool$isra$2
.LVL31:
.L20:
	retw.n
.LFE43:
	.size	memp_free, .-memp_free
	.section	.rodata.__func__$7931,"a",@progbits
	.type	__func__$7931, @object
	.size	__func__$7931, 18
__func__$7931:
	.string	"do_memp_free_pool"
	.section	.rodata.__func__$7936,"a",@progbits
	.type	__func__$7936, @object
	.size	__func__$7936, 15
__func__$7936:
	.string	"memp_free_pool"
	.section	.rodata.__func__$7914,"a",@progbits
	.type	__func__$7914, @object
	.size	__func__$7914, 20
__func__$7914:
	.string	"do_memp_malloc_pool"
	.section	.rodata.__func__$7919,"a",@progbits
	.type	__func__$7919, @object
	.size	__func__$7919, 17
__func__$7919:
	.string	"memp_malloc_pool"
	.global	memp_pools
	.section	.rodata.memp_pools,"a",@progbits
	.align	4
	.type	memp_pools, @object
	.size	memp_pools, 72
memp_pools:
	.word	memp_RAW_PCB
	.word	memp_UDP_PCB
	.word	memp_TCP_PCB
	.word	memp_TCP_PCB_LISTEN
	.word	memp_TCP_SEG
	.word	memp_NETBUF
	.word	memp_NETCONN
	.word	memp_TCPIP_MSG_API
	.word	memp_TCPIP_MSG_INPKT
	.word	memp_ARP_QUEUE
	.word	memp_IGMP_GROUP
	.word	memp_SYS_TIMEOUT
	.word	memp_NETDB
	.word	memp_ND6_QUEUE
	.word	memp_IP6_REASSDATA
	.word	memp_MLD6_GROUP
	.word	memp_PBUF
	.word	memp_PBUF_POOL
	.global	memp_PBUF_POOL
	.section	.rodata.str1.1
.LC21:
	.string	"PBUF_POOL"
	.section	.rodata.memp_PBUF_POOL,"a",@progbits
	.align	4
	.type	memp_PBUF_POOL, @object
	.size	memp_PBUF_POOL, 8
memp_PBUF_POOL:
	.word	.LC21
	.short	1516
	.zero	2
	.global	memp_PBUF
	.section	.rodata.str1.1
.LC22:
	.string	"PBUF_REF/ROM"
	.section	.rodata.memp_PBUF,"a",@progbits
	.align	4
	.type	memp_PBUF, @object
	.size	memp_PBUF, 8
memp_PBUF:
	.word	.LC22
	.short	24
	.zero	2
	.global	memp_MLD6_GROUP
	.section	.rodata.str1.1
.LC23:
	.string	"MLD6_GROUP"
	.section	.rodata.memp_MLD6_GROUP,"a",@progbits
	.align	4
	.type	memp_MLD6_GROUP, @object
	.size	memp_MLD6_GROUP, 8
memp_MLD6_GROUP:
	.word	.LC23
	.short	28
	.zero	2
	.global	memp_IP6_REASSDATA
	.section	.rodata.str1.1
.LC24:
	.string	"IP6_REASSDATA"
	.section	.rodata.memp_IP6_REASSDATA,"a",@progbits
	.align	4
	.type	memp_IP6_REASSDATA, @object
	.size	memp_IP6_REASSDATA, 8
memp_IP6_REASSDATA:
	.word	.LC24
	.short	20
	.zero	2
	.global	memp_ND6_QUEUE
	.section	.rodata.str1.1
.LC25:
	.string	"ND6_QUEUE"
	.section	.rodata.memp_ND6_QUEUE,"a",@progbits
	.align	4
	.type	memp_ND6_QUEUE, @object
	.size	memp_ND6_QUEUE, 8
memp_ND6_QUEUE:
	.word	.LC25
	.short	8
	.zero	2
	.global	memp_NETDB
	.section	.rodata.str1.1
.LC26:
	.string	"NETDB"
	.section	.rodata.memp_NETDB,"a",@progbits
	.align	4
	.type	memp_NETDB, @object
	.size	memp_NETDB, 8
memp_NETDB:
	.word	.LC26
	.short	320
	.zero	2
	.global	memp_SYS_TIMEOUT
	.section	.rodata.str1.1
.LC27:
	.string	"SYS_TIMEOUT"
	.section	.rodata.memp_SYS_TIMEOUT,"a",@progbits
	.align	4
	.type	memp_SYS_TIMEOUT, @object
	.size	memp_SYS_TIMEOUT, 8
memp_SYS_TIMEOUT:
	.word	.LC27
	.short	16
	.zero	2
	.global	memp_IGMP_GROUP
	.section	.rodata.str1.1
.LC28:
	.string	"IGMP_GROUP"
	.section	.rodata.memp_IGMP_GROUP,"a",@progbits
	.align	4
	.type	memp_IGMP_GROUP, @object
	.size	memp_IGMP_GROUP, 8
memp_IGMP_GROUP:
	.word	.LC28
	.short	16
	.zero	2
	.global	memp_ARP_QUEUE
	.section	.rodata.str1.1
.LC29:
	.string	"ARP_QUEUE"
	.section	.rodata.memp_ARP_QUEUE,"a",@progbits
	.align	4
	.type	memp_ARP_QUEUE, @object
	.size	memp_ARP_QUEUE, 8
memp_ARP_QUEUE:
	.word	.LC29
	.short	8
	.zero	2
	.global	memp_TCPIP_MSG_INPKT
	.section	.rodata.str1.1
.LC30:
	.string	"TCPIP_MSG_INPKT"
	.section	.rodata.memp_TCPIP_MSG_INPKT,"a",@progbits
	.align	4
	.type	memp_TCPIP_MSG_INPKT, @object
	.size	memp_TCPIP_MSG_INPKT, 8
memp_TCPIP_MSG_INPKT:
	.word	.LC30
	.short	16
	.zero	2
	.global	memp_TCPIP_MSG_API
	.section	.rodata.str1.1
.LC31:
	.string	"TCPIP_MSG_API"
	.section	.rodata.memp_TCPIP_MSG_API,"a",@progbits
	.align	4
	.type	memp_TCPIP_MSG_API, @object
	.size	memp_TCPIP_MSG_API, 8
memp_TCPIP_MSG_API:
	.word	.LC31
	.short	16
	.zero	2
	.global	memp_NETCONN
	.section	.rodata.str1.1
.LC32:
	.string	"NETCONN"
	.section	.rodata.memp_NETCONN,"a",@progbits
	.align	4
	.type	memp_NETCONN, @object
	.size	memp_NETCONN, 8
memp_NETCONN:
	.word	.LC32
	.short	52
	.zero	2
	.global	memp_NETBUF
	.section	.rodata.str1.1
.LC33:
	.string	"NETBUF"
	.section	.rodata.memp_NETBUF,"a",@progbits
	.align	4
	.type	memp_NETBUF, @object
	.size	memp_NETBUF, 8
memp_NETBUF:
	.word	.LC33
	.short	32
	.zero	2
	.global	memp_TCP_SEG
	.section	.rodata.str1.1
.LC34:
	.string	"TCP_SEG"
	.section	.rodata.memp_TCP_SEG,"a",@progbits
	.align	4
	.type	memp_TCP_SEG, @object
	.size	memp_TCP_SEG, 8
memp_TCP_SEG:
	.word	.LC34
	.short	20
	.zero	2
	.global	memp_TCP_PCB_LISTEN
	.section	.rodata.str1.1
.LC35:
	.string	"TCP_PCB_LISTEN"
	.section	.rodata.memp_TCP_PCB_LISTEN,"a",@progbits
	.align	4
	.type	memp_TCP_PCB_LISTEN, @object
	.size	memp_TCP_PCB_LISTEN, 8
memp_TCP_PCB_LISTEN:
	.word	.LC35
	.short	68
	.zero	2
	.global	memp_TCP_PCB
	.section	.rodata.str1.1
.LC36:
	.string	"TCP_PCB"
	.section	.rodata.memp_TCP_PCB,"a",@progbits
	.align	4
	.type	memp_TCP_PCB, @object
	.size	memp_TCP_PCB, 8
memp_TCP_PCB:
	.word	.LC36
	.short	196
	.zero	2
	.global	memp_UDP_PCB
	.section	.rodata.str1.1
.LC37:
	.string	"UDP_PCB"
	.section	.rodata.memp_UDP_PCB,"a",@progbits
	.align	4
	.type	memp_UDP_PCB, @object
	.size	memp_UDP_PCB, 8
memp_UDP_PCB:
	.word	.LC37
	.short	88
	.zero	2
	.global	memp_RAW_PCB
	.section	.rodata.str1.1
.LC38:
	.string	"RAW_PCB"
	.section	.rodata.memp_RAW_PCB,"a",@progbits
	.align	4
	.type	memp_RAW_PCB, @object
	.size	memp_RAW_PCB, 8
memp_RAW_PCB:
	.word	.LC38
	.short	64
	.zero	2
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI0-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI5-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI6-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI7-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x80a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x35
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x36
	.4byte	0x33
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x34
	.4byte	0x164
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x5
	.byte	0x38
	.4byte	0xe5
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x194
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x8d
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x70
	.4byte	0x1bd
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x124
	.4byte	0x8c
	.byte	0x1
	.4byte	0x205
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x124
	.4byte	0x205
	.uleb128 0xf
	.4byte	.LASF46
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x129
	.4byte	0x210
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x12a
	.4byte	0xda
	.uleb128 0x11
	.4byte	.LASF48
	.4byte	0x226
	.4byte	.LASF49
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20b
	.uleb128 0x7
	.4byte	0x16f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1da
	.uleb128 0x12
	.4byte	0x95
	.4byte	0x226
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x216
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x197
	.byte	0x1
	.4byte	0x27b
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x197
	.4byte	0x205
	.uleb128 0x15
	.string	"mem"
	.byte	0x1
	.2byte	0x197
	.4byte	0x8c
	.uleb128 0xf
	.4byte	.LASF46
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x199
	.4byte	0x27b
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x19a
	.4byte	0xda
	.uleb128 0x11
	.4byte	.LASF48
	.4byte	0x291
	.4byte	.LASF50
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x250
	.uleb128 0x12
	.4byte	0x95
	.4byte	0x291
	.uleb128 0x13
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x281
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	0x2ae
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe6
	.4byte	0x205
	.byte	0
	.uleb128 0x18
	.4byte	0x1bd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x370
	.uleb128 0x19
	.4byte	0x1ce
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x1ce
	.byte	0x9f
	.uleb128 0x1a
	.4byte	0x1df
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	0x1eb
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	0x1f7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7914
	.uleb128 0x1c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x346
	.uleb128 0x1d
	.4byte	0x1ce
	.uleb128 0x1e
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1f
	.4byte	0x1df
	.uleb128 0x1f
	.4byte	0x1eb
	.uleb128 0x1a
	.4byte	0x1f7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7914
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x7c9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7914
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL1
	.4byte	0x7d4
	.4byte	0x35d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0x7df
	.uleb128 0x23
	.4byte	.LVL6
	.4byte	0x7eb
	.byte	0
	.uleb128 0x18
	.4byte	0x22b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43b
	.uleb128 0x19
	.4byte	0x244
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	0x238
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x238
	.byte	0x9f
	.uleb128 0x1a
	.4byte	0x255
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	0x261
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7931
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x418
	.uleb128 0x24
	.4byte	0x244
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	0x238
	.uleb128 0x1e
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1f
	.4byte	0x255
	.uleb128 0x1f
	.4byte	0x261
	.uleb128 0x1a
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7931
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x7c9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x19d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7931
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0x7df
	.uleb128 0x23
	.4byte	.LVL12
	.4byte	0x7eb
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x7f7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x296
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x456
	.uleb128 0x19
	.4byte	0x2a2
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x25
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x10f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x478
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x111
	.4byte	0xbd
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x167
	.4byte	0x8c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f4
	.uleb128 0x28
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x167
	.4byte	0x205
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	.LASF48
	.4byte	0x504
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7919
	.uleb128 0x22
	.4byte	.LVL17
	.4byte	0x7c9
	.4byte	0x4e1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7919
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x2ae
	.uleb128 0x2a
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x95
	.4byte	0x504
	.uleb128 0x13
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x4f4
	.uleb128 0x27
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x181
	.4byte	0x8c
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x573
	.uleb128 0x28
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x181
	.4byte	0x164
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x186
	.4byte	0x8c
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0x802
	.4byte	0x556
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0x2ae
	.uleb128 0x2a
	.4byte	0x1ce
	.uleb128 0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	memp_pools
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1c4
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f7
	.uleb128 0x2b
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x205
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.string	"mem"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF48
	.4byte	0x607
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7936
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0x7c9
	.4byte	0x5e4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7936
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0x370
	.uleb128 0x2a
	.4byte	0x238
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x95
	.4byte	0x607
	.uleb128 0x13
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x5f7
	.uleb128 0x25
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1d5
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x671
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x164
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.string	"mem"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0x802
	.4byte	0x655
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x370
	.uleb128 0x2a
	.4byte	0x238
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	memp_pools
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x205
	.4byte	0x681
	.uleb128 0x13
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF57
	.byte	0x1
	.byte	0x51
	.4byte	0x692
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_pools
	.uleb128 0x7
	.4byte	0x671
	.uleb128 0x2d
	.4byte	.LASF58
	.byte	0x7
	.byte	0x2a
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_RAW_PCB
	.uleb128 0x2d
	.4byte	.LASF59
	.byte	0x7
	.byte	0x2e
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_UDP_PCB
	.uleb128 0x2d
	.4byte	.LASF60
	.byte	0x7
	.byte	0x32
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x7
	.byte	0x33
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB_LISTEN
	.uleb128 0x2d
	.4byte	.LASF62
	.byte	0x7
	.byte	0x34
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_SEG
	.uleb128 0x2d
	.4byte	.LASF63
	.byte	0x7
	.byte	0x3f
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETBUF
	.uleb128 0x2d
	.4byte	.LASF64
	.byte	0x7
	.byte	0x40
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETCONN
	.uleb128 0x2d
	.4byte	.LASF65
	.byte	0x7
	.byte	0x44
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_API
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x7
	.byte	0x52
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_INPKT
	.uleb128 0x2d
	.4byte	.LASF67
	.byte	0x7
	.byte	0x57
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_ARP_QUEUE
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x7
	.byte	0x5b
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_IGMP_GROUP
	.uleb128 0x2d
	.4byte	.LASF69
	.byte	0x7
	.byte	0x5f
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_SYS_TIMEOUT
	.uleb128 0x2d
	.4byte	.LASF70
	.byte	0x7
	.byte	0x63
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETDB
	.uleb128 0x2d
	.4byte	.LASF71
	.byte	0x7
	.byte	0x6a
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_ND6_QUEUE
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x7
	.byte	0x6e
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_IP6_REASSDATA
	.uleb128 0x2d
	.4byte	.LASF73
	.byte	0x7
	.byte	0x72
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_MLD6_GROUP
	.uleb128 0x2d
	.4byte	.LASF74
	.byte	0x7
	.byte	0x7e
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF
	.uleb128 0x2d
	.4byte	.LASF75
	.byte	0x7
	.byte	0x7f
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF_POOL
	.uleb128 0x2e
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x19f
	.uleb128 0x2f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x1a0
	.uleb128 0x2e
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x5c
	.uleb128 0x2e
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xb
	.byte	0xc7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"MEMP_PBUF"
.LASF65:
	.string	"memp_TCPIP_MSG_API"
.LASF56:
	.string	"memp_free"
.LASF87:
	.string	"memp_init_pool"
.LASF78:
	.string	"sys_arch_protect"
.LASF86:
	.string	"lwip_internal_netif_client_data_index"
.LASF62:
	.string	"memp_TCP_SEG"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF33:
	.string	"MEMP_ND6_QUEUE"
.LASF24:
	.string	"MEMP_TCP_SEG"
.LASF74:
	.string	"memp_PBUF"
.LASF11:
	.string	"sizetype"
.LASF15:
	.string	"int16_t"
.LASF70:
	.string	"memp_NETDB"
.LASF59:
	.string	"memp_UDP_PCB"
.LASF7:
	.string	"__uint16_t"
.LASF6:
	.string	"short int"
.LASF57:
	.string	"memp_pools"
.LASF19:
	.string	"sys_prot_t"
.LASF31:
	.string	"MEMP_SYS_TIMEOUT"
.LASF43:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF72:
	.string	"memp_IP6_REASSDATA"
.LASF14:
	.string	"uint8_t"
.LASF63:
	.string	"memp_NETBUF"
.LASF23:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF58:
	.string	"memp_RAW_PCB"
.LASF32:
	.string	"MEMP_NETDB"
.LASF40:
	.string	"desc"
.LASF66:
	.string	"memp_TCPIP_MSG_INPKT"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF18:
	.string	"mem_ptr_t"
.LASF10:
	.string	"long int"
.LASF64:
	.string	"memp_NETCONN"
.LASF45:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF34:
	.string	"MEMP_IP6_REASSDATA"
.LASF50:
	.string	"do_memp_free_pool"
.LASF54:
	.string	"memp_init"
.LASF4:
	.string	"__uint8_t"
.LASF29:
	.string	"MEMP_ARP_QUEUE"
.LASF67:
	.string	"memp_ARP_QUEUE"
.LASF77:
	.string	"mem_malloc"
.LASF42:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF51:
	.string	"memp_malloc_pool"
.LASF3:
	.string	"unsigned char"
.LASF28:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF44:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF48:
	.string	"__func__"
.LASF38:
	.string	"MEMP_MAX"
.LASF2:
	.string	"signed char"
.LASF76:
	.string	"__assert_func"
.LASF53:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF79:
	.string	"sys_arch_unprotect"
.LASF81:
	.string	"puts"
.LASF30:
	.string	"MEMP_IGMP_GROUP"
.LASF47:
	.string	"old_level"
.LASF13:
	.string	"char"
.LASF27:
	.string	"MEMP_TCPIP_MSG_API"
.LASF35:
	.string	"MEMP_MLD6_GROUP"
.LASF85:
	.string	"memp_desc"
.LASF80:
	.string	"mem_free"
.LASF17:
	.string	"_Bool"
.LASF68:
	.string	"memp_IGMP_GROUP"
.LASF75:
	.string	"memp_PBUF_POOL"
.LASF1:
	.string	"short unsigned int"
.LASF55:
	.string	"memp_free_pool"
.LASF12:
	.string	"long unsigned int"
.LASF46:
	.string	"memp"
.LASF20:
	.string	"MEMP_RAW_PCB"
.LASF73:
	.string	"memp_MLD6_GROUP"
.LASF41:
	.string	"size"
.LASF49:
	.string	"do_memp_malloc_pool"
.LASF5:
	.string	"__int16_t"
.LASF37:
	.string	"MEMP_PBUF_POOL"
.LASF26:
	.string	"MEMP_NETCONN"
.LASF60:
	.string	"memp_TCP_PCB"
.LASF39:
	.string	"memp_t"
.LASF22:
	.string	"MEMP_TCP_PCB"
.LASF83:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/memp.c"
.LASF52:
	.string	"memp_malloc"
.LASF21:
	.string	"MEMP_UDP_PCB"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF69:
	.string	"memp_SYS_TIMEOUT"
.LASF71:
	.string	"memp_ND6_QUEUE"
.LASF61:
	.string	"memp_TCP_PCB_LISTEN"
.LASF25:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
