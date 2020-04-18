	.file	"packet.c"
	.text
.Ltext0:
	.section	.text.esp_gdbstub_send_start,"ax",@progbits
	.literal_position
	.literal .LC0, s_chsum
	.align	4
	.global	esp_gdbstub_send_start
	.type	esp_gdbstub_send_start, @function
esp_gdbstub_send_start:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/esp_gdbstub/src/packet.c"
	.loc 1 25 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 26 5 view .LVU1
	.loc 1 26 13 is_stmt 0 view .LVU2
	l32r	a8, .LC0
	movi.n	a9, 0
	.loc 1 27 5 view .LVU3
	movi.n	a10, 0x24
	.loc 1 26 13 view .LVU4
	s8i	a9, a8, 0
	.loc 1 27 5 is_stmt 1 view .LVU5
	call8	esp_gdbstub_putchar
.LVL0:
	.loc 1 28 1 is_stmt 0 view .LVU6
	retw.n
.LFE0:
	.size	esp_gdbstub_send_start, .-esp_gdbstub_send_start
	.section	.text.esp_gdbstub_send_char,"ax",@progbits
	.literal_position
	.literal .LC1, s_chsum
	.align	4
	.global	esp_gdbstub_send_char
	.type	esp_gdbstub_send_char, @function
esp_gdbstub_send_char:
.LVL1:
.LFB1:
	.loc 1 32 1 is_stmt 1 view -0
	.loc 1 32 1 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI1:
	.loc 1 33 5 is_stmt 1 view .LVU9
	.loc 1 32 1 is_stmt 0 view .LVU10
	extui	a2, a2, 0, 8
	.loc 1 33 35 view .LVU11
	movi.n	a9, 0
	addi	a8, a2, -125
	movi.n	a10, 1
	mov.n	a3, a9
	moveqz	a3, a10, a8
	mov.n	a8, a3
	.loc 1 33 42 view .LVU12
	addi	a3, a2, -42
	moveqz	a9, a10, a3
	or	a8, a8, a9
	l32r	a3, .LC1
	bnez.n	a8, .L7
	.loc 1 33 18 view .LVU13
	addi	a8, a2, -35
	extui	a8, a8, 0, 8
	bltui	a8, 2, .L7
.LVL2:
.LBB4:
.LBB5:
	.loc 1 38 9 is_stmt 1 view .LVU14
	mov.n	a10, a2
	call8	esp_gdbstub_putchar
.LVL3:
	.loc 1 39 9 view .LVU15
	.loc 1 39 17 is_stmt 0 view .LVU16
	l8ui	a8, a3, 0
	j	.L9
.LVL4:
.L7:
	.loc 1 39 17 view .LVU17
.LBE5:
.LBE4:
	.loc 1 34 9 is_stmt 1 view .LVU18
	movi	a10, 0x7d
	call8	esp_gdbstub_putchar
.LVL5:
	.loc 1 35 9 view .LVU19
	movi.n	a8, 0x20
	xor	a2, a2, a8
.LVL6:
	.loc 1 35 9 is_stmt 0 view .LVU20
	mov.n	a10, a2
	call8	esp_gdbstub_putchar
.LVL7:
	.loc 1 36 9 is_stmt 1 view .LVU21
	.loc 1 36 17 is_stmt 0 view .LVU22
	l8ui	a8, a3, 0
	addi	a8, a8, 125
.L9:
	add.n	a2, a2, a8
	s8i	a2, a3, 0
	.loc 1 41 1 view .LVU23
	retw.n
.LFE1:
	.size	esp_gdbstub_send_char, .-esp_gdbstub_send_char
	.section	.text.esp_gdbstub_send_str,"ax",@progbits
	.align	4
	.global	esp_gdbstub_send_str
	.type	esp_gdbstub_send_str, @function
esp_gdbstub_send_str:
.LVL8:
.LFB2:
	.loc 1 45 1 is_stmt 1 view -0
	.loc 1 45 1 is_stmt 0 view .LVU25
	entry	sp, 32
.LCFI2:
	.loc 1 46 5 is_stmt 1 view .LVU26
	.loc 1 46 11 is_stmt 0 view .LVU27
	j	.L11
.L12:
	.loc 1 47 9 is_stmt 1 view .LVU28
	call8	esp_gdbstub_send_char
.LVL9:
	.loc 1 48 9 view .LVU29
	.loc 1 48 10 is_stmt 0 view .LVU30
	addi.n	a2, a2, 1
.LVL10:
.L11:
	.loc 1 46 12 view .LVU31
	l8ui	a10, a2, 0
	.loc 1 46 11 view .LVU32
	bnez.n	a10, .L12
	.loc 1 50 1 view .LVU33
	retw.n
.LFE2:
	.size	esp_gdbstub_send_str, .-esp_gdbstub_send_str
	.section	.rodata.esp_gdbstub_send_hex.str1.1,"aMS",@progbits,1
.LC2:
	.string	"0123456789abcdef"
	.section	.text.esp_gdbstub_send_hex,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.align	4
	.global	esp_gdbstub_send_hex
	.type	esp_gdbstub_send_hex, @function
esp_gdbstub_send_hex:
.LVL11:
.LFB3:
	.loc 1 55 1 is_stmt 1 view -0
	.loc 1 55 1 is_stmt 0 view .LVU35
	entry	sp, 32
.LCFI3:
	.loc 1 56 5 is_stmt 1 view .LVU36
.LVL12:
	.loc 1 57 5 view .LVU37
.LBB6:
	.loc 1 57 10 view .LVU38
	.loc 1 57 5 is_stmt 0 view .LVU39
	j	.L14
.LVL13:
.L15:
	.loc 1 58 9 is_stmt 1 discriminator 3 view .LVU40
	.loc 1 58 52 is_stmt 0 discriminator 3 view .LVU41
	addi	a3, a3, -4
.LVL14:
	.loc 1 58 46 discriminator 3 view .LVU42
	ssr	a3
	sra	a8, a2
	.loc 1 58 40 discriminator 3 view .LVU43
	l32r	a4, .LC3
	.loc 1 58 58 discriminator 3 view .LVU44
	extui	a8, a8, 0, 4
	.loc 1 58 40 discriminator 3 view .LVU45
	add.n	a8, a4, a8
	.loc 1 58 9 discriminator 3 view .LVU46
	l8ui	a10, a8, 0
	call8	esp_gdbstub_send_char
.LVL15:
.L14:
	.loc 1 57 5 discriminator 1 view .LVU47
	bgei	a3, 1, .L15
	.loc 1 57 5 discriminator 1 view .LVU48
.LBE6:
	.loc 1 60 1 view .LVU49
	retw.n
.LFE3:
	.size	esp_gdbstub_send_hex, .-esp_gdbstub_send_hex
	.section	.text.esp_gdbstub_send_end,"ax",@progbits
	.literal_position
	.literal .LC4, s_chsum
	.align	4
	.global	esp_gdbstub_send_end
	.type	esp_gdbstub_send_end, @function
esp_gdbstub_send_end:
.LFB4:
	.loc 1 64 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 65 5 view .LVU51
	movi.n	a10, 0x23
	call8	esp_gdbstub_putchar
.LVL16:
	.loc 1 66 5 view .LVU52
	l32r	a8, .LC4
	movi.n	a11, 8
	l8ui	a10, a8, 0
	call8	esp_gdbstub_send_hex
.LVL17:
	.loc 1 67 1 is_stmt 0 view .LVU53
	retw.n
.LFE4:
	.size	esp_gdbstub_send_end, .-esp_gdbstub_send_end
	.section	.text.esp_gdbstub_send_str_packet,"ax",@progbits
	.align	4
	.global	esp_gdbstub_send_str_packet
	.type	esp_gdbstub_send_str_packet, @function
esp_gdbstub_send_str_packet:
.LVL18:
.LFB5:
	.loc 1 71 1 is_stmt 1 view -0
	.loc 1 71 1 is_stmt 0 view .LVU55
	entry	sp, 32
.LCFI5:
	.loc 1 72 5 is_stmt 1 view .LVU56
	call8	esp_gdbstub_send_start
.LVL19:
	.loc 1 73 5 view .LVU57
	.loc 1 73 8 is_stmt 0 view .LVU58
	beqz.n	a2, .L18
	.loc 1 74 9 is_stmt 1 view .LVU59
	mov.n	a10, a2
	call8	esp_gdbstub_send_str
.LVL20:
.L18:
	.loc 1 76 5 view .LVU60
	call8	esp_gdbstub_send_end
.LVL21:
	.loc 1 77 1 is_stmt 0 view .LVU61
	retw.n
.LFE5:
	.size	esp_gdbstub_send_str_packet, .-esp_gdbstub_send_str_packet
	.section	.text.esp_gdbstub_gethex,"ax",@progbits
	.align	4
	.global	esp_gdbstub_gethex
	.type	esp_gdbstub_gethex, @function
esp_gdbstub_gethex:
.LVL22:
.LFB6:
	.loc 1 84 1 is_stmt 1 view -0
	.loc 1 84 1 is_stmt 0 view .LVU63
	entry	sp, 32
.LCFI6:
	.loc 1 85 5 is_stmt 1 view .LVU64
	.loc 1 86 5 view .LVU65
	.loc 1 87 5 view .LVU66
.LVL23:
	.loc 1 88 5 view .LVU67
	.loc 1 89 5 view .LVU68
	.loc 1 90 5 view .LVU69
	.loc 1 91 12 is_stmt 0 view .LVU70
	movi.n	a11, 0x40
	.loc 1 90 8 view .LVU71
	beqi	a3, -1, .L23
	.loc 1 89 8 view .LVU72
	addi.n	a8, a3, 3
	movgez	a8, a3, a3
	srai	a11, a8, 2
.L23:
.LVL24:
	.loc 1 93 5 is_stmt 1 view .LVU73
	.loc 1 87 14 is_stmt 0 view .LVU74
	movi.n	a8, 0
	.loc 1 93 12 view .LVU75
	mov.n	a12, a8
	.loc 1 96 12 view .LVU76
	movi.n	a13, 9
	.loc 1 93 5 view .LVU77
	j	.L24
.LVL25:
.L31:
	.loc 1 94 9 is_stmt 1 view .LVU78
	.loc 1 94 14 is_stmt 0 view .LVU79
	l32i.n	a14, a2, 0
	.loc 1 94 11 view .LVU80
	l8ui	a10, a14, 0
.LVL26:
	.loc 1 95 9 is_stmt 1 view .LVU81
	.loc 1 95 15 is_stmt 0 view .LVU82
	addi.n	a9, a14, 1
	s32i.n	a9, a2, 0
.LVL27:
	.loc 1 96 9 is_stmt 1 view .LVU83
	.loc 1 96 22 is_stmt 0 view .LVU84
	addi	a9, a10, -48
	.loc 1 96 12 view .LVU85
	extui	a15, a9, 0, 8
	bltu	a13, a15, .L25
	.loc 1 97 13 is_stmt 1 view .LVU86
	.loc 1 97 15 is_stmt 0 view .LVU87
	slli	a8, a8, 4
.LVL28:
	.loc 1 98 13 is_stmt 1 view .LVU88
	.loc 1 98 15 is_stmt 0 view .LVU89
	or	a8, a9, a8
.LVL29:
	.loc 1 98 15 view .LVU90
	j	.L26
.L25:
	.loc 1 99 16 is_stmt 1 view .LVU91
	.loc 1 99 29 is_stmt 0 view .LVU92
	addi	a9, a10, -65
	.loc 1 99 19 view .LVU93
	extui	a9, a9, 0, 8
	bgeui	a9, 6, .L27
	.loc 1 100 13 is_stmt 1 view .LVU94
	.loc 1 100 15 is_stmt 0 view .LVU95
	slli	a8, a8, 4
.LVL30:
	.loc 1 101 13 is_stmt 1 view .LVU96
	.loc 1 101 28 is_stmt 0 view .LVU97
	addi	a10, a10, -55
.LVL31:
	.loc 1 101 28 view .LVU98
	j	.L36
.LVL32:
.L27:
	.loc 1 102 16 is_stmt 1 view .LVU99
	.loc 1 102 29 is_stmt 0 view .LVU100
	addi	a9, a10, -97
	.loc 1 102 19 view .LVU101
	extui	a9, a9, 0, 8
	bgeui	a9, 6, .L28
	.loc 1 103 13 is_stmt 1 view .LVU102
	.loc 1 103 15 is_stmt 0 view .LVU103
	slli	a8, a8, 4
.LVL33:
	.loc 1 104 13 is_stmt 1 view .LVU104
	.loc 1 104 28 is_stmt 0 view .LVU105
	addi	a10, a10, -87
.LVL34:
.L36:
	.loc 1 104 15 view .LVU106
	or	a8, a10, a8
.LVL35:
	.loc 1 104 15 view .LVU107
	j	.L26
.LVL36:
.L28:
	.loc 1 105 16 is_stmt 1 view .LVU108
	.loc 1 105 19 is_stmt 0 view .LVU109
	movi.n	a9, 0x23
	bne	a10, a9, .L29
	.loc 1 106 13 is_stmt 1 view .LVU110
	.loc 1 106 16 is_stmt 0 view .LVU111
	bnei	a3, -1, .L33
	.loc 1 107 17 is_stmt 1 view .LVU112
	j	.L37
.L29:
	.loc 1 112 13 view .LVU113
	.loc 1 112 16 is_stmt 0 view .LVU114
	bnei	a3, -1, .L34
.L37:
	.loc 1 113 17 is_stmt 1 view .LVU115
	.loc 1 113 23 is_stmt 0 view .LVU116
	s32i.n	a14, a2, 0
	.loc 1 114 17 is_stmt 1 view .LVU117
	.loc 1 114 24 is_stmt 0 view .LVU118
	j	.L22
.LVL37:
.L26:
	.loc 1 93 26 discriminator 2 view .LVU119
	addi.n	a12, a12, 1
.LVL38:
.L24:
	.loc 1 93 5 discriminator 1 view .LVU120
	blt	a12, a11, .L31
	j	.L22
.LVL39:
.L33:
	.loc 1 110 20 view .LVU121
	movi.n	a8, -1
.LVL40:
	.loc 1 110 20 view .LVU122
	j	.L22
.LVL41:
.L34:
	.loc 1 116 20 view .LVU123
	movi.n	a8, -2
.LVL42:
.L22:
	.loc 1 120 1 view .LVU124
	mov.n	a2, a8
.LVL43:
	.loc 1 120 1 view .LVU125
	retw.n
.LFE6:
	.size	esp_gdbstub_gethex, .-esp_gdbstub_gethex
	.section	.text.esp_gdbstub_read_command,"ax",@progbits
	.literal_position
	.literal .LC5, s_cmd
	.align	4
	.global	esp_gdbstub_read_command
	.type	esp_gdbstub_read_command, @function
esp_gdbstub_read_command:
.LVL44:
.LFB7:
	.loc 1 129 1 is_stmt 1 view -0
	.loc 1 129 1 is_stmt 0 view .LVU127
	entry	sp, 48
.LCFI7:
	.loc 1 130 5 is_stmt 1 view .LVU128
	.loc 1 131 5 view .LVU129
.LVL45:
	.loc 1 132 5 view .LVU130
	.loc 1 133 5 view .LVU131
	.loc 1 134 5 view .LVU132
	.loc 1 134 9 is_stmt 0 view .LVU133
	call8	esp_gdbstub_getchar
.LVL46:
	.loc 1 135 5 is_stmt 1 view .LVU134
	.loc 1 135 8 is_stmt 0 view .LVU135
	extui	a5, a10, 0, 8
	movi.n	a4, 0x24
	beq	a5, a4, .L46
	.loc 1 136 9 is_stmt 1 view .LVU136
	extui	a2, a10, 0, 8
.LVL47:
	.loc 1 136 16 is_stmt 0 view .LVU137
	j	.L38
.LVL48:
.L46:
	.loc 1 133 9 view .LVU138
	movi.n	a8, 0
	.loc 1 131 19 view .LVU139
	mov.n	a4, a8
	.loc 1 140 12 view .LVU140
	movi.n	a6, 0x23
.LVL49:
.L39:
	.loc 1 131 19 view .LVU141
	mov.n	a5, a8
	j	.L44
.LVL50:
.L47:
	.loc 1 149 15 view .LVU142
	movi.n	a5, 0
	.loc 1 148 19 view .LVU143
	mov.n	a4, a5
.LVL51:
.L44:
	.loc 1 138 5 is_stmt 1 view .LVU144
	.loc 1 139 9 view .LVU145
	.loc 1 139 13 is_stmt 0 view .LVU146
	call8	esp_gdbstub_getchar
.LVL52:
	.loc 1 139 11 view .LVU147
	extui	a10, a10, 0, 8
.LVL53:
	.loc 1 140 9 is_stmt 1 view .LVU148
	.loc 1 140 12 is_stmt 0 view .LVU149
	bne	a10, a6, .L41
	.loc 1 142 13 is_stmt 1 view .LVU150
	.loc 1 142 22 is_stmt 0 view .LVU151
	l32r	a6, .LC5
	movi.n	a9, 0
	add.n	a8, a6, a5
	s8i	a9, a8, 0
	.loc 1 143 13 is_stmt 1 view .LVU152
	.loc 1 164 5 view .LVU153
	.loc 1 164 18 is_stmt 0 view .LVU154
	call8	esp_gdbstub_getchar
.LVL54:
	.loc 1 164 16 view .LVU155
	s8i	a10, sp, 4
	.loc 1 165 5 is_stmt 1 view .LVU156
	.loc 1 165 18 is_stmt 0 view .LVU157
	call8	esp_gdbstub_getchar
.LVL55:
	.loc 1 165 16 view .LVU158
	s8i	a10, sp, 5
	.loc 1 166 5 is_stmt 1 view .LVU159
	.loc 1 166 26 is_stmt 0 view .LVU160
	addi.n	a8, sp, 4
	.loc 1 167 28 view .LVU161
	movi.n	a11, 8
	mov.n	a10, sp
	.loc 1 166 26 view .LVU162
	s32i.n	a8, sp, 0
	.loc 1 167 5 is_stmt 1 view .LVU163
	.loc 1 167 28 is_stmt 0 view .LVU164
	call8	esp_gdbstub_gethex
.LVL56:
	.loc 1 168 5 is_stmt 1 view .LVU165
	.loc 1 168 8 is_stmt 0 view .LVU166
	extui	a10, a10, 0, 8
	.loc 1 168 8 view .LVU167
	bne	a4, a10, .L42
	j	.L49
.LVL57:
.L41:
	.loc 1 145 9 is_stmt 1 view .LVU168
	.loc 1 146 9 view .LVU169
	.loc 1 146 12 is_stmt 0 view .LVU170
	movi.n	a8, 0x24
	beq	a10, a8, .L47
	.loc 1 145 15 view .LVU171
	add.n	a4, a4, a10
	.loc 1 152 12 view .LVU172
	movi	a8, 0x7d
	.loc 1 145 15 view .LVU173
	extui	a4, a4, 0, 8
	.loc 1 152 9 is_stmt 1 view .LVU174
	.loc 1 152 12 is_stmt 0 view .LVU175
	bne	a10, a8, .L45
	.loc 1 154 13 is_stmt 1 view .LVU176
	.loc 1 154 17 is_stmt 0 view .LVU177
	call8	esp_gdbstub_getchar
.LVL58:
	.loc 1 154 15 view .LVU178
	extui	a10, a10, 0, 8
.LVL59:
	.loc 1 155 13 is_stmt 1 view .LVU179
	.loc 1 155 19 is_stmt 0 view .LVU180
	add.n	a4, a4, a10
	.loc 1 156 15 view .LVU181
	movi.n	a8, 0x20
	.loc 1 155 19 view .LVU182
	extui	a4, a4, 0, 8
.LVL60:
	.loc 1 156 13 is_stmt 1 view .LVU183
	.loc 1 156 15 is_stmt 0 view .LVU184
	xor	a10, a10, a8
.LVL61:
.L45:
	.loc 1 158 9 is_stmt 1 view .LVU185
	.loc 1 158 20 is_stmt 0 view .LVU186
	l32r	a9, .LC5
	.loc 1 158 16 view .LVU187
	addi.n	a8, a5, 1
.LVL62:
	.loc 1 158 20 view .LVU188
	add.n	a5, a9, a5
	s8i	a10, a5, 0
	.loc 1 159 9 is_stmt 1 view .LVU189
	.loc 1 159 12 is_stmt 0 view .LVU190
	movi	a5, 0x1ff
	bge	a5, a8, .L39
	j	.L48
.LVL63:
.L42:
	.loc 1 169 9 is_stmt 1 view .LVU191
	movi.n	a10, 0x2d
.LVL64:
	.loc 1 169 9 is_stmt 0 view .LVU192
	call8	esp_gdbstub_putchar
.LVL65:
	.loc 1 170 9 is_stmt 1 view .LVU193
	j	.L48
.LVL66:
.L49:
	.loc 1 172 9 view .LVU194
	movi.n	a10, 0x2b
.LVL67:
	.loc 1 172 9 is_stmt 0 view .LVU195
	call8	esp_gdbstub_putchar
.LVL68:
	.loc 1 173 9 is_stmt 1 view .LVU196
	.loc 1 173 18 is_stmt 0 view .LVU197
	s32i.n	a6, a2, 0
	.loc 1 174 9 is_stmt 1 view .LVU198
	.loc 1 174 19 is_stmt 0 view .LVU199
	s32i.n	a5, a3, 0
	.loc 1 175 9 is_stmt 1 view .LVU200
	.loc 1 175 16 is_stmt 0 view .LVU201
	movi.n	a2, -3
.LVL69:
	.loc 1 175 16 view .LVU202
	j	.L38
.LVL70:
.L48:
	.loc 1 160 20 view .LVU203
	movi.n	a2, -2
.LVL71:
.L38:
	.loc 1 177 1 view .LVU204
	retw.n
.LFE7:
	.size	esp_gdbstub_read_command, .-esp_gdbstub_read_command
	.section	.bss.s_chsum,"aw",@nobits
	.type	s_chsum, @object
	.size	s_chsum, 1
s_chsum:
	.zero	1
	.section	.bss.s_cmd,"aw",@nobits
	.type	s_cmd, @object
	.size	s_cmd, 512
s_cmd:
	.zero	512
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 6 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 7 "/home/dieter/Development/esp-idf/components/esp_gdbstub/private_include/esp_gdbstub_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc05
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x5
	.byte	0x94
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0xb1
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x5
	.byte	0xb3
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x5
	.byte	0xb4
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0xb6
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0xb7
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbd
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0xbe
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6a
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xfb
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0xbf
	.byte	0x1b
	.4byte	0x10b
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc0
	.byte	0x1b
	.4byte	0x10b
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc2
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x15b
	.4byte	0x150
	.uleb128 0x8
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x140
	.uleb128 0xa
	.byte	0x4
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x155
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	0x160
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc4
	.byte	0x1b
	.4byte	0x150
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd1
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0xd4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0xd6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0xda
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0xed
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x5
	.byte	0xee
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0xf6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0xf7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0xf9
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0xfa
	.byte	0x1d
	.4byte	0x46
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0xfd
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0xfe
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x100
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x160
	.byte	0x12
	.4byte	0x52
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x193
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x194
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x195
	.byte	0x1b
	.4byte	0x15b
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x196
	.byte	0x1b
	.4byte	0x15b
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x198
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x199
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x46
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x15b
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x15b
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x6a
	.4byte	0x3b8
	.uleb128 0x8
	.4byte	0x63
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0x3a8
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0x3b8
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0x3b8
	.uleb128 0x7
	.4byte	0x33
	.4byte	0x3e7
	.uleb128 0x8
	.4byte	0x63
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0x3d7
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0x3e7
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0x3e7
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0x10b
	.uleb128 0x7
	.4byte	0x52
	.4byte	0x423
	.uleb128 0x8
	.4byte	0x63
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0x413
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x2b7
	.byte	0x12
	.4byte	0x423
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x52
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x52
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x30b
	.byte	0x11
	.4byte	0x63
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x315
	.byte	0x11
	.4byte	0x63
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x318
	.byte	0x11
	.4byte	0x63
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x325
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x326
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x327
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x328
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x329
	.byte	0x1c
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x6a
	.4byte	0x52a
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	0x51f
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x32d
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x32e
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x32f
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x330
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x331
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x332
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x333
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x334
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x335
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x336
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x337
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x338
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x339
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x33a
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x33b
	.byte	0x1b
	.4byte	0x52a
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x343
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x344
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x346
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x347
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x349
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x390
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x392
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x393
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x394
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x395
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x396
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x397
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x398
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x399
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x5
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x500
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x503
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x6
	.2byte	0x504
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x507
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x508
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x510
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x513
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x514
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x6
	.2byte	0x517
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x6
	.2byte	0x518
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x6
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x33
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x6
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF148
	.uleb128 0x7
	.4byte	0x2c
	.4byte	0x82c
	.uleb128 0xd
	.4byte	0x63
	.2byte	0x1ff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0x1
	.byte	0x12
	.byte	0x16
	.4byte	0x81b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cmd
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x160
	.uleb128 0x5
	.byte	0x3
	.4byte	s_chsum
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x4b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x961
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x1
	.byte	0x80
	.byte	0x2e
	.4byte	0x961
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x1
	.byte	0x80
	.byte	0x3f
	.4byte	0x96d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x82
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0x1
	.byte	0x83
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0x1
	.byte	0x84
	.byte	0x13
	.4byte	0x973
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.4byte	0x4b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa6
	.byte	0x1a
	.4byte	0x983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa7
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x14
	.4byte	.LVL46
	.4byte	0xbf0
	.uleb128 0x14
	.4byte	.LVL52
	.4byte	0xbf0
	.uleb128 0x14
	.4byte	.LVL54
	.4byte	0xbf0
	.uleb128 0x14
	.4byte	.LVL55
	.4byte	0xbf0
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0x989
	.4byte	0x933
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.4byte	.LVL58
	.4byte	0xbf0
	.uleb128 0x15
	.4byte	.LVL65
	.4byte	0xbfc
	.4byte	0x950
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0xbfc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x967
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x89
	.uleb128 0x7
	.4byte	0x2c
	.4byte	0x983
	.uleb128 0x8
	.4byte	0x63
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x1
	.byte	0x53
	.byte	0xa
	.4byte	0x7d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0f
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.byte	0x53
	.byte	0x33
	.4byte	0xa0f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0x53
	.byte	0x3c
	.4byte	0x4b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.4byte	0x4b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.string	"no"
	.byte	0x1
	.byte	0x56
	.byte	0x9
	.4byte	0x4b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x7d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x58
	.byte	0xa
	.4byte	0x160
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x983
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa60
	.uleb128 0x1a
	.string	"str"
	.byte	0x1
	.byte	0x46
	.byte	0x2e
	.4byte	0x155
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0xb55
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0xb0b
	.4byte	0xa56
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0xa60
	.byte	0
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9a
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0xbfc
	.4byte	0xa8a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0xa9a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0b
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x36
	.byte	0x1f
	.4byte	0x4b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.4byte	0x4b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0x1
	.byte	0x38
	.byte	0x11
	.4byte	0x155
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x39
	.byte	0xe
	.4byte	0x4b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0xb3d
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3d
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.byte	0x27
	.4byte	0x155
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0xb3d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.byte	0x1
	.4byte	0xb55
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x1f
	.byte	0x21
	.4byte	0x160
	.byte	0
	.uleb128 0x19
	.4byte	.LASF165
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7c
	.uleb128 0x17
	.4byte	.LVL0
	.4byte	0xbfc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xb3d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf0
	.uleb128 0x1f
	.4byte	0xb4a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x20
	.4byte	0xb3d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xbcb
	.uleb128 0x1f
	.4byte	0xb4a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0xbfc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xbfc
	.4byte	0xbdf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0xbfc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.byte	0x6b
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x7
	.byte	0x71
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU134
	.uleb128 .LVU141
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU148
	.uleb128 .LVU155
	.uleb128 .LVU168
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU191
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU130
	.uleb128 .LVU141
	.uleb128 .LVU183
	.uleb128 .LVU191
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU132
	.uleb128 .LVU141
	.uleb128 .LVU188
	.uleb128 .LVU191
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU165
	.uleb128 .LVU168
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU194
	.uleb128 .LVU195
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU74
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU67
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU122
	.uleb128 .LVU123
	.uleb128 .LVU124
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU81
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU124
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7a
	.sleb128 55
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU14
	.uleb128 .LVU17
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"Xthal_extra_size"
.LASF42:
	.string	"Xthal_have_windowed"
.LASF67:
	.string	"Xthal_intlevel_mask"
.LASF162:
	.string	"esp_gdbstub_send_hex"
.LASF9:
	.string	"size_t"
.LASF66:
	.string	"Xthal_excm_level"
.LASF131:
	.string	"Xthal_dtlb_arf_ways"
.LASF36:
	.string	"Xthal_debug_configured"
.LASF151:
	.string	"chsum"
.LASF28:
	.string	"Xthal_num_aregs_log2"
.LASF112:
	.string	"Xthal_have_spanning_way"
.LASF109:
	.string	"Xthal_dcache_ways"
.LASF51:
	.string	"Xthal_have_mul16"
.LASF148:
	.string	"long int"
.LASF76:
	.string	"Xthal_num_ccompare"
.LASF83:
	.string	"Xthal_tram_pending"
.LASF6:
	.string	"long long unsigned int"
.LASF101:
	.string	"Xthal_dataram_paddr"
.LASF158:
	.string	"out_size"
.LASF87:
	.string	"Xthal_num_instram"
.LASF150:
	.string	"s_chsum"
.LASF32:
	.string	"Xthal_dcache_linesize"
.LASF57:
	.string	"Xthal_build_unique_id"
.LASF106:
	.string	"Xthal_icache_setwidth"
.LASF157:
	.string	"out_cmd"
.LASF71:
	.string	"Xthal_inttype_mask"
.LASF167:
	.string	"esp_gdbstub_putchar"
.LASF38:
	.string	"Xthal_release_minor"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF154:
	.string	"rchsum"
.LASF62:
	.string	"Xthal_hw_release_name"
.LASF98:
	.string	"Xthal_datarom_paddr"
.LASF34:
	.string	"Xthal_dcache_size"
.LASF123:
	.string	"Xthal_mmu_ca_bits"
.LASF92:
	.string	"Xthal_instrom_paddr"
.LASF159:
	.string	"bits"
.LASF129:
	.string	"Xthal_dtlb_way_bits"
.LASF124:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF31:
	.string	"Xthal_icache_linesize"
.LASF64:
	.string	"Xthal_num_intlevels"
.LASF102:
	.string	"Xthal_dataram_size"
.LASF13:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF170:
	.string	"/home/dieter/Development/ProjektEi/build/esp_gdbstub"
.LASF84:
	.string	"Xthal_tram_enabled"
.LASF69:
	.string	"Xthal_intlevel"
.LASF30:
	.string	"Xthal_dcache_linewidth"
.LASF140:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF133:
	.string	"Xthal_cp_mask_FPU"
.LASF80:
	.string	"Xthal_have_interrupts"
.LASF7:
	.string	"__uint32_t"
.LASF126:
	.string	"Xthal_itlb_way_bits"
.LASF130:
	.string	"Xthal_dtlb_ways"
.LASF88:
	.string	"Xthal_num_datarom"
.LASF74:
	.string	"Xthal_num_dbreak"
.LASF25:
	.string	"Xthal_cp_max"
.LASF53:
	.string	"Xthal_have_speculation"
.LASF104:
	.string	"Xthal_xlmi_paddr"
.LASF46:
	.string	"Xthal_have_nsa"
.LASF4:
	.string	"unsigned int"
.LASF118:
	.string	"Xthal_mmu_asid_bits"
.LASF134:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF73:
	.string	"Xthal_num_ibreak"
.LASF132:
	.string	"Xthal_cp_id_FPU"
.LASF127:
	.string	"Xthal_itlb_ways"
.LASF171:
	.string	"esp_gdbstub_send_char"
.LASF27:
	.string	"Xthal_num_aregs"
.LASF97:
	.string	"Xthal_datarom_vaddr"
.LASF138:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF3:
	.string	"short unsigned int"
.LASF142:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF54:
	.string	"Xthal_have_threadptr"
.LASF144:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF99:
	.string	"Xthal_datarom_size"
.LASF81:
	.string	"Xthal_have_highlevel_interrupts"
.LASF137:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF10:
	.string	"Xthal_rev_no"
.LASF68:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF147:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF70:
	.string	"Xthal_inttype"
.LASF149:
	.string	"s_cmd"
.LASF52:
	.string	"Xthal_have_fp"
.LASF89:
	.string	"Xthal_num_dataram"
.LASF43:
	.string	"Xthal_have_density"
.LASF103:
	.string	"Xthal_xlmi_vaddr"
.LASF90:
	.string	"Xthal_num_xlmi"
.LASF117:
	.string	"Xthal_have_tlbs"
.LASF145:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF152:
	.string	"sentchs"
.LASF60:
	.string	"Xthal_hw_release_major"
.LASF85:
	.string	"Xthal_tram_sync"
.LASF40:
	.string	"Xthal_release_internal"
.LASF29:
	.string	"Xthal_icache_linewidth"
.LASF119:
	.string	"Xthal_mmu_asid_kernel"
.LASF110:
	.string	"Xthal_icache_line_lockable"
.LASF61:
	.string	"Xthal_hw_release_minor"
.LASF111:
	.string	"Xthal_dcache_line_lockable"
.LASF82:
	.string	"Xthal_have_nmi"
.LASF20:
	.string	"Xthal_all_extra_align"
.LASF94:
	.string	"Xthal_instram_vaddr"
.LASF11:
	.string	"Xthal_cpregs_save_fn"
.LASF18:
	.string	"Xthal_cpregs_align"
.LASF160:
	.string	"esp_gdbstub_send_str_packet"
.LASF96:
	.string	"Xthal_instram_size"
.LASF16:
	.string	"Xthal_extra_align"
.LASF122:
	.string	"Xthal_mmu_sr_bits"
.LASF91:
	.string	"Xthal_instrom_vaddr"
.LASF63:
	.string	"Xthal_hw_release_internal"
.LASF108:
	.string	"Xthal_icache_ways"
.LASF114:
	.string	"Xthal_have_mimic_cacheattr"
.LASF56:
	.string	"Xthal_num_writebuffer_entries"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF78:
	.string	"Xthal_have_exceptions"
.LASF55:
	.string	"Xthal_have_pif"
.LASF2:
	.string	"short int"
.LASF113:
	.string	"Xthal_have_identity_map"
.LASF120:
	.string	"Xthal_mmu_rings"
.LASF12:
	.string	"Xthal_cpregs_restore_fn"
.LASF153:
	.string	"c_ptr"
.LASF23:
	.string	"Xthal_num_coprocessors"
.LASF161:
	.string	"esp_gdbstub_send_end"
.LASF33:
	.string	"Xthal_icache_size"
.LASF65:
	.string	"Xthal_num_interrupts"
.LASF141:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF77:
	.string	"Xthal_have_prid"
.LASF8:
	.string	"uint32_t"
.LASF166:
	.string	"esp_gdbstub_getchar"
.LASF24:
	.string	"Xthal_cp_num"
.LASF165:
	.string	"esp_gdbstub_send_start"
.LASF49:
	.string	"Xthal_have_clamps"
.LASF22:
	.string	"Xthal_cp_names"
.LASF41:
	.string	"Xthal_memory_order"
.LASF21:
	.string	"char"
.LASF35:
	.string	"Xthal_dcache_is_writeback"
.LASF105:
	.string	"Xthal_xlmi_size"
.LASF115:
	.string	"Xthal_have_xlt_cacheattr"
.LASF163:
	.string	"hex_chars"
.LASF17:
	.string	"Xthal_cpregs_size"
.LASF95:
	.string	"Xthal_instram_paddr"
.LASF93:
	.string	"Xthal_instrom_size"
.LASF168:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF121:
	.string	"Xthal_mmu_ring_bits"
.LASF156:
	.string	"esp_gdbstub_gethex"
.LASF75:
	.string	"Xthal_have_ccount"
.LASF136:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF44:
	.string	"Xthal_have_booleans"
.LASF100:
	.string	"Xthal_dataram_vaddr"
.LASF79:
	.string	"Xthal_xea_version"
.LASF128:
	.string	"Xthal_itlb_arf_ways"
.LASF125:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF39:
	.string	"Xthal_release_name"
.LASF47:
	.string	"Xthal_have_minmax"
.LASF37:
	.string	"Xthal_release_major"
.LASF50:
	.string	"Xthal_have_mac16"
.LASF48:
	.string	"Xthal_have_sext"
.LASF58:
	.string	"Xthal_hw_configid0"
.LASF59:
	.string	"Xthal_hw_configid1"
.LASF26:
	.string	"Xthal_cp_mask"
.LASF72:
	.string	"Xthal_timer_interrupt"
.LASF169:
	.string	"/home/dieter/Development/esp-idf/components/esp_gdbstub/src/packet.c"
.LASF139:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF86:
	.string	"Xthal_num_instrom"
.LASF155:
	.string	"esp_gdbstub_read_command"
.LASF116:
	.string	"Xthal_have_cacheattr"
.LASF143:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF45:
	.string	"Xthal_have_loops"
.LASF107:
	.string	"Xthal_dcache_setwidth"
.LASF146:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF135:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF164:
	.string	"esp_gdbstub_send_str"
.LASF19:
	.string	"Xthal_all_extra_size"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
