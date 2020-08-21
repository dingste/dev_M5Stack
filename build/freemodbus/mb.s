	.file	"mb.c"
	.text
.Ltext0:
	.section	.text.eMBInit,"ax",@progbits
	.literal_position
	.literal .LC0, ucMBAddress
	.literal .LC1, pvMBFrameStartCur
	.literal .LC2, eMBRTUStart
	.literal .LC3, pvMBFrameStopCur
	.literal .LC4, eMBRTUStop
	.literal .LC5, peMBFrameSendCur
	.literal .LC6, eMBRTUSend
	.literal .LC7, peMBFrameReceiveCur
	.literal .LC8, eMBRTUReceive
	.literal .LC9, pvMBFrameCloseCur
	.literal .LC10, pxMBFrameCBByteReceived
	.literal .LC11, xMBRTUReceiveFSM
	.literal .LC12, pxMBFrameCBTransmitterEmpty
	.literal .LC13, xMBRTUTransmitFSM
	.literal .LC14, pxMBPortCBTimerExpired
	.literal .LC15, xMBRTUTimerT35Expired
	.literal .LC16, eMBState
	.align	4
	.global	eMBInit
	.type	eMBInit, @function
eMBInit:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/mb.c"
	.loc 1 131 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 131 0
	extui	a10, a3, 0, 8
	.loc 1 135 0
	addi.n	a8, a10, -1
	extui	a8, a8, 0, 8
	movi	a14, 0xf6
	.loc 1 131 0
	mov.n	a9, a2
	mov.n	a12, a5
	mov.n	a13, a6
	extui	a11, a4, 0, 8
	.loc 1 138 0
	movi.n	a2, 2
.LVL2:
	.loc 1 135 0
	bltu	a14, a8, .L2
	.loc 1 142 0
	l32r	a8, .LC0
	s8i	a10, a8, 0
	.loc 1 144 0
	bnez.n	a9, .L2
	.loc 1 148 0
	l32r	a8, .LC2
	l32r	a2, .LC1
	s32i.n	a8, a2, 0
	.loc 1 149 0
	l32r	a8, .LC4
	l32r	a2, .LC3
	s32i.n	a8, a2, 0
	.loc 1 150 0
	l32r	a8, .LC6
	l32r	a2, .LC5
	s32i.n	a8, a2, 0
	.loc 1 151 0
	l32r	a8, .LC8
	l32r	a2, .LC7
	s32i.n	a8, a2, 0
	.loc 1 152 0
	l32r	a2, .LC9
	.loc 1 153 0
	l32r	a8, .LC11
	.loc 1 152 0
	s32i.n	a9, a2, 0
	.loc 1 153 0
	l32r	a2, .LC10
	s32i.n	a8, a2, 0
	.loc 1 154 0
	l32r	a8, .LC13
	l32r	a2, .LC12
	s32i.n	a8, a2, 0
	.loc 1 155 0
	l32r	a2, .LC14
	l32r	a8, .LC15
	s32i.n	a8, a2, 0
	.loc 1 157 0
	call8	eMBRTUInit
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 178 0
	bnez.n	a10, .L2
	.loc 1 180 0
	call8	xMBPortEventInit
.LVL5:
	beqz.n	a10, .L6
	.loc 1 188 0
	l32r	a8, .LC16
	movi.n	a9, 1
	s32i.n	a9, a8, 0
	retw.n
.L6:
	.loc 1 183 0
	movi.n	a2, 3
.LVL6:
.L2:
	.loc 1 193 0
	retw.n
.LFE21:
	.size	eMBInit, .-eMBInit
	.section	.text.eMBRegisterCB,"ax",@progbits
	.literal_position
	.literal .LC20, xFuncHandlers
	.align	4
	.global	eMBRegisterCB
	.type	eMBRegisterCB, @function
eMBRegisterCB:
.LFB22:
	.loc 1 227 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 227 0
	extui	a4, a2, 0, 8
	.loc 1 231 0
	sext	a8, a4, 7
	.loc 1 266 0
	movi.n	a2, 2
.LVL8:
	.loc 1 231 0
	blti	a8, 1, .L8
	.loc 1 233 0
	call8	vMBPortEnterCritical
.LVL9:
	l32r	a10, .LC20
	.loc 1 234 0
	beqz.n	a3, .L9
	movi.n	a8, 0
	mov.n	a12, a10
	.loc 1 238 0
	movi.n	a13, 1
	mov.n	a14, a8
	movi.n	a2, 0x10
	loop	a2, .L13_LEND
.L13:
.LVL10:
	.loc 1 238 0
	l32i.n	a9, a12, 4
	.loc 1 238 0
	mov.n	a11, a14
	moveqz	a11, a13, a9
	extui	a11, a11, 0, 8
	bnez.n	a11, .L18
	sub	a9, a3, a9
	moveqz	a11, a13, a9
	beqz.n	a11, .L10
.L18:
	.loc 1 241 0
	addx8	a8, a8, a10
.LVL11:
	s8i	a4, a8, 0
	.loc 1 242 0
	s32i.n	a3, a8, 4
.LVL12:
.L16:
	.loc 1 246 0
	movi.n	a2, 0
	j	.L12
.LVL13:
.L10:
	.loc 1 236 0 discriminator 2
	addi.n	a8, a8, 1
.LVL14:
	addi.n	a12, a12, 8
	.L13_LEND:
	.loc 1 246 0
	movi.n	a2, 4
	j	.L12
.LVL15:
.L9:
	mov.n	a9, a10
	.loc 1 234 0
	movi.n	a8, 0x10
	loop	a8, .L15_LEND
.LVL16:
.L15:
	.loc 1 252 0
	l8ui	a2, a9, 0
	bne	a2, a4, .L14
	.loc 1 254 0
	addx8	a3, a3, a10
.LVL17:
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 255 0
	movi.n	a2, 0
	s32i.n	a2, a3, 4
	.loc 1 256 0
	j	.L12
.LVL18:
.L14:
	.loc 1 250 0 discriminator 2
	addi.n	a3, a3, 1
.LVL19:
	addi.n	a9, a9, 8
	.L15_LEND:
	j	.L16
.LVL20:
.L12:
	.loc 1 262 0
	call8	vMBPortExitCritical
.LVL21:
.L8:
	.loc 1 269 0
	retw.n
.LFE22:
	.size	eMBRegisterCB, .-eMBRegisterCB
	.section	.text.eMBClose,"ax",@progbits
	.literal_position
	.literal .LC21, eMBState
	.literal .LC22, pvMBFrameCloseCur
	.align	4
	.global	eMBClose
	.type	eMBClose, @function
eMBClose:
.LFB23:
	.loc 1 274 0
	entry	sp, 32
.LCFI2:
.LVL22:
	.loc 1 277 0
	l32r	a2, .LC21
	l32i.n	a8, a2, 0
	.loc 1 286 0
	movi.n	a2, 6
	.loc 1 277 0
	bnei	a8, 1, .L22
	.loc 1 279 0
	l32r	a2, .LC22
	l32i.n	a8, a2, 0
	.loc 1 275 0
	movi.n	a2, 0
	.loc 1 279 0
	beq	a8, a2, .L22
	.loc 1 281 0
	callx8	a8
.LVL23:
.L22:
	.loc 1 289 0
	retw.n
.LFE23:
	.size	eMBClose, .-eMBClose
	.section	.text.eMBEnable,"ax",@progbits
	.literal_position
	.literal .LC23, eMBState
	.literal .LC24, pvMBFrameStartCur
	.align	4
	.global	eMBEnable
	.type	eMBEnable, @function
eMBEnable:
.LFB24:
	.loc 1 293 0
	entry	sp, 32
.LCFI3:
.LVL24:
	.loc 1 296 0
	l32r	a3, .LC23
	.loc 1 304 0
	movi.n	a2, 6
	.loc 1 296 0
	l32i.n	a8, a3, 0
	bnei	a8, 1, .L27
	.loc 1 299 0
	l32r	a2, .LC24
	l32i.n	a2, a2, 0
	callx8	a2
.LVL25:
	.loc 1 300 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
.L27:
.LVL26:
	.loc 1 307 0
	retw.n
.LFE24:
	.size	eMBEnable, .-eMBEnable
	.section	.text.eMBDisable,"ax",@progbits
	.literal_position
	.literal .LC25, eMBState
	.literal .LC26, pvMBFrameStopCur
	.align	4
	.global	eMBDisable
	.type	eMBDisable, @function
eMBDisable:
.LFB25:
	.loc 1 311 0
	entry	sp, 32
.LCFI4:
	.loc 1 314 0
	l32r	a3, .LC25
	l32i.n	a2, a3, 0
	bnez.n	a2, .L30
	.loc 1 316 0
	l32r	a8, .LC26
	l32i.n	a8, a8, 0
	callx8	a8
.LVL27:
	.loc 1 317 0
	movi.n	a8, 1
	s32i.n	a8, a3, 0
.LVL28:
	retw.n
.LVL29:
.L30:
	.loc 1 326 0
	addi.n	a8, a2, -1
	movi.n	a3, 0
	movi.n	a2, 6
	moveqz	a2, a3, a8
.LVL30:
	.loc 1 329 0
	retw.n
.LFE25:
	.size	eMBDisable, .-eMBDisable
	.section	.text.eMBPoll,"ax",@progbits
	.literal_position
	.literal .LC27, eMBState
	.literal .LC28, peMBFrameReceiveCur
	.literal .LC29, usLength$6713
	.literal .LC30, ucMBFrame$6710
	.literal .LC31, ucRcvAddress$6711
	.literal .LC32, ucMBAddress
	.literal .LC33, ucFunctionCode$6712
	.literal .LC34, eException$6714
	.literal .LC35, xFuncHandlers
	.literal .LC36, peMBFrameSendCur
	.align	4
	.global	eMBPoll
	.type	eMBPoll, @function
eMBPoll:
.LFB26:
	.loc 1 333 0
	entry	sp, 48
.LCFI5:
.LVL31:
	.loc 1 345 0
	l32r	a2, .LC27
	l32i.n	a3, a2, 0
	.loc 1 347 0
	movi.n	a2, 6
	.loc 1 345 0
	bnez.n	a3, .L34
	.loc 1 352 0
	mov.n	a10, sp
	call8	xMBPortEventGet
.LVL32:
	mov.n	a8, a10
	beqi	a10, 1, .L35
	j	.L61
.L35:
	.loc 1 354 0
	l32i.n	a4, sp, 0
	beqi	a4, 1, .L36
	beqi	a4, 2, .L37
	j	.L60
.L36:
	.loc 1 360 0
	l32r	a3, .LC28
	l32r	a2, .LC31
	l32i.n	a3, a3, 0
	l32r	a12, .LC29
	l32r	a11, .LC30
	mov.n	a10, a2
	callx8	a3
.LVL33:
	.loc 1 361 0
	bnez.n	a10, .L61
	.loc 1 364 0
	l32r	a3, .LC32
	l8ui	a2, a2, 0
	l8ui	a3, a3, 0
	sub	a3, a3, a2
	moveqz	a10, a4, a3
.LVL34:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L46
	moveqz	a10, a4, a2
	extui	a10, a10, 0, 8
	beqz.n	a10, .L61
.L46:
	.loc 1 366 0
	movi.n	a10, 2
	call8	xMBPortEventPost
.LVL35:
	j	.L61
.LVL36:
.L37:
	.loc 1 372 0
	l32r	a2, .LC30
	.loc 1 373 0
	l32r	a4, .LC34
	.loc 1 372 0
	l32i.n	a10, a2, 0
	l32r	a5, .LC33
	l8ui	a12, a10, 0
	.loc 1 373 0
	s32i.n	a8, a4, 0
.LVL37:
	l32r	a8, .LC35
	.loc 1 372 0
	s8i	a12, a5, 0
	mov.n	a13, a8
	movi.n	a9, 0x10
	loop	a9, .L42_LEND
.LVL38:
.L42:
	.loc 1 377 0
	l8ui	a11, a8, 0
	beqz.n	a11, .L40
	.loc 1 381 0
	bne	a12, a11, .L41
	.loc 1 383 0
	addx8	a3, a3, a13
.LVL39:
	l32i.n	a3, a3, 4
	l32r	a11, .LC29
	callx8	a3
.LVL40:
	s32i.n	a10, a4, 0
	.loc 1 384 0
	j	.L40
.LVL41:
.L41:
	.loc 1 374 0 discriminator 2
	addi.n	a3, a3, 1
.LVL42:
	addi.n	a8, a8, 8
	.L42_LEND:
.LVL43:
.L40:
	.loc 1 390 0
	l32r	a3, .LC31
	l8ui	a3, a3, 0
	beqz.n	a3, .L61
	.loc 1 392 0
	l32i.n	a4, a4, 0
	l32r	a8, .LC29
	beqz.n	a4, .L43
	.loc 1 396 0
	movi.n	a3, 1
	l8ui	a5, a5, 0
	s16i	a3, a8, 0
	l32i.n	a9, a2, 0
	movi	a3, -0x80
	or	a3, a5, a3
	s8i	a3, a9, 0
	.loc 1 397 0
	l16ui	a3, a8, 0
	l32i.n	a5, a2, 0
	addi.n	a9, a3, 1
	s16i	a9, a8, 0
	add.n	a3, a5, a3
	s8i	a4, a3, 0
.L43:
	.loc 1 403 0
	l32r	a3, .LC36
	l32i.n	a11, a2, 0
	l32r	a2, .LC32
	l32i.n	a3, a3, 0
	l16ui	a12, a8, 0
	l8ui	a10, a2, 0
	callx8	a3
.LVL44:
.L61:
	.loc 1 411 0
	movi.n	a2, 0
	retw.n
.LVL45:
.L60:
	mov.n	a2, a3
.L34:
	.loc 1 412 0
	retw.n
.LFE26:
	.size	eMBPoll, .-eMBPoll
	.section	.bss.eException$6714,"aw",@nobits
	.align	4
	.type	eException$6714, @object
	.size	eException$6714, 4
eException$6714:
	.zero	4
	.section	.bss.ucFunctionCode$6712,"aw",@nobits
	.type	ucFunctionCode$6712, @object
	.size	ucFunctionCode$6712, 1
ucFunctionCode$6712:
	.zero	1
	.section	.bss.usLength$6713,"aw",@nobits
	.align	2
	.type	usLength$6713, @object
	.size	usLength$6713, 2
usLength$6713:
	.zero	2
	.section	.bss.ucMBFrame$6710,"aw",@nobits
	.align	4
	.type	ucMBFrame$6710, @object
	.size	ucMBFrame$6710, 4
ucMBFrame$6710:
	.zero	4
	.section	.bss.ucRcvAddress$6711,"aw",@nobits
	.type	ucRcvAddress$6711, @object
	.size	ucRcvAddress$6711, 1
ucRcvAddress$6711:
	.zero	1
	.section	.data.xFuncHandlers,"aw",@progbits
	.align	4
	.type	xFuncHandlers, @object
	.size	xFuncHandlers, 128
xFuncHandlers:
	.byte	4
	.zero	3
	.word	eMBFuncReadInputRegister
	.byte	3
	.zero	3
	.word	eMBFuncReadHoldingRegister
	.byte	16
	.zero	3
	.word	eMBFuncWriteMultipleHoldingRegister
	.byte	6
	.zero	3
	.word	eMBFuncWriteHoldingRegister
	.byte	23
	.zero	3
	.word	eMBFuncReadWriteMultipleHoldingRegister
	.byte	1
	.zero	3
	.word	eMBFuncReadCoils
	.byte	5
	.zero	3
	.word	eMBFuncWriteCoil
	.byte	15
	.zero	3
	.word	eMBFuncWriteMultipleCoils
	.byte	2
	.zero	3
	.word	eMBFuncReadDiscreteInputs
	.zero	56
	.comm	pxMBFrameCBTransmitFSMCur,4,4
	.comm	pxMBFrameCBReceiveFSMCur,4,4
	.comm	pxMBPortCBTimerExpired,4,4
	.comm	pxMBFrameCBTransmitterEmpty,4,4
	.comm	pxMBFrameCBByteReceived,4,4
	.section	.bss.pvMBFrameCloseCur,"aw",@nobits
	.align	4
	.type	pvMBFrameCloseCur, @object
	.size	pvMBFrameCloseCur, 4
pvMBFrameCloseCur:
	.zero	4
	.section	.bss.peMBFrameReceiveCur,"aw",@nobits
	.align	4
	.type	peMBFrameReceiveCur, @object
	.size	peMBFrameReceiveCur, 4
peMBFrameReceiveCur:
	.zero	4
	.section	.bss.pvMBFrameStopCur,"aw",@nobits
	.align	4
	.type	pvMBFrameStopCur, @object
	.size	pvMBFrameStopCur, 4
pvMBFrameStopCur:
	.zero	4
	.section	.bss.pvMBFrameStartCur,"aw",@nobits
	.align	4
	.type	pvMBFrameStartCur, @object
	.size	pvMBFrameStartCur, 4
pvMBFrameStartCur:
	.zero	4
	.section	.bss.peMBFrameSendCur,"aw",@nobits
	.align	4
	.type	peMBFrameSendCur, @object
	.size	peMBFrameSendCur, 4
peMBFrameSendCur:
	.zero	4
	.section	.data.eMBState,"aw",@progbits
	.align	4
	.type	eMBState, @object
	.size	eMBState, 4
eMBState:
	.word	2
	.section	.bss.ucMBAddress,"aw",@nobits
	.type	ucMBAddress, @object
	.size	ucMBAddress, 1
ucMBAddress:
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbport.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mb.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbframe.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/rtu/mbrtu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6b1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.4byte	.LASF98
	.4byte	.LASF99
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x78
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x42
	.4byte	0x79
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x44
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x47
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x4a
	.4byte	0x6b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x29
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2e
	.4byte	0xb3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x38
	.4byte	0x102
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x3
	.byte	0x3c
	.4byte	0xe3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x3b
	.4byte	0x156
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x46
	.4byte	0x10d
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x4
	.byte	0x48
	.4byte	0x16c
	.uleb128 0x4
	.byte	0x4
	.4byte	0x172
	.uleb128 0x9
	.4byte	0x156
	.4byte	0x186
	.uleb128 0xa
	.4byte	0x186
	.uleb128 0xa
	.4byte	0x18c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.4byte	0x9d
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0x4a
	.4byte	0x1b3
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4c
	.4byte	0x92
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4d
	.4byte	0x161
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4e
	.4byte	0x192
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x56
	.4byte	0x1dd
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x5a
	.4byte	0x1be
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x71
	.4byte	0x225
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x5
	.byte	0x7a
	.4byte	0x1e8
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0x46
	.4byte	0x72
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x6
	.byte	0x48
	.4byte	0x72
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x6
	.byte	0x4a
	.4byte	0x251
	.uleb128 0x4
	.byte	0x4
	.4byte	0x257
	.uleb128 0x9
	.4byte	0x225
	.4byte	0x270
	.uleb128 0xa
	.4byte	0x186
	.uleb128 0xa
	.4byte	0x270
	.uleb128 0xa
	.4byte	0x18c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x186
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x6
	.byte	0x4e
	.4byte	0x281
	.uleb128 0x4
	.byte	0x4
	.4byte	0x287
	.uleb128 0x9
	.4byte	0x225
	.4byte	0x2a0
	.uleb128 0xa
	.4byte	0x92
	.uleb128 0xa
	.4byte	0x2a0
	.uleb128 0xa
	.4byte	0x9d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2a6
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0x52
	.4byte	0x72
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x42
	.4byte	0x2d5
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x82
	.4byte	0x225
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x376
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0x82
	.4byte	0x1dd
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x82
	.4byte	0x92
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x82
	.4byte	0x92
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x82
	.4byte	0xa8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x82
	.4byte	0x102
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x84
	.4byte	0x225
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x672
	.4byte	0x36c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x67d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe2
	.4byte	0x225
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe2
	.4byte	0x92
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe2
	.4byte	0x161
	.4byte	.LLST3
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0xe5
	.4byte	0x225
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x688
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x693
	.byte	0
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x111
	.4byte	0x225
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x405
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x113
	.4byte	0x225
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x124
	.4byte	0x225
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x438
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x126
	.4byte	0x225
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LVL25
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x136
	.4byte	0x225
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x138
	.4byte	0x225
	.4byte	.LLST7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x14c
	.4byte	0x225
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56f
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x14e
	.4byte	0x186
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBFrame$6710
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x14f
	.4byte	0x92
	.uleb128 0x5
	.byte	0x3
	.4byte	ucRcvAddress$6711
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x150
	.4byte	0x92
	.uleb128 0x5
	.byte	0x3
	.4byte	ucFunctionCode$6712
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x151
	.4byte	0x9d
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6713
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x152
	.4byte	0x156
	.uleb128 0x5
	.byte	0x3
	.4byte	eException$6714
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0x33
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x155
	.4byte	0x225
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x156
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0x69e
	.4byte	0x518
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL33
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x53d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBFrame$6710
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6713
	.byte	0
	.uleb128 0x12
	.4byte	.LVL35
	.4byte	0x6a9
	.4byte	0x550
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL40
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x566
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6713
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL44
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3e
	.4byte	0x92
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBAddress
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3f
	.4byte	0x1dd
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0x46
	.4byte	0x2b6
	.uleb128 0x5
	.byte	0x3
	.4byte	eMBState
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0x4b
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	peMBFrameSendCur
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0x4c
	.4byte	0x230
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameStartCur
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4d
	.4byte	0x23b
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameStopCur
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4e
	.4byte	0x246
	.uleb128 0x5
	.byte	0x3
	.4byte	peMBFrameReceiveCur
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4f
	.4byte	0x2ab
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameCloseCur
	.uleb128 0x1f
	.4byte	0x1b3
	.4byte	0x601
	.uleb128 0x20
	.4byte	0x64
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5f
	.4byte	0x5f1
	.uleb128 0x5
	.byte	0x3
	.4byte	xFuncHandlers
	.uleb128 0x21
	.4byte	0x87
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.byte	0x55
	.4byte	0x628
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBByteReceived
	.uleb128 0x4
	.byte	0x4
	.4byte	0x612
	.uleb128 0x22
	.4byte	.LASF87
	.byte	0x1
	.byte	0x56
	.4byte	0x628
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBTransmitterEmpty
	.uleb128 0x22
	.4byte	.LASF88
	.byte	0x1
	.byte	0x57
	.4byte	0x628
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBPortCBTimerExpired
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x1
	.byte	0x59
	.4byte	0x628
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBReceiveFSMCur
	.uleb128 0x22
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5a
	.4byte	0x628
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBTransmitFSMCur
	.uleb128 0x23
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0x25
	.uleb128 0x23
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x3
	.byte	0x3f
	.uleb128 0x23
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x2
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x2
	.byte	0x59
	.uleb128 0x23
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x3
	.byte	0x43
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	.LASF96
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF16:
	.string	"EV_READY"
.LASF12:
	.string	"BOOL"
.LASF87:
	.string	"pxMBFrameCBTransmitterEmpty"
.LASF73:
	.string	"ucMBFrame"
.LASF42:
	.string	"MB_TCP"
.LASF72:
	.string	"eMBPoll"
.LASF37:
	.string	"ucFunctionCode"
.LASF14:
	.string	"USHORT"
.LASF4:
	.string	"short int"
.LASF84:
	.string	"pvMBFrameCloseCur"
.LASF25:
	.string	"MB_EX_NONE"
.LASF8:
	.string	"sizetype"
.LASF41:
	.string	"MB_ASCII"
.LASF95:
	.string	"xMBPortEventGet"
.LASF43:
	.string	"eMBMode"
.LASF70:
	.string	"eMBEnable"
.LASF30:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF86:
	.string	"pxMBFrameCBByteReceived"
.LASF34:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF62:
	.string	"ucSlaveAddress"
.LASF78:
	.string	"ucMBAddress"
.LASF48:
	.string	"MB_ENORES"
.LASF28:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF27:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF17:
	.string	"EV_FRAME_RECEIVED"
.LASF57:
	.string	"pvMBFrameClose"
.LASF55:
	.string	"peMBFrameReceive"
.LASF58:
	.string	"STATE_ENABLED"
.LASF71:
	.string	"eMBDisable"
.LASF94:
	.string	"vMBPortExitCritical"
.LASF54:
	.string	"pvMBFrameStop"
.LASF45:
	.string	"MB_ENOREG"
.LASF21:
	.string	"MB_PAR_NONE"
.LASF5:
	.string	"long long int"
.LASF65:
	.string	"eParity"
.LASF53:
	.string	"pvMBFrameStart"
.LASF85:
	.string	"xFuncHandlers"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"eStatus"
.LASF93:
	.string	"vMBPortEnterCritical"
.LASF88:
	.string	"pxMBPortCBTimerExpired"
.LASF35:
	.string	"eMBException"
.LASF89:
	.string	"pxMBFrameCBReceiveFSMCur"
.LASF74:
	.string	"ucRcvAddress"
.LASF67:
	.string	"eMBRegisterCB"
.LASF47:
	.string	"MB_EPORTERR"
.LASF31:
	.string	"MB_EX_SLAVE_BUSY"
.LASF3:
	.string	"unsigned char"
.LASF44:
	.string	"MB_ENOERR"
.LASF15:
	.string	"ULONG"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"ucPort"
.LASF6:
	.string	"long long unsigned int"
.LASF19:
	.string	"EV_FRAME_SENT"
.LASF50:
	.string	"MB_EILLSTATE"
.LASF98:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/mb.c"
.LASF77:
	.string	"eEvent"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"UCHAR"
.LASF81:
	.string	"pvMBFrameStartCur"
.LASF64:
	.string	"ulBaudRate"
.LASF99:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF80:
	.string	"peMBFrameSendCur"
.LASF92:
	.string	"xMBPortEventInit"
.LASF36:
	.string	"pxMBFunctionHandler"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"eMBInit"
.LASF56:
	.string	"peMBFrameSend"
.LASF10:
	.string	"char"
.LASF83:
	.string	"peMBFrameReceiveCur"
.LASF20:
	.string	"eMBEventType"
.LASF46:
	.string	"MB_EINVAL"
.LASF91:
	.string	"eMBRTUInit"
.LASF52:
	.string	"eMBErrorCode"
.LASF61:
	.string	"eMode"
.LASF33:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF11:
	.string	"_Bool"
.LASF38:
	.string	"pxHandler"
.LASF39:
	.string	"xMBFunctionHandler"
.LASF82:
	.string	"pvMBFrameStopCur"
.LASF9:
	.string	"long unsigned int"
.LASF75:
	.string	"usLength"
.LASF79:
	.string	"eMBState"
.LASF22:
	.string	"MB_PAR_ODD"
.LASF76:
	.string	"eException"
.LASF23:
	.string	"MB_PAR_EVEN"
.LASF24:
	.string	"eMBParity"
.LASF40:
	.string	"MB_RTU"
.LASF59:
	.string	"STATE_DISABLED"
.LASF97:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF60:
	.string	"STATE_NOT_INITIALIZED"
.LASF32:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF49:
	.string	"MB_EIO"
.LASF29:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF100:
	.string	"eMBCurrentMode"
.LASF18:
	.string	"EV_EXECUTE"
.LASF69:
	.string	"eMBClose"
.LASF96:
	.string	"xMBPortEventPost"
.LASF51:
	.string	"MB_ETIMEDOUT"
.LASF90:
	.string	"pxMBFrameCBTransmitFSMCur"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
