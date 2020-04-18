	.file	"u8x8_capture.c"
	.text
.Ltext0:
	.section	.text.u8x8_capture_get_pixel_1,"ax",@progbits
	.align	4
	.global	u8x8_capture_get_pixel_1
	.type	u8x8_capture_get_pixel_1, @function
u8x8_capture_get_pixel_1:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_capture.c"
	.loc 1 46 1 view -0
	.loc 1 46 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 51 3 is_stmt 1 view .LVU2
	.loc 1 46 1 is_stmt 0 view .LVU3
	extui	a3, a3, 0, 16
	.loc 1 46 1 view .LVU4
	extui	a5, a5, 0, 8
.LVL1:
	.loc 1 52 3 is_stmt 1 view .LVU5
	.loc 1 53 3 view .LVU6
	.loc 1 51 17 is_stmt 0 view .LVU7
	srli	a8, a3, 3
	.loc 1 51 20 view .LVU8
	mul16u	a8, a8, a5
	.loc 1 46 1 view .LVU9
	extui	a2, a2, 0, 16
.LVL2:
	.loc 1 54 3 is_stmt 1 view .LVU10
	.loc 1 54 9 is_stmt 0 view .LVU11
	slli	a8, a8, 3
	add.n	a8, a4, a8
	add.n	a8, a8, a2
	l8ui	a2, a8, 0
.LVL3:
	.loc 1 54 29 view .LVU12
	extui	a3, a3, 0, 3
.LVL4:
	.loc 1 54 29 view .LVU13
	ssr	a3
	sra	a2, a2
	.loc 1 57 1 view .LVU14
	extui	a2, a2, 0, 1
	retw.n
.LFE0:
	.size	u8x8_capture_get_pixel_1, .-u8x8_capture_get_pixel_1
	.section	.text.u8x8_capture_get_pixel_2,"ax",@progbits
	.align	4
	.global	u8x8_capture_get_pixel_2
	.type	u8x8_capture_get_pixel_2, @function
u8x8_capture_get_pixel_2:
.LVL5:
.LFB1:
	.loc 1 62 1 is_stmt 1 view -0
	.loc 1 62 1 is_stmt 0 view .LVU16
	entry	sp, 32
.LCFI1:
	.loc 1 67 3 is_stmt 1 view .LVU17
	.loc 1 62 1 is_stmt 0 view .LVU18
	extui	a5, a5, 0, 8
.LVL6:
	.loc 1 68 3 is_stmt 1 view .LVU19
	.loc 1 69 3 view .LVU20
	.loc 1 67 5 is_stmt 0 view .LVU21
	mull	a5, a3, a5
.LVL7:
	.loc 1 62 1 view .LVU22
	extui	a2, a2, 0, 16
.LVL8:
	.loc 1 70 3 is_stmt 1 view .LVU23
	.loc 1 68 12 is_stmt 0 view .LVU24
	extui	a5, a5, 0, 16
	.loc 1 69 16 view .LVU25
	srli	a8, a2, 3
	.loc 1 70 9 view .LVU26
	add.n	a5, a4, a5
	add.n	a5, a5, a8
	l8ui	a5, a5, 0
	.loc 1 70 25 view .LVU27
	movi	a8, 0x80
	.loc 1 70 29 view .LVU28
	extui	a2, a2, 0, 3
.LVL9:
	.loc 1 70 25 view .LVU29
	ssr	a2
	sra	a2, a8
	.loc 1 70 19 view .LVU30
	and	a5, a5, a2
	.loc 1 70 6 view .LVU31
	movi.n	a8, 1
	movi.n	a2, 0
	movnez	a2, a8, a5
	.loc 1 73 1 view .LVU32
	retw.n
.LFE1:
	.size	u8x8_capture_get_pixel_2, .-u8x8_capture_get_pixel_2
	.section	.rodata.u8x8_capture_write_pbm_pre.str1.1,"aMS",@progbits,1
.LC0:
	.string	"P1\n"
.LC2:
	.string	"\n"
	.section	.text.u8x8_capture_write_pbm_pre,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.global	u8x8_capture_write_pbm_pre
	.type	u8x8_capture_write_pbm_pre, @function
u8x8_capture_write_pbm_pre:
.LVL10:
.LFB2:
	.loc 1 76 1 is_stmt 1 view -0
	.loc 1 76 1 is_stmt 0 view .LVU34
	entry	sp, 32
.LCFI2:
	.loc 1 77 3 is_stmt 1 view .LVU35
	l32r	a10, .LC1
	.loc 1 76 1 is_stmt 0 view .LVU36
	extui	a2, a2, 0, 8
	.loc 1 77 3 view .LVU37
	callx8	a4
.LVL11:
	.loc 1 78 3 is_stmt 1 view .LVU38
	slli	a10, a2, 3
	call8	u8x8_utoa
.LVL12:
	callx8	a4
.LVL13:
	.loc 1 79 3 view .LVU39
	l32r	a2, .LC3
.LVL14:
	.loc 1 76 1 is_stmt 0 view .LVU40
	extui	a3, a3, 0, 8
	.loc 1 79 3 view .LVU41
	mov.n	a10, a2
	callx8	a4
.LVL15:
	.loc 1 80 3 is_stmt 1 view .LVU42
	slli	a10, a3, 3
	call8	u8x8_utoa
.LVL16:
	callx8	a4
.LVL17:
	.loc 1 81 3 view .LVU43
	mov.n	a10, a2
	callx8	a4
.LVL18:
	.loc 1 82 1 is_stmt 0 view .LVU44
	retw.n
.LFE2:
	.size	u8x8_capture_write_pbm_pre, .-u8x8_capture_write_pbm_pre
	.section	.rodata.u8x8_capture_write_pbm_buffer.str1.1,"aMS",@progbits,1
.LC4:
	.string	"1"
.LC6:
	.string	"0"
	.section	.text.u8x8_capture_write_pbm_buffer,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, .LC2
	.align	4
	.global	u8x8_capture_write_pbm_buffer
	.type	u8x8_capture_write_pbm_buffer, @function
u8x8_capture_write_pbm_buffer:
.LVL19:
.LFB3:
	.loc 1 86 1 is_stmt 1 view -0
	.loc 1 86 1 is_stmt 0 view .LVU46
	entry	sp, 48
.LCFI3:
	.loc 1 87 3 is_stmt 1 view .LVU47
	.loc 1 88 3 view .LVU48
	.loc 1 90 3 view .LVU49
	.loc 1 86 1 is_stmt 0 view .LVU50
	extui	a3, a3, 0, 8
.LVL20:
	.loc 1 91 3 is_stmt 1 view .LVU51
	.loc 1 92 5 is_stmt 0 view .LVU52
	extui	a4, a4, 0, 8
	.loc 1 93 5 view .LVU53
	slli	a4, a4, 3
.LVL21:
	.loc 1 91 5 view .LVU54
	slli	a8, a3, 3
	.loc 1 93 5 view .LVU55
	s32i.n	a4, sp, 4
	.loc 1 91 5 view .LVU56
	s32i.n	a8, sp, 0
.LVL22:
	.loc 1 92 3 is_stmt 1 view .LVU57
	.loc 1 93 3 view .LVU58
	.loc 1 95 3 view .LVU59
	.loc 1 95 3 is_stmt 0 view .LVU60
	movi.n	a4, 0
	j	.L5
.LVL23:
.L8:
	.loc 1 99 7 is_stmt 1 view .LVU61
	.loc 1 99 12 is_stmt 0 view .LVU62
	mov.n	a13, a3
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a7
	callx8	a5
.LVL24:
	.loc 1 99 10 view .LVU63
	beqz.n	a10, .L6
	.loc 1 100 2 is_stmt 1 view .LVU64
	l32r	a10, .LC5
	j	.L11
.L6:
	.loc 1 102 2 view .LVU65
	l32r	a10, .LC7
.L11:
	callx8	a6
.LVL25:
	.loc 1 102 2 is_stmt 0 view .LVU66
	addi.n	a7, a7, 1
.LVL26:
	.loc 1 102 2 view .LVU67
	j	.L9
.LVL27:
.L10:
	.loc 1 102 2 view .LVU68
	movi.n	a7, 0
.L9:
.LVL28:
	.loc 1 97 5 discriminator 1 view .LVU69
	l32i.n	a9, sp, 0
	extui	a8, a7, 0, 16
	bltu	a8, a9, .L8
	.loc 1 104 5 is_stmt 1 discriminator 2 view .LVU70
	l32r	a10, .LC8
	addi.n	a4, a4, 1
.LVL29:
	.loc 1 104 5 is_stmt 0 discriminator 2 view .LVU71
	callx8	a6
.LVL30:
.L5:
	.loc 1 95 3 discriminator 1 view .LVU72
	l32i.n	a8, sp, 4
	extui	a7, a4, 0, 16
	bltu	a7, a8, .L10
	.loc 1 106 1 view .LVU73
	retw.n
.LFE3:
	.size	u8x8_capture_write_pbm_buffer, .-u8x8_capture_write_pbm_buffer
	.section	.rodata.u8x8_capture_write_xbm_pre.str1.1,"aMS",@progbits,1
.LC9:
	.string	"#define xbm_width "
.LC12:
	.string	"#define xbm_height "
.LC14:
	.string	"static unsigned char xbm_bits[] = {\n"
	.section	.text.u8x8_capture_write_xbm_pre,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, .LC2
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	u8x8_capture_write_xbm_pre
	.type	u8x8_capture_write_xbm_pre, @function
u8x8_capture_write_xbm_pre:
.LVL31:
.LFB4:
	.loc 1 112 1 is_stmt 1 view -0
	.loc 1 112 1 is_stmt 0 view .LVU75
	entry	sp, 32
.LCFI4:
	.loc 1 113 3 is_stmt 1 view .LVU76
	l32r	a10, .LC10
	.loc 1 112 1 is_stmt 0 view .LVU77
	extui	a2, a2, 0, 8
	.loc 1 113 3 view .LVU78
	callx8	a4
.LVL32:
	.loc 1 114 3 is_stmt 1 view .LVU79
	slli	a10, a2, 3
	call8	u8x8_utoa
.LVL33:
	callx8	a4
.LVL34:
	.loc 1 115 3 view .LVU80
	l32r	a2, .LC11
.LVL35:
	.loc 1 112 1 is_stmt 0 view .LVU81
	extui	a3, a3, 0, 8
	.loc 1 115 3 view .LVU82
	mov.n	a10, a2
	callx8	a4
.LVL36:
	.loc 1 116 3 is_stmt 1 view .LVU83
	l32r	a10, .LC13
	callx8	a4
.LVL37:
	.loc 1 117 3 view .LVU84
	slli	a10, a3, 3
	call8	u8x8_utoa
.LVL38:
	callx8	a4
.LVL39:
	.loc 1 118 3 view .LVU85
	mov.n	a10, a2
	callx8	a4
.LVL40:
	.loc 1 119 3 view .LVU86
	l32r	a10, .LC15
	callx8	a4
.LVL41:
	.loc 1 120 1 is_stmt 0 view .LVU87
	retw.n
.LFE4:
	.size	u8x8_capture_write_xbm_pre, .-u8x8_capture_write_xbm_pre
	.section	.rodata.u8x8_capture_write_xbm_buffer.str1.1,"aMS",@progbits,1
.LC17:
	.string	"0x"
.LC19:
	.string	","
.LC22:
	.string	"};\n"
	.section	.text.u8x8_capture_write_xbm_buffer,"ax",@progbits
	.literal_position
	.literal .LC16, 65535
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC21, .LC2
	.literal .LC23, .LC22
	.align	4
	.global	u8x8_capture_write_xbm_buffer
	.type	u8x8_capture_write_xbm_buffer, @function
u8x8_capture_write_xbm_buffer:
.LVL42:
.LFB5:
	.loc 1 123 1 is_stmt 1 view -0
	.loc 1 123 1 is_stmt 0 view .LVU89
	entry	sp, 80
.LCFI5:
	.loc 1 124 3 is_stmt 1 view .LVU90
	.loc 1 125 3 view .LVU91
	.loc 1 126 3 view .LVU92
	.loc 1 127 3 view .LVU93
	.loc 1 128 3 view .LVU94
	.loc 1 123 1 is_stmt 0 view .LVU95
	s32i.n	a2, sp, 24
	extui	a3, a3, 0, 8
	.loc 1 128 8 view .LVU96
	movi.n	a2, 0
.LVL43:
	.loc 1 132 5 view .LVU97
	extui	a4, a4, 0, 8
	.loc 1 133 5 view .LVU98
	slli	a4, a4, 3
.LVL44:
	.loc 1 128 8 view .LVU99
	s8i	a2, sp, 1
	.loc 1 130 3 is_stmt 1 view .LVU100
.LVL45:
	.loc 1 131 3 view .LVU101
	.loc 1 131 5 is_stmt 0 view .LVU102
	slli	a2, a3, 3
	.loc 1 133 5 view .LVU103
	s32i.n	a4, sp, 20
	.loc 1 123 1 view .LVU104
	s32i.n	a5, sp, 28
	.loc 1 131 5 view .LVU105
	s32i.n	a2, sp, 16
.LVL46:
	.loc 1 132 3 is_stmt 1 view .LVU106
	.loc 1 133 3 view .LVU107
	.loc 1 135 3 view .LVU108
	.loc 1 133 5 is_stmt 0 view .LVU109
	movi.n	a4, 0
.LVL47:
.L23:
	.loc 1 136 3 is_stmt 1 view .LVU110
	.loc 1 138 5 view .LVU111
	.loc 1 133 5 is_stmt 0 view .LVU112
	l32r	a2, .LC16
.LVL48:
.L21:
	.loc 1 139 5 is_stmt 1 view .LVU113
	.loc 1 141 7 view .LVU114
	.loc 1 142 7 view .LVU115
	.loc 1 142 7 is_stmt 0 view .LVU116
	addi.n	a5, a2, 8
	extui	a5, a5, 0, 16
	.loc 1 141 9 view .LVU117
	mov.n	a9, a5
	movi.n	a7, 0
	.loc 1 146 6 view .LVU118
	movi.n	a14, 1
.LVL49:
.L15:
	.loc 1 144 2 is_stmt 1 view .LVU119
	.loc 1 144 4 is_stmt 0 view .LVU120
	slli	a8, a7, 1
	extui	a7, a8, 0, 8
.LVL50:
	.loc 1 145 2 is_stmt 1 view .LVU121
	.loc 1 145 7 is_stmt 0 view .LVU122
	l32i.n	a12, sp, 24
	l32i.n	a8, sp, 28
.LVL51:
	.loc 1 145 7 view .LVU123
	mov.n	a10, a9
	s32i.n	a9, sp, 32
	s32i.n	a14, sp, 36
	mov.n	a13, a3
	mov.n	a11, a4
	callx8	a8
.LVL52:
	.loc 1 145 5 view .LVU124
	l32i.n	a9, sp, 32
	l32i.n	a14, sp, 36
	beqz.n	a10, .L14
	.loc 1 146 4 is_stmt 1 view .LVU125
	.loc 1 146 6 is_stmt 0 view .LVU126
	or	a7, a7, a14
.LVL53:
.L14:
	.loc 1 146 6 view .LVU127
	addi.n	a9, a9, -1
.LVL54:
	.loc 1 146 6 view .LVU128
	extui	a9, a9, 0, 16
	.loc 1 142 7 discriminator 2 view .LVU129
	bne	a9, a2, .L15
	.loc 1 148 7 is_stmt 1 view .LVU130
	l32r	a10, .LC18
	callx8	a6
.LVL55:
	.loc 1 149 7 view .LVU131
	.loc 1 149 12 is_stmt 0 view .LVU132
	srli	a9, a7, 4
	.loc 1 150 7 is_stmt 1 view .LVU133
	.loc 1 153 7 is_stmt 0 view .LVU134
	addi	a10, a9, 87
	.loc 1 150 10 view .LVU135
	movi.n	a8, 9
	.loc 1 153 7 view .LVU136
	extui	a10, a10, 0, 8
	.loc 1 150 10 view .LVU137
	bltu	a8, a9, .L17
	.loc 1 151 2 is_stmt 1 view .LVU138
	.loc 1 151 7 is_stmt 0 view .LVU139
	addi	a9, a9, 48
	extui	a10, a9, 0, 8
.L17:
	s8i	a10, sp, 0
	.loc 1 154 7 is_stmt 1 view .LVU140
	mov.n	a10, sp
	callx8	a6
.LVL56:
	.loc 1 155 7 view .LVU141
	.loc 1 155 16 is_stmt 0 view .LVU142
	extui	a8, a7, 0, 4
	.loc 1 156 7 is_stmt 1 view .LVU143
	.loc 1 156 10 is_stmt 0 view .LVU144
	movi.n	a10, 9
	.loc 1 159 7 view .LVU145
	addi	a9, a8, 87
	.loc 1 156 10 view .LVU146
	bltu	a10, a8, .L19
	.loc 1 157 2 is_stmt 1 view .LVU147
	.loc 1 157 7 is_stmt 0 view .LVU148
	addi	a9, a8, 48
.L19:
	.loc 1 160 7 view .LVU149
	mov.n	a10, sp
	s8i	a9, sp, 0
	.loc 1 160 7 is_stmt 1 view .LVU150
	callx8	a6
.LVL57:
	.loc 1 161 7 view .LVU151
	.loc 1 162 7 view .LVU152
	.loc 1 162 10 is_stmt 0 view .LVU153
	addi.n	a2, a2, 9
.LVL58:
	.loc 1 162 10 view .LVU154
	l32i.n	a8, sp, 16
	extui	a2, a2, 0, 16
.LVL59:
	.loc 1 162 10 view .LVU155
	bgeu	a2, a8, .L20
	.loc 1 164 7 is_stmt 1 view .LVU156
	l32r	a10, .LC20
	.loc 1 141 9 is_stmt 0 view .LVU157
	mov.n	a2, a5
	.loc 1 164 7 view .LVU158
	callx8	a6
.LVL60:
	.loc 1 141 9 view .LVU159
	j	.L21
.L20:
	.loc 1 166 5 is_stmt 1 view .LVU160
.LVL61:
	.loc 1 167 5 view .LVU161
	addi.n	a4, a4, 1
.LVL62:
	.loc 1 167 8 is_stmt 0 view .LVU162
	l32i.n	a5, sp, 20
	extui	a2, a4, 0, 16
	bgeu	a2, a5, .L22
	.loc 1 169 5 is_stmt 1 view .LVU163
	l32r	a10, .LC20
	callx8	a6
.LVL63:
	.loc 1 170 5 view .LVU164
	l32r	a10, .LC21
	callx8	a6
.LVL64:
	.loc 1 138 7 is_stmt 0 view .LVU165
	j	.L23
.L22:
	.loc 1 172 3 is_stmt 1 view .LVU166
	l32r	a10, .LC23
	callx8	a6
.LVL65:
	.loc 1 174 1 is_stmt 0 view .LVU167
	retw.n
.LFE5:
	.size	u8x8_capture_write_xbm_buffer, .-u8x8_capture_write_xbm_buffer
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
	.uleb128 0x30
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
	.uleb128 0x50
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc7d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75
	.uleb128 0x7
	.4byte	0x81
	.4byte	0xa3
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x420
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x421
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x422
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x423
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x424
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x425
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x426
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x427
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x428
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x429
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x42a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x42b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x42c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x42d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x42e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x42f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x430
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x431
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x432
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x433
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x434
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x435
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x436
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x437
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x438
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x439
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x43a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x43b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x43c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x43d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x43e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x43f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x440
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x441
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x442
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x443
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x444
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x445
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x446
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x447
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x448
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x449
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x44a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x44b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x44c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x44e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x44f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x450
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x451
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x452
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x453
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x454
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x455
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x456
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x457
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x458
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x459
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x45a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x45b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x45c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x45d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x45e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x45f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x460
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x461
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x462
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x463
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x464
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x465
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x466
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x467
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x468
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x469
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x46a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x46b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x46c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x46d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x46e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x46f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x470
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x471
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x472
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x473
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x474
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x475
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x476
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x477
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x478
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x479
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x47a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x47b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x47c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x47d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x47e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x47f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x480
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x481
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x482
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x483
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x484
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x485
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x486
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x487
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x488
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x489
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x48a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x48b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x48c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x48d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x48e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x48f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x490
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x491
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x492
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x493
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x494
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x495
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x496
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x497
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x498
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x499
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x49a
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x49b
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x49c
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x49d
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x49e
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x49f
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x4a0
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x4a1
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x4a2
	.byte	0x16
	.4byte	0xa3
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d6
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x1
	.byte	0x7a
	.byte	0x2d
	.4byte	0x92
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x1
	.byte	0x7a
	.byte	0x3d
	.4byte	0x75
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x1
	.byte	0x7a
	.byte	0x51
	.4byte	0x75
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7a
	.byte	0x68
	.4byte	0x8f4
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x7a
	.byte	0xba
	.4byte	0x917
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.byte	0x7c
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x7d
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x7d
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x7e
	.byte	0xb
	.4byte	0x75
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x7f
	.byte	0x8
	.4byte	0x91d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.4byte	.LVL52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.4byte	0x858
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL55
	.4byte	0x86b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x12
	.4byte	.LVL56
	.4byte	0x87c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL57
	.4byte	0x88d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL60
	.4byte	0x8a0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x12
	.4byte	.LVL63
	.4byte	0x8b3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x12
	.4byte	.LVL64
	.4byte	0x8c6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x13
	.4byte	.LVL65
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x75
	.4byte	0x8f4
	.uleb128 0x15
	.4byte	0x86
	.uleb128 0x15
	.4byte	0x86
	.uleb128 0x15
	.4byte	0x92
	.uleb128 0x15
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d6
	.uleb128 0x16
	.4byte	0x905
	.uleb128 0x15
	.4byte	0x905
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x912
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF146
	.uleb128 0x5
	.4byte	0x90b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8fa
	.uleb128 0x7
	.4byte	0x90b
	.4byte	0x92d
	.uleb128 0x17
	.4byte	0x60
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6f
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa14
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x1
	.byte	0x6f
	.byte	0x29
	.4byte	0x75
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x1
	.byte	0x6f
	.byte	0x3d
	.4byte	0x75
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x6f
	.byte	0x51
	.4byte	0x917
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x989
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xc73
	.4byte	0x99f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.4byte	.LVL36
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x9ba
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL37
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x9d0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0xc73
	.4byte	0x9e6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL39
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.4byte	.LVL40
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0xa01
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x1
	.byte	0x55
	.byte	0x2d
	.4byte	0x92
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x1
	.byte	0x55
	.byte	0x3d
	.4byte	0x75
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x1
	.byte	0x55
	.byte	0x51
	.4byte	0x75
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x1
	.byte	0x55
	.byte	0x68
	.4byte	0x8f4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x55
	.byte	0xba
	.4byte	0x917
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.byte	0x57
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x58
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x12
	.4byte	.LVL24
	.4byte	0xae0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbab
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x1
	.byte	0x4b
	.byte	0x29
	.4byte	0x75
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x1
	.byte	0x4b
	.byte	0x3d
	.4byte	0x75
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x4b
	.byte	0x51
	.4byte	0x917
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL11
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0xb4c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0xc73
	.4byte	0xb62
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.4byte	.LVL15
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0xb7d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xc73
	.4byte	0xb93
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.4byte	.LVL18
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.4byte	0x75
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc12
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0x3d
	.byte	0x2b
	.4byte	0x86
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0x3d
	.byte	0x37
	.4byte	0x86
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3d
	.byte	0x43
	.4byte	0x92
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3d
	.byte	0x55
	.4byte	0x75
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x1
	.byte	0x2d
	.byte	0x9
	.4byte	0x75
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc73
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0x2d
	.byte	0x2b
	.4byte	0x86
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0x2d
	.byte	0x37
	.4byte	0x86
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x1
	.byte	0x2d
	.byte	0x43
	.4byte	0x92
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2d
	.byte	0x55
	.4byte	0x75
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x3c7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
.LVUS14:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU155
.LLST17:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU101
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU108
	.uleb128 0
.LLST20:
	.4byte	.LVL46
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU115
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU124
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x6
	.byte	0x72
	.sleb128 8
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x8
	.byte	0x72
	.sleb128 8
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0xa
	.byte	0x72
	.sleb128 8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU61
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU72
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x77
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU51
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU59
	.uleb128 0
.LLST12:
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x10
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x14
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1b
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x33
	.byte	0x25
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"u8x8_font_artosserif8_n"
.LASF149:
	.string	"u8x8_capture_write_pbm_buffer"
.LASF148:
	.string	"u8x8_capture_write_xbm_pre"
.LASF38:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF65:
	.string	"u8x8_font_artosserif8_u"
.LASF92:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF78:
	.string	"u8x8_font_victoriamedium8_n"
.LASF156:
	.string	"/home/dieter/Development/ProjektEi/build/u8g2"
.LASF3:
	.string	"__uint8_t"
.LASF94:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_n"
.LASF34:
	.string	"u8x8_font_open_iconic_check_1x1"
.LASF141:
	.string	"u8x8_font_px437wyse700b_2x2_n"
.LASF93:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_r"
.LASF140:
	.string	"u8x8_font_px437wyse700b_2x2_r"
.LASF132:
	.string	"u8x8_font_pxplustandynewtv_f"
.LASF76:
	.string	"u8x8_font_victoriabold8_u"
.LASF8:
	.string	"long long unsigned int"
.LASF134:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF114:
	.string	"u8x8_font_inb46_4x8_r"
.LASF133:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF135:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF113:
	.string	"u8x8_font_inb46_4x8_f"
.LASF155:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_capture.c"
.LASF75:
	.string	"u8x8_font_victoriabold8_n"
.LASF115:
	.string	"u8x8_font_inb46_4x8_n"
.LASF74:
	.string	"u8x8_font_victoriabold8_r"
.LASF29:
	.string	"u8x8_font_7x14_1x2_n"
.LASF55:
	.string	"u8x8_font_open_iconic_thing_8x8"
.LASF28:
	.string	"u8x8_font_7x14_1x2_r"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF72:
	.string	"u8x8_font_torussansbold8_n"
.LASF71:
	.string	"u8x8_font_torussansbold8_r"
.LASF73:
	.string	"u8x8_font_torussansbold8_u"
.LASF147:
	.string	"u8x8_capture_write_xbm_buffer"
.LASF77:
	.string	"u8x8_font_victoriamedium8_r"
.LASF79:
	.string	"u8x8_font_victoriamedium8_u"
.LASF43:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF61:
	.string	"u8x8_font_artossans8_n"
.LASF83:
	.string	"u8x8_font_courR18_2x3_f"
.LASF60:
	.string	"u8x8_font_artossans8_r"
.LASF62:
	.string	"u8x8_font_artossans8_u"
.LASF10:
	.string	"uint16_t"
.LASF120:
	.string	"u8x8_font_pcsenior_f"
.LASF85:
	.string	"u8x8_font_courR18_2x3_n"
.LASF84:
	.string	"u8x8_font_courR18_2x3_r"
.LASF122:
	.string	"u8x8_font_pcsenior_n"
.LASF121:
	.string	"u8x8_font_pcsenior_r"
.LASF123:
	.string	"u8x8_font_pcsenior_u"
.LASF110:
	.string	"u8x8_font_inb33_3x6_f"
.LASF107:
	.string	"u8x8_font_inb21_2x4_f"
.LASF89:
	.string	"u8x8_font_courR24_3x4_f"
.LASF109:
	.string	"u8x8_font_inb21_2x4_n"
.LASF6:
	.string	"unsigned int"
.LASF108:
	.string	"u8x8_font_inb21_2x4_r"
.LASF91:
	.string	"u8x8_font_courR24_3x4_n"
.LASF39:
	.string	"u8x8_font_open_iconic_arrow_2x2"
.LASF90:
	.string	"u8x8_font_courR24_3x4_r"
.LASF157:
	.string	"u8x8_utoa"
.LASF118:
	.string	"u8x8_font_pressstart2p_n"
.LASF48:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF41:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF26:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF124:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF126:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"u8x8_font_7x14_1x2_f"
.LASF125:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF127:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF45:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF37:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF47:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF69:
	.string	"u8x8_font_saikyosansbold8_n"
.LASF111:
	.string	"u8x8_font_inb33_3x6_r"
.LASF70:
	.string	"u8x8_font_saikyosansbold8_u"
.LASF139:
	.string	"u8x8_font_px437wyse700b_2x2_f"
.LASF50:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF104:
	.string	"u8x8_font_inr46_4x8_f"
.LASF106:
	.string	"u8x8_font_inr46_4x8_n"
.LASF46:
	.string	"u8x8_font_open_iconic_check_4x4"
.LASF105:
	.string	"u8x8_font_inr46_4x8_r"
.LASF136:
	.string	"u8x8_font_px437wyse700a_2x2_f"
.LASF88:
	.string	"u8x8_font_courB24_3x4_n"
.LASF128:
	.string	"u8x8_font_pxplusibmcga_f"
.LASF138:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF137:
	.string	"u8x8_font_px437wyse700a_2x2_r"
.LASF130:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF153:
	.string	"u8x8_capture_get_pixel_1"
.LASF112:
	.string	"u8x8_font_inb33_3x6_n"
.LASF95:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF143:
	.string	"tile_height"
.LASF97:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF150:
	.string	"u8x8_capture_write_pbm_pre"
.LASF21:
	.string	"u8x8_font_8x13_1x2_f"
.LASF57:
	.string	"u8x8_font_profont29_2x3_f"
.LASF96:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF23:
	.string	"u8x8_font_8x13_1x2_n"
.LASF59:
	.string	"u8x8_font_profont29_2x3_n"
.LASF22:
	.string	"u8x8_font_8x13_1x2_r"
.LASF58:
	.string	"u8x8_font_profont29_2x3_r"
.LASF54:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF101:
	.string	"u8x8_font_inr33_3x6_f"
.LASF51:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF98:
	.string	"u8x8_font_inr21_2x4_f"
.LASF103:
	.string	"u8x8_font_inr33_3x6_n"
.LASF42:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF100:
	.string	"u8x8_font_inr21_2x4_n"
.LASF102:
	.string	"u8x8_font_inr33_3x6_r"
.LASF99:
	.string	"u8x8_font_inr21_2x4_r"
.LASF24:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF53:
	.string	"u8x8_font_open_iconic_embedded_8x8"
.LASF11:
	.string	"u8x8_font_amstrad_cpc_extended_f"
.LASF18:
	.string	"u8x8_font_5x8_f"
.LASF25:
	.string	"u8x8_font_8x13B_1x2_r"
.LASF146:
	.string	"char"
.LASF13:
	.string	"u8x8_font_amstrad_cpc_extended_n"
.LASF20:
	.string	"u8x8_font_5x8_n"
.LASF116:
	.string	"u8x8_font_pressstart2p_f"
.LASF12:
	.string	"u8x8_font_amstrad_cpc_extended_r"
.LASF19:
	.string	"u8x8_font_5x8_r"
.LASF144:
	.string	"get_pixel"
.LASF14:
	.string	"u8x8_font_amstrad_cpc_extended_u"
.LASF129:
	.string	"u8x8_font_pxplusibmcga_r"
.LASF56:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF4:
	.string	"__uint16_t"
.LASF131:
	.string	"u8x8_font_pxplusibmcga_u"
.LASF117:
	.string	"u8x8_font_pressstart2p_r"
.LASF119:
	.string	"u8x8_font_pressstart2p_u"
.LASF142:
	.string	"buffer"
.LASF52:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF154:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF63:
	.string	"u8x8_font_artosserif8_r"
.LASF151:
	.string	"dest_ptr"
.LASF80:
	.string	"u8x8_font_courB18_2x3_f"
.LASF44:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF49:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF152:
	.string	"u8x8_capture_get_pixel_2"
.LASF82:
	.string	"u8x8_font_courB18_2x3_n"
.LASF81:
	.string	"u8x8_font_courB18_2x3_r"
.LASF40:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF36:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF9:
	.string	"uint8_t"
.LASF145:
	.string	"tile_width"
.LASF15:
	.string	"u8x8_font_5x7_f"
.LASF86:
	.string	"u8x8_font_courB24_3x4_f"
.LASF17:
	.string	"u8x8_font_5x7_n"
.LASF33:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF16:
	.string	"u8x8_font_5x7_r"
.LASF87:
	.string	"u8x8_font_courB24_3x4_r"
.LASF67:
	.string	"u8x8_font_chroma48medium8_n"
.LASF66:
	.string	"u8x8_font_chroma48medium8_r"
.LASF68:
	.string	"u8x8_font_chroma48medium8_u"
.LASF30:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF32:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF31:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
