	.file	"smartconfig_ack.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"smartconfig"
.LC4:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
.LC9:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC0, 18266
	.literal .LC1, 10000
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, 4095
	.literal .LC7, SC_EVENT
	.literal .LC8, 4103
	.literal .LC10, .LC9
	.literal .LC11, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB37:
	.file 1 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 96
.LCFI0:
.LVL1:
	.loc 1 74 0
	addi.n	a4, a2, 11
	l8ui	a5, a2, 11
	l8ui	a3, a4, 1
	s8i	a5, sp, 28
	s8i	a3, sp, 29
	l8ui	a5, a4, 2
	l8ui	a3, a4, 3
	.loc 1 75 0
	l32i.n	a7, a2, 0
	.loc 1 74 0
	s8i	a5, sp, 30
	s8i	a3, sp, 31
	.loc 1 75 0
	l32r	a5, .LC0
	l32r	a3, .LC1
	.loc 1 81 0
	movi.n	a8, 0xb
	.loc 1 86 0
	movi.n	a12, 0x10
	.loc 1 75 0
	moveqz	a3, a5, a7
.LVL2:
	.loc 1 86 0
	movi.n	a11, 0
	.loc 1 79 0
	movi.n	a5, 1
	.loc 1 81 0
	movi.n	a6, 7
	.loc 1 86 0
	mov.n	a10, sp
	.loc 1 81 0
	moveqz	a6, a8, a7
.LVL3:
	.loc 1 79 0
	s32i.n	a5, sp, 40
	.loc 1 86 0
	call8	memset
.LVL4:
	.loc 1 87 0
	movi.n	a7, 2
	.loc 1 88 0
	addi	a10, sp, 28
	.loc 1 87 0
	s8i	a7, sp, 1
	.loc 1 88 0
	call8	ipaddr_addr
.LVL5:
	s32i.n	a10, sp, 4
	.loc 1 89 0
	mov.n	a10, a3
	call8	lwip_htons
.LVL6:
	s16i	a10, sp, 2
	.loc 1 91 0
	addi.n	a11, a2, 5
	movi.n	a10, 0
	call8	esp_wifi_get_mac
.LVL7:
	.loc 1 93 0
	movi	a10, 0xc8
	call8	vTaskDelay
.LVL8:
	.loc 1 78 0
	movi.n	a3, -1
.LVL9:
	.loc 1 95 0
	j	.L4
.LVL10:
.L14:
	.loc 1 97 0
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL11:
	.loc 1 98 0
	bnez.n	a10, .L5
	.loc 1 98 0 is_stmt 0 discriminator 1
	l32i.n	a7, sp, 16
	beqz.n	a7, .L5
	.loc 1 100 0 is_stmt 1
	l32i.n	a3, a2, 0
	bnez.n	a3, .L6
	.loc 1 101 0
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
.LBB18:
.LBB19:
	.file 2 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 656 0
	movi.n	a11, 2
	movi.n	a12, 0
	mov.n	a10, a11
.LVL13:
	call8	lwip_socket
.LVL14:
.LBE19:
.LBE18:
	.loc 1 106 0
	addi	a7, a10, -54
	movi.n	a8, 9
.LBB21:
.LBB20:
	.loc 2 656 0
	mov.n	a3, a10
.LBE20:
.LBE21:
	.loc 1 106 0
	bgeu	a8, a7, .L7
	.loc 1 107 0 discriminator 2
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC3
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL16:
	.loc 1 108 0 discriminator 2
	j	.L8
.L7:
.LVL17:
.LBB22:
.LBB23:
	.loc 2 634 0
	l32r	a11, .LC6
	movi.n	a14, 4
	addi	a13, sp, 40
.LVL18:
	movi.n	a12, 0x24
	call8	lwip_setsockopt
.LVL19:
.LBE23:
.LBE22:
	.loc 1 117 0
	addi.n	a7, a2, 4
	j	.L9
.L12:
	.loc 1 115 0
	movi	a10, 0x64
	call8	vTaskDelay
.LVL20:
.LBB24:
.LBB25:
	.loc 2 654 0
	movi.n	a15, 0x10
	mov.n	a14, sp
.LVL21:
	movi.n	a13, 0
	mov.n	a12, a6
	mov.n	a11, a7
	mov.n	a10, a3
	call8	lwip_sendto
.LVL22:
.LBE25:
.LBE24:
	.loc 1 118 0
	blti	a10, 1, .L10
	.loc 1 120 0
	addi.n	a8, a5, 1
	movi.n	a9, 0x1d
	extui	a8, a8, 0, 8
.LVL23:
	bgeu	a9, a5, .L18
	.loc 1 121 0
	l32r	a4, .LC7
	movi.n	a13, 0
	l32i.n	a10, a4, 0
	movi.n	a14, -1
	mov.n	a12, a13
	movi.n	a11, 3
	call8	esp_event_post
.LVL24:
	.loc 1 122 0
	j	.L8
.LVL25:
.L10:
.LBB26:
.LBB27:
	.loc 1 61 0
	movi.n	a8, 0
.LBB28:
.LBB29:
	.loc 2 636 0
	l32r	a12, .LC8
	l32r	a11, .LC6
.LBE29:
.LBE28:
	.loc 1 61 0
	s32i.n	a8, sp, 36
.LBB33:
.LBB30:
	.loc 2 636 0
	addi	a14, sp, 32
.LBE30:
.LBE33:
	.loc 1 62 0
	movi.n	a8, 4
.LBB34:
.LBB31:
	.loc 2 636 0
	addi	a13, sp, 36
	mov.n	a10, a3
.LBE31:
.LBE34:
	.loc 1 62 0
	s32i.n	a8, sp, 32
.LVL26:
.LBB35:
.LBB32:
	.loc 2 636 0
	call8	lwip_getsockopt
.LVL27:
.LBE32:
.LBE35:
	.loc 1 66 0
	l32i.n	a15, sp, 36
.LBE27:
.LBE26:
	.loc 1 127 0
	addi	a8, a15, -11
	bltui	a8, 2, .L9
	.loc 1 131 0 discriminator 2
	s32i.n	a15, sp, 48
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC3
	l32i.n	a15, sp, 48
	l32r	a12, .LC10
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	.loc 1 132 0 discriminator 2
	j	.L8
.LVL30:
.L18:
	.loc 1 120 0
	mov.n	a5, a8
.LVL31:
.L9:
	.loc 1 113 0
	l32r	a9, .LC11
	l8ui	a8, a9, 0
	bnez.n	a8, .L12
	j	.L4
.LVL32:
.L5:
	.loc 1 137 0
	movi	a10, 0x64
.LVL33:
	call8	vTaskDelay
.LVL34:
.L4:
	.loc 1 95 0
	l32r	a8, .LC11
	l8ui	a7, a8, 0
	bnez.n	a7, .L14
.LVL35:
.L8:
	.loc 1 142 0
	addi	a4, a3, -54
	movi.n	a5, 9
	bltu	a5, a4, .L15
.LBB36:
	.loc 1 143 0
	mov.n	a10, a3
	call8	close
.LVL36:
.L15:
.LBE36:
	.loc 1 145 0
	mov.n	a10, a2
	call8	free
.LVL37:
	.loc 1 146 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL38:
	retw.n
.LFE37:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.1
.LC13:
	.string	"\033[0;31mE (%d) %s: Cellphone IP address is NULL\033[0m\n"
.LC15:
	.string	"\033[0;31mE (%d) %s: ACK parameter malloc fail\033[0m\n"
.LC19:
	.string	"sc_ack_send_task"
.LC23:
	.string	"\033[0;31mE (%d) %s: Create sending smartconfig ACK task fail\033[0m\n"
	.section	.text.sc_send_ack_start,"ax",@progbits
	.literal_position
	.literal .LC12, .LC2
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, s_sc_ack_send
	.literal .LC18, 2048
	.literal .LC20, .LC19
	.literal .LC21, sc_ack_send_task
	.literal .LC22, 2147483647
	.literal .LC24, .LC23
	.align	4
	.global	sc_send_ack_start
	.type	sc_send_ack_start, @function
sc_send_ack_start:
.LFB38:
	.loc 1 150 0
.LVL39:
	entry	sp, 48
.LCFI1:
.LVL40:
	.loc 1 150 0
	extui	a3, a3, 0, 8
	.loc 1 153 0
	bnez.n	a4, .L23
	.loc 1 154 0 discriminator 2
	call8	esp_log_timestamp
.LVL41:
	l32r	a11, .LC12
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL42:
	.loc 1 155 0 discriminator 2
	movi	a2, 0x102
.LVL43:
	retw.n
.LVL44:
.L23:
	.loc 1 158 0
	movi.n	a10, 0x10
	call8	malloc
.LVL45:
	mov.n	a5, a10
.LVL46:
	.loc 1 159 0
	bnez.n	a10, .L25
	.loc 1 160 0 discriminator 2
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC12
	l32r	a12, .LC16
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	j	.L28
.L25:
	.loc 1 165 0
	l8ui	a8, a4, 0
	l8ui	a9, a4, 1
	s8i	a8, a10, 11
	l8ui	a8, a4, 2
	l8ui	a4, a4, 3
.LVL49:
	.loc 1 163 0
	s32i.n	a2, a10, 0
	.loc 1 167 0
	l32r	a2, .LC17
.LVL50:
	.loc 1 165 0
	s8i	a4, a10, 14
	.loc 1 167 0
	movi.n	a4, 1
	s8i	a4, a2, 0
.LVL51:
.LBB39:
.LBB40:
	.file 3 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
	.loc 3 440 0
	l32r	a2, .LC22
.LBE40:
.LBE39:
	.loc 1 164 0
	s8i	a3, a10, 4
	.loc 1 165 0
	s8i	a9, a10, 12
	s8i	a8, a10, 13
.LBB42:
.LBB41:
	.loc 3 440 0
	mov.n	a13, a10
	l32r	a12, .LC18
	l32r	a11, .LC20
	l32r	a10, .LC21
	s32i.n	a2, sp, 0
.LVL52:
	movi.n	a15, 0
	movi.n	a14, 2
	call8	xTaskCreatePinnedToCore
.LVL53:
.LBE41:
.LBE42:
	.loc 1 175 0
	movi.n	a2, 0
	.loc 1 169 0
	beqi	a10, 1, .L24
	.loc 1 170 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC12
	l32r	a12, .LC24
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 171 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL56:
.L28:
	.loc 1 172 0 discriminator 2
	movi	a2, 0x101
.L24:
	.loc 1 176 0
	retw.n
.LFE38:
	.size	sc_send_ack_start, .-sc_send_ack_start
	.section	.text.sc_send_ack_stop,"ax",@progbits
	.literal_position
	.literal .LC25, s_sc_ack_send
	.align	4
	.global	sc_send_ack_stop
	.type	sc_send_ack_stop, @function
sc_send_ack_stop:
.LFB39:
	.loc 1 179 0
	entry	sp, 32
.LCFI2:
	.loc 1 180 0
	l32r	a8, .LC25
	movi.n	a9, 0
	s8i	a9, a8, 0
	retw.n
.LFE39:
	.size	sc_send_ack_stop, .-sc_send_ack_stop
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI0-.LFB37
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI1-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI2-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 8 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 9 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 11 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_base.h"
	.file 13 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_interface.h"
	.file 15 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 16 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
	.file 17 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 18 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
	.file 19 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
	.file 20 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xca7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xc
	.4byte	.LASF129
	.4byte	.LASF130
	.4byte	.Ldebug_ranges0+0x58
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xff
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x106
	.uleb128 0xb
	.4byte	0x111
	.uleb128 0xc
	.4byte	0xa2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4d
	.4byte	0x100
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x9
	.byte	0x76
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0x77
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0x7d
	.4byte	0xee
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x6e
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.4byte	0x178
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0xa
	.byte	0x34
	.4byte	0xee
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0xa
	.byte	0x39
	.4byte	0x15f
	.uleb128 0x8
	.4byte	0xcd
	.4byte	0x193
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xb
	.byte	0x37
	.4byte	0xee
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0xb
	.byte	0x3a
	.4byte	0x1b7
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0xb
	.byte	0x3b
	.4byte	0x193
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.byte	0x3d
	.4byte	0xcd
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.byte	0x42
	.4byte	0xd8
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x10
	.byte	0x2
	.byte	0x47
	.4byte	0x216
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x2
	.byte	0x48
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0x49
	.4byte	0x1b7
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x2
	.byte	0x4a
	.4byte	0x1c2
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x2
	.byte	0x4b
	.4byte	0x19e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x2
	.byte	0x4d
	.4byte	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x10
	.byte	0x2
	.byte	0x5c
	.4byte	0x247
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x2
	.byte	0x5d
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x2
	.byte	0x5e
	.4byte	0x1b7
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x2
	.byte	0x5f
	.4byte	0x247
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x257
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x2
	.byte	0x6f
	.4byte	0xee
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x19
	.4byte	0x287
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1b
	.4byte	0xb2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x8
	.4byte	0xcd
	.4byte	0x2a8
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xd
	.byte	0x35
	.4byte	0x2d3
	.uleb128 0x12
	.string	"ip"
	.byte	0xd
	.byte	0x36
	.4byte	0x178
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0xd
	.byte	0x37
	.4byte	0x178
	.byte	0x4
	.uleb128 0x12
	.string	"gw"
	.byte	0xd
	.byte	0x38
	.4byte	0x178
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xd
	.byte	0x39
	.4byte	0x2a8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x5f
	.4byte	0x309
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
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x1f
	.4byte	0x33a
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.byte	0x1b
	.4byte	0x359
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x10
	.byte	0x1f
	.4byte	0x33a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.byte	0x22
	.4byte	0x389
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0xb
	.byte	0x1
	.byte	0x2f
	.4byte	0x3b5
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0x30
	.4byte	0xcd
	.byte	0
	.uleb128 0x12
	.string	"mac"
	.byte	0x1
	.byte	0x31
	.4byte	0x183
	.byte	0x1
	.uleb128 0x12
	.string	"ip"
	.byte	0x1
	.byte	0x32
	.4byte	0x298
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x10
	.byte	0x1
	.byte	0x2d
	.4byte	0x3da
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x1
	.byte	0x2e
	.4byte	0x359
	.byte	0
	.uleb128 0x12
	.string	"ctx"
	.byte	0x1
	.byte	0x33
	.4byte	0x389
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x1
	.byte	0x34
	.4byte	0x3b5
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x28f
	.4byte	0x25
	.byte	0x3
	.4byte	0x41b
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x28f
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x28f
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x28f
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x28d
	.4byte	0x25
	.byte	0x3
	.4byte	0x472
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x28d
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x28d
	.4byte	0xf9
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x28d
	.4byte	0x2c
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x28d
	.4byte	0x25
	.uleb128 0x15
	.string	"to"
	.byte	0x2
	.2byte	0x28d
	.4byte	0x472
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x28d
	.4byte	0x257
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x478
	.uleb128 0x7
	.4byte	0x216
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x12e
	.byte	0x3
	.4byte	0x4d7
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x111
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x15a
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x1b3
	.4byte	0x4d7
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x4dc
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x139
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x1b6
	.4byte	0x4e7
	.byte	0
	.uleb128 0x7
	.4byte	0xee
	.uleb128 0x7
	.4byte	0xa2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x7
	.4byte	0x4e1
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x279
	.4byte	0x25
	.byte	0x3
	.4byte	0x538
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x279
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x279
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x279
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x279
	.4byte	0xf9
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x279
	.4byte	0x257
	.byte	0
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x27b
	.4byte	0x25
	.byte	0x3
	.4byte	0x584
	.uleb128 0x15
	.string	"s"
	.byte	0x2
	.2byte	0x27b
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x27b
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x27b
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x27b
	.4byte	0xa2
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x27b
	.4byte	0x584
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x257
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.byte	0x1
	.4byte	0x5bb
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3d
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3e
	.4byte	0xee
	.byte	0
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x1
	.byte	0x45
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f8
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0x45
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"ack"
	.byte	0x1
	.byte	0x47
	.4byte	0x9f8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0x48
	.4byte	0x2d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.byte	0x49
	.4byte	0x298
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4c
	.4byte	0x1cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4d
	.4byte	0x257
	.byte	0x10
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x4e
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x4f
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.byte	0x50
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF107
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x52
	.4byte	0xcd
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x8d
	.4byte	.L8
	.uleb128 0x22
	.4byte	0x3e5
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x69
	.4byte	0x6e3
	.uleb128 0x23
	.4byte	0x40e
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	0x402
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	0x3f6
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xbdd
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
	.4byte	0x4ec
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x6f
	.4byte	0x74c
	.uleb128 0x23
	.4byte	0x507
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	0x513
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	0x52b
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	0x51f
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	0x4fd
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LVL19
	.4byte	0xbe9
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
	.4byte	0x41b
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x75
	.4byte	0x7bf
	.uleb128 0x23
	.4byte	0x465
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	0x45a
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	0x44e
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	0x442
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	0x436
	.uleb128 0x23
	.4byte	0x42c
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xbf5
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
	.4byte	0x58a
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x7e
	.4byte	0x85d
	.uleb128 0x23
	.4byte	0x59a
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x29
	.4byte	0x5a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	0x5af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	0x538
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x40
	.uleb128 0x23
	.4byte	0x553
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	0x55f
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	0x577
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	0x56b
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	0x549
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0xc01
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
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0x88c
	.uleb128 0x2c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	0x87b
	.uleb128 0x2d
	.byte	0
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0xc0d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL4
	.4byte	0xc18
	.4byte	0x8ab
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
	.uleb128 0x2e
	.4byte	.LVL5
	.4byte	0xc21
	.4byte	0x8c0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL6
	.4byte	0xc2c
	.4byte	0x8d4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL7
	.4byte	0xc37
	.4byte	0x8ed
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
	.sleb128 5
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL8
	.4byte	0xc43
	.4byte	0x901
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL11
	.4byte	0xc4f
	.4byte	0x91b
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
	.uleb128 0x2f
	.4byte	.LVL15
	.4byte	0xc5b
	.uleb128 0x2e
	.4byte	.LVL16
	.4byte	0xc66
	.4byte	0x952
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
	.uleb128 0x2e
	.4byte	.LVL20
	.4byte	0xc43
	.4byte	0x966
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL24
	.4byte	0xc71
	.4byte	0x989
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL28
	.4byte	0xc5b
	.uleb128 0x2e
	.4byte	.LVL29
	.4byte	0xc66
	.4byte	0x9c0
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
	.4byte	.LC9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL34
	.4byte	0xc43
	.4byte	0x9d4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0xc7c
	.4byte	0x9e8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0xc87
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3da
	.uleb128 0x30
	.4byte	.LASF133
	.byte	0x1
	.byte	0x95
	.4byte	0x11c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9e
	.uleb128 0x31
	.4byte	.LASF74
	.byte	0x1
	.byte	0x95
	.4byte	0x359
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x95
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x1
	.byte	0x95
	.4byte	0x292
	.4byte	.LLST24
	.uleb128 0x20
	.string	"ack"
	.byte	0x1
	.byte	0x97
	.4byte	0x9f8
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	0x47d
	.4byte	.LBB39
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xa9
	.4byte	0xad5
	.uleb128 0x23
	.4byte	0x48e
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	0x49a
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	0x4a6
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	0x4be
	.4byte	.LLST29
	.uleb128 0x23
	.4byte	0x4ca
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	0x4b2
	.4byte	.LLST31
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0xc93
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
	.4byte	.LC19
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
	.byte	0x75
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
	.uleb128 0x2f
	.4byte	.LVL41
	.4byte	0xc5b
	.uleb128 0x2e
	.4byte	.LVL42
	.4byte	0xc66
	.4byte	0xb0c
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
	.4byte	.LC13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL45
	.4byte	0xc9f
	.4byte	0xb1f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL47
	.4byte	0xc5b
	.uleb128 0x2e
	.4byte	.LVL48
	.4byte	0xc66
	.4byte	0xb56
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
	.4byte	.LC15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL54
	.4byte	0xc5b
	.uleb128 0x2e
	.4byte	.LVL55
	.4byte	0xc66
	.4byte	0xb8d
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
	.4byte	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL56
	.4byte	0xc7c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF134
	.byte	0x1
	.byte	0xb2
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x36
	.4byte	0x15a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.byte	0x39
	.4byte	0x127
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x33
	.4byte	.LASF135
	.byte	0x10
	.byte	0x2a
	.4byte	0x287
	.uleb128 0x34
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x25c
	.uleb128 0x34
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x24e
	.uleb128 0x34
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x25a
	.uleb128 0x34
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x24d
	.uleb128 0x35
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x1
	.byte	0x8f
	.uleb128 0x36
	.4byte	.LASF136
	.4byte	.LASF136
	.uleb128 0x35
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xa
	.byte	0xcc
	.uleb128 0x35
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x11
	.byte	0x60
	.uleb128 0x34
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x12
	.2byte	0x287
	.uleb128 0x34
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x32b
	.uleb128 0x34
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.2byte	0x12e
	.uleb128 0x35
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xf
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xf
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x13
	.byte	0xee
	.uleb128 0x35
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x14
	.byte	0x5a
	.uleb128 0x34
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x2fb
	.uleb128 0x34
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x151
	.uleb128 0x35
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x14
	.byte	0x65
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.4byte	.LFE37
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
	.4byte	.LVL24-1
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL52
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x3
	.4byte	sc_ack_send_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x3
	.4byte	.LC19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
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
.LASF98:
	.string	"sock_errno"
.LASF127:
	.string	"malloc"
.LASF3:
	.string	"size_t"
.LASF39:
	.string	"sin_addr"
.LASF57:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF129:
	.string	"/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
.LASF70:
	.string	"SC_EVENT_GOT_SSID_PSWD"
.LASF115:
	.string	"close"
.LASF21:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF74:
	.string	"type"
.LASF75:
	.string	"sc_ack_t"
.LASF11:
	.string	"long long unsigned int"
.LASF28:
	.string	"in_addr_t"
.LASF31:
	.string	"addr"
.LASF93:
	.string	"optname"
.LASF120:
	.string	"tcpip_adapter_get_ip_info"
.LASF124:
	.string	"free"
.LASF69:
	.string	"SC_EVENT_FOUND_CHANNEL"
.LASF96:
	.string	"getsockopt"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF45:
	.string	"socklen_t"
.LASF119:
	.string	"vTaskDelay"
.LASF130:
	.string	"/home/dieter/Development/ProjektEi/build/smartconfig_ack"
.LASF126:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF109:
	.string	"cellphone_ip"
.LASF29:
	.string	"ip4_addr"
.LASF122:
	.string	"esp_log_write"
.LASF26:
	.string	"TaskHandle_t"
.LASF106:
	.string	"sendlen"
.LASF85:
	.string	"pvTaskCode"
.LASF17:
	.string	"uint16_t"
.LASF23:
	.string	"BaseType_t"
.LASF51:
	.string	"netmask"
.LASF87:
	.string	"usStackDepth"
.LASF9:
	.string	"__uint32_t"
.LASF50:
	.string	"esp_event_base_t"
.LASF40:
	.string	"sin_zero"
.LASF66:
	.string	"SC_TYPE_ESPTOUCH_AIRKISS"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"s_addr"
.LASF114:
	.string	"lwip_getsockopt"
.LASF118:
	.string	"esp_wifi_get_mac"
.LASF107:
	.string	"ack_len"
.LASF14:
	.string	"long unsigned int"
.LASF88:
	.string	"pvParameters"
.LASF128:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF103:
	.string	"sin_size"
.LASF92:
	.string	"level"
.LASF81:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF53:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF60:
	.string	"ESP_LOG_WARN"
.LASF134:
	.string	"sc_send_ack_stop"
.LASF83:
	.string	"tolen"
.LASF132:
	.string	"_end"
.LASF52:
	.string	"tcpip_adapter_ip_info_t"
.LASF34:
	.string	"in_port_t"
.LASF117:
	.string	"lwip_htons"
.LASF73:
	.string	"sc_ack"
.LASF105:
	.string	"optval"
.LASF108:
	.string	"packet_count"
.LASF61:
	.string	"ESP_LOG_INFO"
.LASF42:
	.string	"sa_len"
.LASF37:
	.string	"sin_family"
.LASF113:
	.string	"lwip_sendto"
.LASF13:
	.string	"sizetype"
.LASF97:
	.string	"sc_ack_send_get_errno"
.LASF84:
	.string	"xTaskCreate"
.LASF25:
	.string	"TickType_t"
.LASF94:
	.string	"opval"
.LASF68:
	.string	"SC_EVENT_SCAN_DONE"
.LASF104:
	.string	"send_sock"
.LASF65:
	.string	"SC_TYPE_AIRKISS"
.LASF36:
	.string	"sin_len"
.LASF110:
	.string	"s_sc_ack_send"
.LASF64:
	.string	"SC_TYPE_ESPTOUCH"
.LASF62:
	.string	"ESP_LOG_DEBUG"
.LASF38:
	.string	"sin_port"
.LASF43:
	.string	"sa_family"
.LASF72:
	.string	"token"
.LASF90:
	.string	"pvCreatedTask"
.LASF77:
	.string	"protocol"
.LASF22:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF99:
	.string	"local_ip"
.LASF48:
	.string	"ESP_IF_ETH"
.LASF6:
	.string	"short int"
.LASF121:
	.string	"esp_log_timestamp"
.LASF59:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"TaskFunction_t"
.LASF54:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF19:
	.string	"uint32_t"
.LASF101:
	.string	"remote_port"
.LASF49:
	.string	"ESP_IF_MAX"
.LASF112:
	.string	"lwip_setsockopt"
.LASF111:
	.string	"lwip_socket"
.LASF15:
	.string	"char"
.LASF63:
	.string	"ESP_LOG_VERBOSE"
.LASF46:
	.string	"ESP_IF_WIFI_STA"
.LASF80:
	.string	"dataptr"
.LASF79:
	.string	"sendto"
.LASF7:
	.string	"__uint16_t"
.LASF125:
	.string	"vTaskDelete"
.LASF58:
	.string	"ESP_LOG_NONE"
.LASF56:
	.string	"TCPIP_ADAPTER_IF_TEST"
.LASF8:
	.string	"__int32_t"
.LASF47:
	.string	"ESP_IF_WIFI_AP"
.LASF95:
	.string	"optlen"
.LASF102:
	.string	"server_addr"
.LASF27:
	.string	"ip4_addr_t"
.LASF71:
	.string	"SC_EVENT_SEND_ACK_DONE"
.LASF33:
	.string	"sa_family_t"
.LASF136:
	.string	"memset"
.LASF135:
	.string	"SC_EVENT"
.LASF133:
	.string	"sc_send_ack_start"
.LASF123:
	.string	"esp_event_post"
.LASF131:
	.string	"sc_ack_send_task"
.LASF41:
	.string	"sockaddr"
.LASF91:
	.string	"setsockopt"
.LASF35:
	.string	"sockaddr_in"
.LASF67:
	.string	"smartconfig_type_t"
.LASF16:
	.string	"uint8_t"
.LASF82:
	.string	"flags"
.LASF76:
	.string	"domain"
.LASF44:
	.string	"sa_data"
.LASF78:
	.string	"socket"
.LASF55:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF89:
	.string	"uxPriority"
.LASF116:
	.string	"ipaddr_addr"
.LASF86:
	.string	"pcName"
.LASF100:
	.string	"remote_ip"
.LASF24:
	.string	"UBaseType_t"
.LASF30:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
