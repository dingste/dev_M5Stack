	.file	"jsmn.c"
	.text
.Ltext0:
	.section	.text.jsmn_parse,"ax",@progbits
	.align	4
	.global	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LVL0:
.LFB4:
	.file 1 "/home/dieter/Development/esp-idf/components/jsmn/src/jsmn.c"
	.loc 1 182 47 view -0
	.loc 1 182 47 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 183 2 is_stmt 1 view .LVU2
	.loc 1 184 2 view .LVU3
	.loc 1 185 2 view .LVU4
	.loc 1 186 2 view .LVU5
	.loc 1 182 47 is_stmt 0 view .LVU6
	mov.n	a15, a3
	mov.n	a13, a4
.LBB25:
	.loc 1 308 32 view .LVU7
	movi.n	a3, 0
.LVL1:
	.loc 1 308 32 view .LVU8
	movi.n	a4, 1
.LVL2:
	.loc 1 308 32 view .LVU9
	movnez	a3, a4, a5
	extui	a3, a3, 0, 8
.LBE25:
	.loc 1 182 47 view .LVU10
	mov.n	a8, a2
	s32i.n	a6, sp, 0
	.loc 1 186 6 view .LVU11
	l32i.n	a2, a2, 4
.LVL3:
	.loc 1 188 2 is_stmt 1 view .LVU12
.LBB57:
	.loc 1 308 32 is_stmt 0 view .LVU13
	s32i.n	a3, sp, 4
.LBE57:
	.loc 1 188 2 view .LVU14
	j	.L2
.LVL4:
.L53:
.LBB58:
	.loc 1 189 3 is_stmt 1 view .LVU15
	.loc 1 190 3 view .LVU16
	.loc 1 192 3 view .LVU17
	.loc 1 193 3 view .LVU18
	movi.n	a4, 0x2c
	beq	a3, a4, .L3
	.loc 1 193 3 is_stmt 0 view .LVU19
	bltu	a4, a3, .L4
	movi.n	a4, 0xd
	beq	a3, a4, .L5
	bltu	a4, a3, .L6
	addi	a3, a3, -9
.LVL5:
	.loc 1 193 3 view .LVU20
	extui	a3, a3, 0, 8
	bltui	a3, 2, .L5
	j	.L7
.LVL6:
.L6:
	.loc 1 193 3 view .LVU21
	beqi	a3, 32, .L5
	movi.n	a4, 0x22
	beq	a3, a4, .L8
	j	.L7
.L4:
	movi.n	a4, 0x5d
	beq	a3, a4, .L9
	bltu	a4, a3, .L10
	movi.n	a4, 0x3a
	beq	a3, a4, .L11
	movi.n	a4, 0x5b
	beq	a3, a4, .L12
	j	.L7
.L10:
	movi	a4, 0x7b
	beq	a3, a4, .L12
	movi	a4, 0x7d
	beq	a3, a4, .L9
	j	.L7
.L12:
	.loc 1 195 5 is_stmt 1 view .LVU22
	.loc 1 195 10 is_stmt 0 view .LVU23
	addi.n	a2, a2, 1
.LVL7:
	.loc 1 196 5 is_stmt 1 view .LVU24
	.loc 1 196 8 is_stmt 0 view .LVU25
	beqz.n	a5, .L5
	.loc 1 199 5 is_stmt 1 view .LVU26
.LVL8:
.LBB26:
.LBI26:
	.loc 1 36 19 view .LVU27
.LBB27:
	.loc 1 38 2 view .LVU28
	.loc 1 39 2 view .LVU29
	.loc 1 39 12 is_stmt 0 view .LVU30
	l32i.n	a7, a8, 4
	.loc 1 39 5 view .LVU31
	l32i.n	a6, sp, 0
	bgeu	a7, a6, .L57
	.loc 1 42 2 is_stmt 1 view .LVU32
	.loc 1 42 31 is_stmt 0 view .LVU33
	addi.n	a4, a7, 1
	s32i.n	a4, a8, 4
	.loc 1 42 15 view .LVU34
	slli	a4, a7, 4
	.loc 1 42 6 view .LVU35
	add.n	a4, a5, a4
.LVL9:
	.loc 1 43 2 is_stmt 1 view .LVU36
	.loc 1 43 24 is_stmt 0 view .LVU37
	movi.n	a6, -1
	s32i.n	a6, a4, 8
	.loc 1 43 13 view .LVU38
	s32i.n	a6, a4, 4
	.loc 1 44 2 is_stmt 1 view .LVU39
	.loc 1 44 12 is_stmt 0 view .LVU40
	movi.n	a9, 0
.LBE27:
.LBE26:
	.loc 1 202 15 view .LVU41
	l32i.n	a6, a8, 8
.LBB29:
.LBB28:
	.loc 1 44 12 view .LVU42
	s32i.n	a9, a4, 12
	.loc 1 48 2 is_stmt 1 view .LVU43
.LVL10:
	.loc 1 48 2 is_stmt 0 view .LVU44
.LBE28:
.LBE29:
	.loc 1 200 5 is_stmt 1 view .LVU45
	.loc 1 202 5 view .LVU46
	.loc 1 202 8 is_stmt 0 view .LVU47
	beqi	a6, -1, .L14
	.loc 1 203 6 is_stmt 1 view .LVU48
	.loc 1 203 12 is_stmt 0 view .LVU49
	slli	a6, a6, 4
	add.n	a6, a5, a6
	.loc 1 203 35 view .LVU50
	l32i.n	a9, a6, 12
	addi.n	a9, a9, 1
	s32i.n	a9, a6, 12
.L14:
	.loc 1 208 5 is_stmt 1 view .LVU51
	.loc 1 208 43 is_stmt 0 view .LVU52
	addi	a3, a3, -123
.LVL11:
	.loc 1 208 43 view .LVU53
	movi.n	a6, 2
	movi.n	a14, 1
	movnez	a14, a6, a3
	.loc 1 208 17 view .LVU54
	s32i.n	a14, a4, 0
	.loc 1 209 5 is_stmt 1 view .LVU55
	.loc 1 209 18 is_stmt 0 view .LVU56
	s32i.n	a10, a4, 4
	.loc 1 210 5 is_stmt 1 view .LVU57
	.loc 1 210 22 is_stmt 0 view .LVU58
	s32i.n	a7, a8, 8
	.loc 1 211 5 is_stmt 1 view .LVU59
	j	.L5
.LVL12:
.L9:
	.loc 1 213 5 view .LVU60
	.loc 1 213 8 is_stmt 0 view .LVU61
	beqz.n	a5, .L5
	.loc 1 215 5 is_stmt 1 view .LVU62
	.loc 1 215 36 is_stmt 0 view .LVU63
	addi	a3, a3, -125
.LVL13:
	.loc 1 215 36 view .LVU64
	movi.n	a4, 2
	movi.n	a6, 1
	movnez	a6, a4, a3
	.loc 1 236 20 view .LVU65
	l32i.n	a4, a8, 4
	.loc 1 215 36 view .LVU66
	mov.n	a3, a6
.LVL14:
	.loc 1 236 5 is_stmt 1 view .LVU67
	.loc 1 236 30 is_stmt 0 view .LVU68
	addi.n	a6, a4, -1
.LVL15:
	.loc 1 236 30 view .LVU69
	slli	a4, a4, 4
	addi	a4, a4, -16
	add.n	a4, a5, a4
	.loc 1 236 5 view .LVU70
	j	.L17
.L20:
	.loc 1 237 6 is_stmt 1 view .LVU71
.LVL16:
	.loc 1 238 6 view .LVU72
	.loc 1 238 9 is_stmt 0 view .LVU73
	l32i.n	a7, a4, 4
	beqi	a7, -1, .L18
	.loc 1 238 29 discriminator 1 view .LVU74
	l32i.n	a7, a4, 8
	bnei	a7, -1, .L18
	.loc 1 239 7 is_stmt 1 view .LVU75
	.loc 1 239 10 is_stmt 0 view .LVU76
	l32i.n	a9, a4, 0
	bne	a9, a3, .L61
	.loc 1 242 7 is_stmt 1 view .LVU77
	.loc 1 242 24 is_stmt 0 view .LVU78
	s32i.n	a7, a8, 8
.LVL17:
	.loc 1 243 7 is_stmt 1 view .LVU79
	.loc 1 243 32 is_stmt 0 view .LVU80
	addi.n	a10, a10, 1
	slli	a3, a6, 4
.LVL18:
	.loc 1 243 18 view .LVU81
	s32i.n	a10, a4, 8
	.loc 1 244 7 is_stmt 1 view .LVU82
	.loc 1 248 5 view .LVU83
	add.n	a3, a5, a3
	.loc 1 248 5 is_stmt 0 view .LVU84
	addi.n	a4, a6, 1
.LVL19:
	.loc 1 248 5 view .LVU85
	j	.L19
.LVL20:
.L18:
	.loc 1 236 44 discriminator 2 view .LVU86
	addi.n	a6, a6, -1
.LVL21:
	.loc 1 236 44 discriminator 2 view .LVU87
	addi	a4, a4, -16
.LVL22:
.L17:
	.loc 1 236 5 discriminator 1 view .LVU88
	bgez	a6, .L20
	.loc 1 248 5 is_stmt 1 view .LVU89
	.loc 1 248 8 is_stmt 0 view .LVU90
	bnei	a6, -1, .L5
	j	.L61
.LVL23:
.L19:
	.loc 1 250 6 is_stmt 1 view .LVU91
	.loc 1 251 6 view .LVU92
	.loc 1 251 9 is_stmt 0 view .LVU93
	l32i.n	a7, a3, 4
	beqi	a7, -1, .L21
	.loc 1 251 29 discriminator 1 view .LVU94
	l32i.n	a7, a3, 8
	bnei	a7, -1, .L21
	.loc 1 252 7 is_stmt 1 view .LVU95
	.loc 1 252 24 is_stmt 0 view .LVU96
	s32i.n	a6, a8, 8
	.loc 1 253 7 is_stmt 1 view .LVU97
	j	.L5
.L21:
	.loc 1 249 21 is_stmt 0 view .LVU98
	addi.n	a6, a6, -1
.LVL24:
	.loc 1 249 21 view .LVU99
	addi	a3, a3, -16
.LVL25:
	.loc 1 249 21 view .LVU100
	addi.n	a4, a4, -1
	bnez.n	a4, .L19
	j	.L5
.LVL26:
.L8:
	.loc 1 259 5 is_stmt 1 view .LVU101
.LBB30:
.LBI30:
	.loc 1 114 12 view .LVU102
.LBB31:
	.loc 1 116 2 view .LVU103
	.loc 1 118 2 view .LVU104
	.loc 1 120 2 view .LVU105
	.loc 1 120 13 is_stmt 0 view .LVU106
	addi.n	a9, a10, 1
	s32i.n	a9, sp, 8
	s32i.n	a9, a8, 0
	.loc 1 123 2 is_stmt 1 view .LVU107
.LBB32:
	.loc 1 144 6 is_stmt 0 view .LVU108
	movi.n	a11, 0x5c
	movi	a12, 0x66
	j	.L22
.L38:
	.loc 1 124 3 is_stmt 1 view .LVU109
.LVL27:
	.loc 1 127 3 view .LVU110
	.loc 1 127 6 is_stmt 0 view .LVU111
	bne	a4, a3, .L23
	.loc 1 128 4 is_stmt 1 view .LVU112
	.loc 1 128 7 is_stmt 0 view .LVU113
	beqz.n	a5, .L24
	.loc 1 131 4 is_stmt 1 view .LVU114
.LVL28:
.LBB33:
.LBI33:
	.loc 1 36 19 view .LVU115
.LBB34:
	.loc 1 38 2 view .LVU116
	.loc 1 39 2 view .LVU117
	.loc 1 39 12 is_stmt 0 view .LVU118
	l32i.n	a3, a8, 4
.LVL29:
	.loc 1 39 5 view .LVU119
	l32i.n	a14, sp, 0
	bltu	a3, a14, .L25
.LVL30:
	.loc 1 39 5 view .LVU120
.LBE34:
.LBE33:
	.loc 1 132 4 is_stmt 1 view .LVU121
	.loc 1 133 5 view .LVU122
	j	.L126
.LVL31:
.L25:
.LBB36:
.LBB35:
	.loc 1 42 2 view .LVU123
	.loc 1 42 31 is_stmt 0 view .LVU124
	addi.n	a4, a3, 1
.LVL32:
	.loc 1 42 15 view .LVU125
	slli	a3, a3, 4
	.loc 1 42 31 view .LVU126
	s32i.n	a4, a8, 4
.LVL33:
	.loc 1 42 6 view .LVU127
	add.n	a3, a5, a3
.LVL34:
	.loc 1 43 2 is_stmt 1 view .LVU128
	.loc 1 44 2 view .LVU129
	.loc 1 48 2 view .LVU130
	.loc 1 48 2 is_stmt 0 view .LVU131
.LBE35:
.LBE36:
	.loc 1 132 4 is_stmt 1 view .LVU132
	.loc 1 136 4 view .LVU133
.LBB37:
.LBI37:
	.loc 1 54 13 view .LVU134
.LBB38:
	.loc 1 56 2 view .LVU135
	.loc 1 56 14 is_stmt 0 view .LVU136
	movi.n	a4, 3
	s32i.n	a4, a3, 0
	.loc 1 57 2 is_stmt 1 view .LVU137
	.loc 1 57 15 is_stmt 0 view .LVU138
	l32i.n	a4, sp, 8
	.loc 1 58 13 view .LVU139
	s32i.n	a6, a3, 8
	.loc 1 59 14 view .LVU140
	movi.n	a6, 0
.LVL35:
	.loc 1 57 15 view .LVU141
	s32i.n	a4, a3, 4
	.loc 1 58 2 is_stmt 1 view .LVU142
	.loc 1 59 2 view .LVU143
	.loc 1 59 14 is_stmt 0 view .LVU144
	s32i.n	a6, a3, 12
.LVL36:
	.loc 1 59 14 view .LVU145
.LBE38:
.LBE37:
	.loc 1 140 4 is_stmt 1 view .LVU146
	.loc 1 140 4 is_stmt 0 view .LVU147
.LBE32:
.LBE31:
.LBE30:
	.loc 1 260 5 is_stmt 1 view .LVU148
	j	.L24
.LVL37:
.L23:
.LBB42:
.LBB41:
.LBB40:
	.loc 1 144 3 view .LVU149
	.loc 1 144 6 is_stmt 0 view .LVU150
	bne	a4, a11, .L26
	addi.n	a4, a6, 1
.LVL38:
	.loc 1 144 17 view .LVU151
	bgeu	a4, a13, .L26
.LBB39:
	.loc 1 145 4 is_stmt 1 view .LVU152
	.loc 1 146 4 view .LVU153
	.loc 1 146 15 is_stmt 0 view .LVU154
	s32i.n	a4, a8, 0
.LVL39:
	.loc 1 147 4 is_stmt 1 view .LVU155
	.loc 1 147 14 is_stmt 0 view .LVU156
	add.n	a4, a15, a4
	l8ui	a4, a4, 0
	beq	a4, a12, .L26
	bltu	a12, a4, .L27
	movi.n	a6, 0x2f
	beq	a4, a6, .L26
	bltu	a6, a4, .L28
	bne	a4, a3, .L127
	j	.L26
.L28:
	movi	a6, 0x62
	bne	a4, a11, .L122
	j	.L26
.L27:
	movi	a9, 0x72
	beq	a4, a9, .L26
	bltu	a9, a4, .L30
	movi	a6, 0x6e
.L122:
	bne	a4, a6, .L127
	j	.L26
.L30:
	movi	a14, 0x74
	beq	a4, a14, .L26
	movi	a7, 0x75
	bne	a4, a7, .L127
	.loc 1 154 6 is_stmt 1 view .LVU157
	.loc 1 154 17 is_stmt 0 view .LVU158
	addi.n	a6, a6, 2
	s32i.n	a6, a8, 0
	.loc 1 155 6 is_stmt 1 view .LVU159
.LVL40:
	.loc 1 157 61 is_stmt 0 view .LVU160
	movi.n	a9, 4
	j	.L31
.LVL41:
.L36:
	.loc 1 157 7 is_stmt 1 view .LVU161
	.loc 1 157 61 is_stmt 0 view .LVU162
	movi	a14, -0x21
	and	a7, a4, a14
	addi	a7, a7, -65
	extui	a7, a7, 0, 8
	bltui	a7, 6, .L32
	addi	a4, a4, -48
	extui	a4, a4, 0, 8
	movi.n	a14, 9
	bgeu	a14, a4, .L32
	.loc 1 160 8 is_stmt 1 view .LVU163
	j	.L127
.L32:
	.loc 1 163 7 view .LVU164
	.loc 1 163 18 is_stmt 0 view .LVU165
	addi.n	a6, a6, 1
	s32i.n	a6, a8, 0
	.loc 1 163 18 view .LVU166
	addi.n	a9, a9, -1
	bnez.n	a9, .L31
.L35:
	.loc 1 165 6 is_stmt 1 view .LVU167
	.loc 1 165 17 is_stmt 0 view .LVU168
	l32i.n	a4, a8, 0
	addi.n	a4, a4, -1
	s32i.n	a4, a8, 0
	.loc 1 166 6 is_stmt 1 view .LVU169
	j	.L26
.L31:
	.loc 1 155 32 is_stmt 0 view .LVU170
	l32i.n	a6, a8, 0
	.loc 1 155 23 view .LVU171
	bgeu	a6, a13, .L35
	.loc 1 155 49 view .LVU172
	add.n	a4, a15, a6
	l8ui	a4, a4, 0
	.loc 1 155 44 view .LVU173
	bnez.n	a4, .L36
	j	.L35
.L26:
	.loc 1 155 44 view .LVU174
.LBE39:
.LBE40:
	.loc 1 123 66 view .LVU175
	l32i.n	a4, a8, 0
	addi.n	a4, a4, 1
	s32i.n	a4, a8, 0
.L22:
	.loc 1 123 15 view .LVU176
	l32i.n	a6, a8, 0
	.loc 1 123 2 view .LVU177
	bgeu	a6, a13, .L37
	.loc 1 123 32 view .LVU178
	add.n	a4, a15, a6
	l8ui	a4, a4, 0
	.loc 1 123 27 view .LVU179
	bnez.n	a4, .L38
.L37:
	.loc 1 174 2 is_stmt 1 view .LVU180
	.loc 1 174 14 is_stmt 0 view .LVU181
	s32i.n	a10, a8, 0
	.loc 1 175 2 is_stmt 1 view .LVU182
.LVL42:
	.loc 1 175 2 is_stmt 0 view .LVU183
.LBE41:
.LBE42:
	.loc 1 260 5 is_stmt 1 view .LVU184
	j	.L62
.LVL43:
.L24:
	.loc 1 261 5 view .LVU185
	.loc 1 262 15 is_stmt 0 view .LVU186
	l32i.n	a3, a8, 8
	.loc 1 261 10 view .LVU187
	addi.n	a2, a2, 1
.LVL44:
	.loc 1 262 5 is_stmt 1 view .LVU188
	.loc 1 262 32 is_stmt 0 view .LVU189
	beqi	a3, -1, .L5
	l32i.n	a4, sp, 4
	beqz.n	a4, .L5
	.loc 1 263 6 is_stmt 1 view .LVU190
	j	.L125
.LVL45:
.L11:
	.loc 1 268 5 view .LVU191
	.loc 1 268 40 is_stmt 0 view .LVU192
	l32i.n	a3, a8, 4
.LVL46:
	.loc 1 268 40 view .LVU193
	addi.n	a3, a3, -1
	.loc 1 268 22 view .LVU194
	s32i.n	a3, a8, 8
.LVL47:
	.loc 1 269 5 is_stmt 1 view .LVU195
	j	.L5
.LVL48:
.L3:
	.loc 1 271 5 view .LVU196
	.loc 1 271 8 is_stmt 0 view .LVU197
	beqz.n	a5, .L5
	.loc 1 271 32 discriminator 1 view .LVU198
	l32i.n	a3, a8, 8
.LVL49:
	.loc 1 271 23 discriminator 1 view .LVU199
	beqi	a3, -1, .L5
	.loc 1 272 31 discriminator 2 view .LVU200
	slli	a3, a3, 4
	add.n	a3, a5, a3
	.loc 1 272 51 discriminator 2 view .LVU201
	l32i.n	a3, a3, 0
	addi.n	a3, a3, -1
	bltui	a3, 2, .L5
	.loc 1 277 6 is_stmt 1 view .LVU202
	.loc 1 277 21 is_stmt 0 view .LVU203
	l32i.n	a3, a8, 4
	.loc 1 277 31 view .LVU204
	addi.n	a4, a3, -1
.LVL50:
	.loc 1 277 31 view .LVU205
	slli	a3, a3, 4
	addi	a3, a3, -16
	add.n	a3, a5, a3
	.loc 1 277 6 view .LVU206
	j	.L39
.L41:
	.loc 1 278 7 is_stmt 1 view .LVU207
	.loc 1 278 40 is_stmt 0 view .LVU208
	l32i.n	a6, a3, 0
	addi.n	a6, a6, -1
	.loc 1 278 10 view .LVU209
	bgeui	a6, 2, .L40
	.loc 1 279 8 is_stmt 1 view .LVU210
	.loc 1 279 11 is_stmt 0 view .LVU211
	l32i.n	a6, a3, 4
	beqi	a6, -1, .L40
	.loc 1 279 34 discriminator 1 view .LVU212
	l32i.n	a6, a3, 8
	bnei	a6, -1, .L40
	.loc 1 280 9 is_stmt 1 view .LVU213
	.loc 1 280 26 is_stmt 0 view .LVU214
	s32i.n	a4, a8, 8
.LVL51:
	.loc 1 281 9 is_stmt 1 view .LVU215
	j	.L5
.LVL52:
.L40:
	.loc 1 277 45 is_stmt 0 discriminator 2 view .LVU216
	addi.n	a4, a4, -1
.LVL53:
	.loc 1 277 45 discriminator 2 view .LVU217
	addi	a3, a3, -16
.L39:
	.loc 1 277 6 discriminator 1 view .LVU218
	bgez	a4, .L41
	.loc 1 277 6 discriminator 1 view .LVU219
	j	.L5
.LVL54:
.L48:
.LBB43:
.LBB44:
	.loc 1 73 3 is_stmt 1 view .LVU220
	beqi	a9, 32, .L42
	movi.n	a14, 0x20
	bltu	a14, a9, .L43
	bltu	a9, a3, .L44
	bgeu	a4, a9, .L42
	bne	a9, a6, .L44
	j	.L42
.L43:
	beq	a9, a12, .L42
	movi.n	a14, 0x2c
	bgeu	a12, a9, .L123
.L45:
	movi.n	a14, 0x5d
	beq	a9, a14, .L42
	movi	a14, 0x7d
.L123:
	beq	a9, a14, .L42
.L44:
	.loc 1 82 3 view .LVU221
	.loc 1 82 28 is_stmt 0 view .LVU222
	addi	a9, a9, -32
	.loc 1 82 6 view .LVU223
	extui	a9, a9, 0, 8
	bgeu	a7, a9, .L46
.L127:
	.loc 1 83 4 is_stmt 1 view .LVU224
	.loc 1 83 16 is_stmt 0 view .LVU225
	s32i.n	a10, a8, 0
	.loc 1 84 4 is_stmt 1 view .LVU226
.LVL55:
	.loc 1 84 4 is_stmt 0 view .LVU227
.LBE44:
.LBE43:
	.loc 1 306 5 is_stmt 1 view .LVU228
	j	.L61
.LVL56:
.L46:
.LBB54:
.LBB51:
	.loc 1 72 66 is_stmt 0 view .LVU229
	addi.n	a11, a11, 1
	s32i.n	a11, a8, 0
	j	.L47
.LVL57:
.L7:
	.loc 1 72 66 view .LVU230
	movi.n	a12, 0x3a
	movi.n	a3, 9
	movi.n	a4, 0xa
	movi.n	a6, 0xd
	.loc 1 82 6 view .LVU231
	movi.n	a7, 0x5e
.LVL58:
.L47:
	.loc 1 72 15 view .LVU232
	l32i.n	a11, a8, 0
	.loc 1 72 2 view .LVU233
	bgeu	a11, a13, .L42
	.loc 1 72 32 view .LVU234
	add.n	a9, a15, a11
	l8ui	a9, a9, 0
	.loc 1 72 27 view .LVU235
	bnez.n	a9, .L48
.L42:
	.loc 1 94 2 is_stmt 1 view .LVU236
	.loc 1 94 5 is_stmt 0 view .LVU237
	bnez.n	a5, .L49
	.loc 1 95 3 is_stmt 1 view .LVU238
	j	.L124
.L49:
	.loc 1 98 2 view .LVU239
.LVL59:
.LBB45:
.LBI45:
	.loc 1 36 19 view .LVU240
.LBB46:
	.loc 1 38 2 view .LVU241
	.loc 1 39 2 view .LVU242
	.loc 1 39 12 is_stmt 0 view .LVU243
	l32i.n	a3, a8, 4
	.loc 1 39 5 view .LVU244
	l32i.n	a4, sp, 0
	bltu	a3, a4, .L51
.LVL60:
.L126:
	.loc 1 39 5 view .LVU245
.LBE46:
.LBE45:
	.loc 1 99 2 is_stmt 1 view .LVU246
	.loc 1 100 3 view .LVU247
	.loc 1 100 15 is_stmt 0 view .LVU248
	s32i.n	a10, a8, 0
	.loc 1 101 3 is_stmt 1 view .LVU249
.LVL61:
	.loc 1 101 3 is_stmt 0 view .LVU250
.LBE51:
.LBE54:
	.loc 1 306 5 is_stmt 1 view .LVU251
	j	.L57
.LVL62:
.L51:
.LBB55:
.LBB52:
.LBB48:
.LBB47:
	.loc 1 42 2 view .LVU252
	.loc 1 42 31 is_stmt 0 view .LVU253
	addi.n	a4, a3, 1
.LVL63:
	.loc 1 42 15 view .LVU254
	slli	a3, a3, 4
	.loc 1 42 31 view .LVU255
	s32i.n	a4, a8, 4
	.loc 1 42 6 view .LVU256
	add.n	a3, a5, a3
.LVL64:
	.loc 1 43 2 is_stmt 1 view .LVU257
	.loc 1 44 2 view .LVU258
	.loc 1 48 2 view .LVU259
	.loc 1 48 2 is_stmt 0 view .LVU260
.LBE47:
.LBE48:
	.loc 1 99 2 is_stmt 1 view .LVU261
	.loc 1 103 2 view .LVU262
.LBB49:
.LBI49:
	.loc 1 54 13 view .LVU263
.LBB50:
	.loc 1 56 2 view .LVU264
	.loc 1 56 14 is_stmt 0 view .LVU265
	movi.n	a4, 4
	.loc 1 59 14 view .LVU266
	movi.n	a6, 0
	.loc 1 56 14 view .LVU267
	s32i.n	a4, a3, 0
	.loc 1 57 2 is_stmt 1 view .LVU268
	.loc 1 57 15 is_stmt 0 view .LVU269
	s32i.n	a10, a3, 4
	.loc 1 58 2 is_stmt 1 view .LVU270
	.loc 1 58 13 is_stmt 0 view .LVU271
	s32i.n	a11, a3, 8
	.loc 1 59 2 is_stmt 1 view .LVU272
	.loc 1 59 14 is_stmt 0 view .LVU273
	s32i.n	a6, a3, 12
.LVL65:
.L124:
	.loc 1 59 14 view .LVU274
.LBE50:
.LBE49:
	.loc 1 107 2 is_stmt 1 view .LVU275
	.loc 1 107 13 is_stmt 0 view .LVU276
	addi.n	a11, a11, -1
.LBE52:
.LBE55:
	.loc 1 308 15 view .LVU277
	l32i.n	a3, a8, 8
.LBB56:
.LBB53:
	.loc 1 107 13 view .LVU278
	s32i.n	a11, a8, 0
	.loc 1 108 2 is_stmt 1 view .LVU279
.LVL66:
	.loc 1 108 2 is_stmt 0 view .LVU280
.LBE53:
.LBE56:
	.loc 1 306 5 is_stmt 1 view .LVU281
	.loc 1 307 5 view .LVU282
	.loc 1 307 10 is_stmt 0 view .LVU283
	addi.n	a2, a2, 1
.LVL67:
	.loc 1 308 5 is_stmt 1 view .LVU284
	.loc 1 308 32 is_stmt 0 view .LVU285
	beqi	a3, -1, .L5
	l32i.n	a9, sp, 4
	beqz.n	a9, .L5
.LVL68:
.L125:
	.loc 1 309 6 is_stmt 1 view .LVU286
	.loc 1 309 12 is_stmt 0 view .LVU287
	slli	a3, a3, 4
	add.n	a3, a5, a3
	.loc 1 309 35 view .LVU288
	l32i.n	a4, a3, 12
	addi.n	a4, a4, 1
	s32i.n	a4, a3, 12
.L5:
	.loc 1 309 35 view .LVU289
.LBE58:
	.loc 1 188 66 view .LVU290
	l32i.n	a3, a8, 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 0
.L2:
	.loc 1 188 15 discriminator 1 view .LVU291
	l32i.n	a10, a8, 0
	.loc 1 188 2 discriminator 1 view .LVU292
	bgeu	a10, a13, .L52
	.loc 1 188 32 discriminator 2 view .LVU293
	add.n	a3, a15, a10
	l8ui	a3, a3, 0
	.loc 1 188 27 discriminator 2 view .LVU294
	bnez.n	a3, .L53
.L52:
	.loc 1 320 2 is_stmt 1 view .LVU295
	.loc 1 320 5 is_stmt 0 view .LVU296
	beqz.n	a5, .L1
	.loc 1 321 3 is_stmt 1 view .LVU297
	.loc 1 321 18 is_stmt 0 view .LVU298
	l32i.n	a3, a8, 4
	.loc 1 321 28 view .LVU299
	addi.n	a4, a3, -1
.LVL69:
	.loc 1 321 28 view .LVU300
	slli	a3, a3, 4
	addi	a3, a3, -12
	add.n	a5, a5, a3
.LVL70:
	.loc 1 321 3 view .LVU301
	j	.L54
.L56:
	.loc 1 323 4 is_stmt 1 view .LVU302
	.loc 1 323 7 is_stmt 0 view .LVU303
	l32i.n	a3, a5, 0
	beqi	a3, -1, .L55
	.loc 1 323 30 discriminator 1 view .LVU304
	l32i.n	a3, a5, 4
	beqi	a3, -1, .L62
.L55:
	.loc 1 321 42 discriminator 2 view .LVU305
	addi.n	a4, a4, -1
.LVL71:
	.loc 1 321 42 discriminator 2 view .LVU306
	addi	a5, a5, -16
.L54:
	.loc 1 321 3 discriminator 1 view .LVU307
	bgez	a4, .L56
	.loc 1 321 3 discriminator 1 view .LVU308
	j	.L1
.LVL72:
.L57:
.LBB59:
	.loc 1 201 13 view .LVU309
	movi.n	a2, -1
.LVL73:
	.loc 1 201 13 view .LVU310
	j	.L1
.LVL74:
.L61:
	.loc 1 240 15 view .LVU311
	movi.n	a2, -2
.LVL75:
	.loc 1 240 15 view .LVU312
	j	.L1
.LVL76:
.L62:
	.loc 1 240 15 view .LVU313
.LBE59:
	.loc 1 324 12 view .LVU314
	movi.n	a2, -3
.LVL77:
.L1:
	.loc 1 330 1 view .LVU315
	retw.n
.LFE4:
	.size	jsmn_parse, .-jsmn_parse
	.section	.text.jsmn_init,"ax",@progbits
	.align	4
	.global	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LVL78:
.LFB5:
	.loc 1 336 37 is_stmt 1 view -0
	.loc 1 336 37 is_stmt 0 view .LVU317
	entry	sp, 32
.LCFI1:
	.loc 1 337 2 is_stmt 1 view .LVU318
	.loc 1 337 14 is_stmt 0 view .LVU319
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 338 2 is_stmt 1 view .LVU320
	.loc 1 338 18 is_stmt 0 view .LVU321
	s32i.n	a8, a2, 4
	.loc 1 339 2 is_stmt 1 view .LVU322
	.loc 1 339 19 is_stmt 0 view .LVU323
	movi.n	a8, -1
	s32i.n	a8, a2, 8
	.loc 1 340 1 view .LVU324
	retw.n
.LFE5:
	.size	jsmn_init, .-jsmn_init
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/esp-idf/components/jsmn/include/jsmn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x609
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x35
	.byte	0x3
	.4byte	0x46
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x37
	.byte	0x6
	.4byte	0xa4
	.uleb128 0x8
	.4byte	.LASF9
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF10
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF11
	.sleb128 -3
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.4byte	0xe2
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0x47
	.byte	0xd
	.4byte	0x73
	.byte	0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x48
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.string	"end"
	.byte	0x3
	.byte	0x49
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4a
	.byte	0x6
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4e
	.byte	0x3
	.4byte	0xa4
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x54
	.byte	0x9
	.4byte	0x11f
	.uleb128 0xb
	.string	"pos"
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x56
	.byte	0xf
	.4byte	0x38
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x58
	.byte	0x3
	.4byte	0xee
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x150
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x150
	.byte	0x1d
	.4byte	0x152
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x11f
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb5
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb5
	.byte	0x1d
	.4byte	0x152
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.string	"js"
	.byte	0x1
	.byte	0xb5
	.byte	0x31
	.4byte	0x48e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.byte	0x3c
	.4byte	0x2c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x4a0
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb6
	.byte	0x23
	.4byte	0x38
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x12
	.string	"r"
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.4byte	0x4a0
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xbd
	.byte	0x8
	.4byte	0x494
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x73
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x15
	.4byte	0x5ce
	.4byte	.LBI26
	.2byte	.LVU27
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.4byte	0x295
	.uleb128 0x16
	.4byte	0x5db
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x16
	.4byte	0x5f3
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x17
	.4byte	0x5e7
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x18
	.4byte	0x5ff
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x4a6
	.4byte	.LBI30
	.2byte	.LVU102
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x103
	.byte	0x9
	.4byte	0x3b8
	.uleb128 0x17
	.4byte	0x4e6
	.uleb128 0x17
	.4byte	0x4da
	.uleb128 0x17
	.4byte	0x4ce
	.uleb128 0x17
	.4byte	0x4c3
	.uleb128 0x16
	.4byte	0x4b7
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x18
	.4byte	0x4f2
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x18
	.4byte	0x4fe
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1a
	.4byte	0x50a
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x18
	.4byte	0x50b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x15
	.4byte	0x5ce
	.4byte	.LBI33
	.2byte	.LVU115
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x34b
	.uleb128 0x16
	.4byte	0x5db
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x16
	.4byte	0x5f3
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x17
	.4byte	0x5e7
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x18
	.4byte	0x5ff
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x590
	.4byte	.LBI37
	.2byte	.LVU134
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0x88
	.byte	0x4
	.4byte	0x39a
	.uleb128 0x16
	.4byte	0x5c1
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x16
	.4byte	0x5b5
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x16
	.4byte	0x5a9
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x16
	.4byte	0x59d
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0x1c
	.4byte	0x515
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x18
	.4byte	0x516
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x523
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x131
	.byte	0x9
	.uleb128 0x17
	.4byte	0x563
	.uleb128 0x17
	.4byte	0x557
	.uleb128 0x17
	.4byte	0x54b
	.uleb128 0x17
	.4byte	0x540
	.uleb128 0x17
	.4byte	0x534
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x18
	.4byte	0x56f
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1e
	.4byte	0x57b
	.uleb128 0x1f
	.4byte	0x587
	.4byte	.L42
	.uleb128 0x15
	.4byte	0x5ce
	.4byte	.LBI45
	.2byte	.LVU240
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.4byte	0x447
	.uleb128 0x16
	.4byte	0x5db
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x16
	.4byte	0x5f3
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x17
	.4byte	0x5e7
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x18
	.4byte	0x5ff
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x590
	.4byte	.LBI49
	.2byte	.LVU263
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.uleb128 0x16
	.4byte	0x5c1
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x17
	.4byte	0x5b5
	.uleb128 0x16
	.4byte	0x5a9
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x16
	.4byte	0x59d
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x49b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x21
	.4byte	0x494
	.uleb128 0xe
	.byte	0x4
	.4byte	0xe2
	.uleb128 0x22
	.4byte	.LASF25
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x523
	.uleb128 0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.byte	0x2b
	.4byte	0x152
	.uleb128 0x24
	.string	"js"
	.byte	0x1
	.byte	0x72
	.byte	0x3f
	.4byte	0x48e
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x73
	.byte	0xa
	.4byte	0x2c
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.byte	0x1a
	.4byte	0x4a0
	.uleb128 0x23
	.4byte	.LASF21
	.byte	0x1
	.byte	0x73
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x25
	.4byte	.LASF22
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x4a0
	.uleb128 0x25
	.4byte	.LASF13
	.byte	0x1
	.byte	0x76
	.byte	0x6
	.4byte	0x25
	.uleb128 0x26
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.4byte	0x494
	.uleb128 0x26
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF26
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x590
	.uleb128 0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x41
	.byte	0x2e
	.4byte	0x152
	.uleb128 0x24
	.string	"js"
	.byte	0x1
	.byte	0x41
	.byte	0x42
	.4byte	0x48e
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x2c
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x42
	.byte	0x1a
	.4byte	0x4a0
	.uleb128 0x23
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x25
	.4byte	.LASF22
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x4a0
	.uleb128 0x25
	.4byte	.LASF13
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	0x25
	.uleb128 0x28
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF27
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.byte	0x1
	.4byte	0x5ce
	.uleb128 0x23
	.4byte	.LASF22
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.4byte	0x4a0
	.uleb128 0x23
	.4byte	.LASF12
	.byte	0x1
	.byte	0x36
	.byte	0x3a
	.4byte	0x73
	.uleb128 0x23
	.4byte	.LASF13
	.byte	0x1
	.byte	0x37
	.byte	0x21
	.4byte	0x25
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0x37
	.byte	0x2c
	.4byte	0x25
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF28
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x4a0
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.4byte	0x152
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x4a0
	.uleb128 0x23
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.4byte	0x2c
	.uleb128 0x27
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x4a0
	.byte	0
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU183
	.uleb128 .LVU185
	.uleb128 .LVU227
	.uleb128 .LVU229
	.uleb128 .LVU250
	.uleb128 .LVU252
	.uleb128 .LVU280
	.uleb128 .LVU286
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU69
	.uleb128 .LVU101
	.uleb128 .LVU205
	.uleb128 .LVU220
	.uleb128 .LVU300
	.uleb128 .LVU309
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU44
	.uleb128 .LVU60
	.uleb128 .LVU72
	.uleb128 .LVU85
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU101
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU12
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 .LVU313
	.uleb128 .LVU315
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU79
	.uleb128 .LVU86
	.uleb128 .LVU91
	.uleb128 .LVU101
	.uleb128 .LVU119
	.uleb128 .LVU149
	.uleb128 .LVU185
	.uleb128 .LVU191
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU220
	.uleb128 .LVU230
	.uleb128 .LVU232
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0x73
	.sleb128 123
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x73
	.sleb128 125
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU67
	.uleb128 .LVU81
	.uleb128 .LVU86
	.uleb128 .LVU91
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU28
	.uleb128 .LVU60
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU27
	.uleb128 .LVU44
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU36
	.uleb128 .LVU44
.LLST13:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU102
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU183
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU120
	.uleb128 .LVU123
	.uleb128 .LVU131
	.uleb128 .LVU147
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU105
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU183
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU110
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU127
	.uleb128 .LVU149
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU155
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU116
	.uleb128 .LVU149
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU115
	.uleb128 .LVU120
	.uleb128 .LVU123
	.uleb128 .LVU131
.LLST19:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU134
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU145
.LLST21:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU134
	.uleb128 .LVU145
.LLST22:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU134
	.uleb128 .LVU145
.LLST23:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU134
	.uleb128 .LVU145
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU160
	.uleb128 .LVU161
.LLST25:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU245
	.uleb128 .LVU250
	.uleb128 .LVU260
	.uleb128 .LVU274
.LLST26:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU252
	.uleb128 .LVU274
.LLST27:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU240
	.uleb128 .LVU245
	.uleb128 .LVU252
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU260
.LLST28:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU257
	.uleb128 .LVU260
.LLST29:
	.4byte	.LVL64
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU263
	.uleb128 .LVU274
.LLST30:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU263
	.uleb128 .LVU274
.LLST31:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU263
	.uleb128 .LVU274
.LLST32:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"size_t"
.LASF17:
	.string	"toksuper"
.LASF23:
	.string	"count"
.LASF3:
	.string	"JSMN_OBJECT"
.LASF13:
	.string	"start"
.LASF16:
	.string	"toknext"
.LASF28:
	.string	"jsmn_alloc_token"
.LASF34:
	.string	"jsmn_parse"
.LASF14:
	.string	"size"
.LASF2:
	.string	"JSMN_UNDEFINED"
.LASF26:
	.string	"jsmn_parse_primitive"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"JSMN_ARRAY"
.LASF15:
	.string	"jsmntok_t"
.LASF8:
	.string	"jsmntype_t"
.LASF33:
	.string	"jsmn_init"
.LASF19:
	.string	"parser"
.LASF10:
	.string	"JSMN_ERROR_INVAL"
.LASF30:
	.string	"/home/dieter/Development/esp-idf/components/jsmn/src/jsmn.c"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"tokens"
.LASF5:
	.string	"JSMN_STRING"
.LASF21:
	.string	"num_tokens"
.LASF31:
	.string	"/home/dieter/Development/ProjektEi/build/jsmn"
.LASF35:
	.string	"found"
.LASF29:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"jsmn_fill_token"
.LASF12:
	.string	"type"
.LASF18:
	.string	"jsmn_parser"
.LASF32:
	.string	"jsmnerr"
.LASF22:
	.string	"token"
.LASF24:
	.string	"char"
.LASF25:
	.string	"jsmn_parse_string"
.LASF9:
	.string	"JSMN_ERROR_NOMEM"
.LASF11:
	.string	"JSMN_ERROR_PART"
.LASF6:
	.string	"JSMN_PRIMITIVE"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
