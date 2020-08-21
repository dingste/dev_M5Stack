	.file	"jsmn.c"
	.text
.Ltext0:
	.section	.text.jsmn_parse,"ax",@progbits
	.literal_position
	.literal .LC2, 268435455
	.align	4
	.global	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/jsmn/src/jsmn.c"
	.loc 1 182 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 182 0
	mov.n	a8, a2
	mov.n	a15, a3
	.loc 1 186 0
	l32i.n	a11, a2, 4
.LVL1:
.LBB25:
	.loc 1 308 0
	movi.n	a3, 1
.LVL2:
	movi.n	a2, 0
.LVL3:
	movnez	a2, a3, a5
	extui	a2, a2, 0, 8
.LBE25:
	.loc 1 182 0
	mov.n	a7, a4
	s32i.n	a6, sp, 0
.LBB45:
	.loc 1 308 0
	s32i.n	a2, sp, 8
.LBE45:
	.loc 1 188 0
	j	.L2
.LVL4:
.L55:
.LBB46:
	.loc 1 193 0
	movi.n	a4, 0x2c
	beq	a9, a4, .L4
	bltu	a4, a9, .L5
	movi.n	a2, 0xd
	beq	a9, a2, .L6
	bltu	a2, a9, .L7
	addi	a9, a9, -9
.LVL5:
	movi.n	a6, 1
	bgeu	a6, a9, .L6
	j	.L3
.LVL6:
.L7:
	beqi	a9, 32, .L6
	movi.n	a2, 0x22
	beq	a9, a2, .L8
	j	.L3
.L5:
	movi.n	a12, 0x5d
	beq	a9, a12, .L9
	bltu	a12, a9, .L10
	movi.n	a13, 0x3a
	beq	a9, a13, .L11
	movi.n	a2, 0x5b
	beq	a9, a2, .L12
	j	.L3
.L10:
	movi	a2, 0x7b
	beq	a9, a2, .L12
	movi	a2, 0x7d
	beq	a9, a2, .L9
	j	.L3
.L12:
	.loc 1 195 0
	addi.n	a11, a11, 1
.LVL7:
	.loc 1 196 0
	beqz.n	a5, .L6
.LVL8:
.LBB26:
.LBB27:
	.loc 1 39 0
	l32i.n	a4, a8, 4
	l32i.n	a14, sp, 0
	bgeu	a4, a14, .L126
	.loc 1 42 0
	addi.n	a2, a4, 1
	s32i.n	a2, a8, 4
	slli	a2, a4, 4
	add.n	a2, a5, a2
.LVL9:
	.loc 1 43 0
	movi.n	a3, -1
	s32i.n	a3, a2, 8
	s32i.n	a3, a2, 4
	.loc 1 44 0
	movi.n	a3, 0
	s32i.n	a3, a2, 12
.LBE27:
.LBE26:
	.loc 1 202 0
	l32i.n	a3, a8, 8
	beqi	a3, -1, .L14
	.loc 1 203 0
	slli	a3, a3, 4
	add.n	a3, a5, a3
	l32i.n	a6, a3, 12
	addi.n	a6, a6, 1
	s32i.n	a6, a3, 12
.L14:
	.loc 1 208 0
	addi	a9, a9, -123
.LVL10:
	movi.n	a3, 2
	movi.n	a6, 1
	movnez	a6, a3, a9
	s32i.n	a6, a2, 0
	.loc 1 209 0
	s32i.n	a10, a2, 4
	.loc 1 210 0
	s32i.n	a4, a8, 8
	.loc 1 211 0
	j	.L6
.LVL11:
.L9:
	.loc 1 213 0
	beqz.n	a5, .L6
	.loc 1 215 0
	addi	a9, a9, -125
.LVL12:
	movi.n	a2, 2
	movi.n	a12, 1
	movnez	a12, a2, a9
	.loc 1 236 0
	l32i.n	a4, a8, 4
	l32r	a2, .LC2
	.loc 1 215 0
	mov.n	a9, a12
.LVL13:
	add.n	a2, a4, a2
	slli	a2, a2, 4
	.loc 1 236 0
	addi.n	a3, a4, -1
.LVL14:
	add.n	a2, a5, a2
	j	.L17
.L20:
.LVL15:
	.loc 1 238 0
	l32i.n	a4, a2, 4
	beqi	a4, -1, .L18
	.loc 1 238 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 8
	bnei	a4, -1, .L18
	.loc 1 239 0 is_stmt 1
	l32i.n	a6, a2, 0
	bne	a9, a6, .L67
	.loc 1 242 0
	s32i.n	a4, a8, 8
.LVL16:
	.loc 1 243 0
	addi.n	a10, a10, 1
	s32i.n	a10, a2, 8
	slli	a2, a3, 4
.LVL17:
	add.n	a2, a5, a2
	addi.n	a4, a3, 1
	j	.L19
.LVL18:
.L18:
	.loc 1 236 0 discriminator 2
	addi.n	a3, a3, -1
.LVL19:
	addi	a2, a2, -16
.LVL20:
.L17:
	.loc 1 236 0 is_stmt 0 discriminator 1
	bgez	a3, .L20
	.loc 1 248 0 is_stmt 1
	bnei	a3, -1, .L6
	j	.L67
.LVL21:
.L19:
	.loc 1 251 0
	l32i.n	a6, a2, 4
	beqi	a6, -1, .L21
	.loc 1 251 0 is_stmt 0 discriminator 1
	l32i.n	a6, a2, 8
	bnei	a6, -1, .L21
	j	.L124
.L21:
	.loc 1 249 0 is_stmt 1
	addi.n	a3, a3, -1
.LVL22:
	addi	a2, a2, -16
.LVL23:
	addi.n	a4, a4, -1
	bnez.n	a4, .L19
	j	.L6
.LVL24:
.L8:
.LBB28:
.LBB29:
	.loc 1 120 0
	addi.n	a2, a10, 1
	s32i.n	a2, a8, 0
.LBB30:
	.loc 1 144 0
	movi.n	a3, 0x5c
.LBB31:
	.loc 1 147 0
	movi	a4, 0x66
	movi	a6, 0x72
	j	.L22
.L40:
.LVL25:
.LBE31:
	.loc 1 127 0
	bne	a12, a9, .L23
	.loc 1 128 0
	beqz.n	a5, .L24
.LVL26:
.LBB32:
.LBB33:
	.loc 1 39 0
	l32i.n	a3, a8, 4
	l32i.n	a14, sp, 0
	bgeu	a3, a14, .L53
	.loc 1 42 0
	addi.n	a4, a3, 1
	slli	a3, a3, 4
	s32i.n	a4, a8, 4
	add.n	a3, a5, a3
.LVL27:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 56 0
	movi.n	a4, 3
	.loc 1 57 0
	s32i.n	a2, a3, 4
	.loc 1 59 0
	movi.n	a2, 0
	.loc 1 56 0
	s32i.n	a4, a3, 0
	.loc 1 58 0
	s32i.n	a13, a3, 8
	.loc 1 59 0
	s32i.n	a2, a3, 12
	j	.L24
.LVL28:
.L23:
.LBE35:
.LBE34:
	.loc 1 144 0
	bne	a12, a3, .L26
	addi.n	a12, a13, 1
.LVL29:
	bgeu	a12, a7, .L26
.LBB36:
	.loc 1 146 0
	s32i.n	a12, a8, 0
.LVL30:
	.loc 1 147 0
	add.n	a12, a15, a12
	l8ui	a12, a12, 0
	beq	a12, a4, .L26
	bltu	a4, a12, .L28
	movi.n	a13, 0x2f
	beq	a12, a13, .L26
	bltu	a13, a12, .L29
	bne	a12, a9, .L127
	j	.L26
.L29:
	movi	a13, 0x62
	bne	a12, a3, .L123
	j	.L26
.L28:
	beq	a12, a6, .L26
	bltu	a6, a12, .L30
	movi	a13, 0x6e
.L123:
	bne	a12, a13, .L127
	j	.L26
.L30:
	movi	a14, 0x74
	beq	a12, a14, .L26
	movi	a14, 0x75
	bne	a12, a14, .L127
	.loc 1 154 0
	addi.n	a13, a13, 2
	.loc 1 157 0
	movi.n	a12, 4
	.loc 1 154 0
	s32i.n	a13, a8, 0
.LVL31:
	.loc 1 157 0
	s32i.n	a12, sp, 4
	j	.L32
.LVL32:
.L38:
	movi	a14, -0x21
	and	a14, a12, a14
	addi	a14, a14, -65
	extui	a14, a14, 0, 8
	bltui	a14, 6, .L33
	addi	a12, a12, -48
	extui	a12, a12, 0, 8
	movi.n	a14, 9
	bgeu	a14, a12, .L33
	j	.L127
.L33:
	l32i.n	a12, sp, 4
	.loc 1 163 0
	addi.n	a13, a13, 1
	addi.n	a12, a12, -1
	s32i.n	a13, a8, 0
	s32i.n	a12, sp, 4
	bnez.n	a12, .L32
.L37:
	.loc 1 165 0
	l32i.n	a12, a8, 0
	addi.n	a12, a12, -1
	s32i.n	a12, a8, 0
	j	.L26
.L32:
	.loc 1 155 0
	l32i.n	a13, a8, 0
	bgeu	a13, a7, .L37
	add.n	a12, a15, a13
	l8ui	a12, a12, 0
	bnez.n	a12, .L38
	j	.L37
.L26:
.LBE36:
.LBE30:
	.loc 1 123 0
	l32i.n	a12, a8, 0
	addi.n	a12, a12, 1
	s32i.n	a12, a8, 0
.L22:
	l32i.n	a13, a8, 0
	bgeu	a13, a7, .L39
	add.n	a12, a15, a13
	l8ui	a12, a12, 0
	bnez.n	a12, .L40
.L39:
	.loc 1 174 0
	s32i.n	a10, a8, 0
	j	.L69
.LVL33:
.L11:
.LBE29:
.LBE28:
	.loc 1 268 0
	l32i.n	a2, a8, 4
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 8
	.loc 1 269 0
	j	.L6
.L4:
	.loc 1 271 0
	beqz.n	a5, .L6
	.loc 1 271 0 discriminator 1
	l32i.n	a2, a8, 8
	beqi	a2, -1, .L6
	.loc 1 272 0 discriminator 2
	slli	a2, a2, 4
	add.n	a2, a5, a2
	l32i.n	a2, a2, 0
	addi.n	a2, a2, -1
	bltui	a2, 2, .L6
	.loc 1 277 0
	l32i.n	a2, a8, 4
	l32r	a13, .LC2
	addi.n	a3, a2, -1
.LVL34:
	add.n	a2, a2, a13
	slli	a2, a2, 4
	add.n	a2, a5, a2
	j	.L41
.L43:
	.loc 1 278 0
	l32i.n	a4, a2, 0
	addi.n	a4, a4, -1
	bgeui	a4, 2, .L42
	.loc 1 279 0
	l32i.n	a4, a2, 4
	beqi	a4, -1, .L42
	.loc 1 279 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 8
	bnei	a4, -1, .L42
.LVL35:
.L124:
	.loc 1 280 0 is_stmt 1
	s32i.n	a3, a8, 8
	.loc 1 281 0
	j	.L6
.LVL36:
.L42:
	.loc 1 277 0 discriminator 2
	addi.n	a3, a3, -1
.LVL37:
	addi	a2, a2, -16
.L41:
	.loc 1 277 0 is_stmt 0 discriminator 1
	bgez	a3, .L43
	j	.L6
.LVL38:
.L50:
.LBB37:
.LBB38:
	.loc 1 73 0 is_stmt 1
	beqi	a2, 32, .L45
	movi.n	a14, 0x20
	bltu	a14, a2, .L46
	bltu	a2, a6, .L44
	bgeu	a13, a2, .L45
	bne	a2, a9, .L44
	j	.L45
.L46:
	movi.n	a14, 0x3a
	beq	a2, a14, .L45
	bltu	a14, a2, .L47
	movi.n	a14, 0x2c
	bne	a2, a14, .L44
	j	.L45
.L47:
	movi.n	a14, 0x5d
	beq	a2, a14, .L45
	beq	a2, a4, .L45
.L44:
	.loc 1 82 0
	addi	a2, a2, -32
	extui	a2, a2, 0, 8
	bgeu	a12, a2, .L48
.L127:
	.loc 1 83 0
	s32i.n	a10, a8, 0
	j	.L67
.L48:
	.loc 1 72 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 0
	j	.L121
.LVL39:
.L3:
	.loc 1 73 0
	movi	a4, 0x7d
	movi.n	a6, 9
	movi.n	a13, 0xa
	movi.n	a9, 0xd
	.loc 1 82 0
	movi.n	a12, 0x5e
.LVL40:
.L121:
	.loc 1 72 0
	l32i.n	a3, a8, 0
	bgeu	a3, a7, .L45
	add.n	a2, a15, a3
	l8ui	a2, a2, 0
	bnez.n	a2, .L50
.L45:
	.loc 1 94 0
	bnez.n	a5, .L51
	j	.L125
.L51:
.LVL41:
.LBB39:
.LBB40:
	.loc 1 39 0
	l32i.n	a2, a8, 4
	l32i.n	a4, sp, 0
	bgeu	a2, a4, .L53
	.loc 1 42 0
	addi.n	a4, a2, 1
	slli	a2, a2, 4
	s32i.n	a4, a8, 4
	add.n	a2, a5, a2
.LVL42:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 56 0
	movi.n	a4, 4
	.loc 1 59 0
	movi.n	a6, 0
	.loc 1 56 0
	s32i.n	a4, a2, 0
	.loc 1 57 0
	s32i.n	a10, a2, 4
	.loc 1 58 0
	s32i.n	a3, a2, 8
	.loc 1 59 0
	s32i.n	a6, a2, 12
.LVL43:
.L125:
.LBE42:
.LBE41:
	.loc 1 107 0
	addi.n	a3, a3, -1
	s32i.n	a3, a8, 0
	j	.L52
.L61:
.LBE38:
.LBE37:
	.loc 1 309 0
	slli	a2, a2, 4
	add.n	a2, a5, a2
	l32i.n	a3, a2, 12
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 12
.L6:
.LBE46:
	.loc 1 188 0
	l32i.n	a2, a8, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a8, 0
.L2:
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32i.n	a10, a8, 0
	bgeu	a10, a7, .L54
	.loc 1 188 0 discriminator 2
	add.n	a2, a15, a10
	l8ui	a9, a2, 0
	bnez.n	a9, .L55
.L54:
	mov.n	a2, a11
	.loc 1 320 0 is_stmt 1
	beqz.n	a5, .L120
.LVL44:
	.loc 1 321 0
	l32i.n	a2, a8, 4
.LVL45:
	addi.n	a3, a2, -1
.LVL46:
	slli	a2, a2, 4
	addi	a2, a2, -12
	add.n	a5, a5, a2
.LVL47:
	j	.L56
.L58:
	.loc 1 323 0
	l32i.n	a2, a5, 0
	beqi	a2, -1, .L57
	.loc 1 323 0 is_stmt 0 discriminator 1
	l32i.n	a2, a5, 4
	beqi	a2, -1, .L69
.L57:
	.loc 1 321 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, -1
.LVL48:
	addi	a5, a5, -16
.L56:
	.loc 1 321 0 is_stmt 0 discriminator 1
	bgez	a3, .L58
	mov.n	a2, a11
	retw.n
.LVL49:
.L67:
.LBB47:
	.loc 1 240 0 is_stmt 1
	movi.n	a2, -2
	retw.n
.LVL50:
.L69:
.LBE47:
	.loc 1 324 0
	movi.n	a2, -3
	retw.n
.LVL51:
.L24:
.LBB48:
	.loc 1 262 0
	l32i.n	a12, sp, 8
.LVL52:
	.loc 1 261 0
	addi.n	a11, a11, 1
.LVL53:
	.loc 1 262 0
	l32i.n	a2, a8, 8
	beqz.n	a12, .L6
	bnei	a2, -1, .L61
	j	.L6
.LVL54:
.L53:
.LBB44:
.LBB43:
	.loc 1 100 0
	s32i.n	a10, a8, 0
.L126:
	.loc 1 101 0
	movi.n	a2, -1
	retw.n
.L52:
.LBE43:
.LBE44:
	.loc 1 308 0
	l32i.n	a2, a8, 8
	.loc 1 307 0
	addi.n	a11, a11, 1
.LVL55:
	.loc 1 308 0
	beqi	a2, -1, .L6
	l32i.n	a13, sp, 8
	bnez.n	a13, .L61
	j	.L6
.LVL56:
.L120:
.LBE48:
	.loc 1 330 0
	retw.n
.LFE4:
	.size	jsmn_parse, .-jsmn_parse
	.section	.text.jsmn_init,"ax",@progbits
	.align	4
	.global	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LFB5:
	.loc 1 336 0
.LVL57:
	entry	sp, 32
.LCFI1:
	.loc 1 337 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 338 0
	s32i.n	a8, a2, 4
	.loc 1 339 0
	movi.n	a8, -1
	s32i.n	a8, a2, 8
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/jsmn/include/jsmn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x522
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0x60
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
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x2f
	.4byte	0x6c
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
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.4byte	0x21
	.byte	0x3
	.byte	0x37
	.4byte	0x9a
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
	.4byte	0xd3
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0x47
	.4byte	0x6c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x48
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.string	"end"
	.byte	0x3
	.byte	0x49
	.4byte	0x21
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4a
	.4byte	0x21
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4e
	.4byte	0x9a
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x54
	.4byte	0x10b
	.uleb128 0xb
	.string	"pos"
	.byte	0x3
	.byte	0x55
	.4byte	0x33
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x56
	.4byte	0x33
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x57
	.4byte	0x21
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x58
	.4byte	0xde
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x24
	.4byte	0x153
	.byte	0x1
	.4byte	0x153
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x24
	.4byte	0x159
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.4byte	0x153
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	0x28
	.uleb128 0xe
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.4byte	0x153
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	0x198
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x36
	.4byte	0x153
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x36
	.4byte	0x6c
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x37
	.4byte	0x21
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x37
	.4byte	0x21
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x72
	.4byte	0x21
	.byte	0x1
	.4byte	0x20b
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.4byte	0x159
	.uleb128 0x11
	.string	"js"
	.byte	0x1
	.byte	0x72
	.4byte	0x20b
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x73
	.4byte	0x28
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.4byte	0x153
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x73
	.4byte	0x28
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x74
	.4byte	0x153
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x1
	.byte	0x76
	.4byte	0x21
	.uleb128 0x13
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x7c
	.4byte	0x211
	.uleb128 0x13
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x91
	.4byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x218
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0x14
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x41
	.4byte	0x21
	.byte	0x1
	.4byte	0x281
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x41
	.4byte	0x159
	.uleb128 0x11
	.string	"js"
	.byte	0x1
	.byte	0x41
	.4byte	0x20b
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x42
	.4byte	0x28
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x42
	.4byte	0x153
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.4byte	0x28
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x43
	.4byte	0x153
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x1
	.byte	0x44
	.4byte	0x21
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb5
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb5
	.4byte	0x159
	.4byte	.LLST0
	.uleb128 0x18
	.string	"js"
	.byte	0x1
	.byte	0xb5
	.4byte	0x20b
	.4byte	.LLST1
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.4byte	0x28
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb6
	.4byte	0x153
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb6
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0xb7
	.4byte	0x21
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.4byte	0x21
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb9
	.4byte	0x153
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0xba
	.4byte	0x21
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.byte	0xbd
	.4byte	0x211
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LASF12
	.byte	0x1
	.byte	0xbe
	.4byte	0x6c
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	0x116
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xc7
	.4byte	0x377
	.uleb128 0x1d
	.4byte	0x126
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	0x13c
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	0x131
	.uleb128 0x1f
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x20
	.4byte	0x147
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x198
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x103
	.4byte	0x455
	.uleb128 0x1e
	.4byte	0x1d3
	.uleb128 0x1e
	.4byte	0x1c8
	.uleb128 0x1e
	.4byte	0x1bd
	.uleb128 0x1e
	.4byte	0x1b3
	.uleb128 0x1d
	.4byte	0x1a8
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x22
	.4byte	0x1de
	.uleb128 0x20
	.4byte	0x1e9
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x20
	.4byte	0x1f5
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x3e4
	.uleb128 0x20
	.4byte	0x1ff
	.4byte	.LLST16
	.byte	0
	.uleb128 0x1c
	.4byte	0x116
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x83
	.4byte	0x422
	.uleb128 0x1d
	.4byte	0x126
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	0x13c
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	0x131
	.uleb128 0x1f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x20
	.4byte	0x147
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x15f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x88
	.uleb128 0x1d
	.4byte	0x18c
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	0x181
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	0x176
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	0x16b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x21d
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x131
	.uleb128 0x1e
	.4byte	0x258
	.uleb128 0x1e
	.4byte	0x24d
	.uleb128 0x1e
	.4byte	0x242
	.uleb128 0x1e
	.4byte	0x238
	.uleb128 0x1e
	.4byte	0x22d
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x22
	.4byte	0x263
	.uleb128 0x22
	.4byte	0x26e
	.uleb128 0x26
	.4byte	0x279
	.4byte	.L45
	.uleb128 0x1c
	.4byte	0x116
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x62
	.4byte	0x4d4
	.uleb128 0x1d
	.4byte	0x126
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	0x13c
	.4byte	.LLST24
	.uleb128 0x1e
	.4byte	0x131
	.uleb128 0x1f
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x20
	.4byte	0x147
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x15f
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x67
	.uleb128 0x1d
	.4byte	0x18c
	.4byte	.LLST26
	.uleb128 0x1e
	.4byte	0x181
	.uleb128 0x1d
	.4byte	0x176
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	0x16b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x150
	.4byte	0x159
	.uleb128 0x1
	.byte	0x52
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
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
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
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
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x79
	.sleb128 123
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x79
	.sleb128 125
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
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
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB44
	.4byte	.LBE44
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
.LASF27:
	.string	"count"
.LASF3:
	.string	"JSMN_OBJECT"
.LASF13:
	.string	"start"
.LASF16:
	.string	"toknext"
.LASF23:
	.string	"jsmn_alloc_token"
.LASF33:
	.string	"jsmn_parse"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
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
.LASF34:
	.string	"jsmn_init"
.LASF29:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/jsmn/src/jsmn.c"
.LASF10:
	.string	"JSMN_ERROR_INVAL"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"tokens"
.LASF5:
	.string	"JSMN_STRING"
.LASF21:
	.string	"num_tokens"
.LASF32:
	.string	"found"
.LASF31:
	.string	"jsmn_fill_token"
.LASF12:
	.string	"type"
.LASF18:
	.string	"jsmn_parser"
.LASF30:
	.string	"jsmnerr"
.LASF22:
	.string	"token"
.LASF25:
	.string	"char"
.LASF24:
	.string	"jsmn_parse_string"
.LASF9:
	.string	"JSMN_ERROR_NOMEM"
.LASF11:
	.string	"JSMN_ERROR_PART"
.LASF6:
	.string	"JSMN_PRIMITIVE"
.LASF19:
	.string	"parser"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
