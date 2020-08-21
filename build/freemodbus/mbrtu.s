	.file	"mbrtu.c"
	.text
.Ltext0:
	.section	.text.eMBRTUInit,"ax",@progbits
	.literal_position
	.literal .LC0, 19200
	.literal .LC1, 1540000
	.align	4
	.global	eMBRTUInit
	.type	eMBRTUInit, @function
eMBRTUInit:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/rtu/mbrtu.c"
	.loc 1 82 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 87 0
	call8	vMBPortEnterCritical
.LVL2:
	.loc 1 82 0
	extui	a3, a3, 0, 8
	.loc 1 90 0
	mov.n	a13, a5
	movi.n	a12, 8
	mov.n	a11, a4
	mov.n	a10, a3
	call8	xMBPortSerialInit
.LVL3:
	bnei	a10, 1, .L2
	.loc 1 99 0
	l32r	a2, .LC0
.LVL4:
	.loc 1 101 0
	movi.n	a10, 0x23
	.loc 1 99 0
	bltu	a2, a4, .L3
	.loc 1 113 0
	l32r	a10, .LC1
	slli	a4, a4, 1
.LVL5:
	quou	a10, a10, a4
.LVL6:
.L3:
	.loc 1 115 0
	extui	a10, a10, 0, 16
.LVL7:
	call8	xMBPortTimersInit
.LVL8:
	.loc 1 83 0
	movi.n	a2, 0
	.loc 1 115 0
	beqi	a10, 1, .L4
.L2:
.LVL9:
	.loc 1 117 0
	movi.n	a2, 3
.LVL10:
.L4:
	.loc 1 120 0
	call8	vMBPortExitCritical
.LVL11:
	.loc 1 123 0
	retw.n
.LFE21:
	.size	eMBRTUInit, .-eMBRTUInit
	.section	.text.eMBRTUStart,"ax",@progbits
	.literal_position
	.literal .LC2, eRcvState
	.align	4
	.global	eMBRTUStart
	.type	eMBRTUStart, @function
eMBRTUStart:
.LFB22:
	.loc 1 127 0
	entry	sp, 32
.LCFI1:
	.loc 1 128 0
	call8	vMBPortEnterCritical
.LVL12:
	.loc 1 134 0
	l32r	a8, .LC2
	movi.n	a11, 0
	.loc 1 135 0
	movi.n	a10, 1
	.loc 1 134 0
	memw
	s32i.n	a11, a8, 0
	.loc 1 135 0
	call8	vMBPortSerialEnable
.LVL13:
	.loc 1 136 0
	call8	vMBPortTimersEnable
.LVL14:
	.loc 1 138 0
	call8	vMBPortExitCritical
.LVL15:
	retw.n
.LFE22:
	.size	eMBRTUStart, .-eMBRTUStart
	.section	.text.eMBRTUStop,"ax",@progbits
	.align	4
	.global	eMBRTUStop
	.type	eMBRTUStop, @function
eMBRTUStop:
.LFB23:
	.loc 1 143 0
	entry	sp, 32
.LCFI2:
	.loc 1 144 0
	call8	vMBPortEnterCritical
.LVL16:
	.loc 1 145 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	vMBPortSerialEnable
.LVL17:
	.loc 1 146 0
	call8	vMBPortTimersDisable
.LVL18:
	.loc 1 147 0
	call8	vMBPortExitCritical
.LVL19:
	retw.n
.LFE23:
	.size	eMBRTUStop, .-eMBRTUStop
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"usRcvBufferPos < MB_SER_PDU_SIZE_MAX"
.LC7:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/rtu/mbrtu.c"
	.section	.text.eMBRTUReceive,"ax",@progbits
	.literal_position
	.literal .LC3, usRcvBufferPos
	.literal .LC5, .LC4
	.literal .LC6, __func__$6659
	.literal .LC8, .LC7
	.literal .LC9, ucRTUBuf
	.literal .LC10, ucRTUBuf+1
	.align	4
	.global	eMBRTUReceive
	.type	eMBRTUReceive, @function
eMBRTUReceive:
.LFB24:
	.loc 1 156 0
.LVL20:
	entry	sp, 32
.LCFI3:
.LVL21:
	.loc 1 160 0
	call8	vMBPortEnterCritical
.LVL22:
	.loc 1 161 0
	l32r	a5, .LC3
	movi	a6, 0xff
	l16ui	a8, a5, 0
	extui	a8, a8, 0, 16
	bgeu	a6, a8, .L10
	.loc 1 161 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	l32r	a10, .LC8
	movi	a11, 0xa1
	call8	__assert_func
.LVL23:
.L10:
	.loc 1 164 0 is_stmt 1
	l16ui	a8, a5, 0
	extui	a8, a8, 0, 16
	bgeui	a8, 4, .L11
.L13:
	.loc 1 183 0
	movi.n	a2, 5
.LVL24:
	j	.L12
.LVL25:
.L11:
	.loc 1 165 0
	l16ui	a11, a5, 0
	l32r	a6, .LC9
	extui	a11, a11, 0, 16
	mov.n	a10, a6
	call8	usMBCRC16
.LVL26:
	bnez.n	a10, .L13
	.loc 1 170 0
	l8ui	a6, a6, 0
	s8i	a6, a2, 0
	.loc 1 175 0
	l16ui	a2, a5, 0
.LVL27:
	addi	a2, a2, -3
	s16i	a2, a4, 0
	.loc 1 178 0
	l32r	a2, .LC10
	s32i.n	a2, a3, 0
.LVL28:
	.loc 1 158 0
	mov.n	a2, a10
.LVL29:
.L12:
	.loc 1 186 0
	call8	vMBPortExitCritical
.LVL30:
	.loc 1 188 0
	retw.n
.LFE24:
	.size	eMBRTUReceive, .-eMBRTUReceive
	.section	.text.eMBRTUSend,"ax",@progbits
	.literal_position
	.literal .LC11, eRcvState
	.literal .LC12, pucSndBufferCur
	.literal .LC13, usSndBufferCount
	.literal .LC14, ucRTUBuf
	.literal .LC15, eSndState
	.align	4
	.global	eMBRTUSend
	.type	eMBRTUSend, @function
eMBRTUSend:
.LFB25:
	.loc 1 193 0
.LVL31:
	entry	sp, 32
.LCFI4:
.LVL32:
	.loc 1 197 0
	call8	vMBPortEnterCritical
.LVL33:
	.loc 1 193 0
	extui	a7, a2, 0, 8
	.loc 1 203 0
	l32r	a2, .LC11
.LVL34:
	.loc 1 193 0
	extui	a4, a4, 0, 16
	.loc 1 203 0
	memw
	l32i.n	a6, a2, 0
	.loc 1 224 0
	movi.n	a2, 5
	.loc 1 203 0
	bnei	a6, 1, .L15
	.loc 1 207 0
	l32r	a5, .LC13
	.loc 1 206 0
	addi.n	a10, a3, -1
	.loc 1 207 0
	memw
	s16i	a6, a5, 0
	.loc 1 210 0
	memw
	s8i	a7, a10, 0
	.loc 1 211 0
	l16ui	a3, a5, 0
.LVL35:
	.loc 1 206 0
	l32r	a2, .LC12
	.loc 1 211 0
	add.n	a4, a4, a3
.LVL36:
	extui	a4, a4, 0, 16
	memw
	s16i	a4, a5, 0
	.loc 1 214 0
	l16ui	a11, a5, 0
	.loc 1 206 0
	s32i.n	a10, a2, 0
	.loc 1 214 0
	extui	a11, a11, 0, 16
	call8	usMBCRC16
.LVL37:
	.loc 1 215 0
	l16ui	a9, a5, 0
	l32r	a2, .LC14
	extui	a9, a9, 0, 16
	addi.n	a3, a9, 1
	extui	a3, a3, 0, 16
	memw
	s16i	a3, a5, 0
	add.n	a9, a2, a9
	extui	a3, a10, 0, 8
	memw
	s8i	a3, a9, 0
	.loc 1 216 0
	l16ui	a9, a5, 0
	extui	a10, a10, 8, 8
.LVL38:
	extui	a8, a9, 0, 16
	addi.n	a3, a8, 1
	extui	a3, a3, 0, 16
	memw
	s16i	a3, a5, 0
	add.n	a8, a2, a8
	.loc 1 219 0
	l32r	a2, .LC15
	.loc 1 216 0
	memw
	s8i	a10, a8, 0
	.loc 1 220 0
	mov.n	a11, a6
	movi.n	a10, 0
	.loc 1 219 0
	memw
	s32i.n	a6, a2, 0
	.loc 1 220 0
	call8	vMBPortSerialEnable
.LVL39:
	.loc 1 194 0
	movi.n	a2, 0
.L15:
.LVL40:
	.loc 1 226 0
	call8	vMBPortExitCritical
.LVL41:
	.loc 1 228 0
	retw.n
.LFE25:
	.size	eMBRTUSend, .-eMBRTUSend
	.section	.rodata.str1.1
.LC17:
	.string	"eSndState == STATE_TX_IDLE"
	.section	.text.xMBRTUReceiveFSM,"ax",@progbits
	.literal_position
	.literal .LC16, eSndState
	.literal .LC18, .LC17
	.literal .LC19, __func__$6672
	.literal .LC20, .LC7
	.literal .LC21, eRcvState
	.literal .LC22, usRcvBufferPos
	.literal .LC23, ucRTUBuf
	.align	4
	.global	xMBRTUReceiveFSM
	.type	xMBRTUReceiveFSM, @function
xMBRTUReceiveFSM:
.LFB26:
	.loc 1 232 0
	entry	sp, 48
.LCFI5:
.LVL42:
	.loc 1 236 0
	l32r	a2, .LC16
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L18
	.loc 1 236 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC20
	movi	a11, 0xec
	call8	__assert_func
.LVL43:
.L18:
	.loc 1 239 0 is_stmt 1
	mov.n	a10, sp
	call8	xMBPortSerialGetByte
.LVL44:
	.loc 1 241 0
	l32r	a9, .LC21
	memw
	l32i.n	a8, a9, 0
	beqi	a8, 1, .L20
	beqz.n	a8, .L25
	beqi	a8, 2, .L22
	beqi	a8, 3, .L25
	j	.L19
.L20:
	.loc 1 262 0
	l32r	a10, .LC22
	memw
	s16i	a2, a10, 0
	.loc 1 263 0
	l16ui	a8, a10, 0
	l8ui	a2, sp, 0
	extui	a8, a8, 0, 16
	addi.n	a11, a8, 1
	extui	a11, a11, 0, 16
	memw
	s16i	a11, a10, 0
	l32r	a10, .LC23
	add.n	a8, a10, a8
	memw
	s8i	a2, a8, 0
	.loc 1 264 0
	movi.n	a2, 2
	j	.L26
.L22:
	.loc 1 276 0
	l32r	a10, .LC22
	movi	a2, 0xff
	l16ui	a8, a10, 0
	extui	a8, a8, 0, 16
	bltu	a2, a8, .L24
	.loc 1 278 0
	l16ui	a8, a10, 0
	l8ui	a2, sp, 0
	extui	a8, a8, 0, 16
	addi.n	a9, a8, 1
	extui	a9, a9, 0, 16
	memw
	s16i	a9, a10, 0
	l32r	a9, .LC23
	add.n	a8, a9, a8
	memw
	s8i	a2, a8, 0
	j	.L25
.L24:
	.loc 1 282 0
	movi.n	a2, 3
.L26:
	memw
	s32i.n	a2, a9, 0
.L25:
	.loc 1 284 0
	call8	vMBPortTimersEnable
.LVL45:
.L19:
	.loc 1 288 0
	movi.n	a2, 0
	retw.n
.LFE26:
	.size	xMBRTUReceiveFSM, .-xMBRTUReceiveFSM
	.section	.rodata.str1.1
.LC25:
	.string	"eRcvState == STATE_RX_IDLE"
	.section	.text.xMBRTUTransmitFSM,"ax",@progbits
	.literal_position
	.literal .LC24, eRcvState
	.literal .LC26, .LC25
	.literal .LC27, __func__$6682
	.literal .LC28, .LC7
	.literal .LC29, eSndState
	.literal .LC30, usSndBufferCount
	.literal .LC31, pucSndBufferCur
	.align	4
	.global	xMBRTUTransmitFSM
	.type	xMBRTUTransmitFSM, @function
xMBRTUTransmitFSM:
.LFB27:
	.loc 1 292 0
	entry	sp, 32
.LCFI6:
.LVL46:
	.loc 1 295 0
	l32r	a2, .LC24
	memw
	l32i.n	a10, a2, 0
	beqi	a10, 1, .L28
	.loc 1 295 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
	movi	a11, 0x127
	call8	__assert_func
.LVL47:
.L28:
	.loc 1 297 0 is_stmt 1
	l32r	a5, .LC29
	memw
	l32i.n	a4, a5, 0
	beqz.n	a4, .L30
	beqi	a4, 1, .L31
	j	.L34
.L30:
	.loc 1 303 0
	mov.n	a11, a4
	call8	vMBPortSerialEnable
.LVL48:
	.loc 1 293 0
	mov.n	a2, a4
	.loc 1 304 0
	retw.n
.L31:
	.loc 1 308 0
	l32r	a2, .LC30
	l16ui	a3, a2, 0
	extui	a3, a3, 0, 16
	beqz.n	a3, .L32
	.loc 1 310 0
	l32r	a3, .LC31
	l32i.n	a4, a3, 0
	l8ui	a10, a4, 0
	extui	a10, a10, 0, 8
	call8	xMBPortSerialPutByte
.LVL49:
	.loc 1 311 0
	l32i.n	a4, a3, 0
	addi.n	a4, a4, 1
	s32i.n	a4, a3, 0
	.loc 1 312 0
	l16ui	a3, a2, 0
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 16
	memw
	s16i	a3, a2, 0
	j	.L34
.L32:
	.loc 1 316 0
	movi.n	a10, 3
	call8	xMBPortEventPost
.LVL50:
	mov.n	a2, a10
.LVL51:
	.loc 1 319 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	vMBPortSerialEnable
.LVL52:
	.loc 1 320 0
	memw
	s32i.n	a3, a5, 0
	retw.n
.LVL53:
.L34:
	.loc 1 293 0
	movi.n	a2, 0
.LVL54:
	.loc 1 326 0
	retw.n
.LFE27:
	.size	xMBRTUTransmitFSM, .-xMBRTUTransmitFSM
	.section	.rodata.str1.1
.LC33:
	.string	"( eRcvState == STATE_RX_INIT ) || ( eRcvState == STATE_RX_RCV ) || ( eRcvState == STATE_RX_ERROR )"
	.section	.text.xMBRTUTimerT35Expired,"ax",@progbits
	.literal_position
	.literal .LC32, eRcvState
	.literal .LC34, .LC33
	.literal .LC35, __func__$6695
	.literal .LC36, .LC7
	.align	4
	.global	xMBRTUTimerT35Expired
	.type	xMBRTUTimerT35Expired, @function
xMBRTUTimerT35Expired:
.LFB28:
	.loc 1 330 0
	entry	sp, 32
.LCFI7:
.LVL55:
	.loc 1 333 0
	l32r	a8, .LC32
	memw
	l32i.n	a10, a8, 0
	mov.n	a3, a8
	beqi	a10, 2, .L37
	beqi	a10, 3, .L42
	bnez.n	a10, .L45
	j	.L46
.L37:
	.loc 1 343 0
	movi.n	a10, 1
.L46:
	call8	xMBPortEventPost
.LVL56:
	mov.n	a2, a10
.LVL57:
	.loc 1 344 0
	j	.L38
.LVL58:
.L45:
	.loc 1 352 0
	memw
	l32i.n	a2, a8, 0
	beqz.n	a2, .L38
	.loc 1 352 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a2, a8, 0
	beqi	a2, 2, .L42
	.loc 1 352 0 discriminator 2
	memw
	l32i.n	a8, a8, 0
	.loc 1 331 0 is_stmt 1 discriminator 2
	movi.n	a2, 0
	.loc 1 352 0 discriminator 2
	beqi	a8, 3, .L38
	.loc 1 352 0 is_stmt 0 discriminator 3
	l32r	a13, .LC34
	l32r	a12, .LC35
	l32r	a10, .LC36
	movi	a11, 0x161
	call8	__assert_func
.LVL59:
.L42:
	.loc 1 331 0 is_stmt 1
	movi.n	a2, 0
.LVL60:
.L38:
	.loc 1 356 0
	call8	vMBPortTimersDisable
.LVL61:
	.loc 1 357 0
	movi.n	a8, 1
	memw
	s32i.n	a8, a3, 0
	.loc 1 360 0
	retw.n
.LFE28:
	.size	xMBRTUTimerT35Expired, .-xMBRTUTimerT35Expired
	.section	.rodata.__func__$6695,"a",@progbits
	.type	__func__$6695, @object
	.size	__func__$6695, 22
__func__$6695:
	.string	"xMBRTUTimerT35Expired"
	.section	.rodata.__func__$6682,"a",@progbits
	.type	__func__$6682, @object
	.size	__func__$6682, 18
__func__$6682:
	.string	"xMBRTUTransmitFSM"
	.section	.rodata.__func__$6672,"a",@progbits
	.type	__func__$6672, @object
	.size	__func__$6672, 17
__func__$6672:
	.string	"xMBRTUReceiveFSM"
	.section	.rodata.__func__$6659,"a",@progbits
	.type	__func__$6659, @object
	.size	__func__$6659, 14
__func__$6659:
	.string	"eMBRTUReceive"
	.section	.bss.usRcvBufferPos,"aw",@nobits
	.align	2
	.type	usRcvBufferPos, @object
	.size	usRcvBufferPos, 2
usRcvBufferPos:
	.zero	2
	.section	.bss.usSndBufferCount,"aw",@nobits
	.align	2
	.type	usSndBufferCount, @object
	.size	usSndBufferCount, 2
usSndBufferCount:
	.zero	2
	.section	.bss.pucSndBufferCur,"aw",@nobits
	.align	4
	.type	pucSndBufferCur, @object
	.size	pucSndBufferCur, 4
pucSndBufferCur:
	.zero	4
	.comm	ucRTUBuf,256,1
	.section	.bss.eRcvState,"aw",@nobits
	.align	4
	.type	eRcvState, @object
	.size	eRcvState, 4
eRcvState:
	.zero	4
	.section	.bss.eSndState,"aw",@nobits
	.align	4
	.type	eSndState, @object
	.size	eSndState, 4
eSndState:
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbport.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mb.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/rtu/mbcrc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x792
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x42
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x44
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x45
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x47
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x4a
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x29
	.4byte	0xdc
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x38
	.4byte	0xfb
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x3c
	.4byte	0xdc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x71
	.4byte	0x14f
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7a
	.4byte	0x112
	.uleb128 0x7
	.byte	0x4
	.4byte	0x106
	.uleb128 0x7
	.byte	0x4
	.4byte	0x166
	.uleb128 0x8
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x37
	.4byte	0x190
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3c
	.4byte	0x16b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x3f
	.4byte	0x1b4
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x1
	.byte	0x42
	.4byte	0x19b
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.byte	0x51
	.4byte	0x14f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x51
	.4byte	0x8b
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x51
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x51
	.4byte	0xac
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1
	.byte	0x51
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x53
	.4byte	0x14f
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x54
	.4byte	0xac
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x71c
	.4byte	0x25c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0x727
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x732
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x73d
	.4byte	0x2a5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x748
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0x732
	.byte	0
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0xd
	.4byte	.LVL16
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x73d
	.4byte	0x2ee
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL18
	.4byte	0x753
	.uleb128 0xd
	.4byte	.LVL19
	.4byte	0x732
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.byte	0x9b
	.4byte	0x14f
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9b
	.4byte	0x106
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9b
	.4byte	0x15a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9b
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9d
	.4byte	0x80
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9e
	.4byte	0x14f
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF62
	.4byte	0x3d6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6659
	.uleb128 0xd
	.4byte	.LVL22
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LVL23
	.4byte	0x75e
	.4byte	0x3a8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6659
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x769
	.4byte	0x3bc
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL30
	.4byte	0x732
	.byte	0
	.uleb128 0x12
	.4byte	0x72
	.4byte	0x3d6
	.uleb128 0x13
	.4byte	0x64
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0x3c6
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc0
	.4byte	0x14f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x482
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc0
	.4byte	0x8b
	.4byte	.LLST7
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc0
	.4byte	0x160
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc0
	.4byte	0xa1
	.4byte	.LLST9
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc2
	.4byte	0x14f
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x1
	.byte	0xc3
	.4byte	0xa1
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LVL33
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LVL37
	.4byte	0x769
	.4byte	0x45f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x31
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LVL39
	.4byte	0x73d
	.4byte	0x478
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL41
	.4byte	0x732
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe7
	.4byte	0x80
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x511
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe9
	.4byte	0x80
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0xea
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF62
	.4byte	0x521
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6672
	.uleb128 0xe
	.4byte	.LVL43
	.4byte	0x75e
	.4byte	0x4f3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xec
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6672
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0xe
	.4byte	.LVL44
	.4byte	0x774
	.4byte	0x507
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LVL45
	.4byte	0x748
	.byte	0
	.uleb128 0x12
	.4byte	0x72
	.4byte	0x521
	.uleb128 0x13
	.4byte	0x64
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x511
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x123
	.4byte	0x80
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x125
	.4byte	0x80
	.4byte	.LLST12
	.uleb128 0x11
	.4byte	.LASF62
	.4byte	0x5e6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6682
	.uleb128 0xe
	.4byte	.LVL47
	.4byte	0x75e
	.4byte	0x58f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x127
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6682
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0xe
	.4byte	.LVL48
	.4byte	0x73d
	.4byte	0x5a3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL49
	.4byte	0x77f
	.uleb128 0xe
	.4byte	.LVL50
	.4byte	0x78a
	.4byte	0x5bf
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x73d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x72
	.4byte	0x5e6
	.uleb128 0x13
	.4byte	0x64
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.4byte	0x5d6
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x149
	.4byte	0x80
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x667
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14b
	.4byte	0x80
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF62
	.4byte	0x677
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6695
	.uleb128 0xd
	.4byte	.LVL56
	.4byte	0x78a
	.uleb128 0xe
	.4byte	.LVL59
	.4byte	0x75e
	.4byte	0x65d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x161
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6695
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0xd
	.4byte	.LVL61
	.4byte	0x753
	.byte	0
	.uleb128 0x12
	.4byte	0x72
	.4byte	0x677
	.uleb128 0x13
	.4byte	0x64
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	0x667
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x45
	.4byte	0x68d
	.uleb128 0x5
	.byte	0x3
	.4byte	eSndState
	.uleb128 0x19
	.4byte	0x1b4
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x46
	.4byte	0x6a3
	.uleb128 0x5
	.byte	0x3
	.4byte	eRcvState
	.uleb128 0x19
	.4byte	0x190
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4a
	.4byte	0x6b9
	.uleb128 0x5
	.byte	0x3
	.4byte	pucSndBufferCur
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0x19
	.4byte	0x8b
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4b
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	usSndBufferCount
	.uleb128 0x19
	.4byte	0xa1
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4d
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	usRcvBufferPos
	.uleb128 0x12
	.4byte	0x8b
	.4byte	0x6fb
	.uleb128 0x13
	.4byte	0x64
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1
	.byte	0x48
	.4byte	0x70c
	.uleb128 0x5
	.byte	0x3
	.4byte	ucRTUBuf
	.uleb128 0x19
	.4byte	0x6eb
	.uleb128 0x1b
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x2
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x3
	.byte	0x47
	.uleb128 0x1b
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x3
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x2
	.byte	0x59
	.uleb128 0x1b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x3
	.byte	0x4e
	.uleb128 0x1b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x3
	.byte	0x59
	.uleb128 0x1b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x3
	.byte	0x5b
	.uleb128 0x1b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0x29
	.uleb128 0x1b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.byte	0x22
	.uleb128 0x1b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x3
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x3
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF82
	.4byte	.LASF82
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37-1
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
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
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
.LASF61:
	.string	"ucByte"
.LASF86:
	.string	"ucRTUBuf"
.LASF12:
	.string	"BOOL"
.LASF36:
	.string	"STATE_RX_RCV"
.LASF59:
	.string	"xMBRTUReceiveFSM"
.LASF64:
	.string	"xNeedPoll"
.LASF49:
	.string	"eMBRTUStop"
.LASF66:
	.string	"eSndState"
.LASF38:
	.string	"eMBRcvState"
.LASF15:
	.string	"USHORT"
.LASF4:
	.string	"short int"
.LASF17:
	.string	"EV_READY"
.LASF76:
	.string	"vMBPortTimersEnable"
.LASF51:
	.string	"eMBRTUReceive"
.LASF8:
	.string	"sizetype"
.LASF37:
	.string	"STATE_RX_ERROR"
.LASF57:
	.string	"usLength"
.LASF5:
	.string	"long long int"
.LASF52:
	.string	"pucRcvAddress"
.LASF26:
	.string	"MB_ENOREG"
.LASF25:
	.string	"MB_ENOERR"
.LASF48:
	.string	"eMBRTUStart"
.LASF42:
	.string	"ucSlaveAddress"
.LASF68:
	.string	"pucSndBufferCur"
.LASF29:
	.string	"MB_ENORES"
.LASF71:
	.string	"vMBPortEnterCritical"
.LASF18:
	.string	"EV_FRAME_RECEIVED"
.LASF74:
	.string	"vMBPortExitCritical"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/rtu/mbrtu.c"
.LASF21:
	.string	"MB_PAR_NONE"
.LASF81:
	.string	"xMBPortSerialPutByte"
.LASF72:
	.string	"xMBPortSerialInit"
.LASF53:
	.string	"pucFrame"
.LASF32:
	.string	"MB_ETIMEDOUT"
.LASF7:
	.string	"long int"
.LASF46:
	.string	"eStatus"
.LASF55:
	.string	"xFrameReceived"
.LASF14:
	.string	"CHAR"
.LASF70:
	.string	"usRcvBufferPos"
.LASF19:
	.string	"EV_EXECUTE"
.LASF28:
	.string	"MB_EPORTERR"
.LASF79:
	.string	"usMBCRC16"
.LASF3:
	.string	"unsigned char"
.LASF41:
	.string	"eMBSndState"
.LASF62:
	.string	"__func__"
.LASF16:
	.string	"ULONG"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"ucPort"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"EV_FRAME_SENT"
.LASF31:
	.string	"MB_EILLSTATE"
.LASF69:
	.string	"usSndBufferCount"
.LASF80:
	.string	"xMBPortSerialGetByte"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"eMBRTUSend"
.LASF13:
	.string	"UCHAR"
.LASF35:
	.string	"STATE_RX_IDLE"
.LASF44:
	.string	"ulBaudRate"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF63:
	.string	"xMBRTUTransmitFSM"
.LASF1:
	.string	"short unsigned int"
.LASF45:
	.string	"eParity"
.LASF67:
	.string	"eRcvState"
.LASF10:
	.string	"char"
.LASF39:
	.string	"STATE_TX_IDLE"
.LASF50:
	.string	"eMBRTUInit"
.LASF33:
	.string	"eMBErrorCode"
.LASF34:
	.string	"STATE_RX_INIT"
.LASF11:
	.string	"_Bool"
.LASF9:
	.string	"long unsigned int"
.LASF40:
	.string	"STATE_TX_XMIT"
.LASF22:
	.string	"MB_PAR_ODD"
.LASF23:
	.string	"MB_PAR_EVEN"
.LASF73:
	.string	"xMBPortTimersInit"
.LASF24:
	.string	"eMBParity"
.LASF60:
	.string	"xTaskNeedSwitch"
.LASF47:
	.string	"usTimerT35_50us"
.LASF54:
	.string	"pusLength"
.LASF77:
	.string	"vMBPortTimersDisable"
.LASF30:
	.string	"MB_EIO"
.LASF78:
	.string	"__assert_func"
.LASF83:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF65:
	.string	"xMBRTUTimerT35Expired"
.LASF82:
	.string	"xMBPortEventPost"
.LASF75:
	.string	"vMBPortSerialEnable"
.LASF27:
	.string	"MB_EINVAL"
.LASF58:
	.string	"usCRC16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
