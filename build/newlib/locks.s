	.file	"locks.c"
	.text
.Ltext0:
	.section	.iram1.14,"ax",@progbits
	.literal_position
	.literal .LC0, lock_init_spinlock
	.align	4
	.type	lock_init_generic, @function
lock_init_generic:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/locks.c"
	.loc 1 50 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 51 0
	l32r	a4, .LC0
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL1:
	.loc 1 52 0
	call8	xTaskGetSchedulerState
.LVL2:
	bnei	a10, 1, .L2
.L3:
	.loc 1 54 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL3:
	retw.n
.L2:
	.loc 1 58 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L3
.LBB3:
	.loc 1 79 0
	mov.n	a10, a3
	call8	xQueueCreateMutex
.LVL4:
	.loc 1 80 0
	bnez.n	a10, .L4
	.loc 1 81 0
	call8	abort
.LVL5:
.L4:
	.loc 1 83 0
	s32i.n	a10, a2, 0
	j	.L3
.LBE3:
.LFE27:
	.size	lock_init_generic, .-lock_init_generic
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/locks.c"
.LC4:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.iram1.18,"ax",@progbits
	.literal_position
	.literal .LC1, __FUNCTION__$5230
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	lock_acquire_generic, @function
lock_acquire_generic:
.LFB31:
	.loc 1 126 0
.LVL6:
	entry	sp, 64
.LCFI1:
	.loc 1 127 0
	l32i.n	a5, a2, 0
.LVL7:
	.loc 1 128 0
	bnez.n	a5, .L7
	.loc 1 129 0
	call8	xTaskGetSchedulerState
.LVL8:
	beqi	a10, 1, .L16
	.loc 1 134 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	lock_init_generic
.LVL9:
	.loc 1 135 0
	l32i.n	a5, a2, 0
.LVL10:
	.loc 1 136 0
	bnez.n	a5, .L7
	.loc 1 136 0 discriminator 1
	l32r	a13, .LC1
	l32r	a11, .LC3
	l32r	a10, .LC5
	movi	a12, 0x88
	call8	ets_printf
.LVL11:
	j	.L11
.L7:
.LVL12:
.LBB7:
.LBB8:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 226 0
#APP
# 226 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr a11, PS
# 0 "" 2
.LVL13:
#NO_APP
.LBE8:
.LBE7:
	.loc 1 140 0
	extui	a11, a11, 0, 4
.LVL14:
	beqz.n	a11, .L9
.LBB9:
	.loc 1 142 0
	bnei	a4, 4, .L10
.L11:
	.loc 1 143 0
	call8	abort
.LVL15:
.L10:
	.loc 1 145 0
	movi.n	a11, 0
	.loc 1 146 0
	mov.n	a12, sp
	mov.n	a10, a5
	.loc 1 145 0
	s32i.n	a11, sp, 0
	.loc 1 146 0
	call8	xQueueReceiveFromISR
.LVL16:
	.loc 1 147 0
	bnez.n	a10, .L17
	bnez.n	a3, .L11
.L17:
	.loc 1 150 0
	l32i.n	a2, sp, 0
.LVL17:
	beqz.n	a2, .L14
	.loc 1 151 0
	s32i.n	a10, sp, 16
	call8	_frxt_setup_switch
.LVL18:
	l32i.n	a10, sp, 16
	j	.L14
.LVL19:
.L9:
.LBE9:
	.loc 1 156 0
	bnei	a4, 4, .L15
	.loc 1 157 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	xQueueTakeMutexRecursive
.LVL20:
	j	.L14
.LVL21:
.L15:
	.loc 1 159 0
	mov.n	a13, a11
	mov.n	a12, a3
	mov.n	a10, a5
	call8	xQueueGenericReceive
.LVL22:
.L14:
	.loc 1 163 0
	addi.n	a10, a10, -1
.LVL23:
	movi.n	a5, 1
.LVL24:
	movi.n	a2, 0
	movnez	a2, a5, a10
	neg	a2, a2
	retw.n
.LVL25:
.L16:
	.loc 1 130 0
	mov.n	a2, a5
.LVL26:
	.loc 1 164 0
	retw.n
.LFE31:
	.size	lock_acquire_generic, .-lock_acquire_generic
	.section	.iram1.23,"ax",@progbits
	.align	4
	.type	lock_release_generic, @function
lock_release_generic:
.LFB36:
	.loc 1 185 0
.LVL27:
	entry	sp, 48
.LCFI2:
	.loc 1 186 0
	l32i.n	a10, a2, 0
.LVL28:
	.loc 1 187 0
	beqz.n	a10, .L24
.LVL29:
.LBB13:
.LBB14:
	.loc 2 226 0
#APP
# 226 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr a11, PS
# 0 "" 2
.LVL30:
#NO_APP
.LBE14:
.LBE13:
	.loc 1 194 0
	extui	a11, a11, 0, 4
.LVL31:
	beqz.n	a11, .L26
.LBB15:
	.loc 1 195 0
	bnei	a3, 4, .L27
	.loc 1 196 0
	call8	abort
.LVL32:
.L27:
	.loc 1 198 0
	movi.n	a3, 0
.LVL33:
	.loc 1 199 0
	mov.n	a11, sp
	.loc 1 198 0
	s32i.n	a3, sp, 0
	.loc 1 199 0
	call8	xQueueGiveFromISR
.LVL34:
	.loc 1 200 0
	l32i.n	a3, sp, 0
	beqz.n	a3, .L24
	.loc 1 201 0
	call8	_frxt_setup_switch
.LVL35:
	retw.n
.LVL36:
.L26:
.LBE15:
	.loc 1 204 0
	bnei	a3, 4, .L29
	.loc 1 205 0
	call8	xQueueGiveMutexRecursive
.LVL37:
	retw.n
.LVL38:
.L29:
	.loc 1 207 0
	mov.n	a13, a11
	mov.n	a12, a11
	call8	xQueueGenericSend
.LVL39:
.L24:
	retw.n
.LFE36:
	.size	lock_release_generic, .-lock_release_generic
	.section	.iram1.15,"ax",@progbits
	.align	4
	.global	_lock_init
	.type	_lock_init, @function
_lock_init:
.LFB28:
	.loc 1 88 0
.LVL40:
	entry	sp, 32
.LCFI3:
	.loc 1 89 0
	movi.n	a8, 0
	.loc 1 88 0
	mov.n	a10, a2
	.loc 1 89 0
	s32i.n	a8, a2, 0
	.loc 1 90 0
	movi.n	a11, 1
	call8	lock_init_generic
.LVL41:
	retw.n
.LFE28:
	.size	_lock_init, .-_lock_init
	.section	.iram1.16,"ax",@progbits
	.align	4
	.global	_lock_init_recursive
	.type	_lock_init_recursive, @function
_lock_init_recursive:
.LFB29:
	.loc 1 93 0
.LVL42:
	entry	sp, 32
.LCFI4:
	.loc 1 94 0
	movi.n	a8, 0
	.loc 1 93 0
	mov.n	a10, a2
	.loc 1 94 0
	s32i.n	a8, a2, 0
	.loc 1 95 0
	movi.n	a11, 4
	call8	lock_init_generic
.LVL43:
	retw.n
.LFE29:
	.size	_lock_init_recursive, .-_lock_init_recursive
	.section	.iram1.17,"ax",@progbits
	.literal_position
	.literal .LC6, lock_init_spinlock
	.literal .LC7, __FUNCTION__$5221
	.literal .LC8, .LC2
	.literal .LC9, .LC4
	.align	4
	.global	_lock_close
	.type	_lock_close, @function
_lock_close:
.LFB30:
	.loc 1 108 0
.LVL44:
	entry	sp, 32
.LCFI5:
	.loc 1 109 0
	l32r	a3, .LC6
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL45:
	.loc 1 110 0
	l32i.n	a4, a2, 0
	beqz.n	a4, .L39
.LVL46:
.LBB20:
	.loc 1 113 0
	mov.n	a10, a4
	call8	xQueueGetMutexHolder
.LVL47:
	mov.n	a5, a10
	beqz.n	a10, .L40
.LVL48:
.LBE20:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 113 0
	l32r	a13, .LC7
	l32r	a11, .LC8
	l32r	a10, .LC9
	movi	a12, 0x71
	call8	ets_printf
.LVL49:
	call8	abort
.LVL50:
.L40:
.LBE23:
.LBE22:
.LBE21:
.LBB24:
	.loc 1 115 0
	mov.n	a10, a4
	call8	vQueueDelete
.LVL51:
	.loc 1 116 0
	s32i.n	a5, a2, 0
.LVL52:
.L39:
.LBE24:
	.loc 1 118 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL53:
	retw.n
.LFE30:
	.size	_lock_close, .-_lock_close
	.global	_lock_close_recursive
	.set	_lock_close_recursive,_lock_close
	.section	.iram1.19,"ax",@progbits
	.align	4
	.global	_lock_acquire
	.type	_lock_acquire, @function
_lock_acquire:
.LFB32:
	.loc 1 166 0
.LVL54:
	entry	sp, 32
.LCFI6:
	.loc 1 167 0
	movi.n	a12, 1
	movi.n	a11, -1
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL55:
	retw.n
.LFE32:
	.size	_lock_acquire, .-_lock_acquire
	.section	.iram1.20,"ax",@progbits
	.align	4
	.global	_lock_acquire_recursive
	.type	_lock_acquire_recursive, @function
_lock_acquire_recursive:
.LFB33:
	.loc 1 170 0
.LVL56:
	entry	sp, 32
.LCFI7:
	.loc 1 171 0
	movi.n	a12, 4
	movi.n	a11, -1
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL57:
	retw.n
.LFE33:
	.size	_lock_acquire_recursive, .-_lock_acquire_recursive
	.section	.iram1.21,"ax",@progbits
	.align	4
	.global	_lock_try_acquire
	.type	_lock_try_acquire, @function
_lock_try_acquire:
.LFB34:
	.loc 1 174 0
.LVL58:
	entry	sp, 32
.LCFI8:
	.loc 1 175 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL59:
	.loc 1 176 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE34:
	.size	_lock_try_acquire, .-_lock_try_acquire
	.section	.iram1.22,"ax",@progbits
	.align	4
	.global	_lock_try_acquire_recursive
	.type	_lock_try_acquire_recursive, @function
_lock_try_acquire_recursive:
.LFB35:
	.loc 1 178 0
.LVL61:
	entry	sp, 32
.LCFI9:
	.loc 1 179 0
	movi.n	a12, 4
	movi.n	a11, 0
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL62:
	.loc 1 180 0
	mov.n	a2, a10
.LVL63:
	retw.n
.LFE35:
	.size	_lock_try_acquire_recursive, .-_lock_try_acquire_recursive
	.section	.iram1.24,"ax",@progbits
	.align	4
	.global	_lock_release
	.type	_lock_release, @function
_lock_release:
.LFB37:
	.loc 1 212 0
.LVL64:
	entry	sp, 32
.LCFI10:
	.loc 1 213 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	lock_release_generic
.LVL65:
	retw.n
.LFE37:
	.size	_lock_release, .-_lock_release
	.section	.iram1.25,"ax",@progbits
	.align	4
	.global	_lock_release_recursive
	.type	_lock_release_recursive, @function
_lock_release_recursive:
.LFB38:
	.loc 1 216 0
.LVL66:
	entry	sp, 32
.LCFI11:
	.loc 1 217 0
	movi.n	a11, 4
	mov.n	a10, a2
	call8	lock_release_generic
.LVL67:
	retw.n
.LFE38:
	.size	_lock_release_recursive, .-_lock_release_recursive
	.section	.rodata.__FUNCTION__$5230,"a",@progbits
	.type	__FUNCTION__$5230, @object
	.size	__FUNCTION__$5230, 21
__FUNCTION__$5230:
	.string	"lock_acquire_generic"
	.section	.rodata.__FUNCTION__$5221,"a",@progbits
	.type	__FUNCTION__$5221, @object
	.size	__FUNCTION__$5221, 12
__FUNCTION__$5221:
	.string	"_lock_close"
	.section	.data.lock_init_spinlock,"aw",@progbits
	.align	4
	.type	lock_init_spinlock, @object
	.size	lock_init_spinlock, 8
lock_init_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI11-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0xb
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6f
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x76
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xf0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.byte	0x8a
	.4byte	0xa7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x8f
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x94
	.4byte	0xcf
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x8
	.byte	0x4f
	.4byte	0xfb
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6c
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF24
	.4byte	0x157
	.4byte	.LASF61
	.uleb128 0xb
	.uleb128 0xc
	.string	"h"
	.byte	0x1
	.byte	0x6f
	.4byte	0x106
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.uleb128 0xe
	.4byte	0x95
	.4byte	0x157
	.uleb128 0xf
	.4byte	0x85
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.4byte	0x147
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x32
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x32
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1c5
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4f
	.4byte	0x106
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x729
	.4byte	0x1bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x735
	.byte	0
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x740
	.4byte	0x1d9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0x74b
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0x757
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x2
	.byte	0xdd
	.4byte	0xb2
	.byte	0x3
	.4byte	0x20f
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x2
	.byte	0xdf
	.4byte	0xa7
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7e
	.4byte	0x30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x373
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7e
	.4byte	0x141
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7e
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.byte	0x7f
	.4byte	0x106
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF24
	.4byte	0x383
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5230
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8b
	.4byte	0xb9
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	0x1f3
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x8c
	.4byte	0x2a3
	.uleb128 0x20
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x21
	.4byte	0x203
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x2f0
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.byte	0x91
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x735
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x762
	.4byte	0x2e6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x76e
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x74b
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x15c
	.4byte	0x313
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x77a
	.4byte	0x342
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x88
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5230
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x785
	.4byte	0x35c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x791
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x95
	.4byte	0x383
	.uleb128 0xf
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	0x373
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x442
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb9
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.byte	0xb9
	.4byte	0x9c
	.4byte	.LLST5
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.byte	0xba
	.4byte	0x106
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	0x1f3
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0xc2
	.4byte	0x3ed
	.uleb128 0x20
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x21
	.4byte	0x203
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x42f
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc6
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x735
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x79d
	.4byte	0x425
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x76e
	.byte	0
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x7a9
	.uleb128 0x17
	.4byte	.LVL39
	.4byte	0x7b5
	.byte	0
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.byte	0x58
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47a
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x58
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL41
	.4byte	0x15c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5d
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x15c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x111
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a6
	.uleb128 0x25
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	0x128
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5221
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0x50e
	.uleb128 0x21
	.4byte	0x136
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0x7c1
	.4byte	0x4fd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x7cd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x581
	.uleb128 0x28
	.4byte	0x11d
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x26
	.4byte	0x128
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5221
	.uleb128 0x20
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x29
	.4byte	0x136
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x77a
	.4byte	0x575
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5221
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0x735
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL45
	.4byte	0x740
	.4byte	0x595
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0x757
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e4
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa6
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0x20f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF37
	.byte	0x1
	.byte	0xaa
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x622
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xaa
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL57
	.4byte	0x20f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF38
	.byte	0x1
	.byte	0xae
	.4byte	0x30
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x665
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0xae
	.4byte	0x141
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0x20f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb2
	.4byte	0x30
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a8
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb2
	.4byte	0x141
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0x20f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd4
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e0
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd4
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0x388
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x718
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd8
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0x388
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2a
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.uleb128 0x2b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x578
	.uleb128 0x2c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x47
	.uleb128 0x2c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0xf4
	.uleb128 0x2b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x8bb
	.uleb128 0x2c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0xf3
	.uleb128 0x2b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x543
	.uleb128 0x2b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x181
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0xb
	.byte	0xde
	.uleb128 0x2b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x582
	.uleb128 0x2b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x2b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x4f4
	.uleb128 0x2b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x583
	.uleb128 0x2b
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x265
	.uleb128 0x2b
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x57c
	.uleb128 0x2b
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x3ac
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"lock_init_generic"
.LASF46:
	.string	"xTaskGetSchedulerState"
.LASF45:
	.string	"vTaskEnterCritical"
.LASF50:
	.string	"ets_printf"
.LASF11:
	.string	"sizetype"
.LASF33:
	.string	"lock_release_generic"
.LASF7:
	.string	"__uint32_t"
.LASF28:
	.string	"delay"
.LASF34:
	.string	"_lock_init"
.LASF6:
	.string	"short int"
.LASF14:
	.string	"uint8_t"
.LASF48:
	.string	"xQueueReceiveFromISR"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/newlib"
.LASF36:
	.string	"_lock_acquire"
.LASF55:
	.string	"xQueueGenericSend"
.LASF63:
	.string	"lock_acquire_generic"
.LASF8:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF43:
	.string	"xQueueCreateMutex"
.LASF10:
	.string	"long int"
.LASF51:
	.string	"xQueueTakeMutexRecursive"
.LASF4:
	.string	"__uint8_t"
.LASF22:
	.string	"QueueHandle_t"
.LASF59:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/locks.c"
.LASF29:
	.string	"new_sem"
.LASF56:
	.string	"xQueueGetMutexHolder"
.LASF23:
	.string	"SemaphoreHandle_t"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"owner"
.LASF44:
	.string	"abort"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"portMUX_TYPE"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"BaseType_t"
.LASF37:
	.string	"_lock_acquire_recursive"
.LASF35:
	.string	"_lock_init_recursive"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF53:
	.string	"xQueueGiveFromISR"
.LASF25:
	.string	"lock"
.LASF27:
	.string	"ps_reg"
.LASF16:
	.string	"_Bool"
.LASF52:
	.string	"xQueueGenericReceive"
.LASF61:
	.string	"_lock_close"
.LASF26:
	.string	"mutex_type"
.LASF57:
	.string	"vQueueDelete"
.LASF12:
	.string	"long unsigned int"
.LASF40:
	.string	"_lock_release"
.LASF20:
	.string	"count"
.LASF39:
	.string	"_lock_try_acquire_recursive"
.LASF3:
	.string	"_lock_t"
.LASF47:
	.string	"vTaskExitCritical"
.LASF38:
	.string	"_lock_try_acquire"
.LASF42:
	.string	"lock_init_spinlock"
.LASF49:
	.string	"_frxt_setup_switch"
.LASF58:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"__FUNCTION__"
.LASF30:
	.string	"success"
.LASF54:
	.string	"xQueueGiveMutexRecursive"
.LASF41:
	.string	"_lock_release_recursive"
.LASF31:
	.string	"higher_task_woken"
.LASF62:
	.string	"xPortCanYield"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
