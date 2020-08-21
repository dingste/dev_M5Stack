	.file	"portserial.c"
	.text
.Ltext0:
	.section	.text.vUartTask,"ax",@progbits
	.literal_position
	.literal .LC0, xMbUartQueue
	.literal .LC1, bRxStateEnabled
	.literal .LC2, uiRxBufferPos
	.literal .LC3, ucBuffer
	.literal .LC4, ucUartNumber
	.literal .LC5, pxMBFrameCBByteReceived
	.literal .LC6, pxMBPortCBTimerExpired
	.align	4
	.type	vUartTask, @function
vUartTask:
.LFB24:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portserial.c"
	.loc 1 139 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 142 0
	l32r	a3, .LC0
.LVL1:
.L2:
	l32i.n	a10, a3, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL2:
	bnei	a10, 1, .L2
	.loc 1 145 0
	l32i.n	a8, sp, 0
	beqi	a8, 2, .L4
	beqi	a8, 3, .L5
	bnez.n	a8, .L2
.LBB5:
.LBB6:
	.loc 1 98 0
	l32r	a2, .LC1
	.loc 1 99 0
	mov.n	a4, a8
	l8ui	a2, a2, 0
.LBE6:
.LBE5:
	.loc 1 150 0
	l32i.n	a12, sp, 4
.LVL3:
.LBB9:
.LBB8:
	.loc 1 99 0
	movnez	a4, a10, a2
	extui	a2, a4, 0, 8
	beqz.n	a2, .L2
	moveqz	a10, a8, a12
	extui	a10, a10, 0, 8
	beqz.n	a10, .L2
	.loc 1 101 0
	l32r	a4, .LC2
	.loc 1 100 0
	movi	a2, 0x100
	minu	a12, a12, a2
.LVL4:
	.loc 1 101 0
	l16ui	a2, a4, 0
	movi	a6, 0xff
	add.n	a5, a2, a12
	bgeu	a6, a5, .L7
	mov.n	a2, a8
.L7:
	s16i	a2, a4, 0
	.loc 1 103 0
	l32r	a4, .LC4
	l32r	a11, .LC3
	l8ui	a10, a4, 0
	add.n	a11, a11, a2
	movi.n	a13, -1
	call8	uart_read_bytes
.LVL5:
	extui	a5, a10, 0, 16
.LVL6:
.LBB7:
	.loc 1 104 0
	movi.n	a2, 0
	.loc 1 106 0
	l32r	a6, .LC5
	j	.L8
.LVL7:
.L9:
	l32i.n	a10, a6, 0
	.loc 1 104 0
	addi.n	a2, a2, 1
.LVL8:
	.loc 1 106 0
	callx8	a10
.LVL9:
	.loc 1 104 0
	extui	a2, a2, 0, 16
.LVL10:
.L8:
	bltu	a2, a5, .L9
.LBE7:
	.loc 1 109 0
	l8ui	a10, a4, 0
	call8	uart_flush_input
.LVL11:
	.loc 1 113 0
	l32r	a2, .LC6
.LVL12:
	l32i.n	a10, a2, 0
	callx8	a10
.LVL13:
	j	.L2
.LVL14:
.L5:
.LBE8:
.LBE9:
	.loc 1 155 0
	l32i.n	a10, a3, 0
	movi.n	a11, 0
	call8	xQueueGenericReset
.LVL15:
	.loc 1 156 0
	j	.L2
.L4:
	.loc 1 160 0
	l32i.n	a10, a3, 0
	movi.n	a11, 0
	call8	xQueueGenericReset
.LVL16:
	.loc 1 161 0
	l32r	a2, .LC4
	l8ui	a10, a2, 0
	call8	uart_flush_input
.LVL17:
	.loc 1 162 0
	j	.L2
.LFE24:
	.size	vUartTask, .-vUartTask
	.section	.text.vMBPortSerialEnable,"ax",@progbits
	.literal_position
	.literal .LC7, bRxStateEnabled
	.literal .LC8, xMbTaskHandle
	.literal .LC9, bTxStateEnabled
	.align	4
	.global	vMBPortSerialEnable
	.type	vMBPortSerialEnable, @function
vMBPortSerialEnable:
.LFB21:
	.loc 1 75 0
.LVL18:
	entry	sp, 32
.LCFI1:
	.loc 1 77 0
	call8	vMBPortEnterCritical
.LVL19:
	.loc 1 75 0
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	l32r	a4, .LC7
	l32r	a8, .LC8
	.loc 1 78 0
	beqz.n	a2, .L18
	.loc 1 81 0
	l32i.n	a10, a8, 0
	.loc 1 80 0
	movi.n	a2, 1
.LVL20:
	s8i	a2, a4, 0
	.loc 1 81 0
	call8	vTaskResume
.LVL21:
	j	.L19
.L18:
	.loc 1 83 0
	l32i.n	a10, a8, 0
	call8	vTaskSuspend
.LVL22:
	.loc 1 84 0
	s8i	a2, a4, 0
.L19:
	l32r	a8, .LC9
	.loc 1 86 0
	beqz.n	a3, .L20
	.loc 1 87 0
	movi.n	a2, 1
	s8i	a2, a8, 0
	j	.L21
.L20:
	.loc 1 89 0
	s8i	a3, a8, 0
.L21:
	.loc 1 91 0
	call8	vMBPortExitCritical
.LVL23:
	retw.n
.LFE21:
	.size	vMBPortSerialEnable, .-vMBPortSerialEnable
	.section	.text.xMBPortSerialTxPoll,"ax",@progbits
	.literal_position
	.literal .LC10, bTxStateEnabled
	.literal .LC11, pxMBFrameCBTransmitterEmpty
	.align	4
	.global	xMBPortSerialTxPoll
	.type	xMBPortSerialTxPoll, @function
xMBPortSerialTxPoll:
.LFB23:
	.loc 1 121 0
	entry	sp, 32
.LCFI2:
.LVL24:
	.loc 1 126 0
	l32r	a2, .LC10
	movi	a3, 0x101
	l8ui	a2, a2, 0
	.loc 1 130 0
	l32r	a4, .LC11
	.loc 1 126 0
	bnez.n	a2, .L29
	retw.n
.LVL25:
.L26:
	.loc 1 130 0
	l32i.n	a10, a4, 0
	callx8	a10
.LVL26:
	.loc 1 128 0
	beqz.n	a10, .L29
.LVL27:
.L27:
	.loc 1 133 0
	movi.n	a2, 1
	retw.n
.L29:
.LVL28:
	addi.n	a3, a3, -1
.LVL29:
	extui	a3, a3, 0, 16
.LVL30:
	.loc 1 128 0 discriminator 1
	bnez.n	a3, .L26
	j	.L27
.LFE23:
	.size	xMBPortSerialTxPoll, .-xMBPortSerialTxPoll
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"MB_PORT"
.LC15:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb serial set parity failure.\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb config failure, uart_param_config() returned (0x%x).\033[0m\n"
.LC22:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb serial driver failure, uart_driver_install() returned (0x%x).\033[0m\n"
.LC24:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb serial set rx timeout failure, uart_set_rx_timeout() returned (0x%x).\033[0m\n"
.LC28:
	.string	"uart_queue_task"
.LC32:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb stack serial task creation error. xTaskCreate() returned (0x%x).\033[0m\n"
	.section	.text.xMBPortSerialInit,"ax",@progbits
	.literal_position
	.literal .LC12, __FUNCTION__$6468
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, ucUartNumber
	.literal .LC18, CSWTCH$33
	.literal .LC20, .LC19
	.literal .LC21, xMbUartQueue
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, xMbTaskHandle
	.literal .LC27, 2048
	.literal .LC29, .LC28
	.literal .LC30, vUartTask
	.literal .LC31, 2147483647
	.literal .LC33, .LC32
	.literal .LC34, uiRxBufferPos
	.align	4
	.global	xMBPortSerialInit
	.type	xMBPortSerialInit, @function
xMBPortSerialInit:
.LFB25:
	.loc 1 186 0
.LVL31:
	entry	sp, 80
.LCFI3:
.LVL32:
	.loc 1 186 0
	extui	a2, a2, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 188 0
	bltui	a5, 3, .L32
	.loc 1 188 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC14
	movi	a2, 0xbc
.LVL34:
	l32r	a15, .LC12
	l32r	a12, .LC16
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	j	.L45
.L32:
	.loc 1 190 0 is_stmt 1
	l32r	a6, .LC17
	.loc 1 199 0
	movi.n	a7, 3
	.loc 1 190 0
	s8i	a2, a6, 0
.LVL36:
	.loc 1 194 0
	beqi	a5, 1, .L34
	.loc 1 192 0
	addi	a5, a5, -2
.LVL37:
	movi.n	a8, 0
	movi.n	a7, 2
	movnez	a7, a8, a5
.LVL38:
.L34:
	addi	a4, a4, -5
.LVL39:
	extui	a4, a4, 0, 8
.LVL40:
	movi.n	a5, 3
	bgeui	a4, 4, .L37
	l32r	a5, .LC18
	add.n	a4, a5, a4
	l8ui	a5, a4, 0
.L37:
.LVL41:
	.loc 1 222 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL42:
	.loc 1 231 0
	mov.n	a10, a2
	.loc 1 222 0
	s32i.n	a3, sp, 16
	s32i.n	a5, sp, 20
	movi.n	a3, 2
.LVL43:
	movi.n	a5, 1
.LVL44:
	.loc 1 231 0
	addi	a11, sp, 16
.LVL45:
	.loc 1 222 0
	s32i.n	a7, sp, 24
	s32i.n	a5, sp, 28
	s8i	a3, sp, 36
	.loc 1 231 0
	call8	uart_param_config
.LVL46:
	mov.n	a2, a10
.LVL47:
	.loc 1 232 0
	beqz.n	a10, .L38
	.loc 1 232 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC14
	s32i.n	a2, sp, 4
	l32r	a15, .LC12
	movi	a2, 0xe9
.LVL49:
	l32r	a12, .LC20
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.LVL50:
.L46:
	mov.n	a10, a5
	call8	esp_log_write
.LVL51:
.L45:
	.loc 1 232 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL52:
.L38:
	.loc 1 235 0
	movi	a12, 0x100
	l32r	a14, .LC21
	l8ui	a10, a6, 0
	movi.n	a15, 0xe
	movi.n	a13, 0x14
	mov.n	a11, a12
	call8	uart_driver_install
.LVL53:
	mov.n	a3, a10
.LVL54:
	.loc 1 237 0
	beqz.n	a10, .L39
	.loc 1 237 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC14
	s32i.n	a3, sp, 4
	l32r	a15, .LC12
	movi	a3, 0xee
.LVL56:
	l32r	a12, .LC23
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL57:
	.loc 1 237 0 is_stmt 1 discriminator 4
	retw.n
.LVL58:
.L39:
	.loc 1 241 0
	l8ui	a10, a6, 0
	movi.n	a11, 3
	call8	uart_set_rx_timeout
.LVL59:
	mov.n	a4, a10
.LVL60:
	.loc 1 242 0
	beqz.n	a10, .L40
	.loc 1 242 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC14
	movi	a2, 0xf3
	s32i.n	a4, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	j	.L46
.L40:
.LVL62:
.LBB12:
.LBB13:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 2 440 0 is_stmt 1
	l32r	a3, .LC26
	l32r	a2, .LC31
	mov.n	a13, a10
	l32r	a12, .LC27
	l32r	a11, .LC29
	l32r	a10, .LC30
	s32i.n	a2, sp, 0
	mov.n	a15, a3
	movi.n	a14, 0xa
	call8	xTaskCreatePinnedToCore
.LVL63:
	mov.n	a2, a10
.LBE13:
.LBE12:
	.loc 1 249 0
	l32i.n	a10, a3, 0
	.loc 1 248 0
	beqi	a2, 1, .L41
	.loc 1 249 0
	call8	vTaskDelete
.LVL64:
	.loc 1 251 0
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC14
	s32i.n	a2, sp, 4
	movi	a2, 0xfd
	s32i.n	a2, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	j	.L46
.L41:
	.loc 1 255 0
	call8	vTaskSuspend
.LVL66:
	.loc 1 257 0
	l32r	a3, .LC34
	s16i	a4, a3, 0
	.loc 1 259 0
	retw.n
.LFE25:
	.size	xMBPortSerialInit, .-xMBPortSerialInit
	.section	.rodata.str1.1
.LC37:
	.string	"uart_driver_delete(ucUartNumber)"
.LC40:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portserial.c"
	.section	.text.vMBPortSerialClose,"ax",@progbits
	.literal_position
	.literal .LC35, xMbTaskHandle
	.literal .LC36, ucUartNumber
	.literal .LC38, .LC37
	.literal .LC39, __func__$6486
	.literal .LC41, .LC40
	.align	4
	.global	vMBPortSerialClose
	.type	vMBPortSerialClose, @function
vMBPortSerialClose:
.LFB26:
	.loc 1 262 0
	entry	sp, 32
.LCFI4:
	.loc 1 263 0
	l32r	a2, .LC35
	l32i.n	a10, a2, 0
	call8	vTaskSuspend
.LVL67:
	.loc 1 264 0
	l32i.n	a10, a2, 0
	call8	vTaskDelete
.LVL68:
.LBB14:
	.loc 1 265 0
	l32r	a2, .LC36
	l8ui	a10, a2, 0
	call8	uart_driver_delete
.LVL69:
	beqz.n	a10, .L47
	.loc 1 265 0 is_stmt 0 discriminator 1
	l32r	a14, .LC38
	l32r	a13, .LC39
	l32r	a11, .LC41
	movi	a12, 0x109
	call8	_esp_error_check_failed
.LVL70:
.L47:
	retw.n
.LBE14:
.LFE26:
	.size	vMBPortSerialClose, .-vMBPortSerialClose
	.section	.text.xMBPortSerialPutByte,"ax",@progbits
	.literal_position
	.literal .LC42, ucUartNumber
	.align	4
	.global	xMBPortSerialPutByte
	.type	xMBPortSerialPutByte, @function
xMBPortSerialPutByte:
.LFB27:
	.loc 1 269 0 is_stmt 1
.LVL71:
	entry	sp, 48
.LCFI5:
	.loc 1 269 0
	s8i	a2, sp, 0
	.loc 1 272 0
	l32r	a2, .LC42
.LVL72:
	movi.n	a12, 1
	l8ui	a10, a2, 0
	mov.n	a11, sp
.LVL73:
	call8	uart_write_bytes
.LVL74:
	.loc 1 273 0
	extui	a10, a10, 0, 8
	addi.n	a10, a10, -1
.LVL75:
	movi.n	a8, 1
	movi.n	a2, 0
	moveqz	a2, a8, a10
	.loc 1 274 0
	retw.n
.LFE27:
	.size	xMBPortSerialPutByte, .-xMBPortSerialPutByte
	.section	.rodata.str1.1
.LC43:
	.string	"pucByte != NULL"
.LC50:
	.string	"\033[0;31mE (%d) %s: %s(%u): mb stack serial get byte failure.\033[0m\n"
	.section	.text.xMBPortSerialGetByte,"ax",@progbits
	.literal_position
	.literal .LC44, .LC43
	.literal .LC45, __func__$6494
	.literal .LC46, .LC40
	.literal .LC47, uiRxBufferPos
	.literal .LC48, __FUNCTION__$6495
	.literal .LC49, .LC13
	.literal .LC51, .LC50
	.literal .LC52, ucBuffer
	.align	4
	.global	xMBPortSerialGetByte
	.type	xMBPortSerialGetByte, @function
xMBPortSerialGetByte:
.LFB28:
	.loc 1 278 0
.LVL76:
	entry	sp, 48
.LCFI6:
	.loc 1 279 0
	bnez.n	a2, .L51
	.loc 1 279 0 is_stmt 0 discriminator 1
	l32r	a13, .LC44
	l32r	a12, .LC45
	l32r	a10, .LC46
	movi	a11, 0x117
	call8	__assert_func
.LVL77:
.L51:
	.loc 1 280 0 is_stmt 1
	l32r	a10, .LC47
	movi	a9, 0xff
	l16ui	a8, a10, 0
	bgeu	a9, a8, .L52
	.loc 1 280 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC49
	movi	a2, 0x119
.LVL79:
	l32r	a15, .LC48
	l32r	a12, .LC51
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	.loc 1 280 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL81:
.L52:
	.loc 1 282 0
	l32r	a9, .LC52
	add.n	a9, a9, a8
	l8ui	a9, a9, 0
	.loc 1 283 0
	addi.n	a8, a8, 1
	.loc 1 282 0
	s8i	a9, a2, 0
	.loc 1 283 0
	s16i	a8, a10, 0
	.loc 1 284 0
	movi.n	a2, 1
.LVL82:
	.loc 1 285 0
	retw.n
.LFE28:
	.size	xMBPortSerialGetByte, .-xMBPortSerialGetByte
	.section	.rodata.CSWTCH$33,"a",@progbits
	.type	CSWTCH$33, @object
	.size	CSWTCH$33, 4
CSWTCH$33:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.rodata.__FUNCTION__$6495,"a",@progbits
	.type	__FUNCTION__$6495, @object
	.size	__FUNCTION__$6495, 21
__FUNCTION__$6495:
	.string	"xMBPortSerialGetByte"
	.section	.rodata.__func__$6494,"a",@progbits
	.type	__func__$6494, @object
	.size	__func__$6494, 21
__func__$6494:
	.string	"xMBPortSerialGetByte"
	.section	.rodata.__func__$6486,"a",@progbits
	.type	__func__$6486, @object
	.size	__func__$6486, 19
__func__$6486:
	.string	"vMBPortSerialClose"
	.section	.rodata.__FUNCTION__$6468,"a",@progbits
	.type	__FUNCTION__$6468, @object
	.size	__FUNCTION__$6468, 18
__FUNCTION__$6468:
	.string	"xMBPortSerialInit"
	.section	.bss.uiRxBufferPos,"aw",@nobits
	.align	2
	.type	uiRxBufferPos, @object
	.size	uiRxBufferPos, 2
uiRxBufferPos:
	.zero	2
	.section	.bss.ucBuffer,"aw",@nobits
	.type	ucBuffer, @object
	.size	ucBuffer, 256
ucBuffer:
	.zero	256
	.section	.bss.bTxStateEnabled,"aw",@nobits
	.type	bTxStateEnabled, @object
	.size	bTxStateEnabled, 1
bTxStateEnabled:
	.zero	1
	.section	.bss.bRxStateEnabled,"aw",@nobits
	.type	bRxStateEnabled, @object
	.size	bRxStateEnabled, 1
bRxStateEnabled:
	.zero	1
	.section	.data.ucUartNumber,"aw",@progbits
	.type	ucUartNumber, @object
	.size	ucUartNumber, 1
ucUartNumber:
	.byte	2
	.section	.bss.xMbTaskHandle,"aw",@nobits
	.align	4
	.type	xMbTaskHandle, @object
	.size	xMbTaskHandle, 4
xMbTaskHandle:
	.zero	4
	.section	.bss.xMbUartQueue,"aw",@nobits
	.align	4
	.type	xMbUartQueue, @object
	.size	xMbUartQueue, 4
xMbUartQueue:
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x30
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
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/uart.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbport.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbf6
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x9
	.4byte	0xce
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4d
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x6f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x70
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x76
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0x58
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x6e
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xde
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x3f
	.4byte	0x17e
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xa
	.byte	0x45
	.4byte	0x153
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x4a
	.4byte	0x1ae
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xa
	.byte	0x4f
	.4byte	0x189
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x54
	.4byte	0x1de
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x5e
	.4byte	0x1fd
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.byte	0x62
	.4byte	0x1de
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x67
	.4byte	0x233
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
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xa
	.byte	0x6d
	.4byte	0x208
	.uleb128 0xc
	.byte	0x18
	.byte	0xa
	.byte	0x72
	.4byte	0x29b
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0xa
	.byte	0x73
	.4byte	0x62
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0xa
	.byte	0x74
	.4byte	0x17e
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0xa
	.byte	0x75
	.4byte	0x1fd
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0xa
	.byte	0x76
	.4byte	0x1ae
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0xa
	.byte	0x77
	.4byte	0x233
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0xa
	.byte	0x78
	.4byte	0x89
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0xa
	.byte	0x79
	.4byte	0x110
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xa
	.byte	0x7a
	.4byte	0x23e
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x89
	.4byte	0x2e9
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x93
	.4byte	0x2a6
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x98
	.4byte	0x315
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0x99
	.4byte	0x2e9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xa
	.byte	0x9a
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x9b
	.4byte	0x2f4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x1f
	.4byte	0x351
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xc
	.byte	0x42
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xc
	.byte	0x44
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xc
	.byte	0x45
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xc
	.byte	0x47
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xc
	.byte	0x4a
	.4byte	0xd0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x38
	.4byte	0x3a7
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xd
	.byte	0x3c
	.4byte	0x388
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x117
	.byte	0x3
	.4byte	0x40c
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x105
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x14e
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x40c
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x411
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x122
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x1b6
	.4byte	0x41c
	.byte	0
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x143
	.uleb128 0x7
	.4byte	0x416
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x451
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x1
	.byte	0x5e
	.4byte	0xb5
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.byte	0x60
	.4byte	0x372
	.uleb128 0x13
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0x68
	.4byte	0x372
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8a
	.4byte	0xce
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x8c
	.4byte	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	0x421
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x96
	.4byte	0x4ef
	.uleb128 0x18
	.4byte	0x42d
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	0x438
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x4c4
	.uleb128 0x1a
	.4byte	0x444
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0xb04
	.4byte	0x4e4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	ucBuffer
	.byte	0x22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0xb10
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL2
	.4byte	0xb1c
	.4byte	0x50e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL15
	.4byte	0xb28
	.4byte	0x521
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0xb28
	.4byte	0x534
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0xb10
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x594
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x1
	.byte	0x4a
	.4byte	0x351
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.byte	0x4a
	.4byte	0x351
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0xb34
	.uleb128 0x1e
	.4byte	.LVL21
	.4byte	0xb3f
	.uleb128 0x1e
	.4byte	.LVL22
	.4byte	0xb4b
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0xb57
	.byte	0
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x1
	.byte	0x78
	.4byte	0x351
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d8
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.byte	0x7a
	.4byte	0x351
	.byte	0
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.byte	0x7b
	.4byte	0x372
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF105
	.byte	0x1
	.byte	0x7c
	.4byte	0x351
	.4byte	.LLST6
	.byte	0
	.uleb128 0x24
	.4byte	.LASF118
	.byte	0x1
	.byte	0xb8
	.4byte	0x351
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x853
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x1
	.byte	0xb8
	.4byte	0x35c
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb8
	.4byte	0x37d
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb9
	.4byte	0x35c
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb9
	.4byte	0x3a7
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.byte	0xbb
	.4byte	0xe9
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	.LASF111
	.4byte	0x863
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6468
	.uleb128 0x23
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc0
	.4byte	0x35c
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LASF113
	.byte	0x1
	.byte	0xc1
	.4byte	0x35c
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0xde
	.4byte	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf6
	.4byte	0x117
	.uleb128 0x26
	.4byte	0x3b2
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xf6
	.4byte	0x708
	.uleb128 0x27
	.4byte	0x3c3
	.uleb128 0x6
	.byte	0x3
	.4byte	vUartTask
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x3cf
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC28
	.byte	0x9f
	.uleb128 0x28
	.4byte	0x3db
	.2byte	0x800
	.uleb128 0x29
	.4byte	0x3e7
	.byte	0
	.uleb128 0x29
	.4byte	0x3f3
	.byte	0xa
	.uleb128 0x27
	.4byte	0x3ff
	.uleb128 0x6
	.byte	0x3
	.4byte	xMbTaskHandle
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LVL63
	.4byte	0xb62
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	vUartTask
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0xb6e
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0xb79
	.4byte	0x74f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6468
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL42
	.4byte	0xb84
	.4byte	0x76d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL46
	.4byte	0xb8d
	.4byte	0x787
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL48
	.4byte	0xb6e
	.uleb128 0x1c
	.4byte	.LVL51
	.4byte	0xb79
	.4byte	0x7a4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL53
	.4byte	0xb99
	.4byte	0x7d3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	xMbUartQueue
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL55
	.4byte	0xb6e
	.uleb128 0x1c
	.4byte	.LVL57
	.4byte	0xb79
	.4byte	0x81b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6468
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL59
	.4byte	0xba5
	.4byte	0x82e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL61
	.4byte	0xb6e
	.uleb128 0x1e
	.4byte	.LVL64
	.4byte	0xbb1
	.uleb128 0x1e
	.4byte	.LVL65
	.4byte	0xb6e
	.uleb128 0x1e
	.4byte	.LVL66
	.4byte	0xb4b
	.byte	0
	.uleb128 0x2b
	.4byte	0xd7
	.4byte	0x863
	.uleb128 0x2c
	.4byte	0xc7
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x853
	.uleb128 0x2d
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x25
	.4byte	.LASF116
	.4byte	0x903
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6486
	.uleb128 0x1b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x8e0
	.uleb128 0x2e
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x109
	.4byte	0xe9
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LVL69
	.4byte	0xbbd
	.uleb128 0x2a
	.4byte	.LVL70
	.4byte	0xbc9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x109
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6486
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL67
	.4byte	0xb4b
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0xbb1
	.byte	0
	.uleb128 0x2b
	.4byte	0xd7
	.4byte	0x903
	.uleb128 0x2c
	.4byte	0xc7
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x8f3
	.uleb128 0x2f
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x10c
	.4byte	0x351
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x958
	.uleb128 0x30
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x10c
	.4byte	0x367
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x110
	.4byte	0x35c
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LVL74
	.4byte	0xbd4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x115
	.4byte	0x351
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa14
	.uleb128 0x30
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x115
	.4byte	0xa14
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	.LASF116
	.4byte	0xa2a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6494
	.uleb128 0x25
	.4byte	.LASF111
	.4byte	0xa2f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6495
	.uleb128 0x1c
	.4byte	.LVL77
	.4byte	0xbe0
	.4byte	0x9d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x117
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6494
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0xb6e
	.uleb128 0x2a
	.4byte	.LVL80
	.4byte	0xb79
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6495
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x367
	.uleb128 0x2b
	.4byte	0xd7
	.4byte	0xa2a
	.uleb128 0x2c
	.4byte	0xc7
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xa1a
	.uleb128 0x7
	.4byte	0xa1a
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x3d
	.4byte	0x138
	.uleb128 0x5
	.byte	0x3
	.4byte	xMbUartQueue
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0x3e
	.4byte	0x143
	.uleb128 0x5
	.byte	0x3
	.4byte	xMbTaskHandle
	.uleb128 0x31
	.string	"TAG"
	.byte	0x1
	.byte	0x3f
	.4byte	0xa68
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3051
	.sleb128 0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6e
	.uleb128 0x7
	.4byte	0x367
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x42
	.4byte	0x35c
	.uleb128 0x5
	.byte	0x3
	.4byte	ucUartNumber
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x44
	.4byte	0x351
	.uleb128 0x5
	.byte	0x3
	.4byte	bRxStateEnabled
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0x45
	.4byte	0x351
	.uleb128 0x5
	.byte	0x3
	.4byte	bTxStateEnabled
	.uleb128 0x2b
	.4byte	0x35c
	.4byte	0xab6
	.uleb128 0x2c
	.4byte	0xc7
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF129
	.byte	0x1
	.byte	0x47
	.4byte	0xaa6
	.uleb128 0x5
	.byte	0x3
	.4byte	ucBuffer
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x1
	.byte	0x48
	.4byte	0x372
	.uleb128 0x5
	.byte	0x3
	.4byte	uiRxBufferPos
	.uleb128 0x32
	.4byte	0x351
	.uleb128 0x33
	.4byte	.LASF131
	.byte	0xd
	.byte	0x6c
	.4byte	0xae8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad8
	.uleb128 0x33
	.4byte	.LASF132
	.byte	0xd
	.byte	0x6e
	.4byte	0xae8
	.uleb128 0x33
	.4byte	.LASF133
	.byte	0xd
	.byte	0x70
	.4byte	0xae8
	.uleb128 0x34
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x274
	.uleb128 0x34
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x28c
	.uleb128 0x34
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x38a
	.uleb128 0x34
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x665
	.uleb128 0x35
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x42d
	.uleb128 0x34
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x400
	.uleb128 0x35
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x59
	.uleb128 0x34
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x151
	.uleb128 0x35
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x6b
	.uleb128 0x36
	.4byte	.LASF160
	.4byte	.LASF160
	.uleb128 0x34
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x1f1
	.uleb128 0x34
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x215
	.uleb128 0x34
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x30a
	.uleb128 0x34
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x2fb
	.uleb128 0x34
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x220
	.uleb128 0x35
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x6
	.byte	0x4f
	.uleb128 0x34
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x250
	.uleb128 0x35
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xe
	.byte	0x29
	.uleb128 0x37
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x4d
	.byte	0x42
	.byte	0x5f
	.byte	0x53
	.byte	0x45
	.byte	0x52
	.byte	0x49
	.byte	0x41
	.byte	0x4c
	.byte	0
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x37
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x7
	.byte	0xa
	.2byte	0x102
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x7
	.byte	0xa
	.2byte	0x102
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x7
	.byte	0xa
	.2byte	0x102
	.byte	0x73
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL46-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL52
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL74-1
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LFE27
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"uart_driver_delete"
.LASF140:
	.string	"vTaskSuspend"
.LASF156:
	.string	"xTaskCreate"
.LASF15:
	.string	"size_t"
.LASF159:
	.string	"vMBPortSerialClose"
.LASF146:
	.string	"uart_driver_install"
.LASF47:
	.string	"UART_HW_FLOWCTRL_DISABLE"
.LASF3:
	.string	"__uint8_t"
.LASF145:
	.string	"uart_param_config"
.LASF71:
	.string	"type"
.LASF16:
	.string	"long int"
.LASF30:
	.string	"UART_DATA_7_BITS"
.LASF70:
	.string	"uart_event_type_t"
.LASF73:
	.string	"uart_event_t"
.LASF124:
	.string	"xMbUartQueue"
.LASF53:
	.string	"baud_rate"
.LASF61:
	.string	"UART_DATA"
.LASF154:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portserial.c"
.LASF26:
	.string	"QueueHandle_t"
.LASF56:
	.string	"stop_bits"
.LASF36:
	.string	"UART_STOP_BITS_2"
.LASF141:
	.string	"vMBPortExitCritical"
.LASF88:
	.string	"eMBParity"
.LASF136:
	.string	"xQueueGenericReceive"
.LASF105:
	.string	"bNeedPoll"
.LASF78:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"UART_STOP_BITS_MAX"
.LASF135:
	.string	"uart_flush_input"
.LASF72:
	.string	"size"
.LASF10:
	.string	"long long unsigned int"
.LASF117:
	.string	"__err_rc"
.LASF81:
	.string	"UCHAR"
.LASF142:
	.string	"xTaskCreatePinnedToCore"
.LASF113:
	.string	"ucData"
.LASF66:
	.string	"UART_PARITY_ERR"
.LASF31:
	.string	"UART_DATA_8_BITS"
.LASF144:
	.string	"esp_log_write"
.LASF27:
	.string	"TaskHandle_t"
.LASF97:
	.string	"usCnt"
.LASF151:
	.string	"uart_write_bytes"
.LASF85:
	.string	"MB_PAR_NONE"
.LASF89:
	.string	"pvTaskCode"
.LASF12:
	.string	"uint16_t"
.LASF114:
	.string	"xUartConfig"
.LASF23:
	.string	"BaseType_t"
.LASF109:
	.string	"eParity"
.LASF108:
	.string	"ucDataBits"
.LASF49:
	.string	"UART_HW_FLOWCTRL_CTS"
.LASF55:
	.string	"parity"
.LASF91:
	.string	"usStackDepth"
.LASF7:
	.string	"__uint32_t"
.LASF68:
	.string	"UART_PATTERN_DET"
.LASF110:
	.string	"xErr"
.LASF28:
	.string	"UART_DATA_5_BITS"
.LASF150:
	.string	"_esp_error_check_failed"
.LASF8:
	.string	"unsigned int"
.LASF39:
	.string	"UART_NUM_0"
.LASF40:
	.string	"UART_NUM_1"
.LASF119:
	.string	"xMBPortSerialPutByte"
.LASF18:
	.string	"long unsigned int"
.LASF64:
	.string	"UART_FIFO_OVF"
.LASF111:
	.string	"__FUNCTION__"
.LASF153:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF121:
	.string	"ucLength"
.LASF5:
	.string	"short unsigned int"
.LASF118:
	.string	"xMBPortSerialInit"
.LASF63:
	.string	"UART_BUFFER_FULL"
.LASF139:
	.string	"vTaskResume"
.LASF120:
	.string	"ucByte"
.LASF107:
	.string	"ulBaudRate"
.LASF134:
	.string	"uart_read_bytes"
.LASF33:
	.string	"uart_word_length_t"
.LASF80:
	.string	"BOOL"
.LASF60:
	.string	"uart_config_t"
.LASF77:
	.string	"ESP_LOG_INFO"
.LASF125:
	.string	"xMbTaskHandle"
.LASF104:
	.string	"usCount"
.LASF17:
	.string	"sizetype"
.LASF128:
	.string	"bTxStateEnabled"
.LASF143:
	.string	"esp_log_timestamp"
.LASF101:
	.string	"xMBPortSerialTxPoll"
.LASF69:
	.string	"UART_EVENT_MAX"
.LASF35:
	.string	"UART_STOP_BITS_1_5"
.LASF126:
	.string	"ucUartNumber"
.LASF83:
	.string	"USHORT"
.LASF45:
	.string	"UART_PARITY_ODD"
.LASF25:
	.string	"TickType_t"
.LASF59:
	.string	"use_ref_tick"
.LASF48:
	.string	"UART_HW_FLOWCTRL_RTS"
.LASF54:
	.string	"data_bits"
.LASF34:
	.string	"UART_STOP_BITS_1"
.LASF123:
	.string	"pucByte"
.LASF41:
	.string	"UART_NUM_2"
.LASF95:
	.string	"xEventSize"
.LASF92:
	.string	"pvParameters"
.LASF131:
	.string	"pxMBFrameCBByteReceived"
.LASF94:
	.string	"pvCreatedTask"
.LASF84:
	.string	"ULONG"
.LASF106:
	.string	"ucPORT"
.LASF138:
	.string	"vMBPortEnterCritical"
.LASF65:
	.string	"UART_FRAME_ERR"
.LASF22:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"usLength"
.LASF29:
	.string	"UART_DATA_6_BITS"
.LASF2:
	.string	"short int"
.LASF160:
	.string	"memset"
.LASF57:
	.string	"flow_ctrl"
.LASF75:
	.string	"ESP_LOG_ERROR"
.LASF62:
	.string	"UART_BREAK"
.LASF147:
	.string	"uart_set_rx_timeout"
.LASF116:
	.string	"__func__"
.LASF130:
	.string	"uiRxBufferPos"
.LASF67:
	.string	"UART_DATA_BREAK"
.LASF102:
	.string	"xEvent"
.LASF14:
	.string	"uint32_t"
.LASF132:
	.string	"pxMBFrameCBTransmitterEmpty"
.LASF137:
	.string	"xQueueGenericReset"
.LASF19:
	.string	"char"
.LASF79:
	.string	"ESP_LOG_VERBOSE"
.LASF157:
	.string	"vMBPortSerialRxPoll"
.LASF4:
	.string	"__uint16_t"
.LASF148:
	.string	"vTaskDelete"
.LASF74:
	.string	"ESP_LOG_NONE"
.LASF87:
	.string	"MB_PAR_EVEN"
.LASF82:
	.string	"CHAR"
.LASF44:
	.string	"UART_PARITY_EVEN"
.LASF129:
	.string	"ucBuffer"
.LASF6:
	.string	"__int32_t"
.LASF58:
	.string	"rx_flow_ctrl_thresh"
.LASF42:
	.string	"UART_NUM_MAX"
.LASF158:
	.string	"vUartTask"
.LASF127:
	.string	"bRxStateEnabled"
.LASF155:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF21:
	.string	"TaskFunction_t"
.LASF98:
	.string	"bRxEnable"
.LASF46:
	.string	"uart_parity_t"
.LASF43:
	.string	"UART_PARITY_DISABLE"
.LASF100:
	.string	"vMBPortSerialEnable"
.LASF115:
	.string	"xStatus"
.LASF52:
	.string	"uart_hw_flowcontrol_t"
.LASF38:
	.string	"uart_stop_bits_t"
.LASF76:
	.string	"ESP_LOG_WARN"
.LASF20:
	.string	"esp_err_t"
.LASF11:
	.string	"uint8_t"
.LASF99:
	.string	"bTxEnable"
.LASF112:
	.string	"ucParity"
.LASF152:
	.string	"__assert_func"
.LASF103:
	.string	"bStatus"
.LASF86:
	.string	"MB_PAR_ODD"
.LASF133:
	.string	"pxMBPortCBTimerExpired"
.LASF122:
	.string	"xMBPortSerialGetByte"
.LASF93:
	.string	"uxPriority"
.LASF51:
	.string	"UART_HW_FLOWCTRL_MAX"
.LASF50:
	.string	"UART_HW_FLOWCTRL_CTS_RTS"
.LASF90:
	.string	"pcName"
.LASF32:
	.string	"UART_DATA_BITS_MAX"
.LASF24:
	.string	"UBaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
