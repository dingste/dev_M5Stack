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
	.literal .LC8, __FUNCTION__$6606
	.align	4
	.global	outbox_init
	.type	outbox_init, @function
outbox_init:
.LFB36:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_outbox.c"
	.loc 1 27 0
	entry	sp, 48
.LCFI0:
	.loc 1 28 0
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 29 0
	bnez.n	a10, .L2
	.loc 1 29 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL2:
	l32r	a8, .LC7
	l32r	a11, .LC3
	s32i.n	a8, sp, 8
	l32r	a8, .LC8
	l32r	a15, .LC1
	s32i.n	a8, sp, 4
	l32r	a12, .LC5
	movi.n	a8, 0x1d
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 29 0 is_stmt 1 discriminator 4
	retw.n
.L2:
	.loc 1 30 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 30 0
	s32i.n	a10, a2, 4
	.loc 1 32 0
	retw.n
.LFE36:
	.size	outbox_init, .-outbox_init
	.section	.text.outbox_enqueue,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC10, .LC2
	.literal .LC11, .LC4
	.literal .LC12, .LC6
	.literal .LC13, __FUNCTION__$6613
	.align	4
	.global	outbox_enqueue
	.type	outbox_enqueue, @function
outbox_enqueue:
.LFB37:
	.loc 1 35 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 36 0
	movi.n	a11, 0x20
	movi.n	a10, 1
	call8	calloc
.LVL5:
	mov.n	a5, a10
.LVL6:
	.loc 1 37 0
	bnez.n	a10, .L5
	.loc 1 37 0 is_stmt 0 discriminator 4
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
	movi.n	a2, 0x25
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	j	.L12
.LVL10:
.L5:
	.loc 1 38 0 is_stmt 1
	l32i.n	a6, a3, 8
	.loc 1 42 0
	l32i.n	a7, a3, 20
	.loc 1 38 0
	s32i.n	a6, a10, 8
	.loc 1 39 0
	l32i.n	a6, a3, 12
	.loc 1 40 0
	s32i.n	a4, a10, 16
	.loc 1 39 0
	s32i.n	a6, a10, 12
	.loc 1 41 0
	l32i.n	a6, a3, 4
	s32i.n	a6, a10, 4
	.loc 1 42 0
	add.n	a10, a6, a7
	call8	malloc
.LVL11:
	s32i.n	a10, a5, 0
	mov.n	a4, a10
.LVL12:
	.loc 1 43 0
	bnez.n	a10, .L7
	.loc 1 43 0 is_stmt 0 discriminator 4
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
	movi.n	a2, 0x2e
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 43 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
	call8	free
.LVL16:
	.loc 1 43 0 discriminator 4
	mov.n	a2, a4
	retw.n
.LVL17:
.L7:
	.loc 1 47 0
	l32i.n	a11, a3, 0
	mov.n	a12, a6
	call8	memcpy
.LVL18:
	.loc 1 48 0
	l32i.n	a11, a3, 16
	beqz.n	a11, .L8
	.loc 1 49 0
	mov.n	a12, a7
	add.n	a10, a4, a6
	call8	memcpy
.LVL19:
.L8:
	.loc 1 51 0
	movi.n	a3, 0
.LVL20:
	s32i.n	a3, a5, 28
	.loc 1 51 0
	l32i.n	a3, a2, 4
	s32i.n	a5, a3, 0
	addi	a3, a5, 28
	s32i.n	a3, a2, 4
.LVL21:
.L12:
	.loc 1 53 0
	mov.n	a2, a5
	.loc 1 54 0
	retw.n
.LFE37:
	.size	outbox_enqueue, .-outbox_enqueue
	.section	.text.outbox_get,"ax",@progbits
	.align	4
	.global	outbox_get
	.type	outbox_get, @function
outbox_get:
.LFB38:
	.loc 1 57 0
.LVL22:
	entry	sp, 32
.LCFI2:
	.loc 1 59 0
	l32i.n	a2, a2, 0
.LVL23:
	j	.L14
.L16:
	.loc 1 60 0
	l32i.n	a8, a2, 8
	beq	a8, a3, .L15
	.loc 1 59 0 discriminator 2
	l32i.n	a2, a2, 28
.LVL24:
.L14:
	.loc 1 59 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L16
.L15:
	.loc 1 65 0 is_stmt 1
	retw.n
.LFE38:
	.size	outbox_get, .-outbox_get
	.section	.text.outbox_dequeue,"ax",@progbits
	.align	4
	.global	outbox_dequeue
	.type	outbox_dequeue, @function
outbox_dequeue:
.LFB39:
	.loc 1 68 0
.LVL25:
	entry	sp, 32
.LCFI3:
	.loc 1 70 0
	l32i.n	a2, a2, 0
.LVL26:
	j	.L19
.L21:
	.loc 1 71 0
	l8ui	a8, a2, 24
	beqz.n	a8, .L20
	.loc 1 70 0 discriminator 2
	l32i.n	a2, a2, 28
.LVL27:
.L19:
	.loc 1 70 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L21
.L20:
	.loc 1 76 0 is_stmt 1
	retw.n
.LFE39:
	.size	outbox_dequeue, .-outbox_dequeue
	.section	.text.outbox_delete,"ax",@progbits
	.align	4
	.global	outbox_delete
	.type	outbox_delete, @function
outbox_delete:
.LFB40:
	.loc 1 78 0
.LVL28:
	entry	sp, 32
.LCFI4:
	.loc 1 80 0
	l32i.n	a8, a2, 0
.LVL29:
	mov.n	a5, a8
	j	.L25
.LVL30:
.L33:
	.loc 1 81 0 discriminator 1
	l32i.n	a10, a5, 12
	bne	a10, a4, .L26
	.loc 1 82 0
	bne	a5, a8, .L36
	.loc 1 82 0 is_stmt 0 discriminator 1
	s32i.n	a9, a2, 0
	bnez.n	a9, .L29
	.loc 1 82 0 is_stmt 1 discriminator 3
	s32i.n	a2, a2, 4
	j	.L29
.LVL31:
.L34:
.LBB2:
	mov.n	a8, a10
.LVL32:
.L36:
	.loc 1 82 0 is_stmt 0 discriminator 4
	l32i.n	a10, a8, 28
	bne	a5, a10, .L34
	.loc 1 82 0 discriminator 7
	s32i.n	a9, a8, 28
	bnez.n	a9, .L29
	.loc 1 82 0 is_stmt 1 discriminator 8
	addi	a8, a8, 28
.LVL33:
	s32i.n	a8, a2, 4
.LVL34:
.L29:
.LBE2:
	.loc 1 83 0
	l32i.n	a10, a5, 0
	.loc 1 86 0
	movi.n	a2, 0
.LVL35:
	.loc 1 83 0
	call8	free
.LVL36:
	.loc 1 84 0
	mov.n	a10, a5
	call8	free
.LVL37:
	.loc 1 86 0
	retw.n
.LVL38:
.L26:
.LBB3:
	mov.n	a5, a9
.LVL39:
.L25:
.LBE3:
	.loc 1 80 0 discriminator 1
	beqz.n	a5, .L35
	.loc 1 81 0 discriminator 3
	l32i.n	a10, a5, 8
	.loc 1 80 0 discriminator 3
	l32i.n	a9, a5, 28
.LVL40:
	.loc 1 81 0 discriminator 3
	bne	a10, a3, .L26
	j	.L33
.LVL41:
.L35:
	.loc 1 90 0
	movi.n	a2, -1
.LVL42:
	.loc 1 91 0
	retw.n
.LFE40:
	.size	outbox_delete, .-outbox_delete
	.section	.text.outbox_delete_msgid,"ax",@progbits
	.align	4
	.global	outbox_delete_msgid
	.type	outbox_delete_msgid, @function
outbox_delete_msgid:
.LFB41:
	.loc 1 93 0
.LVL43:
	entry	sp, 32
.LCFI5:
	.loc 1 93 0
	mov.n	a4, a2
	.loc 1 95 0
	l32i.n	a2, a2, 0
.LVL44:
	j	.L38
.LVL45:
.L45:
	.loc 1 97 0
	l32i.n	a8, a4, 0
	bne	a2, a8, .L48
	.loc 1 97 0 is_stmt 0 discriminator 1
	s32i.n	a5, a4, 0
	bnez.n	a5, .L41
	.loc 1 97 0 is_stmt 1 discriminator 3
	s32i.n	a4, a4, 4
	j	.L41
.LVL46:
.L47:
.LBB4:
	mov.n	a8, a9
.LVL47:
.L48:
	.loc 1 97 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 28
	bne	a2, a9, .L47
	.loc 1 97 0 discriminator 7
	s32i.n	a5, a8, 28
	bnez.n	a5, .L41
	.loc 1 97 0 is_stmt 1 discriminator 8
	addi	a8, a8, 28
.LVL48:
	s32i.n	a8, a4, 4
.LVL49:
.L41:
.LBE4:
	.loc 1 98 0
	l32i.n	a10, a2, 0
	call8	free
.LVL50:
	.loc 1 99 0
	mov.n	a10, a2
	call8	free
.LVL51:
.L46:
	.loc 1 95 0 discriminator 1
	mov.n	a2, a5
.LVL52:
.L38:
	beqz.n	a2, .L44
	.loc 1 96 0 discriminator 3
	l32i.n	a8, a2, 8
	.loc 1 95 0 discriminator 3
	l32i.n	a5, a2, 28
.LVL53:
	.loc 1 96 0 discriminator 3
	bne	a8, a3, .L46
	j	.L45
.LVL54:
.L44:
	.loc 1 104 0
	retw.n
.LFE41:
	.size	outbox_delete_msgid, .-outbox_delete_msgid
	.section	.text.outbox_set_pending,"ax",@progbits
	.align	4
	.global	outbox_set_pending
	.type	outbox_set_pending, @function
outbox_set_pending:
.LFB42:
	.loc 1 106 0
.LVL55:
	entry	sp, 32
.LCFI6:
	.loc 1 107 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	outbox_get
.LVL56:
	.loc 1 112 0
	movi.n	a2, -1
.LVL57:
	.loc 1 108 0
	beqz.n	a10, .L50
	.loc 1 109 0
	movi.n	a2, 1
	s8i	a2, a10, 24
	.loc 1 110 0
	movi.n	a2, 0
.L50:
	.loc 1 113 0
	retw.n
.LFE42:
	.size	outbox_set_pending, .-outbox_set_pending
	.section	.text.outbox_delete_msgtype,"ax",@progbits
	.align	4
	.global	outbox_delete_msgtype
	.type	outbox_delete_msgtype, @function
outbox_delete_msgtype:
.LFB43:
	.loc 1 116 0
.LVL58:
	entry	sp, 32
.LCFI7:
	.loc 1 116 0
	mov.n	a4, a2
	.loc 1 118 0
	l32i.n	a2, a2, 0
.LVL59:
	j	.L53
.LVL60:
.L60:
	.loc 1 120 0
	l32i.n	a8, a4, 0
	bne	a2, a8, .L63
	.loc 1 120 0 is_stmt 0 discriminator 1
	s32i.n	a5, a4, 0
	bnez.n	a5, .L56
	.loc 1 120 0 is_stmt 1 discriminator 3
	s32i.n	a4, a4, 4
	j	.L56
.LVL61:
.L62:
.LBB5:
	mov.n	a8, a9
.LVL62:
.L63:
	.loc 1 120 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 28
	bne	a2, a9, .L62
	.loc 1 120 0 discriminator 7
	s32i.n	a5, a8, 28
	bnez.n	a5, .L56
	.loc 1 120 0 is_stmt 1 discriminator 8
	addi	a8, a8, 28
.LVL63:
	s32i.n	a8, a4, 4
.LVL64:
.L56:
.LBE5:
	.loc 1 121 0
	l32i.n	a10, a2, 0
	call8	free
.LVL65:
	.loc 1 122 0
	mov.n	a10, a2
	call8	free
.LVL66:
.L61:
	.loc 1 118 0 discriminator 1
	mov.n	a2, a5
.LVL67:
.L53:
	beqz.n	a2, .L59
	.loc 1 119 0 discriminator 3
	l32i.n	a8, a2, 12
	.loc 1 118 0 discriminator 3
	l32i.n	a5, a2, 28
.LVL68:
	.loc 1 119 0 discriminator 3
	bne	a8, a3, .L61
	j	.L60
.LVL69:
.L59:
	.loc 1 127 0
	retw.n
.LFE43:
	.size	outbox_delete_msgtype, .-outbox_delete_msgtype
	.section	.text.outbox_delete_expired,"ax",@progbits
	.align	4
	.global	outbox_delete_expired
	.type	outbox_delete_expired, @function
outbox_delete_expired:
.LFB44:
	.loc 1 130 0
.LVL70:
	entry	sp, 32
.LCFI8:
	.loc 1 130 0
	mov.n	a5, a2
	.loc 1 132 0
	l32i.n	a2, a2, 0
.LVL71:
	j	.L65
.LVL72:
.L72:
	.loc 1 134 0
	l32i.n	a8, a5, 0
	bne	a2, a8, .L75
	.loc 1 134 0 is_stmt 0 discriminator 1
	s32i.n	a6, a5, 0
	bnez.n	a6, .L68
	.loc 1 134 0 is_stmt 1 discriminator 3
	s32i.n	a5, a5, 4
	j	.L68
.LVL73:
.L74:
.LBB6:
	mov.n	a8, a9
.LVL74:
.L75:
	.loc 1 134 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 28
	bne	a2, a9, .L74
	.loc 1 134 0 discriminator 7
	s32i.n	a6, a8, 28
	bnez.n	a6, .L68
	.loc 1 134 0 is_stmt 1 discriminator 8
	addi	a8, a8, 28
.LVL75:
	s32i.n	a8, a5, 4
.LVL76:
.L68:
.LBE6:
	.loc 1 135 0
	l32i.n	a10, a2, 0
	call8	free
.LVL77:
	.loc 1 136 0
	mov.n	a10, a2
	call8	free
.LVL78:
.L73:
	.loc 1 132 0 discriminator 1
	mov.n	a2, a6
.LVL79:
.L65:
	beqz.n	a2, .L71
	.loc 1 133 0 discriminator 3
	l32i.n	a8, a2, 16
	.loc 1 132 0 discriminator 3
	l32i.n	a6, a2, 28
.LVL80:
	.loc 1 133 0 discriminator 3
	sub	a8, a3, a8
	blt	a4, a8, .L72
	j	.L73
.LVL81:
.L71:
	.loc 1 141 0
	retw.n
.LFE44:
	.size	outbox_delete_expired, .-outbox_delete_expired
	.section	.text.outbox_get_size,"ax",@progbits
	.align	4
	.global	outbox_get_size
	.type	outbox_get_size, @function
outbox_get_size:
.LFB45:
	.loc 1 144 0
.LVL82:
	entry	sp, 32
.LCFI9:
.LVL83:
	.loc 1 147 0
	l32i.n	a8, a2, 0
.LVL84:
	.loc 1 145 0
	movi.n	a2, 0
.LVL85:
	.loc 1 147 0
	j	.L77
.LVL86:
.L78:
	.loc 1 148 0 discriminator 3
	l32i.n	a9, a8, 4
	.loc 1 147 0 discriminator 3
	l32i.n	a8, a8, 28
.LVL87:
	.loc 1 148 0 discriminator 3
	add.n	a2, a2, a9
.LVL88:
.L77:
	.loc 1 147 0 discriminator 1
	bnez.n	a8, .L78
	.loc 1 151 0
	retw.n
.LFE45:
	.size	outbox_get_size, .-outbox_get_size
	.section	.text.outbox_cleanup,"ax",@progbits
	.align	4
	.global	outbox_cleanup
	.type	outbox_cleanup, @function
outbox_cleanup:
.LFB46:
	.loc 1 154 0
.LVL89:
	entry	sp, 32
.LCFI10:
	.loc 1 155 0
	j	.L80
.L87:
.LBB7:
	.loc 1 156 0
	mov.n	a10, a2
	call8	outbox_dequeue
.LVL90:
	mov.n	a4, a10
.LVL91:
	.loc 1 157 0
	beqz.n	a10, .L88
	.loc 1 160 0
	l32i.n	a8, a2, 0
	bne	a10, a8, .L90
	.loc 1 160 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 28
	s32i.n	a8, a2, 0
	bnez.n	a8, .L84
	.loc 1 160 0 is_stmt 1 discriminator 3
	s32i.n	a2, a2, 4
	j	.L84
.LVL92:
.L89:
.LBB8:
	mov.n	a8, a9
.LVL93:
.L90:
	.loc 1 160 0 is_stmt 0 discriminator 4
	l32i.n	a9, a8, 28
	bne	a4, a9, .L89
	.loc 1 160 0 discriminator 7
	l32i.n	a9, a4, 28
	s32i.n	a9, a8, 28
	bnez.n	a9, .L84
	.loc 1 160 0 is_stmt 1 discriminator 8
	addi	a8, a8, 28
.LVL94:
	s32i.n	a8, a2, 4
.LVL95:
.L84:
.LBE8:
	.loc 1 161 0
	l32i.n	a10, a4, 0
	call8	free
.LVL96:
	.loc 1 162 0
	mov.n	a10, a4
	call8	free
.LVL97:
.L80:
.LBE7:
	.loc 1 155 0
	mov.n	a10, a2
	call8	outbox_get_size
.LVL98:
	blt	a3, a10, .L87
	.loc 1 164 0
	movi.n	a2, 0
.LVL99:
	retw.n
.LVL100:
.L88:
.LBB9:
	.loc 1 158 0
	movi.n	a2, -1
.LVL101:
.LBE9:
	.loc 1 165 0
	retw.n
.LFE46:
	.size	outbox_cleanup, .-outbox_cleanup
	.section	.text.outbox_destroy,"ax",@progbits
	.align	4
	.global	outbox_destroy
	.type	outbox_destroy, @function
outbox_destroy:
.LFB47:
	.loc 1 168 0
.LVL102:
	entry	sp, 32
.LCFI11:
	.loc 1 169 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	outbox_cleanup
.LVL103:
	.loc 1 170 0
	mov.n	a10, a2
	call8	free
.LVL104:
	retw.n
.LFE47:
	.size	outbox_destroy, .-outbox_destroy
	.section	.rodata.__FUNCTION__$6613,"a",@progbits
	.type	__FUNCTION__$6613, @object
	.size	__FUNCTION__$6613, 15
__FUNCTION__$6613:
	.string	"outbox_enqueue"
	.section	.rodata.__FUNCTION__$6606,"a",@progbits
	.type	__FUNCTION__$6606, @object
	.size	__FUNCTION__$6606, 12
__FUNCTION__$6606:
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI0-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI4-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI5-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI6-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI7-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI8-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI10-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI11-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/mqtt_outbox.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x926
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x25
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x6
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0xfe
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x10
	.4byte	0x109
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10f
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0x17
	.4byte	0x134
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	0x13f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x17
	.4byte	0x233
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x11
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x145
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x20
	.byte	0x1
	.byte	0xc
	.4byte	0x1b2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd
	.4byte	0x88
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf
	.4byte	0x25
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.4byte	0x25
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x11
	.4byte	0x25
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x12
	.4byte	0x25
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x13
	.4byte	0xc1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x14
	.4byte	0x21e
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0x12
	.4byte	0x1bd
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x18
	.byte	0x5
	.byte	0x14
	.4byte	0x218
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x15
	.4byte	0x218
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x5
	.byte	0x16
	.4byte	0x25
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x17
	.4byte	0x25
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0x18
	.4byte	0x25
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x19
	.4byte	0x218
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1a
	.4byte	0x25
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.4byte	0x233
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0x14
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13f
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1a
	.4byte	0xfe
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1c
	.4byte	0xfe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF45
	.4byte	0x2ed
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6606
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0x8e9
	.4byte	0x286
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x8f4
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x8ff
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x4d
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6606
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x8e
	.4byte	0x2ed
	.uleb128 0x15
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x2dd
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x22
	.4byte	0x134
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47c
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x22
	.4byte	0xfe
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x22
	.4byte	0x1b2
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x24
	.4byte	0x134
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	.LASF45
	.4byte	0x48c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6613
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0x8e9
	.4byte	0x36d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x8f4
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x8ff
	.4byte	0x3c8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6613
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x90a
	.4byte	0x3df
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x8f4
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x8ff
	.4byte	0x43a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6613
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x915
	.4byte	0x44e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x920
	.4byte	0x462
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x920
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x8e
	.4byte	0x48c
	.uleb128 0x15
	.4byte	0x7a
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x47c
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x38
	.4byte	0x134
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d4
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x38
	.4byte	0xfe
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3a
	.4byte	0x134
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x43
	.4byte	0x134
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x43
	.4byte	0xfe
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x45
	.4byte	0x134
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4d
	.4byte	0xb6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59d
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4d
	.4byte	0xfe
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4f
	.4byte	0x134
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x4f
	.4byte	0x134
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x583
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x52
	.4byte	0x13f
	.4byte	.LLST8
	.byte	0
	.uleb128 0x12
	.4byte	.LVL36
	.4byte	0x915
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5c
	.4byte	0xb6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x625
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5c
	.4byte	0xfe
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5e
	.4byte	0x134
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x5e
	.4byte	0x134
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x60b
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x61
	.4byte	0x13f
	.4byte	.LLST11
	.byte	0
	.uleb128 0x12
	.4byte	.LVL50
	.4byte	0x915
	.uleb128 0x13
	.4byte	.LVL51
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x69
	.4byte	0xb6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x69
	.4byte	0xfe
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6b
	.4byte	0x134
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x13
	.4byte	.LVL56
	.4byte	0x491
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x73
	.4byte	0xb6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x73
	.4byte	0xfe
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x73
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x75
	.4byte	0x134
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x75
	.4byte	0x134
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x6ec
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x78
	.4byte	0x13f
	.4byte	.LLST15
	.byte	0
	.uleb128 0x12
	.4byte	.LVL65
	.4byte	0x915
	.uleb128 0x13
	.4byte	.LVL66
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.byte	0x81
	.4byte	0xb6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79b
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x81
	.4byte	0xfe
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.byte	0x81
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x81
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x83
	.4byte	0x134
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x83
	.4byte	0x134
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x781
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x86
	.4byte	0x13f
	.4byte	.LLST18
	.byte	0
	.uleb128 0x12
	.4byte	.LVL77
	.4byte	0x915
	.uleb128 0x13
	.4byte	.LVL78
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e2
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8f
	.4byte	0xfe
	.4byte	.LLST19
	.uleb128 0x1a
	.string	"siz"
	.byte	0x1
	.byte	0x91
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x92
	.4byte	0x134
	.4byte	.LLST21
	.byte	0
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x99
	.4byte	0xb6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88b
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x99
	.4byte	0xfe
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x87a
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9c
	.4byte	0x134
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x84c
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa0
	.4byte	0x13f
	.4byte	.LLST24
	.byte	0
	.uleb128 0x10
	.4byte	.LVL90
	.4byte	0x4d4
	.4byte	0x860
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL96
	.4byte	0x915
	.uleb128 0x13
	.4byte	.LVL97
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL98
	.4byte	0x79b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa7
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d7
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa7
	.4byte	0xfe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL103
	.4byte	0x7e2
	.4byte	0x8c6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL104
	.4byte	0x915
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"TAG"
	.byte	0x1
	.byte	0xa
	.4byte	0xc8
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x1f
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1f
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.byte	0x65
	.uleb128 0x1f
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LASF70
	.4byte	.LASF70
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.4byte	.LFE37
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
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE38
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mqtt"
.LASF31:
	.string	"msg_type"
.LASF30:
	.string	"msg_id"
.LASF23:
	.string	"outbox_handle_t"
.LASF61:
	.string	"outbox_destroy"
.LASF49:
	.string	"outbox_delete"
.LASF4:
	.string	"short int"
.LASF65:
	.string	"malloc"
.LASF10:
	.string	"sizetype"
.LASF57:
	.string	"outbox_get_size"
.LASF24:
	.string	"stqh_first"
.LASF70:
	.string	"memcpy"
.LASF58:
	.string	"outbox_cleanup"
.LASF43:
	.string	"message"
.LASF34:
	.string	"pending"
.LASF13:
	.string	"uint8_t"
.LASF54:
	.string	"outbox_delete_expired"
.LASF44:
	.string	"item"
.LASF66:
	.string	"free"
.LASF50:
	.string	"curelm"
.LASF33:
	.string	"retry_count"
.LASF7:
	.string	"long long int"
.LASF41:
	.string	"stqe_next"
.LASF26:
	.string	"outbox_item_handle_t"
.LASF9:
	.string	"long int"
.LASF40:
	.string	"remaining_len"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF5:
	.string	"__uint8_t"
.LASF37:
	.string	"outbox_message"
.LASF55:
	.string	"current_tick"
.LASF53:
	.string	"outbox_delete_msgtype"
.LASF68:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_outbox.c"
.LASF60:
	.string	"outbox_init"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"outbox_get"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"tick"
.LASF36:
	.string	"outbox_message_handle_t"
.LASF64:
	.string	"esp_log_write"
.LASF46:
	.string	"outbox_enqueue"
.LASF12:
	.string	"char"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF14:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF28:
	.string	"outbox_item"
.LASF62:
	.string	"calloc"
.LASF16:
	.string	"_Bool"
.LASF38:
	.string	"data"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF56:
	.string	"timeout"
.LASF29:
	.string	"buffer"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF51:
	.string	"outbox_delete_msgid"
.LASF48:
	.string	"outbox_dequeue"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__int32_t"
.LASF39:
	.string	"remaining_data"
.LASF63:
	.string	"esp_log_timestamp"
.LASF52:
	.string	"outbox_set_pending"
.LASF59:
	.string	"max_size"
.LASF42:
	.string	"outbox"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"__FUNCTION__"
.LASF25:
	.string	"stqh_last"
.LASF27:
	.string	"outbox_list_t"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF15:
	.string	"esp_err_t"
.LASF35:
	.string	"next"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
