	.file	"uri.c"
	.text
.Ltext0:
	.section	.text.hash_segment,"ax",@progbits
	.align	4
	.type	hash_segment, @function
hash_segment:
.LFB57:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/uri.c"
	.loc 1 478 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 479 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_hash_impl
.LVL1:
	retw.n
.LFE57:
	.size	hash_segment, .-hash_segment
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"state"
.LC5:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/uri.c"
.LC8:
	.string	"make_decoded_option(): buflen is 0!\n"
.LC10:
	.string	"written <= buflen"
.LC13:
	.string	"buffer too small for option\n"
	.section	.text.write_option,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$6675
	.literal .LC6, .LC5
	.literal .LC7, __ctype_ptr__
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, __func__$6645
	.literal .LC14, .LC13
	.align	4
	.type	write_option, @function
write_option:
.LFB52:
	.loc 1 362 0
.LVL2:
	entry	sp, 32
.LCFI1:
.LVL3:
	.loc 1 365 0
	bnez.n	a4, .L3
.LVL4:
.LBB10:
.LBB11:
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi	a11, 0x16d
	j	.L32
.LVL5:
.L3:
.LBE11:
.LBE10:
	.loc 1 367 0
	l32i.n	a6, a4, 0
.LVL6:
	l32i.n	a7, a4, 4
.LVL7:
.LBB12:
.LBB13:
	.loc 1 271 0
	beqz.n	a6, .L4
.LBB14:
.LBB15:
	.loc 1 233 0
	l32r	a5, .LC7
	mov.n	a12, a3
	l32i.n	a11, a5, 0
	mov.n	a8, a2
	movi.n	a5, 0
	.loc 1 232 0
	movi.n	a14, 0x25
	.loc 1 233 0
	movi.n	a13, 0x44
	j	.L5
.L4:
.LBE15:
.LBE14:
	.loc 1 272 0
	l32r	a11, .LC9
	j	.L31
.LVL8:
.L8:
.LBB17:
.LBB16:
	.loc 1 232 0
	l8ui	a9, a8, 0
	bne	a9, a14, .L7
	.loc 1 233 0
	bltui	a12, 2, .L2
	l8ui	a9, a8, 1
	add.n	a9, a11, a9
	l8ui	a9, a9, 1
	bnone	a9, a13, .L2
	l8ui	a10, a8, 2
	add.n	a10, a11, a10
	l8ui	a9, a10, 1
	bnone	a9, a13, .L2
	.loc 1 236 0
	addi.n	a8, a8, 2
.LVL9:
	.loc 1 237 0
	addi	a12, a12, -2
.LVL10:
.L7:
	.loc 1 240 0
	addi.n	a8, a8, 1
.LVL11:
	addi.n	a5, a5, 1
.LVL12:
	addi.n	a12, a12, -1
.LVL13:
.L5:
	.loc 1 231 0
	bnez.n	a12, .L8
.LBE16:
.LBE17:
	.loc 1 277 0
	bltz	a5, .L2
	.loc 1 281 0
	mov.n	a13, a5
	mov.n	a11, a6
	mov.n	a10, a7
	call8	coap_opt_setheader
.LVL14:
	.loc 1 283 0
	bgeu	a6, a10, .L10
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi	a11, 0x11b
.LVL15:
.L32:
	l32r	a10, .LC6
	call8	__assert_func
.LVL16:
.L10:
	.loc 1 285 0
	beqz.n	a10, .L2
	.loc 1 291 0
	sub	a6, a6, a10
.LVL17:
	.loc 1 288 0
	add.n	a9, a7, a10
.LVL18:
.LBB18:
.LBB19:
	.loc 1 209 0
	movi.n	a12, 0x25
	.loc 1 210 0
	movi.n	a11, 0x40
.LBE19:
.LBE18:
	.loc 1 291 0
	bgeu	a6, a5, .L12
.L11:
	.loc 1 292 0
	l32r	a11, .LC14
.LVL19:
.L31:
	movi.n	a10, 7
	call8	coap_log_impl
.LVL20:
	retw.n
.LVL21:
.L19:
.LBB21:
.LBB20:
	.loc 1 209 0
	l8ui	a6, a2, 0
	bne	a6, a12, .L13
	.loc 1 210 0
	l8ui	a8, a2, 1
	slli	a6, a8, 4
	extui	a13, a6, 0, 8
	bnone	a8, a11, .L15
	extui	a8, a8, 0, 4
	addi.n	a8, a8, 9
	slli	a8, a8, 4
	extui	a13, a8, 0, 8
.L15:
	l8ui	a8, a2, 2
	extui	a7, a8, 0, 4
	extui	a6, a7, 0, 8
	bnone	a8, a11, .L17
	addi.n	a6, a7, 9
.L17:
	add.n	a6, a13, a6
	s8i	a6, a9, 0
.LVL22:
	.loc 1 212 0
	addi.n	a2, a2, 2
.LVL23:
	addi	a3, a3, -3
.LVL24:
	j	.L18
.LVL25:
.L13:
	.loc 1 207 0
	addi.n	a3, a3, -1
.LVL26:
	.loc 1 214 0
	s8i	a6, a9, 0
.LVL27:
.L18:
	.loc 1 217 0
	addi.n	a9, a9, 1
.LVL28:
	addi.n	a2, a2, 1
.LVL29:
.L12:
	.loc 1 207 0
	bnez.n	a3, .L19
.LBE20:
.LBE21:
	.loc 1 298 0
	add.n	a5, a10, a5
.LVL30:
.LBE13:
.LBE12:
	.loc 1 368 0
	blti	a5, 1, .L2
	.loc 1 369 0
	l32i.n	a2, a4, 4
.LVL31:
	.loc 1 370 0
	l32i.n	a10, a4, 0
.LVL32:
	.loc 1 369 0
	add.n	a2, a2, a5
	s32i.n	a2, a4, 4
	.loc 1 371 0
	l32i.n	a2, a4, 8
	.loc 1 370 0
	sub	a5, a10, a5
	.loc 1 371 0
	addi.n	a2, a2, 1
	.loc 1 370 0
	s32i.n	a5, a4, 0
	.loc 1 371 0
	s32i.n	a2, a4, 8
.LVL33:
.L2:
	retw.n
.LFE52:
	.size	write_option, .-write_option
	.section	.text.coap_split_path_impl,"ax",@progbits
	.align	4
	.type	coap_split_path_impl, @function
coap_split_path_impl:
.LFB51:
	.loc 1 329 0
.LVL34:
	entry	sp, 48
.LCFI2:
.LVL35:
	add.n	a3, a2, a3
.LVL36:
	.loc 1 333 0
	mov.n	a6, a2
	mov.n	a10, a2
.LBB28:
.LBB29:
	.loc 1 38 0
	movi.n	a9, 0x3f
.LBE29:
.LBE28:
	.loc 1 334 0
	j	.L34
.LVL37:
.L43:
.LBB31:
.LBB32:
	.loc 1 313 0
	l8ui	a8, a10, 0
.LBE32:
.LBE31:
	.loc 1 337 0
	sub	a11, a6, a10
.LVL38:
.LBB34:
.LBB33:
	.loc 1 313 0
	movi.n	a6, 0x2e
.LVL39:
	bne	a8, a6, .L35
	beqi	a11, 1, .L36
	l8ui	a6, a10, 1
	addi	a6, a6, -46
	bnez.n	a6, .L35
	bnei	a11, 2, .L35
.LVL40:
.L36:
.LBE33:
.LBE34:
	.loc 1 341 0
	mov.n	a10, a7
.LVL41:
.L44:
	.loc 1 344 0
	mov.n	a6, a7
.LVL42:
.L34:
	.loc 1 334 0
	bne	a6, a3, .L37
.L40:
.LBB35:
.LBB36:
	.loc 1 313 0
	l8ui	a7, a10, 0
	movi.n	a3, 0x2e
.LBE36:
.LBE35:
	.loc 1 349 0
	sub	a11, a6, a10
.LVL43:
.LBB39:
.LBB37:
	.loc 1 313 0
	bne	a7, a3, .L39
	j	.L38
.LVL44:
.L37:
.LBE37:
.LBE39:
	.loc 1 334 0 discriminator 1
	l8ui	a8, a6, 0
.LVL45:
.LBB40:
.LBB30:
	.loc 1 38 0 discriminator 1
	beq	a8, a9, .L40
.LVL46:
	.loc 1 38 0 is_stmt 0
	movi.n	a7, 0x23
	bne	a8, a7, .L41
	j	.L40
.LVL47:
.L38:
.LBE30:
.LBE40:
.LBB41:
.LBB38:
	.loc 1 313 0 is_stmt 1
	beqi	a11, 1, .L42
	l8ui	a8, a10, 1
	addi	a8, a8, -46
	bnez.n	a8, .L39
	bnei	a11, 2, .L39
.LVL48:
.L42:
.LBE38:
.LBE41:
	.loc 1 353 0
	sub	a2, a6, a2
.LVL49:
	retw.n
.LVL50:
.L35:
	.loc 1 338 0
	mov.n	a12, a5
	s32i.n	a9, sp, 0
.LVL51:
	callx8	a4
.LVL52:
	l32i.n	a9, sp, 0
	j	.L36
.LVL53:
.L39:
	.loc 1 350 0
	mov.n	a12, a5
	callx8	a4
.LVL54:
	j	.L42
.LVL55:
.L41:
	.loc 1 335 0
	movi.n	a11, 0x2f
	addi.n	a7, a6, 1
	bne	a8, a11, .L44
	j	.L43
.LFE51:
	.size	coap_split_path_impl, .-coap_split_path_impl
	.section	.rodata.str1.1
.LC15:
	.string	"coap"
.LC17:
	.string	"://"
	.section	.text.coap_split_uri,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC19, 5683
	.literal .LC20, __ctype_ptr__
	.literal .LC21, 65535
	.align	4
	.global	coap_split_uri
	.type	coap_split_uri, @function
coap_split_uri:
.LFB46:
	.loc 1 48 0
.LVL56:
	entry	sp, 32
.LCFI3:
.LVL57:
	.loc 1 52 0
	movi.n	a8, 1
	movi.n	a11, 0
	moveqz	a11, a8, a2
	extui	a11, a11, 0, 8
	bnez.n	a11, .L65
	moveqz	a11, a8, a4
	bnez.n	a11, .L65
	.loc 1 55 0
	movi.n	a12, 0x1c
	mov.n	a10, a4
	call8	memset
.LVL58:
	.loc 1 56 0
	l32r	a5, .LC19
	.loc 1 60 0
	movi.n	a8, 0x2f
	.loc 1 56 0
	s16i	a5, a4, 8
.LVL59:
	.loc 1 60 0
	l8ui	a9, a2, 0
	beq	a9, a8, .L66
	.loc 1 66 0
	l32r	a12, .LC20
	l32r	a9, .LC16
	l32i.n	a13, a12, 0
	j	.L67
.LVL60:
.L69:
	.loc 1 67 0
	addi.n	a2, a2, 1
.LVL61:
	addi.n	a9, a9, 1
.LVL62:
	addi.n	a3, a3, -1
.LVL63:
.L67:
	.loc 1 66 0
	beqz.n	a3, .L68
	.loc 1 66 0 is_stmt 0 discriminator 1
	l8ui	a8, a9, 0
	beqz.n	a8, .L68
	.loc 1 66 0 discriminator 2
	l8ui	a11, a2, 0
	beq	a8, a11, .L69
	.loc 1 66 0 discriminator 3
	add.n	a10, a13, a8
	l8ui	a10, a10, 1
	extui	a10, a10, 0, 2
	bnei	a10, 2, .L68
	.loc 1 66 0 discriminator 4
	addi	a8, a8, -32
	beq	a11, a8, .L69
.L68:
	.loc 1 72 0 is_stmt 1
	l8ui	a8, a9, 0
	bnez.n	a8, .L65
	l32r	a9, .LC18
.LVL64:
	mov.n	a8, a9
	.loc 1 78 0
	beqz.n	a3, .L70
.LVL65:
	.loc 1 78 0 is_stmt 0 discriminator 1
	l8ui	a10, a2, 0
	movi	a8, 0x73
	bne	a10, a8, .L71
	.loc 1 79 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL66:
	addi.n	a3, a3, -1
.LVL67:
.L71:
	.loc 1 66 0
	mov.n	a8, a9
	j	.L72
.LVL68:
.L73:
	.loc 1 84 0
	addi.n	a2, a2, 1
.LVL69:
	addi.n	a8, a8, 1
.LVL70:
	addi.n	a3, a3, -1
.LVL71:
.L72:
	.loc 1 83 0
	beqz.n	a3, .L70
	.loc 1 83 0 is_stmt 0 discriminator 1
	l8ui	a9, a8, 0
	beqz.n	a9, .L70
	.loc 1 83 0 discriminator 2
	l8ui	a10, a2, 0
	beq	a10, a9, .L73
.LVL72:
.L70:
	.loc 1 87 0 is_stmt 1
	l8ui	a8, a8, 0
	.loc 1 88 0
	movi.n	a9, -2
	.loc 1 87 0
	bnez.n	a8, .L126
.LVL73:
	.loc 1 115 0
	movi.n	a9, -3
	.loc 1 94 0
	beqz.n	a3, .L126
	.loc 1 94 0 is_stmt 0 discriminator 1
	l8ui	a11, a2, 0
	movi.n	a9, 0x5b
	mov.n	a10, a2
	bne	a11, a9, .L80
	.loc 1 95 0 is_stmt 1
	addi.n	a8, a2, 1
.LVL74:
	.loc 1 97 0
	movi.n	a10, 0x5d
	mov.n	a9, a3
	j	.L76
.L77:
	.loc 1 98 0
	addi.n	a2, a2, 1
.LVL75:
	addi.n	a3, a3, -1
.LVL76:
	addi.n	a9, a9, -1
	bnez.n	a9, .L76
	j	.L144
.L76:
	.loc 1 97 0 discriminator 1
	l8ui	a11, a2, 0
	bne	a11, a10, .L77
	j	.L145
.L148:
	.loc 1 106 0
	sub	a9, a2, a8
	s32i.n	a9, a4, 0
	s32i.n	a8, a4, 4
	.loc 1 107 0
	addi.n	a2, a2, 1
.LVL77:
	addi.n	a3, a3, -1
.LVL78:
	j	.L79
.LVL79:
.L82:
	.loc 1 110 0
	addi.n	a10, a10, 1
.LVL80:
	.loc 1 111 0
	addi.n	a3, a3, -1
.LVL81:
	addi.n	a13, a13, -1
	bnez.n	a13, .L127
	j	.L81
.LVL82:
.L80:
	.loc 1 109 0 discriminator 1
	movi.n	a15, -0x11
	movi.n	a14, 1
	mov.n	a9, a8
	mov.n	a13, a3
.LVL83:
.L127:
	l8ui	a8, a10, 0
	mov.n	a5, a9
	and	a11, a8, a15
	addi	a11, a11, -47
	movnez	a5, a14, a11
	beqz.n	a5, .L81
	addi	a8, a8, -58
	mov.n	a5, a9
	movnez	a5, a14, a8
	bnez.n	a5, .L82
.L81:
	.loc 1 115 0
	movi.n	a9, -3
	.loc 1 114 0
	beq	a2, a10, .L126
	.loc 1 119 0
	sub	a8, a10, a2
	s32i.n	a8, a4, 0
	s32i.n	a2, a4, 4
	mov.n	a8, a2
	mov.n	a2, a10
.LVL84:
.L79:
	.loc 1 123 0
	beqz.n	a3, .L96
	.loc 1 123 0 is_stmt 0 discriminator 1
	l8ui	a10, a2, 0
	movi.n	a9, 0x3a
	bne	a10, a9, .L85
	.loc 1 124 0 is_stmt 1
	addi.n	a8, a2, 1
.LVL85:
	.loc 1 125 0
	addi.n	a3, a3, -1
.LVL86:
	.loc 1 127 0
	l32i.n	a11, a12, 0
	.loc 1 124 0
	mov.n	a2, a8
	.loc 1 127 0
	movi.n	a10, 4
	j	.L86
.LVL87:
.L88:
	.loc 1 128 0
	addi.n	a2, a2, 1
.LVL88:
	.loc 1 129 0
	addi.n	a3, a3, -1
.LVL89:
.L86:
	.loc 1 127 0
	beqz.n	a3, .L87
	.loc 1 127 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
	add.n	a9, a11, a9
	l8ui	a9, a9, 1
	bany	a9, a10, .L88
	j	.L146
.L98:
.LVL90:
	addi.n	a11, a8, 1
	.loc 1 124 0 is_stmt 1
	movi.n	a10, 0
	sub	a9, a2, a8
	bltu	a2, a11, .L130
	bne	a2, a10, .L149
.L130:
	movi.n	a9, 1
.LVL91:
.L149:
	loop	a9, .L90_LEND
.L90:
.LVL92:
.LBB42:
	.loc 1 136 0
	addi.n	a8, a8, 1
.LVL93:
	addi.n	a11, a8, -1
	l8ui	a11, a11, 0
	addx4	a10, a10, a10
.LVL94:
	addi	a11, a11, -48
	addx2	a10, a10, a11
.LVL95:
	.L90_LEND:
	.loc 1 139 0
	l32r	a11, .LC21
	.loc 1 140 0
	movi.n	a9, -4
	.loc 1 139 0
	blt	a11, a10, .L126
	.loc 1 144 0
	s16i	a10, a4, 8
.LDL1:
.LBE42:
	.loc 1 150 0
	beqz.n	a3, .L96
.LVL96:
.L85:
	.loc 1 153 0
	l8ui	a10, a2, 0
	movi.n	a9, 0x2f
	bne	a10, a9, .L91
.LVL97:
.L99:
	.loc 1 154 0
	addi.n	a2, a2, 1
.LVL98:
	.loc 1 155 0
	addi.n	a3, a3, -1
.LVL99:
	.loc 1 154 0
	mov.n	a8, a2
	.loc 1 157 0
	movi.n	a9, 0x3f
	j	.L92
.LVL100:
.L94:
	.loc 1 158 0
	addi.n	a8, a8, 1
.LVL101:
	.loc 1 159 0
	addi.n	a3, a3, -1
.LVL102:
.L92:
	.loc 1 157 0
	beqz.n	a3, .L93
	.loc 1 157 0 is_stmt 0 discriminator 1
	l8ui	a10, a8, 0
	bne	a10, a9, .L94
	j	.L147
.L100:
	.loc 1 163 0 is_stmt 1
	sub	a9, a8, a2
	s32i.n	a9, a4, 12
	s32i.n	a2, a4, 16
.LVL103:
	.loc 1 169 0
	beqz.n	a3, .L96
.LVL104:
.L91:
	.loc 1 169 0 is_stmt 0 discriminator 1
	l8ui	a9, a8, 0
	movi.n	a2, 0x3f
	bne	a9, a2, .L65
.LVL105:
	.loc 1 172 0 is_stmt 1
	addi.n	a3, a3, -1
.LVL106:
	addi.n	a8, a8, 1
.LVL107:
	s32i.n	a3, a4, 20
	s32i.n	a8, a4, 24
.LVL108:
	j	.L96
.LVL109:
.L65:
	.loc 1 53 0
	movi.n	a9, -1
	j	.L126
.LVL110:
.L144:
	.loc 1 115 0
	movi.n	a9, -3
	j	.L126
.L145:
	movi.n	a9, -3
	.loc 1 101 0
	bne	a8, a2, .L148
	j	.L126
.LVL111:
.L96:
	.loc 1 177 0
	movi.n	a9, 0
	j	.L126
.LVL112:
.L146:
	.loc 1 132 0
	bltu	a8, a2, .L98
	j	.L85
.L87:
	bgeu	a8, a2, .L96
	j	.L98
.LVL113:
.L66:
	.loc 1 150 0
	beqz.n	a3, .L96
	j	.L99
.LVL114:
.L147:
	.loc 1 162 0
	bltu	a2, a8, .L100
	mov.n	a8, a2
.LVL115:
	j	.L91
.LVL116:
.L93:
	bgeu	a2, a8, .L96
	j	.L100
.LVL117:
.L126:
	.loc 1 181 0
	mov.n	a2, a9
	retw.n
.LFE46:
	.size	coap_split_uri, .-coap_split_uri
	.section	.text.coap_split_path,"ax",@progbits
	.literal_position
	.literal .LC22, write_option
	.align	4
	.global	coap_split_path
	.type	coap_split_path, @function
coap_split_path:
.LFB53:
	.loc 1 377 0
.LVL118:
	entry	sp, 48
.LCFI4:
	.loc 1 378 0
	l32i.n	a8, a5, 0
	.loc 1 380 0
	l32r	a12, .LC22
	.loc 1 378 0
	s32i.n	a8, sp, 0
	.loc 1 380 0
	mov.n	a13, sp
	.loc 1 378 0
	movi.n	a8, 0
	.loc 1 380 0
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 378 0
	s32i.n	a8, sp, 8
	s32i.n	a4, sp, 4
	.loc 1 380 0
	call8	coap_split_path_impl
.LVL119:
	.loc 1 382 0
	l32i.n	a8, a5, 0
	l32i.n	a9, sp, 0
	.loc 1 385 0
	l32i.n	a2, sp, 8
.LVL120:
	.loc 1 382 0
	sub	a8, a8, a9
	s32i.n	a8, a5, 0
	.loc 1 385 0
	retw.n
.LFE53:
	.size	coap_split_path, .-coap_split_path
	.section	.text.coap_split_query,"ax",@progbits
	.align	4
	.global	coap_split_query
	.type	coap_split_query, @function
coap_split_query:
.LFB54:
	.loc 1 389 0
.LVL121:
	entry	sp, 48
.LCFI5:
	.loc 1 390 0
	l32i.n	a6, a5, 0
	s32i.n	a4, sp, 4
	movi.n	a4, 0
.LVL122:
	s32i.n	a6, sp, 0
	s32i.n	a4, sp, 8
.LVL123:
	add.n	a3, a2, a3
.LVL124:
	.loc 1 393 0
	mov.n	a10, a2
	.loc 1 394 0
	movi.n	a6, 0x23
	j	.L152
.LVL125:
.L155:
	.loc 1 395 0
	movi.n	a9, 0x26
	addi.n	a4, a2, 1
	bne	a8, a9, .L153
	.loc 1 396 0
	sub	a11, a2, a10
	mov.n	a12, sp
	call8	write_option
.LVL126:
	.loc 1 397 0
	mov.n	a10, a4
.LVL127:
.L153:
	.loc 1 400 0
	mov.n	a2, a4
.LVL128:
.L152:
	.loc 1 394 0
	bne	a2, a3, .L154
.L156:
	.loc 1 405 0
	sub	a11, a2, a10
	mov.n	a12, sp
	call8	write_option
.LVL129:
	.loc 1 407 0
	l32i.n	a2, a5, 0
.LVL130:
	l32i.n	a3, sp, 0
	sub	a2, a2, a3
	s32i.n	a2, a5, 0
	.loc 1 408 0
	l32i.n	a2, sp, 8
	retw.n
.LVL131:
.L154:
	.loc 1 394 0 discriminator 1
	l8ui	a8, a2, 0
	bne	a8, a6, .L155
	j	.L156
.LFE54:
	.size	coap_split_query, .-coap_split_query
	.section	.text.coap_new_uri,"ax",@progbits
	.align	4
	.global	coap_new_uri
	.type	coap_new_uri, @function
coap_new_uri:
.LFB55:
	.loc 1 414 0
.LVL132:
	entry	sp, 32
.LCFI6:
.LVL133:
.LBB47:
.LBB48:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/mem.h"
	.loc 2 71 0
	addi	a11, a3, 29
.LVL134:
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL135:
	mov.n	a4, a10
.LBE48:
.LBE47:
	.loc 1 420 0
	mov.n	a11, a10
	.loc 1 419 0
	beqz.n	a10, .L159
	.loc 1 422 0
	addi	a8, a10, 28
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a8
	call8	memcpy
.LVL136:
	mov.n	a8, a10
	.loc 1 423 0
	add.n	a9, a4, a3
	movi.n	a10, 0
	s8i	a10, a9, 28
	.loc 1 425 0
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a10, a8
	call8	coap_split_uri
.LVL137:
	mov.n	a11, a4
	bgez	a10, .L159
.LVL138:
.LBB49:
.LBB50:
	.loc 2 78 0
	movi.n	a10, 0
	call8	coap_free_type
.LVL139:
.LBE50:
.LBE49:
	.loc 1 427 0
	movi.n	a11, 0
.LVL140:
.L159:
	.loc 1 430 0
	mov.n	a2, a11
.LVL141:
	retw.n
.LFE55:
	.size	coap_new_uri, .-coap_new_uri
	.section	.text.coap_clone_uri,"ax",@progbits
	.align	4
	.global	coap_clone_uri
	.type	coap_clone_uri, @function
coap_clone_uri:
.LFB56:
	.loc 1 433 0
.LVL142:
	entry	sp, 32
.LCFI7:
	.loc 1 433 0
	mov.n	a3, a2
	.loc 1 436 0
	bnez.n	a2, .L163
.LVL143:
.L165:
	.loc 1 437 0
	movi.n	a2, 0
	retw.n
.LVL144:
.L163:
.LBB53:
.LBB54:
	.loc 2 71 0
	l32i.n	a11, a2, 20
	l32i.n	a2, a2, 0
.LVL145:
	movi.n	a10, 0
	add.n	a2, a11, a2
.LVL146:
	l32i.n	a11, a3, 12
	addi	a2, a2, 29
	add.n	a11, a2, a11
	call8	coap_malloc_type
.LVL147:
	mov.n	a2, a10
.LBE54:
.LBE53:
	.loc 1 442 0
	beqz.n	a10, .L165
	.loc 1 445 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	call8	memset
.LVL148:
	.loc 1 447 0
	l16ui	a8, a3, 8
	s16i	a8, a2, 8
	.loc 1 449 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L166
	.loc 1 450 0
	addi	a10, a2, 28
	s32i.n	a10, a2, 4
	.loc 1 451 0
	s32i.n	a8, a2, 0
	.loc 1 453 0
	l32i.n	a12, a3, 0
	l32i.n	a11, a3, 4
	call8	memcpy
.LVL149:
.L166:
	.loc 1 456 0
	l32i.n	a8, a3, 12
	beqz.n	a8, .L167
	.loc 1 457 0
	l32i.n	a10, a3, 0
	.loc 1 458 0
	s32i.n	a8, a2, 12
	.loc 1 457 0
	addi	a10, a10, 28
	add.n	a10, a2, a10
	s32i.n	a10, a2, 16
	.loc 1 460 0
	l32i.n	a12, a3, 12
	l32i.n	a11, a3, 16
	call8	memcpy
.LVL150:
.L167:
	.loc 1 463 0
	l32i.n	a9, a3, 20
	beqz.n	a9, .L164
	.loc 1 464 0
	l32i.n	a10, a3, 0
	l32i.n	a8, a3, 12
	.loc 1 465 0
	s32i.n	a9, a2, 20
	.loc 1 464 0
	add.n	a10, a10, a8
	addi	a10, a10, 28
	add.n	a10, a2, a10
	s32i.n	a10, a2, 24
	.loc 1 467 0
	l32i.n	a12, a3, 20
	l32i.n	a11, a3, 24
	call8	memcpy
.LVL151:
.L164:
	.loc 1 471 0
	retw.n
.LFE56:
	.size	coap_clone_uri, .-coap_clone_uri
	.section	.text.coap_hash_path,"ax",@progbits
	.literal_position
	.literal .LC23, hash_segment
	.align	4
	.global	coap_hash_path
	.type	coap_hash_path, @function
coap_hash_path:
.LFB58:
	.loc 1 483 0
.LVL152:
	entry	sp, 32
.LCFI8:
	.loc 1 485 0
	movi.n	a11, 0
	.loc 1 484 0
	beq	a2, a11, .L180
	.loc 1 487 0
	movi.n	a12, 4
	mov.n	a10, a4
	call8	memset
.LVL153:
	.loc 1 489 0
	l32r	a12, .LC23
	mov.n	a11, a3
	mov.n	a13, a4
	mov.n	a10, a2
	call8	coap_split_path_impl
.LVL154:
	.loc 1 491 0
	movi.n	a11, 1
.L180:
	.loc 1 492 0
	mov.n	a2, a11
.LVL155:
	retw.n
.LFE58:
	.size	coap_hash_path, .-coap_hash_path
	.section	.rodata.__func__$6645,"a",@progbits
	.type	__func__$6645, @object
	.size	__func__$6645, 20
__func__$6645:
	.string	"make_decoded_option"
	.section	.rodata.__func__$6675,"a",@progbits
	.type	__func__$6675, @object
	.size	__func__$6675, 13
__func__$6675:
	.string	"write_option"
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
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI0-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI1-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI2-.LFB51
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI3-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI4-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI5-.LFB54
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI6-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI7-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI8-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/debug.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/str.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/uri.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/hashkey.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/option.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb32
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xc
	.4byte	.LASF74
	.4byte	.LASF75
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x6
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x1d
	.4byte	0xf2
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x3
	.byte	0x1a
	.4byte	0x12f
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xf
	.4byte	0x14e
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x10
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"s"
	.byte	0x4
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"str"
	.byte	0x4
	.byte	0x12
	.4byte	0x12f
	.uleb128 0xa
	.byte	0x1c
	.byte	0x5
	.byte	0x14
	.4byte	0x192
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x15
	.4byte	0x14e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x16
	.4byte	0x37
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x17
	.4byte	0x14e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x19
	.4byte	0x14e
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x5
	.byte	0x1a
	.4byte	0x159
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x132
	.4byte	0x1a9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1af
	.uleb128 0xf
	.4byte	0x1c4
	.uleb128 0x10
	.4byte	0x7f
	.uleb128 0x10
	.4byte	0x25
	.uleb128 0x10
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xc
	.byte	0x1
	.2byte	0x164
	.4byte	0x1ea
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.2byte	0x165
	.4byte	0x14e
	.byte	0
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.2byte	0x166
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x16a
	.byte	0x1
	.4byte	0x23f
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x7f
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x16a
	.4byte	0x76
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x16b
	.4byte	0x23f
	.uleb128 0x17
	.string	"res"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x3e
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	0x255
	.4byte	.LASF46
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c4
	.uleb128 0x19
	.4byte	0x85
	.4byte	0x255
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x245
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.byte	0x25
	.4byte	0x7f
	.byte	0x3
	.4byte	0x288
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x25
	.4byte	0x7f
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0x25
	.4byte	0x4c
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1de
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e3
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1de
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0xae0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3e
	.byte	0x1
	.4byte	0x348
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x348
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x10a
	.4byte	0x25
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x7f
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x10b
	.4byte	0x25
	.uleb128 0x17
	.string	"res"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	0x363
	.4byte	.LASF43
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34e
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x19
	.4byte	0x85
	.4byte	0x363
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x353
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe3
	.4byte	0x3e
	.byte	0x1
	.4byte	0x396
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0xe3
	.4byte	0x348
	.uleb128 0x23
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe3
	.4byte	0x25
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.byte	0xe5
	.4byte	0x25
	.byte	0
	.uleb128 0x25
	.4byte	.LASF48
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	0x3c4
	.uleb128 0x1c
	.string	"seg"
	.byte	0x1
	.byte	0xcd
	.4byte	0x348
	.uleb128 0x23
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0xcd
	.4byte	0x7f
	.byte	0
	.uleb128 0x26
	.4byte	0x1ea
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x554
	.uleb128 0x27
	.4byte	0x1f7
	.4byte	.LLST0
	.uleb128 0x27
	.4byte	0x201
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	0x20d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x219
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	0x225
	.uleb128 0x29
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6675
	.uleb128 0x2b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x44f
	.uleb128 0x27
	.4byte	0x1f7
	.4byte	.LLST2
	.uleb128 0x27
	.4byte	0x201
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	0x20d
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2a
	.4byte	0x219
	.uleb128 0x2a
	.4byte	0x225
	.uleb128 0x29
	.4byte	0x231
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6675
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x2e3
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x16f
	.uleb128 0x27
	.4byte	0x316
	.4byte	.LLST5
	.uleb128 0x27
	.4byte	0x30a
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	0x2fe
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	0x2f4
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2a
	.4byte	0x322
	.uleb128 0x2e
	.4byte	0x32e
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	0x33a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6645
	.uleb128 0x2f
	.4byte	0x368
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x114
	.4byte	0x4db
	.uleb128 0x27
	.4byte	0x381
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	0x378
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2e
	.4byte	0x38c
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x396
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x128
	.4byte	0x50b
	.uleb128 0x27
	.4byte	0x3b8
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	0x3ad
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	0x3a2
	.4byte	.LLST15
	.byte	0
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0xaeb
	.4byte	0x52b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL16
	.4byte	0xaf7
	.4byte	0x542
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0xb02
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x138
	.4byte	0x3e
	.byte	0x3
	.4byte	0x57c
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.2byte	0x138
	.4byte	0x7f
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.2byte	0x138
	.4byte	0x25
	.byte	0
	.uleb128 0x32
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x681
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.2byte	0x148
	.4byte	0x348
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x1e
	.string	"h"
	.byte	0x1
	.2byte	0x149
	.4byte	0x19d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x149
	.4byte	0x76
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x348
	.4byte	.LLST18
	.uleb128 0x35
	.string	"q"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x348
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	0x25a
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x14e
	.4byte	0x616
	.uleb128 0x36
	.4byte	0x26a
	.uleb128 0x27
	.4byte	0x273
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	0x27e
	.4byte	.LLST22
	.byte	0
	.uleb128 0x2f
	.4byte	0x554
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x151
	.4byte	0x63d
	.uleb128 0x27
	.4byte	0x56f
	.4byte	.LLST23
	.uleb128 0x27
	.4byte	0x565
	.4byte	.LLST24
	.byte	0
	.uleb128 0x2f
	.4byte	0x554
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x15d
	.4byte	0x664
	.uleb128 0x27
	.4byte	0x56f
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	0x565
	.4byte	.LLST26
	.byte	0
	.uleb128 0x37
	.4byte	.LVL52
	.4byte	0x674
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL54
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF54
	.byte	0x1
	.byte	0x30
	.4byte	0x3e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x758
	.uleb128 0x3a
	.4byte	.LASF50
	.byte	0x1
	.byte	0x30
	.4byte	0x348
	.4byte	.LLST27
	.uleb128 0x3b
	.string	"len"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x3c
	.string	"uri"
	.byte	0x1
	.byte	0x30
	.4byte	0x758
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.string	"p"
	.byte	0x1
	.byte	0x31
	.4byte	0x348
	.4byte	.LLST29
	.uleb128 0x3d
	.string	"q"
	.byte	0x1
	.byte	0x31
	.4byte	0x348
	.4byte	.LLST30
	.uleb128 0x3e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x32
	.4byte	0x3e
	.4byte	.LLST31
	.uleb128 0x3f
	.string	"res"
	.byte	0x1
	.byte	0x32
	.4byte	0x3e
	.byte	0
	.uleb128 0x40
	.4byte	.LASF35
	.byte	0x1
	.byte	0x94
	.4byte	.LDL1
	.uleb128 0x41
	.4byte	.LASF52
	.byte	0x1
	.byte	0xb3
	.uleb128 0x42
	.string	"end"
	.byte	0x1
	.byte	0xb0
	.uleb128 0x2b
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0x730
	.uleb128 0x3e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x85
	.4byte	0x3e
	.4byte	.LLST32
	.byte	0
	.uleb128 0x20
	.4byte	.LVL58
	.4byte	0xb0d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x192
	.uleb128 0x43
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x178
	.4byte	0x3e
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e5
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.2byte	0x178
	.4byte	0x348
	.4byte	.LLST33
	.uleb128 0x1f
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x178
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.2byte	0x179
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x179
	.4byte	0x7e5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x44
	.string	"tmp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0x57c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	write_option
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x43
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x184
	.4byte	0x3e
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x883
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.2byte	0x184
	.4byte	0x348
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x184
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.2byte	0x185
	.4byte	0x7f
	.4byte	.LLST36
	.uleb128 0x1f
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x185
	.4byte	0x7e5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x44
	.string	"tmp"
	.byte	0x1
	.2byte	0x186
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x187
	.4byte	0x348
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LVL126
	.4byte	0x1ea
	.4byte	0x872
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL129
	.4byte	0x1ea
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x2
	.byte	0x46
	.4byte	0x76
	.byte	0x3
	.4byte	0x89f
	.uleb128 0x23
	.4byte	.LASF58
	.byte	0x2
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0x25
	.4byte	.LASF59
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x8b7
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x2
	.byte	0x4d
	.4byte	0x76
	.byte	0
	.uleb128 0x43
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x19e
	.4byte	0x758
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x998
	.uleb128 0x33
	.string	"uri"
	.byte	0x1
	.2byte	0x19e
	.4byte	0x348
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x19e
	.4byte	0x30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7f
	.uleb128 0x45
	.4byte	0x883
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x92e
	.uleb128 0x27
	.4byte	0x893
	.4byte	.LLST39
	.uleb128 0x20
	.4byte	.LVL135
	.4byte	0xb16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 29
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x89f
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x961
	.uleb128 0x27
	.4byte	0x8ab
	.4byte	.LLST40
	.uleb128 0x20
	.4byte	.LVL139
	.4byte	0xb21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0xb2c
	.4byte	0x981
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL137
	.4byte	0x681
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x758
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x33
	.string	"uri"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xa40
	.4byte	.LLST41
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x758
	.uleb128 0x45
	.4byte	0x883
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x9fb
	.uleb128 0x27
	.4byte	0x893
	.4byte	.LLST42
	.uleb128 0x20
	.4byte	.LVL147
	.4byte	0xb16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL148
	.4byte	0xb0d
	.4byte	0xa19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x31
	.4byte	.LVL149
	.4byte	0xb2c
	.4byte	0xa2d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x46
	.4byte	.LVL150
	.4byte	0xb2c
	.uleb128 0x46
	.4byte	.LVL151
	.4byte	0xb2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa46
	.uleb128 0x7
	.4byte	0x192
	.uleb128 0x43
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x3e
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad5
	.uleb128 0x34
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x348
	.4byte	.LLST43
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LVL153
	.4byte	0xb0d
	.4byte	0xaaf
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x20
	.4byte	.LVL154
	.4byte	0x57c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	hash_segment
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2d
	.4byte	0x9e
	.uleb128 0x48
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x7
	.byte	0x20
	.uleb128 0x49
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x14b
	.uleb128 0x48
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x9
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x3
	.byte	0x37
	.uleb128 0x4a
	.4byte	.LASF71
	.4byte	.LASF71
	.uleb128 0x48
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x2
	.byte	0x37
	.uleb128 0x48
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x2
	.byte	0x41
	.uleb128 0x4a
	.4byte	.LASF72
	.4byte	.LASF72
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x16
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
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x77
	.sleb128 -1
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x77
	.sleb128 -1
	.4byte	.LVL55
	.4byte	.LFE51
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL59
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL113
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x73
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0xb
	.byte	0x72
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x73
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x73
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL121
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL125
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x3
	.byte	0x73
	.sleb128 29
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135-1
	.4byte	.LFE55
	.2byte	0x3
	.byte	0x73
	.sleb128 29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0xe
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1d
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0xd
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1d
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0xe
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"result"
.LASF19:
	.string	"COAP_PDU"
.LASF66:
	.string	"coap_opt_setheader"
.LASF12:
	.string	"COAP_STRING"
.LASF40:
	.string	"state"
.LASF38:
	.string	"segment_handler_t"
.LASF4:
	.string	"short int"
.LASF32:
	.string	"size_t"
.LASF59:
	.string	"coap_free"
.LASF8:
	.string	"sizetype"
.LASF56:
	.string	"coap_split_query"
.LASF79:
	.string	"__ctype_ptr__"
.LASF60:
	.string	"object"
.LASF45:
	.string	"written"
.LASF72:
	.string	"memcpy"
.LASF49:
	.string	"dots"
.LASF64:
	.string	"coap_hash_path"
.LASF23:
	.string	"LOG_EMERG"
.LASF61:
	.string	"coap_new_uri"
.LASF43:
	.string	"make_decoded_option"
.LASF44:
	.string	"buflen"
.LASF20:
	.string	"COAP_PDU_BUF"
.LASF31:
	.string	"length"
.LASF33:
	.string	"host"
.LASF47:
	.string	"check_segment"
.LASF5:
	.string	"long long int"
.LASF71:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"COAP_CONTEXT"
.LASF53:
	.string	"uri_port"
.LASF46:
	.string	"write_option"
.LASF30:
	.string	"LOG_DEBUG"
.LASF26:
	.string	"LOG_ERR"
.LASF63:
	.string	"coap_clone_uri"
.LASF3:
	.string	"unsigned char"
.LASF57:
	.string	"coap_malloc"
.LASF41:
	.string	"__func__"
.LASF39:
	.string	"data"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF75:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/coap"
.LASF54:
	.string	"coap_split_uri"
.LASF70:
	.string	"coap_free_type"
.LASF22:
	.string	"COAP_RESOURCEATTR"
.LASF1:
	.string	"short unsigned int"
.LASF25:
	.string	"LOG_CRIT"
.LASF27:
	.string	"LOG_WARNING"
.LASF10:
	.string	"char"
.LASF11:
	.string	"_Bool"
.LASF37:
	.string	"coap_uri_t"
.LASF28:
	.string	"LOG_NOTICE"
.LASF16:
	.string	"COAP_NODE"
.LASF76:
	.string	"cnt_str"
.LASF36:
	.string	"query"
.LASF24:
	.string	"LOG_ALERT"
.LASF14:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF34:
	.string	"port"
.LASF77:
	.string	"hash_segment"
.LASF68:
	.string	"coap_log_impl"
.LASF9:
	.string	"long unsigned int"
.LASF13:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF58:
	.string	"size"
.LASF18:
	.string	"COAP_ENDPOINT"
.LASF35:
	.string	"path"
.LASF74:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/uri.c"
.LASF42:
	.string	"strnchr"
.LASF48:
	.string	"decode_segment"
.LASF29:
	.string	"LOG_INFO"
.LASF55:
	.string	"coap_split_path"
.LASF52:
	.string	"error"
.LASF51:
	.string	"secure"
.LASF50:
	.string	"str_var"
.LASF67:
	.string	"__assert_func"
.LASF65:
	.string	"coap_hash_impl"
.LASF73:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF78:
	.string	"coap_split_path_impl"
.LASF21:
	.string	"COAP_RESOURCE"
.LASF15:
	.string	"COAP_PACKET"
.LASF69:
	.string	"coap_malloc_type"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
