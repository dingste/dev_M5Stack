	.file	"pdu.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"pdu"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/pdu.c"
	.section	.text.coap_pdu_clear,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6647
	.literal .LC4, .LC3
	.align	4
	.global	coap_pdu_clear
	.type	coap_pdu_clear, @function
coap_pdu_clear:
.LFB54:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/pdu.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 30 0
	bnez.n	a2, .L2
.LVL1:
.LBB4:
.LBB5:
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi.n	a11, 0x1e
	call8	__assert_func
.LVL2:
.L2:
.LBE5:
.LBE4:
	.loc 1 37 0
	movi.n	a8, 0
	.loc 1 38 0
	movi.n	a11, 0
	.loc 1 40 0
	l32i.n	a10, a2, 4
	.loc 1 37 0
	s16i	a8, a2, 8
	.loc 1 40 0
	mov.n	a12, a3
	.loc 1 38 0
	s32i.n	a11, a2, 12
	.loc 1 40 0
	call8	memset
.LVL3:
	.loc 1 42 0
	l32i.n	a10, a2, 4
	.loc 1 41 0
	s32i.n	a3, a2, 0
	.loc 1 42 0
	l16ui	a9, a10, 0
	movi	a8, -0xc1
	and	a9, a9, a8
	movi.n	a8, 0x40
	or	a8, a9, a8
	s16i	a8, a10, 0
	.loc 1 45 0
	movi.n	a3, 4
.LVL4:
	s16i	a3, a2, 10
	retw.n
.LFE54:
	.size	coap_pdu_clear, .-coap_pdu_clear
	.section	.rodata.str1.1
.LC5:
	.string	"size <= COAP_MAX_PDU_SIZE"
	.section	.text.coap_pdu_init,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$6655
	.literal .LC8, .LC3
	.align	4
	.global	coap_pdu_init
	.type	coap_pdu_init, @function
coap_pdu_init:
.LFB55:
	.loc 1 76 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 76 0
	extui	a7, a2, 0, 8
	.loc 1 82 0
	movi	a2, 0x578
.LVL6:
	.loc 1 76 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 16
	.loc 1 82 0
	bgeu	a2, a5, .L4
.LVL7:
.LBB8:
.LBB9:
	l32r	a13, .LC6
	l32r	a12, .LC7
	l32r	a10, .LC8
	movi.n	a11, 0x52
	call8	__assert_func
.LVL8:
.L4:
.LBE9:
.LBE8:
	.loc 1 84 0
	addi	a2, a5, -4
	movi	a6, 0x574
	bgeu	a6, a2, .L5
.L7:
	.loc 1 85 0
	movi.n	a2, 0
	retw.n
.L5:
	.loc 1 89 0
	movi.n	a11, 0x10
	movi.n	a10, 7
	call8	coap_malloc_type
.LVL9:
	mov.n	a6, a10
.LVL10:
	.loc 1 90 0
	beqz.n	a10, .L7
	.loc 1 91 0
	mov.n	a11, a5
	movi.n	a10, 8
	call8	coap_malloc_type
.LVL11:
	s32i.n	a10, a6, 4
	mov.n	a2, a10
	.loc 1 92 0
	bnez.n	a10, .L8
	.loc 1 93 0
	mov.n	a11, a6
	movi.n	a10, 7
	call8	coap_free_type
.LVL12:
	retw.n
.LVL13:
.L8:
	.loc 1 110 0
	mov.n	a11, a5
	mov.n	a10, a6
	call8	coap_pdu_clear
.LVL14:
	.loc 1 111 0
	l32i.n	a5, a6, 4
.LVL15:
	.loc 1 112 0
	extui	a7, a7, 0, 2
.LVL16:
	.loc 1 111 0
	s16i	a4, a5, 2
	.loc 1 112 0
	l16ui	a4, a5, 0
.LVL17:
	slli	a2, a7, 4
	movi	a7, -0x31
	and	a7, a4, a7
	or	a7, a7, a2
	s16i	a7, a5, 0
	.loc 1 113 0
	l32i.n	a2, a6, 4
	s8i	a3, a2, 1
	mov.n	a2, a6
	.loc 1 116 0
	retw.n
.LFE55:
	.size	coap_pdu_init, .-coap_pdu_init
	.section	.rodata.str1.1
.LC10:
	.string	"coap_new_pdu: cannot allocate memory for new PDU\n"
	.section	.text.coap_new_pdu,"ax",@progbits
	.literal_position
	.literal .LC9, 65535
	.literal .LC11, .LC10
	.align	4
	.global	coap_new_pdu
	.type	coap_new_pdu, @function
coap_new_pdu:
.LFB56:
	.loc 1 119 0
	entry	sp, 32
.LCFI2:
	.loc 1 123 0
	l32r	a10, .LC9
	call8	lwip_htons
.LVL18:
	movi.n	a11, 0
	mov.n	a12, a10
	movi	a13, 0x578
	mov.n	a10, a11
	call8	coap_pdu_init
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 129 0
	bnez.n	a10, .L14
	.loc 1 130 0
	l32r	a11, .LC11
	movi.n	a10, 2
	call8	coap_log_impl
.LVL21:
.L14:
	.loc 1 133 0
	retw.n
.LFE56:
	.size	coap_new_pdu, .-coap_new_pdu
	.section	.text.coap_delete_pdu,"ax",@progbits
	.align	4
	.global	coap_delete_pdu
	.type	coap_delete_pdu, @function
coap_delete_pdu:
.LFB57:
	.loc 1 136 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 138 0
	beqz.n	a2, .L15
	.loc 1 139 0
	l32i.n	a11, a2, 4
	beqz.n	a11, .L17
	.loc 1 140 0
	movi.n	a10, 8
	call8	coap_free_type
.LVL23:
.L17:
	.loc 1 142 0
	mov.n	a11, a2
	movi.n	a10, 7
	call8	coap_free_type
.LVL24:
.L15:
	retw.n
.LFE57:
	.size	coap_delete_pdu, .-coap_delete_pdu
	.section	.text.coap_add_token,"ax",@progbits
	.align	4
	.global	coap_add_token
	.type	coap_add_token, @function
coap_add_token:
.LFB58:
	.loc 1 153 0
.LVL25:
	entry	sp, 32
.LCFI4:
.LVL26:
	.loc 1 153 0
	mov.n	a5, a2
	.loc 1 156 0
	movi.n	a8, 1
	movi.n	a2, 0
.LVL27:
	movnez	a8, a2, a5
	extui	a8, a8, 0, 8
	.loc 1 153 0
	mov.n	a12, a3
	mov.n	a11, a4
	.loc 1 156 0
	bne	a8, a2, .L28
	movi.n	a2, 8
	bltu	a2, a3, .L28
	l32i.n	a9, a5, 0
	.loc 1 154 0
	addi.n	a3, a3, 4
.LVL28:
	.loc 1 157 0
	mov.n	a2, a8
	.loc 1 156 0
	bltu	a9, a3, .L25
	.loc 1 159 0
	l32i.n	a9, a5, 4
	movi.n	a8, -0x10
	l16ui	a10, a9, 0
	extui	a2, a12, 0, 4
	and	a8, a10, a8
	or	a2, a8, a2
	s16i	a2, a9, 0
	.loc 1 160 0
	beqz.n	a12, .L27
	.loc 1 161 0
	l32i.n	a10, a5, 4
	addi.n	a10, a10, 4
	call8	memcpy
.LVL29:
.L27:
	.loc 1 162 0
	movi.n	a2, 0
	s16i	a2, a5, 8
	.loc 1 164 0
	movi.n	a2, 0
	s32i.n	a2, a5, 12
	.loc 1 163 0
	s16i	a3, a5, 10
	.loc 1 166 0
	movi.n	a2, 1
	retw.n
.LVL30:
.L28:
	.loc 1 157 0
	movi.n	a2, 0
.LVL31:
.L25:
	.loc 1 167 0
	retw.n
.LFE58:
	.size	coap_add_token, .-coap_add_token
	.section	.rodata.str1.1
.LC15:
	.string	"coap_add_option: options are not in correct order\n"
.LC17:
	.string	"coap_add_option: cannot add option\n"
	.section	.text.coap_add_option,"ax",@progbits
	.literal_position
	.literal .LC12, .LC0
	.literal .LC13, __func__$6677
	.literal .LC14, .LC3
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	coap_add_option
	.type	coap_add_option, @function
coap_add_option:
.LFB59:
	.loc 1 171 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 171 0
	mov.n	a14, a4
	mov.n	a13, a5
	extui	a3, a3, 0, 16
	.loc 1 175 0
	bnez.n	a2, .L35
	.loc 1 175 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	l32r	a10, .LC14
	movi	a11, 0xaf
	call8	__assert_func
.LVL33:
.L35:
	.loc 1 176 0 is_stmt 1
	movi.n	a4, 0
.LVL34:
	.loc 1 178 0
	l16ui	a12, a2, 8
	.loc 1 176 0
	s32i.n	a4, a2, 12
	.loc 1 179 0
	l32r	a11, .LC16
	.loc 1 178 0
	bltu	a3, a12, .L40
.L36:
	.loc 1 183 0
	l16ui	a8, a2, 10
.LVL35:
	.loc 1 186 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a2, 4
	sub	a12, a3, a12
	extui	a12, a12, 0, 16
	sub	a11, a11, a8
	add.n	a10, a10, a8
.LVL36:
	call8	coap_opt_encode
.LVL37:
	mov.n	a4, a10
.LVL38:
	.loc 1 189 0
	bnez.n	a10, .L38
	.loc 1 190 0
	l32r	a11, .LC18
.LVL39:
.L40:
	movi.n	a10, 4
	call8	coap_log_impl
.LVL40:
	j	.L39
.LVL41:
.L38:
	.loc 1 195 0
	l16ui	a8, a2, 10
	.loc 1 194 0
	s16i	a3, a2, 8
	.loc 1 195 0
	add.n	a8, a10, a8
	s16i	a8, a2, 10
.LVL42:
.L39:
	.loc 1 198 0
	mov.n	a2, a4
.LVL43:
	.loc 1 199 0
	retw.n
.LFE59:
	.size	coap_add_option, .-coap_add_option
	.section	.text.coap_add_option_later,"ax",@progbits
	.literal_position
	.literal .LC19, .LC0
	.literal .LC20, __func__$6685
	.literal .LC21, .LC3
	.literal .LC22, .LC15
	.literal .LC23, .LC17
	.align	4
	.global	coap_add_option_later
	.type	coap_add_option_later, @function
coap_add_option_later:
.LFB60:
	.loc 1 203 0
.LVL44:
	entry	sp, 32
.LCFI6:
	.loc 1 203 0
	extui	a3, a3, 0, 16
	.loc 1 207 0
	bnez.n	a2, .L42
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	l32r	a10, .LC21
	movi	a11, 0xcf
	call8	__assert_func
.LVL45:
.L42:
	.loc 1 208 0 is_stmt 1
	movi.n	a5, 0
	.loc 1 210 0
	l16ui	a12, a2, 8
	.loc 1 208 0
	s32i.n	a5, a2, 12
	.loc 1 211 0
	l32r	a11, .LC22
	.loc 1 210 0
	bltu	a3, a12, .L46
.L43:
	.loc 1 215 0
	l16ui	a8, a2, 10
	l32i.n	a6, a2, 4
	.loc 1 218 0
	l32i.n	a11, a2, 0
	.loc 1 215 0
	add.n	a6, a6, a8
.LVL46:
	.loc 1 218 0
	sub	a12, a3, a12
	mov.n	a13, a5
	mov.n	a14, a4
	extui	a12, a12, 0, 16
	sub	a11, a11, a8
	mov.n	a10, a6
	call8	coap_opt_encode
.LVL47:
	mov.n	a5, a10
.LVL48:
	.loc 1 221 0
	bnez.n	a10, .L45
	.loc 1 222 0
	l32r	a11, .LC23
.LVL49:
.L46:
	movi.n	a10, 4
	call8	coap_log_impl
.LVL50:
	.loc 1 224 0
	mov.n	a2, a5
.LVL51:
	retw.n
.LVL52:
.L45:
	.loc 1 227 0
	l16ui	a8, a2, 10
	.loc 1 230 0
	sub	a5, a10, a4
.LVL53:
	.loc 1 227 0
	add.n	a8, a10, a8
	.loc 1 226 0
	s16i	a3, a2, 8
	.loc 1 227 0
	s16i	a8, a2, 10
	.loc 1 230 0
	add.n	a2, a6, a5
.LVL54:
	.loc 1 231 0
	retw.n
.LFE60:
	.size	coap_add_option_later, .-coap_add_option_later
	.section	.rodata.str1.1
.LC27:
	.string	"pdu->data == NULL"
.LC29:
	.string	"coap_add_data: cannot add: data too large for PDU\n"
	.section	.text.coap_add_data,"ax",@progbits
	.literal_position
	.literal .LC24, .LC0
	.literal .LC25, __func__$6691
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.global	coap_add_data
	.type	coap_add_data, @function
coap_add_data:
.LFB61:
	.loc 1 234 0
.LVL55:
	entry	sp, 32
.LCFI7:
	.loc 1 234 0
	mov.n	a11, a4
	.loc 1 235 0
	bnez.n	a2, .L48
	.loc 1 235 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0xeb
	j	.L55
.L48:
	.loc 1 236 0 is_stmt 1
	l32i.n	a5, a2, 12
	beqz.n	a5, .L49
	.loc 1 236 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0xec
	j	.L55
.L49:
	.loc 1 238 0 is_stmt 1
	beqz.n	a3, .L52
	.loc 1 241 0
	l16ui	a8, a2, 10
	l32i.n	a10, a2, 0
	addi.n	a9, a8, 1
	add.n	a9, a9, a3
	bgeu	a10, a9, .L51
	.loc 1 242 0
	l32r	a11, .LC30
	movi.n	a10, 4
	call8	coap_log_impl
.LVL56:
	.loc 1 243 0
	l32i.n	a3, a2, 12
.LVL57:
	.loc 1 244 0
	mov.n	a2, a5
.LVL58:
	.loc 1 243 0
	beqz.n	a3, .L50
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0xf3
.L55:
	l32r	a10, .LC26
	call8	__assert_func
.LVL59:
.L51:
	.loc 1 247 0 is_stmt 1
	l32i.n	a5, a2, 4
	.loc 1 251 0
	mov.n	a12, a3
	.loc 1 247 0
	add.n	a5, a5, a8
	s32i.n	a5, a2, 12
	.loc 1 248 0
	movi.n	a8, -1
	s8i	a8, a5, 0
	.loc 1 249 0
	l32i.n	a10, a2, 12
	addi.n	a10, a10, 1
	s32i.n	a10, a2, 12
	.loc 1 251 0
	call8	memcpy
.LVL60:
	.loc 1 252 0
	l16ui	a5, a2, 10
	addi.n	a5, a5, 1
	add.n	a3, a5, a3
.LVL61:
	s16i	a3, a2, 10
.L52:
	.loc 1 239 0
	movi.n	a2, 1
.LVL62:
.L50:
	.loc 1 254 0
	retw.n
.LFE61:
	.size	coap_add_data, .-coap_add_data
	.section	.rodata.str1.1
.LC34:
	.string	"len"
.LC36:
	.string	"data"
	.section	.text.coap_get_data,"ax",@progbits
	.literal_position
	.literal .LC31, .LC0
	.literal .LC32, __func__$6697
	.literal .LC33, .LC3
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.align	4
	.global	coap_get_data
	.type	coap_get_data, @function
coap_get_data:
.LFB62:
	.loc 1 257 0
.LVL63:
	entry	sp, 32
.LCFI8:
	.loc 1 258 0
	bnez.n	a2, .L57
	.loc 1 258 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0x102
	j	.L63
.L57:
	.loc 1 259 0 is_stmt 1
	bnez.n	a3, .L58
	.loc 1 259 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC32
	movi	a11, 0x103
.L63:
	l32r	a10, .LC33
	call8	__assert_func
.LVL64:
.L58:
	.loc 1 260 0 is_stmt 1
	bnez.n	a4, .L59
	.loc 1 260 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC32
	movi	a11, 0x104
	j	.L63
.L59:
	.loc 1 262 0 is_stmt 1
	l32i.n	a8, a2, 12
	beqz.n	a8, .L60
	.loc 1 263 0
	l16ui	a9, a2, 10
	l32i.n	a2, a2, 4
.LVL65:
	add.n	a9, a2, a9
	sub	a9, a9, a8
	s32i.n	a9, a3, 0
	j	.L62
.LVL66:
.L60:
	.loc 1 266 0
	s32i.n	a8, a3, 0
.LVL67:
.L62:
	.loc 1 267 0
	s32i.n	a8, a4, 0
	.loc 1 270 0
	l32i.n	a4, a4, 0
.LVL68:
	movi.n	a3, 1
.LVL69:
	movi.n	a2, 0
	movnez	a2, a3, a4
	.loc 1 271 0
	retw.n
.LFE62:
	.size	coap_get_data, .-coap_get_data
	.section	.text.coap_response_phrase,"ax",@progbits
	.literal_position
	.literal .LC40, coap_error
	.align	4
	.global	coap_response_phrase
	.type	coap_response_phrase, @function
coap_response_phrase:
.LFB63:
	.loc 1 309 0
.LVL70:
	entry	sp, 32
.LCFI9:
.LVL71:
	l32r	a9, .LC40
	.loc 1 309 0
	extui	a10, a2, 0, 8
	.loc 1 311 0
	movi.n	a8, 0
	mov.n	a11, a9
	j	.L65
.LVL72:
.L68:
	addi.n	a9, a9, 8
	.loc 1 312 0
	bne	a2, a10, .L66
	.loc 1 313 0
	addx8	a8, a8, a11
.LVL73:
	l32i.n	a2, a8, 4
	retw.n
.LVL74:
.L66:
	.loc 1 311 0 discriminator 2
	addi.n	a8, a8, 1
.LVL75:
.L65:
	.loc 1 311 0 is_stmt 0 discriminator 1
	l8ui	a2, a9, 0
	bnez.n	a2, .L68
	.loc 1 316 0 is_stmt 1
	retw.n
.LFE63:
	.size	coap_response_phrase, .-coap_response_phrase
	.section	.rodata.str1.1
.LC45:
	.string	"insufficient space to store parsed PDU\n"
.LC47:
	.string	"discarded invalid PDU\n"
.LC49:
	.string	"coap_pdu_parse: empty message is not empty\n"
.LC51:
	.string	"coap_pdu_parse: invalid Token\n"
.LC53:
	.string	"optsize <= *length"
.LC56:
	.string	"coap_pdu_parse: drop\n"
.LC58:
	.string	"coap_pdu_parse: message ending in payload start marker\n"
.LC60:
	.string	"set data to %p (pdu ends at %p)\n"
	.section	.text.coap_pdu_parse,"ax",@progbits
	.literal_position
	.literal .LC41, .LC36
	.literal .LC42, __func__$6723
	.literal .LC43, .LC3
	.literal .LC44, .LC0
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.literal .LC55, __func__$6716
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.align	4
	.global	coap_pdu_parse
	.type	coap_pdu_parse, @function
coap_pdu_parse:
.LFB65:
	.loc 1 344 0
.LVL76:
	entry	sp, 48
.LCFI10:
	.loc 1 347 0
	bnez.n	a2, .L70
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC41
	l32r	a12, .LC42
	movi	a11, 0x15b
	j	.L99
.L70:
	.loc 1 348 0 is_stmt 1
	bnez.n	a4, .L71
	.loc 1 348 0 is_stmt 0 discriminator 1
	l32r	a13, .LC44
	l32r	a12, .LC42
	movi	a11, 0x15c
	j	.L99
.L71:
	.loc 1 350 0 is_stmt 1
	l32i.n	a5, a4, 0
	.loc 1 351 0
	l32r	a11, .LC46
	.loc 1 350 0
	bltu	a5, a3, .L98
.L72:
	.loc 1 355 0
	bgeui	a3, 4, .L74
	.loc 1 356 0
	l32r	a11, .LC48
	movi.n	a10, 7
	call8	coap_log_impl
.LVL77:
.L74:
	.loc 1 367 0
	l32i.n	a9, a4, 4
	l8ui	a5, a2, 0
	l16ui	a6, a9, 0
	srli	a5, a5, 6
	slli	a8, a5, 6
	movi	a5, -0xc1
	and	a5, a6, a5
	or	a5, a5, a8
	s16i	a5, a9, 0
	.loc 1 368 0
	l32i.n	a9, a4, 4
	l8ui	a5, a2, 0
	l16ui	a6, a9, 0
	extui	a5, a5, 4, 2
	slli	a8, a5, 4
	movi	a5, -0x31
	and	a5, a6, a5
	or	a5, a5, a8
	s16i	a5, a9, 0
	.loc 1 369 0
	l32i.n	a9, a4, 4
	l8ui	a5, a2, 0
	l16ui	a6, a9, 0
	extui	a8, a5, 0, 4
	movi.n	a5, -0x10
	and	a5, a6, a5
	or	a5, a5, a8
	s16i	a5, a9, 0
	.loc 1 370 0
	l8ui	a6, a2, 1
	l32i.n	a5, a4, 4
	s8i	a6, a5, 1
	.loc 1 372 0
	movi.n	a5, 0
	s32i.n	a5, a4, 12
	.loc 1 375 0
	l32i.n	a5, a4, 4
	l8ui	a6, a5, 1
	bnez.n	a6, .L75
	.loc 1 376 0
	bnei	a3, 4, .L76
	.loc 1 376 0 is_stmt 0 discriminator 1
	l32i.n	a8, a5, 0
	extui	a8, a8, 0, 4
	beqz.n	a8, .L75
.L76:
	.loc 1 377 0 is_stmt 1
	l32r	a11, .LC50
	j	.L98
.L75:
	.loc 1 382 0
	l32i.n	a8, a5, 0
	extui	a8, a8, 0, 4
	addi.n	a6, a8, 4
	bltu	a3, a6, .L77
	.loc 1 383 0
	movi.n	a6, 8
	bge	a6, a8, .L78
.L77:
	.loc 1 384 0
	l32r	a11, .LC52
	j	.L98
.L78:
	.loc 1 391 0
	l8ui	a8, a2, 2
	l8ui	a6, a2, 3
	s8i	a8, a5, 2
	s8i	a6, a5, 3
	.loc 1 394 0
	beqi	a3, 4, .L79
	.loc 1 395 0
	l32i.n	a10, a4, 4
	addi	a12, a3, -4
	addi.n	a11, a2, 4
	addi.n	a10, a10, 4
	call8	memcpy
.LVL78:
.L79:
	.loc 1 404 0
	l32i.n	a5, a4, 4
	.loc 1 397 0
	s16i	a3, a4, 10
	.loc 1 404 0
	l32i.n	a8, a5, 0
	.loc 1 407 0
	movi	a6, 0xff
	.loc 1 404 0
	extui	a8, a8, 0, 4
	sub	a3, a3, a8
.LVL79:
	.loc 1 405 0
	addi.n	a8, a8, 4
	.loc 1 404 0
	addi	a3, a3, -4
.LVL80:
	.loc 1 405 0
	add.n	a5, a5, a8
.LVL81:
	.loc 1 407 0
	j	.L80
.LVL82:
.L83:
.LBB12:
.LBB13:
	.loc 1 332 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a5
	call8	coap_opt_parse
.LVL83:
	mov.n	a2, a10
.LVL84:
	.loc 1 333 0
	beqz.n	a10, .L88
	.loc 1 334 0
	bgeu	a3, a10, .L82
	l32r	a13, .LC54
	l32r	a12, .LC55
	movi	a11, 0x14e
.LVL85:
.L99:
	l32r	a10, .LC43
	call8	__assert_func
.LVL86:
.L82:
	.loc 1 336 0
	add.n	a5, a5, a10
.LVL87:
	.loc 1 337 0
	sub	a3, a3, a10
.LVL88:
	j	.L80
.LVL89:
.L88:
.LBE13:
.LBE12:
	.loc 1 409 0
	l32r	a11, .LC57
	movi.n	a10, 7
	call8	coap_log_impl
.LVL90:
	.loc 1 410 0
	retw.n
.LVL91:
.L80:
	.loc 1 407 0
	beqz.n	a3, .L87
	.loc 1 407 0 is_stmt 0 discriminator 1
	l8ui	a2, a5, 0
	bne	a2, a6, .L83
	j	.L96
.LVL92:
.L85:
	.loc 1 420 0 is_stmt 1
	l32r	a11, .LC59
.LVL93:
.L98:
	movi.n	a10, 7
	call8	coap_log_impl
.LVL94:
	.loc 1 432 0
	movi.n	a2, 0
	.loc 1 421 0
	retw.n
.LVL95:
.L97:
	.loc 1 424 0
	l16ui	a2, a4, 10
	l32i.n	a13, a4, 4
	.loc 1 417 0
	addi.n	a5, a5, 1
.LVL96:
	.loc 1 424 0
	l32r	a11, .LC61
	add.n	a13, a13, a2
	mov.n	a12, a5
	movi.n	a10, 7
	call8	coap_log_impl
.LVL97:
	.loc 1 426 0
	s32i.n	a5, a4, 12
.LVL98:
.L87:
	.loc 1 429 0
	movi.n	a2, 1
	retw.n
.LVL99:
.L96:
	.loc 1 419 0
	bnei	a3, 1, .L97
	j	.L85
.LFE65:
	.size	coap_pdu_parse, .-coap_pdu_parse
	.section	.rodata.__func__$6716,"a",@progbits
	.type	__func__$6716, @object
	.size	__func__$6716, 17
__func__$6716:
	.string	"next_option_safe"
	.section	.rodata.__func__$6723,"a",@progbits
	.type	__func__$6723, @object
	.size	__func__$6723, 15
__func__$6723:
	.string	"coap_pdu_parse"
	.section	.rodata.__func__$6697,"a",@progbits
	.type	__func__$6697, @object
	.size	__func__$6697, 14
__func__$6697:
	.string	"coap_get_data"
	.section	.rodata.__func__$6691,"a",@progbits
	.type	__func__$6691, @object
	.size	__func__$6691, 14
__func__$6691:
	.string	"coap_add_data"
	.section	.rodata.__func__$6685,"a",@progbits
	.type	__func__$6685, @object
	.size	__func__$6685, 22
__func__$6685:
	.string	"coap_add_option_later"
	.section	.rodata.__func__$6677,"a",@progbits
	.type	__func__$6677, @object
	.size	__func__$6677, 16
__func__$6677:
	.string	"coap_add_option"
	.section	.rodata.__func__$6655,"a",@progbits
	.type	__func__$6655, @object
	.size	__func__$6655, 14
__func__$6655:
	.string	"coap_pdu_init"
	.section	.rodata.__func__$6647,"a",@progbits
	.type	__func__$6647, @object
	.size	__func__$6647, 15
__func__$6647:
	.string	"coap_pdu_clear"
	.global	coap_error
	.section	.rodata.str1.1
.LC62:
	.string	"Created"
.LC63:
	.string	"Deleted"
.LC64:
	.string	"Valid"
.LC65:
	.string	"Changed"
.LC66:
	.string	"Content"
.LC67:
	.string	"Continue"
.LC68:
	.string	"Bad Request"
.LC69:
	.string	"Unauthorized"
.LC70:
	.string	"Bad Option"
.LC71:
	.string	"Forbidden"
.LC72:
	.string	"Not Found"
.LC73:
	.string	"Method Not Allowed"
.LC74:
	.string	"Not Acceptable"
.LC75:
	.string	"Request Entity Incomplete"
.LC76:
	.string	"Precondition Failed"
.LC77:
	.string	"Request Entity Too Large"
.LC78:
	.string	"Unsupported Content-Format"
.LC79:
	.string	"Internal Server Error"
.LC80:
	.string	"Not Implemented"
.LC81:
	.string	"Bad Gateway"
.LC82:
	.string	"Service Unavailable"
.LC83:
	.string	"Gateway Timeout"
.LC84:
	.string	"Proxying Not Supported"
	.section	.data.coap_error,"aw",@progbits
	.align	4
	.type	coap_error, @object
	.size	coap_error, 192
coap_error:
	.byte	65
	.zero	3
	.word	.LC62
	.byte	66
	.zero	3
	.word	.LC63
	.byte	67
	.zero	3
	.word	.LC64
	.byte	68
	.zero	3
	.word	.LC65
	.byte	69
	.zero	3
	.word	.LC66
	.byte	95
	.zero	3
	.word	.LC67
	.byte	-128
	.zero	3
	.word	.LC68
	.byte	-127
	.zero	3
	.word	.LC69
	.byte	-126
	.zero	3
	.word	.LC70
	.byte	-125
	.zero	3
	.word	.LC71
	.byte	-124
	.zero	3
	.word	.LC72
	.byte	-123
	.zero	3
	.word	.LC73
	.byte	-122
	.zero	3
	.word	.LC74
	.byte	-120
	.zero	3
	.word	.LC75
	.byte	-116
	.zero	3
	.word	.LC76
	.byte	-115
	.zero	3
	.word	.LC77
	.byte	-113
	.zero	3
	.word	.LC78
	.byte	-96
	.zero	3
	.word	.LC79
	.byte	-95
	.zero	3
	.word	.LC80
	.byte	-94
	.zero	3
	.word	.LC81
	.byte	-93
	.zero	3
	.word	.LC82
	.byte	-92
	.zero	3
	.word	.LC83
	.byte	-91
	.zero	3
	.word	.LC84
	.byte	0
	.zero	3
	.word	0
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI0-.LFB54
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI2-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI3-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI4-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI5-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI6-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI7-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI8-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI9-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI10-.LFB65
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/pdu.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/option.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/debug.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/include/coap/mem.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb8a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x89
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	0x89
	.4byte	0xa7
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x1a
	.4byte	0xe4
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
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xb9
	.4byte	0x140
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x2
	.byte	0xba
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.byte	0xbb
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.byte	0xbc
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.byte	0xbd
	.4byte	0x30
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"id"
	.byte	0x2
	.byte	0xbf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x2
	.byte	0xc0
	.4byte	0x140
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x14f
	.uleb128 0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc1
	.4byte	0xe4
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0xe3
	.4byte	0x19f
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x2
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"hdr"
	.byte	0x2
	.byte	0xe5
	.4byte	0x19f
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x2
	.byte	0xe9
	.4byte	0x37
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x2
	.byte	0xea
	.4byte	0x37
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x2
	.byte	0xeb
	.4byte	0x7d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x2
	.byte	0xf7
	.4byte	0x15a
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x4
	.byte	0x19
	.4byte	0x4c
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.byte	0x1d
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.byte	0x1e
	.4byte	0x37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.byte	0x20
	.4byte	0x7d
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x4
	.byte	0x21
	.4byte	0x1bb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x1d
	.4byte	0x248
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.2byte	0x112
	.4byte	0x26c
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x113
	.4byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x114
	.4byte	0x83
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x115
	.4byte	0x248
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x2a8
	.uleb128 0x13
	.string	"pdu"
	.byte	0x1
	.byte	0x1d
	.4byte	0x2a8
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF50
	.4byte	0x2be
	.4byte	.LASF51
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x2be
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.4byte	0x2ae
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4b
	.4byte	0x2a8
	.byte	0x1
	.4byte	0x317
	.uleb128 0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.uleb128 0x13
	.string	"id"
	.byte	0x1
	.byte	0x4c
	.4byte	0x37
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4c
	.4byte	0x25
	.uleb128 0x18
	.string	"pdu"
	.byte	0x1
	.byte	0x4d
	.4byte	0x2a8
	.uleb128 0x15
	.4byte	.LASF50
	.4byte	0x317
	.4byte	.LASF52
	.byte	0
	.uleb128 0x16
	.4byte	0x97
	.uleb128 0x19
	.4byte	0x278
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bf
	.uleb128 0x1a
	.4byte	0x284
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	0x28f
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	0x29a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6647
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x3a9
	.uleb128 0x1b
	.4byte	0x284
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	0x28f
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1c
	.4byte	0x29a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6647
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6647
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0xb38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x2c3
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x1b
	.4byte	0x2d3
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	0x2e9
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	0x2f3
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	0x2fe
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	0x309
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6655
	.uleb128 0x1d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x47f
	.uleb128 0x1b
	.4byte	0x2d3
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x2de
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x2e9
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x2f3
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x22
	.4byte	0x2fe
	.uleb128 0x1c
	.4byte	0x309
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6655
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6655
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL9
	.4byte	0xb41
	.4byte	0x497
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0xb41
	.4byte	0x4b0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL12
	.4byte	0xb4c
	.4byte	0x4c9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0x278
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x1
	.byte	0x77
	.4byte	0x2a8
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x553
	.uleb128 0x25
	.string	"pdu"
	.byte	0x1
	.byte	0x78
	.4byte	0x2a8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0xb57
	.4byte	0x51b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0x2c3
	.4byte	0x53a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x578
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0xb62
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF78
	.byte	0x1
	.byte	0x88
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59e
	.uleb128 0x27
	.string	"pdu"
	.byte	0x1
	.byte	0x88
	.4byte	0x2a8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0xb4c
	.4byte	0x588
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL24
	.4byte	0xb4c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF54
	.byte	0x1
	.byte	0x99
	.4byte	0x3e
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x608
	.uleb128 0x28
	.string	"pdu"
	.byte	0x1
	.byte	0x99
	.4byte	0x2a8
	.4byte	.LLST11
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF30
	.byte	0x1
	.byte	0x99
	.4byte	0x608
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9a
	.4byte	0x613
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LVL29
	.4byte	0xb6d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60e
	.uleb128 0x16
	.4byte	0x4c
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF56
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6de
	.uleb128 0x28
	.string	"pdu"
	.byte	0x1
	.byte	0xab
	.4byte	0x2a8
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF21
	.byte	0x1
	.byte	0xab
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xab
	.4byte	0x30
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LASF30
	.byte	0x1
	.byte	0xab
	.4byte	0x608
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x2b
	.string	"opt"
	.byte	0x1
	.byte	0xad
	.4byte	0x1f3
	.4byte	.LLST17
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	0x6ee
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6677
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0xb2d
	.4byte	0x6c5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xaf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6677
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL37
	.4byte	0xb76
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0xb62
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x6ee
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	0x6de
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x1
	.byte	0xcb
	.4byte	0x7d
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c1
	.uleb128 0x28
	.string	"pdu"
	.byte	0x1
	.byte	0xcb
	.4byte	0x2a8
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcb
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0xcb
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xcc
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x2b
	.string	"opt"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1f3
	.4byte	.LLST20
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	0x7d1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6685
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0xb2d
	.4byte	0x791
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6685
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0xb76
	.4byte	0x7b1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL50
	.4byte	0xb62
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x7d1
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x15
	.byte	0
	.uleb128 0x16
	.4byte	0x7c1
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.byte	0xea
	.4byte	0x3e
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86d
	.uleb128 0x28
	.string	"pdu"
	.byte	0x1
	.byte	0xea
	.4byte	0x2a8
	.4byte	.LLST21
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xea
	.4byte	0x30
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF30
	.byte	0x1
	.byte	0xea
	.4byte	0x608
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	0x86d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6691
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0xb62
	.4byte	0x845
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x23
	.4byte	.LVL59
	.4byte	0xb2d
	.4byte	0x85c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL60
	.4byte	0xb6d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x97
	.uleb128 0x2e
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x101
	.4byte	0x3e
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8df
	.uleb128 0x2f
	.string	"pdu"
	.byte	0x1
	.2byte	0x101
	.4byte	0x2a8
	.4byte	.LLST23
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.2byte	0x101
	.4byte	0x8df
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x101
	.4byte	0x8e5
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	0x8eb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6697
	.uleb128 0x1f
	.4byte	.LVL64
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x16
	.4byte	0x97
	.uleb128 0x2e
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x135
	.4byte	0x83
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x929
	.uleb128 0x30
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x135
	.4byte	0x4c
	.4byte	.LLST26
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.2byte	0x136
	.4byte	0x3e
	.4byte	.LLST27
	.byte	0
	.uleb128 0x32
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x145
	.4byte	0x25
	.byte	0x1
	.4byte	0x978
	.uleb128 0x33
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x145
	.4byte	0x978
	.uleb128 0x33
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x145
	.4byte	0x8df
	.uleb128 0x34
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x146
	.4byte	0x1e8
	.uleb128 0x34
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF50
	.4byte	0x98e
	.4byte	.LASF64
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x98e
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.4byte	0x97e
	.uleb128 0x2e
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x158
	.4byte	0x3e
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb06
	.uleb128 0x30
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x158
	.4byte	0x7d
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x158
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x35
	.string	"pdu"
	.byte	0x1
	.2byte	0x158
	.4byte	0x2a8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.string	"opt"
	.byte	0x1
	.2byte	0x159
	.4byte	0x1f3
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LASF50
	.4byte	0xb06
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6723
	.uleb128 0x36
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1af
	.uleb128 0x37
	.4byte	0x929
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x198
	.4byte	0xa82
	.uleb128 0x1b
	.4byte	0x946
	.4byte	.LLST31
	.uleb128 0x1b
	.4byte	0x93a
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1c
	.4byte	0x952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	0x95e
	.4byte	.LLST33
	.uleb128 0x1c
	.4byte	0x96a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6716
	.uleb128 0x23
	.4byte	.LVL83
	.4byte	0xb82
	.4byte	0xa6d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL86
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL77
	.4byte	0xb62
	.4byte	0xa9e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0xb6d
	.4byte	0xab8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 -4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL90
	.4byte	0xb62
	.4byte	0xad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.uleb128 0x23
	.4byte	.LVL94
	.4byte	0xb62
	.4byte	0xae7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL97
	.4byte	0xb62
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x2ae
	.uleb128 0x6
	.4byte	0x26c
	.4byte	0xb1b
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x38
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x119
	.4byte	0xb0b
	.uleb128 0x5
	.byte	0x3
	.4byte	coap_error
	.uleb128 0x39
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF71
	.4byte	.LASF71
	.uleb128 0x39
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x37
	.uleb128 0x39
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x41
	.uleb128 0x39
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.byte	0x55
	.uleb128 0x39
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x5
	.byte	0x37
	.uleb128 0x3a
	.4byte	.LASF72
	.4byte	.LASF72
	.uleb128 0x3b
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x15f
	.uleb128 0x39
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.byte	0x2f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x7c
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37-1
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x7
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99
	.4byte	.LFE65
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2493
	.sleb128 0
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2493
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2523
	.sleb128 0
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2523
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
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
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
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
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"token"
.LASF43:
	.string	"COAP_PDU"
.LASF51:
	.string	"coap_pdu_clear"
.LASF22:
	.string	"version"
.LASF30:
	.string	"data"
.LASF69:
	.string	"lwip_htons"
.LASF36:
	.string	"COAP_STRING"
.LASF61:
	.string	"coap_response_phrase"
.LASF76:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/coap/libcoap/src/pdu.c"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"size_t"
.LASF52:
	.string	"coap_pdu_init"
.LASF8:
	.string	"sizetype"
.LASF44:
	.string	"COAP_PDU_BUF"
.LASF53:
	.string	"coap_new_pdu"
.LASF20:
	.string	"token_length"
.LASF79:
	.string	"discard"
.LASF29:
	.string	"length"
.LASF72:
	.string	"memcpy"
.LASF18:
	.string	"LOG_INFO"
.LASF45:
	.string	"COAP_RESOURCE"
.LASF73:
	.string	"coap_opt_encode"
.LASF34:
	.string	"value"
.LASF33:
	.string	"delta"
.LASF78:
	.string	"coap_delete_pdu"
.LASF80:
	.string	"coap_error"
.LASF63:
	.string	"option"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF71:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF41:
	.string	"COAP_CONTEXT"
.LASF26:
	.string	"coap_hdr_t"
.LASF19:
	.string	"LOG_DEBUG"
.LASF47:
	.string	"phrase"
.LASF15:
	.string	"LOG_ERR"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"__func__"
.LASF56:
	.string	"coap_add_option"
.LASF59:
	.string	"coap_add_data"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF49:
	.string	"size"
.LASF21:
	.string	"type"
.LASF74:
	.string	"coap_opt_parse"
.LASF0:
	.string	"unsigned int"
.LASF77:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/coap"
.LASF68:
	.string	"coap_free_type"
.LASF23:
	.string	"code"
.LASF46:
	.string	"COAP_RESOURCEATTR"
.LASF13:
	.string	"LOG_ALERT"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"LOG_CRIT"
.LASF16:
	.string	"LOG_WARNING"
.LASF48:
	.string	"error_desc_t"
.LASF60:
	.string	"coap_get_data"
.LASF10:
	.string	"char"
.LASF11:
	.string	"_Bool"
.LASF35:
	.string	"coap_option_t"
.LASF17:
	.string	"LOG_NOTICE"
.LASF12:
	.string	"LOG_EMERG"
.LASF40:
	.string	"COAP_NODE"
.LASF55:
	.string	"HEADERLENGTH"
.LASF38:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF70:
	.string	"coap_log_impl"
.LASF9:
	.string	"long unsigned int"
.LASF57:
	.string	"optsize"
.LASF32:
	.string	"coap_opt_t"
.LASF42:
	.string	"COAP_ENDPOINT"
.LASF54:
	.string	"coap_add_token"
.LASF27:
	.string	"max_size"
.LASF58:
	.string	"coap_add_option_later"
.LASF62:
	.string	"optp"
.LASF31:
	.string	"coap_pdu_t"
.LASF28:
	.string	"max_delta"
.LASF66:
	.string	"__assert_func"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"COAP_PACKET"
.LASF67:
	.string	"coap_malloc_type"
.LASF65:
	.string	"coap_pdu_parse"
.LASF64:
	.string	"next_option_safe"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
