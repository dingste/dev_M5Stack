	.file	"mqtt_outbox.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_outbox.c"
.LC2:
	.string	"OUTBOX"
.LC4:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC6:
	.string	"Memory exhausted"
	.section	.text.outbox_init,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, __FUNCTION__$6701
	.align	4
	.global	outbox_init
	.type	outbox_init, @function
outbox_init:
.LFB45:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_outbox.c"
	.loc 1 28 0
	entry	sp, 48
.LCFI0:
	.loc 1 29 0
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 30 0
	bnez.n	a10, .L2
	.loc 1 30 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL2:
	l32r	a8, .LC7
	l32r	a11, .LC3
	s32i.n	a8, sp, 8
	l32r	a8, .LC8
	l32r	a15, .LC1
	s32i.n	a8, sp, 4
	l32r	a12, .LC5
	movi.n	a8, 0x1e
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 30 0 is_stmt 1 discriminator 4
	retw.n
.L2:
	.loc 1 31 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 31 0
	s32i.n	a10, a2, 4
	.loc 1 33 0
	retw.n
.LFE45:
	.size	outbox_init, .-outbox_init
	.section	.text.outbox_enqueue,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC10, .LC2
	.literal .LC11, .LC4
	.literal .LC12, .LC6
	.literal .LC13, __FUNCTION__$6708
	.align	4
	.global	outbox_enqueue
	.type	outbox_enqueue, @function
outbox_enqueue:
.LFB46:
	.loc 1 36 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 37 0
	movi.n	a11, 0x30
	movi.n	a10, 1
	call8	calloc
.LVL5:
	mov.n	a6, a10
.LVL6:
	.loc 1 38 0
	bnez.n	a10, .L5
	.loc 1 38 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL7:
	l32r	a2, .LC12
.LVL8:
	l32r	a11, .LC10
	s32i.n	a2, sp, 8
	l32r	a2, .LC13
	l32r	a15, .LC9
	s32i.n	a2, sp, 4
	l32r	a12, .LC11
	movi.n	a2, 0x26
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	j	.L12
.LVL10:
.L5:
	.loc 1 39 0 is_stmt 1
	l32i.n	a7, a3, 8
	.loc 1 42 0
	s32i.n	a5, a10, 28
	.loc 1 39 0
	s32i.n	a7, a10, 8
	.loc 1 40 0
	l32i.n	a7, a3, 16
	.loc 1 43 0
	l32i.n	a5, a3, 4
	.loc 1 40 0
	s32i.n	a7, a10, 12
	.loc 1 41 0
	l32i.n	a7, a3, 12
	.loc 1 42 0
	s32i.n	a4, a10, 24
	.loc 1 41 0
	s32i.n	a7, a10, 16
	.loc 1 43 0
	l32i.n	a7, a3, 24
	.loc 1 44 0
	movi.n	a4, 0
.LVL11:
	.loc 1 43 0
	add.n	a10, a5, a7
	.loc 1 44 0
	s32i.n	a4, a6, 36
	.loc 1 43 0
	s32i.n	a10, a6, 4
	.loc 1 45 0
	call8	malloc
.LVL12:
	s32i.n	a10, a6, 0
	mov.n	a4, a10
	.loc 1 46 0
	bnez.n	a10, .L7
	.loc 1 46 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL13:
	l32r	a2, .LC12
.LVL14:
	l32r	a11, .LC10
	s32i.n	a2, sp, 8
	l32r	a2, .LC13
	l32r	a15, .LC9
	s32i.n	a2, sp, 4
	l32r	a12, .LC11
	movi.n	a2, 0x31
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 46 0 is_stmt 1 discriminator 4
	mov.n	a10, a6
	call8	free
.LVL16:
	.loc 1 46 0 discriminator 4
	mov.n	a2, a4
	retw.n
.LVL17:
.L7:
	.loc 1 50 0
	l32i.n	a11, a3, 0
	mov.n	a12, a5
	call8	memcpy
.LVL18:
	.loc 1 51 0
	l32i.n	a11, a3, 20
	beqz.n	a11, .L8
	.loc 1 52 0
	mov.n	a12, a7
	add.n	a10, a4, a5
	call8	memcpy
.LVL19:
.L8:
	.loc 1 54 0
	movi.n	a3, 0
.LVL20:
	s32i.n	a3, a6, 40
	.loc 1 54 0
	l32i.n	a3, a2, 4
	s32i.n	a6, a3, 0
	addi	a3, a6, 40
	s32i.n	a3, a2, 4
.LVL21:
.L12:
	.loc 1 56 0
	mov.n	a2, a6
	.loc 1 57 0
	retw.n
.LFE46:
	.size	outbox_enqueue, .-outbox_enqueue
	.section	.text.outbox_get,"ax",@progbits
	.align	4
	.global	outbox_get
	.type	outbox_get, @function
outbox_get:
.LFB47:
	.loc 1 60 0
.LVL22:
	entry	sp, 32
.LCFI2:
	.loc 1 62 0
	l32i.n	a2, a2, 0
.LVL23:
	j	.L14
.L16:
	.loc 1 63 0
	l32i.n	a8, a2, 8
	beq	a8, a3, .L15
	.loc 1 62 0 discriminator 2
	l32i.n	a2, a2, 40
.LVL24:
.L14:
	.loc 1 62 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L16
.L15:
	.loc 1 68 0 is_stmt 1
	retw.n
.LFE47:
	.size	outbox_get, .-outbox_get
	.section	.text.outbox_dequeue,"ax",@progbits
	.align	4
	.global	outbox_dequeue
	.type	outbox_dequeue, @function
outbox_dequeue:
.LFB48:
	.loc 1 71 0
.LVL25:
	entry	sp, 32
.LCFI3:
	.loc 1 73 0
	l32i.n	a2, a2, 0
.LVL26:
	j	.L19
.L22:
	.loc 1 74 0
	l32i.n	a8, a2, 36
	bne	a8, a3, .L20
	.loc 1 75 0
	beqz.n	a4, .L21
	.loc 1 76 0
	l32i.n	a8, a2, 24
	l32i.n	a9, a2, 28
	s32i.n	a8, a4, 0
	s32i.n	a9, a4, 4
	retw.n
.L20:
	.loc 1 73 0 discriminator 2
	l32i.n	a2, a2, 40
.LVL27:
.L19:
	.loc 1 73 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L22
.L21:
	.loc 1 82 0 is_stmt 1
	retw.n
.LFE48:
	.size	outbox_dequeue, .-outbox_dequeue
	.section	.text.outbox_item_get_data,"ax",@progbits
	.align	4
	.global	outbox_item_get_data
	.type	outbox_item_get_data, @function
outbox_item_get_data:
.LFB49:
	.loc 1 85 0
.LVL28:
	entry	sp, 32
.LCFI4:
	.loc 1 85 0
	mov.n	a8, a2
	.loc 1 86 0
	beqz.n	a2, .L26
	.loc 1 87 0
	l32i.n	a2, a2, 4
.LVL29:
	s32i.n	a2, a3, 0
	.loc 1 88 0
	l32i.n	a2, a8, 8
	s16i	a2, a4, 0
	.loc 1 89 0
	l32i.n	a2, a8, 12
	s32i.n	a2, a5, 0
	.loc 1 90 0
	l32i.n	a2, a8, 16
	s32i.n	a2, a6, 0
	.loc 1 91 0
	l32i.n	a2, a8, 0
.L26:
	.loc 1 94 0
	retw.n
.LFE49:
	.size	outbox_item_get_data, .-outbox_item_get_data
	.section	.text.outbox_delete,"ax",@progbits
	.align	4
	.global	outbox_delete
	.type	outbox_delete, @function
outbox_delete:
.LFB50:
	.loc 1 97 0
.LVL30:
	entry	sp, 32
.LCFI5:
	.loc 1 99 0
	l32i.n	a8, a2, 0
.LVL31:
	mov.n	a5, a8
	j	.L29
.LVL32:
.L37:
	.loc 1 100 0 discriminator 1
	l8ui	a10, a5, 12
	bne	a10, a4, .L30
	.loc 1 101 0
	bne	a5, a8, .L40
	.loc 1 101 0 is_stmt 0 discriminator 1
	s32i.n	a9, a2, 0
	bnez.n	a9, .L33
	.loc 1 101 0 is_stmt 1 discriminator 3
	s32i.n	a2, a2, 4
	j	.L33
.LVL33:
.L38:
.LBB2:
	mov.n	a8, a10
.LVL34:
.L40:
	.loc 1 101 0 is_stmt 0 discriminator 4
	l32i.n	a10, a8, 40
	bne	a5, a10, .L38
	.loc 1 101 0 discriminator 7
	s32i.n	a9, a8, 40
	bnez.n	a9, .L33
	.loc 1 101 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL35:
	s32i.n	a8, a2, 4
.LVL36:
.L33:
.LBE2:
	.loc 1 102 0
	l32i.n	a10, a5, 0
	.loc 1 105 0
	movi.n	a2, 0
.LVL37:
	.loc 1 102 0
	call8	free
.LVL38:
	.loc 1 103 0
	mov.n	a10, a5
	call8	free
.LVL39:
	.loc 1 105 0
	retw.n
.LVL40:
.L30:
.LBB3:
	mov.n	a5, a9
.LVL41:
.L29:
.LBE3:
	.loc 1 99 0 discriminator 1
	beqz.n	a5, .L39
	.loc 1 100 0 discriminator 3
	l32i.n	a10, a5, 8
	.loc 1 99 0 discriminator 3
	l32i.n	a9, a5, 40
.LVL42:
	.loc 1 100 0 discriminator 3
	bne	a10, a3, .L30
	j	.L37
.LVL43:
.L39:
	.loc 1 109 0
	movi.n	a2, -1
.LVL44:
	.loc 1 110 0
	retw.n
.LFE50:
	.size	outbox_delete, .-outbox_delete
	.section	.text.outbox_delete_msgid,"ax",@progbits
	.align	4
	.global	outbox_delete_msgid
	.type	outbox_delete_msgid, @function
outbox_delete_msgid:
.LFB51:
	.loc 1 112 0
.LVL45:
	entry	sp, 32
.LCFI6:
	.loc 1 112 0
	mov.n	a4, a2
	.loc 1 114 0
	l32i.n	a2, a2, 0
.LVL46:
	j	.L42
.LVL47:
.L49:
	.loc 1 116 0
	l32i.n	a8, a4, 0
	bne	a2, a8, .L52
	.loc 1 116 0 is_stmt 0 discriminator 1
	s32i.n	a5, a4, 0
	bnez.n	a5, .L45
	.loc 1 116 0 is_stmt 1 discriminator 3
	s32i.n	a4, a4, 4
	j	.L45
.LVL48:
.L51:
.LBB4:
	mov.n	a8, a9
.LVL49:
.L52:
	.loc 1 116 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 40
	bne	a2, a9, .L51
	.loc 1 116 0 discriminator 7
	s32i.n	a5, a8, 40
	bnez.n	a5, .L45
	.loc 1 116 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL50:
	s32i.n	a8, a4, 4
.LVL51:
.L45:
.LBE4:
	.loc 1 117 0
	l32i.n	a10, a2, 0
	call8	free
.LVL52:
	.loc 1 118 0
	mov.n	a10, a2
	call8	free
.LVL53:
.L50:
	.loc 1 114 0 discriminator 1
	mov.n	a2, a5
.LVL54:
.L42:
	beqz.n	a2, .L48
	.loc 1 115 0 discriminator 3
	l32i.n	a8, a2, 8
	.loc 1 114 0 discriminator 3
	l32i.n	a5, a2, 40
.LVL55:
	.loc 1 115 0 discriminator 3
	bne	a8, a3, .L50
	j	.L49
.LVL56:
.L48:
	.loc 1 123 0
	retw.n
.LFE51:
	.size	outbox_delete_msgid, .-outbox_delete_msgid
	.section	.text.outbox_set_pending,"ax",@progbits
	.align	4
	.global	outbox_set_pending
	.type	outbox_set_pending, @function
outbox_set_pending:
.LFB52:
	.loc 1 125 0
.LVL57:
	entry	sp, 32
.LCFI7:
	.loc 1 126 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	outbox_get
.LVL58:
	.loc 1 131 0
	movi.n	a2, -1
.LVL59:
	.loc 1 127 0
	beqz.n	a10, .L54
	.loc 1 128 0
	s32i.n	a4, a10, 36
	.loc 1 129 0
	movi.n	a2, 0
.L54:
	.loc 1 132 0
	retw.n
.LFE52:
	.size	outbox_set_pending, .-outbox_set_pending
	.section	.text.outbox_set_tick,"ax",@progbits
	.align	4
	.global	outbox_set_tick
	.type	outbox_set_tick, @function
outbox_set_tick:
.LFB53:
	.loc 1 135 0
.LVL60:
	entry	sp, 32
.LCFI8:
	.loc 1 136 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	outbox_get
.LVL61:
	.loc 1 141 0
	movi.n	a2, -1
.LVL62:
	.loc 1 137 0
	beqz.n	a10, .L57
	.loc 1 138 0
	s32i.n	a4, a10, 24
	s32i.n	a5, a10, 28
	.loc 1 139 0
	movi.n	a2, 0
.L57:
	.loc 1 142 0
	retw.n
.LFE53:
	.size	outbox_set_tick, .-outbox_set_tick
	.section	.text.outbox_delete_msgtype,"ax",@progbits
	.align	4
	.global	outbox_delete_msgtype
	.type	outbox_delete_msgtype, @function
outbox_delete_msgtype:
.LFB54:
	.loc 1 145 0
.LVL63:
	entry	sp, 32
.LCFI9:
	.loc 1 145 0
	mov.n	a4, a2
	.loc 1 147 0
	l32i.n	a2, a2, 0
.LVL64:
	j	.L60
.LVL65:
.L67:
	.loc 1 149 0
	l32i.n	a8, a4, 0
	bne	a2, a8, .L70
	.loc 1 149 0 is_stmt 0 discriminator 1
	s32i.n	a5, a4, 0
	bnez.n	a5, .L63
	.loc 1 149 0 is_stmt 1 discriminator 3
	s32i.n	a4, a4, 4
	j	.L63
.LVL66:
.L69:
.LBB5:
	mov.n	a8, a9
.LVL67:
.L70:
	.loc 1 149 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 40
	bne	a2, a9, .L69
	.loc 1 149 0 discriminator 7
	s32i.n	a5, a8, 40
	bnez.n	a5, .L63
	.loc 1 149 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL68:
	s32i.n	a8, a4, 4
.LVL69:
.L63:
.LBE5:
	.loc 1 150 0
	l32i.n	a10, a2, 0
	call8	free
.LVL70:
	.loc 1 151 0
	mov.n	a10, a2
	call8	free
.LVL71:
.L68:
	.loc 1 147 0 discriminator 1
	mov.n	a2, a5
.LVL72:
.L60:
	beqz.n	a2, .L66
	.loc 1 148 0 discriminator 3
	l32i.n	a8, a2, 12
	.loc 1 147 0 discriminator 3
	l32i.n	a5, a2, 40
.LVL73:
	.loc 1 148 0 discriminator 3
	bne	a8, a3, .L68
	j	.L67
.LVL74:
.L66:
	.loc 1 156 0
	retw.n
.LFE54:
	.size	outbox_delete_msgtype, .-outbox_delete_msgtype
	.section	.text.outbox_delete_expired,"ax",@progbits
	.align	4
	.global	outbox_delete_expired
	.type	outbox_delete_expired, @function
outbox_delete_expired:
.LFB55:
	.loc 1 159 0
.LVL75:
	entry	sp, 48
.LCFI10:
.LVL76:
	.loc 1 159 0
	mov.n	a11, a4
	mov.n	a9, a7
	.loc 1 162 0
	l32i.n	a3, a2, 0
.LVL77:
	.loc 1 160 0
	movi.n	a4, 0
.LVL78:
	.loc 1 162 0
	j	.L72
.LVL79:
.L79:
	.loc 1 164 0
	l32i.n	a8, a2, 0
	bne	a3, a8, .L84
	.loc 1 164 0 is_stmt 0 discriminator 1
	s32i.n	a7, a2, 0
	bnez.n	a7, .L75
	.loc 1 164 0 is_stmt 1 discriminator 3
	s32i.n	a2, a2, 4
	j	.L75
.LVL80:
.L83:
.LBB6:
	mov.n	a8, a10
.LVL81:
.L84:
	.loc 1 164 0 is_stmt 0 discriminator 4
	l32i.n	a10, a8, 40
	bne	a3, a10, .L83
	.loc 1 164 0 discriminator 7
	s32i.n	a7, a8, 40
	bnez.n	a7, .L75
	.loc 1 164 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL82:
	s32i.n	a8, a2, 4
.LVL83:
.L75:
.LBE6:
	.loc 1 165 0
	l32i.n	a10, a3, 0
	s32i.n	a9, sp, 4
	s32i.n	a11, sp, 0
	call8	free
.LVL84:
	.loc 1 166 0
	mov.n	a10, a3
	call8	free
.LVL85:
	.loc 1 167 0
	l32i.n	a11, sp, 0
	l32i.n	a9, sp, 4
	addi.n	a4, a4, 1
.LVL86:
.L82:
	.loc 1 162 0 discriminator 1
	mov.n	a3, a7
.LVL87:
.L72:
	beqz.n	a3, .L78
	.loc 1 163 0 discriminator 3
	l32i.n	a10, a3, 24
	.loc 1 162 0 discriminator 3
	l32i.n	a7, a3, 40
.LVL88:
	.loc 1 163 0 discriminator 3
	sub	a10, a11, a10
	l32i.n	a8, a3, 28
	movi.n	a12, 1
	bltu	a11, a10, .L80
	movi.n	a12, 0
.L80:
	sub	a8, a5, a8
	sub	a8, a8, a12
	blt	a9, a8, .L79
	bne	a8, a9, .L82
	bltu	a6, a10, .L79
	j	.L82
.LVL89:
.L78:
	.loc 1 172 0
	mov.n	a2, a4
.LVL90:
	retw.n
.LFE55:
	.size	outbox_delete_expired, .-outbox_delete_expired
	.section	.text.outbox_get_size,"ax",@progbits
	.align	4
	.global	outbox_get_size
	.type	outbox_get_size, @function
outbox_get_size:
.LFB56:
	.loc 1 175 0
.LVL91:
	entry	sp, 32
.LCFI11:
.LVL92:
	.loc 1 178 0
	l32i.n	a8, a2, 0
.LVL93:
	.loc 1 176 0
	movi.n	a2, 0
.LVL94:
	.loc 1 178 0
	j	.L86
.LVL95:
.L87:
	.loc 1 181 0 discriminator 3
	l32i.n	a9, a8, 4
	.loc 1 178 0 discriminator 3
	l32i.n	a8, a8, 40
.LVL96:
	.loc 1 181 0 discriminator 3
	add.n	a2, a2, a9
.LVL97:
.L86:
	.loc 1 178 0 discriminator 1
	bnez.n	a8, .L87
	.loc 1 184 0
	retw.n
.LFE56:
	.size	outbox_get_size, .-outbox_get_size
	.section	.text.outbox_cleanup,"ax",@progbits
	.align	4
	.global	outbox_cleanup
	.type	outbox_cleanup, @function
outbox_cleanup:
.LFB57:
	.loc 1 187 0
.LVL98:
	entry	sp, 32
.LCFI12:
	.loc 1 188 0
	j	.L89
.L96:
.LBB7:
	.loc 1 189 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a2
	call8	outbox_dequeue
.LVL99:
	mov.n	a4, a10
.LVL100:
	.loc 1 190 0
	beqz.n	a10, .L97
	.loc 1 193 0
	l32i.n	a8, a2, 0
	bne	a10, a8, .L99
	.loc 1 193 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 40
	s32i.n	a8, a2, 0
	bnez.n	a8, .L93
	.loc 1 193 0 is_stmt 1 discriminator 3
	s32i.n	a2, a2, 4
	j	.L93
.LVL101:
.L98:
.LBB8:
	mov.n	a8, a9
.LVL102:
.L99:
	.loc 1 193 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 40
	bne	a4, a9, .L98
	.loc 1 193 0 discriminator 7
	l32i.n	a9, a4, 40
	s32i.n	a9, a8, 40
	bnez.n	a9, .L93
	.loc 1 193 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL103:
	s32i.n	a8, a2, 4
.LVL104:
.L93:
.LBE8:
	.loc 1 194 0
	l32i.n	a10, a4, 0
	call8	free
.LVL105:
	.loc 1 195 0
	mov.n	a10, a4
	call8	free
.LVL106:
.L89:
.LBE7:
	.loc 1 188 0
	mov.n	a10, a2
	call8	outbox_get_size
.LVL107:
	blt	a3, a10, .L96
	.loc 1 197 0
	movi.n	a2, 0
.LVL108:
	retw.n
.LVL109:
.L97:
.LBB9:
	.loc 1 191 0
	movi.n	a2, -1
.LVL110:
.LBE9:
	.loc 1 198 0
	retw.n
.LFE57:
	.size	outbox_cleanup, .-outbox_cleanup
	.section	.text.outbox_destroy,"ax",@progbits
	.align	4
	.global	outbox_destroy
	.type	outbox_destroy, @function
outbox_destroy:
.LFB58:
	.loc 1 201 0
.LVL111:
	entry	sp, 32
.LCFI13:
	.loc 1 203 0
	l32i.n	a3, a2, 0
.LVL112:
	j	.L101
.LVL113:
.L107:
	.loc 1 204 0 discriminator 1
	s32i.n	a4, a2, 0
	bnez.n	a4, .L103
	.loc 1 204 0 discriminator 3
	s32i.n	a2, a2, 4
	j	.L103
.LVL114:
.L109:
.LBB10:
	mov.n	a8, a9
.LVL115:
.L104:
	.loc 1 204 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 40
	bne	a3, a9, .L109
	.loc 1 204 0 discriminator 7
	s32i.n	a4, a8, 40
	bnez.n	a4, .L103
	.loc 1 204 0 is_stmt 1 discriminator 8
	addi	a8, a8, 40
.LVL116:
	s32i.n	a8, a2, 4
.LVL117:
.L103:
.LBE10:
	.loc 1 205 0 discriminator 2
	l32i.n	a10, a3, 0
	call8	free
.LVL118:
	.loc 1 206 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL119:
	.loc 1 203 0 discriminator 2
	mov.n	a3, a4
.LVL120:
.L101:
	.loc 1 203 0 is_stmt 0 discriminator 1
	beqz.n	a3, .L106
	.loc 1 204 0 is_stmt 1 discriminator 3
	l32i.n	a8, a2, 0
	.loc 1 203 0 discriminator 3
	l32i.n	a4, a3, 40
.LVL121:
	.loc 1 204 0 discriminator 3
	bne	a3, a8, .L104
	j	.L107
.LVL122:
.L106:
	.loc 1 208 0
	mov.n	a10, a2
	call8	free
.LVL123:
	retw.n
.LFE58:
	.size	outbox_destroy, .-outbox_destroy
	.section	.rodata.__FUNCTION__$6708,"a",@progbits
	.type	__FUNCTION__$6708, @object
	.size	__FUNCTION__$6708, 15
__FUNCTION__$6708:
	.string	"outbox_enqueue"
	.section	.rodata.__FUNCTION__$6701,"a",@progbits
	.type	__FUNCTION__$6701, @object
	.size	__FUNCTION__$6701, 12
__FUNCTION__$6701:
	.string	"outbox_init"
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI0-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI2-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI3-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI4-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI5-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI6-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI7-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI8-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI9-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI10-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI11-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI12-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI13-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/mqtt_outbox.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb04
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd8
	.4byte	0x3e
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x16
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x19
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x21
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3e
	.byte	0x8
	.byte	0x1f
	.4byte	0x125
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x10
	.4byte	0x130
	.uleb128 0x5
	.byte	0x4
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1
	.byte	0x18
	.4byte	0x15b
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x18
	.4byte	0x166
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x2b1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x11
	.4byte	0x166
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x30
	.byte	0x1
	.byte	0xc
	.4byte	0x1e5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0xe
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x10
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x11
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0x12
	.4byte	0x257
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x13
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x14
	.4byte	0x291
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x15
	.4byte	0x29c
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x6
	.byte	0x12
	.4byte	0x1f0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1c
	.byte	0x6
	.byte	0x15
	.4byte	0x257
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x16
	.4byte	0x262
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x6
	.byte	0x17
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x18
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x19
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1a
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x1b
	.4byte	0x262
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x1c
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0x13
	.4byte	0x82
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x4
	.4byte	0x3e
	.byte	0x6
	.byte	0x1f
	.4byte	0x291
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x6
	.byte	0x24
	.4byte	0x268
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.4byte	0x2b1
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.byte	0x15
	.4byte	0x166
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x166
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1b
	.4byte	0x125
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35b
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1d
	.4byte	0x125
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF57
	.4byte	0x36b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6701
	.uleb128 0x11
	.4byte	.LVL0
	.4byte	0xac7
	.4byte	0x304
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0xad2
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0xadd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6701
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xa4
	.4byte	0x36b
	.uleb128 0x16
	.4byte	0x90
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x35b
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1
	.byte	0x23
	.4byte	0x15b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fa
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x23
	.4byte	0x125
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x1
	.byte	0x23
	.4byte	0x1e5
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.4byte	0x257
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x25
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF57
	.4byte	0x50a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6708
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0xac7
	.4byte	0x3eb
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0xad2
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0xadd
	.4byte	0x446
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6708
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0xae8
	.4byte	0x45d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0xad2
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0xadd
	.4byte	0x4b8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6708
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0xaf3
	.4byte	0x4cc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0xafe
	.4byte	0x4e0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0xafe
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xa4
	.4byte	0x50a
	.uleb128 0x16
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x4fa
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3b
	.4byte	0x15b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x552
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3b
	.4byte	0x125
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3d
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0x46
	.4byte	0x15b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a2
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x46
	.4byte	0x125
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x46
	.4byte	0x291
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.byte	0x46
	.4byte	0x5a2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x48
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x257
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x1
	.byte	0x54
	.4byte	0x262
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.byte	0x54
	.4byte	0x15b
	.4byte	.LLST5
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x54
	.4byte	0x605
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x54
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x54
	.4byte	0x60b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"qos"
	.byte	0x1
	.byte	0x54
	.4byte	0x60b
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x1
	.byte	0x60
	.4byte	0xd7
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x60
	.4byte	0x125
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x60
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0x62
	.4byte	0x15b
	.4byte	.LLST7
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x62
	.4byte	0x15b
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x68a
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x65
	.4byte	0x166
	.4byte	.LLST9
	.byte	0
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6f
	.4byte	0xd7
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72c
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6f
	.4byte	0x125
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x71
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x71
	.4byte	0x15b
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x712
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x74
	.4byte	0x166
	.4byte	.LLST12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL52
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LVL53
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.4byte	0xd7
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x792
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7c
	.4byte	0x125
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7c
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7c
	.4byte	0x291
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x7e
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LVL58
	.4byte	0x50f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x1
	.byte	0x86
	.4byte	0xd7
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x86
	.4byte	0x125
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x86
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.byte	0x86
	.4byte	0x257
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x88
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LVL61
	.4byte	0x50f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x90
	.4byte	0xd7
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x885
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x90
	.4byte	0x125
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x90
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x92
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x92
	.4byte	0x15b
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x86b
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x95
	.4byte	0x166
	.4byte	.LLST17
	.byte	0
	.uleb128 0x13
	.4byte	.LVL70
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LVL71
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9e
	.4byte	0x2c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x930
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9e
	.4byte	0x125
	.4byte	.LLST18
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x1
	.byte	0x9e
	.4byte	0x257
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x9e
	.4byte	0x257
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa1
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0xa1
	.4byte	0x15b
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x916
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa4
	.4byte	0x166
	.4byte	.LLST22
	.byte	0
	.uleb128 0x13
	.4byte	.LVL84
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LVL85
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0xae
	.4byte	0x2c
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x977
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0xae
	.4byte	0x125
	.4byte	.LLST23
	.uleb128 0x1b
	.string	"siz"
	.byte	0x1
	.byte	0xb0
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb1
	.4byte	0x15b
	.4byte	.LLST25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0xba
	.4byte	0xd7
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2a
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0xba
	.4byte	0x125
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0xba
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xa19
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xbd
	.4byte	0x15b
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x9e1
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc1
	.4byte	0x166
	.4byte	.LLST28
	.byte	0
	.uleb128 0x11
	.4byte	.LVL99
	.4byte	0x552
	.4byte	0x9ff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL105
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LVL106
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL107
	.4byte	0x930
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF83
	.byte	0x1
	.byte	0xc8
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab5
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc8
	.4byte	0x125
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xca
	.4byte	0x15b
	.4byte	.LLST29
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0xca
	.4byte	0x15b
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xa87
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0xcc
	.4byte	0x166
	.4byte	.LLST31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL118
	.4byte	0xaf3
	.uleb128 0x11
	.4byte	.LVL119
	.4byte	0xaf3
	.4byte	0xaa4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL123
	.4byte	0xaf3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0xa
	.4byte	0xef
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x20
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x7
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0x6b
	.uleb128 0x20
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x7
	.byte	0x65
	.uleb128 0x20
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LASF84
	.4byte	.LASF84
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	.LFE46
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL75
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LFE55
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL112
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL113
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x78
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
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
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mqtt"
.LASF34:
	.string	"msg_type"
.LASF33:
	.string	"msg_id"
.LASF26:
	.string	"outbox_handle_t"
.LASF83:
	.string	"outbox_destroy"
.LASF61:
	.string	"outbox_delete"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF77:
	.string	"malloc"
.LASF12:
	.string	"sizetype"
.LASF35:
	.string	"msg_qos"
.LASF71:
	.string	"outbox_get_size"
.LASF27:
	.string	"stqh_first"
.LASF84:
	.string	"memcpy"
.LASF72:
	.string	"outbox_cleanup"
.LASF8:
	.string	"__uint16_t"
.LASF55:
	.string	"message"
.LASF38:
	.string	"pending"
.LASF15:
	.string	"uint8_t"
.LASF67:
	.string	"outbox_delete_expired"
.LASF56:
	.string	"item"
.LASF76:
	.string	"esp_log_write"
.LASF78:
	.string	"free"
.LASF62:
	.string	"curelm"
.LASF45:
	.string	"outbox_tick_t"
.LASF60:
	.string	"outbox_item_get_data"
.LASF37:
	.string	"retry_count"
.LASF10:
	.string	"long long int"
.LASF65:
	.string	"outbox_set_tick"
.LASF82:
	.string	"pending_state"
.LASF51:
	.string	"stqe_next"
.LASF29:
	.string	"outbox_item_handle_t"
.LASF11:
	.string	"long int"
.LASF44:
	.string	"remaining_len"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"outbox_message"
.LASF68:
	.string	"current_tick"
.LASF66:
	.string	"outbox_delete_msgtype"
.LASF80:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_outbox.c"
.LASF52:
	.string	"outbox_init"
.LASF47:
	.string	"TRANSMITTED"
.LASF6:
	.string	"unsigned char"
.LASF58:
	.string	"outbox_get"
.LASF3:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF36:
	.string	"tick"
.LASF50:
	.string	"pending_state_t"
.LASF40:
	.string	"outbox_message_handle_t"
.LASF48:
	.string	"ACKNOWLEDGED"
.LASF53:
	.string	"outbox_enqueue"
.LASF14:
	.string	"char"
.LASF70:
	.string	"deleted_items"
.LASF49:
	.string	"CONFIRMED"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"int32_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF31:
	.string	"outbox_item"
.LASF74:
	.string	"calloc"
.LASF19:
	.string	"_Bool"
.LASF42:
	.string	"data"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF69:
	.string	"timeout"
.LASF32:
	.string	"buffer"
.LASF2:
	.string	"short unsigned int"
.LASF13:
	.string	"long unsigned int"
.LASF63:
	.string	"outbox_delete_msgid"
.LASF59:
	.string	"outbox_dequeue"
.LASF46:
	.string	"QUEUED"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF9:
	.string	"__int32_t"
.LASF43:
	.string	"remaining_data"
.LASF75:
	.string	"esp_log_timestamp"
.LASF64:
	.string	"outbox_set_pending"
.LASF73:
	.string	"max_size"
.LASF54:
	.string	"outbox"
.LASF79:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF57:
	.string	"__FUNCTION__"
.LASF28:
	.string	"stqh_last"
.LASF30:
	.string	"outbox_list_t"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"esp_err_t"
.LASF39:
	.string	"next"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
