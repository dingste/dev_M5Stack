	.file	"list.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"list != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/list.c"
	.section	.text.list_end$part$2,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2570
	.literal .LC4, .LC3
	.align	4
	.type	list_end$part$2, @function
list_end$part$2:
.LFB22:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/list.c"
	.loc 1 221 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 223 0
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi	a11, 0xdf
	call8	__assert_func
.LVL1:
.LFE22:
	.size	list_end$part$2, .-list_end$part$2
	.section	.text.list_new_internal,"ax",@progbits
	.align	4
	.global	list_new_internal
	.type	list_new_internal, @function
list_new_internal:
.LFB0:
	.loc 1 24 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 25 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	calloc
.LVL3:
	.loc 1 26 0
	beqz.n	a10, .L3
	.loc 1 30 0
	movi.n	a8, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 0
	.loc 1 31 0
	s32i.n	a8, a10, 8
	.loc 1 32 0
	s32i.n	a2, a10, 12
.L3:
	.loc 1 34 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE0:
	.size	list_new_internal, .-list_new_internal
	.section	.text.list_new,"ax",@progbits
	.align	4
	.global	list_new
	.type	list_new, @function
list_new:
.LFB1:
	.loc 1 37 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 38 0
	mov.n	a10, a2
	call8	list_new_internal
.LVL6:
	.loc 1 39 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE1:
	.size	list_new, .-list_new
	.section	.text.list_is_empty,"ax",@progbits
	.literal_position
	.literal .LC5, .LC0
	.literal .LC6, __func__$2485
	.literal .LC7, .LC3
	.align	4
	.global	list_is_empty
	.type	list_is_empty, @function
list_is_empty:
.LFB3:
	.loc 1 52 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 53 0
	bnez.n	a2, .L9
.LVL9:
.LBB8:
.LBB9:
	l32r	a13, .LC5
	l32r	a12, .LC6
	l32r	a10, .LC7
	movi.n	a11, 0x35
	call8	__assert_func
.LVL10:
.L9:
.LBE9:
.LBE8:
	.loc 1 54 0
	l32i.n	a8, a2, 8
	movi.n	a9, 1
	movi.n	a2, 0
.LVL11:
	moveqz	a2, a9, a8
	.loc 1 55 0
	retw.n
.LFE3:
	.size	list_is_empty, .-list_is_empty
	.section	.text.list_length,"ax",@progbits
	.literal_position
	.literal .LC8, .LC0
	.literal .LC9, __func__$2498
	.literal .LC10, .LC3
	.align	4
	.global	list_length
	.type	list_length, @function
list_length:
.LFB5:
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
.LFE5:
	.size	list_length, .-list_length
	.section	.rodata.str1.1
.LC14:
	.string	"!list_is_empty(list)"
	.section	.text.list_front,"ax",@progbits
	.literal_position
	.literal .LC11, .LC0
	.literal .LC12, __func__$2502
	.literal .LC13, .LC3
	.literal .LC15, .LC14
	.align	4
	.global	list_front
	.type	list_front, @function
list_front:
.LFB6:
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
.LFE6:
	.size	list_front, .-list_front
	.section	.text.list_back,"ax",@progbits
	.literal_position
	.literal .LC16, .LC0
	.literal .LC17, __func__$2506
	.literal .LC18, .LC3
	.literal .LC19, .LC14
	.align	4
	.global	list_back
	.type	list_back, @function
list_back:
.LFB7:
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
.LFE7:
	.size	list_back, .-list_back
	.section	.text.list_back_node,"ax",@progbits
	.literal_position
	.literal .LC20, .LC0
	.literal .LC21, __func__$2510
	.literal .LC22, .LC3
	.literal .LC23, .LC14
	.align	4
	.global	list_back_node
	.type	list_back_node, @function
list_back_node:
.LFB8:
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
.LFE8:
	.size	list_back_node, .-list_back_node
	.section	.rodata.str1.1
.LC27:
	.string	"prev_node != NULL"
.LC29:
	.string	"data != NULL"
.LC32:
	.string	"BT_OSI"
.LC34:
	.string	"\033[0;31mE (%d) %s: %s osi_calloc failed.\n\033[0m\n"
	.section	.text.list_insert_after,"ax",@progbits
	.literal_position
	.literal .LC24, .LC0
	.literal .LC25, __func__$2516
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC31, __FUNCTION__$2518
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.global	list_insert_after
	.type	list_insert_after, @function
list_insert_after:
.LFB9:
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
	mov.n	a5, a10
.LVL30:
	.loc 1 104 0
	bnez.n	a10, .L28
	.loc 1 105 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC33
	l32r	a15, .LC31
	l32r	a12, .LC35
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 106 0 discriminator 1
	mov.n	a2, a5
.LVL33:
	retw.n
.LVL34:
.L28:
	.loc 1 108 0
	l32i.n	a8, a3, 0
	.loc 1 109 0
	s32i.n	a4, a10, 4
	.loc 1 111 0
	l32i.n	a4, a2, 4
.LVL35:
	.loc 1 108 0
	s32i.n	a8, a10, 0
	.loc 1 110 0
	s32i.n	a10, a3, 0
	.loc 1 111 0
	bne	a3, a4, .L30
	.loc 1 112 0
	s32i.n	a10, a2, 4
.L30:
	.loc 1 114 0
	l32i.n	a3, a2, 8
.LVL36:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 8
	.loc 1 115 0
	movi.n	a2, 1
.LVL37:
	.loc 1 116 0
	retw.n
.LFE9:
	.size	list_insert_after, .-list_insert_after
	.section	.text.list_prepend,"ax",@progbits
	.literal_position
	.literal .LC36, .LC0
	.literal .LC37, __func__$2523
	.literal .LC38, .LC3
	.literal .LC39, .LC29
	.literal .LC40, __FUNCTION__$2525
	.literal .LC41, .LC32
	.literal .LC42, .LC34
	.align	4
	.global	list_prepend
	.type	list_prepend, @function
list_prepend:
.LFB10:
	.loc 1 119 0
.LVL38:
	entry	sp, 32
.LCFI9:
	.loc 1 120 0
	bnez.n	a2, .L33
	.loc 1 120 0 is_stmt 0 discriminator 1
	l32r	a13, .LC36
	l32r	a12, .LC37
	movi	a11, 0x78
	j	.L38
.L33:
	.loc 1 121 0 is_stmt 1
	bnez.n	a3, .L34
	.loc 1 121 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC37
	movi	a11, 0x79
.L38:
	l32r	a10, .LC38
	call8	__assert_func
.LVL39:
.L34:
	.loc 1 122 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL40:
	mov.n	a4, a10
.LVL41:
	.loc 1 123 0
	bnez.n	a10, .L35
	.loc 1 124 0 discriminator 1
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC41
	l32r	a15, .LC40
	l32r	a12, .LC42
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	.loc 1 125 0 discriminator 1
	mov.n	a2, a4
.LVL44:
	retw.n
.LVL45:
.L35:
	.loc 1 127 0
	l32i.n	a8, a2, 0
	.loc 1 128 0
	s32i.n	a3, a10, 4
	.loc 1 130 0
	l32i.n	a3, a2, 4
.LVL46:
	.loc 1 127 0
	s32i.n	a8, a10, 0
	.loc 1 129 0
	s32i.n	a10, a2, 0
	.loc 1 130 0
	bnez.n	a3, .L37
	.loc 1 131 0
	s32i.n	a10, a2, 4
.L37:
	.loc 1 133 0
	l32i.n	a4, a2, 8
.LVL47:
	addi.n	a4, a4, 1
	s32i.n	a4, a2, 8
	.loc 1 134 0
	movi.n	a2, 1
.LVL48:
	.loc 1 135 0
	retw.n
.LFE10:
	.size	list_prepend, .-list_prepend
	.section	.text.list_append,"ax",@progbits
	.literal_position
	.literal .LC43, .LC0
	.literal .LC44, __func__$2530
	.literal .LC45, .LC3
	.literal .LC46, .LC29
	.literal .LC47, __FUNCTION__$2532
	.literal .LC48, .LC32
	.literal .LC49, .LC34
	.align	4
	.global	list_append
	.type	list_append, @function
list_append:
.LFB11:
	.loc 1 138 0
.LVL49:
	entry	sp, 32
.LCFI10:
	.loc 1 139 0
	bnez.n	a2, .L40
	.loc 1 139 0 is_stmt 0 discriminator 1
	l32r	a13, .LC43
	l32r	a12, .LC44
	movi	a11, 0x8b
	j	.L47
.L40:
	.loc 1 140 0 is_stmt 1
	bnez.n	a3, .L41
	.loc 1 140 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC44
	movi	a11, 0x8c
.L47:
	l32r	a10, .LC45
	call8	__assert_func
.LVL50:
.L41:
	.loc 1 141 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL51:
	mov.n	a4, a10
.LVL52:
	.loc 1 142 0
	bnez.n	a10, .L42
	.loc 1 143 0 discriminator 1
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC48
	l32r	a15, .LC47
	l32r	a12, .LC49
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL54:
	.loc 1 144 0 discriminator 1
	mov.n	a2, a4
.LVL55:
	retw.n
.LVL56:
.L42:
	.loc 1 146 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 148 0
	l32i.n	a8, a2, 4
	.loc 1 147 0
	s32i.n	a3, a10, 4
	.loc 1 148 0
	bnez.n	a8, .L44
	.loc 1 149 0
	s32i.n	a10, a2, 0
	j	.L46
.L44:
	.loc 1 152 0
	s32i.n	a10, a8, 0
.L46:
	.loc 1 153 0
	s32i.n	a4, a2, 4
	.loc 1 155 0
	l32i.n	a4, a2, 8
.LVL57:
	addi.n	a4, a4, 1
	s32i.n	a4, a2, 8
	.loc 1 156 0
	movi.n	a2, 1
.LVL58:
	.loc 1 157 0
	retw.n
.LFE11:
	.size	list_append, .-list_append
	.section	.rodata.str1.1
.LC53:
	.string	"callback != NULL"
	.section	.text.list_foreach,"ax",@progbits
	.literal_position
	.literal .LC50, .LC0
	.literal .LC51, __func__$2557
	.literal .LC52, .LC3
	.literal .LC54, .LC53
	.align	4
	.global	list_foreach
	.type	list_foreach, @function
list_foreach:
.LFB14:
	.loc 1 201 0
.LVL59:
	entry	sp, 32
.LCFI11:
	.loc 1 202 0
	bnez.n	a2, .L49
	.loc 1 202 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0xca
	j	.L56
.L49:
	.loc 1 203 0 is_stmt 1
	bnez.n	a3, .L50
	.loc 1 203 0 is_stmt 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC51
	movi	a11, 0xcb
.L56:
	l32r	a10, .LC52
	call8	__assert_func
.LVL60:
.L50:
.LBB10:
	.loc 1 205 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL61:
	j	.L51
.L53:
.LBB11:
	.loc 1 207 0
	l32i.n	a10, a2, 4
	mov.n	a11, a4
	.loc 1 206 0
	l32i.n	a5, a2, 0
.LVL62:
	.loc 1 207 0
	callx8	a3
.LVL63:
	beqz.n	a10, .L52
	.loc 1 210 0
	mov.n	a2, a5
.LVL64:
.L51:
.LBE11:
	.loc 1 205 0 discriminator 1
	bnez.n	a2, .L53
.L52:
.LBE10:
	.loc 1 213 0
	retw.n
.LFE14:
	.size	list_foreach, .-list_foreach
	.section	.text.list_begin,"ax",@progbits
	.literal_position
	.literal .LC55, .LC0
	.literal .LC56, __func__$2566
	.literal .LC57, .LC3
	.align	4
	.global	list_begin
	.type	list_begin, @function
list_begin:
.LFB15:
	.loc 1 216 0
.LVL65:
	entry	sp, 32
.LCFI12:
	.loc 1 217 0
	bnez.n	a2, .L58
.LVL66:
.LBB14:
.LBB15:
	l32r	a13, .LC55
	l32r	a12, .LC56
	l32r	a10, .LC57
	movi	a11, 0xd9
	call8	__assert_func
.LVL67:
.L58:
.LBE15:
.LBE14:
	.loc 1 219 0
	l32i.n	a2, a2, 0
.LVL68:
	retw.n
.LFE15:
	.size	list_begin, .-list_begin
	.section	.text.list_end,"ax",@progbits
	.align	4
	.global	list_end
	.type	list_end, @function
list_end:
.LFB16:
	.loc 1 222 0
.LVL69:
	entry	sp, 32
.LCFI13:
	.loc 1 223 0
	bnez.n	a2, .L60
	call8	list_end$part$2
.LVL70:
.L60:
	.loc 1 225 0
	movi.n	a2, 0
.LVL71:
	retw.n
.LFE16:
	.size	list_end, .-list_end
	.section	.rodata.str1.1
.LC58:
	.string	"node != NULL"
	.section	.text.list_next,"ax",@progbits
	.literal_position
	.literal .LC59, .LC58
	.literal .LC60, __func__$2574
	.literal .LC61, .LC3
	.align	4
	.global	list_next
	.type	list_next, @function
list_next:
.LFB17:
	.loc 1 228 0
.LVL72:
	entry	sp, 32
.LCFI14:
	.loc 1 229 0
	bnez.n	a2, .L62
.LVL73:
.LBB18:
.LBB19:
	l32r	a13, .LC59
	l32r	a12, .LC60
	l32r	a10, .LC61
	movi	a11, 0xe5
	call8	__assert_func
.LVL74:
.L62:
.LBE19:
.LBE18:
	.loc 1 231 0
	l32i.n	a2, a2, 0
.LVL75:
	retw.n
.LFE17:
	.size	list_next, .-list_next
	.section	.text.list_node,"ax",@progbits
	.literal_position
	.literal .LC62, .LC58
	.literal .LC63, __func__$2578
	.literal .LC64, .LC3
	.align	4
	.global	list_node
	.type	list_node, @function
list_node:
.LFB18:
	.loc 1 234 0
.LVL76:
	entry	sp, 32
.LCFI15:
	.loc 1 235 0
	bnez.n	a2, .L64
.LVL77:
.LBB22:
.LBB23:
	l32r	a13, .LC62
	l32r	a12, .LC63
	l32r	a10, .LC64
	movi	a11, 0xeb
	call8	__assert_func
.LVL78:
.L64:
.LBE23:
.LBE22:
	.loc 1 237 0
	l32i.n	a2, a2, 4
.LVL79:
	retw.n
.LFE18:
	.size	list_node, .-list_node
	.section	.text.list_contains,"ax",@progbits
	.literal_position
	.literal .LC65, .LC0
	.literal .LC66, __func__$2490
	.literal .LC67, .LC3
	.literal .LC68, .LC29
	.align	4
	.global	list_contains
	.type	list_contains, @function
list_contains:
.LFB4:
	.loc 1 58 0
.LVL80:
	entry	sp, 32
.LCFI16:
	.loc 1 59 0
	bnez.n	a2, .L66
	.loc 1 59 0 is_stmt 0 discriminator 1
	l32r	a13, .LC65
	l32r	a12, .LC66
	movi.n	a11, 0x3b
	j	.L73
.L66:
	.loc 1 60 0 is_stmt 1
	bnez.n	a3, .L67
	.loc 1 60 0 is_stmt 0 discriminator 1
	l32r	a13, .LC68
	l32r	a12, .LC66
	movi.n	a11, 0x3c
.L73:
	l32r	a10, .LC67
	call8	__assert_func
.LVL81:
.L67:
.LBB24:
	.loc 1 62 0 is_stmt 1
	mov.n	a10, a2
	call8	list_begin
.LVL82:
	j	.L72
.LVL83:
.L70:
	.loc 1 63 0
	mov.n	a10, a2
	call8	list_node
.LVL84:
	beq	a3, a10, .L71
	.loc 1 62 0 discriminator 2
	mov.n	a10, a2
	call8	list_next
.LVL85:
.L72:
	mov.n	a2, a10
.LVL86:
	bnez.n	a10, .L70
	retw.n
.L71:
	.loc 1 64 0
	movi.n	a2, 1
.LVL87:
.LBE24:
	.loc 1 69 0
	retw.n
.LFE4:
	.size	list_contains, .-list_contains
	.section	.text.list_free_node,"ax",@progbits
	.literal_position
	.literal .LC69, .LC0
	.literal .LC70, __func__$2583
	.literal .LC71, .LC3
	.literal .LC72, .LC58
	.align	4
	.global	list_free_node
	.type	list_free_node, @function
list_free_node:
.LFB19:
	.loc 1 240 0
.LVL88:
	entry	sp, 32
.LCFI17:
	.loc 1 241 0
	bnez.n	a2, .L75
.LVL89:
.LBB27:
.LBB28:
	l32r	a13, .LC69
	l32r	a12, .LC70
	movi	a11, 0xf1
	j	.L81
.LVL90:
.L75:
.LBE28:
.LBE27:
	.loc 1 242 0
	bnez.n	a3, .L76
	.loc 1 242 0 is_stmt 0 discriminator 1
	l32r	a13, .LC72
	l32r	a12, .LC70
	movi	a11, 0xf2
.L81:
	l32r	a10, .LC71
	call8	__assert_func
.LVL91:
.L76:
	.loc 1 246 0 is_stmt 1
	l32i.n	a8, a2, 12
	.loc 1 244 0
	l32i.n	a4, a3, 0
.LVL92:
	.loc 1 246 0
	beqz.n	a8, .L77
	.loc 1 247 0
	l32i.n	a10, a3, 4
	callx8	a8
.LVL93:
.L77:
	.loc 1 249 0
	mov.n	a10, a3
	call8	free
.LVL94:
	.loc 1 250 0
	l32i.n	a3, a2, 8
.LVL95:
	addi.n	a3, a3, -1
	s32i.n	a3, a2, 8
	.loc 1 253 0
	mov.n	a2, a4
.LVL96:
	retw.n
.LFE19:
	.size	list_free_node, .-list_free_node
	.section	.text.list_remove,"ax",@progbits
	.literal_position
	.literal .LC73, .LC0
	.literal .LC74, __func__$2537
	.literal .LC75, .LC3
	.literal .LC76, .LC29
	.align	4
	.global	list_remove
	.type	list_remove, @function
list_remove:
.LFB12:
	.loc 1 160 0
.LVL97:
	entry	sp, 32
.LCFI18:
	.loc 1 161 0
	bnez.n	a2, .L83
	.loc 1 161 0 is_stmt 0 discriminator 1
	l32r	a13, .LC73
	l32r	a12, .LC74
	movi	a11, 0xa1
	j	.L93
.L83:
	.loc 1 162 0 is_stmt 1
	bnez.n	a3, .L84
	.loc 1 162 0 is_stmt 0 discriminator 1
	l32r	a13, .LC76
	l32r	a12, .LC74
	movi	a11, 0xa2
.L93:
	l32r	a10, .LC75
	call8	__assert_func
.LVL98:
.L84:
	.loc 1 164 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL99:
	bnez.n	a10, .L91
	.loc 1 168 0
	l32i.n	a5, a2, 0
	l32i.n	a4, a5, 4
	bne	a3, a4, .L86
.LBB29:
	.loc 1 169 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	list_free_node
.LVL100:
	.loc 1 170 0
	l32i.n	a4, a2, 4
	l32i.n	a3, a2, 0
.LVL101:
	bne	a4, a3, .L87
	.loc 1 171 0
	s32i.n	a10, a2, 4
.L87:
	.loc 1 173 0
	s32i.n	a10, a2, 0
	.loc 1 174 0
	movi.n	a10, 1
.LVL102:
	j	.L85
.LVL103:
.L86:
.LBE29:
.LBB30:
	.loc 1 177 0
	l32i.n	a4, a5, 0
.LVL104:
	j	.L88
.LVL105:
.L90:
	.loc 1 178 0
	l32i.n	a8, a4, 4
	bne	a3, a8, .L89
	.loc 1 179 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	list_free_node
.LVL106:
	.loc 1 180 0
	l32i.n	a3, a2, 4
.LVL107:
	.loc 1 179 0
	s32i.n	a10, a5, 0
	.loc 1 183 0
	movi.n	a10, 1
	.loc 1 180 0
	bne	a4, a3, .L85
	.loc 1 181 0
	s32i.n	a5, a2, 4
	j	.L85
.LVL108:
.L89:
	.loc 1 177 0 discriminator 2
	mov.n	a5, a4
	l32i.n	a4, a4, 0
.LVL109:
.L88:
	.loc 1 177 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L90
	j	.L85
.LVL110:
.L91:
.LBE30:
	.loc 1 165 0 is_stmt 1
	movi.n	a10, 0
.LVL111:
.L85:
	.loc 1 187 0
	mov.n	a2, a10
.LVL112:
	retw.n
.LFE12:
	.size	list_remove, .-list_remove
	.section	.text.list_clear,"ax",@progbits
	.literal_position
	.literal .LC77, .LC0
	.literal .LC78, __func__$2547
	.literal .LC79, .LC3
	.align	4
	.global	list_clear
	.type	list_clear, @function
list_clear:
.LFB13:
	.loc 1 190 0
.LVL113:
	entry	sp, 32
.LCFI19:
	.loc 1 191 0
	bnez.n	a2, .L95
.LVL114:
.LBB35:
.LBB36:
	l32r	a13, .LC77
	l32r	a12, .LC78
	l32r	a10, .LC79
	movi	a11, 0xbf
	call8	__assert_func
.LVL115:
.L95:
.LBE36:
.LBE35:
.LBB37:
	.loc 1 192 0
	l32i.n	a10, a2, 0
.LVL116:
	j	.L96
.L97:
	.loc 1 193 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL117:
	call8	list_free_node
.LVL118:
.L96:
	.loc 1 192 0 discriminator 1
	bnez.n	a10, .L97
.LBE37:
	.loc 1 195 0
	s32i.n	a10, a2, 0
	.loc 1 196 0
	s32i.n	a10, a2, 4
	.loc 1 197 0
	s32i.n	a10, a2, 8
	retw.n
.LFE13:
	.size	list_clear, .-list_clear
	.section	.text.list_free,"ax",@progbits
	.align	4
	.global	list_free
	.type	list_free, @function
list_free:
.LFB2:
	.loc 1 42 0
.LVL119:
	entry	sp, 32
.LCFI20:
	.loc 1 43 0
	beqz.n	a2, .L98
	.loc 1 47 0
	mov.n	a10, a2
	call8	list_clear
.LVL120:
	.loc 1 48 0
	mov.n	a10, a2
	call8	free
.LVL121:
.L98:
	retw.n
.LFE2:
	.size	list_free, .-list_free
	.section	.rodata.__func__$2583,"a",@progbits
	.type	__func__$2583, @object
	.size	__func__$2583, 15
__func__$2583:
	.string	"list_free_node"
	.section	.rodata.__func__$2578,"a",@progbits
	.type	__func__$2578, @object
	.size	__func__$2578, 10
__func__$2578:
	.string	"list_node"
	.section	.rodata.__func__$2574,"a",@progbits
	.type	__func__$2574, @object
	.size	__func__$2574, 10
__func__$2574:
	.string	"list_next"
	.section	.rodata.__func__$2570,"a",@progbits
	.type	__func__$2570, @object
	.size	__func__$2570, 9
__func__$2570:
	.string	"list_end"
	.section	.rodata.__func__$2566,"a",@progbits
	.type	__func__$2566, @object
	.size	__func__$2566, 11
__func__$2566:
	.string	"list_begin"
	.section	.rodata.__func__$2557,"a",@progbits
	.type	__func__$2557, @object
	.size	__func__$2557, 13
__func__$2557:
	.string	"list_foreach"
	.section	.rodata.__func__$2547,"a",@progbits
	.type	__func__$2547, @object
	.size	__func__$2547, 11
__func__$2547:
	.string	"list_clear"
	.section	.rodata.__func__$2537,"a",@progbits
	.type	__func__$2537, @object
	.size	__func__$2537, 12
__func__$2537:
	.string	"list_remove"
	.section	.rodata.__FUNCTION__$2532,"a",@progbits
	.type	__FUNCTION__$2532, @object
	.size	__FUNCTION__$2532, 12
__FUNCTION__$2532:
	.string	"list_append"
	.section	.rodata.__func__$2530,"a",@progbits
	.type	__func__$2530, @object
	.size	__func__$2530, 12
__func__$2530:
	.string	"list_append"
	.section	.rodata.__FUNCTION__$2525,"a",@progbits
	.type	__FUNCTION__$2525, @object
	.size	__FUNCTION__$2525, 13
__FUNCTION__$2525:
	.string	"list_prepend"
	.section	.rodata.__func__$2523,"a",@progbits
	.type	__func__$2523, @object
	.size	__func__$2523, 13
__func__$2523:
	.string	"list_prepend"
	.section	.rodata.__FUNCTION__$2518,"a",@progbits
	.type	__FUNCTION__$2518, @object
	.size	__FUNCTION__$2518, 18
__FUNCTION__$2518:
	.string	"list_insert_after"
	.section	.rodata.__func__$2516,"a",@progbits
	.type	__func__$2516, @object
	.size	__func__$2516, 18
__func__$2516:
	.string	"list_insert_after"
	.section	.rodata.__func__$2510,"a",@progbits
	.type	__func__$2510, @object
	.size	__func__$2510, 15
__func__$2510:
	.string	"list_back_node"
	.section	.rodata.__func__$2506,"a",@progbits
	.type	__func__$2506, @object
	.size	__func__$2506, 10
__func__$2506:
	.string	"list_back"
	.section	.rodata.__func__$2502,"a",@progbits
	.type	__func__$2502, @object
	.size	__func__$2502, 11
__func__$2502:
	.string	"list_front"
	.section	.rodata.__func__$2498,"a",@progbits
	.type	__func__$2498, @object
	.size	__func__$2498, 12
__func__$2498:
	.string	"list_length"
	.section	.rodata.__func__$2490,"a",@progbits
	.type	__func__$2490, @object
	.size	__func__$2490, 14
__func__$2490:
	.string	"list_contains"
	.section	.rodata.__func__$2485,"a",@progbits
	.type	__func__$2485, @object
	.size	__func__$2485, 14
__func__$2485:
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI10-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI11-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI12-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI14-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI16-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI18-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI19-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI20-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe9f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93
	.uleb128 0x8
	.4byte	0x9e
	.uleb128 0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x48
	.byte	0x6
	.byte	0x1f
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7
	.4byte	0xda
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x8
	.byte	0x1
	.byte	0x7
	.4byte	0xff
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x8
	.4byte	0x173
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x10
	.byte	0x1
	.byte	0xc
	.4byte	0x13c
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe
	.4byte	0x179
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.4byte	0x5f
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x10
	.4byte	0x13c
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x3
	.byte	0xc
	.4byte	0x8d
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x3
	.byte	0xd
	.4byte	0x152
	.uleb128 0x6
	.byte	0x4
	.4byte	0x158
	.uleb128 0xe
	.4byte	0x16c
	.4byte	0x16c
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x33
	.4byte	0x16c
	.byte	0x1
	.4byte	0x1a8
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x33
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x1c3
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ae
	.uleb128 0x12
	.4byte	0xff
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x1c3
	.uleb128 0x14
	.4byte	0x71
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.4byte	0x1b3
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd7
	.4byte	0x179
	.byte	0x1
	.4byte	0x1f1
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd7
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x201
	.4byte	.LASF30
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x201
	.uleb128 0x14
	.4byte	0x71
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdd
	.4byte	0x179
	.byte	0x1
	.4byte	0x22f
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdd
	.4byte	0x1a8
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x23f
	.4byte	.LASF33
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x23f
	.uleb128 0x14
	.4byte	0x71
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	0x22f
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe3
	.4byte	0x179
	.byte	0x1
	.4byte	0x26d
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe3
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x288
	.4byte	.LASF34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x273
	.uleb128 0x12
	.4byte	0xcf
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x288
	.uleb128 0x14
	.4byte	0x71
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe9
	.4byte	0x5d
	.byte	0x1
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe9
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x2b6
	.4byte	.LASF36
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xef
	.4byte	0x179
	.byte	0x1
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xef
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xef
	.4byte	0x179
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x310
	.4byte	.LASF37
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf4
	.4byte	0x179
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xff
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x310
	.uleb128 0x14
	.4byte	0x71
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x300
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x347
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbd
	.4byte	0x2fa
	.uleb128 0x11
	.4byte	.LASF32
	.4byte	0x347
	.4byte	.LASF38
	.uleb128 0x17
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc0
	.4byte	0x179
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0x18
	.4byte	0x206
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x19
	.4byte	0x216
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x216
	.byte	0x9f
	.uleb128 0x1a
	.4byte	0x221
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2570
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2570
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x17
	.4byte	0x2fa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ec
	.uleb128 0x1e
	.4byte	.LASF41
	.byte	0x1
	.byte	0x17
	.4byte	0x13c
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.4byte	0x2fa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0xe76
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF40
	.byte	0x1
	.byte	0x24
	.4byte	0x2fa
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x425
	.uleb128 0x1e
	.4byte	.LASF41
	.byte	0x1
	.byte	0x24
	.4byte	0x13c
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x3a2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x17f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a0
	.uleb128 0x20
	.4byte	0x18f
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	0x19a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2485
	.uleb128 0x21
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x20
	.4byte	0x18f
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1a
	.4byte	0x19a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2485
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2485
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.4byte	0x5f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x503
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x47
	.4byte	0x1a8
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2498
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2498
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x513
	.uleb128 0x14
	.4byte	0x71
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x1d
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x577
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4d
	.4byte	0x1a8
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x577
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2502
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x17f
	.4byte	0x563
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1f1
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.byte	0x55
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5db
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x55
	.4byte	0x1a8
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x5db
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2506
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0x17f
	.4byte	0x5c7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x278
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x5c
	.4byte	0x179
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63f
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5c
	.4byte	0x1a8
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x63f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2510
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x17f
	.4byte	0x62b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x300
	.uleb128 0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0x63
	.4byte	0x16c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x721
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x63
	.4byte	0x2fa
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF47
	.byte	0x1
	.byte	0x63
	.4byte	0x179
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF20
	.byte	0x1
	.byte	0x63
	.4byte	0x5d
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x731
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2516
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x67
	.4byte	0x179
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF48
	.4byte	0x736
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2518
	.uleb128 0x23
	.4byte	.LVL28
	.4byte	0xe6b
	.4byte	0x6cc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL29
	.4byte	0xe76
	.4byte	0x6e4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0xe81
	.uleb128 0x1b
	.4byte	.LVL32
	.4byte	0xe8c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2518
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x731
	.uleb128 0x14
	.4byte	0x71
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0x721
	.uleb128 0x12
	.4byte	0x721
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x76
	.4byte	0x16c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80b
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x76
	.4byte	0x2fa
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF20
	.byte	0x1
	.byte	0x76
	.4byte	0x5d
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x81b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2523
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.4byte	0x179
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF48
	.4byte	0x820
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2525
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0xe6b
	.4byte	0x7b6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0xe76
	.4byte	0x7ce
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0xe81
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0xe8c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2525
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x7f
	.4byte	0x81b
	.uleb128 0x14
	.4byte	0x71
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	0x80b
	.uleb128 0x12
	.4byte	0x80b
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0x89
	.4byte	0x16c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x89
	.4byte	0x2fa
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x1
	.byte	0x89
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x8f3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2530
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8d
	.4byte	0x179
	.4byte	.LLST15
	.uleb128 0x22
	.4byte	.LASF48
	.4byte	0x8f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2532
	.uleb128 0x23
	.4byte	.LVL50
	.4byte	0xe6b
	.4byte	0x89e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0xe76
	.4byte	0x8b6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0xe81
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0xe8c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$2532
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc8
	.4byte	0x179
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a2
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc8
	.4byte	0x1a8
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc8
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc8
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0x9a2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2557
	.uleb128 0x27
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x98e
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0xcd
	.4byte	0x179
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x25
	.4byte	.LASF19
	.byte	0x1
	.byte	0xce
	.4byte	0x179
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LVL63
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x80b
	.uleb128 0x18
	.4byte	0x1c8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa22
	.uleb128 0x20
	.4byte	0x1d8
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2566
	.uleb128 0x21
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x20
	.4byte	0x1d8
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1a
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2566
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2566
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x206
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5b
	.uleb128 0x20
	.4byte	0x216
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	0x221
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2570
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0x34c
	.uleb128 0x29
	.4byte	0x216
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x244
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad6
	.uleb128 0x20
	.4byte	0x254
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	0x25f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2574
	.uleb128 0x21
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x20
	.4byte	0x254
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x1a
	.4byte	0x25f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2574
	.uleb128 0x1b
	.4byte	.LVL74
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2574
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x28d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb51
	.uleb128 0x20
	.4byte	0x29d
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2578
	.uleb128 0x21
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x20
	.4byte	0x29d
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x1a
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2578
	.uleb128 0x1b
	.4byte	.LVL78
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xeb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2578
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x39
	.4byte	0x16c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfe
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x39
	.4byte	0x1a8
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x1
	.byte	0x39
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0xbfe
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2490
	.uleb128 0x27
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0xbea
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3e
	.4byte	0x26d
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	.LVL82
	.4byte	0x1c8
	.4byte	0xbc5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL84
	.4byte	0x28d
	.4byte	0xbd9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x244
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1b3
	.uleb128 0x2a
	.4byte	0x2bb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9c
	.uleb128 0x20
	.4byte	0x2cb
	.4byte	.LLST27
	.uleb128 0x20
	.4byte	0x2d6
	.4byte	.LLST28
	.uleb128 0x1a
	.4byte	0x2e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2583
	.uleb128 0x1a
	.4byte	0x2ee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xc74
	.uleb128 0x20
	.4byte	0x2cb
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	0x2d6
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x2b
	.4byte	0x2ee
	.uleb128 0x1a
	.4byte	0x2e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2583
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL91
	.4byte	0xe6b
	.4byte	0xc8b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL94
	.4byte	0xe97
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9f
	.4byte	0x16c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7f
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9f
	.4byte	0x2fa
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9f
	.4byte	0x5d
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	0xd7f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2537
	.uleb128 0x27
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xd15
	.uleb128 0x25
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa9
	.4byte	0x179
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0x2bb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xd57
	.uleb128 0x25
	.4byte	.LASF55
	.byte	0x1
	.byte	0xb1
	.4byte	0x179
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb1
	.4byte	0x179
	.4byte	.LLST35
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x2bb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL98
	.4byte	0xe6b
	.4byte	0xd6e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0x17f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x503
	.uleb128 0x18
	.4byte	0x315
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe24
	.uleb128 0x19
	.4byte	0x321
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	0x32c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2547
	.uleb128 0x27
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0xe00
	.uleb128 0x20
	.4byte	0x321
	.4byte	.LLST36
	.uleb128 0x21
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1a
	.4byte	0x32c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2547
	.uleb128 0x1b
	.4byte	.LVL115
	.4byte	0xe6b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2547
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x2c
	.4byte	0x33a
	.4byte	.LLST37
	.uleb128 0x1b
	.4byte	.LVL118
	.4byte	0x2bb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF64
	.byte	0x1
	.byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6b
	.uleb128 0x26
	.4byte	.LASF31
	.byte	0x1
	.byte	0x29
	.4byte	0x2fa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL120
	.4byte	0x315
	.4byte	0xe5a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL121
	.4byte	0xe97
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x4
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x5
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0x6b
	.uleb128 0x2e
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE0
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
	.4byte	.LFE1
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
	.4byte	.LFE3
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
	.4byte	.LFE5
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
	.4byte	.LFE6
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
	.4byte	.LFE7
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
	.4byte	.LFE8
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
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE15
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LFE13
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"list_length"
.LASF50:
	.string	"list_append"
.LASF17:
	.string	"size_t"
.LASF55:
	.string	"prev"
.LASF6:
	.string	"long long unsigned int"
.LASF19:
	.string	"next"
.LASF15:
	.string	"ESP_LOG_DEBUG"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"list_new"
.LASF34:
	.string	"list_next"
.LASF7:
	.string	"long int"
.LASF49:
	.string	"list_prepend"
.LASF59:
	.string	"esp_log_write"
.LASF53:
	.string	"list_contains"
.LASF27:
	.string	"list_iter_cb"
.LASF54:
	.string	"list_remove"
.LASF25:
	.string	"free_cb"
.LASF4:
	.string	"unsigned int"
.LASF37:
	.string	"list_free_node"
.LASF9:
	.string	"long unsigned int"
.LASF48:
	.string	"__FUNCTION__"
.LASF61:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"list_t"
.LASF20:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"callback"
.LASF44:
	.string	"list_back"
.LASF14:
	.string	"ESP_LOG_INFO"
.LASF23:
	.string	"tail"
.LASF8:
	.string	"sizetype"
.LASF46:
	.string	"list_insert_after"
.LASF18:
	.string	"list_node_t"
.LASF45:
	.string	"list_back_node"
.LASF26:
	.string	"list_free_cb"
.LASF47:
	.string	"prev_node"
.LASF63:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF28:
	.string	"_Bool"
.LASF56:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"node"
.LASF30:
	.string	"list_begin"
.LASF2:
	.string	"short int"
.LASF58:
	.string	"esp_log_timestamp"
.LASF12:
	.string	"ESP_LOG_ERROR"
.LASF29:
	.string	"list_is_empty"
.LASF32:
	.string	"__func__"
.LASF39:
	.string	"list_new_internal"
.LASF36:
	.string	"list_node"
.LASF22:
	.string	"head"
.LASF51:
	.string	"list_foreach"
.LASF24:
	.string	"length"
.LASF10:
	.string	"char"
.LASF16:
	.string	"ESP_LOG_VERBOSE"
.LASF11:
	.string	"ESP_LOG_NONE"
.LASF52:
	.string	"context"
.LASF60:
	.string	"free"
.LASF38:
	.string	"list_clear"
.LASF13:
	.string	"ESP_LOG_WARN"
.LASF57:
	.string	"calloc"
.LASF64:
	.string	"list_free"
.LASF33:
	.string	"list_end"
.LASF31:
	.string	"list"
.LASF43:
	.string	"list_front"
.LASF62:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/list.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
