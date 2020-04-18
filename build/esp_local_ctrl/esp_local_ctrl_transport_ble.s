	.file	"esp_local_ctrl_transport_ble.c"
	.text
.Ltext0:
	.section	.rodata.declare_endpoint.str1.1,"aMS",@progbits,1
.LC0:
	.string	"esp_local_ctrl_transport_ble"
.LC2:
	.string	"\033[0;31mE (%d) %s: NULL configuration provided\033[0m\n"
.LC4:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for new endpoint entry\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for new endpoint name\033[0m\n"
	.section	.text.declare_endpoint,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.type	declare_endpoint, @function
declare_endpoint:
.LVL0:
.LFB6:
	.file 1 "/home/dieter/Development/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl_transport_ble.c"
	.loc 1 94 1 view -0
	.loc 1 94 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 95 5 is_stmt 1 view .LVU2
	.loc 1 94 1 is_stmt 0 view .LVU3
	extui	a4, a4, 0, 16
	.loc 1 95 8 view .LVU4
	beqz.n	a2, .L2
	.loc 1 95 27 discriminator 1 view .LVU5
	l32i.n	a5, a2, 0
	.loc 1 95 17 discriminator 1 view .LVU6
	bnez.n	a5, .L3
.L2:
	.loc 1 96 9 is_stmt 1 discriminator 2 view .LVU7
	.loc 1 96 14 discriminator 2 view .LVU8
	.loc 1 96 40 discriminator 2 view .LVU9
	.loc 1 96 45 discriminator 2 view .LVU10
	.loc 1 96 82 discriminator 2 view .LVU11
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC1
	l32r	a12, .LC3
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 97 9 discriminator 2 view .LVU12
	.loc 1 97 16 is_stmt 0 discriminator 2 view .LVU13
	movi	a2, 0x102
.LVL3:
	.loc 1 97 16 discriminator 2 view .LVU14
	j	.L1
.LVL4:
.L3:
	.loc 1 100 5 is_stmt 1 view .LVU15
	.loc 1 101 82 is_stmt 0 view .LVU16
	l32i.n	a11, a5, 48
	.loc 1 100 44 view .LVU17
	l32i.n	a10, a5, 52
	.loc 1 101 82 view .LVU18
	addi.n	a11, a11, 1
	.loc 1 100 44 view .LVU19
	slli	a11, a11, 3
	call8	realloc
.LVL5:
	mov.n	a5, a10
.LVL6:
	.loc 1 103 5 is_stmt 1 view .LVU20
	.loc 1 103 8 is_stmt 0 view .LVU21
	bnez.n	a10, .L5
	.loc 1 104 9 is_stmt 1 discriminator 2 view .LVU22
	.loc 1 104 14 discriminator 2 view .LVU23
	.loc 1 104 40 discriminator 2 view .LVU24
	.loc 1 104 45 discriminator 2 view .LVU25
	.loc 1 104 82 discriminator 2 view .LVU26
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC1
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC5
	j	.L10
.L5:
	.loc 1 107 5 view .LVU27
	.loc 1 107 11 is_stmt 0 view .LVU28
	l32i.n	a6, a2, 0
	.loc 1 107 28 view .LVU29
	s32i.n	a10, a6, 52
	.loc 1 108 5 is_stmt 1 view .LVU30
	.loc 1 108 14 is_stmt 0 view .LVU31
	l32i.n	a6, a6, 48
	slli	a6, a6, 3
	add.n	a6, a10, a6
	.loc 1 108 50 view .LVU32
	s16i	a4, a6, 4
	.loc 1 109 5 is_stmt 1 view .LVU33
	.loc 1 109 52 is_stmt 0 view .LVU34
	mov.n	a10, a3
	call8	strdup
.LVL8:
	.loc 1 109 50 view .LVU35
	s32i.n	a10, a6, 0
	.loc 1 110 5 is_stmt 1 view .LVU36
	.loc 1 110 26 is_stmt 0 view .LVU37
	l32i.n	a6, a2, 0
	.loc 1 110 31 view .LVU38
	l32i.n	a2, a6, 48
.LVL9:
	.loc 1 110 49 view .LVU39
	slli	a8, a2, 3
	add.n	a5, a5, a8
.LVL10:
	.loc 1 110 8 view .LVU40
	l32i.n	a5, a5, 0
	bnez.n	a5, .L6
	.loc 1 111 9 is_stmt 1 discriminator 2 view .LVU41
	.loc 1 111 14 discriminator 2 view .LVU42
	.loc 1 111 40 discriminator 2 view .LVU43
	.loc 1 111 45 discriminator 2 view .LVU44
	.loc 1 111 82 discriminator 2 view .LVU45
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC1
	l32r	a12, .LC7
	mov.n	a14, a11
	mov.n	a13, a10
.L10:
	.loc 1 111 82 is_stmt 0 discriminator 2 view .LVU46
	movi.n	a10, 1
	call8	esp_log_write
.LVL12:
	.loc 1 112 9 is_stmt 1 discriminator 2 view .LVU47
	.loc 1 112 16 is_stmt 0 discriminator 2 view .LVU48
	movi	a2, 0x101
	j	.L1
.L6:
	.loc 1 114 5 is_stmt 1 view .LVU49
	.loc 1 114 33 is_stmt 0 view .LVU50
	addi.n	a2, a2, 1
	s32i.n	a2, a6, 48
	.loc 1 115 5 is_stmt 1 view .LVU51
	.loc 1 115 12 is_stmt 0 view .LVU52
	movi.n	a2, 0
.L1:
	.loc 1 116 1 view .LVU53
	retw.n
.LFE6:
	.size	declare_endpoint, .-declare_endpoint
	.section	.rodata.copy_ble_config.str1.1,"aMS",@progbits,1
.LC9:
	.string	"\033[0;31mE (%d) %s: NULL arguments provided\033[0m\n"
.LC11:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for BLE transport config\033[0m\n"
.LC13:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for BLE characteristic names\033[0m\n"
.LC15:
	.string	"\033[0;31mE (%d) %s: Endpoint name cannot be null\033[0m\n"
.LC17:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for endpoint name\033[0m\n"
	.section	.text.copy_ble_config,"ax",@progbits
	.literal_position
	.literal .LC8, .LC0
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.type	copy_ble_config, @function
copy_ble_config:
.LVL13:
.LFB5:
	.loc 1 44 1 is_stmt 1 view -0
	.loc 1 44 1 is_stmt 0 view .LVU55
	entry	sp, 32
.LCFI1:
	.loc 1 45 5 is_stmt 1 view .LVU56
	.loc 1 45 9 is_stmt 0 view .LVU57
	movi.n	a6, 1
	movi.n	a4, 0
	moveqz	a4, a6, a2
	.loc 1 45 8 view .LVU58
	extui	a4, a4, 0, 8
	bnez.n	a4, .L12
	moveqz	a4, a6, a3
	bnez.n	a4, .L12
	.loc 1 45 37 discriminator 1 view .LVU59
	l32i.n	a5, a3, 0
	bnez.n	a5, .L13
.L12:
	.loc 1 46 9 is_stmt 1 discriminator 2 view .LVU60
	.loc 1 46 14 discriminator 2 view .LVU61
	.loc 1 46 40 discriminator 2 view .LVU62
	.loc 1 46 45 discriminator 2 view .LVU63
	.loc 1 46 82 discriminator 2 view .LVU64
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC10
	j	.L25
.L13:
	.loc 1 50 5 view .LVU65
	.loc 1 50 24 is_stmt 0 view .LVU66
	movi.n	a11, 0x38
	mov.n	a10, a6
	call8	calloc
.LVL15:
	.loc 1 50 22 view .LVU67
	s32i.n	a10, a2, 0
	.loc 1 51 5 is_stmt 1 view .LVU68
	.loc 1 50 24 is_stmt 0 view .LVU69
	mov.n	a5, a10
	.loc 1 51 8 view .LVU70
	bnez.n	a10, .L15
	.loc 1 52 9 is_stmt 1 discriminator 2 view .LVU71
	.loc 1 52 14 discriminator 2 view .LVU72
	.loc 1 52 40 discriminator 2 view .LVU73
	.loc 1 52 45 discriminator 2 view .LVU74
	.loc 1 52 82 discriminator 2 view .LVU75
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC12
	j	.L26
.L15:
	.loc 1 57 5 view .LVU76
	.loc 1 58 22 is_stmt 0 view .LVU77
	l32i.n	a7, a3, 0
	.loc 1 57 5 view .LVU78
	movi.n	a12, 0x1d
	mov.n	a11, a7
	call8	memcpy
.LVL17:
	.loc 1 62 5 is_stmt 1 view .LVU79
	movi.n	a12, 0x10
	addi	a11, a7, 29
	addi	a10, a5, 29
	call8	memcpy
.LVL18:
	.loc 1 66 5 view .LVU80
	.loc 1 66 39 is_stmt 0 view .LVU81
	s32i.n	a4, a5, 48
	.loc 1 67 5 is_stmt 1 view .LVU82
	.loc 1 67 24 is_stmt 0 view .LVU83
	l32i.n	a10, a7, 48
	.loc 1 67 8 view .LVU84
	bnez.n	a10, .L16
.L21:
	.loc 1 90 12 view .LVU85
	movi.n	a2, 0
.LVL19:
	.loc 1 90 12 view .LVU86
	j	.L11
.LVL20:
.L16:
	.loc 1 69 9 is_stmt 1 view .LVU87
	.loc 1 69 39 is_stmt 0 view .LVU88
	movi.n	a11, 8
	call8	calloc
.LVL21:
	.loc 1 69 37 view .LVU89
	s32i.n	a10, a5, 52
	.loc 1 71 9 is_stmt 1 view .LVU90
	.loc 1 71 30 is_stmt 0 view .LVU91
	l32i.n	a5, a2, 0
	.loc 1 71 12 view .LVU92
	l32i.n	a5, a5, 52
	bnez.n	a5, .L17
	.loc 1 72 13 is_stmt 1 discriminator 2 view .LVU93
	.loc 1 72 18 discriminator 2 view .LVU94
	.loc 1 72 44 discriminator 2 view .LVU95
	.loc 1 72 49 discriminator 2 view .LVU96
	.loc 1 72 86 discriminator 2 view .LVU97
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC8
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a6
	call8	esp_log_write
.LVL23:
	.loc 1 73 13 discriminator 2 view .LVU98
	l32i.n	a10, a2, 0
	call8	free
.LVL24:
	.loc 1 74 13 discriminator 2 view .LVU99
	j	.L24
.LVL25:
.L20:
.LBB3:
	.loc 1 77 13 view .LVU100
	.loc 1 77 77 is_stmt 0 view .LVU101
	l32i.n	a6, a5, 52
	.loc 1 77 29 view .LVU102
	l32i.n	a5, a2, 0
	.loc 1 77 77 view .LVU103
	slli	a7, a4, 3
	add.n	a6, a6, a7
	.loc 1 77 40 view .LVU104
	l32i.n	a5, a5, 52
	.loc 1 77 80 view .LVU105
	l16ui	a8, a6, 4
	.loc 1 77 40 view .LVU106
	add.n	a5, a5, a7
	.loc 1 78 47 view .LVU107
	l32i.n	a10, a6, 0
	.loc 1 77 49 view .LVU108
	s16i	a8, a5, 4
	.loc 1 78 13 is_stmt 1 view .LVU109
	.loc 1 78 16 is_stmt 0 view .LVU110
	bnez.n	a10, .L18
	.loc 1 79 17 is_stmt 1 discriminator 2 view .LVU111
	.loc 1 79 22 discriminator 2 view .LVU112
	.loc 1 79 48 discriminator 2 view .LVU113
	.loc 1 79 53 discriminator 2 view .LVU114
	.loc 1 79 90 discriminator 2 view .LVU115
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC8
	l32r	a12, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
.LVL27:
.L25:
	.loc 1 79 90 is_stmt 0 discriminator 2 view .LVU116
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
	.loc 1 80 17 is_stmt 1 discriminator 2 view .LVU117
	.loc 1 80 24 is_stmt 0 discriminator 2 view .LVU118
	movi	a2, 0x102
.LVL29:
	.loc 1 80 24 discriminator 2 view .LVU119
	j	.L11
.LVL30:
.L18:
	.loc 1 82 13 is_stmt 1 view .LVU120
	.loc 1 82 51 is_stmt 0 view .LVU121
	call8	strdup
.LVL31:
	.loc 1 82 49 view .LVU122
	s32i.n	a10, a5, 0
	.loc 1 83 13 is_stmt 1 view .LVU123
	.loc 1 83 29 is_stmt 0 view .LVU124
	l32i.n	a5, a2, 0
	.loc 1 83 48 view .LVU125
	l32i.n	a6, a5, 52
	add.n	a6, a6, a7
	.loc 1 83 16 view .LVU126
	l32i.n	a6, a6, 0
	bnez.n	a6, .L19
	.loc 1 84 17 is_stmt 1 discriminator 2 view .LVU127
	.loc 1 84 22 discriminator 2 view .LVU128
	.loc 1 84 48 discriminator 2 view .LVU129
	.loc 1 84 53 discriminator 2 view .LVU130
	.loc 1 84 90 discriminator 2 view .LVU131
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC8
	l32r	a12, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
.LVL33:
.L26:
	.loc 1 84 90 is_stmt 0 discriminator 2 view .LVU132
	movi.n	a10, 1
	call8	esp_log_write
.LVL34:
.L24:
	.loc 1 85 17 is_stmt 1 discriminator 2 view .LVU133
	.loc 1 85 24 is_stmt 0 discriminator 2 view .LVU134
	movi	a2, 0x101
.LVL35:
	.loc 1 85 24 discriminator 2 view .LVU135
	j	.L11
.LVL36:
.L19:
	.loc 1 87 13 is_stmt 1 discriminator 2 view .LVU136
	.loc 1 87 46 is_stmt 0 discriminator 2 view .LVU137
	l32i.n	a6, a5, 48
	.loc 1 76 69 discriminator 2 view .LVU138
	addi.n	a4, a4, 1
.LVL37:
	.loc 1 87 46 discriminator 2 view .LVU139
	addi.n	a6, a6, 1
	s32i.n	a6, a5, 48
	.loc 1 76 69 discriminator 2 view .LVU140
	extui	a4, a4, 0, 16
.LVL38:
.L17:
	.loc 1 76 44 discriminator 1 view .LVU141
	l32i.n	a5, a3, 0
	.loc 1 76 9 discriminator 1 view .LVU142
	l32i.n	a6, a5, 48
	blt	a4, a6, .L20
	j	.L21
.LVL39:
.L11:
	.loc 1 76 9 discriminator 1 view .LVU143
.LBE3:
	.loc 1 91 1 view .LVU144
	retw.n
.LFE5:
	.size	copy_ble_config, .-copy_ble_config
	.section	.text.stop_ble_transport,"ax",@progbits
	.align	4
	.type	stop_ble_transport, @function
stop_ble_transport:
.LVL40:
.LFB4:
	.loc 1 39 1 is_stmt 1 view -0
	.loc 1 39 1 is_stmt 0 view .LVU146
	entry	sp, 32
.LCFI2:
	.loc 1 40 5 is_stmt 1 view .LVU147
	mov.n	a10, a2
	call8	protocomm_ble_stop
.LVL41:
	.loc 1 41 1 is_stmt 0 view .LVU148
	retw.n
.LFE4:
	.size	stop_ble_transport, .-stop_ble_transport
	.section	.text.free_config,"ax",@progbits
	.align	4
	.type	free_config, @function
free_config:
.LVL42:
.LFB7:
	.loc 1 119 1 is_stmt 1 view -0
	.loc 1 119 1 is_stmt 0 view .LVU150
	entry	sp, 32
.LCFI3:
	.loc 1 120 5 is_stmt 1 view .LVU151
	.loc 1 120 8 is_stmt 0 view .LVU152
	beqz.n	a2, .L28
	.loc 1 120 16 discriminator 1 view .LVU153
	l32i.n	a8, a2, 0
.LBB8:
.LBB9:
.LBB10:
	.loc 1 121 27 discriminator 1 view .LVU154
	movi.n	a3, 0
.LBE10:
.LBE9:
.LBE8:
	.loc 1 120 16 discriminator 1 view .LVU155
	bne	a8, a3, .L30
	j	.L28
.LVL43:
.L31:
.LBB13:
.LBB12:
.LBB11:
	.loc 1 122 13 is_stmt 1 view .LVU156
	.loc 1 122 51 is_stmt 0 view .LVU157
	slli	a8, a3, 3
	add.n	a10, a10, a8
	.loc 1 122 13 view .LVU158
	l32i.n	a10, a10, 0
	.loc 1 121 69 view .LVU159
	addi.n	a3, a3, 1
.LVL44:
	.loc 1 122 13 view .LVU160
	call8	free
.LVL45:
.L30:
	.loc 1 121 44 view .LVU161
	l32i.n	a8, a2, 0
	l32i.n	a10, a8, 52
	.loc 1 121 9 view .LVU162
	l32i.n	a8, a8, 48
	bltu	a3, a8, .L31
.LBE11:
	.loc 1 124 9 is_stmt 1 view .LVU163
	call8	free
.LVL46:
	.loc 1 125 9 view .LVU164
	l32i.n	a10, a2, 0
	.loc 1 126 21 is_stmt 0 view .LVU165
	movi.n	a3, 0
.LVL47:
	.loc 1 125 9 view .LVU166
	call8	free
.LVL48:
	.loc 1 126 9 is_stmt 1 view .LVU167
	.loc 1 126 21 is_stmt 0 view .LVU168
	s32i.n	a3, a2, 0
.L28:
	.loc 1 126 21 view .LVU169
.LBE12:
.LBE13:
	.loc 1 128 1 view .LVU170
	retw.n
.LFE7:
	.size	free_config, .-free_config
	.section	.text.start_ble_transport,"ax",@progbits
	.literal_position
	.literal .LC19, .LC0
	.literal .LC20, .LC2
	.align	4
	.type	start_ble_transport, @function
start_ble_transport:
.LVL49:
.LFB3:
	.loc 1 30 1 is_stmt 1 view -0
	.loc 1 30 1 is_stmt 0 view .LVU172
	entry	sp, 32
.LCFI4:
	.loc 1 30 1 view .LVU173
	mov.n	a10, a2
	.loc 1 31 5 is_stmt 1 view .LVU174
	.loc 1 31 8 is_stmt 0 view .LVU175
	beqz.n	a3, .L38
	.loc 1 31 27 discriminator 1 view .LVU176
	l32i.n	a11, a3, 0
	.loc 1 31 17 discriminator 1 view .LVU177
	bnez.n	a11, .L39
.L38:
.LVL50:
.LBB16:
.LBB17:
	.loc 1 32 9 is_stmt 1 view .LVU178
	.loc 1 32 14 view .LVU179
	.loc 1 32 40 view .LVU180
	.loc 1 32 45 view .LVU181
	.loc 1 32 82 view .LVU182
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC19
	l32r	a12, .LC20
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL52:
	.loc 1 33 9 view .LVU183
	.loc 1 32 82 is_stmt 0 view .LVU184
	movi	a10, 0x102
	j	.L37
.L39:
	.loc 1 32 82 view .LVU185
.LBE17:
.LBE16:
	.loc 1 35 5 is_stmt 1 view .LVU186
	.loc 1 35 12 is_stmt 0 view .LVU187
	call8	protocomm_ble_start
.LVL53:
.L37:
	.loc 1 36 1 view .LVU188
	mov.n	a2, a10
.LVL54:
	.loc 1 36 1 view .LVU189
	retw.n
.LFE3:
	.size	start_ble_transport, .-start_ble_transport
	.section	.text.esp_local_ctrl_get_transport_ble,"ax",@progbits
	.literal_position
	.literal .LC21, tp$3689
	.align	4
	.global	esp_local_ctrl_get_transport_ble
	.type	esp_local_ctrl_get_transport_ble, @function
esp_local_ctrl_get_transport_ble:
.LFB8:
	.loc 1 131 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI5:
	.loc 1 132 5 view .LVU191
	.loc 1 139 5 view .LVU192
	.loc 1 140 1 is_stmt 0 view .LVU193
	l32r	a2, .LC21
	retw.n
.LFE8:
	.size	esp_local_ctrl_get_transport_ble, .-esp_local_ctrl_get_transport_ble
	.section	.rodata.tp$3689,"a"
	.align	4
	.type	tp$3689, @object
	.size	tp$3689, 20
tp$3689:
	.word	start_ble_transport
	.word	stop_ble_transport
	.word	copy_ble_config
	.word	declare_endpoint
	.word	free_config
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 10 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 13 "/home/dieter/Development/esp-idf/components/protocomm/include/transports/protocomm_ble.h"
	.file 14 "/home/dieter/Development/esp-idf/components/esp_local_ctrl/include/esp_local_ctrl.h"
	.file 15 "/home/dieter/Development/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl_priv.h"
	.file 16 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 17 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x100b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0xc
	.4byte	.LASF177
	.4byte	.LASF178
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x83
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x91
	.byte	0x14
	.4byte	0x65
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xf5
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xc6
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xf5
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x105
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x129
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0x105
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x141
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ae
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1ae
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x65
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1b4
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x154
	.uleb128 0x9
	.4byte	0x148
	.4byte	0x1c4
	.uleb128 0xa
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x247
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x65
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x65
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x65
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x28c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x28c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x28c
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x148
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x148
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x81
	.4byte	0x29c
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2de
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2de
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2e4
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2fb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x29c
	.uleb128 0x9
	.4byte	0x2f4
	.4byte	0x2f4
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2fa
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x247
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x329
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x329
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x65
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3a2
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x329
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x301
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x506
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x32f
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x506
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x65
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x75e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x75e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x75e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x65
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x66d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x65
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8c6
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8cc
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8dd
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x65
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x65
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x66d
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8e3
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8e9
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x66d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8fa
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2de
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x29c
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x71f
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x75e
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x906
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x66d
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a7
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x64f
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x329
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x65
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x301
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x65
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x506
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x81
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x67f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6ae
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6d2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6ec
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x301
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x329
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x65
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6f2
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x702
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x301
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x65
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa2
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x135
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x129
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x65
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x66d
	.uleb128 0x18
	.4byte	0x506
	.uleb128 0x18
	.4byte	0x81
	.uleb128 0x18
	.4byte	0x66d
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x673
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x13
	.4byte	0x673
	.uleb128 0xf
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x6a3
	.uleb128 0x18
	.4byte	0x506
	.uleb128 0x18
	.4byte	0x81
	.uleb128 0x18
	.4byte	0x6a3
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67a
	.uleb128 0x13
	.4byte	0x6a3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x685
	.uleb128 0x17
	.4byte	0xae
	.4byte	0x6d2
	.uleb128 0x18
	.4byte	0x506
	.uleb128 0x18
	.4byte	0x81
	.uleb128 0x18
	.4byte	0xae
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6b4
	.uleb128 0x17
	.4byte	0x65
	.4byte	0x6ec
	.uleb128 0x18
	.4byte	0x506
	.uleb128 0x18
	.4byte	0x81
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x702
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x38
	.4byte	0x712
	.uleb128 0xa
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x50c
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x758
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x758
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x75e
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x71f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x712
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7ab
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7ab
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7ab
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x7bb
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x802
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1ae
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x65
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1ae
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x802
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ae
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8b1
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x66d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x129
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x129
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x129
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8b1
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x65
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x129
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x129
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x129
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x129
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x129
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x673
	.4byte	0x8c1
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF138
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7bb
	.uleb128 0x1a
	.4byte	0x8dd
	.uleb128 0x18
	.4byte	0x506
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x764
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c4
	.uleb128 0x1a
	.4byte	0x8fa
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x900
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8ef
	.uleb128 0xf
	.byte	0x4
	.4byte	0x808
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3a2
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3a2
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3a2
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x506
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x8
	.byte	0xc8
	.byte	0x12
	.4byte	0xba
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x66d
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xa
	.byte	0x18
	.byte	0x11
	.4byte	0x958
	.uleb128 0x9
	.4byte	0x6a9
	.4byte	0x998
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.4byte	0x988
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x998
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x6c
	.byte	0x10
	.byte	0x23
	.byte	0xe
	.4byte	0x9dc
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xc
	.byte	0x2b
	.byte	0x1a
	.4byte	0x9e8
	.uleb128 0x19
	.4byte	.LASF139
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x8
	.byte	0xd
	.byte	0x23
	.byte	0x10
	.4byte	0xa15
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xd
	.byte	0x27
	.byte	0x11
	.4byte	0x6a3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.4byte	0x94c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xd
	.byte	0x2e
	.byte	0x3
	.4byte	0x9ed
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x38
	.byte	0xd
	.byte	0x33
	.byte	0x10
	.4byte	0xa63
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xd
	.byte	0x37
	.byte	0xa
	.4byte	0xa63
	.byte	0
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xd
	.byte	0x3c
	.byte	0xd
	.4byte	0xa73
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xd
	.byte	0x41
	.byte	0xd
	.4byte	0x964
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xd
	.byte	0x46
	.byte	0x20
	.4byte	0xa83
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.4byte	0x673
	.4byte	0xa73
	.uleb128 0xa
	.4byte	0x6c
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.4byte	0x940
	.4byte	0xa83
	.uleb128 0xa
	.4byte	0x6c
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa15
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xe
	.byte	0xb5
	.byte	0x29
	.4byte	0xa9a
	.uleb128 0x13
	.4byte	0xa89
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x14
	.byte	0xf
	.byte	0x1f
	.byte	0x8
	.4byte	0xae9
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xf
	.byte	0x23
	.byte	0x11
	.4byte	0xb6b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xf
	.byte	0x29
	.byte	0xc
	.4byte	0xb7c
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0xf
	.byte	0x2e
	.byte	0x11
	.4byte	0xb9c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0xf
	.byte	0x38
	.byte	0x11
	.4byte	0xbbb
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0xf
	.byte	0x3e
	.byte	0xc
	.4byte	0xbcc
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xe
	.byte	0xcb
	.byte	0x25
	.4byte	0xa21
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xe
	.byte	0xd4
	.byte	0x21
	.4byte	0xb01
	.uleb128 0x19
	.4byte	.LASF158
	.uleb128 0x7
	.byte	0x4
	.byte	0xe
	.byte	0xd9
	.byte	0x9
	.4byte	0xb28
	.uleb128 0x1f
	.string	"ble"
	.byte	0xe
	.byte	0xde
	.byte	0x2c
	.4byte	0xb28
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0xe
	.byte	0xe4
	.byte	0x2e
	.4byte	0xb2e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xae9
	.uleb128 0xf
	.byte	0x4
	.4byte	0xaf5
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xe
	.byte	0xe5
	.byte	0x3
	.4byte	0xb06
	.uleb128 0x13
	.4byte	0xb34
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa95
	.uleb128 0x17
	.4byte	0x97c
	.4byte	0xb5f
	.uleb128 0x18
	.4byte	0xb5f
	.uleb128 0x18
	.4byte	0xb65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9dc
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb40
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb4b
	.uleb128 0x1a
	.4byte	0xb7c
	.uleb128 0x18
	.4byte	0xb5f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb71
	.uleb128 0x17
	.4byte	0x97c
	.4byte	0xb96
	.uleb128 0x18
	.4byte	0xb96
	.uleb128 0x18
	.4byte	0xb65
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb34
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb82
	.uleb128 0x17
	.4byte	0x97c
	.4byte	0xbbb
	.uleb128 0x18
	.4byte	0xb96
	.uleb128 0x18
	.4byte	0x6a3
	.uleb128 0x18
	.4byte	0x94c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xba2
	.uleb128 0x1a
	.4byte	0xbcc
	.uleb128 0x18
	.4byte	0xb96
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbc1
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.4byte	0x6a3
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x1
	.byte	0x82
	.byte	0x23
	.4byte	0xb45
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0a
	.uleb128 0x22
	.string	"tp"
	.byte	0x1
	.byte	0x84
	.byte	0x2d
	.4byte	0xa95
	.uleb128 0x5
	.byte	0x3
	.4byte	tp$3689
	.byte	0
	.uleb128 0x23
	.4byte	.LASF155
	.byte	0x1
	.byte	0x76
	.byte	0xd
	.byte	0x1
	.4byte	0xc30
	.uleb128 0x24
	.4byte	.LASF165
	.byte	0x1
	.byte	0x76
	.byte	0x3c
	.4byte	0xb96
	.uleb128 0x25
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x79
	.byte	0x1b
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5d
	.byte	0x12
	.4byte	0x97c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd04
	.uleb128 0x27
	.4byte	.LASF165
	.byte	0x1
	.byte	0x5d
	.byte	0x46
	.4byte	0xb96
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x28
	.4byte	.LASF161
	.byte	0x1
	.byte	0x5d
	.byte	0x5a
	.4byte	0x6a3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF162
	.byte	0x1
	.byte	0x5d
	.byte	0x6c
	.4byte	0x94c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF148
	.byte	0x1
	.byte	0x64
	.byte	0x20
	.4byte	0xa83
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0xfaf
	.4byte	0xcc5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL5
	.4byte	0xfbb
	.uleb128 0x2a
	.4byte	.LVL7
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xfc7
	.4byte	0xceb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL11
	.4byte	0xfa3
	.uleb128 0x2d
	.4byte	.LVL12
	.4byte	0xfaf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x97c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe56
	.uleb128 0x27
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2b
	.byte	0x45
	.4byte	0xb96
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1
	.byte	0x2b
	.byte	0x7b
	.4byte	0xb65
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xd9d
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.byte	0x17
	.4byte	0x94c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2a
	.4byte	.LVL26
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0xfaf
	.4byte	0xd7b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL31
	.4byte	0xfc7
	.uleb128 0x2a
	.4byte	.LVL32
	.4byte	0xfa3
	.uleb128 0x2d
	.4byte	.LVL34
	.4byte	0xfaf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL14
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0xfd3
	.4byte	0xdc0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL16
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0xfdf
	.4byte	0xde2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4d
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0xfdf
	.4byte	0xe01
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0xfd3
	.4byte	0xe14
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL22
	.4byte	0xfa3
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0xfaf
	.4byte	0xe4c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL24
	.4byte	0xfea
	.byte	0
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8a
	.uleb128 0x31
	.string	"pc"
	.byte	0x1
	.byte	0x26
	.byte	0x2d
	.4byte	0xb5f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LVL41
	.4byte	0xff6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF181
	.byte	0x1
	.byte	0x1d
	.byte	0x12
	.4byte	0x97c
	.byte	0x1
	.4byte	0xeb3
	.uleb128 0x33
	.string	"pc"
	.byte	0x1
	.byte	0x1d
	.byte	0x33
	.4byte	0xb5f
	.uleb128 0x24
	.4byte	.LASF165
	.byte	0x1
	.byte	0x1d
	.byte	0x60
	.4byte	0xb65
	.byte	0
	.uleb128 0x34
	.4byte	0xc0a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf13
	.uleb128 0x35
	.4byte	0xc17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	0xc0a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x37
	.4byte	0xc17
	.uleb128 0x38
	.4byte	0xc23
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xeff
	.uleb128 0x39
	.4byte	0xc24
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2a
	.4byte	.LVL45
	.4byte	0xfea
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL46
	.4byte	0xfea
	.uleb128 0x2a
	.4byte	.LVL48
	.4byte	0xfea
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xe8a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x3a
	.4byte	0xe9b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x35
	.4byte	0xea6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.4byte	0xe8a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xf99
	.uleb128 0x3a
	.4byte	0xe9b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3a
	.4byte	0xea6
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2a
	.4byte	.LVL51
	.4byte	0xfa3
	.uleb128 0x2d
	.4byte	.LVL52
	.4byte	0xfaf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL53
	.4byte	0x1002
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x10
	.byte	0x5b
	.byte	0xa
	.uleb128 0x3c
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x10
	.byte	0x7e
	.byte	0x6
	.uleb128 0x3c
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x9
	.byte	0x99
	.byte	0x8
	.uleb128 0x3c
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x11
	.byte	0x54
	.byte	0x7
	.uleb128 0x3c
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x9
	.byte	0x5e
	.byte	0x8
	.uleb128 0x3d
	.4byte	.LASF182
	.4byte	.LASF183
	.byte	0x12
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x9
	.byte	0x61
	.byte	0x6
	.uleb128 0x3c
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.uleb128 0x3c
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xd
	.byte	0x59
	.byte	0xb
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
	.uleb128 0x39
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x39
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU20
	.uleb128 .LVU40
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU100
	.uleb128 .LVU116
	.uleb128 .LVU120
	.uleb128 .LVU132
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST3:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU156
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU166
.LLST4:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST5:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU178
	.uleb128 .LVU184
.LLST6:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU178
	.uleb128 .LVU184
.LLST7:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF137:
	.string	"protocomm_t"
.LASF78:
	.string	"_misc"
.LASF141:
	.string	"name"
.LASF144:
	.string	"protocomm_ble_config"
.LASF10:
	.string	"_lock_t"
.LASF148:
	.string	"nu_lookup"
.LASF40:
	.string	"_on_exit_args"
.LASF83:
	.string	"_write"
.LASF111:
	.string	"_wctomb_state"
.LASF142:
	.string	"uuid"
.LASF71:
	.string	"_r48"
.LASF79:
	.string	"_signal_buf"
.LASF7:
	.string	"unsigned int"
.LASF175:
	.string	"protocomm_ble_start"
.LASF159:
	.string	"httpd"
.LASF55:
	.string	"_lbfsize"
.LASF53:
	.string	"_flags"
.LASF6:
	.string	"__int32_t"
.LASF146:
	.string	"service_uuid"
.LASF58:
	.string	"_errno"
.LASF149:
	.string	"esp_local_ctrl_transport_t"
.LASF168:
	.string	"esp_log_timestamp"
.LASF135:
	.string	"ESP_LOG_DEBUG"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF82:
	.string	"_read"
.LASF173:
	.string	"free"
.LASF115:
	.string	"_mbrlen_state"
.LASF183:
	.string	"__builtin_memcpy"
.LASF60:
	.string	"_stdout"
.LASF14:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF81:
	.string	"_cookie"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF104:
	.string	"_result"
.LASF33:
	.string	"__tm_hour"
.LASF19:
	.string	"__count"
.LASF32:
	.string	"__tm_min"
.LASF77:
	.string	"__sf"
.LASF98:
	.string	"_rand48"
.LASF155:
	.string	"free_config"
.LASF105:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"_asctime_buf"
.LASF80:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF4:
	.string	"__uint16_t"
.LASF94:
	.string	"__FILE"
.LASF152:
	.string	"stop_service"
.LASF89:
	.string	"_offset"
.LASF86:
	.string	"_ubuf"
.LASF63:
	.string	"_emergency"
.LASF167:
	.string	"src_config"
.LASF143:
	.string	"protocomm_ble_name_uuid_t"
.LASF31:
	.string	"__tm_sec"
.LASF128:
	.string	"suboptarg"
.LASF38:
	.string	"__tm_yday"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF25:
	.string	"_next"
.LASF177:
	.string	"/home/dieter/Development/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl_transport_ble.c"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF131:
	.string	"ESP_LOG_NONE"
.LASF20:
	.string	"__value"
.LASF106:
	.string	"_p5s"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF110:
	.string	"_mblen_state"
.LASF178:
	.string	"/home/dieter/Development/ProjektEi/build/esp_local_ctrl"
.LASF93:
	.string	"char"
.LASF156:
	.string	"esp_local_ctrl_transport_config_ble_t"
.LASF34:
	.string	"__tm_mday"
.LASF74:
	.string	"_sig_func"
.LASF116:
	.string	"_mbrtowc_state"
.LASF162:
	.string	"ep_uuid"
.LASF139:
	.string	"protocomm"
.LASF163:
	.string	"declare_endpoint"
.LASF22:
	.string	"_flock_t"
.LASF127:
	.string	"ssize_t"
.LASF150:
	.string	"esp_local_ctrl_transport"
.LASF17:
	.string	"__wch"
.LASF97:
	.string	"_iobs"
.LASF124:
	.string	"uint8_t"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF85:
	.string	"_close"
.LASF64:
	.string	"__sdidinit"
.LASF52:
	.string	"__sFILE_fake"
.LASF59:
	.string	"_stdin"
.LASF68:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF180:
	.string	"stop_ble_transport"
.LASF50:
	.string	"_base"
.LASF107:
	.string	"_freelist"
.LASF100:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF118:
	.string	"_wcrtomb_state"
.LASF54:
	.string	"_file"
.LASF130:
	.string	"exc_cause_table"
.LASF164:
	.string	"copy_ble_config"
.LASF67:
	.string	"__cleanup"
.LASF21:
	.string	"_mbstate_t"
.LASF103:
	.string	"_mprec"
.LASF41:
	.string	"_fnargs"
.LASF153:
	.string	"copy_config"
.LASF39:
	.string	"__tm_isdst"
.LASF158:
	.string	"httpd_ssl_config"
.LASF134:
	.string	"ESP_LOG_INFO"
.LASF169:
	.string	"esp_log_write"
.LASF140:
	.string	"name_uuid"
.LASF35:
	.string	"__tm_mon"
.LASF154:
	.string	"declare_ep"
.LASF125:
	.string	"uint16_t"
.LASF75:
	.string	"_atexit0"
.LASF45:
	.string	"_atexit"
.LASF91:
	.string	"_mbstate"
.LASF165:
	.string	"config"
.LASF157:
	.string	"esp_local_ctrl_transport_config_httpd_t"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF151:
	.string	"start_service"
.LASF27:
	.string	"_sign"
.LASF181:
	.string	"start_ble_transport"
.LASF56:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF123:
	.string	"_global_impure_ptr"
.LASF36:
	.string	"__tm_year"
.LASF161:
	.string	"ep_name"
.LASF166:
	.string	"dest_config"
.LASF108:
	.string	"_misc_reent"
.LASF132:
	.string	"ESP_LOG_ERROR"
.LASF72:
	.string	"_localtime_buf"
.LASF3:
	.string	"__uint8_t"
.LASF69:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF88:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF90:
	.string	"_lock"
.LASF23:
	.string	"long unsigned int"
.LASF136:
	.string	"ESP_LOG_VERBOSE"
.LASF96:
	.string	"_niobs"
.LASF176:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF126:
	.string	"int32_t"
.LASF42:
	.string	"_dso_handle"
.LASF70:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF133:
	.string	"ESP_LOG_WARN"
.LASF114:
	.string	"_getdate_err"
.LASF147:
	.string	"nu_lookup_count"
.LASF145:
	.string	"device_name"
.LASF101:
	.string	"_add"
.LASF160:
	.string	"esp_local_ctrl_transport_config_t"
.LASF179:
	.string	"esp_local_ctrl_get_transport_ble"
.LASF129:
	.string	"esp_err_t"
.LASF174:
	.string	"protocomm_ble_stop"
.LASF49:
	.string	"__sbuf"
.LASF95:
	.string	"_glue"
.LASF170:
	.string	"realloc"
.LASF76:
	.string	"__sglue"
.LASF109:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbtowc_state"
.LASF66:
	.string	"_locale"
.LASF15:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF171:
	.string	"strdup"
.LASF57:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF172:
	.string	"calloc"
.LASF182:
	.string	"memcpy"
.LASF43:
	.string	"_fntypes"
.LASF51:
	.string	"_size"
.LASF13:
	.string	"_off_t"
.LASF87:
	.string	"_nbuf"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF92:
	.string	"_flags2"
.LASF44:
	.string	"_is_cxa"
.LASF99:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF138:
	.string	"__locale_t"
.LASF84:
	.string	"_seek"
.LASF61:
	.string	"_stderr"
.LASF16:
	.string	"wint_t"
.LASF120:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
