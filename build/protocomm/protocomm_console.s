	.file	"protocomm_console.c"
	.text
.Ltext0:
	.section	.text.protocomm_console_remove_endpoint,"ax",@progbits
	.align	4
	.type	protocomm_console_remove_endpoint, @function
protocomm_console_remove_endpoint:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/transports/protocomm_console.c"
	.loc 1 193 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 197 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE27:
	.size	protocomm_console_remove_endpoint, .-protocomm_console_remove_endpoint
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text.protocomm_console_add_endpoint,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, common_cmd_handler
	.align	4
	.type	protocomm_console_add_endpoint, @function
protocomm_console_add_endpoint:
.LFB26:
	.loc 1 175 0
.LVL2:
	entry	sp, 64
.LCFI1:
	.loc 1 181 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL3:
	.loc 1 184 0
	l32r	a8, .LC1
	.loc 1 187 0
	mov.n	a10, sp
	.loc 1 184 0
	s32i.n	a8, sp, 4
	.loc 1 185 0
	l32r	a8, .LC2
	.loc 1 183 0
	s32i.n	a2, sp, 0
	.loc 1 185 0
	s32i.n	a8, sp, 12
	.loc 1 187 0
	call8	esp_console_cmd_register
.LVL4:
	.loc 1 190 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE26:
	.size	protocomm_console_add_endpoint, .-protocomm_console_add_endpoint
	.section	.text.stopped,"ax",@progbits
	.align	4
	.type	stopped, @function
stopped:
.LFB23:
	.loc 1 64 0
	entry	sp, 48
.LCFI2:
	.loc 1 65 0
	movi.n	a3, 0
	.loc 1 66 0
	mov.n	a11, a3
	movi.n	a13, 1
	mov.n	a12, sp
	mov.n	a10, a3
	.loc 1 65 0
	s32i.n	a3, sp, 0
	.loc 1 66 0
	call8	xTaskNotifyWait
.LVL6:
	.loc 1 67 0
	l32i.n	a2, sp, 0
	movi.n	a8, 1
	movnez	a3, a8, a2
	mov.n	a2, a3
	.loc 1 68 0
	retw.n
.LFE23:
	.size	stopped, .-stopped
	.section	.rodata.str1.1
.LC5:
	.string	"\n>> "
.LC7:
	.string	"\r\n"
.LC9:
	.string	"protocomm_console"
.LC11:
	.string	"\033[0;31mE (%d) %s: Console dispatcher error\n\033[0m\n"
.LC14:
	.string	"\033[0;32mI (%d) %s: Console stopped\033[0m\n"
	.section	.text.protocomm_console_task,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, pc_console
	.literal .LC15, .LC14
	.align	4
	.type	protocomm_console_task, @function
protocomm_console_task:
.LFB24:
	.loc 1 71 0
.LVL7:
	entry	sp, 320
.LCFI3:
	.loc 1 80 0
	movi.n	a15, 0
	movi	a14, 0x118
	mov.n	a12, a15
	add.n	a14, sp, a14
	movi.n	a13, 8
	movi	a11, 0x100
	mov.n	a10, a2
	call8	uart_driver_install
.LVL8:
	.loc 1 82 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	addmi	a10, sp, 0x100
	call8	memset
.LVL9:
	movi	a3, 0x100
	s32i	a3, sp, 256
	.loc 1 87 0
	addmi	a10, sp, 0x100
	.loc 1 82 0
	movi.n	a3, 8
	s32i	a3, sp, 260
	.loc 1 87 0
	call8	esp_console_init
.LVL10:
	.loc 1 88 0
	call8	esp_console_register_help_command
.LVL11:
	.loc 1 90 0
	j	.L5
.L25:
	.loc 1 91 0
	l32r	a11, .LC6
	movi.n	a12, 4
	mov.n	a10, a2
	call8	uart_write_bytes
.LVL12:
	.loc 1 92 0
	movi	a12, 0x100
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memset
.LVL13:
.L15:
	.loc 1 95 0
	movi	a11, 0x110
	l32i	a10, sp, 280
	movi.n	a13, 0
	movi.n	a12, 1
	add.n	a11, a11, sp
	call8	xQueueGenericReceive
.LVL14:
	.loc 1 96 0
	beqi	a10, 1, .L6
	.loc 1 97 0
	call8	stopped
.LVL15:
	beqz.n	a10, .L18
.L14:
	.loc 1 114 0
	call8	stopped
.LVL16:
	beqz.n	a10, .L24
	j	.L16
.LVL17:
.L6:
	.loc 1 103 0
	l32i	a4, sp, 272
	bnez.n	a4, .L18
	add.n	a4, sp, a3
	.loc 1 105 0
	movi.n	a5, 0xd
	j	.L10
.LVL18:
.L13:
	l8ui	a3, a4, 0
.LVL19:
	.loc 1 106 0
	movi.n	a12, 2
	l32r	a11, .LC8
	.loc 1 105 0
	beq	a3, a5, .L26
.L11:
	.loc 1 108 0
	movi.n	a12, 1
	mov.n	a11, a4
.L26:
	mov.n	a10, a2
	call8	uart_write_bytes
.LVL20:
	addi.n	a4, a4, 1
.LVL21:
.L10:
	.loc 1 104 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a2
	sub	a3, a4, sp
.LVL22:
	call8	uart_read_bytes
.LVL23:
	bnez.n	a10, .L13
	.loc 1 113 0
	movi	a4, 0xfe
	blt	a4, a3, .L14
.L18:
	.loc 1 113 0 is_stmt 0 discriminator 1
	addi.n	a5, sp, -1
	add.n	a4, a5, a3
	l8ui	a8, a4, 0
	movi.n	a4, 0xd
	bne	a8, a4, .L15
	j	.L14
.L24:
	.loc 1 117 0 is_stmt 1
	movi	a11, 0x11c
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	esp_console_run
.LVL24:
	.loc 1 118 0
	bgez	a10, .L5
	.loc 1 119 0 discriminator 2
	call8	esp_log_timestamp
.LVL25:
	l32r	a11, .LC10
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	.loc 1 120 0 discriminator 2
	j	.L16
.LVL27:
.L5:
	.loc 1 90 0
	call8	stopped
.LVL28:
	mov.n	a3, a10
	beqz.n	a10, .L25
.L16:
	.loc 1 124 0
	l32r	a3, .LC13
	movi.n	a2, 0
.LVL29:
	s32i.n	a2, a3, 0
	.loc 1 125 0
	call8	esp_console_deinit
.LVL30:
	.loc 1 127 0
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC10
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL32:
	.loc 1 128 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL33:
	retw.n
.LFE24:
	.size	protocomm_console_task, .-protocomm_console_task
	.section	.rodata.str1.1
.LC16:
	.string	"%2hhx"
.LC20:
	.string	"\r"
.LC22:
	.string	"%02x"
	.section	.text.common_cmd_handler,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.literal .LC18, session_id
	.literal .LC19, pc_console
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.align	4
	.type	common_cmd_handler, @function
common_cmd_handler:
.LFB25:
	.loc 1 132 0
.LVL34:
	entry	sp, 64
.LCFI4:
	.loc 1 132 0
	mov.n	a4, a2
	.loc 1 134 0
	movi	a2, 0x102
.LVL35:
	.loc 1 133 0
	blti	a4, 3, .L28
.LVL36:
.LBB6:
.LBB7:
	.loc 1 139 0
	l32i.n	a10, a3, 4
.LBB8:
.LBB9:
	.loc 1 55 0
	movi.n	a2, 0
.LBE9:
.LBE8:
	.loc 1 139 0
	call8	atoi
.LVL37:
	.loc 1 141 0
	l32i.n	a6, a3, 8
	.loc 1 139 0
	mov.n	a4, a10
.LVL38:
	.loc 1 141 0
	mov.n	a10, a6
	call8	strlen
.LVL39:
	call8	malloc
.LVL40:
	mov.n	a5, a10
.LVL41:
.LBB11:
.LBB10:
	.loc 1 49 0
	mov.n	a10, a6
	call8	strlen
.LVL42:
	.loc 1 50 0
	srli	a7, a10, 1
.LVL43:
	j	.L29
.LVL44:
.L30:
	.loc 1 56 0
	l32r	a11, .LC17
	add.n	a12, a5, a2
	call8	sscanf
.LVL45:
	.loc 1 55 0
	addi.n	a2, a2, 1
.LVL46:
.L29:
	addx2	a10, a2, a6
.LVL47:
	blt	a2, a7, .L30
.LBE10:
.LBE11:
	.loc 1 146 0
	l32r	a6, .LC18
.LVL48:
	l32r	a2, .LC19
.LVL49:
	l32i.n	a8, a6, 0
	beq	a4, a8, .L32
	.loc 1 147 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 8
	beqz.n	a8, .L32
	l32i.n	a8, a8, 12
	beqz.n	a8, .L32
	.loc 1 148 0
	mov.n	a10, a4
.LVL50:
	callx8	a8
.LVL51:
	.loc 1 149 0
	bnez.n	a10, .L32
	.loc 1 150 0
	s32i.n	a4, a6, 0
.LVL52:
.L32:
	.loc 1 155 0
	addi	a6, sp, 16
	s32i.n	a6, sp, 0
	l32i.n	a11, a3, 0
	l32i.n	a10, a2, 0
	addi	a15, sp, 20
	mov.n	a14, a7
	mov.n	a13, a5
	mov.n	a12, a4
	call8	protocomm_req_handle
.LVL53:
	mov.n	a3, a10
.LVL54:
	.loc 1 156 0
	mov.n	a10, a5
	call8	free
.LVL55:
	.loc 1 158 0
	mov.n	a2, a3
	bnez.n	a3, .L28
	.loc 1 159 0
	l32r	a4, .LC21
.LVL56:
	mov.n	a10, a4
	call8	puts
.LVL57:
	.loc 1 161 0
	l32r	a5, .LC23
.LVL58:
	j	.L35
.LVL59:
.L36:
	l32i.n	a3, sp, 20
	mov.n	a10, a5
	add.n	a3, a3, a2
	l8ui	a11, a3, 0
	.loc 1 160 0
	addi.n	a2, a2, 1
.LVL60:
	.loc 1 161 0
	call8	printf
.LVL61:
.L35:
	.loc 1 160 0
	l32i.n	a3, sp, 16
	blt	a2, a3, .L36
	.loc 1 163 0
	mov.n	a10, a4
	call8	puts
.LVL62:
	.loc 1 166 0
	l32i.n	a10, sp, 20
	.loc 1 168 0
	movi.n	a2, 0
.LVL63:
	.loc 1 166 0
	call8	free
.LVL64:
.L28:
.LBE7:
.LBE6:
	.loc 1 172 0
	retw.n
.LFE25:
	.size	common_cmd_handler, .-common_cmd_handler
	.section	.rodata.str1.1
.LC26:
	.string	"\033[0;31mE (%d) %s: Incorrect stop request\033[0m\n"
.LC28:
	.string	"\033[0;32mI (%d) %s: Stopping console...\033[0m\n"
	.section	.text.protocomm_console_stop,"ax",@progbits
	.literal_position
	.literal .LC24, pc_console
	.literal .LC25, .LC9
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC30, console_task
	.align	4
	.global	protocomm_console_stop
	.type	protocomm_console_stop, @function
protocomm_console_stop:
.LFB21:
	.loc 1 36 0
.LVL65:
	entry	sp, 32
.LCFI5:
	.loc 1 37 0
	l32r	a3, .LC24
	l32i.n	a8, a3, 0
	l32r	a3, .LC25
	beq	a8, a2, .L46
	.loc 1 38 0 discriminator 2
	call8	esp_log_timestamp
.LVL66:
	l32r	a12, .LC27
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	.loc 1 39 0 discriminator 2
	movi	a2, 0x102
.LVL68:
	retw.n
.LVL69:
.L46:
	.loc 1 42 0 discriminator 9
	call8	esp_log_timestamp
.LVL70:
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL71:
	.loc 1 43 0 discriminator 9
	l32r	a2, .LC30
.LVL72:
	movi.n	a12, 2
	l32i.n	a10, a2, 0
	movi.n	a11, 0
	call8	xTaskNotify
.LVL73:
	.loc 1 44 0 discriminator 9
	movi.n	a2, 0
	.loc 1 45 0 discriminator 9
	retw.n
.LFE21:
	.size	protocomm_console_stop, .-protocomm_console_stop
	.section	.text.protocomm_console_start,"ax",@progbits
	.literal_position
	.literal .LC31, pc_console
	.literal .LC32, console_task
	.literal .LC33, .LC9
	.literal .LC34, protocomm_console_task
	.literal .LC35, 2147483647
	.literal .LC36, protocomm_console_add_endpoint
	.literal .LC37, protocomm_console_remove_endpoint
	.align	4
	.global	protocomm_console_start
	.type	protocomm_console_start, @function
protocomm_console_start:
.LFB28:
	.loc 1 200 0
.LVL74:
	entry	sp, 48
.LCFI6:
	.loc 1 202 0
	movi	a13, 0x102
	.loc 1 201 0
	beqz.n	a2, .L49
	.loc 1 205 0
	l32r	a5, .LC31
	l32i.n	a4, a5, 0
	beqz.n	a4, .L50
	.loc 1 210 0
	sub	a4, a2, a4
	movi	a13, 0x106
	movi	a8, 0x103
	moveqz	a13, a8, a4
	j	.L49
.L50:
.LVL75:
.LBB14:
.LBB15:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 2 440 0
	l32r	a8, .LC35
	l32r	a15, .LC32
	s32i.n	a8, sp, 0
.LVL76:
	l32i.n	a14, a3, 4
	l32i.n	a12, a3, 0
	l32r	a11, .LC33
	l32r	a10, .LC34
	mov.n	a13, a4
	call8	xTaskCreatePinnedToCore
.LVL77:
.LBE15:
.LBE14:
	.loc 1 217 0
	movi.n	a13, -1
	.loc 1 215 0
	bnei	a10, 1, .L49
	.loc 1 220 0
	l32r	a3, .LC36
.LVL78:
	.loc 1 222 0
	s32i.n	a2, a5, 0
	.loc 1 220 0
	s32i.n	a3, a2, 0
	.loc 1 221 0
	l32r	a3, .LC37
	.loc 1 223 0
	mov.n	a13, a4
	.loc 1 221 0
	s32i.n	a3, a2, 4
.LVL79:
.L49:
	.loc 1 224 0
	mov.n	a2, a13
.LVL80:
	retw.n
.LFE28:
	.size	protocomm_console_start, .-protocomm_console_start
	.section	.bss.console_task,"aw",@nobits
	.align	4
	.type	console_task, @object
	.size	console_task, 4
console_task:
	.zero	4
	.section	.bss.pc_console,"aw",@nobits
	.align	4
	.type	pc_console, @object
	.size	pc_console, 4
pc_console:
	.zero	4
	.section	.data.session_id,"aw",@progbits
	.align	4
	.type	session_id, @object
	.size	session_id, 4
session_id:
	.word	-1
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/console/esp_console.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/uart.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/common/protocomm_priv.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/transports/protocomm_console.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 22 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf1b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x37
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0xcb
	.4byte	0x9d
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x116
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x18
	.4byte	0xef
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x18b
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1f
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x20
	.4byte	0x89
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x21
	.4byte	0x62
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0x22
	.4byte	0x62
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x23
	.4byte	0x152
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x40
	.4byte	0x1a1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x1bb
	.uleb128 0x9
	.4byte	0x62
	.uleb128 0x9
	.4byte	0x1bb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6
	.uleb128 0xc
	.byte	0x14
	.byte	0x9
	.byte	0x45
	.4byte	0x206
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x9
	.byte	0x4a
	.4byte	0xc3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x9
	.byte	0x50
	.4byte	0xc3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0x56
	.4byte	0xc3
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0x5a
	.4byte	0x196
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0x61
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x62
	.4byte	0x1c1
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0x4d
	.4byte	0x105
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0x6f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0x70
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xb
	.byte	0x76
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x2
	.byte	0x6e
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x2
	.byte	0x82
	.4byte	0x27a
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xd
	.byte	0x58
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x89
	.4byte	0x2cd
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xe
	.byte	0x93
	.4byte	0x28a
	.uleb128 0xc
	.byte	0x8
	.byte	0xe
	.byte	0x98
	.4byte	0x2f9
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0xe
	.byte	0x99
	.4byte	0x2cd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0xe
	.byte	0x9a
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xe
	.byte	0x9b
	.4byte	0x2d8
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x8
	.byte	0xf
	.byte	0x1a
	.4byte	0x329
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xf
	.byte	0x1e
	.4byte	0x329
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0xf
	.byte	0x23
	.4byte	0xe4
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32f
	.uleb128 0x7
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xf
	.byte	0x24
	.4byte	0x304
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x20
	.byte	0xf
	.byte	0x2f
	.4byte	0x3ac
	.uleb128 0x10
	.string	"ver"
	.byte	0xf
	.byte	0x33
	.4byte	0x62
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xf
	.byte	0x39
	.4byte	0x3b7
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xf
	.byte	0x3e
	.4byte	0x3b7
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xf
	.byte	0x43
	.4byte	0x3cc
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xf
	.byte	0x48
	.4byte	0x3cc
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xf
	.byte	0x4e
	.4byte	0x41c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xf
	.byte	0x57
	.4byte	0x445
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xf
	.byte	0x5e
	.4byte	0x445
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x3b7
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ac
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x3cc
	.uleb128 0x9
	.4byte	0xfa
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bd
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x3ff
	.uleb128 0x9
	.4byte	0x3ff
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x40a
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x405
	.uleb128 0x7
	.4byte	0x334
	.uleb128 0x6
	.byte	0x4
	.4byte	0x410
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x445
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x410
	.uleb128 0x9
	.4byte	0x416
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x422
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xf
	.byte	0x61
	.4byte	0x33f
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x10
	.byte	0x1b
	.4byte	0x461
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x48f
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x40a
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x10
	.byte	0x2b
	.4byte	0x49a
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1c
	.byte	0x11
	.byte	0x37
	.4byte	0x4fb
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x11
	.byte	0x3a
	.4byte	0x5bd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x11
	.byte	0x3e
	.4byte	0x5d2
	.byte	0x4
	.uleb128 0x10
	.string	"sec"
	.byte	0x11
	.byte	0x42
	.4byte	0x5d8
	.byte	0x8
	.uleb128 0x10
	.string	"pop"
	.byte	0x11
	.byte	0x45
	.4byte	0x5e3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x11
	.byte	0x48
	.4byte	0x58b
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x11
	.byte	0x4b
	.4byte	0x94
	.byte	0x14
	.uleb128 0x10
	.string	"ver"
	.byte	0x11
	.byte	0x4e
	.4byte	0xc3
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x1f
	.4byte	0x51c
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x12
	.byte	0x20
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x12
	.byte	0x21
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x12
	.byte	0x22
	.4byte	0x4fb
	.uleb128 0xc
	.byte	0x4
	.byte	0x11
	.byte	0x2d
	.4byte	0x53c
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x11
	.byte	0x2d
	.4byte	0x585
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x14
	.byte	0x11
	.byte	0x22
	.4byte	0x585
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x11
	.byte	0x23
	.4byte	0xc3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x11
	.byte	0x24
	.4byte	0x456
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x11
	.byte	0x28
	.4byte	0x94
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x11
	.byte	0x2a
	.4byte	0xfa
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x11
	.byte	0x2d
	.4byte	0x527
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53c
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x4
	.byte	0x11
	.byte	0x48
	.4byte	0x5a4
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x11
	.byte	0x48
	.4byte	0x585
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x5bd
	.uleb128 0x9
	.4byte	0xc3
	.uleb128 0x9
	.4byte	0x456
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a4
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x5d2
	.uleb128 0x9
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x7
	.4byte	0x44b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x334
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x1
	.byte	0x83
	.4byte	0x62
	.byte	0x1
	.4byte	0x65b
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0x83
	.4byte	0x62
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x1
	.byte	0x83
	.4byte	0x1bb
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x89
	.4byte	0x62
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x89
	.4byte	0x62
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x1
	.byte	0x8b
	.4byte	0xfa
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x8d
	.4byte	0x410
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x1
	.byte	0x8e
	.4byte	0x410
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x1
	.byte	0x8f
	.4byte	0xce
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x90
	.4byte	0xce
	.byte	0
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x223
	.byte	0x3
	.4byte	0x6b5
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x211
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x27a
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x6b5
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x6ba
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x22e
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x1b6
	.4byte	0x6c5
	.byte	0
	.uleb128 0x7
	.4byte	0xfa
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x244
	.uleb128 0x7
	.4byte	0x6bf
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x1
	.byte	0xc0
	.4byte	0x147
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f3
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc0
	.4byte	0xc3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x1
	.byte	0xae
	.4byte	0x147
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77f
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1
	.byte	0xae
	.4byte	0xc3
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.byte	0xae
	.4byte	0x456
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0x1
	.byte	0xae
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xb3
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1c
	.string	"cmd"
	.byte	0x1
	.byte	0xb4
	.4byte	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0xe0c
	.4byte	0x76e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0xe15
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.byte	0x3f
	.4byte	0x21c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c8
	.uleb128 0x20
	.4byte	.LASF93
	.byte	0x1
	.byte	0x41
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0xe20
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF156
	.byte	0x1
	.byte	0x46
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1d
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x46
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x48
	.4byte	0x62
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.byte	0x49
	.4byte	0xa1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LASF115
	.byte	0x1
	.byte	0x4a
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.4byte	0x147
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0x4c
	.4byte	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x1
	.byte	0x4d
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LASF118
	.byte	0x1
	.byte	0x52
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0xe2c
	.4byte	0x88a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0xe0c
	.4byte	0x8a8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0xe38
	.4byte	0x8bc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.4byte	.LVL11
	.4byte	0xe43
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0xe4e
	.4byte	0x8e7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL13
	.4byte	0xe0c
	.4byte	0x909
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0xe5a
	.4byte	0x927
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x77f
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0x77f
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0xe4e
	.4byte	0x94d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0xe66
	.4byte	0x971
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xe72
	.4byte	0x98c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0xe7d
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0xe88
	.4byte	0x9c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x24
	.4byte	.LVL28
	.4byte	0x77f
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0xe93
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0xe7d
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0xe88
	.4byte	0xa0c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0xe9e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0xd9
	.4byte	0xa2d
	.uleb128 0x26
	.4byte	0xa8
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.byte	0x2f
	.4byte	0xce
	.byte	0x1
	.4byte	0xa80
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2f
	.4byte	0xc3
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2f
	.4byte	0x410
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x1
	.byte	0x31
	.4byte	0x89
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x1
	.byte	0x32
	.4byte	0xce
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x34
	.4byte	0x62
	.uleb128 0x15
	.string	"pos"
	.byte	0x1
	.byte	0x35
	.4byte	0xc3
	.byte	0
	.uleb128 0x27
	.4byte	0x5e9
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc66
	.uleb128 0x28
	.4byte	0x5f9
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	0x604
	.4byte	.LLST6
	.uleb128 0x29
	.4byte	0x60f
	.uleb128 0x29
	.4byte	0x618
	.uleb128 0x29
	.4byte	0x623
	.uleb128 0x29
	.4byte	0x62e
	.uleb128 0x29
	.4byte	0x639
	.uleb128 0x29
	.4byte	0x644
	.uleb128 0x29
	.4byte	0x64f
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x28
	.4byte	0x5f9
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	0x604
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2b
	.4byte	0x60f
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	0x618
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	0x623
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0x62e
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.4byte	0x644
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.4byte	0x64f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	0xa2d
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x90
	.4byte	0xba7
	.uleb128 0x28
	.4byte	0xa48
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0xa3d
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2b
	.4byte	0xa53
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0xa5e
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	0xa69
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	0xa74
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0xeaa
	.4byte	0xb89
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL45
	.4byte	0xeb5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0xec0
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0xeaa
	.4byte	0xbc4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL40
	.4byte	0xecb
	.uleb128 0x2f
	.4byte	.LVL51
	.4byte	0xbdd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL53
	.4byte	0xed6
	.4byte	0xc0a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xee1
	.4byte	0xc1e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0xeec
	.4byte	0xc32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL61
	.4byte	0xefb
	.4byte	0xc46
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL62
	.4byte	0xeec
	.4byte	0xc5a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0xee1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF125
	.byte	0x1
	.byte	0x23
	.4byte	0x147
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd04
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.byte	0x23
	.4byte	0xd04
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0xe7d
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0xe88
	.4byte	0xcbe
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0xe7d
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0xe88
	.4byte	0xcef
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0xf06
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48f
	.uleb128 0x30
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc7
	.4byte	0x147
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbc
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.byte	0xc7
	.4byte	0xd04
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc7
	.4byte	0xdbc
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	0x65b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0xd7
	.uleb128 0x28
	.4byte	0x66c
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	0x678
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	0x690
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	0x6a8
	.4byte	.LLST25
	.uleb128 0x28
	.4byte	0x69c
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	0x684
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xf12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_console_task
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	console_task
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdc2
	.uleb128 0x7
	.4byte	0x51c
	.uleb128 0x1c
	.string	"TAG"
	.byte	0x1
	.byte	0x1d
	.4byte	0x27a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.byte	0x1f
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	session_id
	.uleb128 0x20
	.4byte	.LASF129
	.byte	0x1
	.byte	0x20
	.4byte	0xd04
	.uleb128 0x5
	.byte	0x3
	.4byte	pc_console
	.uleb128 0x20
	.4byte	.LASF130
	.byte	0x1
	.byte	0x21
	.4byte	0x244
	.uleb128 0x5
	.byte	0x3
	.4byte	console_task
	.uleb128 0x32
	.4byte	.LASF157
	.4byte	.LASF157
	.uleb128 0x33
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x9
	.byte	0x6b
	.uleb128 0x34
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x781
	.uleb128 0x34
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x215
	.uleb128 0x33
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x9
	.byte	0x2d
	.uleb128 0x33
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0xbc
	.uleb128 0x34
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xe
	.2byte	0x250
	.uleb128 0x34
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x38a
	.uleb128 0x34
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x274
	.uleb128 0x33
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x9
	.byte	0x78
	.uleb128 0x33
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0x57
	.uleb128 0x33
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x6b
	.uleb128 0x33
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x9
	.byte	0x37
	.uleb128 0x34
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x2fb
	.uleb128 0x33
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x13
	.byte	0x21
	.uleb128 0x33
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x14
	.byte	0xb6
	.uleb128 0x33
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x15
	.byte	0x4e
	.uleb128 0x33
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x15
	.byte	0x65
	.uleb128 0x33
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x10
	.byte	0x90
	.uleb128 0x33
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x15
	.byte	0x5a
	.uleb128 0x35
	.4byte	.LASF158
	.4byte	.LASF159
	.byte	0x16
	.byte	0
	.4byte	.LASF158
	.uleb128 0x33
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x14
	.byte	0xb2
	.uleb128 0x34
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x6e2
	.uleb128 0x34
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x151
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
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x140
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x141
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	protocomm_console_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	console_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"printf"
.LASF124:
	.string	"count"
.LASF128:
	.string	"session_id"
.LASF147:
	.string	"malloc"
.LASF91:
	.string	"req_handler"
.LASF125:
	.string	"protocomm_console_stop"
.LASF72:
	.string	"new_transport_session"
.LASF135:
	.string	"esp_console_register_help_command"
.LASF11:
	.string	"size_t"
.LASF39:
	.string	"argtable"
.LASF133:
	.string	"uart_driver_install"
.LASF3:
	.string	"__uint8_t"
.LASF123:
	.string	"bytesLen"
.LASF17:
	.string	"ssize_t"
.LASF63:
	.string	"type"
.LASF70:
	.string	"init"
.LASF65:
	.string	"uart_event_t"
.LASF62:
	.string	"uart_event_type_t"
.LASF10:
	.string	"long long unsigned int"
.LASF116:
	.string	"uart_queue"
.LASF141:
	.string	"esp_log_write"
.LASF66:
	.string	"data"
.LASF53:
	.string	"UART_DATA"
.LASF52:
	.string	"QueueHandle_t"
.LASF46:
	.string	"TaskHandle_t"
.LASF112:
	.string	"stopped"
.LASF118:
	.string	"console_config"
.LASF99:
	.string	"cur_session_id"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF134:
	.string	"esp_console_init"
.LASF152:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF36:
	.string	"help"
.LASF58:
	.string	"UART_PARITY_ERR"
.LASF48:
	.string	"eSetBits"
.LASF38:
	.string	"func"
.LASF159:
	.string	"__builtin_puts"
.LASF137:
	.string	"xQueueGenericReceive"
.LASF136:
	.string	"uart_write_bytes"
.LASF104:
	.string	"pvTaskCode"
.LASF19:
	.string	"uint16_t"
.LASF43:
	.string	"BaseType_t"
.LASF74:
	.string	"security_req_handler"
.LASF88:
	.string	"sle_next"
.LASF34:
	.string	"esp_console_cmd_func_t"
.LASF129:
	.string	"pc_console"
.LASF121:
	.string	"bytes"
.LASF106:
	.string	"usStackDepth"
.LASF155:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/protocomm"
.LASF31:
	.string	"hint_color"
.LASF7:
	.string	"__uint32_t"
.LASF68:
	.string	"protocomm_security_pop"
.LASF139:
	.string	"esp_console_run"
.LASF113:
	.string	"uart_num"
.LASF8:
	.string	"unsigned int"
.LASF144:
	.string	"strlen"
.LASF35:
	.string	"command"
.LASF50:
	.string	"eSetValueWithOverwrite"
.LASF79:
	.string	"protocomm_t"
.LASF15:
	.string	"long unsigned int"
.LASF56:
	.string	"UART_FIFO_OVF"
.LASF107:
	.string	"pvParameters"
.LASF153:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF75:
	.string	"encrypt"
.LASF119:
	.string	"hex2bin"
.LASF117:
	.string	"event"
.LASF64:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF67:
	.string	"protocomm_security_pop_t"
.LASF55:
	.string	"UART_BUFFER_FULL"
.LASF69:
	.string	"protocomm_security"
.LASF111:
	.string	"protocomm_console_add_endpoint"
.LASF138:
	.string	"uart_read_bytes"
.LASF148:
	.string	"protocomm_req_handle"
.LASF2:
	.string	"short int"
.LASF90:
	.string	"ep_name"
.LASF157:
	.string	"memset"
.LASF142:
	.string	"esp_console_deinit"
.LASF49:
	.string	"eIncrement"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF158:
	.string	"puts"
.LASF95:
	.string	"eptable_t"
.LASF154:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/transports/protocomm_console.c"
.LASF86:
	.string	"task_priority"
.LASF110:
	.string	"protocomm_console_remove_endpoint"
.LASF14:
	.string	"sizetype"
.LASF145:
	.string	"sscanf"
.LASF103:
	.string	"xTaskCreate"
.LASF45:
	.string	"TickType_t"
.LASF33:
	.string	"esp_console_config_t"
.LASF115:
	.string	"cmd_ret"
.LASF30:
	.string	"max_cmdline_args"
.LASF71:
	.string	"cleanup"
.LASF57:
	.string	"UART_FRAME_ERR"
.LASF84:
	.string	"priv"
.LASF92:
	.string	"priv_data"
.LASF87:
	.string	"protocomm_console_config_t"
.LASF108:
	.string	"uxPriority"
.LASF32:
	.string	"hint_bold"
.LASF102:
	.string	"common_cmd_handler"
.LASF109:
	.string	"pvCreatedTask"
.LASF73:
	.string	"close_transport_session"
.LASF146:
	.string	"atoi"
.LASF42:
	.string	"_Bool"
.LASF20:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF82:
	.string	"remove_endpoint"
.LASF89:
	.string	"protocomm_ep"
.LASF140:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF54:
	.string	"UART_BREAK"
.LASF93:
	.string	"flag"
.LASF41:
	.string	"TaskFunction_t"
.LASF59:
	.string	"UART_DATA_BREAK"
.LASF122:
	.string	"hexstrLen"
.LASF60:
	.string	"UART_PATTERN_DET"
.LASF120:
	.string	"hexstr"
.LASF77:
	.string	"protocomm_security_t"
.LASF78:
	.string	"protocomm_req_handler_t"
.LASF131:
	.string	"esp_console_cmd_register"
.LASF130:
	.string	"console_task"
.LASF37:
	.string	"hint"
.LASF16:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__int32_t"
.LASF127:
	.string	"config"
.LASF4:
	.string	"__uint16_t"
.LASF143:
	.string	"vTaskDelete"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF61:
	.string	"UART_EVENT_MAX"
.LASF18:
	.string	"uint8_t"
.LASF149:
	.string	"free"
.LASF76:
	.string	"decrypt"
.LASF100:
	.string	"outbuf"
.LASF156:
	.string	"protocomm_console_task"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF126:
	.string	"protocomm_console_start"
.LASF28:
	.string	"esp_err_t"
.LASF51:
	.string	"eSetValueWithoutOverwrite"
.LASF132:
	.string	"xTaskNotifyWait"
.LASF13:
	.string	"_ssize_t"
.LASF47:
	.string	"eNoAction"
.LASF85:
	.string	"stack_size"
.LASF83:
	.string	"endpoints"
.LASF96:
	.string	"slh_first"
.LASF81:
	.string	"add_endpoint"
.LASF97:
	.string	"argc"
.LASF94:
	.string	"next"
.LASF101:
	.string	"outlen"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF44:
	.string	"UBaseType_t"
.LASF105:
	.string	"pcName"
.LASF98:
	.string	"argv"
.LASF114:
	.string	"linebuf"
.LASF40:
	.string	"esp_console_cmd_t"
.LASF151:
	.string	"xTaskNotify"
.LASF21:
	.string	"uint32_t"
.LASF80:
	.string	"protocomm"
.LASF29:
	.string	"max_cmdline_length"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
