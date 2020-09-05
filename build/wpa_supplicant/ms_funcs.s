	.file	"ms_funcs.c"
	.text
.Ltext0:
	.section	.text.challenge_hash,"ax",@progbits
	.align	4
	.type	challenge_hash, @function
challenge_hash:
.LFB35:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/ms_funcs.c"
	.loc 1 84 0
.LVL0:
	entry	sp, 80
.LCFI0:
	.loc 1 89 0
	s32i.n	a2, sp, 32
	.loc 1 96 0
	mov.n	a13, sp
	.loc 1 90 0
	movi.n	a2, 0x10
.LVL1:
	.loc 1 96 0
	addi	a12, sp, 20
	addi	a11, sp, 32
.LVL2:
	movi.n	a10, 3
	.loc 1 90 0
	s32i.n	a2, sp, 20
	.loc 1 92 0
	s32i.n	a2, sp, 24
	.loc 1 91 0
	s32i.n	a3, sp, 36
	.loc 1 93 0
	s32i.n	a4, sp, 40
	.loc 1 94 0
	s32i.n	a5, sp, 28
	.loc 1 96 0
	call8	sha1_vector
.LVL3:
	mov.n	a2, a10
	bnez.n	a10, .L3
	.loc 1 98 0
	movi.n	a12, 8
	mov.n	a11, sp
	mov.n	a10, a6
	call8	memcpy
.LVL4:
	.loc 1 99 0
	retw.n
.L3:
	.loc 1 97 0
	movi.n	a2, -1
	.loc 1 100 0
	retw.n
.LFE35:
	.size	challenge_hash, .-challenge_hash
	.section	.text.utf8_to_ucs2$constprop$0,"ax",@progbits
	.align	4
	.type	utf8_to_ucs2$constprop$0, @function
utf8_to_ucs2$constprop$0:
.LFB50:
	.loc 1 26 0
.LVL5:
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 32 0
	movi.n	a11, 0
	mov.n	a10, a11
.LBB5:
	.loc 1 41 0
	addi.n	a12, a3, -1
.LBB6:
	.loc 1 47 0
	movi.n	a13, -0x20
	movi	a14, 0xc0
.LBE6:
	.loc 1 39 0
	mov.n	a15, a11
	j	.L5
.LVL7:
.L10:
	.loc 1 33 0
	add.n	a6, a2, a10
	l8ui	a8, a6, 0
.LVL8:
	.loc 1 34 0
	movi	a6, 0x1ff
.LVL9:
	bltu	a6, a11, .L13
	.loc 1 38 0
	sext	a6, a8, 7
	bltz	a6, .L7
	.loc 1 39 0
	add.n	a6, a4, a11
	s8i	a15, a6, 1
.LVL10:
	s8i	a8, a6, 0
	.loc 1 40 0
	addi.n	a11, a11, 2
.LVL11:
	j	.L8
.LVL12:
.L7:
	.loc 1 41 0
	beq	a10, a12, .L13
.LBB8:
	.loc 1 46 0
	addi.n	a6, a10, 1
.LVL13:
	add.n	a7, a2, a6
	l8ui	a9, a7, 0
.LVL14:
	.loc 1 47 0
	and	a7, a8, a13
.LVL15:
	bne	a7, a14, .L9
	.loc 1 49 0
	extui	a8, a8, 0, 5
	slli	a8, a8, 6
	extui	a9, a9, 0, 6
	add.n	a7, a4, a11
	srli	a10, a8, 8
.LVL16:
	or	a9, a9, a8
	s8i	a10, a7, 1
.LVL17:
	s8i	a9, a7, 0
	.loc 1 51 0
	addi.n	a11, a11, 2
.LVL18:
	.loc 1 46 0
	mov.n	a10, a6
	j	.L8
.LVL19:
.L9:
	.loc 1 52 0
	beq	a3, a6, .L13
.LBB7:
	.loc 1 58 0
	addi.n	a10, a10, 2
.LVL20:
	add.n	a6, a2, a10
.LVL21:
	l8ui	a6, a6, 0
.LVL22:
	.loc 1 59 0
	extui	a9, a9, 0, 6
	slli	a9, a9, 6
	slli	a8, a8, 12
	extui	a6, a6, 0, 6
	or	a8, a8, a9
	add.n	a7, a4, a11
	extui	a8, a8, 8, 8
	or	a6, a6, a9
	s8i	a8, a7, 1
.LVL23:
	s8i	a6, a7, 0
.L8:
.LBE7:
.LBE8:
.LBE5:
	.loc 1 32 0
	addi.n	a10, a10, 1
.LVL24:
.L5:
	bltu	a10, a3, .L10
	.loc 1 68 0
	mov.n	a2, a5
.LVL25:
	.loc 1 66 0
	beqz.n	a5, .L6
.LVL26:
	.loc 1 67 0
	srli	a11, a11, 1
.LVL27:
	s32i.n	a11, a5, 0
	.loc 1 68 0
	movi.n	a2, 0
.LVL28:
	retw.n
.LVL29:
.L13:
.LBB9:
	.loc 1 36 0
	movi.n	a2, -1
.LVL30:
.L6:
.LBE9:
	.loc 1 69 0
	retw.n
.LFE50:
	.size	utf8_to_ucs2$constprop$0, .-utf8_to_ucs2$constprop$0
	.section	.text.nt_password_hash,"ax",@progbits
	.align	4
	.global	nt_password_hash
	.type	nt_password_hash, @function
nt_password_hash:
.LFB36:
	.loc 1 112 0
.LVL31:
	entry	sp, 560
.LCFI2:
.LVL32:
	.loc 1 117 0
	mov.n	a10, a2
	addmi	a13, sp, 0x200
	mov.n	a12, sp
	mov.n	a11, a3
	call8	utf8_to_ucs2$constprop$0
.LVL33:
	.loc 1 118 0
	movi.n	a2, -1
.LVL34:
	.loc 1 117 0
	bltz	a10, .L16
	.loc 1 120 0
	l32i	a8, sp, 512
	.loc 1 122 0
	movi	a11, 0x204
	.loc 1 120 0
	slli	a8, a8, 1
	.loc 1 122 0
	mov.n	a13, a4
	addmi	a12, sp, 0x200
	add.n	a11, sp, a11
	movi.n	a10, 1
	.loc 1 120 0
	s32i	a8, sp, 512
	.loc 1 121 0
	s32i	sp, sp, 516
	.loc 1 122 0
	call8	md4_vector
.LVL35:
	mov.n	a2, a10
.L16:
	.loc 1 123 0
	retw.n
.LFE36:
	.size	nt_password_hash, .-nt_password_hash
	.section	.text.hash_nt_password_hash,"ax",@progbits
	.align	4
	.global	hash_nt_password_hash
	.type	hash_nt_password_hash, @function
hash_nt_password_hash:
.LFB37:
	.loc 1 133 0
.LVL36:
	entry	sp, 64
.LCFI3:
	.loc 1 134 0
	movi.n	a8, 0x10
	.loc 1 135 0
	mov.n	a13, a3
	mov.n	a12, sp
	add.n	a11, sp, a8
	movi.n	a10, 1
	.loc 1 133 0
	s32i.n	a2, sp, 16
	.loc 1 134 0
	s32i.n	a8, sp, 0
	.loc 1 135 0
	call8	md4_vector
.LVL37:
	.loc 1 136 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LFE37:
	.size	hash_nt_password_hash, .-hash_nt_password_hash
	.section	.text.challenge_response,"ax",@progbits
	.align	4
	.global	challenge_response
	.type	challenge_response, @function
challenge_response:
.LFB38:
	.loc 1 147 0
.LVL39:
	entry	sp, 48
.LCFI4:
	.loc 1 149 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	des_encrypt
.LVL40:
	.loc 1 150 0
	addi.n	a12, a4, 8
	addi.n	a11, a3, 7
	mov.n	a10, a2
	call8	des_encrypt
.LVL41:
	.loc 1 151 0
	l8ui	a8, a3, 14
	.loc 1 152 0
	l8ui	a3, a3, 15
.LVL42:
	.loc 1 153 0
	movi.n	a12, 5
	movi.n	a11, 0
	addi.n	a10, sp, 2
	.loc 1 151 0
	s8i	a8, sp, 0
	.loc 1 152 0
	s8i	a3, sp, 1
	.loc 1 153 0
	call8	memset
.LVL43:
	.loc 1 154 0
	addi	a12, a4, 16
	mov.n	a11, sp
	mov.n	a10, a2
	call8	des_encrypt
.LVL44:
	retw.n
.LFE38:
	.size	challenge_response, .-challenge_response
	.section	.text.generate_nt_response,"ax",@progbits
	.align	4
	.global	generate_nt_response
	.type	generate_nt_response, @function
generate_nt_response:
.LFB39:
	.loc 1 173 0
.LVL45:
	entry	sp, 64
.LCFI5:
	.loc 1 177 0
	addi	a14, sp, 16
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a3
	.loc 1 173 0
	.loc 1 177 0
	call8	challenge_hash
.LVL46:
	beqz.n	a10, .L21
.LVL47:
.L23:
	.loc 1 179 0
	movi.n	a2, -1
	retw.n
.LVL48:
.L21:
	.loc 1 180 0
	mov.n	a12, sp
	mov.n	a11, a7
	mov.n	a10, a6
	call8	nt_password_hash
.LVL49:
	mov.n	a2, a10
.LVL50:
	bnez.n	a10, .L23
	.loc 1 182 0
	l32i	a12, sp, 64
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	challenge_response
.LVL51:
	.loc 1 184 0
	retw.n
.LFE39:
	.size	generate_nt_response, .-generate_nt_response
	.section	.text.generate_nt_response_pwhash,"ax",@progbits
	.align	4
	.global	generate_nt_response_pwhash
	.type	generate_nt_response_pwhash, @function
generate_nt_response_pwhash:
.LFB40:
	.loc 1 202 0
.LVL52:
	entry	sp, 48
.LCFI6:
	.loc 1 205 0
	mov.n	a11, a2
	mov.n	a14, sp
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a10, a3
	call8	challenge_hash
.LVL53:
	.loc 1 202 0
	.loc 1 205 0
	mov.n	a2, a10
.LVL54:
	bnez.n	a10, .L26
	.loc 1 209 0
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, sp
	call8	challenge_response
.LVL55:
	.loc 1 210 0
	retw.n
.L26:
	.loc 1 208 0
	movi.n	a2, -1
	.loc 1 211 0
	retw.n
.LFE40:
	.size	generate_nt_response_pwhash, .-generate_nt_response_pwhash
	.section	.rodata
	.align	4
.LC0:
	.word	16
	.word	24
	.word	39
	.align	4
.LC1:
	.word	20
	.word	8
	.word	41
	.section	.text.generate_authenticator_response_pwhash,"ax",@progbits
	.literal_position
	.literal .LC4, .LC0
	.literal .LC5, .LC1
	.literal .LC6, magic1$4114
	.literal .LC7, magic2$4115
	.align	4
	.global	generate_authenticator_response_pwhash
	.type	generate_authenticator_response_pwhash, @function
generate_authenticator_response_pwhash:
.LFB41:
	.loc 1 231 0
.LVL56:
	entry	sp, 112
.LCFI7:
	.loc 1 248 0
	l32r	a8, .LC4
	.loc 1 253 0
	s32i.n	a7, sp, 56
	.loc 1 248 0
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	l32i.n	a8, a8, 8
	s32i.n	a11, sp, 40
	s32i.n	a8, sp, 48
	.loc 1 250 0
	l32r	a8, .LC5
	.loc 1 248 0
	s32i.n	a10, sp, 44
	.loc 1 250 0
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	l32i.n	a8, a8, 8
	s32i.n	a11, sp, 16
	s32i.n	a8, sp, 24
	.loc 1 254 0
	l32r	a8, .LC6
	.loc 1 250 0
	s32i.n	a10, sp, 20
	.loc 1 254 0
	s32i.n	a8, sp, 60
	.loc 1 256 0
	l32i	a8, sp, 112
	.loc 1 257 0
	addi	a7, sp, 64
.LVL57:
	.loc 1 256 0
	s32i.n	a8, sp, 28
	.loc 1 258 0
	l32r	a8, .LC7
	.loc 1 260 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 231 0
	.loc 1 252 0
	s32i.n	sp, sp, 52
	.loc 1 257 0
	s32i.n	a7, sp, 32
	.loc 1 258 0
	s32i.n	a8, sp, 36
	.loc 1 260 0
	call8	hash_nt_password_hash
.LVL58:
	beqz.n	a10, .L28
.L30:
	.loc 1 261 0
	movi.n	a10, -1
	j	.L29
.L28:
	.loc 1 262 0
	l32i	a13, sp, 112
	addi	a12, sp, 40
	addi	a11, sp, 52
	movi.n	a10, 3
	call8	sha1_vector
.LVL59:
	bnez.n	a10, .L30
	.loc 1 265 0
	mov.n	a14, a7
	mov.n	a13, a6
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	challenge_hash
.LVL60:
	bnez.n	a10, .L30
	.loc 1 268 0
	l32i	a13, sp, 112
	addi	a12, sp, 16
	addi	a11, sp, 28
	movi.n	a10, 3
	call8	sha1_vector
.LVL61:
.L29:
	.loc 1 269 0
	mov.n	a2, a10
.LVL62:
	retw.n
.LFE41:
	.size	generate_authenticator_response_pwhash, .-generate_authenticator_response_pwhash
	.section	.text.generate_authenticator_response,"ax",@progbits
	.align	4
	.global	generate_authenticator_response
	.type	generate_authenticator_response, @function
generate_authenticator_response:
.LFB42:
	.loc 1 290 0
.LVL63:
	entry	sp, 64
.LCFI8:
	.loc 1 292 0
	mov.n	a10, a2
	addi	a12, sp, 16
	mov.n	a11, a3
	call8	nt_password_hash
.LVL64:
	.loc 1 290 0
	.loc 1 293 0
	movi.n	a2, -1
.LVL65:
	.loc 1 292 0
	bnez.n	a10, .L32
	.loc 1 294 0
	l32i	a2, sp, 68
	l32i	a15, sp, 64
	s32i.n	a2, sp, 0
	mov.n	a14, a7
	mov.n	a13, a6
	mov.n	a12, a5
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	generate_authenticator_response_pwhash
.LVL66:
	mov.n	a2, a10
.L32:
	.loc 1 297 0
	retw.n
.LFE42:
	.size	generate_authenticator_response, .-generate_authenticator_response
	.section	.text.nt_challenge_response,"ax",@progbits
	.align	4
	.global	nt_challenge_response
	.type	nt_challenge_response, @function
nt_challenge_response:
.LFB43:
	.loc 1 310 0
.LVL67:
	entry	sp, 48
.LCFI9:
	.loc 1 312 0
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a3
	call8	nt_password_hash
.LVL68:
	.loc 1 310 0
	mov.n	a6, a2
	.loc 1 312 0
	mov.n	a2, a10
.LVL69:
	bnez.n	a10, .L36
	.loc 1 314 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a6
	call8	challenge_response
.LVL70:
	.loc 1 315 0
	retw.n
.L36:
	.loc 1 313 0
	movi.n	a2, -1
	.loc 1 316 0
	retw.n
.LFE43:
	.size	nt_challenge_response, .-nt_challenge_response
	.section	.rodata
	.align	4
.LC2:
	.word	16
	.word	24
	.word	27
	.section	.text.get_master_key,"ax",@progbits
	.literal_position
	.literal .LC8, .LC2
	.literal .LC9, magic1$4145
	.align	4
	.global	get_master_key
	.type	get_master_key, @function
get_master_key:
.LFB44:
	.loc 1 328 0
.LVL71:
	entry	sp, 80
.LCFI10:
	.loc 1 335 0
	l32r	a8, .LC8
	.loc 1 338 0
	s32i.n	a2, sp, 32
	.loc 1 335 0
	l32i.n	a10, a8, 0
	l32i.n	a9, a8, 4
	.loc 1 340 0
	l32r	a2, .LC9
.LVL72:
	.loc 1 335 0
	l32i.n	a8, a8, 8
	s32i.n	a10, sp, 20
	.loc 1 342 0
	mov.n	a13, sp
	addi	a12, sp, 20
	addi	a11, sp, 32
.LVL73:
	movi.n	a10, 3
	.loc 1 340 0
	s32i.n	a2, sp, 40
	.loc 1 335 0
	s32i.n	a9, sp, 24
	s32i.n	a8, sp, 28
	.loc 1 339 0
	s32i.n	a3, sp, 36
	.loc 1 342 0
	call8	sha1_vector
.LVL74:
	mov.n	a2, a10
	bnez.n	a10, .L39
	.loc 1 344 0
	movi.n	a12, 0x10
	mov.n	a11, sp
	mov.n	a10, a4
	call8	memcpy
.LVL75:
	.loc 1 345 0
	retw.n
.L39:
	.loc 1 343 0
	movi.n	a2, -1
	.loc 1 346 0
	retw.n
.LFE44:
	.size	get_master_key, .-get_master_key
	.section	.rodata
	.align	4
.LC3:
	.word	16
	.word	40
	.word	84
	.word	40
	.section	.text.get_asymetric_start_key,"ax",@progbits
	.literal_position
	.literal .LC10, magic3$4157
	.literal .LC11, magic2$4156
	.literal .LC12, .LC3
	.literal .LC13, shs_pad1$4158
	.literal .LC14, shs_pad2$4159
	.align	4
	.global	get_asymetric_start_key
	.type	get_asymetric_start_key, @function
get_asymetric_start_key:
.LFB45:
	.loc 1 361 0
.LVL76:
	entry	sp, 96
.LCFI11:
	.loc 1 399 0
	l32r	a8, .LC12
	.loc 1 401 0
	s32i.n	a2, sp, 36
	.loc 1 399 0
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 20
	.loc 1 402 0
	l32r	a2, .LC13
.LVL77:
	.loc 1 399 0
	l32i.n	a9, a8, 8
	l32i.n	a8, a8, 12
	s32i.n	a10, sp, 24
	s32i.n	a9, sp, 28
	s32i.n	a8, sp, 32
	.loc 1 402 0
	s32i.n	a2, sp, 40
	.loc 1 403 0
	beqz.n	a5, .L41
	.loc 1 404 0
	l32r	a8, .LC10
	l32r	a2, .LC11
	moveqz	a8, a2, a6
	mov.n	a6, a8
.LVL78:
	j	.L49
.LVL79:
.L41:
	.loc 1 406 0
	l32r	a2, .LC11
	l32r	a8, .LC10
	moveqz	a2, a8, a6
	mov.n	a6, a2
.LVL80:
.L49:
	.loc 1 408 0
	l32r	a2, .LC14
	.loc 1 410 0
	mov.n	a13, sp
	addi	a12, sp, 20
	addi	a11, sp, 36
.LVL81:
	movi.n	a10, 4
	.loc 1 408 0
	s32i.n	a2, sp, 48
	.loc 1 406 0
	s32i.n	a6, sp, 44
	.loc 1 410 0
	call8	sha1_vector
.LVL82:
	mov.n	a2, a10
	bnez.n	a10, .L48
.LVL83:
	.loc 1 415 0
	movi.n	a12, 0x14
	minu	a12, a4, a12
.LVL84:
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL85:
	.loc 1 416 0
	retw.n
.LVL86:
.L48:
	.loc 1 411 0
	movi.n	a2, -1
	.loc 1 417 0
	retw.n
.LFE45:
	.size	get_asymetric_start_key, .-get_asymetric_start_key
	.section	.text.encrypt_pw_block_with_password_hash,"ax",@progbits
	.align	4
	.global	encrypt_pw_block_with_password_hash
	.type	encrypt_pw_block_with_password_hash, @function
encrypt_pw_block_with_password_hash:
.LFB46:
	.loc 1 433 0
.LVL87:
	entry	sp, 48
.LCFI12:
	.loc 1 437 0
	movi	a12, 0x204
	movi.n	a11, 0
	mov.n	a10, a5
	call8	memset
.LVL88:
	.loc 1 439 0
	mov.n	a13, sp
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	utf8_to_ucs2$constprop$0
.LVL89:
	bgez	a10, .L51
.LVL90:
.L53:
	.loc 1 440 0
	movi.n	a2, -1
	retw.n
.LVL91:
.L51:
	.loc 1 442 0
	l32i.n	a12, sp, 0
	movi	a2, 0x100
.LVL92:
	bltu	a2, a12, .L53
	.loc 1 445 0
	slli	a2, a12, 1
	neg	a2, a2
	addmi	a2, a2, 0x200
.LVL93:
	.loc 1 446 0
	bnez.n	a2, .L54
.L55:
.LVL94:
	.loc 1 456 0
	slli	a3, a3, 1
.LVL95:
	addmi	a2, a5, 0x200
.LVL96:
	extui	a8, a3, 8, 8
	s8i	a8, a2, 1
	s8i	a3, a2, 0
	.loc 1 457 0
	movi	a14, 0x204
	mov.n	a13, a5
	movi.n	a12, 0
	movi.n	a11, 0x10
	mov.n	a10, a4
	call8	rc4_skip
.LVL97:
	.loc 1 458 0
	movi.n	a2, 0
.LVL98:
	retw.n
.LVL99:
.L54:
	.loc 1 447 0
	mov.n	a11, a5
	slli	a12, a12, 1
	add.n	a10, a5, a2
	call8	memmove
.LVL100:
	.loc 1 448 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	os_get_random
.LVL101:
	bgez	a10, .L55
	j	.L53
.LFE46:
	.size	encrypt_pw_block_with_password_hash, .-encrypt_pw_block_with_password_hash
	.section	.text.new_password_encrypted_with_old_nt_password_hash,"ax",@progbits
	.align	4
	.global	new_password_encrypted_with_old_nt_password_hash
	.type	new_password_encrypted_with_old_nt_password_hash, @function
new_password_encrypted_with_old_nt_password_hash:
.LFB47:
	.loc 1 475 0
.LVL102:
	entry	sp, 48
.LCFI13:
	.loc 1 478 0
	mov.n	a10, a4
	mov.n	a12, sp
	mov.n	a11, a5
	call8	nt_password_hash
.LVL103:
	mov.n	a4, a10
.LVL104:
	.loc 1 479 0
	movi.n	a10, -1
	.loc 1 478 0
	bnez.n	a4, .L57
	.loc 1 480 0
	mov.n	a13, a6
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encrypt_pw_block_with_password_hash
.LVL105:
	movi.n	a8, 1
	movnez	a4, a8, a10
	neg	a10, a4
.L57:
	.loc 1 485 0
	mov.n	a2, a10
.LVL106:
	retw.n
.LFE47:
	.size	new_password_encrypted_with_old_nt_password_hash, .-new_password_encrypted_with_old_nt_password_hash
	.section	.text.nt_password_hash_encrypted_with_block,"ax",@progbits
	.align	4
	.global	nt_password_hash_encrypted_with_block
	.type	nt_password_hash_encrypted_with_block, @function
nt_password_hash_encrypted_with_block:
.LFB48:
	.loc 1 496 0
.LVL107:
	entry	sp, 32
.LCFI14:
	.loc 1 497 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	des_encrypt
.LVL108:
	.loc 1 498 0
	addi.n	a12, a4, 8
	addi.n	a11, a3, 7
	addi.n	a10, a2, 8
	call8	des_encrypt
.LVL109:
	retw.n
.LFE48:
	.size	nt_password_hash_encrypted_with_block, .-nt_password_hash_encrypted_with_block
	.section	.text.old_nt_password_hash_encrypted_with_new_nt_password_hash,"ax",@progbits
	.align	4
	.global	old_nt_password_hash_encrypted_with_new_nt_password_hash
	.type	old_nt_password_hash_encrypted_with_new_nt_password_hash, @function
old_nt_password_hash_encrypted_with_new_nt_password_hash:
.LFB49:
	.loc 1 515 0
.LVL110:
	entry	sp, 64
.LCFI15:
	.loc 1 518 0
	addi	a12, sp, 16
	mov.n	a11, a5
	mov.n	a10, a4
	call8	nt_password_hash
.LVL111:
	beqz.n	a10, .L61
.LVL112:
.L63:
	.loc 1 522 0
	movi.n	a2, -1
	retw.n
.LVL113:
.L61:
	.loc 1 520 0
	mov.n	a10, a2
	mov.n	a12, sp
	mov.n	a11, a3
	call8	nt_password_hash
.LVL114:
	mov.n	a2, a10
.LVL115:
	.loc 1 519 0
	bnez.n	a10, .L63
	.loc 1 523 0
	mov.n	a12, a6
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	nt_password_hash_encrypted_with_block
.LVL116:
	.loc 1 527 0
	retw.n
.LFE49:
	.size	old_nt_password_hash_encrypted_with_new_nt_password_hash, .-old_nt_password_hash_encrypted_with_new_nt_password_hash
	.section	.rodata.shs_pad2$4159,"a",@progbits
	.type	shs_pad2$4159, @object
	.size	shs_pad2$4159, 40
shs_pad2$4159:
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.section	.rodata.magic2$4156,"a",@progbits
	.type	magic2$4156, @object
	.size	magic2$4156, 84
magic2$4156:
	.byte	79
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	116
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	59
	.byte	32
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	114
	.byte	101
	.byte	99
	.byte	101
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	46
	.section	.rodata.magic3$4157,"a",@progbits
	.type	magic3$4157, @object
	.size	magic3$4157, 84
magic3$4157:
	.byte	79
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	116
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	114
	.byte	101
	.byte	99
	.byte	101
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	59
	.byte	32
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	46
	.section	.rodata.shs_pad1$4158,"a",@progbits
	.type	shs_pad1$4158, @object
	.size	shs_pad1$4158, 40
shs_pad1$4158:
	.zero	40
	.section	.rodata.magic1$4145,"a",@progbits
	.type	magic1$4145, @object
	.size	magic1$4145, 27
magic1$4145:
	.byte	84
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	77
	.byte	80
	.byte	80
	.byte	69
	.byte	32
	.byte	77
	.byte	97
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	32
	.byte	75
	.byte	101
	.byte	121
	.section	.rodata.magic2$4115,"a",@progbits
	.type	magic2$4115, @object
	.size	magic2$4115, 41
magic2$4115:
	.byte	80
	.byte	97
	.byte	100
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	109
	.byte	97
	.byte	107
	.byte	101
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	100
	.byte	111
	.byte	32
	.byte	109
	.byte	111
	.byte	114
	.byte	101
	.byte	32
	.byte	116
	.byte	104
	.byte	97
	.byte	110
	.byte	32
	.byte	111
	.byte	110
	.byte	101
	.byte	32
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.section	.rodata.magic1$4114,"a",@progbits
	.type	magic1$4114, @object
	.size	magic1$4114, 39
magic1$4114:
	.byte	77
	.byte	97
	.byte	103
	.byte	105
	.byte	99
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	103
	.byte	110
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	97
	.byte	110
	.byte	116
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI1-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x230
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI4-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI6-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI7-.LFB41
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI9-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI10-.LFB44
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI12-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI14-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI15-.LFB49
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa/common.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/crypto.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/port/include/os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1013
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.byte	0x16
	.4byte	0x50
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
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.string	"u16"
	.byte	0x5
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x5
	.string	"u8"
	.byte	0x5
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x1
	.byte	0x1a
	.4byte	0x57
	.byte	0x1
	.4byte	0x148
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.4byte	0x148
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.4byte	0xc5
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1b
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.4byte	0x153
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x1e
	.4byte	0x73
	.uleb128 0xa
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x21
	.4byte	0xbb
	.uleb128 0xa
	.uleb128 0x9
	.string	"c2"
	.byte	0x1
	.byte	0x2e
	.4byte	0xbb
	.uleb128 0xa
	.uleb128 0x9
	.string	"c3"
	.byte	0x1
	.byte	0x3a
	.4byte	0xbb
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14e
	.uleb128 0xb
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x51
	.4byte	0x57
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x223
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.4byte	0x148
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x51
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x52
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x53
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x55
	.4byte	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x56
	.4byte	0x233
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x57
	.4byte	0x24e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0xfc1
	.4byte	0x206
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0xfcc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x233
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	0x243
	.4byte	0x243
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x249
	.uleb128 0xb
	.4byte	0x37
	.uleb128 0x14
	.4byte	0x73
	.4byte	0x25e
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	0xcb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x17
	.4byte	0xdb
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0xe6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	0xf1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	0x107
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	0x112
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x11b
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0xfc
	.2byte	0x200
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.4byte	0x125
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x19
	.4byte	0x12f
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x19
	.4byte	0x13a
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6e
	.4byte	0x57
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39f
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6e
	.4byte	0x148
	.4byte	.LLST8
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6e
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6f
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x71
	.4byte	0x39f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x10
	.string	"pos"
	.byte	0x1
	.byte	0x71
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x72
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x72
	.4byte	0x73
	.2byte	0x200
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0x25e
	.4byte	0x37d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL35
	.4byte	0xfd5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x3b0
	.uleb128 0x1f
	.4byte	0x9b
	.2byte	0x1ff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.byte	0x84
	.4byte	0x57
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x415
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x84
	.4byte	0x148
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x84
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x86
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0xfd5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0x91
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4dc
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x91
	.4byte	0x148
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x91
	.4byte	0x148
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x92
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x94
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0xfe0
	.4byte	0x481
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0xfe0
	.4byte	0x4a1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0xfeb
	.4byte	0x4bf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0xfe0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x4ec
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa9
	.4byte	0x57
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e9
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa9
	.4byte	0x148
	.4byte	.LLST11
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa9
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xaa
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xaa
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0xab
	.4byte	0x148
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0xac
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xae
	.4byte	0x5e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0xaf
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.4byte	.LVL46
	.4byte	0x159
	.4byte	0x5ab
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LVL49
	.4byte	0x2dc
	.4byte	0x5cb
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x13
	.4byte	.LVL51
	.4byte	0x415
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x5f9
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x609
	.uleb128 0x15
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc5
	.4byte	0x57
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c9
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc5
	.4byte	0x148
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc6
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc7
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc7
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc8
	.4byte	0x148
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc9
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xcb
	.4byte	0x5e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL53
	.4byte	0x159
	.4byte	0x6ac
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0x415
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe2
	.4byte	0x57
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84f
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe3
	.4byte	0x148
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe4
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xe4
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe5
	.4byte	0x148
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe5
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe6
	.4byte	0x148
	.4byte	.LLST14
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe6
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe8
	.4byte	0x85f
	.uleb128 0x5
	.byte	0x3
	.4byte	magic1$4114
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xee
	.4byte	0x874
	.uleb128 0x5
	.byte	0x3
	.4byte	magic2$4115
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf6
	.4byte	0x5f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf6
	.4byte	0x5e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf7
	.4byte	0x233
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf8
	.4byte	0x879
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf9
	.4byte	0x233
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0xfa
	.4byte	0x87e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.4byte	.LVL58
	.4byte	0x3b0
	.4byte	0x7d7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x11
	.4byte	.LVL59
	.4byte	0xfc1
	.4byte	0x7fe
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL60
	.4byte	0x159
	.4byte	0x82a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL61
	.4byte	0xfc1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x85f
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x26
	.byte	0
	.uleb128 0xb
	.4byte	0x84f
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0x874
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.4byte	0x864
	.uleb128 0xb
	.4byte	0x24e
	.uleb128 0xb
	.4byte	0x24e
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x11d
	.4byte	0x57
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x977
	.uleb128 0x22
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x11d
	.4byte	0x148
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x11d
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x11e
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x11f
	.4byte	0x148
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x120
	.4byte	0x148
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x120
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x121
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x121
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x123
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL64
	.4byte	0x2dc
	.4byte	0x940
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL66
	.4byte	0x6c9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x134
	.4byte	0x57
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa17
	.uleb128 0x22
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x134
	.4byte	0x148
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x134
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x135
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x135
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x137
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL68
	.4byte	0x2dc
	.4byte	0x9fa
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL70
	.4byte	0x415
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x146
	.4byte	0x57
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x22
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x146
	.4byte	0x148
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x146
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x147
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x149
	.4byte	0xaf0
	.uleb128 0x5
	.byte	0x3
	.4byte	magic1$4145
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x14e
	.4byte	0x233
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x14f
	.4byte	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x150
	.4byte	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.4byte	.LVL74
	.4byte	0xfc1
	.4byte	0xac3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x13
	.4byte	.LVL75
	.4byte	0xfcc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0xaf0
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	0xae0
	.uleb128 0xb
	.4byte	0x24e
	.uleb128 0x21
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x166
	.4byte	0x57
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2e
	.uleb128 0x22
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x166
	.4byte	0x148
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x166
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x167
	.4byte	0x73
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x167
	.4byte	0x57
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x168
	.4byte	0x57
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x16a
	.4byte	0xc3e
	.uleb128 0x5
	.byte	0x3
	.4byte	magic2$4156
	.uleb128 0x24
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x175
	.4byte	0xc43
	.uleb128 0x5
	.byte	0x3
	.4byte	magic3$4157
	.uleb128 0x24
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x180
	.4byte	0xc58
	.uleb128 0x5
	.byte	0x3
	.4byte	shs_pad1$4158
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x187
	.4byte	0xc5d
	.uleb128 0x5
	.byte	0x3
	.4byte	shs_pad2$4159
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x18d
	.4byte	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x18e
	.4byte	0xc62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.2byte	0x18f
	.4byte	0xc82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x11
	.4byte	.LVL82
	.4byte	0xfc1
	.4byte	0xbfe
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x13
	.4byte	.LVL85
	.4byte	0xfcc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x44
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0xc3e
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x53
	.byte	0
	.uleb128 0xb
	.4byte	0xc2e
	.uleb128 0xb
	.4byte	0xc2e
	.uleb128 0x14
	.4byte	0xbb
	.4byte	0xc58
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.4byte	0xc48
	.uleb128 0xb
	.4byte	0xc48
	.uleb128 0x14
	.4byte	0x243
	.4byte	0xc72
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	0x73
	.4byte	0xc82
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0xc72
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x57
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb1
	.uleb128 0x22
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1af
	.4byte	0x148
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1af
	.4byte	0x73
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x73
	.4byte	.LLST23
	.uleb128 0x27
	.string	"pos"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xc5
	.4byte	.LLST24
	.uleb128 0x11
	.4byte	.LVL88
	.4byte	0xfeb
	.4byte	0xd2c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.byte	0
	.uleb128 0x11
	.4byte	.LVL89
	.4byte	0x25e
	.4byte	0xd52
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LVL97
	.4byte	0xff4
	.4byte	0xd7d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.byte	0
	.uleb128 0x11
	.4byte	.LVL100
	.4byte	0x1000
	.4byte	0xd9a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL101
	.4byte	0x100b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x57
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe67
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x148
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x148
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1da
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL103
	.4byte	0x2dc
	.4byte	0xe44
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL105
	.4byte	0xc87
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1ee
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee4
	.uleb128 0x23
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x148
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x148
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LVL108
	.4byte	0xfe0
	.4byte	0xec7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL109
	.4byte	0xfe0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x57
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc1
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x200
	.4byte	0x148
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x200
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x201
	.4byte	0x148
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x201
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x202
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x204
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x204
	.4byte	0x5f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.4byte	.LVL111
	.4byte	0x2dc
	.4byte	0xf84
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LVL114
	.4byte	0x2dc
	.4byte	0xfa4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x13
	.4byte	.LVL116
	.4byte	0xe67
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x6
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF81
	.4byte	.LASF81
	.uleb128 0x29
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.byte	0x28
	.uleb128 0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x7a
	.uleb128 0x2a
	.4byte	.LASF82
	.4byte	.LASF82
	.uleb128 0x2b
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x25e
	.uleb128 0x29
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x7
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x8
	.byte	0x63
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL3-1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
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
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL58-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL74-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL82-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL76
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x44
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85-1
	.4byte	.LVL86
	.2byte	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x44
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x4
	.byte	0x75
	.sleb128 512
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0x75
	.sleb128 512
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"des_encrypt"
.LASF25:
	.string	"challenge"
.LASF43:
	.string	"addr1"
.LASF45:
	.string	"addr2"
.LASF31:
	.string	"max_len"
.LASF77:
	.string	"new_password_hash"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF68:
	.string	"old_password_len"
.LASF18:
	.string	"ucs2_buffer"
.LASF30:
	.string	"password_hash"
.LASF28:
	.string	"password"
.LASF4:
	.string	"__uint16_t"
.LASF81:
	.string	"memcpy"
.LASF48:
	.string	"nt_challenge_response"
.LASF52:
	.string	"session_key"
.LASF10:
	.string	"uint8_t"
.LASF21:
	.string	"peer_challenge"
.LASF33:
	.string	"hash_nt_password_hash"
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF67:
	.string	"old_password"
.LASF53:
	.string	"session_key_len"
.LASF0:
	.string	"signed char"
.LASF70:
	.string	"challenge_response"
.LASF20:
	.string	"ucs2_string_size"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF57:
	.string	"shs_pad1"
.LASF58:
	.string	"shs_pad2"
.LASF82:
	.string	"memset"
.LASF12:
	.string	"long int"
.LASF75:
	.string	"encrypted_password_hash"
.LASF69:
	.string	"encrypted_pw_block"
.LASF41:
	.string	"magic1"
.LASF54:
	.string	"is_send"
.LASF55:
	.string	"is_server"
.LASF3:
	.string	"__uint8_t"
.LASF72:
	.string	"block"
.LASF23:
	.string	"username"
.LASF51:
	.string	"get_asymetric_start_key"
.LASF19:
	.string	"ucs2_buffer_size"
.LASF89:
	.string	"utf8_to_ucs2"
.LASF84:
	.string	"memmove"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"password_len"
.LASF66:
	.string	"new_password_len"
.LASF49:
	.string	"get_master_key"
.LASF87:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/ms_funcs.c"
.LASF44:
	.string	"len1"
.LASF46:
	.string	"len2"
.LASF6:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF14:
	.string	"long unsigned int"
.LASF17:
	.string	"utf8_string_len"
.LASF47:
	.string	"generate_authenticator_response"
.LASF78:
	.string	"sha1_vector"
.LASF5:
	.string	"short unsigned int"
.LASF63:
	.string	"offset"
.LASF59:
	.string	"digest"
.LASF60:
	.string	"encrypt_pw_block_with_password_hash"
.LASF40:
	.string	"nt_response"
.LASF15:
	.string	"char"
.LASF64:
	.string	"new_password_encrypted_with_old_nt_password_hash"
.LASF22:
	.string	"auth_challenge"
.LASF38:
	.string	"generate_nt_response_pwhash"
.LASF27:
	.string	"addr"
.LASF37:
	.string	"generate_nt_response"
.LASF34:
	.string	"password_hash_hash"
.LASF39:
	.string	"generate_authenticator_response_pwhash"
.LASF42:
	.string	"magic2"
.LASF56:
	.string	"magic3"
.LASF32:
	.string	"nt_password_hash"
.LASF35:
	.string	"response"
.LASF62:
	.string	"ucs2_len"
.LASF73:
	.string	"cypher"
.LASF90:
	.string	"challenge_hash"
.LASF79:
	.string	"md4_vector"
.LASF74:
	.string	"old_nt_password_hash_encrypted_with_new_nt_password_hash"
.LASF71:
	.string	"nt_password_hash_encrypted_with_block"
.LASF83:
	.string	"rc4_skip"
.LASF76:
	.string	"old_password_hash"
.LASF85:
	.string	"os_get_random"
.LASF50:
	.string	"master_key"
.LASF16:
	.string	"utf8_string"
.LASF86:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF61:
	.string	"pw_block"
.LASF24:
	.string	"username_len"
.LASF65:
	.string	"new_password"
.LASF26:
	.string	"hash"
.LASF36:
	.string	"zpwd"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
