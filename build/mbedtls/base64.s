	.file	"base64.c"
	.text
.Ltext0:
	.section	.text.mbedtls_base64_encode$part$0,"ax",@progbits
	.literal_position
	.literal .LC2, -1431655765
	.literal .LC3, 1073741823
	.literal .LC4, base64_enc_map
	.align	4
	.type	mbedtls_base64_encode$part$0, @function
mbedtls_base64_encode$part$0:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/base64.c"
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 90 0
	l32r	a8, .LC2
	movi.n	a9, 0
	muluh	a8, a6, a8
	movi.n	a11, 1
	srli	a8, a8, 1
	addx2	a12, a8, a8
	sub	a10, a6, a12
	movnez	a9, a11, a10
	add.n	a8, a9, a8
.LVL1:
	.loc 1 92 0
	l32r	a9, .LC3
	bgeu	a9, a8, .L2
	.loc 1 94 0
	movi.n	a2, -1
.LVL2:
	s32i.n	a2, a4, 0
	j	.L17
.LVL3:
.L2:
	.loc 1 100 0
	slli	a8, a8, 2
.LVL4:
	addi.n	a8, a8, 1
.LVL5:
	beqz.n	a2, .L14
	bltu	a3, a8, .L14
.LVL6:
	mov.n	a8, a2
	.loc 1 106 0
	mov.n	a10, a5
	.loc 1 114 0
	l32r	a13, .LC4
	j	.L7
.LVL7:
.L14:
	.loc 1 102 0
	s32i.n	a8, a4, 0
.LVL8:
.L17:
	.loc 1 103 0
	movi	a2, -0x2a
	retw.n
.LVL9:
.L8:
	.loc 1 110 0
	l8ui	a9, a10, 0
.LVL10:
	.loc 1 111 0
	l8ui	a14, a10, 1
.LVL11:
	.loc 1 114 0
	srai	a15, a9, 2
	.loc 1 115 0
	extui	a9, a9, 0, 2
.LVL12:
	.loc 1 114 0
	add.n	a15, a13, a15
	.loc 1 115 0
	slli	a9, a9, 4
	.loc 1 112 0
	l8ui	a11, a10, 2
.LVL13:
	.loc 1 114 0
	l8ui	a3, a15, 0
	.loc 1 115 0
	add.n	a9, a13, a9
	srai	a15, a14, 4
	add.n	a9, a9, a15
	.loc 1 116 0
	extui	a14, a14, 0, 4
.LVL14:
	.loc 1 114 0
	s8i	a3, a8, 0
.LVL15:
	.loc 1 116 0
	addx4	a14, a14, a13
	.loc 1 115 0
	l8ui	a3, a9, 0
	.loc 1 116 0
	srai	a9, a11, 6
	add.n	a14, a14, a9
	.loc 1 115 0
	s8i	a3, a8, 1
.LVL16:
	.loc 1 117 0
	extui	a11, a11, 0, 6
.LVL17:
	.loc 1 116 0
	l8ui	a3, a14, 0
	.loc 1 117 0
	add.n	a11, a13, a11
	.loc 1 116 0
	s8i	a3, a8, 2
.LVL18:
	.loc 1 117 0
	l8ui	a3, a11, 0
	addi.n	a10, a10, 3
.LVL19:
	s8i	a3, a8, 3
.LVL20:
	addi.n	a8, a8, 4
.LVL21:
.L7:
	sub	a11, a10, a5
	mov.n	a9, a8
.LVL22:
	.loc 1 108 0
	bltu	a11, a12, .L8
.LVL23:
	.loc 1 120 0
	bgeu	a11, a6, .L9
.LVL24:
	.loc 1 123 0
	addi.n	a11, a11, 1
.LVL25:
	.loc 1 122 0
	l8ui	a9, a10, 0
.LVL26:
	.loc 1 123 0
	movi.n	a5, 0
	bgeu	a11, a6, .L10
.LVL27:
	l8ui	a5, a10, 1
.LVL28:
.L10:
	.loc 1 125 0
	l32r	a12, .LC4
.LVL29:
	srai	a10, a9, 2
	.loc 1 126 0
	extui	a9, a9, 0, 2
.LVL30:
	.loc 1 125 0
	add.n	a10, a12, a10
	.loc 1 126 0
	slli	a9, a9, 4
	.loc 1 125 0
	l8ui	a3, a10, 0
	.loc 1 126 0
	add.n	a9, a12, a9
	srai	a10, a5, 4
	add.n	a9, a9, a10
	.loc 1 125 0
	s8i	a3, a8, 0
.LVL31:
	.loc 1 126 0
	l8ui	a3, a9, 0
	s8i	a3, a8, 1
	addi.n	a3, a8, 3
	.loc 1 128 0
	bgeu	a11, a6, .L11
.LVL32:
	.loc 1 129 0
	extui	a5, a5, 0, 4
	addx4	a5, a5, a12
	l8ui	a5, a5, 0
	j	.L16
.LVL33:
.L11:
	.loc 1 130 0
	movi.n	a5, 0x3d
.L16:
	s8i	a5, a8, 2
	.loc 1 132 0
	movi.n	a5, 0x3d
	addi.n	a9, a3, 1
.LVL34:
	s8i	a5, a3, 0
.LVL35:
.L9:
	.loc 1 135 0
	sub	a2, a9, a2
.LVL36:
	s32i.n	a2, a4, 0
	.loc 1 136 0
	movi.n	a2, 0
	s8i	a2, a9, 0
	.loc 1 138 0
	movi.n	a2, 0
	.loc 1 139 0
	retw.n
.LFE3:
	.size	mbedtls_base64_encode$part$0, .-mbedtls_base64_encode$part$0
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	4
	.global	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB0:
	.loc 1 79 0
.LVL37:
	entry	sp, 32
.LCFI1:
	.loc 1 79 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a14, a6
	.loc 1 84 0
	bnez.n	a6, .L19
	.loc 1 86 0
	s32i.n	a6, a12, 0
	.loc 1 87 0
	mov.n	a10, a6
	j	.L20
.L19:
	call8	mbedtls_base64_encode$part$0
.LVL38:
.L20:
	.loc 1 139 0
	mov.n	a2, a10
.LVL39:
	retw.n
.LFE0:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.literal_position
	.literal .LC5, base64_dec_map
	.literal .LC6, 4194313
	.align	4
	.global	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB1:
	.loc 1 146 0
.LVL40:
	entry	sp, 32
.LCFI2:
.LVL41:
	.loc 1 152 0
	movi.n	a10, 0
	mov.n	a8, a10
	mov.n	a9, a10
	.loc 1 180 0
	movi	a13, 0x7f
	.loc 1 183 0
	movi.n	a14, 0x3f
	.loc 1 166 0
	movi.n	a15, 0xd
	.loc 1 152 0
	j	.L22
.LVL42:
.L25:
	.loc 1 158 0
	addi.n	a9, a9, 1
.LVL43:
	.loc 1 159 0
	addi.n	a12, a12, 1
.LVL44:
	addi.n	a11, a11, -1
	bnez.n	a11, .L23
	j	.L24
.LVL45:
.L33:
	addi.n	a7, a9, 1
	movi.n	a12, 0
	sub	a11, a6, a9
	bgeu	a6, a7, .L23
	movi.n	a11, 1
.L23:
.LVL46:
	.loc 1 156 0 discriminator 1
	add.n	a7, a5, a9
	l8ui	a7, a7, 0
	beqi	a7, 32, .L25
.L24:
	.loc 1 163 0
	beq	a6, a9, .L26
	.loc 1 166 0
	sub	a7, a6, a9
	add.n	a11, a5, a9
	bltui	a7, 2, .L27
	.loc 1 166 0 is_stmt 0 discriminator 1
	l8ui	a7, a11, 0
	bne	a7, a15, .L27
	.loc 1 167 0 is_stmt 1
	l8ui	a7, a11, 1
	beqi	a7, 10, .L28
.L27:
	.loc 1 170 0
	l8ui	a7, a11, 0
	beqi	a7, 10, .L28
	.loc 1 174 0
	bnez.n	a12, .L49
	.loc 1 177 0
	movi.n	a11, 0x3d
	bne	a7, a11, .L30
	.loc 1 177 0 is_stmt 0 discriminator 1
	addi.n	a10, a10, 1
.LVL47:
	bgeui	a10, 3, .L49
.L30:
	.loc 1 180 0 is_stmt 1
	sext	a11, a7, 7
	bltz	a11, .L49
	.loc 1 180 0 is_stmt 0 discriminator 1
	l32r	a11, .LC5
	add.n	a7, a11, a7
	l8ui	a7, a7, 0
	beq	a7, a13, .L49
	.loc 1 183 0 is_stmt 1 discriminator 1
	beqz.n	a10, .L50
	bgeu	a14, a7, .L49
.L50:
	.loc 1 186 0
	addi.n	a8, a8, 1
.LVL48:
.L28:
	.loc 1 152 0 discriminator 2
	addi.n	a9, a9, 1
.LVL49:
.L22:
	.loc 1 152 0 is_stmt 0 discriminator 1
	bltu	a9, a6, .L33
.L26:
	.loc 1 189 0 is_stmt 1
	bnez.n	a8, .L34
	.loc 1 191 0
	s32i.n	a8, a4, 0
	.loc 1 192 0
	mov.n	a2, a8
.LVL50:
	retw.n
.LVL51:
.L34:
	.loc 1 200 0
	extui	a6, a8, 0, 3
.LVL52:
	addx2	a6, a6, a6
.LVL53:
	slli	a6, a6, 1
	srli	a8, a8, 3
.LVL54:
	.loc 1 202 0
	movi.n	a11, 1
	movi.n	a7, 0
	.loc 1 200 0
	addi.n	a6, a6, 7
	addx2	a8, a8, a8
	.loc 1 202 0
	moveqz	a7, a11, a2
	.loc 1 200 0
	srli	a6, a6, 3
	subx2	a10, a8, a10
.LVL55:
	.loc 1 202 0
	extui	a7, a7, 0, 8
	.loc 1 200 0
	add.n	a10, a6, a10
.LVL56:
	.loc 1 202 0
	bnez.n	a7, .L35
	bltu	a3, a10, .L35
	add.n	a9, a5, a9
	mov.n	a6, a2
	mov.n	a3, a7
.LVL57:
	movi.n	a10, 3
.LVL58:
	mov.n	a8, a7
	.loc 1 210 0
	movi.n	a13, 0x16
	.loc 1 213 0
	mov.n	a14, a7
	j	.L37
.LVL59:
.L35:
	.loc 1 204 0
	s32i.n	a10, a4, 0
	.loc 1 205 0
	movi	a2, -0x2a
.LVL60:
	retw.n
.LVL61:
.L43:
	.loc 1 210 0
	l8ui	a12, a5, 0
	addi	a7, a12, -10
	extui	a7, a7, 0, 8
	bltu	a13, a7, .L38
	l32r	a15, .LC6
	ssr	a7
	srl	a7, a15
	extui	a7, a7, 0, 1
	beq	a7, a11, .L39
.L38:
	.loc 1 213 0
	l32r	a15, .LC5
	.loc 1 214 0
	slli	a3, a3, 6
.LVL62:
	.loc 1 213 0
	add.n	a12, a15, a12
	l8ui	a7, a12, 0
	mov.n	a15, a14
	addi	a12, a7, -64
	moveqz	a15, a11, a12
	.loc 1 214 0
	extui	a7, a7, 0, 6
	.loc 1 216 0
	addi.n	a8, a8, 1
.LVL63:
	.loc 1 213 0
	sub	a10, a10, a15
.LVL64:
	.loc 1 214 0
	or	a3, a7, a3
.LVL65:
	.loc 1 216 0
	bnei	a8, 4, .L39
.LVL66:
	.loc 1 219 0
	beqz.n	a10, .L71
.LVL67:
	.loc 1 219 0 is_stmt 0 discriminator 1
	extui	a7, a3, 16, 16
	s8i	a7, a6, 0
	.loc 1 220 0 is_stmt 1 discriminator 1
	bnei	a10, 1, .L41
	.loc 1 219 0
	addi.n	a6, a6, 1
.LVL68:
	j	.L71
.LVL69:
.L41:
	.loc 1 220 0 discriminator 1
	srli	a7, a3, 8
	s8i	a7, a6, 1
	.loc 1 221 0 discriminator 1
	bnei	a10, 2, .L42
	.loc 1 220 0
	addi.n	a6, a6, 2
.LVL70:
	j	.L71
.LVL71:
.L42:
	.loc 1 221 0 discriminator 1
	s8i	a3, a6, 2
	addi.n	a6, a6, 3
.LVL72:
.L71:
	.loc 1 218 0 discriminator 1
	movi.n	a8, 0
.LVL73:
.L39:
	.loc 1 208 0 discriminator 2
	addi.n	a5, a5, 1
.LVL74:
.L37:
	.loc 1 208 0 is_stmt 0 discriminator 1
	bne	a5, a9, .L43
	.loc 1 225 0 is_stmt 1
	sub	a2, a6, a2
.LVL75:
	s32i.n	a2, a4, 0
	.loc 1 227 0
	movi.n	a2, 0
	retw.n
.LVL76:
.L49:
	.loc 1 175 0
	movi	a2, -0x2c
.LVL77:
	retw.n
.LFE1:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"  Base64 encoding test: "
.LC11:
	.string	"failed"
.LC13:
	.string	"passed\n  Base64 decoding test: "
.LC15:
	.string	"passed\n"
	.section	.text.mbedtls_base64_self_test,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC9, base64_test_dec
	.literal .LC10, base64_test_enc
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.global	mbedtls_base64_self_test
	.type	mbedtls_base64_self_test, @function
mbedtls_base64_self_test:
.LFB2:
	.loc 1 252 0
.LVL78:
	entry	sp, 176
.LCFI3:
	.loc 1 257 0
	beqz.n	a2, .L73
	.loc 1 258 0
	l32r	a10, .LC8
	call8	printf
.LVL79:
.L73:
.LBB4:
.LBB5:
	l32r	a3, .LC9
	movi	a11, 0x80
	movi.n	a14, 0x40
	mov.n	a13, a3
	add.n	a12, sp, a11
	mov.n	a10, sp
.LVL80:
	call8	mbedtls_base64_encode$part$0
.LVL81:
.LBE5:
.LBE4:
	.loc 1 262 0
	bnez.n	a10, .L74
	.loc 1 263 0 discriminator 1
	l32r	a4, .LC10
	movi.n	a12, 0x58
	mov.n	a11, sp
.LVL82:
	mov.n	a10, a4
	call8	memcmp
.LVL83:
	.loc 1 262 0 discriminator 1
	beqz.n	a10, .L75
.LVL84:
.L74:
	.loc 1 268 0
	movi.n	a3, 1
	.loc 1 266 0
	l32r	a10, .LC12
	.loc 1 265 0
	bnez.n	a2, .L89
	j	.L76
.LVL85:
.L75:
	.loc 1 271 0
	beqz.n	a2, .L77
	.loc 1 272 0
	l32r	a10, .LC14
	call8	printf
.LVL86:
.L77:
	.loc 1 276 0
	movi	a11, 0x80
	movi.n	a14, 0x58
	mov.n	a13, a4
	add.n	a12, sp, a11
	mov.n	a10, sp
.LVL87:
	call8	mbedtls_base64_decode
.LVL88:
	bnez.n	a10, .L74
	.loc 1 277 0 discriminator 1
	mov.n	a10, a3
	movi.n	a12, 0x40
	mov.n	a11, sp
.LVL89:
	call8	memcmp
.LVL90:
	mov.n	a3, a10
	.loc 1 276 0 discriminator 1
	bnez.n	a10, .L74
	.loc 1 285 0
	beqz.n	a2, .L76
	.loc 1 286 0
	l32r	a10, .LC16
.LVL91:
.L89:
	call8	puts
.LVL92:
.L76:
	.loc 1 289 0
	mov.n	a2, a3
.LVL93:
	retw.n
.LFE2:
	.size	mbedtls_base64_self_test, .-mbedtls_base64_self_test
	.section	.rodata.base64_test_enc,"a",@progbits
	.type	base64_test_enc, @object
	.size	base64_test_enc, 89
base64_test_enc:
	.string	"JEhuVodiWr2/F9mixBcaAZTtjx4Rs9cJDLbpEG8i7hPKswcFdsn6MWwINP+Nwmw4AEPpVJevUEvRQbqVMVoLlw=="
	.section	.rodata.base64_test_dec,"a",@progbits
	.type	base64_test_dec, @object
	.size	base64_test_dec, 64
base64_test_dec:
	.byte	36
	.byte	72
	.byte	110
	.byte	86
	.byte	-121
	.byte	98
	.byte	90
	.byte	-67
	.byte	-65
	.byte	23
	.byte	-39
	.byte	-94
	.byte	-60
	.byte	23
	.byte	26
	.byte	1
	.byte	-108
	.byte	-19
	.byte	-113
	.byte	30
	.byte	17
	.byte	-77
	.byte	-41
	.byte	9
	.byte	12
	.byte	-74
	.byte	-23
	.byte	16
	.byte	111
	.byte	34
	.byte	-18
	.byte	19
	.byte	-54
	.byte	-77
	.byte	7
	.byte	5
	.byte	118
	.byte	-55
	.byte	-6
	.byte	49
	.byte	108
	.byte	8
	.byte	52
	.byte	-1
	.byte	-115
	.byte	-62
	.byte	108
	.byte	56
	.byte	0
	.byte	67
	.byte	-23
	.byte	84
	.byte	-105
	.byte	-81
	.byte	80
	.byte	75
	.byte	-47
	.byte	65
	.byte	-70
	.byte	-107
	.byte	49
	.byte	90
	.byte	11
	.byte	-105
	.section	.rodata.base64_dec_map,"a",@progbits
	.type	base64_dec_map, @object
	.size	base64_dec_map, 128
base64_dec_map:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	62
	.byte	127
	.byte	127
	.byte	127
	.byte	63
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	127
	.byte	127
	.byte	127
	.byte	64
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.section	.rodata.base64_enc_map,"a",@progbits
	.type	base64_enc_map, @object
	.size	base64_enc_map, 64
base64_enc_map:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x53b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4d
	.4byte	0x45
	.byte	0x1
	.4byte	0x121
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0x4d
	.4byte	0x88
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4d
	.4byte	0x33
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4d
	.4byte	0x121
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.4byte	0x127
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4e
	.4byte	0x33
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x50
	.4byte	0x33
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x50
	.4byte	0x33
	.uleb128 0x9
	.string	"C1"
	.byte	0x1
	.byte	0x51
	.4byte	0x45
	.uleb128 0x9
	.string	"C2"
	.byte	0x1
	.byte	0x51
	.4byte	0x45
	.uleb128 0x9
	.string	"C3"
	.byte	0x1
	.byte	0x51
	.4byte	0x45
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x52
	.4byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xa
	.4byte	0x53
	.uleb128 0xb
	.4byte	0xa0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	0xb0
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	0xd1
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	0xe7
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	0xf0
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	0xf9
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	0x103
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	0x10d
	.4byte	.LLST7
	.uleb128 0xe
	.4byte	0x117
	.4byte	.LLST8
	.byte	0
	.uleb128 0xb
	.4byte	0xa0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x205
	.uleb128 0xc
	.4byte	0xb0
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	0xd1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	0xe7
	.uleb128 0xf
	.4byte	0xf0
	.uleb128 0xf
	.4byte	0xf9
	.uleb128 0xf
	.4byte	0x103
	.uleb128 0xf
	.4byte	0x10d
	.uleb128 0xf
	.4byte	0x117
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0x132
	.byte	0
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x90
	.4byte	0x45
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a9
	.uleb128 0x12
	.string	"dst"
	.byte	0x1
	.byte	0x90
	.4byte	0x88
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0x90
	.4byte	0x33
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0x90
	.4byte	0x121
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x91
	.4byte	0x127
	.4byte	.LLST12
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x91
	.4byte	0x33
	.4byte	.LLST13
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x93
	.4byte	0x33
	.4byte	.LLST14
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x93
	.4byte	0x33
	.4byte	.LLST15
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.byte	0x94
	.4byte	0x95
	.4byte	.LLST16
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x94
	.4byte	0x95
	.4byte	.LLST17
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x95
	.4byte	0x88
	.4byte	.LLST18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xfb
	.4byte	0x45
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x434
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0xfb
	.4byte	0x45
	.4byte	.LLST19
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xfd
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0xfe
	.4byte	0x127
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0xff
	.4byte	0x434
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x18
	.4byte	0xa0
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x106
	.4byte	0x38d
	.uleb128 0x19
	.4byte	0xdc
	.byte	0x40
	.uleb128 0xd
	.4byte	0xd1
	.uleb128 0x6
	.byte	0x3
	.4byte	base64_test_dec
	.byte	0x9f
	.uleb128 0xd
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.uleb128 0x19
	.4byte	0xbb
	.byte	0x80
	.uleb128 0xc
	.4byte	0xb0
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xf
	.4byte	0xe7
	.uleb128 0xf
	.4byte	0xf0
	.uleb128 0xf
	.4byte	0xf9
	.uleb128 0xf
	.4byte	0x103
	.uleb128 0xf
	.4byte	0x10d
	.uleb128 0xf
	.4byte	0x117
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0x132
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL79
	.4byte	0x519
	.4byte	0x3a4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0x524
	.4byte	0x3c5
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
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL86
	.4byte	0x519
	.4byte	0x3dc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL88
	.4byte	0x205
	.4byte	0x409
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL90
	.4byte	0x524
	.4byte	0x42a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL92
	.4byte	0x52f
	.byte	0
	.uleb128 0x1e
	.4byte	0x53
	.4byte	0x444
	.uleb128 0x1f
	.4byte	0x7a
	.byte	0x7f
	.byte	0
	.uleb128 0x1e
	.4byte	0x53
	.4byte	0x454
	.uleb128 0x1f
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x465
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_enc_map
	.uleb128 0xa
	.4byte	0x444
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.4byte	0x47b
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_dec_map
	.uleb128 0xa
	.4byte	0x434
	.uleb128 0x17
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe8
	.4byte	0x491
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_dec
	.uleb128 0xa
	.4byte	0x444
	.uleb128 0x1e
	.4byte	0x53
	.4byte	0x4a6
	.uleb128 0x1f
	.4byte	0x7a
	.byte	0x58
	.byte	0
	.uleb128 0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf4
	.4byte	0x4b7
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_enc
	.uleb128 0xa
	.4byte	0x496
	.uleb128 0x20
	.uleb128 0x5b
	.byte	0x9e
	.uleb128 0x59
	.byte	0x4a
	.byte	0x45
	.byte	0x68
	.byte	0x75
	.byte	0x56
	.byte	0x6f
	.byte	0x64
	.byte	0x69
	.byte	0x57
	.byte	0x72
	.byte	0x32
	.byte	0x2f
	.byte	0x46
	.byte	0x39
	.byte	0x6d
	.byte	0x69
	.byte	0x78
	.byte	0x42
	.byte	0x63
	.byte	0x61
	.byte	0x41
	.byte	0x5a
	.byte	0x54
	.byte	0x74
	.byte	0x6a
	.byte	0x78
	.byte	0x34
	.byte	0x52
	.byte	0x73
	.byte	0x39
	.byte	0x63
	.byte	0x4a
	.byte	0x44
	.byte	0x4c
	.byte	0x62
	.byte	0x70
	.byte	0x45
	.byte	0x47
	.byte	0x38
	.byte	0x69
	.byte	0x37
	.byte	0x68
	.byte	0x50
	.byte	0x4b
	.byte	0x73
	.byte	0x77
	.byte	0x63
	.byte	0x46
	.byte	0x64
	.byte	0x73
	.byte	0x6e
	.byte	0x36
	.byte	0x4d
	.byte	0x57
	.byte	0x77
	.byte	0x49
	.byte	0x4e
	.byte	0x50
	.byte	0x2b
	.byte	0x4e
	.byte	0x77
	.byte	0x6d
	.byte	0x77
	.byte	0x34
	.byte	0x41
	.byte	0x45
	.byte	0x50
	.byte	0x70
	.byte	0x56
	.byte	0x4a
	.byte	0x65
	.byte	0x76
	.byte	0x55
	.byte	0x45
	.byte	0x76
	.byte	0x52
	.byte	0x51
	.byte	0x62
	.byte	0x71
	.byte	0x56
	.byte	0x4d
	.byte	0x56
	.byte	0x6f
	.byte	0x4c
	.byte	0x6c
	.byte	0x77
	.byte	0x3d
	.byte	0x3d
	.byte	0
	.uleb128 0x21
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0xb2
	.uleb128 0x21
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0x16
	.uleb128 0x22
	.4byte	.LASF31
	.4byte	.LASF32
	.byte	0x7
	.byte	0
	.4byte	.LASF31
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x3a
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x8
	.byte	0x7a
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
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
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x12
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x12
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x76
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL78
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x3
	.4byte	base64_test_dec
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x6
	.byte	0x3
	.4byte	base64_test_dec
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1212
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88-1
	.4byte	.LVL89
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"base64_test_dec"
.LASF19:
	.string	"verbose"
.LASF26:
	.string	"memcmp"
.LASF24:
	.string	"base64_test_enc"
.LASF18:
	.string	"mbedtls_base64_self_test"
.LASF21:
	.string	"base64_enc_map"
.LASF14:
	.string	"dlen"
.LASF32:
	.string	"__builtin_puts"
.LASF4:
	.string	"unsigned char"
.LASF16:
	.string	"slen"
.LASF11:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF6:
	.string	"size_t"
.LASF28:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/base64.c"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"__uint32_t"
.LASF30:
	.string	"mbedtls_base64_encode"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF15:
	.string	"olen"
.LASF29:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF22:
	.string	"base64_dec_map"
.LASF25:
	.string	"printf"
.LASF5:
	.string	"short int"
.LASF20:
	.string	"buffer"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF31:
	.string	"puts"
.LASF3:
	.string	"signed char"
.LASF17:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
