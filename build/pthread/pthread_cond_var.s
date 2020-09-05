	.file	"pthread_cond_var.c"
	.text
.Ltext0:
	.section	.text.pthread_cond_signal,"ax",@progbits
	.align	4
	.global	pthread_cond_signal
	.type	pthread_cond_signal, @function
pthread_cond_signal:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_cond_var.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 50 0
	movi.n	a8, 0x16
	.loc 1 49 0
	beqz.n	a2, .L2
	.loc 1 49 0 discriminator 1
	l32i.n	a3, a2, 0
	beqz.n	a3, .L2
.LVL1:
	.loc 1 55 0
	mov.n	a10, a3
	call8	_lock_acquire_recursive
.LVL2:
	.loc 1 57 0
	l32i.n	a8, a3, 4
.LVL3:
	.loc 1 58 0
	beqz.n	a8, .L3
	.loc 1 59 0
	movi.n	a13, 0
	l32i.n	a10, a8, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL4:
.L3:
	.loc 1 61 0
	mov.n	a10, a3
	call8	_lock_release_recursive
.LVL5:
	.loc 1 63 0
	movi.n	a8, 0
.LVL6:
.L2:
	.loc 1 64 0
	mov.n	a2, a8
.LVL7:
	retw.n
.LFE27:
	.size	pthread_cond_signal, .-pthread_cond_signal
	.section	.text.pthread_cond_broadcast,"ax",@progbits
	.align	4
	.global	pthread_cond_broadcast
	.type	pthread_cond_broadcast, @function
pthread_cond_broadcast:
.LFB28:
	.loc 1 67 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 67 0
	mov.n	a3, a2
	.loc 1 69 0
	movi.n	a2, 0x16
.LVL9:
	.loc 1 68 0
	beqz.n	a3, .L12
	.loc 1 68 0 discriminator 1
	l32i.n	a3, a3, 0
.LVL10:
	beqz.n	a3, .L12
.LVL11:
	.loc 1 74 0
	mov.n	a10, a3
	call8	_lock_acquire_recursive
.LVL12:
	.loc 1 76 0
	l32i.n	a2, a3, 4
.LVL13:
	j	.L13
.L14:
	.loc 1 77 0 discriminator 3
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL14:
	.loc 1 76 0 discriminator 3
	l32i.n	a2, a2, 4
.LVL15:
.L13:
	.loc 1 76 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L14
	.loc 1 79 0 is_stmt 1
	mov.n	a10, a3
	call8	_lock_release_recursive
.LVL16:
.L12:
	.loc 1 82 0
	retw.n
.LFE28:
	.size	pthread_cond_broadcast, .-pthread_cond_broadcast
	.section	.text.pthread_cond_timedwait,"ax",@progbits
	.literal_position
	.literal .LC0, 274877907
	.literal .LC1, 1000000
	.literal .LC2, -858993459
	.align	4
	.global	pthread_cond_timedwait
	.type	pthread_cond_timedwait, @function
pthread_cond_timedwait:
.LFB30:
	.loc 1 90 0
.LVL17:
	entry	sp, 48
.LCFI2:
	.loc 1 95 0
	movi.n	a10, 0x16
	.loc 1 94 0
	beqz.n	a2, .L20
	.loc 1 94 0 discriminator 1
	l32i.n	a5, a2, 0
	beqz.n	a5, .L20
.LVL18:
	.loc 1 100 0
	beqz.n	a4, .L34
.LBB2:
	.loc 1 106 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL19:
	.loc 1 109 0
	l32r	a9, .LC0
	l32i.n	a2, a4, 4
.LVL20:
	.loc 1 108 0
	l32i.n	a10, a4, 0
.LVL21:
	.loc 1 109 0
	mulsh	a8, a2, a9
	.loc 1 111 0
	movi.n	a11, 1
	.loc 1 109 0
	srai	a9, a8, 6
	srai	a8, a2, 31
	sub	a8, a9, a8
.LVL22:
	.loc 1 111 0
	l32i.n	a9, sp, 0
	bne	a10, a9, .L22
	.loc 1 111 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 4
	blt	a8, a2, .L25
	j	.L38
.L22:
	.loc 1 111 0 discriminator 2
	blt	a10, a9, .L25
.L38:
	movi.n	a11, 0
.L25:
	extui	a11, a11, 0, 8
	bnez.n	a11, .L26
	.loc 1 117 0 is_stmt 1
	l32i.n	a2, sp, 4
	sub	a9, a10, a9
.LVL23:
	sub	a8, a8, a2
.LVL24:
	bgez	a8, .L27
	.loc 1 117 0 is_stmt 0 discriminator 1
	l32r	a2, .LC1
	addi.n	a9, a9, -1
.LVL25:
	add.n	a8, a8, a2
.LVL26:
.L27:
	.loc 1 118 0 is_stmt 1
	slli	a12, a9, 5
	sub	a12, a12, a9
	addx4	a9, a12, a9
.LVL27:
	l32r	a12, .LC0
.LVL28:
	mulsh	a12, a8, a12
.LVL29:
	srai	a8, a8, 31
.LVL30:
	srai	a12, a12, 6
	sub	a8, a12, a8
	addx8	a8, a9, a8
.LVL31:
	.loc 1 121 0
	bgei	a8, 1, .L28
.LVL32:
.L26:
	.loc 1 122 0
	movi	a10, 0x74
.LVL33:
	j	.L20
.LVL34:
.L28:
	.loc 1 125 0
	l32r	a4, .LC2
.LVL35:
	muluh	a8, a8, a4
.LVL36:
	srli	a4, a8, 3
.LVL37:
	j	.L21
.LVL38:
.L34:
.LBE2:
	.loc 1 101 0
	movi.n	a4, -1
.LVL39:
.L21:
	.loc 1 129 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueCreateCountingSemaphore
.LVL40:
	.loc 1 132 0
	movi.n	a2, 0
	.loc 1 129 0
	s32i.n	a10, sp, 0
	.loc 1 131 0
	mov.n	a10, a5
	call8	_lock_acquire_recursive
.LVL41:
	.loc 1 132 0
	s32i.n	a2, sp, 4
	.loc 1 132 0
	l32i.n	a8, a5, 8
	.loc 1 133 0
	mov.n	a10, a5
	.loc 1 132 0
	s32i.n	a8, sp, 8
	s32i.n	sp, a8, 0
	addi.n	a8, sp, 4
	s32i.n	a8, a5, 8
	.loc 1 133 0
	call8	_lock_release_recursive
.LVL42:
	.loc 1 134 0
	mov.n	a10, a3
	call8	pthread_mutex_unlock
.LVL43:
	.loc 1 136 0
	l32i.n	a10, sp, 0
	mov.n	a13, a2
	mov.n	a12, a4
	mov.n	a11, a2
	call8	xQueueGenericReceive
.LVL44:
	.loc 1 139 0
	addi.n	a10, a10, -1
	movi	a4, 0x74
.LVL45:
	movnez	a2, a4, a10
.LVL46:
	.loc 1 142 0
	mov.n	a10, a5
	call8	_lock_acquire_recursive
.LVL47:
	.loc 1 143 0
	l32i.n	a4, sp, 4
	l32i.n	a8, sp, 8
	beqz.n	a4, .L30
	.loc 1 143 0 discriminator 1
	s32i.n	a8, a4, 8
	j	.L31
.L30:
	.loc 1 143 0 is_stmt 0 discriminator 2
	s32i.n	a8, a5, 8
.L31:
	.loc 1 143 0 discriminator 4
	l32i.n	a8, sp, 8
	.loc 1 144 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
	.loc 1 143 0 discriminator 4
	s32i.n	a4, a8, 0
	.loc 1 144 0 discriminator 4
	call8	_lock_release_recursive
.LVL48:
	.loc 1 145 0 discriminator 4
	l32i.n	a10, sp, 0
	call8	vQueueDelete
.LVL49:
	.loc 1 147 0 discriminator 4
	mov.n	a10, a3
	call8	pthread_mutex_lock
.LVL50:
	.loc 1 148 0 discriminator 4
	mov.n	a10, a2
.LVL51:
.L20:
	.loc 1 149 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	pthread_cond_timedwait, .-pthread_cond_timedwait
	.section	.text.pthread_cond_wait,"ax",@progbits
	.align	4
	.global	pthread_cond_wait
	.type	pthread_cond_wait, @function
pthread_cond_wait:
.LFB29:
	.loc 1 85 0
.LVL52:
	entry	sp, 32
.LCFI3:
	.loc 1 86 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pthread_cond_timedwait
.LVL53:
	.loc 1 87 0
	mov.n	a2, a10
.LVL54:
	retw.n
.LFE29:
	.size	pthread_cond_wait, .-pthread_cond_wait
	.section	.text.pthread_condattr_init,"ax",@progbits
	.align	4
	.global	pthread_condattr_init
	.type	pthread_condattr_init, @function
pthread_condattr_init:
.LFB31:
	.loc 1 152 0
.LVL55:
	entry	sp, 32
.LCFI4:
	.loc 1 155 0
	movi.n	a2, 0x58
.LVL56:
	retw.n
.LFE31:
	.size	pthread_condattr_init, .-pthread_condattr_init
	.section	.text.pthread_cond_init,"ax",@progbits
	.align	4
	.global	pthread_cond_init
	.type	pthread_cond_init, @function
pthread_cond_init:
.LFB32:
	.loc 1 158 0
.LVL57:
	entry	sp, 32
.LCFI5:
	.loc 1 158 0
	mov.n	a4, a2
	.loc 1 162 0
	movi.n	a2, 0x16
.LVL58:
	.loc 1 161 0
	beqz.n	a4, .L42
	.loc 1 165 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL59:
	mov.n	a3, a10
.LVL60:
	.loc 1 167 0
	movi.n	a2, 0xc
	.loc 1 166 0
	beqz.n	a10, .L42
	.loc 1 170 0
	call8	_lock_init_recursive
.LVL61:
	.loc 1 171 0
	movi.n	a8, 0
	.loc 1 171 0
	addi.n	a2, a3, 4
	s32i.n	a2, a3, 8
	.loc 1 171 0
	s32i.n	a8, a3, 4
	.loc 1 173 0
	s32i.n	a3, a4, 0
	.loc 1 174 0
	mov.n	a2, a8
.LVL62:
.L42:
	.loc 1 175 0
	retw.n
.LFE32:
	.size	pthread_cond_init, .-pthread_cond_init
	.section	.text.pthread_cond_destroy,"ax",@progbits
	.align	4
	.global	pthread_cond_destroy
	.type	pthread_cond_destroy, @function
pthread_cond_destroy:
.LFB33:
	.loc 1 178 0
.LVL63:
	entry	sp, 32
.LCFI6:
.LVL64:
	.loc 1 178 0
	mov.n	a5, a2
	.loc 1 182 0
	movi.n	a2, 0x16
.LVL65:
	.loc 1 181 0
	beqz.n	a5, .L48
	.loc 1 181 0 discriminator 1
	l32i.n	a4, a5, 0
	beqz.n	a4, .L48
.LVL66:
	.loc 1 187 0
	mov.n	a10, a4
	call8	_lock_acquire_recursive
.LVL67:
	.loc 1 188 0
	l32i.n	a8, a4, 4
	.loc 1 189 0
	movi.n	a2, 0x10
	movi.n	a3, 0
	movnez	a3, a2, a8
.LVL68:
	.loc 1 191 0
	mov.n	a10, a4
	call8	_lock_release_recursive
.LVL69:
	mov.n	a2, a3
	.loc 1 193 0
	bnez.n	a3, .L48
.LVL70:
	.loc 1 195 0
	mov.n	a10, a4
	.loc 1 194 0
	s32i.n	a3, a5, 0
	.loc 1 195 0
	call8	_lock_close_recursive
.LVL71:
	.loc 1 196 0
	mov.n	a10, a4
	call8	free
.LVL72:
.L48:
	.loc 1 200 0
	retw.n
.LFE33:
	.size	pthread_cond_destroy, .-pthread_cond_destroy
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI6-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/pthread.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x76f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7a
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4
	.byte	0x82
	.4byte	0xcc
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x83
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x84
	.4byte	0x73
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x11d
	.4byte	0x73
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1ba
	.4byte	0x56
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1ce
	.4byte	0x56
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.2byte	0x1d0
	.4byte	0x107
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1d1
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1d5
	.4byte	0xf0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x8
	.byte	0x5
	.byte	0x11
	.4byte	0x138
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x5
	.byte	0x12
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x13
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x6f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x76
	.4byte	0x138
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x8
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x9
	.byte	0x4f
	.4byte	0x160
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33
	.byte	0xc
	.byte	0x1f
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x27
	.4byte	0x1ed
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x27
	.4byte	0x1f3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xc
	.byte	0x1
	.byte	0x25
	.4byte	0x1ed
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x26
	.4byte	0x16b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x27
	.4byte	0x1a7
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x1
	.byte	0x28
	.4byte	0x1c8
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x2c
	.4byte	0x225
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2c
	.4byte	0x1ed
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0xc
	.byte	0x1
	.byte	0x2a
	.4byte	0x24a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2b
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2c
	.4byte	0x204
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.4byte	0x225
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x2f
	.4byte	0x2dc
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x2e2
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x38
	.4byte	0x2e8
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x6cf
	.4byte	0x2ae
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x6da
	.4byte	0x2cb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x6e6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x42
	.4byte	0x2c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x375
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x42
	.4byte	0x2dc
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x48
	.4byte	0x2e2
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4b
	.4byte	0x2e8
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x6cf
	.4byte	0x347
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x6da
	.4byte	0x364
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x6e6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x59
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x59
	.4byte	0x2dc
	.4byte	.LLST6
	.uleb128 0x16
	.string	"mut"
	.byte	0x1
	.byte	0x59
	.4byte	0x504
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"to"
	.byte	0x1
	.byte	0x59
	.4byte	0x50a
	.4byte	.LLST7
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5c
	.4byte	0x155
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x2e2
	.4byte	.LLST10
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.byte	0x80
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x44e
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x67
	.4byte	0x113
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0x67
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x67
	.4byte	0x113
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x68
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0x6f1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0x6fc
	.4byte	0x466
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL41
	.4byte	0x6cf
	.4byte	0x47a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL42
	.4byte	0x6e6
	.4byte	0x48e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL43
	.4byte	0x708
	.4byte	0x4a2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x713
	.4byte	0x4c2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL47
	.4byte	0x6cf
	.4byte	0x4d6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x6e6
	.4byte	0x4ea
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x71f
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x72b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x510
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x54
	.4byte	0x2c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x565
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x54
	.4byte	0x2dc
	.4byte	.LLST14
	.uleb128 0x16
	.string	"mut"
	.byte	0x1
	.byte	0x54
	.4byte	0x504
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0x375
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0x97
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x597
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x97
	.4byte	0x597
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF79
	.4byte	0x5ad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x107
	.uleb128 0x1e
	.4byte	0x8a
	.4byte	0x5ad
	.uleb128 0x1f
	.4byte	0x7a
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x59d
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9d
	.4byte	0x2c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x620
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x9d
	.4byte	0x2dc
	.4byte	.LLST16
	.uleb128 0x11
	.string	"att"
	.byte	0x1
	.byte	0x9d
	.4byte	0x620
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa5
	.4byte	0x2e2
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LVL59
	.4byte	0x736
	.4byte	0x60f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0x741
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x626
	.uleb128 0x7
	.4byte	0x107
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb1
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bd
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0xb1
	.4byte	0x2dc
	.4byte	.LLST19
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0xb3
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xb9
	.4byte	0x2e2
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LVL67
	.4byte	0x6cf
	.4byte	0x684
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL69
	.4byte	0x6e6
	.4byte	0x698
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL71
	.4byte	0x74c
	.4byte	0x6ac
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0x757
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x91
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1890
	.sleb128 0
	.uleb128 0x20
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x3
	.byte	0x21
	.uleb128 0x21
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x265
	.uleb128 0x20
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0x25
	.uleb128 0x20
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
	.byte	0x4d
	.uleb128 0x21
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x57a
	.uleb128 0x20
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xa
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x21
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x20
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xa
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x3
	.byte	0x1d
	.uleb128 0x20
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x3
	.byte	0x1f
	.uleb128 0x20
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xb
	.byte	0x5a
	.uleb128 0x22
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x65
	.byte	0x73
	.byte	0x70
	.byte	0x5f
	.byte	0x70
	.byte	0x74
	.byte	0x68
	.byte	0x72
	.byte	0x65
	.byte	0x61
	.byte	0x64
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x5
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x24
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x10624dd3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x23
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x7c
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x24
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x10624dd3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x25
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x10624dd3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x24
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x10624dd3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x2a
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x10624dd3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x36
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"tv_nsec"
.LASF70:
	.string	"vQueueDelete"
.LASF19:
	.string	"is_initialized"
.LASF74:
	.string	"_lock_close_recursive"
.LASF46:
	.string	"waiter_list"
.LASF5:
	.string	"short int"
.LASF52:
	.string	"pthread_cond_timedwait"
.LASF10:
	.string	"sizetype"
.LASF55:
	.string	"cur_time"
.LASF51:
	.string	"pthread_cond_broadcast"
.LASF7:
	.string	"__uint32_t"
.LASF62:
	.string	"pthread_cond_destroy"
.LASF13:
	.string	"time_t"
.LASF37:
	.string	"tqe_prev"
.LASF48:
	.string	"cond"
.LASF44:
	.string	"esp_pthread_cond"
.LASF71:
	.string	"pthread_mutex_lock"
.LASF36:
	.string	"tqe_next"
.LASF64:
	.string	"xQueueGenericSend"
.LASF58:
	.string	"pthread_cond_wait"
.LASF68:
	.string	"pthread_mutex_unlock"
.LASF6:
	.string	"long long int"
.LASF27:
	.string	"TickType_t"
.LASF42:
	.string	"tqh_first"
.LASF41:
	.string	"esp_pthread_cond_waiter_t"
.LASF9:
	.string	"long int"
.LASF38:
	.string	"esp_pthread_cond_waiter"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF79:
	.string	"__FUNCTION__"
.LASF28:
	.string	"QueueHandle_t"
.LASF39:
	.string	"wait_sem"
.LASF49:
	.string	"entry"
.LASF40:
	.string	"link"
.LASF78:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/pthread"
.LASF29:
	.string	"SemaphoreHandle_t"
.LASF4:
	.string	"unsigned char"
.LASF66:
	.string	"gettimeofday"
.LASF3:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"uint32_t"
.LASF17:
	.string	"pthread_mutex_t"
.LASF1:
	.string	"unsigned int"
.LASF26:
	.string	"BaseType_t"
.LASF63:
	.string	"_lock_acquire_recursive"
.LASF47:
	.string	"esp_pthread_cond_t"
.LASF73:
	.string	"_lock_init_recursive"
.LASF2:
	.string	"short unsigned int"
.LASF67:
	.string	"xQueueCreateCountingSemaphore"
.LASF12:
	.string	"char"
.LASF53:
	.string	"timeout_ticks"
.LASF20:
	.string	"pthread_condattr_t"
.LASF56:
	.string	"diff_time"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF45:
	.string	"lock"
.LASF72:
	.string	"calloc"
.LASF61:
	.string	"pthread_cond_init"
.LASF25:
	.string	"_Bool"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF18:
	.string	"pthread_cond_t"
.LASF11:
	.string	"long unsigned int"
.LASF59:
	.string	"pthread_condattr_init"
.LASF22:
	.string	"timeval"
.LASF60:
	.string	"attr"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF23:
	.string	"tv_usec"
.LASF16:
	.string	"suseconds_t"
.LASF8:
	.string	"_lock_t"
.LASF43:
	.string	"tqh_last"
.LASF21:
	.string	"timespec"
.LASF14:
	.string	"tv_sec"
.LASF54:
	.string	"abs_time"
.LASF76:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF75:
	.string	"free"
.LASF65:
	.string	"_lock_release_recursive"
.LASF57:
	.string	"timeout_msec"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF50:
	.string	"pthread_cond_signal"
.LASF69:
	.string	"xQueueGenericReceive"
.LASF77:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_cond_var.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
