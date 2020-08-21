	.file	"list.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"list != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/list.c"
	.section	.text.list_end$part$2,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3539
	.literal .LC4, .LC3
	.align	4
	.type	list_end$part$2, @function
list_end$part$2:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/list.c"
	.loc 1 217 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 219 0
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi	a11, 0xdb
	call8	__assert_func
.LVL1:
.LFE34:
	.size	list_end$part$2, .-list_end$part$2
	.section	.text.list_new_internal,"ax",@progbits
	.align	4
	.global	list_new_internal
	.type	list_new_internal, @function
list_new_internal:
.LFB12:
	.loc 1 25 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 26 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	calloc
.LVL3:
	.loc 1 27 0
	beqz.n	a10, .L3
	.loc 1 31 0
	movi.n	a8, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 0
	.loc 1 32 0
	s32i.n	a8, a10, 8
	.loc 1 33 0
	s32i.n	a2, a10, 12
.L3:
	.loc 1 35 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE12:
	.size	list_new_internal, .-list_new_internal
	.section	.text.list_new,"ax",@progbits
	.align	4
	.global	list_new
	.type	list_new, @function
list_new:
.LFB13:
	.loc 1 38 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 39 0
	mov.n	a10, a2
	call8	list_new_internal
.LVL6:
	.loc 1 40 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE13:
	.size	list_new, .-list_new
	.section	.text.list_is_empty,"ax",@progbits
	.literal_position
	.literal .LC5, .LC0
	.literal .LC6, __func__$3457
	.literal .LC7, .LC3
	.align	4
	.global	list_is_empty
	.type	list_is_empty, @function
list_is_empty:
.LFB15:
	.loc 1 53 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 54 0
	bnez.n	a2, .L9
.LVL9:
.LBB8:
.LBB9:
	l32r	a13, .LC5
	l32r	a12, .LC6
	l32r	a10, .LC7
	movi.n	a11, 0x36
	call8	__assert_func
.LVL10:
.L9:
.LBE9:
.LBE8:
	.loc 1 55 0
	l32i.n	a8, a2, 8
	movi.n	a9, 1
	movi.n	a2, 0
.LVL11:
	moveqz	a2, a9, a8
	.loc 1 56 0
	retw.n
.LFE15:
	.size	list_is_empty, .-list_is_empty
	.section	.text.list_length,"ax",@progbits
	.literal_position
	.literal .LC8, .LC0
	.literal .LC9, __func__$3470
	.literal .LC10, .LC3
	.align	4
	.global	list_length
	.type	list_length, @function
list_length:
.LFB17:
	.loc 1 72 0
.LVL12:
	entry	sp, 32
.LCFI4:
	.loc 1 73 0
	bnez.n	a2, .L11
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	l32r	a10, .LC10
	movi.n	a11, 0x49
	call8	__assert_func
.LVL13:
.L11:
	.loc 1 75 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL14:
	retw.n
.LFE17:
	.size	list_length, .-list_length
	.section	.rodata.str1.1
.LC14:
	.string	"!list_is_empty(list)"
	.section	.text.list_front,"ax",@progbits
	.literal_position
	.literal .LC11, .LC0
	.literal .LC12, __func__$3474
	.literal .LC13, .LC3
	.literal .LC15, .LC14
	.align	4
	.global	list_front
	.type	list_front, @function
list_front:
.LFB18:
	.loc 1 78 0
.LVL15:
	entry	sp, 32
.LCFI5:
	.loc 1 79 0
	bnez.n	a2, .L13
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x4f
	j	.L15
.L13:
	.loc 1 80 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL16:
	beqz.n	a10, .L14
	.loc 1 80 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC12
	movi.n	a11, 0x50
.L15:
	l32r	a10, .LC13
	call8	__assert_func
.LVL17:
.L14:
	.loc 1 82 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL18:
	.loc 1 83 0
	l32i.n	a2, a2, 4
	retw.n
.LFE18:
	.size	list_front, .-list_front
	.section	.text.list_back,"ax",@progbits
	.literal_position
	.literal .LC16, .LC0
	.literal .LC17, __func__$3478
	.literal .LC18, .LC3
	.literal .LC19, .LC14
	.align	4
	.global	list_back
	.type	list_back, @function
list_back:
.LFB19:
	.loc 1 85 0
.LVL19:
	entry	sp, 32
.LCFI6:
	.loc 1 86 0
	bnez.n	a2, .L17
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi.n	a11, 0x56
	j	.L19
.L17:
	.loc 1 87 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL20:
	beqz.n	a10, .L18
	.loc 1 87 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC17
	movi.n	a11, 0x57
.L19:
	l32r	a10, .LC18
	call8	__assert_func
.LVL21:
.L18:
	.loc 1 89 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL22:
	.loc 1 90 0
	l32i.n	a2, a2, 4
	retw.n
.LFE19:
	.size	list_back, .-list_back
	.section	.text.list_back_node,"ax",@progbits
	.literal_position
	.literal .LC20, .LC0
	.literal .LC21, __func__$3482
	.literal .LC22, .LC3
	.literal .LC23, .LC14
	.align	4
	.global	list_back_node
	.type	list_back_node, @function
list_back_node:
.LFB20:
	.loc 1 92 0
.LVL23:
	entry	sp, 32
.LCFI7:
	.loc 1 93 0
	bnez.n	a2, .L21
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi.n	a11, 0x5d
	j	.L23
.L21:
	.loc 1 94 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL24:
	beqz.n	a10, .L22
	.loc 1 94 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC21
	movi.n	a11, 0x5e
.L23:
	l32r	a10, .LC22
	call8	__assert_func
.LVL25:
.L22:
	.loc 1 97 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL26:
	retw.n
.LFE20:
	.size	list_back_node, .-list_back_node
	.section	.rodata.str1.1
.LC27:
	.string	"prev_node != NULL"
.LC29:
	.string	"data != NULL"
	.section	.text.list_insert_after,"ax",@progbits
	.literal_position
	.literal .LC24, .LC0
	.literal .LC25, __func__$3488
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.global	list_insert_after
	.type	list_insert_after, @function
list_insert_after:
.LFB21:
	.loc 1 99 0
.LVL27:
	entry	sp, 32
.LCFI8:
	.loc 1 100 0
	bnez.n	a2, .L25
	.loc 1 100 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0x64
	j	.L31
.L25:
	.loc 1 101 0 is_stmt 1
	bnez.n	a3, .L26
	.loc 1 101 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0x65
.L31:
	l32r	a10, .LC26
	call8	__assert_func
.LVL28:
.L26:
	.loc 1 102 0 is_stmt 1
	bnez.n	a4, .L27
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC25
	movi	a11, 0x66
	j	.L31
.L27:
	.loc 1 103 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL29:
	.loc 1 105 0
	mov.n	a8, a10
	.loc 1 104 0
	beqz.n	a10, .L28
	.loc 1 107 0
	l32i.n	a8, a3, 0
	.loc 1 108 0
	s32i.n	a4, a10, 4
	.loc 1 110 0
	l32i.n	a4, a2, 4
.LVL30:
	.loc 1 107 0
	s32i.n	a8, a10, 0
	.loc 1 109 0
	s32i.n	a10, a3, 0
	.loc 1 110 0
	bne	a3, a4, .L29
	.loc 1 111 0
	s32i.n	a10, a2, 4
.L29:
	.loc 1 113 0
	l32i.n	a3, a2, 8
.LVL31:
	.loc 1 114 0
	movi.n	a8, 1
	.loc 1 113 0
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 8
.LVL32:
.L28:
	.loc 1 115 0
	mov.n	a2, a8
.LVL33:
	retw.n
.LFE21:
	.size	list_insert_after, .-list_insert_after
	.section	.text.list_prepend,"ax",@progbits
	.literal_position
	.literal .LC31, .LC0
	.literal .LC32, __func__$3494
	.literal .LC33, .LC3
	.literal .LC34, .LC29
	.align	4
	.global	list_prepend
	.type	list_prepend, @function
list_prepend:
.LFB22:
	.loc 1 118 0
.LVL34:
	entry	sp, 32
.LCFI9:
	.loc 1 119 0
	bnez.n	a2, .L33
	.loc 1 119 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0x77
	j	.L38
.L33:
	.loc 1 120 0 is_stmt 1
	bnez.n	a3, .L34
	.loc 1 120 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC32
	movi	a11, 0x78
.L38:
	l32r	a10, .LC33
	call8	__assert_func
.LVL35:
.L34:
	.loc 1 121 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL36:
	.loc 1 123 0
	mov.n	a8, a10
	.loc 1 122 0
	beqz.n	a10, .L35
	.loc 1 125 0
	l32i.n	a8, a2, 0
	.loc 1 126 0
	s32i.n	a3, a10, 4
	.loc 1 128 0
	l32i.n	a3, a2, 4
.LVL37:
	.loc 1 125 0
	s32i.n	a8, a10, 0
	.loc 1 127 0
	s32i.n	a10, a2, 0
	.loc 1 128 0
	bnez.n	a3, .L36
	.loc 1 129 0
	s32i.n	a10, a2, 4
.L36:
	.loc 1 131 0
	l32i.n	a8, a2, 8
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 8
	.loc 1 132 0
	movi.n	a8, 1
.LVL38:
.L35:
	.loc 1 133 0
	mov.n	a2, a8
.LVL39:
	retw.n
.LFE22:
	.size	list_prepend, .-list_prepend
	.section	.text.list_append,"ax",@progbits
	.literal_position
	.literal .LC35, .LC0
	.literal .LC36, __func__$3500
	.literal .LC37, .LC3
	.literal .LC38, .LC29
	.align	4
	.global	list_append
	.type	list_append, @function
list_append:
.LFB23:
	.loc 1 136 0
.LVL40:
	entry	sp, 32
.LCFI10:
	.loc 1 137 0
	bnez.n	a2, .L40
	.loc 1 137 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	movi	a11, 0x89
	j	.L47
.L40:
	.loc 1 138 0 is_stmt 1
	bnez.n	a3, .L41
	.loc 1 138 0 is_stmt 0 discriminator 1
	l32r	a13, .LC38
	l32r	a12, .LC36
	movi	a11, 0x8a
.L47:
	l32r	a10, .LC37
	call8	__assert_func
.LVL41:
.L41:
	.loc 1 139 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL42:
	.loc 1 141 0
	mov.n	a8, a10
	.loc 1 140 0
	beqz.n	a10, .L42
	.loc 1 143 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 145 0
	l32i.n	a8, a2, 4
	.loc 1 144 0
	s32i.n	a3, a10, 4
	.loc 1 145 0
	bnez.n	a8, .L43
	.loc 1 146 0
	s32i.n	a10, a2, 0
	j	.L46
.L43:
	.loc 1 149 0
	s32i.n	a10, a8, 0
.L46:
	.loc 1 152 0
	l32i.n	a8, a2, 8
	.loc 1 150 0
	s32i.n	a10, a2, 4
	.loc 1 152 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 8
	.loc 1 153 0
	movi.n	a8, 1
.L42:
	.loc 1 154 0
	mov.n	a2, a8
.LVL43:
	retw.n
.LFE23:
	.size	list_append, .-list_append
	.section	.rodata.str1.1
.LC42:
	.string	"callback != NULL"
	.section	.text.list_foreach,"ax",@progbits
	.literal_position
	.literal .LC39, .LC0
	.literal .LC40, __func__$3526
	.literal .LC41, .LC3
	.literal .LC43, .LC42
	.align	4
	.global	list_foreach
	.type	list_foreach, @function
list_foreach:
.LFB26:
	.loc 1 198 0
.LVL44:
	entry	sp, 32
.LCFI11:
	.loc 1 199 0
	bnez.n	a2, .L49
	.loc 1 199 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	movi	a11, 0xc7
	j	.L56
.L49:
	.loc 1 200 0 is_stmt 1
	bnez.n	a3, .L50
	.loc 1 200 0 is_stmt 0 discriminator 1
	l32r	a13, .LC43
	l32r	a12, .LC40
	movi	a11, 0xc8
.L56:
	l32r	a10, .LC41
	call8	__assert_func
.LVL45:
.L50:
.LBB10:
	.loc 1 202 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL46:
	j	.L51
.L53:
.LBB11:
	.loc 1 204 0
	l32i.n	a10, a2, 4
	mov.n	a11, a4
	.loc 1 203 0
	l32i.n	a5, a2, 0
.LVL47:
	.loc 1 204 0
	callx8	a3
.LVL48:
	beqz.n	a10, .L52
	.loc 1 206 0
	mov.n	a2, a5
.LVL49:
.L51:
.LBE11:
	.loc 1 202 0 discriminator 1
	bnez.n	a2, .L53
.L52:
.LBE10:
	.loc 1 209 0
	retw.n
.LFE26:
	.size	list_foreach, .-list_foreach
	.section	.text.list_begin,"ax",@progbits
	.literal_position
	.literal .LC44, .LC0
	.literal .LC45, __func__$3535
	.literal .LC46, .LC3
	.align	4
	.global	list_begin
	.type	list_begin, @function
list_begin:
.LFB27:
	.loc 1 212 0
.LVL50:
	entry	sp, 32
.LCFI12:
	.loc 1 213 0
	bnez.n	a2, .L58
.LVL51:
.LBB14:
.LBB15:
	l32r	a13, .LC44
	l32r	a12, .LC45
	l32r	a10, .LC46
	movi	a11, 0xd5
	call8	__assert_func
.LVL52:
.L58:
.LBE15:
.LBE14:
	.loc 1 215 0
	l32i.n	a2, a2, 0
.LVL53:
	retw.n
.LFE27:
	.size	list_begin, .-list_begin
	.section	.text.list_end,"ax",@progbits
	.align	4
	.global	list_end
	.type	list_end, @function
list_end:
.LFB28:
	.loc 1 218 0
.LVL54:
	entry	sp, 32
.LCFI13:
	.loc 1 219 0
	bnez.n	a2, .L60
	call8	list_end$part$2
.LVL55:
.L60:
	.loc 1 221 0
	movi.n	a2, 0
.LVL56:
	retw.n
.LFE28:
	.size	list_end, .-list_end
	.section	.rodata.str1.1
.LC47:
	.string	"node != NULL"
	.section	.text.list_next,"ax",@progbits
	.literal_position
	.literal .LC48, .LC47
	.literal .LC49, __func__$3543
	.literal .LC50, .LC3
	.align	4
	.global	list_next
	.type	list_next, @function
list_next:
.LFB29:
	.loc 1 224 0
.LVL57:
	entry	sp, 32
.LCFI14:
	.loc 1 225 0
	bnez.n	a2, .L62
.LVL58:
.LBB18:
.LBB19:
	l32r	a13, .LC48
	l32r	a12, .LC49
	l32r	a10, .LC50
	movi	a11, 0xe1
	call8	__assert_func
.LVL59:
.L62:
.LBE19:
.LBE18:
	.loc 1 227 0
	l32i.n	a2, a2, 0
.LVL60:
	retw.n
.LFE29:
	.size	list_next, .-list_next
	.section	.text.list_node,"ax",@progbits
	.literal_position
	.literal .LC51, .LC47
	.literal .LC52, __func__$3547
	.literal .LC53, .LC3
	.align	4
	.global	list_node
	.type	list_node, @function
list_node:
.LFB30:
	.loc 1 230 0
.LVL61:
	entry	sp, 32
.LCFI15:
	.loc 1 231 0
	bnez.n	a2, .L64
.LVL62:
.LBB22:
.LBB23:
	l32r	a13, .LC51
	l32r	a12, .LC52
	l32r	a10, .LC53
	movi	a11, 0xe7
	call8	__assert_func
.LVL63:
.L64:
.LBE23:
.LBE22:
	.loc 1 233 0
	l32i.n	a2, a2, 4
.LVL64:
	retw.n
.LFE30:
	.size	list_node, .-list_node
	.section	.text.list_contains,"ax",@progbits
	.literal_position
	.literal .LC54, .LC0
	.literal .LC55, __func__$3462
	.literal .LC56, .LC3
	.literal .LC57, .LC29
	.align	4
	.global	list_contains
	.type	list_contains, @function
list_contains:
.LFB16:
	.loc 1 59 0
.LVL65:
	entry	sp, 32
.LCFI16:
	.loc 1 60 0
	bnez.n	a2, .L66
	.loc 1 60 0 is_stmt 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC55
	movi.n	a11, 0x3c
	j	.L73
.L66:
	.loc 1 61 0 is_stmt 1
	bnez.n	a3, .L67
	.loc 1 61 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	l32r	a12, .LC55
	movi.n	a11, 0x3d
.L73:
	l32r	a10, .LC56
	call8	__assert_func
.LVL66:
.L67:
.LBB24:
	.loc 1 63 0 is_stmt 1
	mov.n	a10, a2
	call8	list_begin
.LVL67:
	j	.L72
.LVL68:
.L70:
	.loc 1 64 0
	mov.n	a10, a2
	call8	list_node
.LVL69:
	beq	a3, a10, .L71
	.loc 1 63 0 discriminator 2
	mov.n	a10, a2
	call8	list_next
.LVL70:
.L72:
	mov.n	a2, a10
.LVL71:
	bnez.n	a10, .L70
	retw.n
.L71:
	.loc 1 65 0
	movi.n	a2, 1
.LVL72:
.LBE24:
	.loc 1 69 0
	retw.n
.LFE16:
	.size	list_contains, .-list_contains
	.section	.text.list_free_node,"ax",@progbits
	.literal_position
	.literal .LC58, .LC0
	.literal .LC59, __func__$3552
	.literal .LC60, .LC3
	.literal .LC61, .LC47
	.align	4
	.global	list_free_node
	.type	list_free_node, @function
list_free_node:
.LFB31:
	.loc 1 236 0
.LVL73:
	entry	sp, 32
.LCFI17:
	.loc 1 237 0
	bnez.n	a2, .L75
.LVL74:
.LBB27:
.LBB28:
	l32r	a13, .LC58
	l32r	a12, .LC59
	movi	a11, 0xed
	j	.L81
.LVL75:
.L75:
.LBE28:
.LBE27:
	.loc 1 238 0
	bnez.n	a3, .L76
	.loc 1 238 0 is_stmt 0 discriminator 1
	l32r	a13, .LC61
	l32r	a12, .LC59
	movi	a11, 0xee
.L81:
	l32r	a10, .LC60
	call8	__assert_func
.LVL76:
.L76:
	.loc 1 242 0 is_stmt 1
	l32i.n	a8, a2, 12
	.loc 1 240 0
	l32i.n	a4, a3, 0
.LVL77:
	.loc 1 242 0
	beqz.n	a8, .L77
	.loc 1 243 0
	l32i.n	a10, a3, 4
	callx8	a8
.LVL78:
.L77:
	.loc 1 245 0
	mov.n	a10, a3
	call8	free
.LVL79:
	.loc 1 246 0
	l32i.n	a3, a2, 8
.LVL80:
	addi.n	a3, a3, -1
	s32i.n	a3, a2, 8
	.loc 1 249 0
	mov.n	a2, a4
.LVL81:
	retw.n
.LFE31:
	.size	list_free_node, .-list_free_node
	.section	.text.list_remove,"ax",@progbits
	.literal_position
	.literal .LC62, .LC0
	.literal .LC63, __func__$3506
	.literal .LC64, .LC3
	.literal .LC65, .LC29
	.align	4
	.global	list_remove
	.type	list_remove, @function
list_remove:
.LFB24:
	.loc 1 157 0
.LVL82:
	entry	sp, 32
.LCFI18:
	.loc 1 158 0
	bnez.n	a2, .L83
	.loc 1 158 0 is_stmt 0 discriminator 1
	l32r	a13, .LC62
	l32r	a12, .LC63
	movi	a11, 0x9e
	j	.L93
.L83:
	.loc 1 159 0 is_stmt 1
	bnez.n	a3, .L84
	.loc 1 159 0 is_stmt 0 discriminator 1
	l32r	a13, .LC65
	l32r	a12, .LC63
	movi	a11, 0x9f
.L93:
	l32r	a10, .LC64
	call8	__assert_func
.LVL83:
.L84:
	.loc 1 161 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL84:
	bnez.n	a10, .L91
	.loc 1 165 0
	l32i.n	a5, a2, 0
	l32i.n	a4, a5, 4
	bne	a3, a4, .L86
.LBB29:
	.loc 1 166 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	list_free_node
.LVL85:
	.loc 1 167 0
	l32i.n	a4, a2, 4
	l32i.n	a3, a2, 0
.LVL86:
	bne	a4, a3, .L87
	.loc 1 168 0
	s32i.n	a10, a2, 4
.L87:
	.loc 1 170 0
	s32i.n	a10, a2, 0
	.loc 1 171 0
	movi.n	a10, 1
.LVL87:
	j	.L85
.LVL88:
.L86:
.LBE29:
.LBB30:
	.loc 1 174 0
	l32i.n	a4, a5, 0
.LVL89:
	j	.L88
.LVL90:
.L90:
	.loc 1 175 0
	l32i.n	a8, a4, 4
	bne	a3, a8, .L89
	.loc 1 176 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	list_free_node
.LVL91:
	.loc 1 177 0
	l32i.n	a3, a2, 4
.LVL92:
	.loc 1 176 0
	s32i.n	a10, a5, 0
	.loc 1 180 0
	movi.n	a10, 1
	.loc 1 177 0
	bne	a4, a3, .L85
	.loc 1 178 0
	s32i.n	a5, a2, 4
	j	.L85
.LVL93:
.L89:
	.loc 1 174 0 discriminator 2
	mov.n	a5, a4
	l32i.n	a4, a4, 0
.LVL94:
.L88:
	.loc 1 174 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L90
	j	.L85
.LVL95:
.L91:
.LBE30:
	.loc 1 162 0 is_stmt 1
	movi.n	a10, 0
.LVL96:
.L85:
	.loc 1 184 0
	mov.n	a2, a10
.LVL97:
	retw.n
.LFE24:
	.size	list_remove, .-list_remove
	.section	.text.list_clear,"ax",@progbits
	.literal_position
	.literal .LC66, .LC0
	.literal .LC67, __func__$3516
	.literal .LC68, .LC3
	.align	4
	.global	list_clear
	.type	list_clear, @function
list_clear:
.LFB25:
	.loc 1 187 0
.LVL98:
	entry	sp, 32
.LCFI19:
	.loc 1 188 0
	bnez.n	a2, .L95
.LVL99:
.LBB35:
.LBB36:
	l32r	a13, .LC66
	l32r	a12, .LC67
	l32r	a10, .LC68
	movi	a11, 0xbc
	call8	__assert_func
.LVL100:
.L95:
.LBE36:
.LBE35:
.LBB37:
	.loc 1 189 0
	l32i.n	a10, a2, 0
.LVL101:
	j	.L96
.L97:
	.loc 1 190 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL102:
	call8	list_free_node
.LVL103:
.L96:
	.loc 1 189 0 discriminator 1
	bnez.n	a10, .L97
.LBE37:
	.loc 1 192 0
	s32i.n	a10, a2, 0
	.loc 1 193 0
	s32i.n	a10, a2, 4
	.loc 1 194 0
	s32i.n	a10, a2, 8
	retw.n
.LFE25:
	.size	list_clear, .-list_clear
	.section	.text.list_free,"ax",@progbits
	.align	4
	.global	list_free
	.type	list_free, @function
list_free:
.LFB14:
	.loc 1 43 0
.LVL104:
	entry	sp, 32
.LCFI20:
	.loc 1 44 0
	beqz.n	a2, .L98
	.loc 1 48 0
	mov.n	a10, a2
	call8	list_clear
.LVL105:
	.loc 1 49 0
	mov.n	a10, a2
	call8	free
.LVL106:
.L98:
	retw.n
.LFE14:
	.size	list_free, .-list_free
	.section	.rodata.__func__$3552,"a",@progbits
	.type	__func__$3552, @object
	.size	__func__$3552, 15
__func__$3552:
	.string	"list_free_node"
	.section	.rodata.__func__$3547,"a",@progbits
	.type	__func__$3547, @object
	.size	__func__$3547, 10
__func__$3547:
	.string	"list_node"
	.section	.rodata.__func__$3543,"a",@progbits
	.type	__func__$3543, @object
	.size	__func__$3543, 10
__func__$3543:
	.string	"list_next"
	.section	.rodata.__func__$3539,"a",@progbits
	.type	__func__$3539, @object
	.size	__func__$3539, 9
__func__$3539:
	.string	"list_end"
	.section	.rodata.__func__$3535,"a",@progbits
	.type	__func__$3535, @object
	.size	__func__$3535, 11
__func__$3535:
	.string	"list_begin"
	.section	.rodata.__func__$3526,"a",@progbits
	.type	__func__$3526, @object
	.size	__func__$3526, 13
__func__$3526:
	.string	"list_foreach"
	.section	.rodata.__func__$3516,"a",@progbits
	.type	__func__$3516, @object
	.size	__func__$3516, 11
__func__$3516:
	.string	"list_clear"
	.section	.rodata.__func__$3506,"a",@progbits
	.type	__func__$3506, @object
	.size	__func__$3506, 12
__func__$3506:
	.string	"list_remove"
	.section	.rodata.__func__$3500,"a",@progbits
	.type	__func__$3500, @object
	.size	__func__$3500, 12
__func__$3500:
	.string	"list_append"
	.section	.rodata.__func__$3494,"a",@progbits
	.type	__func__$3494, @object
	.size	__func__$3494, 13
__func__$3494:
	.string	"list_prepend"
	.section	.rodata.__func__$3488,"a",@progbits
	.type	__func__$3488, @object
	.size	__func__$3488, 18
__func__$3488:
	.string	"list_insert_after"
	.section	.rodata.__func__$3482,"a",@progbits
	.type	__func__$3482, @object
	.size	__func__$3482, 15
__func__$3482:
	.string	"list_back_node"
	.section	.rodata.__func__$3478,"a",@progbits
	.type	__func__$3478, @object
	.size	__func__$3478, 10
__func__$3478:
	.string	"list_back"
	.section	.rodata.__func__$3474,"a",@progbits
	.type	__func__$3474, @object
	.size	__func__$3474, 11
__func__$3474:
	.string	"list_front"
	.section	.rodata.__func__$3470,"a",@progbits
	.type	__func__$3470, @object
	.size	__func__$3470, 12
__func__$3470:
	.string	"list_length"
	.section	.rodata.__func__$3462,"a",@progbits
	.type	__func__$3462, @object
	.size	__func__$3462, 14
__func__$3462:
	.string	"list_contains"
	.section	.rodata.__func__$3457,"a",@progbits
	.type	__func__$3457, @object
	.size	__func__$3457, 14
__func__$3457:
	.string	"list_is_empty"
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI10-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI15-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI17-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI18-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI19-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI20-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/include/osi/list.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdb9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0x98
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0xa3
	.4byte	0xc5
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcb
	.uleb128 0xa
	.4byte	0xd6
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7
	.4byte	0xe1
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x8
	.byte	0x1
	.byte	0x8
	.4byte	0x106
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9
	.4byte	0x173
	.byte	0
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x10
	.byte	0x1
	.byte	0xd
	.4byte	0x143
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xf
	.4byte	0x179
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x11
	.4byte	0x143
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0xc
	.4byte	0xc5
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0xd
	.4byte	0x159
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15f
	.uleb128 0xe
	.4byte	0xae
	.4byte	0x173
	.uleb128 0xb
	.4byte	0x81
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.4byte	0xae
	.byte	0x1
	.4byte	0x1a8
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x34
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x1c3
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ae
	.uleb128 0x12
	.4byte	0x106
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x1c3
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.4byte	0x1b3
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd3
	.4byte	0x179
	.byte	0x1
	.4byte	0x1f1
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd3
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x201
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x201
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd9
	.4byte	0x179
	.byte	0x1
	.4byte	0x22f
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd9
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x23f
	.4byte	.LASF30
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x23f
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	0x22f
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdf
	.4byte	0x179
	.byte	0x1
	.4byte	0x26d
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xdf
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x288
	.4byte	.LASF31
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x273
	.uleb128 0x12
	.4byte	0xd6
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x288
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe5
	.4byte	0x81
	.byte	0x1
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe5
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x2b6
	.4byte	.LASF33
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xeb
	.4byte	0x179
	.byte	0x1
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xeb
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xeb
	.4byte	0x179
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x310
	.4byte	.LASF34
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf0
	.4byte	0x179
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x106
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x310
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x300
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0x347
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xba
	.4byte	0x2fa
	.uleb128 0x11
	.4byte	.LASF29
	.4byte	0x347
	.4byte	.LASF35
	.uleb128 0x15
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbd
	.4byte	0x179
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0x16
	.4byte	0x206
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x17
	.4byte	0x216
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x216
	.byte	0x9f
	.uleb128 0x18
	.4byte	0x221
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3539
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3539
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0x18
	.4byte	0x2fa
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ec
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.byte	0x18
	.4byte	0x143
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.4byte	0x2fa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0xda6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x25
	.4byte	0x2fa
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x425
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.byte	0x25
	.4byte	0x143
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x3a2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x17f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a0
	.uleb128 0x1e
	.4byte	0x18f
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	0x19a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3457
	.uleb128 0x1f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1e
	.4byte	0x18f
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x18
	.4byte	0x19a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3457
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3457
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x503
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x47
	.4byte	0x1a8
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3470
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3470
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x513
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4d
	.4byte	0x81
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x577
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4d
	.4byte	0x1a8
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x577
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3474
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x17f
	.4byte	0x563
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x1
	.byte	0x55
	.4byte	0x81
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5db
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x55
	.4byte	0x1a8
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x5db
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3478
	.uleb128 0x21
	.4byte	.LVL20
	.4byte	0x17f
	.4byte	0x5c7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5c
	.4byte	0x179
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63f
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5c
	.4byte	0x1a8
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x63f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x17f
	.4byte	0x62b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x300
	.uleb128 0x1b
	.4byte	.LASF43
	.byte	0x1
	.byte	0x63
	.4byte	0xae
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x63
	.4byte	0x2fa
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x63
	.4byte	0x179
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.4byte	0x81
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x6e2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3488
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x67
	.4byte	0x179
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0xd9b
	.4byte	0x6bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0xda6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x6e2
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0x6d2
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x75
	.4byte	0xae
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x766
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x75
	.4byte	0x2fa
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x75
	.4byte	0x81
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x776
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3494
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.4byte	0x179
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LVL35
	.4byte	0xd9b
	.4byte	0x751
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xda6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x776
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	0x766
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0x87
	.4byte	0xae
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f8
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x87
	.4byte	0x2fa
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF18
	.byte	0x1
	.byte	0x87
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x7f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3500
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8b
	.4byte	0x179
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0xd9b
	.4byte	0x7e3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0xda6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc5
	.4byte	0x179
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a2
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc5
	.4byte	0x1a8
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc5
	.4byte	0x14e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc5
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x8a2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3526
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x88e
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xca
	.4byte	0x179
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x24
	.4byte	.LASF17
	.byte	0x1
	.byte	0xcb
	.4byte	0x179
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LVL48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x766
	.uleb128 0x16
	.4byte	0x1c8
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x922
	.uleb128 0x1e
	.4byte	0x1d8
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3535
	.uleb128 0x1f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x1e
	.4byte	0x1d8
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x18
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3535
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3535
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x206
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95b
	.uleb128 0x1e
	.4byte	0x216
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	0x221
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3539
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x34c
	.uleb128 0x26
	.4byte	0x216
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x244
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d6
	.uleb128 0x1e
	.4byte	0x254
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	0x25f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3543
	.uleb128 0x1f
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1e
	.4byte	0x254
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x18
	.4byte	0x25f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3543
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3543
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x28d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa51
	.uleb128 0x1e
	.4byte	0x29d
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3547
	.uleb128 0x1f
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x1e
	.4byte	0x29d
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x18
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3547
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3547
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x3a
	.4byte	0xae
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafe
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3a
	.4byte	0x1a8
	.4byte	.LLST23
	.uleb128 0x22
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3a
	.4byte	0x91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0xafe
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3462
	.uleb128 0x23
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0xaea
	.uleb128 0x24
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3f
	.4byte	0x26d
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LVL67
	.4byte	0x1c8
	.4byte	0xac5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0x28d
	.4byte	0xad9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x244
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1b3
	.uleb128 0x27
	.4byte	0x2bb
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9c
	.uleb128 0x1e
	.4byte	0x2cb
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	0x2d6
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	0x2e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3552
	.uleb128 0x18
	.4byte	0x2ee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xb74
	.uleb128 0x1e
	.4byte	0x2cb
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	0x2d6
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x28
	.4byte	0x2ee
	.uleb128 0x18
	.4byte	0x2e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3552
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL76
	.4byte	0xd9b
	.4byte	0xb8b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL79
	.4byte	0xdb1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x1
	.byte	0x9c
	.4byte	0xae
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7f
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fa
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x9c
	.4byte	0x81
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0xc7f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3506
	.uleb128 0x23
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xc15
	.uleb128 0x24
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa6
	.4byte	0x179
	.4byte	.LLST31
	.uleb128 0x19
	.4byte	.LVL85
	.4byte	0x2bb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xc57
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x1
	.byte	0xae
	.4byte	0x179
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF32
	.byte	0x1
	.byte	0xae
	.4byte	0x179
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0x2bb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL83
	.4byte	0xd9b
	.4byte	0xc6e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x17f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x16
	.4byte	0x315
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd24
	.uleb128 0x17
	.4byte	0x321
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	0x32c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3516
	.uleb128 0x23
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0xd00
	.uleb128 0x1e
	.4byte	0x321
	.4byte	.LLST34
	.uleb128 0x1f
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x18
	.4byte	0x32c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3516
	.uleb128 0x19
	.4byte	.LVL100
	.4byte	0xd9b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3516
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x29
	.4byte	0x33a
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	.LVL103
	.4byte	0x2bb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6b
	.uleb128 0x22
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.4byte	0x2fa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL105
	.4byte	0x315
	.4byte	0xd5a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL106
	.4byte	0xdb1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2cc
	.4byte	0xd7e
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x12
	.4byte	0xb5
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x2cd
	.4byte	0xd96
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb5
	.uleb128 0x2c
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.byte	0x29
	.uleb128 0x2c
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x8
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF56
	.4byte	.LASF56
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xa
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
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE12
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL32
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL38
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL73
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"list_append"
.LASF25:
	.string	"list_iter_cb"
.LASF33:
	.string	"list_node"
.LASF3:
	.string	"size_t"
.LASF17:
	.string	"next"
.LASF4:
	.string	"__uint8_t"
.LASF14:
	.string	"UINT8"
.LASF40:
	.string	"list_front"
.LASF9:
	.string	"long int"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"free_cb"
.LASF31:
	.string	"list_next"
.LASF29:
	.string	"__func__"
.LASF18:
	.string	"data"
.LASF57:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"list_length"
.LASF5:
	.string	"unsigned char"
.LASF56:
	.string	"free"
.LASF59:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF28:
	.string	"list"
.LASF38:
	.string	"callback"
.LASF34:
	.string	"list_free_node"
.LASF44:
	.string	"prev_node"
.LASF11:
	.string	"long unsigned int"
.LASF41:
	.string	"list_back"
.LASF6:
	.string	"short int"
.LASF36:
	.string	"list_new_internal"
.LASF20:
	.string	"head"
.LASF16:
	.string	"list_node_t"
.LASF37:
	.string	"list_new"
.LASF54:
	.string	"__assert_func"
.LASF19:
	.string	"list_t"
.LASF0:
	.string	"unsigned int"
.LASF43:
	.string	"list_insert_after"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF49:
	.string	"list_contains"
.LASF48:
	.string	"context"
.LASF52:
	.string	"bd_addr_any"
.LASF26:
	.string	"list_is_empty"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"sizetype"
.LASF47:
	.string	"list_foreach"
.LASF12:
	.string	"char"
.LASF24:
	.string	"list_free_cb"
.LASF50:
	.string	"list_remove"
.LASF35:
	.string	"list_clear"
.LASF30:
	.string	"list_end"
.LASF55:
	.string	"calloc"
.LASF45:
	.string	"list_prepend"
.LASF21:
	.string	"tail"
.LASF32:
	.string	"node"
.LASF42:
	.string	"list_back_node"
.LASF58:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/osi/list.c"
.LASF53:
	.string	"bd_addr_null"
.LASF60:
	.string	"list_free"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"list_begin"
.LASF15:
	.string	"_Bool"
.LASF22:
	.string	"length"
.LASF51:
	.string	"prev"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
