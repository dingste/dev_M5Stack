	.file	"controller.c"
	.text
.Ltext0:
	.section	.text.shut_down,"ax",@progbits
	.literal_position
	.literal .LC0, readable
	.align	4
	.type	shut_down, @function
shut_down:
.LFB40:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/controller.c"
	.loc 1 279 0
	entry	sp, 32
.LCFI0:
	.loc 1 280 0
	l32r	a8, .LC0
	movi.n	a9, 0
	s8i	a9, a8, 0
	retw.n
.LFE40:
	.size	shut_down, .-shut_down
	.section	.text.get_is_ready,"ax",@progbits
	.literal_position
	.literal .LC1, readable
	.align	4
	.type	get_is_ready, @function
get_is_ready:
.LFB41:
	.loc 1 284 0
	entry	sp, 32
.LCFI1:
	.loc 1 286 0
	l32r	a8, .LC1
	l8ui	a2, a8, 0
	retw.n
.LFE41:
	.size	get_is_ready, .-get_is_ready
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"page_number == 0"
.LC17:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/controller.c"
	.section	.text.start_up,"ax",@progbits
	.literal_position
	.literal .LC2, hci
	.literal .LC3, packet_factory
	.literal .LC4, packet_parser
	.literal .LC5, sco_buffer_count
	.literal .LC6, sco_data_size
	.literal .LC7, acl_buffer_count_classic
	.literal .LC8, acl_data_size_classic
	.literal .LC9, bt_version
	.literal .LC10, address
	.literal .LC11, supported_commands
	.literal .LC12, features_classic
	.literal .LC13, last_features_classic_page_index
	.literal .LC15, .LC14
	.literal .LC16, __func__$8283
	.literal .LC18, .LC17
	.literal .LC19, simple_pairing_supported
	.literal .LC20, ble_supported
	.literal .LC21, ble_white_list_size
	.literal .LC22, acl_buffer_count_ble
	.literal .LC23, acl_data_size_ble
	.literal .LC24, ble_supported_states
	.literal .LC25, features_ble
	.literal .LC26, ble_resolving_list_max_size
	.literal .LC27, 2120
	.literal .LC28, ble_suggested_default_data_txtime
	.literal .LC29, ble_suggested_default_data_length
	.literal .LC30, BLE_EVENT_MASK
	.literal .LC31, CLASSIC_EVENT_MASK
	.literal .LC32, readable
	.align	4
	.type	start_up, @function
start_up:
.LFB39:
	.loc 1 85 0
	entry	sp, 64
.LCFI2:
	.loc 1 89 0
	l32r	a3, .LC3
	l32r	a7, .LC2
	l32i.n	a4, a3, 0
	l32i.n	a2, a7, 0
	l32i.n	a10, a4, 0
	l32i.n	a2, a2, 8
	callx8	a10
.LVL0:
	callx8	a2
.LVL1:
	call8	future_await
.LVL2:
	.loc 1 90 0
	l32r	a2, .LC4
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL3:
	.loc 1 93 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 4
	l32i.n	a4, a4, 8
	callx8	a10
.LVL4:
	callx8	a4
.LVL5:
	call8	future_await
.LVL6:
	.loc 1 94 0
	l32i.n	a4, a2, 0
	l32r	a6, .LC8
	l32r	a14, .LC5
	l32r	a13, .LC6
	l32r	a12, .LC7
	l32i.n	a4, a4, 4
	mov.n	a11, a6
	callx8	a4
.LVL7:
	.loc 1 100 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a5, a5, 8
	l32i.n	a4, a4, 8
	movi.n	a10, 1
	callx8	a5
.LVL8:
	callx8	a4
.LVL9:
	call8	future_await
.LVL10:
	.loc 1 101 0
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL11:
	.loc 1 105 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a5, a5, 12
	movi.n	a12, 0x14
	movi	a11, 0x64
	l32i.n	a4, a4, 8
	movi.n	a10, 1
	callx8	a5
.LVL12:
	callx8	a4
.LVL13:
	call8	future_await
.LVL14:
	.loc 1 106 0
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL15:
	.loc 1 110 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a5, a5, 16
	movi.n	a13, 0xa
	movi.n	a12, 0x14
	movi	a11, 0xff
	l32i.n	a4, a4, 8
	movi	a10, 0x69b
	callx8	a5
.LVL16:
	callx8	a4
.LVL17:
	call8	future_await
.LVL18:
	.loc 1 119 0
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL19:
	.loc 1 123 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 20
	l32i.n	a4, a4, 8
	callx8	a10
.LVL20:
	callx8	a4
.LVL21:
	call8	future_await
.LVL22:
	.loc 1 124 0
	l32i.n	a4, a2, 0
	l32r	a11, .LC9
	l32i.n	a4, a4, 8
	callx8	a4
.LVL23:
	.loc 1 127 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 24
	l32i.n	a4, a4, 8
	callx8	a10
.LVL24:
	callx8	a4
.LVL25:
	call8	future_await
.LVL26:
	.loc 1 128 0
	l32i.n	a4, a2, 0
	l32r	a11, .LC10
	l32i.n	a4, a4, 12
	callx8	a4
.LVL27:
	.loc 1 131 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 28
	l32i.n	a4, a4, 8
	callx8	a10
.LVL28:
	callx8	a4
.LVL29:
	call8	future_await
.LVL30:
	.loc 1 132 0
	l32i.n	a4, a2, 0
	l32r	a11, .LC11
	l32i.n	a4, a4, 16
	movi.n	a12, 0x40
	callx8	a4
.LVL31:
	.loc 1 139 0
	movi.n	a4, 0
	.loc 1 140 0
	l32i.n	a5, a3, 0
	.loc 1 139 0
	s8i	a4, sp, 0
	.loc 1 140 0
	l32i.n	a4, a7, 0
	l32i.n	a5, a5, 32
	l32i.n	a4, a4, 8
	movi.n	a10, 0
	callx8	a5
.LVL32:
	callx8	a4
.LVL33:
	call8	future_await
.LVL34:
	.loc 1 141 0
	l32i.n	a8, a2, 0
	l32r	a4, .LC12
	l32r	a5, .LC13
	l32i.n	a8, a8, 20
	movi.n	a14, 3
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, sp
	callx8	a8
.LVL35:
	.loc 1 149 0
	l8ui	a9, sp, 0
	beqz.n	a9, .L4
	.loc 1 149 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	l32r	a10, .LC18
	movi	a11, 0x95
	call8	__assert_func
.LVL36:
.L4:
	.loc 1 150 0 is_stmt 1
	movi.n	a8, 1
	l8ui	a10, a4, 6
	s8i	a8, sp, 0
	movi.n	a8, 8
	and	a8, a10, a8
	.loc 1 157 0
	l32r	a11, .LC19
	movi.n	a10, 1
	movnez	a9, a10, a8
	s8i	a9, a11, 0
	.loc 1 161 0
	beqz.n	a8, .L5
	.loc 1 162 0
	l32i.n	a8, a7, 0
	l32i.n	a9, a3, 0
	l32i.n	a8, a8, 8
	l32i.n	a9, a9, 36
	s32i.n	a8, sp, 16
	callx8	a9
.LVL37:
	l32i.n	a8, sp, 16
	callx8	a8
.LVL38:
	call8	future_await
.LVL39:
	.loc 1 163 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL40:
.L5:
	.loc 1 167 0
	l8ui	a8, a4, 4
	bbci	a8, 6, .L7
.LVL41:
.LBB2:
	.loc 1 169 0
	l32i.n	a8, a7, 0
	l32i.n	a9, a3, 0
	l8ui	a11, a4, 6
	l32i.n	a8, a8, 8
	l32i.n	a9, a9, 48
	extui	a11, a11, 1, 1
	s32i.n	a8, sp, 16
	movi.n	a10, 1
	callx8	a9
.LVL42:
	l32i.n	a8, sp, 16
	callx8	a8
.LVL43:
	call8	future_await
.LVL44:
	.loc 1 173 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL45:
	j	.L7
.L28:
.LBE2:
	.loc 1 181 0
	l32i.n	a8, a7, 0
	l32i.n	a9, a3, 0
	l32i.n	a8, a8, 8
	l32i.n	a9, a9, 32
	s32i.n	a8, sp, 16
	callx8	a9
.LVL46:
	l32i.n	a8, sp, 16
	callx8	a8
.LVL47:
	call8	future_await
.LVL48:
	.loc 1 182 0
	l32i.n	a8, a2, 0
	movi.n	a14, 3
	l32i.n	a8, a8, 20
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, sp
	callx8	a8
.LVL49:
	.loc 1 190 0
	l8ui	a8, sp, 0
	addi.n	a8, a8, 1
	s8i	a8, sp, 0
.L7:
	.loc 1 179 0
	l8ui	a10, sp, 0
	l8ui	a8, a5, 0
	bltu	a8, a10, .L18
	bltui	a10, 3, .L28
.L18:
	.loc 1 202 0
	movi.n	a5, 0
	beq	a8, a5, .L12
	.loc 1 202 0 is_stmt 0 discriminator 1
	l8ui	a5, a4, 8
	extui	a5, a5, 1, 1
.L12:
	.loc 1 202 0 discriminator 6
	l32r	a4, .LC20
	s8i	a5, a4, 0
	.loc 1 203 0 is_stmt 1 discriminator 6
	beqz.n	a5, .L13
	.loc 1 205 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 52
	l32i.n	a4, a4, 8
	callx8	a10
.LVL50:
	callx8	a4
.LVL51:
	call8	future_await
.LVL52:
	.loc 1 206 0
	l32i.n	a4, a2, 0
	l32r	a11, .LC21
	l32i.n	a4, a4, 24
	callx8	a4
.LVL53:
	.loc 1 209 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 56
	l32i.n	a4, a4, 8
	callx8	a10
.LVL54:
	callx8	a4
.LVL55:
	call8	future_await
.LVL56:
	.loc 1 210 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC23
	l32i.n	a5, a5, 28
	l32r	a12, .LC22
	mov.n	a11, a4
	callx8	a5
.LVL57:
	.loc 1 217 0
	l16ui	a5, a4, 0
	bnez.n	a5, .L14
	.loc 1 218 0
	l16ui	a5, a6, 0
	s16i	a5, a4, 0
.L14:
	.loc 1 222 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a10, a5, 60
	l32i.n	a4, a4, 8
	callx8	a10
.LVL58:
	callx8	a4
.LVL59:
	call8	future_await
.LVL60:
	.loc 1 223 0
	l32i.n	a4, a2, 0
	l32r	a11, .LC24
	l32i.n	a4, a4, 32
	movi.n	a12, 8
	callx8	a4
.LVL61:
	.loc 1 230 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i	a10, a5, 64
	l32i.n	a4, a4, 8
	callx8	a10
.LVL62:
	callx8	a4
.LVL63:
	call8	future_await
.LVL64:
	.loc 1 231 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC25
	l32i.n	a5, a5, 36
	mov.n	a11, a4
	callx8	a5
.LVL65:
	.loc 1 236 0
	l8ui	a5, a4, 0
	bbci	a5, 6, .L15
	.loc 1 237 0
	l32i.n	a6, a3, 0
	l32i.n	a5, a7, 0
	l32i	a10, a6, 68
	l32i.n	a5, a5, 8
	callx8	a10
.LVL66:
	callx8	a5
.LVL67:
	call8	future_await
.LVL68:
	.loc 1 238 0
	l32i.n	a5, a2, 0
	l32r	a11, .LC26
	l32i.n	a5, a5, 40
	callx8	a5
.LVL69:
.L15:
	.loc 1 243 0
	l8ui	a4, a4, 0
	bbci	a4, 5, .L16
	.loc 1 245 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32r	a11, .LC27
	l32i	a5, a5, 76
	l32i.n	a4, a4, 8
	movi	a10, 0xfb
	callx8	a5
.LVL70:
	callx8	a4
.LVL71:
	call8	future_await
.LVL72:
	.loc 1 246 0
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL73:
	.loc 1 248 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i	a10, a5, 72
	l32i.n	a4, a4, 8
	callx8	a10
.LVL74:
	callx8	a4
.LVL75:
	call8	future_await
.LVL76:
	.loc 1 249 0
	l32i.n	a4, a2, 0
	l32r	a12, .LC28
	l32i.n	a4, a4, 44
	l32r	a11, .LC29
	callx8	a4
.LVL77:
.L16:
	.loc 1 256 0
	l32i.n	a5, a3, 0
	l32i.n	a4, a7, 0
	l32i	a5, a5, 80
	l32r	a10, .LC30
	l32i.n	a4, a4, 8
	callx8	a5
.LVL78:
	callx8	a4
.LVL79:
	call8	future_await
.LVL80:
	.loc 1 257 0
	l32i.n	a4, a2, 0
	l32i.n	a4, a4, 0
	callx8	a4
.LVL81:
.L13:
	.loc 1 262 0
	l32i.n	a3, a3, 0
	l32i.n	a4, a7, 0
	l32i.n	a3, a3, 44
	l32r	a10, .LC31
	l32i.n	a4, a4, 8
	callx8	a3
.LVL82:
	callx8	a4
.LVL83:
	call8	future_await
.LVL84:
	.loc 1 263 0
	l32i.n	a2, a2, 0
	.loc 1 273 0
	movi.n	a3, 1
	.loc 1 263 0
	l32i.n	a2, a2, 0
	callx8	a2
.LVL85:
	.loc 1 273 0
	l32r	a2, .LC32
	s8i	a3, a2, 0
	retw.n
.LFE39:
	.size	start_up, .-start_up
	.section	.rodata.str1.1
.LC34:
	.string	"readable"
.LC39:
	.string	"ble_supported"
	.section	.text.set_ble_resolving_list_max_size,"ax",@progbits
	.literal_position
	.literal .LC33, readable
	.literal .LC35, .LC34
	.literal .LC36, __func__$8409
	.literal .LC37, .LC17
	.literal .LC38, ble_supported
	.literal .LC40, .LC39
	.literal .LC41, ble_resolving_list_max_size
	.align	4
	.type	set_ble_resolving_list_max_size, @function
set_ble_resolving_list_max_size:
.LFB70:
	.loc 1 470 0
.LVL86:
	entry	sp, 32
.LCFI3:
	.loc 1 471 0
	l32r	a8, .LC33
	l8ui	a8, a8, 0
	bnez.n	a8, .L41
	.loc 1 471 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC36
	movi	a11, 0x1d7
	j	.L43
.L41:
	.loc 1 472 0 is_stmt 1
	l32r	a8, .LC38
	l8ui	a8, a8, 0
	bnez.n	a8, .L42
.LVL87:
.LBB5:
.LBB6:
	l32r	a13, .LC40
	l32r	a12, .LC36
	movi	a11, 0x1d8
.LVL88:
.L43:
	l32r	a10, .LC37
	call8	__assert_func
.LVL89:
.L42:
.LBE6:
.LBE5:
	.loc 1 473 0
	l32r	a8, .LC41
	s8i	a2, a8, 0
	retw.n
.LFE70:
	.size	set_ble_resolving_list_max_size, .-set_ble_resolving_list_max_size
	.section	.text.get_ble_resolving_list_max_size,"ax",@progbits
	.literal_position
	.literal .LC42, readable
	.literal .LC43, .LC34
	.literal .LC44, __func__$8405
	.literal .LC45, .LC17
	.literal .LC46, ble_supported
	.literal .LC47, .LC39
	.literal .LC48, ble_resolving_list_max_size
	.align	4
	.type	get_ble_resolving_list_max_size, @function
get_ble_resolving_list_max_size:
.LFB69:
	.loc 1 463 0
	entry	sp, 32
.LCFI4:
	.loc 1 464 0
	l32r	a8, .LC42
	l8ui	a8, a8, 0
	bnez.n	a8, .L45
	.loc 1 464 0 is_stmt 0 discriminator 1
	l32r	a13, .LC43
	l32r	a12, .LC44
	movi	a11, 0x1d0
	j	.L47
.L45:
	.loc 1 465 0 is_stmt 1
	l32r	a8, .LC46
	l8ui	a8, a8, 0
	bnez.n	a8, .L46
.LBB9:
.LBB10:
	l32r	a13, .LC47
	l32r	a12, .LC44
	movi	a11, 0x1d1
.L47:
	l32r	a10, .LC45
	call8	__assert_func
.LVL90:
.L46:
.LBE10:
.LBE9:
	.loc 1 467 0
	l32r	a8, .LC48
	l8ui	a2, a8, 0
	retw.n
.LFE69:
	.size	get_ble_resolving_list_max_size, .-get_ble_resolving_list_max_size
	.section	.text.get_ble_white_list_size,"ax",@progbits
	.literal_position
	.literal .LC49, readable
	.literal .LC50, .LC34
	.literal .LC51, __func__$8401
	.literal .LC52, .LC17
	.literal .LC53, ble_supported
	.literal .LC54, .LC39
	.literal .LC55, ble_white_list_size
	.align	4
	.type	get_ble_white_list_size, @function
get_ble_white_list_size:
.LFB68:
	.loc 1 456 0
	entry	sp, 32
.LCFI5:
	.loc 1 457 0
	l32r	a8, .LC49
	l8ui	a8, a8, 0
	bnez.n	a8, .L49
	.loc 1 457 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0x1c9
	j	.L51
.L49:
	.loc 1 458 0 is_stmt 1
	l32r	a8, .LC53
	l8ui	a8, a8, 0
	bnez.n	a8, .L50
.LBB13:
.LBB14:
	l32r	a13, .LC54
	l32r	a12, .LC51
	movi	a11, 0x1ca
.L51:
	l32r	a10, .LC52
	call8	__assert_func
.LVL91:
.L50:
.LBE14:
.LBE13:
	.loc 1 460 0
	l32r	a8, .LC55
	l8ui	a2, a8, 0
	retw.n
.LFE68:
	.size	get_ble_white_list_size, .-get_ble_white_list_size
	.section	.text.get_acl_buffer_count_ble,"ax",@progbits
	.literal_position
	.literal .LC56, readable
	.literal .LC57, .LC34
	.literal .LC58, __func__$8397
	.literal .LC59, .LC17
	.literal .LC60, ble_supported
	.literal .LC61, .LC39
	.literal .LC62, acl_buffer_count_ble
	.align	4
	.type	get_acl_buffer_count_ble, @function
get_acl_buffer_count_ble:
.LFB67:
	.loc 1 449 0
	entry	sp, 32
.LCFI6:
	.loc 1 450 0
	l32r	a8, .LC56
	l8ui	a8, a8, 0
	bnez.n	a8, .L53
	.loc 1 450 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	l32r	a12, .LC58
	movi	a11, 0x1c2
	j	.L55
.L53:
	.loc 1 451 0 is_stmt 1
	l32r	a8, .LC60
	l8ui	a8, a8, 0
	bnez.n	a8, .L54
.LBB17:
.LBB18:
	l32r	a13, .LC61
	l32r	a12, .LC58
	movi	a11, 0x1c3
.L55:
	l32r	a10, .LC59
	call8	__assert_func
.LVL92:
.L54:
.LBE18:
.LBE17:
	.loc 1 453 0
	l32r	a8, .LC62
	l8ui	a2, a8, 0
	retw.n
.LFE67:
	.size	get_acl_buffer_count_ble, .-get_acl_buffer_count_ble
	.section	.text.get_acl_buffer_count_classic,"ax",@progbits
	.literal_position
	.literal .LC63, readable
	.literal .LC64, .LC34
	.literal .LC65, __func__$8393
	.literal .LC66, .LC17
	.literal .LC67, acl_buffer_count_classic
	.align	4
	.type	get_acl_buffer_count_classic, @function
get_acl_buffer_count_classic:
.LFB66:
	.loc 1 443 0
	entry	sp, 32
.LCFI7:
	.loc 1 444 0
	l32r	a8, .LC63
	l8ui	a8, a8, 0
	bnez.n	a8, .L57
.LBB21:
.LBB22:
	l32r	a13, .LC64
	l32r	a12, .LC65
	l32r	a10, .LC66
	movi	a11, 0x1bc
	call8	__assert_func
.LVL93:
.L57:
.LBE22:
.LBE21:
	.loc 1 446 0
	l32r	a8, .LC67
	l16ui	a2, a8, 0
	retw.n
.LFE66:
	.size	get_acl_buffer_count_classic, .-get_acl_buffer_count_classic
	.section	.text.get_ble_suggested_default_data_txtime,"ax",@progbits
	.literal_position
	.literal .LC68, readable
	.literal .LC69, .LC34
	.literal .LC70, __func__$8389
	.literal .LC71, .LC17
	.literal .LC72, ble_supported
	.literal .LC73, .LC39
	.literal .LC74, ble_suggested_default_data_txtime
	.align	4
	.type	get_ble_suggested_default_data_txtime, @function
get_ble_suggested_default_data_txtime:
.LFB65:
	.loc 1 436 0
	entry	sp, 32
.LCFI8:
	.loc 1 437 0
	l32r	a8, .LC68
	l8ui	a8, a8, 0
	bnez.n	a8, .L59
	.loc 1 437 0 is_stmt 0 discriminator 1
	l32r	a13, .LC69
	l32r	a12, .LC70
	movi	a11, 0x1b5
	j	.L61
.L59:
	.loc 1 438 0 is_stmt 1
	l32r	a8, .LC72
	l8ui	a8, a8, 0
	bnez.n	a8, .L60
.LBB25:
.LBB26:
	l32r	a13, .LC73
	l32r	a12, .LC70
	movi	a11, 0x1b6
.L61:
	l32r	a10, .LC71
	call8	__assert_func
.LVL94:
.L60:
.LBE26:
.LBE25:
	.loc 1 440 0
	l32r	a8, .LC74
	l16ui	a2, a8, 0
	retw.n
.LFE65:
	.size	get_ble_suggested_default_data_txtime, .-get_ble_suggested_default_data_txtime
	.section	.text.get_ble_suggested_default_data_length,"ax",@progbits
	.literal_position
	.literal .LC75, readable
	.literal .LC76, .LC34
	.literal .LC77, __func__$8385
	.literal .LC78, .LC17
	.literal .LC79, ble_supported
	.literal .LC80, .LC39
	.literal .LC81, ble_suggested_default_data_length
	.align	4
	.type	get_ble_suggested_default_data_length, @function
get_ble_suggested_default_data_length:
.LFB64:
	.loc 1 429 0
	entry	sp, 32
.LCFI9:
	.loc 1 430 0
	l32r	a8, .LC75
	l8ui	a8, a8, 0
	bnez.n	a8, .L63
	.loc 1 430 0 is_stmt 0 discriminator 1
	l32r	a13, .LC76
	l32r	a12, .LC77
	movi	a11, 0x1ae
	j	.L65
.L63:
	.loc 1 431 0 is_stmt 1
	l32r	a8, .LC79
	l8ui	a8, a8, 0
	bnez.n	a8, .L64
.LBB29:
.LBB30:
	l32r	a13, .LC80
	l32r	a12, .LC77
	movi	a11, 0x1af
.L65:
	l32r	a10, .LC78
	call8	__assert_func
.LVL95:
.L64:
.LBE30:
.LBE29:
	.loc 1 433 0
	l32r	a8, .LC81
	l16ui	a2, a8, 0
	retw.n
.LFE64:
	.size	get_ble_suggested_default_data_length, .-get_ble_suggested_default_data_length
	.section	.text.get_acl_packet_size_ble,"ax",@progbits
	.literal_position
	.literal .LC82, readable
	.literal .LC83, .LC34
	.literal .LC84, __func__$8381
	.literal .LC85, .LC17
	.literal .LC86, acl_data_size_ble
	.align	4
	.type	get_acl_packet_size_ble, @function
get_acl_packet_size_ble:
.LFB63:
	.loc 1 423 0
	entry	sp, 32
.LCFI10:
	.loc 1 424 0
	l32r	a2, .LC82
	l8ui	a2, a2, 0
	bnez.n	a2, .L67
.LBB33:
.LBB34:
	l32r	a13, .LC83
	l32r	a12, .LC84
	l32r	a10, .LC85
	movi	a11, 0x1a8
	call8	__assert_func
.LVL96:
.L67:
.LBE34:
.LBE33:
	.loc 1 425 0
	l32r	a2, .LC86
	l16ui	a2, a2, 0
	addi.n	a2, a2, 4
	.loc 1 426 0
	extui	a2, a2, 0, 16
	retw.n
.LFE63:
	.size	get_acl_packet_size_ble, .-get_acl_packet_size_ble
	.section	.text.get_acl_packet_size_classic,"ax",@progbits
	.literal_position
	.literal .LC87, readable
	.literal .LC88, .LC34
	.literal .LC89, __func__$8377
	.literal .LC90, .LC17
	.literal .LC91, acl_data_size_classic
	.align	4
	.type	get_acl_packet_size_classic, @function
get_acl_packet_size_classic:
.LFB62:
	.loc 1 417 0
	entry	sp, 32
.LCFI11:
	.loc 1 418 0
	l32r	a2, .LC87
	l8ui	a2, a2, 0
	bnez.n	a2, .L69
.LBB37:
.LBB38:
	l32r	a13, .LC88
	l32r	a12, .LC89
	l32r	a10, .LC90
	movi	a11, 0x1a2
	call8	__assert_func
.LVL97:
.L69:
.LBE38:
.LBE37:
	.loc 1 419 0
	l32r	a2, .LC91
	l16ui	a2, a2, 0
	addi.n	a2, a2, 4
	.loc 1 420 0
	extui	a2, a2, 0, 16
	retw.n
.LFE62:
	.size	get_acl_packet_size_classic, .-get_acl_packet_size_classic
	.section	.text.get_acl_data_size_ble,"ax",@progbits
	.literal_position
	.literal .LC92, readable
	.literal .LC93, .LC34
	.literal .LC94, __func__$8373
	.literal .LC95, .LC17
	.literal .LC96, ble_supported
	.literal .LC97, .LC39
	.literal .LC98, acl_data_size_ble
	.align	4
	.type	get_acl_data_size_ble, @function
get_acl_data_size_ble:
.LFB61:
	.loc 1 410 0
	entry	sp, 32
.LCFI12:
	.loc 1 411 0
	l32r	a8, .LC92
	l8ui	a8, a8, 0
	bnez.n	a8, .L71
	.loc 1 411 0 is_stmt 0 discriminator 1
	l32r	a13, .LC93
	l32r	a12, .LC94
	movi	a11, 0x19b
	j	.L73
.L71:
	.loc 1 412 0 is_stmt 1
	l32r	a8, .LC96
	l8ui	a8, a8, 0
	bnez.n	a8, .L72
.LBB41:
.LBB42:
	l32r	a13, .LC97
	l32r	a12, .LC94
	movi	a11, 0x19c
.L73:
	l32r	a10, .LC95
	call8	__assert_func
.LVL98:
.L72:
.LBE42:
.LBE41:
	.loc 1 414 0
	l32r	a8, .LC98
	l16ui	a2, a8, 0
	retw.n
.LFE61:
	.size	get_acl_data_size_ble, .-get_acl_data_size_ble
	.section	.text.get_acl_data_size_classic,"ax",@progbits
	.literal_position
	.literal .LC99, readable
	.literal .LC100, .LC34
	.literal .LC101, __func__$8369
	.literal .LC102, .LC17
	.literal .LC103, acl_data_size_classic
	.align	4
	.type	get_acl_data_size_classic, @function
get_acl_data_size_classic:
.LFB60:
	.loc 1 404 0
	entry	sp, 32
.LCFI13:
	.loc 1 405 0
	l32r	a8, .LC99
	l8ui	a8, a8, 0
	bnez.n	a8, .L75
.LBB45:
.LBB46:
	l32r	a13, .LC100
	l32r	a12, .LC101
	l32r	a10, .LC102
	movi	a11, 0x195
	call8	__assert_func
.LVL99:
.L75:
.LBE46:
.LBE45:
	.loc 1 407 0
	l32r	a8, .LC103
	l16ui	a2, a8, 0
	retw.n
.LFE60:
	.size	get_acl_data_size_classic, .-get_acl_data_size_classic
	.section	.text.supports_ble_privacy,"ax",@progbits
	.literal_position
	.literal .LC104, readable
	.literal .LC105, .LC34
	.literal .LC106, __func__$8357
	.literal .LC107, .LC17
	.literal .LC108, ble_supported
	.literal .LC109, .LC39
	.literal .LC110, features_ble
	.align	4
	.type	supports_ble_privacy, @function
supports_ble_privacy:
.LFB57:
	.loc 1 383 0
	entry	sp, 32
.LCFI14:
	.loc 1 384 0
	l32r	a2, .LC104
	l8ui	a2, a2, 0
	bnez.n	a2, .L77
	.loc 1 384 0 is_stmt 0 discriminator 1
	l32r	a13, .LC105
	l32r	a12, .LC106
	movi	a11, 0x180
	j	.L79
.L77:
	.loc 1 385 0 is_stmt 1
	l32r	a2, .LC108
	l8ui	a2, a2, 0
	bnez.n	a2, .L78
.LBB49:
.LBB50:
	l32r	a13, .LC109
	l32r	a12, .LC106
	movi	a11, 0x181
.L79:
	l32r	a10, .LC107
	call8	__assert_func
.LVL100:
.L78:
.LBE50:
.LBE49:
	.loc 1 386 0
	l32r	a2, .LC110
	l8ui	a2, a2, 0
	.loc 1 387 0
	extui	a2, a2, 6, 1
	retw.n
.LFE57:
	.size	supports_ble_privacy, .-supports_ble_privacy
	.section	.text.supports_ble_connection_parameters_request,"ax",@progbits
	.literal_position
	.literal .LC111, readable
	.literal .LC112, .LC34
	.literal .LC113, __func__$8365
	.literal .LC114, .LC17
	.literal .LC115, ble_supported
	.literal .LC116, .LC39
	.literal .LC117, features_ble
	.align	4
	.type	supports_ble_connection_parameters_request, @function
supports_ble_connection_parameters_request:
.LFB59:
	.loc 1 397 0
	entry	sp, 32
.LCFI15:
	.loc 1 398 0
	l32r	a2, .LC111
	l8ui	a2, a2, 0
	bnez.n	a2, .L81
	.loc 1 398 0 is_stmt 0 discriminator 1
	l32r	a13, .LC112
	l32r	a12, .LC113
	movi	a11, 0x18e
	j	.L83
.L81:
	.loc 1 399 0 is_stmt 1
	l32r	a2, .LC115
	l8ui	a2, a2, 0
	bnez.n	a2, .L82
.LBB53:
.LBB54:
	l32r	a13, .LC116
	l32r	a12, .LC113
	movi	a11, 0x18f
.L83:
	l32r	a10, .LC114
	call8	__assert_func
.LVL101:
.L82:
.LBE54:
.LBE53:
	.loc 1 400 0
	l32r	a2, .LC117
	l8ui	a2, a2, 0
	.loc 1 401 0
	extui	a2, a2, 1, 1
	retw.n
.LFE59:
	.size	supports_ble_connection_parameters_request, .-supports_ble_connection_parameters_request
	.section	.text.supports_ble_packet_extension,"ax",@progbits
	.literal_position
	.literal .LC118, readable
	.literal .LC119, .LC34
	.literal .LC120, __func__$8361
	.literal .LC121, .LC17
	.literal .LC122, ble_supported
	.literal .LC123, .LC39
	.literal .LC124, features_ble
	.align	4
	.type	supports_ble_packet_extension, @function
supports_ble_packet_extension:
.LFB58:
	.loc 1 390 0
	entry	sp, 32
.LCFI16:
	.loc 1 391 0
	l32r	a2, .LC118
	l8ui	a2, a2, 0
	bnez.n	a2, .L85
	.loc 1 391 0 is_stmt 0 discriminator 1
	l32r	a13, .LC119
	l32r	a12, .LC120
	movi	a11, 0x187
	j	.L87
.L85:
	.loc 1 392 0 is_stmt 1
	l32r	a2, .LC122
	l8ui	a2, a2, 0
	bnez.n	a2, .L86
.LBB57:
.LBB58:
	l32r	a13, .LC123
	l32r	a12, .LC120
	movi	a11, 0x188
.L87:
	l32r	a10, .LC121
	call8	__assert_func
.LVL102:
.L86:
.LBE58:
.LBE57:
	.loc 1 393 0
	l32r	a2, .LC124
	l8ui	a2, a2, 0
	.loc 1 394 0
	extui	a2, a2, 5, 1
	retw.n
.LFE58:
	.size	supports_ble_packet_extension, .-supports_ble_packet_extension
	.section	.text.supports_ble,"ax",@progbits
	.literal_position
	.literal .LC125, readable
	.literal .LC126, .LC34
	.literal .LC127, __func__$8353
	.literal .LC128, .LC17
	.literal .LC129, ble_supported
	.align	4
	.type	supports_ble, @function
supports_ble:
.LFB56:
	.loc 1 377 0
	entry	sp, 32
.LCFI17:
	.loc 1 378 0
	l32r	a8, .LC125
	l8ui	a8, a8, 0
	bnez.n	a8, .L89
.LBB61:
.LBB62:
	l32r	a13, .LC126
	l32r	a12, .LC127
	l32r	a10, .LC128
	movi	a11, 0x17a
	call8	__assert_func
.LVL103:
.L89:
.LBE62:
.LBE61:
	.loc 1 380 0
	l32r	a8, .LC129
	l8ui	a2, a8, 0
	retw.n
.LFE56:
	.size	supports_ble, .-supports_ble
	.section	.text.supports_master_slave_role_switch,"ax",@progbits
	.literal_position
	.literal .LC130, readable
	.literal .LC131, .LC34
	.literal .LC132, __func__$8349
	.literal .LC133, .LC17
	.literal .LC134, features_classic
	.align	4
	.type	supports_master_slave_role_switch, @function
supports_master_slave_role_switch:
.LFB55:
	.loc 1 371 0
	entry	sp, 32
.LCFI18:
	.loc 1 372 0
	l32r	a2, .LC130
	l8ui	a2, a2, 0
	bnez.n	a2, .L91
.LBB65:
.LBB66:
	l32r	a13, .LC131
	l32r	a12, .LC132
	l32r	a10, .LC133
	movi	a11, 0x174
	call8	__assert_func
.LVL104:
.L91:
.LBE66:
.LBE65:
	.loc 1 373 0
	l32r	a2, .LC134
	l8ui	a2, a2, 0
	.loc 1 374 0
	extui	a2, a2, 5, 1
	retw.n
.LFE55:
	.size	supports_master_slave_role_switch, .-supports_master_slave_role_switch
	.section	.text.supports_extended_inquiry_response,"ax",@progbits
	.literal_position
	.literal .LC135, readable
	.literal .LC136, .LC34
	.literal .LC137, __func__$8345
	.literal .LC138, .LC17
	.literal .LC139, features_classic
	.align	4
	.type	supports_extended_inquiry_response, @function
supports_extended_inquiry_response:
.LFB54:
	.loc 1 365 0
	entry	sp, 32
.LCFI19:
	.loc 1 366 0
	l32r	a2, .LC135
	l8ui	a2, a2, 0
	bnez.n	a2, .L93
.LBB69:
.LBB70:
	l32r	a13, .LC136
	l32r	a12, .LC137
	l32r	a10, .LC138
	movi	a11, 0x16e
	call8	__assert_func
.LVL105:
.L93:
.LBE70:
.LBE69:
	.loc 1 367 0
	l32r	a2, .LC139
	l8ui	a2, a2, 6
	.loc 1 368 0
	extui	a2, a2, 0, 1
	retw.n
.LFE54:
	.size	supports_extended_inquiry_response, .-supports_extended_inquiry_response
	.section	.text.supports_rssi_with_inquiry_results,"ax",@progbits
	.literal_position
	.literal .LC140, readable
	.literal .LC141, .LC34
	.literal .LC142, __func__$8341
	.literal .LC143, .LC17
	.literal .LC144, features_classic
	.align	4
	.type	supports_rssi_with_inquiry_results, @function
supports_rssi_with_inquiry_results:
.LFB53:
	.loc 1 359 0
	entry	sp, 32
.LCFI20:
	.loc 1 360 0
	l32r	a2, .LC140
	l8ui	a2, a2, 0
	bnez.n	a2, .L95
.LBB73:
.LBB74:
	l32r	a13, .LC141
	l32r	a12, .LC142
	l32r	a10, .LC143
	movi	a11, 0x168
	call8	__assert_func
.LVL106:
.L95:
.LBE74:
.LBE73:
	.loc 1 361 0
	l32r	a2, .LC144
	l8ui	a2, a2, 3
	.loc 1 362 0
	extui	a2, a2, 6, 1
	retw.n
.LFE53:
	.size	supports_rssi_with_inquiry_results, .-supports_rssi_with_inquiry_results
	.section	.text.supports_interlaced_inquiry_scan,"ax",@progbits
	.literal_position
	.literal .LC145, readable
	.literal .LC146, .LC34
	.literal .LC147, __func__$8337
	.literal .LC148, .LC17
	.literal .LC149, features_classic
	.align	4
	.type	supports_interlaced_inquiry_scan, @function
supports_interlaced_inquiry_scan:
.LFB52:
	.loc 1 353 0
	entry	sp, 32
.LCFI21:
	.loc 1 354 0
	l32r	a2, .LC145
	l8ui	a2, a2, 0
	bnez.n	a2, .L97
.LBB77:
.LBB78:
	l32r	a13, .LC146
	l32r	a12, .LC147
	l32r	a10, .LC148
	movi	a11, 0x162
	call8	__assert_func
.LVL107:
.L97:
.LBE78:
.LBE77:
	.loc 1 355 0
	l32r	a2, .LC149
	l8ui	a2, a2, 3
	.loc 1 356 0
	extui	a2, a2, 4, 1
	retw.n
.LFE52:
	.size	supports_interlaced_inquiry_scan, .-supports_interlaced_inquiry_scan
	.section	.text.supports_reading_remote_extended_features,"ax",@progbits
	.literal_position
	.literal .LC150, readable
	.literal .LC151, .LC34
	.literal .LC152, __func__$8333
	.literal .LC153, .LC17
	.literal .LC154, supported_commands
	.align	4
	.type	supports_reading_remote_extended_features, @function
supports_reading_remote_extended_features:
.LFB51:
	.loc 1 347 0
	entry	sp, 32
.LCFI22:
	.loc 1 348 0
	l32r	a2, .LC150
	l8ui	a2, a2, 0
	bnez.n	a2, .L99
.LBB81:
.LBB82:
	l32r	a13, .LC151
	l32r	a12, .LC152
	l32r	a10, .LC153
	movi	a11, 0x15c
	call8	__assert_func
.LVL108:
.L99:
.LBE82:
.LBE81:
	.loc 1 349 0
	l32r	a2, .LC154
	l8ui	a2, a2, 2
	.loc 1 350 0
	extui	a2, a2, 6, 1
	retw.n
.LFE51:
	.size	supports_reading_remote_extended_features, .-supports_reading_remote_extended_features
	.section	.text.supports_simultaneous_le_bredr,"ax",@progbits
	.literal_position
	.literal .LC155, readable
	.literal .LC156, .LC34
	.literal .LC157, __func__$8329
	.literal .LC158, .LC17
	.literal .LC159, features_classic
	.align	4
	.type	supports_simultaneous_le_bredr, @function
supports_simultaneous_le_bredr:
.LFB50:
	.loc 1 341 0
	entry	sp, 32
.LCFI23:
	.loc 1 342 0
	l32r	a2, .LC155
	l8ui	a2, a2, 0
	bnez.n	a2, .L101
.LBB85:
.LBB86:
	l32r	a13, .LC156
	l32r	a12, .LC157
	l32r	a10, .LC158
	movi	a11, 0x156
	call8	__assert_func
.LVL109:
.L101:
.LBE86:
.LBE85:
	.loc 1 343 0
	l32r	a2, .LC159
	l8ui	a2, a2, 6
	.loc 1 344 0
	extui	a2, a2, 1, 1
	retw.n
.LFE50:
	.size	supports_simultaneous_le_bredr, .-supports_simultaneous_le_bredr
	.section	.text.supports_secure_connections,"ax",@progbits
	.literal_position
	.literal .LC160, readable
	.literal .LC161, .LC34
	.literal .LC162, __func__$8325
	.literal .LC163, .LC17
	.align	4
	.type	supports_secure_connections, @function
supports_secure_connections:
.LFB49:
	.loc 1 335 0
	entry	sp, 32
.LCFI24:
	.loc 1 336 0
	l32r	a8, .LC160
	l8ui	a8, a8, 0
	bnez.n	a8, .L103
.LBB89:
.LBB90:
	l32r	a13, .LC161
	l32r	a12, .LC162
	l32r	a10, .LC163
	movi	a11, 0x150
	call8	__assert_func
.LVL110:
.L103:
.LBE90:
.LBE89:
	.loc 1 338 0
	movi.n	a2, 0
	retw.n
.LFE49:
	.size	supports_secure_connections, .-supports_secure_connections
	.section	.text.supports_simple_pairing,"ax",@progbits
	.literal_position
	.literal .LC164, readable
	.literal .LC165, .LC34
	.literal .LC166, __func__$8321
	.literal .LC167, .LC17
	.literal .LC168, simple_pairing_supported
	.align	4
	.type	supports_simple_pairing, @function
supports_simple_pairing:
.LFB48:
	.loc 1 329 0
	entry	sp, 32
.LCFI25:
	.loc 1 330 0
	l32r	a8, .LC164
	l8ui	a8, a8, 0
	bnez.n	a8, .L105
.LBB93:
.LBB94:
	l32r	a13, .LC165
	l32r	a12, .LC166
	l32r	a10, .LC167
	movi	a11, 0x14a
	call8	__assert_func
.LVL111:
.L105:
.LBE94:
.LBE93:
	.loc 1 332 0
	l32r	a8, .LC168
	l8ui	a2, a8, 0
	retw.n
.LFE48:
	.size	supports_simple_pairing, .-supports_simple_pairing
	.section	.text.get_ble_supported_states,"ax",@progbits
	.literal_position
	.literal .LC169, readable
	.literal .LC170, .LC34
	.literal .LC171, __func__$8317
	.literal .LC172, .LC17
	.literal .LC173, ble_supported
	.literal .LC174, .LC39
	.literal .LC175, ble_supported_states
	.align	4
	.type	get_ble_supported_states, @function
get_ble_supported_states:
.LFB47:
	.loc 1 322 0
	entry	sp, 32
.LCFI26:
	.loc 1 323 0
	l32r	a8, .LC169
	l8ui	a8, a8, 0
	bnez.n	a8, .L107
	.loc 1 323 0 is_stmt 0 discriminator 1
	l32r	a13, .LC170
	l32r	a12, .LC171
	movi	a11, 0x143
	j	.L109
.L107:
	.loc 1 324 0 is_stmt 1
	l32r	a8, .LC173
	l8ui	a8, a8, 0
	bnez.n	a8, .L108
.LBB97:
.LBB98:
	l32r	a13, .LC174
	l32r	a12, .LC171
	movi	a11, 0x144
.L109:
	l32r	a10, .LC172
	call8	__assert_func
.LVL112:
.L108:
.LBE98:
.LBE97:
	.loc 1 326 0
	l32r	a2, .LC175
	retw.n
.LFE47:
	.size	get_ble_supported_states, .-get_ble_supported_states
	.section	.text.get_features_ble,"ax",@progbits
	.literal_position
	.literal .LC176, readable
	.literal .LC177, .LC34
	.literal .LC178, __func__$8313
	.literal .LC179, .LC17
	.literal .LC180, ble_supported
	.literal .LC181, .LC39
	.literal .LC182, features_ble
	.align	4
	.type	get_features_ble, @function
get_features_ble:
.LFB46:
	.loc 1 315 0
	entry	sp, 32
.LCFI27:
	.loc 1 316 0
	l32r	a8, .LC176
	l8ui	a8, a8, 0
	bnez.n	a8, .L111
	.loc 1 316 0 is_stmt 0 discriminator 1
	l32r	a13, .LC177
	l32r	a12, .LC178
	movi	a11, 0x13c
	j	.L113
.L111:
	.loc 1 317 0 is_stmt 1
	l32r	a8, .LC180
	l8ui	a8, a8, 0
	bnez.n	a8, .L112
.LBB101:
.LBB102:
	l32r	a13, .LC181
	l32r	a12, .LC178
	movi	a11, 0x13d
.L113:
	l32r	a10, .LC179
	call8	__assert_func
.LVL113:
.L112:
.LBE102:
.LBE101:
	.loc 1 319 0
	l32r	a2, .LC182
	retw.n
.LFE46:
	.size	get_features_ble, .-get_features_ble
	.section	.text.get_last_features_classic_index,"ax",@progbits
	.literal_position
	.literal .LC183, readable
	.literal .LC184, .LC34
	.literal .LC185, __func__$8309
	.literal .LC186, .LC17
	.literal .LC187, last_features_classic_page_index
	.align	4
	.type	get_last_features_classic_index, @function
get_last_features_classic_index:
.LFB45:
	.loc 1 309 0
	entry	sp, 32
.LCFI28:
	.loc 1 310 0
	l32r	a8, .LC183
	l8ui	a8, a8, 0
	bnez.n	a8, .L115
.LBB105:
.LBB106:
	l32r	a13, .LC184
	l32r	a12, .LC185
	l32r	a10, .LC186
	movi	a11, 0x136
	call8	__assert_func
.LVL114:
.L115:
.LBE106:
.LBE105:
	.loc 1 312 0
	l32r	a8, .LC187
	l8ui	a2, a8, 0
	retw.n
.LFE45:
	.size	get_last_features_classic_index, .-get_last_features_classic_index
	.section	.rodata.str1.1
.LC192:
	.string	"index < MAX_FEATURES_CLASSIC_PAGE_COUNT"
	.section	.text.get_features_classic,"ax",@progbits
	.literal_position
	.literal .LC188, readable
	.literal .LC189, .LC34
	.literal .LC190, __func__$8305
	.literal .LC191, .LC17
	.literal .LC193, .LC192
	.literal .LC194, features_classic
	.align	4
	.type	get_features_classic, @function
get_features_classic:
.LFB44:
	.loc 1 302 0
.LVL115:
	entry	sp, 32
.LCFI29:
	.loc 1 303 0
	l32r	a8, .LC188
	l8ui	a8, a8, 0
	bnez.n	a8, .L117
	.loc 1 303 0 is_stmt 0 discriminator 1
	l32r	a13, .LC189
	l32r	a12, .LC190
	movi	a11, 0x12f
	j	.L119
.L117:
	.loc 1 304 0 is_stmt 1
	blti	a2, 3, .L118
.LVL116:
.LBB109:
.LBB110:
	l32r	a13, .LC193
	l32r	a12, .LC190
	movi	a11, 0x130
.LVL117:
.L119:
	l32r	a10, .LC191
	call8	__assert_func
.LVL118:
.L118:
.LBE110:
.LBE109:
	.loc 1 306 0
	l32r	a8, .LC194
	addx8	a2, a2, a8
.LVL119:
	retw.n
.LFE44:
	.size	get_features_classic, .-get_features_classic
	.section	.text.get_bt_version,"ax",@progbits
	.literal_position
	.literal .LC195, readable
	.literal .LC196, .LC34
	.literal .LC197, __func__$8301
	.literal .LC198, .LC17
	.literal .LC199, bt_version
	.align	4
	.type	get_bt_version, @function
get_bt_version:
.LFB43:
	.loc 1 295 0
	entry	sp, 32
.LCFI30:
	.loc 1 296 0
	l32r	a8, .LC195
	l8ui	a8, a8, 0
	bnez.n	a8, .L121
.LBB113:
.LBB114:
	l32r	a13, .LC196
	l32r	a12, .LC197
	l32r	a10, .LC198
	movi	a11, 0x128
	call8	__assert_func
.LVL120:
.L121:
.LBE114:
.LBE113:
	.loc 1 298 0
	l32r	a2, .LC199
	retw.n
.LFE43:
	.size	get_bt_version, .-get_bt_version
	.section	.text.get_address,"ax",@progbits
	.literal_position
	.literal .LC200, readable
	.literal .LC201, .LC34
	.literal .LC202, __func__$8297
	.literal .LC203, .LC17
	.literal .LC204, address
	.align	4
	.type	get_address, @function
get_address:
.LFB42:
	.loc 1 289 0
	entry	sp, 32
.LCFI31:
	.loc 1 290 0
	l32r	a8, .LC200
	l8ui	a8, a8, 0
	bnez.n	a8, .L123
.LBB117:
.LBB118:
	l32r	a13, .LC201
	l32r	a12, .LC202
	l32r	a10, .LC203
	movi	a11, 0x122
	call8	__assert_func
.LVL121:
.L123:
.LBE118:
.LBE117:
	.loc 1 292 0
	l32r	a2, .LC204
	retw.n
.LFE42:
	.size	get_address, .-get_address
	.section	.text.controller_get_interface,"ax",@progbits
	.literal_position
	.literal .LC205, loaded$8413
	.literal .LC206, hci
	.literal .LC207, packet_factory
	.literal .LC208, packet_parser
	.literal .LC209, interface
	.align	4
	.global	controller_get_interface
	.type	controller_get_interface, @function
controller_get_interface:
.LFB71:
	.loc 1 540 0
	entry	sp, 32
.LCFI32:
	.loc 1 542 0
	l32r	a8, .LC205
	l8ui	a9, a8, 0
	bnez.n	a9, .L125
	.loc 1 543 0
	movi.n	a9, 1
	s8i	a9, a8, 0
	.loc 1 545 0
	call8	hci_layer_get_interface
.LVL122:
	l32r	a8, .LC206
	s32i.n	a10, a8, 0
	.loc 1 546 0
	call8	hci_packet_factory_get_interface
.LVL123:
	l32r	a8, .LC207
	s32i.n	a10, a8, 0
	.loc 1 547 0
	call8	hci_packet_parser_get_interface
.LVL124:
	l32r	a8, .LC208
	s32i.n	a10, a8, 0
.L125:
	.loc 1 551 0
	l32r	a2, .LC209
	retw.n
.LFE71:
	.size	controller_get_interface, .-controller_get_interface
	.section	.rodata.__func__$8283,"a",@progbits
	.type	__func__$8283, @object
	.size	__func__$8283, 9
__func__$8283:
	.string	"start_up"
	.section	.rodata.__func__$8297,"a",@progbits
	.type	__func__$8297, @object
	.size	__func__$8297, 12
__func__$8297:
	.string	"get_address"
	.section	.rodata.__func__$8301,"a",@progbits
	.type	__func__$8301, @object
	.size	__func__$8301, 15
__func__$8301:
	.string	"get_bt_version"
	.section	.rodata.__func__$8305,"a",@progbits
	.type	__func__$8305, @object
	.size	__func__$8305, 21
__func__$8305:
	.string	"get_features_classic"
	.section	.rodata.__func__$8309,"a",@progbits
	.type	__func__$8309, @object
	.size	__func__$8309, 32
__func__$8309:
	.string	"get_last_features_classic_index"
	.section	.rodata.__func__$8313,"a",@progbits
	.type	__func__$8313, @object
	.size	__func__$8313, 17
__func__$8313:
	.string	"get_features_ble"
	.section	.rodata.__func__$8317,"a",@progbits
	.type	__func__$8317, @object
	.size	__func__$8317, 25
__func__$8317:
	.string	"get_ble_supported_states"
	.section	.rodata.__func__$8321,"a",@progbits
	.type	__func__$8321, @object
	.size	__func__$8321, 24
__func__$8321:
	.string	"supports_simple_pairing"
	.section	.rodata.__func__$8325,"a",@progbits
	.type	__func__$8325, @object
	.size	__func__$8325, 28
__func__$8325:
	.string	"supports_secure_connections"
	.section	.rodata.__func__$8329,"a",@progbits
	.type	__func__$8329, @object
	.size	__func__$8329, 31
__func__$8329:
	.string	"supports_simultaneous_le_bredr"
	.section	.rodata.__func__$8333,"a",@progbits
	.type	__func__$8333, @object
	.size	__func__$8333, 42
__func__$8333:
	.string	"supports_reading_remote_extended_features"
	.section	.rodata.__func__$8337,"a",@progbits
	.type	__func__$8337, @object
	.size	__func__$8337, 33
__func__$8337:
	.string	"supports_interlaced_inquiry_scan"
	.section	.rodata.__func__$8341,"a",@progbits
	.type	__func__$8341, @object
	.size	__func__$8341, 35
__func__$8341:
	.string	"supports_rssi_with_inquiry_results"
	.section	.rodata.__func__$8345,"a",@progbits
	.type	__func__$8345, @object
	.size	__func__$8345, 35
__func__$8345:
	.string	"supports_extended_inquiry_response"
	.section	.rodata.__func__$8349,"a",@progbits
	.type	__func__$8349, @object
	.size	__func__$8349, 34
__func__$8349:
	.string	"supports_master_slave_role_switch"
	.section	.rodata.__func__$8353,"a",@progbits
	.type	__func__$8353, @object
	.size	__func__$8353, 13
__func__$8353:
	.string	"supports_ble"
	.section	.rodata.__func__$8361,"a",@progbits
	.type	__func__$8361, @object
	.size	__func__$8361, 30
__func__$8361:
	.string	"supports_ble_packet_extension"
	.section	.rodata.__func__$8365,"a",@progbits
	.type	__func__$8365, @object
	.size	__func__$8365, 43
__func__$8365:
	.string	"supports_ble_connection_parameters_request"
	.section	.rodata.__func__$8357,"a",@progbits
	.type	__func__$8357, @object
	.size	__func__$8357, 21
__func__$8357:
	.string	"supports_ble_privacy"
	.section	.rodata.__func__$8369,"a",@progbits
	.type	__func__$8369, @object
	.size	__func__$8369, 26
__func__$8369:
	.string	"get_acl_data_size_classic"
	.section	.rodata.__func__$8373,"a",@progbits
	.type	__func__$8373, @object
	.size	__func__$8373, 22
__func__$8373:
	.string	"get_acl_data_size_ble"
	.section	.rodata.__func__$8377,"a",@progbits
	.type	__func__$8377, @object
	.size	__func__$8377, 28
__func__$8377:
	.string	"get_acl_packet_size_classic"
	.section	.rodata.__func__$8381,"a",@progbits
	.type	__func__$8381, @object
	.size	__func__$8381, 24
__func__$8381:
	.string	"get_acl_packet_size_ble"
	.section	.rodata.__func__$8385,"a",@progbits
	.type	__func__$8385, @object
	.size	__func__$8385, 38
__func__$8385:
	.string	"get_ble_suggested_default_data_length"
	.section	.rodata.__func__$8389,"a",@progbits
	.type	__func__$8389, @object
	.size	__func__$8389, 38
__func__$8389:
	.string	"get_ble_suggested_default_data_txtime"
	.section	.rodata.__func__$8393,"a",@progbits
	.type	__func__$8393, @object
	.size	__func__$8393, 29
__func__$8393:
	.string	"get_acl_buffer_count_classic"
	.section	.rodata.__func__$8397,"a",@progbits
	.type	__func__$8397, @object
	.size	__func__$8397, 25
__func__$8397:
	.string	"get_acl_buffer_count_ble"
	.section	.rodata.__func__$8401,"a",@progbits
	.type	__func__$8401, @object
	.size	__func__$8401, 24
__func__$8401:
	.string	"get_ble_white_list_size"
	.section	.rodata.__func__$8405,"a",@progbits
	.type	__func__$8405, @object
	.size	__func__$8405, 32
__func__$8405:
	.string	"get_ble_resolving_list_max_size"
	.section	.rodata.__func__$8409,"a",@progbits
	.type	__func__$8409, @object
	.size	__func__$8409, 32
__func__$8409:
	.string	"set_ble_resolving_list_max_size"
	.section	.bss.loaded$8413,"aw",@nobits
	.type	loaded$8413, @object
	.size	loaded$8413, 1
loaded$8413:
	.zero	1
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 128
interface:
	.word	start_up
	.word	shut_down
	.word	get_is_ready
	.word	get_address
	.word	get_bt_version
	.word	get_features_classic
	.word	get_last_features_classic_index
	.word	get_features_ble
	.word	get_ble_supported_states
	.word	supports_simple_pairing
	.word	supports_secure_connections
	.word	supports_simultaneous_le_bredr
	.word	supports_reading_remote_extended_features
	.word	supports_interlaced_inquiry_scan
	.word	supports_rssi_with_inquiry_results
	.word	supports_extended_inquiry_response
	.word	supports_master_slave_role_switch
	.word	supports_ble
	.word	supports_ble_packet_extension
	.word	supports_ble_connection_parameters_request
	.word	supports_ble_privacy
	.word	get_acl_data_size_classic
	.word	get_acl_data_size_ble
	.word	get_acl_packet_size_classic
	.word	get_acl_packet_size_ble
	.word	get_ble_suggested_default_data_length
	.word	get_ble_suggested_default_data_txtime
	.word	get_acl_buffer_count_classic
	.word	get_acl_buffer_count_ble
	.word	get_ble_white_list_size
	.word	get_ble_resolving_list_max_size
	.word	set_ble_resolving_list_max_size
	.section	.bss.simple_pairing_supported,"aw",@nobits
	.type	simple_pairing_supported, @object
	.size	simple_pairing_supported, 1
simple_pairing_supported:
	.zero	1
	.section	.bss.ble_supported,"aw",@nobits
	.type	ble_supported, @object
	.size	ble_supported, 1
ble_supported:
	.zero	1
	.section	.bss.readable,"aw",@nobits
	.type	readable, @object
	.size	readable, 1
readable:
	.zero	1
	.section	.bss.ble_suggested_default_data_txtime,"aw",@nobits
	.align	2
	.type	ble_suggested_default_data_txtime, @object
	.size	ble_suggested_default_data_txtime, 2
ble_suggested_default_data_txtime:
	.zero	2
	.section	.bss.ble_suggested_default_data_length,"aw",@nobits
	.align	2
	.type	ble_suggested_default_data_length, @object
	.size	ble_suggested_default_data_length, 2
ble_suggested_default_data_length:
	.zero	2
	.section	.bss.features_ble,"aw",@nobits
	.type	features_ble, @object
	.size	features_ble, 8
features_ble:
	.zero	8
	.section	.bss.ble_supported_states,"aw",@nobits
	.type	ble_supported_states, @object
	.size	ble_supported_states, 8
ble_supported_states:
	.zero	8
	.section	.bss.ble_resolving_list_max_size,"aw",@nobits
	.type	ble_resolving_list_max_size, @object
	.size	ble_resolving_list_max_size, 1
ble_resolving_list_max_size:
	.zero	1
	.section	.bss.ble_white_list_size,"aw",@nobits
	.type	ble_white_list_size, @object
	.size	ble_white_list_size, 1
ble_white_list_size:
	.zero	1
	.section	.bss.sco_buffer_count,"aw",@nobits
	.align	2
	.type	sco_buffer_count, @object
	.size	sco_buffer_count, 2
sco_buffer_count:
	.zero	2
	.section	.bss.sco_data_size,"aw",@nobits
	.type	sco_data_size, @object
	.size	sco_data_size, 1
sco_data_size:
	.zero	1
	.section	.bss.acl_buffer_count_ble,"aw",@nobits
	.type	acl_buffer_count_ble, @object
	.size	acl_buffer_count_ble, 1
acl_buffer_count_ble:
	.zero	1
	.section	.bss.acl_buffer_count_classic,"aw",@nobits
	.align	2
	.type	acl_buffer_count_classic, @object
	.size	acl_buffer_count_classic, 2
acl_buffer_count_classic:
	.zero	2
	.section	.bss.acl_data_size_ble,"aw",@nobits
	.align	2
	.type	acl_data_size_ble, @object
	.size	acl_data_size_ble, 2
acl_data_size_ble:
	.zero	2
	.section	.bss.acl_data_size_classic,"aw",@nobits
	.align	2
	.type	acl_data_size_classic, @object
	.size	acl_data_size_classic, 2
acl_data_size_classic:
	.zero	2
	.section	.bss.last_features_classic_page_index,"aw",@nobits
	.type	last_features_classic_page_index, @object
	.size	last_features_classic_page_index, 1
last_features_classic_page_index:
	.zero	1
	.section	.bss.features_classic,"aw",@nobits
	.type	features_classic, @object
	.size	features_classic, 24
features_classic:
	.zero	24
	.section	.bss.supported_commands,"aw",@nobits
	.type	supported_commands, @object
	.size	supported_commands, 64
supported_commands:
	.zero	64
	.section	.bss.bt_version,"aw",@nobits
	.align	2
	.type	bt_version, @object
	.size	bt_version, 10
bt_version:
	.zero	10
	.section	.bss.address,"aw",@nobits
	.type	address, @object
	.size	address, 6
address:
	.zero	6
	.section	.bss.packet_parser,"aw",@nobits
	.align	4
	.type	packet_parser, @object
	.size	packet_parser, 4
packet_parser:
	.zero	4
	.section	.bss.packet_factory,"aw",@nobits
	.align	4
	.type	packet_factory, @object
	.size	packet_factory, 4
packet_factory:
	.zero	4
	.section	.bss.hci,"aw",@nobits
	.align	4
	.type	hci, @object
	.size	hci, 4
hci:
	.zero	4
	.global	SCO_HOST_BUFFER_SIZE
	.section	.rodata.SCO_HOST_BUFFER_SIZE,"a",@progbits
	.type	SCO_HOST_BUFFER_SIZE, @object
	.size	SCO_HOST_BUFFER_SIZE, 1
SCO_HOST_BUFFER_SIZE:
	.byte	-1
	.global	CLASSIC_EVENT_MASK
	.section	.rodata.CLASSIC_EVENT_MASK,"a",@progbits
	.type	CLASSIC_EVENT_MASK, @object
	.size	CLASSIC_EVENT_MASK, 8
CLASSIC_EVENT_MASK:
	.ascii	"=\277\377\377\377\377\377\377"
	.global	BLE_EVENT_MASK
	.section	.rodata.BLE_EVENT_MASK,"a",@progbits
	.type	BLE_EVENT_MASK, @object
	.size	BLE_EVENT_MASK, 8
BLE_EVENT_MASK:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\006\177"
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI2-.LFB39
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI3-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI4-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI5-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI6-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI7-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI8-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI9-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI10-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI11-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI12-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI13-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI14-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI15-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI16-.LFB58
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
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI18-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI19-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI20-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI21-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI22-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI23-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI24-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI25-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI26-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI27-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI28-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI29-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI30-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI31-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI32-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/device_features.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/controller.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_layer.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/event_mask.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_packet_factory.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/version.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/hci_packet_parser.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2112
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0xc
	.4byte	.LASF219
	.4byte	.LASF220
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	0xda
	.uleb128 0x9
	.4byte	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xbf
	.4byte	0x142
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x5
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xc4
	.4byte	0x142
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x151
	.uleb128 0xe
	.4byte	0xb3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xc5
	.4byte	0xfd
	.uleb128 0xd
	.4byte	0xe0
	.4byte	0x16c
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.byte	0x3b
	.4byte	0x181
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.4byte	0x181
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x191
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3d
	.4byte	0x16c
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.4byte	0x1b1
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1a
	.4byte	0x1b1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x1c1
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1b
	.4byte	0x19c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x58
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x4f
	.4byte	0x1d2
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xa
	.byte	0x1d
	.4byte	0x1dd
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0xc
	.byte	0xb
	.byte	0x18
	.4byte	0x224
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xb
	.byte	0x19
	.4byte	0xf6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xb
	.byte	0x1a
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xb
	.byte	0x1b
	.4byte	0x9f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x1d
	.4byte	0x1f3
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x80
	.byte	0xc
	.byte	0x20
	.4byte	0x3bc
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xc
	.byte	0x21
	.4byte	0xc1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xc
	.byte	0x22
	.4byte	0xc1
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xc
	.byte	0x23
	.4byte	0x8b6
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xc
	.byte	0x25
	.4byte	0x8cc
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xc
	.byte	0x26
	.4byte	0x8e2
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xc
	.byte	0x28
	.4byte	0x902
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xc
	.byte	0x2a
	.4byte	0x90d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xc
	.byte	0x2c
	.4byte	0x918
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xc
	.byte	0x2d
	.4byte	0x92e
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xc
	.byte	0x2f
	.4byte	0x8b6
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xc
	.byte	0x30
	.4byte	0x8b6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xc
	.byte	0x31
	.4byte	0x8b6
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xc
	.byte	0x32
	.4byte	0x8b6
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xc
	.byte	0x33
	.4byte	0x8b6
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xc
	.byte	0x34
	.4byte	0x8b6
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xc
	.byte	0x35
	.4byte	0x8b6
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xc
	.byte	0x36
	.4byte	0x8b6
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xc
	.byte	0x38
	.4byte	0x8b6
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xc
	.byte	0x39
	.4byte	0x8b6
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xc
	.byte	0x3a
	.4byte	0x8b6
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xc
	.byte	0x3b
	.4byte	0x8b6
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xc
	.byte	0x3e
	.4byte	0x939
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xc
	.byte	0x3f
	.4byte	0x939
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xc
	.byte	0x44
	.4byte	0x939
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xc
	.byte	0x45
	.4byte	0x939
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xc
	.byte	0x47
	.4byte	0x939
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xc
	.byte	0x48
	.4byte	0x939
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xc
	.byte	0x4b
	.4byte	0x939
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xc
	.byte	0x4c
	.4byte	0x90d
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xc
	.byte	0x4e
	.4byte	0x90d
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xc
	.byte	0x50
	.4byte	0x90d
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xc
	.byte	0x51
	.4byte	0xda
	.byte	0x7c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xd
	.byte	0x45
	.4byte	0x3c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0x8
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xd
	.byte	0x46
	.4byte	0x3ee
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0x8
	.4byte	0x409
	.uleb128 0x9
	.4byte	0x7e
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x10
	.byte	0xd
	.byte	0x48
	.4byte	0x446
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0xd
	.byte	0x4d
	.4byte	0xc1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xd
	.byte	0x50
	.4byte	0x460
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xd
	.byte	0x57
	.4byte	0x47b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5a
	.4byte	0x491
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x460
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x3bc
	.uleb128 0x9
	.4byte	0x3e3
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x446
	.uleb128 0x11
	.4byte	0x475
	.4byte	0x475
	.uleb128 0x9
	.4byte	0x3dd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0x6
	.byte	0x4
	.4byte	0x466
	.uleb128 0x8
	.4byte	0x491
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x481
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xd
	.byte	0x5b
	.4byte	0x409
	.uleb128 0xa
	.byte	0x8
	.byte	0xe
	.byte	0x1a
	.4byte	0x4b7
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xe
	.byte	0x1b
	.4byte	0x1b1
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xe
	.byte	0x1c
	.4byte	0x4a2
	.uleb128 0xa
	.byte	0x5c
	.byte	0xf
	.byte	0x19
	.4byte	0x5df
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xf
	.byte	0x1a
	.4byte	0x5e4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xf
	.byte	0x1b
	.4byte	0x5e4
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xf
	.byte	0x1c
	.4byte	0x5f9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xf
	.byte	0x1d
	.4byte	0x618
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xf
	.byte	0x1e
	.4byte	0x63c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xf
	.byte	0x1f
	.4byte	0x5e4
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xf
	.byte	0x20
	.4byte	0x5e4
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xf
	.byte	0x21
	.4byte	0x5e4
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xf
	.byte	0x22
	.4byte	0x5f9
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xf
	.byte	0x23
	.4byte	0x5f9
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xf
	.byte	0x24
	.4byte	0x5f9
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xf
	.byte	0x25
	.4byte	0x65c
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xf
	.byte	0x26
	.4byte	0x676
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xf
	.byte	0x27
	.4byte	0x5e4
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0xf
	.byte	0x28
	.4byte	0x5e4
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0xf
	.byte	0x29
	.4byte	0x5e4
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0xf
	.byte	0x2a
	.4byte	0x5e4
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0xf
	.byte	0x2b
	.4byte	0x5e4
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0xf
	.byte	0x2c
	.4byte	0x5e4
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0xf
	.byte	0x2d
	.4byte	0x690
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xf
	.byte	0x2e
	.4byte	0x65c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0xf
	.byte	0x2f
	.4byte	0x5f9
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0xf
	.byte	0x30
	.4byte	0x5f9
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.4byte	0x3dd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5df
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x5f9
	.uleb128 0x9
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x618
	.uleb128 0x9
	.4byte	0x7e
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ff
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x63c
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x7e
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61e
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x651
	.uleb128 0x9
	.4byte	0x651
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x657
	.uleb128 0x13
	.4byte	0x4b7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x642
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x676
	.uleb128 0x9
	.4byte	0x7e
	.uleb128 0x9
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x662
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x690
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x67c
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xf
	.byte	0x31
	.4byte	0x4c2
	.uleb128 0xa
	.byte	0xa
	.byte	0x10
	.byte	0x17
	.4byte	0x6e6
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x10
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x10
	.byte	0x19
	.4byte	0x89
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x10
	.byte	0x1a
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x10
	.byte	0x1b
	.4byte	0x89
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x10
	.byte	0x1c
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x10
	.byte	0x1d
	.4byte	0x6a1
	.uleb128 0xa
	.byte	0x30
	.byte	0x11
	.byte	0x1f
	.4byte	0x78a
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x11
	.byte	0x20
	.4byte	0x795
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x11
	.byte	0x22
	.4byte	0x7c0
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x11
	.byte	0x2a
	.4byte	0x7dc
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x11
	.byte	0x2f
	.4byte	0x7f8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x11
	.byte	0x34
	.4byte	0x813
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x11
	.byte	0x3a
	.4byte	0x83e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x11
	.byte	0x42
	.4byte	0x854
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x11
	.byte	0x47
	.4byte	0x86f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x11
	.byte	0x4d
	.4byte	0x813
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x11
	.byte	0x53
	.4byte	0x885
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x11
	.byte	0x58
	.4byte	0x854
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x11
	.byte	0x5d
	.4byte	0x8a0
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0x795
	.uleb128 0x9
	.4byte	0x3dd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78a
	.uleb128 0x8
	.4byte	0x7ba
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	0x7ba
	.uleb128 0x9
	.4byte	0x1cc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x8
	.4byte	0x7d6
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x7d6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7c6
	.uleb128 0x8
	.4byte	0x7f2
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x7f2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x191
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e2
	.uleb128 0x8
	.4byte	0x813
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x7ba
	.uleb128 0x9
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7fe
	.uleb128 0x8
	.4byte	0x838
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x7ba
	.uleb128 0x9
	.4byte	0x7ba
	.uleb128 0x9
	.4byte	0x838
	.uleb128 0x9
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x819
	.uleb128 0x8
	.4byte	0x854
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x7ba
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x844
	.uleb128 0x8
	.4byte	0x86f
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	0x7ba
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85a
	.uleb128 0x8
	.4byte	0x885
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x838
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x875
	.uleb128 0x8
	.4byte	0x8a0
	.uleb128 0x9
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	0x1cc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x88b
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x11
	.byte	0x62
	.4byte	0x6f1
	.uleb128 0x12
	.4byte	0xf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b1
	.uleb128 0x12
	.4byte	0x8c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c7
	.uleb128 0x13
	.4byte	0x191
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8bc
	.uleb128 0x12
	.4byte	0x8d7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8dd
	.uleb128 0x13
	.4byte	0x6e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0x11
	.4byte	0x8f7
	.4byte	0x8f7
	.uleb128 0x9
	.4byte	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8fd
	.uleb128 0x13
	.4byte	0x1c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e8
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x908
	.uleb128 0x12
	.4byte	0x8f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x913
	.uleb128 0x12
	.4byte	0x923
	.uleb128 0x6
	.byte	0x4
	.4byte	0x929
	.uleb128 0x13
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x91e
	.uleb128 0x12
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0x934
	.uleb128 0x14
	.byte	0x4
	.4byte	0x69
	.byte	0x12
	.2byte	0x1c2
	.4byte	0xa67
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF149
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF156
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF157
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x2e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x69
	.byte	0x12
	.2byte	0x6ec
	.4byte	0xa9f
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1d5
	.byte	0x1
	.4byte	0xac6
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x57
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xad6
	.4byte	.LASF70
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xad6
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	0xac6
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x7e
	.byte	0x1
	.4byte	0xafa
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xafa
	.4byte	.LASF69
	.byte	0
	.uleb128 0x13
	.4byte	0xac6
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x7e
	.byte	0x1
	.4byte	0xb1e
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xb2e
	.4byte	.LASF68
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xb2e
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.4byte	0xb1e
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x7e
	.byte	0x1
	.4byte	0xb52
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xb62
	.4byte	.LASF67
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xb62
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	0xb52
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x89
	.byte	0x1
	.4byte	0xb86
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xb96
	.4byte	.LASF66
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xb96
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0xb86
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x89
	.byte	0x1
	.4byte	0xbba
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xbca
	.4byte	.LASF177
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xbca
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	0xbba
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x89
	.byte	0x1
	.4byte	0xbee
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xbee
	.4byte	.LASF178
	.byte	0
	.uleb128 0x13
	.4byte	0xbba
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x89
	.byte	0x1
	.4byte	0xc12
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xc12
	.4byte	.LASF63
	.byte	0
	.uleb128 0x13
	.4byte	0xb1e
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x89
	.byte	0x1
	.4byte	0xc36
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xc46
	.4byte	.LASF62
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xc46
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.4byte	0xc36
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x199
	.4byte	0x89
	.byte	0x1
	.4byte	0xc6a
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xc7a
	.4byte	.LASF61
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xc7a
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.4byte	0xc6a
	.uleb128 0x19
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x193
	.4byte	0x89
	.byte	0x1
	.4byte	0xc9e
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xcae
	.4byte	.LASF60
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xcae
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.4byte	0xc9e
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x17e
	.4byte	0xf6
	.byte	0x1
	.4byte	0xcd2
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xce2
	.4byte	.LASF59
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xce2
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	0xcd2
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x18c
	.4byte	0xf6
	.byte	0x1
	.4byte	0xd06
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xd16
	.4byte	.LASF58
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xd16
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x2a
	.byte	0
	.uleb128 0x13
	.4byte	0xd06
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x185
	.4byte	0xf6
	.byte	0x1
	.4byte	0xd3a
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xd4a
	.4byte	.LASF57
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xd4a
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.4byte	0xd3a
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x178
	.4byte	0xf6
	.byte	0x1
	.4byte	0xd6e
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xd7e
	.4byte	.LASF56
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xd7e
	.uleb128 0xf
	.4byte	0xb3
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0xd6e
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x172
	.4byte	0xf6
	.byte	0x1
	.4byte	0xda2
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xdb2
	.4byte	.LASF55
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xdb2
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	0xda2
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x16c
	.4byte	0xf6
	.byte	0x1
	.4byte	0xdd6
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xde6
	.4byte	.LASF54
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xde6
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.4byte	0xdd6
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x166
	.4byte	0xf6
	.byte	0x1
	.4byte	0xe0a
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xe0a
	.4byte	.LASF53
	.byte	0
	.uleb128 0x13
	.4byte	0xdd6
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x160
	.4byte	0xf6
	.byte	0x1
	.4byte	0xe2e
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xe3e
	.4byte	.LASF52
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xe3e
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	0xe2e
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x15a
	.4byte	0xf6
	.byte	0x1
	.4byte	0xe62
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xe72
	.4byte	.LASF51
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xe72
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x29
	.byte	0
	.uleb128 0x13
	.4byte	0xe62
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x154
	.4byte	0xf6
	.byte	0x1
	.4byte	0xe96
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xea6
	.4byte	.LASF50
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xea6
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.4byte	0xe96
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x14e
	.4byte	0xf6
	.byte	0x1
	.4byte	0xeca
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xeca
	.4byte	.LASF49
	.byte	0
	.uleb128 0x13
	.4byte	0xc36
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x148
	.4byte	0xf6
	.byte	0x1
	.4byte	0xeee
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xeee
	.4byte	.LASF48
	.byte	0
	.uleb128 0x13
	.4byte	0xb1e
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x141
	.4byte	0x923
	.byte	0x1
	.4byte	0xf12
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xf12
	.4byte	.LASF47
	.byte	0
	.uleb128 0x13
	.4byte	0xb52
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x13a
	.4byte	0x8f7
	.byte	0x1
	.4byte	0xf36
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xf46
	.4byte	.LASF46
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xf46
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.4byte	0xf36
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x134
	.4byte	0x7e
	.byte	0x1
	.4byte	0xf6a
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xf6a
	.4byte	.LASF45
	.byte	0
	.uleb128 0x13
	.4byte	0xac6
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x12d
	.4byte	0x8f7
	.byte	0x1
	.4byte	0xf9a
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x12d
	.4byte	0x57
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xf9a
	.4byte	.LASF44
	.byte	0
	.uleb128 0x13
	.4byte	0xcd2
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x126
	.4byte	0x8d7
	.byte	0x1
	.4byte	0xfbe
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0xfce
	.4byte	.LASF43
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0xfce
	.uleb128 0xf
	.4byte	0xb3
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.4byte	0xfbe
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x120
	.4byte	0x8c1
	.byte	0x1
	.4byte	0xff2
	.uleb128 0x18
	.4byte	.LASF176
	.4byte	0x1002
	.4byte	.LASF42
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0x1002
	.uleb128 0xf
	.4byte	0xb3
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.4byte	0xff2
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x116
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x11b
	.4byte	0xf6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF39
	.byte	0x1
	.byte	0x54
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1458
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x1
	.byte	0x56
	.4byte	0x3dd
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LASF182
	.byte	0x1
	.byte	0x8b
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF176
	.4byte	0x1468
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8283
	.uleb128 0x20
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x10a5
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x109b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x20de
	.byte	0
	.uleb128 0x24
	.4byte	.LVL1
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL3
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL5
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL6
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL7
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x10fd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_classic
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_data_size
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_buffer_count
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x110f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL9
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL11
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL12
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1145
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x24
	.4byte	.LVL13
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL14
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL15
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL16
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1182
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x69b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL17
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL23
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x11c2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_version
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL27
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x11e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	address
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL30
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL31
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1216
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_commands
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.4byte	.LVL32
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1228
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL33
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x20de
	.uleb128 0x21
	.4byte	.LVL35
	.4byte	0x125a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0x20e9
	.4byte	0x1289
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x95
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8283
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0x1298
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0x20de
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0x20de
	.uleb128 0x21
	.4byte	.LVL49
	.4byte	0x12cb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.4byte	.LVL51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x12f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_white_list_size
	.byte	0
	.uleb128 0x24
	.4byte	.LVL55
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL57
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x131f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_ble
	.byte	0
	.uleb128 0x24
	.4byte	.LVL59
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL60
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL61
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x134b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported_states
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL63
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL65
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x136f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL67
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL68
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL69
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1396
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_resolving_list_max_size
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x13b0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x848
	.byte	0
	.uleb128 0x24
	.4byte	.LVL71
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL72
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL75
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL76
	.4byte	0x20de
	.uleb128 0x25
	.4byte	.LVL77
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x13f9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_length
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_txtime
	.byte	0
	.uleb128 0x25
	.4byte	.LVL78
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x140f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	BLE_EVENT_MASK
	.byte	0
	.uleb128 0x24
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL80
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL81
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x143e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	CLASSIC_EVENT_MASK
	.byte	0
	.uleb128 0x24
	.4byte	.LVL83
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL84
	.4byte	0x20de
	.uleb128 0x24
	.4byte	.LVL85
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	0xc8
	.4byte	0x1468
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	0x1458
	.uleb128 0x27
	.4byte	0xa9f
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ce
	.uleb128 0x28
	.4byte	0xaac
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0xab8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8409
	.uleb128 0x2a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2b
	.4byte	0xaac
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x29
	.4byte	0xab8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8409
	.uleb128 0x2c
	.4byte	.LVL89
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xadb
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1515
	.uleb128 0x29
	.4byte	0xaec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8405
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x29
	.4byte	0xaec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8405
	.uleb128 0x2c
	.4byte	.LVL90
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xaff
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x155c
	.uleb128 0x29
	.4byte	0xb10
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8401
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x29
	.4byte	0xb10
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8401
	.uleb128 0x2c
	.4byte	.LVL91
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xb33
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a3
	.uleb128 0x29
	.4byte	0xb44
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8397
	.uleb128 0x2a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x29
	.4byte	0xb44
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8397
	.uleb128 0x2c
	.4byte	.LVL92
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xb67
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1603
	.uleb128 0x29
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8393
	.uleb128 0x2a
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x29
	.4byte	0xb78
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8393
	.uleb128 0x2c
	.4byte	.LVL93
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8393
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xb9b
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x164a
	.uleb128 0x29
	.4byte	0xbac
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8389
	.uleb128 0x2a
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x29
	.4byte	0xbac
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8389
	.uleb128 0x2c
	.4byte	.LVL94
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xbcf
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1691
	.uleb128 0x29
	.4byte	0xbe0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8385
	.uleb128 0x2a
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x29
	.4byte	0xbe0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8385
	.uleb128 0x2c
	.4byte	.LVL95
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xbf3
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f1
	.uleb128 0x29
	.4byte	0xc04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8381
	.uleb128 0x2a
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x29
	.4byte	0xc04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8381
	.uleb128 0x2c
	.4byte	.LVL96
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8381
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xc17
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1751
	.uleb128 0x29
	.4byte	0xc28
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8377
	.uleb128 0x2a
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x29
	.4byte	0xc28
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8377
	.uleb128 0x2c
	.4byte	.LVL97
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8377
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xc4b
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1798
	.uleb128 0x29
	.4byte	0xc5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8373
	.uleb128 0x2a
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x29
	.4byte	0xc5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8373
	.uleb128 0x2c
	.4byte	.LVL98
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xc7f
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f8
	.uleb128 0x29
	.4byte	0xc90
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8369
	.uleb128 0x2a
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x29
	.4byte	0xc90
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8369
	.uleb128 0x2c
	.4byte	.LVL99
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x195
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8369
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xcb3
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183f
	.uleb128 0x29
	.4byte	0xcc4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8357
	.uleb128 0x2a
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x29
	.4byte	0xcc4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8357
	.uleb128 0x2c
	.4byte	.LVL100
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xce7
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1886
	.uleb128 0x29
	.4byte	0xcf8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8365
	.uleb128 0x2a
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x29
	.4byte	0xcf8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8365
	.uleb128 0x2c
	.4byte	.LVL101
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xd1b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18cd
	.uleb128 0x29
	.4byte	0xd2c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8361
	.uleb128 0x2a
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x29
	.4byte	0xd2c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8361
	.uleb128 0x2c
	.4byte	.LVL102
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xd4f
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x192d
	.uleb128 0x29
	.4byte	0xd60
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8353
	.uleb128 0x2a
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x29
	.4byte	0xd60
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8353
	.uleb128 0x2c
	.4byte	.LVL103
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8353
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xd83
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x198d
	.uleb128 0x29
	.4byte	0xd94
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8349
	.uleb128 0x2a
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x29
	.4byte	0xd94
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8349
	.uleb128 0x2c
	.4byte	.LVL104
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x174
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8349
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xdb7
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ed
	.uleb128 0x29
	.4byte	0xdc8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8345
	.uleb128 0x2a
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.uleb128 0x29
	.4byte	0xdc8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8345
	.uleb128 0x2c
	.4byte	.LVL105
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8345
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xdeb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4d
	.uleb128 0x29
	.4byte	0xdfc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8341
	.uleb128 0x2a
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.uleb128 0x29
	.4byte	0xdfc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8341
	.uleb128 0x2c
	.4byte	.LVL106
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8341
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xe0f
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aad
	.uleb128 0x29
	.4byte	0xe20
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8337
	.uleb128 0x2a
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.uleb128 0x29
	.4byte	0xe20
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8337
	.uleb128 0x2c
	.4byte	.LVL107
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x162
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8337
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xe43
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0d
	.uleb128 0x29
	.4byte	0xe54
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8333
	.uleb128 0x2a
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.uleb128 0x29
	.4byte	0xe54
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8333
	.uleb128 0x2c
	.4byte	.LVL108
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8333
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xe77
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b6d
	.uleb128 0x29
	.4byte	0xe88
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8329
	.uleb128 0x2a
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x29
	.4byte	0xe88
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8329
	.uleb128 0x2c
	.4byte	.LVL109
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x156
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8329
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xeab
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcd
	.uleb128 0x29
	.4byte	0xebc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8325
	.uleb128 0x2a
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.uleb128 0x29
	.4byte	0xebc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8325
	.uleb128 0x2c
	.4byte	.LVL110
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x150
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8325
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xecf
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2d
	.uleb128 0x29
	.4byte	0xee0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8321
	.uleb128 0x2a
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.uleb128 0x29
	.4byte	0xee0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8321
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8321
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xef3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c74
	.uleb128 0x29
	.4byte	0xf04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8317
	.uleb128 0x2a
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x29
	.4byte	0xf04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8317
	.uleb128 0x2c
	.4byte	.LVL112
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xf17
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cbb
	.uleb128 0x29
	.4byte	0xf28
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8313
	.uleb128 0x2a
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.uleb128 0x29
	.4byte	0xf28
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8313
	.uleb128 0x2c
	.4byte	.LVL113
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xf4b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d1b
	.uleb128 0x29
	.4byte	0xf5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8309
	.uleb128 0x2a
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.uleb128 0x29
	.4byte	0xf5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8309
	.uleb128 0x2c
	.4byte	.LVL114
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x136
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8309
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xf6f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d7e
	.uleb128 0x2b
	.4byte	0xf80
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	0xf8c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8305
	.uleb128 0x2a
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.uleb128 0x2b
	.4byte	0xf80
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.uleb128 0x29
	.4byte	0xf8c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8305
	.uleb128 0x2c
	.4byte	.LVL118
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xf9f
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dde
	.uleb128 0x29
	.4byte	0xfb0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8301
	.uleb128 0x2a
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.uleb128 0x29
	.4byte	0xfb0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8301
	.uleb128 0x2c
	.4byte	.LVL120
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x128
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8301
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xfd3
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3e
	.uleb128 0x29
	.4byte	0xfe4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8297
	.uleb128 0x2a
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.uleb128 0x29
	.4byte	0xfe4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8297
	.uleb128 0x2c
	.4byte	.LVL121
	.4byte	0x20e9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x122
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8297
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x21b
	.4byte	0x1e86
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e86
	.uleb128 0x2e
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x21d
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x3
	.4byte	loaded$8413
	.uleb128 0x23
	.4byte	.LVL122
	.4byte	0x20f4
	.uleb128 0x23
	.4byte	.LVL123
	.4byte	0x20ff
	.uleb128 0x23
	.4byte	.LVL124
	.4byte	0x210a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e8c
	.uleb128 0x13
	.4byte	0x22f
	.uleb128 0x2f
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x1ea4
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x13
	.4byte	0x15c
	.uleb128 0x2f
	.4byte	.LASF186
	.byte	0x5
	.2byte	0x2b9
	.4byte	0x1ebc
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x15c
	.uleb128 0x30
	.string	"hci"
	.byte	0x1
	.byte	0x31
	.4byte	0x1ed2
	.uleb128 0x5
	.byte	0x3
	.4byte	hci
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ed8
	.uleb128 0x13
	.4byte	0x497
	.uleb128 0x1e
	.4byte	.LASF187
	.byte	0x1
	.byte	0x32
	.4byte	0x1eee
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_factory
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ef4
	.uleb128 0x13
	.4byte	0x696
	.uleb128 0x1e
	.4byte	.LASF188
	.byte	0x1
	.byte	0x33
	.4byte	0x1f0a
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_parser
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f10
	.uleb128 0x13
	.4byte	0x8a6
	.uleb128 0x1e
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x191
	.uleb128 0x5
	.byte	0x3
	.4byte	address
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x1
	.byte	0x36
	.4byte	0x6e6
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_version
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x1f47
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x3f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF190
	.byte	0x1
	.byte	0x38
	.4byte	0x1f37
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_commands
	.uleb128 0xd
	.4byte	0x1c1
	.4byte	0x1f68
	.uleb128 0xf
	.4byte	0xb3
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF191
	.byte	0x1
	.byte	0x39
	.4byte	0x1f58
	.uleb128 0x5
	.byte	0x3
	.4byte	features_classic
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x1
	.byte	0x3a
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	last_features_classic_page_index
	.uleb128 0x1e
	.4byte	.LASF193
	.byte	0x1
	.byte	0x3c
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_data_size_classic
	.uleb128 0x1e
	.4byte	.LASF194
	.byte	0x1
	.byte	0x3d
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_data_size_ble
	.uleb128 0x1e
	.4byte	.LASF195
	.byte	0x1
	.byte	0x3e
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_classic
	.uleb128 0x1e
	.4byte	.LASF196
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_ble
	.uleb128 0x1e
	.4byte	.LASF197
	.byte	0x1
	.byte	0x41
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_data_size
	.uleb128 0x1e
	.4byte	.LASF198
	.byte	0x1
	.byte	0x42
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_buffer_count
	.uleb128 0x1e
	.4byte	.LASF199
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_white_list_size
	.uleb128 0x1e
	.4byte	.LASF200
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_resolving_list_max_size
	.uleb128 0x1e
	.4byte	.LASF201
	.byte	0x1
	.byte	0x46
	.4byte	0x1b1
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported_states
	.uleb128 0x1e
	.4byte	.LASF202
	.byte	0x1
	.byte	0x47
	.4byte	0x1c1
	.uleb128 0x5
	.byte	0x3
	.4byte	features_ble
	.uleb128 0x1e
	.4byte	.LASF203
	.byte	0x1
	.byte	0x48
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_length
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x1
	.byte	0x49
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_txtime
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4b
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x3
	.4byte	readable
	.uleb128 0x1e
	.4byte	.LASF206
	.byte	0x1
	.byte	0x4c
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported
	.uleb128 0x1e
	.4byte	.LASF207
	.byte	0x1
	.byte	0x4d
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x3
	.4byte	simple_pairing_supported
	.uleb128 0x31
	.4byte	.LASF208
	.byte	0x1
	.byte	0x4e
	.4byte	0x2094
	.uleb128 0x13
	.4byte	0xf6
	.uleb128 0x2e
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1e8c
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x32
	.4byte	.LASF210
	.byte	0x1
	.byte	0x21
	.4byte	0x657
	.uleb128 0x5
	.byte	0x3
	.4byte	BLE_EVENT_MASK
	.uleb128 0x32
	.4byte	.LASF211
	.byte	0x1
	.byte	0x24
	.4byte	0x657
	.uleb128 0x5
	.byte	0x3
	.4byte	CLASSIC_EVENT_MASK
	.uleb128 0x32
	.4byte	.LASF212
	.byte	0x1
	.byte	0x2a
	.4byte	0x929
	.uleb128 0x5
	.byte	0x3
	.4byte	SCO_HOST_BUFFER_SIZE
	.uleb128 0x33
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xb
	.byte	0x31
	.uleb128 0x33
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x13
	.byte	0x29
	.uleb128 0x33
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xd
	.byte	0x5d
	.uleb128 0x33
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xf
	.byte	0x33
	.uleb128 0x33
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x11
	.byte	0x64
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0xe
	.byte	0x3
	.4byte	features_classic+6
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x11c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF196:
	.string	"acl_buffer_count_ble"
.LASF102:
	.string	"hci_packet_factory_t"
.LASF189:
	.string	"bt_version"
.LASF13:
	.string	"size_t"
.LASF184:
	.string	"loaded"
.LASF153:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF109:
	.string	"parse_generic_command_complete"
.LASF101:
	.string	"make_write_default_erroneous_data_report"
.LASF73:
	.string	"hci_t"
.LASF119:
	.string	"parse_ble_read_resolving_list_size_response"
.LASF3:
	.string	"__uint8_t"
.LASF89:
	.string	"make_write_secure_connections_host_support"
.LASF84:
	.string	"make_read_local_version_info"
.LASF75:
	.string	"transmit_command"
.LASF197:
	.string	"sco_data_size"
.LASF81:
	.string	"make_set_c2h_flow_control"
.LASF113:
	.string	"parse_read_local_supported_commands_response"
.LASF152:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF191:
	.string	"features_classic"
.LASF158:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF29:
	.string	"bt_device_features_t"
.LASF24:
	.string	"data"
.LASF179:
	.string	"resolving_list_max_size"
.LASF63:
	.string	"get_acl_packet_size_ble"
.LASF30:
	.string	"QueueHandle_t"
.LASF38:
	.string	"controller_t"
.LASF90:
	.string	"make_set_event_mask"
.LASF55:
	.string	"supports_master_slave_role_switch"
.LASF161:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF91:
	.string	"make_ble_write_host_support"
.LASF72:
	.string	"command_status_cb"
.LASF181:
	.string	"response"
.LASF117:
	.string	"parse_ble_read_supported_states_response"
.LASF92:
	.string	"make_ble_read_white_list_size"
.LASF0:
	.string	"signed char"
.LASF211:
	.string	"CLASSIC_EVENT_MASK"
.LASF114:
	.string	"parse_read_local_extended_features_response"
.LASF149:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF135:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF44:
	.string	"get_features_classic"
.LASF9:
	.string	"long long unsigned int"
.LASF82:
	.string	"make_set_adv_report_flow_control"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF151:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF182:
	.string	"page_number"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF177:
	.string	"get_ble_suggested_default_data_txtime"
.LASF111:
	.string	"parse_read_local_version_info_response"
.LASF14:
	.string	"long int"
.LASF45:
	.string	"get_last_features_classic_index"
.LASF78:
	.string	"bt_event_mask_t"
.LASF216:
	.string	"hci_packet_factory_get_interface"
.LASF7:
	.string	"unsigned int"
.LASF96:
	.string	"make_ble_read_resolving_list_size"
.LASF134:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF8:
	.string	"long long int"
.LASF85:
	.string	"make_read_bd_addr"
.LASF98:
	.string	"make_ble_write_suggested_default_data_length"
.LASF11:
	.string	"uint16_t"
.LASF71:
	.string	"command_complete_cb"
.LASF170:
	.string	"BTM_PM_STS_HOLD"
.LASF208:
	.string	"secure_connections_supported"
.LASF148:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF43:
	.string	"get_bt_version"
.LASF150:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF112:
	.string	"parse_read_bd_addr_response"
.LASF163:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF169:
	.string	"BTM_PM_STS_ACTIVE"
.LASF118:
	.string	"parse_ble_read_local_supported_features_response"
.LASF27:
	.string	"bt_bdaddr_t"
.LASF198:
	.string	"sco_buffer_count"
.LASF69:
	.string	"get_ble_resolving_list_max_size"
.LASF93:
	.string	"make_ble_read_buffer_size"
.LASF168:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF186:
	.string	"bd_addr_null"
.LASF58:
	.string	"supports_ble_connection_parameters_request"
.LASF95:
	.string	"make_ble_read_local_supported_features"
.LASF207:
	.string	"simple_pairing_supported"
.LASF195:
	.string	"acl_buffer_count_classic"
.LASF77:
	.string	"transmit_downward"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF213:
	.string	"future_await"
.LASF64:
	.string	"get_ble_default_data_packet_length"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF25:
	.string	"BT_HDR"
.LASF16:
	.string	"long unsigned int"
.LASF59:
	.string	"supports_ble_privacy"
.LASF66:
	.string	"get_acl_buffer_count_classic"
.LASF187:
	.string	"packet_factory"
.LASF136:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF159:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF51:
	.string	"supports_reading_remote_extended_features"
.LASF183:
	.string	"simultaneous_le_host"
.LASF49:
	.string	"supports_secure_connections"
.LASF21:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF141:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF115:
	.string	"parse_ble_read_white_list_size_response"
.LASF212:
	.string	"SCO_HOST_BUFFER_SIZE"
.LASF155:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF192:
	.string	"last_features_classic_page_index"
.LASF52:
	.string	"supports_interlaced_inquiry_scan"
.LASF56:
	.string	"supports_ble"
.LASF165:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF188:
	.string	"packet_parser"
.LASF103:
	.string	"hci_version"
.LASF209:
	.string	"interface"
.LASF46:
	.string	"get_features_ble"
.LASF100:
	.string	"make_write_sync_flow_control_enable"
.LASF116:
	.string	"parse_ble_read_buffer_size_response"
.LASF104:
	.string	"hci_revision"
.LASF61:
	.string	"get_acl_data_size_ble"
.LASF175:
	.string	"BTM_PM_STS_ERROR"
.LASF62:
	.string	"get_acl_packet_size_classic"
.LASF167:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF15:
	.string	"sizetype"
.LASF108:
	.string	"bt_version_t"
.LASF80:
	.string	"make_read_buffer_size"
.LASF26:
	.string	"address"
.LASF210:
	.string	"BLE_EVENT_MASK"
.LASF19:
	.string	"UINT32"
.LASF218:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF54:
	.string	"supports_extended_inquiry_response"
.LASF37:
	.string	"future"
.LASF39:
	.string	"start_up"
.LASF164:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF107:
	.string	"lmp_subversion"
.LASF33:
	.string	"ready_can_be_called"
.LASF83:
	.string	"make_host_buffer_size"
.LASF146:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF219:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/controller.c"
.LASF144:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF156:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF178:
	.string	"get_ble_suggested_default_data_length"
.LASF70:
	.string	"set_ble_resolving_list_max_size"
.LASF143:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF99:
	.string	"make_ble_set_event_mask"
.LASF105:
	.string	"lmp_version"
.LASF142:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF145:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF190:
	.string	"supported_commands"
.LASF220:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF34:
	.string	"semaphore"
.LASF20:
	.string	"_Bool"
.LASF214:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF121:
	.string	"hci_packet_parser_t"
.LASF36:
	.string	"future_t"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF200:
	.string	"ble_resolving_list_max_size"
.LASF42:
	.string	"get_address"
.LASF120:
	.string	"parse_ble_read_suggested_default_data_length_response"
.LASF171:
	.string	"BTM_PM_STS_SNIFF"
.LASF176:
	.string	"__func__"
.LASF172:
	.string	"BTM_PM_STS_PARK"
.LASF106:
	.string	"manufacturer"
.LASF40:
	.string	"shut_down"
.LASF199:
	.string	"ble_white_list_size"
.LASF87:
	.string	"make_read_local_extended_features"
.LASF94:
	.string	"make_ble_read_supported_states"
.LASF194:
	.string	"acl_data_size_ble"
.LASF57:
	.string	"supports_ble_packet_extension"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF12:
	.string	"uint32_t"
.LASF147:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF204:
	.string	"ble_suggested_default_data_txtime"
.LASF31:
	.string	"SemaphoreHandle_t"
.LASF17:
	.string	"char"
.LASF221:
	.string	"controller_get_interface"
.LASF74:
	.string	"do_postload"
.LASF4:
	.string	"__uint16_t"
.LASF180:
	.string	"index"
.LASF193:
	.string	"acl_data_size_classic"
.LASF138:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF217:
	.string	"hci_packet_parser_get_interface"
.LASF6:
	.string	"__uint32_t"
.LASF140:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF88:
	.string	"make_write_simple_pairing_mode"
.LASF154:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF22:
	.string	"offset"
.LASF215:
	.string	"hci_layer_get_interface"
.LASF28:
	.string	"as_array"
.LASF173:
	.string	"BTM_PM_STS_SSR"
.LASF68:
	.string	"get_ble_white_list_size"
.LASF67:
	.string	"get_acl_buffer_count_ble"
.LASF206:
	.string	"ble_supported"
.LASF53:
	.string	"supports_rssi_with_inquiry_results"
.LASF23:
	.string	"layer_specific"
.LASF201:
	.string	"ble_supported_states"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF60:
	.string	"get_acl_data_size_classic"
.LASF166:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF47:
	.string	"get_ble_supported_states"
.LASF139:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF76:
	.string	"transmit_command_futured"
.LASF203:
	.string	"ble_suggested_default_data_length"
.LASF205:
	.string	"readable"
.LASF202:
	.string	"features_ble"
.LASF18:
	.string	"UINT8"
.LASF160:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF10:
	.string	"uint8_t"
.LASF185:
	.string	"bd_addr_any"
.LASF32:
	.string	"osi_sem_t"
.LASF174:
	.string	"BTM_PM_STS_PENDING"
.LASF65:
	.string	"get_ble_default_data_packet_txtime"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF48:
	.string	"supports_simple_pairing"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF79:
	.string	"make_reset"
.LASF110:
	.string	"parse_read_buffer_size_response"
.LASF97:
	.string	"make_ble_read_suggested_default_data_length"
.LASF50:
	.string	"supports_simultaneous_le_bredr"
.LASF86:
	.string	"make_read_local_supported_commands"
.LASF137:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF41:
	.string	"get_is_ready"
.LASF35:
	.string	"result"
.LASF157:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF162:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
