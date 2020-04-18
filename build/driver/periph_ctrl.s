	.file	"periph_ctrl.c"
	.text
.Ltext0:
	.section	.text.get_rst_en_mask,"ax",@progbits
	.literal_position
	.literal .LC0, 8388608
	.literal .LC1, 262144
	.literal .LC2, 2097152
	.literal .LC3, 8192
	.literal .LC4, 32768
	.literal .LC5, 131072
	.literal .LC6, 1048576
	.literal .LC7, 33554432
	.literal .LC8, 67108864
	.literal .LC9, 4096
	.literal .LC10, 65536
	.literal .LC11, 4194304
	.literal .LC12, 524288
	.literal .LC13, 2048
	.literal .LC14, .L4
	.align	4
	.type	get_rst_en_mask, @function
get_rst_en_mask:
.LVL0:
.LFB22:
	.file 1 "/home/dieter/Development/esp-idf/components/driver/periph_ctrl.c"
	.loc 1 160 1 view -0
	.loc 1 160 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 161 5 is_stmt 1 view .LVU2
	movi.n	a8, 0x22
	bltu	a8, a2, .L2
	l32r	a8, .LC14
	slli	a2, a2, 2
.LVL1:
	.loc 1 161 5 is_stmt 0 view .LVU3
	add.n	a2, a8, a2
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.get_rst_en_mask,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L31
	.word	.L30
	.word	.L9
	.word	.L28
	.word	.L7
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L21
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L16
	.word	.L32
	.word	.L14
	.word	.L13
	.word	.L10
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L9
	.word	.L8
	.word	.L7
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L6
	.word	.L5
	.word	.L3
	.section	.text.get_rst_en_mask
.L31:
	.loc 1 165 20 view .LVU4
	l32r	a2, .LC13
	j	.L1
.L30:
	.loc 1 167 13 is_stmt 1 view .LVU5
	.loc 1 167 20 is_stmt 0 view .LVU6
	movi.n	a2, 4
	j	.L1
.L28:
	.loc 1 172 13 is_stmt 1 view .LVU7
	.loc 1 172 20 is_stmt 0 view .LVU8
	l32r	a2, .LC0
	j	.L1
.L26:
	.loc 1 180 13 is_stmt 1 view .LVU9
	.loc 1 180 20 is_stmt 0 view .LVU10
	l32r	a2, .LC1
	j	.L1
.L25:
	.loc 1 182 13 is_stmt 1 view .LVU11
	.loc 1 182 20 is_stmt 0 view .LVU12
	movi.n	a2, 0x10
	j	.L1
.L24:
	.loc 1 184 13 is_stmt 1 view .LVU13
	.loc 1 184 20 is_stmt 0 view .LVU14
	l32r	a2, .LC2
	j	.L1
.L23:
	.loc 1 186 13 is_stmt 1 view .LVU15
	.loc 1 186 20 is_stmt 0 view .LVU16
	l32r	a2, .LC3
	j	.L1
.L22:
	.loc 1 188 13 is_stmt 1 view .LVU17
	.loc 1 188 20 is_stmt 0 view .LVU18
	l32r	a2, .LC4
	j	.L1
.L21:
	.loc 1 190 13 is_stmt 1 view .LVU19
	.loc 1 190 20 is_stmt 0 view .LVU20
	l32r	a2, .LC5
	j	.L1
.L20:
	.loc 1 192 13 is_stmt 1 view .LVU21
	.loc 1 192 20 is_stmt 0 view .LVU22
	l32r	a2, .LC6
	j	.L1
.L19:
	.loc 1 194 13 is_stmt 1 view .LVU23
	.loc 1 194 20 is_stmt 0 view .LVU24
	l32r	a2, .LC7
	j	.L1
.L18:
	.loc 1 196 13 is_stmt 1 view .LVU25
	.loc 1 196 20 is_stmt 0 view .LVU26
	l32r	a2, .LC8
	j	.L1
.L17:
	.loc 1 198 13 is_stmt 1 view .LVU27
	.loc 1 198 20 is_stmt 0 view .LVU28
	movi	a2, 0x100
	j	.L1
.L16:
	.loc 1 200 13 is_stmt 1 view .LVU29
	.loc 1 200 20 is_stmt 0 view .LVU30
	l32r	a2, .LC9
	j	.L1
.L14:
	.loc 1 202 13 is_stmt 1 view .LVU31
	.loc 1 202 20 is_stmt 0 view .LVU32
	movi	a2, 0x400
	j	.L1
.L13:
	.loc 1 204 13 is_stmt 1 view .LVU33
	.loc 1 204 20 is_stmt 0 view .LVU34
	movi.n	a2, 2
	j	.L1
.L10:
	.loc 1 207 13 is_stmt 1 view .LVU35
	.loc 1 207 20 is_stmt 0 view .LVU36
	movi.n	a2, 0x40
	j	.L1
.L12:
	.loc 1 209 13 is_stmt 1 view .LVU37
	.loc 1 209 20 is_stmt 0 view .LVU38
	l32r	a2, .LC10
	j	.L1
.L11:
	.loc 1 211 13 is_stmt 1 view .LVU39
	.loc 1 211 20 is_stmt 0 view .LVU40
	l32r	a2, .LC11
	j	.L1
.L9:
	.loc 1 229 13 is_stmt 1 view .LVU41
	.loc 1 229 20 is_stmt 0 view .LVU42
	movi.n	a2, 0x20
	j	.L1
.L8:
	.loc 1 231 13 is_stmt 1 view .LVU43
	.loc 1 231 20 is_stmt 0 view .LVU44
	l32r	a2, .LC12
	j	.L1
.L7:
	.loc 1 233 13 is_stmt 1 view .LVU45
	.loc 1 233 20 is_stmt 0 view .LVU46
	movi	a2, 0x80
	j	.L1
.L6:
	.loc 1 236 13 is_stmt 1 view .LVU47
	.loc 1 241 24 is_stmt 0 view .LVU48
	movi.n	a8, 0x19
	movi.n	a2, 1
	j	.L36
.L5:
	.loc 1 244 13 is_stmt 1 view .LVU49
	.loc 1 249 24 is_stmt 0 view .LVU50
	movi.n	a8, 0xa
	movi.n	a2, 2
.L36:
	movnez	a2, a8, a3
	j	.L1
.L3:
	.loc 1 252 13 is_stmt 1 view .LVU51
	.loc 1 257 24 is_stmt 0 view .LVU52
	movi.n	a8, 0x14
	movi.n	a2, 4
	j	.L36
.L2:
	.loc 1 265 13 is_stmt 1 view .LVU53
	.loc 1 265 20 is_stmt 0 view .LVU54
	movi.n	a2, 0
	j	.L1
.L32:
	.loc 1 163 20 view .LVU55
	movi	a2, 0x200
.L1:
	.loc 1 269 1 view .LVU56
	retw.n
.LFE22:
	.size	get_rst_en_mask, .-get_rst_en_mask
	.section	.text.get_rst_en_reg,"ax",@progbits
	.literal_position
	.literal .LC15, 1072693444
	.literal .LC16, 1072693280
	.literal .LC17, 1072693456
	.literal .LC18, -20971520
	.align	4
	.type	get_rst_en_reg, @function
get_rst_en_reg:
.LVL2:
.LFB25:
	.loc 1 308 1 is_stmt 1 view -0
	.loc 1 308 1 is_stmt 0 view .LVU58
	entry	sp, 32
.LCFI1:
	.loc 1 310 5 is_stmt 1 view .LVU59
	.loc 1 310 68 is_stmt 0 view .LVU60
	addi	a9, a2, -32
	.loc 1 311 16 view .LVU61
	l32r	a8, .LC16
	.loc 1 310 8 view .LVU62
	bltui	a9, 3, .L37
.LVL3:
.LBB24:
.LBB25:
	.loc 1 319 9 is_stmt 1 view .LVU63
	.loc 1 319 9 is_stmt 0 view .LVU64
.LBE25:
.LBE24:
	.loc 1 275 5 is_stmt 1 view .LVU65
	movi.n	a9, 0x1f
.LBB27:
.LBB26:
	.loc 1 319 70 is_stmt 0 view .LVU66
	l32r	a8, .LC15
	bltu	a9, a2, .L37
.LVL4:
	.loc 1 319 70 view .LVU67
	l32r	a9, .LC18
	bbc	a9, a2, .L37
	l32r	a8, .LC17
.LVL5:
.L37:
	.loc 1 319 70 view .LVU68
.LBE26:
.LBE27:
	.loc 1 321 1 view .LVU69
	mov.n	a2, a8
.LVL6:
	.loc 1 321 1 view .LVU70
	retw.n
.LFE25:
	.size	get_rst_en_reg, .-get_rst_en_reg
	.section	.text.get_clk_en_reg,"ax",@progbits
	.literal_position
	.literal .LC19, 1072693440
	.literal .LC20, 1072693276
	.literal .LC21, 1072693452
	.literal .LC22, -20971520
	.align	4
	.type	get_clk_en_reg, @function
get_clk_en_reg:
.LVL7:
.LFB24:
	.loc 1 292 1 is_stmt 1 view -0
	.loc 1 292 1 is_stmt 0 view .LVU72
	entry	sp, 32
.LCFI2:
	.loc 1 294 5 is_stmt 1 view .LVU73
	.loc 1 294 68 is_stmt 0 view .LVU74
	addi	a9, a2, -32
	.loc 1 295 16 view .LVU75
	l32r	a8, .LC20
	.loc 1 294 8 view .LVU76
	bltui	a9, 3, .L43
.LVL8:
.LBB34:
.LBB35:
	.loc 1 303 9 is_stmt 1 view .LVU77
	.loc 1 303 9 is_stmt 0 view .LVU78
.LBE35:
.LBE34:
	.loc 1 275 5 is_stmt 1 view .LVU79
	movi.n	a9, 0x1f
.LBB37:
.LBB36:
	.loc 1 303 70 is_stmt 0 view .LVU80
	l32r	a8, .LC19
	bltu	a9, a2, .L43
.LVL9:
	.loc 1 303 70 view .LVU81
	l32r	a9, .LC22
	bbc	a9, a2, .L43
	l32r	a8, .LC21
.LVL10:
.L43:
	.loc 1 303 70 view .LVU82
.LBE36:
.LBE37:
	.loc 1 305 1 view .LVU83
	mov.n	a2, a8
.LVL11:
	.loc 1 305 1 view .LVU84
	retw.n
.LFE24:
	.size	get_clk_en_reg, .-get_clk_en_reg
	.section	.text.periph_module_enable,"ax",@progbits
	.literal_position
	.literal .LC23, periph_spinlock
	.literal .LC24, CSWTCH$2
	.align	4
	.global	periph_module_enable
	.type	periph_module_enable, @function
periph_module_enable:
.LVL12:
.LFB18:
	.loc 1 32 1 is_stmt 1 view -0
	.loc 1 32 1 is_stmt 0 view .LVU86
	entry	sp, 32
.LCFI3:
	.loc 1 33 5 is_stmt 1 view .LVU87
	.loc 1 33 10 view .LVU88
	.loc 1 33 14 is_stmt 0 view .LVU89
	call8	xPortInIsrContext
.LVL13:
	.loc 1 33 37 is_stmt 1 view .LVU90
	l32r	a3, .LC23
	movi.n	a5, 0x22
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL14:
	.loc 1 34 5 view .LVU91
	.loc 1 34 75 is_stmt 0 view .LVU92
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL15:
	mov.n	a4, a10
.LVL16:
.LBB38:
.LBI38:
	.file 2 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 167 67 is_stmt 1 view .LVU93
.LBB39:
	.loc 2 172 5 view .LVU94
	.loc 2 172 12 is_stmt 0 view .LVU95
	call8	esp_dport_access_reg_read
.LVL17:
	.loc 2 172 12 view .LVU96
.LBE39:
.LBE38:
.LBB41:
.LBI41:
	.loc 1 55 17 is_stmt 1 view .LVU97
.LBE41:
	.loc 1 57 5 view .LVU98
.LBB42:
.LBB40:
	.loc 2 172 12 is_stmt 0 view .LVU99
	movi.n	a8, 0
	bltu	a5, a2, .L50
	l32r	a9, .LC24
	slli	a5, a2, 2
	add.n	a9, a9, a5
	l32i.n	a8, a9, 0
.L50:
.LVL18:
	.loc 2 172 12 view .LVU100
.LBE40:
.LBE42:
	.loc 1 34 118 view .LVU101
	or	a8, a8, a10
	.loc 1 34 60 view .LVU102
	memw
	s32i.n	a8, a4, 0
	.loc 1 35 5 is_stmt 1 view .LVU103
	.loc 1 35 75 is_stmt 0 view .LVU104
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL19:
	mov.n	a4, a10
.LVL20:
.LBB43:
.LBI43:
	.loc 2 167 67 is_stmt 1 view .LVU105
.LBB44:
	.loc 2 172 5 view .LVU106
	.loc 2 172 12 is_stmt 0 view .LVU107
	call8	esp_dport_access_reg_read
.LVL21:
	mov.n	a5, a10
.LVL22:
	.loc 2 172 12 view .LVU108
.LBE44:
.LBE43:
	.loc 1 35 122 view .LVU109
	movi.n	a11, 1
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL23:
	.loc 1 35 120 view .LVU110
	movi.n	a8, -1
	xor	a10, a8, a10
	.loc 1 35 118 view .LVU111
	and	a10, a10, a5
	.loc 1 35 60 view .LVU112
	memw
	s32i.n	a10, a4, 0
	.loc 1 36 5 is_stmt 1 view .LVU113
	.loc 1 36 10 view .LVU114
	.loc 1 36 14 is_stmt 0 view .LVU115
	call8	xPortInIsrContext
.LVL24:
	.loc 1 36 37 is_stmt 1 view .LVU116
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL25:
	.loc 1 37 1 is_stmt 0 view .LVU117
	retw.n
.LFE18:
	.size	periph_module_enable, .-periph_module_enable
	.section	.text.periph_module_disable,"ax",@progbits
	.literal_position
	.literal .LC25, periph_spinlock
	.literal .LC26, CSWTCH$2
	.align	4
	.global	periph_module_disable
	.type	periph_module_disable, @function
periph_module_disable:
.LVL26:
.LFB19:
	.loc 1 40 1 is_stmt 1 view -0
	.loc 1 40 1 is_stmt 0 view .LVU119
	entry	sp, 32
.LCFI4:
	.loc 1 41 5 is_stmt 1 view .LVU120
	.loc 1 41 10 view .LVU121
	.loc 1 41 14 is_stmt 0 view .LVU122
	call8	xPortInIsrContext
.LVL27:
	.loc 1 41 37 is_stmt 1 view .LVU123
	l32r	a4, .LC25
.LBB45:
.LBB46:
	.loc 2 172 12 is_stmt 0 view .LVU124
	movi.n	a3, 0
.LBE46:
.LBE45:
	.loc 1 41 37 view .LVU125
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL28:
	.loc 1 42 5 is_stmt 1 view .LVU126
	.loc 1 42 75 is_stmt 0 view .LVU127
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL29:
	mov.n	a5, a10
.LVL30:
.LBB48:
.LBI45:
	.loc 2 167 67 is_stmt 1 view .LVU128
.LBB47:
	.loc 2 172 5 view .LVU129
	.loc 2 172 12 is_stmt 0 view .LVU130
	call8	esp_dport_access_reg_read
.LVL31:
	.loc 2 172 12 view .LVU131
.LBE47:
.LBE48:
.LBB49:
.LBI49:
	.loc 1 55 17 is_stmt 1 view .LVU132
.LBE49:
	.loc 1 57 5 view .LVU133
	movi.n	a8, 0x22
	bltu	a8, a2, .L53
	l32r	a3, .LC26
	slli	a8, a2, 2
	add.n	a3, a3, a8
	l32i.n	a3, a3, 0
.L53:
.LVL32:
	.loc 1 42 120 is_stmt 0 view .LVU134
	movi.n	a8, -1
	xor	a8, a8, a3
	.loc 1 42 118 view .LVU135
	and	a8, a8, a10
	.loc 1 42 60 view .LVU136
	memw
	s32i.n	a8, a5, 0
	.loc 1 43 5 is_stmt 1 view .LVU137
	.loc 1 43 75 is_stmt 0 view .LVU138
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL33:
	mov.n	a5, a10
.LVL34:
.LBB50:
.LBI50:
	.loc 2 167 67 is_stmt 1 view .LVU139
.LBB51:
	.loc 2 172 5 view .LVU140
	.loc 2 172 12 is_stmt 0 view .LVU141
	call8	esp_dport_access_reg_read
.LVL35:
	mov.n	a3, a10
.LVL36:
	.loc 2 172 12 view .LVU142
.LBE51:
.LBE50:
	.loc 1 43 120 view .LVU143
	movi.n	a11, 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL37:
	.loc 1 43 118 view .LVU144
	or	a10, a10, a3
	.loc 1 43 60 view .LVU145
	memw
	s32i.n	a10, a5, 0
	.loc 1 44 5 is_stmt 1 view .LVU146
	.loc 1 44 10 view .LVU147
	.loc 1 44 14 is_stmt 0 view .LVU148
	call8	xPortInIsrContext
.LVL38:
	.loc 1 44 37 is_stmt 1 view .LVU149
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL39:
	.loc 1 45 1 is_stmt 0 view .LVU150
	retw.n
.LFE19:
	.size	periph_module_disable, .-periph_module_disable
	.section	.text.periph_module_reset,"ax",@progbits
	.literal_position
	.literal .LC27, periph_spinlock
	.align	4
	.global	periph_module_reset
	.type	periph_module_reset, @function
periph_module_reset:
.LVL40:
.LFB20:
	.loc 1 48 1 is_stmt 1 view -0
	.loc 1 48 1 is_stmt 0 view .LVU152
	entry	sp, 32
.LCFI5:
	.loc 1 49 5 is_stmt 1 view .LVU153
	.loc 1 49 10 view .LVU154
	.loc 1 49 14 is_stmt 0 view .LVU155
	call8	xPortInIsrContext
.LVL41:
	.loc 1 49 37 is_stmt 1 view .LVU156
	l32r	a5, .LC27
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL42:
	.loc 1 50 5 view .LVU157
	.loc 1 50 75 is_stmt 0 view .LVU158
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL43:
	mov.n	a3, a10
.LVL44:
.LBB52:
.LBI52:
	.loc 2 167 67 is_stmt 1 view .LVU159
.LBB53:
	.loc 2 172 5 view .LVU160
	.loc 2 172 12 is_stmt 0 view .LVU161
	call8	esp_dport_access_reg_read
.LVL45:
.LBE53:
.LBE52:
	.loc 1 50 120 view .LVU162
	movi.n	a11, 0
.LBB55:
.LBB54:
	.loc 2 172 12 view .LVU163
	mov.n	a4, a10
.LVL46:
	.loc 2 172 12 view .LVU164
.LBE54:
.LBE55:
	.loc 1 50 120 view .LVU165
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL47:
	.loc 1 50 118 view .LVU166
	or	a4, a10, a4
	.loc 1 50 120 view .LVU167
	mov.n	a2, a10
.LVL48:
	.loc 1 50 60 view .LVU168
	memw
	s32i.n	a4, a3, 0
	.loc 1 51 5 is_stmt 1 view .LVU169
.LVL49:
.LBB56:
.LBI56:
	.loc 2 167 67 view .LVU170
.LBB57:
	.loc 2 172 5 view .LVU171
	.loc 2 172 12 is_stmt 0 view .LVU172
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL50:
	.loc 2 172 12 view .LVU173
.LBE57:
.LBE56:
	.loc 1 51 120 view .LVU174
	movi.n	a8, -1
	xor	a8, a8, a2
	.loc 1 51 118 view .LVU175
	and	a10, a8, a10
	.loc 1 51 60 view .LVU176
	memw
	s32i.n	a10, a3, 0
	.loc 1 52 5 is_stmt 1 view .LVU177
	.loc 1 52 10 view .LVU178
	.loc 1 52 14 is_stmt 0 view .LVU179
	call8	xPortInIsrContext
.LVL51:
	.loc 1 52 37 is_stmt 1 view .LVU180
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL52:
	.loc 1 53 1 is_stmt 0 view .LVU181
	retw.n
.LFE20:
	.size	periph_module_reset, .-periph_module_reset
	.section	.rodata.CSWTCH$2,"a"
	.align	4
	.type	CSWTCH$2, @object
	.size	CSWTCH$2, 140
CSWTCH$2:
	.word	2048
	.word	4
	.word	32
	.word	8388608
	.word	128
	.word	262144
	.word	16
	.word	2097152
	.word	8192
	.word	32768
	.word	131072
	.word	1048576
	.word	33554432
	.word	67108864
	.word	256
	.word	4096
	.word	512
	.word	1024
	.word	2
	.word	64
	.word	65536
	.word	4194304
	.word	8192
	.word	16
	.word	524288
	.word	16384
	.word	32768
	.word	1030
	.word	198656
	.word	969
	.word	2048
	.word	196608
	.word	1
	.word	2
	.word	4
	.section	.data.periph_spinlock,"aw"
	.align	4
	.type	periph_spinlock, @object
	.size	periph_spinlock, 8
periph_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 9 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 10 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 13 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 14 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 15 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/dport_access.h"
	.file 16 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16ce
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF315
	.byte	0xc
	.4byte	.LASF316
	.4byte	.LASF317
	.4byte	.Ldebug_ranges0+0x78
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
	.uleb128 0x3
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x3f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x4b
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x63
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x4b
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0x89
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x7
	.2byte	0x165
	.byte	0x16
	.4byte	0x63
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0xef
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0xef
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xff
	.uleb128 0xa
	.4byte	0x63
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x123
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x4b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xcd
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0xff
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0x95
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x13d
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x1aa
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x31
	.byte	0x13
	.4byte	0x1aa
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.byte	0x32
	.byte	0xb
	.4byte	0x4b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.4byte	0x4b
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x8
	.byte	0x33
	.byte	0xb
	.4byte	0x1b0
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x150
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x1c0
	.uleb128 0xa
	.4byte	0x63
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.byte	0x8
	.4byte	0x243
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.4byte	0x4b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3a
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3b
	.byte	0x7
	.4byte	0x4b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.4byte	0x4b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3d
	.byte	0x7
	.4byte	0x4b
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x4b
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x4b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x4b
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x4b
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.byte	0x8
	.4byte	0x288
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x288
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x288
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4e
	.byte	0xa
	.4byte	0x144
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x51
	.byte	0xa
	.4byte	0x144
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x13b
	.4byte	0x298
	.uleb128 0xa
	.4byte	0x63
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x8
	.byte	0x55
	.byte	0x8
	.4byte	0x2da
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x56
	.byte	0x12
	.4byte	0x2da
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x57
	.byte	0x6
	.4byte	0x4b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x2e0
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x59
	.byte	0x20
	.4byte	0x2f7
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x298
	.uleb128 0x9
	.4byte	0x2f0
	.4byte	0x2f0
	.uleb128 0xa
	.4byte	0x63
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x4
	.4byte	0x243
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x8
	.byte	0x75
	.byte	0x8
	.4byte	0x325
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x76
	.byte	0x11
	.4byte	0x325
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x77
	.byte	0x6
	.4byte	0x4b
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x20
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x39e
	.uleb128 0xf
	.string	"_p"
	.byte	0x8
	.byte	0x9a
	.byte	0x12
	.4byte	0x325
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x8
	.byte	0x9b
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x8
	.byte	0x9c
	.byte	0x7
	.4byte	0x4b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x9d
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x2fd
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0xa0
	.byte	0x7
	.4byte	0x4b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa2
	.byte	0x12
	.4byte	0x502
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x32b
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x8
	.2byte	0x174
	.byte	0x8
	.4byte	0x502
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x178
	.byte	0x7
	.4byte	0x4b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x17d
	.byte	0xb
	.4byte	0x75a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x17d
	.byte	0x14
	.4byte	0x75a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x75a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4b
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x181
	.byte	0x9
	.4byte	0x669
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x183
	.byte	0x7
	.4byte	0x4b
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	0x4b
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x186
	.byte	0x16
	.4byte	0x8c2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x8
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4b
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x190
	.byte	0x9
	.4byte	0x669
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x192
	.byte	0x13
	.4byte	0x8df
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x193
	.byte	0x10
	.4byte	0x8e5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x194
	.byte	0x9
	.4byte	0x669
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x197
	.byte	0xb
	.4byte	0x8f6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2da
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x19c
	.byte	0x12
	.4byte	0x298
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x19f
	.byte	0x10
	.4byte	0x71b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x75a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x902
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x669
	.byte	0xec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x68
	.byte	0x8
	.byte	0xb5
	.byte	0x8
	.4byte	0x64b
	.uleb128 0xf
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x325
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.byte	0x7
	.4byte	0x4b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0xb9
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.byte	0x11
	.4byte	0x2fd
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x4b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0xbf
	.byte	0x12
	.4byte	0x502
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x8
	.byte	0xc3
	.byte	0xa
	.4byte	0x13b
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x67b
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x6aa
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x8
	.byte	0xca
	.byte	0xd
	.4byte	0x6ce
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e8
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.byte	0x11
	.4byte	0x2fd
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.byte	0x12
	.4byte	0x325
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.byte	0x7
	.4byte	0x4b
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x6ee
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x6fe
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x2fd
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.byte	0xda
	.byte	0x7
	.4byte	0x4b
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x8
	.byte	0xdb
	.byte	0xa
	.4byte	0xa8
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x8
	.byte	0xe2
	.byte	0xc
	.4byte	0x12f
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.byte	0xe4
	.byte	0xe
	.4byte	0x123
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x8
	.byte	0xe5
	.byte	0x7
	.4byte	0x4b
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4b
	.4byte	0x669
	.uleb128 0x18
	.4byte	0x502
	.uleb128 0x18
	.4byte	0x13b
	.uleb128 0x18
	.4byte	0x669
	.uleb128 0x18
	.4byte	0x4b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x66f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.uleb128 0x3
	.4byte	0x66f
	.uleb128 0x10
	.byte	0x4
	.4byte	0x64b
	.uleb128 0x17
	.4byte	0x4b
	.4byte	0x69f
	.uleb128 0x18
	.4byte	0x502
	.uleb128 0x18
	.4byte	0x13b
	.uleb128 0x18
	.4byte	0x69f
	.uleb128 0x18
	.4byte	0x4b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x676
	.uleb128 0x3
	.4byte	0x69f
	.uleb128 0x10
	.byte	0x4
	.4byte	0x681
	.uleb128 0x17
	.4byte	0xb4
	.4byte	0x6ce
	.uleb128 0x18
	.4byte	0x502
	.uleb128 0x18
	.4byte	0x13b
	.uleb128 0x18
	.4byte	0xb4
	.uleb128 0x18
	.4byte	0x4b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6b0
	.uleb128 0x17
	.4byte	0x4b
	.4byte	0x6e8
	.uleb128 0x18
	.4byte	0x502
	.uleb128 0x18
	.4byte	0x13b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6d4
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x6fe
	.uleb128 0xa
	.4byte	0x63
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x70e
	.uleb128 0xa
	.4byte	0x63
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x11f
	.byte	0x18
	.4byte	0x508
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.byte	0x8
	.4byte	0x754
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x125
	.byte	0x11
	.4byte	0x754
	.byte	0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x127
	.byte	0xb
	.4byte	0x75a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x71b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x70e
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x18
	.byte	0x8
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7a7
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x140
	.byte	0x12
	.4byte	0x7a7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x141
	.byte	0x12
	.4byte	0x7a7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x145
	.byte	0x24
	.4byte	0x76
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x7b7
	.uleb128 0xa
	.4byte	0x63
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0x7fe
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1aa
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1aa
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7fe
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1aa
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x50
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0x8ad
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x165
	.byte	0x9
	.4byte	0x669
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x166
	.byte	0xe
	.4byte	0x123
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x167
	.byte	0xe
	.4byte	0x123
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x168
	.byte	0xe
	.4byte	0x123
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x169
	.byte	0x8
	.4byte	0x8ad
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4b
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x16b
	.byte	0xe
	.4byte	0x123
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x16c
	.byte	0xe
	.4byte	0x123
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x16d
	.byte	0xe
	.4byte	0x123
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x16e
	.byte	0xe
	.4byte	0x123
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x16f
	.byte	0xe
	.4byte	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x66f
	.4byte	0x8bd
	.uleb128 0xa
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF318
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8bd
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7b7
	.uleb128 0x1a
	.4byte	0x8d9
	.uleb128 0x18
	.4byte	0x502
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8ce
	.uleb128 0x10
	.byte	0x4
	.4byte	0x760
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0x1a
	.4byte	0x8f6
	.uleb128 0x18
	.4byte	0x4b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8fc
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8eb
	.uleb128 0x10
	.byte	0x4
	.4byte	0x804
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x39e
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x39e
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x39e
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x30a
	.byte	0x18
	.4byte	0x502
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x9
	.byte	0x94
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x9
	.4byte	0x13b
	.4byte	0x958
	.uleb128 0xa
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x9
	.byte	0xb4
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x9
	.byte	0xb6
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x9
	.byte	0xb7
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x9
	.byte	0xbd
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x9
	.byte	0xbe
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x9
	.4byte	0x6a
	.4byte	0x9b0
	.uleb128 0xa
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9a0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x9
	.byte	0xbf
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x9
	.byte	0xc0
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x9
	.byte	0xc1
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x9
	.byte	0xc2
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x9
	.4byte	0x6a5
	.4byte	0x9f5
	.uleb128 0xa
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9e5
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x9
	.byte	0xc4
	.byte	0x1b
	.4byte	0x9f5
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x9
	.byte	0xd1
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x9
	.byte	0xd4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x9
	.byte	0xd6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x9
	.byte	0xda
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x9
	.byte	0xed
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x9
	.byte	0xee
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x9
	.byte	0xf6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x9
	.byte	0xf7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x9
	.byte	0xf9
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x9
	.byte	0xfa
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x9
	.byte	0xfd
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x9
	.byte	0xfe
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x100
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x160
	.byte	0x12
	.4byte	0x52
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x193
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x194
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6a5
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6a5
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x198
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x199
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6a5
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6a5
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x9
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x9
	.4byte	0x6a
	.4byte	0xc46
	.uleb128 0xa
	.4byte	0x63
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc36
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x9
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc46
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x9
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc46
	.uleb128 0x9
	.4byte	0x33
	.4byte	0xc75
	.uleb128 0xa
	.4byte	0x63
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xc65
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xc75
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xc75
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x9
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0xcb1
	.uleb128 0xa
	.4byte	0x63
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xca1
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x52
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x52
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x9
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x9
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x9
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x9
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x30b
	.byte	0x11
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x315
	.byte	0x11
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x318
	.byte	0x11
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x325
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x326
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x327
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x328
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x329
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x9
	.4byte	0x6a
	.4byte	0xdb8
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0xdad
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x330
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x331
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x332
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x333
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x9
	.2byte	0x334
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x9
	.2byte	0x335
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x9
	.2byte	0x336
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x9
	.2byte	0x337
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x338
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x339
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0x9
	.2byte	0x343
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0x9
	.2byte	0x344
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0x9
	.2byte	0x346
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0x9
	.2byte	0x347
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x9
	.2byte	0x349
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x9
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x9
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x9
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x9
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x9
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x9
	.2byte	0x390
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x9
	.2byte	0x392
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x9
	.2byte	0x393
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x9
	.2byte	0x394
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x9
	.2byte	0x395
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x9
	.2byte	0x396
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x9
	.2byte	0x397
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x9
	.2byte	0x398
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x399
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x9
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0x9
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0x9
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0x9
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x9
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0xa
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0xa
	.2byte	0x500
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0xa
	.2byte	0x503
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0xa
	.2byte	0x504
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0xa
	.2byte	0x507
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0xa
	.2byte	0x508
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0xa
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0xa
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x510
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x513
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x514
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x517
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x518
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF259
	.byte	0xb
	.byte	0x67
	.byte	0xe
	.4byte	0x669
	.uleb128 0x9
	.4byte	0x6a5
	.4byte	0x10be
	.uleb128 0xa
	.4byte	0x63
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	0x10ae
	.uleb128 0x1c
	.4byte	.LASF260
	.byte	0xc
	.byte	0x8e
	.byte	0x1a
	.4byte	0x10be
	.uleb128 0xb
	.byte	0x8
	.byte	0xd
	.byte	0x8a
	.byte	0x9
	.4byte	0x10f3
	.uleb128 0xc
	.4byte	.LASF261
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.4byte	0x7d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF262
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.4byte	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF263
	.byte	0xd
	.byte	0xa0
	.byte	0x3
	.4byte	0x10cf
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.4byte	0x63
	.byte	0xe
	.byte	0x16
	.byte	0xe
	.4byte	0x11e0
	.uleb128 0x1f
	.4byte	.LASF264
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF265
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF266
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF267
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF268
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF270
	.byte	0x6
	.uleb128 0x1f
	.4byte	.LASF271
	.byte	0x7
	.uleb128 0x1f
	.4byte	.LASF272
	.byte	0x8
	.uleb128 0x1f
	.4byte	.LASF273
	.byte	0x9
	.uleb128 0x1f
	.4byte	.LASF274
	.byte	0xa
	.uleb128 0x1f
	.4byte	.LASF275
	.byte	0xb
	.uleb128 0x1f
	.4byte	.LASF276
	.byte	0xc
	.uleb128 0x1f
	.4byte	.LASF277
	.byte	0xd
	.uleb128 0x1f
	.4byte	.LASF278
	.byte	0xe
	.uleb128 0x1f
	.4byte	.LASF279
	.byte	0xf
	.uleb128 0x1f
	.4byte	.LASF280
	.byte	0x10
	.uleb128 0x1f
	.4byte	.LASF281
	.byte	0x11
	.uleb128 0x1f
	.4byte	.LASF282
	.byte	0x12
	.uleb128 0x1f
	.4byte	.LASF283
	.byte	0x13
	.uleb128 0x1f
	.4byte	.LASF284
	.byte	0x14
	.uleb128 0x1f
	.4byte	.LASF285
	.byte	0x15
	.uleb128 0x1f
	.4byte	.LASF286
	.byte	0x16
	.uleb128 0x1f
	.4byte	.LASF287
	.byte	0x17
	.uleb128 0x1f
	.4byte	.LASF288
	.byte	0x18
	.uleb128 0x1f
	.4byte	.LASF289
	.byte	0x19
	.uleb128 0x1f
	.4byte	.LASF290
	.byte	0x1a
	.uleb128 0x1f
	.4byte	.LASF291
	.byte	0x1b
	.uleb128 0x1f
	.4byte	.LASF292
	.byte	0x1c
	.uleb128 0x1f
	.4byte	.LASF293
	.byte	0x1d
	.uleb128 0x1f
	.4byte	.LASF294
	.byte	0x1e
	.uleb128 0x1f
	.4byte	.LASF295
	.byte	0x1f
	.uleb128 0x1f
	.4byte	.LASF296
	.byte	0x20
	.uleb128 0x1f
	.4byte	.LASF297
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF298
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.4byte	.LASF299
	.byte	0xe
	.byte	0x3a
	.byte	0x3
	.4byte	0x10ff
	.uleb128 0x20
	.4byte	.LASF319
	.byte	0x1
	.byte	0x17
	.byte	0x15
	.4byte	0x10f3
	.uleb128 0x5
	.byte	0x3
	.4byte	periph_spinlock
	.uleb128 0x21
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x133
	.byte	0x11
	.4byte	0x7d
	.byte	0x1
	.4byte	0x121e
	.uleb128 0x22
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x133
	.byte	0x30
	.4byte	0x11e0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x123
	.byte	0x11
	.4byte	0x7d
	.byte	0x1
	.4byte	0x123e
	.uleb128 0x22
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x123
	.byte	0x30
	.4byte	0x11e0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x10f
	.byte	0xc
	.4byte	0x125e
	.byte	0x1
	.4byte	0x125e
	.uleb128 0x22
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x10f
	.byte	0x33
	.4byte	0x11e0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF304
	.uleb128 0x23
	.4byte	.LASF320
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0x7d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a2
	.uleb128 0x24
	.4byte	.LASF302
	.byte	0x1
	.byte	0x9f
	.byte	0x31
	.4byte	0x11e0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x25
	.4byte	.LASF308
	.byte	0x1
	.byte	0x9f
	.byte	0x3d
	.4byte	0x125e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x26
	.4byte	.LASF305
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x7d
	.byte	0x1
	.4byte	0x12c0
	.uleb128 0x27
	.4byte	.LASF302
	.byte	0x1
	.byte	0x37
	.byte	0x31
	.4byte	0x11e0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF306
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b8
	.uleb128 0x24
	.4byte	.LASF302
	.byte	0x1
	.byte	0x2f
	.byte	0x2a
	.4byte	0x11e0
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x29
	.4byte	0x1612
	.4byte	.LBI52
	.byte	.LVU159
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x32
	.byte	0x4b
	.4byte	0x131d
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2b
	.4byte	.LVL45
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x1612
	.4byte	.LBI56
	.byte	.LVU170
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x33
	.byte	0x4b
	.4byte	0x1354
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2b
	.4byte	.LVL50
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL41
	.4byte	0x16ac
	.uleb128 0x2f
	.4byte	.LVL42
	.4byte	0x16b8
	.4byte	0x1371
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL43
	.4byte	0x11fe
	.4byte	0x1385
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL47
	.4byte	0x1265
	.4byte	0x139e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL51
	.4byte	0x16ac
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0x16c5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF307
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e5
	.uleb128 0x25
	.4byte	.LASF302
	.byte	0x1
	.byte	0x27
	.byte	0x2c
	.4byte	0x11e0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x1612
	.4byte	.LBI45
	.byte	.LVU128
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x2a
	.byte	0x4b
	.4byte	0x140f
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2b
	.4byte	.LVL31
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x12a2
	.4byte	.LBI49
	.byte	.LVU132
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0x2a
	.byte	0x7a
	.4byte	0x1436
	.uleb128 0x2a
	.4byte	0x12b3
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x2d
	.4byte	0x1612
	.4byte	.LBI50
	.byte	.LVU139
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x2b
	.byte	0x4b
	.4byte	0x146d
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2b
	.4byte	.LVL35
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL27
	.4byte	0x16ac
	.uleb128 0x2f
	.4byte	.LVL28
	.4byte	0x16b8
	.4byte	0x148a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL29
	.4byte	0x121e
	.4byte	0x149e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL33
	.4byte	0x11fe
	.4byte	0x14b2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL37
	.4byte	0x1265
	.4byte	0x14cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL38
	.4byte	0x16ac
	.uleb128 0x2b
	.4byte	.LVL39
	.4byte	0x16c5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF309
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1612
	.uleb128 0x25
	.4byte	.LASF302
	.byte	0x1
	.byte	0x1f
	.byte	0x2b
	.4byte	0x11e0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x1612
	.4byte	.LBI38
	.byte	.LVU93
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x22
	.byte	0x4b
	.4byte	0x153c
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x12a2
	.4byte	.LBI41
	.byte	.LVU97
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x22
	.byte	0x78
	.4byte	0x1563
	.uleb128 0x2a
	.4byte	0x12b3
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x2d
	.4byte	0x1612
	.4byte	.LBI43
	.byte	.LVU105
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0x23
	.byte	0x4b
	.4byte	0x159a
	.uleb128 0x2a
	.4byte	0x1623
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x16a0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL13
	.4byte	0x16ac
	.uleb128 0x2f
	.4byte	.LVL14
	.4byte	0x16b8
	.4byte	0x15b7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL15
	.4byte	0x121e
	.4byte	0x15cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL19
	.4byte	0x11fe
	.4byte	0x15df
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL23
	.4byte	0x1265
	.4byte	0x15f8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL24
	.4byte	0x16ac
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0x16c5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF310
	.byte	0x2
	.byte	0xa7
	.byte	0x43
	.4byte	0x7d
	.byte	0x3
	.4byte	0x1630
	.uleb128 0x30
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.byte	0x60
	.4byte	0x7d
	.byte	0
	.uleb128 0x31
	.4byte	0x11fe
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1668
	.uleb128 0x2a
	.4byte	0x1210
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x32
	.4byte	0x11fe
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.4byte	0x1210
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x121e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a0
	.uleb128 0x2a
	.4byte	0x1230
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x32
	.4byte	0x121e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.4byte	0x1230
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0xf
	.byte	0x1e
	.byte	0xa
	.uleb128 0x33
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x10
	.byte	0xba
	.byte	0xc
	.uleb128 0x34
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x100
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0xd
	.byte	0xff
	.byte	0x6
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU159
	.uleb128 .LVU164
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU170
	.uleb128 .LVU173
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU131
	.uleb128 .LVU134
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU139
	.uleb128 .LVU142
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU93
	.uleb128 .LVU96
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU96
	.uleb128 .LVU100
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU105
	.uleb128 .LVU108
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU63
	.uleb128 .LVU68
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU77
	.uleb128 .LVU82
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF173:
	.string	"Xthal_hw_release_name"
.LASF169:
	.string	"Xthal_hw_configid0"
.LASF170:
	.string	"Xthal_hw_configid1"
.LASF234:
	.string	"Xthal_mmu_ca_bits"
.LASF273:
	.string	"PERIPH_TIMG1_MODULE"
.LASF76:
	.string	"_misc"
.LASF186:
	.string	"Xthal_have_ccount"
.LASF152:
	.string	"Xthal_memory_order"
.LASF9:
	.string	"_lock_t"
.LASF248:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF38:
	.string	"_on_exit_args"
.LASF268:
	.string	"PERIPH_I2C0_MODULE"
.LASF81:
	.string	"_write"
.LASF201:
	.string	"Xthal_num_xlmi"
.LASF281:
	.string	"PERIPH_PCNT_MODULE"
.LASF109:
	.string	"_wctomb_state"
.LASF204:
	.string	"Xthal_instrom_size"
.LASF241:
	.string	"Xthal_dtlb_ways"
.LASF69:
	.string	"_r48"
.LASF291:
	.string	"PERIPH_WIFI_MODULE"
.LASF141:
	.string	"Xthal_dcache_linewidth"
.LASF133:
	.string	"Xthal_cp_names"
.LASF147:
	.string	"Xthal_debug_configured"
.LASF77:
	.string	"_signal_buf"
.LASF4:
	.string	"unsigned int"
.LASF136:
	.string	"Xthal_cp_max"
.LASF176:
	.string	"Xthal_num_interrupts"
.LASF240:
	.string	"Xthal_dtlb_way_bits"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF231:
	.string	"Xthal_mmu_rings"
.LASF151:
	.string	"Xthal_release_internal"
.LASF257:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF56:
	.string	"_errno"
.LASF288:
	.string	"PERIPH_CAN_MODULE"
.LASF295:
	.string	"PERIPH_BT_LC_MODULE"
.LASF129:
	.string	"Xthal_cpregs_size"
.LASF292:
	.string	"PERIPH_BT_MODULE"
.LASF223:
	.string	"Xthal_have_spanning_way"
.LASF298:
	.string	"PERIPH_RSA_MODULE"
.LASF181:
	.string	"Xthal_inttype"
.LASF123:
	.string	"Xthal_cpregs_save_fn"
.LASF119:
	.string	"__sf_fake_stdout"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF192:
	.string	"Xthal_have_highlevel_interrupts"
.LASF175:
	.string	"Xthal_num_intlevels"
.LASF80:
	.string	"_read"
.LASF294:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF113:
	.string	"_mbrlen_state"
.LASF225:
	.string	"Xthal_have_mimic_cacheattr"
.LASF58:
	.string	"_stdout"
.LASF130:
	.string	"Xthal_cpregs_align"
.LASF13:
	.string	"_fpos_t"
.LASF235:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF45:
	.string	"_fns"
.LASF221:
	.string	"Xthal_icache_line_lockable"
.LASF79:
	.string	"_cookie"
.LASF317:
	.string	"/home/dieter/Development/ProjektEi/build/driver"
.LASF267:
	.string	"PERIPH_UART2_MODULE"
.LASF27:
	.string	"_Bigint"
.LASF263:
	.string	"portMUX_TYPE"
.LASF282:
	.string	"PERIPH_SPI_MODULE"
.LASF35:
	.string	"__tm_wday"
.LASF276:
	.string	"PERIPH_PWM2_MODULE"
.LASF125:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF102:
	.string	"_result"
.LASF297:
	.string	"PERIPH_SHA_MODULE"
.LASF305:
	.string	"get_clk_en_mask"
.LASF8:
	.string	"uint32_t"
.LASF252:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF31:
	.string	"__tm_hour"
.LASF178:
	.string	"Xthal_intlevel_mask"
.LASF228:
	.string	"Xthal_have_tlbs"
.LASF140:
	.string	"Xthal_icache_linewidth"
.LASF171:
	.string	"Xthal_hw_release_major"
.LASF17:
	.string	"__count"
.LASF138:
	.string	"Xthal_num_aregs"
.LASF30:
	.string	"__tm_min"
.LASF262:
	.string	"count"
.LASF75:
	.string	"__sf"
.LASF205:
	.string	"Xthal_instram_vaddr"
.LASF96:
	.string	"_rand48"
.LASF103:
	.string	"_result_k"
.LASF264:
	.string	"PERIPH_LEDC_MODULE"
.LASF6:
	.string	"long long unsigned int"
.LASF299:
	.string	"periph_module_t"
.LASF71:
	.string	"_asctime_buf"
.LASF266:
	.string	"PERIPH_UART1_MODULE"
.LASF187:
	.string	"Xthal_num_ccompare"
.LASF78:
	.string	"__sFILE"
.LASF26:
	.string	"_wds"
.LASF233:
	.string	"Xthal_mmu_sr_bits"
.LASF92:
	.string	"__FILE"
.LASF202:
	.string	"Xthal_instrom_vaddr"
.LASF247:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF87:
	.string	"_offset"
.LASF84:
	.string	"_ubuf"
.LASF308:
	.string	"enable"
.LASF261:
	.string	"owner"
.LASF256:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF159:
	.string	"Xthal_have_sext"
.LASF158:
	.string	"Xthal_have_minmax"
.LASF199:
	.string	"Xthal_num_datarom"
.LASF314:
	.string	"vTaskExitCritical"
.LASF61:
	.string	"_emergency"
.LASF155:
	.string	"Xthal_have_booleans"
.LASF242:
	.string	"Xthal_dtlb_arf_ways"
.LASF197:
	.string	"Xthal_num_instrom"
.LASF161:
	.string	"Xthal_have_mac16"
.LASF313:
	.string	"vTaskEnterCritical"
.LASF196:
	.string	"Xthal_tram_sync"
.LASF280:
	.string	"PERIPH_RMT_MODULE"
.LASF244:
	.string	"Xthal_cp_mask_FPU"
.LASF206:
	.string	"Xthal_instram_paddr"
.LASF29:
	.string	"__tm_sec"
.LASF145:
	.string	"Xthal_dcache_size"
.LASF259:
	.string	"suboptarg"
.LASF36:
	.string	"__tm_yday"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF253:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF23:
	.string	"_next"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF237:
	.string	"Xthal_itlb_way_bits"
.LASF203:
	.string	"Xthal_instrom_paddr"
.LASF217:
	.string	"Xthal_icache_setwidth"
.LASF271:
	.string	"PERIPH_I2S1_MODULE"
.LASF163:
	.string	"Xthal_have_fp"
.LASF200:
	.string	"Xthal_num_dataram"
.LASF198:
	.string	"Xthal_num_instram"
.LASF18:
	.string	"__value"
.LASF153:
	.string	"Xthal_have_windowed"
.LASF104:
	.string	"_p5s"
.LASF190:
	.string	"Xthal_xea_version"
.LASF224:
	.string	"Xthal_have_identity_map"
.LASF289:
	.string	"PERIPH_EMAC_MODULE"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF108:
	.string	"_mblen_state"
.LASF172:
	.string	"Xthal_hw_release_minor"
.LASF311:
	.string	"esp_dport_access_reg_read"
.LASF91:
	.string	"char"
.LASF32:
	.string	"__tm_mday"
.LASF162:
	.string	"Xthal_have_mul16"
.LASF72:
	.string	"_sig_func"
.LASF114:
	.string	"_mbrtowc_state"
.LASF265:
	.string	"PERIPH_UART0_MODULE"
.LASF180:
	.string	"Xthal_intlevel"
.LASF193:
	.string	"Xthal_have_nmi"
.LASF274:
	.string	"PERIPH_PWM0_MODULE"
.LASF20:
	.string	"_flock_t"
.LASF278:
	.string	"PERIPH_UHCI0_MODULE"
.LASF194:
	.string	"Xthal_tram_pending"
.LASF15:
	.string	"__wch"
.LASF95:
	.string	"_iobs"
.LASF150:
	.string	"Xthal_release_name"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF127:
	.string	"Xthal_extra_size"
.LASF83:
	.string	"_close"
.LASF62:
	.string	"__sdidinit"
.LASF50:
	.string	"__sFILE_fake"
.LASF124:
	.string	"Xthal_cpregs_restore_fn"
.LASF177:
	.string	"Xthal_excm_level"
.LASF57:
	.string	"_stdin"
.LASF66:
	.string	"_gamma_signgam"
.LASF301:
	.string	"get_clk_en_reg"
.LASF5:
	.string	"long long int"
.LASF227:
	.string	"Xthal_have_cacheattr"
.LASF128:
	.string	"Xthal_extra_align"
.LASF48:
	.string	"_base"
.LASF168:
	.string	"Xthal_build_unique_id"
.LASF105:
	.string	"_freelist"
.LASF307:
	.string	"periph_module_disable"
.LASF98:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF207:
	.string	"Xthal_instram_size"
.LASF306:
	.string	"periph_module_reset"
.LASF116:
	.string	"_wcrtomb_state"
.LASF144:
	.string	"Xthal_icache_size"
.LASF122:
	.string	"Xthal_rev_no"
.LASF52:
	.string	"_file"
.LASF260:
	.string	"exc_cause_table"
.LASF211:
	.string	"Xthal_dataram_vaddr"
.LASF255:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF232:
	.string	"Xthal_mmu_ring_bits"
.LASF284:
	.string	"PERIPH_VSPI_MODULE"
.LASF287:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF65:
	.string	"__cleanup"
.LASF19:
	.string	"_mbstate_t"
.LASF226:
	.string	"Xthal_have_xlt_cacheattr"
.LASF101:
	.string	"_mprec"
.LASF167:
	.string	"Xthal_num_writebuffer_entries"
.LASF277:
	.string	"PERIPH_PWM3_MODULE"
.LASF184:
	.string	"Xthal_num_ibreak"
.LASF126:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF37:
	.string	"__tm_isdst"
.LASF216:
	.string	"Xthal_xlmi_size"
.LASF148:
	.string	"Xthal_release_major"
.LASF272:
	.string	"PERIPH_TIMG0_MODULE"
.LASF251:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF319:
	.string	"periph_spinlock"
.LASF250:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF304:
	.string	"_Bool"
.LASF219:
	.string	"Xthal_icache_ways"
.LASF302:
	.string	"periph"
.LASF179:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF33:
	.string	"__tm_mon"
.LASF243:
	.string	"Xthal_cp_id_FPU"
.LASF269:
	.string	"PERIPH_I2C1_MODULE"
.LASF212:
	.string	"Xthal_dataram_paddr"
.LASF270:
	.string	"PERIPH_I2S0_MODULE"
.LASF316:
	.string	"/home/dieter/Development/esp-idf/components/driver/periph_ctrl.c"
.LASF73:
	.string	"_atexit0"
.LASF218:
	.string	"Xthal_dcache_setwidth"
.LASF222:
	.string	"Xthal_dcache_line_lockable"
.LASF43:
	.string	"_atexit"
.LASF89:
	.string	"_mbstate"
.LASF303:
	.string	"is_wifi_clk_peripheral"
.LASF154:
	.string	"Xthal_have_density"
.LASF229:
	.string	"Xthal_mmu_asid_bits"
.LASF2:
	.string	"short int"
.LASF208:
	.string	"Xthal_datarom_vaddr"
.LASF296:
	.string	"PERIPH_AES_MODULE"
.LASF131:
	.string	"Xthal_all_extra_size"
.LASF11:
	.string	"long int"
.LASF156:
	.string	"Xthal_have_loops"
.LASF143:
	.string	"Xthal_dcache_linesize"
.LASF210:
	.string	"Xthal_datarom_size"
.LASF25:
	.string	"_sign"
.LASF245:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF309:
	.string	"periph_module_enable"
.LASF54:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF285:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF34:
	.string	"__tm_year"
.LASF106:
	.string	"_misc_reent"
.LASF182:
	.string	"Xthal_inttype_mask"
.LASF239:
	.string	"Xthal_itlb_arf_ways"
.LASF70:
	.string	"_localtime_buf"
.LASF67:
	.string	"_cvtlen"
.LASF24:
	.string	"_maxwds"
.LASF111:
	.string	"_l64a_buf"
.LASF160:
	.string	"Xthal_have_clamps"
.LASF209:
	.string	"Xthal_datarom_paddr"
.LASF86:
	.string	"_blksize"
.LASF28:
	.string	"__tm"
.LASF135:
	.string	"Xthal_cp_num"
.LASF139:
	.string	"Xthal_num_aregs_log2"
.LASF88:
	.string	"_lock"
.LASF146:
	.string	"Xthal_dcache_is_writeback"
.LASF149:
	.string	"Xthal_release_minor"
.LASF21:
	.string	"long unsigned int"
.LASF283:
	.string	"PERIPH_HSPI_MODULE"
.LASF213:
	.string	"Xthal_dataram_size"
.LASF94:
	.string	"_niobs"
.LASF315:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF142:
	.string	"Xthal_icache_linesize"
.LASF40:
	.string	"_dso_handle"
.LASF275:
	.string	"PERIPH_PWM1_MODULE"
.LASF183:
	.string	"Xthal_timer_interrupt"
.LASF157:
	.string	"Xthal_have_nsa"
.LASF279:
	.string	"PERIPH_UHCI1_MODULE"
.LASF238:
	.string	"Xthal_itlb_ways"
.LASF68:
	.string	"_cvtbuf"
.LASF320:
	.string	"get_rst_en_mask"
.LASF1:
	.string	"unsigned char"
.LASF293:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF7:
	.string	"__uint32_t"
.LASF249:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF112:
	.string	"_getdate_err"
.LASF220:
	.string	"Xthal_dcache_ways"
.LASF258:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF214:
	.string	"Xthal_xlmi_vaddr"
.LASF99:
	.string	"_add"
.LASF191:
	.string	"Xthal_have_interrupts"
.LASF47:
	.string	"__sbuf"
.LASF310:
	.string	"DPORT_READ_PERI_REG"
.LASF164:
	.string	"Xthal_have_speculation"
.LASF93:
	.string	"_glue"
.LASF236:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF188:
	.string	"Xthal_have_prid"
.LASF74:
	.string	"__sglue"
.LASF174:
	.string	"Xthal_hw_release_internal"
.LASF107:
	.string	"_strtok_last"
.LASF110:
	.string	"_mbtowc_state"
.LASF286:
	.string	"PERIPH_SDMMC_MODULE"
.LASF195:
	.string	"Xthal_tram_enabled"
.LASF64:
	.string	"_locale"
.LASF39:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF55:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF246:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF41:
	.string	"_fntypes"
.LASF290:
	.string	"PERIPH_RNG_MODULE"
.LASF49:
	.string	"_size"
.LASF189:
	.string	"Xthal_have_exceptions"
.LASF215:
	.string	"Xthal_xlmi_paddr"
.LASF12:
	.string	"_off_t"
.LASF85:
	.string	"_nbuf"
.LASF254:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF230:
	.string	"Xthal_mmu_asid_kernel"
.LASF166:
	.string	"Xthal_have_pif"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF120:
	.string	"__sf_fake_stderr"
.LASF185:
	.string	"Xthal_num_dbreak"
.LASF90:
	.string	"_flags2"
.LASF132:
	.string	"Xthal_all_extra_align"
.LASF42:
	.string	"_is_cxa"
.LASF300:
	.string	"get_rst_en_reg"
.LASF97:
	.string	"_seed"
.LASF100:
	.string	"_rand_next"
.LASF318:
	.string	"__locale_t"
.LASF165:
	.string	"Xthal_have_threadptr"
.LASF82:
	.string	"_seek"
.LASF137:
	.string	"Xthal_cp_mask"
.LASF312:
	.string	"xPortInIsrContext"
.LASF59:
	.string	"_stderr"
.LASF14:
	.string	"wint_t"
.LASF118:
	.string	"__sf_fake_stdin"
.LASF134:
	.string	"Xthal_num_coprocessors"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
