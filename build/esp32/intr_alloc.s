	.file	"intr_alloc.c"
	.text
.Ltext0:
	.section	.text.find_desc_for_int,"ax",@progbits
	.literal_position
	.literal .LC0, vector_desc_head
	.align	4
	.type	find_desc_for_int, @function
find_desc_for_int:
.LFB19:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c"
	.loc 1 210 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 211 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL1:
	.loc 1 212 0
	j	.L2
.L5:
	.loc 1 213 0
	l32i.n	a9, a8, 0
	extui	a10, a9, 16, 1
	bne	a10, a3, .L3
	.loc 1 213 0 is_stmt 0 discriminator 1
	extui	a9, a9, 17, 5
	beq	a9, a2, .L4
.L3:
	.loc 1 214 0 is_stmt 1
	l32i.n	a8, a8, 8
.LVL2:
.L2:
	.loc 1 212 0
	bnez.n	a8, .L5
.L4:
	.loc 1 217 0
	mov.n	a2, a8
.LVL3:
	retw.n
.LFE19:
	.size	find_desc_for_int, .-find_desc_for_int
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, spinlock
	.align	4
	.type	shared_intr_isr, @function
shared_intr_isr:
.LFB27:
	.loc 1 494 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 497 0
	l32r	a3, .LC1
	.loc 1 496 0
	l32i.n	a2, a2, 4
.LVL6:
	.loc 1 497 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL7:
	.loc 1 498 0
	j	.L7
.L10:
	.loc 1 499 0
	l32i.n	a8, a2, 0
	bbsi	a8, 0, .L8
	.loc 1 500 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L9
	.loc 1 500 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	l32i.n	a8, a2, 8
	bnone	a9, a8, .L8
.L9:
	.loc 1 504 0
	l32i.n	a8, a2, 12
	l32i.n	a10, a2, 16
	callx8	a8
.LVL8:
.L8:
	.loc 1 513 0
	l32i.n	a2, a2, 20
.LVL9:
.L7:
	.loc 1 498 0
	bnez.n	a2, .L10
	.loc 1 515 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL10:
	retw.n
.LFE27:
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
	.literal .LC5, __func__$5371
	.literal .LC7, .LC6
	.literal .LC8, _xt_interrupt_table
	.literal .LC9, xt_unhandled_interrupt
	.align	4
	.type	is_vect_desc_usable, @function
is_vect_desc_usable:
.LFB25:
	.loc 1 317 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 319 0
	l32i.n	a10, a2, 0
	.loc 1 320 0
	l32r	a12, .LC2
	.loc 1 319 0
	extui	a10, a10, 17, 5
.LVL12:
	.loc 1 320 0
	addx4	a8, a10, a4
	addx4	a8, a8, a12
	l32i.n	a9, a8, 8
	movi.n	a11, 0
	beqi	a9, 1, .L24
	.loc 1 324 0 discriminator 1
	movi.n	a8, 1
	addi	a9, a9, -2
	mov.n	a6, a11
	add.n	a5, a5, a8
.LVL13:
	moveqz	a6, a8, a9
	movnez	a8, a11, a5
	and	a8, a6, a8
	bne	a8, a11, .L24
	.loc 1 329 0
	slli	a5, a10, 4
.LVL14:
	add.n	a5, a12, a5
	l32i.n	a9, a5, 0
	bbc	a3, a9, .L18
	l32i.n	a5, a5, 4
	.loc 1 334 0
	bbci	a3, 9, .L19
	.loc 1 334 0 is_stmt 0 discriminator 1
	bne	a5, a11, .L20
	j	.L18
.L19:
	.loc 1 335 0 is_stmt 1
	beqi	a5, 1, .L18
.L20:
	.loc 1 340 0
	l16ui	a9, a2, 0
	bbsi	a9, 0, .L18
	.loc 1 346 0
	movi.n	a2, 0xc
.LVL15:
	and	a2, a9, a2
	bnei	a2, 12, .L21
	.loc 1 346 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	l32r	a10, .LC7
.LVL16:
	movi	a11, 0x15a
	call8	__assert_func
.LVL17:
.L21:
	.loc 1 348 0 is_stmt 1
	movi.n	a12, 8
	and	a12, a9, a12
	bnez.n	a12, .L18
	.loc 1 353 0
	movi.n	a11, 4
	and	a11, a9, a11
	beqz.n	a11, .L22
	.loc 1 354 0
	bbci	a3, 8, .L18
.LVL18:
.LBB32:
	.loc 1 358 0
	extui	a8, a9, 1, 1
	extui	a3, a3, 10, 1
.LVL19:
	sub	a3, a3, a8
	movi.n	a8, 1
	movnez	a8, a12, a3
	j	.L18
.LVL20:
.L22:
.LBE32:
.LBB33:
.LBB34:
	.loc 1 313 0
	l32r	a2, .LC8
	add.n	a4, a10, a4
.LVL21:
	addx8	a4, a4, a2
.LBE34:
.LBE33:
	.loc 1 367 0
	l32r	a8, .LC9
	l32i.n	a2, a4, 0
	sub	a2, a2, a8
	movi.n	a8, 1
	movnez	a8, a11, a2
	j	.L18
.LVL22:
.L24:
	.loc 1 322 0
	mov.n	a8, a11
.LVL23:
.L18:
	.loc 1 374 0
	mov.n	a2, a8
	retw.n
.LFE25:
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
.LFB20:
	.loc 1 223 0
.LVL24:
	entry	sp, 32
.LCFI3:
	.loc 1 224 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	find_desc_for_int
.LVL25:
	mov.n	a5, a10
.LVL26:
	.loc 1 225 0
	bnez.n	a10, .L38
.LVL27:
.LBB40:
.LBB41:
.LBB42:
	.loc 1 226 0
	l32r	a11, .LC10
	movi.n	a10, 0xc
	call8	heap_caps_malloc
.LVL28:
	mov.n	a4, a10
.LVL29:
	.loc 1 227 0
	beqz.n	a10, .L38
	.loc 1 228 0
	movi.n	a12, 0xc
	mov.n	a11, a5
	call8	memset
.LVL30:
	.loc 1 229 0
	l32i.n	a10, a4, 0
	l32r	a8, .LC11
	extui	a2, a2, 0, 5
.LVL31:
	slli	a9, a2, 17
	and	a8, a10, a8
	.loc 1 230 0
	l32r	a10, .LC12
	.loc 1 229 0
	or	a8, a8, a9
	.loc 1 230 0
	extui	a3, a3, 0, 1
.LVL32:
	slli	a9, a3, 16
	and	a8, a8, a10
	or	a8, a8, a9
.LBB43:
.LBB44:
	.loc 1 190 0
	l32r	a12, .LC13
.LBE44:
.LBE43:
	.loc 1 230 0
	s32i.n	a8, a4, 0
.LVL33:
.LBB46:
.LBB45:
	.loc 1 190 0
	l32i.n	a9, a12, 0
.LVL34:
	.loc 1 194 0
	l32r	a11, .LC14
	.loc 1 190 0
	mov.n	a13, a9
	j	.L39
.LVL35:
.L42:
	.loc 1 193 0
	l32i.n	a8, a13, 0
	extui	a10, a8, 16, 1
	blt	a3, a10, .L40
	.loc 1 194 0
	l32i.n	a10, a4, 0
	xor	a10, a8, a10
	bany	a10, a11, .L41
	extui	a8, a8, 17, 5
	bge	a8, a2, .L40
.L41:
.LVL36:
	.loc 1 196 0
	mov.n	a5, a13
	l32i.n	a13, a13, 8
.LVL37:
.L39:
	.loc 1 192 0
	bnez.n	a13, .L42
.L40:
	.loc 1 198 0
	movi.n	a2, 1
	movi.n	a8, 0
	moveqz	a8, a2, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L47
	moveqz	a8, a2, a5
	beqz.n	a8, .L43
.L47:
	.loc 1 200 0
	s32i.n	a13, a4, 8
	.loc 1 201 0
	s32i.n	a4, a12, 0
	j	.L48
.L43:
	.loc 1 203 0
	s32i.n	a4, a5, 8
	.loc 1 204 0
	s32i.n	a13, a4, 8
.L48:
	mov.n	a5, a4
.LVL38:
.L38:
.LBE45:
.LBE46:
.LBE42:
.LBE41:
.LBE40:
	.loc 1 236 0
	mov.n	a2, a5
	retw.n
.LFE20:
	.size	get_desc_for_int, .-get_desc_for_int
	.section	.text.esp_intr_mark_shared,"ax",@progbits
	.literal_position
	.literal .LC15, spinlock
	.align	4
	.global	esp_intr_mark_shared
	.type	esp_intr_mark_shared, @function
esp_intr_mark_shared:
.LFB22:
	.loc 1 265 0
.LVL39:
	entry	sp, 32
.LCFI4:
	.loc 1 267 0
	movi.n	a5, 0x1f
	.loc 1 265 0
	extui	a4, a4, 0, 8
	.loc 1 267 0
	blt	a5, a2, .L55
	ssr	a5
	sra	a5, a3
	sub	a5, a5, a3
	bltz	a5, .L55
	.loc 1 269 0
	l32r	a5, .LC15
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL40:
	.loc 1 270 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	get_desc_for_int
.LVL41:
	mov.n	a2, a10
.LVL42:
	mov.n	a10, a5
	.loc 1 271 0
	bnez.n	a2, .L52
	.loc 1 272 0
	call8	vTaskExitCritical
.LVL43:
	.loc 1 273 0
	movi	a2, 0x101
.LVL44:
	retw.n
.LVL45:
.L52:
	.loc 1 275 0
	movi.n	a3, 4
.LVL46:
	.loc 1 276 0
	beqz.n	a4, .L57
.L53:
	.loc 1 276 0 is_stmt 0 discriminator 1
	movi.n	a3, 6
.L57:
	s16i	a3, a2, 0
	.loc 1 277 0 is_stmt 1 discriminator 1
	call8	vTaskExitCritical
.LVL47:
	.loc 1 279 0 discriminator 1
	movi.n	a2, 0
.LVL48:
	retw.n
.LVL49:
.L55:
	.loc 1 267 0
	movi	a2, 0x102
.LVL50:
	.loc 1 280 0
	retw.n
.LFE22:
	.size	esp_intr_mark_shared, .-esp_intr_mark_shared
	.section	.text.esp_intr_reserve,"ax",@progbits
	.literal_position
	.literal .LC16, spinlock
	.align	4
	.global	esp_intr_reserve
	.type	esp_intr_reserve, @function
esp_intr_reserve:
.LFB23:
	.loc 1 283 0
.LVL51:
	entry	sp, 32
.LCFI5:
	.loc 1 285 0
	movi.n	a4, 0x1f
	blt	a4, a2, .L62
	ssr	a4
	sra	a4, a3
	sub	a4, a4, a3
	extui	a4, a4, 31, 1
	bnez.n	a4, .L62
	.loc 1 287 0
	l32r	a5, .LC16
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL52:
	.loc 1 288 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	get_desc_for_int
.LVL53:
	.loc 1 289 0
	bnez.n	a10, .L61
	.loc 1 290 0
	mov.n	a10, a5
.LVL54:
	call8	vTaskExitCritical
.LVL55:
	.loc 1 291 0
	movi	a2, 0x101
.LVL56:
	retw.n
.LVL57:
.L61:
	.loc 1 293 0
	movi.n	a2, 1
.LVL58:
	s16i	a2, a10, 0
	.loc 1 294 0
	mov.n	a10, a5
.LVL59:
	call8	vTaskExitCritical
.LVL60:
	.loc 1 296 0
	mov.n	a2, a4
	retw.n
.LVL61:
.L62:
	.loc 1 285 0
	movi	a2, 0x102
.LVL62:
	.loc 1 297 0
	retw.n
.LFE23:
	.size	esp_intr_reserve, .-esp_intr_reserve
	.section	.iram1
	.literal_position
	.literal .LC17, spinlock
	.literal .LC18, non_iram_int_mask
	.align	4
	.global	esp_intr_set_in_iram
	.type	esp_intr_set_in_iram, @function
esp_intr_set_in_iram:
.LFB30:
	.loc 1 690 0
.LVL63:
	entry	sp, 32
.LCFI6:
	.loc 1 690 0
	extui	a3, a3, 0, 8
	.loc 1 691 0
	movi	a8, 0x102
	beqz.n	a2, .L65
	.loc 1 692 0
	l32i.n	a4, a2, 0
.LVL64:
	.loc 1 693 0
	l16ui	a2, a4, 0
.LVL65:
	bbsi	a2, 2, .L65
	.loc 1 696 0
	l32r	a2, .LC17
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL66:
	.loc 1 697 0
	l32i.n	a8, a4, 0
	movi.n	a9, 1
	extui	a8, a8, 17, 5
	ssl	a8
	sll	a8, a9
.LVL67:
	l16ui	a13, a4, 0
	mov.n	a10, a2
	l32r	a12, .LC18
	.loc 1 698 0
	beqz.n	a3, .L66
	.loc 1 699 0
	movi.n	a11, 2
	or	a9, a13, a11
	s16i	a9, a4, 0
	.loc 1 700 0
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
	.loc 1 702 0
	movi.n	a9, -3
	and	a9, a13, a9
	s16i	a9, a4, 0
	.loc 1 703 0
	l32i.n	a4, a4, 0
.LVL71:
	extui	a4, a4, 16, 1
	addx4	a4, a4, a12
	l32i.n	a2, a4, 0
	or	a8, a2, a8
.LVL72:
.L71:
	s32i.n	a8, a4, 0
	.loc 1 705 0
	call8	vTaskExitCritical
.LVL73:
	.loc 1 706 0
	movi.n	a8, 0
.L65:
	.loc 1 707 0
	mov.n	a2, a8
	retw.n
.LFE30:
	.size	esp_intr_set_in_iram, .-esp_intr_set_in_iram
	.section	.text.esp_intr_get_intno,"ax",@progbits
	.align	4
	.global	esp_intr_get_intno
	.type	esp_intr_get_intno, @function
esp_intr_get_intno:
.LFB33:
	.loc 1 774 0
.LVL74:
	entry	sp, 32
.LCFI7:
	.loc 1 775 0
	l32i.n	a2, a2, 0
.LVL75:
	l32i.n	a2, a2, 0
	.loc 1 776 0
	extui	a2, a2, 17, 5
	retw.n
.LFE33:
	.size	esp_intr_get_intno, .-esp_intr_get_intno
	.section	.text.esp_intr_get_cpu,"ax",@progbits
	.align	4
	.global	esp_intr_get_cpu
	.type	esp_intr_get_cpu, @function
esp_intr_get_cpu:
.LFB34:
	.loc 1 779 0
.LVL76:
	entry	sp, 32
.LCFI8:
	.loc 1 780 0
	l32i.n	a2, a2, 0
.LVL77:
	l32i.n	a2, a2, 0
	.loc 1 781 0
	extui	a2, a2, 16, 1
	retw.n
.LFE34:
	.size	esp_intr_get_cpu, .-esp_intr_get_cpu
	.section	.iram1
	.literal_position
	.literal .LC19, spinlock
	.align	4
	.global	esp_intr_enable
	.type	esp_intr_enable, @function
esp_intr_enable:
.LFB35:
	.loc 1 795 0
.LVL78:
	entry	sp, 32
.LCFI9:
	.loc 1 796 0
	bnez.n	a2, .L75
.LVL79:
.L81:
	movi	a2, 0x102
	retw.n
.LVL80:
.L75:
	.loc 1 797 0
	l32r	a3, .LC19
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL81:
	.loc 1 799 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L77
	.loc 1 800 0
	l16ui	a10, a8, 0
	movi.n	a9, -2
	and	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 801 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 23
	j	.L82
.L77:
	.loc 1 803 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 2
.L82:
	srai	a11, a11, 24
.LVL82:
	l32i.n	a8, a2, 0
	.loc 1 805 0
	bltz	a11, .L79
	.loc 1 807 0
	l32i.n	a10, a8, 0
	extui	a12, a10, 17, 5
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL83:
	j	.L80
.LVL84:
.L79:
.LBB47:
.LBB48:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL85:
#NO_APP
.LBE48:
.LBE47:
	.loc 1 810 0
	l32i.n	a10, a8, 0
	extui	a8, a10, 16, 1
	bne	a8, a2, .L81
	.loc 1 811 0
	extui	a10, a10, 17, 5
	movi.n	a2, 1
	ssl	a10
	sll	a10, a2
	call8	xt_ints_on
.LVL86:
.L80:
	.loc 1 813 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL87:
	.loc 1 814 0
	movi.n	a2, 0
	.loc 1 815 0
	retw.n
.LFE35:
	.size	esp_intr_enable, .-esp_intr_enable
	.section	.rodata.str1.1
.LC21:
	.string	"svd != NULL"
	.section	.iram1
	.literal_position
	.literal .LC20, spinlock
	.literal .LC22, .LC21
	.literal .LC23, __func__$5461
	.literal .LC24, .LC6
	.align	4
	.global	esp_intr_disable
	.type	esp_intr_disable, @function
esp_intr_disable:
.LFB36:
	.loc 1 818 0
.LVL88:
	entry	sp, 32
.LCFI10:
	.loc 1 819 0
	beqz.n	a2, .L95
.LVL89:
.LBB54:
.LBB55:
	.loc 1 820 0
	l32r	a3, .LC20
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL90:
	.loc 1 823 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L85
.LBB56:
	.loc 1 824 0
	l16ui	a10, a8, 0
	movi.n	a9, 1
	or	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 825 0
	l32i.n	a11, a8, 0
	.loc 1 827 0
	l32i.n	a8, a2, 0
	.loc 1 825 0
	slli	a11, a11, 23
	.loc 1 827 0
	l32i.n	a8, a8, 4
	.loc 1 825 0
	srai	a11, a11, 24
.LVL91:
	.loc 1 828 0
	bnez.n	a8, .L96
	l32r	a13, .LC22
	l32r	a12, .LC23
	l32r	a10, .LC24
	movi	a11, 0x33c
.LVL92:
	call8	__assert_func
.LVL93:
.L96:
	.loc 1 830 0
	l32i.n	a10, a8, 0
	slli	a9, a10, 23
	srai	a9, a9, 24
	bne	a11, a9, .L87
	bbci	a10, 0, .L88
.L87:
	.loc 1 834 0
	l32i.n	a8, a8, 20
.LVL94:
	.loc 1 829 0
	bnez.n	a8, .L96
	j	.L90
.LVL95:
.L85:
.LBE56:
	.loc 1 837 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	slli	a11, a11, 2
	srai	a11, a11, 24
.LVL96:
	j	.L90
.L94:
	.loc 1 843 0
	l32i.n	a2, a2, 0
.LVL97:
	movi.n	a12, 6
	l32i.n	a10, a2, 0
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL98:
	j	.L91
.LVL99:
.L93:
	.loc 1 847 0
	l32i.n	a8, a2, 0
.LBB57:
.LBB58:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL100:
#NO_APP
.LBE58:
.LBE57:
	.loc 1 847 0
	l32i.n	a10, a8, 0
	extui	a8, a10, 16, 1
	beq	a8, a2, .L92
	.loc 1 848 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL101:
	j	.L95
.LVL102:
.L92:
	.loc 1 851 0
	extui	a10, a10, 17, 5
	movi.n	a2, 1
	ssl	a10
	sll	a10, a2
	call8	xt_ints_off
.LVL103:
.L91:
	.loc 1 853 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL104:
	.loc 1 854 0
	movi.n	a2, 0
	retw.n
.LVL105:
.L95:
.LBE55:
.LBE54:
	.loc 1 819 0
	movi	a2, 0x102
	retw.n
.LVL106:
.L88:
.LBB60:
.LBB59:
	.loc 1 840 0
	bgez	a11, .L91
	j	.L93
.LVL107:
.L90:
	bltz	a11, .L93
	j	.L94
.LBE59:
.LBE60:
.LFE36:
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
	.literal .LC34, __func__$5336
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
.LFB28:
	.loc 1 539 0
.LVL108:
	entry	sp, 96
.LCFI11:
.LVL109:
	.loc 1 539 0
	s32i.n	a4, sp, 28
	.loc 1 544 0
	movi	a4, 0x300
.LVL110:
	.loc 1 539 0
	s32i.n	a5, sp, 32
	s32i.n	a7, sp, 36
	s32i.n	a6, sp, 20
	.loc 1 544 0
	and	a5, a3, a4
.LVL111:
	.loc 1 539 0
	.loc 1 544 0
	beq	a5, a4, .L146
	.loc 1 546 0
	movi	a4, 0xf0
	bnone	a3, a4, .L157
	.loc 1 544 0
	movi	a4, 0x102
	.loc 1 546 0
	bnez.n	a6, .L100
.L157:
.LVL112:
.LBB72:
.LBB73:
	.loc 1 548 0
	movi	a5, 0x100
	and	a5, a3, a5
	beqz.n	a5, .L102
	l32i.n	a4, sp, 20
	beqz.n	a4, .L146
	bltz	a2, .L146
.L102:
	.loc 1 550 0
	l32i.n	a9, sp, 28
	beqz.n	a9, .L158
	l32i.n	a9, sp, 32
.LBE73:
.LBE72:
	.loc 1 544 0
	movi	a4, 0x102
.LBB86:
.LBB83:
	.loc 1 550 0
	beqz.n	a9, .L100
.L158:
	.loc 1 552 0
	bbci	a3, 10, .L104
	.loc 1 553 0
	l32i.n	a4, sp, 20
	l32r	a6, .LC28
.LVL113:
	l32r	a7, .LC29
.LVL114:
	add.n	a6, a4, a6
.LBE83:
.LBE86:
	.loc 1 544 0
	movi	a4, 0x102
.LBB87:
.LBB84:
	.loc 1 553 0
	bgeu	a7, a6, .L100
.L104:
	.loc 1 559 0
	movi	a4, 0xfe
	bany	a3, a4, .L105
	.loc 1 561 0
	movi.n	a4, 2
	.loc 1 560 0
	bnez.n	a5, .L196
.L106:
	.loc 1 563 0
	movi.n	a4, 0xe
.L196:
	or	a3, a3, a4
.LVL115:
.L105:
	.loc 1 570 0
	beqi	a2, -1, .L149
.LVL116:
	.loc 1 571 0
	movi.n	a4, -2
	beq	a2, a4, .L150
	.loc 1 572 0
	movi.n	a5, -3
	movi.n	a4, 0x10
	beq	a2, a5, .L109
	.loc 1 573 0
	movi.n	a5, -4
	movi.n	a4, 7
	beq	a2, a5, .L109
	.loc 1 574 0
	movi.n	a5, -5
	movi.n	a4, 0x1d
	beq	a2, a5, .L109
	.loc 1 541 0
	movi.n	a4, -1
	j	.L107
.LVL117:
.L149:
	.loc 1 570 0
	movi.n	a4, 6
	j	.L107
.LVL118:
.L150:
	.loc 1 571 0
	movi.n	a4, 0xf
.LVL119:
.L107:
	.loc 1 575 0
	addi.n	a6, a2, 6
	movi.n	a5, 0xb
	moveqz	a4, a5, a6
.LVL120:
.L109:
	.loc 1 578 0
	l32r	a11, .LC30
	movi.n	a10, 8
	call8	heap_caps_malloc
.LVL121:
	s32i.n	a10, sp, 16
.LVL122:
	.loc 1 579 0
	beqz.n	a10, .L155
	.loc 1 581 0
	l32r	a10, .LC31
.LVL123:
	call8	vTaskEnterCritical
.LVL124:
.LBB74:
.LBB75:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a6
 extui a6,a6,13,1
# 0 "" 2
.LVL125:
#NO_APP
.LBE75:
.LBE74:
.LBB76:
.LBB77:
	.loc 1 387 0
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL126:
	.loc 1 391 0
	movi	a5, 0xfe
	mov.n	a8, a3
	bany	a3, a5, .L110
	movi.n	a8, 0xe
	or	a8, a3, a8
.LVL127:
.L110:
.LBB78:
.LBB79:
	.loc 1 241 0
	l32r	a5, .LC32
	.loc 1 243 0
	movi.n	a12, 4
	.loc 1 241 0
	l32i.n	a5, a5, 0
.LVL128:
	j	.L111
.L117:
	.loc 1 243 0
	l16ui	a10, a5, 0
	l32i.n	a9, a5, 0
	bany	a10, a12, .L112
	.loc 1 244 0
	slli	a10, a9, 2
	srai	a10, a10, 24
	bne	a2, a10, .L113
	extui	a10, a9, 16, 1
	bne	a6, a10, .L113
	j	.L114
.L112:
	.loc 1 245 0
	extui	a10, a9, 16, 1
	bne	a6, a10, .L113
.LVL129:
.LBB80:
	.loc 1 248 0
	l32i.n	a10, a5, 4
.LVL130:
	.loc 1 249 0
	bnez.n	a10, .L116
	l32r	a13, .LC33
	l32r	a12, .LC34
	l32r	a10, .LC35
.LVL131:
	movi	a11, 0xf9
	call8	__assert_func
.LVL132:
.L116:
	.loc 1 251 0
	l32i.n	a11, a10, 0
	slli	a11, a11, 23
	srai	a11, a11, 24
	beq	a2, a11, .L114
	.loc 1 255 0
	l32i.n	a10, a10, 20
.LVL133:
	.loc 1 250 0
	bnez.n	a10, .L116
.LVL134:
.L113:
.LBE80:
	.loc 1 259 0
	l32i.n	a5, a5, 8
.LVL135:
.L111:
	.loc 1 242 0
	bnez.n	a5, .L117
	j	.L195
.L114:
.LBE79:
.LBE78:
	.loc 1 398 0
	beqi	a4, -1, .L123
	extui	a9, a9, 17, 5
	bne	a4, a9, .L181
	j	.L123
.L195:
	.loc 1 407 0
	beqi	a4, -1, .L122
	.loc 1 410 0
	mov.n	a11, a6
	mov.n	a10, a4
	s32i.n	a8, sp, 52
	call8	find_desc_for_int
.LVL136:
	mov.n	a5, a10
.LVL137:
	.loc 1 411 0
	l32i.n	a8, sp, 52
	bnez.n	a10, .L123
	.loc 1 413 0
	extui	a5, a4, 0, 5
.LVL138:
	slli	a9, a5, 17
	l32i.n	a10, sp, 0
.LVL139:
	l32r	a5, .LC36
	and	a5, a10, a5
	or	a5, a5, a9
	s32i.n	a5, sp, 0
.LVL140:
	.loc 1 414 0
	mov.n	a5, sp
.LVL141:
.L123:
	.loc 1 416 0
	mov.n	a13, a4
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a5
	call8	is_vect_desc_usable
.LVL142:
	beqz.n	a10, .L181
	.loc 1 417 0
	l32i.n	a4, a5, 0
.LVL143:
	extui	a4, a4, 17, 5
.LVL144:
	j	.L120
.LVL145:
.L122:
	.loc 1 407 0
	l32r	a9, .LC27
	.loc 1 440 0
	movi	a10, 0x100
	and	a10, a8, a10
	l32r	a7, .LC37
	.loc 1 407 0
	movi.n	a14, 9
	s32i.n	a9, sp, 24
	.loc 1 440 0
	s32i.n	a10, sp, 40
.LVL146:
.L131:
	.loc 1 428 0
	mov.n	a11, a6
	mov.n	a10, a5
	s32i.n	a8, sp, 52
	s32i.n	a14, sp, 48
	call8	find_desc_for_int
.LVL147:
	mov.n	a15, a10
.LVL148:
	.loc 1 429 0
	l32i.n	a8, sp, 52
	l32i.n	a14, sp, 48
	bnez.n	a10, .L124
	.loc 1 430 0
	extui	a10, a5, 0, 5
.LVL149:
	slli	a11, a10, 17
	l32r	a9, .LC36
	l32i.n	a10, sp, 0
	.loc 1 431 0
	mov.n	a15, sp
.LVL150:
	.loc 1 430 0
	and	a10, a10, a9
	or	a10, a10, a11
	s32i.n	a10, sp, 0
.LVL151:
.L124:
	.loc 1 438 0
	mov.n	a11, a8
	mov.n	a10, a15
	movi.n	a13, -1
	mov.n	a12, a6
	s32i.n	a8, sp, 52
	s32i.n	a14, sp, 48
	s32i.n	a15, sp, 44
	call8	is_vect_desc_usable
.LVL152:
	l32i.n	a8, sp, 52
	l32i.n	a14, sp, 48
	l32i.n	a15, sp, 44
	beqz.n	a10, .L125
	.loc 1 440 0
	l32i.n	a9, sp, 40
	beqz.n	a9, .L126
	.loc 1 444 0
	l16ui	a10, a15, 0
	movi.n	a9, 4
	bnone	a10, a9, .L127
.LVL153:
.LBB81:
	.loc 1 448 0
	l32i.n	a11, a15, 4
.LVL154:
	.loc 1 447 0
	movi.n	a10, 0
	j	.L128
.LVL155:
.L129:
	.loc 1 451 0
	l32i.n	a11, a11, 20
.LVL156:
	.loc 1 450 0
	addi.n	a10, a10, 1
.LVL157:
.L128:
	.loc 1 449 0
	bnez.n	a11, .L129
	.loc 1 453 0
	l32i.n	a9, sp, 24
	blt	a10, a9, .L130
	l32i.n	a11, a7, 0
.LVL158:
	bge	a11, a14, .L125
.L130:
.LVL159:
	.loc 1 457 0
	l32i.n	a14, a7, 0
.LVL160:
	s32i.n	a10, sp, 24
	j	.L197
.LVL161:
.L127:
.LBE81:
	.loc 1 463 0
	bnei	a4, -1, .L125
.L126:
	.loc 1 478 0
	l32i.n	a10, a7, 0
	bge	a10, a14, .L125
	mov.n	a14, a10
.LVL162:
.L197:
	mov.n	a4, a5
.L125:
.LVL163:
	.loc 1 426 0
	addi.n	a5, a5, 1
.LVL164:
	addi	a7, a7, 16
	bnei	a5, 32, .L131
.LVL165:
.L120:
.LBE77:
.LBE76:
	.loc 1 585 0
	bnei	a4, -1, .L132
.LVL166:
.L181:
	.loc 1 587 0
	l32r	a10, .LC31
	.loc 1 589 0
	movi	a4, 0x105
	.loc 1 587 0
	call8	vTaskExitCritical
.LVL167:
	.loc 1 588 0
	l32i.n	a10, sp, 16
	call8	free
.LVL168:
	j	.L100
.LVL169:
.L132:
	.loc 1 592 0
	mov.n	a11, a6
	mov.n	a10, a4
	call8	get_desc_for_int
.LVL170:
	mov.n	a7, a10
.LVL171:
	l32r	a5, .LC31
	.loc 1 593 0
	bnez.n	a10, .L133
	j	.L202
.L133:
	.loc 1 600 0
	bbci	a3, 8, .L134
.LBB82:
	.loc 1 602 0
	movi.n	a10, 0x18
	call8	malloc
.LVL172:
	.loc 1 603 0
	bnez.n	a10, .L135
.LVL173:
.L202:
	.loc 1 604 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL174:
	.loc 1 605 0
	l32i.n	a10, sp, 16
	call8	free
.LVL175:
	j	.L155
.LVL176:
.L135:
	.loc 1 608 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	s32i.n	a10, sp, 44
	call8	memset
.LVL177:
	.loc 1 609 0
	l32i.n	a9, sp, 44
	l32i.n	a5, sp, 28
	.loc 1 614 0
	l16ui	a11, a9, 0
	.loc 1 609 0
	s32i.n	a5, a9, 4
	.loc 1 610 0
	l32i.n	a5, sp, 32
	.loc 1 619 0
	mov.n	a12, a7
	.loc 1 610 0
	s32i.n	a5, a9, 8
	.loc 1 611 0
	l32i.n	a5, sp, 20
	s32i.n	a5, a9, 12
	.loc 1 612 0
	l32i.n	a5, sp, 36
	s32i.n	a5, a9, 16
	.loc 1 613 0
	l32i.n	a5, a7, 4
	s32i.n	a5, a9, 20
	.loc 1 614 0
	extui	a5, a2, 0, 8
	slli	a10, a5, 1
	movi	a5, -0x1ff
	and	a5, a11, a5
	or	a5, a5, a10
	.loc 1 615 0
	movi.n	a10, -2
	and	a5, a5, a10
	s16i	a5, a9, 0
.LVL178:
	.loc 1 616 0
	s32i.n	a9, a7, 4
	.loc 1 617 0
	l16ui	a9, a7, 0
	movi.n	a5, 4
	or	a5, a9, a5
	.loc 1 619 0
	l32r	a11, .LC38
	.loc 1 617 0
	s16i	a5, a7, 0
	.loc 1 619 0
	mov.n	a10, a4
	call8	xt_set_interrupt_handler
.LVL179:
	j	.L136
.LVL180:
.L134:
.LBE82:
	.loc 1 622 0
	movi.n	a5, 8
	.loc 1 623 0
	l32i.n	a9, sp, 20
	.loc 1 622 0
	s16i	a5, a10, 0
	.loc 1 623 0
	beqz.n	a9, .L137
	.loc 1 636 0
	l32i.n	a12, sp, 36
	mov.n	a11, a9
	mov.n	a10, a4
	call8	xt_set_interrupt_handler
.LVL181:
.L137:
	.loc 1 639 0
	bbci	a3, 9, .L138
	movi.n	a10, 1
	ssl	a4
	sll	a10, a10
	call8	xthal_set_intclear
.LVL182:
.L138:
	.loc 1 640 0
	extui	a5, a2, 0, 8
	slli	a9, a5, 22
	l32i.n	a10, a7, 0
	l32r	a5, .LC39
	and	a5, a10, a5
	or	a5, a5, a9
	s32i.n	a5, a7, 0
.LVL183:
.L136:
	l16ui	a12, a7, 0
	l32r	a11, .LC40
	slli	a5, a6, 2
	.loc 1 642 0
	bbci	a3, 10, .L139
	.loc 1 643 0
	movi.n	a10, 2
	or	a9, a12, a10
	s16i	a9, a7, 0
	.loc 1 644 0
	add.n	a5, a11, a5
	movi.n	a9, -2
	ssl	a4
	src	a10, a9, a9
	l32i.n	a9, a5, 0
	and	a9, a10, a9
	j	.L200
.L139:
	.loc 1 646 0
	movi.n	a9, -3
	and	a9, a12, a9
	.loc 1 647 0
	add.n	a5, a11, a5
	.loc 1 646 0
	s16i	a9, a7, 0
	.loc 1 647 0
	l32i.n	a10, a5, 0
	movi.n	a9, 1
	ssl	a4
	sll	a9, a9
	or	a9, a10, a9
.L200:
	s32i.n	a9, a5, 0
	.loc 1 649 0
	bltz	a2, .L141
	.loc 1 650 0
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a6
	call8	intr_matrix_set
.LVL184:
.L141:
	.loc 1 654 0
	l32i.n	a2, sp, 16
.LVL185:
	.loc 1 655 0
	l32i.n	a5, sp, 16
	.loc 1 654 0
	s32i.n	a7, a2, 0
	.loc 1 655 0
	l32i.n	a2, a7, 4
	.loc 1 658 0
	movi.n	a10, 1
	.loc 1 655 0
	s32i.n	a2, a5, 4
	.loc 1 658 0
	ssl	a4
	sll	a10, a10
	call8	xt_ints_on
.LVL186:
	.loc 1 662 0
	bbci	a3, 11, .L142
	.loc 1 663 0
	l32i.n	a10, sp, 16
	call8	esp_intr_disable
.LVL187:
.L142:
	.loc 1 666 0
	l32r	a10, .LC31
	call8	vTaskExitCritical
.LVL188:
	.loc 1 669 0
	l32i	a6, sp, 96
.LVL189:
	beqz.n	a6, .L143
	.loc 1 670 0
	l32i.n	a9, sp, 16
	.loc 1 676 0
	movi.n	a4, 0
.LVL190:
	.loc 1 670 0
	s32i.n	a9, a6, 0
	j	.L100
.LVL191:
.L143:
	.loc 1 672 0
	l32i.n	a10, sp, 16
	call8	free
.LVL192:
	.loc 1 676 0
	l32i	a4, sp, 96
.LVL193:
	j	.L100
.LVL194:
.L146:
.LBE84:
.LBE87:
	.loc 1 544 0
	movi	a4, 0x102
	j	.L100
.LVL195:
.L155:
.LBB88:
.LBB85:
	.loc 1 579 0
	movi	a4, 0x101
.LVL196:
.L100:
.LBE85:
.LBE88:
	.loc 1 677 0
	mov.n	a2, a4
	retw.n
.LFE28:
	.size	esp_intr_alloc_intrstatus, .-esp_intr_alloc_intrstatus
	.section	.text.esp_intr_alloc,"ax",@progbits
	.align	4
	.global	esp_intr_alloc
	.type	esp_intr_alloc, @function
esp_intr_alloc:
.LFB29:
	.loc 1 680 0
.LVL197:
	entry	sp, 48
.LCFI12:
	.loc 1 686 0
	movi.n	a13, 0
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a12, a13
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_intr_alloc_intrstatus
.LVL198:
	.loc 1 687 0
	mov.n	a2, a10
.LVL199:
	retw.n
.LFE29:
	.size	esp_intr_alloc, .-esp_intr_alloc
	.section	.rodata.str1.1
.LC44:
	.string	"svd"
	.section	.text.esp_intr_free,"ax",@progbits
	.literal_position
	.literal .LC42, esp_intr_free_cb
	.literal .LC43, spinlock
	.literal .LC45, .LC44
	.literal .LC46, __func__$5441
	.literal .LC47, .LC6
	.literal .LC48, xt_unhandled_interrupt
	.literal .LC49, non_iram_int_mask
	.align	4
	.global	esp_intr_free
	.type	esp_intr_free, @function
esp_intr_free:
.LFB32:
	.loc 1 715 0
.LVL200:
	entry	sp, 32
.LCFI13:
.LVL201:
	.loc 1 717 0
	beqz.n	a2, .L216
	.loc 1 719 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	extui	a10, a10, 16, 1
.LBB98:
.LBB99:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL202:
#NO_APP
.LBE99:
.LBE98:
	.loc 1 719 0
	beq	a10, a3, .L206
.LBB100:
	.loc 1 720 0
	l32r	a11, .LC42
	mov.n	a12, a2
	call8	esp_ipc_call_blocking
.LVL203:
	.loc 1 721 0
	movi.n	a3, 1
.LVL204:
	movi.n	a2, 0
.LVL205:
	movnez	a2, a3, a10
	neg	a2, a2
	retw.n
.LVL206:
.L206:
.LBE100:
.LBB101:
.LBB102:
	.loc 1 723 0
	l32r	a3, .LC43
.LVL207:
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL208:
	.loc 1 724 0
	mov.n	a10, a2
	call8	esp_intr_disable
.LVL209:
	.loc 1 725 0
	l32i.n	a11, a2, 0
	movi.n	a8, 4
	l16ui	a9, a11, 0
	and	a8, a9, a8
	beqz.n	a8, .L207
.LBB103:
	.loc 1 727 0
	l32i.n	a10, a11, 4
.LVL210:
	.loc 1 729 0
	bnez.n	a10, .L208
	l32r	a13, .LC45
	l32r	a12, .LC46
	l32r	a10, .LC47
.LVL211:
	movi	a11, 0x2d9
.LVL212:
	call8	__assert_func
.LVL213:
.L208:
	.loc 1 731 0
	l32i.n	a12, a2, 4
	movi.n	a9, 0
	j	.L213
.LVL214:
.L218:
	.loc 1 730 0
	mov.n	a10, a8
.LVL215:
.L213:
	l32i.n	a8, a10, 20
	.loc 1 731 0
	bne	a12, a10, .L209
	.loc 1 733 0
	beqz.n	a9, .L210
	.loc 1 734 0
	s32i.n	a8, a9, 20
	j	.L211
.L210:
	.loc 1 736 0
	s32i.n	a8, a11, 4
.L211:
	.loc 1 738 0
	call8	free
.LVL216:
	j	.L212
.LVL217:
.L209:
	mov.n	a9, a10
	.loc 1 730 0
	bnez.n	a8, .L218
.LVL218:
.L212:
	.loc 1 745 0
	l32i.n	a8, a2, 0
	movi.n	a10, 1
	l32i.n	a9, a8, 4
	movi.n	a8, 0
	moveqz	a8, a10, a9
	extui	a8, a8, 0, 8
.L207:
.LVL219:
.LBE103:
	.loc 1 749 0
	l32i.n	a9, a2, 0
	l16ui	a10, a9, 0
	bbsi	a10, 3, .L219
	beqz.n	a8, .L214
.L219:
	.loc 1 760 0
	l32i.n	a10, a9, 0
	l32r	a11, .LC48
	extui	a10, a10, 17, 5
	mov.n	a12, a10
	call8	xt_set_interrupt_handler
.LVL220:
	.loc 1 764 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0
	s16i	a9, a8, 0
	.loc 1 766 0
	l32i.n	a9, a8, 0
	l32r	a10, .LC49
	extui	a8, a9, 16, 1
	addx4	a8, a8, a10
	extui	a9, a9, 17, 5
	movi.n	a10, -2
	ssl	a9
	src	a9, a10, a10
	l32i.n	a10, a8, 0
	and	a9, a9, a10
	s32i.n	a9, a8, 0
.L214:
	.loc 1 768 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL221:
	.loc 1 769 0
	mov.n	a10, a2
	call8	free
.LVL222:
	movi.n	a2, 0
.LVL223:
	retw.n
.LVL224:
.L216:
.LBE102:
.LBE101:
	.loc 1 717 0
	movi	a2, 0x102
.LVL225:
	.loc 1 771 0
	retw.n
.LFE32:
	.size	esp_intr_free, .-esp_intr_free
	.section	.text.esp_intr_free_cb,"ax",@progbits
	.align	4
	.type	esp_intr_free_cb, @function
esp_intr_free_cb:
.LFB31:
	.loc 1 710 0
.LVL226:
	entry	sp, 32
.LCFI14:
	.loc 1 711 0
	mov.n	a10, a2
	call8	esp_intr_free
.LVL227:
	retw.n
.LFE31:
	.size	esp_intr_free_cb, .-esp_intr_free_cb
	.section	.iram1
	.literal_position
	.literal .LC50, non_iram_int_mask
	.literal .LC51, non_iram_int_disabled_flag
	.literal .LC52, non_iram_int_disabled
	.align	4
	.global	esp_intr_noniram_disable
	.type	esp_intr_noniram_disable, @function
esp_intr_noniram_disable:
.LFB37:
	.loc 1 859 0
	entry	sp, 32
.LCFI15:
.LBB104:
.LBB105:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL228:
#NO_APP
.LBE105:
.LBE104:
	.loc 1 863 0
	l32r	a12, .LC51
	.loc 1 862 0
	l32r	a10, .LC50
	slli	a9, a8, 2
	add.n	a10, a10, a9
	.loc 1 863 0
	add.n	a8, a12, a8
.LVL229:
	.loc 1 862 0
	l32i.n	a10, a10, 0
	.loc 1 863 0
	l8ui	a12, a8, 0
	.loc 1 862 0
	movi.n	a11, -1
	xor	a11, a11, a10
.LVL230:
	.loc 1 863 0
	beqz.n	a12, .L225
	.loc 1 863 0 is_stmt 0 discriminator 1
	call8	abort
.LVL231:
.L225:
	.loc 1 864 0 is_stmt 1
	movi.n	a12, 1
	s8i	a12, a8, 0
	.loc 1 865 0
#APP
# 865 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c" 1
	movi a8,0
xsr a8,INTENABLE
rsync
and a3,a8,a11
wsr a3,INTENABLE
rsync

# 0 "" 2
.LVL232:
	.loc 1 874 0
#NO_APP
	l32r	a11, .LC52
.LVL233:
	and	a10, a8, a10
.LVL234:
	add.n	a9, a11, a9
.LVL235:
	s32i.n	a10, a9, 0
	retw.n
.LFE37:
	.size	esp_intr_noniram_disable, .-esp_intr_noniram_disable
	.literal_position
	.literal .LC53, non_iram_int_disabled
	.literal .LC54, non_iram_int_disabled_flag
	.align	4
	.global	esp_intr_noniram_enable
	.type	esp_intr_noniram_enable, @function
esp_intr_noniram_enable:
.LFB38:
	.loc 1 878 0
	entry	sp, 32
.LCFI16:
.LBB106:
.LBB107:
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL236:
#NO_APP
.LBE107:
.LBE106:
	.loc 1 881 0
	l32r	a10, .LC54
	.loc 1 880 0
	l32r	a9, .LC53
	addx4	a9, a8, a9
	.loc 1 881 0
	add.n	a8, a10, a8
.LVL237:
	l8ui	a10, a8, 0
	.loc 1 880 0
	l32i.n	a9, a9, 0
.LVL238:
	.loc 1 881 0
	bnez.n	a10, .L227
	.loc 1 881 0 is_stmt 0 discriminator 1
	call8	abort
.LVL239:
.L227:
	.loc 1 882 0 is_stmt 1
	movi.n	a10, 0
	s8i	a10, a8, 0
	.loc 1 883 0
#APP
# 883 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c" 1
	movi a3,0
xsr a3,INTENABLE
rsync
or a3,a3,a9
wsr a3,INTENABLE
rsync

# 0 "" 2
#NO_APP
	retw.n
.LFE38:
	.size	esp_intr_noniram_enable, .-esp_intr_noniram_enable
	.align	4
	.global	ets_isr_unmask
	.type	ets_isr_unmask, @function
ets_isr_unmask:
.LFB39:
	.loc 1 898 0
.LVL240:
	entry	sp, 32
.LCFI17:
	.loc 1 899 0
	mov.n	a10, a2
	call8	xt_ints_on
.LVL241:
	retw.n
.LFE39:
	.size	ets_isr_unmask, .-ets_isr_unmask
	.align	4
	.global	ets_isr_mask
	.type	ets_isr_mask, @function
ets_isr_mask:
.LFB40:
	.loc 1 902 0
.LVL242:
	entry	sp, 32
.LCFI18:
	.loc 1 903 0
	mov.n	a10, a2
	call8	xt_ints_off
.LVL243:
	retw.n
.LFE40:
	.size	ets_isr_mask, .-ets_isr_mask
	.section	.rodata.__func__$5461,"a",@progbits
	.type	__func__$5461, @object
	.size	__func__$5461, 17
__func__$5461:
	.string	"esp_intr_disable"
	.section	.rodata.__func__$5441,"a",@progbits
	.type	__func__$5441, @object
	.size	__func__$5441, 14
__func__$5441:
	.string	"esp_intr_free"
	.section	.rodata.__func__$5371,"a",@progbits
	.type	__func__$5371, @object
	.size	__func__$5371, 20
__func__$5371:
	.string	"is_vect_desc_usable"
	.section	.rodata.__func__$5336,"a",@progbits
	.type	__func__$5336, @object
	.size	__func__$5336, 21
__func__$5336:
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
	.word	1
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI11-.LFB28
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI12-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI13-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI14-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI15-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI17-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI18-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
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
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_ipc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x164f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
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
	.byte	0x9e
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9f
	.4byte	0x314
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa0
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
	.byte	0x3b
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
	.byte	0x3f
	.4byte	0x189
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x41
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
	.byte	0x45
	.4byte	0x1b3
	.uleb128 0xa
	.byte	0x10
	.byte	0x1
	.byte	0x47
	.4byte	0x20a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x48
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x49
	.4byte	0x1d2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4a
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
	.byte	0x4b
	.4byte	0x1dd
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x1
	.byte	0x81
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x18
	.byte	0x1
	.byte	0x84
	.4byte	0x297
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x85
	.4byte	0x4c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x86
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x87
	.4byte	0x303
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x12
	.string	"isr"
	.byte	0x1
	.byte	0x89
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0x8a
	.4byte	0x94
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8b
	.4byte	0x30e
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x82
	.4byte	0x2a2
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1
	.byte	0x95
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x96
	.4byte	0x4c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"cpu"
	.byte	0x1
	.byte	0x97
	.4byte	0x5e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x98
	.4byte	0x5e
	.byte	0x4
	.byte	0x5
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x99
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9a
	.4byte	0x30e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9b
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
	.2byte	0x12f
	.4byte	0x342
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x130
	.4byte	0x94
	.byte	0
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.2byte	0x131
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x132
	.4byte	0x31a
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.byte	0xde
	.4byte	0x314
	.byte	0x1
	.4byte	0x38c
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0xde
	.4byte	0x4c
	.uleb128 0x1b
	.string	"cpu"
	.byte	0x1
	.byte	0xde
	.4byte	0x4c
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xe0
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0xe2
	.4byte	0x314
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x137
	.4byte	0xd9
	.byte	0x1
	.4byte	0x3b6
	.uleb128 0x20
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x137
	.4byte	0x4c
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.2byte	0x137
	.4byte	0x4c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF76
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x3d1
	.uleb128 0x1c
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x331
	.4byte	0xce
	.byte	0x1
	.4byte	0x422
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x331
	.4byte	0x147
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x335
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x336
	.4byte	0xd9
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	0x432
	.4byte	.LASF62
	.uleb128 0x1d
	.uleb128 0x26
	.string	"svd"
	.byte	0x1
	.2byte	0x33b
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
	.2byte	0x219
	.4byte	0xce
	.byte	0x1
	.4byte	0x4e6
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x219
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x219
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x219
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x219
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x219
	.4byte	0x10c
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x94
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x21a
	.4byte	0x4e6
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x21c
	.4byte	0x152
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x21d
	.4byte	0x4c
	.uleb128 0x26
	.string	"cpu"
	.byte	0x1
	.2byte	0x246
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x248
	.4byte	0x4c
	.uleb128 0x26
	.string	"vd"
	.byte	0x1
	.2byte	0x250
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x24
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x25a
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x147
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x2ca
	.4byte	0xce
	.byte	0x1
	.4byte	0x54f
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x147
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xd9
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	0x55f
	.4byte	.LASF69
	.uleb128 0x27
	.4byte	0x534
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xce
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.string	"svd"
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x30e
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x55f
	.uleb128 0x10
	.4byte	0x9d
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x54f
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xd1
	.4byte	0x314
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a6
	.uleb128 0x29
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd1
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x2a
	.string	"cpu"
	.byte	0x1
	.byte	0xd1
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"vd"
	.byte	0x1
	.byte	0xd3
	.4byte	0x314
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1ed
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60e
	.uleb128 0x2d
	.string	"arg"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x2e
	.string	"vd"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x314
	.4byte	.LLST2
	.uleb128 0x2f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x30e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LVL7
	.4byte	0x15a9
	.4byte	0x5fd
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL10
	.4byte	0x15b4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x13c
	.4byte	0xd9
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x314
	.4byte	.LLST3
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13c
	.4byte	0x4c
	.4byte	.LLST4
	.uleb128 0x2d
	.string	"cpu"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x34
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x13c
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0x35
	.4byte	.LASF61
	.4byte	0x716
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5371
	.uleb128 0x36
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x6b2
	.uleb128 0x37
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x163
	.4byte	0xd9
	.4byte	.LLST8
	.uleb128 0x37
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x164
	.4byte	0xd9
	.4byte	.LLST9
	.byte	0
	.uleb128 0x38
	.4byte	0x38c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x16f
	.4byte	0x6d9
	.uleb128 0x39
	.4byte	0x3a9
	.4byte	.LLST10
	.uleb128 0x39
	.4byte	0x39d
	.4byte	.LLST11
	.byte	0
	.uleb128 0x32
	.4byte	.LVL17
	.4byte	0x15bf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5371
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x716
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x706
	.uleb128 0x3a
	.4byte	.LASF77
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0x748
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0xbc
	.4byte	0x314
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xbe
	.4byte	0x314
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.byte	0xbf
	.4byte	0x314
	.byte	0
	.uleb128 0x3b
	.4byte	0x34e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x839
	.uleb128 0x39
	.4byte	0x35e
	.4byte	.LLST12
	.uleb128 0x39
	.4byte	0x369
	.4byte	.LLST13
	.uleb128 0x3c
	.4byte	0x374
	.4byte	.LLST14
	.uleb128 0x36
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x822
	.uleb128 0x39
	.4byte	0x369
	.4byte	.LLST15
	.uleb128 0x39
	.4byte	0x35e
	.4byte	.LLST16
	.uleb128 0x3d
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x3e
	.4byte	0x374
	.uleb128 0x3d
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x3c
	.4byte	0x37f
	.4byte	.LLST17
	.uleb128 0x3f
	.4byte	0x71b
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe7
	.4byte	0x7ea
	.uleb128 0x39
	.4byte	0x727
	.4byte	.LLST18
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3c
	.4byte	0x732
	.4byte	.LLST19
	.uleb128 0x3c
	.4byte	0x73c
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.4byte	0x15ca
	.4byte	0x804
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x32
	.4byte	.LVL30
	.4byte	0x15d5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL25
	.4byte	0x564
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x108
	.4byte	0xce
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x34
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x108
	.4byte	0x4c
	.4byte	.LLST21
	.uleb128 0x2d
	.string	"cpu"
	.byte	0x1
	.2byte	0x108
	.4byte	0x4c
	.4byte	.LLST22
	.uleb128 0x42
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x108
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.string	"vd"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x314
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	.LVL40
	.4byte	0x15a9
	.4byte	0x8a4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL41
	.4byte	0x34e
	.4byte	0x8be
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL43
	.4byte	0x15b4
	.4byte	0x8d2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL47
	.4byte	0x15b4
	.byte	0
	.uleb128 0x41
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x11a
	.4byte	0xce
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x976
	.uleb128 0x34
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11a
	.4byte	0x4c
	.4byte	.LLST24
	.uleb128 0x44
	.string	"cpu"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"vd"
	.byte	0x1
	.2byte	0x120
	.4byte	0x314
	.4byte	.LLST25
	.uleb128 0x30
	.4byte	.LVL52
	.4byte	0x15a9
	.4byte	0x937
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL53
	.4byte	0x34e
	.4byte	0x951
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL55
	.4byte	0x15b4
	.4byte	0x965
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL60
	.4byte	0x15b4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2b1
	.4byte	0xce
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9eb
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x147
	.4byte	.LLST26
	.uleb128 0x42
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x2b1
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"vd"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x314
	.4byte	.LLST27
	.uleb128 0x37
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LVL66
	.4byte	0x15a9
	.4byte	0x9e1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL73
	.4byte	0x15b4
	.byte	0
	.uleb128 0x41
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x305
	.4byte	0x4c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa16
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x305
	.4byte	0x147
	.4byte	.LLST29
	.byte	0
	.uleb128 0x41
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x30a
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa41
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x30a
	.4byte	0x147
	.4byte	.LLST30
	.byte	0
	.uleb128 0x41
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x31a
	.4byte	0xce
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad6
	.uleb128 0x34
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x31a
	.4byte	0x147
	.4byte	.LLST31
	.uleb128 0x37
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x31e
	.4byte	0x4c
	.4byte	.LLST32
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.2byte	0x32a
	.4byte	0xa9f
	.uleb128 0x3d
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x3e
	.4byte	0x3c6
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL81
	.4byte	0x15a9
	.4byte	0xab3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL83
	.4byte	0x15de
	.uleb128 0x43
	.4byte	.LVL86
	.4byte	0x15ea
	.uleb128 0x32
	.4byte	.LVL87
	.4byte	0x15b4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x3d1
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf5
	.uleb128 0x39
	.4byte	0x3e2
	.4byte	.LLST33
	.uleb128 0x3e
	.4byte	0x3ee
	.uleb128 0x3e
	.4byte	0x3fa
	.uleb128 0x45
	.4byte	0x406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x39
	.4byte	0x3e2
	.4byte	.LLST34
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3c
	.4byte	0x3ee
	.4byte	.LLST35
	.uleb128 0x3c
	.4byte	0x3fa
	.4byte	.LLST36
	.uleb128 0x45
	.4byte	0x406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x36
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0xb7a
	.uleb128 0x3c
	.4byte	0x414
	.4byte	.LLST37
	.uleb128 0x32
	.4byte	.LVL93
	.4byte	0x15bf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x33c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5461
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.2byte	0x34f
	.4byte	0xb9e
	.uleb128 0x3d
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x3e
	.4byte	0x3c6
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL90
	.4byte	0x15a9
	.4byte	0xbb2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL98
	.4byte	0x15de
	.4byte	0xbc5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x30
	.4byte	.LVL101
	.4byte	0x15b4
	.4byte	0xbd9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL103
	.4byte	0x15f5
	.uleb128 0x32
	.4byte	.LVL104
	.4byte	0x15b4
	.uleb128 0x31
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
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.byte	0x1
	.4byte	0xc95
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x17e
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x17f
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x180
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x182
	.4byte	0x297
	.uleb128 0x26
	.string	"vd"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x314
	.uleb128 0x1d
	.uleb128 0x26
	.string	"no"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0xef
	.4byte	0x314
	.byte	0x1
	.4byte	0xceb
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0xef
	.4byte	0x4c
	.uleb128 0x1b
	.string	"cpu"
	.byte	0x1
	.byte	0xef
	.4byte	0x4c
	.uleb128 0x1c
	.string	"vd"
	.byte	0x1
	.byte	0xf1
	.4byte	0x314
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	0xcfb
	.4byte	.LASF95
	.uleb128 0x1d
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf7
	.4byte	0xd9
	.uleb128 0x1c
	.string	"svd"
	.byte	0x1
	.byte	0xf8
	.4byte	0x30e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0xcfb
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xceb
	.uleb128 0x3b
	.4byte	0x437
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1168
	.uleb128 0x39
	.4byte	0x448
	.4byte	.LLST38
	.uleb128 0x39
	.4byte	0x454
	.4byte	.LLST39
	.uleb128 0x39
	.4byte	0x460
	.4byte	.LLST40
	.uleb128 0x39
	.4byte	0x46c
	.4byte	.LLST41
	.uleb128 0x39
	.4byte	0x478
	.4byte	.LLST42
	.uleb128 0x39
	.4byte	0x484
	.4byte	.LLST43
	.uleb128 0x46
	.4byte	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x47
	.4byte	0x49c
	.byte	0
	.uleb128 0x48
	.4byte	0x4a8
	.sleb128 -1
	.uleb128 0x3e
	.4byte	0x4b4
	.uleb128 0x3e
	.4byte	0x4c0
	.uleb128 0x3e
	.4byte	0x4cc
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x39
	.4byte	0x490
	.4byte	.LLST44
	.uleb128 0x39
	.4byte	0x484
	.4byte	.LLST45
	.uleb128 0x39
	.4byte	0x478
	.4byte	.LLST46
	.uleb128 0x39
	.4byte	0x46c
	.4byte	.LLST47
	.uleb128 0x39
	.4byte	0x460
	.4byte	.LLST48
	.uleb128 0x39
	.4byte	0x454
	.4byte	.LLST49
	.uleb128 0x39
	.4byte	0x448
	.4byte	.LLST50
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3c
	.4byte	0x49c
	.4byte	.LLST51
	.uleb128 0x3c
	.4byte	0x4a8
	.4byte	.LLST52
	.uleb128 0x3c
	.4byte	0x4b4
	.4byte	.LLST53
	.uleb128 0x3e
	.4byte	0x4c0
	.uleb128 0x3c
	.4byte	0x4cc
	.4byte	.LLST54
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.2byte	0x246
	.4byte	0xe06
	.uleb128 0x3d
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x3c
	.4byte	0x3c6
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xbf5
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.2byte	0x248
	.4byte	0xfb4
	.uleb128 0x39
	.4byte	0xc2a
	.4byte	.LLST56
	.uleb128 0x39
	.4byte	0xc1e
	.4byte	.LLST57
	.uleb128 0x39
	.4byte	0xc12
	.4byte	.LLST53
	.uleb128 0x39
	.4byte	0xc06
	.4byte	.LLST59
	.uleb128 0x3d
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x3c
	.4byte	0xc36
	.4byte	.LLST60
	.uleb128 0x3c
	.4byte	0xc40
	.4byte	.LLST61
	.uleb128 0x3c
	.4byte	0xc4c
	.4byte	.LLST62
	.uleb128 0x3c
	.4byte	0xc58
	.4byte	.LLST63
	.uleb128 0x45
	.4byte	0xc64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3c
	.4byte	0xc70
	.4byte	.LLST64
	.uleb128 0x38
	.4byte	0xc95
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.2byte	0x18a
	.4byte	0xf09
	.uleb128 0x39
	.4byte	0xcb0
	.4byte	.LLST65
	.uleb128 0x39
	.4byte	0xca5
	.4byte	.LLST66
	.uleb128 0x3d
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.uleb128 0x3c
	.4byte	0xcbb
	.4byte	.LLST67
	.uleb128 0x45
	.4byte	0xcc5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5336
	.uleb128 0x3d
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x3c
	.4byte	0xcd3
	.4byte	.LLST68
	.uleb128 0x3c
	.4byte	0xcde
	.4byte	.LLST69
	.uleb128 0x32
	.4byte	.LVL132
	.4byte	0x15bf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5336
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0xf29
	.uleb128 0x3c
	.4byte	0xc7c
	.4byte	.LLST70
	.uleb128 0x3c
	.4byte	0xc87
	.4byte	.LLST71
	.byte	0
	.uleb128 0x30
	.4byte	.LVL126
	.4byte	0x15d5
	.4byte	0xf48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x30
	.4byte	.LVL136
	.4byte	0x564
	.4byte	0xf62
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL142
	.4byte	0x60e
	.4byte	0xf82
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL147
	.4byte	0x564
	.4byte	0xf9c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL152
	.4byte	0x60e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.4byte	0x103f
	.uleb128 0x3c
	.4byte	0x4d8
	.4byte	.LLST72
	.uleb128 0x30
	.4byte	.LVL172
	.4byte	0x1600
	.4byte	0xfdd
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x30
	.4byte	.LVL174
	.4byte	0x15b4
	.4byte	0xff1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL175
	.4byte	0x160b
	.4byte	0x1007
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LVL177
	.4byte	0x15d5
	.4byte	0x101f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL179
	.4byte	0x1616
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_intr_isr
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL121
	.4byte	0x15ca
	.4byte	0x1059
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x30
	.4byte	.LVL124
	.4byte	0x15a9
	.4byte	0x1070
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x30
	.4byte	.LVL167
	.4byte	0x15b4
	.4byte	0x1087
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x30
	.4byte	.LVL168
	.4byte	0x160b
	.4byte	0x109d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LVL170
	.4byte	0x34e
	.4byte	0x10b7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL181
	.4byte	0x1616
	.4byte	0x10da
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LVL182
	.4byte	0x1621
	.4byte	0x10f0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x30
	.4byte	.LVL184
	.4byte	0x15de
	.4byte	0x1110
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL186
	.4byte	0x15ea
	.4byte	0x1126
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x30
	.4byte	.LVL187
	.4byte	0x3d1
	.4byte	0x113c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LVL188
	.4byte	0x15b4
	.4byte	0x1153
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x32
	.4byte	.LVL192
	.4byte	0x160b
	.uleb128 0x31
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
	.uleb128 0x41
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xce
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11fe
	.uleb128 0x34
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x4c
	.4byte	.LLST73
	.uleb128 0x42
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x42
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x44
	.string	"arg"
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x42
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x4e6
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x32
	.4byte	.LVL198
	.4byte	0x437
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x4ec
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1363
	.uleb128 0x39
	.4byte	0x4fd
	.4byte	.LLST74
	.uleb128 0x47
	.4byte	0x509
	.byte	0
	.uleb128 0x45
	.4byte	0x515
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5441
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x1253
	.uleb128 0x3d
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.uleb128 0x3c
	.4byte	0x3c6
	.4byte	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.4byte	0x1283
	.uleb128 0x3c
	.4byte	0x527
	.4byte	.LLST76
	.uleb128 0x32
	.4byte	.LVL203
	.4byte	0x162d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_intr_free_cb
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.uleb128 0x39
	.4byte	0x4fd
	.4byte	.LLST77
	.uleb128 0x3d
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.uleb128 0x3c
	.4byte	0x509
	.4byte	.LLST78
	.uleb128 0x45
	.4byte	0x515
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5441
	.uleb128 0x36
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0x130b
	.uleb128 0x3c
	.4byte	0x535
	.4byte	.LLST79
	.uleb128 0x3c
	.4byte	0x541
	.4byte	.LLST80
	.uleb128 0x30
	.4byte	.LVL213
	.4byte	0x15bf
	.4byte	0x1301
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2d9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5441
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x43
	.4byte	.LVL216
	.4byte	0x160b
	.byte	0
	.uleb128 0x30
	.4byte	.LVL208
	.4byte	0x15a9
	.4byte	0x131f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL209
	.4byte	0x3d1
	.4byte	0x1333
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL220
	.4byte	0x1616
	.uleb128 0x30
	.4byte	.LVL221
	.4byte	0x15b4
	.4byte	0x1350
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL222
	.4byte	0x160b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x2c5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1398
	.uleb128 0x44
	.string	"arg"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LVL227
	.4byte	0x4ec
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x35a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140e
	.uleb128 0x2f
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x35c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2e
	.string	"cpu"
	.byte	0x1
	.2byte	0x35d
	.4byte	0x4c
	.4byte	.LLST81
	.uleb128 0x37
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x35e
	.4byte	0x4c
	.4byte	.LLST82
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.2byte	0x35d
	.4byte	0x1404
	.uleb128 0x3d
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.uleb128 0x3c
	.4byte	0x3c6
	.4byte	.LLST81
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL231
	.4byte	0x1638
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x36d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1476
	.uleb128 0x2e
	.string	"cpu"
	.byte	0x1
	.2byte	0x36f
	.4byte	0x4c
	.4byte	.LLST84
	.uleb128 0x37
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x370
	.4byte	0x4c
	.4byte	.LLST85
	.uleb128 0x38
	.4byte	0x3b6
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x36f
	.4byte	0x146c
	.uleb128 0x3d
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.uleb128 0x3c
	.4byte	0x3c6
	.4byte	.LLST84
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LVL239
	.4byte	0x1638
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x382
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ab
	.uleb128 0x42
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x382
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LVL241
	.4byte	0x15ea
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x386
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e0
	.uleb128 0x42
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x386
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LVL243
	.4byte	0x15f5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"TAG"
	.byte	0x1
	.byte	0x24
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5699
	.sleb128 0
	.uleb128 0xf
	.4byte	0x21a
	.4byte	0x1502
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF106
	.byte	0x1
	.byte	0x5e
	.4byte	0x1513
	.uleb128 0x5
	.byte	0x3
	.4byte	int_desc
	.uleb128 0x7
	.4byte	0x14f2
	.uleb128 0x4c
	.4byte	.LASF107
	.byte	0x1
	.byte	0xac
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	vector_desc_head
	.uleb128 0xf
	.4byte	0x7e
	.4byte	0x1539
	.uleb128 0x10
	.4byte	0x9d
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF108
	.byte	0x1
	.byte	0xaf
	.4byte	0x1529
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_mask
	.uleb128 0x4c
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb1
	.4byte	0x1529
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled
	.uleb128 0xf
	.4byte	0xd9
	.4byte	0x156b
	.uleb128 0x10
	.4byte	0x9d
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb2
	.4byte	0x155b
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled_flag
	.uleb128 0x4c
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb8
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0xf
	.4byte	0x342
	.4byte	0x159d
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x133
	.4byte	0x158d
	.uleb128 0x4e
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x7
	.byte	0xda
	.uleb128 0x4e
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x7
	.byte	0xd9
	.uleb128 0x4e
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0x29
	.uleb128 0x4e
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xb
	.byte	0x37
	.uleb128 0x4f
	.4byte	.LASF129
	.4byte	.LASF129
	.uleb128 0x50
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x21b
	.uleb128 0x4e
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x54
	.uleb128 0x4e
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x5f
	.uleb128 0x4e
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x65
	.uleb128 0x4e
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xe
	.byte	0x5a
	.uleb128 0x4e
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xd
	.byte	0x49
	.uleb128 0x50
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xf
	.2byte	0x2bf
	.uleb128 0x4e
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x10
	.byte	0x56
	.uleb128 0x4e
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xe
	.byte	0x47
	.uleb128 0x51
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.4byte	.LFE19
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
	.4byte	.LFE27
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
	.4byte	.LFE27
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
	.4byte	.LFE25
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
	.4byte	.LFE25
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
	.4byte	.LFE25
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
	.4byte	.LFE25
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
	.4byte	.LFE25
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
	.4byte	.LFE20
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
	.4byte	.LFE20
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
	.4byte	.LFE22
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
	.4byte	.LFE22
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
	.4byte	.LFE23
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
	.4byte	.LFE30
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
	.4byte	.LFE33
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
	.4byte	.LFE34
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
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL90
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL91
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL108
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL183
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL196
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL183
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL196
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL183
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL196
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL114
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL183
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL196
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL112
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL112
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL112
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL112
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL112
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL112
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL112
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL125
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL171
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL125
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL125
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LVL132-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL146
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL125
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL169
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL125
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL125
	.4byte	.LVL146
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL159
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL127
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL127
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL128
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL129
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL200
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL203
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL206
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL219
	.4byte	.LVL220-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL215
	.4byte	.LVL216-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL230
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL235
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
.LLST84:
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL238
	.4byte	.LVL239-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL239
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	0
	.4byte	0
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"vector_desc_head"
.LASF79:
	.string	"prev"
.LASF19:
	.string	"count"
.LASF65:
	.string	"intrstatusmask"
.LASF119:
	.string	"malloc"
.LASF92:
	.string	"bestSharedCt"
.LASF49:
	.string	"next"
.LASF47:
	.string	"statusreg"
.LASF52:
	.string	"intno"
.LASF91:
	.string	"bestLevel"
.LASF68:
	.string	"sh_vec"
.LASF99:
	.string	"esp_intr_free_cb"
.LASF41:
	.string	"type"
.LASF8:
	.string	"long long unsigned int"
.LASF103:
	.string	"esp_intr_noniram_enable"
.LASF81:
	.string	"esp_intr_mark_shared"
.LASF98:
	.string	"shared_intr_isr"
.LASF74:
	.string	"in_iram_flag"
.LASF42:
	.string	"cpuflags"
.LASF120:
	.string	"free"
.LASF122:
	.string	"xthal_set_intclear"
.LASF118:
	.string	"xt_ints_off"
.LASF110:
	.string	"non_iram_int_disabled_flag"
.LASF30:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF93:
	.string	"empty_vect_desc"
.LASF58:
	.string	"int_has_handler"
.LASF111:
	.string	"spinlock"
.LASF116:
	.string	"intr_matrix_set"
.LASF112:
	.string	"vTaskEnterCritical"
.LASF34:
	.string	"INTDESC_SPECIAL"
.LASF113:
	.string	"vTaskExitCritical"
.LASF12:
	.string	"long int"
.LASF102:
	.string	"esp_intr_noniram_disable"
.LASF94:
	.string	"svdesc"
.LASF20:
	.string	"portMUX_TYPE"
.LASF115:
	.string	"heap_caps_malloc"
.LASF56:
	.string	"newvd"
.LASF5:
	.string	"__uint32_t"
.LASF85:
	.string	"mask"
.LASF126:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/intr_alloc.c"
.LASF75:
	.string	"desc_in_iram_flag"
.LASF82:
	.string	"esp_intr_reserve"
.LASF6:
	.string	"unsigned int"
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
.LASF125:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"intr_handle_t"
.LASF40:
	.string	"level"
.LASF54:
	.string	"xt_handler_table_entry"
.LASF80:
	.string	"is_int_ram"
.LASF63:
	.string	"esp_intr_alloc_intrstatus"
.LASF32:
	.string	"INTDESC_NORMAL"
.LASF21:
	.string	"intr_handler_t"
.LASF36:
	.string	"INTTP_LEVEL"
.LASF106:
	.string	"int_desc"
.LASF76:
	.string	"xPortGetCoreID"
.LASF11:
	.string	"ptrdiff_t"
.LASF55:
	.string	"handler"
.LASF29:
	.string	"ESP_LOG_INFO"
.LASF121:
	.string	"xt_set_interrupt_handler"
.LASF46:
	.string	"source"
.LASF13:
	.string	"sizetype"
.LASF128:
	.string	"_xt_interrupt_table"
.LASF73:
	.string	"is_vect_desc_usable"
.LASF59:
	.string	"intr"
.LASF69:
	.string	"esp_intr_free"
.LASF104:
	.string	"ets_isr_unmask"
.LASF123:
	.string	"esp_ipc_call_blocking"
.LASF37:
	.string	"INTTP_EDGE"
.LASF72:
	.string	"find_desc_for_int"
.LASF117:
	.string	"xt_ints_on"
.LASF84:
	.string	"is_in_iram"
.LASF53:
	.string	"shared_vec_info"
.LASF88:
	.string	"esp_intr_enable"
.LASF77:
	.string	"insert_vector_desc"
.LASF108:
	.string	"non_iram_int_mask"
.LASF109:
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
.LASF129:
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
.LASF105:
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
.LASF127:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF71:
	.string	"prevsvd"
.LASF90:
	.string	"best"
.LASF124:
	.string	"abort"
.LASF4:
	.string	"__int32_t"
.LASF100:
	.string	"oldint"
.LASF78:
	.string	"to_insert"
.LASF101:
	.string	"intmask"
.LASF3:
	.string	"short unsigned int"
.LASF97:
	.string	"esp_intr_alloc"
.LASF96:
	.string	"found"
.LASF48:
	.string	"statusmask"
.LASF28:
	.string	"ESP_LOG_WARN"
.LASF89:
	.string	"get_available_int"
.LASF16:
	.string	"esp_err_t"
.LASF87:
	.string	"esp_intr_get_cpu"
.LASF51:
	.string	"flags"
.LASF62:
	.string	"esp_intr_disable"
.LASF86:
	.string	"esp_intr_get_intno"
.LASF83:
	.string	"esp_intr_set_in_iram"
.LASF114:
	.string	"__assert_func"
.LASF70:
	.string	"free_shared_vector"
.LASF60:
	.string	"handle"
.LASF67:
	.string	"force"
.LASF95:
	.string	"find_desc_for_source"
.LASF24:
	.string	"shared_vector_desc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
