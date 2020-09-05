	.file	"sys_arch.c"
	.text
.Ltext0:
	.section	.text.sys_thread_sem_free,"ax",@progbits
	.align	4
	.type	sys_thread_sem_free, @function
sys_thread_sem_free:
.LFB51:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/freertos/sys_arch.c"
	.loc 1 506 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 509 0
	beqz.n	a2, .L1
	.loc 1 509 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	beqz.n	a10, .L3
	.loc 1 511 0 is_stmt 1
	call8	vQueueDelete
.LVL2:
.L3:
	.loc 1 516 0
	mov.n	a10, a2
	call8	free
.LVL3:
.L1:
	retw.n
.LFE51:
	.size	sys_thread_sem_free, .-sys_thread_sem_free
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	4
	.global	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB27:
	.loc 1 59 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 62 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL6:
	s32i.n	a10, a2, 0
.LVL7:
	.loc 1 70 0
	movi.n	a8, 1
	movi.n	a2, 0
.LVL8:
	moveqz	a2, a8, a10
	neg	a2, a2
	.loc 1 71 0
	extui	a2, a2, 0, 8
	retw.n
.LFE27:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	4
	.global	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB28:
	.loc 1 77 0
.LVL9:
	entry	sp, 32
.LCFI2:
.L12:
	.loc 1 78 0 discriminator 1
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL10:
	bnei	a10, 1, .L12
	.loc 1 79 0
	retw.n
.LFE28:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_trylock,"ax",@progbits
	.align	4
	.global	sys_mutex_trylock
	.type	sys_mutex_trylock, @function
sys_mutex_trylock:
.LFB29:
	.loc 1 83 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 84 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL12:
	addi.n	a10, a10, -1
	movi.n	a8, 1
	movi.n	a2, 0
.LVL13:
	movnez	a2, a8, a10
	neg	a2, a2
	.loc 1 86 0
	extui	a2, a2, 0, 8
	retw.n
.LFE29:
	.size	sys_mutex_trylock, .-sys_mutex_trylock
	.section	.text.sys_sem_new,"ax",@progbits
	.align	4
	.global	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB32:
	.loc 1 111 0
.LVL14:
	entry	sp, 32
.LCFI4:
.LVL15:
	.loc 1 113 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL16:
	s32i.n	a10, a2, 0
	.loc 1 111 0
	extui	a3, a3, 0, 8
	.loc 1 113 0
	beqz.n	a10, .L16
	.loc 1 113 0 discriminator 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL17:
.L16:
	.loc 1 115 0
	l32i.n	a10, a2, 0
	.loc 1 112 0
	movi	a2, 0xff
.LVL18:
	.loc 1 115 0
	beqz.n	a10, .L17
	.loc 1 120 0
	movi.n	a2, 0
	.loc 1 116 0
	bne	a3, a2, .L17
	.loc 1 117 0
	mov.n	a13, a2
	movi.n	a12, 1
	mov.n	a11, a2
	call8	xQueueGenericReceive
.LVL19:
.L17:
	.loc 1 126 0
	retw.n
.LFE32:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	4
	.global	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB33:
	.loc 1 132 0
.LVL20:
	entry	sp, 32
.LCFI5:
	.loc 1 133 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL21:
	retw.n
.LFE33:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	4
	.global	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB59:
	entry	sp, 32
.LCFI6:
	mov.n	a10, a2
	call8	sys_sem_signal
	retw.n
.LFE59:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_sem_signal_isr,"ax",@progbits
	.align	4
	.global	sys_sem_signal_isr
	.type	sys_sem_signal_isr, @function
sys_sem_signal_isr:
.LFB34:
	.loc 1 139 0
.LVL22:
	.loc 1 139 0
	entry	sp, 48
.LCFI7:
	.loc 1 141 0
	l32i.n	a10, a2, 0
	.loc 1 140 0
	movi.n	a3, 0
	.loc 1 141 0
	mov.n	a11, sp
	.loc 1 140 0
	s32i.n	a3, sp, 0
	.loc 1 141 0
	call8	xQueueGiveFromISR
.LVL23:
	.loc 1 142 0
	l32i.n	a2, sp, 0
.LVL24:
	movi.n	a8, 1
	addi.n	a2, a2, -1
	moveqz	a3, a8, a2
	mov.n	a2, a3
	.loc 1 143 0
	retw.n
.LFE34:
	.size	sys_sem_signal_isr, .-sys_sem_signal_isr
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB35:
	.loc 1 163 0
.LVL25:
	entry	sp, 32
.LCFI8:
	.loc 1 167 0
	call8	xTaskGetTickCount
.LVL26:
	mov.n	a4, a10
.LVL27:
	.loc 1 169 0
	beqz.n	a3, .L34
	.loc 1 170 0
	l32r	a8, .LC0
	movi.n	a13, 0
	muluh	a12, a3, a8
	l32i.n	a10, a2, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL28:
	.loc 1 180 0
	movi.n	a2, -1
.LVL29:
	.loc 1 170 0
	bnei	a10, 1, .L28
.L37:
	.loc 1 171 0
	call8	xTaskGetTickCount
.LVL30:
	.loc 1 172 0
	sub	a10, a10, a4
.LVL31:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL32:
	.loc 1 174 0
	bnez.n	a2, .L28
	.loc 1 175 0
	movi.n	a2, 1
.LVL33:
	retw.n
.LVL34:
.L34:
	.loc 1 183 0 discriminator 1
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL35:
	bnei	a10, 1, .L34
	j	.L37
.LVL36:
.L28:
	.loc 1 196 0
	retw.n
.LFE35:
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_free,"ax",@progbits
	.align	4
	.global	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB36:
	.loc 1 202 0
.LVL37:
	entry	sp, 32
.LCFI9:
	.loc 1 203 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL38:
	retw.n
.LFE36:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	4
	.global	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB57:
	entry	sp, 32
.LCFI10:
	mov.n	a10, a2
	call8	sys_sem_free
	retw.n
.LFE57:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	4
	.global	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB37:
	.loc 1 210 0
.LVL39:
	.loc 1 210 0
	entry	sp, 32
.LCFI11:
	.loc 1 211 0
	movi.n	a10, 8
	.loc 1 210 0
	mov.n	a5, a2
	.loc 1 211 0
	call8	mem_malloc
.LVL40:
	s32i.n	a10, a5, 0
	mov.n	a4, a10
	.loc 1 214 0
	movi	a2, 0xff
.LVL41:
	.loc 1 212 0
	beqz.n	a10, .L41
	.loc 1 217 0
	movi.n	a12, 0
	movi.n	a11, 4
	mov.n	a10, a3
	call8	xQueueGenericCreate
.LVL42:
	s32i.n	a10, a4, 0
	.loc 1 219 0
	l32i.n	a10, a5, 0
	l32i.n	a2, a10, 0
	bnez.n	a2, .L42
	.loc 1 221 0
	call8	free
.LVL43:
	.loc 1 222 0
	movi	a2, 0xff
	retw.n
.L42:
	.loc 1 226 0
	movi.n	a2, 0
	s32i.n	a2, a10, 4
.L41:
	.loc 1 231 0
	retw.n
.LFE37:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	4
	.global	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB38:
	.loc 1 237 0
.LVL44:
	entry	sp, 48
.LCFI12:
	s32i.n	a3, sp, 0
.LVL45:
.L45:
	.loc 1 238 0 discriminator 1
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	l32i.n	a10, a8, 0
	movi.n	a12, -1
	mov.n	a11, sp
.LVL46:
	call8	xQueueGenericSend
.LVL47:
	bnei	a10, 1, .L45
	.loc 1 239 0
	retw.n
.LFE38:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	4
	.global	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB39:
	.loc 1 244 0
.LVL48:
	entry	sp, 48
.LCFI13:
	.loc 1 247 0
	l32i.n	a2, a2, 0
.LVL49:
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, sp
	.loc 1 244 0
	s32i.n	a3, sp, 0
	.loc 1 247 0
	call8	xQueueGenericSend
.LVL50:
	.loc 1 254 0
	addi.n	a10, a10, -1
.LVL51:
	movi.n	a8, 1
	movi.n	a2, 0
	movnez	a2, a8, a10
	neg	a2, a2
	.loc 1 255 0
	extui	a2, a2, 0, 8
	retw.n
.LFE39:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.literal_position
	.literal .LC1, -858993459
	.align	4
	.global	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB40:
	.loc 1 275 0
.LVL52:
	entry	sp, 48
.LCFI14:
	.loc 1 280 0
	call8	xTaskGetTickCount
.LVL53:
	.loc 1 285 0
	l32i.n	a8, a2, 0
	.loc 1 280 0
	mov.n	a5, a10
.LVL54:
	.loc 1 282 0
	moveqz	a3, sp, a3
.LVL55:
	.loc 1 285 0
	bnez.n	a8, .L50
	.loc 1 286 0
	s32i.n	a8, a3, 0
	.loc 1 287 0
	movi.n	a2, -1
.LVL56:
	retw.n
.LVL57:
.L50:
	.loc 1 291 0
	movi.n	a12, -1
	.loc 1 290 0
	beqz.n	a4, .L52
	.loc 1 293 0
	l32r	a8, .LC1
	muluh	a12, a4, a8
	srli	a12, a12, 3
.LVL58:
.L52:
	.loc 1 296 0
	movi.n	a13, 0
	s32i.n	a13, a3, 0
	.loc 1 297 0
	l32i.n	a2, a2, 0
.LVL59:
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	.loc 1 307 0
	movi.n	a2, -1
	.loc 1 297 0
	call8	xQueueGenericReceive
.LVL60:
	mov.n	a3, a10
.LVL61:
	bnei	a10, 1, .L51
	.loc 1 298 0
	call8	xTaskGetTickCount
.LVL62:
	.loc 1 299 0
	sub	a10, a10, a5
.LVL63:
	addx4	a2, a10, a10
	slli	a2, a2, 1
.LVL64:
	.loc 1 302 0
	moveqz	a2, a3, a2
.LVL65:
.L51:
	.loc 1 311 0
	retw.n
.LFE40:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	4
	.global	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB41:
	.loc 1 316 0
.LVL66:
	entry	sp, 48
.LCFI15:
.LVL67:
	.loc 1 324 0
	l32i.n	a2, a2, 0
.LVL68:
	movi.n	a13, 0
	mov.n	a11, sp
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	movnez	a11, a3, a3
.LVL69:
	call8	xQueueGenericReceive
.LVL70:
	.loc 1 330 0
	addi.n	a10, a10, -1
.LVL71:
	movi.n	a8, 1
	movi.n	a2, 0
	movnez	a2, a8, a10
	.loc 1 331 0
	neg	a2, a2
	retw.n
.LFE41:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_mbox_set_owner,"ax",@progbits
	.align	4
	.global	sys_mbox_set_owner
	.type	sys_mbox_set_owner, @function
sys_mbox_set_owner:
.LFB42:
	.loc 1 337 0
.LVL72:
	entry	sp, 32
.LCFI16:
	.loc 1 338 0
	beqz.n	a2, .L59
	.loc 1 338 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L59
	.loc 1 339 0 is_stmt 1
	s32i.n	a3, a8, 4
.L59:
	retw.n
.LFE42:
	.size	sys_mbox_set_owner, .-sys_mbox_set_owner
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"lwip_arch"
.LC4:
	.string	"\033[0;33mW (%d) %s: WARNING: failed to post NULL msg to mbox\n\033[0m\n"
.LC6:
	.string	"\033[0;33mW (%d) %s: WARNING: mbox has %d message, potential memory leaking\n\033[0m\n"
	.section	.text.sys_mbox_free,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB43:
	.loc 1 351 0
.LVL73:
	entry	sp, 32
.LCFI17:
.LVL74:
	.loc 1 354 0
	beqz.n	a2, .L67
	.loc 1 354 0 discriminator 1
	l32i.n	a3, a2, 0
	.loc 1 354 0 discriminator 1
	beqz.n	a3, .L67
	.loc 1 358 0
	l32i.n	a10, a3, 0
	call8	uxQueueMessagesWaiting
.LVL75:
	.loc 1 364 0
	l32i.n	a8, a2, 0
	.loc 1 358 0
	mov.n	a3, a10
.LVL76:
	.loc 1 364 0
	l32i.n	a8, a8, 4
	beqz.n	a8, .L69
	.loc 1 365 0
	bnez.n	a10, .L71
	.loc 1 371 0
	mov.n	a11, a10
	mov.n	a10, a2
	call8	sys_mbox_trypost
.LVL77:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L71
	.loc 1 373 0 discriminator 4
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC3
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL79:
.L71:
	.loc 1 378 0
	l32i.n	a2, a2, 0
.LVL80:
	movi.n	a3, 0
.LVL81:
	s32i.n	a3, a2, 4
	retw.n
.LVL82:
.L69:
	.loc 1 380 0
	bltui	a10, 2, .L73
	.loc 1 381 0 discriminator 4
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC3
	l32r	a12, .LC7
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL84:
	j	.L74
.L73:
	.loc 1 384 0
	beqz.n	a10, .L75
.L74:
	.loc 1 386 0
	l32i.n	a3, a2, 0
.LVL85:
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	xQueueGenericReset
.LVL86:
.L75:
	.loc 1 390 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	.loc 1 392 0
	movi.n	a3, 0
	.loc 1 390 0
	call8	vQueueDelete
.LVL87:
	.loc 1 391 0
	l32i.n	a10, a2, 0
	call8	free
.LVL88:
	.loc 1 392 0
	s32i.n	a3, a2, 0
.L67:
	retw.n
.LFE43:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.text.sys_thread_new,"ax",@progbits
	.literal_position
	.literal .LC8, 2147483647
	.align	4
	.global	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB44:
	.loc 1 410 0
.LVL89:
	entry	sp, 64
.LCFI18:
	.loc 1 414 0
	l32r	a8, .LC8
	mov.n	a11, a2
	s32i.n	a8, sp, 0
	addi	a15, sp, 16
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a10, a3
	call8	xTaskCreatePinnedToCore
.LVL90:
	.loc 1 421 0
	l32i.n	a8, sp, 16
	addi.n	a10, a10, -1
.LVL91:
	movi.n	a2, 0
.LVL92:
	moveqz	a2, a8, a10
	.loc 1 422 0
	retw.n
.LFE44:
	.size	sys_thread_new, .-sys_thread_new
	.section	.rodata.str1.1
.LC11:
	.string	"\033[0;31mE (%d) %s: sys_init: failed to init lwip protect mutex\n\033[0m\n"
	.section	.text.sys_init,"ax",@progbits
	.literal_position
	.literal .LC9, g_lwip_protect_mutex
	.literal .LC10, .LC2
	.literal .LC12, .LC11
	.literal .LC13, sys_thread_sem_free
	.literal .LC14, sys_thread_sem_key
	.align	4
	.global	sys_init
	.type	sys_init, @function
sys_init:
.LFB45:
	.loc 1 428 0
	entry	sp, 32
.LCFI19:
	.loc 1 429 0
	l32r	a10, .LC9
	l32i.n	a8, a10, 0
	bnez.n	a8, .L93
	.loc 1 430 0
	call8	sys_mutex_new
.LVL93:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L93
	.loc 1 431 0 discriminator 2
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC10
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
.L93:
	.loc 1 436 0
	l32r	a11, .LC13
	l32r	a10, .LC14
	call8	pthread_key_create
.LVL96:
	.loc 1 438 0
	call8	esp_vfs_lwip_sockets_register
.LVL97:
	retw.n
.LFE45:
	.size	sys_init, .-sys_init
	.section	.text.sys_jiffies,"ax",@progbits
	.align	4
	.global	sys_jiffies
	.type	sys_jiffies, @function
sys_jiffies:
.LFB46:
	.loc 1 444 0
	entry	sp, 32
.LCFI20:
	.loc 1 445 0
	call8	xTaskGetTickCount
.LVL98:
	.loc 1 446 0
	mov.n	a2, a10
	retw.n
.LFE46:
	.size	sys_jiffies, .-sys_jiffies
	.section	.text.sys_now,"ax",@progbits
	.align	4
	.global	sys_now
	.type	sys_now, @function
sys_now:
.LFB47:
	.loc 1 451 0
	entry	sp, 32
.LCFI21:
	.loc 1 452 0
	call8	xTaskGetTickCount
.LVL99:
	addx4	a10, a10, a10
	.loc 1 453 0
	slli	a2, a10, 1
	retw.n
.LFE47:
	.size	sys_now, .-sys_now
	.section	.text.sys_arch_protect,"ax",@progbits
	.literal_position
	.literal .LC15, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB48:
	.loc 1 470 0
	entry	sp, 32
.LCFI22:
	.loc 1 471 0
	l32r	a2, .LC15
	l32i.n	a8, a2, 0
	bnez.n	a8, .L101
	.loc 1 472 0
	mov.n	a10, a2
	call8	sys_mutex_new
.LVL100:
.L101:
	.loc 1 474 0
	mov.n	a10, a2
	call8	sys_mutex_lock
.LVL101:
	.loc 1 476 0
	movi.n	a2, 1
	retw.n
.LFE48:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.literal_position
	.literal .LC16, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB49:
	.loc 1 487 0
.LVL102:
	entry	sp, 32
.LCFI23:
	.loc 1 488 0
	l32r	a10, .LC16
	call8	sys_sem_signal
.LVL103:
	retw.n
.LFE49:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata.str1.1
.LC18:
	.string	"\033[0;31mE (%d) %s: thread_sem_init: out of memory\033[0m\n"
	.section	.text.sys_thread_sem_init,"ax",@progbits
	.literal_position
	.literal .LC17, .LC2
	.literal .LC19, .LC18
	.literal .LC20, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_init
	.type	sys_thread_sem_init, @function
sys_thread_sem_init:
.LFB52:
	.loc 1 521 0
	entry	sp, 32
.LCFI24:
	.loc 1 522 0
	movi.n	a10, 4
	call8	mem_malloc
.LVL104:
	mov.n	a2, a10
.LVL105:
	.loc 1 524 0
	bnez.n	a10, .L104
.LBB4:
.LBB5:
	.loc 1 525 0
	call8	esp_log_timestamp
.LVL106:
	l32r	a11, .LC17
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL107:
	retw.n
.L104:
.LBE5:
.LBE4:
	.loc 1 529 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL108:
	s32i.n	a10, a2, 0
	mov.n	a3, a10
	.loc 1 530 0
	bnez.n	a10, .L106
	.loc 1 531 0
	mov.n	a10, a2
	call8	free
.LVL109:
	.loc 1 532 0
	call8	esp_log_timestamp
.LVL110:
	l32r	a11, .LC17
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL111:
	.loc 1 533 0
	mov.n	a2, a3
.LVL112:
	retw.n
.LVL113:
.L106:
	.loc 1 536 0
	l32r	a3, .LC20
	mov.n	a11, a2
	l32i.n	a10, a3, 0
	call8	pthread_setspecific
.LVL114:
	.loc 1 538 0
	retw.n
.LFE52:
	.size	sys_thread_sem_init, .-sys_thread_sem_init
	.section	.text.sys_thread_sem_get,"ax",@progbits
	.literal_position
	.literal .LC21, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_get
	.type	sys_thread_sem_get, @function
sys_thread_sem_get:
.LFB50:
	.loc 1 495 0
	entry	sp, 32
.LCFI25:
	.loc 1 496 0
	l32r	a8, .LC21
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL115:
	.loc 1 498 0
	bnez.n	a10, .L108
	.loc 1 499 0
	call8	sys_thread_sem_init
.LVL116:
.L108:
	.loc 1 503 0
	mov.n	a2, a10
	retw.n
.LFE50:
	.size	sys_thread_sem_get, .-sys_thread_sem_get
	.section	.text.sys_thread_sem_deinit,"ax",@progbits
	.literal_position
	.literal .LC22, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_deinit
	.type	sys_thread_sem_deinit, @function
sys_thread_sem_deinit:
.LFB53:
	.loc 1 541 0
	entry	sp, 32
.LCFI26:
	.loc 1 542 0
	l32r	a2, .LC22
	l32i.n	a10, a2, 0
	call8	pthread_getspecific
.LVL117:
	.loc 1 543 0
	beqz.n	a10, .L109
	.loc 1 544 0
	call8	sys_thread_sem_free
.LVL118:
	.loc 1 545 0
	l32i.n	a10, a2, 0
	movi.n	a11, 0
	call8	pthread_setspecific
.LVL119:
.L109:
	retw.n
.LFE53:
	.size	sys_thread_sem_deinit, .-sys_thread_sem_deinit
	.section	.text.sys_delay_ms,"ax",@progbits
	.literal_position
	.literal .LC23, -858993459
	.align	4
	.global	sys_delay_ms
	.type	sys_delay_ms, @function
sys_delay_ms:
.LFB54:
	.loc 1 550 0
.LVL120:
	entry	sp, 32
.LCFI27:
	.loc 1 551 0
	l32r	a8, .LC23
	muluh	a10, a2, a8
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL121:
	retw.n
.LFE54:
	.size	sys_delay_ms, .-sys_delay_ms
	.section	.bss.sys_thread_sem_key,"aw",@nobits
	.align	4
	.type	sys_thread_sem_key, @object
	.size	sys_thread_sem_key, 4
sys_thread_sem_key:
	.zero	4
	.section	.bss.g_lwip_protect_mutex,"aw",@nobits
	.align	4
	.type	g_lwip_protect_mutex, @object
	.size	g_lwip_protect_mutex, 4
g_lwip_protect_mutex:
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI0-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI5-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI6-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI7-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI10-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI14-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI15-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI17-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI18-.LFB44
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI19-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI20-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI21-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI22-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI23-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI24-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI25-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI26-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI27-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/pthread.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/vfs_lwip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe86
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x77
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0xa0
	.uleb128 0x9
	.4byte	0xc9
	.uleb128 0xa
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x14
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x20
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6f
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x76
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x58
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4f
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2f
	.4byte	0x139
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x9
	.byte	0x30
	.4byte	0x139
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x31
	.4byte	0x123
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x8
	.byte	0x9
	.byte	0x33
	.4byte	0x18a
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x9
	.byte	0x34
	.4byte	0x12e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x35
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x9
	.byte	0x36
	.4byte	0x195
	.uleb128 0x7
	.byte	0x4
	.4byte	0x165
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xa
	.byte	0x3a
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xb
	.byte	0x39
	.4byte	0xcf
	.uleb128 0xd
	.byte	0x4
	.4byte	0x70
	.byte	0xb
	.byte	0x3d
	.4byte	0x224
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF41
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF42
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF43
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF44
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF45
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF46
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF47
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF48
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF49
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF50
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF51
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x62
	.4byte	0xc9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x34
	.4byte	0x2ae
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0x2df
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x208
	.4byte	0x2fd
	.byte	0x1
	.4byte	0x2fd
	.uleb128 0x11
	.string	"sem"
	.byte	0x1
	.2byte	0x20a
	.4byte	0x2fd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x144
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1f9
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34f
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"sem"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0xdaa
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0xdb6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3a
	.4byte	0x1a6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x396
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3a
	.4byte	0x396
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3c
	.4byte	0x1a6
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0xdc1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d9
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0x4c
	.4byte	0x396
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0xdcd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x52
	.4byte	0x1a6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41b
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x1
	.byte	0x52
	.4byte	0x396
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0xdcd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.byte	0x6e
	.4byte	0x1a6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0x6e
	.4byte	0x2fd
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6e
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.byte	0x70
	.4byte	0x1a6
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0xdd9
	.4byte	0x47c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0xde5
	.4byte	0x499
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0xdcd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x83
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f1
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x83
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0xde5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0x8a
	.4byte	0x70
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x538
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0x8a
	.4byte	0x2fd
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8c
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0xdf1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa2
	.4byte	0xf0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x609
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0xa2
	.4byte	0x2fd
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa2
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF94
	.byte	0x1
	.byte	0xa5
	.4byte	0x99
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0xdfd
	.uleb128 0x1e
	.4byte	.LVL28
	.4byte	0xdcd
	.4byte	0x5e5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0xdfd
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xdcd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x635
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0xc9
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xdaa
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd1
	.4byte	0x1a6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a5
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd1
	.4byte	0x6a5
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd1
	.4byte	0x70
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL40
	.4byte	0xe09
	.4byte	0x67d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0xdd9
	.4byte	0x69b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL43
	.4byte	0xdb6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x1
	.byte	0xec
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f8
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.byte	0xec
	.4byte	0x6a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"msg"
	.byte	0x1
	.byte	0xec
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0xde5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.byte	0xf3
	.4byte	0x1a6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x757
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x1
	.byte	0xf3
	.4byte	0x6a5
	.4byte	.LLST11
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0xf3
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf5
	.4byte	0x1a6
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LVL50
	.4byte	0xde5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x112
	.4byte	0xf0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x816
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x112
	.4byte	0x6a5
	.4byte	.LLST13
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.2byte	0x112
	.4byte	0x816
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x112
	.4byte	0xf0
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x114
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x116
	.4byte	0x99
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0xdfd
	.uleb128 0x1e
	.4byte	.LVL60
	.4byte	0xdcd
	.4byte	0x80c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL62
	.4byte	0xdfd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x97
	.uleb128 0x21
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x13b
	.4byte	0xf0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x13b
	.4byte	0x6a5
	.4byte	.LLST18
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x816
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x13d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x13e
	.4byte	0x99
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	.LVL70
	.4byte	0xdcd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ce
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x150
	.4byte	0x6a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x150
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x27
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x15e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c1
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x15e
	.4byte	0x6a5
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x160
	.4byte	0xf0
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LVL75
	.4byte	0xe14
	.uleb128 0x1e
	.4byte	.LVL77
	.4byte	0x6f8
	.4byte	0x927
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0xe20
	.uleb128 0x1e
	.4byte	.LVL79
	.4byte	0xe2b
	.4byte	0x95e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x15
	.4byte	.LVL83
	.4byte	0xe20
	.uleb128 0x1e
	.4byte	.LVL84
	.4byte	0xe2b
	.4byte	0x99b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0xe36
	.4byte	0x9ae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL87
	.4byte	0xdaa
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0xdb6
	.byte	0
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x199
	.4byte	0x15a
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7b
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x199
	.4byte	0xb3
	.4byte	.LLST23
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x199
	.4byte	0x224
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.2byte	0x199
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x199
	.4byte	0x70
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x199
	.4byte	0x70
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x19b
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x19c
	.4byte	0x70
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LVL90
	.4byte	0xe42
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb09
	.uleb128 0x1e
	.4byte	.LVL93
	.4byte	0x34f
	.4byte	0xaa8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.uleb128 0x15
	.4byte	.LVL94
	.4byte	0xe20
	.uleb128 0x1e
	.4byte	.LVL95
	.4byte	0xe2b
	.4byte	0xadf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL96
	.4byte	0xe4e
	.4byte	0xaff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_free
	.byte	0
	.uleb128 0x15
	.4byte	.LVL97
	.4byte	0xe5a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xf0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2d
	.uleb128 0x15
	.4byte	.LVL98
	.4byte	0xdfd
	.byte	0
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xf0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb51
	.uleb128 0x15
	.4byte	.LVL99
	.4byte	0xdfd
	.byte	0
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x19b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb90
	.uleb128 0x1e
	.4byte	.LVL100
	.4byte	0x34f
	.4byte	0xb7f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL101
	.4byte	0x39c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1e6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc8
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL103
	.4byte	0x4b5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x2df
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0x2a
	.4byte	0x2f0
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xc2a
	.uleb128 0x2c
	.4byte	0x2f0
	.uleb128 0x15
	.4byte	.LVL106
	.4byte	0xe20
	.uleb128 0x16
	.4byte	.LVL107
	.4byte	0xe2b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL104
	.4byte	0xe09
	.4byte	0xc3d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL108
	.4byte	0xdd9
	.4byte	0xc5a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL109
	.4byte	0xdb6
	.4byte	0xc6e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL110
	.4byte	0xe20
	.uleb128 0x1e
	.4byte	.LVL111
	.4byte	0xe2b
	.4byte	0xca5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x16
	.4byte	.LVL114
	.4byte	0xe65
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x2fd
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf3
	.uleb128 0x2d
	.string	"sem"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x2fd
	.4byte	.LLST26
	.uleb128 0x15
	.4byte	.LVL115
	.4byte	0xe71
	.uleb128 0x15
	.4byte	.LVL116
	.4byte	0x2df
	.byte	0
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x21c
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3b
	.uleb128 0x2d
	.string	"sem"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x2fd
	.4byte	.LLST27
	.uleb128 0x15
	.4byte	.LVL117
	.4byte	0xe71
	.uleb128 0x15
	.4byte	.LVL118
	.4byte	0x303
	.uleb128 0x16
	.4byte	.LVL119
	.4byte	0xe65
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x225
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd88
	.uleb128 0x28
	.string	"ms"
	.byte	0x1
	.2byte	0x225
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL121
	.4byte	0xe7d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0x1
	.byte	0x30
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0x1
	.byte	0x32
	.4byte	0xa7
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x2e
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x3ac
	.uleb128 0x2f
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0x5a
	.uleb128 0x2e
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x578
	.uleb128 0x2e
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x2e
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x5d0
	.uleb128 0x2e
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x265
	.uleb128 0x2e
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x4f4
	.uleb128 0x2e
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x50a
	.uleb128 0x2f
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x4a
	.uleb128 0x2e
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x395
	.uleb128 0x2f
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xe
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xe
	.byte	0x6b
	.uleb128 0x2e
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x665
	.uleb128 0x2e
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x151
	.uleb128 0x2e
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x11
	.2byte	0x119
	.uleb128 0x2f
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x12
	.byte	0x13
	.uleb128 0x2e
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x11
	.2byte	0x11e
	.uleb128 0x2e
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x11
	.2byte	0x120
	.uleb128 0x2e
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x6
	.2byte	0x32b
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL47-1
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x2e
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE39
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LFE40
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x91
	.sleb128 -48
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LFE41
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE41
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LFE44
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"count"
.LASF54:
	.string	"MEMP_UDP_PCB"
.LASF64:
	.string	"MEMP_SYS_TIMEOUT"
.LASF135:
	.string	"uxQueueMessagesWaiting"
.LASF125:
	.string	"sys_thread_sem_key"
.LASF35:
	.string	"ERR_OK"
.LASF65:
	.string	"MEMP_NETDB"
.LASF101:
	.string	"sys_arch_mbox_fetch"
.LASF4:
	.string	"__uint8_t"
.LASF144:
	.string	"vTaskDelay"
.LASF28:
	.string	"sys_mutex_t"
.LASF95:
	.string	"sys_sem_free"
.LASF0:
	.string	"long long unsigned int"
.LASF148:
	.string	"sys_mbox_s"
.LASF32:
	.string	"sys_mbox_t"
.LASF70:
	.string	"MEMP_PBUF_POOL"
.LASF57:
	.string	"MEMP_TCP_SEG"
.LASF25:
	.string	"QueueHandle_t"
.LASF115:
	.string	"sys_init"
.LASF127:
	.string	"free"
.LASF129:
	.string	"xQueueGenericReceive"
.LASF117:
	.string	"sys_now"
.LASF27:
	.string	"sys_sem_t"
.LASF76:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF118:
	.string	"sys_arch_protect"
.LASF43:
	.string	"ERR_USE"
.LASF91:
	.string	"StartTime"
.LASF38:
	.string	"ERR_TIMEOUT"
.LASF67:
	.string	"MEMP_IP6_REASSDATA"
.LASF139:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF53:
	.string	"MEMP_RAW_PCB"
.LASF119:
	.string	"sys_arch_unprotect"
.LASF105:
	.string	"sys_mbox_set_owner"
.LASF137:
	.string	"esp_log_write"
.LASF24:
	.string	"TaskHandle_t"
.LASF23:
	.string	"TickType_t"
.LASF47:
	.string	"ERR_IF"
.LASF140:
	.string	"pthread_key_create"
.LASF21:
	.string	"BaseType_t"
.LASF111:
	.string	"stacksize"
.LASF89:
	.string	"sys_arch_sem_wait"
.LASF81:
	.string	"sys_mutex_new"
.LASF9:
	.string	"__uint32_t"
.LASF56:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF6:
	.string	"__int16_t"
.LASF93:
	.string	"Elapsed"
.LASF1:
	.string	"unsigned int"
.LASF80:
	.string	"xReturn"
.LASF63:
	.string	"MEMP_IGMP_GROUP"
.LASF149:
	.string	"sys_thread_sem_init"
.LASF108:
	.string	"sys_thread_new"
.LASF13:
	.string	"long unsigned int"
.LASF142:
	.string	"pthread_setspecific"
.LASF44:
	.string	"ERR_ALREADY"
.LASF90:
	.string	"timeout"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF109:
	.string	"name"
.LASF55:
	.string	"MEMP_TCP_PCB"
.LASF131:
	.string	"xQueueGenericSend"
.LASF78:
	.string	"data"
.LASF150:
	.string	"sys_thread_sem_free"
.LASF98:
	.string	"size"
.LASF8:
	.string	"short unsigned int"
.LASF61:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF49:
	.string	"ERR_RST"
.LASF128:
	.string	"xQueueCreateMutex"
.LASF106:
	.string	"sys_mbox_free"
.LASF113:
	.string	"created_task"
.LASF133:
	.string	"xTaskGetTickCount"
.LASF116:
	.string	"sys_jiffies"
.LASF7:
	.string	"short int"
.LASF79:
	.string	"pxMutex"
.LASF100:
	.string	"sys_mbox_trypost"
.LASF75:
	.string	"ESP_LOG_INFO"
.LASF71:
	.string	"MEMP_MAX"
.LASF88:
	.string	"woken"
.LASF34:
	.string	"err_t"
.LASF12:
	.string	"sizetype"
.LASF52:
	.string	"lwip_thread_fn"
.LASF136:
	.string	"esp_log_timestamp"
.LASF68:
	.string	"MEMP_MLD6_GROUP"
.LASF126:
	.string	"vQueueDelete"
.LASF143:
	.string	"pthread_getspecific"
.LASF33:
	.string	"sys_prot_t"
.LASF112:
	.string	"prio"
.LASF40:
	.string	"ERR_INPROGRESS"
.LASF97:
	.string	"mbox"
.LASF141:
	.string	"esp_vfs_lwip_sockets_register"
.LASF87:
	.string	"sys_sem_signal_isr"
.LASF41:
	.string	"ERR_VAL"
.LASF122:
	.string	"sys_thread_sem_deinit"
.LASF110:
	.string	"thread"
.LASF20:
	.string	"_Bool"
.LASF3:
	.string	"__int8_t"
.LASF5:
	.string	"unsigned char"
.LASF51:
	.string	"ERR_ARG"
.LASF46:
	.string	"ERR_CONN"
.LASF124:
	.string	"g_lwip_protect_mutex"
.LASF123:
	.string	"sys_delay_ms"
.LASF132:
	.string	"xQueueGiveFromISR"
.LASF73:
	.string	"ESP_LOG_ERROR"
.LASF92:
	.string	"EndTime"
.LASF130:
	.string	"xQueueGenericCreate"
.LASF66:
	.string	"MEMP_ND6_QUEUE"
.LASF29:
	.string	"sys_thread_t"
.LASF86:
	.string	"sys_sem_signal"
.LASF99:
	.string	"sys_mbox_post"
.LASF121:
	.string	"sys_thread_sem_get"
.LASF48:
	.string	"ERR_ABRT"
.LASF31:
	.string	"owner"
.LASF60:
	.string	"MEMP_TCPIP_MSG_API"
.LASF138:
	.string	"xQueueGenericReset"
.LASF26:
	.string	"SemaphoreHandle_t"
.LASF14:
	.string	"char"
.LASF77:
	.string	"ESP_LOG_VERBOSE"
.LASF58:
	.string	"MEMP_NETBUF"
.LASF36:
	.string	"ERR_MEM"
.LASF102:
	.string	"dummyptr"
.LASF72:
	.string	"ESP_LOG_NONE"
.LASF147:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF120:
	.string	"pval"
.LASF15:
	.string	"pthread_key_t"
.LASF62:
	.string	"MEMP_ARP_QUEUE"
.LASF30:
	.string	"os_mbox"
.LASF85:
	.string	"sys_mutex_lock"
.LASF50:
	.string	"ERR_CLSD"
.LASF39:
	.string	"ERR_RTE"
.LASF146:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/freertos/sys_arch.c"
.LASF16:
	.string	"int8_t"
.LASF134:
	.string	"mem_malloc"
.LASF37:
	.string	"ERR_BUF"
.LASF19:
	.string	"uint32_t"
.LASF83:
	.string	"sys_sem_new"
.LASF74:
	.string	"ESP_LOG_WARN"
.LASF107:
	.string	"mbox_message_num"
.LASF45:
	.string	"ERR_ISCONN"
.LASF103:
	.string	"sys_arch_mbox_tryfetch"
.LASF104:
	.string	"pvDummy"
.LASF59:
	.string	"MEMP_NETCONN"
.LASF17:
	.string	"uint8_t"
.LASF42:
	.string	"ERR_WOULDBLOCK"
.LASF96:
	.string	"sys_mbox_new"
.LASF94:
	.string	"ulReturn"
.LASF18:
	.string	"int16_t"
.LASF22:
	.string	"UBaseType_t"
.LASF69:
	.string	"MEMP_PBUF"
.LASF114:
	.string	"result"
.LASF82:
	.string	"sys_mutex_trylock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
