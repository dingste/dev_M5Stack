	.file	"smartconfig_ack.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"smartconfig"
.LC5:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	1
	.word	500000
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC1, 18266
	.literal .LC2, 10000
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, 4095
	.literal .LC8, .LC0
	.literal .LC9, 10001
	.literal .LC10, 4102
	.literal .LC11, 4103
	.literal .LC13, .LC12
	.literal .LC14, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB48:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
	.loc 1 46 0
.LVL0:
	entry	sp, 144
.LCFI0:
.LVL1:
	.loc 1 50 0
	addi	a4, a2, 19
	l8ui	a5, a2, 19
	l8ui	a3, a4, 1
	s8i	a5, sp, 68
	s8i	a3, sp, 69
	l8ui	a5, a4, 2
	l8ui	a3, a4, 3
	.loc 1 51 0
	l32i.n	a7, a2, 0
	.loc 1 50 0
	s8i	a5, sp, 70
	s8i	a3, sp, 71
	.loc 1 51 0
	l32r	a5, .LC1
	l32r	a3, .LC2
	.loc 1 57 0
	movi.n	a8, 0xb
	movi.n	a6, 7
	moveqz	a6, a8, a7
	.loc 1 51 0
	moveqz	a3, a5, a7
.LVL2:
	.loc 1 62 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	.loc 1 63 0
	movi.n	a7, 2
	.loc 1 55 0
	movi.n	a5, 1
	.loc 1 62 0
	addi	a10, sp, 32
	.loc 1 55 0
	s32i	a5, sp, 76
	.loc 1 62 0
	call8	memset
.LVL3:
	.loc 1 63 0
	s8i	a7, sp, 33
	.loc 1 64 0
	l32i	a7, sp, 68
	.loc 1 65 0
	mov.n	a10, a3
	.loc 1 64 0
	s32i.n	a7, sp, 36
	.loc 1 65 0
	call8	lwip_htons
.LVL4:
	s16i	a10, sp, 34
	.loc 1 67 0
	addi.n	a11, a2, 13
	movi.n	a10, 0
	call8	esp_wifi_get_mac
.LVL5:
	.loc 1 69 0
	movi.n	a10, 0x14
	call8	vTaskDelay
.LVL6:
	.loc 1 54 0
	movi.n	a3, -1
.LVL7:
	.loc 1 71 0
	j	.L4
.LVL8:
.L17:
	.loc 1 73 0
	addi	a11, sp, 48
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL9:
	.loc 1 74 0
	bnez.n	a10, .L5
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32i.n	a7, sp, 48
	beqz.n	a7, .L5
	.loc 1 76 0 is_stmt 1
	l32i.n	a3, a2, 0
	bnez.n	a3, .L6
	.loc 1 77 0
	l8ui	a7, sp, 48
	l8ui	a3, sp, 49
	s8i	a7, a4, 0
	s8i	a3, a4, 1
	l8ui	a7, sp, 50
	l8ui	a3, sp, 51
	s8i	a7, a4, 2
	s8i	a3, a4, 3
.L6:
.LVL10:
.LBB24:
.LBB25:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 593 0
	movi.n	a11, 2
	movi.n	a12, 0
	mov.n	a10, a11
.LVL11:
	call8	lwip_socket
.LVL12:
.LBE25:
.LBE24:
	.loc 1 82 0
	addi	a7, a10, -54
	movi.n	a8, 9
.LBB27:
.LBB26:
	.loc 2 593 0
	mov.n	a3, a10
.LBE26:
.LBE27:
	.loc 1 82 0
	bgeu	a8, a7, .L7
	.loc 1 83 0 discriminator 2
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC4
	l32r	a12, .LC6
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 84 0 discriminator 2
	j	.L8
.L7:
.LVL15:
.LBB28:
.LBB29:
	.loc 2 571 0
	l32r	a11, .LC7
	movi.n	a14, 4
	addi	a13, sp, 76
.LVL16:
	movi.n	a12, 0x24
	call8	lwip_setsockopt_r
.LVL17:
.LBE29:
.LBE28:
	.loc 1 89 0
	l32i.n	a7, a2, 0
	bnei	a7, 1, .L9
.LBB30:
	.loc 1 93 0
	l32r	a10, .LC8
	.loc 1 90 0
	movi.n	a8, 0
	.loc 1 93 0
	l32i.n	a11, a10, 0
	l32i.n	a10, a10, 4
	.loc 1 90 0
	s8i	a8, sp, 80
	.loc 1 92 0
	movi.n	a8, 0x10
	.loc 1 98 0
	mov.n	a12, a8
	.loc 1 93 0
	s32i.n	a11, sp, 60
	s32i	a10, sp, 64
	.loc 1 98 0
	movi.n	a11, 0
	add.n	a10, sp, a8
	.loc 1 92 0
	s32i	a8, sp, 72
	.loc 1 98 0
	s32i	a8, sp, 96
	call8	memset
.LVL18:
	.loc 1 99 0
	l32i	a8, sp, 96
	movi.n	a11, 0
	mov.n	a12, a8
	mov.n	a10, sp
	call8	memset
.LVL19:
	.loc 1 102 0
	l32r	a10, .LC9
	.loc 1 100 0
	movi.n	a8, 2
	s8i	a8, sp, 17
	.loc 1 102 0
	call8	lwip_htons
.LVL20:
.LBB31:
.LBB32:
	.loc 2 563 0
	l32i	a12, sp, 72
.LBE32:
.LBE31:
	.loc 1 102 0
	s16i	a10, sp, 18
.LVL21:
.LBB34:
.LBB33:
	.loc 2 563 0
	addi	a11, sp, 16
.LVL22:
	mov.n	a10, a3
	call8	lwip_bind_r
.LVL23:
.LBE33:
.LBE34:
.LBB35:
.LBB36:
	.loc 2 571 0
	l32r	a12, .LC10
	l32r	a11, .LC7
	movi.n	a14, 8
	addi	a13, sp, 60
.LVL24:
	mov.n	a10, a3
	call8	lwip_setsockopt_r
.LVL25:
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	.loc 2 585 0
	mov.n	a12, a7
	addi	a15, sp, 72
.LVL26:
	mov.n	a14, sp
.LVL27:
	movi.n	a13, 0
	addi	a11, sp, 80
.LVL28:
	mov.n	a10, a3
	call8	lwip_recvfrom_r
.LVL29:
.LBE38:
.LBE37:
	.loc 1 108 0
	l32i.n	a7, sp, 4
	beqz.n	a7, .L8
	.loc 1 109 0
	s32i	a7, sp, 68
	.loc 1 110 0
	s32i.n	a7, sp, 36
.LVL30:
.L9:
.LBE30:
	.loc 1 120 0
	addi.n	a7, a2, 12
	j	.L11
.L15:
	.loc 1 118 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL31:
.LBB39:
.LBB40:
	.loc 2 591 0
	movi.n	a15, 0x10
	addi	a14, sp, 32
.LVL32:
	movi.n	a13, 0
	mov.n	a12, a6
	mov.n	a11, a7
	mov.n	a10, a3
	call8	lwip_sendto_r
.LVL33:
.LBE40:
.LBE39:
	.loc 1 121 0
	blti	a10, 1, .L12
	.loc 1 123 0
	addi.n	a8, a5, 1
	movi.n	a9, 0x1d
	extui	a8, a8, 0, 8
.LVL34:
	bgeu	a9, a5, .L21
	.loc 1 124 0
	l32i.n	a4, a2, 4
	beqz.n	a4, .L14
	.loc 1 125 0
	movi.n	a5, 1
	s8i	a5, a4, 0
.L14:
	.loc 1 127 0
	l32i.n	a4, a2, 8
	beqz.n	a4, .L8
	.loc 1 128 0
	addi	a11, sp, 68
	movi.n	a10, 4
	callx8	a4
.LVL35:
	j	.L8
.LVL36:
.L12:
.LBB41:
.LBB42:
	.loc 1 37 0
	movi.n	a8, 0
.LBB43:
.LBB44:
	.loc 2 573 0
	l32r	a12, .LC11
	l32r	a11, .LC7
.LBE44:
.LBE43:
	.loc 1 37 0
	s32i.n	a8, sp, 16
.LBB48:
.LBB45:
	.loc 2 573 0
	mov.n	a14, sp
.LBE45:
.LBE48:
	.loc 1 38 0
	movi.n	a8, 4
.LBB49:
.LBB46:
	.loc 2 573 0
	addi	a13, sp, 16
	mov.n	a10, a3
.LBE46:
.LBE49:
	.loc 1 38 0
	s32i.n	a8, sp, 0
.LVL37:
.LBB50:
.LBB47:
	.loc 2 573 0
	call8	lwip_getsockopt_r
.LVL38:
.LBE47:
.LBE50:
	.loc 1 42 0
	l32i.n	a15, sp, 16
.LBE42:
.LBE41:
	.loc 1 135 0
	addi	a8, a15, -11
	bltui	a8, 2, .L11
	.loc 1 139 0 discriminator 2
	s32i	a15, sp, 96
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC4
	l32i	a15, sp, 96
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL40:
	.loc 1 140 0 discriminator 2
	j	.L8
.LVL41:
.L21:
	.loc 1 123 0
	mov.n	a5, a8
.LVL42:
.L11:
	.loc 1 116 0
	l32r	a9, .LC14
	l8ui	a8, a9, 0
	bnez.n	a8, .L15
	j	.L4
.LVL43:
.L5:
	.loc 1 145 0
	movi.n	a10, 0xa
.LVL44:
	call8	vTaskDelay
.LVL45:
.L4:
	.loc 1 71 0
	l32r	a8, .LC14
	l8ui	a7, a8, 0
	bnez.n	a7, .L17
.LVL46:
.L8:
	.loc 1 150 0
	addi	a4, a3, -54
	movi.n	a5, 9
	bltu	a5, a4, .L18
	.loc 1 151 0
	mov.n	a10, a3
	call8	close
.LVL47:
.L18:
	.loc 1 153 0
	mov.n	a10, a2
	call8	free
.LVL48:
	.loc 1 154 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL49:
	retw.n
.LFE48:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.1
.LC16:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter error\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter malloc fail\033[0m\n"
.LC22:
	.string	"sc_ack_send_task"
.LC26:
	.string	"\033[0;31mE (%d) %s: Create sending smartconfig ACK task fail\033[0m\n"
	.section	.text.sc_ack_send,"ax",@progbits
	.literal_position
	.literal .LC15, .LC3
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, s_sc_ack_send
	.literal .LC21, 2048
	.literal .LC23, .LC22
	.literal .LC24, sc_ack_send_task
	.literal .LC25, 2147483647
	.literal .LC27, .LC26
	.align	4
	.global	sc_ack_send
	.type	sc_ack_send, @function
sc_ack_send:
.LFB49:
	.loc 1 158 0
.LVL50:
	entry	sp, 48
.LCFI1:
.LVL51:
	.loc 1 161 0
	bnez.n	a2, .L35
	.loc 1 162 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC17
	j	.L41
.L35:
	.loc 1 166 0
	movi.n	a10, 0x18
	call8	malloc
.LVL53:
	mov.n	a3, a10
.LVL54:
	.loc 1 167 0
	bnez.n	a10, .L37
	.loc 1 168 0 discriminator 2
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC15
	l32r	a12, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
.LVL56:
.L41:
	movi.n	a10, 1
	call8	esp_log_write
.LVL57:
	.loc 1 169 0 discriminator 2
	retw.n
.LVL58:
.L37:
	.loc 1 171 0
	mov.n	a11, a2
	movi.n	a12, 0x18
	call8	memcpy
.LVL59:
	.loc 1 173 0
	l32r	a2, .LC20
.LVL60:
	movi.n	a8, 1
	s8i	a8, a2, 0
.LVL61:
.LBB53:
.LBB54:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 3 440 0
	l32r	a2, .LC25
	l32r	a12, .LC21
	l32r	a11, .LC23
	l32r	a10, .LC24
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a3
	call8	xTaskCreatePinnedToCore
.LVL62:
.LBE54:
.LBE53:
	.loc 1 175 0
	beqi	a10, 1, .L34
	.loc 1 176 0 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC15
	l32r	a12, .LC27
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
	.loc 1 177 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL65:
.L34:
	retw.n
.LFE49:
	.size	sc_ack_send, .-sc_ack_send
	.section	.text.sc_ack_send_stop,"ax",@progbits
	.literal_position
	.literal .LC28, s_sc_ack_send
	.align	4
	.global	sc_ack_send_stop
	.type	sc_ack_send_stop, @function
sc_ack_send_stop:
.LFB50:
	.loc 1 182 0
	entry	sp, 32
.LCFI2:
	.loc 1 183 0
	l32r	a8, .LC28
	movi.n	a9, 0
	s8i	a9, a8, 0
	retw.n
.LFE50:
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
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI0-.LFB48
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI1-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI2-.LFB50
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
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_interface.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_smartconfig.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/include/smartconfig_ack.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_wifi.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/unistd.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xec7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
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
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x8
	.byte	0x7a
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x8
	.2byte	0x11d
	.4byte	0x89
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x9
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x9
	.byte	0x70
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0x76
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x8
	.byte	0xa
	.byte	0x11
	.4byte	0x17a
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0xa
	.byte	0x12
	.4byte	0x106
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0xa
	.byte	0x13
	.4byte	0x111
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.4byte	0x193
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0xb
	.byte	0x34
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xb
	.byte	0x39
	.4byte	0x17a
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xc
	.byte	0x37
	.4byte	0xd8
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc
	.byte	0x3a
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0xc
	.byte	0x3b
	.4byte	0x19e
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2
	.byte	0x3a
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.byte	0x3f
	.4byte	0xcd
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x221
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x2
	.byte	0x45
	.4byte	0xc2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x2
	.byte	0x46
	.4byte	0x1c2
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x2
	.byte	0x47
	.4byte	0x1cd
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x2
	.byte	0x48
	.4byte	0x1a9
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x2
	.byte	0x4a
	.4byte	0xb2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x2
	.byte	0x5a
	.4byte	0xc2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.byte	0x5b
	.4byte	0x1c2
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x2
	.byte	0x5c
	.4byte	0x252
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x262
	.uleb128 0x9
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x2
	.byte	0x6c
	.4byte	0xd8
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x19
	.4byte	0x292
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x2a8
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0xd
	.byte	0x35
	.4byte	0x2e3
	.uleb128 0x13
	.string	"ip"
	.byte	0xd
	.byte	0x36
	.4byte	0x193
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0xd
	.byte	0x37
	.4byte	0x193
	.byte	0x4
	.uleb128 0x13
	.string	"gw"
	.byte	0xd
	.byte	0x38
	.4byte	0x193
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xd
	.byte	0x39
	.4byte	0x2b8
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x5f
	.4byte	0x313
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x1f
	.4byte	0x344
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.byte	0x1a
	.4byte	0x36f
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x10
	.byte	0x20
	.4byte	0x344
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x10
	.byte	0x33
	.4byte	0x385
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38b
	.uleb128 0xb
	.4byte	0x39b
	.uleb128 0xc
	.4byte	0x36f
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.byte	0x26
	.4byte	0x3b4
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x11
	.byte	0x29
	.4byte	0x39b
	.uleb128 0x12
	.byte	0xb
	.byte	0x11
	.byte	0x32
	.4byte	0x3eb
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x11
	.byte	0x33
	.4byte	0xc2
	.byte	0
	.uleb128 0x13
	.string	"mac"
	.byte	0x11
	.byte	0x34
	.4byte	0x298
	.byte	0x1
	.uleb128 0x13
	.string	"ip"
	.byte	0x11
	.byte	0x35
	.4byte	0x2a8
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x18
	.byte	0x11
	.byte	0x2e
	.4byte	0x427
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x11
	.byte	0x2f
	.4byte	0x3b4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x11
	.byte	0x30
	.4byte	0x292
	.byte	0x4
	.uleb128 0x13
	.string	"cb"
	.byte	0x11
	.byte	0x31
	.4byte	0x37a
	.byte	0x8
	.uleb128 0x13
	.string	"ctx"
	.byte	0x11
	.byte	0x36
	.4byte	0x3bf
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x11
	.byte	0x37
	.4byte	0x3eb
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0x3
	.4byte	0x468
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0x3
	.4byte	0x4bf
	.uleb128 0x16
	.string	"s"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x24e
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x24e
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x16
	.string	"to"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x4bf
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x24e
	.4byte	0x262
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c5
	.uleb128 0x7
	.4byte	0x221
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x124
	.byte	0x3
	.4byte	0x524
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x1b1
	.4byte	0xfb
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x150
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x1b3
	.4byte	0x524
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x529
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x12f
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x1b6
	.4byte	0x534
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0x6
	.byte	0x4
	.4byte	0x145
	.uleb128 0x7
	.4byte	0x52e
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.byte	0x3
	.4byte	0x585
	.uleb128 0x16
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x23a
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x23a
	.4byte	0x262
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.byte	0x3
	.4byte	0x5d1
	.uleb128 0x16
	.string	"s"
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x23c
	.4byte	0x97
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x23c
	.4byte	0x5d1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x262
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.byte	0x3
	.4byte	0x62f
	.uleb128 0x16
	.string	"s"
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.uleb128 0x16
	.string	"mem"
	.byte	0x2
	.2byte	0x248
	.4byte	0x97
	.uleb128 0x16
	.string	"len"
	.byte	0x2
	.2byte	0x248
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x248
	.4byte	0x62f
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x248
	.4byte	0x5d1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x221
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x232
	.4byte	0x25
	.byte	0x3
	.4byte	0x669
	.uleb128 0x16
	.string	"s"
	.byte	0x2
	.2byte	0x232
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x232
	.4byte	0x4bf
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x232
	.4byte	0x262
	.byte	0
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.byte	0x1
	.4byte	0x69a
	.uleb128 0x18
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x1
	.byte	0x26
	.4byte	0xd8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6c
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"ack"
	.byte	0x1
	.byte	0x2f
	.4byte	0xc6c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x30
	.4byte	0x2e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.byte	0x31
	.4byte	0x2a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x34
	.4byte	0x1d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0x35
	.4byte	0x262
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3a
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF147
	.byte	0x1
	.byte	0x95
	.4byte	.L8
	.uleb128 0x23
	.4byte	0x432
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x51
	.4byte	0x7c3
	.uleb128 0x24
	.4byte	0x45b
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	0x44f
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	0x443
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0xdf2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x539
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x57
	.4byte	0x82d
	.uleb128 0x24
	.4byte	0x554
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	0x578
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	0x56c
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	0x560
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	0x54a
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	.LVL17
	.4byte	0xdfe
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x9f9
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5a
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.byte	0x5b
	.4byte	0x1d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0x1
	.byte	0x5b
	.4byte	0x1d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0x5c
	.4byte	0x262
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.byte	0x5d
	.4byte	0x155
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.4byte	0x635
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x68
	.4byte	0x8ca
	.uleb128 0x24
	.4byte	0x65c
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	0x650
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	0x646
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LVL23
	.4byte	0xe0a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x539
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0x69
	.4byte	0x935
	.uleb128 0x24
	.4byte	0x554
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	0x578
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	0x56c
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	0x560
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	0x54a
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0xdfe
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1006
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x5d7
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0x6b
	.4byte	0x9ae
	.uleb128 0x24
	.4byte	0x5fe
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	0x60a
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	0x622
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	0x616
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	0x5f2
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	0x5e8
	.4byte	.LLST25
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0xe16
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0xe22
	.4byte	0x9cd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0xe22
	.4byte	0x9e7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0xe2b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2711
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x468
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x78
	.4byte	0xa6c
	.uleb128 0x24
	.4byte	0x4b2
	.4byte	.LLST26
	.uleb128 0x24
	.4byte	0x4a7
	.4byte	.LLST27
	.uleb128 0x24
	.4byte	0x49b
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	0x48f
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	0x483
	.uleb128 0x24
	.4byte	0x479
	.4byte	.LLST30
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0xe36
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x669
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x86
	.4byte	0xb0e
	.uleb128 0x24
	.4byte	0x679
	.4byte	.LLST31
	.uleb128 0x2b
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x2c
	.4byte	0x683
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.4byte	0x68e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.4byte	0x585
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x28
	.uleb128 0x24
	.4byte	0x5a0
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	0x5ac
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	0x5c4
	.4byte	.LLST34
	.uleb128 0x24
	.4byte	0x5b8
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	0x596
	.4byte	.LLST36
	.uleb128 0x25
	.4byte	.LVL38
	.4byte	0xe42
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0xe22
	.4byte	0xb2d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xe2b
	.4byte	0xb41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0xe4e
	.4byte	0xb5a
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
	.sleb128 13
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0xe5a
	.4byte	0xb6d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xe66
	.4byte	0xb87
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL13
	.4byte	0xe72
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0xe7d
	.4byte	0xbbe
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0xe5a
	.4byte	0xbd1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL35
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0xbea
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL39
	.4byte	0xe72
	.uleb128 0x29
	.4byte	.LVL40
	.4byte	0xe7d
	.4byte	0xc21
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0xe5a
	.4byte	0xc34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x29
	.4byte	.LVL47
	.4byte	0xe88
	.4byte	0xc48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL48
	.4byte	0xe93
	.4byte	0xc5c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0xe9e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x427
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbe
	.uleb128 0x31
	.4byte	.LASF122
	.byte	0x1
	.byte	0x9d
	.4byte	0xc6c
	.4byte	.LLST37
	.uleb128 0x21
	.string	"ack"
	.byte	0x1
	.byte	0x9f
	.4byte	0xc6c
	.4byte	.LLST38
	.uleb128 0x27
	.4byte	0x4ca
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0xaf
	.4byte	0xd25
	.uleb128 0x32
	.4byte	0x4db
	.uleb128 0x6
	.byte	0x3
	.4byte	sc_ack_send_task
	.byte	0x9f
	.uleb128 0x32
	.4byte	0x4e7
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC22
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x4f3
	.2byte	0x800
	.uleb128 0x34
	.4byte	0x50b
	.byte	0x2
	.uleb128 0x34
	.4byte	0x517
	.byte	0
	.uleb128 0x32
	.4byte	0x4ff
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL62
	.4byte	0xeaa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sc_ack_send_task
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL52
	.4byte	0xe72
	.uleb128 0x29
	.4byte	.LVL53
	.4byte	0xeb6
	.4byte	0xd41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL55
	.4byte	0xe72
	.uleb128 0x29
	.4byte	.LVL57
	.4byte	0xe7d
	.4byte	0xd5d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0xec1
	.4byte	0xd76
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL63
	.4byte	0xe72
	.uleb128 0x29
	.4byte	.LVL64
	.4byte	0xe7d
	.4byte	0xdad
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0xe93
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF149
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0x150
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x1
	.byte	0x21
	.4byte	0x11d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x36
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x228
	.uleb128 0x36
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x36
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x216
	.uleb128 0x36
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x222
	.uleb128 0x37
	.4byte	.LASF141
	.4byte	.LASF141
	.uleb128 0x38
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x12
	.byte	0x55
	.uleb128 0x36
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x226
	.uleb128 0x36
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x21a
	.uleb128 0x36
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x13
	.2byte	0x289
	.uleb128 0x36
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x32b
	.uleb128 0x36
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xd
	.2byte	0x10d
	.uleb128 0x38
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xf
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xf
	.byte	0x6b
	.uleb128 0x38
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x14
	.byte	0x1e
	.uleb128 0x38
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x15
	.byte	0x5a
	.uleb128 0x36
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x2fb
	.uleb128 0x36
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x151
	.uleb128 0x38
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x15
	.byte	0x65
	.uleb128 0x37
	.4byte	.LASF142
	.4byte	.LASF142
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xa
	.2byte	0x1006
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL33-1
	.4byte	.LVL42
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xa
	.2byte	0x1007
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL38-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL50
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE49
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
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"sock_errno"
.LASF140:
	.string	"malloc"
.LASF3:
	.string	"size_t"
.LASF41:
	.string	"sin_addr"
.LASF57:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF149:
	.string	"sc_ack_send_stop"
.LASF125:
	.string	"lwip_setsockopt_r"
.LASF69:
	.string	"smartconfig_status_t"
.LASF136:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF145:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/smartconfig_ack"
.LASF76:
	.string	"type"
.LASF78:
	.string	"sc_ack_t"
.LASF10:
	.string	"long long unsigned int"
.LASF32:
	.string	"in_addr_t"
.LASF30:
	.string	"addr"
.LASF120:
	.string	"sockadd_len"
.LASF133:
	.string	"tcpip_adapter_get_ip_info"
.LASF137:
	.string	"free"
.LASF99:
	.string	"getsockopt"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF67:
	.string	"SC_STATUS_LINK"
.LASF47:
	.string	"socklen_t"
.LASF132:
	.string	"vTaskDelay"
.LASF102:
	.string	"fromlen"
.LASF139:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF100:
	.string	"recvfrom"
.LASF29:
	.string	"ip4_addr"
.LASF135:
	.string	"esp_log_write"
.LASF25:
	.string	"TaskHandle_t"
.LASF142:
	.string	"memcpy"
.LASF115:
	.string	"sendlen"
.LASF148:
	.string	"sc_ack_send"
.LASF88:
	.string	"pvTaskCode"
.LASF16:
	.string	"uint16_t"
.LASF22:
	.string	"BaseType_t"
.LASF52:
	.string	"netmask"
.LASF66:
	.string	"SC_STATUS_GETTING_SSID_PSWD"
.LASF90:
	.string	"usStackDepth"
.LASF8:
	.string	"__uint32_t"
.LASF42:
	.string	"sin_zero"
.LASF20:
	.string	"suseconds_t"
.LASF0:
	.string	"unsigned int"
.LASF34:
	.string	"s_addr"
.LASF131:
	.string	"esp_wifi_get_mac"
.LASF116:
	.string	"ack_len"
.LASF13:
	.string	"long unsigned int"
.LASF126:
	.string	"lwip_bind_r"
.LASF121:
	.string	"timeout"
.LASF91:
	.string	"pvParameters"
.LASF28:
	.string	"timeval"
.LASF104:
	.string	"name"
.LASF103:
	.string	"bind"
.LASF112:
	.string	"sin_size"
.LASF95:
	.string	"level"
.LASF118:
	.string	"data"
.LASF84:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF54:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF73:
	.string	"sc_ack_type_t"
.LASF60:
	.string	"ESP_LOG_WARN"
.LASF86:
	.string	"tolen"
.LASF147:
	.string	"_end"
.LASF53:
	.string	"tcpip_adapter_ip_info_t"
.LASF71:
	.string	"SC_ACK_TYPE_ESPTOUCH"
.LASF36:
	.string	"in_port_t"
.LASF128:
	.string	"lwip_htons"
.LASF101:
	.string	"from"
.LASF75:
	.string	"sc_ack"
.LASF114:
	.string	"optval"
.LASF117:
	.string	"packet_count"
.LASF61:
	.string	"ESP_LOG_INFO"
.LASF44:
	.string	"sa_len"
.LASF39:
	.string	"sin_family"
.LASF123:
	.string	"s_sc_ack_send"
.LASF12:
	.string	"sizetype"
.LASF106:
	.string	"sc_ack_send_get_errno"
.LASF26:
	.string	"tv_sec"
.LASF87:
	.string	"xTaskCreate"
.LASF24:
	.string	"TickType_t"
.LASF97:
	.string	"opval"
.LASF144:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
.LASF122:
	.string	"param"
.LASF113:
	.string	"send_sock"
.LASF38:
	.string	"sin_len"
.LASF130:
	.string	"lwip_getsockopt_r"
.LASF19:
	.string	"time_t"
.LASF40:
	.string	"sin_port"
.LASF45:
	.string	"sa_family"
.LASF74:
	.string	"token"
.LASF93:
	.string	"pvCreatedTask"
.LASF80:
	.string	"protocol"
.LASF21:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF108:
	.string	"local_ip"
.LASF50:
	.string	"ESP_IF_ETH"
.LASF6:
	.string	"short int"
.LASF134:
	.string	"esp_log_timestamp"
.LASF59:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"TaskFunction_t"
.LASF143:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF55:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF27:
	.string	"tv_usec"
.LASF17:
	.string	"uint32_t"
.LASF96:
	.string	"optname"
.LASF51:
	.string	"ESP_IF_MAX"
.LASF64:
	.string	"SC_STATUS_WAIT"
.LASF124:
	.string	"lwip_socket"
.LASF14:
	.string	"char"
.LASF63:
	.string	"ESP_LOG_VERBOSE"
.LASF48:
	.string	"ESP_IF_WIFI_STA"
.LASF65:
	.string	"SC_STATUS_FIND_CHANNEL"
.LASF83:
	.string	"dataptr"
.LASF82:
	.string	"sendto"
.LASF7:
	.string	"__uint16_t"
.LASF138:
	.string	"vTaskDelete"
.LASF58:
	.string	"ESP_LOG_NONE"
.LASF72:
	.string	"SC_ACK_TYPE_AIRKISS"
.LASF49:
	.string	"ESP_IF_WIFI_AP"
.LASF98:
	.string	"optlen"
.LASF105:
	.string	"namelen"
.LASF111:
	.string	"server_addr"
.LASF31:
	.string	"ip4_addr_t"
.LASF35:
	.string	"sa_family_t"
.LASF77:
	.string	"link_flag"
.LASF68:
	.string	"SC_STATUS_LINK_OVER"
.LASF141:
	.string	"memset"
.LASF110:
	.string	"remote_port"
.LASF146:
	.string	"sc_ack_send_task"
.LASF43:
	.string	"sockaddr"
.LASF94:
	.string	"setsockopt"
.LASF37:
	.string	"sockaddr_in"
.LASF15:
	.string	"uint8_t"
.LASF129:
	.string	"lwip_sendto_r"
.LASF70:
	.string	"sc_callback_t"
.LASF85:
	.string	"flags"
.LASF79:
	.string	"domain"
.LASF127:
	.string	"lwip_recvfrom_r"
.LASF46:
	.string	"sa_data"
.LASF81:
	.string	"socket"
.LASF119:
	.string	"local_addr"
.LASF56:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF92:
	.string	"uxPriority"
.LASF62:
	.string	"ESP_LOG_DEBUG"
.LASF89:
	.string	"pcName"
.LASF109:
	.string	"remote_ip"
.LASF23:
	.string	"UBaseType_t"
.LASF33:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
