	.file	"pwhash_scryptsalsa208sha256_nosse.c"
	.text
.Ltext0:
	.section	.text.salsa20_8,"ax",@progbits
	.align	4
	.type	salsa20_8, @function
salsa20_8:
.LVL0:
.LFB16:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
	.loc 1 115 1 view -0
	.loc 1 115 1 is_stmt 0 view .LVU1
	entry	sp, 144
.LCFI0:
	.loc 1 116 5 is_stmt 1 view .LVU2
	.loc 1 117 5 view .LVU3
.LVL1:
	.loc 1 118 5 view .LVU4
	.loc 1 120 5 view .LVU5
.LBB4:
.LBI4:
	.loc 1 42 1 view .LVU6
.LBB5:
	.loc 1 44 5 view .LVU7
	.loc 1 47 5 view .LVU8
	.loc 1 47 5 is_stmt 0 view .LVU9
.LBE5:
.LBE4:
	.loc 1 115 1 view .LVU10
	s32i	a2, sp, 100
.LVL2:
	.loc 1 115 1 view .LVU11
	movi.n	a3, 0x10
	movi.n	a2, 0
	loop	a3, .L2_LEND
.LVL3:
.L2:
.LBB7:
.LBB6:
	.loc 1 48 9 is_stmt 1 view .LVU12
	.loc 1 48 28 is_stmt 0 view .LVU13
	l32i	a6, sp, 100
	.loc 1 48 20 view .LVU14
	add.n	a4, sp, a2
	.loc 1 48 28 view .LVU15
	add.n	a5, a6, a2
	.loc 1 48 20 view .LVU16
	l32i.n	a5, a5, 0
	addi.n	a2, a2, 4
	s32i.n	a5, a4, 0
	.loc 1 48 20 view .LVU17
	.L2_LEND:
	l32i.n	a8, sp, 36
	l32i.n	a5, sp, 8
	s32i	a8, sp, 104
	s32i	a5, sp, 64
	l32i.n	a8, sp, 12
	l32i.n	a5, sp, 28
	s32i	a8, sp, 80
	s32i	a5, sp, 68
	l32i.n	a6, sp, 16
	.loc 1 47 5 view .LVU18
	movi.n	a5, 4
	l32i.n	a3, sp, 0
	l32i.n	a11, sp, 48
	l32i.n	a2, sp, 32
	l32i.n	a15, sp, 20
	l32i.n	a10, sp, 4
	l32i.n	a14, sp, 52
	l32i.n	a4, sp, 56
	l32i.n	a13, sp, 40
	l32i.n	a9, sp, 24
	l32i.n	a12, sp, 60
	l32i.n	a8, sp, 44
	s32i	a5, sp, 92
.L3:
.LBE6:
.LBE7:
	.loc 1 124 9 is_stmt 1 discriminator 3 view .LVU19
	.loc 1 124 25 is_stmt 0 discriminator 3 view .LVU20
	add.n	a7, a11, a3
	.loc 1 124 42 discriminator 3 view .LVU21
	ssai	25
	src	a7, a7, a7
	.loc 1 124 14 discriminator 3 view .LVU22
	xor	a6, a7, a6
	s32i	a6, sp, 72
	.loc 1 125 9 is_stmt 1 discriminator 3 view .LVU23
	.loc 1 125 25 is_stmt 0 discriminator 3 view .LVU24
	add.n	a6, a6, a3
	.loc 1 126 26 discriminator 3 view .LVU25
	l32i	a5, sp, 72
	.loc 1 125 41 discriminator 3 view .LVU26
	ssai	23
	src	a6, a6, a6
	.loc 1 125 14 discriminator 3 view .LVU27
	xor	a6, a6, a2
	.loc 1 126 26 discriminator 3 view .LVU28
	add.n	a2, a5, a6
	.loc 1 126 43 discriminator 3 view .LVU29
	ssai	19
	src	a2, a2, a2
	.loc 1 126 15 discriminator 3 view .LVU30
	xor	a2, a2, a11
	.loc 1 125 14 discriminator 3 view .LVU31
	s32i	a6, sp, 84
	.loc 1 126 9 is_stmt 1 discriminator 3 view .LVU32
	.loc 1 129 25 is_stmt 0 discriminator 3 view .LVU33
	add.n	a11, a15, a10
	.loc 1 126 15 discriminator 3 view .LVU34
	s32i	a2, sp, 96
	.loc 1 127 9 is_stmt 1 discriminator 3 view .LVU35
	.loc 1 127 26 is_stmt 0 discriminator 3 view .LVU36
	add.n	a2, a6, a2
	.loc 1 129 14 discriminator 3 view .LVU37
	l32i	a6, sp, 104
	.loc 1 129 41 discriminator 3 view .LVU38
	ssai	25
	src	a11, a11, a11
	.loc 1 129 14 discriminator 3 view .LVU39
	xor	a11, a11, a6
	.loc 1 127 43 discriminator 3 view .LVU40
	ssai	14
	src	a2, a2, a2
	.loc 1 127 14 discriminator 3 view .LVU41
	xor	a3, a2, a3
	.loc 1 129 9 is_stmt 1 discriminator 3 view .LVU42
	.loc 1 130 9 discriminator 3 view .LVU43
	.loc 1 130 26 is_stmt 0 discriminator 3 view .LVU44
	add.n	a2, a11, a15
	.loc 1 130 42 discriminator 3 view .LVU45
	ssai	23
	src	a2, a2, a2
	.loc 1 130 15 discriminator 3 view .LVU46
	xor	a2, a2, a14
	s32i	a2, sp, 88
	.loc 1 131 9 is_stmt 1 discriminator 3 view .LVU47
	.loc 1 131 26 is_stmt 0 discriminator 3 view .LVU48
	add.n	a2, a11, a2
	.loc 1 131 43 discriminator 3 view .LVU49
	ssai	19
	src	a2, a2, a2
	.loc 1 132 25 discriminator 3 view .LVU50
	l32i	a5, sp, 88
	.loc 1 131 14 discriminator 3 view .LVU51
	xor	a10, a2, a10
	.loc 1 132 9 is_stmt 1 discriminator 3 view .LVU52
	.loc 1 132 25 is_stmt 0 discriminator 3 view .LVU53
	add.n	a2, a5, a10
	.loc 1 132 43 discriminator 3 view .LVU54
	ssai	14
	src	a2, a2, a2
	.loc 1 132 14 discriminator 3 view .LVU55
	xor	a15, a2, a15
	.loc 1 134 9 is_stmt 1 discriminator 3 view .LVU56
	.loc 1 134 27 is_stmt 0 discriminator 3 view .LVU57
	add.n	a2, a9, a13
	.loc 1 134 43 discriminator 3 view .LVU58
	ssai	25
	src	a2, a2, a2
	.loc 1 134 15 discriminator 3 view .LVU59
	xor	a2, a2, a4
	s32i	a2, sp, 76
	.loc 1 135 9 is_stmt 1 discriminator 3 view .LVU60
	.loc 1 135 14 is_stmt 0 discriminator 3 view .LVU61
	l32i	a6, sp, 64
	.loc 1 135 26 discriminator 3 view .LVU62
	add.n	a2, a2, a13
	.loc 1 136 25 discriminator 3 view .LVU63
	l32i	a5, sp, 76
	.loc 1 135 43 discriminator 3 view .LVU64
	ssai	23
	src	a2, a2, a2
	.loc 1 135 14 discriminator 3 view .LVU65
	xor	a2, a2, a6
	.loc 1 136 9 is_stmt 1 discriminator 3 view .LVU66
	.loc 1 136 25 is_stmt 0 discriminator 3 view .LVU67
	add.n	a4, a5, a2
	.loc 1 136 43 discriminator 3 view .LVU68
	ssai	19
	src	a4, a4, a4
	.loc 1 139 26 discriminator 3 view .LVU69
	add.n	a5, a8, a12
	.loc 1 139 14 discriminator 3 view .LVU70
	l32i	a6, sp, 80
	.loc 1 136 14 discriminator 3 view .LVU71
	xor	a9, a4, a9
	.loc 1 137 9 is_stmt 1 discriminator 3 view .LVU72
	.loc 1 137 26 is_stmt 0 discriminator 3 view .LVU73
	add.n	a4, a2, a9
	.loc 1 139 43 discriminator 3 view .LVU74
	ssai	25
	src	a5, a5, a5
	.loc 1 139 14 discriminator 3 view .LVU75
	xor	a5, a5, a6
	.loc 1 137 43 discriminator 3 view .LVU76
	ssai	14
	src	a4, a4, a4
	.loc 1 137 15 discriminator 3 view .LVU77
	xor	a13, a4, a13
	.loc 1 139 9 is_stmt 1 discriminator 3 view .LVU78
	.loc 1 140 9 discriminator 3 view .LVU79
	.loc 1 140 14 is_stmt 0 discriminator 3 view .LVU80
	l32i	a6, sp, 68
	.loc 1 140 25 discriminator 3 view .LVU81
	add.n	a4, a5, a12
	.loc 1 140 42 discriminator 3 view .LVU82
	ssai	23
	src	a4, a4, a4
	.loc 1 140 14 discriminator 3 view .LVU83
	xor	a4, a4, a6
	.loc 1 141 9 is_stmt 1 discriminator 3 view .LVU84
	.loc 1 141 26 is_stmt 0 discriminator 3 view .LVU85
	add.n	a6, a5, a4
	.loc 1 141 43 discriminator 3 view .LVU86
	ssai	19
	src	a6, a6, a6
	.loc 1 141 15 discriminator 3 view .LVU87
	xor	a8, a6, a8
	.loc 1 142 9 is_stmt 1 discriminator 3 view .LVU88
	.loc 1 145 25 is_stmt 0 discriminator 3 view .LVU89
	add.n	a6, a3, a5
	.loc 1 145 41 discriminator 3 view .LVU90
	ssai	25
	src	a6, a6, a6
	.loc 1 145 14 discriminator 3 view .LVU91
	xor	a10, a6, a10
	.loc 1 146 25 discriminator 3 view .LVU92
	add.n	a6, a3, a10
	.loc 1 146 41 discriminator 3 view .LVU93
	ssai	23
	src	a6, a6, a6
	.loc 1 146 14 discriminator 3 view .LVU94
	xor	a6, a6, a2
	.loc 1 147 25 discriminator 3 view .LVU95
	add.n	a2, a10, a6
	.loc 1 147 42 discriminator 3 view .LVU96
	ssai	19
	src	a2, a2, a2
	.loc 1 147 14 discriminator 3 view .LVU97
	xor	a2, a2, a5
	s32i	a2, sp, 80
	.loc 1 150 25 discriminator 3 view .LVU98
	l32i	a5, sp, 72
	.loc 1 148 25 discriminator 3 view .LVU99
	add.n	a2, a6, a2
	.loc 1 148 42 discriminator 3 view .LVU100
	ssai	14
	src	a2, a2, a2
	.loc 1 148 14 discriminator 3 view .LVU101
	xor	a3, a2, a3
	.loc 1 150 25 discriminator 3 view .LVU102
	add.n	a2, a5, a15
	.loc 1 150 41 discriminator 3 view .LVU103
	ssai	25
	src	a2, a2, a2
	.loc 1 150 14 discriminator 3 view .LVU104
	xor	a9, a2, a9
	.loc 1 151 25 discriminator 3 view .LVU105
	add.n	a2, a15, a9
	.loc 1 151 41 discriminator 3 view .LVU106
	ssai	23
	src	a2, a2, a2
	.loc 1 151 14 discriminator 3 view .LVU107
	xor	a2, a2, a4
	.loc 1 146 14 discriminator 3 view .LVU108
	s32i	a6, sp, 64
	.loc 1 152 25 discriminator 3 view .LVU109
	add.n	a6, a9, a2
	.loc 1 152 42 discriminator 3 view .LVU110
	ssai	19
	src	a6, a6, a6
	.loc 1 152 14 discriminator 3 view .LVU111
	xor	a6, a6, a5
	.loc 1 151 14 discriminator 3 view .LVU112
	s32i	a2, sp, 68
	.loc 1 153 25 discriminator 3 view .LVU113
	add.n	a2, a2, a6
	.loc 1 153 42 discriminator 3 view .LVU114
	ssai	14
	src	a2, a2, a2
	.loc 1 153 14 discriminator 3 view .LVU115
	xor	a15, a2, a15
	.loc 1 155 27 discriminator 3 view .LVU116
	add.n	a2, a11, a13
	.loc 1 155 43 discriminator 3 view .LVU117
	ssai	25
	src	a2, a2, a2
	.loc 1 142 27 discriminator 3 view .LVU118
	add.n	a7, a4, a8
	.loc 1 155 15 discriminator 3 view .LVU119
	xor	a8, a2, a8
	.loc 1 156 26 discriminator 3 view .LVU120
	add.n	a2, a13, a8
	.loc 1 156 14 discriminator 3 view .LVU121
	l32i	a4, sp, 84
	.loc 1 156 43 discriminator 3 view .LVU122
	ssai	23
	src	a2, a2, a2
	.loc 1 156 14 discriminator 3 view .LVU123
	xor	a2, a2, a4
	.loc 1 157 25 discriminator 3 view .LVU124
	add.n	a5, a8, a2
	.loc 1 157 43 discriminator 3 view .LVU125
	ssai	19
	src	a5, a5, a5
	.loc 1 157 14 discriminator 3 view .LVU126
	xor	a5, a5, a11
	.loc 1 158 26 discriminator 3 view .LVU127
	add.n	a4, a2, a5
	.loc 1 142 44 discriminator 3 view .LVU128
	ssai	14
	src	a7, a7, a7
	.loc 1 157 14 discriminator 3 view .LVU129
	s32i	a5, sp, 104
	.loc 1 160 27 discriminator 3 view .LVU130
	l32i	a5, sp, 76
	.loc 1 142 15 discriminator 3 view .LVU131
	xor	a7, a7, a12
	.loc 1 145 9 is_stmt 1 discriminator 3 view .LVU132
	.loc 1 146 9 discriminator 3 view .LVU133
	.loc 1 147 9 discriminator 3 view .LVU134
	.loc 1 148 9 discriminator 3 view .LVU135
	.loc 1 150 9 discriminator 3 view .LVU136
	.loc 1 151 9 discriminator 3 view .LVU137
	.loc 1 152 9 discriminator 3 view .LVU138
	.loc 1 153 9 discriminator 3 view .LVU139
	.loc 1 155 9 discriminator 3 view .LVU140
	.loc 1 156 9 discriminator 3 view .LVU141
	.loc 1 157 9 discriminator 3 view .LVU142
	.loc 1 158 9 discriminator 3 view .LVU143
	.loc 1 158 43 is_stmt 0 discriminator 3 view .LVU144
	ssai	14
	src	a4, a4, a4
	.loc 1 160 27 discriminator 3 view .LVU145
	add.n	a11, a5, a7
	.loc 1 158 15 discriminator 3 view .LVU146
	xor	a13, a4, a13
	.loc 1 160 9 is_stmt 1 discriminator 3 view .LVU147
	.loc 1 160 15 is_stmt 0 discriminator 3 view .LVU148
	l32i	a4, sp, 96
	.loc 1 160 44 discriminator 3 view .LVU149
	ssai	25
	src	a11, a11, a11
	.loc 1 160 15 discriminator 3 view .LVU150
	xor	a11, a11, a4
	.loc 1 161 9 is_stmt 1 discriminator 3 view .LVU151
	.loc 1 161 15 is_stmt 0 discriminator 3 view .LVU152
	l32i	a5, sp, 88
	.loc 1 161 27 discriminator 3 view .LVU153
	add.n	a14, a7, a11
	.loc 1 161 44 discriminator 3 view .LVU154
	ssai	23
	src	a14, a14, a14
	.loc 1 161 15 discriminator 3 view .LVU155
	xor	a14, a14, a5
	.loc 1 162 9 is_stmt 1 discriminator 3 view .LVU156
	.loc 1 162 27 is_stmt 0 discriminator 3 view .LVU157
	add.n	a4, a11, a14
	.loc 1 162 15 discriminator 3 view .LVU158
	l32i	a5, sp, 76
	.loc 1 162 45 discriminator 3 view .LVU159
	ssai	19
	src	a4, a4, a4
	.loc 1 162 15 discriminator 3 view .LVU160
	xor	a4, a4, a5
	.loc 1 163 9 is_stmt 1 discriminator 3 view .LVU161
	l32i	a5, sp, 92
	.loc 1 163 27 is_stmt 0 discriminator 3 view .LVU162
	add.n	a12, a14, a4
	addi.n	a5, a5, -1
	.loc 1 163 45 discriminator 3 view .LVU163
	ssai	14
	src	a12, a12, a12
	s32i	a5, sp, 92
	.loc 1 163 15 discriminator 3 view .LVU164
	xor	a12, a12, a7
.LVL4:
	.loc 1 163 15 discriminator 3 view .LVU165
	bnez.n	a5, .L3
	s32i.n	a2, sp, 32
	l32i	a2, sp, 64
	s32i.n	a6, sp, 16
	s32i.n	a4, sp, 56
	l32i	a6, sp, 104
	l32i	a4, sp, 80
	l32i	a5, sp, 68
	s32i.n	a2, sp, 8
	l32i	a2, sp, 100
	s32i.n	a3, sp, 0
	s32i.n	a4, sp, 12
	s32i.n	a11, sp, 48
	s32i.n	a6, sp, 36
	s32i.n	a15, sp, 20
	s32i.n	a10, sp, 4
	s32i.n	a14, sp, 52
	s32i.n	a13, sp, 40
	s32i.n	a9, sp, 24
	s32i.n	a12, sp, 60
	s32i.n	a8, sp, 44
	s32i.n	a5, sp, 28
	mov.n	a4, sp
.LVL5:
	.loc 1 163 15 discriminator 3 view .LVU166
	movi.n	a3, 0x10
.LVL6:
.L4:
	.loc 1 167 9 is_stmt 1 discriminator 3 view .LVU167
	.loc 1 167 14 is_stmt 0 discriminator 3 view .LVU168
	l32i.n	a5, a2, 0
	l32i.n	a6, a4, 0
	addi.n	a4, a4, 4
	add.n	a5, a5, a6
	s32i.n	a5, a2, 0
	.loc 1 167 14 discriminator 3 view .LVU169
	addi.n	a2, a2, 4
	addi.n	a3, a3, -1
	bnez.n	a3, .L4
	.loc 1 168 1 view .LVU170
	retw.n
.LFE16:
	.size	salsa20_8, .-salsa20_8
	.section	.text.blockmix_salsa8,"ax",@progbits
	.align	4
	.type	blockmix_salsa8, @function
blockmix_salsa8:
.LVL7:
.LFB17:
	.loc 1 178 1 is_stmt 1 view -0
	.loc 1 178 1 is_stmt 0 view .LVU172
	entry	sp, 48
.LCFI1:
	.loc 1 179 5 is_stmt 1 view .LVU173
	.loc 1 182 5 view .LVU174
	slli	a9, a5, 7
	addi	a9, a9, -64
.LVL8:
.LBB18:
.LBI18:
	.loc 1 42 1 view .LVU175
.LBB19:
	.loc 1 44 5 view .LVU176
	.loc 1 47 5 view .LVU177
	.loc 1 47 5 is_stmt 0 view .LVU178
.LBE19:
.LBE18:
	.loc 1 182 5 view .LVU179
	movi.n	a6, 0
	movi.n	a7, 0x10
	loop	a7, .L9_LEND
.LVL9:
.L9:
.LBB21:
.LBB20:
	.loc 1 48 9 is_stmt 1 view .LVU180
	.loc 1 48 28 is_stmt 0 view .LVU181
	add.n	a8, a9, a6
	add.n	a8, a2, a8
	l32i.n	a10, a8, 0
	.loc 1 48 20 view .LVU182
	add.n	a8, a4, a6
	s32i.n	a10, a8, 0
	.loc 1 48 20 view .LVU183
	addi.n	a6, a6, 4
	.L9_LEND:
.LBE20:
.LBE21:
	.loc 1 186 23 view .LVU184
	slli	a6, a5, 1
	slli	a5, a5, 6
.LVL10:
	.loc 1 186 23 view .LVU185
	s32i.n	a6, sp, 0
	add.n	a5, a3, a5
	addi	a2, a2, 64
.LVL11:
	.loc 1 186 12 view .LVU186
	movi.n	a6, 0
	movi	a7, 0x80
	j	.L10
.LVL12:
.L15:
	.loc 1 188 9 is_stmt 1 discriminator 3 view .LVU187
	addi	a14, a2, -64
.LVL13:
.LBB22:
.LBI22:
	.loc 1 58 1 discriminator 3 view .LVU188
.LBB23:
	.loc 1 60 5 discriminator 3 view .LVU189
	.loc 1 63 5 discriminator 3 view .LVU190
	.loc 1 63 5 is_stmt 0 discriminator 3 view .LVU191
.LBE23:
.LBE22:
	.loc 1 186 5 discriminator 3 view .LVU192
	movi.n	a9, 0
	movi.n	a10, 0x10
	loop	a10, .L11_LEND
.LVL14:
.L11:
.LBB25:
.LBB24:
	.loc 1 64 9 is_stmt 1 view .LVU193
	add.n	a12, a4, a9
	.loc 1 64 29 is_stmt 0 view .LVU194
	add.n	a13, a14, a9
	.loc 1 64 20 view .LVU195
	l32i.n	a11, a12, 0
	l32i.n	a13, a13, 0
	addi.n	a9, a9, 4
	xor	a11, a11, a13
	s32i.n	a11, a12, 0
	.loc 1 64 20 view .LVU196
	.L11_LEND:
.LVL15:
	.loc 1 64 20 view .LVU197
.LBE24:
.LBE25:
	.loc 1 189 9 is_stmt 1 discriminator 3 view .LVU198
	mov.n	a10, a4
	call8	salsa20_8
.LVL16:
	.loc 1 193 9 discriminator 3 view .LVU199
	slli	a11, a6, 5
	add.n	a11, a3, a11
.LVL17:
.LBB26:
.LBI26:
	.loc 1 42 1 discriminator 3 view .LVU200
	.loc 1 42 1 is_stmt 0 discriminator 3 view .LVU201
.LBE26:
	.loc 1 189 9 discriminator 3 view .LVU202
	movi.n	a9, 0
	movi.n	a10, 0x10
	loop	a10, .L12_LEND
.LVL18:
.L12:
.LBB28:
.LBB27:
	.loc 1 48 9 is_stmt 1 view .LVU203
	.loc 1 48 28 is_stmt 0 view .LVU204
	add.n	a12, a4, a9
	l32i.n	a13, a12, 0
	.loc 1 48 20 view .LVU205
	add.n	a12, a11, a9
	s32i.n	a13, a12, 0
	.loc 1 48 20 view .LVU206
	addi.n	a9, a9, 4
	.L12_LEND:
.LVL19:
	.loc 1 48 20 view .LVU207
.LBE27:
.LBE28:
	.loc 1 196 9 is_stmt 1 discriminator 3 view .LVU208
.LBB29:
.LBI29:
	.loc 1 58 1 discriminator 3 view .LVU209
	.loc 1 58 1 is_stmt 0 discriminator 3 view .LVU210
.LBE29:
	.loc 1 196 62 discriminator 3 view .LVU211
	movi.n	a9, 0
	movi.n	a10, 0x10
	loop	a10, .L13_LEND
.LVL20:
.L13:
.LBB31:
.LBB30:
	.loc 1 64 9 is_stmt 1 view .LVU212
	add.n	a12, a4, a9
	.loc 1 64 29 is_stmt 0 view .LVU213
	add.n	a13, a2, a9
	.loc 1 64 20 view .LVU214
	l32i.n	a11, a12, 0
	l32i.n	a13, a13, 0
	addi.n	a9, a9, 4
	xor	a11, a11, a13
	s32i.n	a11, a12, 0
	.loc 1 64 20 view .LVU215
	.L13_LEND:
.LVL21:
	.loc 1 64 20 view .LVU216
.LBE30:
.LBE31:
	.loc 1 197 9 is_stmt 1 discriminator 3 view .LVU217
	mov.n	a10, a4
	call8	salsa20_8
.LVL22:
	.loc 1 201 9 discriminator 3 view .LVU218
.LBB32:
.LBI32:
	.loc 1 42 1 discriminator 3 view .LVU219
	.loc 1 42 1 is_stmt 0 discriminator 3 view .LVU220
.LBE32:
	.loc 1 201 39 discriminator 3 view .LVU221
	movi.n	a9, 0
	movi.n	a10, 0x10
	loop	a10, .L14_LEND
.LVL23:
.L14:
.LBB34:
.LBB33:
	.loc 1 48 9 is_stmt 1 view .LVU222
	.loc 1 48 28 is_stmt 0 view .LVU223
	add.n	a11, a4, a9
	l32i.n	a12, a11, 0
	.loc 1 48 20 view .LVU224
	add.n	a11, a5, a9
	s32i.n	a12, a11, 0
	.loc 1 48 20 view .LVU225
	addi.n	a9, a9, 4
	.L14_LEND:
.LVL24:
	.loc 1 48 20 view .LVU226
.LBE33:
.LBE34:
	.loc 1 186 30 discriminator 3 view .LVU227
	addi.n	a6, a6, 2
.LVL25:
	.loc 1 186 30 discriminator 3 view .LVU228
	addi	a5, a5, 64
	add.n	a2, a2, a7
.LVL26:
.L10:
	.loc 1 186 5 discriminator 1 view .LVU229
	l32i.n	a8, sp, 0
	bltu	a6, a8, .L15
	.loc 1 204 1 view .LVU230
	retw.n
.LFE17:
	.size	blockmix_salsa8, .-blockmix_salsa8
	.section	.text.escrypt_kdf_nosse,"ax",@progbits
	.literal_position
	.literal .LC1, 1073741823
	.literal .LC3, 33554431
	.literal .LC4, 16777215
	.literal .LC5, 1, 0
	.align	4
	.global	escrypt_kdf_nosse
	.type	escrypt_kdf_nosse, @function
escrypt_kdf_nosse:
.LVL27:
.LFB20:
	.loc 1 296 1 is_stmt 1 view -0
	.loc 1 296 1 is_stmt 0 view .LVU232
	entry	sp, 144
.LCFI2:
	.loc 1 297 5 is_stmt 1 view .LVU233
	.loc 1 298 5 view .LVU234
	.loc 1 299 5 view .LVU235
	.loc 1 300 5 view .LVU236
	.loc 1 296 1 is_stmt 0 view .LVU237
	s32i	a3, sp, 68
	l32i	a3, sp, 148
.LVL28:
	.loc 1 296 1 view .LVU238
	s32i	a4, sp, 72
	s32i.n	a3, sp, 32
	.loc 1 310 23 view .LVU239
	l32i	a4, sp, 156
.LVL29:
	.loc 1 296 1 view .LVU240
	l32i	a3, sp, 152
.LVL30:
	.loc 1 301 5 is_stmt 1 view .LVU241
	.loc 1 310 5 view .LVU242
	.loc 1 296 1 is_stmt 0 view .LVU243
	s32i.n	a5, sp, 36
	.loc 1 310 23 view .LVU244
	mull	a9, a3, a4
	muluh	a4, a3, a4
	.loc 1 296 1 view .LVU245
	l32i	a7, sp, 144
	.loc 1 310 8 view .LVU246
	bnez.n	a4, .L91
	l32r	a4, .LC1
	bgeu	a4, a9, .L85
	.loc 1 311 8 is_stmt 1 view .LVU247
	j	.L91
.L85:
	.loc 1 314 5 view .LVU248
	.loc 1 314 8 is_stmt 0 view .LVU249
	l32i.n	a5, sp, 32
.LVL31:
	.loc 1 314 8 view .LVU250
	beqz.n	a5, .L86
.L91:
	.loc 1 315 8 is_stmt 1 view .LVU251
	.loc 1 315 10 is_stmt 0 view .LVU252
	call8	__errno
.LVL32:
	.loc 1 315 14 view .LVU253
	movi.n	a2, 0x1b
.LVL33:
	.loc 1 315 14 view .LVU254
	j	.L89
.LVL34:
.L86:
	.loc 1 318 5 is_stmt 1 view .LVU255
	.loc 1 318 18 is_stmt 0 view .LVU256
	addi.n	a8, a7, -1
	.loc 1 318 8 view .LVU257
	l32i.n	a5, sp, 32
	.loc 1 318 18 view .LVU258
	s32i.n	a8, sp, 60
	.loc 1 318 8 view .LVU259
	movi.n	a4, 1
	.loc 1 318 13 view .LVU260
	and	a8, a8, a7
	.loc 1 318 8 view .LVU261
	movnez	a5, a4, a8
	.loc 1 318 30 view .LVU262
	extui	a8, a5, 0, 8
	bnez.n	a8, .L64
	bltui	a7, 2, .L64
	.loc 1 322 5 is_stmt 1 view .LVU263
	.loc 1 322 11 is_stmt 0 view .LVU264
	l32i.n	a8, sp, 32
	moveqz	a8, a4, a3
	.loc 1 322 8 view .LVU265
	extui	a8, a8, 0, 8
	beqz.n	a8, .L87
	j	.L64
.L87:
	.loc 1 322 21 view .LVU266
	l32i	a8, sp, 156
	l32i.n	a5, sp, 32
	movnez	a4, a5, a8
	.loc 1 322 8 view .LVU267
	extui	a4, a4, 0, 8
	beqz.n	a4, .L32
.LVL35:
.L64:
	.loc 1 323 8 is_stmt 1 view .LVU268
	.loc 1 323 10 is_stmt 0 view .LVU269
	call8	__errno
.LVL36:
	.loc 1 323 14 view .LVU270
	movi.n	a2, 0x16
.LVL37:
	.loc 1 323 14 view .LVU271
	j	.L89
.LVL38:
.L32:
	.loc 1 326 5 is_stmt 1 view .LVU272
	.loc 1 326 28 is_stmt 0 view .LVU273
	l32r	a4, .LC3
	l32i	a5, sp, 156
	quou	a8, a4, a5
	.loc 1 326 8 view .LVU274
	bltu	a8, a3, .L90
	.loc 1 326 33 view .LVU275
	l32r	a8, .LC4
	bltu	a8, a3, .L90
	.loc 1 330 28 view .LVU276
	quou	a4, a4, a3
	.loc 1 328 29 view .LVU277
	bgeu	a4, a7, .L88
	.loc 1 331 8 is_stmt 1 view .LVU278
	j	.L90
.L88:
	.loc 1 336 5 view .LVU279
	.loc 1 337 12 is_stmt 0 view .LVU280
	mull	a8, a3, a7
	.loc 1 336 12 view .LVU281
	slli	a9, a9, 7
	.loc 1 337 12 view .LVU282
	slli	a5, a8, 7
	.loc 1 336 12 view .LVU283
	s32i.n	a9, sp, 40
.LVL39:
	.loc 1 337 5 is_stmt 1 view .LVU284
	.loc 1 338 5 view .LVU285
	.loc 1 338 10 is_stmt 0 view .LVU286
	add.n	a4, a9, a5
.LVL40:
	.loc 1 339 5 is_stmt 1 view .LVU287
	.loc 1 339 8 is_stmt 0 view .LVU288
	bgeu	a4, a5, .L39
	.loc 1 340 8 is_stmt 1 view .LVU289
	j	.L90
.L39:
	.loc 1 343 5 view .LVU290
	.loc 1 343 28 is_stmt 0 view .LVU291
	slli	a9, a3, 8
.LVL41:
	.loc 1 343 13 view .LVU292
	addi	a9, a9, 64
.LVL42:
	.loc 1 344 5 is_stmt 1 view .LVU293
	.loc 1 344 10 is_stmt 0 view .LVU294
	add.n	a4, a4, a9
.LVL43:
	.loc 1 345 5 is_stmt 1 view .LVU295
	.loc 1 345 8 is_stmt 0 view .LVU296
	bgeu	a4, a9, .L40
.LVL44:
.L90:
	.loc 1 346 8 is_stmt 1 view .LVU297
	.loc 1 346 10 is_stmt 0 view .LVU298
	call8	__errno
.LVL45:
	.loc 1 346 14 view .LVU299
	movi.n	a2, 0xc
.LVL46:
.L89:
	.loc 1 346 14 view .LVU300
	s32i.n	a2, a10, 0
.LVL47:
	.loc 1 347 9 is_stmt 1 view .LVU301
	j	.L44
.LVL48:
.L40:
	.loc 1 349 5 view .LVU302
	.loc 1 349 8 is_stmt 0 view .LVU303
	l32i.n	a9, a2, 8
.LVL49:
	.loc 1 349 8 view .LVU304
	bltu	a9, a4, .L41
.LVL50:
.L45:
	.loc 1 357 5 is_stmt 1 view .LVU305
	.loc 1 357 7 is_stmt 0 view .LVU306
	l32i.n	a2, a2, 4
.LVL51:
	.loc 1 362 5 view .LVU307
	l32i.n	a9, sp, 40
	.loc 1 357 7 view .LVU308
	s32i.n	a2, sp, 44
.LVL52:
	.loc 1 358 5 is_stmt 1 view .LVU309
	.loc 1 362 5 is_stmt 0 view .LVU310
	l32i.n	a4, sp, 44
.LVL53:
	.loc 1 358 7 view .LVU311
	l32i.n	a8, sp, 40
	.loc 1 362 5 view .LVU312
	l32r	a14, .LC5
	l32r	a15, .LC5+4
	l32i.n	a12, sp, 36
	l32i	a11, sp, 72
	l32i	a10, sp, 68
	.loc 1 358 7 view .LVU313
	add.n	a8, a2, a8
	.loc 1 362 5 view .LVU314
	s32i.n	a9, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a13, a6
	.loc 1 359 8 view .LVU315
	add.n	a2, a8, a5
.LVL54:
	.loc 1 358 7 view .LVU316
	s32i.n	a8, sp, 48
.LVL55:
	.loc 1 359 5 is_stmt 1 view .LVU317
	.loc 1 362 5 view .LVU318
	call8	PBKDF2_SHA256
.LVL56:
	.loc 1 365 5 view .LVU319
	.loc 1 365 5 is_stmt 0 view .LVU320
	slli	a4, a3, 7
.LVL57:
.LBB53:
.LBB54:
	.loc 1 237 24 view .LVU321
	slli	a5, a3, 5
.LVL58:
	.loc 1 237 24 view .LVU322
	l32i.n	a9, sp, 44
	.loc 1 230 15 view .LVU323
	add.n	a6, a2, a4
.LVL59:
	.loc 1 237 24 view .LVU324
	s32i	a5, sp, 64
.LBE54:
.LBE53:
	.loc 1 365 12 view .LVU325
	movi.n	a5, 0
	s32i.n	a9, sp, 36
.LVL60:
	.loc 1 365 12 view .LVU326
	s32i.n	a5, sp, 56
.LBB99:
.LBB97:
	.loc 1 231 15 view .LVU327
	add.n	a9, a6, a4
	addi	a5, a4, -64
	s32i.n	a9, sp, 52
.LBB55:
.LBB56:
	.loc 1 213 60 view .LVU328
	add.n	a9, a2, a5
.LBE56:
.LBE55:
.LBB61:
.LBB62:
	.loc 1 79 7 view .LVU329
	srli	a8, a4, 2
	s32i	a5, sp, 76
.LBE62:
.LBE61:
.LBB64:
.LBB57:
	.loc 1 213 60 view .LVU330
	s32i	a9, sp, 80
	j	.L42
.LVL61:
.L41:
	.loc 1 213 60 view .LVU331
.LBE57:
.LBE64:
.LBE97:
.LBE99:
	.loc 1 350 9 is_stmt 1 view .LVU332
	.loc 1 350 13 is_stmt 0 view .LVU333
	mov.n	a10, a2
	call8	free_region
.LVL62:
	.loc 1 350 12 view .LVU334
	beqz.n	a10, .L43
.LVL63:
.L44:
	.loc 1 351 20 view .LVU335
	movi.n	a2, -1
	j	.L21
.LVL64:
.L43:
	.loc 1 353 9 is_stmt 1 view .LVU336
	.loc 1 353 14 is_stmt 0 view .LVU337
	mov.n	a11, a4
	mov.n	a10, a2
	call8	alloc_region
.LVL65:
	.loc 1 353 12 view .LVU338
	bnez.n	a10, .L45
	j	.L44
.LVL66:
.L42:
	.loc 1 367 9 is_stmt 1 discriminator 3 view .LVU339
.LBB100:
.LBI53:
	.loc 1 227 1 discriminator 3 view .LVU340
.LBB98:
	.loc 1 229 5 discriminator 3 view .LVU341
	.loc 1 230 5 discriminator 3 view .LVU342
	.loc 1 231 5 discriminator 3 view .LVU343
	.loc 1 232 5 discriminator 3 view .LVU344
	.loc 1 233 5 discriminator 3 view .LVU345
	.loc 1 234 5 discriminator 3 view .LVU346
	.loc 1 237 5 discriminator 3 view .LVU347
	.loc 1 237 5 is_stmt 0 discriminator 3 view .LVU348
	l32i.n	a5, sp, 36
	.loc 1 231 15 discriminator 3 view .LVU349
	mov.n	a9, a2
	add.n	a10, a5, a4
	j	.L46
.LVL67:
.L47:
	.loc 1 238 9 is_stmt 1 view .LVU350
.LBB65:
.LBI65:
	.file 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 79 1 view .LVU351
.LBB66:
	.loc 2 82 5 view .LVU352
	.loc 2 83 5 view .LVU353
	l8ui	a12, a5, 0
	l8ui	a11, a5, 1
	s8i	a12, sp, 16
	s8i	a11, sp, 17
	l8ui	a12, a5, 2
	l8ui	a11, a5, 3
	s8i	a12, sp, 18
	s8i	a11, sp, 19
	.loc 2 84 5 view .LVU354
	.loc 2 84 12 is_stmt 0 view .LVU355
	l32i.n	a11, sp, 16
.LVL68:
	.loc 2 84 12 view .LVU356
	addi.n	a5, a5, 4
.LBE66:
.LBE65:
	.loc 1 238 14 view .LVU357
	s32i.n	a11, a9, 0
	addi.n	a9, a9, 4
.L46:
	.loc 1 237 5 view .LVU358
	bne	a10, a5, .L47
	.loc 1 241 12 view .LVU359
	movi.n	a14, 0
	l32i.n	a9, sp, 48
	mov.n	a15, a14
.L51:
.LVL69:
	.loc 1 243 9 is_stmt 1 view .LVU360
.LBB67:
.LBI61:
	.loc 1 74 1 view .LVU361
.LBB63:
	.loc 1 76 5 view .LVU362
	.loc 1 79 5 view .LVU363
	.loc 1 80 5 view .LVU364
	.loc 1 80 12 is_stmt 0 view .LVU365
	mov.n	a10, a8
	movi.n	a11, 1
	movi.n	a12, 0
	moveqz	a10, a11, a8
	loop	a10, .L48_LEND
.LVL70:
.L48:
	.loc 1 81 9 is_stmt 1 view .LVU366
	slli	a11, a12, 2
	.loc 1 81 28 is_stmt 0 view .LVU367
	add.n	a13, a2, a11
	l32i.n	a13, a13, 0
	.loc 1 81 20 view .LVU368
	add.n	a11, a9, a11
	s32i.n	a13, a11, 0
	.loc 1 80 24 view .LVU369
	addi.n	a12, a12, 1
.LVL71:
	.loc 1 80 24 view .LVU370
	.L48_LEND:
.LVL72:
	.loc 1 80 24 view .LVU371
.LBE63:
.LBE67:
	.loc 1 247 9 is_stmt 1 view .LVU372
	l32i.n	a12, sp, 52
	mov.n	a11, a6
	mov.n	a10, a2
	mov.n	a13, a3
	s32i	a8, sp, 88
	s32i	a9, sp, 92
	s32i	a14, sp, 96
	s32i	a15, sp, 84
	call8	blockmix_salsa8
.LVL73:
	.loc 1 250 9 view .LVU373
.LBB68:
.LBB69:
	.loc 1 80 12 is_stmt 0 view .LVU374
	l32i	a8, sp, 88
	l32i	a9, sp, 92
	mov.n	a10, a8
	movi.n	a11, 1
	l32i	a15, sp, 84
	l32i	a14, sp, 96
	add.n	a9, a4, a9
.LVL74:
	.loc 1 80 12 view .LVU375
.LBE69:
.LBI68:
	.loc 1 74 1 is_stmt 1 view .LVU376
.LBB70:
	.loc 1 76 5 view .LVU377
	.loc 1 79 5 view .LVU378
	.loc 1 80 5 view .LVU379
	.loc 1 80 12 is_stmt 0 view .LVU380
	movi.n	a12, 0
	moveqz	a10, a11, a8
	loop	a10, .L49_LEND
.LVL75:
.L49:
	.loc 1 81 9 is_stmt 1 view .LVU381
	slli	a11, a12, 2
	.loc 1 81 28 is_stmt 0 view .LVU382
	add.n	a13, a6, a11
	l32i.n	a13, a13, 0
	.loc 1 81 20 view .LVU383
	add.n	a11, a9, a11
	s32i.n	a13, a11, 0
	.loc 1 80 24 view .LVU384
	addi.n	a12, a12, 1
.LVL76:
	.loc 1 80 24 view .LVU385
	.L49_LEND:
.LVL77:
	.loc 1 80 24 view .LVU386
.LBE70:
.LBE68:
	.loc 1 254 9 is_stmt 1 view .LVU387
	l32i.n	a12, sp, 52
	mov.n	a11, a2
	mov.n	a10, a6
	mov.n	a13, a3
	s32i	a8, sp, 88
	s32i	a9, sp, 92
	s32i	a14, sp, 96
	s32i	a15, sp, 84
	call8	blockmix_salsa8
.LVL78:
	.loc 1 241 26 is_stmt 0 view .LVU388
	l32i	a14, sp, 96
	movi.n	a10, 1
	addi.n	a11, a14, 2
	l32i	a8, sp, 88
	l32i	a9, sp, 92
	l32i	a15, sp, 84
	bltu	a11, a14, .L50
	movi.n	a10, 0
.L50:
	add.n	a10, a10, a15
	mov.n	a15, a10
.LVL79:
	.loc 1 241 5 view .LVU389
	l32i.n	a10, sp, 32
.LVL80:
	.loc 1 241 26 view .LVU390
	mov.n	a14, a11
	add.n	a9, a4, a9
	.loc 1 241 5 view .LVU391
	bne	a10, a15, .L65
	.loc 1 241 5 view .LVU392
	bltu	a11, a7, .L51
.L65:
	.loc 1 258 12 view .LVU393
	movi.n	a9, 0
	mov.n	a14, a9
.LVL81:
.L58:
	.loc 1 260 9 is_stmt 1 view .LVU394
.LBB71:
.LBI55:
	.loc 1 211 1 view .LVU395
.LBB58:
	.loc 1 213 5 view .LVU396
	.loc 1 215 5 view .LVU397
	.loc 1 215 5 is_stmt 0 view .LVU398
.LBE58:
.LBE71:
	.loc 1 263 9 is_stmt 1 view .LVU399
.LBB72:
.LBB59:
	.loc 1 215 41 is_stmt 0 view .LVU400
	l32i	a11, sp, 80
.LBE59:
.LBE72:
	.loc 1 260 11 view .LVU401
	l32i.n	a13, sp, 60
.LBB73:
.LBB60:
	.loc 1 215 41 view .LVU402
	l32i.n	a12, a11, 0
.LBE60:
.LBE73:
.LBB74:
.LBB75:
	.loc 1 98 12 view .LVU403
	mov.n	a10, a8
.LBE75:
.LBE74:
	.loc 1 260 11 view .LVU404
	and	a12, a12, a13
	.loc 1 263 61 view .LVU405
	mull	a12, a4, a12
	movi.n	a11, 1
	s32i	a12, sp, 100
.LVL82:
.LBB78:
.LBI74:
	.loc 1 92 1 is_stmt 1 view .LVU406
.LBB76:
	.loc 1 94 5 view .LVU407
	.loc 1 97 5 view .LVU408
	.loc 1 98 5 view .LVU409
	.loc 1 98 5 is_stmt 0 view .LVU410
.LBE76:
.LBE78:
	.loc 1 263 61 view .LVU411
	mov.n	a13, a2
.LBB79:
.LBB77:
	.loc 1 98 12 view .LVU412
	movi.n	a15, 0
	moveqz	a10, a11, a8
	loop	a10, .L54_LEND
.LVL83:
.L54:
	.loc 1 99 9 is_stmt 1 view .LVU413
	.loc 1 99 29 is_stmt 0 view .LVU414
	l32i	a12, sp, 100
	slli	a11, a15, 2
	add.n	a11, a11, a12
	l32i.n	a12, sp, 48
	.loc 1 98 24 view .LVU415
	addi.n	a15, a15, 1
.LVL84:
	.loc 1 99 29 view .LVU416
	add.n	a11, a12, a11
	.loc 1 99 20 view .LVU417
	l32i.n	a11, a11, 0
	l32i.n	a12, a13, 0
	xor	a11, a12, a11
	s32i.n	a11, a13, 0
	addi.n	a13, a13, 4
	.L54_LEND:
.LVL85:
	.loc 1 99 20 view .LVU418
.LBE77:
.LBE79:
	.loc 1 265 9 is_stmt 1 view .LVU419
	l32i.n	a12, sp, 52
	mov.n	a13, a3
	mov.n	a11, a6
	mov.n	a10, a2
	s32i	a8, sp, 88
	s32i	a9, sp, 92
	s32i	a14, sp, 96
	call8	blockmix_salsa8
.LVL86:
	.loc 1 268 9 view .LVU420
.LBB80:
.LBI80:
	.loc 1 211 1 view .LVU421
.LBB81:
	.loc 1 213 5 view .LVU422
	.loc 1 213 60 is_stmt 0 view .LVU423
	l32i	a11, sp, 76
.LBE81:
.LBE80:
.LBB85:
.LBB86:
	.loc 1 98 12 view .LVU424
	l32i	a8, sp, 88
.LBE86:
.LBE85:
.LBB89:
.LBB82:
	.loc 1 213 60 view .LVU425
	add.n	a10, a6, a11
.LVL87:
	.loc 1 215 5 is_stmt 1 view .LVU426
	.loc 1 215 5 is_stmt 0 view .LVU427
.LBE82:
.LBE89:
	.loc 1 271 9 is_stmt 1 view .LVU428
.LBB90:
.LBB83:
	.loc 1 215 41 is_stmt 0 view .LVU429
	l32i.n	a12, a10, 0
.LBE83:
.LBE90:
	.loc 1 268 11 view .LVU430
	l32i.n	a10, sp, 60
	movi.n	a11, 1
	and	a12, a12, a10
	.loc 1 271 61 view .LVU431
	mull	a12, a4, a12
.LBB91:
.LBB87:
	.loc 1 98 12 view .LVU432
	mov.n	a10, a8
	l32i	a14, sp, 96
	l32i	a9, sp, 92
.LBE87:
.LBE91:
.LBB92:
.LBB84:
	.loc 1 213 60 view .LVU433
	mov.n	a13, a6
.LBE84:
.LBE92:
	.loc 1 271 61 view .LVU434
	s32i	a12, sp, 100
.LVL88:
.LBB93:
.LBI85:
	.loc 1 92 1 is_stmt 1 view .LVU435
.LBB88:
	.loc 1 94 5 view .LVU436
	.loc 1 97 5 view .LVU437
	.loc 1 98 5 view .LVU438
	.loc 1 98 12 is_stmt 0 view .LVU439
	movi.n	a15, 0
	moveqz	a10, a11, a8
	loop	a10, .L56_LEND
.LVL89:
.L56:
	.loc 1 99 9 is_stmt 1 view .LVU440
	.loc 1 99 29 is_stmt 0 view .LVU441
	l32i	a12, sp, 100
	slli	a11, a15, 2
	add.n	a11, a11, a12
	l32i.n	a12, sp, 48
	.loc 1 98 24 view .LVU442
	addi.n	a15, a15, 1
.LVL90:
	.loc 1 99 29 view .LVU443
	add.n	a11, a12, a11
	.loc 1 99 20 view .LVU444
	l32i.n	a11, a11, 0
	l32i.n	a12, a13, 0
	xor	a11, a12, a11
	s32i.n	a11, a13, 0
	addi.n	a13, a13, 4
	.L56_LEND:
.LVL91:
	.loc 1 99 20 view .LVU445
.LBE88:
.LBE93:
	.loc 1 273 9 is_stmt 1 view .LVU446
	l32i.n	a12, sp, 52
	mov.n	a11, a2
	mov.n	a10, a6
	mov.n	a13, a3
	s32i	a8, sp, 88
	s32i	a9, sp, 92
	s32i	a14, sp, 96
	call8	blockmix_salsa8
.LVL92:
	.loc 1 258 26 is_stmt 0 view .LVU447
	l32i	a9, sp, 92
	movi.n	a10, 1
	addi.n	a11, a9, 2
	l32i	a8, sp, 88
	l32i	a14, sp, 96
	bltu	a11, a9, .L57
	movi.n	a10, 0
.L57:
	.loc 1 258 5 view .LVU448
	l32i.n	a13, sp, 32
	.loc 1 258 26 view .LVU449
	add.n	a10, a10, a14
	mov.n	a9, a11
	mov.n	a14, a10
.LVL93:
	.loc 1 258 5 view .LVU450
	bne	a13, a10, .L66
	.loc 1 258 5 view .LVU451
	bltu	a11, a7, .L58
.L66:
	.loc 1 276 12 view .LVU452
	l32i	a11, sp, 64
	movi.n	a9, 1
.LVL94:
	.loc 1 276 12 view .LVU453
	movi.n	a12, 0
	moveqz	a11, a9, a11
	loop	a11, .L60_LEND
.LVL95:
.L60:
	.loc 1 277 9 is_stmt 1 view .LVU454
	slli	a9, a12, 2
.LVL96:
	.loc 1 277 9 is_stmt 0 view .LVU455
	add.n	a10, a2, a9
.LBB94:
.LBB95:
	.loc 2 99 5 view .LVU456
	l32i.n	a13, sp, 36
	l32i.n	a10, a10, 0
	add.n	a9, a13, a9
.LVL97:
	.loc 2 99 5 view .LVU457
	extui	a14, a10, 8, 8
	extui	a13, a10, 16, 8
	s32i.n	a10, sp, 16
.LVL98:
	.loc 2 99 5 view .LVU458
.LBE95:
.LBI94:
	.loc 2 96 1 is_stmt 1 view .LVU459
.LBB96:
	.loc 2 99 5 view .LVU460
	s8i	a10, a9, 0
	extui	a10, a10, 24, 8
.LVL99:
	.loc 2 99 5 is_stmt 0 view .LVU461
	s8i	a14, a9, 1
	s8i	a13, a9, 2
	s8i	a10, a9, 3
.LVL100:
	.loc 2 99 5 view .LVU462
.LBE96:
.LBE94:
	.loc 1 276 30 view .LVU463
	addi.n	a12, a12, 1
.LVL101:
	.loc 1 276 30 view .LVU464
	.L60_LEND:
.LVL102:
	.loc 1 276 30 view .LVU465
.LBE98:
.LBE100:
	.loc 1 365 25 discriminator 3 view .LVU466
	l32i.n	a9, sp, 56
	s32i.n	a5, sp, 36
	addi.n	a9, a9, 1
	.loc 1 365 5 discriminator 3 view .LVU467
	l32i	a5, sp, 156
	.loc 1 365 25 discriminator 3 view .LVU468
	s32i.n	a9, sp, 56
.LVL103:
	.loc 1 365 5 discriminator 3 view .LVU469
	bne	a5, a9, .L42
	.loc 1 371 5 is_stmt 1 view .LVU470
	l32i	a2, sp, 164
.LVL104:
	.loc 1 371 5 is_stmt 0 view .LVU471
	l32r	a14, .LC5
	s32i.n	a2, sp, 4
	l32i	a2, sp, 160
	l32r	a15, .LC5+4
	l32i.n	a13, sp, 40
	l32i.n	a12, sp, 44
	l32i	a11, sp, 72
	l32i	a10, sp, 68
	s32i.n	a2, sp, 0
	call8	PBKDF2_SHA256
.LVL105:
	.loc 1 374 5 is_stmt 1 view .LVU472
	.loc 1 374 12 is_stmt 0 view .LVU473
	movi.n	a2, 0
.LVL106:
.L21:
	.loc 1 375 1 view .LVU474
	retw.n
.LFE20:
	.size	escrypt_kdf_nosse, .-escrypt_kdf_nosse
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/../crypto_scrypt.h"
	.file 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/../pbkdf2-sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0xc
	.4byte	.LASF165
	.4byte	.LASF166
	.4byte	.Ldebug_ranges0+0x178
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4f
	.byte	0x16
	.4byte	0x38
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.4byte	0x86
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xe8
	.byte	0x16
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0x99
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xd0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x59
	.4byte	0x10f
	.uleb128 0x9
	.4byte	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x133
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x10f
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xa5
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xd
	.byte	0x4
	.4byte	0x15a
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0xe
	.4byte	0x15a
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x14d
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1cc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x172
	.uleb128 0x8
	.4byte	0x166
	.4byte	0x1e2
	.uleb128 0x9
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x265
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2aa
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2aa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2aa
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x166
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x166
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14b
	.4byte	0x2ba
	.uleb128 0x9
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x2fc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x2fc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x302
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x319
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0x8
	.4byte	0x312
	.4byte	0x312
	.uleb128 0x9
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x318
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x265
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x347
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x347
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x59
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c0
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x347
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x60
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x60
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x31f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x524
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x34d
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x524
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x76a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x76a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x76a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x154
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8d2
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8d8
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8e9
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x154
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ef
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8f5
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x154
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x906
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2fc
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2ba
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x72b
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x76a
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x912
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x154
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x66d
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x347
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x60
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x60
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x31f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x524
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x14b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x68b
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6ba
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6de
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x6f8
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x31f
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x347
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x6fe
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x70e
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x31f
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xb8
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x13f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x133
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x68b
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0x154
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x66d
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6af
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0x6af
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x161
	.uleb128 0xe
	.4byte	0x6af
	.uleb128 0xd
	.byte	0x4
	.4byte	0x691
	.uleb128 0x17
	.4byte	0xc4
	.4byte	0x6de
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.uleb128 0x18
	.4byte	0xc4
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6c0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6f8
	.uleb128 0x18
	.4byte	0x524
	.uleb128 0x18
	.4byte	0x14b
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x8
	.4byte	0x59
	.4byte	0x70e
	.uleb128 0x9
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x59
	.4byte	0x71e
	.uleb128 0x9
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52a
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x764
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x764
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x76a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x72b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x71e
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7b7
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7b7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7b7
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3f
	.4byte	0x7c7
	.uleb128 0x9
	.4byte	0x38
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x80e
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1cc
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x80e
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8bd
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x154
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x133
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x133
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x133
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8bd
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x133
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x133
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x133
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x133
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x133
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x15a
	.4byte	0x8cd
	.uleb128 0x9
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF167
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8cd
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7c7
	.uleb128 0x1a
	.4byte	0x8e9
	.uleb128 0x18
	.4byte	0x524
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8de
	.uleb128 0xd
	.byte	0x4
	.4byte	0x770
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x1a
	.4byte	0x906
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x90c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8fb
	.uleb128 0xd
	.byte	0x4
	.4byte	0x814
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x524
	.uleb128 0x8
	.4byte	0x6b5
	.4byte	0x957
	.uleb128 0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x94c
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x8
	.byte	0x14
	.byte	0x1b
	.4byte	0x957
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x8
	.byte	0x15
	.byte	0xc
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x9
	.byte	0x18
	.byte	0x13
	.4byte	0x4d
	.uleb128 0xe
	.4byte	0x974
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.uleb128 0xe
	.4byte	0x985
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.4byte	0x7a
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x9
	.byte	0x52
	.byte	0x15
	.4byte	0x8d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9b4
	.uleb128 0x1e
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x154
	.uleb128 0xa
	.byte	0xc
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.4byte	0x9f2
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xb
	.byte	0x35
	.byte	0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xb
	.byte	0x35
	.byte	0x13
	.4byte	0x14b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xb
	.byte	0x36
	.byte	0xc
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xb
	.byte	0x37
	.byte	0x3
	.4byte	0x9c1
	.uleb128 0x6
	.byte	0x40
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0xa1c
	.uleb128 0x1f
	.string	"d"
	.byte	0xb
	.byte	0x3a
	.byte	0xe
	.4byte	0xa1c
	.uleb128 0x1f
	.string	"w"
	.byte	0xb
	.byte	0x3b
	.byte	0xe
	.4byte	0xa2c
	.byte	0
	.uleb128 0x8
	.4byte	0x996
	.4byte	0xa2c
	.uleb128 0x9
	.4byte	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x985
	.4byte	0xa3c
	.uleb128 0x9
	.4byte	0x38
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xb
	.byte	0x3c
	.byte	0x3
	.4byte	0x9fe
	.uleb128 0xe
	.4byte	0xa3c
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xb
	.byte	0x3e
	.byte	0x1a
	.4byte	0x9f2
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa4d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x980
	.uleb128 0xd
	.byte	0x4
	.4byte	0x974
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x124
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1014
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x124
	.byte	0x24
	.4byte	0xa59
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x124
	.byte	0x3a
	.4byte	0xa5f
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x125
	.byte	0x1a
	.4byte	0x2c
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x125
	.byte	0x34
	.4byte	0xa5f
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x125
	.byte	0x41
	.4byte	0x2c
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x22
	.string	"N"
	.byte	0x1
	.2byte	0x126
	.byte	0x1c
	.4byte	0x996
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"_r"
	.byte	0x1
	.2byte	0x126
	.byte	0x28
	.4byte	0x985
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x23
	.string	"_p"
	.byte	0x1
	.2byte	0x126
	.byte	0x35
	.4byte	0x985
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x126
	.byte	0x42
	.4byte	0xa65
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x127
	.byte	0x1a
	.4byte	0x2c
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x24
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x129
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x24
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x129
	.byte	0x14
	.4byte	0x2c
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x24
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x129
	.byte	0x1c
	.4byte	0x2c
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x129
	.byte	0x25
	.4byte	0x2c
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x25
	.string	"B"
	.byte	0x1
	.2byte	0x12a
	.byte	0xf
	.4byte	0xa65
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x25
	.string	"V"
	.byte	0x1
	.2byte	0x12b
	.byte	0xf
	.4byte	0x1014
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x25
	.string	"XY"
	.byte	0x1
	.2byte	0x12b
	.byte	0x13
	.4byte	0x1014
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.2byte	0x12c
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x12c
	.byte	0x14
	.4byte	0x2c
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x12d
	.byte	0xe
	.4byte	0x985
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x26
	.4byte	0x101a
	.4byte	.LBI53
	.byte	.LVU340
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x16f
	.byte	0x9
	.4byte	0xf55
	.uleb128 0x27
	.4byte	0x104f
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x28
	.4byte	0x1045
	.uleb128 0x28
	.4byte	0x103b
	.uleb128 0x28
	.4byte	0x1031
	.uleb128 0x27
	.4byte	0x1027
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x2a
	.4byte	0x105a
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x2a
	.4byte	0x1064
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x2b
	.4byte	0x106e
	.uleb128 0x2
	.byte	0x71
	.sleb128 52
	.uleb128 0x2a
	.4byte	0x1078
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x2c
	.4byte	0x1082
	.uleb128 0x2a
	.4byte	0x108c
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x26
	.4byte	0x1097
	.4byte	.LBI55
	.byte	.LVU395
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x104
	.byte	0xd
	.4byte	0xcd2
	.uleb128 0x28
	.4byte	0x10b2
	.uleb128 0x27
	.4byte	0x10a8
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x2a
	.4byte	0x10bc
	.4byte	.LLST46
	.4byte	.LVUS46
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x1389
	.4byte	.LBI61
	.byte	.LVU361
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xf3
	.byte	0x9
	.4byte	0xd17
	.uleb128 0x28
	.4byte	0x13ae
	.uleb128 0x28
	.4byte	0x13a2
	.uleb128 0x27
	.4byte	0x1396
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xe0
	.uleb128 0x2a
	.4byte	0x13ba
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x2c
	.4byte	0x13c4
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x1453
	.4byte	.LBI65
	.byte	.LVU351
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.byte	0xee
	.byte	0x10
	.4byte	0xd51
	.uleb128 0x27
	.4byte	0x1464
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x2f
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x2b
	.4byte	0x1470
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x1389
	.4byte	.LBI68
	.byte	.LVU376
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0xfa
	.byte	0x9
	.4byte	0xda2
	.uleb128 0x28
	.4byte	0x13ae
	.uleb128 0x27
	.4byte	0x13a2
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x27
	.4byte	0x1396
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x2a
	.4byte	0x13ba
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x2c
	.4byte	0x13c4
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x1337
	.4byte	.LBI74
	.byte	.LVU406
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x107
	.byte	0x9
	.4byte	0xdf0
	.uleb128 0x28
	.4byte	0x135c
	.uleb128 0x28
	.4byte	0x1350
	.uleb128 0x27
	.4byte	0x1344
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x2a
	.4byte	0x1368
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x2a
	.4byte	0x1372
	.4byte	.LLST55
	.4byte	.LVUS55
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x1097
	.4byte	.LBI80
	.byte	.LVU421
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x10c
	.byte	0xd
	.4byte	0xe34
	.uleb128 0x27
	.4byte	0x10b2
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x27
	.4byte	0x10a8
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x130
	.uleb128 0x2a
	.4byte	0x10bc
	.4byte	.LLST58
	.4byte	.LVUS58
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x1337
	.4byte	.LBI85
	.byte	.LVU435
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x10f
	.byte	0x9
	.4byte	0xe82
	.uleb128 0x28
	.4byte	0x135c
	.uleb128 0x28
	.4byte	0x1350
	.uleb128 0x27
	.4byte	0x1344
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x158
	.uleb128 0x2a
	.4byte	0x1368
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x2a
	.4byte	0x1372
	.4byte	.LLST61
	.4byte	.LVUS61
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x142f
	.4byte	.LBI94
	.byte	.LVU459
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x115
	.byte	0x9
	.4byte	0xeb7
	.uleb128 0x27
	.4byte	0x1448
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x27
	.4byte	0x143c
	.4byte	.LLST63
	.4byte	.LVUS63
	.byte	0
	.uleb128 0x31
	.4byte	.LVL73
	.4byte	0x10cd
	.4byte	0xedf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL78
	.4byte	0x10cd
	.4byte	0xf07
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0x10cd
	.4byte	0xf2f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL92
	.4byte	0x10cd
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL32
	.4byte	0x147b
	.uleb128 0x34
	.4byte	.LVL36
	.4byte	0x147b
	.uleb128 0x34
	.4byte	.LVL45
	.4byte	0x147b
	.uleb128 0x31
	.4byte	.LVL56
	.4byte	0x1487
	.4byte	0xfac
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0x1493
	.4byte	0xfc0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL65
	.4byte	0x149f
	.4byte	0xfda
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL105
	.4byte	0x1487
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x985
	.uleb128 0x35
	.4byte	.LASF151
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.byte	0x1
	.4byte	0x1097
	.uleb128 0x36
	.string	"B"
	.byte	0x1
	.byte	0xe3
	.byte	0xf
	.4byte	0xa65
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.byte	0xe3
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x36
	.string	"N"
	.byte	0x1
	.byte	0xe3
	.byte	0x25
	.4byte	0x996
	.uleb128 0x36
	.string	"V"
	.byte	0x1
	.byte	0xe3
	.byte	0x32
	.4byte	0x1014
	.uleb128 0x36
	.string	"XY"
	.byte	0x1
	.byte	0xe3
	.byte	0x3f
	.4byte	0x1014
	.uleb128 0x37
	.string	"X"
	.byte	0x1
	.byte	0xe5
	.byte	0xf
	.4byte	0x1014
	.uleb128 0x37
	.string	"Y"
	.byte	0x1
	.byte	0xe6
	.byte	0xf
	.4byte	0x1014
	.uleb128 0x37
	.string	"Z"
	.byte	0x1
	.byte	0xe7
	.byte	0xf
	.4byte	0x1014
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.byte	0xe
	.4byte	0x996
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.byte	0xe9
	.byte	0xe
	.4byte	0x996
	.uleb128 0x37
	.string	"k"
	.byte	0x1
	.byte	0xea
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.uleb128 0x38
	.4byte	.LASF158
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.4byte	0x996
	.byte	0x3
	.4byte	0x10c7
	.uleb128 0x36
	.string	"B"
	.byte	0x1
	.byte	0xd3
	.byte	0x18
	.4byte	0x9ae
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.byte	0x22
	.4byte	0x2c
	.uleb128 0x37
	.string	"X"
	.byte	0x1
	.byte	0xd5
	.byte	0x15
	.4byte	0x10c7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x991
	.uleb128 0x39
	.4byte	.LASF149
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a5
	.uleb128 0x3a
	.string	"Bin"
	.byte	0x1
	.byte	0xb1
	.byte	0x21
	.4byte	0x10c7
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3b
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb1
	.byte	0x30
	.4byte	0x1014
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"X"
	.byte	0x1
	.byte	0xb1
	.byte	0x40
	.4byte	0x1014
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.byte	0x4a
	.4byte	0x2c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3d
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2d
	.4byte	0x13ff
	.4byte	.LBI18
	.byte	.LVU175
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0x1178
	.uleb128 0x27
	.4byte	0x1418
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x27
	.4byte	0x140c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.4byte	0x1424
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x13cf
	.4byte	.LBI22
	.byte	.LVU188
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.4byte	0x11b3
	.uleb128 0x27
	.4byte	0x13e8
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x28
	.4byte	0x13dc
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.4byte	0x13f4
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x13ff
	.4byte	.LBI26
	.byte	.LVU200
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xc1
	.byte	0x9
	.4byte	0x11fa
	.uleb128 0x27
	.4byte	0x1418
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x27
	.4byte	0x140c
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2f
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2a
	.4byte	0x1424
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x13cf
	.4byte	.LBI29
	.byte	.LVU209
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xc4
	.byte	0x9
	.4byte	0x1239
	.uleb128 0x27
	.4byte	0x13e8
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x28
	.4byte	0x13dc
	.uleb128 0x2f
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2a
	.4byte	0x13f4
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x13ff
	.4byte	.LBI32
	.byte	.LVU219
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xc9
	.byte	0x9
	.4byte	0x1280
	.uleb128 0x27
	.4byte	0x1418
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x27
	.4byte	0x140c
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2a
	.4byte	0x1424
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL16
	.4byte	0x12a5
	.4byte	0x1294
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL22
	.4byte	0x12a5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF150
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1337
	.uleb128 0x3a
	.string	"B"
	.byte	0x1
	.byte	0x72
	.byte	0x14
	.4byte	0x1014
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3e
	.string	"X"
	.byte	0x1
	.byte	0x74
	.byte	0x15
	.4byte	0xa3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3d
	.string	"x"
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.4byte	0x1014
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x2c
	.uleb128 0x3f
	.4byte	0x13ff
	.4byte	.LBI4
	.byte	.LVU6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x78
	.byte	0x5
	.uleb128 0x27
	.4byte	0x1418
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x27
	.4byte	0x140c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.4byte	0x1424
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF152
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3
	.4byte	0x137d
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.4byte	0x137d
	.uleb128 0x36
	.string	"src"
	.byte	0x1
	.byte	0x5c
	.byte	0x36
	.4byte	0x1383
	.uleb128 0x36
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.byte	0x42
	.4byte	0x2c
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.4byte	0x2c
	.uleb128 0x37
	.string	"L"
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa3c
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa48
	.uleb128 0x35
	.4byte	.LASF154
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.4byte	0x13cf
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x1
	.byte	0x4a
	.byte	0x19
	.4byte	0x137d
	.uleb128 0x36
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.byte	0x36
	.4byte	0x1383
	.uleb128 0x36
	.string	"len"
	.byte	0x1
	.byte	0x4a
	.byte	0x42
	.4byte	0x2c
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.byte	0xc
	.4byte	0x2c
	.uleb128 0x37
	.string	"L"
	.byte	0x1
	.byte	0x4c
	.byte	0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x35
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.byte	0x3
	.4byte	0x13ff
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x1
	.byte	0x3a
	.byte	0x1c
	.4byte	0x137d
	.uleb128 0x36
	.string	"src"
	.byte	0x1
	.byte	0x3a
	.byte	0x39
	.4byte	0x1383
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x35
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.byte	0x3
	.4byte	0x142f
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x1
	.byte	0x2a
	.byte	0x1c
	.4byte	0x137d
	.uleb128 0x36
	.string	"src"
	.byte	0x1
	.byte	0x2a
	.byte	0x39
	.4byte	0x1383
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x35
	.4byte	.LASF157
	.byte	0x2
	.byte	0x60
	.byte	0x1
	.byte	0x3
	.4byte	0x1453
	.uleb128 0x36
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.byte	0x14
	.4byte	0xa65
	.uleb128 0x36
	.string	"w"
	.byte	0x2
	.byte	0x60
	.byte	0x25
	.4byte	0x985
	.byte	0
	.uleb128 0x38
	.4byte	.LASF159
	.byte	0x2
	.byte	0x4f
	.byte	0x1
	.4byte	0x985
	.byte	0x3
	.4byte	0x147b
	.uleb128 0x36
	.string	"src"
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0xa5f
	.uleb128 0x37
	.string	"w"
	.byte	0x2
	.byte	0x52
	.byte	0xe
	.4byte	0x985
	.byte	0
	.uleb128 0x41
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x8
	.byte	0xf
	.byte	0xd
	.uleb128 0x41
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xc
	.byte	0x2a
	.byte	0x6
	.uleb128 0x41
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xb
	.byte	0x45
	.byte	0xc
	.uleb128 0x41
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xb
	.byte	0x44
	.byte	0xe
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
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 0
.LLST21:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 0
.LLST22:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST23:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 0
.LLST24:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL66
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 0
.LLST25:
	.4byte	.LVL27
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST26:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL35
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST27:
	.4byte	.LVL27
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST28:
	.4byte	.LVL27
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU284
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU297
	.uleb128 .LVU302
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST29:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU285
	.uleb128 .LVU297
	.uleb128 .LVU302
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU474
.LLST30:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66
	.4byte	.LVL106
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU293
	.uleb128 .LVU297
	.uleb128 .LVU302
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST31:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU287
	.uleb128 .LVU297
	.uleb128 .LVU302
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU474
.LLST32:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66
	.4byte	.LVL106
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU309
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU474
.LLST33:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL66
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU474
.LLST34:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56-1
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL66
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU318
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU471
	.uleb128 .LVU471
	.uleb128 .LVU474
.LLST35:
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU241
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 0
.LLST36:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL35
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU241
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU474
.LLST37:
	.4byte	.LVL30
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL48
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL64
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU320
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 .LVU472
	.uleb128 .LVU472
	.uleb128 .LVU474
.LLST38:
	.4byte	.LVL56
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105-1
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU340
	.uleb128 .LVU465
.LLST39:
	.4byte	.LVL66
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU340
	.uleb128 .LVU465
.LLST40:
	.4byte	.LVL66
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU342
	.uleb128 .LVU471
	.uleb128 .LVU471
	.uleb128 .LVU474
.LLST41:
	.4byte	.LVL66
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU343
	.uleb128 .LVU465
.LLST42:
	.4byte	.LVL66
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU360
	.uleb128 .LVU373
	.uleb128 .LVU389
	.uleb128 .LVU390
	.uleb128 .LVU390
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU420
	.uleb128 .LVU450
	.uleb128 .LVU453
.LLST43:
	.4byte	.LVL69
	.4byte	.LVL73-1
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU348
	.uleb128 .LVU350
	.uleb128 .LVU454
	.uleb128 .LVU465
.LLST44:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU395
	.uleb128 .LVU398
.LLST45:
	.4byte	.LVL81
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU397
	.uleb128 .LVU398
.LLST46:
	.4byte	.LVL81
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU361
	.uleb128 .LVU371
.LLST47:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU365
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU371
.LLST48:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU351
	.uleb128 .LVU356
.LLST49:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU375
	.uleb128 .LVU386
.LLST50:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU375
	.uleb128 .LVU386
.LLST51:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU380
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU386
.LLST52:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU406
	.uleb128 .LVU418
.LLST53:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU410
	.uleb128 .LVU413
	.uleb128 .LVU413
	.uleb128 .LVU418
.LLST54:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU409
	.uleb128 .LVU418
.LLST55:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU421
	.uleb128 .LVU427
.LLST56:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU421
	.uleb128 .LVU427
.LLST57:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU426
	.uleb128 .LVU427
.LLST58:
	.4byte	.LVL87
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU435
	.uleb128 .LVU445
.LLST59:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU439
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU445
.LLST60:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU438
	.uleb128 .LVU445
.LLST61:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU458
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU462
.LLST62:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU455
	.uleb128 .LVU457
	.uleb128 .LVU457
	.uleb128 .LVU462
.LLST63:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x8
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x72
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU187
	.uleb128 0
.LLST7:
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU175
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x37
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU175
	.uleb128 0
.LLST9:
	.4byte	.LVL8
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU178
	.uleb128 .LVU180
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU188
	.uleb128 .LVU197
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU191
	.uleb128 .LVU193
.LLST12:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU200
	.uleb128 .LVU207
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU200
	.uleb128 .LVU207
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU201
	.uleb128 .LVU203
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU209
	.uleb128 .LVU216
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU210
	.uleb128 .LVU212
.LLST17:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU219
	.uleb128 .LVU226
.LLST18:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU219
	.uleb128 .LVU226
.LLST19:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU220
	.uleb128 .LVU222
.LLST20:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE16
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU11
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE16
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU9
	.uleb128 .LVU12
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"_dso_handle"
.LASF53:
	.string	"_size"
.LASF3:
	.string	"size_t"
.LASF99:
	.string	"_rand48"
.LASF65:
	.string	"_emergency"
.LASF129:
	.string	"uint64_t"
.LASF93:
	.string	"_mbstate"
.LASF4:
	.string	"__uint8_t"
.LASF145:
	.string	"V_size"
.LASF149:
	.string	"blockmix_salsa8"
.LASF58:
	.string	"_data"
.LASF119:
	.string	"_wcrtomb_state"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF10:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF167:
	.string	"__locale_t"
.LASF159:
	.string	"load32_le"
.LASF117:
	.string	"_mbrtowc_state"
.LASF157:
	.string	"store32_le"
.LASF163:
	.string	"alloc_region"
.LASF112:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF137:
	.string	"escrypt_local_t"
.LASF88:
	.string	"_ubuf"
.LASF52:
	.string	"_base"
.LASF35:
	.string	"__tm_hour"
.LASF79:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF83:
	.string	"_cookie"
.LASF78:
	.string	"__sglue"
.LASF14:
	.string	"long int"
.LASF104:
	.string	"_mprec"
.LASF55:
	.string	"_flags"
.LASF46:
	.string	"_is_cxa"
.LASF61:
	.string	"_stdin"
.LASF90:
	.string	"_blksize"
.LASF12:
	.string	"_lock_t"
.LASF125:
	.string	"_sys_errlist"
.LASF72:
	.string	"_cvtbuf"
.LASF91:
	.string	"_offset"
.LASF146:
	.string	"XY_size"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_strtok_last"
.LASF116:
	.string	"_mbrlen_state"
.LASF43:
	.string	"_fnargs"
.LASF141:
	.string	"salt"
.LASF143:
	.string	"buflen"
.LASF49:
	.string	"_fns"
.LASF7:
	.string	"__uint32_t"
.LASF161:
	.string	"PBKDF2_SHA256"
.LASF29:
	.string	"_sign"
.LASF23:
	.string	"_flock_t"
.LASF63:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF70:
	.string	"_gamma_signgam"
.LASF84:
	.string	"_read"
.LASF106:
	.string	"_result_k"
.LASF32:
	.string	"__tm"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"__wchb"
.LASF62:
	.string	"_stdout"
.LASF150:
	.string	"salsa20_8"
.LASF71:
	.string	"_cvtlen"
.LASF24:
	.string	"long unsigned int"
.LASF54:
	.string	"__sFILE_fake"
.LASF97:
	.string	"_niobs"
.LASF139:
	.string	"passwd"
.LASF134:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF77:
	.string	"_atexit0"
.LASF81:
	.string	"_signal_buf"
.LASF75:
	.string	"_asctime_buf"
.LASF142:
	.string	"saltlen"
.LASF105:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF17:
	.string	"wint_t"
.LASF92:
	.string	"_lock"
.LASF94:
	.string	"_flags2"
.LASF151:
	.string	"smix"
.LASF85:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF80:
	.string	"_misc"
.LASF121:
	.string	"__sf_fake_stdin"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF166:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF138:
	.string	"local"
.LASF37:
	.string	"__tm_mon"
.LASF168:
	.string	"escrypt_kdf_nosse"
.LASF47:
	.string	"_atexit"
.LASF131:
	.string	"suboptarg"
.LASF153:
	.string	"dest"
.LASF66:
	.string	"__sdidinit"
.LASF15:
	.string	"_off_t"
.LASF130:
	.string	"uintptr_t"
.LASF9:
	.string	"__uint64_t"
.LASF147:
	.string	"need"
.LASF108:
	.string	"_freelist"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF160:
	.string	"__errno"
.LASF132:
	.string	"base"
.LASF136:
	.string	"escrypt_block_t"
.LASF165:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
.LASF5:
	.string	"unsigned char"
.LASF98:
	.string	"_iobs"
.LASF6:
	.string	"short int"
.LASF40:
	.string	"__tm_yday"
.LASF158:
	.string	"integerify"
.LASF51:
	.string	"__sbuf"
.LASF95:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF82:
	.string	"__sFILE"
.LASF126:
	.string	"_sys_nerr"
.LASF11:
	.string	"__uintptr_t"
.LASF103:
	.string	"_rand_next"
.LASF152:
	.string	"blkxor"
.LASF111:
	.string	"_mblen_state"
.LASF64:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF68:
	.string	"_locale"
.LASF69:
	.string	"__cleanup"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF28:
	.string	"_maxwds"
.LASF59:
	.string	"_reent"
.LASF162:
	.string	"free_region"
.LASF100:
	.string	"_seed"
.LASF20:
	.string	"__count"
.LASF21:
	.string	"__value"
.LASF86:
	.string	"_seek"
.LASF16:
	.string	"_fpos_t"
.LASF60:
	.string	"_errno"
.LASF25:
	.string	"char"
.LASF148:
	.string	"Bout"
.LASF34:
	.string	"__tm_min"
.LASF135:
	.string	"escrypt_region_t"
.LASF101:
	.string	"_mult"
.LASF27:
	.string	"_next"
.LASF164:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"_fntypes"
.LASF109:
	.string	"_misc_reent"
.LASF144:
	.string	"B_size"
.LASF102:
	.string	"_add"
.LASF26:
	.string	"__ULong"
.LASF115:
	.string	"_getdate_err"
.LASF154:
	.string	"blkcpy"
.LASF124:
	.string	"_global_impure_ptr"
.LASF128:
	.string	"uint32_t"
.LASF140:
	.string	"passwdlen"
.LASF155:
	.string	"blkxor_64"
.LASF56:
	.string	"_file"
.LASF30:
	.string	"_wds"
.LASF39:
	.string	"__tm_wday"
.LASF96:
	.string	"_glue"
.LASF133:
	.string	"aligned"
.LASF127:
	.string	"uint8_t"
.LASF114:
	.string	"_l64a_buf"
.LASF76:
	.string	"_sig_func"
.LASF89:
	.string	"_nbuf"
.LASF156:
	.string	"blkcpy_64"
.LASF41:
	.string	"__tm_isdst"
.LASF74:
	.string	"_localtime_buf"
.LASF87:
	.string	"_close"
.LASF123:
	.string	"__sf_fake_stderr"
.LASF73:
	.string	"_r48"
.LASF113:
	.string	"_mbtowc_state"
.LASF107:
	.string	"_p5s"
.LASF36:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
