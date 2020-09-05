	.file	"httpd_uri.c"
	.text
.Ltext0:
	.section	.text.httpd_find_uri_handler,"ax",@progbits
	.align	4
	.type	httpd_find_uri_handler, @function
httpd_find_uri_handler:
.LFB56:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/src/httpd_uri.c"
	.loc 1 97 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 97 0
	s32i.n	a5, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a5, a6
.LVL1:
	.loc 1 98 0
	beqz.n	a6, .L2
	.loc 1 99 0
	movi.n	a3, 4
.LVL2:
	s32i.n	a3, a6, 0
.L2:
.LBB5:
.LBB6:
.LBB7:
	.loc 1 28 0 discriminator 1
	movi.n	a3, 0
	j	.L3
.LVL3:
.L10:
.LBE7:
.LBE6:
	.loc 1 103 0
	l32i	a7, a2, 80
	slli	a6, a3, 2
	add.n	a7, a7, a6
	l32i.n	a8, a7, 0
	beqz.n	a8, .L4
	.loc 1 110 0
	l32i.n	a7, a2, 52
	beqz.n	a7, .L5
	.loc 1 110 0 is_stmt 0 discriminator 1
	l32i.n	a11, sp, 0
	l32i.n	a10, a8, 0
	mov.n	a12, a4
	callx8	a7
.LVL4:
	j	.L6
.L5:
	.loc 1 112 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 0
.LVL5:
.LBB9:
.LBB8:
	.loc 1 28 0 discriminator 2
	mov.n	a10, a8
	s32i.n	a8, sp, 8
	call8	strlen
.LVL6:
	l32i.n	a8, sp, 8
.LVL7:
	bne	a4, a10, .L7
	.loc 1 29 0
	l32i.n	a11, sp, 0
	mov.n	a10, a8
	mov.n	a12, a4
	call8	strncmp
.LVL8:
	.loc 1 28 0
	movi.n	a8, 1
	moveqz	a7, a8, a10
.L7:
	extui	a10, a7, 0, 1
.LVL9:
.L6:
.LBE8:
.LBE9:
	.loc 1 110 0 discriminator 4
	beqz.n	a10, .L8
	.loc 1 114 0
	l32i	a7, a2, 80
	l32i.n	a9, sp, 4
	add.n	a6, a7, a6
	l32i.n	a8, a6, 0
	l32i.n	a6, a8, 4
	bne	a6, a9, .L9
	.loc 1 116 0
	beqz.n	a5, .L4
	.loc 1 119 0
	movi.n	a2, 0
.LVL10:
	s32i.n	a2, a5, 0
	j	.L4
.LVL11:
.L9:
	.loc 1 126 0
	beqz.n	a5, .L8
	.loc 1 127 0
	movi.n	a6, 5
	s32i.n	a6, a5, 0
.L8:
	.loc 1 102 0 discriminator 2
	addi.n	a3, a3, 1
.LVL12:
.L3:
	.loc 1 102 0 is_stmt 0 discriminator 1
	l16ui	a6, a2, 14
	blt	a3, a6, .L10
.LBE5:
	.loc 1 131 0 is_stmt 1
	movi.n	a8, 0
.LVL13:
.L4:
	.loc 1 132 0
	mov.n	a2, a8
	retw.n
.LFE56:
	.size	httpd_find_uri_handler, .-httpd_find_uri_handler
	.section	.text.httpd_uri_match_wildcard,"ax",@progbits
	.align	4
	.global	httpd_uri_match_wildcard
	.type	httpd_uri_match_wildcard, @function
httpd_uri_match_wildcard:
.LFB55:
	.loc 1 33 0
.LVL14:
	entry	sp, 48
.LCFI1:
	.loc 1 34 0
	mov.n	a10, a2
	call8	strlen
.LVL15:
	.loc 1 38 0
	beqz.n	a10, .L37
	.loc 1 38 0 is_stmt 0 discriminator 1
	add.n	a5, a2, a10
	addi.n	a6, a5, -1
	l8ui	a6, a6, 0
.LVL16:
	.loc 1 39 0 is_stmt 1 discriminator 1
	bltui	a10, 2, .L28
	addi	a5, a5, -2
.LVL17:
	l8ui	a8, a5, 0
.LVL18:
	.loc 1 40 0 discriminator 1
	movi.n	a5, 0x2a
.LVL19:
	movi.n	a7, 1
	beq	a6, a5, .L29
	.loc 1 40 0 is_stmt 0 discriminator 2
	movi.n	a11, 0
	addi	a9, a8, -42
	mov.n	a5, a11
	moveqz	a5, a7, a9
	mov.n	a9, a5
	addi	a5, a6, -63
	movnez	a7, a11, a5
	and	a7, a9, a7
.LVL20:
.L36:
	.loc 1 41 0 is_stmt 1 discriminator 6
	movi.n	a5, 0x3f
	movi.n	a9, 1
	beq	a6, a5, .L30
.LVL21:
.L29:
	.loc 1 41 0 is_stmt 0 discriminator 2
	movi.n	a5, 0
	movi.n	a9, 1
	mov.n	a11, a5
	addi	a8, a8, -63
	addi	a6, a6, -42
	moveqz	a11, a9, a8
	moveqz	a5, a9, a6
	and	a9, a11, a5
.LVL22:
.L30:
	.loc 1 54 0 is_stmt 1 discriminator 6
	addx2	a5, a9, a7
	.loc 1 55 0 discriminator 6
	movi.n	a6, 0
	.loc 1 54 0 discriminator 6
	bltu	a10, a5, .L46
	.loc 1 59 0
	slli	a5, a9, 31
	sub	a5, a5, a9
	subx2	a5, a5, a7
	add.n	a5, a5, a10
.LVL23:
	.loc 1 61 0
	bltu	a4, a5, .L46
	.loc 1 65 0
	bne	a9, a6, .L32
	.loc 1 66 0
	sub	a4, a5, a4
.LVL24:
	movi.n	a8, 1
	mov.n	a9, a6
.LVL25:
	movnez	a9, a8, a4
	mov.n	a4, a9
	bltu	a7, a9, .L46
	.loc 1 72 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
.LVL26:
	s32i.n	a8, sp, 0
	call8	strncmp
.LVL27:
	l32i.n	a8, sp, 0
	moveqz	a6, a8, a10
	extui	a6, a6, 0, 8
	j	.L46
.LVL28:
.L32:
	.loc 1 75 0
	bgeu	a5, a4, .L33
	.loc 1 75 0 is_stmt 0 discriminator 1
	add.n	a9, a2, a5
.LVL29:
	add.n	a8, a3, a5
	l8ui	a9, a9, 0
	l8ui	a8, a8, 0
	bne	a9, a8, .L46
.L33:
	.loc 1 79 0 is_stmt 1
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
.LVL30:
	call8	strncmp
.LVL31:
	.loc 1 55 0
	movi.n	a6, 0
	.loc 1 79 0
	bne	a10, a6, .L46
	.loc 1 87 0
	movi.n	a6, 1
	bnez.n	a7, .L34
	.loc 1 87 0 is_stmt 0 discriminator 2
	add.n	a5, a5, a6
.LVL32:
	bgeu	a5, a4, .L34
	mov.n	a6, a7
.LVL33:
.L34:
	.loc 1 87 0 discriminator 6
	extui	a6, a6, 0, 1
	j	.L46
.LVL34:
.L37:
	.loc 1 38 0 is_stmt 1
	mov.n	a6, a10
.L28:
.LVL35:
	.loc 1 40 0
	addi	a7, a6, -42
	movi.n	a8, 0
	movi.n	a5, 1
	movnez	a5, a8, a7
	mov.n	a7, a5
	j	.L36
.LVL36:
.L46:
	.loc 1 89 0
	mov.n	a2, a6
.LVL37:
	retw.n
.LFE55:
	.size	httpd_uri_match_wildcard, .-httpd_uri_match_wildcard
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"httpd_uri"
.LC6:
	.string	"\033[0;33mW (%d) %s: %s: handler %s with method %d already registered\033[0m\n"
.LC8:
	.string	"\033[0;33mW (%d) %s: %s: no slots left for registering handler\033[0m\n"
	.section	.text.httpd_register_uri_handler,"ax",@progbits
	.literal_position
	.literal .LC0, 32770
	.literal .LC1, 32775
	.literal .LC2, 32769
	.literal .LC3, __func__$6962
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.global	httpd_register_uri_handler
	.type	httpd_register_uri_handler, @function
httpd_register_uri_handler:
.LFB57:
	.loc 1 136 0
.LVL38:
	entry	sp, 48
.LCFI2:
	.loc 1 137 0
	movi.n	a14, 1
	movi.n	a4, 0
	moveqz	a4, a14, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L54
	moveqz	a4, a14, a3
	bnez.n	a4, .L54
.LVL39:
	.loc 1 147 0
	l32i.n	a5, a3, 0
	mov.n	a10, a5
	call8	strlen
.LVL40:
	l32i.n	a13, a3, 4
	mov.n	a12, a10
	mov.n	a14, a4
	mov.n	a11, a5
	mov.n	a10, a2
	call8	httpd_find_uri_handler
.LVL41:
	bnez.n	a10, .L49
.LBB10:
	.loc 1 155 0
	l16ui	a8, a2, 14
	j	.L50
.L49:
.LBE10:
	.loc 1 150 0 discriminator 4
	call8	esp_log_timestamp
.LVL42:
	l32i.n	a2, a3, 4
.LVL43:
	l32r	a11, .LC5
	s32i.n	a2, sp, 4
	l32i.n	a2, a3, 0
	l32r	a15, .LC3
	l32r	a12, .LC7
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL44:
	.loc 1 152 0 discriminator 4
	l32r	a2, .LC0
	retw.n
.LVL45:
.L53:
.LBB11:
	.loc 1 156 0
	l32i	a6, a2, 80
	slli	a4, a10, 2
	add.n	a6, a6, a4
	l32i.n	a5, a6, 0
	bnez.n	a5, .L51
	.loc 1 157 0
	movi.n	a10, 0x10
.LVL46:
	call8	malloc
.LVL47:
	s32i.n	a10, a6, 0
	.loc 1 158 0
	l32i	a2, a2, 80
.LVL48:
	add.n	a4, a2, a4
	l32i.n	a6, a4, 0
	.loc 1 160 0
	l32r	a2, .LC1
	.loc 1 158 0
	beqz.n	a6, .L48
	.loc 1 164 0
	l32i.n	a10, a3, 0
	call8	strdup
.LVL49:
	s32i.n	a10, a6, 0
	.loc 1 165 0
	l32i.n	a10, a4, 0
	l32i.n	a6, a10, 0
	bnez.n	a6, .L52
	.loc 1 167 0
	call8	free
.LVL50:
	.loc 1 168 0
	retw.n
.L52:
	.loc 1 172 0
	l32i.n	a2, a3, 4
	s32i.n	a2, a10, 4
	.loc 1 173 0
	l32i.n	a2, a3, 8
	.loc 1 174 0
	l32i.n	a3, a3, 12
.LVL51:
	.loc 1 173 0
	s32i.n	a2, a10, 8
	.loc 1 174 0
	l32i.n	a2, a4, 0
	s32i.n	a3, a2, 12
	.loc 1 176 0
	mov.n	a2, a5
	retw.n
.LVL52:
.L51:
	.loc 1 155 0 discriminator 2
	addi.n	a10, a10, 1
.LVL53:
.L50:
	.loc 1 155 0 is_stmt 0 discriminator 1
	blt	a10, a8, .L53
.LBE11:
	.loc 1 180 0 is_stmt 1 discriminator 4
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC5
	l32r	a15, .LC3
	l32r	a12, .LC9
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL55:
	.loc 1 181 0 discriminator 4
	l32r	a2, .LC2
.LVL56:
	retw.n
.LVL57:
.L54:
	.loc 1 138 0
	movi	a2, 0x102
.LVL58:
.L48:
	.loc 1 182 0
	retw.n
.LFE57:
	.size	httpd_register_uri_handler, .-httpd_register_uri_handler
	.section	.rodata.str1.1
.LC13:
	.string	"\033[0;33mW (%d) %s: %s: handler %s with method %d not found\033[0m\n"
	.section	.text.httpd_unregister_uri_handler,"ax",@progbits
	.literal_position
	.literal .LC10, 1073741823
	.literal .LC11, __func__$6975
	.literal .LC12, .LC4
	.literal .LC14, .LC13
	.align	4
	.global	httpd_unregister_uri_handler
	.type	httpd_unregister_uri_handler, @function
httpd_unregister_uri_handler:
.LFB58:
	.loc 1 186 0
.LVL59:
	entry	sp, 64
.LCFI3:
	.loc 1 187 0
	movi.n	a5, 1
	movi.n	a8, 0
	moveqz	a8, a5, a2
	extui	a8, a8, 0, 8
	bnez.n	a8, .L67
	moveqz	a8, a5, a3
	bnez.n	a8, .L67
.LBB12:
	.loc 1 192 0
	l16ui	a9, a2, 14
	j	.L59
.LVL60:
.L66:
	.loc 1 193 0
	l32i	a5, a2, 80
	slli	a6, a8, 2
	add.n	a5, a5, a6
	l32i.n	a5, a5, 0
	beqz.n	a5, .L60
	.loc 1 196 0
	l32i.n	a10, a5, 4
	addi.n	a7, a8, 1
	bne	a10, a4, .L61
	.loc 1 197 0 discriminator 1
	l32i.n	a8, a5, 0
.LVL61:
	mov.n	a11, a3
	mov.n	a10, a8
	s32i.n	a8, sp, 20
	s32i.n	a9, sp, 16
	call8	strcmp
.LVL62:
	mov.n	a5, a10
	.loc 1 196 0 discriminator 1
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 16
	bnez.n	a10, .L61
	.loc 1 200 0
	mov.n	a10, a8
	call8	free
.LVL63:
	.loc 1 201 0
	l32i	a3, a2, 80
.LVL64:
	add.n	a3, a3, a6
	l32i.n	a10, a3, 0
	call8	free
.LVL65:
	.loc 1 202 0
	l32i	a3, a2, 80
	.loc 1 206 0
	mov.n	a8, a7
.LVL66:
	.loc 1 202 0
	add.n	a3, a3, a6
	s32i.n	a5, a3, 0
	.loc 1 206 0
	l16ui	a7, a2, 14
.LVL67:
	mov.n	a9, a6
	j	.L62
.LVL68:
.L64:
	addi.n	a4, a9, 4
	.loc 1 207 0
	add.n	a6, a3, a4
	l32i.n	a6, a6, 0
	bnez.n	a6, .L63
.L65:
	.loc 1 213 0
	l32r	a2, .LC10
.LVL69:
	add.n	a8, a8, a2
.LVL70:
	addx4	a9, a8, a3
	movi.n	a2, 0
	s32i.n	a2, a9, 0
	.loc 1 214 0
	j	.L58
.LVL71:
.L63:
	.loc 1 210 0 discriminator 2
	add.n	a9, a3, a9
	s32i.n	a6, a9, 0
	.loc 1 206 0 discriminator 2
	addi.n	a8, a8, 1
.LVL72:
	mov.n	a9, a4
.LVL73:
.L62:
	l32i	a3, a2, 80
	.loc 1 206 0 is_stmt 0 discriminator 1
	blt	a8, a7, .L64
	j	.L65
.LVL74:
.L61:
	.loc 1 192 0 is_stmt 1 discriminator 2
	mov.n	a8, a7
.LVL75:
.L59:
	.loc 1 192 0 is_stmt 0 discriminator 1
	blt	a8, a9, .L66
.L60:
.LBE12:
	.loc 1 217 0 is_stmt 1 discriminator 4
	call8	esp_log_timestamp
.LVL76:
	l32r	a11, .LC12
	l32r	a15, .LC11
	l32r	a12, .LC14
	mov.n	a13, a10
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL77:
	.loc 1 218 0 discriminator 4
	movi	a5, 0x105
	j	.L58
.L67:
	.loc 1 188 0
	movi	a5, 0x102
.LVL78:
.L58:
	.loc 1 219 0
	mov.n	a2, a5
	retw.n
.LFE58:
	.size	httpd_unregister_uri_handler, .-httpd_unregister_uri_handler
	.section	.rodata.str1.1
.LC17:
	.string	"\033[0;33mW (%d) %s: %s: no handler found for URI %s\033[0m\n"
	.section	.text.httpd_unregister_uri,"ax",@progbits
	.literal_position
	.literal .LC15, __func__$6990
	.literal .LC16, .LC4
	.literal .LC18, .LC17
	.align	4
	.global	httpd_unregister_uri
	.type	httpd_unregister_uri, @function
httpd_unregister_uri:
.LFB59:
	.loc 1 222 0
.LVL79:
	entry	sp, 64
.LCFI4:
	.loc 1 223 0
	movi.n	a5, 1
	movi.n	a4, 0
	moveqz	a4, a5, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L81
	moveqz	a4, a5, a3
	bnez.n	a4, .L81
	mov.n	a5, a4
	mov.n	a7, a4
	j	.L73
.LVL80:
.L78:
	.loc 1 232 0
	l32i	a9, a2, 80
	slli	a6, a5, 2
	add.n	a8, a9, a6
	l32i.n	a8, a8, 0
	bnez.n	a8, .L74
.L79:
.LBB13:
	.loc 1 251 0
	sub	a4, a5, a4
.LVL81:
	slli	a6, a4, 2
	.loc 1 252 0
	movi.n	a9, 0
	.loc 1 251 0
	j	.L75
.LVL82:
.L74:
.LBE13:
	.loc 1 235 0
	l32i.n	a12, a8, 0
	mov.n	a11, a3
	mov.n	a10, a12
	s32i.n	a8, sp, 20
	s32i.n	a9, sp, 16
	s32i.n	a12, sp, 24
	call8	strcmp
.LVL83:
	mov.n	a11, a10
	l32i.n	a8, sp, 20
	l32i.n	a9, sp, 16
	l32i.n	a12, sp, 24
	bnez.n	a10, .L76
	.loc 1 238 0
	mov.n	a10, a12
	s32i.n	a11, sp, 16
	call8	free
.LVL84:
	.loc 1 239 0
	l32i	a7, a2, 80
	.loc 1 243 0
	addi.n	a4, a4, 1
.LVL85:
	.loc 1 239 0
	add.n	a7, a7, a6
	l32i.n	a10, a7, 0
	call8	free
.LVL86:
	.loc 1 240 0
	l32i	a7, a2, 80
	l32i.n	a11, sp, 16
	add.n	a6, a7, a6
	s32i.n	a11, a6, 0
.LVL87:
	.loc 1 241 0
	movi.n	a7, 1
	j	.L77
.LVL88:
.L76:
	.loc 1 247 0
	sub	a6, a5, a4
	addx4	a6, a6, a9
	s32i.n	a8, a6, 0
.L77:
	.loc 1 231 0
	addi.n	a5, a5, 1
.LVL89:
.L73:
	.loc 1 231 0 is_stmt 0 discriminator 1
	l16ui	a6, a2, 14
	blt	a5, a6, .L78
	j	.L79
.LVL90:
.L80:
.LBB14:
	.loc 1 252 0 is_stmt 1 discriminator 3
	l32i	a8, a2, 80
	.loc 1 251 0 discriminator 3
	addi.n	a4, a4, 1
.LVL91:
	.loc 1 252 0 discriminator 3
	add.n	a8, a8, a6
	s32i.n	a9, a8, 0
	addi.n	a6, a6, 4
.L75:
	.loc 1 251 0 discriminator 1
	blt	a4, a5, .L80
.LBE14:
	.loc 1 258 0
	movi.n	a2, 0
.LVL92:
	.loc 1 255 0
	bne	a7, a2, .L72
	.loc 1 256 0 discriminator 4
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC16
	l32r	a15, .LC15
	l32r	a12, .LC18
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL94:
	.loc 1 258 0 discriminator 4
	movi	a2, 0x105
	retw.n
.LVL95:
.L81:
	.loc 1 224 0
	movi	a2, 0x102
.LVL96:
.L72:
	.loc 1 259 0
	retw.n
.LFE59:
	.size	httpd_unregister_uri, .-httpd_unregister_uri
	.section	.text.httpd_unregister_all_uri_handlers,"ax",@progbits
	.align	4
	.global	httpd_unregister_all_uri_handlers
	.type	httpd_unregister_all_uri_handlers, @function
httpd_unregister_all_uri_handlers:
.LFB60:
	.loc 1 262 0
.LVL97:
	entry	sp, 32
.LCFI5:
.LVL98:
.LBB15:
	.loc 1 263 0
	movi.n	a3, 0
	.loc 1 271 0
	mov.n	a5, a3
	.loc 1 263 0
	j	.L84
.LVL99:
.L86:
	.loc 1 264 0
	l32i	a8, a2, 80
	slli	a4, a3, 2
	add.n	a8, a8, a4
	l32i.n	a8, a8, 0
	beqz.n	a8, .L83
	.loc 1 269 0 discriminator 2
	l32i.n	a10, a8, 0
	.loc 1 263 0 discriminator 2
	addi.n	a3, a3, 1
.LVL100:
	.loc 1 269 0 discriminator 2
	call8	free
.LVL101:
	.loc 1 270 0 discriminator 2
	l32i	a8, a2, 80
	add.n	a8, a8, a4
	l32i.n	a10, a8, 0
	call8	free
.LVL102:
	.loc 1 271 0 discriminator 2
	l32i	a8, a2, 80
	add.n	a4, a8, a4
	s32i.n	a5, a4, 0
.LVL103:
.L84:
	.loc 1 263 0 discriminator 1
	l16ui	a4, a2, 14
	bltu	a3, a4, .L86
.L83:
	retw.n
.LBE15:
.LFE60:
	.size	httpd_unregister_all_uri_handlers, .-httpd_unregister_all_uri_handlers
	.section	.rodata.str1.1
.LC21:
	.string	"\033[0;33mW (%d) %s: %s: URI '%s' not found\033[0m\n"
.LC23:
	.string	"\033[0;33mW (%d) %s: %s: Method '%d' not allowed for URI '%s'\033[0m\n"
.LC25:
	.string	"\033[0;33mW (%d) %s: %s: uri handler execution failed\033[0m\n"
	.section	.text.httpd_uri,"ax",@progbits
	.literal_position
	.literal .LC19, __func__$7012
	.literal .LC20, .LC4
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.align	4
	.global	httpd_uri
	.type	httpd_uri, @function
httpd_uri:
.LFB61:
	.loc 1 276 0
.LVL104:
	entry	sp, 64
.LCFI6:
.LVL105:
	.loc 1 282 0
	movi.n	a3, 0
	s32i.n	a3, sp, 16
	.loc 1 287 0
	addmi	a3, a2, 0x400
	l16ui	a8, a3, 156
	.loc 1 278 0
	addi	a4, a2, 84
.LVL106:
	.loc 1 287 0
	bbsi	a8, 3, .L91
.LVL107:
.L95:
	.loc 1 294 0
	l32i.n	a3, sp, 16
	beqi	a3, 4, .L93
	beqi	a3, 5, .L94
	j	.L104
.LVL108:
.L91:
	.loc 1 288 0
	l16ui	a8, a3, 172
	addi	a11, a2, 92
	l32i	a13, a2, 88
	l16ui	a12, a3, 174
	addi	a14, sp, 16
	add.n	a11, a11, a8
	mov.n	a10, a2
	call8	httpd_find_uri_handler
.LVL109:
	.loc 1 293 0
	bnez.n	a10, .L105
	j	.L95
.LVL110:
.L93:
	.loc 1 296 0 discriminator 4
	call8	esp_log_timestamp
.LVL111:
	l32r	a11, .LC20
	addi	a2, a2, 92
.LVL112:
	l32r	a15, .LC19
	l32r	a12, .LC22
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL113:
	j	.L106
.LVL114:
.L94:
	.loc 1 299 0 discriminator 4
	call8	esp_log_timestamp
.LVL115:
	addi	a8, a2, 92
	s32i.n	a8, sp, 4
	l32r	a11, .LC20
	l32i	a2, a2, 88
.LVL116:
	l32r	a15, .LC19
	l32r	a12, .LC24
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL117:
.L106:
	.loc 1 301 0 discriminator 4
	mov.n	a11, a3
	mov.n	a10, a4
	call8	httpd_req_handle_err
.LVL118:
	j	.L92
.LVL119:
.L105:
	.loc 1 308 0
	l32i.n	a3, a10, 12
	s32i	a3, a2, 616
	.loc 1 311 0
	l32i.n	a2, a10, 8
.LVL120:
	mov.n	a10, a4
.LVL121:
	callx8	a2
.LVL122:
	beqz.n	a10, .L92
	.loc 1 313 0 discriminator 4
	call8	esp_log_timestamp
.LVL123:
	l32r	a11, .LC20
	l32r	a15, .LC19
	l32r	a12, .LC26
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL124:
.L104:
	.loc 1 303 0
	movi.n	a10, -1
.L92:
	.loc 1 317 0
	mov.n	a2, a10
	retw.n
.LFE61:
	.size	httpd_uri, .-httpd_uri
	.section	.rodata.__func__$7012,"a",@progbits
	.type	__func__$7012, @object
	.size	__func__$7012, 10
__func__$7012:
	.string	"httpd_uri"
	.section	.rodata.__func__$6990,"a",@progbits
	.type	__func__$6990, @object
	.size	__func__$6990, 21
__func__$6990:
	.string	"httpd_unregister_uri"
	.section	.rodata.__func__$6975,"a",@progbits
	.type	__func__$6975, @object
	.size	__func__$6975, 29
__func__$6975:
	.string	"httpd_unregister_uri_handler"
	.section	.rodata.__func__$6962,"a",@progbits
	.type	__func__$6962, @object
	.size	__func__$6962, 27
__func__$6962:
	.string	"httpd_register_uri_handler"
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
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI0-.LFB56
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI1-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI2-.LFB57
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI3-.LFB58
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI4-.LFB59
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI5-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI6-.LFB61
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/port/include/http_parser.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/include/esp_http_server.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/src/port/esp32/osal.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/src/esp_httpd_priv.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0xc
	.4byte	.LASF195
	.4byte	.LASF196
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x39
	.4byte	0x77
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0xea
	.uleb128 0x9
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x11b
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x18
	.4byte	0xc3
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x88
	.4byte	0x1fd
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.2byte	0x10e
	.4byte	0x23f
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.2byte	0x125
	.4byte	0x263
	.uleb128 0xf
	.string	"off"
	.byte	0x6
	.2byte	0x126
	.4byte	0xb8
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.2byte	0x127
	.4byte	0xb8
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x20
	.byte	0x6
	.2byte	0x121
	.4byte	0x298
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x122
	.4byte	0xb8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x123
	.4byte	0xb8
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x128
	.4byte	0x298
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x23f
	.4byte	0x2a8
	.uleb128 0x13
	.4byte	0x90
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF71
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x7
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x7
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x50
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x56
	.4byte	0x126
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x5c
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x8
	.byte	0x6a
	.4byte	0x2eb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f1
	.uleb128 0x14
	.4byte	0x11b
	.4byte	0x305
	.uleb128 0x9
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0x75
	.4byte	0x310
	.uleb128 0x6
	.byte	0x4
	.4byte	0x316
	.uleb128 0x8
	.4byte	0x326
	.uleb128 0x9
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x8
	.byte	0x82
	.4byte	0x331
	.uleb128 0x6
	.byte	0x4
	.4byte	0x337
	.uleb128 0x14
	.4byte	0x2a8
	.4byte	0x350
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x38
	.byte	0x8
	.byte	0x8d
	.4byte	0x435
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8e
	.4byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x8
	.byte	0x8f
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x8
	.byte	0x94
	.4byte	0xb8
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x8
	.byte	0x9a
	.4byte	0xb8
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x8
	.byte	0x9c
	.4byte	0xb8
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x8
	.byte	0x9d
	.4byte	0xb8
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x8
	.byte	0x9e
	.4byte	0xb8
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x8
	.byte	0x9f
	.4byte	0xb8
	.byte	0x12
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa0
	.4byte	0x2a8
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x8
	.byte	0xa1
	.4byte	0xb8
	.byte	0x16
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x8
	.byte	0xa2
	.4byte	0xb8
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x8
	.byte	0xae
	.4byte	0x97
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x8
	.byte	0xb3
	.4byte	0x2d5
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x8
	.byte	0xbb
	.4byte	0x97
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x8
	.byte	0xc0
	.4byte	0x2d5
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x8
	.byte	0xcf
	.4byte	0x2e0
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x8
	.byte	0xdd
	.4byte	0x305
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x8
	.byte	0xef
	.4byte	0x326
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x8
	.byte	0xf0
	.4byte	0x350
	.uleb128 0x17
	.4byte	.LASF100
	.2byte	0x224
	.byte	0x8
	.2byte	0x14a
	.4byte	0x4ca
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x14b
	.4byte	0x2bf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x14c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"uri"
	.byte	0x8
	.2byte	0x14d
	.4byte	0x4db
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x14e
	.4byte	0x2c
	.2byte	0x20c
	.uleb128 0x19
	.string	"aux"
	.byte	0x8
	.2byte	0x14f
	.4byte	0x97
	.2byte	0x210
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x154
	.4byte	0x97
	.2byte	0x214
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x165
	.4byte	0x97
	.2byte	0x218
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x170
	.4byte	0x2d5
	.2byte	0x21c
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x17c
	.4byte	0x2a8
	.2byte	0x220
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x4db
	.uleb128 0x1a
	.4byte	0x90
	.2byte	0x200
	.byte	0
	.uleb128 0x7
	.4byte	0x4ca
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x17d
	.4byte	0x440
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x10
	.byte	0x8
	.2byte	0x182
	.4byte	0x52e
	.uleb128 0xf
	.string	"uri"
	.byte	0x8
	.2byte	0x183
	.4byte	0xad
	.byte	0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x184
	.4byte	0x2ca
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x18a
	.4byte	0x543
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x18f
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	0x11b
	.4byte	0x53d
	.uleb128 0x9
	.4byte	0x53d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52e
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x190
	.4byte	0x4ec
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.2byte	0x1f4
	.4byte	0x5a5
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xa
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x225
	.4byte	0x555
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x243
	.4byte	0x5bd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x14
	.4byte	0x11b
	.4byte	0x5d7
	.uleb128 0x9
	.4byte	0x53d
	.uleb128 0x9
	.4byte	0x5a5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x27b
	.4byte	0x5e3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e9
	.uleb128 0x14
	.4byte	0x25
	.4byte	0x60c
	.uleb128 0x9
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0x2c
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x291
	.4byte	0x618
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61e
	.uleb128 0x14
	.4byte	0x25
	.4byte	0x641
	.uleb128 0x9
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0xa0
	.uleb128 0x9
	.4byte	0x2c
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x2a3
	.4byte	0x64d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x653
	.uleb128 0x14
	.4byte	0x25
	.4byte	0x667
	.uleb128 0x9
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xa
	.byte	0x1f
	.4byte	0x2af
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x31
	.4byte	0x697
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x8
	.byte	0xb
	.byte	0x2f
	.4byte	0x6bc
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0xb
	.byte	0x30
	.4byte	0x667
	.byte	0
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0xb
	.byte	0x36
	.4byte	0x672
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xb8
	.byte	0xb
	.byte	0x3c
	.4byte	0x764
	.uleb128 0x1d
	.string	"fd"
	.byte	0xb
	.byte	0x3d
	.4byte	0x25
	.byte	0
	.uleb128 0x1d
	.string	"ctx"
	.byte	0xb
	.byte	0x3e
	.4byte	0x97
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0xb
	.byte	0x3f
	.4byte	0x2a8
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0xb
	.byte	0x40
	.4byte	0x97
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0xb
	.byte	0x41
	.4byte	0x2bf
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0xb
	.byte	0x42
	.4byte	0x2d5
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0xb
	.byte	0x43
	.4byte	0x2d5
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF138
	.byte	0xb
	.byte	0x44
	.4byte	0x5d7
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF139
	.byte	0xb
	.byte	0x45
	.4byte	0x60c
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0xb
	.byte	0x46
	.4byte	0x641
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF141
	.byte	0xb
	.byte	0x47
	.4byte	0xce
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0xb
	.byte	0x48
	.4byte	0x764
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF143
	.byte	0xb
	.byte	0x49
	.4byte	0x2c
	.byte	0xb0
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x774
	.uleb128 0x13
	.4byte	0x90
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x8
	.byte	0xb
	.byte	0x59
	.4byte	0x799
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0xb
	.byte	0x5a
	.4byte	0xad
	.byte	0
	.uleb128 0x16
	.4byte	.LASF146
	.byte	0xb
	.byte	0x5b
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF147
	.2byte	0x244
	.byte	0xb
	.byte	0x50
	.4byte	0x826
	.uleb128 0x1d
	.string	"sd"
	.byte	0xb
	.byte	0x51
	.4byte	0x826
	.byte	0
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0xb
	.byte	0x52
	.4byte	0x4ca
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0xb
	.byte	0x53
	.4byte	0x2c
	.2byte	0x208
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0xb
	.byte	0x54
	.4byte	0xa0
	.2byte	0x20c
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0xb
	.byte	0x55
	.4byte	0xa0
	.2byte	0x210
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0xb
	.byte	0x56
	.4byte	0x2a8
	.2byte	0x214
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0xb
	.byte	0x57
	.4byte	0x37
	.2byte	0x218
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0xb
	.byte	0x58
	.4byte	0x37
	.2byte	0x21c
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0xb
	.byte	0x5c
	.4byte	0x82c
	.2byte	0x220
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0xb
	.byte	0x5d
	.4byte	0x263
	.2byte	0x224
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6bc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x774
	.uleb128 0x1e
	.4byte	.LASF156
	.2byte	0x4c0
	.byte	0xb
	.byte	0x64
	.4byte	0x8ba
	.uleb128 0x16
	.4byte	.LASF157
	.byte	0xb
	.byte	0x65
	.4byte	0x435
	.byte	0
	.uleb128 0x16
	.4byte	.LASF158
	.byte	0xb
	.byte	0x66
	.4byte	0x25
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF159
	.byte	0xb
	.byte	0x67
	.4byte	0x25
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF160
	.byte	0xb
	.byte	0x68
	.4byte	0x25
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF161
	.byte	0xb
	.byte	0x69
	.4byte	0x697
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF162
	.byte	0xb
	.byte	0x6a
	.4byte	0x826
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0xb
	.byte	0x6b
	.4byte	0x8ba
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF164
	.byte	0xb
	.byte	0x6c
	.4byte	0x440
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0xb
	.byte	0x6d
	.4byte	0x799
	.2byte	0x278
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0xb
	.byte	0x70
	.4byte	0x8c6
	.2byte	0x4bc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x549
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b1
	.uleb128 0x20
	.4byte	.LASF197
	.byte	0x1
	.byte	0x1a
	.4byte	0x2a8
	.byte	0x1
	.4byte	0x8fe
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x1
	.byte	0x1a
	.4byte	0xad
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x1
	.byte	0x1a
	.4byte	0xad
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.byte	0x1a
	.4byte	0x2c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF198
	.byte	0x1
	.byte	0x5d
	.4byte	0x8c0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9df
	.uleb128 0x23
	.string	"hd"
	.byte	0x1
	.byte	0x5d
	.4byte	0x9df
	.4byte	.LLST0
	.uleb128 0x23
	.string	"uri"
	.byte	0x1
	.byte	0x5e
	.4byte	0xad
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.byte	0x5f
	.4byte	0x2ca
	.4byte	.LLST2
	.uleb128 0x23
	.string	"err"
	.byte	0x1
	.byte	0x60
	.4byte	0x9e5
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF182
	.4byte	0x9fb
	.uleb128 0x27
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x66
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x8cc
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6e
	.4byte	0x9c7
	.uleb128 0x2a
	.4byte	0x8f2
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	0x8e7
	.uleb128 0x2a
	.4byte	0x8dc
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	.LVL6
	.4byte	0x1095
	.uleb128 0x2d
	.4byte	.LVL8
	.4byte	0x10a0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x832
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a5
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x9fb
	.uleb128 0x13
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x9eb
	.uleb128 0x30
	.4byte	.LASF178
	.byte	0x1
	.byte	0x20
	.4byte	0x2a8
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaef
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x1
	.byte	0x20
	.4byte	0xad
	.4byte	.LLST6
	.uleb128 0x31
	.string	"uri"
	.byte	0x1
	.byte	0x20
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0x20
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x32
	.4byte	.LASF172
	.byte	0x1
	.byte	0x22
	.4byte	0xaef
	.4byte	.LLST8
	.uleb128 0x32
	.4byte	.LASF173
	.byte	0x1
	.byte	0x23
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x32
	.4byte	.LASF174
	.byte	0x1
	.byte	0x26
	.4byte	0xb3
	.4byte	.LLST10
	.uleb128 0x32
	.4byte	.LASF175
	.byte	0x1
	.byte	0x27
	.4byte	0xb3
	.4byte	.LLST11
	.uleb128 0x32
	.4byte	.LASF176
	.byte	0x1
	.byte	0x28
	.4byte	0xaf4
	.4byte	.LLST12
	.uleb128 0x32
	.4byte	.LASF177
	.byte	0x1
	.byte	0x29
	.4byte	0xaf4
	.4byte	.LLST13
	.uleb128 0x33
	.4byte	.LVL15
	.4byte	0x1095
	.4byte	0xab2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL27
	.4byte	0x10a0
	.4byte	0xad2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL31
	.4byte	0x10a0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x2a8
	.uleb128 0x30
	.4byte	.LASF179
	.byte	0x1
	.byte	0x86
	.4byte	0x11b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc41
	.uleb128 0x25
	.4byte	.LASF101
	.byte	0x1
	.byte	0x86
	.4byte	0x2bf
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF180
	.byte	0x1
	.byte	0x87
	.4byte	0xc41
	.4byte	.LLST15
	.uleb128 0x34
	.string	"hd"
	.byte	0x1
	.byte	0x8d
	.4byte	0x9df
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.LASF182
	.4byte	0xc5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6962
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xb89
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	.LVL47
	.4byte	0x10ab
	.4byte	0xb76
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL49
	.4byte	0x10b6
	.uleb128 0x2c
	.4byte	.LVL50
	.4byte	0x10c1
	.byte	0
	.uleb128 0x33
	.4byte	.LVL40
	.4byte	0x1095
	.4byte	0xb9d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0x8fe
	.4byte	0xbbd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL42
	.4byte	0x10cc
	.uleb128 0x33
	.4byte	.LVL44
	.4byte	0x10d7
	.4byte	0xc04
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6962
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL54
	.4byte	0x10cc
	.uleb128 0x2d
	.4byte	.LVL55
	.4byte	0x10d7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6962
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc47
	.uleb128 0x7
	.4byte	0x549
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0xc5c
	.uleb128 0x13
	.4byte	0x90
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0xc4c
	.uleb128 0x30
	.4byte	.LASF181
	.byte	0x1
	.byte	0xb8
	.4byte	0x11b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4c
	.uleb128 0x25
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb8
	.4byte	0x2bf
	.4byte	.LLST18
	.uleb128 0x23
	.string	"uri"
	.byte	0x1
	.byte	0xb9
	.4byte	0xad
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.byte	0xb9
	.4byte	0x2ca
	.4byte	.LLST20
	.uleb128 0x37
	.string	"hd"
	.byte	0x1
	.byte	0xbf
	.4byte	0x9df
	.uleb128 0x35
	.4byte	.LASF182
	.4byte	0xd5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6975
	.uleb128 0x38
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xd01
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x33
	.4byte	.LVL62
	.4byte	0x10e2
	.4byte	0xcee
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL63
	.4byte	0x10c1
	.uleb128 0x2c
	.4byte	.LVL65
	.4byte	0x10c1
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL76
	.4byte	0x10cc
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0x10d7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6975
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0xd5c
	.uleb128 0x13
	.4byte	0x90
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0xd4c
	.uleb128 0x30
	.4byte	.LASF183
	.byte	0x1
	.byte	0xdd
	.4byte	0x11b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0x25
	.4byte	.LASF101
	.byte	0x1
	.byte	0xdd
	.4byte	0x2bf
	.4byte	.LLST22
	.uleb128 0x31
	.string	"uri"
	.byte	0x1
	.byte	0xdd
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.string	"hd"
	.byte	0x1
	.byte	0xe3
	.4byte	0x9df
	.uleb128 0x32
	.4byte	.LASF184
	.byte	0x1
	.byte	0xe4
	.4byte	0x2a8
	.4byte	.LLST23
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.byte	0xe6
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x35
	.4byte	.LASF182
	.4byte	0xe69
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6990
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xdef
	.uleb128 0x34
	.string	"k"
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.4byte	.LLST26
	.byte	0
	.uleb128 0x33
	.4byte	.LVL83
	.4byte	0x10e2
	.4byte	0xe03
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL84
	.4byte	0x10c1
	.uleb128 0x2c
	.4byte	.LVL86
	.4byte	0x10c1
	.uleb128 0x2c
	.4byte	.LVL93
	.4byte	0x10cc
	.uleb128 0x2d
	.4byte	.LVL94
	.4byte	0x10d7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6990
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0xe69
	.uleb128 0x13
	.4byte	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xe59
	.uleb128 0x39
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec5
	.uleb128 0x3a
	.string	"hd"
	.byte	0x1
	.2byte	0x105
	.4byte	0x9df
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LASF182
	.4byte	0xed5
	.uleb128 0x27
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x3b
	.string	"i"
	.byte	0x1
	.2byte	0x107
	.4byte	0x37
	.4byte	.LLST27
	.uleb128 0x2c
	.4byte	.LVL101
	.4byte	0x10c1
	.uleb128 0x2c
	.4byte	.LVL102
	.4byte	0x10c1
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0xed5
	.uleb128 0x13
	.4byte	0x90
	.byte	0x21
	.byte	0
	.uleb128 0x7
	.4byte	0xec5
	.uleb128 0x3c
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x113
	.4byte	0x11b
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1068
	.uleb128 0x3d
	.string	"hd"
	.byte	0x1
	.2byte	0x113
	.4byte	0x9df
	.4byte	.LLST28
	.uleb128 0x3b
	.string	"uri"
	.byte	0x1
	.2byte	0x115
	.4byte	0x8c0
	.4byte	.LLST29
	.uleb128 0x3e
	.string	"req"
	.byte	0x1
	.2byte	0x116
	.4byte	0x53d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3b
	.string	"res"
	.byte	0x1
	.2byte	0x117
	.4byte	0x1068
	.4byte	.LLST30
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.4byte	.LASF182
	.4byte	0x107e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7012
	.uleb128 0x33
	.4byte	.LVL109
	.4byte	0x8fe
	.4byte	0xf69
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0x10cc
	.uleb128 0x33
	.4byte	.LVL113
	.4byte	0x10d7
	.4byte	0xfb0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7012
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL115
	.4byte	0x10cc
	.uleb128 0x33
	.4byte	.LVL117
	.4byte	0x10d7
	.4byte	0xffe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7012
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL118
	.4byte	0x10ed
	.4byte	0x1018
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.4byte	.LVL122
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x102b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL123
	.4byte	0x10cc
	.uleb128 0x2d
	.4byte	.LVL124
	.4byte	0x10d7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7012
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x263
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x107e
	.uleb128 0x13
	.4byte	0x90
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x106e
	.uleb128 0x28
	.string	"TAG"
	.byte	0x1
	.byte	0x18
	.4byte	0x2ba
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x40
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xc
	.byte	0x21
	.uleb128 0x40
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xc
	.byte	0x23
	.uleb128 0x40
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xd
	.byte	0x65
	.uleb128 0x40
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xc
	.byte	0x50
	.uleb128 0x40
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xd
	.byte	0x5a
	.uleb128 0x40
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x9
	.byte	0x57
	.uleb128 0x40
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x9
	.byte	0x6b
	.uleb128 0x40
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xc
	.byte	0x1c
	.uleb128 0x41
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xb
	.2byte	0x171
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE56
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LFE56
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL3
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x75
	.sleb128 -1
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x75
	.sleb128 1
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x7
	.byte	0x78
	.sleb128 -1073741823
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL80
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL104
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0x72
	.sleb128 -92
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x4
	.byte	0x78
	.sleb128 -92
	.byte	0x9f
	.4byte	.LVL117-1
	.4byte	.LVL119
	.2byte	0x4
	.byte	0x74
	.sleb128 -84
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE61
	.2byte	0x4
	.byte	0x74
	.sleb128 -84
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL106
	.4byte	.LVL112
	.2byte	0x4
	.byte	0x72
	.sleb128 1180
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0x72
	.sleb128 1088
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x4
	.byte	0x72
	.sleb128 1180
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x4
	.byte	0x78
	.sleb128 1088
	.byte	0x9f
	.4byte	.LVL117-1
	.4byte	.LVL119
	.2byte	0x4
	.byte	0x74
	.sleb128 1096
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x4
	.byte	0x72
	.sleb128 1180
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LFE61
	.2byte	0x4
	.byte	0x74
	.sleb128 1096
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF175:
	.string	"prevlast"
.LASF54:
	.string	"HTTP_PURGE"
.LASF171:
	.string	"template"
.LASF187:
	.string	"malloc"
.LASF146:
	.string	"value"
.LASF40:
	.string	"HTTP_UNLOCK"
.LASF192:
	.string	"strcmp"
.LASF83:
	.string	"server_port"
.LASF5:
	.string	"size_t"
.LASF144:
	.string	"resp_hdr"
.LASF164:
	.string	"hd_req"
.LASF160:
	.string	"msg_fd"
.LASF30:
	.string	"HTTP_CONNECT"
.LASF151:
	.string	"first_chunk_sent"
.LASF26:
	.string	"HTTP_GET"
.LASF10:
	.string	"long long unsigned int"
.LASF70:
	.string	"field_data"
.LASF191:
	.string	"esp_log_write"
.LASF55:
	.string	"HTTP_MKCALENDAR"
.LASF159:
	.string	"ctrl_fd"
.LASF165:
	.string	"hd_req_aux"
.LASF198:
	.string	"httpd_find_uri_handler"
.LASF189:
	.string	"free"
.LASF133:
	.string	"thread_data"
.LASF51:
	.string	"HTTP_SUBSCRIBE"
.LASF96:
	.string	"open_fn"
.LASF129:
	.string	"THREAD_IDLE"
.LASF152:
	.string	"req_hdrs_count"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF145:
	.string	"field"
.LASF153:
	.string	"resp_hdrs_count"
.LASF94:
	.string	"global_transport_ctx"
.LASF56:
	.string	"HTTP_LINK"
.LASF37:
	.string	"HTTP_PROPFIND"
.LASF85:
	.string	"max_open_sockets"
.LASF195:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/src/httpd_uri.c"
.LASF65:
	.string	"UF_FRAGMENT"
.LASF103:
	.string	"content_len"
.LASF11:
	.string	"long int"
.LASF131:
	.string	"THREAD_STOPPING"
.LASF167:
	.string	"uri1"
.LASF168:
	.string	"uri2"
.LASF90:
	.string	"recv_wait_timeout"
.LASF117:
	.string	"HTTPD_405_METHOD_NOT_ALLOWED"
.LASF72:
	.string	"TaskHandle_t"
.LASF100:
	.string	"httpd_req"
.LASF114:
	.string	"HTTPD_505_VERSION_NOT_SUPPORTED"
.LASF154:
	.string	"resp_hdrs"
.LASF45:
	.string	"HTTP_REPORT"
.LASF140:
	.string	"pending_fn"
.LASF130:
	.string	"THREAD_RUNNING"
.LASF41:
	.string	"HTTP_BIND"
.LASF141:
	.string	"lru_counter"
.LASF125:
	.string	"httpd_send_func_t"
.LASF172:
	.string	"tpl_len"
.LASF89:
	.string	"lru_purge_enable"
.LASF99:
	.string	"httpd_config_t"
.LASF139:
	.string	"recv_fn"
.LASF116:
	.string	"HTTPD_404_NOT_FOUND"
.LASF132:
	.string	"THREAD_STOPPED"
.LASF64:
	.string	"UF_QUERY"
.LASF69:
	.string	"port"
.LASF111:
	.string	"httpd_uri_t"
.LASF42:
	.string	"HTTP_REBIND"
.LASF28:
	.string	"HTTP_POST"
.LASF53:
	.string	"HTTP_PATCH"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"http_parser_url"
.LASF147:
	.string	"httpd_req_aux"
.LASF193:
	.string	"httpd_req_handle_err"
.LASF73:
	.string	"httpd_handle_t"
.LASF88:
	.string	"backlog_conn"
.LASF87:
	.string	"max_resp_headers"
.LASF52:
	.string	"HTTP_UNSUBSCRIBE"
.LASF13:
	.string	"long unsigned int"
.LASF80:
	.string	"httpd_config"
.LASF33:
	.string	"HTTP_COPY"
.LASF124:
	.string	"httpd_err_handler_func_t"
.LASF194:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF47:
	.string	"HTTP_CHECKOUT"
.LASF109:
	.string	"httpd_uri"
.LASF127:
	.string	"httpd_pending_func_t"
.LASF1:
	.string	"short unsigned int"
.LASF166:
	.string	"err_handler_fns"
.LASF178:
	.string	"httpd_uri_match_wildcard"
.LASF112:
	.string	"HTTPD_500_INTERNAL_SERVER_ERROR"
.LASF49:
	.string	"HTTP_MSEARCH"
.LASF32:
	.string	"HTTP_TRACE"
.LASF174:
	.string	"last"
.LASF15:
	.string	"uint16_t"
.LASF58:
	.string	"http_method"
.LASF180:
	.string	"uri_handler"
.LASF170:
	.string	"uri_len"
.LASF7:
	.string	"__int32_t"
.LASF81:
	.string	"task_priority"
.LASF197:
	.string	"httpd_uri_match_simple"
.LASF110:
	.string	"handler"
.LASF185:
	.string	"strlen"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF128:
	.string	"othread_t"
.LASF137:
	.string	"free_transport_ctx"
.LASF12:
	.string	"sizetype"
.LASF199:
	.string	"httpd_unregister_all_uri_handlers"
.LASF17:
	.string	"uint64_t"
.LASF57:
	.string	"HTTP_UNLINK"
.LASF149:
	.string	"remaining_len"
.LASF136:
	.string	"transport_ctx"
.LASF29:
	.string	"HTTP_PUT"
.LASF156:
	.string	"httpd_data"
.LASF38:
	.string	"HTTP_PROPPATCH"
.LASF86:
	.string	"max_uri_handlers"
.LASF74:
	.string	"httpd_method_t"
.LASF98:
	.string	"uri_match_fn"
.LASF9:
	.string	"__uint64_t"
.LASF84:
	.string	"ctrl_port"
.LASF63:
	.string	"UF_PATH"
.LASF27:
	.string	"HTTP_HEAD"
.LASF75:
	.string	"httpd_free_ctx_fn_t"
.LASF143:
	.string	"pending_len"
.LASF102:
	.string	"method"
.LASF31:
	.string	"HTTP_OPTIONS"
.LASF158:
	.string	"listen_fd"
.LASF43:
	.string	"HTTP_UNBIND"
.LASF105:
	.string	"sess_ctx"
.LASF71:
	.string	"_Bool"
.LASF16:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"UF_MAX"
.LASF68:
	.string	"field_set"
.LASF186:
	.string	"strncmp"
.LASF121:
	.string	"HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE"
.LASF4:
	.string	"short int"
.LASF142:
	.string	"pending_data"
.LASF77:
	.string	"httpd_close_func_t"
.LASF122:
	.string	"HTTPD_ERR_CODE_MAX"
.LASF190:
	.string	"esp_log_timestamp"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF59:
	.string	"http_parser_url_fields"
.LASF183:
	.string	"httpd_unregister_uri"
.LASF182:
	.string	"__func__"
.LASF104:
	.string	"user_ctx"
.LASF66:
	.string	"UF_USERINFO"
.LASF138:
	.string	"send_fn"
.LASF113:
	.string	"HTTPD_501_METHOD_NOT_IMPLEMENTED"
.LASF163:
	.string	"hd_calls"
.LASF181:
	.string	"httpd_unregister_uri_handler"
.LASF196:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_http_server"
.LASF14:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF115:
	.string	"HTTPD_400_BAD_REQUEST"
.LASF157:
	.string	"config"
.LASF119:
	.string	"HTTPD_411_LENGTH_REQUIRED"
.LASF6:
	.string	"__uint16_t"
.LASF39:
	.string	"HTTP_SEARCH"
.LASF60:
	.string	"UF_SCHEMA"
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF173:
	.string	"exact_match_chars"
.LASF148:
	.string	"scratch"
.LASF126:
	.string	"httpd_recv_func_t"
.LASF25:
	.string	"HTTP_DELETE"
.LASF118:
	.string	"HTTPD_408_REQ_TIMEOUT"
.LASF50:
	.string	"HTTP_NOTIFY"
.LASF91:
	.string	"send_wait_timeout"
.LASF62:
	.string	"UF_PORT"
.LASF78:
	.string	"httpd_uri_match_func_t"
.LASF93:
	.string	"global_user_ctx_free_fn"
.LASF61:
	.string	"UF_HOST"
.LASF76:
	.string	"httpd_open_func_t"
.LASF135:
	.string	"sock_db"
.LASF184:
	.string	"found"
.LASF46:
	.string	"HTTP_MKACTIVITY"
.LASF92:
	.string	"global_user_ctx"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF36:
	.string	"HTTP_MOVE"
.LASF155:
	.string	"url_parse_res"
.LASF108:
	.string	"httpd_req_t"
.LASF134:
	.string	"status"
.LASF48:
	.string	"HTTP_MERGE"
.LASF24:
	.string	"esp_err_t"
.LASF44:
	.string	"HTTP_ACL"
.LASF97:
	.string	"close_fn"
.LASF188:
	.string	"strdup"
.LASF169:
	.string	"len2"
.LASF161:
	.string	"hd_td"
.LASF177:
	.string	"quest"
.LASF123:
	.string	"httpd_err_code_t"
.LASF34:
	.string	"HTTP_LOCK"
.LASF82:
	.string	"stack_size"
.LASF150:
	.string	"content_type"
.LASF101:
	.string	"handle"
.LASF106:
	.string	"free_ctx"
.LASF95:
	.string	"global_transport_ctx_free_fn"
.LASF179:
	.string	"httpd_register_uri_handler"
.LASF162:
	.string	"hd_sd"
.LASF120:
	.string	"HTTPD_414_URI_TOO_LONG"
.LASF176:
	.string	"asterisk"
.LASF107:
	.string	"ignore_sess_ctx_changes"
.LASF35:
	.string	"HTTP_MKCOL"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
