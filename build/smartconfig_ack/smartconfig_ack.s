	.file	"smartconfig_ack.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"smartconfig"
.LC4:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
.LC8:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC0, 18266
	.literal .LC1, 10000
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, 4095
	.literal .LC7, 4103
	.literal .LC9, .LC8
	.literal .LC10, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
	.loc 1 46 0
.LVL0:
	entry	sp, 96
.LCFI0:
.LVL1:
	.loc 1 50 0
	addi	a4, a2, 19
	l8ui	a5, a2, 19
	l8ui	a3, a4, 1
	s8i	a5, sp, 28
	s8i	a3, sp, 29
	l8ui	a5, a4, 2
	l8ui	a3, a4, 3
	.loc 1 51 0
	l32i.n	a7, a2, 0
	.loc 1 50 0
	s8i	a5, sp, 30
	s8i	a3, sp, 31
	.loc 1 51 0
	l32r	a5, .LC0
	l32r	a3, .LC1
	.loc 1 57 0
	movi.n	a8, 0xb
	.loc 1 62 0
	movi.n	a12, 0x10
	.loc 1 51 0
	moveqz	a3, a5, a7
.LVL2:
	.loc 1 62 0
	movi.n	a11, 0
	.loc 1 55 0
	movi.n	a5, 1
	.loc 1 57 0
	movi.n	a6, 7
	.loc 1 62 0
	mov.n	a10, sp
	.loc 1 57 0
	moveqz	a6, a8, a7
.LVL3:
	.loc 1 55 0
	s32i.n	a5, sp, 40
	.loc 1 62 0
	call8	memset
.LVL4:
	.loc 1 63 0
	movi.n	a7, 2
	.loc 1 64 0
	addi	a10, sp, 28
	.loc 1 63 0
	s8i	a7, sp, 1
	.loc 1 64 0
	call8	ipaddr_addr
.LVL5:
	s32i.n	a10, sp, 4
	.loc 1 65 0
	mov.n	a10, a3
	call8	lwip_htons
.LVL6:
	s16i	a10, sp, 2
	.loc 1 67 0
	addi.n	a11, a2, 13
	movi.n	a10, 0
	call8	esp_wifi_get_mac
.LVL7:
	.loc 1 69 0
	movi.n	a10, 0x14
	call8	vTaskDelay
.LVL8:
	.loc 1 54 0
	movi.n	a3, -1
.LVL9:
	.loc 1 71 0
	j	.L4
.LVL10:
.L15:
	.loc 1 73 0
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL11:
	.loc 1 74 0
	bnez.n	a10, .L5
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32i.n	a7, sp, 16
	beqz.n	a7, .L5
	.loc 1 76 0 is_stmt 1
	l32i.n	a3, a2, 0
	bnez.n	a3, .L6
	.loc 1 77 0
	l8ui	a7, sp, 16
	l8ui	a3, sp, 17
	s8i	a7, a4, 0
	s8i	a3, a4, 1
	l8ui	a7, sp, 18
	l8ui	a3, sp, 19
	s8i	a7, a4, 2
	s8i	a3, a4, 3
.L6:
.LVL12:
.LBB16:
.LBB17:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 593 0
	movi.n	a11, 2
	movi.n	a12, 0
	mov.n	a10, a11
.LVL13:
	call8	lwip_socket
.LVL14:
.LBE17:
.LBE16:
	.loc 1 82 0
	addi	a7, a10, -54
	movi.n	a8, 9
.LBB19:
.LBB18:
	.loc 2 593 0
	mov.n	a3, a10
.LBE18:
.LBE19:
	.loc 1 82 0
	bgeu	a8, a7, .L7
	.loc 1 83 0 discriminator 2
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC3
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL16:
	.loc 1 84 0 discriminator 2
	j	.L8
.L7:
.LVL17:
.LBB20:
.LBB21:
	.loc 2 571 0
	l32r	a11, .LC6
	movi.n	a14, 4
	addi	a13, sp, 40
.LVL18:
	movi.n	a12, 0x24
	call8	lwip_setsockopt_r
.LVL19:
.LBE21:
.LBE20:
	.loc 1 93 0
	addi.n	a7, a2, 12
	j	.L9
.L13:
	.loc 1 91 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL20:
.LBB22:
.LBB23:
	.loc 2 591 0
	movi.n	a15, 0x10
	mov.n	a14, sp
.LVL21:
	movi.n	a13, 0
	mov.n	a12, a6
	mov.n	a11, a7
	mov.n	a10, a3
	call8	lwip_sendto_r
.LVL22:
.LBE23:
.LBE22:
	.loc 1 94 0
	blti	a10, 1, .L10
	.loc 1 96 0
	addi.n	a8, a5, 1
	movi.n	a9, 0x1d
	extui	a8, a8, 0, 8
.LVL23:
	bgeu	a9, a5, .L19
	.loc 1 97 0
	l32i.n	a4, a2, 4
	beqz.n	a4, .L12
	.loc 1 98 0
	movi.n	a5, 1
	s8i	a5, a4, 0
.L12:
	.loc 1 100 0
	l32i.n	a4, a2, 8
	beqz.n	a4, .L8
	.loc 1 101 0
	addi	a11, sp, 28
	movi.n	a10, 4
	callx8	a4
.LVL24:
	j	.L8
.LVL25:
.L10:
.LBB24:
.LBB25:
	.loc 1 37 0
	movi.n	a8, 0
.LBB26:
.LBB27:
	.loc 2 573 0
	l32r	a12, .LC7
	l32r	a11, .LC6
.LBE27:
.LBE26:
	.loc 1 37 0
	s32i.n	a8, sp, 36
.LBB31:
.LBB28:
	.loc 2 573 0
	addi	a14, sp, 32
.LBE28:
.LBE31:
	.loc 1 38 0
	movi.n	a8, 4
.LBB32:
.LBB29:
	.loc 2 573 0
	addi	a13, sp, 36
	mov.n	a10, a3
.LBE29:
.LBE32:
	.loc 1 38 0
	s32i.n	a8, sp, 32
.LVL26:
.LBB33:
.LBB30:
	.loc 2 573 0
	call8	lwip_getsockopt_r
.LVL27:
.LBE30:
.LBE33:
	.loc 1 42 0
	l32i.n	a15, sp, 36
.LBE25:
.LBE24:
	.loc 1 108 0
	addi	a8, a15, -11
	bltui	a8, 2, .L9
	.loc 1 112 0 discriminator 2
	s32i.n	a15, sp, 48
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC3
	l32i.n	a15, sp, 48
	l32r	a12, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	.loc 1 113 0 discriminator 2
	j	.L8
.LVL30:
.L19:
	.loc 1 96 0
	mov.n	a5, a8
.LVL31:
.L9:
	.loc 1 89 0
	l32r	a9, .LC10
	l8ui	a8, a9, 0
	bnez.n	a8, .L13
	j	.L4
.LVL32:
.L5:
	.loc 1 118 0
	movi.n	a10, 0xa
.LVL33:
	call8	vTaskDelay
.LVL34:
.L4:
	.loc 1 71 0
	l32r	a8, .LC10
	l8ui	a7, a8, 0
	bnez.n	a7, .L15
.LVL35:
.L8:
	.loc 1 123 0
	addi	a4, a3, -54
	movi.n	a5, 9
	bltu	a5, a4, .L16
	.loc 1 124 0
	mov.n	a10, a3
	call8	close
.LVL36:
.L16:
	.loc 1 126 0
	mov.n	a10, a2
	call8	free
.LVL37:
	.loc 1 127 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL38:
	retw.n
.LFE39:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.1
.LC12:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter error\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter malloc fail\033[0m\n"
.LC18:
	.string	"sc_ack_send_task"
.LC22:
	.string	"\033[0;31mE (%d) %s: Create sending smartconfig ACK task fail\033[0m\n"
	.section	.text.sc_ack_send,"ax",@progbits
	.literal_position
	.literal .LC11, .LC2
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, s_sc_ack_send
	.literal .LC17, 2048
	.literal .LC19, .LC18
	.literal .LC20, sc_ack_send_task
	.literal .LC21, 2147483647
	.literal .LC23, .LC22
	.align	4
	.global	sc_ack_send
	.type	sc_ack_send, @function
sc_ack_send:
.LFB40:
	.loc 1 131 0
.LVL39:
	entry	sp, 48
.LCFI1:
.LVL40:
	.loc 1 134 0
	bnez.n	a2, .L30
	.loc 1 135 0 discriminator 2
	call8	esp_log_timestamp
.LVL41:
	l32r	a11, .LC11
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC13
	j	.L36
.L30:
	.loc 1 139 0
	movi.n	a10, 0x18
	call8	malloc
.LVL42:
	mov.n	a3, a10
.LVL43:
	.loc 1 140 0
	bnez.n	a10, .L32
	.loc 1 141 0 discriminator 2
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC11
	l32r	a12, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
.LVL45:
.L36:
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
	.loc 1 142 0 discriminator 2
	retw.n
.LVL47:
.L32:
	.loc 1 144 0
	mov.n	a11, a2
	movi.n	a12, 0x18
	call8	memcpy
.LVL48:
	.loc 1 146 0
	l32r	a2, .LC16
.LVL49:
	movi.n	a8, 1
	s8i	a8, a2, 0
.LVL50:
.LBB36:
.LBB37:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 3 440 0
	l32r	a2, .LC21
	l32r	a12, .LC17
	l32r	a11, .LC19
	l32r	a10, .LC20
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a3
	call8	xTaskCreatePinnedToCore
.LVL51:
.LBE37:
.LBE36:
	.loc 1 148 0
	beqi	a10, 1, .L29
	.loc 1 149 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC11
	l32r	a12, .LC23
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 150 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL54:
.L29:
	retw.n
.LFE40:
	.size	sc_ack_send, .-sc_ack_send
	.section	.text.sc_ack_send_stop,"ax",@progbits
	.literal_position
	.literal .LC24, s_sc_ack_send
	.align	4
	.global	sc_ack_send_stop
	.type	sc_ack_send_stop, @function
sc_ack_send_stop:
.LFB41:
	.loc 1 155 0
	entry	sp, 32
.LCFI2:
	.loc 1 156 0
	l32r	a8, .LC24
	movi.n	a9, 0
	s8i	a9, a8, 0
	retw.n
.LFE41:
	.size	sc_ack_send_stop, .-sc_ack_send_stop
	.section	.bss.s_sc_ack_send,"aw",@nobits
	.type	s_sc_ack_send, @object
	.size	s_sc_ack_send, 1
s_sc_ack_send:
	.zero	1
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
	.uleb128 0x60
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_interface.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_smartconfig.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/include/smartconfig_ack.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_wifi.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/unistd.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc2f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0xc2
	.uleb128 0x9
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xb
	.4byte	0xfb
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x4d
	.4byte	0xea
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x70
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x76
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x157
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x9
	.byte	0x34
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0x39
	.4byte	0x13e
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xa
	.byte	0x37
	.4byte	0xd8
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0xa
	.byte	0x3b
	.4byte	0x162
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0x3a
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3f
	.4byte	0xcd
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x1e5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.byte	0x45
	.4byte	0xc2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0x46
	.4byte	0x186
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x2
	.byte	0x47
	.4byte	0x191
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x2
	.byte	0x48
	.4byte	0x16d
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0x4a
	.4byte	0xb2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x216
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x2
	.byte	0x5a
	.4byte	0xc2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x2
	.byte	0x5b
	.4byte	0x186
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x2
	.byte	0x5c
	.4byte	0x216
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x226
	.uleb128 0x9
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0x6c
	.4byte	0xd8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x19
	.4byte	0x256
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x26c
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x27c
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xb
	.byte	0x46
	.4byte	0x2a7
	.uleb128 0x12
	.string	"ip"
	.byte	0xb
	.byte	0x47
	.4byte	0x157
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0xb
	.byte	0x48
	.4byte	0x157
	.byte	0x4
	.uleb128 0x12
	.string	"gw"
	.byte	0xb
	.byte	0x49
	.4byte	0x157
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xb
	.byte	0x4a
	.4byte	0x27c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x67
	.4byte	0x2d7
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x1f
	.4byte	0x308
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x1a
	.4byte	0x338
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xe
	.byte	0x20
	.4byte	0x30d
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xe
	.byte	0x33
	.4byte	0x34e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x354
	.uleb128 0xb
	.4byte	0x364
	.uleb128 0xc
	.4byte	0x338
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x24
	.4byte	0x37d
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xf
	.byte	0x27
	.4byte	0x364
	.uleb128 0x11
	.byte	0xb
	.byte	0xf
	.byte	0x30
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xf
	.byte	0x31
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.string	"mac"
	.byte	0xf
	.byte	0x32
	.4byte	0x25c
	.byte	0x1
	.uleb128 0x12
	.string	"ip"
	.byte	0xf
	.byte	0x33
	.4byte	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x18
	.byte	0xf
	.byte	0x2c
	.4byte	0x3f0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xf
	.byte	0x2d
	.4byte	0x37d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xf
	.byte	0x2e
	.4byte	0x256
	.byte	0x4
	.uleb128 0x12
	.string	"cb"
	.byte	0xf
	.byte	0x2f
	.4byte	0x343
	.byte	0x8
	.uleb128 0x12
	.string	"ctx"
	.byte	0xf
	.byte	0x34
	.4byte	0x388
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xf
	.byte	0x35
	.4byte	0x3b4
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0x3
	.4byte	0x431
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0x3
	.4byte	0x488
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x24e
	.4byte	0xe3
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x24e
	.4byte	0x2c
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x15
	.string	"to"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x488
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x24e
	.4byte	0x226
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48e
	.uleb128 0x7
	.4byte	0x1e5
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x10d
	.byte	0x3
	.4byte	0x4ed
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x1b1
	.4byte	0xfb
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x139
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x1b3
	.4byte	0x4ed
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x308
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x118
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x1b6
	.4byte	0x4f8
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x7
	.4byte	0x4f2
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.byte	0x3
	.4byte	0x549
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x23a
	.4byte	0xe3
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x23a
	.4byte	0x226
	.byte	0
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.byte	0x3
	.4byte	0x595
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x23c
	.4byte	0x97
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x23c
	.4byte	0x595
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x226
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.byte	0x1
	.4byte	0x5cc
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x1
	.byte	0x26
	.4byte	0xd8
	.byte	0
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e1
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"ack"
	.byte	0x1
	.byte	0x2f
	.4byte	0x9e1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.byte	0x30
	.4byte	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0x31
	.4byte	0x26c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.byte	0x34
	.4byte	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x35
	.4byte	0x226
	.byte	0x10
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3a
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x7a
	.4byte	.L8
	.uleb128 0x22
	.4byte	0x3fb
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x51
	.4byte	0x6f4
	.uleb128 0x23
	.4byte	0x424
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	0x418
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	0x40c
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xb67
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x4fd
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x57
	.4byte	0x75d
	.uleb128 0x23
	.4byte	0x518
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	0x524
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	0x53c
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	0x530
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	0x50e
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LVL19
	.4byte	0xb73
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x431
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x5d
	.4byte	0x7d0
	.uleb128 0x23
	.4byte	0x47b
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	0x470
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	0x464
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	0x458
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	0x44c
	.uleb128 0x23
	.4byte	0x442
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xb7f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x59b
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x6b
	.4byte	0x86e
	.uleb128 0x23
	.4byte	0x5ab
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x29
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	0x5c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	0x549
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x28
	.uleb128 0x23
	.4byte	0x564
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	0x570
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	0x588
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	0x57c
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	0x55a
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0xb8b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL4
	.4byte	0xb97
	.4byte	0x88d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xba0
	.4byte	0x8a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0xbab
	.4byte	0x8b6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xbb6
	.4byte	0x8cf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xbc2
	.4byte	0x8e2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0xbce
	.4byte	0x8fc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL15
	.4byte	0xbda
	.uleb128 0x2b
	.4byte	.LVL16
	.4byte	0xbe5
	.4byte	0x933
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0xbc2
	.4byte	0x946
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x95f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL28
	.4byte	0xbda
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0xbe5
	.4byte	0x996
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL34
	.4byte	0xbc2
	.4byte	0x9a9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL36
	.4byte	0xbf0
	.4byte	0x9bd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL37
	.4byte	0xbfb
	.4byte	0x9d1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0xc06
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f0
	.uleb128 0x2e
	.4byte	.LASF132
	.byte	0x1
	.byte	0x82
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb33
	.uleb128 0x2f
	.4byte	.LASF107
	.byte	0x1
	.byte	0x82
	.4byte	0x9e1
	.4byte	.LLST23
	.uleb128 0x20
	.string	"ack"
	.byte	0x1
	.byte	0x84
	.4byte	0x9e1
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	0x493
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x94
	.4byte	0xa9a
	.uleb128 0x30
	.4byte	0x4a4
	.uleb128 0x6
	.byte	0x3
	.4byte	sc_ack_send_task
	.byte	0x9f
	.uleb128 0x30
	.4byte	0x4b0
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC18
	.byte	0x9f
	.uleb128 0x31
	.4byte	0x4bc
	.2byte	0x800
	.uleb128 0x32
	.4byte	0x4d4
	.byte	0x2
	.uleb128 0x32
	.4byte	0x4e0
	.byte	0
	.uleb128 0x30
	.4byte	0x4c8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL51
	.4byte	0xc12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sc_ack_send_task
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL41
	.4byte	0xbda
	.uleb128 0x2b
	.4byte	.LVL42
	.4byte	0xc1e
	.4byte	0xab6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL44
	.4byte	0xbda
	.uleb128 0x2b
	.4byte	.LVL46
	.4byte	0xbe5
	.4byte	0xad2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0xc29
	.4byte	0xaeb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL52
	.4byte	0xbda
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xbe5
	.4byte	0xb22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL54
	.4byte	0xbfb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF133
	.byte	0x1
	.byte	0x9a
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0x139
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x21
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x34
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x228
	.uleb128 0x34
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x34
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x226
	.uleb128 0x34
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x21a
	.uleb128 0x35
	.4byte	.LASF125
	.4byte	.LASF125
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0xd7
	.uleb128 0x36
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x10
	.byte	0x55
	.uleb128 0x34
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x11
	.2byte	0x280
	.uleb128 0x34
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x32b
	.uleb128 0x34
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x122
	.uleb128 0x36
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x6b
	.uleb128 0x36
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x12
	.byte	0x1e
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x13
	.byte	0x5a
	.uleb128 0x34
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x2fb
	.uleb128 0x34
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x151
	.uleb128 0x36
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x13
	.byte	0x65
	.uleb128 0x35
	.4byte	.LASF126
	.4byte	.LASF126
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
	.uleb128 0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19-1
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22-1
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0x1007
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL27-1
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27-1
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"sock_errno"
.LASF124:
	.string	"malloc"
.LASF3:
	.string	"size_t"
.LASF36:
	.string	"sin_addr"
.LASF52:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF133:
	.string	"sc_ack_send_stop"
.LASF110:
	.string	"lwip_setsockopt_r"
.LASF64:
	.string	"smartconfig_status_t"
.LASF120:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF129:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/smartconfig_ack"
.LASF71:
	.string	"type"
.LASF73:
	.string	"sc_ack_t"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"in_addr_t"
.LASF28:
	.string	"addr"
.LASF91:
	.string	"optname"
.LASF117:
	.string	"tcpip_adapter_get_ip_info"
.LASF121:
	.string	"free"
.LASF94:
	.string	"getsockopt"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF62:
	.string	"SC_STATUS_LINK"
.LASF42:
	.string	"socklen_t"
.LASF116:
	.string	"vTaskDelay"
.LASF123:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF26:
	.string	"ip4_addr"
.LASF119:
	.string	"esp_log_write"
.LASF23:
	.string	"TaskHandle_t"
.LASF126:
	.string	"memcpy"
.LASF104:
	.string	"sendlen"
.LASF83:
	.string	"pvTaskCode"
.LASF16:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF47:
	.string	"netmask"
.LASF61:
	.string	"SC_STATUS_GETTING_SSID_PSWD"
.LASF85:
	.string	"usStackDepth"
.LASF8:
	.string	"__uint32_t"
.LASF37:
	.string	"sin_zero"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"s_addr"
.LASF115:
	.string	"esp_wifi_get_mac"
.LASF105:
	.string	"ack_len"
.LASF13:
	.string	"long unsigned int"
.LASF132:
	.string	"sc_ack_send"
.LASF86:
	.string	"pvParameters"
.LASF127:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF101:
	.string	"sin_size"
.LASF90:
	.string	"level"
.LASF79:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF49:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF68:
	.string	"sc_ack_type_t"
.LASF55:
	.string	"ESP_LOG_WARN"
.LASF81:
	.string	"tolen"
.LASF131:
	.string	"_end"
.LASF48:
	.string	"tcpip_adapter_ip_info_t"
.LASF66:
	.string	"SC_ACK_TYPE_ESPTOUCH"
.LASF31:
	.string	"in_port_t"
.LASF114:
	.string	"lwip_htons"
.LASF70:
	.string	"sc_ack"
.LASF103:
	.string	"optval"
.LASF106:
	.string	"packet_count"
.LASF56:
	.string	"ESP_LOG_INFO"
.LASF39:
	.string	"sa_len"
.LASF34:
	.string	"sin_family"
.LASF108:
	.string	"s_sc_ack_send"
.LASF12:
	.string	"sizetype"
.LASF95:
	.string	"sc_ack_send_get_errno"
.LASF82:
	.string	"xTaskCreate"
.LASF22:
	.string	"TickType_t"
.LASF92:
	.string	"opval"
.LASF128:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
.LASF107:
	.string	"param"
.LASF102:
	.string	"send_sock"
.LASF33:
	.string	"sin_len"
.LASF112:
	.string	"lwip_getsockopt_r"
.LASF57:
	.string	"ESP_LOG_DEBUG"
.LASF35:
	.string	"sin_port"
.LASF40:
	.string	"sa_family"
.LASF69:
	.string	"token"
.LASF88:
	.string	"pvCreatedTask"
.LASF75:
	.string	"protocol"
.LASF19:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF97:
	.string	"local_ip"
.LASF45:
	.string	"ESP_IF_ETH"
.LASF6:
	.string	"short int"
.LASF118:
	.string	"esp_log_timestamp"
.LASF54:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"TaskFunction_t"
.LASF50:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF17:
	.string	"uint32_t"
.LASF46:
	.string	"ESP_IF_MAX"
.LASF59:
	.string	"SC_STATUS_WAIT"
.LASF109:
	.string	"lwip_socket"
.LASF14:
	.string	"char"
.LASF58:
	.string	"ESP_LOG_VERBOSE"
.LASF43:
	.string	"ESP_IF_WIFI_STA"
.LASF60:
	.string	"SC_STATUS_FIND_CHANNEL"
.LASF78:
	.string	"dataptr"
.LASF77:
	.string	"sendto"
.LASF7:
	.string	"__uint16_t"
.LASF122:
	.string	"vTaskDelete"
.LASF53:
	.string	"ESP_LOG_NONE"
.LASF67:
	.string	"SC_ACK_TYPE_AIRKISS"
.LASF44:
	.string	"ESP_IF_WIFI_AP"
.LASF93:
	.string	"optlen"
.LASF100:
	.string	"server_addr"
.LASF24:
	.string	"ip4_addr_t"
.LASF30:
	.string	"sa_family_t"
.LASF72:
	.string	"link_flag"
.LASF63:
	.string	"SC_STATUS_LINK_OVER"
.LASF125:
	.string	"memset"
.LASF99:
	.string	"remote_port"
.LASF130:
	.string	"sc_ack_send_task"
.LASF38:
	.string	"sockaddr"
.LASF89:
	.string	"setsockopt"
.LASF32:
	.string	"sockaddr_in"
.LASF15:
	.string	"uint8_t"
.LASF111:
	.string	"lwip_sendto_r"
.LASF65:
	.string	"sc_callback_t"
.LASF80:
	.string	"flags"
.LASF74:
	.string	"domain"
.LASF41:
	.string	"sa_data"
.LASF76:
	.string	"socket"
.LASF51:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF87:
	.string	"uxPriority"
.LASF113:
	.string	"ipaddr_addr"
.LASF84:
	.string	"pcName"
.LASF98:
	.string	"remote_ip"
.LASF21:
	.string	"UBaseType_t"
.LASF27:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
