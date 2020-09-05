	.file	"alarm.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"alarm_mutex != NULL"
.LC5:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/alarm.c"
.LC8:
	.string	"BT_OSI"
.LC10:
	.string	"\033[0;31mE (%d) %s: %s, invalid state %d\n\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: %s null\n\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: %s failed to start timer, err 0x%x\n\033[0m\n"
	.section	.text.alarm_set,"ax",@progbits
	.literal_position
	.literal .LC1, alarm_mutex
	.literal .LC3, .LC2
	.literal .LC4, __func__$5862
	.literal .LC6, .LC5
	.literal .LC7, alarm_state
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.type	alarm_set, @function
alarm_set:
.LFB42:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/alarm.c"
	.loc 1 215 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 216 0
	l32r	a3, .LC1
	.loc 1 215 0
	mov.n	a8, a6
	.loc 1 216 0
	l32i.n	a6, a3, 0
.LVL1:
	bnez.n	a6, .L2
	.loc 1 216 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	l32r	a10, .LC6
	movi	a11, 0xd8
	call8	__assert_func
.LVL2:
.L2:
	.loc 1 219 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a3
	s32i.n	a8, sp, 16
	call8	osi_mutex_lock
.LVL3:
	.loc 1 220 0
	l32r	a6, .LC7
	l32i.n	a8, sp, 16
	l32i.n	a7, a6, 0
	beqi	a7, 1, .L3
	.loc 1 221 0 discriminator 1
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC9
	l32i.n	a2, a6, 0
.LVL5:
	l32r	a15, .LC4
	l32r	a12, .LC11
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL6:
	.loc 1 222 0 discriminator 1
	movi.n	a2, -3
	.loc 1 223 0 discriminator 1
	j	.L4
.LVL7:
.L3:
	.loc 1 226 0
	beqz.n	a2, .L5
	.loc 1 226 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L6
.L5:
	.loc 1 227 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC9
	l32r	a15, .LC4
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 228 0 discriminator 1
	movi.n	a2, -2
.LVL10:
	.loc 1 229 0 discriminator 1
	j	.L4
.LVL11:
.L6:
	.loc 1 232 0
	movi	a11, 0x3e8
	mull	a6, a11, a4
	mull	a5, a11, a5
	muluh	a4, a11, a4
.LVL12:
	.loc 1 235 0
	mov.n	a12, a6
	.loc 1 232 0
	add.n	a4, a5, a4
.LVL13:
	.loc 1 235 0
	mov.n	a13, a4
	.loc 1 234 0
	beqz.n	a8, .L7
	.loc 1 235 0
	call8	esp_timer_start_periodic
.LVL14:
	mov.n	a5, a10
.LVL15:
	.loc 1 239 0
	bnez.n	a10, .L8
	.loc 1 244 0
	movi.n	a6, 0
.LVL16:
	mov.n	a5, a6
.LVL17:
	j	.L9
.LVL18:
.L7:
	.loc 1 237 0
	call8	esp_timer_start_once
.LVL19:
	mov.n	a5, a10
.LVL20:
	.loc 1 239 0
	beqz.n	a10, .L10
.L8:
	.loc 1 240 0 discriminator 1
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC9
	l32r	a15, .LC4
	l32r	a12, .LC15
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	.loc 1 241 0 discriminator 1
	movi.n	a2, -1
.LVL23:
	.loc 1 242 0 discriminator 1
	j	.L4
.LVL24:
.L10:
	.loc 1 244 0 discriminator 2
	call8	esp_timer_get_time
.LVL25:
	add.n	a10, a6, a10
	bltu	a10, a6, .L11
	mov.n	a7, a5
.L11:
	add.n	a4, a4, a11
.LVL26:
	mov.n	a6, a10
	add.n	a5, a7, a4
.LVL27:
.L9:
	.loc 1 244 0 is_stmt 0 discriminator 4
	s32i.n	a6, a2, 16
	s32i.n	a5, a2, 20
	.loc 1 218 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
.LVL28:
.L4:
	.loc 1 247 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL29:
	.loc 1 249 0
	retw.n
.LFE42:
	.size	alarm_set, .-alarm_set
	.section	.rodata.str1.1
.LC19:
	.string	"\033[0;31mE (%d) %s: %s failed to delete timer, err 0x%x\n\033[0m\n"
	.section	.text.alarm_free,"ax",@progbits
	.literal_position
	.literal .LC16, __func__$5850
	.literal .LC17, .LC8
	.literal .LC18, .LC12
	.literal .LC20, .LC19
	.align	4
	.type	alarm_free, @function
alarm_free:
.LFB40:
	.loc 1 182 0
.LVL30:
	entry	sp, 48
.LCFI1:
	.loc 1 183 0
	beqz.n	a2, .L16
	.loc 1 183 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L17
.L16:
.LVL31:
.LBB4:
.LBB5:
	.loc 1 184 0 is_stmt 1
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC17
	l32r	a15, .LC16
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	movi.n	a2, -2
.LVL34:
	retw.n
.LVL35:
.L17:
.LBE5:
.LBE4:
	.loc 1 187 0
	call8	esp_timer_stop
.LVL36:
	.loc 1 188 0
	l32i.n	a10, a2, 0
	call8	esp_timer_delete
.LVL37:
	mov.n	a3, a10
.LVL38:
	.loc 1 189 0
	beqz.n	a10, .L19
	.loc 1 190 0 discriminator 1
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC17
	l32r	a15, .LC16
	l32r	a12, .LC20
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL40:
	.loc 1 191 0 discriminator 1
	movi.n	a2, -1
.LVL41:
	retw.n
.LVL42:
.L19:
	.loc 1 194 0
	mov.n	a11, a10
	movi.n	a12, 0x18
	mov.n	a10, a2
	call8	memset
.LVL43:
	.loc 1 195 0
	mov.n	a2, a3
.LVL44:
	.loc 1 196 0
	retw.n
.LFE40:
	.size	alarm_free, .-alarm_free
	.section	.rodata.str1.1
.LC24:
	.string	"\033[0;33mW (%d) %s: %s, invalid state %d\n\033[0m\n"
	.section	.text.alarm_cb_handler,"ax",@progbits
	.literal_position
	.literal .LC21, alarm_state
	.literal .LC22, __func__$5833
	.literal .LC23, .LC8
	.literal .LC25, .LC24
	.align	4
	.type	alarm_cb_handler, @function
alarm_cb_handler:
.LFB38:
	.loc 1 123 0
.LVL45:
	entry	sp, 64
.LCFI2:
	.loc 1 125 0
	l32r	a3, .LC21
	l32i.n	a8, a3, 0
	beqi	a8, 1, .L24
	.loc 1 126 0 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC23
	l32i.n	a2, a3, 0
.LVL47:
	l32r	a15, .LC22
	l32r	a12, .LC25
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL48:
	retw.n
.LVL49:
.L24:
.LBB8:
.LBB9:
	.loc 1 131 0
	movi.n	a3, 0
	s8i	a3, sp, 24
	.loc 1 132 0
	movi.n	a3, 0xa
	s8i	a3, sp, 26
	.loc 1 133 0
	l32i.n	a3, a2, 4
	.loc 1 134 0
	l32i.n	a2, a2, 8
.LVL50:
	.loc 1 135 0
	movi.n	a13, 0
	movi.n	a12, 8
	addi	a11, sp, 16
	addi	a10, sp, 24
	.loc 1 133 0
	s32i.n	a3, sp, 16
	.loc 1 134 0
	s32i.n	a2, sp, 20
	.loc 1 135 0
	call8	btc_transfer_context
.LVL51:
	retw.n
.LBE9:
.LBE8:
.LFE38:
	.size	alarm_cb_handler, .-alarm_cb_handler
	.section	.text.osi_alarm_create_mux,"ax",@progbits
	.literal_position
	.literal .LC26, alarm_state
	.literal .LC27, __func__$5803
	.literal .LC28, .LC8
	.literal .LC29, .LC24
	.literal .LC30, alarm_mutex
	.align	4
	.global	osi_alarm_create_mux
	.type	osi_alarm_create_mux, @function
osi_alarm_create_mux:
.LFB33:
	.loc 1 52 0
	entry	sp, 48
.LCFI3:
	.loc 1 53 0
	l32r	a3, .LC26
	l32i.n	a2, a3, 0
	beqz.n	a2, .L27
	.loc 1 54 0 discriminator 1
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC28
	l32i.n	a2, a3, 0
	l32r	a15, .LC27
	l32r	a12, .LC29
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL53:
	.loc 1 55 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L27:
	.loc 1 57 0
	l32r	a10, .LC30
	call8	osi_mutex_new
.LVL54:
	.loc 1 59 0
	retw.n
.LFE33:
	.size	osi_alarm_create_mux, .-osi_alarm_create_mux
	.section	.text.osi_alarm_delete_mux,"ax",@progbits
	.literal_position
	.literal .LC31, alarm_state
	.literal .LC32, __func__$5807
	.literal .LC33, .LC8
	.literal .LC34, .LC24
	.literal .LC35, alarm_mutex
	.align	4
	.global	osi_alarm_delete_mux
	.type	osi_alarm_delete_mux, @function
osi_alarm_delete_mux:
.LFB34:
	.loc 1 62 0
	entry	sp, 48
.LCFI4:
	.loc 1 63 0
	l32r	a3, .LC31
	l32i.n	a2, a3, 0
	beqz.n	a2, .L30
	.loc 1 64 0 discriminator 1
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC33
	l32i.n	a2, a3, 0
	l32r	a15, .LC32
	l32r	a12, .LC34
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL56:
	.loc 1 65 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L30:
	.loc 1 67 0
	l32r	a10, .LC35
	call8	osi_mutex_free
.LVL57:
	.loc 1 69 0
	retw.n
.LFE34:
	.size	osi_alarm_delete_mux, .-osi_alarm_delete_mux
	.section	.text.osi_alarm_init,"ax",@progbits
	.literal_position
	.literal .LC36, alarm_mutex
	.literal .LC37, .LC2
	.literal .LC38, __func__$5811
	.literal .LC39, .LC5
	.literal .LC40, alarm_state
	.literal .LC41, .LC8
	.literal .LC42, .LC24
	.literal .LC43, alarm_cbs
	.align	4
	.global	osi_alarm_init
	.type	osi_alarm_init, @function
osi_alarm_init:
.LFB35:
	.loc 1 72 0
	entry	sp, 48
.LCFI5:
	.loc 1 73 0
	l32r	a2, .LC36
	.loc 1 73 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L33
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC38
	l32r	a10, .LC39
	movi.n	a11, 0x49
	call8	__assert_func
.LVL58:
.L33:
	.loc 1 75 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a2
	call8	osi_mutex_lock
.LVL59:
	.loc 1 76 0
	l32r	a3, .LC40
	l32i.n	a11, a3, 0
	beqz.n	a11, .L34
	.loc 1 77 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC41
	l32i.n	a3, a3, 0
	l32r	a15, .LC38
	l32r	a12, .LC42
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL61:
	.loc 1 78 0 discriminator 1
	j	.L35
.L34:
	.loc 1 80 0
	l32r	a10, .LC43
	movi	a12, 0x4b0
	call8	memset
.LVL62:
	.loc 1 81 0
	movi.n	a8, 1
	s32i.n	a8, a3, 0
.L35:
	.loc 1 84 0
	mov.n	a10, a2
	call8	osi_mutex_unlock
.LVL63:
	retw.n
.LFE35:
	.size	osi_alarm_init, .-osi_alarm_init
	.section	.text.osi_alarm_deinit,"ax",@progbits
	.literal_position
	.literal .LC46, alarm_mutex
	.literal .LC47, .LC2
	.literal .LC48, __func__$5816
	.literal .LC49, .LC5
	.literal .LC50, alarm_state
	.literal .LC51, .LC8
	.literal .LC52, .LC24
	.literal .LC53, alarm_cbs
	.align	4
	.global	osi_alarm_deinit
	.type	osi_alarm_deinit, @function
osi_alarm_deinit:
.LFB36:
	.loc 1 88 0
	entry	sp, 48
.LCFI6:
	.loc 1 89 0
	l32r	a2, .LC46
	.loc 1 89 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L37
	.loc 1 89 0 is_stmt 0 discriminator 1
	l32r	a13, .LC47
	l32r	a12, .LC48
	l32r	a10, .LC49
	movi.n	a11, 0x59
	call8	__assert_func
.LVL64:
.L37:
	.loc 1 91 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a2
	call8	osi_mutex_lock
.LVL65:
	.loc 1 92 0
	l32r	a5, .LC50
	l32r	a4, .LC53
	l32i.n	a8, a5, 0
	mov.n	a6, a5
	movi.n	a3, 0x32
	beqi	a8, 1, .L44
	.loc 1 93 0 discriminator 1
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC51
	l32i.n	a3, a5, 0
	l32r	a15, .LC48
	l32r	a12, .LC52
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL67:
	.loc 1 94 0 discriminator 1
	j	.L39
.L44:
.LVL68:
.LBB10:
	.loc 1 98 0
	l32i.n	a5, a4, 0
	beqz.n	a5, .L40
	.loc 1 99 0
	mov.n	a10, a4
	call8	alarm_free
.LVL69:
.L40:
	addi.n	a3, a3, -1
.LVL70:
	addi	a4, a4, 24
	.loc 1 97 0 discriminator 2
	bnez.n	a3, .L44
.LBE10:
	.loc 1 102 0
	s32i.n	a3, a6, 0
.LVL71:
.L39:
	.loc 1 105 0
	mov.n	a10, a2
	call8	osi_mutex_unlock
.LVL72:
	retw.n
.LFE36:
	.size	osi_alarm_deinit, .-osi_alarm_deinit
	.section	.rodata.str1.1
.LC64:
	.string	"\033[0;31mE (%d) %s: %s failed to create timer, err 0x%x\n\033[0m\n"
.LC66:
	.string	"\033[0;31mE (%d) %s: %s alarm_cbs exhausted\n\033[0m\n"
	.section	.text.osi_alarm_new,"ax",@progbits
	.literal_position
	.literal .LC54, alarm_mutex
	.literal .LC55, .LC2
	.literal .LC56, __func__$5842
	.literal .LC57, .LC5
	.literal .LC58, alarm_state
	.literal .LC59, .LC8
	.literal .LC60, .LC10
	.literal .LC61, alarm_cbs
	.literal .LC62, alarm_cb_handler
	.literal .LC63, 0, 0
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.align	4
	.global	osi_alarm_new
	.type	osi_alarm_new, @function
osi_alarm_new:
.LFB39:
	.loc 1 139 0
.LVL73:
	entry	sp, 80
.LCFI7:
	.loc 1 140 0
	l32r	a6, .LC54
.LVL74:
	.loc 1 139 0
	mov.n	a12, a2
	.loc 1 140 0
	l32i.n	a2, a6, 0
.LVL75:
	.loc 1 139 0
	.loc 1 140 0
	bnez.n	a2, .L49
	.loc 1 140 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
.LVL76:
	l32r	a10, .LC57
	movi	a11, 0x8c
	call8	__assert_func
.LVL77:
.L49:
	.loc 1 144 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a6
	s32i.n	a12, sp, 32
	call8	osi_mutex_lock
.LVL78:
	.loc 1 145 0
	l32r	a7, .LC58
	l32r	a8, .LC61
	l32i.n	a10, a7, 0
	movi.n	a5, 0
	mov.n	a2, a8
.LBB13:
.LBB14:
	.loc 1 112 0
	movi.n	a9, 0x32
.LBE14:
.LBE13:
	.loc 1 145 0
	l32i.n	a12, sp, 32
	beqi	a10, 1, .L56
	.loc 1 146 0 discriminator 1
	call8	esp_log_timestamp
.LVL79:
	l32r	a11, .LC59
	l32i.n	a2, a7, 0
	l32r	a15, .LC56
	l32r	a12, .LC60
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	.loc 1 147 0 discriminator 1
	mov.n	a2, a5
	.loc 1 148 0 discriminator 1
	j	.L51
.L56:
.LVL81:
.LBB17:
.LBB15:
	.loc 1 113 0
	l32i.n	a7, a8, 0
	bnez.n	a7, .L52
	.loc 1 115 0
	addx2	a5, a5, a5
.LVL82:
	addx8	a2, a5, a2
.LVL83:
.LBE15:
.LBE17:
	.loc 1 160 0
	l32r	a5, .LC62
	.loc 1 166 0
	s32i.n	a4, a2, 8
	.loc 1 160 0
	s32i.n	a5, sp, 16
	.loc 1 167 0
	l32r	a4, .LC63
.LVL84:
	l32r	a5, .LC63+4
	.loc 1 165 0
	s32i.n	a3, a2, 4
	.loc 1 167 0
	s32i.n	a5, a2, 20
	s32i.n	a4, a2, 16
	.loc 1 169 0
	mov.n	a11, a2
	addi	a10, sp, 16
	.loc 1 161 0
	s32i.n	a2, sp, 20
	.loc 1 162 0
	s32i.n	a7, sp, 24
	.loc 1 163 0
	s32i.n	a12, sp, 28
	.loc 1 169 0
	call8	esp_timer_create
.LVL85:
	mov.n	a5, a10
.LVL86:
	.loc 1 170 0
	beqz.n	a10, .L51
	j	.L53
.LVL87:
.L52:
.LBB18:
.LBB16:
	.loc 1 112 0
	addi.n	a5, a5, 1
.LVL88:
	addi	a8, a8, 24
	addi.n	a9, a9, -1
	bnez.n	a9, .L56
	j	.L58
.LVL89:
.L53:
.LBE16:
.LBE18:
	.loc 1 171 0 discriminator 1
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC59
	l32r	a15, .LC56
	l32r	a12, .LC65
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	.loc 1 172 0 discriminator 1
	mov.n	a2, a7
.LVL92:
.L51:
	.loc 1 177 0
	mov.n	a10, a6
	call8	osi_mutex_unlock
.LVL93:
	.loc 1 178 0
	retw.n
.LVL94:
.L58:
	.loc 1 154 0
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC59
	l32r	a15, .LC56
	l32r	a12, .LC67
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
	.loc 1 155 0
	movi.n	a2, 0
	.loc 1 156 0
	j	.L51
.LFE39:
	.size	osi_alarm_new, .-osi_alarm_new
	.section	.text.osi_alarm_free,"ax",@progbits
	.literal_position
	.literal .LC68, alarm_mutex
	.literal .LC69, .LC2
	.literal .LC70, __func__$5855
	.literal .LC71, .LC5
	.literal .LC72, alarm_state
	.literal .LC73, .LC8
	.literal .LC74, .LC10
	.align	4
	.global	osi_alarm_free
	.type	osi_alarm_free, @function
osi_alarm_free:
.LFB41:
	.loc 1 199 0
.LVL97:
	entry	sp, 48
.LCFI8:
	.loc 1 200 0
	l32r	a3, .LC68
	.loc 1 200 0
	l32i.n	a4, a3, 0
	bnez.n	a4, .L61
	.loc 1 200 0 is_stmt 0 discriminator 1
	l32r	a13, .LC69
	l32r	a12, .LC70
	l32r	a10, .LC71
	movi	a11, 0xc8
	call8	__assert_func
.LVL98:
.L61:
	.loc 1 202 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL99:
	.loc 1 203 0
	l32r	a4, .LC72
	l32i.n	a8, a4, 0
	beqi	a8, 1, .L62
	.loc 1 204 0 discriminator 1
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC73
	l32i.n	a2, a4, 0
.LVL101:
	l32r	a15, .LC70
	l32r	a12, .LC74
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL102:
	.loc 1 205 0 discriminator 1
	j	.L63
.LVL103:
.L62:
	.loc 1 207 0
	mov.n	a10, a2
	call8	alarm_free
.LVL104:
.L63:
	.loc 1 210 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL105:
	retw.n
.LFE41:
	.size	osi_alarm_free, .-osi_alarm_free
	.section	.text.osi_alarm_set,"ax",@progbits
	.align	4
	.global	osi_alarm_set
	.type	osi_alarm_set, @function
osi_alarm_set:
.LFB43:
	.loc 1 252 0
.LVL106:
	entry	sp, 32
.LCFI9:
	.loc 1 253 0
	movi.n	a14, 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	alarm_set
.LVL107:
	.loc 1 254 0
	mov.n	a2, a10
.LVL108:
	retw.n
.LFE43:
	.size	osi_alarm_set, .-osi_alarm_set
	.section	.text.osi_alarm_set_periodic,"ax",@progbits
	.align	4
	.global	osi_alarm_set_periodic
	.type	osi_alarm_set_periodic, @function
osi_alarm_set_periodic:
.LFB44:
	.loc 1 257 0
.LVL109:
	entry	sp, 32
.LCFI10:
	.loc 1 258 0
	movi.n	a14, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	alarm_set
.LVL110:
	.loc 1 259 0
	mov.n	a2, a10
.LVL111:
	retw.n
.LFE44:
	.size	osi_alarm_set_periodic, .-osi_alarm_set_periodic
	.section	.text.osi_alarm_cancel,"ax",@progbits
	.literal_position
	.literal .LC75, alarm_mutex
	.literal .LC76, alarm_state
	.literal .LC77, __func__$5879
	.literal .LC78, .LC8
	.literal .LC79, .LC10
	.literal .LC80, .LC12
	.align	4
	.global	osi_alarm_cancel
	.type	osi_alarm_cancel, @function
osi_alarm_cancel:
.LFB45:
	.loc 1 262 0
.LVL112:
	entry	sp, 48
.LCFI11:
.LVL113:
	.loc 1 264 0
	l32r	a3, .LC75
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL114:
	.loc 1 265 0
	l32r	a5, .LC76
	l32i.n	a4, a5, 0
	beqi	a4, 1, .L67
	.loc 1 266 0 discriminator 1
	call8	esp_log_timestamp
.LVL115:
	l32r	a11, .LC78
	l32i.n	a2, a5, 0
.LVL116:
	l32r	a15, .LC77
	l32r	a12, .LC79
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL117:
	.loc 1 267 0 discriminator 1
	movi.n	a2, -3
	.loc 1 268 0 discriminator 1
	j	.L68
.LVL118:
.L67:
	.loc 1 271 0
	beqz.n	a2, .L69
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L70
.L69:
	.loc 1 272 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC78
	l32r	a15, .LC77
	l32r	a12, .LC80
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
	.loc 1 273 0 discriminator 1
	movi.n	a2, -2
.LVL121:
	.loc 1 274 0 discriminator 1
	j	.L68
.LVL122:
.L70:
	.loc 1 277 0
	call8	esp_timer_stop
.LVL123:
	.loc 1 278 0
	movi.n	a2, 0
.LVL124:
	movnez	a2, a4, a10
	neg	a2, a2
.LVL125:
.L68:
	.loc 1 284 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL126:
	.loc 1 286 0
	retw.n
.LFE45:
	.size	osi_alarm_cancel, .-osi_alarm_cancel
	.global	__divdi3
	.section	.text.osi_alarm_get_remaining_ms,"ax",@progbits
	.literal_position
	.literal .LC81, 0, 0
	.literal .LC82, alarm_mutex
	.literal .LC83, .LC2
	.literal .LC84, __func__$5885
	.literal .LC85, .LC5
	.literal .LC86, 1000, 0
	.align	4
	.global	osi_alarm_get_remaining_ms
	.type	osi_alarm_get_remaining_ms, @function
osi_alarm_get_remaining_ms:
.LFB46:
	.loc 1 289 0
.LVL127:
	entry	sp, 32
.LCFI12:
	.loc 1 290 0
	l32r	a4, .LC82
	.loc 1 290 0
	l32i.n	a3, a4, 0
	bnez.n	a3, .L75
	.loc 1 290 0 is_stmt 0 discriminator 1
	l32r	a13, .LC83
	l32r	a12, .LC84
	l32r	a10, .LC85
	movi	a11, 0x122
	call8	__assert_func
.LVL128:
.L75:
	.loc 1 293 0 is_stmt 1
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL129:
	.loc 1 294 0
	l32i.n	a6, a2, 16
	l32i.n	a3, a2, 20
	call8	esp_timer_get_time
.LVL130:
	sub	a5, a6, a10
	movi.n	a8, 1
	bltu	a6, a5, .L76
	movi.n	a8, 0
.L76:
	sub	a3, a3, a11
	sub	a2, a3, a8
.LVL131:
	.loc 1 295 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL132:
	.loc 1 297 0
	bgei	a2, 1, .L80
	bnez.n	a2, .L79
	beqz.n	a5, .L79
.L80:
	.loc 1 297 0 is_stmt 0 discriminator 1
	l32r	a12, .LC86
	l32r	a13, .LC86+4
	mov.n	a10, a5
	mov.n	a11, a2
	call8	__divdi3
.LVL133:
	mov.n	a2, a10
.LVL134:
	mov.n	a3, a11
	retw.n
.LVL135:
.L79:
	.loc 1 297 0
	l32r	a2, .LC81
.LVL136:
	l32r	a3, .LC81+4
	.loc 1 298 0 is_stmt 1
	retw.n
.LFE46:
	.size	osi_alarm_get_remaining_ms, .-osi_alarm_get_remaining_ms
	.section	.text.osi_time_get_os_boottime_ms,"ax",@progbits
	.literal_position
	.literal .LC87, 1000, 0
	.align	4
	.global	osi_time_get_os_boottime_ms
	.type	osi_time_get_os_boottime_ms, @function
osi_time_get_os_boottime_ms:
.LFB47:
	.loc 1 301 0
	entry	sp, 32
.LCFI13:
	.loc 1 302 0
	call8	esp_timer_get_time
.LVL137:
	l32r	a12, .LC87
	l32r	a13, .LC87+4
	call8	__divdi3
.LVL138:
	.loc 1 303 0
	mov.n	a2, a10
	retw.n
.LFE47:
	.size	osi_time_get_os_boottime_ms, .-osi_time_get_os_boottime_ms
	.section	.rodata.__func__$5885,"a",@progbits
	.type	__func__$5885, @object
	.size	__func__$5885, 27
__func__$5885:
	.string	"osi_alarm_get_remaining_ms"
	.section	.rodata.__func__$5879,"a",@progbits
	.type	__func__$5879, @object
	.size	__func__$5879, 17
__func__$5879:
	.string	"osi_alarm_cancel"
	.section	.rodata.__func__$5862,"a",@progbits
	.type	__func__$5862, @object
	.size	__func__$5862, 10
__func__$5862:
	.string	"alarm_set"
	.section	.rodata.__func__$5855,"a",@progbits
	.type	__func__$5855, @object
	.size	__func__$5855, 15
__func__$5855:
	.string	"osi_alarm_free"
	.section	.rodata.__func__$5833,"a",@progbits
	.type	__func__$5833, @object
	.size	__func__$5833, 17
__func__$5833:
	.string	"alarm_cb_handler"
	.section	.rodata.__func__$5842,"a",@progbits
	.type	__func__$5842, @object
	.size	__func__$5842, 14
__func__$5842:
	.string	"osi_alarm_new"
	.section	.rodata.__func__$5850,"a",@progbits
	.type	__func__$5850, @object
	.size	__func__$5850, 11
__func__$5850:
	.string	"alarm_free"
	.section	.rodata.__func__$5816,"a",@progbits
	.type	__func__$5816, @object
	.size	__func__$5816, 17
__func__$5816:
	.string	"osi_alarm_deinit"
	.section	.rodata.__func__$5811,"a",@progbits
	.type	__func__$5811, @object
	.size	__func__$5811, 15
__func__$5811:
	.string	"osi_alarm_init"
	.section	.rodata.__func__$5807,"a",@progbits
	.type	__func__$5807, @object
	.size	__func__$5807, 21
__func__$5807:
	.string	"osi_alarm_delete_mux"
	.section	.rodata.__func__$5803,"a",@progbits
	.type	__func__$5803, @object
	.size	__func__$5803, 21
__func__$5803:
	.string	"osi_alarm_create_mux"
	.section	.bss.alarm_cbs,"aw",@nobits
	.align	8
	.type	alarm_cbs, @object
	.size	alarm_cbs, 1200
alarm_cbs:
	.zero	1200
	.section	.bss.alarm_state,"aw",@nobits
	.align	4
	.type	alarm_state, @object
	.size	alarm_state, 4
alarm_state:
	.zero	4
	.section	.bss.alarm_mutex,"aw",@nobits
	.align	4
	.type	alarm_mutex, @object
	.size	alarm_mutex, 4
alarm_mutex:
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI0-.LFB42
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI5-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI6-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI7-.LFB39
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI8-.LFB41
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI12-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/alarm.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/btc/include/btc/btc_alarm.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/mutex.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1253
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0x20
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x12
	.4byte	0x53
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
	.byte	0x19
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x38
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x39
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xc8
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x35
	.4byte	0x10a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x110
	.uleb128 0x8
	.4byte	.LASF125
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3b
	.4byte	0x120
	.uleb128 0x6
	.byte	0x4
	.4byte	0x126
	.uleb128 0x9
	.4byte	0x131
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x41
	.4byte	0x144
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4a
	.4byte	0x131
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x4f
	.4byte	0x188
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.byte	0x50
	.4byte	0x115
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0x5
	.byte	0x51
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.byte	0x52
	.4byte	0x144
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0x53
	.4byte	0xb2
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x54
	.4byte	0x14f
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x18
	.byte	0x1
	.byte	0x1e
	.4byte	0x1cf
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.4byte	0xff
	.byte	0
	.uleb128 0xf
	.string	"cb"
	.byte	0x1
	.byte	0x21
	.4byte	0x1da
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x22
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x23
	.4byte	0xde
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1b
	.4byte	0x115
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3a
	.byte	0x6
	.byte	0x1d
	.4byte	0x20a
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.sleb128 -1
	.uleb128 0x11
	.4byte	.LASF37
	.sleb128 -2
	.uleb128 0x11
	.4byte	.LASF38
	.sleb128 -3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.byte	0x22
	.4byte	0x1e5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF40
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x24d
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x8
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1a
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0x258
	.4byte	0x273
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa
	.byte	0x1a
	.4byte	0x2bc
	.uleb128 0xf
	.string	"sig"
	.byte	0xa
	.byte	0x1b
	.4byte	0xbd
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xa
	.byte	0x1c
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xf
	.string	"pid"
	.byte	0xa
	.byte	0x1d
	.4byte	0xbd
	.byte	0x2
	.uleb128 0xf
	.string	"act"
	.byte	0xa
	.byte	0x1e
	.4byte	0xbd
	.byte	0x3
	.uleb128 0xf
	.string	"arg"
	.byte	0xa
	.byte	0x1f
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x20
	.4byte	0x273
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x27
	.4byte	0x2e6
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x2d
	.4byte	0x359
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x17
	.4byte	0x379
	.uleb128 0xf
	.string	"cb"
	.byte	0xb
	.byte	0x18
	.4byte	0x1da
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0xb
	.byte	0x19
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xb
	.byte	0x1a
	.4byte	0x359
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xc
	.byte	0x4f
	.4byte	0x24d
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xd
	.byte	0x21
	.4byte	0x384
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x26
	.4byte	0x3b3
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb5
	.4byte	0x20a
	.byte	0x1
	.4byte	0x3e7
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb5
	.4byte	0x3e7
	.uleb128 0x16
	.4byte	.LASF77
	.4byte	0x3fd
	.4byte	.LASF80
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0xbc
	.4byte	0xf4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x193
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x3fd
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x3ed
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x43d
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7a
	.4byte	0x3e7
	.uleb128 0x16
	.4byte	.LASF77
	.4byte	0x44d
	.4byte	.LASF81
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x81
	.4byte	0x2bc
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.byte	0x82
	.4byte	0x379
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x44d
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x43d
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.byte	0xd6
	.4byte	0x20a
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x622
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd6
	.4byte	0x3e7
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x1
	.byte	0xd6
	.4byte	0x1cf
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd6
	.4byte	0x215
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0x632
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5862
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0xda
	.4byte	0x20a
	.4byte	.LLST3
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xf6
	.4byte	.L4
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0xe8
	.4byte	0xde
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe9
	.4byte	0xf4
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x11b3
	.4byte	0x50e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5862
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x11be
	.4byte	0x528
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x11d4
	.4byte	0x56f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5862
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL8
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x11d4
	.4byte	0x5af
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5862
	.byte	0
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0x11df
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0x11ea
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0x11d4
	.4byte	0x608
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5862
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL25
	.4byte	0x11f5
	.uleb128 0x23
	.4byte	.LVL29
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x632
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x622
	.uleb128 0x24
	.4byte	0x3b3
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x747
	.uleb128 0x25
	.4byte	0x3c3
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	0x3ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x26
	.4byte	0x3db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x6d2
	.uleb128 0x25
	.4byte	0x3c3
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x29
	.4byte	0x3db
	.uleb128 0x26
	.4byte	0x3ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0x11c9
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0x11d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL36
	.4byte	0x120b
	.uleb128 0x22
	.4byte	.LVL37
	.4byte	0x1216
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0x11d4
	.4byte	0x72b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL43
	.4byte	0x1221
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x402
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x818
	.uleb128 0x25
	.4byte	0x40e
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	0x419
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x29
	.4byte	0x426
	.uleb128 0x29
	.4byte	0x431
	.uleb128 0x27
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x7d4
	.uleb128 0x25
	.4byte	0x40e
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x26
	.4byte	0x426
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	0x419
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0x122a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL46
	.4byte	0x11c9
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0x11d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x33
	.4byte	0x3a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0x8ab
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5803
	.uleb128 0x22
	.4byte	.LVL52
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0x11d4
	.4byte	0x887
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5803
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL54
	.4byte	0x1235
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x8ab
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x89b
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.byte	0x3d
	.4byte	0x3a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x933
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0x933
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5807
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0x11d4
	.4byte	0x91f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5807
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x1240
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x89b
	.uleb128 0x2b
	.4byte	.LASF87
	.byte	0x1
	.byte	0x47
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa26
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0xa36
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5811
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0x53
	.4byte	.L35
	.uleb128 0x20
	.4byte	.LVL58
	.4byte	0x11b3
	.4byte	0x996
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5811
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0x11be
	.4byte	0x9b0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL60
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL61
	.4byte	0x11d4
	.4byte	0x9f7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5811
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x1221
	.4byte	0xa15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_cbs
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL63
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0xa36
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0xa26
	.uleb128 0x2b
	.4byte	.LASF88
	.byte	0x1
	.byte	0x57
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb36
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0xb36
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0x68
	.4byte	.L39
	.uleb128 0x27
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xa95
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x61
	.4byte	0x3a
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LVL69
	.4byte	0x3b3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL64
	.4byte	0x11b3
	.4byte	0xac4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x59
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0x11be
	.4byte	0xade
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL66
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL67
	.4byte	0x11d4
	.4byte	0xb25
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL72
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x43d
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1
	.byte	0x6c
	.4byte	0x3e7
	.byte	0x1
	.4byte	0xb62
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.4byte	0x3a
	.uleb128 0x16
	.4byte	.LASF77
	.4byte	0xb72
	.4byte	.LASF89
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0xb72
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0xb62
	.uleb128 0x2a
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8a
	.4byte	0x3e7
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7a
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8a
	.4byte	0xb2
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x8a
	.4byte	0x1da
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8a
	.4byte	0xa2
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x1
	.byte	0x8a
	.4byte	0x1cf
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0xd8a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5842
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0x1
	.byte	0x8e
	.4byte	0x3e7
	.4byte	.LLST14
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xb0
	.4byte	.L51
	.uleb128 0x2d
	.string	"tca"
	.byte	0x1
	.byte	0x9f
	.4byte	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.byte	0xa9
	.4byte	0xf4
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	0xb3b
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x97
	.4byte	0xc38
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x30
	.4byte	0xb4b
	.4byte	.LLST16
	.uleb128 0x29
	.4byte	0xb54
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL77
	.4byte	0x11b3
	.4byte	0xc67
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5842
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL78
	.4byte	0x11be
	.4byte	0xc81
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL79
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL80
	.4byte	0x11d4
	.4byte	0xcc8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5842
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL85
	.4byte	0x124b
	.4byte	0xce2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL90
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL91
	.4byte	0x11d4
	.4byte	0xd29
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5842
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL93
	.4byte	0x1200
	.4byte	0xd3d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL95
	.4byte	0x11c9
	.uleb128 0x23
	.4byte	.LVL96
	.4byte	0x11d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5842
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xab
	.4byte	0xd8a
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0xd7a
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe82
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc6
	.4byte	0x3e7
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0xe82
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5855
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xd1
	.4byte	.L63
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0x11b3
	.4byte	0xdfc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5855
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL99
	.4byte	0x11be
	.4byte	0xe16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL102
	.4byte	0x11d4
	.4byte	0xe5d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5855
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL104
	.4byte	0x3b3
	.4byte	0xe71
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL105
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xa26
	.uleb128 0x2a
	.4byte	.LASF96
	.byte	0x1
	.byte	0xfb
	.4byte	0x20a
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed7
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0xfb
	.4byte	0x3e7
	.4byte	.LLST18
	.uleb128 0x2c
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfb
	.4byte	0x1cf
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x23
	.4byte	.LVL107
	.4byte	0x452
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x100
	.4byte	0x20a
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2a
	.uleb128 0x32
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x100
	.4byte	0x3e7
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x100
	.4byte	0x1cf
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x23
	.4byte	.LVL110
	.4byte	0x452
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x105
	.4byte	0x20a
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104a
	.uleb128 0x32
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x105
	.4byte	0x3e7
	.4byte	.LLST20
	.uleb128 0x34
	.string	"ret"
	.byte	0x1
	.2byte	0x107
	.4byte	0x3a
	.4byte	.LLST21
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0x104a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5879
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.2byte	0x11b
	.4byte	.L68
	.uleb128 0x36
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x115
	.4byte	0xf4
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LVL114
	.4byte	0x11be
	.4byte	0xfa9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL115
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL117
	.4byte	0x11d4
	.4byte	0xff0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5879
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL119
	.4byte	0x11c9
	.uleb128 0x20
	.4byte	.LVL120
	.4byte	0x11d4
	.4byte	0x1030
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5879
	.byte	0
	.uleb128 0x22
	.4byte	.LVL123
	.4byte	0x120b
	.uleb128 0x23
	.4byte	.LVL126
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x43d
	.uleb128 0x37
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x120
	.4byte	0x1cf
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10fc
	.uleb128 0x32
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x120
	.4byte	0x10fc
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	.LASF77
	.4byte	0x1117
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5885
	.uleb128 0x36
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x123
	.4byte	0xde
	.4byte	.LLST24
	.uleb128 0x20
	.4byte	.LVL128
	.4byte	0x11b3
	.4byte	0x10c8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x122
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5885
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x20
	.4byte	.LVL129
	.4byte	0x11be
	.4byte	0x10e2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.4byte	.LVL130
	.4byte	0x11f5
	.uleb128 0x23
	.4byte	.LVL132
	.4byte	0x1200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1102
	.uleb128 0x7
	.4byte	0x193
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x1117
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x1107
	.uleb128 0x37
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x12c
	.4byte	0xd3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1140
	.uleb128 0x22
	.4byte	.LVL137
	.4byte	0x11f5
	.byte	0
	.uleb128 0x38
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x2b8
	.4byte	0x1153
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0x263
	.uleb128 0x38
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x2b9
	.4byte	0x116b
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x263
	.uleb128 0x39
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2b
	.4byte	0x38f
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x39
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_state
	.uleb128 0x12
	.4byte	0x193
	.4byte	0x11a2
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2e
	.4byte	0x1192
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_cbs
	.uleb128 0x3a
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xe
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xd
	.byte	0x25
	.uleb128 0x3a
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0x57
	.uleb128 0x3a
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.byte	0x6b
	.uleb128 0x3a
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x5
	.byte	0x9d
	.uleb128 0x3a
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x5
	.byte	0x8e
	.uleb128 0x3a
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x5
	.byte	0xbe
	.uleb128 0x3a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xd
	.byte	0x27
	.uleb128 0x3a
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x5
	.byte	0xaa
	.uleb128 0x3a
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x5
	.byte	0xb7
	.uleb128 0x3b
	.4byte	.LASF127
	.4byte	.LASF127
	.uleb128 0x3a
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xa
	.byte	0x5f
	.uleb128 0x3a
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x23
	.uleb128 0x3a
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0x7f
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LFE42
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
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
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x8
	.byte	0x32
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x8
	.byte	0x33
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x8
	.byte	0x32
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78-1
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL73
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL85-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	.LFE39
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL94
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL113
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
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
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB41
	.4byte	.LFE41
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
.LASF100:
	.string	"osi_alarm_get_remaining_ms"
.LASF35:
	.string	"OSI_ALARM_ERR_PASS"
.LASF20:
	.string	"uint64_t"
.LASF51:
	.string	"btc_msg_t"
.LASF21:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint8_t"
.LASF55:
	.string	"BTC_PID_MAIN_INIT"
.LASF80:
	.string	"alarm_free"
.LASF85:
	.string	"osi_alarm_create_mux"
.LASF38:
	.string	"OSI_ALARM_ERR_INVALID_STATE"
.LASF98:
	.string	"period"
.LASF52:
	.string	"BTC_SIG_API_CALL"
.LASF0:
	.string	"long long unsigned int"
.LASF68:
	.string	"BTC_PID_A2DP"
.LASF9:
	.string	"__int64_t"
.LASF47:
	.string	"QueueHandle_t"
.LASF65:
	.string	"BTC_PID_ALARM"
.LASF78:
	.string	"stat"
.LASF81:
	.string	"alarm_cb_handler"
.LASF24:
	.string	"esp_timer_dispatch_t"
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF114:
	.string	"esp_timer_get_time"
.LASF33:
	.string	"osi_alarm_callback_t"
.LASF72:
	.string	"btc_alarm_args_t"
.LASF60:
	.string	"BTC_PID_GAP_BLE"
.LASF70:
	.string	"BTC_PID_SPP"
.LASF37:
	.string	"OSI_ALARM_ERR_INVALID_ARG"
.LASF12:
	.string	"long int"
.LASF79:
	.string	"alarm"
.LASF66:
	.string	"BTC_PID_GAP_BT"
.LASF118:
	.string	"btc_transfer_context"
.LASF111:
	.string	"esp_log_write"
.LASF108:
	.string	"__assert_func"
.LASF45:
	.string	"ESP_LOG_DEBUG"
.LASF83:
	.string	"is_periodic"
.LASF23:
	.string	"esp_timer_cb_t"
.LASF64:
	.string	"BTC_PID_DM_SEC"
.LASF102:
	.string	"osi_time_get_os_boottime_ms"
.LASF8:
	.string	"__uint32_t"
.LASF123:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/alarm.c"
.LASF93:
	.string	"timer_expire"
.LASF116:
	.string	"esp_timer_stop"
.LASF1:
	.string	"unsigned int"
.LASF32:
	.string	"period_ms_t"
.LASF14:
	.string	"long unsigned int"
.LASF82:
	.string	"timeout"
.LASF122:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"name"
.LASF86:
	.string	"osi_alarm_delete_mux"
.LASF92:
	.string	"data"
.LASF117:
	.string	"esp_timer_delete"
.LASF62:
	.string	"BTC_PID_SPPLIKE"
.LASF2:
	.string	"short unsigned int"
.LASF97:
	.string	"osi_alarm_set_periodic"
.LASF119:
	.string	"osi_mutex_new"
.LASF94:
	.string	"timer_id"
.LASF69:
	.string	"BTC_PID_AVRC"
.LASF56:
	.string	"BTC_PID_DEV"
.LASF87:
	.string	"osi_alarm_init"
.LASF25:
	.string	"callback"
.LASF107:
	.string	"alarm_cbs"
.LASF49:
	.string	"alarm_t"
.LASF26:
	.string	"dispatch_method"
.LASF61:
	.string	"BTC_PID_BLE_HID"
.LASF44:
	.string	"ESP_LOG_INFO"
.LASF54:
	.string	"BTC_SIG_NUM"
.LASF95:
	.string	"osi_alarm_free"
.LASF105:
	.string	"alarm_mutex"
.LASF28:
	.string	"esp_timer_create_args_t"
.LASF39:
	.string	"osi_alarm_err_t"
.LASF50:
	.string	"btc_msg"
.LASF13:
	.string	"sizetype"
.LASF30:
	.string	"cb_data"
.LASF75:
	.string	"ALARM_STATE_IDLE"
.LASF63:
	.string	"BTC_PID_BLUFI"
.LASF34:
	.string	"ESP_TIMER_TASK"
.LASF112:
	.string	"esp_timer_start_periodic"
.LASF53:
	.string	"BTC_SIG_API_CB"
.LASF11:
	.string	"__uint64_t"
.LASF88:
	.string	"osi_alarm_deinit"
.LASF109:
	.string	"osi_mutex_lock"
.LASF104:
	.string	"bd_addr_null"
.LASF124:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF40:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF84:
	.string	"timeout_us"
.LASF127:
	.string	"memset"
.LASF110:
	.string	"esp_log_timestamp"
.LASF42:
	.string	"ESP_LOG_ERROR"
.LASF77:
	.string	"__func__"
.LASF106:
	.string	"alarm_state"
.LASF71:
	.string	"BTC_PID_NUM"
.LASF115:
	.string	"osi_mutex_unlock"
.LASF59:
	.string	"BTC_PID_GATT_COMMON"
.LASF89:
	.string	"alarm_cbs_lookfor_available"
.LASF73:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF46:
	.string	"ESP_LOG_VERBOSE"
.LASF74:
	.string	"osi_mutex_t"
.LASF22:
	.string	"esp_timer_handle_t"
.LASF29:
	.string	"alarm_hdl"
.LASF41:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF91:
	.string	"alarm_name"
.LASF36:
	.string	"OSI_ALARM_ERR_FAIL"
.LASF76:
	.string	"ALARM_STATE_OPEN"
.LASF90:
	.string	"osi_alarm_new"
.LASF99:
	.string	"osi_alarm_cancel"
.LASF18:
	.string	"uint32_t"
.LASF113:
	.string	"esp_timer_start_once"
.LASF43:
	.string	"ESP_LOG_WARN"
.LASF67:
	.string	"BTC_PID_PRF_QUE"
.LASF48:
	.string	"UINT8"
.LASF16:
	.string	"uint8_t"
.LASF103:
	.string	"bd_addr_any"
.LASF96:
	.string	"osi_alarm_set"
.LASF31:
	.string	"deadline_us"
.LASF58:
	.string	"BTC_PID_GATTC"
.LASF121:
	.string	"esp_timer_create"
.LASF126:
	.string	"alarm_set"
.LASF19:
	.string	"int64_t"
.LASF57:
	.string	"BTC_PID_GATTS"
.LASF120:
	.string	"osi_mutex_free"
.LASF101:
	.string	"dt_us"
.LASF125:
	.string	"esp_timer"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
