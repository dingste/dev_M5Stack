	.file	"event_groups.c"
	.text
.Ltext0:
	.section	.text.xEventGroupCreate,"ax",@progbits
	.align	4
	.global	xEventGroupCreate
	.type	xEventGroupCreate, @function
xEventGroupCreate:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/event_groups.c"
	.loc 1 188 0
	entry	sp, 32
.LCFI0:
	.loc 1 192 0
	movi.n	a10, 0x20
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 194 0
	beqz.n	a10, .L2
	.loc 1 196 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 197 0
	addi.n	a10, a10, 4
	call8	vListInitialise
.LVL2:
	.loc 1 208 0
	addi	a10, a2, 24
	call8	vPortCPUInitializeMutex
.LVL3:
.L2:
	.loc 1 218 0
	retw.n
.LFE18:
	.size	xEventGroupCreate, .-xEventGroupCreate
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/event_groups.c"
.LC4:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.xEventGroupWaitBits,"ax",@progbits
	.literal_position
	.literal .LC0, 16777216
	.literal .LC1, __FUNCTION__$5162
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, -16777216
	.literal .LC7, 67108864
	.literal .LC9, 16777215
	.align	4
	.global	xEventGroupWaitBits
	.type	xEventGroupWaitBits, @function
xEventGroupWaitBits:
.LFB20:
	.loc 1 342 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 342 0
	mov.n	a7, a2
.LVL5:
	.loc 1 350 0
	l32r	a13, .LC1
	movi	a12, 0x15e
	beqz.n	a2, .L44
.L7:
	.loc 1 351 0
	l32r	a10, .LC6
	and	a2, a3, a10
.LVL6:
	beqz.n	a2, .L8
	.loc 1 351 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	movi	a12, 0x15f
.L44:
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL7:
	call8	abort
.LVL8:
.L8:
	.loc 1 352 0 is_stmt 1
	l32r	a13, .LC1
	movi	a12, 0x160
	beqz.n	a3, .L44
.L9:
	.loc 1 355 0
	call8	xTaskGetSchedulerState
.LVL9:
	movi.n	a9, 1
	mov.n	a8, a2
	movnez	a8, a9, a6
	extui	a8, a8, 0, 8
	beqz.n	a8, .L10
	moveqz	a2, a9, a10
	extui	a10, a2, 0, 8
	l32r	a13, .LC1
	movi	a12, 0x163
	bnez.n	a10, .L44
.L10:
	.loc 1 359 0
	call8	vTaskSuspendAll
.LVL10:
	.loc 1 360 0
	addi	a2, a7, 24
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL11:
.LBB17:
	.loc 1 362 0
	l32i.n	a8, a7, 0
.LVL12:
	and	a9, a3, a8
.LBB18:
.LBB19:
	.loc 1 712 0
	bnez.n	a5, .L11
	.loc 1 716 0
	bnez.n	a9, .L12
	j	.L13
.L11:
	.loc 1 729 0
	bne	a3, a9, .L13
	j	.L12
.LVL13:
.L23:
.LBE19:
.LBE18:
	.loc 1 377 0
	movi.n	a6, -1
	xor	a6, a6, a3
	and	a6, a6, a8
	s32i.n	a6, a7, 0
	.loc 1 372 0
	movi.n	a6, 0
	j	.L14
.LVL14:
.L43:
	.loc 1 398 0
	l32r	a8, .LC0
.LVL15:
	movi.n	a11, 0
	movnez	a11, a8, a4
.LVL16:
	.loc 1 405 0
	beqz.n	a5, .L16
	.loc 1 407 0
	l32r	a8, .LC7
	or	a11, a11, a8
.LVL17:
.L16:
	.loc 1 417 0
	mov.n	a12, a6
	or	a11, a11, a3
.LVL18:
	addi.n	a10, a7, 4
	call8	vTaskPlaceOnUnorderedEventList
.LVL19:
	.loc 1 422 0
	movi.n	a8, 0
.LVL20:
.L14:
.LBE17:
	.loc 1 427 0
	mov.n	a10, a2
	s32i.n	a8, sp, 0
	call8	vTaskExitCritical
.LVL21:
	.loc 1 428 0
	call8	xTaskResumeAll
.LVL22:
	.loc 1 430 0
	l32i.n	a8, sp, 0
	beqz.n	a6, .L32
	.loc 1 432 0
	bnez.n	a10, .L18
.LBB20:
.LBB21:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL23:
#NO_APP
.LBE21:
.LBE20:
	.loc 1 434 0
	call8	esp_crosscore_int_send_yield
.LVL24:
.L18:
	.loc 1 445 0
	call8	uxTaskResetEventItemValue
.LVL25:
	mov.n	a6, a10
.LVL26:
	.loc 1 447 0
	bbsi	a10, 25, .L19
	.loc 1 449 0
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL27:
	.loc 1 452 0
	l32i.n	a6, a7, 0
.LVL28:
	and	a8, a3, a6
.LBB22:
.LBB23:
	.loc 1 712 0
	bnez.n	a5, .L20
	.loc 1 716 0
	bnez.n	a8, .L21
	j	.L22
.L20:
	.loc 1 729 0
	bne	a3, a8, .L22
	j	.L21
.LVL29:
.L25:
.LBE23:
.LBE22:
	.loc 1 460 0
	movi.n	a4, -1
.LVL30:
	xor	a3, a4, a3
.LVL31:
	and	a3, a3, a6
	s32i.n	a3, a7, 0
.LVL32:
.L22:
	.loc 1 472 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL33:
.L19:
	.loc 1 483 0
	l32r	a2, .LC9
.LVL34:
	and	a8, a6, a2
.LVL35:
	.loc 1 487 0
	j	.L32
.LVL36:
.L12:
.LBB24:
	.loc 1 372 0
	mov.n	a6, a4
	.loc 1 375 0
	beqz.n	a4, .L14
	j	.L23
.LVL37:
.L13:
	.loc 1 384 0
	beqz.n	a6, .L14
	j	.L43
.LVL38:
.L21:
.LBE24:
	.loc 1 458 0
	bnez.n	a4, .L25
	j	.L22
.LVL39:
.L32:
	.loc 1 488 0
	mov.n	a2, a8
	retw.n
.LFE20:
	.size	xEventGroupWaitBits, .-xEventGroupWaitBits
	.section	.text.xEventGroupClearBits,"ax",@progbits
	.literal_position
	.literal .LC10, __FUNCTION__$5170
	.literal .LC11, .LC2
	.literal .LC12, .LC4
	.literal .LC13, -16777216
	.align	4
	.global	xEventGroupClearBits
	.type	xEventGroupClearBits, @function
xEventGroupClearBits:
.LFB21:
	.loc 1 492 0
.LVL40:
	entry	sp, 32
.LCFI2:
.LVL41:
.LBB27:
.LBB28:
	.loc 1 498 0
	l32r	a13, .LC10
	movi	a12, 0x1f2
.LBE28:
.LBE27:
	beqz.n	a2, .L48
.L46:
	.loc 1 499 0
	l32r	a4, .LC13
	bnone	a3, a4, .L47
	.loc 1 499 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	movi	a12, 0x1f3
.L48:
	l32r	a11, .LC11
	l32r	a10, .LC12
	call8	ets_printf
.LVL42:
	call8	abort
.LVL43:
.L47:
	.loc 1 501 0 is_stmt 1
	addi	a5, a2, 24
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL44:
	.loc 1 510 0
	movi.n	a8, -1
	.loc 1 507 0
	l32i.n	a4, a2, 0
.LVL45:
	.loc 1 510 0
	xor	a3, a8, a3
.LVL46:
	and	a3, a3, a4
	s32i.n	a3, a2, 0
	.loc 1 512 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL47:
	.loc 1 515 0
	mov.n	a2, a4
.LVL48:
	retw.n
.LFE21:
	.size	xEventGroupClearBits, .-xEventGroupClearBits
	.section	.text.xEventGroupGetBitsFromISR,"ax",@progbits
	.align	4
	.global	xEventGroupGetBitsFromISR
	.type	xEventGroupGetBitsFromISR, @function
xEventGroupGetBitsFromISR:
.LFB22:
	.loc 1 534 0
.LVL49:
	entry	sp, 32
.LCFI3:
.LVL50:
.LBB29:
.LBB30:
.LBB31:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL51:
#NO_APP
.LBE31:
.LBE30:
.LBE29:
	.loc 1 541 0
	l32i.n	a2, a2, 0
.LVL52:
	.loc 1 543 0
	call8	_xtos_set_intlevel
.LVL53:
	.loc 1 546 0
	retw.n
.LFE22:
	.size	xEventGroupGetBitsFromISR, .-xEventGroupGetBitsFromISR
	.section	.text.xEventGroupSetBits,"ax",@progbits
	.literal_position
	.literal .LC14, __FUNCTION__$5190
	.literal .LC15, .LC2
	.literal .LC16, .LC4
	.literal .LC17, -16777216
	.literal .LC18, 16777215
	.literal .LC20, 33554432
	.literal .LC21, 16777216
	.align	4
	.global	xEventGroupSetBits
	.type	xEventGroupSetBits, @function
xEventGroupSetBits:
.LFB23:
	.loc 1 550 0
.LVL54:
	entry	sp, 32
.LCFI4:
.LVL55:
	.loc 1 560 0
	l32r	a13, .LC14
	movi	a12, 0x230
	beqz.n	a2, .L61
.L51:
	.loc 1 561 0
	l32r	a6, .LC17
	and	a6, a3, a6
	beqz.n	a6, .L52
	.loc 1 561 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	movi	a12, 0x231
.L61:
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	ets_printf
.LVL56:
	call8	abort
.LVL57:
.L52:
	.loc 1 566 0 is_stmt 1
	call8	vTaskSuspendAll
.LVL58:
	.loc 1 567 0
	addi	a4, a2, 24
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL59:
	.loc 1 574 0
	l32i.n	a7, a2, 0
	.loc 1 564 0
	addi.n	a5, a2, 12
.LVL60:
	.loc 1 574 0
	or	a3, a7, a3
.LVL61:
	s32i.n	a3, a2, 0
	.loc 1 571 0
	l32i.n	a10, a2, 16
.LVL62:
	.loc 1 554 0
	mov.n	a3, a6
	.loc 1 577 0
	j	.L53
.LVL63:
.L57:
	.loc 1 580 0
	l32i.n	a9, a10, 0
	.loc 1 585 0
	l32r	a6, .LC18
	.loc 1 579 0
	l32i.n	a7, a10, 4
.LVL64:
	.loc 1 585 0
	and	a8, a9, a6
.LVL65:
	.loc 1 587 0
	bbsi	a9, 26, .L54
	.loc 1 590 0
	bany	a8, a11, .L55
	j	.L56
.L54:
	.loc 1 599 0
	and	a6, a8, a11
	beq	a8, a6, .L55
.LVL66:
.L56:
	.loc 1 550 0
	mov.n	a10, a7
.LVL67:
.L53:
	l32i.n	a11, a2, 0
	.loc 1 577 0
	bne	a10, a5, .L57
	.loc 1 637 0
	movi.n	a5, -1
.LVL68:
	xor	a3, a5, a3
.LVL69:
	and	a3, a11, a3
	s32i.n	a3, a2, 0
	.loc 1 639 0
	mov.n	a10, a4
.LVL70:
	call8	vTaskExitCritical
.LVL71:
	.loc 1 640 0
	call8	xTaskResumeAll
.LVL72:
	.loc 1 642 0
	l32i.n	a2, a2, 0
.LVL73:
	retw.n
.LVL74:
.L55:
	.loc 1 612 0
	l32r	a6, .LC21
	.loc 1 614 0
	or	a8, a3, a8
.LVL75:
	.loc 1 612 0
	and	a6, a9, a6
	.loc 1 614 0
	movnez	a3, a8, a6
.LVL76:
	.loc 1 626 0
	l32r	a6, .LC20
	or	a11, a11, a6
	call8	xTaskRemoveFromUnorderedEventList
.LVL77:
	j	.L56
.LFE23:
	.size	xEventGroupSetBits, .-xEventGroupSetBits
	.section	.text.xEventGroupSync,"ax",@progbits
	.literal_position
	.literal .LC22, -16777216
	.literal .LC23, __FUNCTION__$5148
	.literal .LC24, .LC2
	.literal .LC25, .LC4
	.literal .LC26, 83886080
	.literal .LC28, 16777215
	.align	4
	.global	xEventGroupSync
	.type	xEventGroupSync, @function
xEventGroupSync:
.LFB19:
	.loc 1 224 0
.LVL78:
	entry	sp, 32
.LCFI5:
	.loc 1 230 0
	l32r	a10, .LC22
	.loc 1 224 0
	mov.n	a6, a2
.LVL79:
	.loc 1 230 0
	and	a2, a4, a10
.LVL80:
	l32r	a13, .LC23
	movi	a12, 0xe6
	bnez.n	a2, .L82
.L63:
	.loc 1 231 0
	bnez.n	a4, .L64
	.loc 1 231 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	movi	a12, 0xe7
.L82:
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	ets_printf
.LVL81:
	call8	abort
.LVL82:
.L64:
	.loc 1 234 0 is_stmt 1
	call8	xTaskGetSchedulerState
.LVL83:
	movi.n	a8, 1
	mov.n	a9, a2
	movnez	a9, a8, a5
	extui	a7, a9, 0, 8
	beqz.n	a7, .L65
	moveqz	a2, a8, a10
	extui	a10, a2, 0, 8
	l32r	a13, .LC23
	movi	a12, 0xea
	bnez.n	a10, .L82
.L65:
	.loc 1 238 0
	call8	vTaskSuspendAll
.LVL84:
	.loc 1 239 0
	addi	a7, a6, 24
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL85:
	.loc 1 241 0
	l32i.n	a2, a6, 0
.LVL86:
	.loc 1 243 0
	mov.n	a11, a3
	.loc 1 245 0
	or	a2, a2, a3
.LVL87:
	.loc 1 243 0
	mov.n	a10, a6
	.loc 1 245 0
	and	a3, a4, a2
.LVL88:
	.loc 1 243 0
	call8	xEventGroupSetBits
.LVL89:
	.loc 1 245 0
	bne	a4, a3, .L66
.LVL90:
	.loc 1 252 0
	l32i.n	a5, a6, 0
.LVL91:
	movi.n	a3, -1
	xor	a3, a3, a4
	and	a3, a5, a3
	s32i.n	a3, a6, 0
.LVL92:
	.loc 1 254 0
	movi.n	a5, 0
	j	.L67
.LVL93:
.L66:
	.loc 1 258 0
	beqz.n	a5, .L68
	.loc 1 265 0
	l32r	a11, .LC26
	mov.n	a12, a5
	or	a11, a4, a11
	addi.n	a10, a6, 4
	call8	vTaskPlaceOnUnorderedEventList
.LVL94:
	.loc 1 271 0
	movi.n	a2, 0
	j	.L67
.LVL95:
.L68:
	.loc 1 277 0
	l32i.n	a2, a6, 0
.LVL96:
.L67:
	.loc 1 281 0
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL97:
	.loc 1 282 0
	call8	xTaskResumeAll
.LVL98:
	.loc 1 284 0
	beqz.n	a5, .L69
	.loc 1 286 0
	bnez.n	a10, .L70
.LBB32:
.LBB33:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL99:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 288 0
	call8	esp_crosscore_int_send_yield
.LVL100:
.L70:
	.loc 1 299 0
	call8	uxTaskResetEventItemValue
.LVL101:
	mov.n	a3, a10
.LVL102:
	.loc 1 301 0
	bbsi	a10, 25, .L71
	.loc 1 304 0
	mov.n	a10, a7
	call8	vTaskEnterCritical
.LVL103:
	.loc 1 306 0
	l32i.n	a3, a6, 0
.LVL104:
	.loc 1 312 0
	and	a2, a4, a3
	bne	a4, a2, .L72
	.loc 1 314 0
	movi.n	a2, -1
	xor	a4, a2, a4
.LVL105:
	and	a4, a4, a3
	s32i.n	a4, a6, 0
.L72:
	.loc 1 321 0
	mov.n	a10, a7
	call8	vTaskExitCritical
.LVL106:
.L71:
	.loc 1 332 0
	l32r	a2, .LC28
	and	a2, a3, a2
.LVL107:
.L69:
	.loc 1 338 0
	retw.n
.LFE19:
	.size	xEventGroupSync, .-xEventGroupSync
	.section	.text.vEventGroupDelete,"ax",@progbits
	.literal_position
	.literal .LC29, __FUNCTION__$5199
	.literal .LC30, .LC2
	.literal .LC31, .LC4
	.literal .LC32, 33554432
	.align	4
	.global	vEventGroupDelete
	.type	vEventGroupDelete, @function
vEventGroupDelete:
.LFB24:
	.loc 1 647 0
.LVL108:
	entry	sp, 32
.LCFI6:
.LVL109:
	.loc 1 651 0
	call8	vTaskSuspendAll
.LVL110:
	.loc 1 652 0
	addi	a3, a2, 24
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL111:
	.loc 1 660 0
	addi.n	a4, a2, 12
	.loc 1 656 0
	j	.L84
.L86:
	.loc 1 660 0
	l32i.n	a10, a2, 16
	bne	a10, a4, .L85
	.loc 1 660 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a11, .LC30
	l32r	a10, .LC31
	movi	a12, 0x294
	call8	ets_printf
.LVL112:
	call8	abort
.LVL113:
.L85:
	.loc 1 661 0 is_stmt 1
	l32r	a11, .LC32
	call8	xTaskRemoveFromUnorderedEventList
.LVL114:
.L84:
	.loc 1 656 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L86
	.loc 1 668 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL115:
	.loc 1 669 0
	mov.n	a10, a2
	call8	free
.LVL116:
	.loc 1 688 0
	call8	xTaskResumeAll
.LVL117:
	retw.n
.LFE24:
	.size	vEventGroupDelete, .-vEventGroupDelete
	.section	.text.vEventGroupSetBitsCallback,"ax",@progbits
	.align	4
	.global	vEventGroupSetBitsCallback
	.type	vEventGroupSetBitsCallback, @function
vEventGroupSetBitsCallback:
.LFB25:
	.loc 1 695 0
.LVL118:
	entry	sp, 32
.LCFI7:
	.loc 1 696 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xEventGroupSetBits
.LVL119:
	retw.n
.LFE25:
	.size	vEventGroupSetBitsCallback, .-vEventGroupSetBitsCallback
	.section	.text.vEventGroupClearBitsCallback,"ax",@progbits
	.align	4
	.global	vEventGroupClearBitsCallback
	.type	vEventGroupClearBitsCallback, @function
vEventGroupClearBitsCallback:
.LFB26:
	.loc 1 703 0
.LVL120:
	entry	sp, 32
.LCFI8:
	.loc 1 704 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xEventGroupClearBits
.LVL121:
	retw.n
.LFE26:
	.size	vEventGroupClearBitsCallback, .-vEventGroupClearBitsCallback
	.section	.rodata.__FUNCTION__$5199,"a",@progbits
	.type	__FUNCTION__$5199, @object
	.size	__FUNCTION__$5199, 18
__FUNCTION__$5199:
	.string	"vEventGroupDelete"
	.section	.rodata.__FUNCTION__$5190,"a",@progbits
	.type	__FUNCTION__$5190, @object
	.size	__FUNCTION__$5190, 19
__FUNCTION__$5190:
	.string	"xEventGroupSetBits"
	.section	.rodata.__FUNCTION__$5170,"a",@progbits
	.type	__FUNCTION__$5170, @object
	.size	__FUNCTION__$5170, 21
__FUNCTION__$5170:
	.string	"xEventGroupClearBits"
	.section	.rodata.__FUNCTION__$5162,"a",@progbits
	.type	__FUNCTION__$5162, @object
	.size	__FUNCTION__$5162, 20
__FUNCTION__$5162:
	.string	"xEventGroupWaitBits"
	.section	.rodata.__FUNCTION__$5148,"a",@progbits
	.type	__FUNCTION__$5148, @object
	.size	__FUNCTION__$5148, 16
__FUNCTION__$5148:
	.string	"xEventGroupSync"
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/list.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/event_groups.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1a
	.4byte	0x25
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x76
	.4byte	0x86
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0xda
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x8a
	.4byte	0x86
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x8f
	.4byte	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x94
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x14
	.byte	0x6
	.byte	0xb5
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0xb8
	.4byte	0xae
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0xb9
	.4byte	0x12e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0xba
	.4byte	0x12e
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0xbb
	.4byte	0x76
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0xbc
	.4byte	0x76
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0xbf
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x6
	.byte	0xc5
	.4byte	0x170
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0xc8
	.4byte	0xae
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0xc9
	.4byte	0x12e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0xca
	.4byte	0x12e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0xcc
	.4byte	0x13f
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x14
	.byte	0x6
	.byte	0xd6
	.4byte	0x1ac
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.byte	0xd9
	.4byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x6
	.byte	0xda
	.4byte	0x1ac
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x6
	.byte	0xdb
	.4byte	0x170
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x134
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0xdd
	.4byte	0x17b
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.byte	0x78
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0x81
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x20
	.byte	0x1
	.byte	0x71
	.4byte	0x204
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1
	.byte	0x73
	.4byte	0x1c8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.byte	0x74
	.4byte	0x1b2
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7e
	.4byte	0xda
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7f
	.4byte	0x1d3
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x2
	.byte	0xce
	.4byte	0x86
	.byte	0x3
	.4byte	0x22a
	.uleb128 0xb
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x1c8
	.byte	0x1
	.4byte	0x279
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x1bd
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x279
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x27e
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x1c8
	.uleb128 0xf
	.4byte	.LASF45
	.4byte	0x294
	.4byte	.LASF98
	.byte	0
	.uleb128 0x10
	.4byte	0x1c8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x204
	.uleb128 0x11
	.4byte	0x7f
	.4byte	0x294
	.uleb128 0x12
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	0x284
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x3
	.byte	0xf8
	.4byte	0x25
	.byte	0x3
	.4byte	0x2c2
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0xbb
	.4byte	0x1bd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbd
	.4byte	0x27e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL0
	.4byte	0xc09
	.4byte	0x2fc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0xc14
	.4byte	0x310
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0xc20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x98
	.byte	0x1
	.4byte	0x363
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x279
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x279
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x363
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x98
	.byte	0
	.uleb128 0x10
	.4byte	0x98
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x155
	.4byte	0x1c8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b7
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x155
	.4byte	0x1bd
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x155
	.4byte	0x279
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x155
	.4byte	0x363
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x155
	.4byte	0x363
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x155
	.4byte	0xae
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x157
	.4byte	0x27e
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x158
	.4byte	0x1c8
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x158
	.4byte	0x1c8
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x159
	.4byte	0x98
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x159
	.4byte	0x98
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x15a
	.4byte	0x98
	.byte	0
	.uleb128 0x20
	.4byte	.LASF45
	.4byte	0x5c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5162
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4a9
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x16a
	.4byte	0x279
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	0x321
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x16d
	.4byte	0x492
	.uleb128 0x23
	.4byte	0x34a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	0x33e
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	0x332
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x26
	.4byte	0x356
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0xc2b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x20f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x4d1
	.uleb128 0x25
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x26
	.4byte	0x21f
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x321
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x514
	.uleb128 0x24
	.4byte	0x34a
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	0x33e
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	0x332
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x26
	.4byte	0x356
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0xc37
	.4byte	0x534
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0xc42
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0xc4d
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xc59
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0xc65
	.4byte	0x563
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0xc70
	.4byte	0x577
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL22
	.4byte	0xc7b
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0xc87
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0xc92
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0xc65
	.4byte	0x5a6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0xc70
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x7f
	.4byte	0x5c7
	.uleb128 0x12
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.4byte	0x5b7
	.uleb128 0x28
	.4byte	0x22a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x691
	.uleb128 0x24
	.4byte	0x23b
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	0x247
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	0x253
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	0x25f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x26b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5170
	.uleb128 0x2a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x643
	.uleb128 0x2b
	.4byte	0x23b
	.uleb128 0x2b
	.4byte	0x247
	.uleb128 0x25
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2c
	.4byte	0x253
	.uleb128 0x2c
	.4byte	0x25f
	.uleb128 0x29
	.4byte	0x26b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5170
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0xc37
	.4byte	0x663
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL43
	.4byte	0xc42
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0xc65
	.4byte	0x680
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0xc70
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x215
	.4byte	0x1c8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x215
	.4byte	0x1bd
	.4byte	.LLST20
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x217
	.4byte	0xa3
	.uleb128 0x1e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x218
	.4byte	0x27e
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x219
	.4byte	0x1c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	0x299
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.2byte	0x21b
	.4byte	0x720
	.uleb128 0x25
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x26
	.4byte	0x2a9
	.4byte	.LLST22
	.uleb128 0x25
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x26
	.4byte	0x2b5
	.4byte	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL53
	.4byte	0xc9e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x225
	.4byte	0x1c8
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x870
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x225
	.4byte	0x1bd
	.4byte	.LLST24
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x225
	.4byte	0x279
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x227
	.4byte	0x1ac
	.4byte	.LLST26
	.uleb128 0x1e
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x227
	.4byte	0x1ac
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x228
	.4byte	0x870
	.4byte	.LLST28
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x229
	.4byte	0x87b
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x22a
	.4byte	0x1c8
	.4byte	.LLST30
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x22a
	.4byte	0x1c8
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x22a
	.4byte	0x1c8
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x22b
	.4byte	0x27e
	.4byte	.LLST33
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x22c
	.4byte	0x98
	.4byte	.LLST34
	.uleb128 0x20
	.4byte	.LASF45
	.4byte	0x891
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5190
	.uleb128 0x17
	.4byte	.LVL56
	.4byte	0xc37
	.4byte	0x823
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0xc42
	.uleb128 0x27
	.4byte	.LVL58
	.4byte	0xc59
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0xc65
	.4byte	0x849
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL71
	.4byte	0xc70
	.4byte	0x85d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL72
	.4byte	0xc7b
	.uleb128 0x27
	.4byte	.LVL77
	.4byte	0xca9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x876
	.uleb128 0x10
	.4byte	0x134
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x11
	.4byte	0x7f
	.4byte	0x891
	.uleb128 0x12
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.4byte	0x881
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xdf
	.4byte	0x1c8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4f
	.uleb128 0x2e
	.4byte	.LASF41
	.byte	0x1
	.byte	0xdf
	.4byte	0x1bd
	.4byte	.LLST35
	.uleb128 0x2e
	.4byte	.LASF64
	.byte	0x1
	.byte	0xdf
	.4byte	0x279
	.4byte	.LLST36
	.uleb128 0x2e
	.4byte	.LASF51
	.byte	0x1
	.byte	0xdf
	.4byte	0x279
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	.LASF57
	.byte	0x1
	.byte	0xdf
	.4byte	0xae
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LASF71
	.byte	0x1
	.byte	0xe1
	.4byte	0x1c8
	.4byte	.LLST39
	.uleb128 0x2f
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe1
	.4byte	0x1c8
	.4byte	.LLST40
	.uleb128 0x2f
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe2
	.4byte	0x27e
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe3
	.4byte	0x98
	.4byte	.LLST42
	.uleb128 0x2f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe4
	.4byte	0x98
	.4byte	.LLST43
	.uleb128 0x20
	.4byte	.LASF45
	.4byte	0xa5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5148
	.uleb128 0x22
	.4byte	0x20f
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x120
	.4byte	0x96d
	.uleb128 0x25
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x26
	.4byte	0x21f
	.4byte	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL81
	.4byte	0xc37
	.4byte	0x98d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL82
	.4byte	0xc42
	.uleb128 0x27
	.4byte	.LVL83
	.4byte	0xc4d
	.uleb128 0x27
	.4byte	.LVL84
	.4byte	0xc59
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0xc65
	.4byte	0x9bc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL89
	.4byte	0x72a
	.4byte	0x9d7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x17
	.4byte	.LVL94
	.4byte	0xc2b
	.4byte	0x9fb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x44
	.byte	0x46
	.byte	0x24
	.byte	0x21
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL97
	.4byte	0xc70
	.4byte	0xa0f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL98
	.4byte	0xc7b
	.uleb128 0x27
	.4byte	.LVL100
	.4byte	0xc87
	.uleb128 0x27
	.4byte	.LVL101
	.4byte	0xc92
	.uleb128 0x17
	.4byte	.LVL103
	.4byte	0xc65
	.4byte	0xa3e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL106
	.4byte	0xc70
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x7f
	.4byte	0xa5f
	.uleb128 0x12
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0xa4f
	.uleb128 0x30
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x286
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb52
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x286
	.4byte	0x1bd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x288
	.4byte	0x27e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x289
	.4byte	0xb52
	.uleb128 0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.uleb128 0x20
	.4byte	.LASF45
	.4byte	0xb6d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5199
	.uleb128 0x27
	.4byte	.LVL110
	.4byte	0xc59
	.uleb128 0x17
	.4byte	.LVL111
	.4byte	0xc65
	.4byte	0xad2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL112
	.4byte	0xc37
	.4byte	0xb02
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x294
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5199
	.byte	0
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0xc42
	.uleb128 0x17
	.4byte	.LVL114
	.4byte	0xca9
	.4byte	0xb20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x17
	.4byte	.LVL115
	.4byte	0xc70
	.4byte	0xb34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL116
	.4byte	0xcb5
	.4byte	0xb48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL117
	.4byte	0xc7b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb58
	.uleb128 0x10
	.4byte	0x1b2
	.uleb128 0x11
	.4byte	0x7f
	.4byte	0xb6d
	.uleb128 0x12
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.4byte	0xb5d
	.uleb128 0x30
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x2b6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbb
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2b6
	.4byte	0xbbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL119
	.4byte	0x72a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x86
	.uleb128 0x30
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x2be
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc09
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x2be
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x2be
	.4byte	0xbbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL121
	.4byte	0x22a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0x65
	.uleb128 0x32
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x18f
	.uleb128 0x31
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x3
	.byte	0xcb
	.uleb128 0x32
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x85c
	.uleb128 0x31
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0xde
	.uleb128 0x31
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0x47
	.uleb128 0x32
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x8bb
	.uleb128 0x32
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x4cb
	.uleb128 0x31
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x3
	.byte	0xda
	.uleb128 0x31
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x3
	.byte	0xd9
	.uleb128 0x32
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x4fd
	.uleb128 0x31
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xb
	.byte	0x28
	.uleb128 0x32
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x894
	.uleb128 0x31
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xc
	.byte	0x99
	.uleb128 0x32
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x884
	.uleb128 0x31
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.byte	0x5a
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x74
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL60
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL57
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x74
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x1f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL77-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x1f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL55
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x74
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL78
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL78
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL78
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL79
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
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
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB19
	.4byte	.LFE19
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
.LASF22:
	.string	"pxPrevious"
.LASF54:
	.string	"xEventGroupCreate"
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/event_groups.c"
.LASF39:
	.string	"eventGroupMux"
.LASF82:
	.string	"vTaskPlaceOnUnorderedEventList"
.LASF52:
	.string	"xWaitForAllBits"
.LASF66:
	.string	"pxListEnd"
.LASF80:
	.string	"vListInitialise"
.LASF48:
	.string	"state"
.LASF85:
	.string	"xTaskGetSchedulerState"
.LASF87:
	.string	"vTaskEnterCritical"
.LASF32:
	.string	"xListEnd"
.LASF79:
	.string	"malloc"
.LASF8:
	.string	"sizetype"
.LASF92:
	.string	"_xtos_set_intlevel"
.LASF46:
	.string	"xPortGetCoreID"
.LASF56:
	.string	"xClearOnExit"
.LASF90:
	.string	"esp_crosscore_int_send_yield"
.LASF77:
	.string	"vEventGroupClearBitsCallback"
.LASF11:
	.string	"__uint32_t"
.LASF35:
	.string	"EventBits_t"
.LASF97:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freertos"
.LASF64:
	.string	"uxBitsToSet"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"pvOwner"
.LASF93:
	.string	"xTaskRemoveFromUnorderedEventList"
.LASF57:
	.string	"xTicksToWait"
.LASF47:
	.string	"portENTER_CRITICAL_NESTED"
.LASF19:
	.string	"portMUX_TYPE"
.LASF34:
	.string	"EventGroupHandle_t"
.LASF94:
	.string	"free"
.LASF68:
	.string	"uxBitsWaitedFor"
.LASF33:
	.string	"List_t"
.LASF28:
	.string	"MiniListItem_t"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"TickType_t"
.LASF67:
	.string	"pxList"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"xLIST"
.LASF43:
	.string	"pxEventBits"
.LASF36:
	.string	"xEventGroupDefinition"
.LASF65:
	.string	"pxListItem"
.LASF45:
	.string	"__FUNCTION__"
.LASF20:
	.string	"xItemValue"
.LASF38:
	.string	"xTasksWaitingForBits"
.LASF70:
	.string	"xEventGroupSync"
.LASF26:
	.string	"xLIST_ITEM"
.LASF88:
	.string	"vTaskExitCritical"
.LASF98:
	.string	"xEventGroupClearBits"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"owner"
.LASF84:
	.string	"abort"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF75:
	.string	"pvEventGroup"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"ListItem_t"
.LASF14:
	.string	"BaseType_t"
.LASF24:
	.string	"pvContainer"
.LASF55:
	.string	"xEventGroupWaitBits"
.LASF83:
	.string	"ets_printf"
.LASF89:
	.string	"xTaskResumeAll"
.LASF1:
	.string	"short unsigned int"
.LASF99:
	.string	"prvTestWaitCondition"
.LASF10:
	.string	"char"
.LASF53:
	.string	"xWaitConditionMet"
.LASF21:
	.string	"pxNext"
.LASF71:
	.string	"uxOriginalBitValue"
.LASF13:
	.string	"_Bool"
.LASF81:
	.string	"vPortCPUInitializeMutex"
.LASF49:
	.string	"__tmp"
.LASF58:
	.string	"uxControlBits"
.LASF73:
	.string	"vEventGroupDelete"
.LASF63:
	.string	"xEventGroupSetBits"
.LASF44:
	.string	"uxReturn"
.LASF9:
	.string	"long unsigned int"
.LASF15:
	.string	"UBaseType_t"
.LASF30:
	.string	"uxNumberOfItems"
.LASF91:
	.string	"uxTaskResetEventItemValue"
.LASF18:
	.string	"count"
.LASF62:
	.string	"uxSavedInterruptStatus"
.LASF76:
	.string	"ulBitsToSet"
.LASF69:
	.string	"xMatchFound"
.LASF41:
	.string	"xEventGroup"
.LASF42:
	.string	"uxBitsToClear"
.LASF61:
	.string	"xEventGroupGetBitsFromISR"
.LASF37:
	.string	"uxEventBits"
.LASF51:
	.string	"uxBitsToWaitFor"
.LASF31:
	.string	"pxIndex"
.LASF60:
	.string	"xTimeoutOccurred"
.LASF74:
	.string	"vEventGroupSetBitsCallback"
.LASF95:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"xMINI_LIST_ITEM"
.LASF50:
	.string	"uxCurrentEventBits"
.LASF72:
	.string	"pxTasksWaitingForBits"
.LASF86:
	.string	"vTaskSuspendAll"
.LASF59:
	.string	"xAlreadyYielded"
.LASF78:
	.string	"ulBitsToClear"
.LASF40:
	.string	"EventGroup_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
