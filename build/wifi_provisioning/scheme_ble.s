	.file	"scheme_ble.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"wifi_prov_scheme_ble"
.LC3:
	.string	"\033[0;31mE (%d) %s: Cannot set null configuration\033[0m\n"
.LC5:
	.string	"\033[0;31mE (%d) %s: EP name cannot be null\033[0m\n"
.LC7:
	.string	"\033[0;31mE (%d) %s: Error allocating memory for EP name\033[0m\n"
.LC9:
	.string	"\033[0;31mE (%d) %s: Error allocating memory for EP-UUID lookup table\033[0m\n"
	.section	.text.set_config_endpoint,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	set_config_endpoint, @function
set_config_endpoint:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/src/scheme_ble.c"
	.loc 1 121 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 121 0
	extui	a4, a4, 0, 16
	.loc 1 122 0
	bnez.n	a2, .L2
	.loc 1 123 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC4
	j	.L7
.L2:
	.loc 1 127 0
	bnez.n	a3, .L4
	.loc 1 128 0 discriminator 2
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC2
	l32r	a12, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
.L7:
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 129 0 discriminator 2
	movi	a2, 0x102
.LVL4:
	retw.n
.LVL5:
.L4:
.LBB5:
.LBB6:
	.loc 1 134 0
	mov.n	a10, a3
	call8	strdup
.LVL6:
	mov.n	a3, a10
.LVL7:
	.loc 1 135 0
	bnez.n	a10, .L5
	.loc 1 136 0
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC2
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC8
	j	.L8
.L5:
	.loc 1 140 0
	l32i.n	a11, a2, 48
	l32i.n	a10, a2, 52
	addi.n	a11, a11, 1
	slli	a11, a11, 3
	call8	realloc
.LVL9:
	.loc 1 142 0
	bnez.n	a10, .L6
	.loc 1 143 0
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC2
	l32r	a12, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
.L8:
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 144 0
	movi	a2, 0x101
.LVL12:
	retw.n
.LVL13:
.L6:
	.loc 1 147 0
	l32i.n	a8, a2, 48
	addx8	a9, a8, a10
	s32i.n	a3, a9, 0
	.loc 1 148 0
	s16i	a4, a9, 4
	.loc 1 150 0
	addi.n	a8, a8, 1
	.loc 1 149 0
	s32i.n	a10, a2, 52
	.loc 1 150 0
	s32i.n	a8, a2, 48
	.loc 1 151 0
	movi.n	a2, 0
.LVL14:
.LBE6:
.LBE5:
	.loc 1 152 0
	retw.n
.LFE34:
	.size	set_config_endpoint, .-set_config_endpoint
	.section	.rodata.str1.1
.LC13:
	.string	"\033[0;31mE (%d) %s: Service name cannot be NULL\033[0m\n"
	.section	.text.set_config_service,"ax",@progbits
	.literal_position
	.literal .LC11, .LC1
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC15, custom_service_uuid
	.align	4
	.type	set_config_service, @function
set_config_service:
.LFB33:
	.loc 1 99 0
.LVL15:
	entry	sp, 32
.LCFI1:
	.loc 1 99 0
	mov.n	a4, a2
.LVL16:
	mov.n	a11, a3
	.loc 1 100 0
	bnez.n	a2, .L10
.LVL17:
.LBB9:
.LBB10:
	.loc 1 101 0
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC11
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC12
	j	.L15
.LVL19:
.L10:
.LBE10:
.LBE9:
	.loc 1 105 0
	bnez.n	a3, .L12
	.loc 1 106 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC11
	l32r	a12, .LC14
	mov.n	a14, a11
	mov.n	a13, a10
.L15:
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 107 0 discriminator 2
	movi	a2, 0x102
.LVL22:
	retw.n
.LVL23:
.L12:
	.loc 1 111 0
	mov.n	a10, a2
	movi.n	a12, 0x1d
	call8	strlcpy
.LVL24:
	.loc 1 114 0
	l32r	a2, .LC15
.LVL25:
	l32i.n	a11, a2, 0
	.loc 1 117 0
	movi.n	a2, 0
	.loc 1 114 0
	beq	a11, a2, .L11
	.loc 1 115 0
	movi.n	a12, 0x10
	addi	a10, a4, 29
	call8	memcpy
.LVL26:
.L11:
	.loc 1 118 0
	retw.n
.LFE33:
	.size	set_config_service, .-set_config_service
	.section	.rodata.str1.1
.LC17:
	.string	"\033[0;31mE (%d) %s: Cannot delete null configuration\033[0m\n"
	.section	.text.delete_config,"ax",@progbits
	.literal_position
	.literal .LC16, .LC1
	.literal .LC18, .LC17
	.align	4
	.type	delete_config, @function
delete_config:
.LFB32:
	.loc 1 84 0
.LVL27:
	entry	sp, 32
.LCFI2:
	.loc 1 85 0
	beqz.n	a2, .L17
	movi.n	a3, 0
	j	.L18
.L17:
.LVL28:
.LBB15:
.LBB16:
	.loc 1 86 0
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC16
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	retw.n
.LVL31:
.L20:
.LBE16:
.LBE15:
.LBB17:
	.loc 1 92 0 discriminator 3
	l32i.n	a8, a2, 52
	addx8	a8, a3, a8
	l32i.n	a10, a8, 0
	.loc 1 91 0 discriminator 3
	addi.n	a3, a3, 1
.LVL32:
	.loc 1 92 0 discriminator 3
	call8	free
.LVL33:
.L18:
	.loc 1 91 0 discriminator 1
	l32i.n	a8, a2, 48
	bltu	a3, a8, .L20
.LBE17:
	.loc 1 94 0
	l32i.n	a10, a2, 52
	call8	free
.LVL34:
	.loc 1 95 0
	mov.n	a10, a2
	call8	free
.LVL35:
	retw.n
.LFE32:
	.size	delete_config, .-delete_config
	.section	.rodata.str1.1
.LC20:
	.string	"\033[0;31mE (%d) %s: Error allocating memory for new configuration\033[0m\n"
	.section	.rodata
.LC0:
	.byte	-5
	.byte	52
	.byte	-101
	.byte	95
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.section	.text.new_config,"ax",@progbits
	.literal_position
	.literal .LC19, .LC1
	.literal .LC21, .LC20
	.literal .LC22, .LC0
	.align	4
	.type	new_config, @function
new_config:
.LFB31:
	.loc 1 64 0
	entry	sp, 48
.LCFI3:
	.loc 1 65 0
	movi.n	a11, 0x38
	movi.n	a10, 1
	call8	calloc
.LVL36:
	mov.n	a2, a10
.LVL37:
	.loc 1 66 0
	bnez.n	a10, .L22
.LBB20:
.LBB21:
	.loc 1 67 0
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC19
	l32r	a12, .LC21
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	retw.n
.L22:
.LBE21:
.LBE20:
	.loc 1 72 0
	l32r	a11, .LC22
	movi.n	a12, 0x10
	mov.n	a10, sp
	call8	memcpy
.LVL40:
	.loc 1 79 0
	movi.n	a12, 0x10
	mov.n	a11, sp
	addi	a10, a2, 29
	call8	memcpy
.LVL41:
	.loc 1 81 0
	retw.n
.LFE31:
	.size	new_config, .-new_config
	.section	.rodata.str1.1
.LC24:
	.string	"\033[0;31mE (%d) %s: Protocomm handle cannot be null\033[0m\n"
.LC26:
	.string	"\033[0;31mE (%d) %s: Cannot start with null configuration\033[0m\n"
.LC28:
	.string	"\033[0;31mE (%d) %s: Failed to start protocomm BLE service\033[0m\n"
	.section	.text.prov_start,"ax",@progbits
	.literal_position
	.literal .LC23, .LC1
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.align	4
	.type	prov_start, @function
prov_start:
.LFB29:
	.loc 1 33 0
.LVL42:
	entry	sp, 32
.LCFI4:
	.loc 1 33 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 34 0
	bnez.n	a2, .L25
	.loc 1 35 0 discriminator 2
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC23
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC25
	j	.L31
.L25:
	.loc 1 39 0
	bnez.n	a3, .L27
	.loc 1 40 0 discriminator 2
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC23
	l32r	a12, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
.L31:
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 41 0 discriminator 2
	movi	a10, 0x102
	j	.L26
.L27:
.LVL46:
	.loc 1 47 0
	call8	protocomm_ble_start
.LVL47:
	beqz.n	a10, .L26
.LVL48:
.LBB24:
.LBB25:
	.loc 1 48 0
	call8	esp_log_timestamp
.LVL49:
	l32r	a11, .LC23
	l32r	a12, .LC29
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL50:
	movi.n	a10, -1
.LVL51:
.L26:
.LBE25:
.LBE24:
	.loc 1 52 0
	mov.n	a2, a10
.LVL52:
	retw.n
.LFE29:
	.size	prov_start, .-prov_start
	.section	.text.wifi_prov_scheme_ble_set_service_uuid,"ax",@progbits
	.literal_position
	.literal .LC30, custom_service_uuid
	.align	4
	.global	wifi_prov_scheme_ble_set_service_uuid
	.type	wifi_prov_scheme_ble_set_service_uuid, @function
wifi_prov_scheme_ble_set_service_uuid:
.LFB30:
	.loc 1 55 0
.LVL53:
	entry	sp, 32
.LCFI5:
	.loc 1 57 0
	movi	a8, 0x102
	.loc 1 56 0
	beqz.n	a2, .L33
	.loc 1 59 0
	l32r	a8, .LC30
	s32i.n	a2, a8, 0
	.loc 1 60 0
	movi.n	a8, 0
.L33:
	.loc 1 61 0
	mov.n	a2, a8
.LVL54:
	retw.n
.LFE30:
	.size	wifi_prov_scheme_ble_set_service_uuid, .-wifi_prov_scheme_ble_set_service_uuid
	.section	.rodata.str1.1
.LC32:
	.string	"\033[0;31mE (%d) %s: bt_mem_release of classic BT failed %d\033[0m\n"
.LC34:
	.string	"\033[0;32mI (%d) %s: BT memory released\033[0m\n"
.LC36:
	.string	"\033[0;31mE (%d) %s: bt_mem_release of BTDM failed %d\033[0m\n"
.LC38:
	.string	"\033[0;32mI (%d) %s: BTDM memory released\033[0m\n"
	.section	.text.wifi_prov_scheme_ble_event_cb_free_btdm,"ax",@progbits
	.literal_position
	.literal .LC31, .LC1
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.align	4
	.global	wifi_prov_scheme_ble_event_cb_free_btdm
	.type	wifi_prov_scheme_ble_event_cb_free_btdm, @function
wifi_prov_scheme_ble_event_cb_free_btdm:
.LFB35:
	.loc 1 156 0
.LVL55:
	entry	sp, 32
.LCFI6:
	.loc 1 158 0
	beqz.n	a3, .L38
	beqi	a3, 6, .L39
	retw.n
.L38:
	.loc 1 161 0
	movi.n	a10, 2
	call8	esp_bt_mem_release
.LVL56:
	mov.n	a3, a10
.LVL57:
	l32r	a2, .LC31
.LVL58:
	.loc 1 162 0
	beqz.n	a10, .L40
	.loc 1 163 0 discriminator 2
	call8	esp_log_timestamp
.LVL59:
	mov.n	a15, a3
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC33
	j	.L43
.L40:
	.loc 1 165 0 discriminator 9
	call8	esp_log_timestamp
.LVL60:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC35
	j	.L42
.LVL61:
.L39:
	.loc 1 171 0
	movi.n	a10, 3
	call8	esp_bt_mem_release
.LVL62:
	mov.n	a3, a10
.LVL63:
	l32r	a2, .LC31
.LVL64:
	.loc 1 172 0
	beqz.n	a10, .L41
	.loc 1 173 0 discriminator 2
	call8	esp_log_timestamp
.LVL65:
	l32r	a12, .LC37
	mov.n	a15, a3
	mov.n	a14, a2
	mov.n	a13, a10
.L43:
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	retw.n
.L41:
	.loc 1 175 0 discriminator 9
	call8	esp_log_timestamp
.LVL67:
	l32r	a12, .LC39
	mov.n	a14, a2
	mov.n	a13, a10
.L42:
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL68:
	retw.n
.LFE35:
	.size	wifi_prov_scheme_ble_event_cb_free_btdm, .-wifi_prov_scheme_ble_event_cb_free_btdm
	.section	.text.wifi_prov_scheme_ble_event_cb_free_bt,"ax",@progbits
	.literal_position
	.literal .LC40, .LC1
	.literal .LC41, .LC32
	.literal .LC42, .LC34
	.align	4
	.global	wifi_prov_scheme_ble_event_cb_free_bt
	.type	wifi_prov_scheme_ble_event_cb_free_bt, @function
wifi_prov_scheme_ble_event_cb_free_bt:
.LFB36:
	.loc 1 186 0
.LVL69:
	entry	sp, 32
.LCFI7:
	.loc 1 188 0
	bnez.n	a3, .L44
	.loc 1 191 0
	movi.n	a10, 2
	call8	esp_bt_mem_release
.LVL70:
	mov.n	a3, a10
.LVL71:
	l32r	a2, .LC40
.LVL72:
	.loc 1 192 0
	beqz.n	a10, .L47
	.loc 1 193 0 discriminator 2
	call8	esp_log_timestamp
.LVL73:
	l32r	a12, .LC41
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	retw.n
.L47:
	.loc 1 195 0 discriminator 9
	call8	esp_log_timestamp
.LVL75:
	l32r	a12, .LC42
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL76:
.L44:
	retw.n
.LFE36:
	.size	wifi_prov_scheme_ble_event_cb_free_bt, .-wifi_prov_scheme_ble_event_cb_free_bt
	.section	.rodata.str1.1
.LC44:
	.string	"\033[0;31mE (%d) %s: bt_mem_release of BLE failed %d\033[0m\n"
.LC46:
	.string	"\033[0;32mI (%d) %s: BLE memory released\033[0m\n"
	.section	.text.wifi_prov_scheme_ble_event_cb_free_ble,"ax",@progbits
	.literal_position
	.literal .LC43, .LC1
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.align	4
	.global	wifi_prov_scheme_ble_event_cb_free_ble
	.type	wifi_prov_scheme_ble_event_cb_free_ble, @function
wifi_prov_scheme_ble_event_cb_free_ble:
.LFB37:
	.loc 1 206 0
.LVL77:
	entry	sp, 32
.LCFI8:
	.loc 1 208 0
	bnei	a3, 6, .L48
	.loc 1 211 0
	movi.n	a10, 1
	call8	esp_bt_mem_release
.LVL78:
	mov.n	a3, a10
.LVL79:
	l32r	a2, .LC43
.LVL80:
	.loc 1 212 0
	beqz.n	a10, .L51
	.loc 1 213 0 discriminator 2
	call8	esp_log_timestamp
.LVL81:
	l32r	a12, .LC45
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL82:
	retw.n
.L51:
	.loc 1 215 0 discriminator 9
	call8	esp_log_timestamp
.LVL83:
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL84:
.L48:
	retw.n
.LFE37:
	.size	wifi_prov_scheme_ble_event_cb_free_ble, .-wifi_prov_scheme_ble_event_cb_free_ble
	.global	wifi_prov_scheme_ble
	.section	.rodata.wifi_prov_scheme_ble,"a",@progbits
	.align	4
	.type	wifi_prov_scheme_ble, @object
	.size	wifi_prov_scheme_ble, 28
wifi_prov_scheme_ble:
	.word	prov_start
	.word	protocomm_ble_stop
	.word	new_config
	.word	delete_config
	.word	set_config_service
	.word	set_config_endpoint
	.word	1
	.section	.bss.custom_service_uuid,"aw",@nobits
	.align	4
	.type	custom_service_uuid, @object
	.size	custom_service_uuid, 4
custom_service_uuid:
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/esp-idf/components/bt/include/esp_bt.h"
	.file 9 "/home/dieter/SoftwareDevelop/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 10 "/home/dieter/SoftwareDevelop/esp-idf/components/protocomm/include/transports/protocomm_ble.h"
	.file 11 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 12 "/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/include/wifi_provisioning/manager.h"
	.file 13 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb90
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x37
	.4byte	0x25
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0xea
	.uleb128 0x9
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x11b
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcb
	.4byte	0x85
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x18
	.4byte	0xce
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x21
	.4byte	0x156
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x9
	.byte	0x2b
	.4byte	0x16e
	.uleb128 0xc
	.4byte	.LASF91
	.uleb128 0xd
	.4byte	0xb8
	.4byte	0x183
	.uleb128 0xe
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.4byte	0x1a8
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0xa
	.byte	0x28
	.4byte	0xad
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0xa
	.byte	0x2e
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0xa
	.byte	0x2f
	.4byte	0x183
	.uleb128 0x11
	.byte	0x38
	.byte	0xa
	.byte	0x34
	.4byte	0x1ec
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0xa
	.byte	0x38
	.4byte	0x1ec
	.byte	0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0xa
	.byte	0x3d
	.4byte	0x173
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0xa
	.byte	0x42
	.4byte	0x11b
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0xa
	.byte	0x47
	.4byte	0x1fc
	.byte	0x34
	.byte	0
	.uleb128 0xd
	.4byte	0xa6
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	0x90
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a8
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xa
	.byte	0x48
	.4byte	0x1b3
	.uleb128 0x7
	.4byte	0xad
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1c
	.4byte	0x23d
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xb
	.byte	0x22
	.4byte	0x212
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x21
	.4byte	0x27f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xc
	.byte	0x4a
	.4byte	0x248
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1c
	.byte	0xc
	.byte	0x6f
	.4byte	0x2eb
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0xc
	.byte	0x75
	.4byte	0x305
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0xc
	.byte	0x7b
	.4byte	0x31a
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0xc
	.byte	0x82
	.4byte	0x325
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0xc
	.byte	0x88
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0xc
	.byte	0x8e
	.4byte	0x344
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0xc
	.byte	0x94
	.4byte	0x363
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0xc
	.byte	0x9c
	.4byte	0x23d
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x126
	.4byte	0x2ff
	.uleb128 0x9
	.4byte	0x2ff
	.uleb128 0x9
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x163
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x12
	.4byte	0x126
	.4byte	0x31a
	.uleb128 0x9
	.4byte	0x2ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30b
	.uleb128 0x13
	.4byte	0x97
	.uleb128 0x6
	.byte	0x4
	.4byte	0x320
	.uleb128 0x12
	.4byte	0x126
	.4byte	0x344
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32b
	.uleb128 0x12
	.4byte	0x126
	.4byte	0x363
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34a
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xc
	.byte	0x9d
	.4byte	0x28a
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x78
	.4byte	0x126
	.byte	0x1
	.4byte	0x3c7
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x78
	.4byte	0x97
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x78
	.4byte	0xad
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x78
	.4byte	0xc3
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x84
	.4byte	0x3c7
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x86
	.4byte	0xa0
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x8c
	.4byte	0x1fc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x202
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x62
	.4byte	0x126
	.byte	0x1
	.4byte	0x40a
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x62
	.4byte	0x97
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x62
	.4byte	0xad
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x62
	.4byte	0xad
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x6e
	.4byte	0x3c7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	0x438
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x53
	.4byte	0x97
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5a
	.4byte	0x3c7
	.uleb128 0x18
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3f
	.4byte	0x97
	.byte	0x1
	.4byte	0x45f
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x41
	.4byte	0x3c7
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x48
	.4byte	0x45f
	.byte	0
	.uleb128 0x7
	.4byte	0x173
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x20
	.4byte	0x126
	.byte	0x1
	.4byte	0x495
	.uleb128 0x1a
	.string	"pc"
	.byte	0x1
	.byte	0x20
	.4byte	0x2ff
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x20
	.4byte	0x97
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2c
	.4byte	0x3c7
	.byte	0
	.uleb128 0x1b
	.4byte	0x374
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57a
	.uleb128 0x1c
	.4byte	0x384
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	0x38f
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	0x39a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	0x3a5
	.uleb128 0x1e
	.4byte	0x3b0
	.uleb128 0x1e
	.4byte	0x3bb
	.uleb128 0x1f
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x558
	.uleb128 0x1d
	.4byte	0x39a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	0x38f
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	0x384
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x21
	.4byte	0x3a5
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	0x3b0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	0x3bb
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LVL6
	.4byte	0xb26
	.4byte	0x52c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0xb31
	.uleb128 0x25
	.4byte	.LVL9
	.4byte	0xb3c
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL1
	.4byte	0xb31
	.uleb128 0x25
	.4byte	.LVL2
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL3
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x3cd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63b
	.uleb128 0x1c
	.4byte	0x3dd
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	0x3e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	0x3f3
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	0x3fe
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x5f0
	.uleb128 0x1c
	.4byte	0x3dd
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	0x3e8
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	0x3f3
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1e
	.4byte	0x3fe
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xb31
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0xb47
	.4byte	0x60c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0xb52
	.4byte	0x625
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4d
	.byte	0
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0xb5d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x40a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ed
	.uleb128 0x1d
	.4byte	0x416
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	0x421
	.uleb128 0x1f
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x6b3
	.uleb128 0x1c
	.4byte	0x416
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x1e
	.4byte	0x421
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL30
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x6d3
	.uleb128 0x21
	.4byte	0x42d
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0xb66
	.byte	0
	.uleb128 0x25
	.4byte	.LVL34
	.4byte	0xb66
	.uleb128 0x26
	.4byte	.LVL35
	.4byte	0xb66
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x438
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x22
	.4byte	0x448
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	0x453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x75a
	.uleb128 0x1e
	.4byte	0x448
	.uleb128 0x1e
	.4byte	0x453
	.uleb128 0x25
	.4byte	.LVL38
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0xb71
	.4byte	0x773
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0xb5d
	.4byte	0x795
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0xb5d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x464
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86e
	.uleb128 0x1c
	.4byte	0x474
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	0x47e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	0x489
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x83f
	.uleb128 0x1c
	.4byte	0x474
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	0x47e
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x1e
	.4byte	0x489
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL50
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL43
	.4byte	0xb31
	.uleb128 0x25
	.4byte	.LVL44
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0xb47
	.4byte	0x864
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL47
	.4byte	0xb7c
	.byte	0
	.uleb128 0x27
	.4byte	.LASF92
	.byte	0x1
	.byte	0x36
	.4byte	0x126
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x897
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.byte	0x36
	.4byte	0x15d
	.4byte	.LLST18
	.byte	0
	.uleb128 0x29
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95f
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9b
	.4byte	0x97
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9b
	.4byte	0x27f
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9b
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0x9d
	.4byte	0x126
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0xb87
	.4byte	0x8f9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL59
	.4byte	0xb31
	.uleb128 0x25
	.4byte	.LVL60
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL62
	.4byte	0xb87
	.4byte	0x91e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL66
	.4byte	0xb47
	.4byte	0x940
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL67
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa26
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb9
	.4byte	0x97
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb9
	.4byte	0x27f
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LASF74
	.byte	0x1
	.byte	0xb9
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0xbb
	.4byte	0x126
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0xb87
	.4byte	0x9c1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL74
	.4byte	0xb47
	.4byte	0x9f8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL75
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL76
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF77
	.byte	0x1
	.byte	0xcd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xcd
	.4byte	0x97
	.4byte	.LLST25
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0xcd
	.4byte	0x27f
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	.LASF74
	.byte	0x1
	.byte	0xcd
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0xcf
	.4byte	0x126
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0xb87
	.4byte	0xa88
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL81
	.4byte	0xb31
	.uleb128 0x23
	.4byte	.LVL82
	.4byte	0xb47
	.4byte	0xabf
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0xb31
	.uleb128 0x26
	.4byte	.LVL84
	.4byte	0xb47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"TAG"
	.byte	0x1
	.byte	0x1a
	.4byte	0x20d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1e
	.4byte	0x15d
	.uleb128 0x5
	.byte	0x3
	.4byte	custom_service_uuid
	.uleb128 0x2e
	.4byte	.LASF93
	.byte	0x1
	.byte	0xe0
	.4byte	0xb21
	.uleb128 0x5
	.byte	0x3
	.4byte	wifi_prov_scheme_ble
	.uleb128 0x7
	.4byte	0x369
	.uleb128 0x2f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xd
	.byte	0x50
	.uleb128 0x2f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xe
	.byte	0x8a
	.uleb128 0x2f
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x7
	.byte	0x6b
	.uleb128 0x2f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xd
	.byte	0x77
	.uleb128 0x30
	.4byte	.LASF94
	.4byte	.LASF94
	.uleb128 0x2f
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xe
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xe
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x19e
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
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
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF40:
	.string	"WIFI_MODE_NULL"
.LASF38:
	.string	"nu_lookup"
.LASF61:
	.string	"set_config_endpoint"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"sizetype"
.LASF77:
	.string	"wifi_prov_scheme_ble_event_cb_free_ble"
.LASF37:
	.string	"nu_lookup_count"
.LASF46:
	.string	"WIFI_PROV_INIT"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF94:
	.string	"memcpy"
.LASF73:
	.string	"event"
.LASF6:
	.string	"__uint16_t"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF69:
	.string	"service_name"
.LASF53:
	.string	"wifi_prov_cb_event_t"
.LASF13:
	.string	"long unsigned int"
.LASF64:
	.string	"config"
.LASF87:
	.string	"esp_bt_mem_release"
.LASF72:
	.string	"user_data"
.LASF28:
	.string	"ESP_BT_MODE_CLASSIC_BT"
.LASF65:
	.string	"endpoint_name"
.LASF15:
	.string	"uint8_t"
.LASF36:
	.string	"service_uuid"
.LASF26:
	.string	"ESP_BT_MODE_IDLE"
.LASF42:
	.string	"WIFI_MODE_AP"
.LASF43:
	.string	"WIFI_MODE_APSTA"
.LASF84:
	.string	"free"
.LASF44:
	.string	"WIFI_MODE_MAX"
.LASF76:
	.string	"wifi_prov_scheme_ble_event_cb_free_bt"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"wifi_mode_t"
.LASF10:
	.string	"long int"
.LASF56:
	.string	"prov_start"
.LASF33:
	.string	"uuid"
.LASF5:
	.string	"__uint8_t"
.LASF62:
	.string	"wifi_mode"
.LASF93:
	.string	"wifi_prov_scheme_ble"
.LASF32:
	.string	"name"
.LASF90:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wifi_provisioning"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"WIFI_PROV_DEINIT"
.LASF29:
	.string	"ESP_BT_MODE_BTDM"
.LASF89:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/wifi_provisioning/src/scheme_ble.c"
.LASF35:
	.string	"device_name"
.LASF86:
	.string	"protocomm_ble_start"
.LASF83:
	.string	"strlcpy"
.LASF57:
	.string	"prov_stop"
.LASF91:
	.string	"protocomm"
.LASF2:
	.string	"signed char"
.LASF24:
	.string	"ssize_t"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"WIFI_PROV_START"
.LASF67:
	.string	"copy_ep_name"
.LASF75:
	.string	"wifi_prov_scheme_ble_event_cb_free_btdm"
.LASF41:
	.string	"WIFI_MODE_STA"
.LASF80:
	.string	"esp_log_timestamp"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"ble_config"
.LASF14:
	.string	"char"
.LASF16:
	.string	"uint16_t"
.LASF70:
	.string	"service_key"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"int32_t"
.LASF51:
	.string	"WIFI_PROV_END"
.LASF85:
	.string	"calloc"
.LASF30:
	.string	"_Bool"
.LASF50:
	.string	"WIFI_PROV_CRED_SUCCESS"
.LASF60:
	.string	"set_config_service"
.LASF81:
	.string	"realloc"
.LASF49:
	.string	"WIFI_PROV_CRED_FAIL"
.LASF68:
	.string	"lookup_table"
.LASF59:
	.string	"delete_config"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"wifi_prov_scheme_t"
.LASF27:
	.string	"ESP_BT_MODE_BLE"
.LASF55:
	.string	"wifi_prov_scheme"
.LASF48:
	.string	"WIFI_PROV_CRED_RECV"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF71:
	.string	"uuid128"
.LASF7:
	.string	"__int32_t"
.LASF88:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"strdup"
.LASF54:
	.string	"name_uuid"
.LASF58:
	.string	"new_config"
.LASF31:
	.string	"protocomm_t"
.LASF34:
	.string	"protocomm_ble_name_uuid_t"
.LASF78:
	.string	"custom_service_uuid"
.LASF92:
	.string	"wifi_prov_scheme_ble_set_service_uuid"
.LASF82:
	.string	"esp_log_write"
.LASF39:
	.string	"protocomm_ble_config_t"
.LASF25:
	.string	"esp_err_t"
.LASF74:
	.string	"event_data"
.LASF11:
	.string	"_ssize_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
