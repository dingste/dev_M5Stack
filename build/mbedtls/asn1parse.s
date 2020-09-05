	.file	"asn1parse.c"
	.text
.Ltext0:
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/asn1parse.c"
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 54 0
	l32i.n	a8, a2, 0
	sub	a10, a3, a8
	bgei	a10, 1, .L2
.LVL1:
.L11:
	.loc 1 55 0
	movi	a2, -0x60
	retw.n
.LVL2:
.L2:
	.loc 1 57 0
	l8ui	a9, a8, 0
	sext	a11, a9, 7
	bltz	a11, .L4
	.loc 1 58 0
	addi.n	a9, a8, 1
	s32i.n	a9, a2, 0
	l8ui	a8, a8, 0
	s32i.n	a8, a4, 0
	j	.L5
.L4:
	.loc 1 61 0
	extui	a9, a9, 0, 7
	beqi	a9, 2, .L6
	bgeui	a9, 3, .L7
	beqi	a9, 1, .L8
	j	.L12
.L7:
	beqi	a9, 3, .L9
	beqi	a9, 4, .L10
	j	.L12
.L8:
	.loc 1 64 0
	beqi	a10, 1, .L11
	.loc 1 67 0
	l8ui	a9, a8, 1
	.loc 1 68 0
	addi.n	a8, a8, 2
	.loc 1 67 0
	s32i.n	a9, a4, 0
	j	.L16
.L6:
	.loc 1 72 0
	blti	a10, 3, .L11
	.loc 1 75 0
	l8ui	a9, a8, 1
	slli	a10, a9, 8
	l8ui	a9, a8, 2
	.loc 1 76 0
	addi.n	a8, a8, 3
	.loc 1 75 0
	or	a9, a10, a9
	s32i.n	a9, a4, 0
	j	.L16
.L9:
	.loc 1 80 0
	blti	a10, 4, .L11
	.loc 1 83 0
	l8ui	a9, a8, 1
	slli	a10, a9, 16
	l8ui	a9, a8, 2
	slli	a9, a9, 8
	or	a9, a10, a9
	l8ui	a10, a8, 3
	.loc 1 85 0
	addi.n	a8, a8, 4
	.loc 1 83 0
	or	a9, a9, a10
	s32i.n	a9, a4, 0
	j	.L16
.L10:
	.loc 1 89 0
	blti	a10, 5, .L11
	.loc 1 92 0
	l8ui	a9, a8, 1
	slli	a10, a9, 24
	l8ui	a9, a8, 2
	slli	a9, a9, 16
	or	a9, a10, a9
	l8ui	a10, a8, 4
	or	a10, a9, a10
	l8ui	a9, a8, 3
	.loc 1 94 0
	addi.n	a8, a8, 5
	.loc 1 92 0
	slli	a9, a9, 8
	or	a9, a10, a9
	s32i.n	a9, a4, 0
.L16:
	.loc 1 94 0
	s32i.n	a8, a2, 0
.L5:
	.loc 1 102 0
	l32i.n	a2, a2, 0
.LVL3:
	sub	a3, a3, a2
.LVL4:
	l32i.n	a2, a4, 0
	bltu	a3, a2, .L11
	.loc 1 105 0
	movi.n	a2, 0
	retw.n
.LVL5:
.L12:
	.loc 1 98 0
	movi	a2, -0x64
.LVL6:
	.loc 1 106 0
	retw.n
.LFE0:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB1:
	.loc 1 111 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	l32i.n	a8, a2, 0
	.loc 1 111 0
	mov.n	a10, a2
	.loc 1 112 0
	sub	a13, a3, a8
	.loc 1 111 0
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 113 0
	movi	a2, -0x60
.LVL8:
	.loc 1 112 0
	blti	a13, 1, .L18
	.loc 1 115 0
	l8ui	a13, a8, 0
	.loc 1 116 0
	movi	a2, -0x62
	.loc 1 115 0
	bne	a13, a5, .L18
	.loc 1 118 0
	addi.n	a8, a8, 1
	s32i.n	a8, a10, 0
	.loc 1 120 0
	call8	mbedtls_asn1_get_len
.LVL9:
	mov.n	a2, a10
.L18:
	.loc 1 121 0
	retw.n
.LFE1:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB2:
	.loc 1 126 0
.LVL10:
	entry	sp, 48
.LCFI2:
	.loc 1 130 0
	movi.n	a13, 1
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL11:
	bnez.n	a10, .L22
	.loc 1 133 0
	l32i.n	a11, sp, 0
	bnei	a11, 1, .L24
	.loc 1 136 0
	l32i.n	a8, a2, 0
	l8ui	a9, a8, 0
	.loc 1 137 0
	addi.n	a8, a8, 1
	.loc 1 136 0
	moveqz	a11, a10, a9
	s32i.n	a11, a4, 0
	.loc 1 137 0
	s32i.n	a8, a2, 0
	.loc 1 139 0
	j	.L22
.L24:
	.loc 1 134 0
	movi	a10, -0x64
.LVL12:
.L22:
	.loc 1 140 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE2:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB3:
	.loc 1 145 0
.LVL14:
	entry	sp, 48
.LCFI3:
	.loc 1 149 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL15:
	bnez.n	a10, .L26
	.loc 1 152 0
	l32i.n	a8, sp, 0
	addi.n	a8, a8, -1
	bgeui	a8, 4, .L31
	.loc 1 152 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	sext	a8, a8, 7
	bltz	a8, .L31
	.loc 1 155 0 is_stmt 1
	s32i.n	a10, a4, 0
	.loc 1 157 0
	j	.L27
.LVL16:
.L28:
	.loc 1 159 0
	l32i.n	a8, a2, 0
	l32i.n	a9, a4, 0
	slli	a10, a9, 8
	l8ui	a9, a8, 0
	.loc 1 160 0
	addi.n	a8, a8, 1
	.loc 1 159 0
	or	a9, a10, a9
	s32i.n	a9, a4, 0
	.loc 1 160 0
	s32i.n	a8, a2, 0
.L27:
	.loc 1 157 0
	l32i.n	a10, sp, 0
	addi.n	a8, a10, -1
	s32i.n	a8, sp, 0
	bnez.n	a10, .L28
	j	.L26
.LVL17:
.L31:
	.loc 1 153 0
	movi	a10, -0x64
.LVL18:
.L26:
	.loc 1 164 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE3:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB4:
	.loc 1 170 0
.LVL20:
	entry	sp, 48
.LCFI4:
	.loc 1 174 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL21:
	bnez.n	a10, .L33
	.loc 1 177 0
	l32i.n	a12, sp, 0
	l32i.n	a11, a2, 0
	mov.n	a10, a4
.LVL22:
	call8	mbedtls_mpi_read_binary
.LVL23:
	.loc 1 179 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
.LVL24:
.L33:
	.loc 1 182 0
	mov.n	a2, a10
.LVL25:
	retw.n
.LFE4:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB5:
	.loc 1 187 0
.LVL26:
	entry	sp, 32
.LCFI5:
	.loc 1 191 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL27:
	bnez.n	a10, .L36
	.loc 1 195 0
	l32i.n	a9, a4, 0
	beqz.n	a9, .L38
	.loc 1 200 0
	l32i.n	a8, a2, 0
	.loc 1 197 0
	addi.n	a9, a9, -1
	s32i.n	a9, a4, 0
	.loc 1 200 0
	l8ui	a8, a8, 0
	s8i	a8, a4, 4
	.loc 1 201 0
	bgeui	a8, 8, .L39
	.loc 1 203 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 206 0
	s32i.n	a8, a4, 8
	.loc 1 207 0
	l32i.n	a8, a2, 0
	add.n	a8, a8, a9
	s32i.n	a8, a2, 0
	.loc 1 212 0
	sub	a3, a3, a8
.LVL28:
	movi	a2, -0x66
.LVL29:
	movnez	a10, a2, a3
.LVL30:
	j	.L36
.LVL31:
.L38:
	.loc 1 196 0
	movi	a10, -0x60
.LVL32:
	j	.L36
.LVL33:
.L39:
	.loc 1 202 0
	movi	a10, -0x64
.LVL34:
.L36:
	.loc 1 213 0
	mov.n	a2, a10
	retw.n
.LFE5:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB6:
	.loc 1 220 0
.LVL35:
	entry	sp, 32
.LCFI6:
	.loc 1 223 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL36:
	bnez.n	a10, .L42
	.loc 1 226 0
	l32i.n	a8, a4, 0
	addi.n	a9, a8, -1
	s32i.n	a9, a4, 0
	bltui	a8, 2, .L43
	.loc 1 226 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 0
.LVL37:
	addi.n	a8, a4, 1
	s32i.n	a8, a2, 0
	l8ui	a2, a4, 0
.LVL38:
	beqz.n	a2, .L42
.L43:
	.loc 1 227 0 is_stmt 1
	movi	a10, -0x68
.LVL39:
.L42:
	.loc 1 230 0
	mov.n	a2, a10
	retw.n
.LFE6:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB7:
	.loc 1 241 0
.LVL40:
	entry	sp, 48
.LCFI7:
	.loc 1 247 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL41:
	bnez.n	a10, .L48
	.loc 1 251 0
	l32i.n	a6, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a6, a8
	beq	a3, a8, .L58
.LVL42:
.L53:
	.loc 1 252 0
	movi	a10, -0x66
	j	.L48
.LVL43:
.L52:
	.loc 1 257 0
	l8ui	a8, a8, 0
	.loc 1 259 0
	mov.n	a13, a5
	.loc 1 257 0
	s32i.n	a8, a4, 0
	.loc 1 259 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL44:
	bnez.n	a10, .L48
	.loc 1 262 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 263 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a4, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 266 0
	bgeu	a8, a3, .L50
	.loc 1 268 0
	movi.n	a11, 0x10
	movi.n	a10, 1
.LVL45:
	call8	mbedtls_calloc
.LVL46:
	s32i.n	a10, a4, 12
	.loc 1 271 0
	beqz.n	a10, .L56
	mov.n	a4, a10
.LVL47:
.L58:
	.loc 1 259 0
	addi.n	a6, a4, 4
.L50:
	.loc 1 254 0
	l32i.n	a8, a2, 0
	bltu	a8, a3, .L52
	.loc 1 279 0
	movi.n	a10, 0
	s32i.n	a10, a4, 12
	.loc 1 281 0
	l32i.n	a2, a2, 0
.LVL48:
	bne	a3, a2, .L53
	j	.L48
.LVL49:
.L56:
	.loc 1 272 0
	movi	a10, -0x6a
.LVL50:
.L48:
	.loc 1 285 0
	mov.n	a2, a10
	retw.n
.LFE7:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB8:
	.loc 1 290 0
.LVL51:
	entry	sp, 48
.LCFI8:
	.loc 1 294 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL52:
	mov.n	a6, a10
.LVL53:
	bnez.n	a10, .L60
	.loc 1 298 0
	l32i.n	a8, a2, 0
	.loc 1 299 0
	movi	a6, -0x60
.LVL54:
	.loc 1 298 0
	sub	a3, a3, a8
.LVL55:
	blti	a3, 1, .L60
	.loc 1 301 0
	l8ui	a3, a8, 0
	.loc 1 304 0
	movi.n	a13, 6
	.loc 1 301 0
	s32i.n	a3, a4, 0
	.loc 1 302 0
	l32i.n	a3, sp, 0
	.loc 1 304 0
	addi.n	a12, a4, 4
	.loc 1 302 0
	add.n	a3, a8, a3
.LVL56:
	.loc 1 304 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL57:
	call8	mbedtls_asn1_get_tag
.LVL58:
	mov.n	a6, a10
.LVL59:
	bnez.n	a10, .L60
	.loc 1 307 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 308 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a4, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 310 0
	bne	a3, a8, .L61
	.loc 1 312 0
	movi.n	a11, 0xc
	mov.n	a10, a5
	call8	mbedtls_platform_zeroize
.LVL60:
	.loc 1 313 0
	j	.L60
.L61:
	.loc 1 316 0
	l8ui	a4, a8, 0
.LVL61:
	.loc 1 317 0
	addi.n	a8, a8, 1
	.loc 1 316 0
	s32i.n	a4, a5, 0
	.loc 1 317 0
	s32i.n	a8, a2, 0
	.loc 1 319 0
	addi.n	a12, a5, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_len
.LVL62:
	mov.n	a6, a10
.LVL63:
	bnez.n	a10, .L60
	.loc 1 322 0
	l32i.n	a4, a2, 0
	s32i.n	a4, a5, 8
	.loc 1 323 0
	l32i.n	a4, a2, 0
	l32i.n	a5, a5, 4
.LVL64:
	add.n	a5, a4, a5
	s32i.n	a5, a2, 0
	.loc 1 328 0
	sub	a3, a3, a5
.LVL65:
	movi	a2, -0x66
.LVL66:
	movnez	a6, a2, a3
.LVL67:
.L60:
	.loc 1 329 0
	mov.n	a2, a6
	retw.n
.LFE8:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB9:
	.loc 1 334 0
.LVL68:
	entry	sp, 48
.LCFI9:
	.loc 1 338 0
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL69:
	.loc 1 340 0
	mov.n	a10, a2
	mov.n	a13, sp
	mov.n	a12, a4
	mov.n	a11, a3
	call8	mbedtls_asn1_get_alg
.LVL70:
	mov.n	a2, a10
.LVL71:
	bnez.n	a10, .L68
	.loc 1 343 0
	l32i.n	a8, sp, 0
	movi.n	a10, 1
	addi	a9, a8, -5
	mov.n	a3, a2
.LVL72:
	movnez	a3, a10, a9
	extui	a9, a3, 0, 8
	beqz.n	a9, .L73
	movnez	a2, a10, a8
.LVL73:
	extui	a8, a2, 0, 8
	.loc 1 344 0
	movi	a2, -0x68
	.loc 1 343 0
	bnez.n	a8, .L68
.L73:
	.loc 1 346 0 discriminator 1
	l32i.n	a8, sp, 4
	movi.n	a2, 0
	movi	a10, -0x68
	movnez	a2, a10, a8
.L68:
	.loc 1 347 0
	retw.n
.LFE9:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB10:
	.loc 1 350 0
.LVL74:
	entry	sp, 32
.LCFI10:
	.loc 1 351 0
	beqz.n	a2, .L77
	.loc 1 354 0
	l32i.n	a10, a2, 8
	call8	mbedtls_free
.LVL75:
	.loc 1 355 0
	l32i.n	a10, a2, 20
	call8	mbedtls_free
.LVL76:
	.loc 1 357 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL77:
.L77:
	retw.n
.LFE10:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB11:
	.loc 1 361 0
.LVL78:
	entry	sp, 32
.LCFI11:
	.loc 1 364 0
	j	.L83
.LVL79:
.L84:
	.loc 1 366 0
	l32i.n	a8, a3, 24
	.loc 1 367 0
	mov.n	a10, a3
	.loc 1 366 0
	s32i.n	a8, a2, 0
	.loc 1 367 0
	call8	mbedtls_asn1_free_named_data
.LVL80:
	.loc 1 368 0
	mov.n	a10, a3
	call8	mbedtls_free
.LVL81:
.L83:
	.loc 1 364 0
	l32i.n	a3, a2, 0
.LVL82:
	bnez.n	a3, .L84
	.loc 1 370 0
	retw.n
.LFE11:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB12:
	.loc 1 374 0
.LVL83:
	entry	sp, 32
.LCFI12:
	.loc 1 375 0
	j	.L86
.L89:
	.loc 1 377 0
	l32i.n	a8, a2, 4
	bne	a8, a4, .L87
	.loc 1 378 0 discriminator 1
	l32i.n	a10, a2, 8
	mov.n	a12, a4
	mov.n	a11, a3
	call8	memcmp
.LVL84:
	.loc 1 377 0 discriminator 1
	beqz.n	a10, .L88
.L87:
	.loc 1 383 0
	l32i.n	a2, a2, 24
.LVL85:
.L86:
	.loc 1 375 0
	bnez.n	a2, .L89
.L88:
	.loc 1 387 0
	retw.n
.LFE12:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
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
	.uleb128 0x30
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
	.uleb128 0x30
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
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x908
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x6
	.4byte	0x8e
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0xad
	.4byte	0xa0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xbb
	.4byte	0xe1
	.uleb128 0x8
	.string	"s"
	.byte	0x5
	.byte	0xbd
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x5
	.byte	0xbe
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0xbf
	.4byte	0xe1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc1
	.4byte	0xb6
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x86
	.4byte	0x121
	.uleb128 0x8
	.string	"tag"
	.byte	0x6
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.byte	0x8a
	.4byte	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x8c
	.4byte	0xf2
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0xc
	.byte	0x6
	.byte	0x91
	.4byte	0x15b
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0x93
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x94
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.byte	0x95
	.4byte	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0x97
	.4byte	0x12c
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x10
	.byte	0x6
	.byte	0x9c
	.4byte	0x18b
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x9e
	.4byte	0x121
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9f
	.4byte	0x18b
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x166
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa1
	.4byte	0x166
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x20
	.byte	0x6
	.byte	0xa6
	.4byte	0x1d9
	.uleb128 0x8
	.string	"oid"
	.byte	0x6
	.byte	0xa8
	.4byte	0x121
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x6
	.byte	0xa9
	.4byte	0x121
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0xaa
	.4byte	0x1d9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0xad
	.4byte	0x19c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x32
	.4byte	0x3e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x32
	.4byte	0x22d
	.4byte	.LLST0
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0x33
	.4byte	0x233
	.4byte	.LLST1
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x34
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x88
	.uleb128 0x5
	.byte	0x4
	.4byte	0x239
	.uleb128 0x6
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2af
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x6c
	.4byte	0x22d
	.4byte	.LLST2
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0x6d
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x6e
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0x6e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x1ea
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7b
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32e
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.4byte	0x22d
	.4byte	.LLST3
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0x7c
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"val"
	.byte	0x1
	.byte	0x7d
	.4byte	0x32e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x80
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x244
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8e
	.4byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b3
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x8e
	.4byte	0x22d
	.4byte	.LLST5
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0x8f
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"val"
	.byte	0x1
	.byte	0x90
	.4byte	0x32e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.4byte	0x3e
	.4byte	.LLST6
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x93
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0x244
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.4byte	0x22d
	.4byte	.LLST7
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0xa8
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"X"
	.byte	0x1
	.byte	0xa9
	.4byte	0x444
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.4byte	0x3e
	.4byte	.LLST8
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x244
	.4byte	0x433
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xd
	.4byte	.LVL23
	.4byte	0x8ca
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe7
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb9
	.4byte	0x3e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x22d
	.4byte	.LLST9
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0xb9
	.4byte	0x233
	.4byte	.LLST10
	.uleb128 0xc
	.string	"bs"
	.byte	0x1
	.byte	0xba
	.4byte	0x4bc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0xbc
	.4byte	0x3e
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LVL27
	.4byte	0x244
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15b
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0xda
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x535
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0xda
	.4byte	0x22d
	.4byte	.LLST12
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0xda
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0xdb
	.4byte	0x23e
	.4byte	.LLST13
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0xdd
	.4byte	0x3e
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LVL36
	.4byte	0x244
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0xed
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x611
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0xed
	.4byte	0x22d
	.4byte	.LLST15
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0xee
	.4byte	0x233
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"cur"
	.byte	0x1
	.byte	0xef
	.4byte	0x611
	.4byte	.LLST16
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0xf0
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0xf2
	.4byte	0x3e
	.4byte	.LLST17
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xf3
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0xf4
	.4byte	0x617
	.4byte	.LLST18
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0x244
	.4byte	0x5d6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL44
	.4byte	0x244
	.4byte	0x5fc
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL46
	.4byte	0x8d6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x191
	.uleb128 0x5
	.byte	0x4
	.4byte	0x121
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x11f
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x715
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x22d
	.4byte	.LLST19
	.uleb128 0x13
	.string	"end"
	.byte	0x1
	.2byte	0x120
	.4byte	0x233
	.4byte	.LLST20
	.uleb128 0x13
	.string	"alg"
	.byte	0x1
	.2byte	0x121
	.4byte	0x617
	.4byte	.LLST21
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x121
	.4byte	0x617
	.4byte	.LLST22
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.2byte	0x123
	.4byte	0x3e
	.4byte	.LLST23
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.2byte	0x124
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL52
	.4byte	0x244
	.4byte	0x6ba
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL58
	.4byte	0x244
	.4byte	0x6df
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x11
	.4byte	.LVL60
	.4byte	0x8e1
	.4byte	0x6f8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xd
	.4byte	.LVL62
	.4byte	0x1ea
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x14b
	.4byte	0x3e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bb
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x22d
	.4byte	.LLST24
	.uleb128 0x13
	.string	"end"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x233
	.4byte	.LLST25
	.uleb128 0x17
	.string	"alg"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x617
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x3e
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x150
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LVL69
	.4byte	0x8ec
	.4byte	0x798
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xd
	.4byte	.LVL70
	.4byte	0x61d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x808
	.uleb128 0x17
	.string	"cur"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x808
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL75
	.4byte	0x8f5
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0x8f5
	.uleb128 0xd
	.4byte	.LVL77
	.4byte	0x8e1
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1df
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x168
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x867
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x168
	.4byte	0x867
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.string	"cur"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x808
	.4byte	.LLST27
	.uleb128 0x11
	.4byte	.LVL80
	.4byte	0x7bb
	.4byte	0x856
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL81
	.4byte	0x8f5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x808
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x174
	.4byte	0x808
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ca
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x174
	.4byte	0x808
	.4byte	.LLST28
	.uleb128 0x17
	.string	"oid"
	.byte	0x1
	.2byte	0x175
	.4byte	0x95
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.2byte	0x175
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LVL84
	.4byte	0x900
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x1f0
	.uleb128 0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x9f
	.uleb128 0x1e
	.4byte	.LASF47
	.4byte	.LASF47
	.uleb128 0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x9
	.byte	0x16
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL51
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"next"
.LASF41:
	.string	"mbedtls_platform_zeroize"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF26:
	.string	"mbedtls_asn1_get_int"
.LASF47:
	.string	"memset"
.LASF31:
	.string	"mbedtls_asn1_get_alg"
.LASF38:
	.string	"list"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"next_merged"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"head"
.LASF19:
	.string	"mbedtls_asn1_sequence"
.LASF11:
	.string	"long unsigned int"
.LASF23:
	.string	"mbedtls_asn1_get_len"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"size_t"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF13:
	.string	"uint32_t"
.LASF42:
	.string	"mbedtls_free"
.LASF32:
	.string	"params"
.LASF43:
	.string	"memcmp"
.LASF27:
	.string	"mbedtls_asn1_get_mpi"
.LASF6:
	.string	"__uint32_t"
.LASF15:
	.string	"mbedtls_mpi"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"unused_bits"
.LASF45:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/asn1parse.c"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"mbedtls_asn1_bitstring"
.LASF37:
	.string	"mbedtls_asn1_find_named_data"
.LASF29:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF46:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF10:
	.string	"sizetype"
.LASF28:
	.string	"mbedtls_asn1_get_bitstring"
.LASF30:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF34:
	.string	"mbedtls_asn1_free_named_data"
.LASF21:
	.string	"mbedtls_asn1_named_data"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"mbedtls_calloc"
.LASF35:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF39:
	.string	"mbedtls_mpi_read_binary"
.LASF25:
	.string	"mbedtls_asn1_get_bool"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF33:
	.string	"mbedtls_asn1_get_alg_null"
.LASF24:
	.string	"mbedtls_asn1_get_tag"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
