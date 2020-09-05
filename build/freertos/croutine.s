	.file	"croutine.c"
	.text
.Ltext0:
	.section	.text.xCoRoutineCreate,"ax",@progbits
	.literal_position
	.literal .LC0, pxCurrentCoRoutine
	.literal .LC1, pxReadyCoRoutineLists
	.literal .LC2, pxReadyCoRoutineLists+20
	.literal .LC3, xDelayedCoRoutineList1
	.literal .LC4, xDelayedCoRoutineList2
	.literal .LC5, xPendingReadyCoRoutineList
	.literal .LC6, pxDelayedCoRoutineList
	.literal .LC7, pxOverflowDelayedCoRoutineList
	.literal .LC8, uxTopCoRoutineReadyPriority
	.align	4
	.global	xCoRoutineCreate
	.type	xCoRoutineCreate, @function
xCoRoutineCreate:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c"
	.loc 1 142 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 148 0
	movi.n	a10, 0x38
	call8	malloc
.LVL1:
	mov.n	a7, a10
.LVL2:
	.loc 1 192 0
	movi.n	a5, -1
	.loc 1 149 0
	beqz.n	a10, .L2
	.loc 1 153 0
	l32r	a6, .LC0
	l32r	a5, .LC1
	l32i.n	a8, a6, 0
	bnez.n	a8, .L3
	.loc 1 155 0
	s32i.n	a10, a6, 0
.LVL3:
.LBB4:
.LBB5:
	.loc 1 354 0
	mov.n	a10, a5
	call8	vListInitialise
.LVL4:
	l32r	a10, .LC2
	call8	vListInitialise
.LVL5:
	.loc 1 357 0
	l32r	a10, .LC3
	call8	vListInitialise
.LVL6:
	.loc 1 358 0
	l32r	a6, .LC4
	mov.n	a10, a6
	call8	vListInitialise
.LVL7:
	.loc 1 359 0
	l32r	a10, .LC5
	call8	vListInitialise
.LVL8:
	.loc 1 363 0
	l32r	a8, .LC3
	l32r	a9, .LC6
	s32i.n	a8, a9, 0
	.loc 1 364 0
	l32r	a8, .LC7
	s32i.n	a6, a8, 0
.LVL9:
.L3:
	movi.n	a6, 1
	minu	a3, a3, a6
.LVL10:
.LBE5:
.LBE4:
	.loc 1 168 0
	s32i.n	a4, a7, 48
	.loc 1 166 0
	movi.n	a6, 0
	.loc 1 172 0
	addi.n	a4, a7, 4
.LVL11:
	.loc 1 167 0
	s32i.n	a3, a7, 44
	.loc 1 169 0
	s32i.n	a2, a7, 0
	.loc 1 172 0
	mov.n	a10, a4
	.loc 1 166 0
	s16i	a6, a7, 52
	.loc 1 172 0
	call8	vListInitialiseItem
.LVL12:
	.loc 1 173 0
	addi	a10, a7, 24
	.loc 1 182 0
	movi.n	a2, 2
.LVL13:
	.loc 1 173 0
	call8	vListInitialiseItem
.LVL14:
	.loc 1 182 0
	sub	a3, a2, a3
.LVL15:
	.loc 1 186 0
	l32r	a2, .LC8
	.loc 1 182 0
	s32i.n	a3, a7, 24
	.loc 1 186 0
	l32i.n	a10, a7, 44
	l32i.n	a3, a2, 0
	.loc 1 178 0
	s32i.n	a7, a7, 16
	.loc 1 179 0
	s32i.n	a7, a7, 36
	.loc 1 186 0
	bgeu	a3, a10, .L4
	.loc 1 186 0 is_stmt 0 discriminator 1
	s32i.n	a10, a2, 0
.L4:
	.loc 1 186 0 discriminator 3
	addx4	a10, a10, a10
	addx4	a10, a10, a5
	mov.n	a11, a4
	call8	vListInsertEnd
.LVL16:
	.loc 1 188 0 is_stmt 1 discriminator 3
	movi.n	a5, 1
.LVL17:
.L2:
	.loc 1 196 0
	mov.n	a2, a5
	retw.n
.LFE27:
	.size	xCoRoutineCreate, .-xCoRoutineCreate
	.section	.text.vCoRoutineAddToDelayedList,"ax",@progbits
	.literal_position
	.literal .LC9, xCoRoutineTickCount
	.literal .LC10, pxCurrentCoRoutine
	.literal .LC11, pxOverflowDelayedCoRoutineList
	.literal .LC12, pxDelayedCoRoutineList
	.align	4
	.global	vCoRoutineAddToDelayedList
	.type	vCoRoutineAddToDelayedList, @function
vCoRoutineAddToDelayedList:
.LFB28:
	.loc 1 200 0
.LVL18:
	entry	sp, 32
.LCFI1:
	.loc 1 210 0
	l32r	a4, .LC10
	.loc 1 205 0
	l32r	a5, .LC9
	.loc 1 210 0
	l32i.n	a10, a4, 0
	.loc 1 205 0
	l32i.n	a8, a5, 0
	.loc 1 210 0
	addi.n	a10, a10, 4
	.loc 1 205 0
	add.n	a2, a2, a8
.LVL19:
	.loc 1 210 0
	call8	uxListRemove
.LVL20:
	.loc 1 213 0
	l32i.n	a11, a4, 0
	.loc 1 215 0
	l32i.n	a5, a5, 0
	.loc 1 213 0
	s32i.n	a2, a11, 4
	addi.n	a11, a11, 4
	.loc 1 215 0
	bgeu	a2, a5, .L7
	.loc 1 219 0
	l32r	a2, .LC11
.LVL21:
	j	.L13
.LVL22:
.L7:
	.loc 1 225 0
	l32r	a2, .LC12
.LVL23:
.L13:
	l32i.n	a10, a2, 0
	call8	vListInsert
.LVL24:
	.loc 1 228 0
	beqz.n	a3, .L6
	.loc 1 232 0
	l32i.n	a11, a4, 0
	mov.n	a10, a3
	addi	a11, a11, 24
	call8	vListInsert
.LVL25:
.L6:
	retw.n
.LFE28:
	.size	vCoRoutineAddToDelayedList, .-vCoRoutineAddToDelayedList
	.section	.text.vCoRoutineSchedule,"ax",@progbits
	.literal_position
	.literal .LC13, xPendingReadyCoRoutineList
	.literal .LC14, uxTopCoRoutineReadyPriority
	.literal .LC15, pxReadyCoRoutineLists
	.literal .LC16, xPassedTicks
	.literal .LC17, xLastTickCount
	.literal .LC18, xCoRoutineTickCount
	.literal .LC19, pxDelayedCoRoutineList
	.literal .LC20, pxOverflowDelayedCoRoutineList
	.literal .LC21, pxCurrentCoRoutine
	.align	4
	.global	vCoRoutineSchedule
	.type	vCoRoutineSchedule, @function
vCoRoutineSchedule:
.LFB31:
	.loc 1 319 0
	entry	sp, 32
.LCFI2:
.LBB17:
.LBB18:
	.loc 1 242 0
	l32r	a3, .LC13
	j	.L15
.L17:
.LBB19:
.LBB20:
	.loc 1 247 0
#APP
# 247 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c" 1
	rsil	a2, 3

# 0 "" 2
.LVL26:
#NO_APP
.LBE20:
	.loc 1 249 0
	l32i.n	a2, a3, 12
	l32i.n	a2, a2, 12
.LVL27:
	.loc 1 250 0
	addi	a10, a2, 24
	call8	uxListRemove
.LVL28:
.LBB21:
	.loc 1 252 0
#APP
# 252 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c" 1
	rsil	a4, 0

# 0 "" 2
.LVL29:
#NO_APP
.LBE21:
	.loc 1 254 0
	addi.n	a4, a2, 4
	mov.n	a10, a4
	call8	uxListRemove
.LVL30:
	.loc 1 255 0
	l32i.n	a10, a2, 44
	l32r	a2, .LC14
.LVL31:
	l32i.n	a5, a2, 0
	bgeu	a5, a10, .L16
	s32i.n	a10, a2, 0
.L16:
	l32r	a2, .LC15
	addx4	a10, a10, a10
	mov.n	a11, a4
	addx4	a10, a10, a2
	call8	vListInsertEnd
.LVL32:
.L15:
.LBE19:
	.loc 1 242 0
	l32i.n	a2, a3, 0
	bnez.n	a2, .L17
.LBE18:
.LBE17:
.LBB22:
.LBB23:
	.loc 1 264 0
	call8	xTaskGetTickCount
.LVL33:
	l32r	a3, .LC17
	l32r	a2, .LC16
	l32i.n	a4, a3, 0
	l32r	a3, .LC18
	sub	a10, a10, a4
	s32i.n	a10, a2, 0
	j	.L35
.L24:
	.loc 1 267 0
	l32i.n	a5, a3, 0
	.loc 1 268 0
	addi.n	a4, a4, -1
	.loc 1 267 0
	addi.n	a5, a5, 1
	.loc 1 268 0
	s32i.n	a4, a2, 0
	.loc 1 267 0
	s32i.n	a5, a3, 0
	l32r	a4, .LC19
	.loc 1 271 0
	bnez.n	a5, .L19
.LBB24:
	.loc 1 278 0
	l32r	a5, .LC20
	.loc 1 277 0
	l32i.n	a6, a4, 0
.LVL34:
	.loc 1 278 0
	l32i.n	a7, a5, 0
	.loc 1 279 0
	s32i.n	a6, a5, 0
	.loc 1 278 0
	s32i.n	a7, a4, 0
.LVL35:
.L19:
.LBE24:
	.loc 1 310 0
	l32r	a5, .LC14
	j	.L20
.L23:
	.loc 1 285 0
	l32i.n	a6, a6, 12
	.loc 1 287 0
	l32i.n	a9, a3, 0
	.loc 1 285 0
	l32i.n	a7, a6, 12
.LVL36:
	.loc 1 287 0
	l32i.n	a6, a7, 4
	bltu	a9, a6, .L35
.LBB25:
	.loc 1 293 0
#APP
# 293 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c" 1
	rsil	a6, 3

# 0 "" 2
.LVL37:
#NO_APP
.LBE25:
	.loc 1 300 0
	addi.n	a6, a7, 4
	mov.n	a10, a6
	call8	uxListRemove
.LVL38:
	.loc 1 303 0
	l32i.n	a9, a7, 40
	beqz.n	a9, .L21
	.loc 1 305 0
	addi	a10, a7, 24
	call8	uxListRemove
.LVL39:
.L21:
.LBB26:
	.loc 1 308 0
#APP
# 308 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c" 1
	rsil	a9, 0

# 0 "" 2
.LVL40:
#NO_APP
.LBE26:
	.loc 1 310 0
	l32i.n	a10, a7, 44
	l32i.n	a7, a5, 0
.LVL41:
	bgeu	a7, a10, .L22
	s32i.n	a10, a5, 0
.L22:
	mov.n	a11, a6
	l32r	a6, .LC15
.LVL42:
	addx4	a10, a10, a10
	addx4	a10, a10, a6
	call8	vListInsertEnd
.LVL43:
.L20:
	.loc 1 283 0
	l32i.n	a6, a4, 0
	l32i.n	a7, a6, 0
	bnez.n	a7, .L23
.L35:
	.loc 1 265 0
	l32i.n	a4, a2, 0
	bnez.n	a4, .L24
	.loc 1 314 0
	l32i.n	a2, a3, 0
	l32r	a3, .LC17
.LBE23:
.LBE22:
	.loc 1 327 0
	l32r	a9, .LC15
.LBB28:
.LBB27:
	.loc 1 314 0
	s32i.n	a2, a3, 0
	l32r	a2, .LC14
	l32i.n	a8, a2, 0
.LBE27:
.LBE28:
	.loc 1 327 0
	addx4	a3, a8, a8
	addx4	a3, a3, a9
	l32i.n	a3, a3, 0
	bnez.n	a3, .L25
	.loc 1 329 0
	beqz.n	a8, .L14
	.loc 1 334 0
	addi.n	a8, a8, -1
	.loc 1 327 0
	addx4	a3, a8, a8
	addx4	a3, a3, a9
	l32i.n	a3, a3, 0
	beqz.n	a3, .L27
	j	.L38
.L25:
.LVL44:
.LBB29:
	.loc 1 339 0
	slli	a10, a8, 2
	add.n	a11, a10, a8
	addx4	a11, a11, a9
	l32i.n	a2, a11, 4
	addi.n	a3, a11, 8
	l32i.n	a2, a2, 4
	s32i.n	a2, a11, 4
	bne	a2, a3, .L30
	.loc 1 339 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 4
	s32i.n	a2, a11, 4
.L30:
	.loc 1 339 0 discriminator 3
	add.n	a8, a10, a8
.LVL45:
	addx4	a9, a8, a9
	l32i.n	a2, a9, 4
	l32i.n	a10, a2, 12
	l32r	a2, .LC21
.LBE29:
	.loc 1 342 0 is_stmt 1 discriminator 3
	l32i.n	a11, a10, 48
.LBB30:
	.loc 1 339 0 discriminator 3
	s32i.n	a10, a2, 0
.LBE30:
	.loc 1 342 0 discriminator 3
	l32i.n	a2, a10, 0
	callx8	a2
.LVL46:
	.loc 1 344 0 discriminator 3
	retw.n
.L27:
	s32i.n	a8, a2, 0
	retw.n
.L38:
	s32i.n	a8, a2, 0
	j	.L25
.L14:
	retw.n
.LFE31:
	.size	vCoRoutineSchedule, .-vCoRoutineSchedule
	.section	.text.xCoRoutineRemoveFromEventList,"ax",@progbits
	.literal_position
	.literal .LC22, xPendingReadyCoRoutineList
	.literal .LC23, pxCurrentCoRoutine
	.align	4
	.global	xCoRoutineRemoveFromEventList
	.type	xCoRoutineRemoveFromEventList, @function
xCoRoutineRemoveFromEventList:
.LFB33:
	.loc 1 369 0
.LVL47:
	entry	sp, 32
.LCFI3:
	.loc 1 376 0
	l32i.n	a2, a2, 12
.LVL48:
	l32i.n	a3, a2, 12
.LVL49:
	.loc 1 377 0
	addi	a2, a3, 24
	mov.n	a10, a2
	call8	uxListRemove
.LVL50:
	.loc 1 378 0
	l32r	a10, .LC22
	mov.n	a11, a2
	call8	vListInsertEnd
.LVL51:
	.loc 1 380 0
	l32r	a2, .LC23
.LVL52:
	.loc 1 389 0
	l32i.n	a8, a3, 44
	.loc 1 380 0
	l32i.n	a9, a2, 0
	.loc 1 389 0
	movi.n	a2, 1
.LVL53:
	l32i.n	a3, a9, 44
.LVL54:
	bgeu	a8, a3, .L40
	movi.n	a2, 0
.L40:
	.loc 1 390 0
	retw.n
.LFE33:
	.size	xCoRoutineRemoveFromEventList, .-xCoRoutineRemoveFromEventList
	.section	.bss.xPassedTicks,"aw",@nobits
	.align	4
	.type	xPassedTicks, @object
	.size	xPassedTicks, 4
xPassedTicks:
	.zero	4
	.section	.bss.xLastTickCount,"aw",@nobits
	.align	4
	.type	xLastTickCount, @object
	.size	xLastTickCount, 4
xLastTickCount:
	.zero	4
	.section	.bss.xCoRoutineTickCount,"aw",@nobits
	.align	4
	.type	xCoRoutineTickCount, @object
	.size	xCoRoutineTickCount, 4
xCoRoutineTickCount:
	.zero	4
	.section	.bss.uxTopCoRoutineReadyPriority,"aw",@nobits
	.align	4
	.type	uxTopCoRoutineReadyPriority, @object
	.size	uxTopCoRoutineReadyPriority, 4
uxTopCoRoutineReadyPriority:
	.zero	4
	.global	pxCurrentCoRoutine
	.section	.bss.pxCurrentCoRoutine,"aw",@nobits
	.align	4
	.type	pxCurrentCoRoutine, @object
	.size	pxCurrentCoRoutine, 4
pxCurrentCoRoutine:
	.zero	4
	.section	.bss.xPendingReadyCoRoutineList,"aw",@nobits
	.align	4
	.type	xPendingReadyCoRoutineList, @object
	.size	xPendingReadyCoRoutineList, 20
xPendingReadyCoRoutineList:
	.zero	20
	.section	.bss.pxOverflowDelayedCoRoutineList,"aw",@nobits
	.align	4
	.type	pxOverflowDelayedCoRoutineList, @object
	.size	pxOverflowDelayedCoRoutineList, 4
pxOverflowDelayedCoRoutineList:
	.zero	4
	.section	.bss.pxDelayedCoRoutineList,"aw",@nobits
	.align	4
	.type	pxDelayedCoRoutineList, @object
	.size	pxDelayedCoRoutineList, 4
pxDelayedCoRoutineList:
	.zero	4
	.section	.bss.xDelayedCoRoutineList2,"aw",@nobits
	.align	4
	.type	xDelayedCoRoutineList2, @object
	.size	xDelayedCoRoutineList2, 20
xDelayedCoRoutineList2:
	.zero	20
	.section	.bss.xDelayedCoRoutineList1,"aw",@nobits
	.align	4
	.type	xDelayedCoRoutineList1, @object
	.size	xDelayedCoRoutineList1, 20
xDelayedCoRoutineList1:
	.zero	20
	.section	.bss.pxReadyCoRoutineLists,"aw",@nobits
	.align	4
	.type	pxReadyCoRoutineLists, @object
	.size	pxReadyCoRoutineLists, 40
pxReadyCoRoutineLists:
	.zero	40
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/list.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/croutine.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x77c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x76
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x14
	.byte	0x5
	.byte	0xb5
	.4byte	0x118
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb8
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xb9
	.4byte	0x118
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xba
	.4byte	0x118
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0xbb
	.4byte	0x81
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.byte	0xbc
	.4byte	0x81
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0xbf
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0xc5
	.4byte	0x15a
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc8
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc9
	.4byte	0x118
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xca
	.4byte	0x118
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0xcc
	.4byte	0x129
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x14
	.byte	0x5
	.byte	0xd6
	.4byte	0x196
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd9
	.4byte	0xb9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0xda
	.4byte	0x196
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0xdb
	.4byte	0x15a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0xdd
	.4byte	0x165
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x56
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6
	.byte	0x59
	.4byte	0x1bd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x9
	.4byte	0x1d3
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0xb9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x38
	.byte	0x6
	.byte	0x5b
	.4byte	0x228
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5d
	.4byte	0x1b2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x5e
	.4byte	0x11e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x5f
	.4byte	0x11e
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x60
	.4byte	0xb9
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x61
	.4byte	0xb9
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x62
	.4byte	0x91
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x63
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x15c
	.byte	0x1
	.4byte	0x24d
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x15e
	.4byte	0xb9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8d
	.4byte	0xae
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38c
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8d
	.4byte	0x1b2
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8d
	.4byte	0xb9
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8d
	.4byte	0xb9
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8f
	.4byte	0xae
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x38c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.4byte	0x233
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x12
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x13
	.4byte	0x240
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x72c
	.4byte	0x2e8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x72c
	.4byte	0x2ff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pxReadyCoRoutineLists+20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x72c
	.4byte	0x316
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedCoRoutineList1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x72c
	.4byte	0x32a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x72c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyCoRoutineList
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x738
	.4byte	0x353
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0x743
	.4byte	0x367
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL14
	.4byte	0x743
	.4byte	0x37b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.byte	0
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0x74f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x228
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f5
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc7
	.4byte	0xc4
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc7
	.4byte	0x3f5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc9
	.4byte	0xc4
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x75b
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x767
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x767
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.4byte	0x447
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x106
	.4byte	0x38c
	.uleb128 0x1a
	.4byte	0x426
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x111
	.4byte	0x3f5
	.byte	0
	.uleb128 0x1a
	.4byte	0x438
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x125
	.4byte	0x2c
	.byte	0
	.uleb128 0x1b
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x134
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.4byte	0x47f
	.uleb128 0x1b
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf4
	.4byte	0x38c
	.uleb128 0x1a
	.4byte	0x470
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf7
	.4byte	0x2c
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xfc
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x1f
	.4byte	0x447
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.2byte	0x141
	.4byte	0x51b
	.uleb128 0x12
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x13
	.4byte	0x454
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x4ce
	.uleb128 0x21
	.4byte	0x464
	.byte	0
	.uleb128 0x20
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x4e1
	.uleb128 0x21
	.4byte	0x471
	.byte	0
	.uleb128 0x14
	.4byte	.LVL28
	.4byte	0x75b
	.4byte	0x4f5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x75b
	.4byte	0x509
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x74f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x3fb
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x144
	.4byte	0x5b6
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	0x408
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x554
	.uleb128 0x13
	.4byte	0x419
	.4byte	.LLST9
	.byte	0
	.uleb128 0x20
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x567
	.uleb128 0x21
	.4byte	0x42b
	.byte	0
	.uleb128 0x20
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x57a
	.uleb128 0x21
	.4byte	0x439
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x773
	.uleb128 0x14
	.4byte	.LVL38
	.4byte	0x75b
	.4byte	0x597
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	0x75b
	.4byte	0x5ab
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x74f
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x5d0
	.uleb128 0x25
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x153
	.4byte	0x5d9
	.4byte	.LLST10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL46
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	0x3f5
	.uleb128 0x28
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x170
	.4byte	0xae
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x656
	.uleb128 0x29
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x170
	.4byte	0x656
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x172
	.4byte	0x38c
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x173
	.4byte	0xae
	.4byte	.LLST13
	.uleb128 0x14
	.4byte	.LVL50
	.4byte	0x75b
	.4byte	0x63c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL51
	.4byte	0x74f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyCoRoutineList
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x65c
	.uleb128 0x27
	.4byte	0x19c
	.uleb128 0x2a
	.4byte	0x19c
	.4byte	0x671
	.uleb128 0x2b
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x54
	.4byte	0x661
	.uleb128 0x5
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x55
	.4byte	0x19c
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedCoRoutineList1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x56
	.4byte	0x19c
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedCoRoutineList2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x57
	.4byte	0x3f5
	.uleb128 0x5
	.byte	0x3
	.4byte	pxDelayedCoRoutineList
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x58
	.4byte	0x3f5
	.uleb128 0x5
	.byte	0x3
	.4byte	pxOverflowDelayedCoRoutineList
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x59
	.4byte	0x19c
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyCoRoutineList
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5d
	.4byte	0xb9
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopCoRoutineReadyPriority
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xCoRoutineTickCount
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xLastTickCount
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xPassedTicks
	.uleb128 0x2c
	.4byte	.LASF81
	.byte	0x1
	.byte	0x5c
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x3
	.4byte	pxCurrentCoRoutine
	.uleb128 0x2d
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x18f
	.uleb128 0x2e
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.byte	0x65
	.uleb128 0x2d
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19a
	.uleb128 0x2d
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1bc
	.uleb128 0x2d
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1cb
	.uleb128 0x2d
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a7
	.uleb128 0x2d
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x50a
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
	.uleb128 0x7
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x31
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LVL12-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x19
	.byte	0x73
	.sleb128 44
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3
	.4byte	pxCurrentCoRoutine
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x19
	.byte	0x73
	.sleb128 44
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x3
	.4byte	pxCurrentCoRoutine
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x13
	.byte	0x73
	.sleb128 44
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x79
	.sleb128 44
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE33
	.2byte	0x12
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x79
	.sleb128 44
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"pxEventList"
.LASF59:
	.string	"xCoRoutineCreate"
.LASF50:
	.string	"prvCheckDelayedList"
.LASF45:
	.string	"pxCoRoutine"
.LASF43:
	.string	"pxCoRoutineCode"
.LASF21:
	.string	"pxPrevious"
.LASF71:
	.string	"vListInitialise"
.LASF76:
	.string	"vListInsert"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"xListEnd"
.LASF72:
	.string	"malloc"
.LASF10:
	.string	"sizetype"
.LASF60:
	.string	"xCoRoutineRemoveFromEventList"
.LASF64:
	.string	"pxDelayedCoRoutineList"
.LASF6:
	.string	"__uint32_t"
.LASF36:
	.string	"pxCoRoutineFunction"
.LASF5:
	.string	"__uint16_t"
.LASF55:
	.string	"pxUnblockedCRCB"
.LASF37:
	.string	"xGenericListItem"
.LASF22:
	.string	"pvOwner"
.LASF46:
	.string	"xTicksToDelay"
.LASF52:
	.string	"pxTemp"
.LASF14:
	.string	"uint32_t"
.LASF53:
	.string	"__tmp"
.LASF32:
	.string	"List_t"
.LASF27:
	.string	"MiniListItem_t"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF58:
	.string	"pxConstList"
.LASF80:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freertos"
.LASF9:
	.string	"long int"
.LASF28:
	.string	"xLIST"
.LASF24:
	.string	"ListItem_t"
.LASF19:
	.string	"xItemValue"
.LASF51:
	.string	"pxCRCB"
.LASF77:
	.string	"xTaskGetTickCount"
.LASF25:
	.string	"xLIST_ITEM"
.LASF54:
	.string	"prvCheckPendingReadyList"
.LASF33:
	.string	"CoRoutineHandle_t"
.LASF57:
	.string	"vCoRoutineSchedule"
.LASF41:
	.string	"uxState"
.LASF3:
	.string	"unsigned char"
.LASF70:
	.string	"xPassedTicks"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF38:
	.string	"xEventListItem"
.LASF0:
	.string	"unsigned int"
.LASF81:
	.string	"pxCurrentCoRoutine"
.LASF13:
	.string	"uint16_t"
.LASF16:
	.string	"BaseType_t"
.LASF23:
	.string	"pvContainer"
.LASF66:
	.string	"xPendingReadyCoRoutineList"
.LASF40:
	.string	"uxIndex"
.LASF1:
	.string	"short unsigned int"
.LASF56:
	.string	"vCoRoutineAddToDelayedList"
.LASF12:
	.string	"char"
.LASF34:
	.string	"crCOROUTINE_CODE"
.LASF75:
	.string	"uxListRemove"
.LASF20:
	.string	"pxNext"
.LASF42:
	.string	"CRCB_t"
.LASF65:
	.string	"pxOverflowDelayedCoRoutineList"
.LASF15:
	.string	"_Bool"
.LASF74:
	.string	"vListInsertEnd"
.LASF35:
	.string	"corCoRoutineControlBlock"
.LASF11:
	.string	"long unsigned int"
.LASF17:
	.string	"UBaseType_t"
.LASF62:
	.string	"xDelayedCoRoutineList1"
.LASF63:
	.string	"xDelayedCoRoutineList2"
.LASF29:
	.string	"uxNumberOfItems"
.LASF49:
	.string	"prvInitialiseCoRoutineLists"
.LASF61:
	.string	"pxReadyCoRoutineLists"
.LASF69:
	.string	"xLastTickCount"
.LASF44:
	.string	"xReturn"
.LASF68:
	.string	"xCoRoutineTickCount"
.LASF67:
	.string	"uxTopCoRoutineReadyPriority"
.LASF39:
	.string	"uxPriority"
.LASF30:
	.string	"pxIndex"
.LASF78:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"xMINI_LIST_ITEM"
.LASF48:
	.string	"xTimeToWake"
.LASF73:
	.string	"vListInitialiseItem"
.LASF79:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/croutine.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
