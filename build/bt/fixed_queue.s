	.file	"fixed_queue.c"
	.text
.Ltext0:
	.section	.text.fixed_queue_is_empty,"ax",@progbits
	.align	4
	.global	fixed_queue_is_empty
	.type	fixed_queue_is_empty, @function
fixed_queue_is_empty:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/fixed_queue.c"
	.loc 1 95 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 99 0
	movi.n	a10, 1
	.loc 1 98 0
	beqz.n	a2, .L2
	.loc 1 102 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL2:
	.loc 1 103 0
	l32i.n	a10, a2, 0
	call8	list_is_empty
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 104 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL5:
	.loc 1 106 0
	mov.n	a10, a2
.LVL6:
.L2:
	.loc 1 107 0
	mov.n	a2, a10
	retw.n
.LFE29:
	.size	fixed_queue_is_empty, .-fixed_queue_is_empty
	.section	.text.fixed_queue_length,"ax",@progbits
	.align	4
	.global	fixed_queue_length
	.type	fixed_queue_length, @function
fixed_queue_length:
.LFB30:
	.loc 1 110 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 114 0
	movi.n	a10, 0
	.loc 1 113 0
	beq	a2, a10, .L6
	.loc 1 117 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL8:
	.loc 1 118 0
	l32i.n	a10, a2, 0
	call8	list_length
.LVL9:
	mov.n	a2, a10
.LVL10:
	.loc 1 119 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL11:
	.loc 1 121 0
	mov.n	a10, a2
.LVL12:
.L6:
	.loc 1 122 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	fixed_queue_length, .-fixed_queue_length
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"queue != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/fixed_queue.c"
	.section	.text.fixed_queue_capacity,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5379
	.literal .LC4, .LC3
	.align	4
	.global	fixed_queue_capacity
	.type	fixed_queue_capacity, @function
fixed_queue_capacity:
.LFB31:
	.loc 1 124 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 125 0
	bnez.n	a2, .L10
	.loc 1 125 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi	a11, 0x7d
	call8	__assert_func
.LVL14:
.L10:
	.loc 1 128 0 is_stmt 1
	l32i.n	a2, a2, 16
.LVL15:
	retw.n
.LFE31:
	.size	fixed_queue_capacity, .-fixed_queue_capacity
	.section	.rodata.str1.1
.LC8:
	.string	"data != NULL"
	.section	.text.fixed_queue_enqueue,"ax",@progbits
	.literal_position
	.literal .LC5, .LC0
	.literal .LC6, __func__$5385
	.literal .LC7, .LC3
	.literal .LC9, .LC8
	.align	4
	.global	fixed_queue_enqueue
	.type	fixed_queue_enqueue, @function
fixed_queue_enqueue:
.LFB32:
	.loc 1 131 0
.LVL16:
	entry	sp, 32
.LCFI3:
.LVL17:
	.loc 1 134 0
	bnez.n	a2, .L12
	.loc 1 134 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x86
	j	.L18
.L12:
	.loc 1 135 0 is_stmt 1
	bnez.n	a3, .L13
	.loc 1 135 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC6
	movi	a11, 0x87
.L18:
	l32r	a10, .LC7
	call8	__assert_func
.LVL18:
.L13:
	.loc 1 137 0 is_stmt 1
	movi.n	a11, -1
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL19:
	.loc 1 139 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL20:
	.loc 1 140 0
	l32i.n	a10, a2, 0
	mov.n	a11, a3
	call8	list_append
.LVL21:
	mov.n	a3, a10
.LVL22:
	.loc 1 141 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL23:
	.loc 1 143 0
	beqz.n	a3, .L11
	.loc 1 144 0
	addi.n	a10, a2, 8
	call8	osi_sem_give
.LVL24:
.L11:
	retw.n
.LFE32:
	.size	fixed_queue_enqueue, .-fixed_queue_enqueue
	.section	.text.fixed_queue_dequeue,"ax",@progbits
	.literal_position
	.literal .LC10, .LC0
	.literal .LC11, __func__$5390
	.literal .LC12, .LC3
	.align	4
	.global	fixed_queue_dequeue
	.type	fixed_queue_dequeue, @function
fixed_queue_dequeue:
.LFB33:
	.loc 1 148 0
.LVL25:
	entry	sp, 32
.LCFI4:
.LVL26:
	.loc 1 151 0
	bnez.n	a2, .L20
	.loc 1 151 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	l32r	a10, .LC12
	movi	a11, 0x97
	call8	__assert_func
.LVL27:
.L20:
	.loc 1 153 0 is_stmt 1
	movi.n	a11, -1
	addi.n	a10, a2, 8
	call8	osi_sem_take
.LVL28:
	.loc 1 155 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL29:
	.loc 1 156 0
	l32i.n	a10, a2, 0
	call8	list_front
.LVL30:
	.loc 1 157 0
	mov.n	a11, a10
	.loc 1 156 0
	mov.n	a3, a10
.LVL31:
	.loc 1 157 0
	l32i.n	a10, a2, 0
	call8	list_remove
.LVL32:
	.loc 1 158 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL33:
	.loc 1 160 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL34:
	.loc 1 163 0
	mov.n	a2, a3
.LVL35:
	retw.n
.LFE33:
	.size	fixed_queue_dequeue, .-fixed_queue_dequeue
	.section	.text.fixed_queue_try_enqueue,"ax",@progbits
	.literal_position
	.literal .LC13, .LC0
	.literal .LC14, __func__$5395
	.literal .LC15, .LC3
	.literal .LC16, .LC8
	.align	4
	.global	fixed_queue_try_enqueue
	.type	fixed_queue_try_enqueue, @function
fixed_queue_try_enqueue:
.LFB34:
	.loc 1 166 0
.LVL36:
	entry	sp, 32
.LCFI5:
	.loc 1 167 0
	bnez.n	a2, .L22
	.loc 1 167 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0xa7
	j	.L26
.L22:
	.loc 1 168 0 is_stmt 1
	bnez.n	a3, .L23
	.loc 1 168 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC14
	movi	a11, 0xa8
.L26:
	l32r	a10, .LC15
	call8	__assert_func
.LVL37:
.L23:
	.loc 1 170 0 is_stmt 1
	movi.n	a11, 0
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL38:
	.loc 1 171 0
	movi.n	a8, 0
	.loc 1 170 0
	bne	a10, a8, .L24
	.loc 1 174 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL39:
	.loc 1 176 0
	l32i.n	a10, a2, 0
	mov.n	a11, a3
	call8	list_append
.LVL40:
	.loc 1 177 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL41:
	.loc 1 179 0
	addi.n	a10, a2, 8
	call8	osi_sem_give
.LVL42:
	.loc 1 181 0
	movi.n	a8, 1
.L24:
	.loc 1 182 0
	mov.n	a2, a8
.LVL43:
	retw.n
.LFE34:
	.size	fixed_queue_try_enqueue, .-fixed_queue_try_enqueue
	.section	.text.fixed_queue_try_dequeue,"ax",@progbits
	.align	4
	.global	fixed_queue_try_dequeue
	.type	fixed_queue_try_dequeue, @function
fixed_queue_try_dequeue:
.LFB35:
	.loc 1 185 0
.LVL44:
	entry	sp, 32
.LCFI6:
.LVL45:
	.loc 1 188 0
	bnez.n	a2, .L28
.L30:
	.loc 1 189 0
	movi.n	a2, 0
.LVL46:
	retw.n
.LVL47:
.L28:
	.loc 1 192 0
	movi.n	a11, 0
	addi.n	a10, a2, 8
	call8	osi_sem_take
.LVL48:
	bnez.n	a10, .L30
	.loc 1 196 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL49:
	.loc 1 197 0
	l32i.n	a10, a2, 0
	call8	list_front
.LVL50:
	.loc 1 198 0
	mov.n	a11, a10
	.loc 1 197 0
	mov.n	a3, a10
.LVL51:
	.loc 1 198 0
	l32i.n	a10, a2, 0
	call8	list_remove
.LVL52:
	.loc 1 199 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL53:
	.loc 1 201 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL54:
	.loc 1 203 0
	mov.n	a2, a3
.LVL55:
	.loc 1 204 0
	retw.n
.LFE35:
	.size	fixed_queue_try_dequeue, .-fixed_queue_try_dequeue
	.section	.text.fixed_queue_try_peek_first,"ax",@progbits
	.align	4
	.global	fixed_queue_try_peek_first
	.type	fixed_queue_try_peek_first, @function
fixed_queue_try_peek_first:
.LFB36:
	.loc 1 207 0
.LVL56:
	entry	sp, 32
.LCFI7:
.LVL57:
	.loc 1 211 0
	mov.n	a3, a2
	.loc 1 210 0
	beqz.n	a2, .L32
	.loc 1 214 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL58:
	.loc 1 215 0
	l32i.n	a10, a2, 0
	.loc 1 215 0
	movi.n	a3, 0
	.loc 1 215 0
	call8	list_is_empty
.LVL59:
	.loc 1 215 0
	bne	a10, a3, .L33
	.loc 1 215 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 0
	call8	list_front
.LVL60:
	mov.n	a3, a10
.L33:
.LVL61:
	.loc 1 216 0 is_stmt 1 discriminator 4
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL62:
.L32:
	.loc 1 219 0
	mov.n	a2, a3
.LVL63:
	retw.n
.LFE36:
	.size	fixed_queue_try_peek_first, .-fixed_queue_try_peek_first
	.section	.text.fixed_queue_try_peek_last,"ax",@progbits
	.align	4
	.global	fixed_queue_try_peek_last
	.type	fixed_queue_try_peek_last, @function
fixed_queue_try_peek_last:
.LFB37:
	.loc 1 222 0
.LVL64:
	entry	sp, 32
.LCFI8:
.LVL65:
	.loc 1 226 0
	mov.n	a3, a2
	.loc 1 225 0
	beqz.n	a2, .L37
	.loc 1 229 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL66:
	.loc 1 230 0
	l32i.n	a10, a2, 0
	.loc 1 230 0
	movi.n	a3, 0
	.loc 1 230 0
	call8	list_is_empty
.LVL67:
	.loc 1 230 0
	bne	a10, a3, .L38
	.loc 1 230 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 0
	call8	list_back
.LVL68:
	mov.n	a3, a10
.L38:
.LVL69:
	.loc 1 231 0 is_stmt 1 discriminator 4
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL70:
.L37:
	.loc 1 234 0
	mov.n	a2, a3
.LVL71:
	retw.n
.LFE37:
	.size	fixed_queue_try_peek_last, .-fixed_queue_try_peek_last
	.section	.rodata.str1.1
.LC17:
	.string	"removed"
	.section	.text.fixed_queue_try_remove_from_queue,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, __func__$5413
	.literal .LC20, .LC3
	.align	4
	.global	fixed_queue_try_remove_from_queue
	.type	fixed_queue_try_remove_from_queue, @function
fixed_queue_try_remove_from_queue:
.LFB38:
	.loc 1 237 0
.LVL72:
	entry	sp, 32
.LCFI9:
.LVL73:
	.loc 1 240 0
	bnez.n	a2, .L42
.LVL74:
.L46:
	.loc 1 241 0
	movi.n	a2, 0
.LVL75:
	retw.n
.LVL76:
.L42:
	.loc 1 244 0
	addi.n	a5, a2, 12
	movi.n	a11, -1
	mov.n	a10, a5
	call8	osi_mutex_lock
.LVL77:
	.loc 1 245 0
	l32i.n	a10, a2, 0
	mov.n	a11, a3
	call8	list_contains
.LVL78:
	beqz.n	a10, .L44
	.loc 1 246 0 discriminator 1
	movi.n	a11, 0
	addi.n	a10, a2, 8
	call8	osi_sem_take
.LVL79:
	.loc 1 245 0 discriminator 1
	bnez.n	a10, .L44
	.loc 1 247 0
	l32i.n	a10, a2, 0
	mov.n	a11, a3
	call8	list_remove
.LVL80:
	mov.n	a4, a10
.LVL81:
	.loc 1 248 0
	bnez.n	a10, .L45
	.loc 1 248 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC20
	movi	a11, 0xf8
	call8	__assert_func
.LVL82:
.L44:
	.loc 1 238 0 is_stmt 1
	movi.n	a4, 0
.LVL83:
.L45:
	.loc 1 250 0
	mov.n	a10, a5
	call8	osi_mutex_unlock
.LVL84:
	.loc 1 252 0
	beqz.n	a4, .L46
.LVL85:
	.loc 1 253 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL86:
	.loc 1 254 0
	mov.n	a2, a3
.LVL87:
	.loc 1 258 0
	retw.n
.LFE38:
	.size	fixed_queue_try_remove_from_queue, .-fixed_queue_try_remove_from_queue
	.section	.text.fixed_queue_get_list,"ax",@progbits
	.literal_position
	.literal .LC21, .LC0
	.literal .LC22, __func__$5417
	.literal .LC23, .LC3
	.align	4
	.global	fixed_queue_get_list
	.type	fixed_queue_get_list, @function
fixed_queue_get_list:
.LFB39:
	.loc 1 261 0
.LVL88:
	entry	sp, 32
.LCFI10:
	.loc 1 262 0
	bnez.n	a2, .L54
	.loc 1 262 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	l32r	a10, .LC23
	movi	a11, 0x106
	call8	__assert_func
.LVL89:
.L54:
	.loc 1 267 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL90:
	retw.n
.LFE39:
	.size	fixed_queue_get_list, .-fixed_queue_get_list
	.section	.rodata.str1.1
.LC27:
	.string	"ready_cb != NULL"
	.section	.text.fixed_queue_register_dequeue,"ax",@progbits
	.literal_position
	.literal .LC24, .LC0
	.literal .LC25, __func__$5422
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.align	4
	.global	fixed_queue_register_dequeue
	.type	fixed_queue_register_dequeue, @function
fixed_queue_register_dequeue:
.LFB40:
	.loc 1 270 0
.LVL91:
	entry	sp, 32
.LCFI11:
	.loc 1 271 0
	bnez.n	a2, .L56
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0x10f
	j	.L58
.L56:
	.loc 1 272 0 is_stmt 1
	bnez.n	a3, .L57
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0x110
.L58:
	l32r	a10, .LC26
	call8	__assert_func
.LVL92:
.L57:
	.loc 1 274 0 is_stmt 1
	s32i.n	a3, a2, 20
	retw.n
.LFE40:
	.size	fixed_queue_register_dequeue, .-fixed_queue_register_dequeue
	.section	.text.fixed_queue_unregister_dequeue,"ax",@progbits
	.literal_position
	.literal .LC29, .LC0
	.literal .LC30, __func__$5426
	.literal .LC31, .LC3
	.align	4
	.global	fixed_queue_unregister_dequeue
	.type	fixed_queue_unregister_dequeue, @function
fixed_queue_unregister_dequeue:
.LFB41:
	.loc 1 278 0
.LVL93:
	entry	sp, 32
.LCFI12:
	.loc 1 279 0
	bnez.n	a2, .L60
.LVL94:
.LBB4:
.LBB5:
	l32r	a13, .LC29
	l32r	a12, .LC30
	l32r	a10, .LC31
	movi	a11, 0x117
	call8	__assert_func
.LVL95:
.L60:
.LBE5:
.LBE4:
	.loc 1 281 0
	movi.n	a8, 0
	s32i.n	a8, a2, 20
	retw.n
.LFE41:
	.size	fixed_queue_unregister_dequeue, .-fixed_queue_unregister_dequeue
	.section	.text.fixed_queue_free,"ax",@progbits
	.align	4
	.global	fixed_queue_free
	.type	fixed_queue_free, @function
fixed_queue_free:
.LFB28:
	.loc 1 72 0
.LVL96:
	entry	sp, 32
.LCFI13:
	.loc 1 75 0
	beqz.n	a2, .L61
	.loc 1 79 0
	mov.n	a10, a2
	call8	fixed_queue_unregister_dequeue
.LVL97:
	.loc 1 81 0
	bnez.n	a3, .L63
.L66:
	.loc 1 87 0
	l32i.n	a10, a2, 0
	call8	list_free
.LVL98:
	.loc 1 88 0
	addi.n	a10, a2, 4
	call8	osi_sem_free
.LVL99:
	.loc 1 89 0
	addi.n	a10, a2, 8
	call8	osi_sem_free
.LVL100:
	.loc 1 90 0
	addi.n	a10, a2, 12
	call8	osi_mutex_free
.LVL101:
	.loc 1 91 0
	mov.n	a10, a2
	call8	free
.LVL102:
	retw.n
.L63:
	.loc 1 82 0
	l32i.n	a10, a2, 0
	call8	list_begin
.LVL103:
	j	.L70
.LVL104:
.L65:
	.loc 1 83 0 discriminator 3
	mov.n	a10, a4
	call8	list_node
.LVL105:
	callx8	a3
.LVL106:
	.loc 1 82 0 discriminator 3
	mov.n	a10, a4
	call8	list_next
.LVL107:
.L70:
	mov.n	a4, a10
.LVL108:
	l32i.n	a10, a2, 0
	call8	list_end
.LVL109:
	bne	a4, a10, .L65
	j	.L66
.LVL110:
.L61:
	retw.n
.LFE28:
	.size	fixed_queue_free, .-fixed_queue_free
	.section	.text.fixed_queue_new,"ax",@progbits
	.align	4
	.global	fixed_queue_new
	.type	fixed_queue_new, @function
fixed_queue_new:
.LFB27:
	.loc 1 39 0
.LVL111:
	entry	sp, 32
.LCFI14:
	.loc 1 40 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL112:
	mov.n	a3, a10
.LVL113:
	.loc 1 41 0
	bnez.n	a10, .L72
.LVL114:
.L74:
.LDL1:
	.loc 1 67 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	fixed_queue_free
.LVL115:
	.loc 1 68 0
	movi.n	a2, 0
	retw.n
.LVL116:
.L72:
	.loc 1 45 0
	addi.n	a10, a10, 12
	call8	osi_mutex_new
.LVL117:
	.loc 1 48 0
	movi.n	a10, 0
	.loc 1 46 0
	s32i.n	a2, a3, 16
	.loc 1 48 0
	call8	list_new
.LVL118:
	s32i.n	a10, a3, 0
	.loc 1 49 0
	beqz.n	a10, .L74
	.loc 1 54 0
	mov.n	a12, a2
	mov.n	a11, a2
	addi.n	a10, a3, 4
	call8	osi_sem_new
.LVL119:
	.loc 1 55 0
	l32i.n	a8, a3, 4
	beqz.n	a8, .L74
	.loc 1 59 0
	mov.n	a11, a2
	movi.n	a12, 0
	addi.n	a10, a3, 8
	call8	osi_sem_new
.LVL120:
	.loc 1 60 0
	l32i.n	a2, a3, 8
.LVL121:
	beqz.n	a2, .L74
	mov.n	a2, a3
	.loc 1 69 0
	retw.n
.LFE27:
	.size	fixed_queue_new, .-fixed_queue_new
	.section	.text.fixed_queue_process,"ax",@progbits
	.literal_position
	.literal .LC32, .LC0
	.literal .LC33, __func__$5430
	.literal .LC34, .LC3
	.align	4
	.global	fixed_queue_process
	.type	fixed_queue_process, @function
fixed_queue_process:
.LFB42:
	.loc 1 285 0
.LVL122:
	entry	sp, 32
.LCFI15:
	.loc 1 285 0
	mov.n	a10, a2
	.loc 1 286 0
	bnez.n	a2, .L85
	.loc 1 286 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	l32r	a10, .LC34
	movi	a11, 0x11e
	call8	__assert_func
.LVL123:
.L85:
	.loc 1 288 0 is_stmt 1
	l32i.n	a8, a2, 20
	beqz.n	a8, .L84
	.loc 1 289 0
	callx8	a8
.LVL124:
.L84:
	retw.n
.LFE42:
	.size	fixed_queue_process, .-fixed_queue_process
	.section	.rodata.__func__$5430,"a",@progbits
	.type	__func__$5430, @object
	.size	__func__$5430, 20
__func__$5430:
	.string	"fixed_queue_process"
	.section	.rodata.__func__$5426,"a",@progbits
	.type	__func__$5426, @object
	.size	__func__$5426, 31
__func__$5426:
	.string	"fixed_queue_unregister_dequeue"
	.section	.rodata.__func__$5422,"a",@progbits
	.type	__func__$5422, @object
	.size	__func__$5422, 29
__func__$5422:
	.string	"fixed_queue_register_dequeue"
	.section	.rodata.__func__$5417,"a",@progbits
	.type	__func__$5417, @object
	.size	__func__$5417, 21
__func__$5417:
	.string	"fixed_queue_get_list"
	.section	.rodata.__func__$5413,"a",@progbits
	.type	__func__$5413, @object
	.size	__func__$5413, 34
__func__$5413:
	.string	"fixed_queue_try_remove_from_queue"
	.section	.rodata.__func__$5395,"a",@progbits
	.type	__func__$5395, @object
	.size	__func__$5395, 24
__func__$5395:
	.string	"fixed_queue_try_enqueue"
	.section	.rodata.__func__$5390,"a",@progbits
	.type	__func__$5390, @object
	.size	__func__$5390, 20
__func__$5390:
	.string	"fixed_queue_dequeue"
	.section	.rodata.__func__$5385,"a",@progbits
	.type	__func__$5385, @object
	.size	__func__$5385, 20
__func__$5385:
	.string	"fixed_queue_enqueue"
	.section	.rodata.__func__$5379,"a",@progbits
	.type	__func__$5379, @object
	.size	__func__$5379, 21
__func__$5379:
	.string	"fixed_queue_capacity"
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI4-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI6-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI7-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI8-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI9-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI10-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI11-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI12-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI13-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI14-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI15-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/fixed_queue.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/mutex.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x7
	.4byte	0x91
	.uleb128 0x6
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0xac
	.uleb128 0x8
	.4byte	0xb7
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1f
	.4byte	0xc9
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x18
	.byte	0x1
	.byte	0x1a
	.4byte	0x11e
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1c
	.4byte	0x177
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.4byte	0x16c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1e
	.4byte	0x16c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.4byte	0x161
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x20
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x22
	.4byte	0x129
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x23
	.4byte	0x134
	.uleb128 0x7
	.byte	0x4
	.4byte	0x13a
	.uleb128 0x8
	.4byte	0x145
	.uleb128 0x9
	.4byte	0x145
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x58
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4f
	.4byte	0x14b
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x21
	.4byte	0x156
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1d
	.4byte	0x156
	.uleb128 0x7
	.byte	0x4
	.4byte	0x96
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x115
	.4byte	0x1a4
	.uleb128 0xe
	.4byte	.LASF34
	.4byte	0x1ba
	.4byte	.LASF80
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc9
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x1ba
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	0x1aa
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5e
	.4byte	0xb7
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5e
	.4byte	0x1a4
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x60
	.4byte	0xb7
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0xbe5
	.4byte	0x210
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0xbf0
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0xbfb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6d
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x295
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6d
	.4byte	0x1a4
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6f
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0xbe5
	.4byte	0x27b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0xc06
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0xbfb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7b
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f8
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7b
	.4byte	0x1a4
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x308
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5379
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0xc11
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5379
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x308
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	0x2f8
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.byte	0x82
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e0
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0x82
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x82
	.4byte	0x76
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x84
	.4byte	0xb7
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x3f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5385
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xc11
	.4byte	0x373
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0xc1c
	.4byte	0x38d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0xbe5
	.4byte	0x3a7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0xc27
	.4byte	0x3bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0xbfb
	.4byte	0x3cf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL24
	.4byte	0xc32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x3f0
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	0x3e0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x93
	.4byte	0x76
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x93
	.4byte	0x1a4
	.4byte	.LLST7
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0x95
	.4byte	0x76
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x4e0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5390
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0xc11
	.4byte	0x46a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x97
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5390
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0xc1c
	.4byte	0x484
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0xbe5
	.4byte	0x49e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0xc3d
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0xc48
	.4byte	0x4bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0xbfb
	.4byte	0x4cf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0xc32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x3e0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0xa5
	.4byte	0xb7
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ac
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa5
	.4byte	0x1a4
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa5
	.4byte	0x76
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x5bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5395
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0xc11
	.4byte	0x540
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xc1c
	.4byte	0x559
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0xbe5
	.4byte	0x573
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0xc27
	.4byte	0x587
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL41
	.4byte	0xbfb
	.4byte	0x59b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0xc32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x5bc
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	0x5ac
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb8
	.4byte	0x76
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb8
	.4byte	0x1a4
	.4byte	.LLST10
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.4byte	0x76
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LVL48
	.4byte	0xc1c
	.4byte	0x611
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0xbe5
	.4byte	0x62b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0xc3d
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0xc48
	.4byte	0x648
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0xbfb
	.4byte	0x65c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL54
	.4byte	0xc32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0xce
	.4byte	0x76
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e1
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xce
	.4byte	0x1a4
	.4byte	.LLST12
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xd0
	.4byte	0x76
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0xbe5
	.4byte	0x6be
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0xbf0
	.uleb128 0x17
	.4byte	.LVL60
	.4byte	0xc3d
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0xbfb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xdd
	.4byte	0x76
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xdd
	.4byte	0x1a4
	.4byte	.LLST14
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xdf
	.4byte	0x76
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LVL66
	.4byte	0xbe5
	.4byte	0x732
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LVL67
	.4byte	0xbf0
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0xc53
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0xbfb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0xec
	.4byte	0x76
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x857
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xec
	.4byte	0x1a4
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xec
	.4byte	0x76
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0xee
	.4byte	0xb7
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x867
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5413
	.uleb128 0x15
	.4byte	.LVL77
	.4byte	0xbe5
	.4byte	0x7c2
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
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0xc5e
	.4byte	0x7d6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL79
	.4byte	0xc1c
	.4byte	0x7ef
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL80
	.4byte	0xc48
	.4byte	0x803
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL82
	.4byte	0xc11
	.4byte	0x832
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5413
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x15
	.4byte	.LVL84
	.4byte	0xbfb
	.4byte	0x846
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL86
	.4byte	0xc32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x867
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x21
	.byte	0
	.uleb128 0x11
	.4byte	0x857
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x104
	.4byte	0x177
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d2
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x104
	.4byte	0x1a4
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x8d2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5417
	.uleb128 0x18
	.4byte	.LVL89
	.4byte	0xc11
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x106
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5417
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x2f8
	.uleb128 0x1f
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x10d
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92c
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x10d
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x10d
	.4byte	0x129
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0x93c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5422
	.uleb128 0x18
	.4byte	.LVL92
	.4byte	0xc11
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7f
	.4byte	0x93c
	.uleb128 0x10
	.4byte	0x6f
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	0x92c
	.uleb128 0x21
	.4byte	0x17d
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bb
	.uleb128 0x22
	.4byte	0x18a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	0x196
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5426
	.uleb128 0x24
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x25
	.4byte	0x18a
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x23
	.4byte	0x196
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5426
	.uleb128 0x18
	.4byte	.LVL95
	.4byte	0xc11
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x117
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5426
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa1
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0x47
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0x11e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0x49
	.4byte	0xaa1
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LVL97
	.4byte	0x17d
	.4byte	0xa0d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL98
	.4byte	0xc69
	.uleb128 0x15
	.4byte	.LVL99
	.4byte	0xc74
	.4byte	0xa2a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0xc74
	.4byte	0xa3e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x15
	.4byte	.LVL101
	.4byte	0xc7f
	.4byte	0xa52
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x15
	.4byte	.LVL102
	.4byte	0xc8a
	.4byte	0xa66
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL103
	.4byte	0xc95
	.uleb128 0x15
	.4byte	.LVL105
	.4byte	0xca0
	.4byte	0xa83
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL107
	.4byte	0xcab
	.4byte	0xa97
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL109
	.4byte	0xcb6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xaa7
	.uleb128 0x11
	.4byte	0x86
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x26
	.4byte	0x1a4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb80
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x2c
	.4byte	.LLST21
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x28
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF81
	.byte	0x1
	.byte	0x42
	.4byte	.LDL1
	.uleb128 0x15
	.4byte	.LVL112
	.4byte	0xcc1
	.4byte	0xb04
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL115
	.4byte	0x9bb
	.4byte	0xb1d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL117
	.4byte	0xccc
	.4byte	0xb31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x15
	.4byte	.LVL118
	.4byte	0xcd7
	.4byte	0xb44
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL119
	.4byte	0xce2
	.4byte	0xb64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL120
	.4byte	0xce2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe0
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11c
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	0xbe0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5430
	.uleb128 0x18
	.4byte	.LVL123
	.4byte	0xc11
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5430
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x3e0
	.uleb128 0x2a
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0x25
	.uleb128 0x2a
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x3
	.byte	0x1f
	.uleb128 0x2a
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x27
	.uleb128 0x2a
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x3
	.byte	0x26
	.uleb128 0x2a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.byte	0x29
	.uleb128 0x2a
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x26
	.uleb128 0x2a
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x3
	.byte	0x42
	.uleb128 0x2a
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x28
	.uleb128 0x2a
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x3
	.byte	0x2a
	.uleb128 0x2a
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x3
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x3
	.byte	0x2e
	.uleb128 0x2a
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0x1b
	.uleb128 0x2a
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x8
	.byte	0x24
	.uleb128 0x2a
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x7
	.byte	0x29
	.uleb128 0x2a
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xa
	.byte	0x5a
	.uleb128 0x2a
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x3
	.byte	0x5c
	.uleb128 0x2a
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x3
	.byte	0x6c
	.uleb128 0x2a
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x3
	.byte	0x68
	.uleb128 0x2a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x3
	.byte	0x62
	.uleb128 0x2a
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xa
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x7
	.byte	0x23
	.uleb128 0x2a
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x3
	.byte	0x15
	.uleb128 0x2a
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0x22
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE29
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE33
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE35
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE38
	.2byte	0x3
	.byte	0x75
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
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
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"calloc"
.LASF46:
	.string	"fixed_queue_register_dequeue"
.LASF66:
	.string	"osi_sem_free"
.LASF56:
	.string	"list_length"
.LASF26:
	.string	"osi_mutex_t"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF13:
	.string	"list_t"
.LASF65:
	.string	"list_free"
.LASF8:
	.string	"sizetype"
.LASF38:
	.string	"fixed_queue_try_enqueue"
.LASF59:
	.string	"list_append"
.LASF12:
	.string	"list_node_t"
.LASF53:
	.string	"osi_mutex_lock"
.LASF55:
	.string	"osi_mutex_unlock"
.LASF16:
	.string	"list"
.LASF58:
	.string	"osi_sem_take"
.LASF70:
	.string	"list_node"
.LASF68:
	.string	"free"
.LASF69:
	.string	"list_begin"
.LASF76:
	.string	"osi_sem_new"
.LASF48:
	.string	"fixed_queue_free"
.LASF32:
	.string	"length"
.LASF71:
	.string	"list_next"
.LASF23:
	.string	"fixed_queue_cb"
.LASF33:
	.string	"fixed_queue_capacity"
.LASF5:
	.string	"long long int"
.LASF72:
	.string	"list_end"
.LASF7:
	.string	"long int"
.LASF42:
	.string	"fixed_queue_try_remove_from_queue"
.LASF29:
	.string	"fixed_queue_length"
.LASF79:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF24:
	.string	"QueueHandle_t"
.LASF50:
	.string	"node"
.LASF21:
	.string	"dequeue_ready"
.LASF45:
	.string	"fixed_queue_enqueue"
.LASF3:
	.string	"unsigned char"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF34:
	.string	"__func__"
.LASF41:
	.string	"fixed_queue_try_peek_last"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"list_back"
.LASF6:
	.string	"long long unsigned int"
.LASF15:
	.string	"fixed_queue_t"
.LASF52:
	.string	"fixed_queue_process"
.LASF0:
	.string	"unsigned int"
.LASF62:
	.string	"list_remove"
.LASF1:
	.string	"short unsigned int"
.LASF36:
	.string	"status"
.LASF61:
	.string	"list_front"
.LASF39:
	.string	"fixed_queue_try_dequeue"
.LASF10:
	.string	"char"
.LASF78:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/fixed_queue.c"
.LASF40:
	.string	"fixed_queue_try_peek_first"
.LASF31:
	.string	"is_empty"
.LASF27:
	.string	"osi_sem_t"
.LASF19:
	.string	"lock"
.LASF30:
	.string	"queue"
.LASF20:
	.string	"capacity"
.LASF14:
	.string	"_Bool"
.LASF35:
	.string	"data"
.LASF47:
	.string	"ready_cb"
.LASF9:
	.string	"long unsigned int"
.LASF28:
	.string	"fixed_queue_is_empty"
.LASF67:
	.string	"osi_mutex_free"
.LASF18:
	.string	"dequeue_sem"
.LASF77:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"removed"
.LASF44:
	.string	"fixed_queue_get_list"
.LASF60:
	.string	"osi_sem_give"
.LASF81:
	.string	"error"
.LASF64:
	.string	"list_contains"
.LASF57:
	.string	"__assert_func"
.LASF80:
	.string	"fixed_queue_unregister_dequeue"
.LASF54:
	.string	"list_is_empty"
.LASF37:
	.string	"fixed_queue_dequeue"
.LASF17:
	.string	"enqueue_sem"
.LASF74:
	.string	"osi_mutex_new"
.LASF51:
	.string	"fixed_queue_new"
.LASF75:
	.string	"list_new"
.LASF22:
	.string	"fixed_queue_free_cb"
.LASF49:
	.string	"free_cb"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
