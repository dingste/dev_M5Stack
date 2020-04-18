	.file	"salsa20_ref.c"
	.text
.Ltext0:
	.section	.text.stream_ref_xor_ic,"ax",@progbits
	.align	4
	.type	stream_ref_xor_ic, @function
stream_ref_xor_ic:
.LVL0:
.LFB1:
	.file 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
	.loc 1 67 1 view -0
	.loc 1 67 1 is_stmt 0 view .LVU1
	entry	sp, 160
.LCFI0:
	.loc 1 68 5 is_stmt 1 view .LVU2
	.loc 1 69 5 view .LVU3
	.loc 1 70 5 view .LVU4
	.loc 1 71 5 view .LVU5
	.loc 1 72 5 view .LVU6
	.loc 1 74 5 view .LVU7
	.loc 1 74 8 is_stmt 0 view .LVU8
	or	a8, a4, a5
	.loc 1 67 1 view .LVU9
	l32i	a7, sp, 160
	l32i	a10, sp, 164
	l32i	a13, sp, 168
	.loc 1 74 8 view .LVU10
	beqz.n	a8, .L2
.LBB4:
.LBB5:
	.loc 1 77 12 view .LVU11
	movi.n	a8, 0
	movi.n	a9, 0x20
	loop	a9, .L4_LEND
.L4:
.LVL1:
	.loc 1 78 9 is_stmt 1 view .LVU12
	.loc 1 78 18 is_stmt 0 view .LVU13
	addi	a12, sp, 64
	add.n	a11, a12, a8
	.loc 1 78 21 view .LVU14
	add.n	a12, a13, a8
	.loc 1 78 18 view .LVU15
	l8ui	a12, a12, 0
	.loc 1 77 26 view .LVU16
	addi.n	a8, a8, 1
.LVL2:
	.loc 1 78 18 view .LVU17
	s8i	a12, a11, 0
	.loc 1 77 26 view .LVU18
	.L4_LEND:
	.loc 1 80 12 view .LVU19
	movi.n	a8, 0
.LVL3:
	.loc 1 80 12 view .LVU20
	movi.n	a9, 8
	loop	a9, .L5_LEND
.L5:
.LVL4:
	.loc 1 81 9 is_stmt 1 view .LVU21
	.loc 1 81 18 is_stmt 0 view .LVU22
	add.n	a12, a6, a8
	.loc 1 81 15 view .LVU23
	addi	a13, sp, 96
	l8ui	a12, a12, 0
	add.n	a11, a13, a8
	s8i	a12, a11, 0
	.loc 1 80 25 view .LVU24
	addi.n	a8, a8, 1
.LVL5:
	.loc 1 80 25 view .LVU25
	.L5_LEND:
	.loc 1 83 12 view .LVU26
	movi.n	a6, 8
.LVL6:
	.loc 1 83 12 view .LVU27
	mov.n	a9, a6
	loop	a9, .L6_LEND
.LVL7:
.L6:
	.loc 1 84 9 is_stmt 1 view .LVU28
	.loc 1 84 15 is_stmt 0 view .LVU29
	addi	a12, sp, 96
	add.n	a11, a12, a6
	.loc 1 84 17 view .LVU30
	s8i	a7, a11, 0
	.loc 1 85 9 is_stmt 1 view .LVU31
	.loc 1 85 12 is_stmt 0 view .LVU32
	slli	a11, a10, 24
	srli	a7, a7, 8
.LVL8:
	.loc 1 85 12 view .LVU33
	or	a7, a11, a7
	srli	a10, a10, 8
.LVL9:
	.loc 1 83 26 view .LVU34
	addi.n	a6, a6, 1
.LVL10:
	.loc 1 83 26 view .LVU35
	.L6_LEND:
	.loc 1 83 5 view .LVU36
	mov.n	a7, a4
.LVL11:
	.loc 1 83 5 view .LVU37
	mov.n	a6, a5
.LVL12:
	.loc 1 83 5 view .LVU38
	add.n	a15, a2, a4
	j	.L7
.LVL13:
.L11:
	.loc 1 88 9 is_stmt 1 view .LVU39
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	s32i	a8, sp, 124
	s32i	a14, sp, 116
	s32i	a15, sp, 120
	call8	crypto_core_salsa20
.LVL14:
	.loc 1 89 9 view .LVU40
	.loc 1 89 16 is_stmt 0 view .LVU41
	l32i	a15, sp, 120
	l32i	a14, sp, 116
	l32i	a8, sp, 124
	movi.n	a9, 0
	movi.n	a10, 0x40
	loop	a10, .L8_LEND
.LVL15:
.L8:
	.loc 1 90 13 is_stmt 1 view .LVU42
	.loc 1 90 21 is_stmt 0 view .LVU43
	l32i	a13, sp, 112
	.loc 1 90 18 view .LVU44
	add.n	a12, a14, a9
	.loc 1 90 21 view .LVU45
	add.n	a11, a13, a9
	.loc 1 90 32 view .LVU46
	add.n	a13, sp, a9
	.loc 1 90 18 view .LVU47
	l8ui	a11, a11, 0
	l8ui	a13, a13, 0
	.loc 1 89 30 view .LVU48
	addi.n	a9, a9, 1
.LVL16:
	.loc 1 90 18 view .LVU49
	xor	a11, a11, a13
	s8i	a11, a12, 0
	.loc 1 89 30 view .LVU50
	.L8_LEND:
	.loc 1 92 11 view .LVU51
	movi.n	a9, 0x10
.LVL17:
	.loc 1 92 11 view .LVU52
	addi	a11, sp, 96
	movi.n	a10, 1
	sub	a9, a9, a8
	loop	a9, .L9_LEND
.L9:
.LVL18:
	.loc 1 94 13 is_stmt 1 view .LVU53
	.loc 1 94 18 is_stmt 0 view .LVU54
	l8ui	a12, a11, 8
	addi.n	a11, a11, 1
	.loc 1 94 15 view .LVU55
	add.n	a10, a12, a10
.LVL19:
	.loc 1 95 13 is_stmt 1 view .LVU56
	.loc 1 95 19 is_stmt 0 view .LVU57
	s8i	a10, a11, 7
	.loc 1 96 13 is_stmt 1 view .LVU58
	.loc 1 96 15 is_stmt 0 view .LVU59
	srli	a10, a10, 8
.LVL20:
	.loc 1 96 15 view .LVU60
	.L9_LEND:
	.loc 1 98 9 is_stmt 1 view .LVU61
	.loc 1 98 14 is_stmt 0 view .LVU62
	addi	a10, a7, -64
.LVL21:
	.loc 1 98 14 view .LVU63
	movi.n	a9, 1
	bltu	a10, a7, .L10
	.loc 1 98 14 view .LVU64
	movi.n	a9, 0
.L10:
	addi.n	a6, a6, -1
.LVL22:
	.loc 1 98 14 view .LVU65
	mov.n	a7, a10
.LVL23:
	.loc 1 98 14 view .LVU66
	add.n	a6, a9, a6
.LVL24:
	.loc 1 99 9 is_stmt 1 view .LVU67
	.loc 1 100 9 view .LVU68
.L7:
	.loc 1 100 9 is_stmt 0 view .LVU69
	add.n	a9, a3, a4
	sub	a9, a9, a7
	s32i	a9, sp, 112
.LVL25:
	.loc 1 100 9 view .LVU70
	sub	a14, a15, a7
.LVL26:
	.loc 1 87 11 view .LVU71
	bnez.n	a6, .L11
	movi.n	a9, 0x3f
.LVL27:
	.loc 1 87 11 view .LVU72
	bltu	a9, a7, .L11
	slli	a7, a5, 26
.LVL28:
	.loc 1 87 11 view .LVU73
	srli	a9, a4, 6
	or	a9, a7, a9
	srli	a10, a5, 6
	movi	a7, -0x40
	mull	a11, a7, a9
	mull	a10, a7, a10
	muluh	a7, a7, a9
	sub	a10, a10, a9
	add.n	a4, a11, a4
.LVL29:
	.loc 1 87 11 view .LVU74
	slli	a8, a9, 6
	add.n	a7, a10, a7
	movi.n	a9, 1
	bltu	a4, a11, .L13
	mov.n	a9, a6
.L13:
	add.n	a5, a7, a5
	add.n	a5, a9, a5
	.loc 1 102 5 is_stmt 1 view .LVU75
	.loc 1 102 8 is_stmt 0 view .LVU76
	or	a5, a4, a5
	beqz.n	a5, .L14
	.loc 1 103 9 is_stmt 1 view .LVU77
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	s32i	a8, sp, 124
	.loc 1 104 16 is_stmt 0 view .LVU78
	movi.n	a5, 0
	.loc 1 103 9 view .LVU79
	call8	crypto_core_salsa20
.LVL30:
	.loc 1 104 9 is_stmt 1 view .LVU80
	.loc 1 104 9 is_stmt 0 view .LVU81
	l32i	a8, sp, 124
	bne	a4, a5, .L16
	movi.n	a4, 1
.LVL31:
.L16:
	.loc 1 105 13 is_stmt 1 view .LVU82
	.loc 1 105 18 is_stmt 0 view .LVU83
	add.n	a6, a8, a5
	add.n	a7, a2, a6
	.loc 1 105 32 view .LVU84
	add.n	a9, sp, a5
	.loc 1 105 21 view .LVU85
	add.n	a6, a3, a6
	.loc 1 105 18 view .LVU86
	l8ui	a6, a6, 0
	l8ui	a9, a9, 0
	.loc 1 104 47 view .LVU87
	addi.n	a5, a5, 1
.LVL32:
	.loc 1 105 18 view .LVU88
	xor	a6, a6, a9
	s8i	a6, a7, 0
	.loc 1 104 47 view .LVU89
	addi.n	a4, a4, -1
	bnez.n	a4, .L16
.LVL33:
.L14:
	.loc 1 108 5 is_stmt 1 view .LVU90
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	sodium_memzero
.LVL34:
	.loc 1 109 5 view .LVU91
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL35:
	.loc 1 111 5 view .LVU92
.L2:
	.loc 1 111 5 is_stmt 0 view .LVU93
.LBE5:
.LBE4:
	.loc 1 112 1 view .LVU94
	movi.n	a2, 0
.LVL36:
	.loc 1 112 1 view .LVU95
	retw.n
.LFE1:
	.size	stream_ref_xor_ic, .-stream_ref_xor_ic
	.section	.text.stream_ref,"ax",@progbits
	.align	4
	.type	stream_ref, @function
stream_ref:
.LVL37:
.LFB0:
	.loc 1 21 1 is_stmt 1 view -0
	.loc 1 21 1 is_stmt 0 view .LVU97
	entry	sp, 160
.LCFI1:
	.loc 1 22 5 is_stmt 1 view .LVU98
	.loc 1 23 5 view .LVU99
	.loc 1 24 5 view .LVU100
	.loc 1 25 5 view .LVU101
	.loc 1 26 5 view .LVU102
	.loc 1 28 5 view .LVU103
	.loc 1 28 8 is_stmt 0 view .LVU104
	or	a3, a4, a5
	.loc 1 21 1 view .LVU105
	.loc 1 28 8 view .LVU106
	beqz.n	a3, .L32
.LBB8:
.LBB9:
	.loc 1 31 12 view .LVU107
	movi.n	a3, 0
	movi.n	a8, 0x20
	loop	a8, .L34_LEND
.L34:
.LVL38:
	.loc 1 32 9 is_stmt 1 view .LVU108
	.loc 1 32 18 is_stmt 0 view .LVU109
	addi	a10, sp, 64
	add.n	a9, a10, a3
	.loc 1 32 21 view .LVU110
	add.n	a10, a7, a3
	.loc 1 32 18 view .LVU111
	l8ui	a10, a10, 0
	.loc 1 31 26 view .LVU112
	addi.n	a3, a3, 1
.LVL39:
	.loc 1 32 18 view .LVU113
	s8i	a10, a9, 0
	.loc 1 31 26 view .LVU114
	.L34_LEND:
	.loc 1 34 12 view .LVU115
	movi.n	a7, 0
.LVL40:
	.loc 1 34 12 view .LVU116
	movi.n	a3, 8
	loop	a3, .L35_LEND
.LVL41:
.L35:
	.loc 1 35 9 is_stmt 1 view .LVU117
	.loc 1 35 15 is_stmt 0 view .LVU118
	addi	a9, sp, 96
	add.n	a8, a9, a7
	.loc 1 35 18 view .LVU119
	add.n	a9, a6, a7
	.loc 1 35 15 view .LVU120
	l8ui	a9, a9, 0
	.loc 1 34 25 view .LVU121
	addi.n	a7, a7, 1
.LVL42:
	.loc 1 35 15 view .LVU122
	s8i	a9, a8, 0
	.loc 1 34 25 view .LVU123
	.L35_LEND:
.LVL43:
	.loc 1 38 9 is_stmt 1 view .LVU124
	.loc 1 38 15 is_stmt 0 view .LVU125
	movi.n	a9, 0
	s8i	a9, sp, 104
.LVL44:
	.loc 1 38 9 is_stmt 1 view .LVU126
	.loc 1 38 15 is_stmt 0 view .LVU127
	s8i	a9, sp, 105
.LVL45:
	.loc 1 38 9 is_stmt 1 view .LVU128
	.loc 1 38 15 is_stmt 0 view .LVU129
	s8i	a9, sp, 106
.LVL46:
	.loc 1 38 9 is_stmt 1 view .LVU130
	.loc 1 38 15 is_stmt 0 view .LVU131
	s8i	a9, sp, 107
.LVL47:
	.loc 1 38 9 is_stmt 1 view .LVU132
	.loc 1 38 15 is_stmt 0 view .LVU133
	s8i	a9, sp, 108
.LVL48:
	.loc 1 38 9 is_stmt 1 view .LVU134
	.loc 1 38 15 is_stmt 0 view .LVU135
	s8i	a9, sp, 109
.LVL49:
	.loc 1 38 9 is_stmt 1 view .LVU136
	.loc 1 38 15 is_stmt 0 view .LVU137
	s8i	a9, sp, 110
.LVL50:
	.loc 1 38 9 is_stmt 1 view .LVU138
	.loc 1 38 15 is_stmt 0 view .LVU139
	s8i	a9, sp, 111
.LVL51:
	.loc 1 38 15 view .LVU140
	mov.n	a3, a4
	mov.n	a6, a5
.LVL52:
	.loc 1 38 15 view .LVU141
	add.n	a14, a2, a4
	j	.L36
.LVL53:
.L39:
	.loc 1 41 9 is_stmt 1 view .LVU142
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	s32i	a14, sp, 112
	call8	crypto_core_salsa20
.LVL54:
	.loc 1 42 9 view .LVU143
	.loc 1 43 9 view .LVU144
	.loc 1 42 11 is_stmt 0 view .LVU145
	movi.n	a8, 0x10
	l32i	a14, sp, 112
	addi	a10, sp, 96
	movi.n	a9, 1
	sub	a8, a8, a7
	loop	a8, .L37_LEND
.LVL55:
.L37:
	.loc 1 44 13 is_stmt 1 view .LVU146
	.loc 1 44 18 is_stmt 0 view .LVU147
	l8ui	a11, a10, 8
	addi.n	a10, a10, 1
	.loc 1 44 15 view .LVU148
	add.n	a9, a11, a9
.LVL56:
	.loc 1 45 13 is_stmt 1 view .LVU149
	.loc 1 45 19 is_stmt 0 view .LVU150
	s8i	a9, a10, 7
	.loc 1 46 13 is_stmt 1 view .LVU151
	.loc 1 46 15 is_stmt 0 view .LVU152
	srli	a9, a9, 8
.LVL57:
	.loc 1 46 15 view .LVU153
	.L37_LEND:
	.loc 1 48 9 is_stmt 1 view .LVU154
	.loc 1 48 14 is_stmt 0 view .LVU155
	addi	a9, a3, -64
.LVL58:
	.loc 1 48 14 view .LVU156
	movi.n	a8, 1
	bltu	a9, a3, .L38
	.loc 1 48 14 view .LVU157
	movi.n	a8, 0
.L38:
	addi.n	a6, a6, -1
.LVL59:
	.loc 1 48 14 view .LVU158
	mov.n	a3, a9
.LVL60:
	.loc 1 48 14 view .LVU159
	add.n	a6, a8, a6
.LVL61:
	.loc 1 49 9 is_stmt 1 view .LVU160
.L36:
	.loc 1 49 9 is_stmt 0 view .LVU161
	sub	a10, a14, a3
.LVL62:
	.loc 1 40 11 view .LVU162
	bnez.n	a6, .L39
	movi.n	a8, 0x3f
	bltu	a8, a3, .L39
	slli	a3, a5, 26
.LVL63:
	.loc 1 40 11 view .LVU163
	srli	a9, a4, 6
	or	a9, a3, a9
	movi	a8, -0x40
	srli	a10, a5, 6
.LVL64:
	.loc 1 40 11 view .LVU164
	mull	a7, a8, a9
	mull	a10, a8, a10
	muluh	a8, a8, a9
	sub	a10, a10, a9
	add.n	a4, a7, a4
.LVL65:
	.loc 1 40 11 view .LVU165
	slli	a3, a9, 6
	add.n	a8, a10, a8
	movi.n	a9, 1
	bltu	a4, a7, .L41
	mov.n	a9, a6
.L41:
	add.n	a8, a8, a5
	add.n	a8, a9, a8
	.loc 1 51 5 is_stmt 1 view .LVU166
	.loc 1 51 8 is_stmt 0 view .LVU167
	or	a8, a4, a8
	beqz.n	a8, .L42
	.loc 1 52 9 is_stmt 1 view .LVU168
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	.loc 1 53 16 is_stmt 0 view .LVU169
	movi.n	a5, 0
	.loc 1 52 9 view .LVU170
	call8	crypto_core_salsa20
.LVL66:
	.loc 1 53 9 is_stmt 1 view .LVU171
	.loc 1 53 9 is_stmt 0 view .LVU172
	bne	a4, a5, .L44
	movi.n	a4, 1
.LVL67:
.L44:
	.loc 1 54 13 is_stmt 1 view .LVU173
	.loc 1 54 25 is_stmt 0 view .LVU174
	add.n	a7, sp, a5
	.loc 1 54 18 view .LVU175
	add.n	a6, a5, a3
	l8ui	a7, a7, 0
	add.n	a6, a2, a6
	s8i	a7, a6, 0
	.loc 1 53 47 view .LVU176
	addi.n	a5, a5, 1
.LVL68:
	.loc 1 53 47 view .LVU177
	addi.n	a4, a4, -1
	bnez.n	a4, .L44
.LVL69:
.L42:
	.loc 1 57 5 is_stmt 1 view .LVU178
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	sodium_memzero
.LVL70:
	.loc 1 58 5 view .LVU179
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL71:
	.loc 1 60 5 view .LVU180
.L32:
	.loc 1 60 5 is_stmt 0 view .LVU181
.LBE9:
.LBE8:
	.loc 1 61 1 view .LVU182
	movi.n	a2, 0
.LVL72:
	.loc 1 61 1 view .LVU183
	retw.n
.LFE0:
	.size	stream_ref, .-stream_ref
	.global	crypto_stream_salsa20_ref_implementation
	.section	.data.crypto_stream_salsa20_ref_implementation,"aw"
	.align	4
	.type	crypto_stream_salsa20_ref_implementation, @object
	.size	crypto_stream_salsa20_ref_implementation, 8
crypto_stream_salsa20_ref_implementation:
	.word	stream_ref
	.word	stream_ref_xor_ic
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/../stream_salsa20.h"
	.file 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h"
	.file 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x51a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	0x33
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x62
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.4byte	0xcc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0xa
	.byte	0xb
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x4d
	.4byte	0xc0
	.uleb128 0x9
	.4byte	0xc0
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0xc6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3a
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x8
	.4byte	0x4d
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xc0
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0x6e
	.uleb128 0x9
	.4byte	0xc6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0x8
	.byte	0x5
	.4byte	0x7a
	.uleb128 0xc
	.4byte	0x100
	.byte	0x1
	.byte	0x73
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_stream_salsa20_ref_implementation
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0x4d
	.byte	0x1
	.4byte	0x1a1
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x40
	.byte	0x22
	.4byte	0xc0
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x40
	.byte	0x3a
	.4byte	0xc6
	.uleb128 0xf
	.4byte	.LASF11
	.byte	0x1
	.byte	0x41
	.byte	0x26
	.4byte	0x25
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x41
	.byte	0x41
	.4byte	0xc6
	.uleb128 0xe
	.string	"ic"
	.byte	0x1
	.byte	0x41
	.byte	0x4d
	.4byte	0x6e
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x42
	.byte	0x28
	.4byte	0xc6
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x44
	.byte	0x13
	.4byte	0x1a1
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x1
	.byte	0x45
	.byte	0x13
	.4byte	0x1b1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x1
	.byte	0x46
	.byte	0x13
	.4byte	0x1c1
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x54
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x48
	.byte	0x12
	.4byte	0x54
	.byte	0
	.uleb128 0x12
	.4byte	0x33
	.4byte	0x1b1
	.uleb128 0x13
	.4byte	0x54
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.4byte	0x33
	.4byte	0x1c1
	.uleb128 0x13
	.4byte	0x54
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	0x33
	.4byte	0x1d1
	.uleb128 0x13
	.4byte	0x54
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x4d
	.byte	0x1
	.4byte	0x244
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x13
	.byte	0x1b
	.4byte	0xc0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.byte	0x31
	.4byte	0x25
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x13
	.byte	0x4c
	.4byte	0xc6
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x14
	.byte	0x21
	.4byte	0xc6
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x16
	.byte	0x13
	.4byte	0x1a1
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x1b1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x1c1
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x19
	.byte	0x12
	.4byte	0x54
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x1a
	.byte	0x12
	.4byte	0x54
	.byte	0
	.uleb128 0x14
	.4byte	0x119
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ba
	.uleb128 0x15
	.4byte	0x12a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x16
	.4byte	0x134
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	0x13e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	0x14a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x16
	.4byte	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.4byte	0x169
	.uleb128 0x17
	.4byte	0x174
	.uleb128 0x17
	.4byte	0x180
	.uleb128 0x17
	.4byte	0x18c
	.uleb128 0x17
	.4byte	0x196
	.uleb128 0x18
	.4byte	0x119
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x19
	.4byte	0x15f
	.uleb128 0x15
	.4byte	0x154
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x19
	.4byte	0x14a
	.uleb128 0x15
	.4byte	0x13e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x15
	.4byte	0x134
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x15
	.4byte	0x12a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	0x174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.4byte	0x180
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.4byte	0x18c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1c
	.4byte	0x196
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x505
	.4byte	0x35d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL30
	.4byte	0x505
	.4byte	0x385
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL34
	.4byte	0x511
	.4byte	0x3a0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL35
	.4byte	0x511
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x1d1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x505
	.uleb128 0x15
	.4byte	0x1e2
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x15
	.4byte	0x1ec
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x15
	.4byte	0x1f8
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x15
	.4byte	0x202
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x17
	.4byte	0x20c
	.uleb128 0x17
	.4byte	0x217
	.uleb128 0x17
	.4byte	0x223
	.uleb128 0x17
	.4byte	0x22f
	.uleb128 0x17
	.4byte	0x239
	.uleb128 0x18
	.4byte	0x1d1
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x19
	.4byte	0x202
	.uleb128 0x19
	.4byte	0x1f8
	.uleb128 0x15
	.4byte	0x1ec
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.4byte	0x1e2
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1b
	.4byte	0x20c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	0x217
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.4byte	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.4byte	0x22f
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1c
	.4byte	0x239
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1d
	.4byte	.LVL54
	.4byte	0x505
	.4byte	0x4a8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0x505
	.4byte	0x4d0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x511
	.4byte	0x4eb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL71
	.4byte	0x511
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1c
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x6
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU28
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 .LVU37
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU39
	.uleb128 .LVU65
	.uleb128 .LVU67
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU73
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU39
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU93
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU39
	.uleb128 .LVU40
	.uleb128 .LVU71
	.uleb128 .LVU80
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU12
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU38
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU52
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU90
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU53
	.uleb128 .LVU63
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL65
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU142
	.uleb128 .LVU158
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU162
	.uleb128 .LVU163
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU142
	.uleb128 .LVU143
	.uleb128 .LVU162
	.uleb128 .LVU164
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU108
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU142
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU172
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU178
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU156
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"stream"
.LASF23:
	.string	"crypto_stream_salsa20_ref_implementation"
.LASF11:
	.string	"mlen"
.LASF8:
	.string	"uint64_t"
.LASF12:
	.string	"block"
.LASF2:
	.string	"unsigned char"
.LASF17:
	.string	"crypto_core_salsa20"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"crypto_stream_salsa20_implementation"
.LASF10:
	.string	"stream_xor_ic"
.LASF13:
	.string	"kcopy"
.LASF5:
	.string	"unsigned int"
.LASF20:
	.string	"/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
.LASF0:
	.string	"long long unsigned int"
.LASF14:
	.string	"stream_ref_xor_ic"
.LASF6:
	.string	"long long int"
.LASF19:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"/home/dieter/Development/ProjektEi/build/libsodium"
.LASF15:
	.string	"stream_ref"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"sodium_memzero"
.LASF16:
	.string	"clen"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
