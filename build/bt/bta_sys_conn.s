	.file	"bta_sys_conn.c"
	.text
.Ltext0:
	.section	.text.bta_sys_rm_register,"ax",@progbits
	.literal_position
	.literal .LC0, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_rm_register
	.type	bta_sys_rm_register, @function
bta_sys_rm_register:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/bta_sys_conn.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	s32i	a2, a8, 248
	retw.n
.LFE39:
	.size	bta_sys_rm_register, .-bta_sys_rm_register
	.section	.text.bta_sys_policy_register,"ax",@progbits
	.literal_position
	.literal .LC1, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_policy_register
	.type	bta_sys_policy_register, @function
bta_sys_policy_register:
.LFB40:
	.loc 1 58 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 59 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	s32i	a2, a8, 256
	retw.n
.LFE40:
	.size	bta_sys_policy_register, .-bta_sys_policy_register
	.section	.text.bta_sys_role_chg_register,"ax",@progbits
	.literal_position
	.literal .LC2, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_role_chg_register
	.type	bta_sys_role_chg_register, @function
bta_sys_role_chg_register:
.LFB41:
	.loc 1 73 0
.LVL2:
	entry	sp, 32
.LCFI2:
	.loc 1 74 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	s32i	a2, a8, 264
	retw.n
.LFE41:
	.size	bta_sys_role_chg_register, .-bta_sys_role_chg_register
	.section	.text.bta_sys_notify_role_chg,"ax",@progbits
	.literal_position
	.literal .LC3, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_notify_role_chg
	.type	bta_sys_notify_role_chg, @function
bta_sys_notify_role_chg:
.LFB42:
	.loc 1 103 0
.LVL3:
	entry	sp, 32
.LCFI3:
	.loc 1 104 0
	l32r	a8, .LC3
	.loc 1 103 0
	mov.n	a13, a2
	.loc 1 104 0
	l32i.n	a8, a8, 0
	.loc 1 103 0
	extui	a11, a3, 0, 8
	.loc 1 104 0
	l32i	a8, a8, 264
	.loc 1 103 0
	extui	a12, a4, 0, 8
	.loc 1 104 0
	beqz.n	a8, .L4
	.loc 1 105 0
	movi.n	a10, 0x14
	callx8	a8
.LVL4:
.L4:
	retw.n
.LFE42:
	.size	bta_sys_notify_role_chg, .-bta_sys_notify_role_chg
	.section	.text.bta_sys_collision_register,"ax",@progbits
	.literal_position
	.literal .LC6, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_collision_register
	.type	bta_sys_collision_register, @function
bta_sys_collision_register:
.LFB43:
	.loc 1 120 0
.LVL5:
	entry	sp, 32
.LCFI4:
.LVL6:
	.loc 1 124 0
	l32r	a8, .LC6
	movi	a10, 0x10c
	l32i.n	a13, a8, 0
	movi.n	a8, 0
	.loc 1 120 0
	extui	a2, a2, 0, 8
	add.n	a10, a13, a10
	.loc 1 124 0
	movi.n	a14, 1
	mov.n	a15, a8
	movi.n	a12, 5
	loop	a12, .L13_LEND
.LVL7:
.L13:
	l8ui	a11, a10, 0
	mov.n	a4, a15
	sub	a9, a11, a2
	moveqz	a4, a14, a9
	extui	a9, a4, 0, 8
	bnez.n	a9, .L14
	moveqz	a9, a14, a11
	beqz.n	a9, .L10
.L14:
	.loc 1 126 0
	add.n	a10, a13, a8
	movi	a9, 0x10c
	add.n	a9, a10, a9
	s8i	a2, a9, 0
	.loc 1 127 0
	addx4	a8, a8, a13
.LVL8:
	s32i	a3, a8, 276
	.loc 1 128 0
	retw.n
.LVL9:
.L10:
	addi.n	a8, a8, 1
.LVL10:
	addi.n	a10, a10, 1
	.L13_LEND:
	retw.n
.LFE43:
	.size	bta_sys_collision_register, .-bta_sys_collision_register
	.section	.text.bta_sys_notify_collision,"ax",@progbits
	.literal_position
	.literal .LC7, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_notify_collision
	.type	bta_sys_notify_collision, @function
bta_sys_notify_collision:
.LFB44:
	.loc 1 144 0
.LVL11:
	entry	sp, 32
.LCFI5:
.LVL12:
	.loc 1 144 0
	movi.n	a3, 0
.LVL13:
.L18:
	.loc 1 148 0
	l32r	a4, .LC7
	movi	a9, 0x10c
	l32i.n	a8, a4, 0
	add.n	a10, a8, a3
	add.n	a9, a10, a9
	l8ui	a9, a9, 0
	beqz.n	a9, .L17
	.loc 1 149 0 discriminator 1
	addx4	a8, a3, a8
	l32i	a8, a8, 276
	.loc 1 148 0 discriminator 1
	beqz.n	a8, .L17
	.loc 1 150 0
	movi.n	a12, 0
	mov.n	a13, a2
	mov.n	a11, a12
	mov.n	a10, a12
	callx8	a8
.LVL14:
.L17:
	addi.n	a3, a3, 1
.LVL15:
	.loc 1 147 0 discriminator 2
	bnei	a3, 5, .L18
	.loc 1 153 0
	retw.n
.LFE44:
	.size	bta_sys_notify_collision, .-bta_sys_notify_collision
	.section	.text.bta_sys_sco_register,"ax",@progbits
	.literal_position
	.literal .LC8, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_sco_register
	.type	bta_sys_sco_register, @function
bta_sys_sco_register:
.LFB45:
	.loc 1 166 0
.LVL16:
	entry	sp, 32
.LCFI6:
	.loc 1 167 0
	l32r	a8, .LC8
	l32i.n	a8, a8, 0
	s32i	a2, a8, 260
	retw.n
.LFE45:
	.size	bta_sys_sco_register, .-bta_sys_sco_register
	.section	.text.bta_sys_pm_register,"ax",@progbits
	.literal_position
	.literal .LC9, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_pm_register
	.type	bta_sys_pm_register, @function
bta_sys_pm_register:
.LFB46:
	.loc 1 181 0
.LVL17:
	entry	sp, 32
.LCFI7:
	.loc 1 182 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 0
	s32i	a2, a8, 252
	retw.n
.LFE46:
	.size	bta_sys_pm_register, .-bta_sys_pm_register
	.section	.text.bta_sys_conn_open,"ax",@progbits
	.literal_position
	.literal .LC10, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_conn_open
	.type	bta_sys_conn_open, @function
bta_sys_conn_open:
.LFB47:
	.loc 1 197 0
.LVL18:
	entry	sp, 32
.LCFI8:
	.loc 1 198 0
	l32r	a8, .LC10
	.loc 1 197 0
	extui	a2, a2, 0, 8
	.loc 1 198 0
	l32i.n	a5, a8, 0
	.loc 1 197 0
	extui	a3, a3, 0, 8
	.loc 1 198 0
	l32i	a9, a5, 248
	mov.n	a5, a8
	beqz.n	a9, .L29
	.loc 1 200 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 0
	callx8	a9
.LVL19:
.L29:
	.loc 1 204 0
	l32i.n	a5, a5, 0
	l32i	a5, a5, 252
	beqz.n	a5, .L28
	.loc 1 206 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 0
	callx8	a5
.LVL20:
.L28:
	retw.n
.LFE47:
	.size	bta_sys_conn_open, .-bta_sys_conn_open
	.section	.text.bta_sys_conn_close,"ax",@progbits
	.literal_position
	.literal .LC11, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_conn_close
	.type	bta_sys_conn_close, @function
bta_sys_conn_close:
.LFB48:
	.loc 1 225 0
.LVL21:
	entry	sp, 32
.LCFI9:
	.loc 1 226 0
	l32r	a8, .LC11
	.loc 1 225 0
	extui	a2, a2, 0, 8
	.loc 1 226 0
	l32i.n	a5, a8, 0
	.loc 1 225 0
	extui	a3, a3, 0, 8
	.loc 1 226 0
	l32i	a9, a5, 248
	mov.n	a5, a8
	beqz.n	a9, .L38
	.loc 1 228 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 1
	callx8	a9
.LVL22:
.L38:
	.loc 1 232 0
	l32i.n	a5, a5, 0
	l32i	a5, a5, 252
	beqz.n	a5, .L37
	.loc 1 234 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 1
	callx8	a5
.LVL23:
.L37:
	retw.n
.LFE48:
	.size	bta_sys_conn_close, .-bta_sys_conn_close
	.section	.text.bta_sys_app_open,"ax",@progbits
	.literal_position
	.literal .LC12, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_app_open
	.type	bta_sys_app_open, @function
bta_sys_app_open:
.LFB49:
	.loc 1 252 0
.LVL24:
	entry	sp, 32
.LCFI10:
	.loc 1 253 0
	l32r	a8, .LC12
	.loc 1 252 0
	mov.n	a13, a4
	.loc 1 253 0
	l32i.n	a8, a8, 0
	.loc 1 252 0
	extui	a11, a2, 0, 8
	.loc 1 253 0
	l32i	a8, a8, 252
	.loc 1 252 0
	extui	a12, a3, 0, 8
	.loc 1 253 0
	beqz.n	a8, .L46
	.loc 1 254 0
	movi.n	a10, 2
	callx8	a8
.LVL25:
.L46:
	retw.n
.LFE49:
	.size	bta_sys_app_open, .-bta_sys_app_open
	.section	.text.bta_sys_app_close,"ax",@progbits
	.literal_position
	.literal .LC13, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_app_close
	.type	bta_sys_app_close, @function
bta_sys_app_close:
.LFB50:
	.loc 1 271 0
.LVL26:
	entry	sp, 32
.LCFI11:
	.loc 1 272 0
	l32r	a8, .LC13
	.loc 1 271 0
	mov.n	a13, a4
	.loc 1 272 0
	l32i.n	a8, a8, 0
	.loc 1 271 0
	extui	a11, a2, 0, 8
	.loc 1 272 0
	l32i	a8, a8, 252
	.loc 1 271 0
	extui	a12, a3, 0, 8
	.loc 1 272 0
	beqz.n	a8, .L51
	.loc 1 273 0
	movi.n	a10, 3
	callx8	a8
.LVL27:
.L51:
	retw.n
.LFE50:
	.size	bta_sys_app_close, .-bta_sys_app_close
	.section	.text.bta_sys_sco_open,"ax",@progbits
	.literal_position
	.literal .LC14, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_sco_open
	.type	bta_sys_sco_open, @function
bta_sys_sco_open:
.LFB51:
	.loc 1 289 0
.LVL28:
	entry	sp, 32
.LCFI12:
	.loc 1 289 0
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	l32r	a5, .LC14
	.loc 1 291 0
	beqi	a2, 5, .L57
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32i.n	a8, a5, 0
	l32i	a8, a8, 260
	beqz.n	a8, .L57
	.loc 1 293 0 is_stmt 1
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 1
	movi.n	a10, 4
	callx8	a8
.LVL29:
.L57:
	.loc 1 296 0
	l32i.n	a5, a5, 0
	l32i	a8, a5, 252
	beqz.n	a8, .L56
	.loc 1 297 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 4
	callx8	a8
.LVL30:
.L56:
	retw.n
.LFE51:
	.size	bta_sys_sco_open, .-bta_sys_sco_open
	.section	.text.bta_sys_sco_close,"ax",@progbits
	.literal_position
	.literal .LC15, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_sco_close
	.type	bta_sys_sco_close, @function
bta_sys_sco_close:
.LFB52:
	.loc 1 312 0
.LVL31:
	entry	sp, 32
.LCFI13:
	.loc 1 312 0
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	l32r	a5, .LC15
	.loc 1 315 0
	beqi	a2, 5, .L69
	.loc 1 315 0 is_stmt 0 discriminator 1
	l32i.n	a8, a5, 0
	l32i	a8, a8, 260
	beqz.n	a8, .L69
	.loc 1 316 0 is_stmt 1
	call8	BTM_GetNumScoLinks
.LVL32:
	.loc 1 317 0
	l32i.n	a8, a5, 0
	mov.n	a11, a10
	l32i	a8, a8, 260
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a10, 5
.LVL33:
	callx8	a8
.LVL34:
.L69:
	.loc 1 320 0
	l32i.n	a5, a5, 0
	l32i	a5, a5, 252
	beqz.n	a5, .L68
	.loc 1 321 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 5
	callx8	a5
.LVL35:
.L68:
	retw.n
.LFE52:
	.size	bta_sys_sco_close, .-bta_sys_sco_close
	.section	.text.bta_sys_sco_use,"ax",@progbits
	.literal_position
	.literal .LC16, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_sco_use
	.type	bta_sys_sco_use, @function
bta_sys_sco_use:
.LFB53:
	.loc 1 336 0
.LVL36:
	entry	sp, 32
.LCFI14:
	.loc 1 340 0
	l32r	a8, .LC16
	.loc 1 336 0
	mov.n	a13, a4
	.loc 1 340 0
	l32i.n	a8, a8, 0
	.loc 1 336 0
	extui	a12, a3, 0, 8
	.loc 1 340 0
	l32i	a8, a8, 260
	beqz.n	a8, .L80
	.loc 1 342 0
	movi.n	a11, 1
	movi.n	a10, 4
	callx8	a8
.LVL37:
.L80:
	retw.n
.LFE53:
	.size	bta_sys_sco_use, .-bta_sys_sco_use
	.section	.text.bta_sys_sco_unuse,"ax",@progbits
	.literal_position
	.literal .LC17, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_sco_unuse
	.type	bta_sys_sco_unuse, @function
bta_sys_sco_unuse:
.LFB54:
	.loc 1 357 0
.LVL38:
	entry	sp, 32
.LCFI15:
	.loc 1 361 0
	l32r	a2, .LC17
.LVL39:
	.loc 1 357 0
	extui	a3, a3, 0, 8
	.loc 1 361 0
	l32i.n	a8, a2, 0
	l32i	a8, a8, 260
	beqz.n	a8, .L85
	.loc 1 362 0
	call8	BTM_GetNumScoLinks
.LVL40:
	.loc 1 363 0
	l32i.n	a2, a2, 0
	mov.n	a11, a10
	l32i	a2, a2, 260
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a10, 5
.LVL41:
	callx8	a2
.LVL42:
.L85:
	retw.n
.LFE54:
	.size	bta_sys_sco_unuse, .-bta_sys_sco_unuse
	.section	.text.bta_sys_set_policy,"ax",@progbits
	.literal_position
	.literal .LC18, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_set_policy
	.type	bta_sys_set_policy, @function
bta_sys_set_policy:
.LFB55:
	.loc 1 395 0
.LVL43:
	entry	sp, 32
.LCFI16:
	.loc 1 396 0
	l32r	a8, .LC18
	.loc 1 395 0
	mov.n	a13, a4
	.loc 1 396 0
	l32i.n	a8, a8, 0
	.loc 1 395 0
	extui	a11, a2, 0, 8
	.loc 1 396 0
	l32i	a8, a8, 256
	.loc 1 395 0
	extui	a12, a3, 0, 8
	.loc 1 396 0
	beqz.n	a8, .L90
	.loc 1 397 0
	movi.n	a10, 0x10
	callx8	a8
.LVL44:
.L90:
	retw.n
.LFE55:
	.size	bta_sys_set_policy, .-bta_sys_set_policy
	.section	.text.bta_sys_clear_policy,"ax",@progbits
	.literal_position
	.literal .LC19, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_clear_policy
	.type	bta_sys_clear_policy, @function
bta_sys_clear_policy:
.LFB56:
	.loc 1 412 0
.LVL45:
	entry	sp, 32
.LCFI17:
	.loc 1 413 0
	l32r	a8, .LC19
	.loc 1 412 0
	mov.n	a13, a4
	.loc 1 413 0
	l32i.n	a8, a8, 0
	.loc 1 412 0
	extui	a11, a2, 0, 8
	.loc 1 413 0
	l32i	a8, a8, 256
	.loc 1 412 0
	extui	a12, a3, 0, 8
	.loc 1 413 0
	beqz.n	a8, .L95
	.loc 1 414 0
	movi.n	a10, 0x11
	callx8	a8
.LVL46:
.L95:
	retw.n
.LFE56:
	.size	bta_sys_clear_policy, .-bta_sys_clear_policy
	.section	.text.bta_sys_set_default_policy,"ax",@progbits
	.literal_position
	.literal .LC20, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_set_default_policy
	.type	bta_sys_set_default_policy, @function
bta_sys_set_default_policy:
.LFB57:
	.loc 1 429 0
.LVL47:
	entry	sp, 32
.LCFI18:
	.loc 1 430 0
	l32r	a8, .LC20
	.loc 1 429 0
	extui	a11, a2, 0, 8
	.loc 1 430 0
	l32i.n	a8, a8, 0
	.loc 1 429 0
	extui	a12, a3, 0, 8
	.loc 1 430 0
	l32i	a8, a8, 256
	beqz.n	a8, .L100
	.loc 1 431 0
	movi.n	a13, 0
	movi.n	a10, 0x12
	callx8	a8
.LVL48:
.L100:
	retw.n
.LFE57:
	.size	bta_sys_set_default_policy, .-bta_sys_set_default_policy
	.section	.text.bta_sys_clear_default_policy,"ax",@progbits
	.literal_position
	.literal .LC21, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_clear_default_policy
	.type	bta_sys_clear_default_policy, @function
bta_sys_clear_default_policy:
.LFB58:
	.loc 1 446 0
.LVL49:
	entry	sp, 32
.LCFI19:
	.loc 1 447 0
	l32r	a8, .LC21
	.loc 1 446 0
	extui	a11, a2, 0, 8
	.loc 1 447 0
	l32i.n	a8, a8, 0
	.loc 1 446 0
	extui	a12, a3, 0, 8
	.loc 1 447 0
	l32i	a8, a8, 256
	beqz.n	a8, .L105
	.loc 1 448 0
	movi.n	a13, 0
	movi.n	a10, 0x13
	callx8	a8
.LVL50:
.L105:
	retw.n
.LFE58:
	.size	bta_sys_clear_default_policy, .-bta_sys_clear_default_policy
	.section	.text.bta_sys_idle,"ax",@progbits
	.literal_position
	.literal .LC22, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_idle
	.type	bta_sys_idle, @function
bta_sys_idle:
.LFB59:
	.loc 1 463 0
.LVL51:
	entry	sp, 32
.LCFI20:
	.loc 1 465 0
	l32r	a8, .LC22
	.loc 1 463 0
	extui	a2, a2, 0, 8
	.loc 1 465 0
	l32i.n	a5, a8, 0
	.loc 1 463 0
	extui	a3, a3, 0, 8
	.loc 1 465 0
	l32i	a9, a5, 248
	mov.n	a5, a8
	beqz.n	a9, .L111
	.loc 1 467 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 6
	callx8	a9
.LVL52:
.L111:
	.loc 1 471 0
	l32i.n	a5, a5, 0
	l32i	a5, a5, 252
	beqz.n	a5, .L110
	.loc 1 473 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 6
	callx8	a5
.LVL53:
.L110:
	retw.n
.LFE59:
	.size	bta_sys_idle, .-bta_sys_idle
	.section	.text.bta_sys_busy,"ax",@progbits
	.literal_position
	.literal .LC23, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_busy
	.type	bta_sys_busy, @function
bta_sys_busy:
.LFB60:
	.loc 1 488 0
.LVL54:
	entry	sp, 32
.LCFI21:
	.loc 1 489 0
	l32r	a8, .LC23
	.loc 1 488 0
	extui	a2, a2, 0, 8
	.loc 1 489 0
	l32i.n	a5, a8, 0
	.loc 1 488 0
	extui	a3, a3, 0, 8
	.loc 1 489 0
	l32i	a9, a5, 248
	mov.n	a5, a8
	beqz.n	a9, .L120
	.loc 1 491 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 7
	callx8	a9
.LVL55:
.L120:
	.loc 1 495 0
	l32i.n	a5, a5, 0
	l32i	a5, a5, 252
	beqz.n	a5, .L119
	.loc 1 497 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 7
	callx8	a5
.LVL56:
.L119:
	retw.n
.LFE60:
	.size	bta_sys_busy, .-bta_sys_busy
	.section	.text.bta_sys_eir_register,"ax",@progbits
	.literal_position
	.literal .LC24, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_eir_register
	.type	bta_sys_eir_register, @function
bta_sys_eir_register:
.LFB61:
	.loc 1 514 0
.LVL57:
	entry	sp, 32
.LCFI22:
	.loc 1 515 0
	l32r	a8, .LC24
	l32i.n	a8, a8, 0
	s32i	a2, a8, 296
	retw.n
.LFE61:
	.size	bta_sys_eir_register, .-bta_sys_eir_register
	.section	.text.bta_sys_add_uuid,"ax",@progbits
	.literal_position
	.literal .LC25, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_add_uuid
	.type	bta_sys_add_uuid, @function
bta_sys_add_uuid:
.LFB62:
	.loc 1 529 0
.LVL58:
	entry	sp, 32
.LCFI23:
	.loc 1 530 0
	l32r	a8, .LC25
	.loc 1 529 0
	extui	a10, a2, 0, 16
	.loc 1 530 0
	l32i.n	a8, a8, 0
	l32i	a8, a8, 296
	beqz.n	a8, .L129
	.loc 1 531 0
	movi.n	a11, 1
	callx8	a8
.LVL59:
.L129:
	retw.n
.LFE62:
	.size	bta_sys_add_uuid, .-bta_sys_add_uuid
	.section	.text.bta_sys_remove_uuid,"ax",@progbits
	.literal_position
	.literal .LC26, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_remove_uuid
	.type	bta_sys_remove_uuid, @function
bta_sys_remove_uuid:
.LFB63:
	.loc 1 546 0
.LVL60:
	entry	sp, 32
.LCFI24:
	.loc 1 547 0
	l32r	a8, .LC26
	.loc 1 546 0
	extui	a10, a2, 0, 16
	.loc 1 547 0
	l32i.n	a8, a8, 0
	l32i	a8, a8, 296
	beqz.n	a8, .L134
	.loc 1 548 0
	movi.n	a11, 0
	callx8	a8
.LVL61:
.L134:
	retw.n
.LFE63:
	.size	bta_sys_remove_uuid, .-bta_sys_remove_uuid
	.section	.text.bta_sys_vs_hdl,"ax",@progbits
	.literal_position
	.literal .LC27, bta_sys_cb_ptr
	.align	4
	.global	bta_sys_vs_hdl
	.type	bta_sys_vs_hdl, @function
bta_sys_vs_hdl:
.LFB64:
	.loc 1 563 0
.LVL62:
	entry	sp, 32
.LCFI25:
	.loc 1 563 0
	extui	a10, a2, 0, 16
	.loc 1 564 0
	l32r	a2, .LC27
.LVL63:
	.loc 1 563 0
	mov.n	a11, a3
	.loc 1 564 0
	l32i.n	a2, a2, 0
	l32i	a8, a2, 300
	.loc 1 568 0
	movi.n	a2, 0
	.loc 1 564 0
	beq	a8, a2, .L140
	.loc 1 565 0
	callx8	a8
.LVL64:
	mov.n	a2, a10
.L140:
	.loc 1 569 0
	retw.n
.LFE64:
	.size	bta_sys_vs_hdl, .-bta_sys_vs_hdl
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI5-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI9-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI11-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI12-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI13-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI14-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI15-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI16-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI17-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI18-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI19-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI20-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI21-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI22-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI23-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI24-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI25-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/include/bta_sys_int.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xca4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x22
	.4byte	0xea
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x136
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc4
	.4byte	0x136
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x145
	.uleb128 0xb
	.4byte	0xa8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xc5
	.4byte	0xf1
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x160
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x12c
	.4byte	0x16c
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xe
	.byte	0x4
	.4byte	0x145
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x188
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x23
	.4byte	0x193
	.uleb128 0xf
	.4byte	0xdf
	.4byte	0x1a7
	.uleb128 0x10
	.4byte	0xc9
	.uleb128 0x10
	.4byte	0x9f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x26
	.4byte	0x1b2
	.uleb128 0xf
	.4byte	0xdf
	.4byte	0x1c1
	.uleb128 0x10
	.4byte	0x172
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x5
	.byte	0x29
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x81
	.4byte	0xbe
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8b
	.4byte	0x1e2
	.uleb128 0x11
	.4byte	0x1fc
	.uleb128 0x10
	.4byte	0x1cc
	.uleb128 0x10
	.4byte	0xbe
	.uleb128 0x10
	.4byte	0xbe
	.uleb128 0x10
	.4byte	0x16c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x92
	.4byte	0x207
	.uleb128 0x11
	.4byte	0x217
	.uleb128 0x10
	.4byte	0xc9
	.uleb128 0x10
	.4byte	0xdf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x96
	.4byte	0x238
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x97
	.4byte	0x238
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x98
	.4byte	0x23e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0x99
	.4byte	0x217
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.byte	0xcb
	.4byte	0xbe
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0xce
	.4byte	0x265
	.uleb128 0x11
	.4byte	0x270
	.uleb128 0x10
	.4byte	0x24f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.byte	0x2a
	.4byte	0xbe
	.uleb128 0x7
	.byte	0x1c
	.byte	0x6
	.byte	0x2f
	.4byte	0x29b
	.uleb128 0x9
	.string	"id"
	.byte	0x6
	.byte	0x30
	.4byte	0x178
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.byte	0x31
	.4byte	0x29b
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x2ab
	.4byte	0x2ab
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x32
	.4byte	0x27b
	.uleb128 0x12
	.2byte	0x130
	.byte	0x6
	.byte	0x35
	.4byte	0x374
	.uleb128 0x9
	.string	"reg"
	.byte	0x6
	.byte	0x36
	.4byte	0x374
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x6
	.byte	0x37
	.4byte	0x38a
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.byte	0x38
	.4byte	0x270
	.byte	0xe6
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.byte	0x39
	.4byte	0x39a
	.byte	0xe8
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3a
	.4byte	0xd4
	.byte	0xf0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x6
	.byte	0x3b
	.4byte	0xc9
	.byte	0xf4
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.byte	0x3d
	.4byte	0x2ab
	.byte	0xf8
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.byte	0x3e
	.4byte	0x2ab
	.byte	0xfc
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x6
	.byte	0x3f
	.4byte	0x2ab
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x6
	.byte	0x40
	.4byte	0x2ab
	.2byte	0x104
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x6
	.byte	0x41
	.4byte	0x2ab
	.2byte	0x108
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x6
	.byte	0x42
	.4byte	0x2b1
	.2byte	0x10c
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.byte	0x44
	.4byte	0x3b0
	.2byte	0x128
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x6
	.byte	0x4a
	.4byte	0x3b6
	.2byte	0x12c
	.byte	0
	.uleb128 0xa
	.4byte	0x384
	.4byte	0x384
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x2d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x244
	.uleb128 0xa
	.4byte	0xdf
	.4byte	0x39a
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x2d
	.byte	0
	.uleb128 0xa
	.4byte	0x3aa
	.4byte	0x3aa
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1fc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x188
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x6
	.byte	0x4c
	.4byte	0x2bc
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ea
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x29
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40d
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x39
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x48
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x430
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x48
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x66
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x490
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x66
	.4byte	0x160
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x66
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x77
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cf
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x77
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x77
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x1
	.byte	0x79
	.4byte	0xbe
	.4byte	.LLST0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8f
	.4byte	0x160
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x1
	.byte	0x91
	.4byte	0xbe
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LVL14
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
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
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53f
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa5
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x562
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb4
	.4byte	0x2ab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5df
	.uleb128 0x19
	.string	"id"
	.byte	0x1
	.byte	0xc4
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc4
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc4
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x5be
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0xe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65c
	.uleb128 0x19
	.string	"id"
	.byte	0x1
	.byte	0xe0
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0xe0
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0xe0
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x63b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0xfb
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb
	.uleb128 0x19
	.string	"id"
	.byte	0x1
	.byte	0xfb
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0xfb
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0xfb
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL25
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71e
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x10e
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x10e
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL27
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x120
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79b
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x120
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x120
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x120
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x77d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x137
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82f
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x137
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x137
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x137
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x139
	.4byte	0xbe
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0xc9b
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0x80e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL35
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x14f
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88e
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x14f
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x14f
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x14f
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x903
	.uleb128 0x21
	.string	"id"
	.byte	0x1
	.2byte	0x164
	.4byte	0xbe
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x164
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x164
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x166
	.4byte	0xbe
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0xc9b
	.uleb128 0x1b
	.4byte	.LVL42
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x18a
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x966
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x18a
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x18a
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x18a
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x19b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c9
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x19b
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x19b
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x19b
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL46
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1ac
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1d
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LVL48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1bd
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa71
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LVL50
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1ce
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf2
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL52
	.4byte	0xad1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1e7
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb73
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0xb52
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL56
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x201
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb98
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x201
	.4byte	0x3b0
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x210
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd2
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x210
	.4byte	0xc9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x221
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0c
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x221
	.4byte	0xc9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL61
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x232
	.4byte	0xdf
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5a
	.uleb128 0x21
	.string	"evt"
	.byte	0x1
	.2byte	0x232
	.4byte	0xc9
	.4byte	.LLST5
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x232
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LVL64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x2b8
	.4byte	0xc6d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x24
	.4byte	0x150
	.uleb128 0x23
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x2b9
	.4byte	0xc85
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x150
	.uleb128 0x25
	.4byte	.LASF98
	.byte	0x6
	.byte	0x56
	.4byte	0xc95
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3bc
	.uleb128 0x26
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x7
	.2byte	0xc7c
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE43
	.2byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE44
	.2byte	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"sys_hw_module_active"
.LASF89:
	.string	"bta_sys_add_uuid"
.LASF93:
	.string	"bd_addr_null"
.LASF38:
	.string	"tBTA_SYS_HW_CBACK"
.LASF69:
	.string	"bta_sys_pm_register"
.LASF87:
	.string	"bta_sys_busy"
.LASF25:
	.string	"data"
.LASF43:
	.string	"state"
.LASF59:
	.string	"bta_sys_role_chg_register"
.LASF34:
	.string	"evt_hdlr"
.LASF26:
	.string	"BT_HDR"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"sizetype"
.LASF31:
	.string	"tBTA_SYS_CONN_STATUS"
.LASF27:
	.string	"BD_ADDR_PTR"
.LASF46:
	.string	"sys_features"
.LASF19:
	.string	"UINT32"
.LASF8:
	.string	"long long int"
.LASF55:
	.string	"tBTA_SYS_CB"
.LASF22:
	.string	"event"
.LASF6:
	.string	"__uint16_t"
.LASF32:
	.string	"tBTA_SYS_CONN_CBACK"
.LASF62:
	.string	"new_role"
.LASF28:
	.string	"tBTA_SYS_VS_EVT_HDLR"
.LASF50:
	.string	"p_sco_cb"
.LASF67:
	.string	"index"
.LASF97:
	.string	"bta_sys_vs_hdl"
.LASF51:
	.string	"p_role_cb"
.LASF37:
	.string	"tBTA_SYS_HW_EVT"
.LASF88:
	.string	"bta_sys_eir_register"
.LASF12:
	.string	"uint32_t"
.LASF73:
	.string	"bta_sys_conn_close"
.LASF98:
	.string	"bta_sys_cb_ptr"
.LASF70:
	.string	"bta_sys_conn_open"
.LASF52:
	.string	"colli_reg"
.LASF77:
	.string	"bta_sys_sco_close"
.LASF20:
	.string	"BOOLEAN"
.LASF81:
	.string	"bta_sys_set_policy"
.LASF72:
	.string	"peer_addr"
.LASF30:
	.string	"tBTA_SYS_DISABLE"
.LASF23:
	.string	"offset"
.LASF17:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF99:
	.string	"BTM_GetNumScoLinks"
.LASF74:
	.string	"bta_sys_app_open"
.LASF80:
	.string	"bta_sys_sco_unuse"
.LASF29:
	.string	"tBTA_SYS_EVT_HDLR"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"hci_status"
.LASF40:
	.string	"p_coll_cback"
.LASF2:
	.string	"signed char"
.LASF44:
	.string	"sys_hw_cback"
.LASF9:
	.string	"long long unsigned int"
.LASF83:
	.string	"bta_sys_clear_policy"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF76:
	.string	"bta_sys_sco_open"
.LASF47:
	.string	"prm_cb"
.LASF79:
	.string	"bta_sys_sco_use"
.LASF71:
	.string	"app_id"
.LASF1:
	.string	"short unsigned int"
.LASF95:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/bta_sys_conn.c"
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF85:
	.string	"bta_sys_clear_default_policy"
.LASF42:
	.string	"is_reg"
.LASF18:
	.string	"UINT16"
.LASF16:
	.string	"char"
.LASF68:
	.string	"bta_sys_sco_register"
.LASF61:
	.string	"p_bda"
.LASF21:
	.string	"_Bool"
.LASF33:
	.string	"tBTA_SYS_EIR_CBACK"
.LASF75:
	.string	"bta_sys_app_close"
.LASF78:
	.string	"num_sco_links"
.LASF91:
	.string	"bta_sys_remove_uuid"
.LASF15:
	.string	"long unsigned int"
.LASF7:
	.string	"__uint32_t"
.LASF39:
	.string	"tBTA_SYS_HW_STATE"
.LASF60:
	.string	"bta_sys_notify_role_chg"
.LASF53:
	.string	"eir_cb"
.LASF64:
	.string	"bta_sys_collision_register"
.LASF56:
	.string	"bta_sys_rm_register"
.LASF10:
	.string	"uint8_t"
.LASF41:
	.string	"tBTA_SYS_COLLISION"
.LASF58:
	.string	"p_cback"
.LASF86:
	.string	"bta_sys_idle"
.LASF92:
	.string	"bd_addr_any"
.LASF48:
	.string	"ppm_cb"
.LASF65:
	.string	"bta_id"
.LASF35:
	.string	"disable"
.LASF82:
	.string	"policy"
.LASF66:
	.string	"bta_sys_notify_collision"
.LASF13:
	.string	"long int"
.LASF84:
	.string	"bta_sys_set_default_policy"
.LASF49:
	.string	"p_policy_cb"
.LASF94:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF57:
	.string	"bta_sys_policy_register"
.LASF36:
	.string	"tBTA_SYS_REG"
.LASF54:
	.string	"p_vs_evt_hdlr"
.LASF24:
	.string	"layer_specific"
.LASF90:
	.string	"uuid16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
