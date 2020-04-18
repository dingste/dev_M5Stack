	.file	"crypto_scrypt-common.c"
	.text
.Ltext0:
	.section	.rodata.encode64_uint32.str1.1,"aMS",@progbits,1
.LC0:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text.encode64_uint32,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	encode64_uint32, @function
encode64_uint32:
.LVL0:
.LFB12:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt-common.c"
	.loc 1 35 1 view -0
	.loc 1 35 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 36 5 is_stmt 1 view .LVU2
	.loc 1 38 5 view .LVU3
.LVL1:
	.loc 1 38 5 is_stmt 0 view .LVU4
	mov.n	a8, a2
	add.n	a3, a2, a3
.LVL2:
	.loc 1 38 14 view .LVU5
	movi.n	a9, 0
	.loc 1 42 24 view .LVU6
	l32r	a11, .LC1
	.loc 1 38 5 view .LVU7
	j	.L2
.LVL3:
.L4:
	.loc 1 39 9 is_stmt 1 view .LVU8
	.loc 1 39 12 is_stmt 0 view .LVU9
	beq	a8, a3, .L5
	.loc 1 42 9 is_stmt 1 discriminator 2 view .LVU10
.LVL4:
	.loc 1 42 29 is_stmt 0 discriminator 2 view .LVU11
	extui	a10, a4, 0, 6
	.loc 1 42 24 discriminator 2 view .LVU12
	add.n	a10, a11, a10
	.loc 1 42 16 discriminator 2 view .LVU13
	l8ui	a2, a10, 0
.LVL5:
	.loc 1 44 13 discriminator 2 view .LVU14
	srli	a4, a4, 6
.LVL6:
	.loc 1 42 16 discriminator 2 view .LVU15
	s8i	a2, a8, 0
	.loc 1 43 9 is_stmt 1 discriminator 2 view .LVU16
	.loc 1 44 9 discriminator 2 view .LVU17
.LVL7:
	.loc 1 38 38 is_stmt 0 discriminator 2 view .LVU18
	addi.n	a9, a9, 6
.LVL8:
	.loc 1 38 38 discriminator 2 view .LVU19
	addi.n	a8, a8, 1
.LVL9:
.L2:
	.loc 1 38 38 discriminator 2 view .LVU20
	mov.n	a2, a8
.LVL10:
	.loc 1 38 5 discriminator 1 view .LVU21
	bltu	a9, a5, .L4
	.loc 1 38 5 discriminator 1 view .LVU22
	j	.L1
.L5:
	.loc 1 40 19 view .LVU23
	movi.n	a2, 0
.LVL11:
.L1:
	.loc 1 47 1 view .LVU24
	retw.n
.LFE12:
	.size	encode64_uint32, .-encode64_uint32
	.section	.text.encode64,"ax",@progbits
	.align	4
	.type	encode64, @function
encode64:
.LVL12:
.LFB13:
	.loc 1 51 1 is_stmt 1 view -0
	.loc 1 51 1 is_stmt 0 view .LVU26
	entry	sp, 32
.LCFI1:
	.loc 1 52 5 is_stmt 1 view .LVU27
	.loc 1 54 5 view .LVU28
.LVL13:
	.loc 1 54 12 is_stmt 0 view .LVU29
	movi.n	a8, 0
.LBB3:
	.loc 1 61 23 view .LVU30
	movi.n	a7, 0x17
.LBE3:
	.loc 1 54 5 view .LVU31
	j	.L7
.LVL14:
.L13:
.LBB4:
	.loc 1 56 29 view .LVU32
	movi.n	a13, 0
	.loc 1 56 18 view .LVU33
	mov.n	a12, a13
.L8:
.LVL15:
	.loc 1 58 9 is_stmt 1 discriminator 1 view .LVU34
	.loc 1 59 13 discriminator 1 view .LVU35
	.loc 1 59 38 is_stmt 0 discriminator 1 view .LVU36
	addi.n	a6, a8, 1
.LVL16:
	.loc 1 59 36 discriminator 1 view .LVU37
	add.n	a8, a4, a8
	.loc 1 59 22 discriminator 1 view .LVU38
	l8ui	a8, a8, 0
	.loc 1 59 42 discriminator 1 view .LVU39
	ssl	a13
	sll	a8, a8
	.loc 1 60 18 discriminator 1 view .LVU40
	addi.n	a13, a13, 8
.LVL17:
	.loc 1 59 19 discriminator 1 view .LVU41
	or	a12, a12, a8
.LVL18:
	.loc 1 60 13 is_stmt 1 discriminator 1 view .LVU42
	.loc 1 60 13 is_stmt 0 discriminator 1 view .LVU43
	mov.n	a8, a6
	.loc 1 61 23 discriminator 1 view .LVU44
	bltu	a7, a13, .L14
	.loc 1 61 33 discriminator 1 view .LVU45
	bltu	a6, a5, .L8
.L14:
	.loc 1 63 9 is_stmt 1 view .LVU46
	.loc 1 63 17 is_stmt 0 view .LVU47
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encode64_uint32
.LVL19:
	.loc 1 64 9 is_stmt 1 view .LVU48
	.loc 1 64 12 is_stmt 0 view .LVU49
	beqz.n	a10, .L6
	.loc 1 67 9 is_stmt 1 view .LVU50
	.loc 1 67 25 is_stmt 0 view .LVU51
	sub	a2, a10, a2
.LVL20:
	.loc 1 67 16 view .LVU52
	sub	a3, a3, a2
.LVL21:
	.loc 1 68 9 is_stmt 1 view .LVU53
	.loc 1 59 38 is_stmt 0 view .LVU54
	mov.n	a8, a6
	.loc 1 67 16 view .LVU55
	mov.n	a2, a10
.LVL22:
.L7:
	.loc 1 67 16 view .LVU56
.LBE4:
	.loc 1 54 5 discriminator 1 view .LVU57
	bltu	a8, a5, .L13
	.loc 1 54 5 discriminator 1 view .LVU58
	mov.n	a10, a2
.LVL23:
.L6:
	.loc 1 71 1 view .LVU59
	mov.n	a2, a10
.LVL24:
	.loc 1 71 1 view .LVU60
	retw.n
.LFE13:
	.size	encode64, .-encode64
	.section	.text.decode64_uint32$constprop$0,"ax",@progbits
	.literal_position
	.literal .LC2, .LC0
	.align	4
	.type	decode64_uint32$constprop$0, @function
decode64_uint32$constprop$0:
.LVL25:
.LFB19:
	.loc 1 88 1 is_stmt 1 view -0
	.loc 1 88 1 is_stmt 0 view .LVU62
	entry	sp, 32
.LCFI2:
.LVL26:
	.loc 1 93 11 view .LVU63
	movi.n	a4, 0
.LBB8:
.LBB9:
.LBB10:
	.loc 1 76 23 view .LVU64
	l32r	a5, .LC2
.LBE10:
.LBE9:
.LBE8:
	.loc 1 94 14 view .LVU65
	mov.n	a6, a4
	.loc 1 94 5 view .LVU66
	movi.n	a7, 0x1e
.LVL27:
.L25:
.LBB15:
	.loc 1 95 9 is_stmt 1 view .LVU67
	.loc 1 96 9 view .LVU68
.LBB13:
.LBI9:
	.loc 1 74 1 view .LVU69
.LBB11:
	.loc 1 76 5 view .LVU70
	.loc 1 76 23 is_stmt 0 view .LVU71
	l8ui	a11, a3, 0
	mov.n	a10, a5
	call8	strchr
.LVL28:
	.loc 1 78 5 is_stmt 1 view .LVU72
	.loc 1 78 8 is_stmt 0 view .LVU73
	beqz.n	a10, .L24
	.loc 1 79 9 is_stmt 1 view .LVU74
.LVL29:
	.loc 1 80 9 view .LVU75
	.loc 1 80 9 is_stmt 0 view .LVU76
.LBE11:
.LBE13:
	.loc 1 100 9 is_stmt 1 view .LVU77
.LBB14:
.LBB12:
	.loc 1 79 31 is_stmt 0 view .LVU78
	sub	a10, a10, a5
.LVL30:
	.loc 1 79 31 view .LVU79
.LBE12:
.LBE14:
	.loc 1 101 22 view .LVU80
	ssl	a6
	sll	a10, a10
.LBE15:
	.loc 1 94 38 view .LVU81
	addi.n	a6, a6, 6
.LVL31:
.LBB16:
	.loc 1 100 12 view .LVU82
	addi.n	a3, a3, 1
.LVL32:
	.loc 1 101 9 is_stmt 1 view .LVU83
	.loc 1 101 15 is_stmt 0 view .LVU84
	or	a4, a4, a10
.LVL33:
	.loc 1 101 15 view .LVU85
.LBE16:
	.loc 1 94 5 view .LVU86
	bne	a6, a7, .L25
	j	.L29
.LVL34:
.L24:
.LBB17:
	.loc 1 97 13 is_stmt 1 view .LVU87
	.loc 1 97 18 is_stmt 0 view .LVU88
	s32i.n	a10, a2, 0
	.loc 1 98 13 is_stmt 1 view .LVU89
.LVL35:
	.loc 1 98 19 is_stmt 0 view .LVU90
	mov.n	a3, a10
.LVL36:
	.loc 1 98 19 view .LVU91
	j	.L23
.LVL37:
.L29:
	.loc 1 98 19 view .LVU92
.LBE17:
	.loc 1 103 5 is_stmt 1 view .LVU93
	.loc 1 103 10 is_stmt 0 view .LVU94
	s32i.n	a4, a2, 0
	.loc 1 105 5 is_stmt 1 view .LVU95
.LVL38:
.L23:
	.loc 1 106 1 is_stmt 0 view .LVU96
	mov.n	a2, a3
.LVL39:
	.loc 1 106 1 view .LVU97
	retw.n
.LFE19:
	.size	decode64_uint32$constprop$0, .-decode64_uint32$constprop$0
	.global	__ashldi3
	.section	.text.escrypt_r,"ax",@progbits
	.literal_position
	.literal .LC3, .LC0
	.literal .LC4, 1, 0
	.align	4
	.global	escrypt_r
	.type	escrypt_r, @function
escrypt_r:
.LVL40:
.LFB16:
	.loc 1 111 1 is_stmt 1 view -0
	.loc 1 111 1 is_stmt 0 view .LVU99
	entry	sp, 144
.LCFI3:
	.loc 1 112 5 is_stmt 1 view .LVU100
	.loc 1 113 5 view .LVU101
	.loc 1 114 5 view .LVU102
	.loc 1 115 5 view .LVU103
	.loc 1 116 5 view .LVU104
	.loc 1 117 5 view .LVU105
	.loc 1 118 5 view .LVU106
	.loc 1 119 5 view .LVU107
	.loc 1 120 5 view .LVU108
	.loc 1 121 5 view .LVU109
	.loc 1 122 5 view .LVU110
	.loc 1 123 5 view .LVU111
	.loc 1 125 5 view .LVU112
	.loc 1 111 1 is_stmt 0 view .LVU113
	s32i	a4, sp, 92
	.loc 1 125 8 view .LVU114
	l8ui	a4, a5, 0
.LVL41:
	.loc 1 111 1 view .LVU115
	s32i	a2, sp, 84
	s32i	a3, sp, 88
	.loc 1 125 8 view .LVU116
	movi.n	a3, 0x24
.LVL42:
	.loc 1 111 1 view .LVU117
	mov.n	a2, a6
.LVL43:
	.loc 1 125 8 view .LVU118
	beq	a4, a3, .L31
.LVL44:
.L33:
	.loc 1 126 15 view .LVU119
	movi.n	a2, 0
.LVL45:
	.loc 1 126 15 view .LVU120
	j	.L32
.LVL46:
.L31:
	.loc 1 125 27 discriminator 1 view .LVU121
	l8ui	a6, a5, 1
	movi.n	a3, 0x37
	bne	a6, a3, .L33
	.loc 1 125 48 discriminator 2 view .LVU122
	l8ui	a3, a5, 2
	bne	a3, a4, .L33
	.loc 1 128 5 is_stmt 1 view .LVU123
.LVL47:
	.loc 1 130 5 view .LVU124
.LBB20:
.LBI20:
	.loc 1 74 1 view .LVU125
.LBB21:
	.loc 1 76 5 view .LVU126
	.loc 1 76 23 is_stmt 0 view .LVU127
	l8ui	a11, a5, 3
	l32r	a10, .LC3
	call8	strchr
.LVL48:
	.loc 1 76 23 view .LVU128
	s32i	a10, sp, 80
.LVL49:
	.loc 1 78 5 is_stmt 1 view .LVU129
	.loc 1 78 8 is_stmt 0 view .LVU130
	beqz.n	a10, .L33
	.loc 1 79 9 is_stmt 1 view .LVU131
.LVL50:
	.loc 1 80 9 view .LVU132
	.loc 1 80 9 is_stmt 0 view .LVU133
.LBE21:
.LBE20:
	.loc 1 133 5 is_stmt 1 view .LVU134
	.loc 1 134 5 view .LVU135
	.loc 1 136 5 view .LVU136
	.loc 1 136 11 is_stmt 0 view .LVU137
	addi.n	a11, a5, 4
.LVL51:
	.loc 1 136 11 view .LVU138
	addi	a10, sp, 68
.LVL52:
	.loc 1 136 11 view .LVU139
	call8	decode64_uint32$constprop$0
.LVL53:
	.loc 1 137 5 is_stmt 1 view .LVU140
	.loc 1 137 8 is_stmt 0 view .LVU141
	beqz.n	a10, .L33
	.loc 1 140 5 is_stmt 1 view .LVU142
	.loc 1 140 11 is_stmt 0 view .LVU143
	mov.n	a11, a10
	addi	a10, sp, 64
.LVL54:
	.loc 1 140 11 view .LVU144
	call8	decode64_uint32$constprop$0
.LVL55:
	.loc 1 140 11 view .LVU145
	mov.n	a6, a10
.LVL56:
	.loc 1 141 5 is_stmt 1 view .LVU146
	.loc 1 141 8 is_stmt 0 view .LVU147
	beqz.n	a10, .L33
	.loc 1 144 5 is_stmt 1 view .LVU148
	.loc 1 147 23 is_stmt 0 view .LVU149
	mov.n	a11, a3
	.loc 1 144 21 view .LVU150
	sub	a4, a10, a5
.LVL57:
	.loc 1 146 5 is_stmt 1 view .LVU151
	.loc 1 147 5 view .LVU152
	.loc 1 147 23 is_stmt 0 view .LVU153
	call8	strrchr
.LVL58:
	.loc 1 148 5 is_stmt 1 view .LVU154
	.loc 1 149 23 is_stmt 0 view .LVU155
	sub	a14, a10, a6
	.loc 1 148 8 view .LVU156
	bnez.n	a10, .L35
.L34:
	.loc 1 151 9 is_stmt 1 view .LVU157
	.loc 1 151 19 is_stmt 0 view .LVU158
	mov.n	a10, a6
.LVL59:
	.loc 1 151 19 view .LVU159
	call8	strlen
.LVL60:
	mov.n	a14, a10
.LVL61:
.L35:
	.loc 1 153 5 is_stmt 1 view .LVU160
	.loc 1 153 22 is_stmt 0 view .LVU161
	add.n	a8, a14, a4
	.loc 1 153 10 view .LVU162
	addi	a3, a8, 45
.LVL62:
	.loc 1 155 5 is_stmt 1 view .LVU163
	.loc 1 155 14 is_stmt 0 view .LVU164
	bltu	a7, a3, .L33
	.loc 1 155 31 view .LVU165
	bltu	a3, a14, .L33
	.loc 1 162 5 is_stmt 1 view .LVU166
.LVL63:
	.loc 1 164 5 view .LVU167
	.loc 1 164 9 is_stmt 0 view .LVU168
	l32i	a9, sp, 64
	.loc 1 134 7 view .LVU169
	l32r	a10, .LC3
	.loc 1 164 9 view .LVU170
	s32i.n	a9, sp, 12
	l32i	a9, sp, 68
	movi.n	a4, 0x20
.LVL64:
	.loc 1 164 9 view .LVU171
	s32i.n	a9, sp, 8
	.loc 1 134 7 view .LVU172
	l32i	a9, sp, 80
	l32r	a11, .LC4+4
	sub	a12, a9, a10
	l32r	a10, .LC4
	.loc 1 164 9 view .LVU173
	add.n	a3, sp, a4
.LVL65:
	.loc 1 134 7 view .LVU174
	s32i	a8, sp, 100
	s32i	a14, sp, 96
	.loc 1 164 9 view .LVU175
	s32i.n	a4, sp, 20
	s32i.n	a3, sp, 16
	.loc 1 134 7 view .LVU176
	call8	__ashldi3
.LVL66:
	.loc 1 164 9 view .LVU177
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	l32i	a14, sp, 96
.LVL67:
	.loc 1 164 9 view .LVU178
	l32i	a12, sp, 92
	l32i	a11, sp, 88
	l32i	a10, sp, 84
	mov.n	a13, a6
	call8	escrypt_kdf_nosse
.LVL68:
	.loc 1 164 9 view .LVU179
	mov.n	a6, a10
.LVL69:
	.loc 1 164 8 view .LVU180
	l32i	a8, sp, 100
	bnez.n	a10, .L33
	.loc 1 168 5 is_stmt 1 view .LVU181
.LVL70:
	.loc 1 169 5 view .LVU182
	mov.n	a12, a8
	mov.n	a11, a5
	mov.n	a10, a2
	call8	memcpy
.LVL71:
	.loc 1 170 5 view .LVU183
	.loc 1 170 9 is_stmt 0 view .LVU184
	l32i	a8, sp, 100
	.loc 1 171 12 view .LVU185
	movi.n	a5, 0x24
.LVL72:
	.loc 1 170 9 view .LVU186
	add.n	a8, a2, a8
.LVL73:
	.loc 1 171 5 is_stmt 1 view .LVU187
	.loc 1 171 9 is_stmt 0 view .LVU188
	addi.n	a10, a8, 1
.LVL74:
	.loc 1 173 39 view .LVU189
	sub	a11, a10, a2
	.loc 1 171 12 view .LVU190
	s8i	a5, a8, 0
	.loc 1 173 5 is_stmt 1 view .LVU191
	.loc 1 173 11 is_stmt 0 view .LVU192
	sub	a11, a7, a11
	mov.n	a13, a4
	mov.n	a12, a3
	call8	encode64
.LVL75:
	.loc 1 173 11 view .LVU193
	mov.n	a5, a10
.LVL76:
	.loc 1 174 5 is_stmt 1 view .LVU194
	mov.n	a11, a4
	mov.n	a10, a3
	call8	sodium_memzero
.LVL77:
	.loc 1 175 5 view .LVU195
	.loc 1 175 8 is_stmt 0 view .LVU196
	beqz.n	a5, .L33
	.loc 1 175 28 discriminator 1 view .LVU197
	add.n	a7, a2, a7
.LVL78:
	.loc 1 175 14 discriminator 1 view .LVU198
	bgeu	a5, a7, .L33
	.loc 1 178 5 is_stmt 1 view .LVU199
	.loc 1 178 10 is_stmt 0 view .LVU200
	s8i	a6, a5, 0
	.loc 1 180 5 is_stmt 1 view .LVU201
.LVL79:
.L32:
	.loc 1 181 1 is_stmt 0 view .LVU202
	retw.n
.LFE16:
	.size	escrypt_r, .-escrypt_r
	.section	.text.escrypt_gensalt_r,"ax",@progbits
	.literal_position
	.literal .LC5, -1431655765
	.literal .LC6, 1073741823
	.literal .LC7, .LC0
	.align	4
	.global	escrypt_gensalt_r
	.type	escrypt_gensalt_r, @function
escrypt_gensalt_r:
.LVL80:
.LFB17:
	.loc 1 186 1 is_stmt 1 view -0
	.loc 1 186 1 is_stmt 0 view .LVU204
	entry	sp, 48
.LCFI4:
	.loc 1 187 5 is_stmt 1 view .LVU205
	.loc 1 188 5 view .LVU206
.LVL81:
	.loc 1 190 5 view .LVU207
	.loc 1 186 1 is_stmt 0 view .LVU208
	mov.n	a9, a4
	.loc 1 190 34 view .LVU209
	slli	a8, a6, 3
	.loc 1 190 12 view .LVU210
	l32r	a4, .LC5
.LVL82:
	.loc 1 190 38 view .LVU211
	addi.n	a8, a8, 5
	.loc 1 190 12 view .LVU212
	muluh	a8, a8, a4
	.loc 1 186 1 view .LVU213
	mov.n	a12, a3
	.loc 1 190 12 view .LVU214
	srli	a8, a8, 2
.LVL83:
	.loc 1 191 5 is_stmt 1 view .LVU215
	.loc 1 193 5 view .LVU216
	.loc 1 186 1 is_stmt 0 view .LVU217
	l32i.n	a3, sp, 48
.LVL84:
	.loc 1 193 10 view .LVU218
	addi.n	a13, a8, 15
.LVL85:
	.loc 1 194 5 is_stmt 1 view .LVU219
	.loc 1 197 5 view .LVU220
	.loc 1 186 1 is_stmt 0 view .LVU221
	mov.n	a10, a2
	mov.n	a2, a7
.LVL86:
	.loc 1 194 14 view .LVU222
	movi.n	a4, 1
	bltu	a3, a13, .L55
	movi.n	a4, 0
.L55:
	.loc 1 194 31 view .LVU223
	movi.n	a11, 1
	bltu	a13, a8, .L56
	movi.n	a11, 0
.L56:
	.loc 1 194 23 view .LVU224
	or	a4, a4, a11
	.loc 1 194 41 view .LVU225
	movi.n	a11, 1
	bltu	a8, a6, .L57
	movi.n	a11, 0
.L57:
	.loc 1 197 8 view .LVU226
	or	a4, a4, a11
	bbsi	a4, 0, .L60
	movi.n	a4, 0x3f
	bltu	a4, a10, .L60
	.loc 1 197 38 view .LVU227
	muluh	a4, a12, a9
	mull	a8, a12, a9
.LVL87:
	.loc 1 197 21 view .LVU228
	beqz.n	a4, .L73
.LVL88:
.L60:
	.loc 1 198 15 view .LVU229
	movi.n	a2, 0
.LVL89:
	.loc 1 198 15 view .LVU230
	j	.L59
.LVL90:
.L73:
	.loc 1 197 21 discriminator 1 view .LVU231
	l32r	a11, .LC6
	bltu	a11, a8, .L60
	.loc 1 200 5 is_stmt 1 view .LVU232
.LVL91:
	.loc 1 201 5 view .LVU233
	.loc 1 201 12 is_stmt 0 view .LVU234
	movi.n	a8, 0x24
	s8i	a8, a7, 0
	.loc 1 202 5 is_stmt 1 view .LVU235
.LVL92:
	.loc 1 203 12 is_stmt 0 view .LVU236
	s8i	a8, a7, 2
	.loc 1 205 20 view .LVU237
	l32r	a8, .LC7
	.loc 1 202 12 view .LVU238
	movi.n	a11, 0x37
	.loc 1 205 20 view .LVU239
	add.n	a10, a8, a10
.LVL93:
	.loc 1 205 12 view .LVU240
	l8ui	a8, a10, 0
	.loc 1 202 12 view .LVU241
	s8i	a11, a7, 1
	.loc 1 203 5 is_stmt 1 view .LVU242
.LVL94:
	.loc 1 205 5 view .LVU243
	.loc 1 205 12 is_stmt 0 view .LVU244
	s8i	a8, a7, 3
	.loc 1 207 5 is_stmt 1 view .LVU245
	.loc 1 207 11 is_stmt 0 view .LVU246
	movi.n	a13, 0x1e
.LVL95:
	.loc 1 207 11 view .LVU247
	addi	a11, a3, -4
	addi.n	a10, a7, 4
.LVL96:
	.loc 1 207 11 view .LVU248
	s32i.n	a9, sp, 0
	call8	encode64_uint32
.LVL97:
	.loc 1 208 5 is_stmt 1 view .LVU249
	.loc 1 208 8 is_stmt 0 view .LVU250
	l32i.n	a9, sp, 0
	beqz.n	a10, .L60
	.loc 1 211 5 is_stmt 1 view .LVU251
	.loc 1 211 46 is_stmt 0 view .LVU252
	sub	a11, a10, a7
	.loc 1 211 11 view .LVU253
	movi.n	a13, 0x1e
	mov.n	a12, a9
	sub	a11, a3, a11
	call8	encode64_uint32
.LVL98:
	.loc 1 212 5 is_stmt 1 view .LVU254
	.loc 1 212 8 is_stmt 0 view .LVU255
	beqz.n	a10, .L60
	.loc 1 215 5 is_stmt 1 view .LVU256
	.loc 1 215 39 is_stmt 0 view .LVU257
	sub	a11, a10, a7
	.loc 1 215 11 view .LVU258
	mov.n	a13, a6
	mov.n	a12, a5
	sub	a11, a3, a11
	call8	encode64
.LVL99:
	.loc 1 216 5 is_stmt 1 view .LVU259
	.loc 1 216 8 is_stmt 0 view .LVU260
	beqz.n	a10, .L60
	.loc 1 216 28 discriminator 1 view .LVU261
	add.n	a7, a7, a3
	.loc 1 216 14 discriminator 1 view .LVU262
	bgeu	a10, a7, .L60
	.loc 1 219 5 is_stmt 1 view .LVU263
	.loc 1 219 10 is_stmt 0 view .LVU264
	s8i	a4, a10, 0
	.loc 1 221 5 is_stmt 1 view .LVU265
.LVL100:
.L59:
	.loc 1 222 1 is_stmt 0 view .LVU266
	retw.n
.LFE17:
	.size	escrypt_gensalt_r, .-escrypt_gensalt_r
	.section	.text.crypto_pwhash_scryptsalsa208sha256_ll,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_ll
	.type	crypto_pwhash_scryptsalsa208sha256_ll, @function
crypto_pwhash_scryptsalsa208sha256_ll:
.LVL101:
.LFB18:
	.loc 1 229 1 is_stmt 1 view -0
	.loc 1 229 1 is_stmt 0 view .LVU268
	entry	sp, 80
.LCFI5:
	.loc 1 230 5 is_stmt 1 view .LVU269
	.loc 1 231 5 view .LVU270
	.loc 1 232 5 view .LVU271
	.loc 1 234 5 view .LVU272
	.loc 1 234 9 is_stmt 0 view .LVU273
	addi	a10, sp, 32
	.loc 1 229 1 view .LVU274
	.loc 1 234 9 view .LVU275
	call8	escrypt_init_local
.LVL102:
	.loc 1 234 8 view .LVU276
	bnez.n	a10, .L75
	.loc 1 241 5 is_stmt 1 view .LVU277
.LVL103:
	.loc 1 243 5 view .LVU278
	.loc 1 243 14 is_stmt 0 view .LVU279
	l32i	a8, sp, 92
	mov.n	a11, a2
	s32i.n	a8, sp, 20
	l32i	a8, sp, 88
	s32i.n	a6, sp, 0
	s32i.n	a8, sp, 16
	l32i	a8, sp, 84
	s32i.n	a7, sp, 4
	s32i.n	a8, sp, 12
	l32i	a8, sp, 80
	mov.n	a14, a5
	s32i.n	a8, sp, 8
	mov.n	a13, a4
	mov.n	a12, a3
	addi	a10, sp, 32
	call8	escrypt_kdf_nosse
.LVL104:
	mov.n	a2, a10
.LVL105:
	.loc 1 245 5 is_stmt 1 view .LVU280
	.loc 1 245 9 is_stmt 0 view .LVU281
	addi	a10, sp, 32
	call8	escrypt_free_local
.LVL106:
	.loc 1 245 8 view .LVU282
	beqz.n	a10, .L74
.LVL107:
.L75:
	.loc 1 246 9 is_stmt 1 view .LVU283
	.loc 1 246 16 is_stmt 0 view .LVU284
	movi.n	a2, -1
.L74:
	.loc 1 249 1 view .LVU285
	retw.n
.LFE18:
	.size	crypto_pwhash_scryptsalsa208sha256_ll, .-crypto_pwhash_scryptsalsa208sha256_ll
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.file 11 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1231
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
	.4byte	.Ldebug_ranges0+0x60
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0x11
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0xce
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.byte	0x3
	.4byte	0x11c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa8
	.byte	0xc
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.byte	0x13
	.4byte	0x11c
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x12c
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x150
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa5
	.byte	0x7
	.4byte	0x5b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0xaa
	.byte	0x5
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0xab
	.byte	0x3
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0xaf
	.byte	0x1b
	.4byte	0xc2
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xe
	.byte	0x4
	.4byte	0x177
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x5
	.4byte	0x177
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x16a
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1e9
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1e9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x5b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x5b
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1ef
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x9
	.4byte	0x183
	.4byte	0x1ff
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x282
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x5b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x5b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x5b
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x5b
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x5b
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x5b
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2c7
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2c7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2c7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x183
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x183
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x168
	.4byte	0x2d7
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x319
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x319
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x5b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x31f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x336
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0x9
	.4byte	0x32f
	.4byte	0x32f
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x335
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x282
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x364
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x364
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x5b
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x46
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3dd
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x364
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x33c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x541
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x36a
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x541
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x5b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x787
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x787
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x787
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x5b
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x171
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x5b
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x5b
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ef
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f5
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x906
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x5b
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x5b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x171
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x90c
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x912
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x171
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x923
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x319
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2d7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x748
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x787
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92f
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x171
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3e2
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x68a
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x364
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x33c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x541
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x168
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a8
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d7
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6fb
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x715
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x33c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x364
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x5b
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x71b
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x72b
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x33c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x5b
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x15c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x150
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x5b
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x5b
	.4byte	0x6a8
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x171
	.uleb128 0x18
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x17
	.4byte	0x5b
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x5
	.4byte	0x6cc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x17
	.4byte	0xe1
	.4byte	0x6fb
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.uleb128 0x18
	.4byte	0xe1
	.uleb128 0x18
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6dd
	.uleb128 0x17
	.4byte	0x5b
	.4byte	0x715
	.uleb128 0x18
	.4byte	0x541
	.uleb128 0x18
	.4byte	0x168
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x701
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x72b
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x73b
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x547
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x781
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x781
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x787
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x748
	.uleb128 0xe
	.byte	0x4
	.4byte	0x73b
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7d4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7d4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7d4
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x54
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x54
	.4byte	0x7e4
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x82b
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1e9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1e9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x82b
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8da
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x171
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x150
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x150
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x150
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8da
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x5b
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x150
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x150
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x150
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x150
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x150
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x177
	.4byte	0x8ea
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF172
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8ea
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1a
	.4byte	0x906
	.uleb128 0x18
	.4byte	0x541
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8fb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x78d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x1a
	.4byte	0x923
	.uleb128 0x18
	.4byte	0x5b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x929
	.uleb128 0xe
	.byte	0x4
	.4byte	0x918
	.uleb128 0xe
	.byte	0x4
	.4byte	0x831
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3dd
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x541
	.uleb128 0xb
	.byte	0xc
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0x99a
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x8
	.byte	0x35
	.byte	0xc
	.4byte	0x168
	.byte	0
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x8
	.byte	0x35
	.byte	0x13
	.4byte	0x168
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.4byte	0xaa
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x8
	.byte	0x37
	.byte	0x3
	.4byte	0x969
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0x3e
	.byte	0x1a
	.4byte	0x99a
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x8
	.byte	0x47
	.byte	0xf
	.4byte	0x9be
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c4
	.uleb128 0x17
	.4byte	0x5b
	.4byte	0xa00
	.uleb128 0x18
	.4byte	0xa00
	.uleb128 0x18
	.4byte	0xa06
	.uleb128 0x18
	.4byte	0xaa
	.uleb128 0x18
	.4byte	0xa06
	.uleb128 0x18
	.4byte	0xaa
	.uleb128 0x18
	.4byte	0x9e
	.uleb128 0x18
	.4byte	0x92
	.uleb128 0x18
	.4byte	0x92
	.uleb128 0x18
	.4byte	0xa0c
	.uleb128 0x18
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9a6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x81
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x171
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.byte	0x1e
	.byte	0x1a
	.4byte	0x6d2
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.4byte	0x5b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6b
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe1
	.byte	0x36
	.4byte	0xa06
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe1
	.byte	0x45
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe2
	.byte	0x36
	.4byte	0xa06
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe2
	.byte	0x43
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.string	"N"
	.byte	0x1
	.byte	0xe3
	.byte	0x30
	.4byte	0x9e
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0xe3
	.byte	0x3c
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.byte	0xe3
	.byte	0x48
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0xe4
	.byte	0x30
	.4byte	0xa0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe4
	.byte	0x3c
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x1
	.byte	0xe6
	.byte	0x13
	.4byte	0x9b2
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.byte	0xe7
	.byte	0x15
	.4byte	0x9a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe8
	.byte	0x9
	.4byte	0x5b
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x24
	.4byte	.LVL102
	.4byte	0x11d5
	.4byte	0xb0e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL104
	.4byte	0x11e1
	.4byte	0xb5a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x11ed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.4byte	0xa0c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc91
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0xb8
	.byte	0x1c
	.4byte	0x92
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xb8
	.byte	0x2d
	.4byte	0x92
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0xb8
	.byte	0x39
	.4byte	0x92
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x21
	.string	"src"
	.byte	0x1
	.byte	0xb8
	.byte	0x4b
	.4byte	0xa06
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb9
	.byte	0x1a
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0xb9
	.byte	0x2b
	.4byte	0xa0c
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb9
	.byte	0x37
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"dst"
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.4byte	0xa0c
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x29
	.4byte	.LASF147
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0xbe
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0xbf
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x24
	.4byte	.LVL97
	.4byte	0x10a8
	.4byte	0xc67
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x24
	.4byte	.LVL98
	.4byte	0x10a8
	.4byte	0xc7a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x26
	.4byte	.LVL99
	.4byte	0xfdf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0xa0c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf37
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6d
	.byte	0x1c
	.4byte	0xa00
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0x6d
	.byte	0x32
	.4byte	0xa06
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6d
	.byte	0x41
	.4byte	0xaa
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x6e
	.byte	0x1a
	.4byte	0xa06
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.byte	0x2c
	.4byte	0xa0c
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x6e
	.byte	0x38
	.4byte	0xaa
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x22
	.4byte	.LASF151
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	0xf37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x71
	.byte	0x13
	.4byte	0x9b2
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.byte	0x72
	.byte	0x14
	.4byte	0xa06
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x73
	.byte	0x14
	.4byte	0xa06
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x28
	.string	"dst"
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0xa0c
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0x75
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x77
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x28
	.string	"N"
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0x9e
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.4byte	0x92
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.4byte	0x92
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.4byte	0x92
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.4byte	0xfa9
	.4byte	.LBI20
	.byte	.LVU125
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x82
	.byte	0x9
	.4byte	0xe57
	.uleb128 0x2d
	.4byte	0xfc6
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x2d
	.4byte	0xfba
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x2e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x2f
	.4byte	0xfd2
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x26
	.4byte	.LVL48
	.4byte	0x11f9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0x1121
	.4byte	0xe72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x24
	.4byte	.LVL55
	.4byte	0x1121
	.4byte	0xe87
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0x1205
	.4byte	0xea1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL60
	.4byte	0x1211
	.4byte	0xeb5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL68
	.4byte	0x11e1
	.4byte	0xeec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL71
	.4byte	0x121d
	.4byte	0xf06
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL75
	.4byte	0xfdf
	.4byte	0xf20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL77
	.4byte	0x1228
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x81
	.4byte	0xf47
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x30
	.4byte	.LASF154
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	0xa06
	.byte	0x1
	.4byte	0xfa3
	.uleb128 0x31
	.string	"dst"
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.4byte	0xfa3
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x1
	.byte	0x58
	.byte	0x29
	.4byte	0x92
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.byte	0x58
	.byte	0x41
	.4byte	0xa06
	.uleb128 0x33
	.string	"bit"
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	0x92
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	0x92
	.uleb128 0x34
	.uleb128 0x33
	.string	"one"
	.byte	0x1
	.byte	0x5f
	.byte	0x12
	.4byte	0x92
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x92
	.uleb128 0x30
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0x5b
	.byte	0x1
	.4byte	0xfdf
	.uleb128 0x31
	.string	"dst"
	.byte	0x1
	.byte	0x4a
	.byte	0x18
	.4byte	0xfa3
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.byte	0x25
	.4byte	0x81
	.uleb128 0x33
	.string	"ptr"
	.byte	0x1
	.byte	0x4c
	.byte	0x11
	.4byte	0x6cc
	.byte	0
	.uleb128 0x35
	.4byte	.LASF159
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0xa0c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a8
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.byte	0x32
	.byte	0x13
	.4byte	0xa0c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x32
	.byte	0x1f
	.4byte	0xaa
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x21
	.string	"src"
	.byte	0x1
	.byte	0x32
	.byte	0x36
	.4byte	0xa06
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x32
	.byte	0x42
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0xaa
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0x37
	.byte	0x12
	.4byte	0xa0c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x23
	.4byte	.LASF153
	.byte	0x1
	.byte	0x38
	.byte	0x12
	.4byte	0x92
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x38
	.byte	0x1d
	.4byte	0x92
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x10a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF160
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	0xa0c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1121
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.byte	0x22
	.byte	0x1a
	.4byte	0xa0c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x22
	.byte	0x26
	.4byte	0xaa
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.4byte	0x92
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.byte	0x22
	.byte	0x45
	.4byte	0x92
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.string	"bit"
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0x92
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x37
	.4byte	0xf47
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d5
	.uleb128 0x2d
	.4byte	0xf58
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2d
	.4byte	0xf70
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2f
	.4byte	0xf7c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2f
	.4byte	0xf88
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x38
	.4byte	0xf64
	.byte	0x1e
	.uleb128 0x39
	.4byte	0xf94
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.4byte	0xf95
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x3a
	.4byte	0xfa9
	.4byte	.LBI9
	.byte	.LVU69
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x60
	.byte	0xd
	.uleb128 0x2d
	.4byte	0xfc6
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2d
	.4byte	0xfba
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x2f
	.4byte	0xfd2
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x26
	.4byte	.LVL28
	.4byte	0x11f9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.byte	0x40
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x8
	.byte	0x4c
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0x42
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x23
	.byte	0x7
	.uleb128 0x3b
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xa
	.byte	0x2e
	.byte	0x7
	.uleb128 0x3b
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.uleb128 0x3c
	.4byte	.LASF173
	.4byte	.LASF174
	.byte	0xc
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xb
	.byte	0x16
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS42:
	.uleb128 0
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 0
.LLST42:
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU280
	.uleb128 .LVU283
.LLST43:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST35:
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 0
.LLST36:
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 0
.LLST37:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 0
.LLST38:
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU233
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU266
.LLST39:
	.4byte	.LVL91
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97-1
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU215
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST40:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x7d
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LFE17
	.2byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU219
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST41:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL95
	.4byte	.LFE17
	.2byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 0
.LLST21:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST22:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL78
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU124
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU159
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53-1
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU152
	.uleb128 .LVU180
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU182
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU202
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU151
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU180
.LLST27:
	.4byte	.LVL57
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU160
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU179
.LLST28:
	.4byte	.LVL61
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU163
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU179
.LLST29:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x3
	.byte	0x78
	.sleb128 45
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU202
.LLST30:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x11
	.byte	0x31
	.byte	0xf7
	.uleb128 0x25
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL79
	.2byte	0x12
	.byte	0x31
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU132
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU202
.LLST31:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL79
	.2byte	0xa
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU125
	.uleb128 .LVU128
.LLST32:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x2
	.byte	0x75
	.sleb128 3
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU125
	.uleb128 .LVU133
.LLST33:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3529
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU129
	.uleb128 .LVU133
.LLST34:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU60
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU59
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU48
	.uleb128 .LVU56
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU34
	.uleb128 .LVU48
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU34
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU48
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7d
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU8
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU4
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU96
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x76
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU75
	.uleb128 .LVU79
	.uleb128 .LVU87
	.uleb128 .LVU90
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU69
	.uleb128 .LVU72
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU69
	.uleb128 .LVU76
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4471
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU72
	.uleb128 .LVU76
.LLST17:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"_dso_handle"
.LASF155:
	.string	"decode64_one"
.LASF153:
	.string	"value"
.LASF55:
	.string	"_size"
.LASF160:
	.string	"encode64_uint32"
.LASF13:
	.string	"size_t"
.LASF101:
	.string	"_rand48"
.LASF145:
	.string	"srclen"
.LASF67:
	.string	"_emergency"
.LASF12:
	.string	"uint64_t"
.LASF6:
	.string	"__uint8_t"
.LASF170:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt-common.c"
.LASF60:
	.string	"_data"
.LASF121:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF132:
	.string	"escrypt_kdf_t"
.LASF0:
	.string	"long long unsigned int"
.LASF59:
	.string	"_lbfsize"
.LASF162:
	.string	"escrypt_init_local"
.LASF172:
	.string	"__locale_t"
.LASF119:
	.string	"_mbrtowc_state"
.LASF114:
	.string	"_wctomb_state"
.LASF35:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF156:
	.string	"dstlen"
.LASF131:
	.string	"escrypt_local_t"
.LASF90:
	.string	"_ubuf"
.LASF54:
	.string	"_base"
.LASF37:
	.string	"__tm_hour"
.LASF81:
	.string	"__sf"
.LASF44:
	.string	"_on_exit_args"
.LASF85:
	.string	"_cookie"
.LASF141:
	.string	"crypto_pwhash_scryptsalsa208sha256_ll"
.LASF80:
	.string	"__sglue"
.LASF158:
	.string	"bits"
.LASF16:
	.string	"long int"
.LASF106:
	.string	"_mprec"
.LASF57:
	.string	"_flags"
.LASF48:
	.string	"_is_cxa"
.LASF63:
	.string	"_stdin"
.LASF92:
	.string	"_blksize"
.LASF14:
	.string	"_lock_t"
.LASF140:
	.string	"retval"
.LASF138:
	.string	"itoa64"
.LASF74:
	.string	"_cvtbuf"
.LASF93:
	.string	"_offset"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrlen_state"
.LASF144:
	.string	"N_log2"
.LASF45:
	.string	"_fnargs"
.LASF135:
	.string	"salt"
.LASF137:
	.string	"buflen"
.LASF51:
	.string	"_fns"
.LASF7:
	.string	"__uint32_t"
.LASF31:
	.string	"_sign"
.LASF25:
	.string	"_flock_t"
.LASF65:
	.string	"_stderr"
.LASF33:
	.string	"_Bigint"
.LASF72:
	.string	"_gamma_signgam"
.LASF86:
	.string	"_read"
.LASF108:
	.string	"_result_k"
.LASF34:
	.string	"__tm"
.LASF52:
	.string	"_on_exit_args_ptr"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"__wchb"
.LASF64:
	.string	"_stdout"
.LASF73:
	.string	"_cvtlen"
.LASF26:
	.string	"long unsigned int"
.LASF56:
	.string	"__sFILE_fake"
.LASF165:
	.string	"strchr"
.LASF99:
	.string	"_niobs"
.LASF143:
	.string	"passwd"
.LASF129:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"_atexit0"
.LASF142:
	.string	"escrypt_gensalt_r"
.LASF83:
	.string	"_signal_buf"
.LASF77:
	.string	"_asctime_buf"
.LASF167:
	.string	"strlen"
.LASF136:
	.string	"saltlen"
.LASF107:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF173:
	.string	"memcpy"
.LASF147:
	.string	"prefixlen"
.LASF19:
	.string	"wint_t"
.LASF154:
	.string	"decode64_uint32"
.LASF174:
	.string	"__builtin_memcpy"
.LASF94:
	.string	"_lock"
.LASF96:
	.string	"_flags2"
.LASF87:
	.string	"_write"
.LASF40:
	.string	"__tm_year"
.LASF82:
	.string	"_misc"
.LASF159:
	.string	"encode64"
.LASF123:
	.string	"__sf_fake_stdin"
.LASF124:
	.string	"__sf_fake_stdout"
.LASF171:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF146:
	.string	"local"
.LASF39:
	.string	"__tm_mon"
.LASF163:
	.string	"escrypt_kdf_nosse"
.LASF49:
	.string	"_atexit"
.LASF133:
	.string	"suboptarg"
.LASF68:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF164:
	.string	"escrypt_free_local"
.LASF168:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF148:
	.string	"need"
.LASF110:
	.string	"_freelist"
.LASF150:
	.string	"setting"
.LASF139:
	.string	"escrypt_kdf"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF152:
	.string	"dstbits"
.LASF127:
	.string	"base"
.LASF166:
	.string	"strrchr"
.LASF3:
	.string	"unsigned char"
.LASF100:
	.string	"_iobs"
.LASF149:
	.string	"escrypt_r"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"__tm_yday"
.LASF53:
	.string	"__sbuf"
.LASF97:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF84:
	.string	"__sFILE"
.LASF95:
	.string	"_mbstate"
.LASF105:
	.string	"_rand_next"
.LASF113:
	.string	"_mblen_state"
.LASF66:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF70:
	.string	"_locale"
.LASF71:
	.string	"__cleanup"
.LASF69:
	.string	"_unspecified_locale_info"
.LASF30:
	.string	"_maxwds"
.LASF61:
	.string	"_reent"
.LASF102:
	.string	"_seed"
.LASF22:
	.string	"__count"
.LASF11:
	.string	"uint32_t"
.LASF88:
	.string	"_seek"
.LASF18:
	.string	"_fpos_t"
.LASF62:
	.string	"_errno"
.LASF27:
	.string	"char"
.LASF36:
	.string	"__tm_min"
.LASF130:
	.string	"escrypt_region_t"
.LASF103:
	.string	"_mult"
.LASF29:
	.string	"_next"
.LASF169:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"__value"
.LASF47:
	.string	"_fntypes"
.LASF111:
	.string	"_misc_reent"
.LASF151:
	.string	"hash"
.LASF104:
	.string	"_add"
.LASF28:
	.string	"__ULong"
.LASF117:
	.string	"_getdate_err"
.LASF161:
	.string	"srcbits"
.LASF126:
	.string	"_global_impure_ptr"
.LASF134:
	.string	"passwdlen"
.LASF58:
	.string	"_file"
.LASF32:
	.string	"_wds"
.LASF41:
	.string	"__tm_wday"
.LASF98:
	.string	"_glue"
.LASF128:
	.string	"aligned"
.LASF10:
	.string	"uint8_t"
.LASF116:
	.string	"_l64a_buf"
.LASF78:
	.string	"_sig_func"
.LASF91:
	.string	"_nbuf"
.LASF43:
	.string	"__tm_isdst"
.LASF76:
	.string	"_localtime_buf"
.LASF89:
	.string	"_close"
.LASF125:
	.string	"__sf_fake_stderr"
.LASF75:
	.string	"_r48"
.LASF157:
	.string	"dnext"
.LASF115:
	.string	"_mbtowc_state"
.LASF109:
	.string	"_p5s"
.LASF38:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
