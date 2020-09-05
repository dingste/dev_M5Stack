	.file	"intr_alloc.c"
	.text
.Ltext0:
	.section	.text.find_desc_for_int,"ax",@progbits
	.literal_position
	.literal .LC0, vector_desc_head
	.align	4
	.type	find_desc_for_int, @function
find_desc_for_int:
.LFB28:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c"
	.loc 1 212 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 213 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL1:
	.loc 1 214 0
	j	.L2
.L5:
	.loc 1 215 0
	l32i.n	a9, a8, 0
	extui	a10, a9, 16, 1
	bne	a10, a3, .L3
	.loc 1 215 0 is_stmt 0 discriminator 1
	extui	a9, a9, 17, 5
	beq	a9, a2, .L4
.L3:
	.loc 1 216 0 is_stmt 1
	l32i.n	a8, a8, 8
.LVL2:
.L2:
	.loc 1 214 0
	bnez.n	a8, .L5
.L4:
	.loc 1 219 0
	mov.n	a2, a8
.LVL3:
	retw.n
.LFE28:
	.size	find_desc_for_int, .-find_desc_for_int
	.section	.iram1.14,"ax",@progbits
	.literal_position
	.literal .LC1, spinlock
	.align	4
	.type	shared_intr_isr, @function
shared_intr_isr:
.LFB36:
	.loc 1 496 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 499 0
	l32r	a3, .LC1
	.loc 1 498 0
	l32i.n	a2, a2, 4
.LVL6:
	.loc 1 499 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL7:
	.loc 1 500 0
	j	.L7
.L10:
	.loc 1 501 0
	l32i.n	a8, a2, 0
	bbsi	a8, 0, .L8
	.loc 1 502 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L9
	.loc 1 502 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	l32i.n	a8, a2, 8
	bnone	a9, a8, .L8
.L9:
	.loc 1 506 0
	l32i.n	a8, a2, 12
	l32i.n	a10, a2, 16
	callx8	a8
.LVL8:
.L8:
	.loc 1 515 0
	l32i.n	a2, a2, 20
.LVL9:
.L7:
	.loc 1 500 0
	bnez.n	a2, .L10
	.loc 1 517 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL10:
	retw.n
.LFE36:
	.size	shared_intr_isr, .-shared_intr_isr
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"!((vd->flags&VECDESC_FL_SHARED)&&(vd->flags&VECDESC_FL_NONSHARED))"
.LC6:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c"
	.section	.text.is_vect_desc_usable,"ax",@progbits
	.literal_position
	.literal .LC2, int_desc
	.literal .LC4, .LC3
	.literal .LC5, __func__$5407
	.literal .LC7, .LC6
	.literal .LC8, _xt_interrupt_table
	.literal .LC9, xt_unhandled_interrupt
	.align	4
	.type	is_vect_desc_usable, @function
is_vect_desc_usable:
.LFB34:
	.loc 1 319 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 321 0
	l32i.n	a10, a2, 0
	.loc 1 322 0
	l32r	a12, .LC2
	.loc 1 321 0
	extui	a10, a10, 17, 5
.LVL12:
	.loc 1 322 0
	addx4	a8, a10, a4
	addx4	a8, a8, a12
	l32i.n	a9, a8, 8
	movi.n	a11, 0
	beqi	a9, 1, .L24
	.loc 1 326 0 discriminator 1
	movi.n	a8, 1
	addi	a9, a9, -2
	mov.n	a6, a11
	add.n	a5, a5, a8
.LVL13:
	moveqz	a6, a8, a9
	movnez	a8, a11, a5
	and	a8, a6, a8
	bne	a8, a11, .L24
	.loc 1 331 0
	slli	a5, a10, 4
.LVL14:
	add.n	a5, a12, a5
	l32i.n	a9, a5, 0
	bbc	a3, a9, .L18
	l32i.n	a5, a5, 4
	.loc 1 336 0
	bbci	a3, 9, .L19
	.loc 1 336 0 is_stmt 0 discriminator 1
	bne	a5, a11, .L20
	j	.L18
.L19:
	.loc 1 337 0 is_stmt 1
	beqi	a5, 1, .L18
.L20:
	.loc 1 342 0
	l16ui	a9, a2, 0
	bbsi	a9, 0, .L18
	.loc 1 348 0
	movi.n	a2, 0xc
.LVL15:
	and	a2, a9, a2
	bnei	a2, 12, .L21
	.loc 1 348 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	l32r	a10, .LC7
.LVL16:
	movi	a11, 0x15c
	call8	__assert_func
.LVL17:
.L21:
	.loc 1 350 0 is_stmt 1
	movi.n	a12, 8
	and	a12, a9, a12
	bnez.n	a12, .L18
	.loc 1 355 0
	movi.n	a11, 4
	and	a11, a9, a11
	beqz.n	a11, .L22
	.loc 1 356 0
	bbci	a3, 8, .L18
.LVL18:
.LBB24:
	.loc 1 360 0
	extui	a8, a9, 1, 1
	extui	a3, a3, 10, 1
.LVL19:
	sub	a3, a3, a8
	movi.n	a8, 1
	movnez	a8, a12, a3
	j	.L18
.LVL20:
.L22:
.LBE24:
.LBB25:
.LBB26:
	.loc 1 315 0
	l32r	a2, .LC8
	add.n	a4, a10, a4
.LVL21:
	addx8	a4, a4, a2
.LBE26:
.LBE25:
	.loc 1 369 0
	l32r	a8, .LC9
	l32i.n	a2, a4, 0
	sub	a2, a2, a8
	movi.n	a8, 1
	movnez	a8, a11, a2
	j	.L18
.LVL22:
.L24:
	.loc 1 324 0
	mov.n	a8, a11
.LVL23:
.L18:
	.loc 1 376 0
	mov.n	a2, a8
	retw.n
.LFE34:
	.size	is_vect_desc_usable, .-is_vect_desc_usable
	.section	.text.get_desc_for_int,"ax",@progbits
	.literal_position
	.literal .LC10, 2052
	.literal .LC11, -4063233
	.literal .LC12, -65537
	.literal .LC13, vector_desc_head
	.literal .LC14, 65536
	.align	4
	.type	get_desc_for_int, @function
get_desc_for_int:
.LFB29:
	.loc 1 225 0
.LVL24:
	entry	sp, 32
.LCFI3:
	.loc 1 226 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	find_desc_for_int
.LVL25:
	mov.n	a5, a10
.LVL26:
	.loc 1 227 0
	bnez.n	a10, .L38
.LVL27:
.LBB32:
.LBB33:
.LBB34:
	.loc 1 228 0
	l32r	a11, .LC10
	movi.n	a10, 0xc
	call8	heap_caps_malloc
.LVL28:
	mov.n	a4, a10
.LVL29:
	.loc 1 229 0
	beqz.n	a10, .L38
	.loc 1 230 0
	movi.n	a12, 0xc
	mov.n	a11, a5
	call8	memset
.LVL30:
	.loc 1 231 0
	l32i.n	a10, a4, 0
	l32r	a8, .LC11
	extui	a2, a2, 0, 5
.LVL31:
	slli	a9, a2, 17
	and	a8, a10, a8
	.loc 1 232 0
	l32r	a10, .LC12
	.loc 1 231 0
	or	a8, a8, a9
	.loc 1 232 0
	extui	a3, a3, 0, 1
.LVL32:
	slli	a9, a3, 16
	and	a8, a8, a10
	or	a8, a8, a9
.LBB35:
.LBB36:
	.loc 1 192 0
	l32r	a12, .LC13
.LBE36:
.LBE35:
	.loc 1 232 0
	s32i.n	a8, a4, 0
.LVL33:
.LBB38:
.LBB37:
	.loc 1 192 0
	l32i.n	a9, a12, 0
.LVL34:
	.loc 1 196 0
	l32r	a11, .LC14
	.loc 1 192 0
	mov.n	a13, a9
	j	.L39
.LVL35:
.L42:
	.loc 1 195 0
	l32i.n	a8, a13, 0
	extui	a10, a8, 16, 1
	blt	a3, a10, .L40
	.loc 1 196 0
	l32i.n	a10, a4, 0
	xor	a10, a8, a10
	bany	a10, a11, .L41
	extui	a8, a8, 17, 5
	bge	a8, a2, .L40
.L41:
.LVL36:
	.loc 1 198 0
	mov.n	a5, a13
	l32i.n	a13, a13, 8
.LVL37:
.L39:
	.loc 1 194 0
	bnez.n	a13, .L42
.L40:
	.loc 1 200 0
	movi.n	a2, 1
	movi.n	a8, 0
	moveqz	a8, a2, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L47
	moveqz	a8, a2, a5
	beqz.n	a8, .L43
.L47:
	.loc 1 202 0
	s32i.n	a13, a4, 8
	.loc 1 203 0
	s32i.n	a4, a12, 0
	j	.L48
.L43:
	.loc 1 205 0
	s32i.n	a4, a5, 8
	.loc 1 206 0
	s32i.n	a13, a4, 8
.L48:
	mov.n	a5, a4
.LVL38:
.L38:
.LBE37:
.LBE38:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 238 0
	mov.n	a2, a5
	retw.n
.LFE29:
	.size	get_desc_for_int, .-get_desc_for_int
	.section	.text.esp_intr_mark_shared,"ax",@progbits
	.literal_position
	.literal .LC15, spinlock
	.align	4
	.global	esp_intr_mark_shared
	.type	esp_intr_mark_shared, @function
esp_intr_mark_shared:
.LFB31:
	.loc 1 267 0
.LVL39:
	entry	sp, 32
.LCFI4:
	.loc 1 269 0
	movi.n	a5, 0x1f
	.loc 1 267 0
	extui	a4, a4, 0, 8
	.loc 1 269 0
	blt	a5, a2, .L55
	ssr	a5
	sra	a5, a3
	sub	a5, a5, a3
	bltz	a5, .L55
	.loc 1 271 0
	l32r	a5, .LC15
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL40:
	.loc 1 272 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	get_desc_for_int
.LVL41:
	mov.n	a2, a10
.LVL42:
	mov.n	a10, a5
	.loc 1 273 0
	bnez.n	a2, .L52
	.loc 1 274 0
	call8	vTaskExitCritical
.LVL43:
	.loc 1 275 0
	movi	a2, 0x101
.LVL44:
	retw.n
.LVL45:
.L52:
	.loc 1 277 0
	movi.n	a3, 4
.LVL46:
	.loc 1 278 0
	beqz.n	a4, .L57
.L53:
	.loc 1 278 0 is_stmt 0 discriminator 1
	movi.n	a3, 6
.L57:
	s16i	a3, a2, 0
	.loc 1 279 0 is_stmt 1 discriminator 1
	call8	vTaskExitCritical
.LVL47:
	.loc 1 281 0 discriminator 1
	movi.n	a2, 0
.LVL48:
	retw.n
.LVL49:
.L55:
	.loc 1 269 0
	movi	a2, 0x102
.LVL50:
	.loc 1 282 0
	retw.n
.LFE31:
	.size	esp_intr_mark_shared, .-esp_intr_mark_shared
	.section	.text.esp_intr_reserve,"ax",@progbits
	.literal_position
	.literal .LC16, spinlock
	.align	4
	.global	esp_intr_reserve
	.type	esp_intr_reserve, @function
esp_intr_reserve:
.LFB32:
	.loc 1 285 0
.LVL51:
	entry	sp, 32
.LCFI5:
	.loc 1 287 0
	movi.n	a4, 0x1f
	blt	a4, a2, .L62
	ssr	a4
	sra	a4, a3
	sub	a4, a4, a3
	extui	a4, a4, 31, 1
	bnez.n	a4, .L62
	.loc 1 289 0
	l32r	a5, .LC16
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL52:
	.loc 1 290 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	get_desc_for_int
.LVL53:
	.loc 1 291 0
	bnez.n	a10, .L61
	.loc 1 292 0
	mov.n	a10, a5
.LVL54:
	call8	vTaskExitCritical
.LVL55:
	.loc 1 293 0
	movi	a2, 0x101
.LVL56:
	retw.n
.LVL57:
.L61:
	.loc 1 295 0
	movi.n	a2, 1
.LVL58:
	s16i	a2, a10, 0
	.loc 1 296 0
	mov.n	a10, a5
.LVL59:
	call8	vTaskExitCritical
.LVL60:
	.loc 1 298 0
	mov.n	a2, a4
	retw.n
.LVL61:
.L62:
	.loc 1 287 0
	movi	a2, 0x102
.LVL62:
	.loc 1 299 0
	retw.n
.LFE32:
	.size	esp_intr_reserve, .-esp_intr_reserve
	.section	.iram1.15,"ax",@progbits
	.literal_position
	.literal .LC17, spinlock
	.literal .LC18, non_iram_int_mask
	.align	4
	.global	esp_intr_set_in_iram
	.type	esp_intr_set_in_iram, @function
esp_intr_set_in_iram:
.LFB39:
	.loc 1 692 0
.LVL63:
	entry	sp, 32
.LCFI6:
	.loc 1 692 0
	extui	a3, a3, 0, 8
	.loc 1 693 0
	movi	a8, 0x102
	beqz.n	a2, .L65
	.loc 1 694 0
	l32i.n	a4, a2, 0
.LVL64:
	.loc 1 695 0
	l16ui	a2, a4, 0
.LVL65:
	bbsi	a2, 2, .L65
	.loc 1 698 0
	l32r	a2, .LC17
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL66:
	.loc 1 699 0
	l32i.n	a8, a4, 0
	movi.n	a9, 1
	extui	a8, a8, 17, 5
	ssl	a8
	sll	a8, a9
.LVL67:
	l16ui	a13, a4, 0
	mov.n	a10, a2
	l32r	a12, .LC18
	.loc 1 700 0
	beqz.n	a3, .L66
	.loc 1 701 0
	movi.n	a11, 2
	or	a9, a13, a11
	s16i	a9, a4, 0
	.loc 1 702 0
	l32i.n	a9, a4, 0
	extui	a9, a9, 16, 1
	addx4	a4, a9, a12
.LVL68:
	l32i.n	a2, a4, 0
	movi.n	a9, -1
	xor	a8, a9, a8
.LVL69:
	and	a8, a2, a8
	j	.L71
.LVL70:
.L66:
	.loc 1 704 0
	movi.n	a9, -3
	and	a9, a13, a9
	s16i	a9, a4, 0
	.loc 1 705 0
	l32i.n	a4, a4, 0
.LVL71:
	extui	a4, a4, 16, 1
	addx4	a4, a4, a12
	l32i.n	a2, a4, 0
	or	a8, a2, a8
.LVL72:
.L71:
	s32i.n	a8, a4, 0
	.loc 1 707 0
	call8	vTaskExitCritical
.LVL73:
	.loc 1 708 0
	movi.n	a8, 0
.L65:
	.loc 1 709 0
	mov.n	a2, a8
	retw.n
.LFE39:
	.size	esp_intr_set_in_iram, .-esp_intr_set_in_iram
	.section	.text.esp_intr_get_intno,"ax",@progbits
	.align	4
	.global	esp_intr_get_intno
	.type	esp_intr_get_intno, @function
esp_intr_get_intno:
.LFB41:
	.loc 1 782 0
.LVL74:
	entry	sp, 32
.LCFI7:
	.loc 1 783 0
	l32i.n	a2, a2, 0
.LVL75:
	l32i.n	a2, a2, 0
	.loc 1 784 0
	extui	a2, a2, 17, 5
	retw.n
.LFE41:
	.size	esp_intr_get_intno, .-esp_intr_get_intno
	.section	.text.esp_intr_get_cpu,"ax",@progbits
	.align	4
	.global	esp_intr_get_cpu
	.type	esp_intr_get_cpu, @function
esp_intr_get_cpu:
.LFB42:
	.loc 1 787 0
.LVL76:
	entry	sp, 32
.LCFI8:
	.loc 1 788 0
	l32i.n	a2, a2, 0
.LVL77:
	l32i.n	a2, a2, 0
	.loc 1 789 0
	extui	a2, a2, 16, 1
	retw.n
.LFE42:
	.size	esp_intr_get_cpu, .-esp_intr_get_cpu
	.section	.iram1.16,"ax",@progbits
	.literal_position
	.literal .LC19, spinlock
	.align	4
	.global	esp_intr_enable
	.type	esp_intr_enable, @function
esp_intr_enable:
.LFB43:
	.loc 1 803 0
.LVL78:
	entry	sp, 32
.LCFI9:
	.loc 1 804 0
	bnez.n	a2, .L75
.LVL79:
.L81:
	movi	a2, 0x102
	retw.n
.LVL80:
.L75:
	.loc 1 805 0
	call8	xPortInIsrContext
.LVL81:
	l32r	a3, .LC19
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL82:
	.loc 1 807 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L77
	.loc 1 808 0
	l16ui	a10, a8, 0
	movi.n	a9, -2
	and	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 809 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 23
	j	.L82
.L77:
	.loc 1 811 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 2
.L82:
	srai	a11, a11, 24
.LVL83:
	l32i.n	a8, a2, 0
	.loc 1 813 0
	bltz	a11, .L79
	.loc 1 815 0
	l32i.n	a10, a8, 0
	extui	a12, a10, 17, 5
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL84:
	j	.L80
.LVL85:
.L79:
.LBB39:
.LBB40:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL86:
#NO_APP
.LBE40:
.LBE39:
	.loc 1 818 0
	l32i.n	a10, a8, 0
	extui	a8, a10, 16, 1
	bne	a8, a2, .L81
	.loc 1 819 0
	extui	a10, a10, 17, 5
	movi.n	a2, 1
	ssl	a10
	sll	a10, a2
	call8	xt_ints_on
.LVL87:
.L80:
	.loc 1 821 0
	call8	xPortInIsrContext
.LVL88:
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL89:
	.loc 1 822 0
	movi.n	a2, 0
	.loc 1 823 0
	retw.n
.LFE43:
	.size	esp_intr_enable, .-esp_intr_enable
	.section	.rodata.str1.1
.LC21:
	.string	"svd != NULL"
	.section	.iram1.17,"ax",@progbits
	.literal_position
	.literal .LC20, spinlock
	.literal .LC22, .LC21
	.literal .LC23, __func__$5493
	.literal .LC24, .LC6
	.align	4
	.global	esp_intr_disable
	.type	esp_intr_disable, @function
esp_intr_disable:
.LFB44:
	.loc 1 826 0
.LVL90:
	entry	sp, 32
.LCFI10:
	.loc 1 827 0
	beqz.n	a2, .L95
.LVL91:
.LBB46:
.LBB47:
	.loc 1 828 0
	call8	xPortInIsrContext
.LVL92:
	l32r	a3, .LC20
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL93:
	.loc 1 831 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L85
.LBB48:
	.loc 1 832 0
	l16ui	a10, a8, 0
	movi.n	a9, 1
	or	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 833 0
	l32i.n	a11, a8, 0
	.loc 1 835 0
	l32i.n	a8, a2, 0
	.loc 1 833 0
	slli	a11, a11, 23
	.loc 1 835 0
	l32i.n	a8, a8, 4
	.loc 1 833 0
	srai	a11, a11, 24
.LVL94:
	.loc 1 836 0
	bnez.n	a8, .L96
	l32r	a13, .LC22
	l32r	a12, .LC23
	l32r	a10, .LC24
	movi	a11, 0x344
.LVL95:
	call8	__assert_func
.LVL96:
.L96:
	.loc 1 838 0
	l32i.n	a10, a8, 0
	slli	a9, a10, 23
	srai	a9, a9, 24
	bne	a11, a9, .L87
	bbci	a10, 0, .L88
.L87:
	.loc 1 842 0
	l32i.n	a8, a8, 20
.LVL97:
	.loc 1 837 0
	bnez.n	a8, .L96
	j	.L90
.LVL98:
.L85:
.LBE48:
	.loc 1 845 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 2
	srai	a11, a11, 24
.LVL99:
	j	.L90
.L93:
	.loc 1 851 0
	l32i.n	a2, a2, 0
.LVL100:
	movi.n	a12, 6
	l32i.n	a10, a2, 0
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL101:
	j	.L91
.LVL102:
.L94:
	.loc 1 855 0
	l32i.n	a8, a2, 0
.LBB49:
.LBB50:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL103:
#NO_APP
.LBE50:
.LBE49:
	.loc 1 855 0
	l32i.n	a10, a8, 0
	extui	a8, a10, 16, 1
	beq	a8, a2, .L92
	.loc 1 856 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL104:
	j	.L95
.LVL105:
.L92:
	.loc 1 859 0
	extui	a10, a10, 17, 5
	movi.n	a2, 1
	ssl	a10
	sll	a10, a2
	call8	xt_ints_off
.LVL106:
.L91:
	.loc 1 861 0
	call8	xPortInIsrContext
.LVL107:
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL108:
	.loc 1 862 0
	movi.n	a2, 0
	retw.n
.LVL109:
.L95:
.LBE47:
.LBE46:
	.loc 1 827 0
	movi	a2, 0x102
	retw.n
.LVL110:
.L90:
.LBB52:
.LBB51:
	.loc 1 848 0
	bltz	a11, .L94
	j	.L93
.LVL111:
.L88:
	bgez	a11, .L91
	j	.L94
.LBE51:
.LBE52:
.LFE44:
	.size	esp_intr_disable, .-esp_intr_disable
	.section	.text.esp_intr_alloc_intrstatus,"ax",@progbits
	.literal_position
	.literal .LC27, 2147483647
	.literal .LC28, -1074528256
	.literal .LC29, 267649023
	.literal .LC30, 2052
	.literal .LC31, spinlock
	.literal .LC32, vector_desc_head
	.literal .LC33, .LC21
	.literal .LC34, __func__$5372
	.literal .LC35, .LC6
	.literal .LC36, -4063233
	.literal .LC37, int_desc
	.literal .LC38, shared_intr_isr
	.literal .LC39, -1069547521
	.literal .LC40, non_iram_int_mask
	.align	4
	.global	esp_intr_alloc_intrstatus
	.type	esp_intr_alloc_intrstatus, @function
esp_intr_alloc_intrstatus:
.LFB37:
	.loc 1 541 0
.LVL112:
	entry	sp, 96
.LCFI11:
.LVL113:
	.loc 1 541 0
	s32i.n	a4, sp, 28
	.loc 1 546 0
	movi	a4, 0x300
.LVL114:
	.loc 1 541 0
	s32i.n	a5, sp, 32
	s32i.n	a7, sp, 36
	s32i.n	a6, sp, 20
	.loc 1 546 0
	and	a5, a3, a4
.LVL115:
	.loc 1 541 0
	.loc 1 546 0
	beq	a5, a4, .L146
	.loc 1 548 0
	movi	a4, 0xf0
	bnone	a3, a4, .L157
	.loc 1 546 0
	movi	a4, 0x102
	.loc 1 548 0
	bnez.n	a6, .L100
.L157:
.LVL116:
.LBB64:
.LBB65:
	.loc 1 550 0
	movi	a5, 0x100
	and	a5, a3, a5
	beqz.n	a5, .L102
	l32i.n	a4, sp, 20
	beqz.n	a4, .L146
	bltz	a2, .L146
.L102:
	.loc 1 552 0
	l32i.n	a9, sp, 28
	beqz.n	a9, .L158
	l32i.n	a9, sp, 32
.LBE65:
.LBE64:
	.loc 1 546 0
	movi	a4, 0x102
.LBB78:
.LBB75:
	.loc 1 552 0
	beqz.n	a9, .L100
.L158:
	.loc 1 554 0
	bbci	a3, 10, .L104
	.loc 1 555 0
	l32i.n	a4, sp, 20
	l32r	a6, .LC28
.LVL117:
	l32r	a7, .LC29
.LVL118:
	add.n	a6, a4, a6
.LBE75:
.LBE78:
	.loc 1 546 0
	movi	a4, 0x102
.LBB79:
.LBB76:
	.loc 1 555 0
	bgeu	a7, a6, .L100
.L104:
	.loc 1 561 0
	movi	a4, 0xfe
	bany	a3, a4, .L105
	.loc 1 563 0
	movi.n	a4, 2
	.loc 1 562 0
	bnez.n	a5, .L196
.L106:
	.loc 1 565 0
	movi.n	a4, 0xe
.L196:
	or	a3, a3, a4
.LVL119:
.L105:
	.loc 1 572 0
	beqi	a2, -1, .L149
.LVL120:
	.loc 1 573 0
	movi.n	a4, -2
	beq	a2, a4, .L150
	.loc 1 574 0
	movi.n	a5, -3
	movi.n	a4, 0x10
	beq	a2, a5, .L109
	.loc 1 575 0
	movi.n	a5, -4
	movi.n	a4, 7
	beq	a2, a5, .L109
	.loc 1 576 0
	movi.n	a5, -5
	movi.n	a4, 0x1d
	beq	a2, a5, .L109
	.loc 1 543 0
	movi.n	a4, -1
	j	.L107
.LVL121:
.L149:
	.loc 1 572 0
	movi.n	a4, 6
	j	.L107
.LVL122:
.L150:
	.loc 1 573 0
	movi.n	a4, 0xf
.LVL123:
.L107:
	.loc 1 577 0
	addi.n	a6, a2, 6
	movi.n	a5, 0xb
	moveqz	a4, a5, a6
.LVL124:
.L109:
	.loc 1 580 0
	l32r	a11, .LC30
	movi.n	a10, 8
	call8	heap_caps_malloc
.LVL125:
	s32i.n	a10, sp, 16
.LVL126:
	.loc 1 581 0
	beqz.n	a10, .L155
	.loc 1 583 0
	l32r	a10, .LC31
.LVL127:
	call8	vTaskEnterCritical
.LVL128:
.LBB66:
.LBB67:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a6
 extui a6,a6,13,1
# 0 "" 2
.LVL129:
#NO_APP
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	.loc 1 389 0
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL130:
	.loc 1 393 0
	movi	a5, 0xfe
	mov.n	a8, a3
	bany	a3, a5, .L110
	movi.n	a8, 0xe
	or	a8, a3, a8
.LVL131:
.L110:
.LBB70:
.LBB71:
	.loc 1 243 0
	l32r	a5, .LC32
	.loc 1 245 0
	movi.n	a12, 4
	.loc 1 243 0
	l32i.n	a5, a5, 0
.LVL132:
	j	.L111
.L117:
	.loc 1 245 0
	l16ui	a10, a5, 0
	l32i.n	a9, a5, 0
	bany	a10, a12, .L112
	.loc 1 246 0
	slli	a10, a9, 2
	srai	a10, a10, 24
	bne	a2, a10, .L113
	extui	a10, a9, 16, 1
	bne	a6, a10, .L113
	j	.L114
.L112:
	.loc 1 247 0
	extui	a10, a9, 16, 1
	bne	a6, a10, .L113
.LVL133:
.LBB72:
	.loc 1 250 0
	l32i.n	a10, a5, 4
.LVL134:
	.loc 1 251 0
	bnez.n	a10, .L116
	l32r	a13, .LC33
	l32r	a12, .LC34
	l32r	a10, .LC35
.LVL135:
	movi	a11, 0xfb
	call8	__assert_func
.LVL136:
.L116:
	.loc 1 253 0
	l32i.n	a11, a10, 0
	slli	a11, a11, 23
	srai	a11, a11, 24
	beq	a2, a11, .L114
	.loc 1 257 0
	l32i.n	a10, a10, 20
.LVL137:
	.loc 1 252 0
	bnez.n	a10, .L116
.LVL138:
.L113:
.LBE72:
	.loc 1 261 0
	l32i.n	a5, a5, 8
.LVL139:
.L111:
	.loc 1 244 0
	bnez.n	a5, .L117
	j	.L195
.L114:
.LBE71:
.LBE70:
	.loc 1 400 0
	beqi	a4, -1, .L123
	extui	a9, a9, 17, 5
	bne	a4, a9, .L181
	j	.L123
.L195:
	.loc 1 409 0
	beqi	a4, -1, .L122
	.loc 1 412 0
	mov.n	a11, a6
	mov.n	a10, a4
	s32i.n	a8, sp, 52
	call8	find_desc_for_int
.LVL140:
	mov.n	a5, a10
.LVL141:
	.loc 1 413 0
	l32i.n	a8, sp, 52
	bnez.n	a10, .L123
	.loc 1 415 0
	extui	a5, a4, 0, 5
.LVL142:
	slli	a9, a5, 17
	l32i.n	a10, sp, 0
.LVL143:
	l32r	a5, .LC36
	and	a5, a10, a5
	or	a5, a5, a9
	s32i.n	a5, sp, 0
.LVL144:
	.loc 1 416 0
	mov.n	a5, sp
.LVL145:
.L123:
	.loc 1 418 0
	mov.n	a13, a4
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a5
	call8	is_vect_desc_usable
.LVL146:
	beqz.n	a10, .L181
	.loc 1 419 0
	l32i.n	a4, a5, 0
.LVL147:
	extui	a4, a4, 17, 5
.LVL148:
	j	.L120
.LVL149:
.L122:
	.loc 1 409 0
	l32r	a9, .LC27
	.loc 1 442 0
	movi	a10, 0x100
	and	a10, a8, a10
	l32r	a7, .LC37
	.loc 1 409 0
	movi.n	a14, 9
	s32i.n	a9, sp, 24
	.loc 1 442 0
	s32i.n	a10, sp, 40
.LVL150:
.L131:
	.loc 1 430 0
	mov.n	a11, a6
	mov.n	a10, a5
	s32i.n	a8, sp, 52
	s32i.n	a14, sp, 48
	call8	find_desc_for_int
.LVL151:
	mov.n	a15, a10
.LVL152:
	.loc 1 431 0
	l32i.n	a8, sp, 52
	l32i.n	a14, sp, 48
	bnez.n	a10, .L124
	.loc 1 432 0
	extui	a10, a5, 0, 5
.LVL153:
	slli	a11, a10, 17
	l32r	a9, .LC36
	l32i.n	a10, sp, 0
	.loc 1 433 0
	mov.n	a15, sp
.LVL154:
	.loc 1 432 0
	and	a10, a10, a9
	or	a10, a10, a11
	s32i.n	a10, sp, 0
.LVL155:
.L124:
	.loc 1 440 0
	mov.n	a11, a8
	mov.n	a10, a15
	movi.n	a13, -1
	mov.n	a12, a6
	s32i.n	a8, sp, 52
	s32i.n	a14, sp, 48
	s32i.n	a15, sp, 44
	call8	is_vect_desc_usable
.LVL156:
	l32i.n	a8, sp, 52
	l32i.n	a14, sp, 48
	l32i.n	a15, sp, 44
	beqz.n	a10, .L125
	.loc 1 442 0
	l32i.n	a9, sp, 40
	beqz.n	a9, .L126
	.loc 1 446 0
	l16ui	a10, a15, 0
	movi.n	a9, 4
	bnone	a10, a9, .L127
.LVL157:
.LBB73:
	.loc 1 450 0
	l32i.n	a11, a15, 4
.LVL158:
	.loc 1 449 0
	movi.n	a10, 0
	j	.L128
.LVL159:
.L129:
	.loc 1 453 0
	l32i.n	a11, a11, 20
.LVL160:
	.loc 1 452 0
	addi.n	a10, a10, 1
.LVL161:
.L128:
	.loc 1 451 0
	bnez.n	a11, .L129
	.loc 1 455 0
	l32i.n	a9, sp, 24
	blt	a10, a9, .L130
	l32i.n	a11, a7, 0
.LVL162:
	bge	a11, a14, .L125
.L130:
.LVL163:
	.loc 1 459 0
	l32i.n	a14, a7, 0
.LVL164:
	s32i.n	a10, sp, 24
	j	.L197
.LVL165:
.L127:
.LBE73:
	.loc 1 465 0
	bnei	a4, -1, .L125
.L126:
	.loc 1 480 0
	l32i.n	a10, a7, 0
	bge	a10, a14, .L125
	mov.n	a14, a10
.LVL166:
.L197:
	mov.n	a4, a5
.L125:
.LVL167:
	.loc 1 428 0
	addi.n	a5, a5, 1
.LVL168:
	addi	a7, a7, 16
	bnei	a5, 32, .L131
.LVL169:
.L120:
.LBE69:
.LBE68:
	.loc 1 587 0
	bnei	a4, -1, .L132
.LVL170:
.L181:
	.loc 1 589 0
	l32r	a10, .LC31
	.loc 1 591 0
	movi	a4, 0x105
	.loc 1 589 0
	call8	vTaskExitCritical
.LVL171:
	.loc 1 590 0
	l32i.n	a10, sp, 16
	call8	free
.LVL172:
	j	.L100
.LVL173:
.L132:
	.loc 1 594 0
	mov.n	a11, a6
	mov.n	a10, a4
	call8	get_desc_for_int
.LVL174:
	mov.n	a7, a10
.LVL175:
	l32r	a5, .LC31
	.loc 1 595 0
	bnez.n	a10, .L133
	j	.L202
.L133:
	.loc 1 602 0
	bbci	a3, 8, .L134
.LBB74:
	.loc 1 604 0
	movi.n	a10, 0x18
	call8	malloc
.LVL176:
	.loc 1 605 0
	bnez.n	a10, .L135
.LVL177:
.L202:
	.loc 1 606 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL178:
	.loc 1 607 0
	l32i.n	a10, sp, 16
	call8	free
.LVL179:
	j	.L155
.LVL180:
.L135:
	.loc 1 610 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	s32i.n	a10, sp, 44
	call8	memset
.LVL181:
	.loc 1 611 0
	l32i.n	a9, sp, 44
	l32i.n	a5, sp, 28
	.loc 1 616 0
	l16ui	a11, a9, 0
	.loc 1 611 0
	s32i.n	a5, a9, 4
	.loc 1 612 0
	l32i.n	a5, sp, 32
	.loc 1 621 0
	mov.n	a12, a7
	.loc 1 612 0
	s32i.n	a5, a9, 8
	.loc 1 613 0
	l32i.n	a5, sp, 20
	s32i.n	a5, a9, 12
	.loc 1 614 0
	l32i.n	a5, sp, 36
	s32i.n	a5, a9, 16
	.loc 1 615 0
	l32i.n	a5, a7, 4
	s32i.n	a5, a9, 20
	.loc 1 616 0
	extui	a5, a2, 0, 8
	slli	a10, a5, 1
	movi	a5, -0x1ff
	and	a5, a11, a5
	or	a5, a5, a10
	.loc 1 617 0
	movi.n	a10, -2
	and	a5, a5, a10
	s16i	a5, a9, 0
.LVL182:
	.loc 1 618 0
	s32i.n	a9, a7, 4
	.loc 1 619 0
	l16ui	a9, a7, 0
	movi.n	a5, 4
	or	a5, a9, a5
	.loc 1 621 0
	l32r	a11, .LC38
	.loc 1 619 0
	s16i	a5, a7, 0
	.loc 1 621 0
	mov.n	a10, a4
	call8	xt_set_interrupt_handler
.LVL183:
	j	.L136
.LVL184:
.L134:
.LBE74:
	.loc 1 624 0
	movi.n	a5, 8
	.loc 1 625 0
	l32i.n	a9, sp, 20
	.loc 1 624 0
	s16i	a5, a10, 0
	.loc 1 625 0
	beqz.n	a9, .L137
	.loc 1 638 0
	l32i.n	a12, sp, 36
	mov.n	a11, a9
	mov.n	a10, a4
	call8	xt_set_interrupt_handler
.LVL185:
.L137:
	.loc 1 641 0
	bbci	a3, 9, .L138
	movi.n	a10, 1
	ssl	a4
	sll	a10, a10
	call8	xthal_set_intclear
.LVL186:
.L138:
	.loc 1 642 0
	extui	a5, a2, 0, 8
	slli	a9, a5, 22
	l32i.n	a10, a7, 0
	l32r	a5, .LC39
	and	a5, a10, a5
	or	a5, a5, a9
	s32i.n	a5, a7, 0
.LVL187:
.L136:
	l16ui	a12, a7, 0
	l32r	a11, .LC40
	slli	a5, a6, 2
	.loc 1 644 0
	bbci	a3, 10, .L139
	.loc 1 645 0
	movi.n	a10, 2
	or	a9, a12, a10
	s16i	a9, a7, 0
	.loc 1 646 0
	add.n	a5, a11, a5
	movi.n	a9, -2
	ssl	a4
	src	a10, a9, a9
	l32i.n	a9, a5, 0
	and	a9, a10, a9
	j	.L200
.L139:
	.loc 1 648 0
	movi.n	a9, -3
	and	a9, a12, a9
	.loc 1 649 0
	add.n	a5, a11, a5
	.loc 1 648 0
	s16i	a9, a7, 0
	.loc 1 649 0
	l32i.n	a10, a5, 0
	movi.n	a9, 1
	ssl	a4
	sll	a9, a9
	or	a9, a10, a9
.L200:
	s32i.n	a9, a5, 0
	.loc 1 651 0
	bltz	a2, .L141
	.loc 1 652 0
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a6
	call8	intr_matrix_set
.LVL188:
.L141:
	.loc 1 656 0
	l32i.n	a2, sp, 16
.LVL189:
	.loc 1 657 0
	l32i.n	a5, sp, 16
	.loc 1 656 0
	s32i.n	a7, a2, 0
	.loc 1 657 0
	l32i.n	a2, a7, 4
	.loc 1 660 0
	movi.n	a10, 1
	.loc 1 657 0
	s32i.n	a2, a5, 4
	.loc 1 660 0
	ssl	a4
	sll	a10, a10
	call8	xt_ints_on
.LVL190:
	.loc 1 664 0
	bbci	a3, 11, .L142
	.loc 1 665 0
	l32i.n	a10, sp, 16
	call8	esp_intr_disable
.LVL191:
.L142:
	.loc 1 668 0
	l32r	a10, .LC31
	call8	vTaskExitCritical
.LVL192:
	.loc 1 671 0
	l32i	a6, sp, 96
.LVL193:
	beqz.n	a6, .L143
	.loc 1 672 0
	l32i.n	a9, sp, 16
	.loc 1 678 0
	movi.n	a4, 0
.LVL194:
	.loc 1 672 0
	s32i.n	a9, a6, 0
	j	.L100
.LVL195:
.L143:
	.loc 1 674 0
	l32i.n	a10, sp, 16
	call8	free
.LVL196:
	.loc 1 678 0
	l32i	a4, sp, 96
.LVL197:
	j	.L100
.LVL198:
.L146:
.LBE76:
.LBE79:
	.loc 1 546 0
	movi	a4, 0x102
	j	.L100
.LVL199:
.L155:
.LBB80:
.LBB77:
	.loc 1 581 0
	movi	a4, 0x101
.LVL200:
.L100:
.LBE77:
.LBE80:
	.loc 1 679 0
	mov.n	a2, a4
	retw.n
.LFE37:
	.size	esp_intr_alloc_intrstatus, .-esp_intr_alloc_intrstatus
	.section	.text.esp_intr_alloc,"ax",@progbits
	.align	4
	.global	esp_intr_alloc
	.type	esp_intr_alloc, @function
esp_intr_alloc:
.LFB38:
	.loc 1 682 0
.LVL201:
	entry	sp, 48
.LCFI12:
	.loc 1 688 0
	movi.n	a13, 0
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a12, a13
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_intr_alloc_intrstatus
.LVL202:
	.loc 1 689 0
	mov.n	a2, a10
.LVL203:
	retw.n
.LFE38:
	.size	esp_intr_alloc, .-esp_intr_alloc
	.section	.rodata.str1.1
.LC43:
	.string	"svd"
	.section	.text.esp_intr_free,"ax",@progbits
	.literal_position
	.literal .LC42, spinlock
	.literal .LC44, .LC43
	.literal .LC45, __func__$5473
	.literal .LC46, .LC6
	.literal .LC47, xt_unhandled_interrupt
	.literal .LC48, non_iram_int_mask
	.align	4
	.global	esp_intr_free
	.type	esp_intr_free, @function
esp_intr_free:
.LFB40:
	.loc 1 719 0
.LVL204:
	entry	sp, 32
.LCFI13:
.LVL205:
	.loc 1 721 0
	beqz.n	a2, .L215
	.loc 1 731 0
	l32r	a3, .LC42
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL206:
	.loc 1 732 0
	mov.n	a10, a2
	call8	esp_intr_disable
.LVL207:
	.loc 1 733 0
	l32i.n	a11, a2, 0
	movi.n	a8, 4
	l16ui	a9, a11, 0
	and	a8, a9, a8
	beqz.n	a8, .L206
.LBB81:
	.loc 1 735 0
	l32i.n	a10, a11, 4
.LVL208:
	.loc 1 737 0
	bnez.n	a10, .L207
	.loc 1 737 0 is_stmt 0 discriminator 1
	l32r	a13, .LC44
	l32r	a12, .LC45
	l32r	a10, .LC46
.LVL209:
	movi	a11, 0x2e1
.LVL210:
	call8	__assert_func
.LVL211:
.L207:
	.loc 1 739 0 is_stmt 1
	l32i.n	a12, a2, 4
	movi.n	a9, 0
	j	.L212
.LVL212:
.L217:
	mov.n	a10, a8
.LVL213:
.L212:
	l32i.n	a8, a10, 20
	bne	a12, a10, .L208
	.loc 1 741 0
	beqz.n	a9, .L209
	.loc 1 742 0
	s32i.n	a8, a9, 20
	j	.L210
.L209:
	.loc 1 744 0
	s32i.n	a8, a11, 4
.L210:
	.loc 1 746 0
	call8	free
.LVL214:
	.loc 1 747 0
	j	.L211
.LVL215:
.L208:
	mov.n	a9, a10
	.loc 1 738 0
	bnez.n	a8, .L217
.LVL216:
.L211:
	.loc 1 753 0
	l32i.n	a8, a2, 0
	movi.n	a10, 1
	l32i.n	a9, a8, 4
	movi.n	a8, 0
	moveqz	a8, a10, a9
	extui	a8, a8, 0, 8
.L206:
.LVL217:
.LBE81:
	.loc 1 757 0
	l32i.n	a9, a2, 0
	l16ui	a10, a9, 0
	bbsi	a10, 3, .L218
	beqz.n	a8, .L213
.L218:
	.loc 1 768 0
	l32i.n	a10, a9, 0
	l32r	a11, .LC47
	extui	a10, a10, 17, 5
	mov.n	a12, a10
	call8	xt_set_interrupt_handler
.LVL218:
	.loc 1 772 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0
	s16i	a9, a8, 0
	.loc 1 774 0
	l32i.n	a9, a8, 0
	l32r	a10, .LC48
	extui	a8, a9, 16, 1
	addx4	a8, a8, a10
	extui	a9, a9, 17, 5
	movi.n	a10, -2
	ssl	a9
	src	a9, a10, a10
	l32i.n	a10, a8, 0
	and	a9, a9, a10
	s32i.n	a9, a8, 0
.L213:
	.loc 1 776 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL219:
	.loc 1 777 0
	mov.n	a10, a2
	call8	free
.LVL220:
	.loc 1 778 0
	movi.n	a2, 0
.LVL221:
	retw.n
.LVL222:
.L215:
	.loc 1 721 0
	movi	a2, 0x102
.LVL223:
	.loc 1 779 0
	retw.n
.LFE40:
	.size	esp_intr_free, .-esp_intr_free
	.section	.iram1.18,"ax",@progbits
	.literal_position
	.literal .LC49, non_iram_int_mask
	.literal .LC50, non_iram_int_disabled_flag
	.literal .LC51, non_iram_int_disabled
	.align	4
	.global	esp_intr_noniram_disable
	.type	esp_intr_noniram_disable, @function
esp_intr_noniram_disable:
.LFB45:
	.loc 1 867 0
	entry	sp, 32
.LCFI14:
.LBB82:
.LBB83:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL224:
#NO_APP
.LBE83:
.LBE82:
	.loc 1 871 0
	l32r	a12, .LC50
	.loc 1 870 0
	l32r	a10, .LC49
	slli	a9, a8, 2
	add.n	a10, a10, a9
	.loc 1 871 0
	add.n	a8, a12, a8
.LVL225:
	.loc 1 870 0
	l32i.n	a10, a10, 0
	.loc 1 871 0
	l8ui	a12, a8, 0
	.loc 1 870 0
	movi.n	a11, -1
	xor	a11, a11, a10
.LVL226:
	.loc 1 871 0
	beqz.n	a12, .L223
	.loc 1 871 0 is_stmt 0 discriminator 1
	call8	abort
.LVL227:
.L223:
	.loc 1 872 0 is_stmt 1
	movi.n	a12, 1
	s8i	a12, a8, 0
	.loc 1 873 0
#APP
# 873 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c" 1
	movi a8,0
xsr a8,INTENABLE
rsync
and a3,a8,a11
wsr a3,INTENABLE
rsync

# 0 "" 2
.LVL228:
	.loc 1 882 0
#NO_APP
	l32r	a11, .LC51
.LVL229:
	and	a10, a8, a10
.LVL230:
	add.n	a9, a11, a9
.LVL231:
	s32i.n	a10, a9, 0
	retw.n
.LFE45:
	.size	esp_intr_noniram_disable, .-esp_intr_noniram_disable
	.section	.iram1.19,"ax",@progbits
	.literal_position
	.literal .LC52, non_iram_int_disabled
	.literal .LC53, non_iram_int_disabled_flag
	.align	4
	.global	esp_intr_noniram_enable
	.type	esp_intr_noniram_enable, @function
esp_intr_noniram_enable:
.LFB46:
	.loc 1 886 0
	entry	sp, 32
.LCFI15:
.LBB84:
.LBB85:
	.loc 2 210 0
#APP
# 210 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL232:
#NO_APP
.LBE85:
.LBE84:
	.loc 1 889 0
	l32r	a10, .LC53
	.loc 1 888 0
	l32r	a9, .LC52
	addx4	a9, a8, a9
	.loc 1 889 0
	add.n	a8, a10, a8
.LVL233:
	l8ui	a10, a8, 0
	.loc 1 888 0
	l32i.n	a9, a9, 0
.LVL234:
	.loc 1 889 0
	bnez.n	a10, .L225
	.loc 1 889 0 is_stmt 0 discriminator 1
	call8	abort
.LVL235:
.L225:
	.loc 1 890 0 is_stmt 1
	movi.n	a10, 0
	s8i	a10, a8, 0
	.loc 1 891 0
#APP
# 891 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c" 1
	movi a3,0
xsr a3,INTENABLE
rsync
or a3,a3,a9
wsr a3,INTENABLE
rsync

# 0 "" 2
#NO_APP
	retw.n
.LFE46:
	.size	esp_intr_noniram_enable, .-esp_intr_noniram_enable
	.section	.iram1.20,"ax",@progbits
	.align	4
	.global	ets_isr_unmask
	.type	ets_isr_unmask, @function
ets_isr_unmask:
.LFB47:
	.loc 1 906 0
.LVL236:
	entry	sp, 32
.LCFI16:
	.loc 1 907 0
	mov.n	a10, a2
	call8	xt_ints_on
.LVL237:
	retw.n
.LFE47:
	.size	ets_isr_unmask, .-ets_isr_unmask
	.section	.iram1.21,"ax",@progbits
	.align	4
	.global	ets_isr_mask
	.type	ets_isr_mask, @function
ets_isr_mask:
.LFB48:
	.loc 1 910 0
.LVL238:
	entry	sp, 32
.LCFI17:
	.loc 1 911 0
	mov.n	a10, a2
	call8	xt_ints_off
.LVL239:
	retw.n
.LFE48:
	.size	ets_isr_mask, .-ets_isr_mask
	.section	.rodata.__func__$5493,"a",@progbits
	.type	__func__$5493, @object
	.size	__func__$5493, 17
__func__$5493:
	.string	"esp_intr_disable"
	.section	.rodata.__func__$5473,"a",@progbits
	.type	__func__$5473, @object
	.size	__func__$5473, 14
__func__$5473:
	.string	"esp_intr_free"
	.section	.rodata.__func__$5407,"a",@progbits
	.type	__func__$5407, @object
	.size	__func__$5407, 20
__func__$5407:
	.string	"is_vect_desc_usable"
	.section	.rodata.__func__$5372,"a",@progbits
	.type	__func__$5372, @object
	.size	__func__$5372, 21
__func__$5372:
	.string	"find_desc_for_source"
	.section	.data.spinlock,"aw",@progbits
	.align	4
	.type	spinlock, @object
	.size	spinlock, 8
spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.non_iram_int_disabled_flag,"aw",@nobits
	.type	non_iram_int_disabled_flag, @object
	.size	non_iram_int_disabled_flag, 1
non_iram_int_disabled_flag:
	.zero	1
	.section	.bss.non_iram_int_disabled,"aw",@nobits
	.align	4
	.type	non_iram_int_disabled, @object
	.size	non_iram_int_disabled, 4
non_iram_int_disabled:
	.zero	4
	.section	.bss.non_iram_int_mask,"aw",@nobits
	.align	4
	.type	non_iram_int_mask, @object
	.size	non_iram_int_mask, 4
non_iram_int_mask:
	.zero	4
	.section	.bss.vector_desc_head,"aw",@nobits
	.align	4
	.type	vector_desc_head, @object
	.size	vector_desc_head, 4
vector_desc_head:
	.zero	4
	.section	.rodata.int_desc,"a",@progbits
	.align	4
	.type	int_desc, @object
	.size	int_desc, 512
int_desc:
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	2
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	3
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	7
	.word	0
	.word	1
	.word	1
	.word	3
	.word	2
	.word	2
	.word	2
	.word	5
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	3
	.word	1
	.word	1
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.word	1
	.word	1
	.word	5
	.word	0
	.word	0
	.word	1
	.word	3
	.word	0
	.word	1
	.word	1
	.word	4
	.word	1
	.word	0
	.word	0
	.word	3
	.word	2
	.word	2
	.word	2
	.word	4
	.word	1
	.word	1
	.word	1
	.word	5
	.word	0
	.word	1
	.word	1
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI1-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI6-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI7-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI9-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI10-.LFB44
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
	.uleb128 0x60
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI13-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI14-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI15-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI16-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI17-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/hal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x157c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xc
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x95
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x101
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x94
	.4byte	0xe0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x53
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x56
	.4byte	0x122
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x8
	.byte	0x1
	.byte	0xa0
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa1
	.4byte	0x314
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa2
	.4byte	0x30e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x57
	.4byte	0x152
	.uleb128 0x6
	.byte	0x4
	.4byte	0x117
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x1f
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x3d
	.4byte	0x1a8
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1
	.byte	0x41
	.4byte	0x189
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x43
	.4byte	0x1d2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x1
	.byte	0x47
	.4byte	0x1b3
	.uleb128 0xa
	.byte	0x10
	.byte	0x1
	.byte	0x49
	.4byte	0x20a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4a
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4b
	.4byte	0x1d2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4c
	.4byte	0x20a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x1a8
	.4byte	0x21a
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x1dd
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x1
	.byte	0x83
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x18
	.byte	0x1
	.byte	0x86
	.4byte	0x297
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x87
	.4byte	0x4c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x88
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x89
	.4byte	0x303
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8a
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x12
	.string	"isr"
	.byte	0x1
	.byte	0x8b
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0x8c
	.4byte	0x94
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8d
	.4byte	0x30e
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x84
	.4byte	0x2a2
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1
	.byte	0x97
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x98
	.4byte	0x4c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"cpu"
	.byte	0x1
	.byte	0x99
	.4byte	0x5e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9a
	.4byte	0x5e
	.byte	0x4
	.byte	0x5
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9b
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9c
	.4byte	0x30e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9d
	.4byte	0x314
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x309
	.uleb128 0x14
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x225
	.uleb128 0x6
	.byte	0x4
	.4byte	0x297
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x8
	.byte	0x1
	.2byte	0x131
	.4byte	0x342
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x132
	.4byte	0x94
	.byte	0
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.2byte	0x133
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x134
	.4byte	0x31a
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe0
	.4byte	0x314
	.byte	0x1
	.4byte	0x38c
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0xe0
	.4byte	0x4c
	.uleb128 0x1b
	.string	"cpu"
	.byte	0x1
	.byte	0xe0
	.4byte	0x4c
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xe2
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0xe4
	.4byte	0x314
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x139
	.4byte	0xd9
	.byte	0x1
	.4byte	0x3b6
	.uleb128 0x20
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x139
	.4byte	0x4c
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.2byte	0x139
	.4byte	0x4c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF73
	.byte	0x2
	.byte	0xd0
	.4byte	0x7e
	.byte	0x3
	.4byte	0x3d1
	.uleb128 0x1c
	.string	"id"
	.byte	0x2
	.byte	0xd1
	.4byte	0x4c
	.byte	0
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x339
	.4byte	0xce
	.byte	0x1
	.4byte	0x422
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x339
	.4byte	0x147
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x33d
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x33e
	.4byte	0xd9
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	0x432
	.4byte	.LASF62
	.uleb128 0x1d
	.uleb128 0x26
	.string	"svd"
	.byte	0x1
	.2byte	0x343
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x432
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x422
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x21b
	.4byte	0xce
	.byte	0x1
	.4byte	0x4e6
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x21b
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x21b
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x21b
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x21b
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x21b
	.4byte	0x10c
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x21c
	.4byte	0x94
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x21c
	.4byte	0x4e6
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x152
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x21f
	.4byte	0x4c
	.uleb128 0x26
	.string	"cpu"
	.byte	0x1
	.2byte	0x248
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x24a
	.4byte	0x4c
	.uleb128 0x26
	.string	"vd"
	.byte	0x1
	.2byte	0x252
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x24
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x25c
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x147
	.uleb128 0x27
	.4byte	.LASF69
	.byte	0x1
	.byte	0xd3
	.4byte	0x314
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52e
	.uleb128 0x28
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd3
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x29
	.string	"cpu"
	.byte	0x1
	.byte	0xd3
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"vd"
	.byte	0x1
	.byte	0xd5
	.4byte	0x314
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1ef
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x314
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x30e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL7
	.4byte	0x14d6
	.4byte	0x585
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL10
	.4byte	0x14e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x13e
	.4byte	0xd9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68e
	.uleb128 0x2c
	.string	"vd"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x314
	.4byte	.LLST3
	.uleb128 0x33
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13e
	.4byte	0x4c
	.4byte	.LLST4
	.uleb128 0x2c
	.string	"cpu"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x33
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x13e
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x141
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0x34
	.4byte	.LASF61
	.4byte	0x69e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5407
	.uleb128 0x35
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x63a
	.uleb128 0x36
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x165
	.4byte	0xd9
	.4byte	.LLST8
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x166
	.4byte	0xd9
	.4byte	.LLST9
	.byte	0
	.uleb128 0x37
	.4byte	0x38c
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x171
	.4byte	0x661
	.uleb128 0x38
	.4byte	0x3a9
	.4byte	.LLST10
	.uleb128 0x38
	.4byte	0x39d
	.4byte	.LLST11
	.byte	0
	.uleb128 0x31
	.4byte	.LVL17
	.4byte	0x14ec
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5407
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x69e
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x68e
	.uleb128 0x39
	.4byte	.LASF74
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	0x6d0
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0xbe
	.4byte	0x314
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xc0
	.4byte	0x314
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc1
	.4byte	0x314
	.byte	0
	.uleb128 0x3a
	.4byte	0x34e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c1
	.uleb128 0x38
	.4byte	0x35e
	.4byte	.LLST12
	.uleb128 0x38
	.4byte	0x369
	.4byte	.LLST13
	.uleb128 0x3b
	.4byte	0x374
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x7aa
	.uleb128 0x38
	.4byte	0x369
	.4byte	.LLST15
	.uleb128 0x38
	.4byte	0x35e
	.4byte	.LLST16
	.uleb128 0x3c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x3d
	.4byte	0x374
	.uleb128 0x3c
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x3b
	.4byte	0x37f
	.4byte	.LLST17
	.uleb128 0x3e
	.4byte	0x6a3
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe9
	.4byte	0x772
	.uleb128 0x38
	.4byte	0x6af
	.4byte	.LLST18
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3b
	.4byte	0x6ba
	.4byte	.LLST19
	.uleb128 0x3b
	.4byte	0x6c4
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL28
	.4byte	0x14f7
	.4byte	0x78c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x31
	.4byte	.LVL30
	.4byte	0x1502
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL25
	.4byte	0x4ec
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x10a
	.4byte	0xce
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x864
	.uleb128 0x33
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x10a
	.4byte	0x4c
	.4byte	.LLST21
	.uleb128 0x2c
	.string	"cpu"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x4c
	.4byte	.LLST22
	.uleb128 0x41
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10a
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.2byte	0x110
	.4byte	0x314
	.4byte	.LLST23
	.uleb128 0x2f
	.4byte	.LVL40
	.4byte	0x14d6
	.4byte	0x82c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL41
	.4byte	0x34e
	.4byte	0x846
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL43
	.4byte	0x14e1
	.4byte	0x85a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL47
	.4byte	0x14e1
	.byte	0
	.uleb128 0x40
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x11c
	.4byte	0xce
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fe
	.uleb128 0x33
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11c
	.4byte	0x4c
	.4byte	.LLST24
	.uleb128 0x43
	.string	"cpu"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.2byte	0x122
	.4byte	0x314
	.4byte	.LLST25
	.uleb128 0x2f
	.4byte	.LVL52
	.4byte	0x14d6
	.4byte	0x8bf
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL53
	.4byte	0x34e
	.4byte	0x8d9
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL55
	.4byte	0x14e1
	.4byte	0x8ed
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0x14e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x2b3
	.4byte	0xce
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x973
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x147
	.4byte	.LLST26
	.uleb128 0x41
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x2b3
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x314
	.4byte	.LLST27
	.uleb128 0x36
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x2bb
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x2f
	.4byte	.LVL66
	.4byte	0x14d6
	.4byte	0x969
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL73
	.4byte	0x14e1
	.byte	0
	.uleb128 0x40
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x30d
	.4byte	0x4c
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99e
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x30d
	.4byte	0x147
	.4byte	.LLST29
	.byte	0
	.uleb128 0x40
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x312
	.4byte	0x4c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c9
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x312
	.4byte	0x147
	.4byte	.LLST30
	.byte	0
	.uleb128 0x40
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x322
	.4byte	0xce
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x322
	.4byte	0x147
	.4byte	.LLST31
	.uleb128 0x36
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x326
	.4byte	0x4c
	.4byte	.LLST32
	.uleb128 0x37
	.4byte	0x3b6
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.2byte	0x332
	.4byte	0xa27
	.uleb128 0x3c
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x3d
	.4byte	0x3c6
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL81
	.4byte	0x150b
	.uleb128 0x2f
	.4byte	.LVL82
	.4byte	0x14d6
	.4byte	0xa44
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL84
	.4byte	0x1516
	.uleb128 0x42
	.4byte	.LVL87
	.4byte	0x1522
	.uleb128 0x42
	.4byte	.LVL88
	.4byte	0x150b
	.uleb128 0x31
	.4byte	.LVL89
	.4byte	0x14e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0x3d1
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba1
	.uleb128 0x38
	.4byte	0x3e2
	.4byte	.LLST33
	.uleb128 0x3d
	.4byte	0x3ee
	.uleb128 0x3d
	.4byte	0x3fa
	.uleb128 0x44
	.4byte	0x406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5493
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x38
	.4byte	0x3e2
	.4byte	.LLST34
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3b
	.4byte	0x3ee
	.4byte	.LLST35
	.uleb128 0x3b
	.4byte	0x3fa
	.4byte	.LLST36
	.uleb128 0x44
	.4byte	0x406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5493
	.uleb128 0x35
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0xb14
	.uleb128 0x3b
	.4byte	0x414
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LVL96
	.4byte	0x14ec
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x344
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5493
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x3b6
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x357
	.4byte	0xb38
	.uleb128 0x3c
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x3d
	.4byte	0x3c6
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL92
	.4byte	0x150b
	.uleb128 0x2f
	.4byte	.LVL93
	.4byte	0x14d6
	.4byte	0xb55
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL101
	.4byte	0x1516
	.4byte	0xb68
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL104
	.4byte	0x14e1
	.4byte	0xb7c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL106
	.4byte	0x152d
	.uleb128 0x42
	.4byte	.LVL107
	.4byte	0x150b
	.uleb128 0x31
	.4byte	.LVL108
	.4byte	0x14e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.byte	0x1
	.4byte	0xc41
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x17f
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x180
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x181
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x182
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x184
	.4byte	0x297
	.uleb128 0x26
	.string	"vd"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x26
	.string	"no"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.byte	0xf1
	.4byte	0x314
	.byte	0x1
	.4byte	0xc97
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf1
	.4byte	0x4c
	.uleb128 0x1b
	.string	"cpu"
	.byte	0x1
	.byte	0xf1
	.4byte	0x4c
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xf3
	.4byte	0x314
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	0xca7
	.4byte	.LASF92
	.uleb128 0x1d
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0xf9
	.4byte	0xd9
	.uleb128 0x1c
	.string	"svd"
	.byte	0x1
	.byte	0xfa
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0xca7
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xc97
	.uleb128 0x3a
	.4byte	0x437
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1114
	.uleb128 0x38
	.4byte	0x448
	.4byte	.LLST38
	.uleb128 0x38
	.4byte	0x454
	.4byte	.LLST39
	.uleb128 0x38
	.4byte	0x460
	.4byte	.LLST40
	.uleb128 0x38
	.4byte	0x46c
	.4byte	.LLST41
	.uleb128 0x38
	.4byte	0x478
	.4byte	.LLST42
	.uleb128 0x38
	.4byte	0x484
	.4byte	.LLST43
	.uleb128 0x45
	.4byte	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.4byte	0x49c
	.byte	0
	.uleb128 0x47
	.4byte	0x4a8
	.sleb128 -1
	.uleb128 0x3d
	.4byte	0x4b4
	.uleb128 0x3d
	.4byte	0x4c0
	.uleb128 0x3d
	.4byte	0x4cc
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x38
	.4byte	0x490
	.4byte	.LLST44
	.uleb128 0x38
	.4byte	0x484
	.4byte	.LLST45
	.uleb128 0x38
	.4byte	0x478
	.4byte	.LLST46
	.uleb128 0x38
	.4byte	0x46c
	.4byte	.LLST47
	.uleb128 0x38
	.4byte	0x460
	.4byte	.LLST48
	.uleb128 0x38
	.4byte	0x454
	.4byte	.LLST49
	.uleb128 0x38
	.4byte	0x448
	.4byte	.LLST50
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3b
	.4byte	0x49c
	.4byte	.LLST51
	.uleb128 0x3b
	.4byte	0x4a8
	.4byte	.LLST52
	.uleb128 0x3b
	.4byte	0x4b4
	.4byte	.LLST53
	.uleb128 0x3d
	.4byte	0x4c0
	.uleb128 0x3b
	.4byte	0x4cc
	.4byte	.LLST54
	.uleb128 0x37
	.4byte	0x3b6
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x248
	.4byte	0xdb2
	.uleb128 0x3c
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x3b
	.4byte	0x3c6
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0xba1
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x24a
	.4byte	0xf60
	.uleb128 0x38
	.4byte	0xbd6
	.4byte	.LLST56
	.uleb128 0x38
	.4byte	0xbca
	.4byte	.LLST57
	.uleb128 0x38
	.4byte	0xbbe
	.4byte	.LLST53
	.uleb128 0x38
	.4byte	0xbb2
	.4byte	.LLST59
	.uleb128 0x3c
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x3b
	.4byte	0xbe2
	.4byte	.LLST60
	.uleb128 0x3b
	.4byte	0xbec
	.4byte	.LLST61
	.uleb128 0x3b
	.4byte	0xbf8
	.4byte	.LLST62
	.uleb128 0x3b
	.4byte	0xc04
	.4byte	.LLST63
	.uleb128 0x44
	.4byte	0xc10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.4byte	0xc1c
	.4byte	.LLST64
	.uleb128 0x37
	.4byte	0xc41
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x18c
	.4byte	0xeb5
	.uleb128 0x38
	.4byte	0xc5c
	.4byte	.LLST65
	.uleb128 0x38
	.4byte	0xc51
	.4byte	.LLST66
	.uleb128 0x3c
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x3b
	.4byte	0xc67
	.4byte	.LLST67
	.uleb128 0x44
	.4byte	0xc71
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5372
	.uleb128 0x3c
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x3b
	.4byte	0xc7f
	.4byte	.LLST68
	.uleb128 0x3b
	.4byte	0xc8a
	.4byte	.LLST69
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0x14ec
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xfb
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5372
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.4byte	0xed5
	.uleb128 0x3b
	.4byte	0xc28
	.4byte	.LLST70
	.uleb128 0x3b
	.4byte	0xc33
	.4byte	.LLST71
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL130
	.4byte	0x1502
	.4byte	0xef4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL140
	.4byte	0x4ec
	.4byte	0xf0e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL146
	.4byte	0x596
	.4byte	0xf2e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL151
	.4byte	0x4ec
	.4byte	0xf48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL156
	.4byte	0x596
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.4byte	0xfeb
	.uleb128 0x3b
	.4byte	0x4d8
	.4byte	.LLST72
	.uleb128 0x2f
	.4byte	.LVL176
	.4byte	0x1538
	.4byte	0xf89
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL178
	.4byte	0x14e1
	.4byte	0xf9d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL179
	.4byte	0x1543
	.4byte	0xfb3
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL181
	.4byte	0x1502
	.4byte	0xfcb
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL183
	.4byte	0x154e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_intr_isr
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL125
	.4byte	0x14f7
	.4byte	0x1005
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL128
	.4byte	0x14d6
	.4byte	0x101c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL171
	.4byte	0x14e1
	.4byte	0x1033
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL172
	.4byte	0x1543
	.4byte	0x1049
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL174
	.4byte	0x34e
	.4byte	0x1063
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL185
	.4byte	0x154e
	.4byte	0x1086
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL186
	.4byte	0x1559
	.4byte	0x109c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL188
	.4byte	0x1516
	.4byte	0x10bc
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL190
	.4byte	0x1522
	.4byte	0x10d2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL191
	.4byte	0x3d1
	.4byte	0x10e8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL192
	.4byte	0x14e1
	.4byte	0x10ff
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x31
	.4byte	.LVL196
	.4byte	0x1543
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x2a9
	.4byte	0xce
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11aa
	.uleb128 0x33
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x4c
	.4byte	.LLST73
	.uleb128 0x41
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.string	"arg"
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x41
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x4e6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x31
	.4byte	.LVL202
	.4byte	0x437
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xce
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b0
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x147
	.4byte	.LLST74
	.uleb128 0x36
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xd9
	.4byte	.LLST75
	.uleb128 0x34
	.4byte	.LASF61
	.4byte	0x12c0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5473
	.uleb128 0x35
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x125a
	.uleb128 0x2d
	.string	"svd"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x30e
	.4byte	.LLST76
	.uleb128 0x36
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x30e
	.4byte	.LLST77
	.uleb128 0x2f
	.4byte	.LVL211
	.4byte	0x14ec
	.4byte	0x1250
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5473
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x42
	.4byte	.LVL214
	.4byte	0x1543
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL206
	.4byte	0x14d6
	.4byte	0x126e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL207
	.4byte	0x3d1
	.4byte	0x1282
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL218
	.4byte	0x154e
	.uleb128 0x2f
	.4byte	.LVL219
	.4byte	0x14e1
	.4byte	0x129f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL220
	.4byte	0x1543
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x12c0
	.uleb128 0x10
	.4byte	0x9d
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x12b0
	.uleb128 0x48
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x362
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133b
	.uleb128 0x2e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x364
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2d
	.string	"cpu"
	.byte	0x1
	.2byte	0x365
	.4byte	0x4c
	.4byte	.LLST78
	.uleb128 0x36
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x366
	.4byte	0x4c
	.4byte	.LLST79
	.uleb128 0x37
	.4byte	0x3b6
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x365
	.4byte	0x1331
	.uleb128 0x3c
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.uleb128 0x3b
	.4byte	0x3c6
	.4byte	.LLST78
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL227
	.4byte	0x1565
	.byte	0
	.uleb128 0x48
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x375
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a3
	.uleb128 0x2d
	.string	"cpu"
	.byte	0x1
	.2byte	0x377
	.4byte	0x4c
	.4byte	.LLST81
	.uleb128 0x36
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x378
	.4byte	0x4c
	.4byte	.LLST82
	.uleb128 0x37
	.4byte	0x3b6
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x377
	.4byte	0x1399
	.uleb128 0x3c
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.uleb128 0x3b
	.4byte	0x3c6
	.4byte	.LLST81
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LVL235
	.4byte	0x1565
	.byte	0
	.uleb128 0x49
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x38a
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d8
	.uleb128 0x41
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x38a
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL237
	.4byte	0x1522
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x38e
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140d
	.uleb128 0x41
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x38e
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL239
	.4byte	0x152d
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"TAG"
	.byte	0x1
	.byte	0x26
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5488
	.sleb128 0
	.uleb128 0xf
	.4byte	0x21a
	.4byte	0x142f
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x60
	.4byte	0x1440
	.uleb128 0x5
	.byte	0x3
	.4byte	int_desc
	.uleb128 0x7
	.4byte	0x141f
	.uleb128 0x4a
	.4byte	.LASF105
	.byte	0x1
	.byte	0xae
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	vector_desc_head
	.uleb128 0xf
	.4byte	0x7e
	.4byte	0x1466
	.uleb128 0x10
	.4byte	0x9d
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF106
	.byte	0x1
	.byte	0xb1
	.4byte	0x1456
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_mask
	.uleb128 0x4a
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb3
	.4byte	0x1456
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled
	.uleb128 0xf
	.4byte	0xd9
	.4byte	0x1498
	.uleb128 0x10
	.4byte	0x9d
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb4
	.4byte	0x1488
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled_flag
	.uleb128 0x4a
	.4byte	.LASF109
	.byte	0x1
	.byte	0xba
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0xf
	.4byte	0x342
	.4byte	0x14ca
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x135
	.4byte	0x14ba
	.uleb128 0x4c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0xf4
	.uleb128 0x4c
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.byte	0xf3
	.uleb128 0x4c
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.byte	0x29
	.uleb128 0x4c
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xb
	.byte	0x37
	.uleb128 0x4d
	.4byte	.LASF128
	.4byte	.LASF128
	.uleb128 0x4c
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x2
	.byte	0xba
	.uleb128 0x4e
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x21b
	.uleb128 0x4c
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xd
	.byte	0x54
	.uleb128 0x4c
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x5f
	.uleb128 0x4c
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x65
	.uleb128 0x4c
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x5a
	.uleb128 0x4c
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.byte	0x49
	.uleb128 0x4e
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xf
	.2byte	0x2bf
	.uleb128 0x4c
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xe
	.byte	0x47
	.uleb128 0x4f
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x72
	.byte	0x5f
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x6f
	.byte	0x63
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x6
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x9
	.byte	0xff
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x400
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0x400
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL51
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
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL90
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL94
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL112
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL112
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL187
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL200
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL187
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL200
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL117
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL187
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL200
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL118
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL187
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL200
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL116
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL116
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL116
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL116
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL116
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL116
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL116
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL129
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL175
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL129
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL129
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL136
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL150
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL129
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL167
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL129
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL129
	.4byte	.LVL150
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL163
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL131
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL131
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL133
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL204
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL205
	.4byte	.LVL217
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL222
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	.LVL210
	.4byte	.LVL211-1
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL213
	.4byte	.LVL214-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL226
	.4byte	.LVL227-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	non_iram_int_mask
	.byte	0x22
	.byte	0x6
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL234
	.4byte	.LVL235-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL235
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"vector_desc_head"
.LASF76:
	.string	"prev"
.LASF19:
	.string	"count"
.LASF65:
	.string	"intrstatusmask"
.LASF118:
	.string	"malloc"
.LASF89:
	.string	"bestSharedCt"
.LASF49:
	.string	"next"
.LASF47:
	.string	"statusreg"
.LASF88:
	.string	"bestLevel"
.LASF68:
	.string	"sh_vec"
.LASF52:
	.string	"intno"
.LASF41:
	.string	"type"
.LASF8:
	.string	"long long unsigned int"
.LASF101:
	.string	"esp_intr_noniram_enable"
.LASF78:
	.string	"esp_intr_mark_shared"
.LASF126:
	.string	"shared_intr_isr"
.LASF71:
	.string	"in_iram_flag"
.LASF42:
	.string	"cpuflags"
.LASF119:
	.string	"free"
.LASF121:
	.string	"xthal_set_intclear"
.LASF117:
	.string	"xt_ints_off"
.LASF108:
	.string	"non_iram_int_disabled_flag"
.LASF30:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF90:
	.string	"empty_vect_desc"
.LASF58:
	.string	"int_has_handler"
.LASF109:
	.string	"spinlock"
.LASF115:
	.string	"intr_matrix_set"
.LASF110:
	.string	"vTaskEnterCritical"
.LASF34:
	.string	"INTDESC_SPECIAL"
.LASF111:
	.string	"vTaskExitCritical"
.LASF12:
	.string	"long int"
.LASF100:
	.string	"esp_intr_noniram_disable"
.LASF91:
	.string	"svdesc"
.LASF20:
	.string	"portMUX_TYPE"
.LASF113:
	.string	"heap_caps_malloc"
.LASF56:
	.string	"newvd"
.LASF5:
	.string	"__uint32_t"
.LASF82:
	.string	"mask"
.LASF124:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c"
.LASF72:
	.string	"desc_in_iram_flag"
.LASF79:
	.string	"esp_intr_reserve"
.LASF6:
	.string	"unsigned int"
.LASF114:
	.string	"xPortInIsrContext"
.LASF45:
	.string	"disabled"
.LASF33:
	.string	"INTDESC_RESVD"
.LASF35:
	.string	"int_desc_flag_t"
.LASF14:
	.string	"long unsigned int"
.LASF38:
	.string	"INTTP_NA"
.LASF123:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"intr_handle_t"
.LASF40:
	.string	"level"
.LASF54:
	.string	"xt_handler_table_entry"
.LASF77:
	.string	"is_int_ram"
.LASF63:
	.string	"esp_intr_alloc_intrstatus"
.LASF32:
	.string	"INTDESC_NORMAL"
.LASF21:
	.string	"intr_handler_t"
.LASF36:
	.string	"INTTP_LEVEL"
.LASF104:
	.string	"int_desc"
.LASF73:
	.string	"xPortGetCoreID"
.LASF11:
	.string	"ptrdiff_t"
.LASF55:
	.string	"handler"
.LASF29:
	.string	"ESP_LOG_INFO"
.LASF120:
	.string	"xt_set_interrupt_handler"
.LASF46:
	.string	"source"
.LASF13:
	.string	"sizetype"
.LASF127:
	.string	"_xt_interrupt_table"
.LASF70:
	.string	"is_vect_desc_usable"
.LASF59:
	.string	"intr"
.LASF95:
	.string	"esp_intr_free"
.LASF102:
	.string	"ets_isr_unmask"
.LASF37:
	.string	"INTTP_EDGE"
.LASF69:
	.string	"find_desc_for_int"
.LASF116:
	.string	"xt_ints_on"
.LASF81:
	.string	"is_in_iram"
.LASF53:
	.string	"shared_vec_info"
.LASF85:
	.string	"esp_intr_enable"
.LASF74:
	.string	"insert_vector_desc"
.LASF106:
	.string	"non_iram_int_mask"
.LASF107:
	.string	"non_iram_int_disabled"
.LASF17:
	.string	"_Bool"
.LASF9:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"int_desc_t"
.LASF39:
	.string	"int_type_t"
.LASF44:
	.string	"shared_vector_desc_t"
.LASF2:
	.string	"short int"
.LASF128:
	.string	"memset"
.LASF66:
	.string	"ret_handle"
.LASF22:
	.string	"intr_handle_data_t"
.LASF27:
	.string	"ESP_LOG_ERROR"
.LASF61:
	.string	"__func__"
.LASF64:
	.string	"intrstatusreg"
.LASF23:
	.string	"vector_desc"
.LASF103:
	.string	"ets_isr_mask"
.LASF50:
	.string	"vector_desc_t"
.LASF10:
	.string	"uint32_t"
.LASF18:
	.string	"owner"
.LASF57:
	.string	"get_desc_for_int"
.LASF26:
	.string	"ESP_LOG_NONE"
.LASF15:
	.string	"char"
.LASF31:
	.string	"ESP_LOG_VERBOSE"
.LASF125:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF97:
	.string	"prevsvd"
.LASF87:
	.string	"best"
.LASF122:
	.string	"abort"
.LASF4:
	.string	"__int32_t"
.LASF98:
	.string	"oldint"
.LASF75:
	.string	"to_insert"
.LASF99:
	.string	"intmask"
.LASF3:
	.string	"short unsigned int"
.LASF94:
	.string	"esp_intr_alloc"
.LASF93:
	.string	"found"
.LASF48:
	.string	"statusmask"
.LASF28:
	.string	"ESP_LOG_WARN"
.LASF86:
	.string	"get_available_int"
.LASF16:
	.string	"esp_err_t"
.LASF84:
	.string	"esp_intr_get_cpu"
.LASF51:
	.string	"flags"
.LASF62:
	.string	"esp_intr_disable"
.LASF83:
	.string	"esp_intr_get_intno"
.LASF80:
	.string	"esp_intr_set_in_iram"
.LASF112:
	.string	"__assert_func"
.LASF96:
	.string	"free_shared_vector"
.LASF60:
	.string	"handle"
.LASF67:
	.string	"force"
.LASF92:
	.string	"find_desc_for_source"
.LASF24:
	.string	"shared_vector_desc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
