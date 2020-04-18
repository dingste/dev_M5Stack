	.file	"esp_bt_main.c"
	.text
.Ltext0:
	.section	.text.esp_bluedroid_get_status,"ax",@progbits
	.literal_position
	.literal .LC0, bd_already_init
	.literal .LC1, bd_already_enable
	.align	4
	.global	esp_bluedroid_get_status
	.type	esp_bluedroid_get_status, @function
esp_bluedroid_get_status:
.LFB38:
	.file 1 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/api/esp_bt_main.c"
	.loc 1 27 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 28 5 view .LVU1
	.loc 1 28 9 is_stmt 0 view .LVU2
	l32r	a2, .LC0
	.loc 1 28 8 view .LVU3
	l8ui	a8, a2, 0
	.loc 1 35 16 view .LVU4
	movi.n	a2, 0
	.loc 1 28 8 view .LVU5
	beq	a8, a2, .L1
	.loc 1 29 9 is_stmt 1 view .LVU6
	.loc 1 29 13 is_stmt 0 view .LVU7
	l32r	a2, .LC1
	.loc 1 32 20 view .LVU8
	movi.n	a9, 2
	.loc 1 29 12 view .LVU9
	l8ui	a2, a2, 0
	.loc 1 32 20 view .LVU10
	movi.n	a8, 1
	movnez	a8, a9, a2
	mov.n	a2, a8
.L1:
	.loc 1 37 1 view .LVU11
	retw.n
.LFE38:
	.size	esp_bluedroid_get_status, .-esp_bluedroid_get_status
	.section	.rodata.esp_bluedroid_enable.str1.1,"aMS",@progbits,1
.LC3:
	.string	"BT_LOG"
.LC5:
	.string	"\033[0;31mE (%d) %s: Bludroid not initialised\n\033[0m\n"
.LC8:
	.string	"\033[0;31mE (%d) %s: Bluedroid already enabled\n\033[0m\n"
.LC10:
	.string	"\033[0;31mE (%d) %s: Bluedroid enable failed\n\033[0m\n"
	.section	.text.esp_bluedroid_enable,"ax",@progbits
	.literal_position
	.literal .LC2, bd_already_init
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, bd_already_enable
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	esp_bluedroid_enable
	.type	esp_bluedroid_enable, @function
esp_bluedroid_enable:
.LFB39:
	.loc 1 40 1 is_stmt 1 view -0
	entry	sp, 48
.LCFI1:
	.loc 1 41 5 view .LVU13
	.loc 1 42 5 view .LVU14
	.loc 1 44 5 view .LVU15
	.loc 1 44 9 is_stmt 0 view .LVU16
	l32r	a2, .LC2
	.loc 1 44 8 view .LVU17
	l8ui	a2, a2, 0
	bnez.n	a2, .L7
	.loc 1 45 10 is_stmt 1 discriminator 1 view .LVU18
	.loc 1 45 34 discriminator 1 view .LVU19
	call8	esp_log_timestamp
.LVL0:
	l32r	a11, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC6
	j	.L14
.L7:
	.loc 1 49 5 view .LVU20
	.loc 1 49 9 is_stmt 0 view .LVU21
	l32r	a3, .LC7
	.loc 1 49 8 view .LVU22
	l8ui	a2, a3, 0
	beqz.n	a2, .L9
	.loc 1 50 10 is_stmt 1 discriminator 1 view .LVU23
	.loc 1 50 34 discriminator 1 view .LVU24
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC4
	l32r	a12, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
.L14:
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 50 188 discriminator 1 view .LVU25
	.loc 1 51 9 discriminator 1 view .LVU26
	.loc 1 51 16 is_stmt 0 discriminator 1 view .LVU27
	movi	a2, 0x103
	j	.L6
.L9:
	.loc 1 54 5 is_stmt 1 view .LVU28
	.loc 1 54 16 is_stmt 0 view .LVU29
	movi.n	a10, 2
	call8	btc_main_get_future_p
.LVL3:
	mov.n	a4, a10
.LVL4:
	.loc 1 55 5 is_stmt 1 view .LVU30
	.loc 1 55 17 is_stmt 0 view .LVU31
	call8	future_new
.LVL5:
	.loc 1 55 15 view .LVU32
	s32i.n	a10, a4, 0
	.loc 1 56 5 is_stmt 1 view .LVU33
	.loc 1 56 8 is_stmt 0 view .LVU34
	bnez.n	a10, .L10
	.loc 1 57 10 is_stmt 1 discriminator 1 view .LVU35
	.loc 1 57 34 discriminator 1 view .LVU36
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC4
	l32r	a12, .LC11
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	.loc 1 57 186 discriminator 1 view .LVU37
	.loc 1 58 9 discriminator 1 view .LVU38
	.loc 1 58 16 is_stmt 0 discriminator 1 view .LVU39
	movi	a2, 0x101
	j	.L6
.L10:
	.loc 1 61 5 is_stmt 1 view .LVU40
	.loc 1 62 13 is_stmt 0 view .LVU41
	movi	a8, 0x200
	.loc 1 65 9 view .LVU42
	mov.n	a13, a2
	mov.n	a12, a2
	mov.n	a11, a2
	mov.n	a10, sp
	.loc 1 61 13 view .LVU43
	s8i	a2, sp, 0
	.loc 1 62 5 is_stmt 1 view .LVU44
	.loc 1 63 5 view .LVU45
	.loc 1 62 13 is_stmt 0 view .LVU46
	s16i	a8, sp, 2
	.loc 1 65 5 is_stmt 1 view .LVU47
	.loc 1 65 9 is_stmt 0 view .LVU48
	call8	btc_transfer_context
.LVL8:
	mov.n	a2, a10
	.loc 1 65 8 view .LVU49
	beqz.n	a10, .L11
	.loc 1 66 10 is_stmt 1 discriminator 1 view .LVU50
	.loc 1 66 34 discriminator 1 view .LVU51
	j	.L13
.L11:
	.loc 1 70 5 view .LVU52
	.loc 1 70 9 is_stmt 0 view .LVU53
	l32i.n	a10, a4, 0
	call8	future_await
.LVL9:
	.loc 1 70 8 view .LVU54
	bnez.n	a10, .L12
.L13:
	.loc 1 71 10 is_stmt 1 discriminator 1 view .LVU55
	.loc 1 71 34 discriminator 1 view .LVU56
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC4
	l32r	a12, .LC11
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 71 186 discriminator 1 view .LVU57
	.loc 1 72 9 discriminator 1 view .LVU58
	.loc 1 72 16 is_stmt 0 discriminator 1 view .LVU59
	movi.n	a2, -1
	j	.L6
.L12:
	.loc 1 75 5 is_stmt 1 view .LVU60
	.loc 1 75 23 is_stmt 0 view .LVU61
	movi.n	a4, 1
.LVL12:
	.loc 1 75 23 view .LVU62
	s8i	a4, a3, 0
	.loc 1 77 5 is_stmt 1 view .LVU63
.L6:
	.loc 1 78 1 is_stmt 0 view .LVU64
	retw.n
.LFE39:
	.size	esp_bluedroid_enable, .-esp_bluedroid_enable
	.section	.rodata.esp_bluedroid_disable.str1.1,"aMS",@progbits,1
.LC14:
	.string	"\033[0;31mE (%d) %s: Bluedroid already disabled\n\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: Bluedroid disable failed\n\033[0m\n"
	.section	.text.esp_bluedroid_disable,"ax",@progbits
	.literal_position
	.literal .LC12, bd_already_enable
	.literal .LC13, .LC3
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.global	esp_bluedroid_disable
	.type	esp_bluedroid_disable, @function
esp_bluedroid_disable:
.LFB40:
	.loc 1 81 1 is_stmt 1 view -0
	entry	sp, 48
.LCFI2:
	.loc 1 82 5 view .LVU66
	.loc 1 83 5 view .LVU67
	.loc 1 85 5 view .LVU68
	.loc 1 85 9 is_stmt 0 view .LVU69
	l32r	a3, .LC12
	.loc 1 85 8 view .LVU70
	l8ui	a2, a3, 0
	bnez.n	a2, .L16
	.loc 1 86 10 is_stmt 1 discriminator 1 view .LVU71
	.loc 1 86 34 discriminator 1 view .LVU72
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC13
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 86 189 discriminator 1 view .LVU73
	.loc 1 87 9 discriminator 1 view .LVU74
	.loc 1 87 16 is_stmt 0 discriminator 1 view .LVU75
	movi	a2, 0x103
	j	.L15
.L16:
	.loc 1 90 5 is_stmt 1 view .LVU76
	.loc 1 90 16 is_stmt 0 view .LVU77
	movi.n	a10, 3
	call8	btc_main_get_future_p
.LVL15:
	mov.n	a4, a10
.LVL16:
	.loc 1 91 5 is_stmt 1 view .LVU78
	.loc 1 91 17 is_stmt 0 view .LVU79
	call8	future_new
.LVL17:
	.loc 1 91 15 view .LVU80
	s32i.n	a10, a4, 0
	.loc 1 92 5 is_stmt 1 view .LVU81
	.loc 1 92 8 is_stmt 0 view .LVU82
	bnez.n	a10, .L18
	.loc 1 93 10 is_stmt 1 discriminator 1 view .LVU83
	.loc 1 93 34 discriminator 1 view .LVU84
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC13
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 93 187 discriminator 1 view .LVU85
	.loc 1 94 9 discriminator 1 view .LVU86
	.loc 1 94 16 is_stmt 0 discriminator 1 view .LVU87
	movi	a2, 0x101
	j	.L15
.L18:
	.loc 1 97 5 is_stmt 1 view .LVU88
	.loc 1 101 9 is_stmt 0 view .LVU89
	movi.n	a13, 0
	.loc 1 97 13 view .LVU90
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 98 5 is_stmt 1 view .LVU91
	.loc 1 99 5 view .LVU92
	.loc 1 101 9 is_stmt 0 view .LVU93
	mov.n	a12, a13
	.loc 1 98 13 view .LVU94
	movi	a2, 0x300
	.loc 1 101 9 view .LVU95
	mov.n	a11, a13
	mov.n	a10, sp
	.loc 1 98 13 view .LVU96
	s16i	a2, sp, 2
	.loc 1 101 5 is_stmt 1 view .LVU97
	.loc 1 101 9 is_stmt 0 view .LVU98
	call8	btc_transfer_context
.LVL20:
	mov.n	a2, a10
	.loc 1 101 8 view .LVU99
	beqz.n	a10, .L19
	.loc 1 102 10 is_stmt 1 discriminator 1 view .LVU100
	.loc 1 102 34 discriminator 1 view .LVU101
	j	.L21
.L19:
	.loc 1 106 5 view .LVU102
	.loc 1 106 9 is_stmt 0 view .LVU103
	l32i.n	a10, a4, 0
	call8	future_await
.LVL21:
	.loc 1 106 8 view .LVU104
	bnez.n	a10, .L20
.L21:
	.loc 1 107 10 is_stmt 1 discriminator 1 view .LVU105
	.loc 1 107 34 discriminator 1 view .LVU106
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC13
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 107 187 discriminator 1 view .LVU107
	.loc 1 108 9 discriminator 1 view .LVU108
	.loc 1 108 16 is_stmt 0 discriminator 1 view .LVU109
	movi.n	a2, -1
	j	.L15
.L20:
	.loc 1 111 5 is_stmt 1 view .LVU110
	.loc 1 111 23 is_stmt 0 view .LVU111
	s8i	a2, a3, 0
	.loc 1 113 5 is_stmt 1 view .LVU112
.LVL24:
.L15:
	.loc 1 114 1 is_stmt 0 view .LVU113
	retw.n
.LFE40:
	.size	esp_bluedroid_disable, .-esp_bluedroid_disable
	.section	.rodata.esp_bluedroid_init.str1.1,"aMS",@progbits,1
.LC19:
	.string	"\033[0;31mE (%d) %s: Controller not initialised\n\033[0m\n"
.LC22:
	.string	"\033[0;31mE (%d) %s: Bluedroid already initialised\n\033[0m\n"
.LC24:
	.string	"\033[0;31mE (%d) %s: Bluedroid initialise failed\n\033[0m\n"
	.section	.text.esp_bluedroid_init,"ax",@progbits
	.literal_position
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.literal .LC21, bd_already_init
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.align	4
	.global	esp_bluedroid_init
	.type	esp_bluedroid_init, @function
esp_bluedroid_init:
.LFB41:
	.loc 1 117 1 is_stmt 1 view -0
	entry	sp, 48
.LCFI3:
	.loc 1 118 5 view .LVU115
	.loc 1 119 5 view .LVU116
	.loc 1 121 5 view .LVU117
	.loc 1 121 9 is_stmt 0 view .LVU118
	call8	esp_bt_controller_get_status
.LVL25:
	.loc 1 121 8 view .LVU119
	beqi	a10, 2, .L23
	.loc 1 122 10 is_stmt 1 discriminator 1 view .LVU120
	.loc 1 122 34 discriminator 1 view .LVU121
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC18
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC20
	j	.L30
.L23:
	.loc 1 126 5 view .LVU122
	.loc 1 126 9 is_stmt 0 view .LVU123
	l32r	a3, .LC21
	.loc 1 126 8 view .LVU124
	l8ui	a2, a3, 0
	beqz.n	a2, .L25
	.loc 1 127 10 is_stmt 1 discriminator 1 view .LVU125
	.loc 1 127 34 discriminator 1 view .LVU126
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC18
	l32r	a12, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
.L30:
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
	.loc 1 127 192 discriminator 1 view .LVU127
	.loc 1 128 9 discriminator 1 view .LVU128
	.loc 1 128 16 is_stmt 0 discriminator 1 view .LVU129
	movi	a2, 0x103
	j	.L22
.L25:
	.loc 1 135 5 is_stmt 1 view .LVU130
	call8	btc_init
.LVL29:
	.loc 1 137 5 view .LVU131
	.loc 1 137 16 is_stmt 0 view .LVU132
	mov.n	a10, a2
	call8	btc_main_get_future_p
.LVL30:
	mov.n	a4, a10
.LVL31:
	.loc 1 138 5 is_stmt 1 view .LVU133
	.loc 1 138 17 is_stmt 0 view .LVU134
	call8	future_new
.LVL32:
	.loc 1 138 15 view .LVU135
	s32i.n	a10, a4, 0
	.loc 1 139 5 is_stmt 1 view .LVU136
	.loc 1 139 8 is_stmt 0 view .LVU137
	bnez.n	a10, .L26
	.loc 1 140 10 is_stmt 1 discriminator 1 view .LVU138
	.loc 1 140 34 discriminator 1 view .LVU139
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC18
	l32r	a12, .LC25
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL34:
	.loc 1 140 190 discriminator 1 view .LVU140
	.loc 1 141 9 discriminator 1 view .LVU141
	.loc 1 141 16 is_stmt 0 discriminator 1 view .LVU142
	movi	a2, 0x101
	j	.L22
.L26:
	.loc 1 144 5 is_stmt 1 view .LVU143
	.loc 1 148 9 is_stmt 0 view .LVU144
	mov.n	a13, a2
	mov.n	a12, a2
	mov.n	a11, a2
	mov.n	a10, sp
	.loc 1 144 13 view .LVU145
	s8i	a2, sp, 0
	.loc 1 145 5 is_stmt 1 view .LVU146
	.loc 1 146 5 view .LVU147
	.loc 1 145 13 is_stmt 0 view .LVU148
	s16i	a2, sp, 2
	.loc 1 148 5 is_stmt 1 view .LVU149
	.loc 1 148 9 is_stmt 0 view .LVU150
	call8	btc_transfer_context
.LVL35:
	mov.n	a2, a10
	.loc 1 148 8 view .LVU151
	beqz.n	a10, .L27
	.loc 1 149 10 is_stmt 1 discriminator 1 view .LVU152
	.loc 1 149 34 discriminator 1 view .LVU153
	j	.L29
.L27:
	.loc 1 153 5 view .LVU154
	.loc 1 153 9 is_stmt 0 view .LVU155
	l32i.n	a10, a4, 0
	call8	future_await
.LVL36:
	.loc 1 153 8 view .LVU156
	bnez.n	a10, .L28
.L29:
	.loc 1 154 10 is_stmt 1 discriminator 1 view .LVU157
	.loc 1 154 34 discriminator 1 view .LVU158
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC18
	l32r	a12, .LC25
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL38:
	.loc 1 154 190 discriminator 1 view .LVU159
	.loc 1 155 9 discriminator 1 view .LVU160
	.loc 1 155 16 is_stmt 0 discriminator 1 view .LVU161
	movi.n	a2, -1
	j	.L22
.L28:
	.loc 1 158 5 is_stmt 1 view .LVU162
	.loc 1 158 21 is_stmt 0 view .LVU163
	movi.n	a4, 1
.LVL39:
	.loc 1 158 21 view .LVU164
	s8i	a4, a3, 0
	.loc 1 160 5 is_stmt 1 view .LVU165
.L22:
	.loc 1 161 1 is_stmt 0 view .LVU166
	retw.n
.LFE41:
	.size	esp_bluedroid_init, .-esp_bluedroid_init
	.section	.rodata.esp_bluedroid_deinit.str1.1,"aMS",@progbits,1
.LC28:
	.string	"\033[0;31mE (%d) %s: Bluedroid already de-initialised\n\033[0m\n"
.LC31:
	.string	"\033[0;31mE (%d) %s: Bludroid already enabled, do disable first\n\033[0m\n"
.LC33:
	.string	"\033[0;31mE (%d) %s: Bluedroid de-initialise failed\n\033[0m\n"
	.section	.text.esp_bluedroid_deinit,"ax",@progbits
	.literal_position
	.literal .LC26, bd_already_init
	.literal .LC27, .LC3
	.literal .LC29, .LC28
	.literal .LC30, bd_already_enable
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.global	esp_bluedroid_deinit
	.type	esp_bluedroid_deinit, @function
esp_bluedroid_deinit:
.LFB42:
	.loc 1 165 1 is_stmt 1 view -0
	entry	sp, 48
.LCFI4:
	.loc 1 166 5 view .LVU168
	.loc 1 167 5 view .LVU169
	.loc 1 169 5 view .LVU170
	.loc 1 169 9 is_stmt 0 view .LVU171
	l32r	a3, .LC26
	.loc 1 169 8 view .LVU172
	l8ui	a2, a3, 0
	bnez.n	a2, .L32
	.loc 1 170 10 is_stmt 1 discriminator 1 view .LVU173
	.loc 1 170 34 discriminator 1 view .LVU174
	call8	esp_log_timestamp
.LVL40:
	l32r	a11, .LC27
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC29
	j	.L39
.L32:
	.loc 1 174 5 view .LVU175
	.loc 1 174 9 is_stmt 0 view .LVU176
	l32r	a2, .LC30
	.loc 1 174 8 view .LVU177
	l8ui	a2, a2, 0
	beqz.n	a2, .L34
	.loc 1 175 10 is_stmt 1 discriminator 1 view .LVU178
	.loc 1 175 34 discriminator 1 view .LVU179
	call8	esp_log_timestamp
.LVL41:
	l32r	a11, .LC27
	l32r	a12, .LC32
	mov.n	a14, a11
	mov.n	a13, a10
.L39:
	movi.n	a10, 1
	call8	esp_log_write
.LVL42:
	.loc 1 175 205 discriminator 1 view .LVU180
	.loc 1 176 9 discriminator 1 view .LVU181
	.loc 1 176 16 is_stmt 0 discriminator 1 view .LVU182
	movi	a2, 0x103
	j	.L31
.L34:
	.loc 1 179 5 is_stmt 1 view .LVU183
	.loc 1 179 16 is_stmt 0 view .LVU184
	movi.n	a10, 1
	call8	btc_main_get_future_p
.LVL43:
	mov.n	a4, a10
.LVL44:
	.loc 1 180 5 is_stmt 1 view .LVU185
	.loc 1 180 17 is_stmt 0 view .LVU186
	call8	future_new
.LVL45:
	.loc 1 180 15 view .LVU187
	s32i.n	a10, a4, 0
	.loc 1 181 5 is_stmt 1 view .LVU188
	.loc 1 181 8 is_stmt 0 view .LVU189
	bnez.n	a10, .L35
	.loc 1 182 10 is_stmt 1 discriminator 1 view .LVU190
	.loc 1 182 34 discriminator 1 view .LVU191
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC27
	l32r	a12, .LC34
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 1 182 193 discriminator 1 view .LVU192
	.loc 1 183 9 discriminator 1 view .LVU193
	.loc 1 183 16 is_stmt 0 discriminator 1 view .LVU194
	movi	a2, 0x101
	j	.L31
.L35:
	.loc 1 186 5 is_stmt 1 view .LVU195
	.loc 1 187 13 is_stmt 0 view .LVU196
	movi	a8, 0x100
	.loc 1 190 9 view .LVU197
	mov.n	a13, a2
	mov.n	a12, a2
	mov.n	a11, a2
	mov.n	a10, sp
	.loc 1 186 13 view .LVU198
	s8i	a2, sp, 0
	.loc 1 187 5 is_stmt 1 view .LVU199
	.loc 1 188 5 view .LVU200
	.loc 1 187 13 is_stmt 0 view .LVU201
	s16i	a8, sp, 2
	.loc 1 190 5 is_stmt 1 view .LVU202
	.loc 1 190 9 is_stmt 0 view .LVU203
	call8	btc_transfer_context
.LVL48:
	mov.n	a2, a10
	.loc 1 190 8 view .LVU204
	beqz.n	a10, .L36
	.loc 1 191 10 is_stmt 1 discriminator 1 view .LVU205
	.loc 1 191 34 discriminator 1 view .LVU206
	j	.L38
.L36:
	.loc 1 195 5 view .LVU207
	.loc 1 195 9 is_stmt 0 view .LVU208
	l32i.n	a10, a4, 0
	call8	future_await
.LVL49:
	.loc 1 195 8 view .LVU209
	bnez.n	a10, .L37
.L38:
	.loc 1 196 10 is_stmt 1 discriminator 1 view .LVU210
	.loc 1 196 34 discriminator 1 view .LVU211
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC27
	l32r	a12, .LC34
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 196 193 discriminator 1 view .LVU212
	.loc 1 197 9 discriminator 1 view .LVU213
	.loc 1 197 16 is_stmt 0 discriminator 1 view .LVU214
	movi.n	a2, -1
	j	.L31
.L37:
	.loc 1 200 5 is_stmt 1 view .LVU215
	call8	btc_deinit
.LVL52:
	.loc 1 202 5 view .LVU216
	.loc 1 202 21 is_stmt 0 view .LVU217
	s8i	a2, a3, 0
	.loc 1 204 5 is_stmt 1 view .LVU218
.LVL53:
.L31:
	.loc 1 205 1 is_stmt 0 view .LVU219
	retw.n
.LFE42:
	.size	esp_bluedroid_deinit, .-esp_bluedroid_deinit
	.section	.bss.bd_already_init,"aw",@nobits
	.type	bd_already_init, @object
	.size	bd_already_init, 1
bd_already_init:
	.zero	1
	.section	.bss.bd_already_enable,"aw",@nobits
	.type	bd_already_enable, @object
	.size	bd_already_enable, 1
bd_already_enable:
	.zero	1
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI4-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 9 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 10 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/api/include/api/esp_bt_main.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/dieter/Development/esp-idf/components/bt/common/include/bt_common.h"
	.file 14 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 15 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 16 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
	.file 17 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 18 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.file 19 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/stack/include/stack/bt_types.h"
	.file 20 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/common/include/common/bt_trace.h"
	.file 21 "/home/dieter/Development/esp-idf/components/bt/common/btc/include/btc/btc_task.h"
	.file 22 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/future.h"
	.file 23 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/time.h"
	.file 24 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/unistd.h"
	.file 25 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 26 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 27 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/ctype.h"
	.file 28 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 29 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 30 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 31 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/../../../lwip/src/include/lwip/inet.h"
	.file 32 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/stack/include/stack/btm_api.h"
	.file 33 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/btc/include/btc/btc_main.h"
	.file 34 "/home/dieter/Development/esp-idf/components/bt/include/esp_bt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d10
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF448
	.byte	0xc
	.4byte	.LASF449
	.4byte	.LASF450
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	0x38
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	0x4b
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x63
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	0x7b
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
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6f
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xd3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x121
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xf2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x121
	.byte	0
	.uleb128 0xa
	.4byte	0x38
	.4byte	0x131
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x155
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x63
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xff
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x131
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x16d
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1da
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1da
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x63
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x63
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x63
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1e0
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x180
	.uleb128 0xa
	.4byte	0x174
	.4byte	0x1f0
	.uleb128 0xb
	.4byte	0x7b
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x273
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x63
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x63
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x63
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x63
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x63
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x63
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x63
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x63
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b8
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x174
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x174
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0xb9
	.4byte	0x2c8
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x30a
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x30a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x63
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x310
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x327
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c8
	.uleb128 0xa
	.4byte	0x320
	.4byte	0x320
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x326
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x273
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x355
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x355
	.byte	0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x63
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x38
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3ce
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x355
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x63
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x44
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x44
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x32d
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x63
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x532
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x35b
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x532
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x63
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x78a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x78a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x78a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x63
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x699
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x63
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x63
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8f2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x909
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x63
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x63
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x699
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x90f
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x915
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x699
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x926
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x30a
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c8
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x74b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x78a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x932
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x699
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3d3
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x67b
	.uleb128 0xf
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x355
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x63
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x44
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x44
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x32d
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x63
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x532
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0xb9
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6ab
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6da
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6fe
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x718
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x32d
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x355
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x63
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x71e
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x72e
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x32d
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x63
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xda
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x161
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x155
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x63
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x63
	.4byte	0x699
	.uleb128 0x18
	.4byte	0x532
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0x18
	.4byte	0x699
	.uleb128 0x18
	.4byte	0x63
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF95
	.uleb128 0x4
	.4byte	0x69f
	.uleb128 0x10
	.byte	0x4
	.4byte	0x67b
	.uleb128 0x17
	.4byte	0x63
	.4byte	0x6cf
	.uleb128 0x18
	.4byte	0x532
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0x18
	.4byte	0x6cf
	.uleb128 0x18
	.4byte	0x63
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x4
	.4byte	0x6cf
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6b1
	.uleb128 0x17
	.4byte	0xe6
	.4byte	0x6fe
	.uleb128 0x18
	.4byte	0x532
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0x18
	.4byte	0xe6
	.uleb128 0x18
	.4byte	0x63
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6e0
	.uleb128 0x17
	.4byte	0x63
	.4byte	0x718
	.uleb128 0x18
	.4byte	0x532
	.uleb128 0x18
	.4byte	0xb9
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x704
	.uleb128 0xa
	.4byte	0x38
	.4byte	0x72e
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x38
	.4byte	0x73e
	.uleb128 0xb
	.4byte	0x7b
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x538
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x784
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x784
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x78a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x73e
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7d7
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7d7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7d7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x4b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x8e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x4b
	.4byte	0x7e7
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x82e
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1da
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x63
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1da
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x82e
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1da
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8dd
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x699
	.byte	0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x155
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x155
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x155
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8dd
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x63
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x155
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x155
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x155
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x155
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x155
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	0x69f
	.4byte	0x8ed
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF451
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8ed
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7e7
	.uleb128 0x1a
	.4byte	0x909
	.uleb128 0x18
	.4byte	0x532
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8fe
	.uleb128 0x10
	.byte	0x4
	.4byte	0x790
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1f0
	.uleb128 0x1a
	.4byte	0x926
	.uleb128 0x18
	.4byte	0x63
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x92c
	.uleb128 0x10
	.byte	0x4
	.4byte	0x91b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x834
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3ce
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3ce
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3ce
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x532
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x699
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x9
	.byte	0x18
	.byte	0x11
	.4byte	0xa1
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0xa
	.byte	0x1b
	.byte	0xe
	.4byte	0x9a5
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xa
	.byte	0x1f
	.byte	0x3
	.4byte	0x984
	.uleb128 0xa
	.4byte	0x6d5
	.4byte	0x9c1
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	0x9b1
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x9c1
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0xc
	.byte	0x23
	.byte	0xe
	.4byte	0xa05
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0xd
	.byte	0x88
	.byte	0xe
	.4byte	0xa86
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x7
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x9
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xa
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xb
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xd
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0xe
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0xf
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x11
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0xe
	.byte	0x94
	.byte	0x1b
	.4byte	0x82
	.uleb128 0xa
	.4byte	0xb9
	.4byte	0xaa2
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0xe
	.byte	0xb3
	.byte	0xe
	.4byte	0xa92
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0xe
	.byte	0xb4
	.byte	0xe
	.4byte	0xa92
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0xe
	.byte	0xb6
	.byte	0xe
	.4byte	0xa92
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0xe
	.byte	0xb7
	.byte	0xe
	.4byte	0xa92
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0xe
	.byte	0xbd
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0xe
	.byte	0xbe
	.byte	0x1b
	.4byte	0x82
	.uleb128 0xa
	.4byte	0x82
	.4byte	0xafa
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0xaea
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0xe
	.byte	0xbf
	.byte	0x1b
	.4byte	0xafa
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0xe
	.byte	0xc0
	.byte	0x1b
	.4byte	0xafa
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0xe
	.byte	0xc1
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0xe
	.byte	0xc2
	.byte	0x1b
	.4byte	0x82
	.uleb128 0xa
	.4byte	0x6d5
	.4byte	0xb3f
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0xb2f
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0xe
	.byte	0xc4
	.byte	0x1b
	.4byte	0xb3f
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0xe
	.byte	0xd1
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0xe
	.byte	0xd4
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0xe
	.byte	0xd6
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0xe
	.byte	0xda
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0xe
	.byte	0xed
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xe
	.byte	0xee
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0xe
	.byte	0xf6
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0xe
	.byte	0xf7
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0xe
	.byte	0xf9
	.byte	0x1d
	.4byte	0x52
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0xe
	.byte	0xfa
	.byte	0x1d
	.4byte	0x52
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0xe
	.byte	0xfd
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1c
	.4byte	.LASF181
	.byte	0xe
	.byte	0xfe
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x100
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x160
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x193
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x194
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6d5
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6d5
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x198
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x199
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0xe
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0xe
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0xe
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0xe
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0xe
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0xe
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0xe
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0xe
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0xe
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0xe
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x52
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0xe
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0xe
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0xe
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6d5
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0xe
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6d5
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0xe
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0xe
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0xe
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0xa
	.4byte	0x82
	.4byte	0xd90
	.uleb128 0xb
	.4byte	0x7b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xd80
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0xe
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xd90
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0xe
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xd90
	.uleb128 0xa
	.4byte	0x3f
	.4byte	0xdbf
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0xdaf
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0xe
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xdbf
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0xe
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xdbf
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0xe
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0xafa
	.uleb128 0xa
	.4byte	0x6a
	.4byte	0xdfb
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0xdeb
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0xe
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xdfb
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0xe
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0xe
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0xe
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0xe
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0xe
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0xe
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0xe
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0xe
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0xe
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0xe
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0xe
	.2byte	0x30b
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0xe
	.2byte	0x315
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0xe
	.2byte	0x318
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0xe
	.2byte	0x325
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0xe
	.2byte	0x326
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0xe
	.2byte	0x327
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0xe
	.2byte	0x328
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0xe
	.2byte	0x329
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0xa
	.4byte	0x82
	.4byte	0xf02
	.uleb128 0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0xef7
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0xe
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0xe
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0xe
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0xe
	.2byte	0x330
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0xe
	.2byte	0x331
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0xe
	.2byte	0x332
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0xe
	.2byte	0x333
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0xe
	.2byte	0x334
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0xe
	.2byte	0x335
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0xe
	.2byte	0x336
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0xe
	.2byte	0x337
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0xe
	.2byte	0x338
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0xe
	.2byte	0x339
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0xe
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xe
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xf02
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xe
	.2byte	0x343
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xe
	.2byte	0x344
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xe
	.2byte	0x346
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xe
	.2byte	0x347
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xe
	.2byte	0x349
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xe
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xe
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xe
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xe
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xe
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0xe
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF264
	.byte	0xe
	.2byte	0x390
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF265
	.byte	0xe
	.2byte	0x392
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF266
	.byte	0xe
	.2byte	0x393
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF267
	.byte	0xe
	.2byte	0x394
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF268
	.byte	0xe
	.2byte	0x395
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF269
	.byte	0xe
	.2byte	0x396
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF270
	.byte	0xe
	.2byte	0x397
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF271
	.byte	0xe
	.2byte	0x398
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF272
	.byte	0xe
	.2byte	0x399
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF273
	.byte	0xe
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0xe
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF275
	.byte	0xe
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF276
	.byte	0xe
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF277
	.byte	0xe
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF278
	.byte	0xe
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF279
	.byte	0xf
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF280
	.byte	0xf
	.2byte	0x500
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF281
	.byte	0xf
	.2byte	0x503
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF282
	.byte	0xf
	.2byte	0x504
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF283
	.byte	0xf
	.2byte	0x507
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF284
	.byte	0xf
	.2byte	0x508
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF285
	.byte	0xf
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF286
	.byte	0xf
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF287
	.byte	0xf
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF288
	.byte	0xf
	.2byte	0x510
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF289
	.byte	0xf
	.2byte	0x513
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF290
	.byte	0xf
	.2byte	0x514
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF291
	.byte	0xf
	.2byte	0x517
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF292
	.byte	0xf
	.2byte	0x518
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1b
	.4byte	.LASF293
	.byte	0xf
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF294
	.byte	0xf
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF295
	.byte	0x10
	.byte	0x58
	.byte	0x10
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF296
	.byte	0x11
	.byte	0x4f
	.byte	0x17
	.4byte	0x11ec
	.uleb128 0x3
	.4byte	.LASF297
	.byte	0x12
	.byte	0x1d
	.byte	0x1b
	.4byte	0x11f8
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x13
	.byte	0x1a
	.byte	0x11
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x13
	.byte	0x1c
	.byte	0x12
	.4byte	0xad
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF300
	.uleb128 0xa
	.4byte	0x1210
	.4byte	0x123f
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	0x122f
	.uleb128 0x20
	.4byte	.LASF301
	.byte	0x13
	.2byte	0x2be
	.byte	0x16
	.4byte	0x123f
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x20
	.4byte	.LASF302
	.byte	0x13
	.2byte	0x2bf
	.byte	0x16
	.4byte	0x123f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF303
	.byte	0x14
	.2byte	0x14f
	.byte	0xe
	.4byte	0x1210
	.uleb128 0x1b
	.4byte	.LASF304
	.byte	0x14
	.2byte	0x241
	.byte	0xe
	.4byte	0x1210
	.uleb128 0xe
	.4byte	.LASF305
	.byte	0x8
	.byte	0x15
	.byte	0x1a
	.byte	0x10
	.4byte	0x12d5
	.uleb128 0xf
	.string	"sig"
	.byte	0x15
	.byte	0x1b
	.byte	0xd
	.4byte	0x95
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0x15
	.byte	0x1c
	.byte	0xd
	.4byte	0x95
	.byte	0x1
	.uleb128 0xf
	.string	"pid"
	.byte	0x15
	.byte	0x1d
	.byte	0xd
	.4byte	0x95
	.byte	0x2
	.uleb128 0xf
	.string	"act"
	.byte	0x15
	.byte	0x1e
	.byte	0xd
	.4byte	0x95
	.byte	0x3
	.uleb128 0xf
	.string	"arg"
	.byte	0x15
	.byte	0x1f
	.byte	0xb
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF306
	.byte	0x15
	.byte	0x20
	.byte	0x3
	.4byte	0x1286
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x15
	.byte	0x27
	.byte	0xe
	.4byte	0x1302
	.uleb128 0x1e
	.4byte	.LASF307
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF308
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF309
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.4byte	0x137d
	.uleb128 0x1e
	.4byte	.LASF310
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF311
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF312
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF313
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF314
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF316
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF317
	.byte	0x7
	.uleb128 0x1e
	.4byte	.LASF318
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF319
	.byte	0x9
	.uleb128 0x1e
	.4byte	.LASF320
	.byte	0xa
	.uleb128 0x1e
	.4byte	.LASF321
	.byte	0xb
	.uleb128 0x1e
	.4byte	.LASF322
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF323
	.byte	0xd
	.uleb128 0x1e
	.4byte	.LASF324
	.byte	0xe
	.uleb128 0x1e
	.4byte	.LASF325
	.byte	0xf
	.uleb128 0x1e
	.4byte	.LASF326
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF327
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.4byte	.LASF328
	.byte	0xc
	.byte	0x16
	.byte	0x18
	.byte	0x8
	.4byte	0x13b2
	.uleb128 0xd
	.4byte	.LASF329
	.byte	0x16
	.byte	0x19
	.byte	0x9
	.4byte	0x1228
	.byte	0
	.uleb128 0xd
	.4byte	.LASF330
	.byte	0x16
	.byte	0x1a
	.byte	0xf
	.4byte	0x1204
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF331
	.byte	0x16
	.byte	0x1b
	.byte	0xb
	.4byte	0xb9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF332
	.byte	0x16
	.byte	0x1d
	.byte	0x17
	.4byte	0x137d
	.uleb128 0x1c
	.4byte	.LASF333
	.byte	0x17
	.byte	0x9a
	.byte	0xd
	.4byte	0xd3
	.uleb128 0x1c
	.4byte	.LASF334
	.byte	0x17
	.byte	0x9b
	.byte	0xc
	.4byte	0x63
	.uleb128 0xa
	.4byte	0x699
	.4byte	0x13e6
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF335
	.byte	0x17
	.byte	0x9e
	.byte	0xe
	.4byte	0x13d6
	.uleb128 0x1c
	.4byte	.LASF336
	.byte	0x18
	.byte	0x10
	.byte	0xf
	.4byte	0x13fe
	.uleb128 0x10
	.byte	0x4
	.4byte	0x699
	.uleb128 0x1c
	.4byte	.LASF337
	.byte	0x18
	.byte	0xfc
	.byte	0xe
	.4byte	0x699
	.uleb128 0x1c
	.4byte	.LASF338
	.byte	0x18
	.byte	0xfd
	.byte	0xc
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF339
	.byte	0x18
	.byte	0xfd
	.byte	0x14
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF340
	.byte	0x18
	.byte	0xfd
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF341
	.byte	0x18
	.byte	0xff
	.byte	0xc
	.4byte	0x63
	.uleb128 0xa
	.4byte	0x6d5
	.4byte	0x144b
	.uleb128 0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x1440
	.uleb128 0x1c
	.4byte	.LASF342
	.byte	0x19
	.byte	0x14
	.byte	0x1b
	.4byte	0x144b
	.uleb128 0x1c
	.4byte	.LASF343
	.byte	0x19
	.byte	0x15
	.byte	0xc
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF344
	.byte	0x1a
	.byte	0x30
	.byte	0x11
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF345
	.byte	0x1a
	.byte	0x34
	.byte	0x12
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x6a6
	.4byte	0x148b
	.uleb128 0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x1480
	.uleb128 0x1c
	.4byte	.LASF346
	.byte	0x1b
	.byte	0xa5
	.byte	0x13
	.4byte	0x148b
	.uleb128 0xe
	.4byte	.LASF347
	.byte	0x4
	.byte	0x1c
	.byte	0x33
	.byte	0x8
	.4byte	0x14b7
	.uleb128 0xd
	.4byte	.LASF348
	.byte	0x1c
	.byte	0x34
	.byte	0x9
	.4byte	0x1474
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF349
	.byte	0x1c
	.byte	0x39
	.byte	0x19
	.4byte	0x149c
	.uleb128 0xe
	.4byte	.LASF350
	.byte	0x14
	.byte	0x1d
	.byte	0x3b
	.byte	0x8
	.4byte	0x14eb
	.uleb128 0xd
	.4byte	.LASF348
	.byte	0x1d
	.byte	0x3c
	.byte	0x9
	.4byte	0x14eb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF351
	.byte	0x1d
	.byte	0x3e
	.byte	0x8
	.4byte	0x1468
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x1474
	.4byte	0x14fb
	.uleb128 0xb
	.4byte	0x7b
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF352
	.byte	0x1d
	.byte	0x43
	.byte	0x19
	.4byte	0x14c3
	.uleb128 0x8
	.byte	0x14
	.byte	0x1e
	.byte	0x46
	.byte	0x3
	.4byte	0x1529
	.uleb128 0x21
	.string	"ip6"
	.byte	0x1e
	.byte	0x47
	.byte	0x10
	.4byte	0x14fb
	.uleb128 0x21
	.string	"ip4"
	.byte	0x1e
	.byte	0x48
	.byte	0x10
	.4byte	0x14b7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF353
	.byte	0x18
	.byte	0x1e
	.byte	0x45
	.byte	0x10
	.4byte	0x1551
	.uleb128 0xd
	.4byte	.LASF354
	.byte	0x1e
	.byte	0x49
	.byte	0x5
	.4byte	0x1507
	.byte	0
	.uleb128 0xd
	.4byte	.LASF355
	.byte	0x1e
	.byte	0x4b
	.byte	0x8
	.4byte	0x1468
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF356
	.byte	0x1e
	.byte	0x4c
	.byte	0x3
	.4byte	0x1529
	.uleb128 0x4
	.4byte	0x1551
	.uleb128 0x1c
	.4byte	.LASF357
	.byte	0x1e
	.byte	0x4e
	.byte	0x18
	.4byte	0x155d
	.uleb128 0x1b
	.4byte	.LASF358
	.byte	0x1e
	.2byte	0x176
	.byte	0x18
	.4byte	0x155d
	.uleb128 0x1b
	.4byte	.LASF359
	.byte	0x1e
	.2byte	0x177
	.byte	0x18
	.4byte	0x155d
	.uleb128 0x1b
	.4byte	.LASF360
	.byte	0x1e
	.2byte	0x19a
	.byte	0x18
	.4byte	0x155d
	.uleb128 0x8
	.byte	0x10
	.byte	0x1f
	.byte	0x3f
	.byte	0x3
	.4byte	0x15b7
	.uleb128 0x9
	.4byte	.LASF361
	.byte	0x1f
	.byte	0x40
	.byte	0xb
	.4byte	0x14eb
	.uleb128 0x9
	.4byte	.LASF362
	.byte	0x1f
	.byte	0x41
	.byte	0xa
	.4byte	0x15b7
	.byte	0
	.uleb128 0xa
	.4byte	0x1468
	.4byte	0x15c7
	.uleb128 0xb
	.4byte	0x7b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF363
	.byte	0x10
	.byte	0x1f
	.byte	0x3e
	.byte	0x8
	.4byte	0x15e1
	.uleb128 0xf
	.string	"un"
	.byte	0x1f
	.byte	0x42
	.byte	0x5
	.4byte	0x1595
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x15c7
	.uleb128 0x1c
	.4byte	.LASF364
	.byte	0x1f
	.byte	0x56
	.byte	0x1e
	.4byte	0x15e1
	.uleb128 0x22
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x20
	.2byte	0x1c2
	.byte	0x6
	.4byte	0x171c
	.uleb128 0x1e
	.4byte	.LASF365
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF366
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF367
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF368
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF369
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF371
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF372
	.byte	0x7
	.uleb128 0x1e
	.4byte	.LASF373
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF374
	.byte	0x9
	.uleb128 0x1e
	.4byte	.LASF375
	.byte	0xa
	.uleb128 0x1e
	.4byte	.LASF376
	.byte	0xb
	.uleb128 0x1e
	.4byte	.LASF377
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF378
	.byte	0xd
	.uleb128 0x1e
	.4byte	.LASF379
	.byte	0xe
	.uleb128 0x1e
	.4byte	.LASF380
	.byte	0xf
	.uleb128 0x1e
	.4byte	.LASF381
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF382
	.byte	0x11
	.uleb128 0x1e
	.4byte	.LASF383
	.byte	0x12
	.uleb128 0x1e
	.4byte	.LASF384
	.byte	0x13
	.uleb128 0x1e
	.4byte	.LASF385
	.byte	0x14
	.uleb128 0x1e
	.4byte	.LASF386
	.byte	0x15
	.uleb128 0x1e
	.4byte	.LASF387
	.byte	0x16
	.uleb128 0x1e
	.4byte	.LASF388
	.byte	0x17
	.uleb128 0x1e
	.4byte	.LASF389
	.byte	0x18
	.uleb128 0x1e
	.4byte	.LASF390
	.byte	0x19
	.uleb128 0x1e
	.4byte	.LASF391
	.byte	0x1a
	.uleb128 0x1e
	.4byte	.LASF392
	.byte	0x1b
	.uleb128 0x1e
	.4byte	.LASF393
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF394
	.byte	0x1d
	.uleb128 0x1e
	.4byte	.LASF395
	.byte	0x1e
	.uleb128 0x1e
	.4byte	.LASF396
	.byte	0x1f
	.uleb128 0x1e
	.4byte	.LASF397
	.byte	0x20
	.uleb128 0x1e
	.4byte	.LASF398
	.byte	0x21
	.uleb128 0x1e
	.4byte	.LASF399
	.byte	0x22
	.uleb128 0x1e
	.4byte	.LASF400
	.byte	0x23
	.uleb128 0x1e
	.4byte	.LASF401
	.byte	0x24
	.uleb128 0x1e
	.4byte	.LASF402
	.byte	0x25
	.uleb128 0x1e
	.4byte	.LASF403
	.byte	0x26
	.uleb128 0x1e
	.4byte	.LASF404
	.byte	0x27
	.uleb128 0x1e
	.4byte	.LASF405
	.byte	0x28
	.uleb128 0x1e
	.4byte	.LASF406
	.byte	0x29
	.uleb128 0x1e
	.4byte	.LASF407
	.byte	0x2a
	.uleb128 0x1e
	.4byte	.LASF408
	.byte	0x2b
	.uleb128 0x1e
	.4byte	.LASF409
	.byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF410
	.byte	0x2d
	.uleb128 0x1e
	.4byte	.LASF411
	.byte	0x2e
	.byte	0
	.uleb128 0x22
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x20
	.2byte	0x700
	.byte	0x6
	.4byte	0x1756
	.uleb128 0x1e
	.4byte	.LASF412
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF413
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF414
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF415
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF416
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF418
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x21
	.byte	0x18
	.byte	0xe
	.4byte	0x177d
	.uleb128 0x1e
	.4byte	.LASF419
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF420
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF421
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF422
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x21
	.byte	0x1f
	.byte	0xe
	.4byte	0x17aa
	.uleb128 0x1e
	.4byte	.LASF423
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF424
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF425
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF426
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF427
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x7b
	.byte	0x22
	.byte	0xb5
	.byte	0xe
	.4byte	0x17d1
	.uleb128 0x1e
	.4byte	.LASF428
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF429
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF430
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF431
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF432
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.4byte	0x1228
	.uleb128 0x5
	.byte	0x3
	.4byte	bd_already_enable
	.uleb128 0x23
	.4byte	.LASF433
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.4byte	0x1228
	.uleb128 0x5
	.byte	0x3
	.4byte	bd_already_init
	.uleb128 0x24
	.4byte	.LASF435
	.byte	0x1
	.byte	0xa4
	.byte	0xb
	.4byte	0x978
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191a
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0xa6
	.byte	0xf
	.4byte	0x12d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF434
	.byte	0x1
	.byte	0xa7
	.byte	0x10
	.4byte	0x191a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0x1ca6
	.uleb128 0x27
	.4byte	.LVL41
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0x1cb2
	.4byte	0x1857
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0x1cbe
	.4byte	0x186a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL45
	.4byte	0x1cca
	.uleb128 0x27
	.4byte	.LVL46
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0x1cb2
	.4byte	0x18aa
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL48
	.4byte	0x1cd6
	.4byte	0x18d0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL49
	.4byte	0x1ce2
	.uleb128 0x27
	.4byte	.LVL50
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0x1cb2
	.4byte	0x1910
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL52
	.4byte	0x1cee
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1920
	.uleb128 0x10
	.byte	0x4
	.4byte	0x13b2
	.uleb128 0x24
	.4byte	.LASF436
	.byte	0x1
	.byte	0x74
	.byte	0xb
	.4byte	0x978
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a51
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0x76
	.byte	0xf
	.4byte	0x12d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF434
	.byte	0x1
	.byte	0x77
	.byte	0x10
	.4byte	0x191a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0x1cfa
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0x1ca6
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0x1cb2
	.4byte	0x1991
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL29
	.4byte	0x1d07
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0x1cbe
	.4byte	0x19ae
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x1cca
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0x1cb2
	.4byte	0x19ee
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x1cd6
	.4byte	0x1a14
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL36
	.4byte	0x1ce2
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0x1ca6
	.uleb128 0x2a
	.4byte	.LVL38
	.4byte	0x1cb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF437
	.byte	0x1
	.byte	0x50
	.byte	0xb
	.4byte	0x978
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b78
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0x52
	.byte	0xf
	.4byte	0x12d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF434
	.byte	0x1
	.byte	0x53
	.byte	0x10
	.4byte	0x191a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0x1cb2
	.4byte	0x1ac5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0x1cbe
	.4byte	0x1ad8
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x1cca
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x1cb2
	.4byte	0x1b18
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0x1cd6
	.4byte	0x1b3b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x1ce2
	.uleb128 0x27
	.4byte	.LVL22
	.4byte	0x1ca6
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0x1cb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF438
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	0x978
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c90
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0x29
	.byte	0xf
	.4byte	0x12d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF434
	.byte	0x1
	.byte	0x2a
	.byte	0x10
	.4byte	0x191a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x27
	.4byte	.LVL0
	.4byte	0x1ca6
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0x1cb2
	.4byte	0x1bda
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0x1cbe
	.4byte	0x1bed
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	.LVL5
	.4byte	0x1cca
	.uleb128 0x27
	.4byte	.LVL6
	.4byte	0x1ca6
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0x1cb2
	.4byte	0x1c2d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0x1cd6
	.4byte	0x1c53
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0x1ce2
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0x1ca6
	.uleb128 0x2a
	.4byte	.LVL11
	.4byte	0x1cb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF452
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.4byte	0x9a5
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF439
	.4byte	.LASF439
	.byte	0xc
	.byte	0x5b
	.byte	0xa
	.uleb128 0x2c
	.4byte	.LASF440
	.4byte	.LASF440
	.byte	0xc
	.byte	0x7e
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF441
	.4byte	.LASF441
	.byte	0x21
	.byte	0x27
	.byte	0xc
	.uleb128 0x2c
	.4byte	.LASF442
	.4byte	.LASF442
	.byte	0x16
	.byte	0x23
	.byte	0xb
	.uleb128 0x2c
	.4byte	.LASF443
	.4byte	.LASF443
	.byte	0x15
	.byte	0x63
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF444
	.4byte	.LASF444
	.byte	0x16
	.byte	0x31
	.byte	0x7
	.uleb128 0x2c
	.4byte	.LASF445
	.4byte	.LASF445
	.byte	0x15
	.byte	0x66
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF446
	.4byte	.LASF446
	.byte	0x22
	.2byte	0x14c
	.byte	0x1c
	.uleb128 0x2c
	.4byte	.LASF447
	.4byte	.LASF447
	.byte	0x15
	.byte	0x65
	.byte	0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x2f
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 .LVU185
	.uleb128 .LVU219
.LLST3:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU133
	.uleb128 .LVU164
.LLST2:
	.4byte	.LVL31
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU78
	.uleb128 .LVU113
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU30
	.uleb128 .LVU62
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF209:
	.string	"Xthal_hw_release_name"
.LASF24:
	.string	"_flock_t"
.LASF415:
	.string	"BTM_PM_STS_PARK"
.LASF205:
	.string	"Xthal_hw_configid0"
.LASF206:
	.string	"Xthal_hw_configid1"
.LASF313:
	.string	"BTC_PID_GATTC"
.LASF270:
	.string	"Xthal_mmu_ca_bits"
.LASF408:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF436:
	.string	"esp_bluedroid_init"
.LASF324:
	.string	"BTC_PID_AVRC_CT"
.LASF352:
	.string	"ip6_addr_t"
.LASF450:
	.string	"/home/dieter/Development/ProjektEi/build/bt"
.LASF222:
	.string	"Xthal_have_ccount"
.LASF412:
	.string	"BTM_PM_STS_ACTIVE"
.LASF188:
	.string	"Xthal_memory_order"
.LASF95:
	.string	"char"
.LASF279:
	.string	"Xthal_cp_id_FPU"
.LASF284:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF433:
	.string	"bd_already_init"
.LASF42:
	.string	"_on_exit_args"
.LASF237:
	.string	"Xthal_num_xlmi"
.LASF302:
	.string	"bd_addr_null"
.LASF340:
	.string	"optopt"
.LASF372:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF277:
	.string	"Xthal_dtlb_ways"
.LASF378:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF73:
	.string	"_r48"
.LASF371:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF177:
	.string	"Xthal_dcache_linewidth"
.LASF169:
	.string	"Xthal_cp_names"
.LASF183:
	.string	"Xthal_debug_configured"
.LASF81:
	.string	"_signal_buf"
.LASF283:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF172:
	.string	"Xthal_cp_max"
.LASF379:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF212:
	.string	"Xthal_num_interrupts"
.LASF276:
	.string	"Xthal_dtlb_way_bits"
.LASF375:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF57:
	.string	"_lbfsize"
.LASF55:
	.string	"_flags"
.LASF267:
	.string	"Xthal_mmu_rings"
.LASF425:
	.string	"BTC_MAIN_ENABLE_FUTURE"
.LASF142:
	.string	"BT_STATUS_NOMEM"
.LASF60:
	.string	"_errno"
.LASF394:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF439:
	.string	"esp_log_timestamp"
.LASF165:
	.string	"Xthal_cpregs_size"
.LASF96:
	.string	"__FILE"
.LASF317:
	.string	"BTC_PID_SPPLIKE"
.LASF325:
	.string	"BTC_PID_AVRC_TG"
.LASF66:
	.string	"__sdidinit"
.LASF137:
	.string	"ESP_LOG_DEBUG"
.LASF303:
	.string	"btif_trace_level"
.LASF345:
	.string	"u32_t"
.LASF217:
	.string	"Xthal_inttype"
.LASF159:
	.string	"Xthal_cpregs_save_fn"
.LASF123:
	.string	"__sf_fake_stdout"
.LASF93:
	.string	"_mbstate"
.LASF390:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF129:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF368:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF360:
	.string	"ip6_addr_any"
.LASF441:
	.string	"btc_main_get_future_p"
.LASF26:
	.string	"__ULong"
.LASF117:
	.string	"_mbrlen_state"
.LASF388:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF261:
	.string	"Xthal_have_mimic_cacheattr"
.LASF62:
	.string	"_stdout"
.LASF166:
	.string	"Xthal_cpregs_align"
.LASF17:
	.string	"_fpos_t"
.LASF359:
	.string	"ip_addr_broadcast"
.LASF288:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF49:
	.string	"_fns"
.LASF173:
	.string	"Xthal_cp_mask"
.LASF83:
	.string	"_cookie"
.LASF125:
	.string	"_global_impure_ptr"
.LASF148:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF13:
	.string	"_lock_t"
.LASF31:
	.string	"_Bigint"
.LASF39:
	.string	"__tm_wday"
.LASF156:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF18:
	.string	"wint_t"
.LASF430:
	.string	"ESP_BT_CONTROLLER_STATUS_ENABLED"
.LASF161:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF106:
	.string	"_result"
.LASF351:
	.string	"zone"
.LASF299:
	.string	"UINT32"
.LASF187:
	.string	"Xthal_release_internal"
.LASF35:
	.string	"__tm_hour"
.LASF214:
	.string	"Xthal_intlevel_mask"
.LASF264:
	.string	"Xthal_have_tlbs"
.LASF149:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF176:
	.string	"Xthal_icache_linewidth"
.LASF422:
	.string	"BTC_MAIN_ACT_DISABLE"
.LASF207:
	.string	"Xthal_hw_release_major"
.LASF186:
	.string	"Xthal_release_name"
.LASF21:
	.string	"__count"
.LASF339:
	.string	"opterr"
.LASF174:
	.string	"Xthal_num_aregs"
.LASF105:
	.string	"_mprec"
.LASF34:
	.string	"__tm_min"
.LASF323:
	.string	"BTC_PID_A2DP"
.LASF263:
	.string	"Xthal_have_cacheattr"
.LASF414:
	.string	"BTM_PM_STS_SNIFF"
.LASF241:
	.string	"Xthal_instram_vaddr"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF445:
	.string	"btc_deinit"
.LASF331:
	.string	"result"
.LASF154:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF404:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF367:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF9:
	.string	"long long unsigned int"
.LASF396:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF100:
	.string	"_rand48"
.LASF223:
	.string	"Xthal_num_ccompare"
.LASF160:
	.string	"Xthal_cpregs_restore_fn"
.LASF30:
	.string	"_wds"
.LASF301:
	.string	"bd_addr_any"
.LASF386:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF139:
	.string	"BT_STATUS_SUCCESS"
.LASF428:
	.string	"ESP_BT_CONTROLLER_STATUS_IDLE"
.LASF349:
	.string	"ip4_addr_t"
.LASF365:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF140:
	.string	"BT_STATUS_FAIL"
.LASF238:
	.string	"Xthal_instrom_vaddr"
.LASF403:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF91:
	.string	"_offset"
.LASF88:
	.string	"_ubuf"
.LASF444:
	.string	"future_await"
.LASF416:
	.string	"BTM_PM_STS_SSR"
.LASF292:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF195:
	.string	"Xthal_have_sext"
.LASF194:
	.string	"Xthal_have_minmax"
.LASF235:
	.string	"Xthal_num_datarom"
.LASF65:
	.string	"_emergency"
.LASF191:
	.string	"Xthal_have_booleans"
.LASF278:
	.string	"Xthal_dtlb_arf_ways"
.LASF233:
	.string	"Xthal_num_instrom"
.LASF197:
	.string	"Xthal_have_mac16"
.LASF326:
	.string	"BTC_PID_SPP"
.LASF343:
	.string	"_sys_nerr"
.LASF153:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF232:
	.string	"Xthal_tram_sync"
.LASF409:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF431:
	.string	"ESP_BT_CONTROLLER_STATUS_NUM"
.LASF280:
	.string	"Xthal_cp_mask_FPU"
.LASF242:
	.string	"Xthal_instram_paddr"
.LASF150:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF257:
	.string	"Xthal_icache_line_lockable"
.LASF75:
	.string	"_asctime_buf"
.LASF181:
	.string	"Xthal_dcache_size"
.LASF126:
	.string	"suboptarg"
.LASF40:
	.string	"__tm_yday"
.LASF64:
	.string	"_inc"
.LASF300:
	.string	"_Bool"
.LASF155:
	.string	"BT_STATUS_TIMEOUT"
.LASF289:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF27:
	.string	"_next"
.LASF259:
	.string	"Xthal_have_spanning_way"
.LASF157:
	.string	"BT_STATUS_EIR_TOO_LARGE"
.LASF189:
	.string	"Xthal_have_windowed"
.LASF273:
	.string	"Xthal_itlb_way_bits"
.LASF239:
	.string	"Xthal_instrom_paddr"
.LASF253:
	.string	"Xthal_icache_setwidth"
.LASF133:
	.string	"ESP_LOG_NONE"
.LASF402:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF369:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF199:
	.string	"Xthal_have_fp"
.LASF236:
	.string	"Xthal_num_dataram"
.LASF335:
	.string	"_tzname"
.LASF234:
	.string	"Xthal_num_instram"
.LASF22:
	.string	"__value"
.LASF204:
	.string	"Xthal_build_unique_id"
.LASF108:
	.string	"_p5s"
.LASF226:
	.string	"Xthal_xea_version"
.LASF434:
	.string	"future_p"
.LASF260:
	.string	"Xthal_have_identity_map"
.LASF332:
	.string	"future_t"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF112:
	.string	"_mblen_state"
.LASF228:
	.string	"Xthal_have_highlevel_interrupts"
.LASF240:
	.string	"Xthal_instrom_size"
.LASF36:
	.string	"__tm_mday"
.LASF198:
	.string	"Xthal_have_mul16"
.LASF76:
	.string	"_sig_func"
.LASF118:
	.string	"_mbrtowc_state"
.LASF77:
	.string	"_atexit0"
.LASF297:
	.string	"osi_sem_t"
.LASF5:
	.string	"__int32_t"
.LASF421:
	.string	"BTC_MAIN_ACT_ENABLE"
.LASF216:
	.string	"Xthal_intlevel"
.LASF229:
	.string	"Xthal_have_nmi"
.LASF286:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF395:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF419:
	.string	"BTC_MAIN_ACT_INIT"
.LASF107:
	.string	"_result_k"
.LASF295:
	.string	"QueueHandle_t"
.LASF230:
	.string	"Xthal_tram_pending"
.LASF316:
	.string	"BTC_PID_BLE_HID"
.LASF184:
	.string	"Xthal_release_major"
.LASF336:
	.string	"environ"
.LASF10:
	.string	"uint8_t"
.LASF314:
	.string	"BTC_PID_GATT_COMMON"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF271:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF131:
	.string	"esp_bluedroid_status_t"
.LASF163:
	.string	"Xthal_extra_size"
.LASF87:
	.string	"_close"
.LASF130:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF282:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF54:
	.string	"__sFILE_fake"
.LASF294:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF391:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF333:
	.string	"_timezone"
.LASF202:
	.string	"Xthal_have_pif"
.LASF213:
	.string	"Xthal_excm_level"
.LASF312:
	.string	"BTC_PID_GATTS"
.LASF134:
	.string	"ESP_LOG_ERROR"
.LASF354:
	.string	"u_addr"
.LASF152:
	.string	"BT_STATUS_PENDING"
.LASF61:
	.string	"_stdin"
.LASF70:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF376:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF447:
	.string	"btc_init"
.LASF437:
	.string	"esp_bluedroid_disable"
.LASF164:
	.string	"Xthal_extra_align"
.LASF52:
	.string	"_base"
.LASF109:
	.string	"_freelist"
.LASF102:
	.string	"_mult"
.LASF103:
	.string	"_add"
.LASF269:
	.string	"Xthal_mmu_sr_bits"
.LASF243:
	.string	"Xthal_instram_size"
.LASF120:
	.string	"_wcrtomb_state"
.LASF344:
	.string	"u8_t"
.LASF180:
	.string	"Xthal_icache_size"
.LASF158:
	.string	"Xthal_rev_no"
.LASF56:
	.string	"_file"
.LASF338:
	.string	"optind"
.LASF208:
	.string	"Xthal_hw_release_minor"
.LASF247:
	.string	"Xthal_dataram_vaddr"
.LASF291:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF268:
	.string	"Xthal_mmu_ring_bits"
.LASF69:
	.string	"__cleanup"
.LASF315:
	.string	"BTC_PID_GAP_BLE"
.LASF305:
	.string	"btc_msg"
.LASF23:
	.string	"_mbstate_t"
.LASF262:
	.string	"Xthal_have_xlt_cacheattr"
.LASF33:
	.string	"__tm_sec"
.LASF397:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF203:
	.string	"Xthal_num_writebuffer_entries"
.LASF373:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF364:
	.string	"in6addr_any"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF389:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF220:
	.string	"Xthal_num_ibreak"
.LASF143:
	.string	"BT_STATUS_BUSY"
.LASF41:
	.string	"__tm_isdst"
.LASF136:
	.string	"ESP_LOG_INFO"
.LASF435:
	.string	"esp_bluedroid_deinit"
.LASF413:
	.string	"BTM_PM_STS_HOLD"
.LASF84:
	.string	"_read"
.LASF318:
	.string	"BTC_PID_BLUFI"
.LASF440:
	.string	"esp_log_write"
.LASF384:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF406:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF48:
	.string	"_ind"
.LASF418:
	.string	"BTM_PM_STS_ERROR"
.LASF287:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF385:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF255:
	.string	"Xthal_icache_ways"
.LASF215:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF446:
	.string	"esp_bt_controller_get_status"
.LASF37:
	.string	"__tm_mon"
.LASF337:
	.string	"optarg"
.LASF407:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF248:
	.string	"Xthal_dataram_paddr"
.LASF442:
	.string	"future_new"
.LASF85:
	.string	"_write"
.LASF254:
	.string	"Xthal_dcache_setwidth"
.LASF311:
	.string	"BTC_PID_DEV"
.LASF6:
	.string	"__uint32_t"
.LASF104:
	.string	"_rand_next"
.LASF258:
	.string	"Xthal_dcache_line_lockable"
.LASF327:
	.string	"BTC_PID_NUM"
.LASF47:
	.string	"_atexit"
.LASF19:
	.string	"__wch"
.LASF114:
	.string	"_mbtowc_state"
.LASF329:
	.string	"ready_can_be_called"
.LASF265:
	.string	"Xthal_mmu_asid_bits"
.LASF2:
	.string	"short int"
.LASF393:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF244:
	.string	"Xthal_datarom_vaddr"
.LASF167:
	.string	"Xthal_all_extra_size"
.LASF380:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF427:
	.string	"BTC_MAIN_FUTURE_NUM"
.LASF15:
	.string	"long int"
.LASF146:
	.string	"BT_STATUS_PARM_INVALID"
.LASF192:
	.string	"Xthal_have_loops"
.LASF190:
	.string	"Xthal_have_density"
.LASF246:
	.string	"Xthal_datarom_size"
.LASF398:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF296:
	.string	"SemaphoreHandle_t"
.LASF423:
	.string	"BTC_MAIN_INIT_FUTURE"
.LASF341:
	.string	"optreset"
.LASF79:
	.string	"__sf"
.LASF29:
	.string	"_sign"
.LASF281:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF307:
	.string	"BTC_SIG_API_CALL"
.LASF58:
	.string	"_data"
.LASF147:
	.string	"BT_STATUS_UNHANDLED"
.LASF20:
	.string	"__wchb"
.LASF334:
	.string	"_daylight"
.LASF309:
	.string	"BTC_SIG_NUM"
.LASF38:
	.string	"__tm_year"
.LASF293:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF110:
	.string	"_misc_reent"
.LASF218:
	.string	"Xthal_inttype_mask"
.LASF275:
	.string	"Xthal_itlb_arf_ways"
.LASF347:
	.string	"ip4_addr"
.LASF128:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF74:
	.string	"_localtime_buf"
.LASF4:
	.string	"__uint8_t"
.LASF71:
	.string	"_cvtlen"
.LASF28:
	.string	"_maxwds"
.LASF132:
	.string	"exc_cause_table"
.LASF330:
	.string	"semaphore"
.LASF7:
	.string	"unsigned int"
.LASF196:
	.string	"Xthal_have_clamps"
.LASF363:
	.string	"in6_addr"
.LASF245:
	.string	"Xthal_datarom_paddr"
.LASF80:
	.string	"_misc"
.LASF90:
	.string	"_blksize"
.LASF449:
	.string	"/home/dieter/Development/esp-idf/components/bt/host/bluedroid/api/esp_bt_main.c"
.LASF32:
	.string	"__tm"
.LASF171:
	.string	"Xthal_cp_num"
.LASF141:
	.string	"BT_STATUS_NOT_READY"
.LASF92:
	.string	"_lock"
.LASF370:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF185:
	.string	"Xthal_release_minor"
.LASF25:
	.string	"long unsigned int"
.LASF382:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF320:
	.string	"BTC_PID_ALARM"
.LASF249:
	.string	"Xthal_dataram_size"
.LASF138:
	.string	"ESP_LOG_VERBOSE"
.LASF98:
	.string	"_niobs"
.LASF448:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF178:
	.string	"Xthal_icache_linesize"
.LASF362:
	.string	"u8_addr"
.LASF11:
	.string	"int32_t"
.LASF374:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF310:
	.string	"BTC_PID_MAIN_INIT"
.LASF44:
	.string	"_dso_handle"
.LASF405:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF219:
	.string	"Xthal_timer_interrupt"
.LASF193:
	.string	"Xthal_have_nsa"
.LASF392:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF355:
	.string	"type"
.LASF274:
	.string	"Xthal_itlb_ways"
.LASF72:
	.string	"_cvtbuf"
.LASF399:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF1:
	.string	"unsigned char"
.LASF135:
	.string	"ESP_LOG_WARN"
.LASF227:
	.string	"Xthal_have_interrupts"
.LASF145:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF285:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF387:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF308:
	.string	"BTC_SIG_API_CB"
.LASF383:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF256:
	.string	"Xthal_dcache_ways"
.LASF12:
	.string	"uint32_t"
.LASF381:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF250:
	.string	"Xthal_xlmi_vaddr"
.LASF357:
	.string	"ip_addr_any_type"
.LASF127:
	.string	"esp_err_t"
.LASF400:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF348:
	.string	"addr"
.LASF361:
	.string	"u32_addr"
.LASF328:
	.string	"future"
.LASF51:
	.string	"__sbuf"
.LASF322:
	.string	"BTC_PID_PRF_QUE"
.LASF200:
	.string	"Xthal_have_speculation"
.LASF115:
	.string	"_l64a_buf"
.LASF97:
	.string	"_glue"
.LASF438:
	.string	"esp_bluedroid_enable"
.LASF272:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF452:
	.string	"esp_bluedroid_get_status"
.LASF358:
	.string	"ip_addr_any"
.LASF429:
	.string	"ESP_BT_CONTROLLER_STATUS_INITED"
.LASF224:
	.string	"Xthal_have_prid"
.LASF78:
	.string	"__sglue"
.LASF182:
	.string	"Xthal_dcache_is_writeback"
.LASF210:
	.string	"Xthal_hw_release_internal"
.LASF111:
	.string	"_strtok_last"
.LASF151:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF231:
	.string	"Xthal_tram_enabled"
.LASF68:
	.string	"_locale"
.LASF304:
	.string	"appl_trace_level"
.LASF346:
	.string	"_ctype_"
.LASF43:
	.string	"_fnargs"
.LASF377:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF0:
	.string	"signed char"
.LASF350:
	.string	"ip6_addr"
.LASF99:
	.string	"_iobs"
.LASF175:
	.string	"Xthal_num_aregs_log2"
.LASF401:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF59:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF179:
	.string	"Xthal_dcache_linesize"
.LASF162:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF366:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF342:
	.string	"_sys_errlist"
.LASF420:
	.string	"BTC_MAIN_ACT_DEINIT"
.LASF45:
	.string	"_fntypes"
.LASF82:
	.string	"__sFILE"
.LASF116:
	.string	"_getdate_err"
.LASF53:
	.string	"_size"
.LASF225:
	.string	"Xthal_have_exceptions"
.LASF410:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF113:
	.string	"_wctomb_state"
.LASF251:
	.string	"Xthal_xlmi_paddr"
.LASF356:
	.string	"ip_addr_t"
.LASF16:
	.string	"_off_t"
.LASF298:
	.string	"UINT8"
.LASF89:
	.string	"_nbuf"
.LASF290:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF319:
	.string	"BTC_PID_DM_SEC"
.LASF266:
	.string	"Xthal_mmu_asid_kernel"
.LASF424:
	.string	"BTC_MAIN_DEINIT_FUTURE"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF124:
	.string	"__sf_fake_stderr"
.LASF221:
	.string	"Xthal_num_dbreak"
.LASF94:
	.string	"_flags2"
.LASF168:
	.string	"Xthal_all_extra_align"
.LASF46:
	.string	"_is_cxa"
.LASF306:
	.string	"btc_msg_t"
.LASF432:
	.string	"bd_already_enable"
.LASF101:
	.string	"_seed"
.LASF443:
	.string	"btc_transfer_context"
.LASF252:
	.string	"Xthal_xlmi_size"
.LASF451:
	.string	"__locale_t"
.LASF201:
	.string	"Xthal_have_threadptr"
.LASF86:
	.string	"_seek"
.LASF321:
	.string	"BTC_PID_GAP_BT"
.LASF426:
	.string	"BTC_MAIN_DISABLE_FUTURE"
.LASF417:
	.string	"BTM_PM_STS_PENDING"
.LASF63:
	.string	"_stderr"
.LASF353:
	.string	"ip_addr"
.LASF144:
	.string	"BT_STATUS_DONE"
.LASF122:
	.string	"__sf_fake_stdin"
.LASF170:
	.string	"Xthal_num_coprocessors"
.LASF411:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF211:
	.string	"Xthal_num_intlevels"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
