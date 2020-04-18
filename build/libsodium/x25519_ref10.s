	.file	"x25519_ref10.c"
	.text
.Ltext0:
	.section	.text.fe_cswap,"ax",@progbits
	.align	4
	.type	fe_cswap, @function
fe_cswap:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
	.loc 1 21 1 view -0
	.loc 1 21 1 is_stmt 0 view .LVU1
	entry	sp, 80
.LCFI0:
	.loc 1 22 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 23 5 view .LVU3
	.loc 1 24 5 view .LVU4
	.loc 1 25 5 view .LVU5
	.loc 1 26 5 view .LVU6
	.loc 1 27 5 view .LVU7
	.loc 1 28 5 view .LVU8
	.loc 1 29 5 view .LVU9
	.loc 1 30 5 view .LVU10
	.loc 1 31 5 view .LVU11
	.loc 1 32 5 view .LVU12
	.loc 1 32 13 is_stmt 0 view .LVU13
	l32i.n	a5, a3, 0
	.loc 1 33 13 view .LVU14
	l32i.n	a8, a3, 4
	.loc 1 34 13 view .LVU15
	l32i.n	a9, a3, 8
	.loc 1 35 13 view .LVU16
	l32i.n	a10, a3, 12
	.loc 1 32 13 view .LVU17
	s32i.n	a5, sp, 0
.LVL2:
	.loc 1 33 5 is_stmt 1 view .LVU18
	.loc 1 33 13 is_stmt 0 view .LVU19
	s32i.n	a8, sp, 4
.LVL3:
	.loc 1 34 5 is_stmt 1 view .LVU20
	.loc 1 34 13 is_stmt 0 view .LVU21
	s32i.n	a9, sp, 8
.LVL4:
	.loc 1 35 5 is_stmt 1 view .LVU22
	.loc 1 35 13 is_stmt 0 view .LVU23
	s32i.n	a10, sp, 12
.LVL5:
	.loc 1 36 5 is_stmt 1 view .LVU24
	.loc 1 36 13 is_stmt 0 view .LVU25
	l32i.n	a14, a3, 16
	.loc 1 37 13 view .LVU26
	l32i.n	a5, a3, 20
.LVL6:
	.loc 1 38 13 view .LVU27
	l32i.n	a8, a3, 24
.LVL7:
	.loc 1 39 13 view .LVU28
	l32i.n	a9, a3, 28
.LVL8:
	.loc 1 40 13 view .LVU29
	l32i.n	a10, a3, 32
.LVL9:
	.loc 1 36 13 view .LVU30
	s32i.n	a14, sp, 16
.LVL10:
	.loc 1 37 5 is_stmt 1 view .LVU31
	.loc 1 37 13 is_stmt 0 view .LVU32
	s32i.n	a5, sp, 20
.LVL11:
	.loc 1 38 5 is_stmt 1 view .LVU33
	.loc 1 41 13 is_stmt 0 view .LVU34
	l32i.n	a14, a3, 36
.LVL12:
	.loc 1 42 13 view .LVU35
	l32i.n	a5, a2, 0
.LVL13:
	.loc 1 38 13 view .LVU36
	s32i.n	a8, sp, 24
.LVL14:
	.loc 1 39 5 is_stmt 1 view .LVU37
	.loc 1 39 13 is_stmt 0 view .LVU38
	s32i.n	a9, sp, 28
.LVL15:
	.loc 1 40 5 is_stmt 1 view .LVU39
	.loc 1 42 13 is_stmt 0 view .LVU40
	l32i.n	a8, sp, 0
.LVL16:
	.loc 1 43 13 view .LVU41
	l32i.n	a9, a2, 4
.LVL17:
	.loc 1 40 13 view .LVU42
	s32i.n	a10, sp, 32
.LVL18:
	.loc 1 41 5 is_stmt 1 view .LVU43
	.loc 1 43 13 is_stmt 0 view .LVU44
	l32i.n	a10, sp, 4
.LVL19:
	.loc 1 42 13 view .LVU45
	xor	a6, a5, a8
	.loc 1 41 13 view .LVU46
	s32i.n	a14, sp, 36
.LVL20:
	.loc 1 42 5 is_stmt 1 view .LVU47
	.loc 1 43 5 view .LVU48
	.loc 1 44 5 view .LVU49
	.loc 1 45 5 view .LVU50
	.loc 1 46 5 view .LVU51
	.loc 1 47 5 view .LVU52
	.loc 1 48 5 view .LVU53
	.loc 1 49 5 view .LVU54
	.loc 1 50 5 view .LVU55
	.loc 1 51 5 view .LVU56
	.loc 1 53 5 view .LVU57
	.loc 1 43 13 is_stmt 0 view .LVU58
	xor	a5, a9, a10
.LVL21:
	.loc 1 44 13 view .LVU59
	l32i.n	a14, a2, 8
.LVL22:
	.loc 1 45 13 view .LVU60
	l32i.n	a9, a2, 12
	.loc 1 44 13 view .LVU61
	l32i.n	a8, sp, 8
	.loc 1 45 13 view .LVU62
	l32i.n	a10, sp, 12
	.loc 1 53 24 view .LVU63
	neg	a4, a4
.LVL23:
	.loc 1 54 5 is_stmt 1 view .LVU64
	.loc 1 44 13 is_stmt 0 view .LVU65
	xor	a15, a14, a8
.LVL24:
	.loc 1 45 13 view .LVU66
	xor	a14, a9, a10
.LVL25:
	.loc 1 57 8 view .LVU67
	and	a14, a14, a4
.LVL26:
	.loc 1 46 13 view .LVU68
	l32i.n	a8, sp, 16
	.loc 1 57 8 view .LVU69
	s32i.n	a14, sp, 40
	.loc 1 46 13 view .LVU70
	l32i.n	a14, a2, 16
	.loc 1 47 13 view .LVU71
	l32i.n	a9, a2, 20
	l32i.n	a10, sp, 20
	.loc 1 46 13 view .LVU72
	xor	a13, a14, a8
.LVL27:
	.loc 1 48 13 view .LVU73
	l32i.n	a14, a2, 24
	l32i.n	a8, sp, 24
	.loc 1 47 13 view .LVU74
	xor	a12, a9, a10
.LVL28:
	.loc 1 49 13 view .LVU75
	l32i.n	a9, a2, 28
	l32i.n	a10, sp, 28
	.loc 1 48 13 view .LVU76
	xor	a11, a14, a8
.LVL29:
	.loc 1 50 13 view .LVU77
	l32i.n	a14, a2, 32
	l32i.n	a8, sp, 32
	.loc 1 49 13 view .LVU78
	xor	a7, a9, a10
.LVL30:
	.loc 1 61 8 view .LVU79
	and	a10, a7, a4
	.loc 1 50 13 view .LVU80
	xor	a7, a14, a8
.LVL31:
	.loc 1 51 13 view .LVU81
	l32i.n	a14, a2, 36
	l32i.n	a8, sp, 36
	.loc 1 62 8 view .LVU82
	and	a9, a7, a4
	.loc 1 51 13 view .LVU83
	xor	a7, a14, a8
.LVL32:
	.loc 1 64 15 view .LVU84
	l32i.n	a14, a2, 0
	.loc 1 65 15 view .LVU85
	l32i.n	a8, a2, 4
	.loc 1 54 8 view .LVU86
	and	a6, a6, a4
.LVL33:
	.loc 1 55 5 is_stmt 1 view .LVU87
	.loc 1 55 8 is_stmt 0 view .LVU88
	and	a5, a5, a4
.LVL34:
	.loc 1 56 5 is_stmt 1 view .LVU89
	.loc 1 56 8 is_stmt 0 view .LVU90
	and	a15, a15, a4
.LVL35:
	.loc 1 57 5 is_stmt 1 view .LVU91
	.loc 1 58 5 view .LVU92
	.loc 1 58 8 is_stmt 0 view .LVU93
	and	a13, a13, a4
.LVL36:
	.loc 1 59 5 is_stmt 1 view .LVU94
	.loc 1 59 8 is_stmt 0 view .LVU95
	and	a12, a12, a4
.LVL37:
	.loc 1 60 5 is_stmt 1 view .LVU96
	.loc 1 60 8 is_stmt 0 view .LVU97
	and	a11, a11, a4
.LVL38:
	.loc 1 61 5 is_stmt 1 view .LVU98
	.loc 1 62 5 view .LVU99
	.loc 1 63 5 view .LVU100
	.loc 1 63 8 is_stmt 0 view .LVU101
	and	a4, a7, a4
.LVL39:
	.loc 1 64 5 is_stmt 1 view .LVU102
	.loc 1 64 15 is_stmt 0 view .LVU103
	xor	a7, a14, a6
	.loc 1 66 15 view .LVU104
	l32i.n	a14, a2, 8
	.loc 1 64 10 view .LVU105
	s32i.n	a7, a2, 0
.LVL40:
	.loc 1 65 5 is_stmt 1 view .LVU106
	.loc 1 65 15 is_stmt 0 view .LVU107
	xor	a7, a8, a5
	.loc 1 65 10 view .LVU108
	s32i.n	a7, a2, 4
.LVL41:
	.loc 1 66 5 is_stmt 1 view .LVU109
	.loc 1 67 15 is_stmt 0 view .LVU110
	l32i.n	a8, a2, 12
.LVL42:
	.loc 1 66 15 view .LVU111
	xor	a7, a14, a15
	.loc 1 67 15 view .LVU112
	l32i.n	a14, sp, 40
	.loc 1 66 10 view .LVU113
	s32i.n	a7, a2, 8
.LVL43:
	.loc 1 67 5 is_stmt 1 view .LVU114
	.loc 1 67 15 is_stmt 0 view .LVU115
	xor	a7, a8, a14
	.loc 1 68 15 view .LVU116
	l32i.n	a8, a2, 16
	.loc 1 69 15 view .LVU117
	l32i.n	a14, a2, 20
	.loc 1 67 10 view .LVU118
	s32i.n	a7, a2, 12
.LVL44:
	.loc 1 68 5 is_stmt 1 view .LVU119
	.loc 1 68 15 is_stmt 0 view .LVU120
	xor	a7, a8, a13
	.loc 1 70 15 view .LVU121
	l32i.n	a8, a2, 24
	.loc 1 68 10 view .LVU122
	s32i.n	a7, a2, 16
.LVL45:
	.loc 1 69 5 is_stmt 1 view .LVU123
	.loc 1 69 15 is_stmt 0 view .LVU124
	xor	a7, a14, a12
	.loc 1 71 15 view .LVU125
	l32i.n	a14, a2, 28
	.loc 1 69 10 view .LVU126
	s32i.n	a7, a2, 20
.LVL46:
	.loc 1 70 5 is_stmt 1 view .LVU127
	.loc 1 70 15 is_stmt 0 view .LVU128
	xor	a7, a8, a11
	.loc 1 72 15 view .LVU129
	l32i.n	a8, a2, 32
	.loc 1 70 10 view .LVU130
	s32i.n	a7, a2, 24
.LVL47:
	.loc 1 71 5 is_stmt 1 view .LVU131
	.loc 1 71 15 is_stmt 0 view .LVU132
	xor	a7, a14, a10
	.loc 1 73 15 view .LVU133
	l32i.n	a14, a2, 36
	.loc 1 71 10 view .LVU134
	s32i.n	a7, a2, 28
.LVL48:
	.loc 1 72 5 is_stmt 1 view .LVU135
	.loc 1 72 15 is_stmt 0 view .LVU136
	xor	a7, a8, a9
	.loc 1 72 10 view .LVU137
	s32i.n	a7, a2, 32
.LVL49:
	.loc 1 73 5 is_stmt 1 view .LVU138
	.loc 1 73 15 is_stmt 0 view .LVU139
	xor	a7, a14, a4
	.loc 1 73 10 view .LVU140
	s32i.n	a7, a2, 36
.LVL50:
	.loc 1 74 5 is_stmt 1 view .LVU141
	.loc 1 74 15 is_stmt 0 view .LVU142
	l32i.n	a2, sp, 0
.LVL51:
	.loc 1 74 15 view .LVU143
	xor	a6, a2, a6
.LVL52:
	.loc 1 74 10 view .LVU144
	s32i.n	a6, a3, 0
	.loc 1 75 5 is_stmt 1 view .LVU145
	.loc 1 75 15 is_stmt 0 view .LVU146
	l32i.n	a8, sp, 4
.LVL53:
	.loc 1 76 15 view .LVU147
	l32i.n	a14, sp, 8
.LVL54:
	.loc 1 75 15 view .LVU148
	xor	a5, a8, a5
.LVL55:
	.loc 1 78 15 view .LVU149
	l32i.n	a8, sp, 16
	.loc 1 77 15 view .LVU150
	l32i.n	a2, sp, 12
	.loc 1 78 15 view .LVU151
	xor	a13, a8, a13
.LVL56:
	.loc 1 75 10 view .LVU152
	s32i.n	a5, a3, 4
	.loc 1 76 5 is_stmt 1 view .LVU153
	.loc 1 82 15 is_stmt 0 view .LVU154
	l32i.n	a8, sp, 32
	.loc 1 77 15 view .LVU155
	l32i.n	a5, sp, 40
	.loc 1 76 15 view .LVU156
	xor	a15, a14, a15
.LVL57:
	.loc 1 82 15 view .LVU157
	xor	a9, a8, a9
.LVL58:
	.loc 1 77 15 view .LVU158
	xor	a14, a2, a5
	.loc 1 77 10 view .LVU159
	s32i.n	a14, a3, 12
	.loc 1 80 15 view .LVU160
	l32i.n	a2, sp, 24
	.loc 1 79 15 view .LVU161
	l32i.n	a14, sp, 20
	.loc 1 81 15 view .LVU162
	l32i.n	a5, sp, 28
	.loc 1 82 10 view .LVU163
	s32i.n	a9, a3, 32
	.loc 1 83 15 view .LVU164
	l32i.n	a9, sp, 36
	.loc 1 79 15 view .LVU165
	xor	a12, a14, a12
.LVL59:
	.loc 1 80 15 view .LVU166
	xor	a11, a2, a11
.LVL60:
	.loc 1 81 15 view .LVU167
	xor	a10, a5, a10
.LVL61:
	.loc 1 83 15 view .LVU168
	xor	a4, a9, a4
.LVL62:
	.loc 1 76 10 view .LVU169
	s32i.n	a15, a3, 8
	.loc 1 77 5 is_stmt 1 view .LVU170
	.loc 1 78 5 view .LVU171
	.loc 1 78 10 is_stmt 0 view .LVU172
	s32i.n	a13, a3, 16
	.loc 1 79 5 is_stmt 1 view .LVU173
	.loc 1 79 10 is_stmt 0 view .LVU174
	s32i.n	a12, a3, 20
	.loc 1 80 5 is_stmt 1 view .LVU175
	.loc 1 80 10 is_stmt 0 view .LVU176
	s32i.n	a11, a3, 24
	.loc 1 81 5 is_stmt 1 view .LVU177
	.loc 1 81 10 is_stmt 0 view .LVU178
	s32i.n	a10, a3, 28
	.loc 1 82 5 is_stmt 1 view .LVU179
	.loc 1 83 5 view .LVU180
	.loc 1 83 10 is_stmt 0 view .LVU181
	s32i.n	a4, a3, 36
	.loc 1 84 1 view .LVU182
	retw.n
.LFE0:
	.size	fe_cswap, .-fe_cswap
	.section	.text.crypto_scalarmult_curve25519_ref10_base,"ax",@progbits
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_base, @function
crypto_scalarmult_curve25519_ref10_base:
.LVL63:
.LFB4:
	.loc 1 257 1 is_stmt 1 view -0
	.loc 1 257 1 is_stmt 0 view .LVU184
	entry	sp, 352
.LCFI1:
	.loc 1 258 5 is_stmt 1 view .LVU185
	.loc 1 259 5 view .LVU186
	.loc 1 260 5 view .LVU187
	.loc 1 261 5 view .LVU188
	.loc 1 263 5 view .LVU189
.LVL64:
	.loc 1 263 12 is_stmt 0 view .LVU190
	movi.n	a8, 0
	.loc 1 264 14 view .LVU191
	movi.n	a9, 0x20
	loop	a9, .L3_LEND
.LVL65:
.L3:
	.loc 1 264 9 is_stmt 1 discriminator 3 view .LVU192
	.loc 1 264 17 is_stmt 0 discriminator 3 view .LVU193
	add.n	a11, a3, a8
	.loc 1 264 14 discriminator 3 view .LVU194
	movi	a4, 0x118
	add.n	a4, a4, sp
	l8ui	a11, a11, 0
	add.n	a10, a4, a8
	s8i	a11, a10, 0
	.loc 1 263 25 discriminator 3 view .LVU195
	addi.n	a8, a8, 1
.LVL66:
	.loc 1 263 25 discriminator 3 view .LVU196
	.L3_LEND:
	.loc 1 266 5 is_stmt 1 view .LVU197
	.loc 1 266 10 is_stmt 0 view .LVU198
	addmi	a9, sp, 0x100
	l8ui	a8, a9, 24
.LVL67:
	.loc 1 266 10 view .LVU199
	movi.n	a10, -8
	and	a8, a8, a10
	s8i	a8, a9, 24
	.loc 1 267 5 is_stmt 1 view .LVU200
	.loc 1 268 5 view .LVU201
	.loc 1 267 11 is_stmt 0 view .LVU202
	l8ui	a8, a9, 55
	.loc 1 268 11 view .LVU203
	movi.n	a10, 0x40
	.loc 1 267 11 view .LVU204
	extui	a8, a8, 0, 7
	.loc 1 268 11 view .LVU205
	or	a8, a8, a10
	.loc 1 269 5 view .LVU206
	mov.n	a11, a4
	mov.n	a10, sp
	.loc 1 268 11 view .LVU207
	s8i	a8, a9, 55
	.loc 1 269 5 is_stmt 1 view .LVU208
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL68:
	.loc 1 270 5 view .LVU209
.LBB4:
.LBI4:
	.loc 1 243 1 view .LVU210
.LBB5:
	.loc 1 245 5 view .LVU211
	.loc 1 246 5 view .LVU212
	.loc 1 248 5 view .LVU213
	movi	a10, 0xc8
	addi	a12, sp, 40
.LVL69:
	.loc 1 248 5 is_stmt 0 view .LVU214
	addi	a11, sp, 80
.LVL70:
	.loc 1 248 5 view .LVU215
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_add
.LVL71:
	.loc 1 249 5 is_stmt 1 view .LVU216
	movi	a10, 0xa0
	addi	a12, sp, 40
.LVL72:
	.loc 1 249 5 is_stmt 0 view .LVU217
	addi	a11, sp, 80
.LVL73:
	.loc 1 249 5 view .LVU218
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL74:
	.loc 1 250 5 is_stmt 1 view .LVU219
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL75:
	.loc 1 251 5 view .LVU220
	movi	a12, 0xa0
	movi	a11, 0xc8
	movi	a10, 0xf0
	add.n	a12, a12, sp
	add.n	a11, a11, sp
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL76:
	.loc 1 251 5 is_stmt 0 view .LVU221
.LBE5:
.LBE4:
	.loc 1 271 5 is_stmt 1 view .LVU222
	movi	a11, 0xf0
	mov.n	a10, a2
	add.n	a11, a11, sp
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL77:
	.loc 1 273 5 view .LVU223
	.loc 1 274 1 is_stmt 0 view .LVU224
	movi.n	a2, 0
.LVL78:
	.loc 1 274 1 view .LVU225
	retw.n
.LFE4:
	.size	crypto_scalarmult_curve25519_ref10_base, .-crypto_scalarmult_curve25519_ref10_base
	.section	.text.crypto_scalarmult_curve25519_ref10,"ax",@progbits
	.literal_position
	.literal .LC0, 121666
	.literal .LC1, 16777216, 0
	.literal .LC2, 33554432, 0
	.align	4
	.type	crypto_scalarmult_curve25519_ref10, @function
crypto_scalarmult_curve25519_ref10:
.LVL79:
.LFB2:
	.loc 1 179 1 is_stmt 1 view -0
	.loc 1 179 1 is_stmt 0 view .LVU227
	entry	sp, 432
.LCFI2:
	.loc 1 180 5 is_stmt 1 view .LVU228
	.loc 1 181 5 view .LVU229
	.loc 1 182 5 view .LVU230
	.loc 1 183 5 view .LVU231
	.loc 1 184 5 view .LVU232
	.loc 1 185 5 view .LVU233
	.loc 1 186 5 view .LVU234
	.loc 1 187 5 view .LVU235
	.loc 1 188 5 view .LVU236
	.loc 1 189 5 view .LVU237
	.loc 1 190 5 view .LVU238
	.loc 1 191 5 view .LVU239
	.loc 1 193 5 view .LVU240
.LVL80:
	.loc 1 179 1 is_stmt 0 view .LVU241
	s32i	a2, sp, 364
	.loc 1 194 14 view .LVU242
	movi.n	a5, 0x20
	.loc 1 193 12 view .LVU243
	movi.n	a2, 0
	loop	a5, .L6_LEND
.LVL81:
.L6:
	.loc 1 194 9 is_stmt 1 discriminator 3 view .LVU244
	.loc 1 194 17 is_stmt 0 discriminator 3 view .LVU245
	add.n	a7, a3, a2
	.loc 1 194 14 discriminator 3 view .LVU246
	movi	a8, 0x118
	add.n	a8, a8, sp
	l8ui	a7, a7, 0
	add.n	a6, a8, a2
	s8i	a7, a6, 0
	.loc 1 193 25 discriminator 3 view .LVU247
	addi.n	a2, a2, 1
.LVL82:
	.loc 1 193 25 discriminator 3 view .LVU248
	.L6_LEND:
	.loc 1 196 5 is_stmt 1 view .LVU249
	.loc 1 196 10 is_stmt 0 view .LVU250
	addmi	a3, sp, 0x100
.LVL83:
	.loc 1 196 10 view .LVU251
	l8ui	a2, a3, 24
.LVL84:
	.loc 1 196 10 view .LVU252
	movi.n	a5, -8
	and	a2, a2, a5
	s8i	a2, a3, 24
	.loc 1 197 5 is_stmt 1 view .LVU253
	.loc 1 198 5 view .LVU254
	.loc 1 197 11 is_stmt 0 view .LVU255
	l8ui	a2, a3, 55
	.loc 1 198 11 view .LVU256
	movi.n	a5, 0x40
	.loc 1 197 11 view .LVU257
	extui	a2, a2, 0, 7
	.loc 1 199 5 view .LVU258
	movi	a10, 0xf0
	mov.n	a11, a4
	.loc 1 198 11 view .LVU259
	or	a2, a2, a5
	.loc 1 199 5 view .LVU260
	add.n	a10, a10, sp
	.loc 1 200 5 view .LVU261
	movi	a4, 0xc8
.LVL85:
	.loc 1 198 11 view .LVU262
	s8i	a2, a3, 55
	.loc 1 199 5 is_stmt 1 view .LVU263
	.loc 1 200 5 is_stmt 0 view .LVU264
	add.n	a4, sp, a4
	.loc 1 199 5 view .LVU265
	call8	crypto_core_curve25519_ref10_fe_frombytes
.LVL86:
	.loc 1 200 5 is_stmt 1 view .LVU266
	mov.n	a10, a4
	.loc 1 201 5 is_stmt 0 view .LVU267
	movi	a2, 0xa0
	.loc 1 200 5 view .LVU268
	call8	crypto_core_curve25519_ref10_fe_1
.LVL87:
	.loc 1 201 5 is_stmt 1 view .LVU269
	add.n	a2, sp, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_0
.LVL88:
	.loc 1 202 5 view .LVU270
	addi	a5, sp, 120
	movi	a11, 0xf0
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_fe_copy
.LVL89:
	.loc 1 203 5 view .LVU271
	addi	a10, sp, 80
	call8	crypto_core_curve25519_ref10_fe_1
.LVL90:
	.loc 1 205 5 view .LVU272
	.loc 1 206 5 view .LVU273
	.loc 1 206 14 is_stmt 0 view .LVU274
	movi	a9, 0xfe
	.loc 1 205 10 view .LVU275
	movi.n	a12, 0
	.loc 1 206 14 view .LVU276
	s32i	a9, sp, 324
.LBB8:
.LBB9:
	.loc 1 131 18 view .LVU277
	movi.n	a3, 1
.LVL91:
.L37:
	.loc 1 131 18 view .LVU278
.LBE9:
.LBE8:
	.loc 1 207 9 is_stmt 1 discriminator 3 view .LVU279
	.loc 1 207 19 is_stmt 0 discriminator 3 view .LVU280
	l32i	a14, sp, 324
	.loc 1 207 14 discriminator 3 view .LVU281
	addmi	a15, sp, 0x100
	.loc 1 207 19 discriminator 3 view .LVU282
	srai	a6, a14, 3
	.loc 1 207 14 discriminator 3 view .LVU283
	add.n	a6, a15, a6
	l8ui	a6, a6, 24
	.loc 1 207 32 discriminator 3 view .LVU284
	extui	a7, a14, 0, 3
	.loc 1 207 24 discriminator 3 view .LVU285
	ssr	a7
	sra	a6, a6
.LVL92:
	.loc 1 208 9 is_stmt 1 discriminator 3 view .LVU286
	.loc 1 208 11 is_stmt 0 discriminator 3 view .LVU287
	extui	a6, a6, 0, 1
.LVL93:
	.loc 1 208 11 discriminator 3 view .LVU288
	s32i	a6, sp, 332
.LVL94:
	.loc 1 209 9 is_stmt 1 discriminator 3 view .LVU289
	.loc 1 209 14 is_stmt 0 discriminator 3 view .LVU290
	xor	a6, a6, a12
.LVL95:
	.loc 1 210 9 is_stmt 1 discriminator 3 view .LVU291
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a4
	call8	fe_cswap
.LVL96:
	.loc 1 211 9 discriminator 3 view .LVU292
	mov.n	a12, a6
	addi	a11, sp, 80
	mov.n	a10, a2
	call8	fe_cswap
.LVL97:
	.loc 1 212 9 discriminator 3 view .LVU293
	.loc 1 213 9 discriminator 3 view .LVU294
	addi	a12, sp, 80
	mov.n	a11, a5
	addi	a10, sp, 40
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL98:
	.loc 1 214 9 discriminator 3 view .LVU295
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL99:
	.loc 1 215 9 discriminator 3 view .LVU296
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a4
	call8	crypto_core_curve25519_ref10_fe_add
.LVL100:
	.loc 1 216 9 discriminator 3 view .LVU297
	addi	a12, sp, 80
	mov.n	a11, a5
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_add
.LVL101:
	.loc 1 217 9 discriminator 3 view .LVU298
	mov.n	a12, a4
	addi	a11, sp, 40
	addi	a10, sp, 80
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL102:
	.loc 1 218 9 discriminator 3 view .LVU299
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL103:
	.loc 1 219 9 discriminator 3 view .LVU300
	mov.n	a11, sp
	addi	a10, sp, 40
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL104:
	.loc 1 220 9 discriminator 3 view .LVU301
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL105:
	.loc 1 221 9 discriminator 3 view .LVU302
	mov.n	a12, a2
	addi	a11, sp, 80
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_fe_add
.LVL106:
	.loc 1 222 9 discriminator 3 view .LVU303
	mov.n	a12, a2
	addi	a11, sp, 80
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL107:
	.loc 1 223 9 discriminator 3 view .LVU304
	addi	a12, sp, 40
	mov.n	a11, sp
	mov.n	a10, a4
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL108:
	.loc 1 224 9 discriminator 3 view .LVU305
	addi	a12, sp, 40
	mov.n	a11, sp
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL109:
	.loc 1 225 9 discriminator 3 view .LVU306
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL110:
	.loc 1 226 9 discriminator 3 view .LVU307
.LBB12:
.LBI8:
	.loc 1 98 1 discriminator 3 view .LVU308
.LBB10:
	.loc 1 100 5 discriminator 3 view .LVU309
	.loc 1 101 5 discriminator 3 view .LVU310
	.loc 1 102 5 discriminator 3 view .LVU311
	.loc 1 103 5 discriminator 3 view .LVU312
	.loc 1 104 5 discriminator 3 view .LVU313
	.loc 1 105 5 discriminator 3 view .LVU314
	.loc 1 106 5 discriminator 3 view .LVU315
	.loc 1 107 5 discriminator 3 view .LVU316
	.loc 1 108 5 discriminator 3 view .LVU317
	.loc 1 109 5 discriminator 3 view .LVU318
	.loc 1 110 5 discriminator 3 view .LVU319
	.loc 1 110 13 is_stmt 0 discriminator 3 view .LVU320
	l32i.n	a9, sp, 0
	l32r	a6, .LC0
	.loc 1 111 13 discriminator 3 view .LVU321
	l32i.n	a7, sp, 4
	.loc 1 110 13 discriminator 3 view .LVU322
	mull	a15, a9, a6
	.loc 1 111 13 discriminator 3 view .LVU323
	mulsh	a8, a7, a6
	.loc 1 110 13 discriminator 3 view .LVU324
	mulsh	a9, a9, a6
	.loc 1 111 13 discriminator 3 view .LVU325
	mull	a12, a7, a6
	.loc 1 112 13 discriminator 3 view .LVU326
	l32i.n	a7, sp, 8
	.loc 1 110 13 discriminator 3 view .LVU327
	s32i	a9, sp, 320
.LVL111:
	.loc 1 111 5 is_stmt 1 discriminator 3 view .LVU328
	.loc 1 112 13 is_stmt 0 discriminator 3 view .LVU329
	mull	a13, a7, a6
	mulsh	a9, a7, a6
.LVL112:
	.loc 1 111 13 discriminator 3 view .LVU330
	s32i	a8, sp, 348
.LVL113:
	.loc 1 112 5 is_stmt 1 discriminator 3 view .LVU331
	.loc 1 113 13 is_stmt 0 discriminator 3 view .LVU332
	l32i.n	a7, sp, 12
	.loc 1 114 13 discriminator 3 view .LVU333
	l32i.n	a8, sp, 16
	.loc 1 113 13 discriminator 3 view .LVU334
	mulsh	a10, a7, a6
	.loc 1 114 13 discriminator 3 view .LVU335
	mull	a14, a8, a6
	.loc 1 113 13 discriminator 3 view .LVU336
	mull	a11, a7, a6
	.loc 1 114 13 discriminator 3 view .LVU337
	mulsh	a8, a8, a6
	.loc 1 115 13 discriminator 3 view .LVU338
	l32i.n	a7, sp, 20
	.loc 1 114 13 discriminator 3 view .LVU339
	s32i	a8, sp, 372
	.loc 1 115 13 discriminator 3 view .LVU340
	mulsh	a8, a7, a6
	.loc 1 112 13 discriminator 3 view .LVU341
	s32i	a9, sp, 352
.LVL114:
	.loc 1 113 5 is_stmt 1 discriminator 3 view .LVU342
	.loc 1 115 13 is_stmt 0 discriminator 3 view .LVU343
	s32i	a8, sp, 376
	.loc 1 116 13 discriminator 3 view .LVU344
	l32i.n	a8, sp, 24
	.loc 1 115 13 discriminator 3 view .LVU345
	mull	a9, a7, a6
.LVL115:
	.loc 1 113 13 discriminator 3 view .LVU346
	s32i	a10, sp, 356
.LVL116:
	.loc 1 114 5 is_stmt 1 discriminator 3 view .LVU347
	.loc 1 115 5 discriminator 3 view .LVU348
	.loc 1 116 5 discriminator 3 view .LVU349
	.loc 1 117 13 is_stmt 0 discriminator 3 view .LVU350
	l32i.n	a7, sp, 28
	.loc 1 116 13 discriminator 3 view .LVU351
	mull	a10, a8, a6
	mulsh	a8, a8, a6
	.loc 1 114 13 discriminator 3 view .LVU352
	s32i	a14, sp, 340
.LVL117:
	.loc 1 116 13 discriminator 3 view .LVU353
	s32i	a8, sp, 380
.LVL118:
	.loc 1 117 5 is_stmt 1 discriminator 3 view .LVU354
	.loc 1 117 13 is_stmt 0 discriminator 3 view .LVU355
	mull	a14, a7, a6
	mulsh	a8, a7, a6
.LVL119:
	.loc 1 118 13 discriminator 3 view .LVU356
	l32i.n	a7, sp, 32
	.loc 1 116 13 discriminator 3 view .LVU357
	s32i	a10, sp, 344
.LVL120:
	.loc 1 117 13 discriminator 3 view .LVU358
	s32i	a8, sp, 384
	.loc 1 118 13 discriminator 3 view .LVU359
	mull	a10, a7, a6
	.loc 1 119 13 discriminator 3 view .LVU360
	l32i.n	a8, sp, 36
	.loc 1 117 13 discriminator 3 view .LVU361
	s32i	a14, sp, 328
.LVL121:
	.loc 1 118 5 is_stmt 1 discriminator 3 view .LVU362
	.loc 1 118 13 is_stmt 0 discriminator 3 view .LVU363
	s32i	a10, sp, 360
	mulsh	a14, a7, a6
	.loc 1 119 13 discriminator 3 view .LVU364
	mull	a10, a8, a6
	mulsh	a7, a8, a6
	.loc 1 131 18 discriminator 3 view .LVU365
	l32r	a8, .LC1
	.loc 1 118 13 discriminator 3 view .LVU366
	s32i	a14, sp, 388
.LVL122:
	.loc 1 119 5 is_stmt 1 discriminator 3 view .LVU367
	.loc 1 120 5 discriminator 3 view .LVU368
	.loc 1 121 5 discriminator 3 view .LVU369
	.loc 1 122 5 discriminator 3 view .LVU370
	.loc 1 123 5 discriminator 3 view .LVU371
	.loc 1 124 5 discriminator 3 view .LVU372
	.loc 1 125 5 discriminator 3 view .LVU373
	.loc 1 126 5 discriminator 3 view .LVU374
	.loc 1 127 5 discriminator 3 view .LVU375
	.loc 1 128 5 discriminator 3 view .LVU376
	.loc 1 129 5 discriminator 3 view .LVU377
	.loc 1 131 5 discriminator 3 view .LVU378
	.loc 1 131 18 is_stmt 0 discriminator 3 view .LVU379
	add.n	a6, a10, a8
	mov.n	a8, a3
	bltu	a6, a10, .L7
	movi.n	a8, 0
.L7:
	add.n	a8, a8, a7
	.loc 1 131 12 discriminator 3 view .LVU380
	slli	a7, a8, 7
	extui	a6, a6, 25, 7
	or	a6, a7, a6
	.loc 1 132 18 discriminator 3 view .LVU381
	movi.n	a7, 0x13
	mull	a14, a7, a6
.LVL123:
	.loc 1 131 12 discriminator 3 view .LVU382
	srai	a8, a8, 25
.LVL124:
	.loc 1 132 5 is_stmt 1 discriminator 3 view .LVU383
	.loc 1 132 18 is_stmt 0 discriminator 3 view .LVU384
	mull	a8, a7, a8
.LVL125:
	.loc 1 132 8 discriminator 3 view .LVU385
	add.n	a15, a14, a15
.LVL126:
	.loc 1 132 18 discriminator 3 view .LVU386
	muluh	a7, a7, a6
	.loc 1 132 8 discriminator 3 view .LVU387
	s32i	a15, sp, 336
	.loc 1 132 18 discriminator 3 view .LVU388
	add.n	a7, a8, a7
	.loc 1 132 8 discriminator 3 view .LVU389
	mov.n	a8, a3
	bltu	a15, a14, .L8
	movi.n	a8, 0
.L8:
	l32i	a14, sp, 320
	.loc 1 133 18 discriminator 3 view .LVU390
	slli	a6, a6, 25
	.loc 1 132 8 discriminator 3 view .LVU391
	add.n	a7, a7, a14
	.loc 1 134 18 discriminator 3 view .LVU392
	l32r	a15, .LC1
	.loc 1 132 8 discriminator 3 view .LVU393
	add.n	a8, a8, a7
	.loc 1 133 8 discriminator 3 view .LVU394
	sub	a6, a10, a6
	s32i	a6, sp, 392
	.loc 1 132 8 discriminator 3 view .LVU395
	s32i	a8, sp, 368
.LVL127:
	.loc 1 133 5 is_stmt 1 discriminator 3 view .LVU396
	.loc 1 134 5 discriminator 3 view .LVU397
	.loc 1 134 18 is_stmt 0 discriminator 3 view .LVU398
	add.n	a6, a12, a15
	.loc 1 134 18 discriminator 3 view .LVU399
	mov.n	a7, a3
	bltu	a6, a12, .L10
	movi.n	a7, 0
.L10:
	l32i	a8, sp, 348
.LVL128:
	.loc 1 134 12 discriminator 3 view .LVU400
	extui	a6, a6, 25, 7
	.loc 1 134 18 discriminator 3 view .LVU401
	add.n	a7, a7, a8
	.loc 1 134 12 discriminator 3 view .LVU402
	slli	a8, a7, 7
	or	a6, a8, a6
	.loc 1 135 8 discriminator 3 view .LVU403
	add.n	a10, a13, a6
	s32i	a10, sp, 320
	.loc 1 134 12 discriminator 3 view .LVU404
	srai	a7, a7, 25
.LVL129:
	.loc 1 135 5 is_stmt 1 discriminator 3 view .LVU405
	.loc 1 135 8 is_stmt 0 discriminator 3 view .LVU406
	mov.n	a8, a3
	bltu	a10, a13, .L11
	movi.n	a8, 0
.L11:
	l32i	a14, sp, 352
	.loc 1 136 18 discriminator 3 view .LVU407
	slli	a6, a6, 25
.LVL130:
	.loc 1 135 8 discriminator 3 view .LVU408
	add.n	a7, a14, a7
	.loc 1 137 18 discriminator 3 view .LVU409
	l32r	a15, .LC1
	.loc 1 135 8 discriminator 3 view .LVU410
	add.n	a8, a8, a7
	.loc 1 136 8 discriminator 3 view .LVU411
	sub	a6, a12, a6
	s32i	a6, sp, 352
.LVL131:
	.loc 1 135 8 discriminator 3 view .LVU412
	s32i	a8, sp, 348
.LVL132:
	.loc 1 136 5 is_stmt 1 discriminator 3 view .LVU413
	.loc 1 137 5 discriminator 3 view .LVU414
	.loc 1 137 18 is_stmt 0 discriminator 3 view .LVU415
	add.n	a7, a11, a15
	mov.n	a6, a3
	.loc 1 137 18 discriminator 3 view .LVU416
	bltu	a7, a11, .L13
	movi.n	a6, 0
.L13:
	l32i	a8, sp, 356
.LVL133:
	.loc 1 137 12 discriminator 3 view .LVU417
	extui	a7, a7, 25, 7
	.loc 1 137 18 discriminator 3 view .LVU418
	add.n	a6, a6, a8
	.loc 1 137 12 discriminator 3 view .LVU419
	slli	a8, a6, 7
	.loc 1 138 8 discriminator 3 view .LVU420
	l32i	a10, sp, 340
	.loc 1 137 12 discriminator 3 view .LVU421
	or	a7, a8, a7
	.loc 1 138 8 discriminator 3 view .LVU422
	add.n	a15, a10, a7
	.loc 1 137 12 discriminator 3 view .LVU423
	srai	a6, a6, 25
.LVL134:
	.loc 1 138 5 is_stmt 1 discriminator 3 view .LVU424
	.loc 1 138 8 is_stmt 0 discriminator 3 view .LVU425
	mov.n	a8, a3
	bltu	a15, a10, .L14
	movi.n	a8, 0
.L14:
	l32i	a12, sp, 372
	.loc 1 139 18 discriminator 3 view .LVU426
	slli	a7, a7, 25
.LVL135:
	.loc 1 138 8 discriminator 3 view .LVU427
	add.n	a6, a12, a6
	.loc 1 140 18 discriminator 3 view .LVU428
	l32r	a14, .LC1
	.loc 1 138 8 discriminator 3 view .LVU429
	add.n	a6, a8, a6
	.loc 1 139 8 discriminator 3 view .LVU430
	sub	a11, a11, a7
	.loc 1 138 8 discriminator 3 view .LVU431
	s32i	a6, sp, 340
.LVL136:
	.loc 1 139 5 is_stmt 1 discriminator 3 view .LVU432
	.loc 1 139 8 is_stmt 0 discriminator 3 view .LVU433
	s32i	a11, sp, 356
	.loc 1 140 5 is_stmt 1 discriminator 3 view .LVU434
	.loc 1 140 18 is_stmt 0 discriminator 3 view .LVU435
	add.n	a10, a9, a14
	mov.n	a8, a3
	bltu	a10, a9, .L16
	movi.n	a8, 0
.L16:
	.loc 1 140 18 discriminator 3 view .LVU436
	l32i	a6, sp, 376
.LVL137:
	.loc 1 140 12 discriminator 3 view .LVU437
	extui	a10, a10, 25, 7
	.loc 1 140 18 discriminator 3 view .LVU438
	add.n	a8, a8, a6
	.loc 1 140 12 discriminator 3 view .LVU439
	slli	a6, a8, 7
	.loc 1 141 8 discriminator 3 view .LVU440
	l32i	a11, sp, 344
	.loc 1 140 12 discriminator 3 view .LVU441
	or	a10, a6, a10
	.loc 1 141 8 discriminator 3 view .LVU442
	add.n	a14, a11, a10
	.loc 1 140 12 discriminator 3 view .LVU443
	srai	a8, a8, 25
.LVL138:
	.loc 1 141 5 is_stmt 1 discriminator 3 view .LVU444
	.loc 1 141 8 is_stmt 0 discriminator 3 view .LVU445
	mov.n	a6, a3
	bltu	a14, a11, .L17
	movi.n	a6, 0
.L17:
	l32i	a12, sp, 380
	.loc 1 142 18 discriminator 3 view .LVU446
	slli	a10, a10, 25
.LVL139:
	.loc 1 142 8 discriminator 3 view .LVU447
	sub	a10, a9, a10
	.loc 1 141 8 discriminator 3 view .LVU448
	add.n	a8, a12, a8
	add.n	a8, a6, a8
.LVL140:
	.loc 1 142 5 is_stmt 1 discriminator 3 view .LVU449
	.loc 1 142 8 is_stmt 0 discriminator 3 view .LVU450
	s32i	a10, sp, 344
.LVL141:
	.loc 1 143 5 is_stmt 1 discriminator 3 view .LVU451
	.loc 1 143 18 is_stmt 0 discriminator 3 view .LVU452
	l32i	a6, sp, 328
	l32r	a10, .LC1
	.loc 1 143 18 discriminator 3 view .LVU453
	mov.n	a7, a3
	add.n	a9, a6, a10
	bltu	a9, a6, .L19
	movi.n	a7, 0
.L19:
	.loc 1 143 18 discriminator 3 view .LVU454
	l32i	a11, sp, 384
	.loc 1 143 12 discriminator 3 view .LVU455
	extui	a9, a9, 25, 7
	.loc 1 143 18 discriminator 3 view .LVU456
	add.n	a7, a7, a11
	.loc 1 143 12 discriminator 3 view .LVU457
	slli	a6, a7, 7
	.loc 1 144 8 discriminator 3 view .LVU458
	l32i	a12, sp, 360
	.loc 1 143 12 discriminator 3 view .LVU459
	or	a9, a6, a9
	.loc 1 144 8 discriminator 3 view .LVU460
	add.n	a13, a12, a9
	.loc 1 143 12 discriminator 3 view .LVU461
	srai	a7, a7, 25
.LVL142:
	.loc 1 144 5 is_stmt 1 discriminator 3 view .LVU462
	.loc 1 144 8 is_stmt 0 discriminator 3 view .LVU463
	mov.n	a6, a3
	bltu	a13, a12, .L20
	movi.n	a6, 0
.L20:
	.loc 1 145 8 discriminator 3 view .LVU464
	l32i	a11, sp, 328
	.loc 1 144 8 discriminator 3 view .LVU465
	l32i	a10, sp, 388
	.loc 1 145 18 discriminator 3 view .LVU466
	slli	a9, a9, 25
.LVL143:
	.loc 1 145 8 discriminator 3 view .LVU467
	sub	a9, a11, a9
	.loc 1 144 8 discriminator 3 view .LVU468
	add.n	a7, a10, a7
	add.n	a7, a6, a7
.LVL144:
	.loc 1 145 5 is_stmt 1 discriminator 3 view .LVU469
	.loc 1 145 8 is_stmt 0 discriminator 3 view .LVU470
	s32i	a9, sp, 328
	.loc 1 147 5 is_stmt 1 discriminator 3 view .LVU471
	.loc 1 147 18 is_stmt 0 discriminator 3 view .LVU472
	l32i	a6, sp, 336
	l32r	a9, .LC2
	.loc 1 147 18 discriminator 3 view .LVU473
	add.n	a12, a6, a9
	mov.n	a9, a3
	bltu	a12, a6, .L22
	movi.n	a9, 0
.L22:
	.loc 1 147 18 discriminator 3 view .LVU474
	l32i	a10, sp, 368
	.loc 1 147 12 discriminator 3 view .LVU475
	extui	a12, a12, 26, 6
	.loc 1 147 18 discriminator 3 view .LVU476
	add.n	a9, a9, a10
	.loc 1 147 12 discriminator 3 view .LVU477
	slli	a9, a9, 6
	.loc 1 150 18 discriminator 3 view .LVU478
	l32i	a6, sp, 320
	.loc 1 147 12 discriminator 3 view .LVU479
	or	a12, a9, a12
.LVL145:
	.loc 1 148 5 is_stmt 1 discriminator 3 view .LVU480
	.loc 1 149 5 discriminator 3 view .LVU481
	.loc 1 150 5 discriminator 3 view .LVU482
	.loc 1 150 18 is_stmt 0 discriminator 3 view .LVU483
	l32r	a9, .LC2
	l32i	a10, sp, 320
	add.n	a11, a6, a9
	mov.n	a6, a3
	bltu	a11, a10, .L23
	movi.n	a6, 0
.L23:
	l32i	a9, sp, 348
	.loc 1 150 12 discriminator 3 view .LVU484
	extui	a11, a11, 26, 6
	.loc 1 150 18 discriminator 3 view .LVU485
	add.n	a6, a6, a9
	.loc 1 150 12 discriminator 3 view .LVU486
	slli	a6, a6, 6
	or	a11, a6, a11
.LVL146:
	.loc 1 151 5 is_stmt 1 discriminator 3 view .LVU487
	.loc 1 152 5 discriminator 3 view .LVU488
	.loc 1 153 5 discriminator 3 view .LVU489
	.loc 1 153 18 is_stmt 0 discriminator 3 view .LVU490
	l32r	a6, .LC2
	add.n	a10, a15, a6
	mov.n	a6, a3
	bltu	a10, a15, .L24
	movi.n	a6, 0
.L24:
	l32i	a9, sp, 340
	.loc 1 153 12 discriminator 3 view .LVU491
	extui	a10, a10, 26, 6
	.loc 1 153 18 discriminator 3 view .LVU492
	add.n	a6, a6, a9
	.loc 1 153 12 discriminator 3 view .LVU493
	slli	a6, a6, 6
	or	a10, a6, a10
.LVL147:
	.loc 1 154 5 is_stmt 1 discriminator 3 view .LVU494
	.loc 1 155 5 discriminator 3 view .LVU495
	.loc 1 156 5 discriminator 3 view .LVU496
	.loc 1 156 18 is_stmt 0 discriminator 3 view .LVU497
	l32r	a6, .LC2
	add.n	a9, a14, a6
	mov.n	a6, a3
	bltu	a9, a14, .L25
	movi.n	a6, 0
.L25:
	add.n	a6, a6, a8
	.loc 1 156 12 discriminator 3 view .LVU498
	slli	a6, a6, 6
	extui	a9, a9, 26, 6
	or	a9, a6, a9
.LVL148:
	.loc 1 157 5 is_stmt 1 discriminator 3 view .LVU499
	.loc 1 158 5 discriminator 3 view .LVU500
	.loc 1 159 5 discriminator 3 view .LVU501
	.loc 1 159 18 is_stmt 0 discriminator 3 view .LVU502
	l32r	a6, .LC2
	add.n	a8, a13, a6
	.loc 1 159 18 discriminator 3 view .LVU503
	mov.n	a6, a3
	bltu	a8, a13, .L26
	movi.n	a6, 0
.L26:
	add.n	a6, a6, a7
	.loc 1 159 12 discriminator 3 view .LVU504
	slli	a6, a6, 6
	extui	a8, a8, 26, 6
	or	a8, a6, a8
.LVL149:
	.loc 1 160 5 is_stmt 1 discriminator 3 view .LVU505
	.loc 1 161 5 discriminator 3 view .LVU506
	.loc 1 163 5 discriminator 3 view .LVU507
	.loc 1 149 8 is_stmt 0 discriminator 3 view .LVU508
	l32i	a6, sp, 336
	.loc 1 149 18 discriminator 3 view .LVU509
	slli	a7, a12, 26
	.loc 1 149 8 discriminator 3 view .LVU510
	sub	a7, a6, a7
	.loc 1 148 8 discriminator 3 view .LVU511
	l32i	a6, sp, 352
	.loc 1 163 10 discriminator 3 view .LVU512
	s32i	a7, sp, 80
	.loc 1 164 5 is_stmt 1 discriminator 3 view .LVU513
	.loc 1 148 8 is_stmt 0 discriminator 3 view .LVU514
	add.n	a12, a6, a12
	.loc 1 164 10 discriminator 3 view .LVU515
	s32i	a12, sp, 84
	.loc 1 165 5 is_stmt 1 discriminator 3 view .LVU516
	.loc 1 152 8 is_stmt 0 discriminator 3 view .LVU517
	l32i	a12, sp, 320
	.loc 1 152 18 discriminator 3 view .LVU518
	slli	a6, a11, 26
	.loc 1 152 8 discriminator 3 view .LVU519
	sub	a6, a12, a6
	.loc 1 165 10 discriminator 3 view .LVU520
	s32i	a6, sp, 88
	.loc 1 166 5 is_stmt 1 discriminator 3 view .LVU521
	.loc 1 151 8 is_stmt 0 discriminator 3 view .LVU522
	l32i	a6, sp, 356
	.loc 1 157 8 discriminator 3 view .LVU523
	l32i	a12, sp, 328
	.loc 1 151 8 discriminator 3 view .LVU524
	add.n	a11, a6, a11
	.loc 1 155 18 discriminator 3 view .LVU525
	slli	a6, a10, 26
	.loc 1 155 8 discriminator 3 view .LVU526
	sub	a15, a15, a6
	.loc 1 158 18 discriminator 3 view .LVU527
	slli	a6, a9, 26
	.loc 1 158 8 discriminator 3 view .LVU528
	sub	a14, a14, a6
	.loc 1 166 10 discriminator 3 view .LVU529
	s32i	a11, sp, 92
	.loc 1 167 5 is_stmt 1 discriminator 3 view .LVU530
	.loc 1 154 8 is_stmt 0 discriminator 3 view .LVU531
	l32i	a11, sp, 344
	.loc 1 169 10 discriminator 3 view .LVU532
	s32i	a14, sp, 104
	.loc 1 160 8 discriminator 3 view .LVU533
	l32i	a14, sp, 392
	.loc 1 154 8 discriminator 3 view .LVU534
	add.n	a10, a11, a10
	.loc 1 161 18 discriminator 3 view .LVU535
	slli	a6, a8, 26
	.loc 1 157 8 discriminator 3 view .LVU536
	add.n	a9, a12, a9
	.loc 1 161 8 discriminator 3 view .LVU537
	sub	a13, a13, a6
	.loc 1 160 8 discriminator 3 view .LVU538
	add.n	a8, a14, a8
	.loc 1 168 10 discriminator 3 view .LVU539
	s32i	a10, sp, 100
.LBE10:
.LBE12:
	.loc 1 227 9 discriminator 3 view .LVU540
	mov.n	a11, a5
	mov.n	a10, a5
.LBB13:
.LBB11:
	.loc 1 167 10 discriminator 3 view .LVU541
	s32i	a15, sp, 96
	.loc 1 168 5 is_stmt 1 discriminator 3 view .LVU542
	.loc 1 169 5 discriminator 3 view .LVU543
	.loc 1 170 5 discriminator 3 view .LVU544
	.loc 1 170 10 is_stmt 0 discriminator 3 view .LVU545
	s32i	a9, sp, 108
	.loc 1 171 5 is_stmt 1 discriminator 3 view .LVU546
	.loc 1 171 10 is_stmt 0 discriminator 3 view .LVU547
	s32i	a13, sp, 112
	.loc 1 172 5 is_stmt 1 discriminator 3 view .LVU548
	.loc 1 172 10 is_stmt 0 discriminator 3 view .LVU549
	s32i	a8, sp, 116
.LVL150:
	.loc 1 172 10 discriminator 3 view .LVU550
.LBE11:
.LBE13:
	.loc 1 227 9 is_stmt 1 discriminator 3 view .LVU551
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL151:
	.loc 1 228 9 discriminator 3 view .LVU552
	addi	a11, sp, 40
	mov.n	a10, a11
	addi	a12, sp, 80
	call8	crypto_core_curve25519_ref10_fe_add
.LVL152:
	.loc 1 229 9 discriminator 3 view .LVU553
	movi	a11, 0xf0
	mov.n	a12, a2
	add.n	a11, sp, a11
	addi	a10, sp, 80
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL153:
	.loc 1 230 9 discriminator 3 view .LVU554
	addi	a12, sp, 40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL154:
	.loc 1 206 31 is_stmt 0 discriminator 3 view .LVU555
	l32i	a15, sp, 324
	.loc 1 208 11 discriminator 3 view .LVU556
	l32i	a12, sp, 332
	.loc 1 206 31 discriminator 3 view .LVU557
	addi.n	a15, a15, -1
	s32i	a15, sp, 324
.LVL155:
	.loc 1 206 5 discriminator 3 view .LVU558
	bnei	a15, -1, .L37
	.loc 1 232 5 is_stmt 1 view .LVU559
	movi	a10, 0xc8
	mov.n	a11, a5
	add.n	a10, a10, sp
	call8	fe_cswap
.LVL156:
	.loc 1 233 5 view .LVU560
	l32i	a12, sp, 332
	addi	a11, sp, 80
	mov.n	a10, a2
	call8	fe_cswap
.LVL157:
	.loc 1 235 5 view .LVU561
	mov.n	a11, a2
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL158:
	.loc 1 236 5 view .LVU562
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a12, a2
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL159:
	.loc 1 237 5 view .LVU563
	l32i	a10, sp, 364
	movi	a11, 0xc8
	add.n	a11, a11, sp
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL160:
	.loc 1 239 5 view .LVU564
	.loc 1 240 1 is_stmt 0 view .LVU565
	movi.n	a2, 0
	retw.n
.LFE2:
	.size	crypto_scalarmult_curve25519_ref10, .-crypto_scalarmult_curve25519_ref10
	.global	crypto_scalarmult_curve25519_ref10_implementation
	.section	.data.crypto_scalarmult_curve25519_ref10_implementation,"aw"
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_implementation, @object
	.size	crypto_scalarmult_curve25519_ref10_implementation, 8
crypto_scalarmult_curve25519_ref10_implementation:
	.word	crypto_scalarmult_curve25519_ref10
	.word	crypto_scalarmult_curve25519_ref10_base
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x160
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x1b0
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/../scalarmult_curve25519.h"
	.file 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xde3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0x20
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	0x41
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x67
	.byte	0x17
	.4byte	0x6c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x54
	.uleb128 0x4
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x38
	.byte	0x13
	.4byte	0x60
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.4byte	0xbf
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x6
	.byte	0xb
	.4byte	0xe4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.4byte	0xfe
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0xde
	.uleb128 0x9
	.4byte	0xde
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.byte	0x4
	.4byte	0x48
	.uleb128 0xa
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0x25
	.4byte	0xfe
	.uleb128 0x9
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0xde
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0x110
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x120
	.uleb128 0xc
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.byte	0xa0
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x156
	.uleb128 0xe
	.string	"X"
	.byte	0x5
	.byte	0x4c
	.byte	0x25
	.4byte	0x104
	.byte	0
	.uleb128 0xe
	.string	"Y"
	.byte	0x5
	.byte	0x4d
	.byte	0x25
	.4byte	0x104
	.byte	0x28
	.uleb128 0xe
	.string	"Z"
	.byte	0x5
	.byte	0x4e
	.byte	0x25
	.4byte	0x104
	.byte	0x50
	.uleb128 0xe
	.string	"T"
	.byte	0x5
	.byte	0x4f
	.byte	0x25
	.4byte	0x104
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0x50
	.byte	0x3
	.4byte	0x120
	.uleb128 0xf
	.4byte	.LASF15
	.byte	0x6
	.byte	0x8
	.byte	0x9
	.4byte	0x97
	.uleb128 0x10
	.4byte	0x162
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_scalarmult_curve25519_ref10_implementation
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30a
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0xff
	.byte	0x38
	.4byte	0xd8
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.2byte	0x100
	.byte	0x3e
	.4byte	0xde
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"e"
	.byte	0x1
	.2byte	0x102
	.byte	0x13
	.4byte	0x30a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"A"
	.byte	0x1
	.2byte	0x103
	.byte	0x28
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x14
	.string	"pk"
	.byte	0x1
	.2byte	0x104
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x16
	.4byte	0x31a
	.4byte	.LBI4
	.2byte	.LVU210
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x10e
	.byte	0x5
	.4byte	0x2d7
	.uleb128 0x17
	.4byte	0x33f
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x17
	.4byte	0x333
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x17
	.4byte	0x327
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x19
	.4byte	0x34b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x19
	.4byte	0x357
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0xd62
	.4byte	0x277
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0xd6e
	.4byte	0x29a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL75
	.4byte	0xd7a
	.4byte	0x2b6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL76
	.4byte	0xd86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0xd92
	.4byte	0x2f2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL77
	.4byte	0xd9e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x31a
	.uleb128 0xc
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.byte	0x1
	.4byte	0x364
	.uleb128 0x1e
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf3
	.byte	0x37
	.4byte	0x364
	.uleb128 0x1e
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf3
	.byte	0x6a
	.4byte	0x36a
	.uleb128 0x1e
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf3
	.byte	0x9a
	.4byte	0x36a
	.uleb128 0x1f
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf5
	.byte	0x25
	.4byte	0x104
	.uleb128 0x1f
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf6
	.byte	0x25
	.4byte	0x104
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x86
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96b
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0xb0
	.byte	0x33
	.4byte	0xd8
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xb1
	.byte	0x39
	.4byte	0xde
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xb2
	.byte	0x39
	.4byte	0xde
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xb4
	.byte	0x13
	.4byte	0x30a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x20
	.string	"x1"
	.byte	0x1
	.byte	0xb6
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.string	"x2"
	.byte	0x1
	.byte	0xb7
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.string	"z2"
	.byte	0x1
	.byte	0xb8
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.string	"x3"
	.byte	0x1
	.byte	0xb9
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x20
	.string	"z3"
	.byte	0x1
	.byte	0xba
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x22
	.4byte	.LASF23
	.byte	0x1
	.byte	0xbb
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x22
	.4byte	.LASF24
	.byte	0x1
	.byte	0xbc
	.byte	0x25
	.4byte	0x104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.byte	0xbd
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x23
	.4byte	.LASF25
	.byte	0x1
	.byte	0xbe
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.byte	0xbf
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x24
	.4byte	0x96b
	.4byte	.LBI8
	.2byte	.LVU308
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe2
	.byte	0x9
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0x982
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x17
	.4byte	0x978
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x26
	.4byte	0x98c
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x26
	.4byte	0x997
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x26
	.4byte	0x9a2
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x26
	.4byte	0x9ad
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x26
	.4byte	0x9b8
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x26
	.4byte	0x9c3
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x26
	.4byte	0x9ce
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x26
	.4byte	0x9d9
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x26
	.4byte	0x9e4
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x26
	.4byte	0x9ef
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x26
	.4byte	0x9fa
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x27
	.4byte	0xa05
	.uleb128 0x26
	.4byte	0xa10
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x27
	.4byte	0xa1b
	.uleb128 0x26
	.4byte	0xa26
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x26
	.4byte	0xa31
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x26
	.4byte	0xa3c
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x27
	.4byte	0xa47
	.uleb128 0x26
	.4byte	0xa52
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x27
	.4byte	0xa5d
	.uleb128 0x27
	.4byte	0xa68
	.uleb128 0x26
	.4byte	0xa74
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x27
	.4byte	0xa80
	.uleb128 0x26
	.4byte	0xa8c
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x27
	.4byte	0xa98
	.uleb128 0x26
	.4byte	0xaa4
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x27
	.4byte	0xab0
	.uleb128 0x26
	.4byte	0xabc
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x27
	.4byte	0xac8
	.uleb128 0x26
	.4byte	0xad4
	.4byte	.LLST66
	.4byte	.LVUS66
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0xdaa
	.4byte	0x616
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL87
	.4byte	0xdb6
	.4byte	0x62a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0xdc2
	.4byte	0x63e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL89
	.4byte	0xdce
	.4byte	0x659
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL90
	.4byte	0xdb6
	.4byte	0x66e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0xae1
	.4byte	0x68e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL97
	.4byte	0xae1
	.4byte	0x6af
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL98
	.4byte	0xd6e
	.4byte	0x6d1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL99
	.4byte	0xd6e
	.4byte	0x6f2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL100
	.4byte	0xd62
	.4byte	0x712
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL101
	.4byte	0xd62
	.4byte	0x733
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL102
	.4byte	0xd86
	.4byte	0x755
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0xd86
	.4byte	0x776
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL104
	.4byte	0xdda
	.4byte	0x792
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL105
	.4byte	0xdda
	.4byte	0x7ad
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0xd62
	.4byte	0x7ce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL107
	.4byte	0xd6e
	.4byte	0x7ef
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL108
	.4byte	0xd86
	.4byte	0x811
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL109
	.4byte	0xd6e
	.4byte	0x834
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL110
	.4byte	0xdda
	.4byte	0x84e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL151
	.4byte	0xdda
	.4byte	0x868
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0xd62
	.4byte	0x88b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL153
	.4byte	0xd86
	.4byte	0x8ad
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL154
	.4byte	0xd86
	.4byte	0x8cf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL156
	.4byte	0xae1
	.4byte	0x8f2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL157
	.4byte	0xae1
	.4byte	0x915
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL158
	.4byte	0xd7a
	.4byte	0x92f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL159
	.4byte	0xd86
	.4byte	0x951
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL160
	.4byte	0xd9e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.4byte	0xae1
	.uleb128 0x28
	.string	"h"
	.byte	0x1
	.byte	0x62
	.byte	0x2e
	.4byte	0x364
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.byte	0x62
	.byte	0x57
	.4byte	0x36a
	.uleb128 0x29
	.string	"f0"
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f1"
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f2"
	.byte	0x1
	.byte	0x66
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f3"
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f4"
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f5"
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f6"
	.byte	0x1
	.byte	0x6a
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f7"
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f8"
	.byte	0x1
	.byte	0x6c
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"f9"
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x29
	.string	"h0"
	.byte	0x1
	.byte	0x6e
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h1"
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h2"
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h3"
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h4"
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h5"
	.byte	0x1
	.byte	0x73
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h6"
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h7"
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h8"
	.byte	0x1
	.byte	0x76
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x29
	.string	"h9"
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x78
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF29
	.byte	0x1
	.byte	0x79
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7a
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF36
	.byte	0x1
	.byte	0x80
	.byte	0xd
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	0x8b
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd62
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x14
	.byte	0x2a
	.4byte	0x364
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2b
	.string	"g"
	.byte	0x1
	.byte	0x14
	.byte	0x4d
	.4byte	0x364
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x14
	.byte	0x5d
	.4byte	0x2c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.string	"f0"
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.string	"f1"
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x21
	.string	"f2"
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x21
	.string	"f3"
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x21
	.string	"f4"
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x21
	.string	"f5"
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x21
	.string	"f6"
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x21
	.string	"f7"
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x21
	.string	"f8"
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x21
	.string	"f9"
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x21
	.string	"g0"
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.string	"g1"
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x21
	.string	"g2"
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x21
	.string	"g3"
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x21
	.string	"g4"
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x21
	.string	"g5"
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x21
	.string	"g6"
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x21
	.string	"g7"
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x21
	.string	"g8"
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x21
	.string	"g9"
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x21
	.string	"x0"
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x21
	.string	"x1"
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x21
	.string	"x2"
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x21
	.string	"x3"
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x21
	.string	"x4"
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x21
	.string	"x5"
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x21
	.string	"x6"
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x21
	.string	"x7"
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x21
	.string	"x8"
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x21
	.string	"x9"
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST31
	.4byte	.LVUS31
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2c
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2d
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x32
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x91
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x2a
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x29
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.uleb128 0x2c
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x30
	.byte	0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS32:
	.uleb128 0
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 0
.LLST32:
	.4byte	.LVL63
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU199
.LLST33:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU210
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
.LLST34:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71-1
	.4byte	.LVL73
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74-1
	.4byte	.LVL76
	.2byte	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU210
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
.LLST35:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71-1
	.4byte	.LVL72
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74-1
	.4byte	.LVL76
	.2byte	0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU210
	.uleb128 .LVU221
.LLST36:
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST37:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST38:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 0
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU241
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU252
.LLST40:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU274
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU558
	.uleb128 .LVU558
	.uleb128 .LVU560
	.uleb128 .LVU560
	.uleb128 0
.LLST41:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x8
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL156-1
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU273
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU558
	.uleb128 .LVU558
	.uleb128 .LVU560
	.uleb128 .LVU560
	.uleb128 0
.LLST42:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL156-1
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU286
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 0
.LLST43:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x14
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU308
	.uleb128 .LVU550
.LLST44:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x4
	.byte	0x91
	.sleb128 -432
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU308
	.uleb128 .LVU550
.LLST45:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU310
	.uleb128 .LVU550
.LLST46:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -432
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU311
	.uleb128 .LVU550
.LLST47:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -428
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU312
	.uleb128 .LVU550
.LLST48:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -424
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU313
	.uleb128 .LVU550
.LLST49:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -420
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU314
	.uleb128 .LVU550
.LLST50:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -416
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU315
	.uleb128 .LVU550
.LLST51:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -412
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU316
	.uleb128 .LVU550
.LLST52:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -408
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU317
	.uleb128 .LVU550
.LLST53:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -404
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU318
	.uleb128 .LVU550
.LLST54:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -400
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU319
	.uleb128 .LVU550
.LLST55:
	.4byte	.LVL110
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -396
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU328
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU386
	.uleb128 .LVU396
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU482
.LLST56:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL112
	.4byte	.LVL126
	.2byte	0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL128
	.4byte	.LVL145
	.2byte	0x9
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU342
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU412
	.uleb128 .LVU413
	.uleb128 .LVU417
	.uleb128 .LVU417
	.uleb128 .LVU489
.LLST57:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL115
	.4byte	.LVL131
	.2byte	0x8
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x8
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL133
	.4byte	.LVL146
	.2byte	0xa
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU348
	.uleb128 .LVU353
	.uleb128 .LVU432
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 .LVU496
.LLST58:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x9
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL137
	.4byte	.LVL147
	.2byte	0x8
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU349
	.uleb128 .LVU451
.LLST59:
	.4byte	.LVL116
	.4byte	.LVL141
	.2byte	0x7
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU354
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU358
	.uleb128 .LVU449
	.uleb128 .LVU501
.LLST60:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x9
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL140
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU367
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 .LVU507
.LLST61:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x8
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL123
	.4byte	.LVL144
	.2byte	0x9
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LVL149
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU405
	.uleb128 .LVU408
.LLST62:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU424
	.uleb128 .LVU427
.LLST63:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU444
	.uleb128 .LVU447
.LLST64:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU462
	.uleb128 .LVU467
.LLST65:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU383
	.uleb128 .LVU385
.LLST66:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU106
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU4
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU111
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU5
	.uleb128 .LVU114
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU6
	.uleb128 .LVU119
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU7
	.uleb128 .LVU123
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU8
	.uleb128 .LVU127
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU9
	.uleb128 .LVU131
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x72
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU10
	.uleb128 .LVU135
.LLST9:
	.4byte	.LVL1
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.sleb128 28
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU11
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU147
.LLST10:
	.4byte	.LVL1
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU12
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU148
.LLST11:
	.4byte	.LVL1
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU18
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST12:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU20
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST13:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU22
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST14:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU24
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST15:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU31
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST16:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU33
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST17:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU37
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST18:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST19:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 28
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU43
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST20:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 32
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU47
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST21:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU48
	.uleb128 .LVU144
.LLST22:
	.4byte	.LVL20
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU49
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU149
.LLST23:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU50
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU157
.LLST24:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x8
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU51
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU92
.LLST25:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU52
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU152
.LLST26:
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU53
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU166
.LLST27:
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU54
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU167
.LLST28:
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x73
	.sleb128 24
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU55
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU168
.LLST29:
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x8
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU56
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU158
.LLST30:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x73
	.sleb128 32
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x8
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x73
	.sleb128 32
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU169
.LLST31:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x8
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x73
	.sleb128 36
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"carry1"
.LASF30:
	.string	"carry2"
.LASF31:
	.string	"carry3"
.LASF32:
	.string	"carry4"
.LASF50:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
.LASF34:
	.string	"carry6"
.LASF35:
	.string	"carry7"
.LASF36:
	.string	"carry8"
.LASF37:
	.string	"carry9"
.LASF19:
	.string	"tempX"
.LASF20:
	.string	"tempZ"
.LASF47:
	.string	"crypto_core_curve25519_ref10_fe_copy"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF25:
	.string	"swap"
.LASF21:
	.string	"crypto_scalarmult_curve25519_ref10_base"
.LASF45:
	.string	"crypto_core_curve25519_ref10_fe_1"
.LASF10:
	.string	"int64_t"
.LASF38:
	.string	"crypto_core_curve25519_ref10_fe_add"
.LASF43:
	.string	"crypto_core_curve25519_ref10_fe_tobytes"
.LASF28:
	.string	"carry0"
.LASF7:
	.string	"long long int"
.LASF44:
	.string	"crypto_core_curve25519_ref10_fe_frombytes"
.LASF6:
	.string	"__int64_t"
.LASF46:
	.string	"crypto_core_curve25519_ref10_fe_0"
.LASF41:
	.string	"crypto_core_curve25519_ref10_fe_mul"
.LASF48:
	.string	"crypto_core_curve25519_ref10_fe_sq"
.LASF13:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF40:
	.string	"crypto_core_curve25519_ref10_fe_invert"
.LASF53:
	.string	"fe_cswap"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"montgomeryX"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"mult_base"
.LASF9:
	.string	"int32_t"
.LASF11:
	.string	"mult"
.LASF39:
	.string	"crypto_core_curve25519_ref10_fe_sub"
.LASF52:
	.string	"crypto_scalarmult_curve25519_implementation"
.LASF23:
	.string	"tmp0"
.LASF24:
	.string	"tmp1"
.LASF51:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF14:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF49:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"fe_mul121666"
.LASF22:
	.string	"crypto_scalarmult_curve25519_ref10"
.LASF5:
	.string	"__int32_t"
.LASF17:
	.string	"edwardsY"
.LASF18:
	.string	"edwardsZ"
.LASF26:
	.string	"edwards_to_montgomery"
.LASF15:
	.string	"crypto_scalarmult_curve25519_ref10_implementation"
.LASF33:
	.string	"carry5"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
