	.file	"ecdsa.c"
	.text
.Ltext0:
	.section	.text.derive_mpi,"ax",@progbits
	.align	4
	.type	derive_mpi, @function
derive_mpi:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ecdsa.c"
	.loc 1 51 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 54 0
	l32i	a11, a2, 92
	.loc 1 56 0
	mov.n	a10, a3
	.loc 1 54 0
	addi.n	a11, a11, 7
	srli	a11, a11, 3
.LVL2:
	minu	a5, a11, a5
.LVL3:
	.loc 1 56 0
	mov.n	a12, a5
	mov.n	a11, a4
.LVL4:
	call8	mbedtls_mpi_read_binary
.LVL5:
	mov.n	a4, a10
.LVL6:
	bnez.n	a10, .L2
	.loc 1 57 0
	l32i	a11, a2, 92
	slli	a5, a5, 3
.LVL7:
	bltu	a11, a5, .L3
.LVL8:
.L5:
	.loc 1 61 0
	addi	a5, a2, 76
	mov.n	a11, a5
	mov.n	a10, a3
	call8	mbedtls_mpi_cmp_mpi
.LVL9:
	bgez	a10, .L4
	j	.L2
.LVL10:
.L3:
	.loc 1 58 0
	sub	a11, a5, a11
	mov.n	a10, a3
	call8	mbedtls_mpi_shift_r
.LVL11:
	beqz.n	a10, .L5
	j	.L6
.LVL12:
.L4:
	.loc 1 62 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a3
	call8	mbedtls_mpi_sub_mpi
.LVL13:
.L6:
	mov.n	a4, a10
.L2:
.LVL14:
	.loc 1 66 0
	mov.n	a2, a4
.LVL15:
	retw.n
.LFE0:
	.size	derive_mpi, .-derive_mpi
	.section	.text.mbedtls_ecdsa_sign,"ax",@progbits
	.literal_position
	.literal .LC0, -19712
	.literal .LC1, -20352
	.literal .LC2, -19584
	.align	4
	.global	mbedtls_ecdsa_sign
	.type	mbedtls_ecdsa_sign, @function
mbedtls_ecdsa_sign:
.LFB1:
	.loc 1 76 0
.LVL16:
	entry	sp, 144
.LCFI1:
	.loc 1 76 0
	s32i	a3, sp, 84
	.loc 1 82 0
	l32i	a3, a2, 84
.LVL17:
	.loc 1 76 0
	s32i	a7, sp, 92
	s32i	a6, sp, 88
	mov.n	a7, a2
.LVL18:
	.loc 1 83 0
	l32r	a2, .LC1
.LVL19:
	.loc 1 82 0
	beqz.n	a3, .L8
	.loc 1 86 0
	movi.n	a11, 1
	mov.n	a10, a5
	call8	mbedtls_mpi_cmp_int
.LVL20:
	bgez	a10, .L9
.LVL21:
.L10:
	.loc 1 87 0
	l32r	a2, .LC2
	retw.n
.LVL22:
.L9:
	.loc 1 86 0 discriminator 1
	addi	a6, a7, 76
.LVL23:
	mov.n	a11, a6
	mov.n	a10, a5
	call8	mbedtls_mpi_cmp_mpi
.LVL24:
	bgez	a10, .L10
	.loc 1 89 0
	mov.n	a10, sp
	call8	mbedtls_ecp_point_init
.LVL25:
	.loc 1 90 0
	addi	a3, sp, 60
	mov.n	a10, a3
	call8	mbedtls_mpi_init
.LVL26:
	addi	a10, sp, 48
	call8	mbedtls_mpi_init
.LVL27:
	addi	a10, sp, 36
	movi.n	a2, 0xc
	call8	mbedtls_mpi_init
.LVL28:
	s32i	a2, sp, 80
.LVL29:
.L15:
	movi.n	a2, 0xc
.LVL30:
.L12:
	.loc 1 102 0
	l32i	a14, sp, 148
	l32i	a13, sp, 144
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a7
	call8	mbedtls_ecp_gen_keypair
.LVL31:
	mov.n	a8, a10
.LVL32:
	bnez.n	a10, .L11
	.loc 1 103 0
	l32i	a10, sp, 84
	mov.n	a12, a6
	mov.n	a11, sp
	call8	mbedtls_mpi_mod_mpi
.LVL33:
	mov.n	a8, a10
.LVL34:
	bnez.n	a10, .L11
.LVL35:
	addi.n	a2, a2, -1
.LVL36:
	.loc 1 105 0
	beqz.n	a2, .L19
	.loc 1 111 0
	mov.n	a11, a10
	l32i	a10, sp, 84
	call8	mbedtls_mpi_cmp_int
.LVL37:
	beqz.n	a10, .L12
	.loc 1 116 0
	l32i	a13, sp, 92
	l32i	a12, sp, 88
	addi	a11, sp, 48
	mov.n	a10, a7
	call8	derive_mpi
.LVL38:
	mov.n	a8, a10
.LVL39:
	bnez.n	a10, .L11
	movi.n	a2, 0x1f
.LVL40:
.L13:
.LBB4:
	.loc 1 125 0
	l32i	a9, a7, 92
	.loc 1 126 0
	l32i	a13, sp, 148
	.loc 1 125 0
	addi.n	a9, a9, 7
	srli	a9, a9, 3
.LVL41:
	.loc 1 126 0
	l32i	a12, sp, 144
	mov.n	a11, a9
	addi	a10, sp, 36
	s32i	a9, sp, 96
	call8	mbedtls_mpi_fill_random
.LVL42:
	mov.n	a8, a10
.LVL43:
	l32i	a9, sp, 96
	bnez.n	a10, .L11
	.loc 1 127 0
	l32i	a11, a7, 92
	addi	a10, sp, 36
	subx8	a11, a9, a11
	call8	mbedtls_mpi_shift_r
.LVL44:
	mov.n	a8, a10
.LVL45:
	bnez.n	a10, .L11
.LVL46:
	addi.n	a2, a2, -1
.LVL47:
	.loc 1 130 0
	beqz.n	a2, .L18
.LBE4:
	.loc 1 133 0
	movi.n	a11, 1
	addi	a10, sp, 36
	call8	mbedtls_mpi_cmp_int
.LVL48:
	.loc 1 134 0
	bltz	a10, .L13
	.loc 1 134 0 is_stmt 0 discriminator 1
	mov.n	a11, a6
	addi	a10, sp, 36
	call8	mbedtls_mpi_cmp_mpi
.LVL49:
	.loc 1 133 0 is_stmt 1 discriminator 1
	bgez	a10, .L13
	.loc 1 139 0
	l32i	a11, sp, 84
	mov.n	a12, a5
	mov.n	a10, a4
	call8	mbedtls_mpi_mul_mpi
.LVL50:
	mov.n	a8, a10
.LVL51:
	bnez.n	a10, .L11
	.loc 1 140 0
	addi	a11, sp, 48
	mov.n	a12, a4
	mov.n	a10, a11
	call8	mbedtls_mpi_add_mpi
.LVL52:
	mov.n	a8, a10
.LVL53:
	bnez.n	a10, .L11
	.loc 1 141 0
	addi	a11, sp, 48
	addi	a12, sp, 36
	mov.n	a10, a11
	call8	mbedtls_mpi_mul_mpi
.LVL54:
	mov.n	a8, a10
.LVL55:
	bnez.n	a10, .L11
	.loc 1 142 0
	addi	a12, sp, 36
	mov.n	a11, a3
	mov.n	a10, a3
	call8	mbedtls_mpi_mul_mpi
.LVL56:
	mov.n	a8, a10
.LVL57:
	bnez.n	a10, .L11
	.loc 1 143 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a4
	call8	mbedtls_mpi_inv_mod
.LVL58:
	mov.n	a8, a10
.LVL59:
	bnez.n	a10, .L11
	.loc 1 144 0
	addi	a12, sp, 48
	mov.n	a11, a4
	mov.n	a10, a4
	call8	mbedtls_mpi_mul_mpi
.LVL60:
	mov.n	a8, a10
.LVL61:
	bnez.n	a10, .L11
	.loc 1 145 0
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a4
	call8	mbedtls_mpi_mod_mpi
.LVL62:
	mov.n	a8, a10
.LVL63:
	bnez.n	a10, .L11
.LVL64:
	l32i	a2, sp, 80
.LVL65:
	addi.n	a2, a2, -1
	s32i	a2, sp, 80
.LVL66:
	.loc 1 147 0
	beqz.n	a2, .L19
	.loc 1 153 0
	mov.n	a11, a10
	mov.n	a10, a4
	s32i	a8, sp, 96
	call8	mbedtls_mpi_cmp_int
.LVL67:
	l32i	a8, sp, 96
	beqz.n	a10, .L15
	j	.L11
.LVL68:
.L19:
	.loc 1 149 0
	l32r	a8, .LC0
.LVL69:
.L11:
	.loc 1 156 0
	mov.n	a10, sp
	s32i	a8, sp, 96
	call8	mbedtls_ecp_point_free
.LVL70:
	.loc 1 157 0
	addi	a10, sp, 60
	call8	mbedtls_mpi_free
.LVL71:
	addi	a10, sp, 48
	call8	mbedtls_mpi_free
.LVL72:
	addi	a10, sp, 36
	call8	mbedtls_mpi_free
.LVL73:
	.loc 1 159 0
	l32i	a8, sp, 96
	mov.n	a2, a8
	retw.n
.LVL74:
.L18:
.LBB5:
	.loc 1 131 0
	l32r	a2, .LC0
.LVL75:
.L8:
.LBE5:
	.loc 1 160 0
	retw.n
.LFE1:
	.size	mbedtls_ecdsa_sign, .-mbedtls_ecdsa_sign
	.section	.text.mbedtls_ecdsa_sign_det,"ax",@progbits
	.literal_position
	.literal .LC3, -20352
	.literal .LC4, mbedtls_hmac_drbg_random
	.align	4
	.global	mbedtls_ecdsa_sign_det
	.type	mbedtls_ecdsa_sign_det, @function
mbedtls_ecdsa_sign_det:
.LFB2:
	.loc 1 170 0
.LVL76:
	entry	sp, 320
.LCFI2:
	.loc 1 170 0
	s32i	a3, sp, 276
	.loc 1 178 0
	l32i	a10, sp, 320
	.loc 1 174 0
	l32i	a3, a2, 92
.LVL77:
	.loc 1 170 0
	s32i	a7, sp, 272
	s32i	a4, sp, 280
	.loc 1 174 0
	addi.n	a3, a3, 7
	.loc 1 178 0
	call8	mbedtls_md_info_from_type
.LVL78:
	.loc 1 170 0
	mov.n	a7, a2
.LVL79:
	.loc 1 174 0
	srli	a3, a3, 3
.LVL80:
	.loc 1 178 0
	mov.n	a2, a10
.LVL81:
	.loc 1 179 0
	l32r	a8, .LC3
	.loc 1 178 0
	beqz.n	a10, .L25
	.loc 1 181 0
	movi	a10, 0xf8
	add.n	a10, a10, sp
	call8	mbedtls_mpi_init
.LVL82:
	.loc 1 182 0
	movi	a8, 0x94
	add.n	a4, sp, a8
.LVL83:
	mov.n	a10, a4
	call8	mbedtls_hmac_drbg_init
.LVL84:
	.loc 1 185 0
	mov.n	a12, a3
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	mbedtls_mpi_write_binary
.LVL85:
	mov.n	a8, a10
.LVL86:
	bnez.n	a10, .L26
	.loc 1 186 0
	l32i	a13, sp, 272
	movi	a11, 0xf8
	mov.n	a12, a6
	add.n	a11, a11, sp
	mov.n	a10, a7
	call8	derive_mpi
.LVL87:
	mov.n	a8, a10
.LVL88:
	bnez.n	a10, .L26
	.loc 1 187 0
	addi	a8, sp, 16
.LVL89:
	movi	a10, 0xf8
.LVL90:
	add.n	a11, a8, a3
	mov.n	a12, a3
	add.n	a10, a10, sp
	call8	mbedtls_mpi_write_binary
.LVL91:
	mov.n	a8, a10
.LVL92:
	bnez.n	a10, .L26
	.loc 1 188 0
	mov.n	a11, a2
	slli	a13, a3, 1
	addi	a12, sp, 16
	mov.n	a10, a4
	call8	mbedtls_hmac_drbg_seed_buf
.LVL93:
	.loc 1 190 0
	l32r	a2, .LC4
.LVL94:
	l32i	a15, sp, 272
	l32i	a12, sp, 280
	l32i	a11, sp, 276
	s32i.n	a4, sp, 4
	s32i.n	a2, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a10, a7
	call8	mbedtls_ecdsa_sign
.LVL95:
	mov.n	a8, a10
.LVL96:
.L26:
	.loc 1 194 0
	addi	a2, sp, 16
	movi	a10, 0x84
	add.n	a10, a2, a10
	s32i	a8, sp, 284
	call8	mbedtls_hmac_drbg_free
.LVL97:
	.loc 1 195 0
	movi	a10, 0xe8
	addi	a2, sp, 16
	add.n	a10, a2, a10
	call8	mbedtls_mpi_free
.LVL98:
	.loc 1 197 0
	l32i	a8, sp, 284
.L25:
	.loc 1 198 0
	mov.n	a2, a8
	retw.n
.LFE2:
	.size	mbedtls_ecdsa_sign_det, .-mbedtls_ecdsa_sign_det
	.section	.text.mbedtls_ecdsa_verify,"ax",@progbits
	.literal_position
	.literal .LC5, -19968
	.literal .LC6, -20352
	.align	4
	.global	mbedtls_ecdsa_verify
	.type	mbedtls_ecdsa_verify, @function
mbedtls_ecdsa_verify:
.LFB3:
	.loc 1 209 0
.LVL99:
	entry	sp, 144
.LCFI3:
	.loc 1 214 0
	mov.n	a10, sp
	.loc 1 209 0
	s32i	a3, sp, 96
	s32i	a4, sp, 100
	.loc 1 214 0
	call8	mbedtls_ecp_point_init
.LVL100:
	.loc 1 215 0
	addi	a10, sp, 72
	call8	mbedtls_mpi_init
.LVL101:
	addi	a10, sp, 60
	call8	mbedtls_mpi_init
.LVL102:
	addi	a10, sp, 48
	call8	mbedtls_mpi_init
.LVL103:
	addi	a10, sp, 36
	call8	mbedtls_mpi_init
.LVL104:
	.loc 1 218 0
	l32i	a3, a2, 84
.LVL105:
	.loc 1 209 0
	.loc 1 219 0
	l32r	a8, .LC6
	.loc 1 218 0
	beqz.n	a3, .L29
	.loc 1 224 0
	movi.n	a11, 1
	mov.n	a10, a6
	call8	mbedtls_mpi_cmp_int
.LVL106:
	bltz	a10, .L30
	.loc 1 224 0 is_stmt 0 discriminator 1
	addi	a3, a2, 76
	mov.n	a11, a3
	mov.n	a10, a6
	call8	mbedtls_mpi_cmp_mpi
.LVL107:
	bgez	a10, .L30
	.loc 1 225 0 is_stmt 1 discriminator 2
	movi.n	a11, 1
	mov.n	a10, a7
	call8	mbedtls_mpi_cmp_int
.LVL108:
	.loc 1 224 0 discriminator 2
	bltz	a10, .L30
	.loc 1 225 0
	mov.n	a11, a3
	mov.n	a10, a7
	call8	mbedtls_mpi_cmp_mpi
.LVL109:
	bgez	a10, .L30
	.loc 1 234 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	mbedtls_ecp_check_pubkey
.LVL110:
	mov.n	a4, a10
.LVL111:
	bnez.n	a10, .L31
	.loc 1 239 0
	l32i	a13, sp, 100
	l32i	a12, sp, 96
	addi	a11, sp, 72
	mov.n	a10, a2
	call8	derive_mpi
.LVL112:
	mov.n	a4, a10
.LVL113:
	bnez.n	a10, .L31
	.loc 1 244 0
	mov.n	a12, a3
	mov.n	a11, a7
	addi	a10, sp, 60
	call8	mbedtls_mpi_inv_mod
.LVL114:
	mov.n	a4, a10
.LVL115:
	bnez.n	a10, .L31
	.loc 1 246 0
	addi	a12, sp, 60
	addi	a11, sp, 72
	addi	a10, sp, 48
	call8	mbedtls_mpi_mul_mpi
.LVL116:
	mov.n	a4, a10
.LVL117:
	bnez.n	a10, .L31
	.loc 1 247 0
	addi	a11, sp, 48
	mov.n	a12, a3
	mov.n	a10, a11
	call8	mbedtls_mpi_mod_mpi
.LVL118:
	mov.n	a4, a10
.LVL119:
	bnez.n	a10, .L31
	.loc 1 249 0
	addi	a12, sp, 60
	mov.n	a11, a6
	addi	a10, sp, 36
	call8	mbedtls_mpi_mul_mpi
.LVL120:
	mov.n	a4, a10
.LVL121:
	bnez.n	a10, .L31
	.loc 1 250 0
	addi	a11, sp, 36
	mov.n	a12, a3
	mov.n	a10, a11
	call8	mbedtls_mpi_mod_mpi
.LVL122:
	mov.n	a4, a10
.LVL123:
	bnez.n	a10, .L31
	.loc 1 258 0
	mov.n	a15, a5
	addi	a14, sp, 36
	addi	a13, a2, 40
	addi	a12, sp, 48
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_ecp_muladd
.LVL124:
	mov.n	a4, a10
.LVL125:
	bnez.n	a10, .L31
	.loc 1 260 0
	mov.n	a10, sp
	call8	mbedtls_ecp_is_zero
.LVL126:
	bnez.n	a10, .L30
	.loc 1 270 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, sp
	call8	mbedtls_mpi_mod_mpi
.LVL127:
	mov.n	a4, a10
.LVL128:
	bnez.n	a10, .L31
	.loc 1 275 0
	mov.n	a11, a6
	mov.n	a10, sp
	call8	mbedtls_mpi_cmp_mpi
.LVL129:
	beqz.n	a10, .L31
.LVL130:
.L30:
	.loc 1 277 0
	l32r	a4, .LC5
.LVL131:
.L31:
	.loc 1 282 0
	mov.n	a10, sp
	call8	mbedtls_ecp_point_free
.LVL132:
	.loc 1 283 0
	addi	a10, sp, 72
	call8	mbedtls_mpi_free
.LVL133:
	addi	a10, sp, 60
	call8	mbedtls_mpi_free
.LVL134:
	addi	a10, sp, 48
	call8	mbedtls_mpi_free
.LVL135:
	addi	a10, sp, 36
	call8	mbedtls_mpi_free
.LVL136:
	.loc 1 285 0
	mov.n	a8, a4
.LVL137:
.L29:
	.loc 1 286 0
	mov.n	a2, a8
.LVL138:
	retw.n
.LFE3:
	.size	mbedtls_ecdsa_verify, .-mbedtls_ecdsa_verify
	.section	.text.mbedtls_ecdsa_write_signature,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_write_signature
	.type	mbedtls_ecdsa_write_signature, @function
mbedtls_ecdsa_write_signature:
.LFB5:
	.loc 1 321 0
.LVL139:
	entry	sp, 224
.LCFI4:
	.loc 1 325 0
	movi	a10, 0xac
	add.n	a10, a10, sp
	call8	mbedtls_mpi_init
.LVL140:
	.loc 1 326 0
	movi	a10, 0xa0
	add.n	a10, a10, sp
	call8	mbedtls_mpi_init
.LVL141:
	.loc 1 332 0
	movi	a12, 0xa0
	movi	a11, 0xac
	addi	a13, a2, 124
	mov.n	a10, a2
	s32i.n	a3, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	add.n	a12, a12, sp
	add.n	a11, a11, sp
	call8	mbedtls_ecdsa_sign_det
.LVL142:
	.loc 1 321 0
	.loc 1 332 0
	mov.n	a2, a10
.LVL143:
	bnez.n	a10, .L37
.LVL144:
.LBB8:
.LBB9:
	.loc 1 297 0
	movi	a4, 0x9d
.LVL145:
	.loc 1 300 0
	movi	a12, 0xa0
	movi	a10, 0xb8
	.loc 1 297 0
	add.n	a3, sp, a4
.LVL146:
	.loc 1 300 0
	add.n	a12, a12, sp
	addi	a11, sp, 16
	add.n	a10, a10, sp
	.loc 1 297 0
	s32i	a3, sp, 184
.LVL147:
	.loc 1 300 0
	call8	mbedtls_asn1_write_mpi
.LVL148:
	mov.n	a4, a10
.LVL149:
	bltz	a10, .L38
.LVL150:
	.loc 1 301 0
	movi	a12, 0xac
	movi	a10, 0xb8
	add.n	a12, a12, sp
	addi	a11, sp, 16
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_mpi
.LVL151:
	bltz	a10, .L40
	add.n	a3, a4, a10
.LVL152:
	.loc 1 303 0
	movi	a10, 0xb8
.LVL153:
	mov.n	a12, a3
	addi	a11, sp, 16
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL154:
	mov.n	a4, a10
.LVL155:
	bltz	a10, .L38
.LVL156:
	.loc 1 304 0
	movi	a10, 0xb8
	movi.n	a12, 0x30
	addi	a11, sp, 16
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL157:
	bltz	a10, .L40
	.loc 1 303 0
	add.n	a3, a4, a3
.LVL158:
	.loc 1 304 0
	add.n	a3, a10, a3
.LVL159:
	.loc 1 307 0
	l32i	a11, sp, 184
	mov.n	a12, a3
	mov.n	a10, a6
.LVL160:
	call8	memcpy
.LVL161:
	.loc 1 310 0
	mov.n	a4, a2
	.loc 1 308 0
	s32i.n	a3, a7, 0
	j	.L38
.LVL162:
.L40:
	.loc 1 304 0
	mov.n	a4, a10
.LVL163:
.L38:
.LBE9:
.LBE8:
	.loc 1 341 0
	mov.n	a2, a4
.LVL164:
.L37:
	.loc 1 344 0
	addi	a3, sp, 16
	movi	a10, 0x9c
	add.n	a10, a3, a10
	call8	mbedtls_mpi_free
.LVL165:
	.loc 1 345 0
	addi	a4, sp, 16
	movi	a10, 0x90
	add.n	a10, a4, a10
	call8	mbedtls_mpi_free
.LVL166:
	.loc 1 348 0
	retw.n
.LFE5:
	.size	mbedtls_ecdsa_write_signature, .-mbedtls_ecdsa_write_signature
	.section	.text.mbedtls_ecdsa_write_signature_det,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_write_signature_det
	.type	mbedtls_ecdsa_write_signature_det, @function
mbedtls_ecdsa_write_signature_det:
.LFB6:
	.loc 1 356 0
.LVL167:
	entry	sp, 48
.LCFI5:
	.loc 1 357 0
	movi.n	a8, 0
	.loc 1 356 0
	mov.n	a11, a7
	.loc 1 357 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a6
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a10, a2
	call8	mbedtls_ecdsa_write_signature
.LVL168:
	.loc 1 359 0
	mov.n	a2, a10
.LVL169:
	.loc 1 356 0
	.loc 1 359 0
	retw.n
.LFE6:
	.size	mbedtls_ecdsa_write_signature_det, .-mbedtls_ecdsa_write_signature_det
	.section	.text.mbedtls_ecdsa_read_signature,"ax",@progbits
	.literal_position
	.literal .LC7, -20454
	.literal .LC8, -19456
	.literal .LC9, -20352
	.align	4
	.global	mbedtls_ecdsa_read_signature
	.type	mbedtls_ecdsa_read_signature, @function
mbedtls_ecdsa_read_signature:
.LFB7:
	.loc 1 368 0
.LVL170:
	entry	sp, 64
.LCFI6:
	.loc 1 375 0
	addi.n	a10, sp, 12
	.loc 1 370 0
	s32i.n	a5, sp, 28
	.loc 1 375 0
	call8	mbedtls_mpi_init
.LVL171:
	.loc 1 376 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL172:
	.loc 1 371 0
	add.n	a6, a5, a6
.LVL173:
	.loc 1 378 0
	movi.n	a13, 0x30
	addi	a12, sp, 24
	mov.n	a11, a6
	addi	a10, sp, 28
	.loc 1 368 0
	mov.n	a7, a2
	.loc 1 378 0
	call8	mbedtls_asn1_get_tag
.LVL174:
	beqz.n	a10, .L43
	j	.L45
.L43:
	.loc 1 385 0
	l32i.n	a2, sp, 24
.LVL175:
	l32i.n	a8, sp, 28
	add.n	a8, a8, a2
	.loc 1 387 0
	l32r	a2, .LC7
	.loc 1 385 0
	bne	a6, a8, .L44
	.loc 1 392 0
	addi.n	a12, sp, 12
	mov.n	a11, a6
	addi	a10, sp, 28
.LVL176:
	call8	mbedtls_asn1_get_mpi
.LVL177:
	bnez.n	a10, .L45
	.loc 1 392 0 is_stmt 0 discriminator 1
	mov.n	a12, sp
	mov.n	a11, a6
	addi	a10, sp, 28
.LVL178:
	call8	mbedtls_asn1_get_mpi
.LVL179:
	beqz.n	a10, .L46
.L45:
	.loc 1 395 0 is_stmt 1
	l32r	a2, .LC9
	add.n	a2, a10, a2
.LVL180:
	.loc 1 396 0
	j	.L44
.LVL181:
.L46:
	.loc 1 399 0
	movi	a13, 0x88
	mov.n	a15, sp
	addi.n	a14, sp, 12
	add.n	a13, a7, a13
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a7
.LVL182:
	call8	mbedtls_ecdsa_verify
.LVL183:
	mov.n	a2, a10
.LVL184:
	bnez.n	a10, .L44
	.loc 1 406 0
	l32i.n	a5, sp, 28
.LVL185:
	.loc 1 407 0
	l32r	a3, .LC8
.LVL186:
	sub	a6, a6, a5
.LVL187:
	movnez	a2, a3, a6
.LVL188:
.L44:
	.loc 1 410 0
	addi.n	a10, sp, 12
	call8	mbedtls_mpi_free
.LVL189:
	.loc 1 411 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL190:
	.loc 1 414 0
	retw.n
.LFE7:
	.size	mbedtls_ecdsa_read_signature, .-mbedtls_ecdsa_read_signature
	.section	.text.mbedtls_ecdsa_genkey,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_genkey
	.type	mbedtls_ecdsa_genkey, @function
mbedtls_ecdsa_genkey:
.LFB8:
	.loc 1 422 0
.LVL191:
	entry	sp, 32
.LCFI7:
	.loc 1 423 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_ecp_group_load
.LVL192:
	mov.n	a6, a10
	movi.n	a3, 1
.LVL193:
	bnez.n	a10, .L49
	.loc 1 424 0 discriminator 2
	movi	a12, 0x88
	mov.n	a14, a5
	mov.n	a13, a4
	add.n	a12, a2, a12
	addi	a11, a2, 124
	mov.n	a10, a2
	call8	mbedtls_ecp_gen_keypair
.LVL194:
	.loc 1 423 0 discriminator 2
	moveqz	a3, a6, a10
.L49:
	.loc 1 425 0 discriminator 6
	mov.n	a2, a3
.LVL195:
	retw.n
.LFE8:
	.size	mbedtls_ecdsa_genkey, .-mbedtls_ecdsa_genkey
	.section	.text.mbedtls_ecdsa_from_keypair,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_from_keypair
	.type	mbedtls_ecdsa_from_keypair, @function
mbedtls_ecdsa_from_keypair:
.LFB9:
	.loc 1 432 0
.LVL196:
	entry	sp, 32
.LCFI8:
	.loc 1 435 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	mbedtls_ecp_group_copy
.LVL197:
	.loc 1 432 0
	mov.n	a4, a2
	.loc 1 435 0
	mov.n	a2, a10
.LVL198:
	bnez.n	a10, .L52
	.loc 1 435 0 is_stmt 0 discriminator 1
	addi	a11, a3, 124
	addi	a10, a4, 124
	call8	mbedtls_mpi_copy
.LVL199:
	mov.n	a2, a10
.LVL200:
	bnez.n	a10, .L52
	.loc 1 437 0 is_stmt 1
	movi	a10, 0x88
	.loc 1 436 0
	add.n	a11, a3, a10
	add.n	a10, a4, a10
	call8	mbedtls_ecp_copy
.LVL201:
	mov.n	a2, a10
.LVL202:
	beqz.n	a10, .L53
.L52:
.LVL203:
.LBB10:
.LBB11:
	.loc 1 458 0
	mov.n	a10, a4
	call8	mbedtls_ecp_keypair_free
.LVL204:
.L53:
.LBE11:
.LBE10:
	.loc 1 443 0
	retw.n
.LFE9:
	.size	mbedtls_ecdsa_from_keypair, .-mbedtls_ecdsa_from_keypair
	.section	.text.mbedtls_ecdsa_init,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_init
	.type	mbedtls_ecdsa_init, @function
mbedtls_ecdsa_init:
.LFB10:
	.loc 1 449 0
.LVL205:
	entry	sp, 32
.LCFI9:
	.loc 1 450 0
	mov.n	a10, a2
	call8	mbedtls_ecp_keypair_init
.LVL206:
	retw.n
.LFE10:
	.size	mbedtls_ecdsa_init, .-mbedtls_ecdsa_init
	.section	.text.mbedtls_ecdsa_free,"ax",@progbits
	.align	4
	.global	mbedtls_ecdsa_free
	.type	mbedtls_ecdsa_free, @function
mbedtls_ecdsa_free:
.LFB11:
	.loc 1 457 0
.LVL207:
	entry	sp, 32
.LCFI10:
	.loc 1 458 0
	mov.n	a10, a2
	call8	mbedtls_ecp_keypair_free
.LVL208:
	retw.n
.LFE11:
	.size	mbedtls_ecdsa_free, .-mbedtls_ecdsa_free
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
	.uleb128 0x90
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
	.uleb128 0x140
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
	.uleb128 0x90
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0xe0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI10-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1768
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xc
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xd8
	.uleb128 0x8
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbc
	.4byte	0xad
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x44
	.4byte	0x14a
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x6
	.byte	0x53
	.4byte	0xe9
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x72
	.4byte	0x180
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x74
	.4byte	0xde
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x75
	.4byte	0xde
	.byte	0xc
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x76
	.4byte	0xde
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x6
	.byte	0x78
	.4byte	0x155
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x7c
	.byte	0x6
	.byte	0x9f
	.4byte	0x23d
	.uleb128 0x8
	.string	"id"
	.byte	0x6
	.byte	0xa1
	.4byte	0x14a
	.byte	0
	.uleb128 0x8
	.string	"P"
	.byte	0x6
	.byte	0xa2
	.4byte	0xde
	.byte	0x4
	.uleb128 0x8
	.string	"A"
	.byte	0x6
	.byte	0xa3
	.4byte	0xde
	.byte	0x10
	.uleb128 0x8
	.string	"B"
	.byte	0x6
	.byte	0xa5
	.4byte	0xde
	.byte	0x1c
	.uleb128 0x8
	.string	"G"
	.byte	0x6
	.byte	0xa7
	.4byte	0x180
	.byte	0x28
	.uleb128 0x8
	.string	"N"
	.byte	0x6
	.byte	0xa8
	.4byte	0xde
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa9
	.4byte	0x25
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0xaa
	.4byte	0x25
	.byte	0x5c
	.uleb128 0x8
	.string	"h"
	.byte	0x6
	.byte	0xad
	.4byte	0x30
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0xae
	.4byte	0x252
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb0
	.4byte	0x272
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb1
	.4byte	0x272
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xb2
	.4byte	0x81
	.byte	0x70
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0xb3
	.4byte	0x26c
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xb4
	.4byte	0x25
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x24c
	.uleb128 0xd
	.4byte	0x24c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xde
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23d
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x26c
	.uleb128 0xd
	.4byte	0x26c
	.uleb128 0xd
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x180
	.uleb128 0x6
	.byte	0x4
	.4byte	0x258
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x6
	.byte	0xb6
	.4byte	0x18b
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xac
	.byte	0x6
	.byte	0xfe
	.4byte	0x2b3
	.uleb128 0xe
	.string	"grp"
	.byte	0x6
	.2byte	0x100
	.4byte	0x278
	.byte	0
	.uleb128 0xe
	.string	"d"
	.byte	0x6
	.2byte	0x101
	.4byte	0xde
	.byte	0x7c
	.uleb128 0xe
	.string	"Q"
	.byte	0x6
	.2byte	0x102
	.4byte	0x180
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x104
	.4byte	0x283
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x38
	.4byte	0x308
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x7
	.byte	0x43
	.4byte	0x2bf
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4e
	.4byte	0x31e
	.uleb128 0x10
	.4byte	.LASF52
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0xc
	.byte	0x7
	.byte	0x53
	.4byte	0x354
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x56
	.4byte	0x354
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x59
	.4byte	0x81
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x5c
	.4byte	0x81
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x35a
	.uleb128 0x11
	.4byte	0x313
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x7
	.byte	0x5d
	.4byte	0x323
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.byte	0x3d
	.4byte	0x2b3
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x64
	.byte	0x9
	.byte	0x4d
	.4byte	0x3e0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x51
	.4byte	0x35f
	.byte	0
	.uleb128 0x8
	.string	"V"
	.byte	0x9
	.byte	0x52
	.4byte	0x3e0
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0x53
	.4byte	0x3e
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x9
	.byte	0x56
	.4byte	0x25
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x9
	.byte	0x57
	.4byte	0x3e
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x9
	.byte	0x59
	.4byte	0x3e
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x9
	.byte	0x5c
	.4byte	0x409
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x9
	.byte	0x5d
	.4byte	0x81
	.byte	0x60
	.byte	0
	.uleb128 0x12
	.4byte	0x4c
	.4byte	0x3f0
	.uleb128 0x13
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x409
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xd
	.4byte	0x8a
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x9
	.byte	0x62
	.4byte	0x375
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1
	.4byte	0x434
	.uleb128 0x15
	.string	"ctx"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x434
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36a
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0x31
	.4byte	0x3e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52e
	.uleb128 0x17
	.string	"grp"
	.byte	0x1
	.byte	0x31
	.4byte	0x52e
	.4byte	.LLST0
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x31
	.4byte	0x24c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x32
	.4byte	0x539
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x34
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x1
	.byte	0x40
	.4byte	.L2
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x15d4
	.4byte	0x4e3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x15e0
	.4byte	0x4fd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x15ec
	.4byte	0x511
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL13
	.4byte	0x15f8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x534
	.uleb128 0x11
	.4byte	0x278
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53f
	.uleb128 0x11
	.4byte	0x4c
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.byte	0x49
	.4byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x927
	.uleb128 0x17
	.string	"grp"
	.byte	0x1
	.byte	0x49
	.4byte	0x927
	.4byte	.LLST6
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x49
	.4byte	0x24c
	.4byte	.LLST7
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x49
	.4byte	0x24c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0x4a
	.4byte	0x92d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x4a
	.4byte	0x539
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4a
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4b
	.4byte	0x409
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4b
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	.LASF71
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.4byte	.LLST13
	.uleb128 0x22
	.string	"R"
	.byte	0x1
	.byte	0x4e
	.4byte	0x180
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.byte	0x4f
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.byte	0x4f
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0x4f
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9b
	.4byte	.L11
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.4byte	0x691
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x1604
	.4byte	0x67f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL44
	.4byte	0x15ec
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0x1610
	.4byte	0x6aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x15e0
	.4byte	0x6c4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x161c
	.4byte	0x6d9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0x1628
	.4byte	0x6ed
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x1628
	.4byte	0x702
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0x1628
	.4byte	0x717
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x1633
	.4byte	0x746
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x163f
	.4byte	0x768
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x1610
	.4byte	0x77d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL38
	.4byte	0x43a
	.4byte	0x7a6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL48
	.4byte	0x1610
	.4byte	0x7c0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0x15e0
	.4byte	0x7db
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL50
	.4byte	0x164b
	.4byte	0x7fc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x1657
	.4byte	0x81e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL54
	.4byte	0x164b
	.4byte	0x841
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL56
	.4byte	0x164b
	.4byte	0x862
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0x1663
	.4byte	0x882
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0x164b
	.4byte	0x8a3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL62
	.4byte	0x163f
	.4byte	0x8c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x1610
	.4byte	0x8d7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x166f
	.4byte	0x8ec
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL71
	.4byte	0x167b
	.4byte	0x900
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL72
	.4byte	0x167b
	.4byte	0x915
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0x167b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x278
	.uleb128 0x6
	.byte	0x4
	.4byte	0x933
	.uleb128 0x11
	.4byte	0xde
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb52
	.uleb128 0x17
	.string	"grp"
	.byte	0x1
	.byte	0xa7
	.4byte	0x927
	.4byte	.LLST15
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xa7
	.4byte	0x24c
	.4byte	.LLST16
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xa7
	.4byte	0x24c
	.4byte	.LLST17
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0xa8
	.4byte	0x92d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0xa8
	.4byte	0x539
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0xa9
	.4byte	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.4byte	0x3e
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.byte	0xac
	.4byte	0x40f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.byte	0xad
	.4byte	0xb52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x24
	.4byte	.LASF79
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0xaf
	.4byte	0x354
	.4byte	.LLST20
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.byte	0xb0
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc1
	.4byte	.L26
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0x1686
	.4byte	0xa25
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL82
	.4byte	0x1628
	.4byte	0xa3a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL84
	.4byte	0x1691
	.4byte	0xa4e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL85
	.4byte	0x169c
	.4byte	0xa6f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0x43a
	.4byte	0xa97
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x169c
	.4byte	0xabf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x130
	.byte	0x1c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL93
	.4byte	0x16a8
	.4byte	0xae8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL95
	.4byte	0x544
	.4byte	0xb2b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL97
	.4byte	0x16b3
	.4byte	0xb40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 132
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL98
	.4byte	0x167b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 232
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x4c
	.4byte	0xb62
	.uleb128 0x13
	.4byte	0x7a
	.byte	0x83
	.byte	0
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.byte	0xce
	.4byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed2
	.uleb128 0x17
	.string	"grp"
	.byte	0x1
	.byte	0xce
	.4byte	0x927
	.4byte	.LLST21
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xcf
	.4byte	0x539
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0xcf
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x18
	.string	"Q"
	.byte	0x1
	.byte	0xd0
	.4byte	0xed2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xd0
	.4byte	0x92d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xd0
	.4byte	0x92d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0xd2
	.4byte	0x3e
	.4byte	.LLST24
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.byte	0xd3
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd3
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.string	"u1"
	.byte	0x1
	.byte	0xd3
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"u2"
	.byte	0x1
	.byte	0xd3
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.string	"R"
	.byte	0x1
	.byte	0xd4
	.4byte	0x180
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x119
	.4byte	.L31
	.uleb128 0x1d
	.4byte	.LVL100
	.4byte	0x161c
	.4byte	0xc3e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL101
	.4byte	0x1628
	.4byte	0xc53
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL102
	.4byte	0x1628
	.4byte	0xc68
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0x1628
	.4byte	0xc7d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL104
	.4byte	0x1628
	.4byte	0xc92
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL106
	.4byte	0x1610
	.4byte	0xcab
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL107
	.4byte	0x15e0
	.4byte	0xcc5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x1610
	.4byte	0xcde
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL109
	.4byte	0x15e0
	.4byte	0xcf8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL110
	.4byte	0x16bf
	.4byte	0xd12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL112
	.4byte	0x43a
	.4byte	0xd3b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL114
	.4byte	0x1663
	.4byte	0xd5c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL116
	.4byte	0x164b
	.4byte	0xd7f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL118
	.4byte	0x163f
	.4byte	0xda1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL120
	.4byte	0x164b
	.4byte	0xdc3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL122
	.4byte	0x163f
	.4byte	0xde5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL124
	.4byte	0x16cb
	.4byte	0xe1a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL126
	.4byte	0x16d7
	.4byte	0xe2f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL127
	.4byte	0x163f
	.4byte	0xe51
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL129
	.4byte	0x15e0
	.4byte	0xe6c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL132
	.4byte	0x166f
	.4byte	0xe81
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL133
	.4byte	0x167b
	.4byte	0xe96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL134
	.4byte	0x167b
	.4byte	0xeab
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL135
	.4byte	0x167b
	.4byte	0xec0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL136
	.4byte	0x167b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xed8
	.uleb128 0x11
	.4byte	0x180
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x124
	.4byte	0x3e
	.byte	0x1
	.4byte	0xf49
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.2byte	0x124
	.4byte	0x92d
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.2byte	0x124
	.4byte	0x92d
	.uleb128 0x15
	.string	"sig"
	.byte	0x1
	.2byte	0x125
	.4byte	0x8a
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x125
	.4byte	0xf49
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.2byte	0x127
	.4byte	0x3e
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.2byte	0x128
	.4byte	0xf4f
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x129
	.4byte	0x8a
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x4c
	.4byte	0xf5f
	.uleb128 0x13
	.4byte	0x7a
	.byte	0x8c
	.byte	0
	.uleb128 0x29
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x13c
	.4byte	0x3e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b0
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x434
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x13c
	.4byte	0x308
	.4byte	.LLST26
	.uleb128 0x2b
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x13d
	.4byte	0x539
	.4byte	.LLST27
	.uleb128 0x2c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"sig"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x13e
	.4byte	0xf49
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x13f
	.4byte	0x409
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x140
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x142
	.4byte	0x3e
	.4byte	.LLST28
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.2byte	0x143
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.2byte	0x143
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x157
	.4byte	.L37
	.uleb128 0x30
	.4byte	0xedd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x155
	.4byte	0x1127
	.uleb128 0x31
	.4byte	0xf0e
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	0xf02
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	0xef8
	.4byte	.LLST31
	.uleb128 0x31
	.4byte	0xeee
	.4byte	.LLST32
	.uleb128 0x32
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x33
	.4byte	0xf1a
	.4byte	.LLST33
	.uleb128 0x34
	.4byte	0xf26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.4byte	0xf32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.4byte	0xf3c
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LVL148
	.4byte	0x16e3
	.4byte	0x10ac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL151
	.4byte	0x16e3
	.4byte	0x10cd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL154
	.4byte	0x16ee
	.4byte	0x10ee
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL157
	.4byte	0x16f9
	.4byte	0x110f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL161
	.4byte	0x1704
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL140
	.4byte	0x1628
	.4byte	0x113b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL141
	.4byte	0x1628
	.4byte	0x114f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL142
	.4byte	0x938
	.4byte	0x1189
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL165
	.4byte	0x167b
	.4byte	0x119e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 156
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL166
	.4byte	0x167b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 144
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x160
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125b
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x160
	.4byte	0x434
	.4byte	.LLST35
	.uleb128 0x2c
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x161
	.4byte	0x539
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x161
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"sig"
	.byte	0x1
	.2byte	0x162
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x162
	.4byte	0xf49
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x163
	.4byte	0x308
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LVL168
	.4byte	0xf5f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x16d
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140b
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x434
	.4byte	.LLST36
	.uleb128 0x2b
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x16e
	.4byte	0x539
	.4byte	.LLST37
	.uleb128 0x2c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x16e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"sig"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x539
	.4byte	.LLST38
	.uleb128 0x2b
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x16f
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x171
	.4byte	0x3e
	.4byte	.LLST40
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x172
	.4byte	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x173
	.4byte	0x539
	.4byte	.LLST41
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.2byte	0x174
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.2byte	0x175
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.2byte	0x175
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x199
	.4byte	.L44
	.uleb128 0x1d
	.4byte	.LVL171
	.4byte	0x1628
	.4byte	0x1339
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL172
	.4byte	0x1628
	.4byte	0x134d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL174
	.4byte	0x170d
	.4byte	0x1373
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL177
	.4byte	0x1718
	.4byte	0x1393
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL179
	.4byte	0x1718
	.4byte	0x13b3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL183
	.4byte	0xb62
	.4byte	0x13e6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x77
	.sleb128 136
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL189
	.4byte	0x167b
	.4byte	0x13fa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL190
	.4byte	0x167b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a6
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x434
	.4byte	.LLST42
	.uleb128 0x2a
	.string	"gid"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x14a
	.4byte	.LLST43
	.uleb128 0x2c
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x409
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x81
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LVL192
	.4byte	0x1724
	.4byte	0x147b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL194
	.4byte	0x1633
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 136
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1af
	.4byte	0x3e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1569
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x434
	.4byte	.LLST44
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x1569
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	0x41a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x151a
	.uleb128 0x31
	.4byte	0x427
	.4byte	.LLST45
	.uleb128 0x1f
	.4byte	.LVL204
	.4byte	0x1730
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL197
	.4byte	0x173c
	.4byte	0x1534
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL199
	.4byte	0x1748
	.4byte	0x1550
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 124
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 124
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL201
	.4byte	0x1753
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 136
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 136
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x156f
	.uleb128 0x11
	.4byte	0x2b3
	.uleb128 0x35
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a9
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x434
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL206
	.4byte	0x175f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x41a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d4
	.uleb128 0x37
	.4byte	0x427
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL208
	.4byte	0x1730
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x1b1
	.uleb128 0x38
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x1ed
	.uleb128 0x38
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x1d5
	.uleb128 0x38
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x229
	.uleb128 0x38
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x2bc
	.uleb128 0x38
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x1f9
	.uleb128 0x38
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x14a
	.uleb128 0x39
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x5
	.byte	0xc5
	.uleb128 0x38
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x2c8
	.uleb128 0x38
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x289
	.uleb128 0x38
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x24d
	.uleb128 0x38
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x21d
	.uleb128 0x38
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x2d8
	.uleb128 0x38
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x163
	.uleb128 0x39
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x5
	.byte	0xcc
	.uleb128 0x39
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x7
	.byte	0x7e
	.uleb128 0x39
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x9
	.byte	0x6c
	.uleb128 0x38
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x1bf
	.uleb128 0x39
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x9
	.byte	0x9a
	.uleb128 0x38
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x102
	.uleb128 0x38
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x289
	.uleb128 0x38
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x26e
	.uleb128 0x38
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x19b
	.uleb128 0x39
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xa
	.byte	0x56
	.uleb128 0x39
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0x2e
	.uleb128 0x39
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xa
	.byte	0x3a
	.uleb128 0x3a
	.4byte	.LASF131
	.4byte	.LASF131
	.uleb128 0x39
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xb
	.byte	0xcb
	.uleb128 0x38
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x121
	.uleb128 0x38
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x218
	.uleb128 0x38
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.uleb128 0x38
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x187
	.uleb128 0x39
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0xf3
	.uleb128 0x38
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x17b
	.uleb128 0x38
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x15c
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x25
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x9
	.byte	0x72
	.sleb128 92
	.byte	0x6
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x9
	.byte	0x72
	.sleb128 92
	.byte	0x6
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL18
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x5
	.byte	0x3c
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x5
	.byte	0x3d
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x5
	.byte	0x3c
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x3c
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x3d
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x5
	.byte	0x3c
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x3c
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x5
	.byte	0x4f
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x4f
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x5
	.byte	0x4f
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL81
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL99
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL99
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL111
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xb
	.2byte	0xb200
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL139
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL139
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL139
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL143
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL144
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL144
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL144
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL144
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL152
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL170
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL170
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL170
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL185
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL173
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL184
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL173
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL187
	.4byte	.LFE7
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL191
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"mbedtls_mpi_write_binary"
.LASF97:
	.string	"mbedtls_mpi_init"
.LASF56:
	.string	"hmac_ctx"
.LASF75:
	.string	"mbedtls_ecdsa_sign_det"
.LASF51:
	.string	"mbedtls_md_type_t"
.LASF0:
	.string	"unsigned int"
.LASF120:
	.string	"mbedtls_ecp_group_copy"
.LASF118:
	.string	"mbedtls_ecp_group_load"
.LASF70:
	.string	"key_tries"
.LASF88:
	.string	"mbedtls_ecdsa_genkey"
.LASF115:
	.string	"mbedtls_asn1_write_tag"
.LASF59:
	.string	"reseed_counter"
.LASF76:
	.string	"md_alg"
.LASF66:
	.string	"n_size"
.LASF46:
	.string	"MBEDTLS_MD_SHA224"
.LASF85:
	.string	"hlen"
.LASF130:
	.string	"mbedtls_ecdsa_init"
.LASF35:
	.string	"modp"
.LASF18:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF40:
	.string	"mbedtls_ecp_keypair"
.LASF108:
	.string	"mbedtls_hmac_drbg_seed_buf"
.LASF96:
	.string	"mbedtls_ecp_point_init"
.LASF25:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF109:
	.string	"mbedtls_hmac_drbg_free"
.LASF13:
	.string	"uint32_t"
.LASF60:
	.string	"entropy_len"
.LASF98:
	.string	"mbedtls_ecp_gen_keypair"
.LASF114:
	.string	"mbedtls_asn1_write_len"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF67:
	.string	"use_size"
.LASF36:
	.string	"t_pre"
.LASF31:
	.string	"mbedtls_ecp_point"
.LASF8:
	.string	"long long unsigned int"
.LASF73:
	.string	"cleanup"
.LASF49:
	.string	"MBEDTLS_MD_SHA512"
.LASF69:
	.string	"p_rng"
.LASF110:
	.string	"mbedtls_ecp_check_pubkey"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF23:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF79:
	.string	"grp_len"
.LASF124:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"mbedtls_md_context_t"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF101:
	.string	"mbedtls_mpi_add_mpi"
.LASF5:
	.string	"size_t"
.LASF113:
	.string	"mbedtls_asn1_write_mpi"
.LASF47:
	.string	"MBEDTLS_MD_SHA256"
.LASF29:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF116:
	.string	"mbedtls_asn1_get_tag"
.LASF123:
	.string	"mbedtls_ecp_keypair_init"
.LASF58:
	.string	"mbedtls_hmac_drbg_context"
.LASF91:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF39:
	.string	"T_size"
.LASF64:
	.string	"p_entropy"
.LASF82:
	.string	"slen"
.LASF93:
	.string	"mbedtls_mpi_sub_mpi"
.LASF52:
	.string	"mbedtls_md_info_t"
.LASF12:
	.string	"char"
.LASF121:
	.string	"mbedtls_mpi_copy"
.LASF78:
	.string	"data"
.LASF57:
	.string	"mbedtls_ecdsa_context"
.LASF112:
	.string	"mbedtls_ecp_is_zero"
.LASF125:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ecdsa.c"
.LASF87:
	.string	"mbedtls_ecdsa_read_signature"
.LASF55:
	.string	"md_ctx"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF7:
	.string	"long long int"
.LASF77:
	.string	"rng_ctx"
.LASF63:
	.string	"f_entropy"
.LASF100:
	.string	"mbedtls_mpi_mul_mpi"
.LASF34:
	.string	"nbits"
.LASF38:
	.string	"t_data"
.LASF41:
	.string	"MBEDTLS_MD_NONE"
.LASF61:
	.string	"prediction_resistance"
.LASF117:
	.string	"mbedtls_asn1_get_mpi"
.LASF81:
	.string	"s_inv"
.LASF131:
	.string	"memcpy"
.LASF122:
	.string	"mbedtls_ecp_copy"
.LASF72:
	.string	"blind_tries"
.LASF128:
	.string	"derive_mpi"
.LASF129:
	.string	"ecdsa_signature_to_asn1"
.LASF104:
	.string	"mbedtls_mpi_free"
.LASF71:
	.string	"sign_tries"
.LASF102:
	.string	"mbedtls_mpi_inv_mod"
.LASF24:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF16:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF127:
	.string	"mbedtls_ecdsa_free"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF65:
	.string	"blen"
.LASF99:
	.string	"mbedtls_mpi_mod_mpi"
.LASF9:
	.string	"long int"
.LASF86:
	.string	"mbedtls_ecdsa_write_signature_det"
.LASF84:
	.string	"hash"
.LASF22:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF62:
	.string	"reseed_interval"
.LASF54:
	.string	"md_info"
.LASF74:
	.string	"mbedtls_ecdsa_sign"
.LASF103:
	.string	"mbedtls_ecp_point_free"
.LASF17:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF68:
	.string	"f_rng"
.LASF45:
	.string	"MBEDTLS_MD_SHA1"
.LASF126:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF92:
	.string	"mbedtls_mpi_shift_r"
.LASF42:
	.string	"MBEDTLS_MD_MD2"
.LASF43:
	.string	"MBEDTLS_MD_MD4"
.LASF44:
	.string	"MBEDTLS_MD_MD5"
.LASF10:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF94:
	.string	"mbedtls_mpi_fill_random"
.LASF33:
	.string	"pbits"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF105:
	.string	"mbedtls_md_info_from_type"
.LASF90:
	.string	"mbedtls_mpi_read_binary"
.LASF80:
	.string	"mbedtls_ecdsa_verify"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF89:
	.string	"mbedtls_ecdsa_from_keypair"
.LASF83:
	.string	"mbedtls_ecdsa_write_signature"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"mbedtls_mpi"
.LASF50:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF30:
	.string	"mbedtls_ecp_group_id"
.LASF1:
	.string	"short unsigned int"
.LASF119:
	.string	"mbedtls_ecp_keypair_free"
.LASF48:
	.string	"MBEDTLS_MD_SHA384"
.LASF32:
	.string	"mbedtls_ecp_group"
.LASF37:
	.string	"t_post"
.LASF95:
	.string	"mbedtls_mpi_cmp_int"
.LASF106:
	.string	"mbedtls_hmac_drbg_init"
.LASF111:
	.string	"mbedtls_ecp_muladd"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
