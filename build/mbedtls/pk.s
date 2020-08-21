	.file	"pk.c"
	.text
.Ltext0:
	.section	.text.mbedtls_pk_init,"ax",@progbits
	.align	4
	.global	mbedtls_pk_init
	.type	mbedtls_pk_init, @function
mbedtls_pk_init:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/pk.c"
	.loc 1 51 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 52 0
	beqz.n	a2, .L1
	.loc 1 55 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 56 0
	s32i.n	a8, a2, 4
.L1:
	retw.n
.LFE3:
	.size	mbedtls_pk_init, .-mbedtls_pk_init
	.section	.text.mbedtls_pk_free,"ax",@progbits
	.align	4
	.global	mbedtls_pk_free
	.type	mbedtls_pk_free, @function
mbedtls_pk_free:
.LFB4:
	.loc 1 63 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 64 0
	beqz.n	a2, .L6
	.loc 1 64 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L6
	.loc 1 67 0
	l32i.n	a10, a2, 4
	l32i.n	a8, a8, 40
	callx8	a8
.LVL2:
	.loc 1 69 0
	movi.n	a11, 8
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL3:
.L6:
	retw.n
.LFE4:
	.size	mbedtls_pk_free, .-mbedtls_pk_free
	.section	.text.mbedtls_pk_info_from_type,"ax",@progbits
	.literal_position
	.literal .LC0, CSWTCH$8
	.align	4
	.global	mbedtls_pk_info_from_type
	.type	mbedtls_pk_info_from_type, @function
mbedtls_pk_info_from_type:
.LFB5:
	.loc 1 76 0
.LVL4:
	entry	sp, 32
.LCFI2:
	addi.n	a8, a2, -1
	.loc 1 76 0
	movi.n	a2, 0
.LVL5:
	bgeui	a8, 4, .L15
	l32r	a2, .LC0
	addx4	a8, a8, a2
.LVL6:
	l32i.n	a2, a8, 0
.L15:
	.loc 1 96 0
	retw.n
.LFE5:
	.size	mbedtls_pk_info_from_type, .-mbedtls_pk_info_from_type
	.section	.text.mbedtls_pk_setup,"ax",@progbits
	.literal_position
	.literal .LC1, -16000
	.literal .LC2, -16256
	.align	4
	.global	mbedtls_pk_setup
	.type	mbedtls_pk_setup, @function
mbedtls_pk_setup:
.LFB6:
	.loc 1 102 0
.LVL7:
	entry	sp, 32
.LCFI3:
	.loc 1 103 0
	movi.n	a4, 1
	movi.n	a9, 0
	moveqz	a9, a4, a2
	extui	a8, a9, 0, 8
	bnez.n	a8, .L19
	moveqz	a8, a4, a3
	bnez.n	a8, .L19
	.loc 1 103 0 discriminator 1
	l32i.n	a4, a2, 0
	.loc 1 104 0 discriminator 1
	l32r	a8, .LC1
	.loc 1 103 0 discriminator 1
	bnez.n	a4, .L18
	.loc 1 106 0
	l32i.n	a10, a3, 36
	callx8	a10
.LVL8:
	s32i.n	a10, a2, 4
	.loc 1 107 0
	l32r	a8, .LC2
	.loc 1 106 0
	beqz.n	a10, .L18
	.loc 1 109 0
	s32i.n	a3, a2, 0
	.loc 1 111 0
	mov.n	a8, a4
	j	.L18
.L19:
	.loc 1 104 0
	l32r	a8, .LC1
.L18:
	.loc 1 112 0
	mov.n	a2, a8
.LVL9:
	retw.n
.LFE6:
	.size	mbedtls_pk_setup, .-mbedtls_pk_setup
	.section	.text.mbedtls_pk_setup_rsa_alt,"ax",@progbits
	.literal_position
	.literal .LC3, -16000
	.literal .LC4, -16256
	.literal .LC5, mbedtls_rsa_alt_info
	.align	4
	.global	mbedtls_pk_setup_rsa_alt
	.type	mbedtls_pk_setup_rsa_alt, @function
mbedtls_pk_setup_rsa_alt:
.LFB7:
	.loc 1 122 0
.LVL10:
	entry	sp, 48
.LCFI4:
.LVL11:
	.loc 1 127 0
	l32r	a8, .LC3
	.loc 1 126 0
	beqz.n	a2, .L23
	.loc 1 126 0 discriminator 1
	l32i.n	a7, a2, 0
	bnez.n	a7, .L23
	.loc 1 129 0
	l32r	a9, .LC5
	l32i.n	a10, a9, 36
	s32i.n	a9, sp, 0
	callx8	a10
.LVL12:
	s32i.n	a10, a2, 4
	.loc 1 130 0
	l32r	a8, .LC4
	.loc 1 129 0
	l32i.n	a9, sp, 0
	beqz.n	a10, .L23
	.loc 1 132 0
	s32i.n	a9, a2, 0
.LVL13:
	.loc 1 136 0
	s32i.n	a3, a10, 0
	.loc 1 137 0
	s32i.n	a4, a10, 4
	.loc 1 138 0
	s32i.n	a5, a10, 8
	.loc 1 139 0
	s32i.n	a6, a10, 12
	.loc 1 141 0
	mov.n	a8, a7
.LVL14:
.L23:
	.loc 1 142 0
	mov.n	a2, a8
.LVL15:
	retw.n
.LFE7:
	.size	mbedtls_pk_setup_rsa_alt, .-mbedtls_pk_setup_rsa_alt
	.section	.text.mbedtls_pk_can_do,"ax",@progbits
	.align	4
	.global	mbedtls_pk_can_do
	.type	mbedtls_pk_can_do, @function
mbedtls_pk_can_do:
.LFB8:
	.loc 1 149 0
.LVL16:
	entry	sp, 32
.LCFI5:
	.loc 1 149 0
	mov.n	a10, a3
	.loc 1 152 0
	mov.n	a8, a2
	.loc 1 151 0
	beqz.n	a2, .L28
	.loc 1 151 0 discriminator 1
	l32i.n	a2, a2, 0
.LVL17:
	.loc 1 152 0 discriminator 1
	movi.n	a8, 0
.LVL18:
	.loc 1 151 0 discriminator 1
	beq	a2, a8, .L28
	.loc 1 154 0
	l32i.n	a2, a2, 12
	callx8	a2
.LVL19:
	mov.n	a8, a10
.L28:
	.loc 1 155 0
	mov.n	a2, a8
	retw.n
.LFE8:
	.size	mbedtls_pk_can_do, .-mbedtls_pk_can_do
	.section	.text.mbedtls_pk_verify,"ax",@progbits
	.literal_position
	.literal .LC6, -16000
	.literal .LC7, -16128
	.align	4
	.global	mbedtls_pk_verify
	.type	mbedtls_pk_verify, @function
mbedtls_pk_verify:
.LFB10:
	.loc 1 180 0
.LVL20:
	entry	sp, 32
.LCFI6:
	.loc 1 180 0
	mov.n	a10, a5
	.loc 1 181 0
	bnez.n	a2, .L33
.L35:
	.loc 1 183 0
	l32r	a8, .LC6
	j	.L45
.L33:
	.loc 1 181 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L35
.LVL21:
.LBB9:
.LBB10:
	.loc 1 164 0
	bnez.n	a5, .L36
.LVL22:
.LBB11:
.LBB12:
	.loc 1 167 0
	mov.n	a10, a3
	call8	mbedtls_md_info_from_type
.LVL23:
	beqz.n	a10, .L35
	.loc 1 170 0
	call8	mbedtls_md_get_size
.LVL24:
	j	.L36
.LVL25:
.L46:
.LBE12:
.LBE11:
.LBE10:
.LBE9:
	.loc 1 188 0
	mov.n	a13, a10
	l32i.n	a10, a2, 4
.LVL26:
	mov.n	a15, a7
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	callx8	a9
.LVL27:
	mov.n	a8, a10
	j	.L45
.L36:
.LVL28:
	.loc 1 185 0
	l32i.n	a8, a2, 0
	l32i.n	a9, a8, 16
	.loc 1 186 0
	l32r	a8, .LC7
	.loc 1 185 0
	bnez.n	a9, .L46
.LVL29:
.L45:
	.loc 1 190 0
	mov.n	a2, a8
.LVL30:
	retw.n
.LFE10:
	.size	mbedtls_pk_verify, .-mbedtls_pk_verify
	.section	.text.mbedtls_pk_sign,"ax",@progbits
	.literal_position
	.literal .LC8, -16000
	.literal .LC9, -16128
	.align	4
	.global	mbedtls_pk_sign
	.type	mbedtls_pk_sign, @function
mbedtls_pk_sign:
.LFB12:
	.loc 1 257 0
.LVL31:
	entry	sp, 48
.LCFI7:
	.loc 1 257 0
	mov.n	a10, a5
	.loc 1 258 0
	bnez.n	a2, .L48
.L50:
	.loc 1 260 0
	l32r	a8, .LC8
	j	.L60
.L48:
	.loc 1 258 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L50
.LVL32:
.LBB17:
.LBB18:
	.loc 1 164 0
	bnez.n	a5, .L51
.LVL33:
.LBB19:
.LBB20:
	.loc 1 167 0
	mov.n	a10, a3
	call8	mbedtls_md_info_from_type
.LVL34:
	beqz.n	a10, .L50
	.loc 1 170 0
	call8	mbedtls_md_get_size
.LVL35:
	j	.L51
.LVL36:
.L61:
.LBE20:
.LBE19:
.LBE18:
.LBE17:
	.loc 1 265 0
	l32i.n	a8, sp, 52
	mov.n	a13, a10
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	mov.n	a15, a7
	s32i.n	a8, sp, 0
	l32i.n	a10, a2, 4
.LVL37:
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	callx8	a9
.LVL38:
	mov.n	a8, a10
	j	.L60
.L51:
.LVL39:
	.loc 1 262 0
	l32i.n	a8, a2, 0
	l32i.n	a9, a8, 20
	.loc 1 263 0
	l32r	a8, .LC9
	.loc 1 262 0
	bnez.n	a9, .L61
.LVL40:
.L60:
	.loc 1 267 0
	mov.n	a2, a8
.LVL41:
	retw.n
.LFE12:
	.size	mbedtls_pk_sign, .-mbedtls_pk_sign
	.section	.text.mbedtls_pk_decrypt,"ax",@progbits
	.literal_position
	.literal .LC10, -16000
	.literal .LC11, -16128
	.align	4
	.global	mbedtls_pk_decrypt
	.type	mbedtls_pk_decrypt, @function
mbedtls_pk_decrypt:
.LFB13:
	.loc 1 276 0
.LVL42:
	entry	sp, 48
.LCFI8:
	.loc 1 276 0
	mov.n	a15, a7
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a14, a6
	.loc 1 278 0
	l32r	a10, .LC10
	.loc 1 277 0
	beqz.n	a2, .L63
	.loc 1 277 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L63
	.loc 1 280 0
	l32i.n	a8, a8, 24
	.loc 1 281 0
	l32r	a10, .LC11
	.loc 1 280 0
	beqz.n	a8, .L63
	.loc 1 283 0
	l32i.n	a9, sp, 52
	s32i.n	a9, sp, 4
	l32i.n	a9, sp, 48
	s32i.n	a9, sp, 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL43:
.L63:
	.loc 1 285 0
	mov.n	a2, a10
.LVL44:
	retw.n
.LFE13:
	.size	mbedtls_pk_decrypt, .-mbedtls_pk_decrypt
	.section	.text.mbedtls_pk_encrypt,"ax",@progbits
	.literal_position
	.literal .LC12, -16000
	.literal .LC13, -16128
	.align	4
	.global	mbedtls_pk_encrypt
	.type	mbedtls_pk_encrypt, @function
mbedtls_pk_encrypt:
.LFB14:
	.loc 1 294 0
.LVL45:
	entry	sp, 48
.LCFI9:
	.loc 1 294 0
	mov.n	a15, a7
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a14, a6
	.loc 1 296 0
	l32r	a10, .LC12
	.loc 1 295 0
	beqz.n	a2, .L68
	.loc 1 295 0 discriminator 1
	l32i.n	a8, a2, 0
	beqz.n	a8, .L68
	.loc 1 298 0
	l32i.n	a8, a8, 28
	.loc 1 299 0
	l32r	a10, .LC13
	.loc 1 298 0
	beqz.n	a8, .L68
	.loc 1 301 0
	l32i.n	a9, sp, 52
	s32i.n	a9, sp, 4
	l32i.n	a9, sp, 48
	s32i.n	a9, sp, 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL46:
.L68:
	.loc 1 303 0
	mov.n	a2, a10
.LVL47:
	retw.n
.LFE14:
	.size	mbedtls_pk_encrypt, .-mbedtls_pk_encrypt
	.section	.text.mbedtls_pk_check_pair,"ax",@progbits
	.literal_position
	.literal .LC14, -16000
	.literal .LC15, -16128
	.align	4
	.global	mbedtls_pk_check_pair
	.type	mbedtls_pk_check_pair, @function
mbedtls_pk_check_pair:
.LFB15:
	.loc 1 309 0
.LVL48:
	entry	sp, 32
.LCFI10:
	.loc 1 314 0
	l32r	a10, .LC14
	.loc 1 310 0
	beqz.n	a2, .L73
	.loc 1 310 0 discriminator 1
	l32i.n	a11, a2, 0
	.loc 1 310 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0
	moveqz	a9, a10, a11
	extui	a8, a9, 0, 8
	bnez.n	a8, .L77
	moveqz	a8, a10, a3
	bnez.n	a8, .L77
	.loc 1 311 0
	l32i.n	a8, a3, 0
	.loc 1 314 0
	l32r	a10, .LC14
	.loc 1 311 0
	beqz.n	a8, .L73
	.loc 1 312 0 discriminator 1
	l32i.n	a9, a8, 32
	.loc 1 311 0 discriminator 1
	beqz.n	a9, .L73
	.loc 1 317 0
	l32i.n	a10, a8, 0
	bnei	a10, 5, .L74
	.loc 1 319 0
	l32i.n	a8, a11, 0
	.loc 1 320 0
	l32r	a10, .LC15
	.loc 1 319 0
	beqi	a8, 1, .L75
	j	.L73
.L74:
	.loc 1 320 0
	l32r	a10, .LC15
	.loc 1 324 0
	bne	a11, a8, .L73
.L75:
	.loc 1 328 0
	l32i.n	a11, a3, 4
	l32i.n	a10, a2, 4
	callx8	a9
.LVL49:
	j	.L73
.L77:
	.loc 1 314 0
	l32r	a10, .LC14
.L73:
	.loc 1 329 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE15:
	.size	mbedtls_pk_check_pair, .-mbedtls_pk_check_pair
	.section	.text.mbedtls_pk_get_bitlen,"ax",@progbits
	.align	4
	.global	mbedtls_pk_get_bitlen
	.type	mbedtls_pk_get_bitlen, @function
mbedtls_pk_get_bitlen:
.LFB16:
	.loc 1 335 0
.LVL51:
	entry	sp, 32
.LCFI11:
	.loc 1 337 0
	mov.n	a10, a2
	.loc 1 336 0
	beqz.n	a2, .L83
	.loc 1 336 0 discriminator 1
	l32i.n	a9, a2, 0
	.loc 1 337 0 discriminator 1
	movi.n	a10, 0
	.loc 1 336 0 discriminator 1
	beq	a9, a10, .L83
	.loc 1 339 0
	l32i.n	a9, a9, 8
	l32i.n	a10, a2, 4
	callx8	a9
.LVL52:
.L83:
	.loc 1 340 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE16:
	.size	mbedtls_pk_get_bitlen, .-mbedtls_pk_get_bitlen
	.section	.text.mbedtls_pk_verify_ext,"ax",@progbits
	.literal_position
	.literal .LC16, -16000
	.literal .LC17, -16128
	.literal .LC18, -17280
	.literal .LC19, -14592
	.align	4
	.global	mbedtls_pk_verify_ext
	.type	mbedtls_pk_verify_ext, @function
mbedtls_pk_verify_ext:
.LFB11:
	.loc 1 199 0
.LVL54:
	entry	sp, 64
.LCFI12:
	.loc 1 199 0
	mov.n	a8, a2
	.loc 1 200 0
	bnez.n	a4, .L88
.LVL55:
.L90:
	.loc 1 201 0
	l32r	a2, .LC16
	retw.n
.LVL56:
.L88:
	.loc 1 200 0 discriminator 1
	l32i.n	a2, a4, 0
.LVL57:
	beqz.n	a2, .L90
	.loc 1 203 0
	mov.n	a11, a8
	mov.n	a10, a4
	s32i.n	a8, sp, 16
	call8	mbedtls_pk_can_do
.LVL58:
	l32i.n	a8, sp, 16
	.loc 1 204 0
	l32r	a2, .LC17
	.loc 1 203 0
	beqz.n	a10, .L89
	.loc 1 206 0
	bnei	a8, 6, .L91
.LBB26:
	.loc 1 217 0
	beqz.n	a3, .L90
.LVL59:
.LBB27:
.LBB28:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.loc 2 247 0
	mov.n	a10, a4
	call8	mbedtls_pk_get_bitlen
.LVL60:
.LBE28:
.LBE27:
	.loc 1 222 0
	addi.n	a10, a10, 7
	l32i	a8, sp, 68
	srli	a10, a10, 3
	.loc 1 223 0
	l32r	a2, .LC18
	.loc 1 222 0
	bltu	a8, a10, .L89
	.loc 1 225 0
	l32i	a2, sp, 64
	movi.n	a13, 0
	s32i.n	a2, sp, 12
	l32i.n	a2, a3, 4
	l32i.n	a10, a4, 4
	s32i.n	a2, sp, 8
	l32i.n	a2, a3, 0
	mov.n	a15, a7
	s32i.n	a2, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a14, a5
	mov.n	a12, a13
	mov.n	a11, a13
	call8	mbedtls_rsa_rsassa_pss_verify_ext
.LVL61:
	mov.n	a2, a10
.LVL62:
	.loc 1 231 0
	bnez.n	a10, .L89
.LVL63:
.LBB29:
.LBB30:
	.loc 2 247 0
	mov.n	a10, a4
	call8	mbedtls_pk_get_bitlen
.LVL64:
.LBE30:
.LBE29:
	.loc 1 234 0
	addi.n	a10, a10, 7
	l32i	a3, sp, 68
.LVL65:
	srli	a10, a10, 3
	bgeu	a10, a3, .L89
	j	.L95
.LVL66:
.L91:
.LBE26:
	.loc 1 244 0
	bnez.n	a3, .L90
	.loc 1 247 0
	l32i	a15, sp, 68
	l32i	a14, sp, 64
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a4
	call8	mbedtls_pk_verify
.LVL67:
	mov.n	a2, a10
	retw.n
.LVL68:
.L95:
.LBB31:
	.loc 1 235 0
	l32r	a2, .LC19
.LVL69:
.L89:
.LBE31:
	.loc 1 248 0
	retw.n
.LFE11:
	.size	mbedtls_pk_verify_ext, .-mbedtls_pk_verify_ext
	.section	.text.mbedtls_pk_debug,"ax",@progbits
	.literal_position
	.literal .LC20, -16000
	.literal .LC21, -16128
	.align	4
	.global	mbedtls_pk_debug
	.type	mbedtls_pk_debug, @function
mbedtls_pk_debug:
.LFB17:
	.loc 1 346 0
.LVL70:
	entry	sp, 32
.LCFI13:
	.loc 1 346 0
	mov.n	a11, a3
	.loc 1 348 0
	l32r	a8, .LC20
	.loc 1 347 0
	beqz.n	a2, .L103
	.loc 1 347 0 discriminator 1
	l32i.n	a9, a2, 0
	beqz.n	a9, .L103
	.loc 1 350 0
	l32i.n	a9, a9, 44
	.loc 1 351 0
	l32r	a8, .LC21
	.loc 1 350 0
	beqz.n	a9, .L103
	.loc 1 353 0
	l32i.n	a10, a2, 4
	callx8	a9
.LVL71:
	.loc 1 354 0
	movi.n	a8, 0
.L103:
	.loc 1 355 0
	mov.n	a2, a8
.LVL72:
	retw.n
.LFE17:
	.size	mbedtls_pk_debug, .-mbedtls_pk_debug
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC22:
	.string	"invalid PK"
	.section	.text.mbedtls_pk_get_name,"ax",@progbits
	.literal_position
	.literal .LC23, .LC22
	.align	4
	.global	mbedtls_pk_get_name
	.type	mbedtls_pk_get_name, @function
mbedtls_pk_get_name:
.LFB18:
	.loc 1 361 0
.LVL73:
	entry	sp, 32
.LCFI14:
	.loc 1 363 0
	l32r	a8, .LC23
	.loc 1 362 0
	beqz.n	a2, .L108
	.loc 1 362 0 discriminator 1
	l32i.n	a9, a2, 0
	beqz.n	a9, .L108
	.loc 1 365 0
	l32i.n	a8, a9, 4
.L108:
	.loc 1 366 0
	mov.n	a2, a8
.LVL74:
	retw.n
.LFE18:
	.size	mbedtls_pk_get_name, .-mbedtls_pk_get_name
	.section	.text.mbedtls_pk_get_type,"ax",@progbits
	.align	4
	.global	mbedtls_pk_get_type
	.type	mbedtls_pk_get_type, @function
mbedtls_pk_get_type:
.LFB19:
	.loc 1 372 0
.LVL75:
	entry	sp, 32
.LCFI15:
	.loc 1 374 0
	mov.n	a8, a2
	.loc 1 373 0
	beqz.n	a2, .L112
	.loc 1 373 0 discriminator 1
	l32i.n	a9, a2, 0
	.loc 1 374 0 discriminator 1
	mov.n	a8, a9
	.loc 1 373 0 discriminator 1
	beqz.n	a9, .L112
	.loc 1 376 0
	l32i.n	a8, a9, 0
.L112:
	.loc 1 377 0
	mov.n	a2, a8
.LVL76:
	retw.n
.LFE19:
	.size	mbedtls_pk_get_type, .-mbedtls_pk_get_type
	.section	.rodata.CSWTCH$8,"a",@progbits
	.align	4
	.type	CSWTCH$8, @object
	.size	CSWTCH$8, 16
CSWTCH$8:
	.word	mbedtls_rsa_info
	.word	mbedtls_eckey_info
	.word	mbedtls_eckeydh_info
	.word	mbedtls_ecdsa_info
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI6-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI9-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI10-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI11-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI12-.LFB11
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI13-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk_internal.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xee8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xc
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
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
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.4byte	0x90
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xbc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x38
	.4byte	0x10c
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x43
	.4byte	0xc3
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4e
	.4byte	0x122
	.uleb128 0xd
	.4byte	.LASF24
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12d
	.uleb128 0x7
	.4byte	0x117
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0xa8
	.4byte	0x132
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.4byte	0x173
	.uleb128 0xf
	.string	"s"
	.byte	0x7
	.byte	0xb8
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.string	"n"
	.byte	0x7
	.byte	0xb9
	.4byte	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"p"
	.byte	0x7
	.byte	0xba
	.4byte	0x173
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13d
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0xbc
	.4byte	0x148
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0xac
	.byte	0x8
	.byte	0x5f
	.4byte	0x24b
	.uleb128 0xf
	.string	"ver"
	.byte	0x8
	.byte	0x61
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x8
	.byte	0x62
	.4byte	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"N"
	.byte	0x8
	.byte	0x64
	.4byte	0x179
	.byte	0x8
	.uleb128 0xf
	.string	"E"
	.byte	0x8
	.byte	0x65
	.4byte	0x179
	.byte	0x14
	.uleb128 0xf
	.string	"D"
	.byte	0x8
	.byte	0x67
	.4byte	0x179
	.byte	0x20
	.uleb128 0xf
	.string	"P"
	.byte	0x8
	.byte	0x68
	.4byte	0x179
	.byte	0x2c
	.uleb128 0xf
	.string	"Q"
	.byte	0x8
	.byte	0x69
	.4byte	0x179
	.byte	0x38
	.uleb128 0xf
	.string	"DP"
	.byte	0x8
	.byte	0x6b
	.4byte	0x179
	.byte	0x44
	.uleb128 0xf
	.string	"DQ"
	.byte	0x8
	.byte	0x6c
	.4byte	0x179
	.byte	0x50
	.uleb128 0xf
	.string	"QP"
	.byte	0x8
	.byte	0x6d
	.4byte	0x179
	.byte	0x5c
	.uleb128 0xf
	.string	"RN"
	.byte	0x8
	.byte	0x6f
	.4byte	0x179
	.byte	0x68
	.uleb128 0xf
	.string	"RP"
	.byte	0x8
	.byte	0x71
	.4byte	0x179
	.byte	0x74
	.uleb128 0xf
	.string	"RQ"
	.byte	0x8
	.byte	0x72
	.4byte	0x179
	.byte	0x80
	.uleb128 0xf
	.string	"Vi"
	.byte	0x8
	.byte	0x74
	.4byte	0x179
	.byte	0x8c
	.uleb128 0xf
	.string	"Vf"
	.byte	0x8
	.byte	0x75
	.4byte	0x179
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x8
	.byte	0x77
	.4byte	0x3e
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x8
	.byte	0x7a
	.4byte	0x3e
	.byte	0xa8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0x82
	.4byte	0x184
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x4c
	.4byte	0x28d
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x2
	.byte	0x54
	.4byte	0x256
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2
	.byte	0x5a
	.4byte	0x2bd
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x2
	.byte	0x5c
	.4byte	0x10c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x2
	.byte	0x5d
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x2
	.byte	0x5f
	.4byte	0x298
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x65
	.4byte	0x2e7
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x2
	.byte	0x69
	.4byte	0x2c8
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0xc
	.byte	0x2
	.byte	0x6e
	.4byte	0x323
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x2
	.byte	0x70
	.4byte	0x2e7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x2
	.byte	0x71
	.4byte	0x97
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x2
	.byte	0x72
	.4byte	0x81
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x2
	.byte	0x73
	.4byte	0x2f2
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x2
	.byte	0x7b
	.4byte	0x339
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x30
	.byte	0x9
	.byte	0x24
	.4byte	0x3d6
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x9
	.byte	0x27
	.4byte	0x28d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x9
	.byte	0x2a
	.4byte	0x97
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2d
	.4byte	0x4ec
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x9
	.byte	0x30
	.4byte	0x501
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x9
	.byte	0x33
	.4byte	0x52f
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x9
	.byte	0x38
	.4byte	0x567
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x9
	.byte	0x3f
	.4byte	0x59f
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x9
	.byte	0x45
	.4byte	0x59f
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x9
	.byte	0x4b
	.4byte	0xa2
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x9
	.byte	0x4e
	.4byte	0x5aa
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x9
	.byte	0x51
	.4byte	0x5bb
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x9
	.byte	0x54
	.4byte	0x5d7
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x2
	.byte	0x80
	.4byte	0x3fb
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x2
	.byte	0x82
	.4byte	0x3fb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x2
	.byte	0x83
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x401
	.uleb128 0x7
	.4byte	0x32e
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x2
	.byte	0x84
	.4byte	0x3d6
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x2
	.byte	0xa4
	.4byte	0x41c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x422
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x44a
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x3e
	.uleb128 0x9
	.4byte	0x44a
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x8a
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x456
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x2
	.byte	0xa7
	.4byte	0x466
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46c
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x49e
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x49e
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x3e
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0x9
	.4byte	0x30
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x8a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x4bd
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x8a
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x2
	.byte	0xab
	.4byte	0x4c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ce
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x4dd
	.uleb128 0x9
	.4byte	0x81
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x4ec
	.uleb128 0x9
	.4byte	0xbc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4dd
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x501
	.uleb128 0x9
	.4byte	0x28d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f2
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x52f
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x507
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x567
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x8a
	.uleb128 0x9
	.4byte	0x44a
	.uleb128 0x9
	.4byte	0x49e
	.uleb128 0x9
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x535
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x59f
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x9
	.4byte	0x450
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x8a
	.uleb128 0x9
	.4byte	0x44a
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x49e
	.uleb128 0x9
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56d
	.uleb128 0x11
	.4byte	0x81
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a5
	.uleb128 0x12
	.4byte	0x5bb
	.uleb128 0x9
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x12
	.4byte	0x5d1
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0x5d1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x323
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c1
	.uleb128 0x13
	.byte	0x10
	.byte	0x9
	.byte	0x59
	.4byte	0x616
	.uleb128 0xf
	.string	"key"
	.byte	0x9
	.byte	0x5b
	.4byte	0x81
	.byte	0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x9
	.byte	0x5c
	.4byte	0x411
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x9
	.byte	0x5d
	.4byte	0x45b
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x9
	.byte	0x5e
	.4byte	0x4bd
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5f
	.4byte	0x5dd
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x2
	.byte	0x8d
	.4byte	0x63c
	.byte	0x3
	.4byte	0x63c
	.uleb128 0x15
	.string	"pk"
	.byte	0x2
	.byte	0x8d
	.4byte	0x642
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24b
	.uleb128 0x7
	.4byte	0x406
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa0
	.4byte	0x3e
	.byte	0x3
	.4byte	0x679
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa0
	.4byte	0x10c
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa0
	.4byte	0x44a
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x1
	.byte	0xa2
	.4byte	0x127
	.byte	0
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x32
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69c
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x32
	.4byte	0x69c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x406
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6da
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x3e
	.4byte	0x69c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0xebe
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4b
	.4byte	0x3fb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x703
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x4b
	.4byte	0x28d
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x65
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0x65
	.4byte	0x69c
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0x1
	.byte	0x65
	.4byte	0x3fb
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0x76
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b5
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0x76
	.4byte	0x69c
	.4byte	.LLST2
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0x76
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF55
	.byte	0x1
	.byte	0x77
	.4byte	0x411
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF54
	.byte	0x1
	.byte	0x78
	.4byte	0x45b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x79
	.4byte	0x4bd
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x7b
	.4byte	0x7b5
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7c
	.4byte	0x3fb
	.uleb128 0x23
	.4byte	.LVL12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x616
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x1
	.byte	0x94
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x800
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0x94
	.4byte	0x800
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.byte	0x94
	.4byte	0x28d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x642
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb1
	.4byte	0x3e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0xb1
	.4byte	0x69c
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0xb1
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.byte	0xb2
	.4byte	0x450
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb2
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.byte	0xb3
	.4byte	0x450
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF84
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x25
	.4byte	0x647
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0xb6
	.4byte	0x8f2
	.uleb128 0x26
	.4byte	0x662
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	0x657
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x28
	.4byte	0x66d
	.uleb128 0x27
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x26
	.4byte	0x662
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0x657
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x29
	.4byte	0x66d
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0xec9
	.4byte	0x8e5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL24
	.4byte	0xed4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x1
	.byte	0xfd
	.4byte	0x3e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4b
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0xfd
	.4byte	0x69c
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0xfd
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.byte	0xfe
	.4byte	0x450
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0xfe
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.byte	0xff
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF84
	.byte	0x1
	.byte	0xff
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x100
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x100
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.4byte	0x647
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.2byte	0x103
	.4byte	0xa1c
	.uleb128 0x26
	.4byte	0x662
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	0x657
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x28
	.4byte	0x66d
	.uleb128 0x27
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x26
	.4byte	0x662
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	0x657
	.4byte	.LLST17
	.uleb128 0x27
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x29
	.4byte	0x66d
	.4byte	.LLST18
	.uleb128 0x2a
	.4byte	.LVL34
	.4byte	0xec9
	.4byte	0xa0f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL35
	.4byte	0xed4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL38
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x110
	.4byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0e
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x110
	.4byte	0x69c
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x111
	.4byte	0x450
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x111
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x112
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x112
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x112
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x113
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x113
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.4byte	.LVL43
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x122
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd1
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x122
	.4byte	0x69c
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x123
	.4byte	0x450
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x123
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x124
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x124
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x124
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x125
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x125
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.4byte	.LVL46
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x134
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0a
	.uleb128 0x30
	.string	"pub"
	.byte	0x1
	.2byte	0x134
	.4byte	0x800
	.4byte	.LLST21
	.uleb128 0x32
	.string	"prv"
	.byte	0x1
	.2byte	0x134
	.4byte	0x800
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x31
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x14e
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x800
	.4byte	.LLST22
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x2
	.byte	0xf5
	.4byte	0x25
	.byte	0x3
	.4byte	0xc51
	.uleb128 0x15
	.string	"ctx"
	.byte	0x2
	.byte	0xf5
	.4byte	0x800
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x1
	.byte	0xc3
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde1
	.uleb128 0x1e
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc3
	.4byte	0x28d
	.4byte	.LLST23
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc3
	.4byte	0xbc
	.4byte	.LLST24
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0xc4
	.4byte	0x69c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc4
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.byte	0xc5
	.4byte	0x450
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sig"
	.byte	0x1
	.byte	0xc6
	.4byte	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF84
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.4byte	0xd95
	.uleb128 0x34
	.string	"ret"
	.byte	0x1
	.byte	0xd1
	.4byte	0x3e
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd2
	.4byte	0xde1
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	0xc35
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xde
	.4byte	0xd2c
	.uleb128 0x26
	.4byte	0xc45
	.4byte	.LLST27
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xc0a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0xc35
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xea
	.4byte	0xd59
	.uleb128 0x26
	.4byte	0xc45
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0xc0a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0xedf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL58
	.4byte	0x7bb
	.4byte	0xdb0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x806
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xde7
	.uleb128 0x7
	.4byte	0x2bd
	.uleb128 0x2f
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x159
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe31
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x159
	.4byte	0x800
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x159
	.4byte	0x5d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LVL71
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x168
	.4byte	0x97
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5c
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x168
	.4byte	0x800
	.4byte	.LLST30
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x173
	.4byte	0x28d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe87
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x173
	.4byte	0x800
	.4byte	.LLST31
	.byte	0
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x9
	.byte	0x63
	.4byte	0x401
	.uleb128 0x35
	.4byte	.LASF107
	.byte	0x9
	.byte	0x67
	.4byte	0x401
	.uleb128 0x35
	.4byte	.LASF108
	.byte	0x9
	.byte	0x68
	.4byte	0x401
	.uleb128 0x35
	.4byte	.LASF109
	.byte	0x9
	.byte	0x6c
	.4byte	0x401
	.uleb128 0x35
	.4byte	.LASF110
	.byte	0x9
	.byte	0x70
	.4byte	0x401
	.uleb128 0x36
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.byte	0x42
	.uleb128 0x36
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x5
	.byte	0x7e
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x5
	.byte	0xe9
	.uleb128 0x37
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x442
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1f
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2120
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2120
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2387
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2387
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE19
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
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
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"mbedtls_pk_rsa_alt_sign_func"
.LASF75:
	.string	"pk_type"
.LASF89:
	.string	"input"
.LASF34:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF104:
	.string	"mbedtls_pk_get_name"
.LASF110:
	.string	"mbedtls_rsa_alt_info"
.LASF72:
	.string	"hash_len"
.LASF23:
	.string	"mbedtls_md_type_t"
.LASF0:
	.string	"unsigned int"
.LASF107:
	.string	"mbedtls_eckey_info"
.LASF32:
	.string	"MBEDTLS_PK_RSA"
.LASF18:
	.string	"MBEDTLS_MD_SHA224"
.LASF98:
	.string	"mbedtls_pk_verify_ext"
.LASF77:
	.string	"mbedtls_pk_setup"
.LASF92:
	.string	"olen"
.LASF25:
	.string	"uint32_t"
.LASF66:
	.string	"mbedtls_pk_rsa_alt_key_len_func"
.LASF108:
	.string	"mbedtls_eckeydh_info"
.LASF73:
	.string	"mbedtls_pk_init"
.LASF105:
	.string	"mbedtls_pk_get_type"
.LASF61:
	.string	"mbedtls_pk_context"
.LASF102:
	.string	"mbedtls_pk_debug"
.LASF8:
	.string	"long long unsigned int"
.LASF21:
	.string	"MBEDTLS_MD_SHA512"
.LASF33:
	.string	"MBEDTLS_PK_ECKEY"
.LASF87:
	.string	"p_rng"
.LASF81:
	.string	"mbedtls_pk_can_do"
.LASF36:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF71:
	.string	"md_alg"
.LASF57:
	.string	"check_pair_func"
.LASF49:
	.string	"value"
.LASF115:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"mbedtls_mpi_uint"
.LASF39:
	.string	"mbedtls_pk_rsassa_pss_options"
.LASF5:
	.string	"size_t"
.LASF59:
	.string	"ctx_free_func"
.LASF91:
	.string	"output"
.LASF19:
	.string	"MBEDTLS_MD_SHA256"
.LASF116:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/pk.c"
.LASF69:
	.string	"mbedtls_pk_rsa"
.LASF93:
	.string	"osize"
.LASF100:
	.string	"rsa_alt"
.LASF35:
	.string	"MBEDTLS_PK_ECDSA"
.LASF31:
	.string	"MBEDTLS_PK_NONE"
.LASF24:
	.string	"mbedtls_md_info_t"
.LASF76:
	.string	"mbedtls_pk_info_from_type"
.LASF12:
	.string	"char"
.LASF64:
	.string	"mbedtls_pk_rsa_alt_decrypt_func"
.LASF52:
	.string	"can_do"
.LASF38:
	.string	"mbedtls_pk_type_t"
.LASF7:
	.string	"long long int"
.LASF106:
	.string	"mbedtls_rsa_info"
.LASF42:
	.string	"MBEDTLS_PK_DEBUG_NONE"
.LASF29:
	.string	"padding"
.LASF13:
	.string	"MBEDTLS_MD_NONE"
.LASF41:
	.string	"expected_salt_len"
.LASF37:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF68:
	.string	"mbedtls_rsa_alt_context"
.LASF79:
	.string	"mbedtls_pk_setup_rsa_alt"
.LASF40:
	.string	"mgf1_hash_id"
.LASF60:
	.string	"debug_func"
.LASF78:
	.string	"info"
.LASF50:
	.string	"mbedtls_pk_info_t"
.LASF55:
	.string	"decrypt_func"
.LASF114:
	.string	"mbedtls_rsa_rsassa_pss_verify_ext"
.LASF103:
	.string	"items"
.LASF28:
	.string	"mbedtls_rsa_context"
.LASF96:
	.string	"mbedtls_pk_get_bitlen"
.LASF54:
	.string	"sign_func"
.LASF99:
	.string	"options"
.LASF84:
	.string	"sig_len"
.LASF62:
	.string	"pk_info"
.LASF44:
	.string	"MBEDTLS_PK_DEBUG_ECP"
.LASF4:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF83:
	.string	"hash"
.LASF43:
	.string	"MBEDTLS_PK_DEBUG_MPI"
.LASF90:
	.string	"ilen"
.LASF80:
	.string	"md_info"
.LASF97:
	.string	"mbedtls_pk_get_len"
.LASF53:
	.string	"verify_func"
.LASF86:
	.string	"f_rng"
.LASF67:
	.string	"key_len_func"
.LASF48:
	.string	"name"
.LASF17:
	.string	"MBEDTLS_MD_SHA1"
.LASF117:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF14:
	.string	"MBEDTLS_MD_MD2"
.LASF15:
	.string	"MBEDTLS_MD_MD4"
.LASF16:
	.string	"MBEDTLS_MD_MD5"
.LASF10:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF70:
	.string	"pk_hashlen_helper"
.LASF74:
	.string	"mbedtls_pk_free"
.LASF113:
	.string	"mbedtls_md_get_size"
.LASF82:
	.string	"mbedtls_pk_verify"
.LASF94:
	.string	"mbedtls_pk_encrypt"
.LASF56:
	.string	"encrypt_func"
.LASF95:
	.string	"mbedtls_pk_check_pair"
.LASF88:
	.string	"mbedtls_pk_decrypt"
.LASF63:
	.string	"pk_ctx"
.LASF47:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF45:
	.string	"mbedtls_pk_debug_type"
.LASF6:
	.string	"__uint32_t"
.LASF112:
	.string	"mbedtls_md_info_from_type"
.LASF85:
	.string	"mbedtls_pk_sign"
.LASF109:
	.string	"mbedtls_ecdsa_info"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"mbedtls_mpi"
.LASF22:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"hash_id"
.LASF20:
	.string	"MBEDTLS_MD_SHA384"
.LASF51:
	.string	"get_bitlen"
.LASF101:
	.string	"pss_opts"
.LASF111:
	.string	"mbedtls_platform_zeroize"
.LASF58:
	.string	"ctx_alloc_func"
.LASF46:
	.string	"mbedtls_pk_debug_item"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
