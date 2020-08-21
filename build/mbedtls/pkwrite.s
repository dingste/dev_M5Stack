	.file	"pkwrite.c"
	.text
.Ltext0:
	.section	.text.pk_write_ec_pubkey,"ax",@progbits
	.align	4
	.type	pk_write_ec_pubkey, @function
pk_write_ec_pubkey:
.LFB11:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/pkwrite.c"
	.loc 1 105 0
.LVL0:
	entry	sp, 176
.LCFI0:
	.loc 1 110 0
	movi	a11, 0x88
	.loc 1 107 0
	movi.n	a12, 0
	.loc 1 110 0
	add.n	a13, sp, a11
	.loc 1 105 0
	mov.n	a10, a4
	.loc 1 110 0
	movi	a15, 0x85
	mov.n	a14, sp
	add.n	a11, a4, a11
	.loc 1 107 0
	s32i	a12, sp, 136
	.loc 1 110 0
	call8	mbedtls_ecp_point_write_binary
.LVL1:
	bnez.n	a10, .L2
	.loc 1 117 0
	l32i.n	a8, a2, 0
	.loc 1 118 0
	movi	a10, -0x6c
.LVL2:
	.loc 1 117 0
	bltu	a8, a3, .L2
	.loc 1 117 0 is_stmt 0 discriminator 1
	l32i	a12, sp, 136
	sub	a3, a8, a3
.LVL3:
	bltu	a3, a12, .L2
	.loc 1 120 0 is_stmt 1
	sub	a10, a8, a12
	s32i.n	a10, a2, 0
	.loc 1 121 0
	mov.n	a11, sp
	call8	memcpy
.LVL4:
	.loc 1 123 0
	l32i	a10, sp, 136
.L2:
	.loc 1 124 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE11:
	.size	pk_write_ec_pubkey, .-pk_write_ec_pubkey
	.section	.text.pk_write_ec_param$isra$2,"ax",@progbits
	.align	4
	.type	pk_write_ec_param$isra$2, @function
pk_write_ec_param$isra$2:
.LFB20:
	.loc 1 131 0
.LVL6:
	entry	sp, 48
.LCFI1:
.LVL7:
	.loc 1 139 0
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a4
	call8	mbedtls_oid_get_oid_by_ec_grp
.LVL8:
	bnez.n	a10, .L7
	.loc 1 142 0
	l32i.n	a13, sp, 0
	l32i.n	a12, sp, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL9:
	call8	mbedtls_asn1_write_oid
.LVL10:
.L7:
	.loc 1 145 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE20:
	.size	pk_write_ec_param$isra$2, .-pk_write_ec_param$isra$2
	.section	.text.mbedtls_pk_write_pubkey,"ax",@progbits
	.literal_position
	.literal .LC0, -14720
	.align	4
	.global	mbedtls_pk_write_pubkey
	.type	mbedtls_pk_write_pubkey, @function
mbedtls_pk_write_pubkey:
.LFB13:
	.loc 1 150 0
.LVL12:
	entry	sp, 48
.LCFI2:
.LVL13:
	.loc 1 155 0
	mov.n	a10, a4
	call8	mbedtls_pk_get_type
.LVL14:
	bnei	a10, 1, .L10
.LBB16:
.LBB17:
	.loc 1 71 0
	mov.n	a10, sp
	l32i.n	a6, a4, 4
.LVL15:
	call8	mbedtls_mpi_init
.LVL16:
	.loc 1 74 0
	movi.n	a14, 0
	mov.n	a15, sp
	mov.n	a13, a14
	mov.n	a12, a14
	mov.n	a11, a14
	mov.n	a10, a6
	call8	mbedtls_rsa_export
.LVL17:
	.loc 1 68 0
	movi.n	a5, 0
	.loc 1 74 0
	mov.n	a4, a10
.LVL18:
	bne	a10, a5, .L11
	.loc 1 74 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_mpi
.LVL19:
	mov.n	a4, a10
	blt	a10, a5, .L11
	.loc 1 80 0
	movi.n	a15, 0
	.loc 1 77 0
	mov.n	a5, a10
.LVL20:
	.loc 1 80 0
	mov.n	a14, a15
	mov.n	a13, a15
	mov.n	a12, a15
	mov.n	a11, sp
	mov.n	a10, a6
.LVL21:
	call8	mbedtls_rsa_export
.LVL22:
	mov.n	a4, a10
.LVL23:
	bnez.n	a10, .L11
	.loc 1 80 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
.LVL24:
	call8	mbedtls_asn1_write_mpi
.LVL25:
	.loc 1 83 0
	add.n	a6, a5, a10
.LVL26:
	.loc 1 80 0
	mov.n	a4, a10
	.loc 1 83 0
	movgez	a5, a6, a10
.LVL27:
.L11:
	.loc 1 87 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL28:
	.loc 1 88 0
	mov.n	a12, a4
	bltz	a4, .L13
	.loc 1 91 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL29:
	mov.n	a12, a10
.LVL30:
	bltz	a10, .L13
	add.n	a5, a10, a5
.LVL31:
	.loc 1 92 0
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL32:
	call8	mbedtls_asn1_write_tag
.LVL33:
	.loc 1 95 0
	add.n	a12, a10, a5
	movltz	a12, a10, a10
	j	.L13
.LVL34:
.L10:
.LBE17:
.LBE16:
	.loc 1 160 0
	mov.n	a10, a4
	call8	mbedtls_pk_get_type
.LVL35:
	.loc 1 164 0
	l32r	a12, .LC0
	.loc 1 160 0
	bnei	a10, 2, .L13
	.loc 1 161 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pk_write_ec_pubkey
.LVL36:
	mov.n	a12, a10
.LVL37:
.L13:
	.loc 1 167 0
	mov.n	a2, a12
.LVL38:
	retw.n
.LFE13:
	.size	mbedtls_pk_write_pubkey, .-mbedtls_pk_write_pubkey
	.section	.text.mbedtls_pk_write_pubkey_der,"ax",@progbits
	.align	4
	.global	mbedtls_pk_write_pubkey_der
	.type	mbedtls_pk_write_pubkey_der, @function
mbedtls_pk_write_pubkey_der:
.LFB14:
	.loc 1 170 0
.LVL39:
	entry	sp, 48
.LCFI3:
.LVL40:
	.loc 1 176 0
	add.n	a4, a3, a4
.LVL41:
	.loc 1 178 0
	mov.n	a12, a2
	mov.n	a11, a3
	addi.n	a10, sp, 8
	.loc 1 176 0
	s32i.n	a4, sp, 8
	.loc 1 178 0
	call8	mbedtls_pk_write_pubkey
.LVL42:
	mov.n	a4, a10
	bltz	a10, .L23
.LVL43:
	.loc 1 180 0 discriminator 2
	l32i.n	a6, sp, 8
	.loc 1 181 0 discriminator 2
	movi	a4, -0x6c
	.loc 1 180 0 discriminator 2
	sub	a5, a6, a3
	blti	a5, 1, .L23
	.loc 1 188 0
	addi.n	a4, a6, -1
	s32i.n	a4, sp, 8
	movi.n	a5, 0
	s8i	a5, a4, 0
	.loc 1 189 0
	addi.n	a5, a10, 1
.LVL44:
	.loc 1 191 0
	mov.n	a12, a5
	mov.n	a11, a3
	addi.n	a10, sp, 8
.LVL45:
	call8	mbedtls_asn1_write_len
.LVL46:
	mov.n	a7, a10
.LVL47:
	mov.n	a4, a10
	bltz	a10, .L23
.LVL48:
	.loc 1 192 0 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	mbedtls_asn1_write_tag
.LVL49:
	mov.n	a6, a10
.LVL50:
	mov.n	a4, a10
	bltz	a10, .L23
.LVL51:
	.loc 1 194 0 discriminator 2
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL52:
	addi.n	a12, sp, 4
	mov.n	a11, sp
	call8	mbedtls_oid_get_oid_by_pk_alg
.LVL53:
	mov.n	a4, a10
.LVL54:
	bnez.n	a10, .L23
	.loc 1 201 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL55:
	.loc 1 173 0
	mov.n	a14, a4
	.loc 1 201 0
	bnei	a10, 2, .L24
	l32i.n	a2, a2, 4
.LVL56:
	.loc 1 203 0
	mov.n	a11, a3
	l32i.n	a12, a2, 0
	addi.n	a10, sp, 8
	call8	pk_write_ec_param$isra$2
.LVL57:
	mov.n	a4, a10
	bltz	a10, .L23
	.loc 1 203 0 is_stmt 0 discriminator 2
	mov.n	a14, a10
.LVL58:
.L24:
	.loc 1 207 0 is_stmt 1
	l32i.n	a13, sp, 4
	l32i.n	a12, sp, 0
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL59:
	mov.n	a4, a10
.LVL60:
	bltz	a10, .L23
	.loc 1 191 0 discriminator 2
	add.n	a5, a7, a5
.LVL61:
	.loc 1 192 0 discriminator 2
	add.n	a5, a6, a5
	.loc 1 207 0 discriminator 2
	add.n	a5, a10, a5
.LVL62:
	.loc 1 210 0 discriminator 2
	mov.n	a12, a5
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	mbedtls_asn1_write_len
.LVL63:
	mov.n	a4, a10
.LVL64:
	bltz	a10, .L23
	add.n	a4, a10, a5
.LVL65:
	.loc 1 211 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	addi.n	a10, sp, 8
.LVL66:
	call8	mbedtls_asn1_write_tag
.LVL67:
	.loc 1 214 0 discriminator 2
	add.n	a4, a10, a4
.LVL68:
	movltz	a4, a10, a10
.LVL69:
.L23:
	.loc 1 215 0
	mov.n	a2, a4
	retw.n
.LFE14:
	.size	mbedtls_pk_write_pubkey_der, .-mbedtls_pk_write_pubkey_der
	.section	.text.mbedtls_pk_write_key_der,"ax",@progbits
	.literal_position
	.literal .LC1, -14720
	.align	4
	.global	mbedtls_pk_write_key_der
	.type	mbedtls_pk_write_key_der, @function
mbedtls_pk_write_key_der:
.LFB15:
	.loc 1 218 0
.LVL70:
	entry	sp, 64
.LCFI4:
	.loc 1 220 0
	add.n	a4, a3, a4
.LVL71:
	.loc 1 224 0
	mov.n	a10, a2
	.loc 1 220 0
	s32i.n	a4, sp, 12
.LVL72:
	.loc 1 224 0
	call8	mbedtls_pk_get_type
.LVL73:
	bnei	a10, 1, .L36
.LBB18:
	.loc 1 233 0
	mov.n	a10, sp
	l32i.n	a5, a2, 4
	call8	mbedtls_mpi_init
.LVL74:
	.loc 1 236 0
	movi.n	a12, 0
	mov.n	a13, sp
	mov.n	a11, a12
	mov.n	a10, a5
	call8	mbedtls_rsa_export_crt
.LVL75:
.LBE18:
	.loc 1 221 0
	movi.n	a4, 0
.LBB19:
	.loc 1 236 0
	mov.n	a2, a10
.LVL76:
	bne	a10, a4, .L37
	.loc 1 236 0 discriminator 1
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_mpi
.LVL77:
	mov.n	a2, a10
	blt	a10, a4, .L37
	.loc 1 242 0
	movi.n	a13, 0
	.loc 1 239 0
	mov.n	a4, a10
.LVL78:
	.loc 1 242 0
	mov.n	a12, sp
	mov.n	a11, a13
	mov.n	a10, a5
.LVL79:
	call8	mbedtls_rsa_export_crt
.LVL80:
	mov.n	a2, a10
.LVL81:
	bnez.n	a10, .L37
	.loc 1 242 0 discriminator 1
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL82:
	call8	mbedtls_asn1_write_mpi
.LVL83:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 248 0
	movi.n	a13, 0
	.loc 1 245 0
	add.n	a4, a4, a10
.LVL84:
	.loc 1 248 0
	mov.n	a12, a13
	mov.n	a11, sp
	mov.n	a10, a5
.LVL85:
	call8	mbedtls_rsa_export_crt
.LVL86:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 248 0 discriminator 1
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL87:
	call8	mbedtls_asn1_write_mpi
.LVL88:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 254 0
	movi.n	a15, 0
	.loc 1 251 0
	add.n	a4, a4, a10
.LVL89:
	.loc 1 254 0
	mov.n	a14, a15
	mov.n	a13, sp
	mov.n	a12, a15
	mov.n	a11, a15
	mov.n	a10, a5
.LVL90:
	call8	mbedtls_rsa_export
.LVL91:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 255 0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL92:
	call8	mbedtls_asn1_write_mpi
.LVL93:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 261 0
	movi.n	a15, 0
	.loc 1 258 0
	add.n	a4, a4, a10
.LVL94:
	.loc 1 261 0
	mov.n	a14, a15
	mov.n	a13, a15
	mov.n	a12, sp
	mov.n	a11, a15
	mov.n	a10, a5
.LVL95:
	call8	mbedtls_rsa_export
.LVL96:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 262 0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL97:
	call8	mbedtls_asn1_write_mpi
.LVL98:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 268 0
	movi.n	a15, 0
	.loc 1 265 0
	add.n	a4, a4, a10
.LVL99:
	.loc 1 268 0
	mov.n	a14, sp
	mov.n	a13, a15
	mov.n	a12, a15
	mov.n	a11, a15
	mov.n	a10, a5
.LVL100:
	call8	mbedtls_rsa_export
.LVL101:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 269 0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL102:
	call8	mbedtls_asn1_write_mpi
.LVL103:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 275 0
	movi.n	a14, 0
	.loc 1 272 0
	add.n	a4, a4, a10
.LVL104:
	.loc 1 275 0
	mov.n	a15, sp
	mov.n	a13, a14
	mov.n	a12, a14
	mov.n	a11, a14
	mov.n	a10, a5
.LVL105:
	call8	mbedtls_rsa_export
.LVL106:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 276 0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL107:
	call8	mbedtls_asn1_write_mpi
.LVL108:
	mov.n	a2, a10
	bltz	a10, .L37
	.loc 1 282 0
	movi.n	a15, 0
	.loc 1 279 0
	add.n	a4, a4, a10
.LVL109:
	.loc 1 282 0
	mov.n	a14, a15
	mov.n	a13, a15
	mov.n	a12, a15
	mov.n	a11, sp
	mov.n	a10, a5
.LVL110:
	call8	mbedtls_rsa_export
.LVL111:
	mov.n	a2, a10
	bnez.n	a10, .L37
	.loc 1 283 0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL112:
	call8	mbedtls_asn1_write_mpi
.LVL113:
	.loc 1 286 0
	add.n	a5, a4, a10
	.loc 1 283 0
	mov.n	a2, a10
	.loc 1 286 0
	movgez	a4, a5, a10
.LVL114:
.L37:
	.loc 1 290 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL115:
	mov.n	a8, a2
	.loc 1 291 0
	bltz	a2, .L40
	.loc 1 294 0
	movi.n	a12, 0
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_int
.LVL116:
	mov.n	a8, a10
.LVL117:
	bltz	a10, .L40
	.loc 1 294 0 is_stmt 0 discriminator 2
	add.n	a4, a10, a4
.LVL118:
	.loc 1 295 0 is_stmt 1 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_len
.LVL119:
	mov.n	a8, a10
.LVL120:
	bltz	a10, .L40
	add.n	a4, a10, a4
.LVL121:
	.loc 1 296 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL122:
	mov.n	a8, a10
	add.n	a2, a10, a4
	bgez	a10, .L39
	j	.L40
.LVL123:
.L36:
.LBE19:
	.loc 1 303 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL124:
	.loc 1 356 0
	l32r	a8, .LC1
	.loc 1 303 0
	bnei	a10, 2, .L40
	l32i.n	a2, a2, 4
.LVL125:
.LBB20:
	.loc 1 320 0
	mov.n	a11, a3
	mov.n	a12, a2
	addi.n	a10, sp, 12
	call8	pk_write_ec_pubkey
.LVL126:
	mov.n	a8, a10
	bltz	a10, .L40
.LVL127:
	.loc 1 322 0 discriminator 2
	l32i.n	a4, sp, 12
	.loc 1 323 0 discriminator 2
	movi	a8, -0x6c
	.loc 1 322 0 discriminator 2
	sub	a5, a4, a3
	blti	a5, 1, .L40
	.loc 1 324 0
	addi.n	a4, a4, -1
	s32i.n	a4, sp, 12
	movi.n	a5, 0
	s8i	a5, a4, 0
	.loc 1 325 0
	addi.n	a4, a10, 1
.LVL128:
	.loc 1 327 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL129:
	call8	mbedtls_asn1_write_len
.LVL130:
	mov.n	a8, a10
.LVL131:
	mov.n	a7, a10
	bltz	a10, .L40
.LVL132:
	.loc 1 328 0 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL133:
	mov.n	a8, a10
.LVL134:
	bltz	a10, .L40
	.loc 1 327 0 discriminator 2
	add.n	a10, a7, a4
	.loc 1 328 0 discriminator 2
	add.n	a10, a8, a10
	s32i.n	a10, sp, 16
.LVL135:
	.loc 1 330 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	addi.n	a10, sp, 12
.LVL136:
	call8	mbedtls_asn1_write_len
.LVL137:
	mov.n	a7, a10
.LVL138:
	mov.n	a8, a10
	bltz	a10, .L40
.LVL139:
	.loc 1 331 0 discriminator 2
	movi	a12, 0xa1
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL140:
	mov.n	a6, a10
.LVL141:
	mov.n	a8, a10
	bltz	a10, .L40
.LVL142:
	.loc 1 336 0 discriminator 2
	l32i.n	a12, a2, 0
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	pk_write_ec_param$isra$2
.LVL143:
	mov.n	a4, a10
.LVL144:
	mov.n	a8, a10
	bltz	a10, .L40
.LVL145:
	.loc 1 338 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_len
.LVL146:
	mov.n	a5, a10
.LVL147:
	mov.n	a8, a10
	bltz	a10, .L40
.LVL148:
	.loc 1 339 0 discriminator 2
	movi	a12, 0xa0
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL149:
	s32i.n	a10, sp, 20
	mov.n	a8, a10
.LVL150:
	bltz	a10, .L40
.LVL151:
	.loc 1 344 0 discriminator 2
	addi	a12, a2, 124
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_mpi
.LVL152:
	mov.n	a8, a10
	mov.n	a2, a10
	bltz	a10, .L40
	.loc 1 345 0 discriminator 2
	l32i.n	a8, sp, 12
	movi.n	a9, 4
	s8i	a9, a8, 0
	.loc 1 348 0 discriminator 2
	movi.n	a12, 1
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_int
.LVL153:
	mov.n	a8, a10
.LVL154:
	bltz	a10, .L40
	.loc 1 341 0 discriminator 2
	l32i.n	a9, sp, 16
	.loc 1 350 0 discriminator 2
	mov.n	a11, a3
	.loc 1 341 0 discriminator 2
	add.n	a7, a7, a9
.LVL155:
	add.n	a6, a7, a6
	add.n	a4, a6, a4
	add.n	a5, a4, a5
	l32i.n	a4, sp, 20
	add.n	a5, a5, a4
	.loc 1 344 0 discriminator 2
	add.n	a2, a2, a5
	.loc 1 348 0 discriminator 2
	add.n	a2, a10, a2
.LVL156:
	.loc 1 350 0 discriminator 2
	mov.n	a12, a2
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_len
.LVL157:
	mov.n	a8, a10
.LVL158:
	bltz	a10, .L40
	add.n	a2, a10, a2
.LVL159:
	.loc 1 351 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL160:
	mov.n	a8, a10
	bltz	a10, .L40
	add.n	a2, a10, a2
.LVL161:
.L39:
.LBE20:
	.loc 1 358 0
	mov.n	a8, a2
.LVL162:
.L40:
	.loc 1 359 0
	mov.n	a2, a8
	retw.n
.LFE15:
	.size	mbedtls_pk_write_key_der, .-mbedtls_pk_write_key_der
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"-----END PUBLIC KEY-----\n"
.LC5:
	.string	"-----BEGIN PUBLIC KEY-----\n"
	.section	.text.mbedtls_pk_write_pubkey_pem,"ax",@progbits
	.literal_position
	.literal .LC2, 2086
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, 2104
	.align	4
	.global	mbedtls_pk_write_pubkey_pem
	.type	mbedtls_pk_write_pubkey_pem, @function
mbedtls_pk_write_pubkey_pem:
.LFB16:
	.loc 1 455 0
.LVL163:
	entry	sp, 2144
.LCFI5:
	.loc 1 458 0
	addi	a6, sp, 16
	addmi	a5, a6, 0x800
	movi.n	a8, 0
	s32i.n	a8, a5, 40
	.loc 1 460 0
	l32r	a5, .LC2
	mov.n	a11, a6
	mov.n	a12, a5
	mov.n	a10, a2
	call8	mbedtls_pk_write_pubkey_der
.LVL164:
	bltz	a10, .L62
	.loc 1 466 0
	l32r	a2, .LC8
.LVL165:
	sub	a12, a5, a10
	mov.n	a13, a10
	add.n	a5, sp, a2
	addi	a6, sp, 16
	l32r	a11, .LC4
	l32r	a10, .LC6
.LVL166:
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	add.n	a12, a6, a12
	call8	mbedtls_pem_write_buffer
.LVL167:
.L62:
	.loc 1 474 0
	mov.n	a2, a10
	retw.n
.LFE16:
	.size	mbedtls_pk_write_pubkey_pem, .-mbedtls_pk_write_pubkey_pem
	.section	.rodata.str1.1
.LC9:
	.string	"-----END RSA PRIVATE KEY-----\n"
.LC11:
	.string	"-----BEGIN RSA PRIVATE KEY-----\n"
.LC13:
	.string	"-----END EC PRIVATE KEY-----\n"
.LC15:
	.string	"-----BEGIN EC PRIVATE KEY-----\n"
	.section	.text.mbedtls_pk_write_key_pem,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, -14720
	.literal .LC18, 5679
	.literal .LC19, 5680
	.align	4
	.global	mbedtls_pk_write_key_pem
	.type	mbedtls_pk_write_key_pem, @function
mbedtls_pk_write_key_pem:
.LFB17:
	.loc 1 477 0
.LVL168:
	entry	sp, 5744
.LCFI6:
	.loc 1 481 0
	addi	a6, sp, 16
	.loc 1 483 0
	l32r	a12, .LC18
	.loc 1 481 0
	movi.n	a8, 0
	addmi	a5, a6, 0x1600
	.loc 1 483 0
	mov.n	a11, a6
	mov.n	a10, a2
	.loc 1 481 0
	s32i.n	a8, a5, 48
	.loc 1 483 0
	call8	mbedtls_pk_write_key_der
.LVL169:
	mov.n	a5, a10
.LVL170:
	mov.n	a8, a10
	bltz	a10, .L65
	.loc 1 487 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL171:
	beqi	a10, 1, .L68
	.loc 1 495 0
	mov.n	a10, a2
	call8	mbedtls_pk_get_type
.LVL172:
	.loc 1 502 0
	l32r	a8, .LC17
	.loc 1 495 0
	bnei	a10, 2, .L65
	.loc 1 498 0
	l32r	a11, .LC14
	.loc 1 497 0
	l32r	a10, .LC16
	j	.L66
.L68:
	.loc 1 490 0
	l32r	a11, .LC10
	.loc 1 489 0
	l32r	a10, .LC12
.L66:
.LVL173:
	.loc 1 504 0
	l32r	a12, .LC18
	l32r	a8, .LC19
	addi	a2, sp, 16
.LVL174:
	add.n	a8, a2, a8
	sub	a12, a12, a5
	s32i.n	a8, sp, 0
	mov.n	a15, a4
	mov.n	a14, a3
	mov.n	a13, a5
	add.n	a12, a2, a12
	call8	mbedtls_pem_write_buffer
.LVL175:
	mov.n	a8, a10
.LVL176:
.L65:
	.loc 1 512 0
	mov.n	a2, a8
	retw.n
.LFE17:
	.size	mbedtls_pk_write_key_pem, .-mbedtls_pk_write_key_pem
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x860
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x1670
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xe3
	.uleb128 0x9
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x3e
	.byte	0
	.uleb128 0x9
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xe3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbc
	.4byte	0xb8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0xac
	.byte	0x6
	.byte	0x5f
	.4byte	0x1bb
	.uleb128 0x9
	.string	"ver"
	.byte	0x6
	.byte	0x61
	.4byte	0x3e
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x62
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.string	"N"
	.byte	0x6
	.byte	0x64
	.4byte	0xe9
	.byte	0x8
	.uleb128 0x9
	.string	"E"
	.byte	0x6
	.byte	0x65
	.4byte	0xe9
	.byte	0x14
	.uleb128 0x9
	.string	"D"
	.byte	0x6
	.byte	0x67
	.4byte	0xe9
	.byte	0x20
	.uleb128 0x9
	.string	"P"
	.byte	0x6
	.byte	0x68
	.4byte	0xe9
	.byte	0x2c
	.uleb128 0x9
	.string	"Q"
	.byte	0x6
	.byte	0x69
	.4byte	0xe9
	.byte	0x38
	.uleb128 0x9
	.string	"DP"
	.byte	0x6
	.byte	0x6b
	.4byte	0xe9
	.byte	0x44
	.uleb128 0x9
	.string	"DQ"
	.byte	0x6
	.byte	0x6c
	.4byte	0xe9
	.byte	0x50
	.uleb128 0x9
	.string	"QP"
	.byte	0x6
	.byte	0x6d
	.4byte	0xe9
	.byte	0x5c
	.uleb128 0x9
	.string	"RN"
	.byte	0x6
	.byte	0x6f
	.4byte	0xe9
	.byte	0x68
	.uleb128 0x9
	.string	"RP"
	.byte	0x6
	.byte	0x71
	.4byte	0xe9
	.byte	0x74
	.uleb128 0x9
	.string	"RQ"
	.byte	0x6
	.byte	0x72
	.4byte	0xe9
	.byte	0x80
	.uleb128 0x9
	.string	"Vi"
	.byte	0x6
	.byte	0x74
	.4byte	0xe9
	.byte	0x8c
	.uleb128 0x9
	.string	"Vf"
	.byte	0x6
	.byte	0x75
	.4byte	0xe9
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x77
	.4byte	0x3e
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7a
	.4byte	0x3e
	.byte	0xa8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x82
	.4byte	0xf4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x44
	.4byte	0x227
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x53
	.4byte	0x1c6
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x24
	.byte	0x7
	.byte	0x72
	.4byte	0x25d
	.uleb128 0x9
	.string	"X"
	.byte	0x7
	.byte	0x74
	.4byte	0xe9
	.byte	0
	.uleb128 0x9
	.string	"Y"
	.byte	0x7
	.byte	0x75
	.4byte	0xe9
	.byte	0xc
	.uleb128 0x9
	.string	"Z"
	.byte	0x7
	.byte	0x76
	.4byte	0xe9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x78
	.4byte	0x232
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x7c
	.byte	0x7
	.byte	0x9f
	.4byte	0x31a
	.uleb128 0x9
	.string	"id"
	.byte	0x7
	.byte	0xa1
	.4byte	0x227
	.byte	0
	.uleb128 0x9
	.string	"P"
	.byte	0x7
	.byte	0xa2
	.4byte	0xe9
	.byte	0x4
	.uleb128 0x9
	.string	"A"
	.byte	0x7
	.byte	0xa3
	.4byte	0xe9
	.byte	0x10
	.uleb128 0x9
	.string	"B"
	.byte	0x7
	.byte	0xa5
	.4byte	0xe9
	.byte	0x1c
	.uleb128 0x9
	.string	"G"
	.byte	0x7
	.byte	0xa7
	.4byte	0x25d
	.byte	0x28
	.uleb128 0x9
	.string	"N"
	.byte	0x7
	.byte	0xa8
	.4byte	0xe9
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0xa9
	.4byte	0x25
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0xaa
	.4byte	0x25
	.byte	0x5c
	.uleb128 0x9
	.string	"h"
	.byte	0x7
	.byte	0xad
	.4byte	0x30
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0xae
	.4byte	0x32f
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0xb0
	.4byte	0x34f
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0xb1
	.4byte	0x34f
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0xb2
	.4byte	0x81
	.byte	0x70
	.uleb128 0x9
	.string	"T"
	.byte	0x7
	.byte	0xb3
	.4byte	0x349
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0xb4
	.4byte	0x25
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.4byte	0x3e
	.4byte	0x329
	.uleb128 0xe
	.4byte	0x329
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31a
	.uleb128 0xd
	.4byte	0x3e
	.4byte	0x349
	.uleb128 0xe
	.4byte	0x349
	.uleb128 0xe
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x335
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0xb6
	.4byte	0x268
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0xac
	.byte	0x7
	.byte	0xfe
	.4byte	0x390
	.uleb128 0xf
	.string	"grp"
	.byte	0x7
	.2byte	0x100
	.4byte	0x355
	.byte	0
	.uleb128 0xf
	.string	"d"
	.byte	0x7
	.2byte	0x101
	.4byte	0xe9
	.byte	0x7c
	.uleb128 0xf
	.string	"Q"
	.byte	0x7
	.2byte	0x102
	.4byte	0x25d
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x104
	.4byte	0x360
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x4c
	.4byte	0x3d3
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7b
	.4byte	0x3de
	.uleb128 0x11
	.4byte	.LASF51
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x8
	.byte	0x8
	.byte	0x80
	.4byte	0x408
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x8
	.byte	0x82
	.4byte	0x408
	.byte	0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x83
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40e
	.uleb128 0x7
	.4byte	0x3d3
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x84
	.4byte	0x3e3
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x8
	.byte	0x8d
	.4byte	0x439
	.byte	0x3
	.4byte	0x439
	.uleb128 0x13
	.string	"pk"
	.byte	0x8
	.byte	0x8d
	.4byte	0x43f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x7
	.4byte	0x413
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9a
	.4byte	0x45f
	.byte	0x3
	.4byte	0x45f
	.uleb128 0x13
	.string	"pk"
	.byte	0x8
	.byte	0x9a
	.4byte	0x43f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x390
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x83
	.4byte	0x3e
	.byte	0x1
	.4byte	0x4c0
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x83
	.4byte	0x4c0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x83
	.4byte	0x8a
	.uleb128 0x13
	.string	"ec"
	.byte	0x1
	.byte	0x84
	.4byte	0x45f
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.4byte	0x3e
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x87
	.4byte	0x25
	.uleb128 0x15
	.string	"oid"
	.byte	0x1
	.byte	0x88
	.4byte	0x97
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x67
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x578
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x67
	.4byte	0x4c0
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0x67
	.4byte	0x8a
	.4byte	.LLST1
	.uleb128 0x1a
	.string	"ec"
	.byte	0x1
	.byte	0x68
	.4byte	0x45f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x6a
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.4byte	0x578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0x114c
	.4byte	0x566
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
	.byte	0x74
	.sleb128 136
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x85
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0x1158
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x4c
	.4byte	0x588
	.uleb128 0x21
	.4byte	0x7a
	.byte	0x84
	.byte	0
	.uleb128 0x22
	.4byte	0x465
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60d
	.uleb128 0x23
	.4byte	0x475
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0x47e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	0x489
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x489
	.byte	0x9f
	.uleb128 0x25
	.4byte	0x493
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	0x49e
	.byte	0
	.uleb128 0x27
	.4byte	0x4a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x1161
	.4byte	0x5f6
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
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL10
	.4byte	0x116d
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
	.byte	0
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x40
	.4byte	0x3e
	.byte	0x1
	.4byte	0x663
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x4c0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x40
	.4byte	0x8a
	.uleb128 0x13
	.string	"rsa"
	.byte	0x1
	.byte	0x41
	.4byte	0x439
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.uleb128 0x15
	.string	"T"
	.byte	0x1
	.byte	0x45
	.4byte	0xe9
	.uleb128 0x28
	.4byte	.LASF91
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0x94
	.4byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x94
	.4byte	0x4c0
	.4byte	.LLST5
	.uleb128 0x2a
	.4byte	.LASF58
	.byte	0x1
	.byte	0x94
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0x95
	.4byte	0x85b
	.4byte	.LLST6
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x97
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.byte	0
	.uleb128 0x2c
	.4byte	0x60d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x81c
	.uleb128 0x23
	.4byte	0x631
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	0x626
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	0x61d
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x25
	.4byte	0x63c
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	0x647
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	0x65b
	.4byte	.L11
	.uleb128 0x1d
	.4byte	.LVL16
	.4byte	0x1178
	.4byte	0x72e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x1183
	.4byte	0x75c
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x118f
	.4byte	0x77c
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x1183
	.4byte	0x7aa
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x118f
	.4byte	0x7ca
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0x119a
	.4byte	0x7de
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x11a5
	.4byte	0x7fe
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0x11b0
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x11bb
	.4byte	0x830
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0x11bb
	.4byte	0x844
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL36
	.4byte	0x4c6
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
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43f
	.uleb128 0x29
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa9
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0c
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa0c
	.4byte	.LLST13
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xa9
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa9
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.4byte	0x3e
	.4byte	.LLST15
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xac
	.4byte	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0xad
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xad
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	.LASF59
	.byte	0x1
	.byte	0xad
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"oid"
	.byte	0x1
	.byte	0xae
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x663
	.4byte	0x91a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x11a5
	.4byte	0x93a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0x11b0
	.4byte	0x959
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x11bb
	.4byte	0x96d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL53
	.4byte	0x11c7
	.4byte	0x987
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0x11bb
	.4byte	0x99b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0x588
	.4byte	0x9b5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL59
	.4byte	0x11d3
	.4byte	0x9cf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL63
	.4byte	0x11a5
	.4byte	0x9ef
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0x11b0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x413
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd9
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf56
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0xd9
	.4byte	0xa0c
	.4byte	.LLST18
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xd9
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd9
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xdb
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xdc
	.4byte	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0xdd
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x120
	.4byte	.L37
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0
	.4byte	0xd82
	.uleb128 0x1c
	.string	"T"
	.byte	0x1
	.byte	0xe2
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"rsa"
	.byte	0x1
	.byte	0xe3
	.4byte	0x439
	.uleb128 0x1d
	.4byte	.LVL74
	.4byte	0x1178
	.4byte	0xac0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL75
	.4byte	0x11de
	.4byte	0xae4
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL77
	.4byte	0x118f
	.4byte	0xb04
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL80
	.4byte	0x11de
	.4byte	0xb28
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0x118f
	.4byte	0xb48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL86
	.4byte	0x11de
	.4byte	0xb6c
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL88
	.4byte	0x118f
	.4byte	0xb8c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x1183
	.4byte	0xbba
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL93
	.4byte	0x118f
	.4byte	0xbda
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL96
	.4byte	0x1183
	.4byte	0xc08
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0x118f
	.4byte	0xc28
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL101
	.4byte	0x1183
	.4byte	0xc56
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0x118f
	.4byte	0xc76
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL106
	.4byte	0x1183
	.4byte	0xca4
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
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL108
	.4byte	0x118f
	.4byte	0xcc4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL111
	.4byte	0x1183
	.4byte	0xcf2
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL113
	.4byte	0x118f
	.4byte	0xd12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL115
	.4byte	0x119a
	.4byte	0xd26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL116
	.4byte	0x11ea
	.4byte	0xd45
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL119
	.4byte	0x11a5
	.4byte	0xd65
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL122
	.4byte	0x11b0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xf31
	.uleb128 0x34
	.string	"ec"
	.byte	0x1
	.2byte	0x131
	.4byte	0x45f
	.uleb128 0x35
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x35
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LVL126
	.4byte	0x4c6
	.4byte	0xdda
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL130
	.4byte	0x11a5
	.4byte	0xdfa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL133
	.4byte	0x11b0
	.4byte	0xe19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL137
	.4byte	0x11a5
	.4byte	0xe3a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL140
	.4byte	0x11b0
	.4byte	0xe5a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x8
	.byte	0xa1
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL143
	.4byte	0x588
	.4byte	0xe74
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL146
	.4byte	0x11a5
	.4byte	0xe94
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL149
	.4byte	0x11b0
	.4byte	0xeb4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL152
	.4byte	0x118f
	.4byte	0xed5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x72
	.sleb128 124
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL153
	.4byte	0x11ea
	.4byte	0xef4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL157
	.4byte	0x11a5
	.4byte	0xf14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL160
	.4byte	0x11b0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x11bb
	.4byte	0xf45
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL124
	.4byte	0x11bb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101b
	.uleb128 0x37
	.string	"key"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xa0c
	.4byte	.LLST24
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"ret"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x3e
	.4byte	.LLST25
	.uleb128 0x3b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x101b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x3b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LVL164
	.4byte	0x861
	.4byte	0xfeb
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL167
	.4byte	0x11f5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x4c
	.4byte	0x102c
	.uleb128 0x3c
	.4byte	0x7a
	.2byte	0x825
	.byte	0
	.uleb128 0x36
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0x37
	.string	"key"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0xa0c
	.4byte	.LLST26
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"ret"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x3e
	.4byte	.LLST27
	.uleb128 0x3b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1df
	.4byte	0x113b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5728
	.uleb128 0x35
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x97
	.4byte	.LLST28
	.uleb128 0x3a
	.string	"end"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x97
	.4byte	.LLST29
	.uleb128 0x3b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL169
	.4byte	0xa12
	.4byte	0x10e2
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x162f
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL171
	.4byte	0x11bb
	.4byte	0x10f6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL172
	.4byte	0x11bb
	.4byte	0x110a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL175
	.4byte	0x11f5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x162f
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x76
	.sleb128 5680
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x4c
	.4byte	0x114c
	.uleb128 0x3c
	.4byte	0x7a
	.2byte	0x162e
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x1c9
	.uleb128 0x3e
	.4byte	.LASF92
	.4byte	.LASF92
	.uleb128 0x3d
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x1ec
	.uleb128 0x3f
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x6f
	.uleb128 0x3f
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.byte	0xc5
	.uleb128 0x3d
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x136
	.uleb128 0x3f
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x56
	.uleb128 0x3f
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0xcc
	.uleb128 0x3f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2e
	.uleb128 0x3f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xa
	.byte	0x3a
	.uleb128 0x3d
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x1ae
	.uleb128 0x3d
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x1d5
	.uleb128 0x3f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0x7f
	.uleb128 0x3d
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x17d
	.uleb128 0x3f
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xa
	.byte	0x99
	.uleb128 0x3f
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.byte	0x79
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
	.uleb128 0x9
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
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
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL61
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL138
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL158
	.4byte	.LVL160-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL137-1
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL155
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL125
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL166
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL168
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL170
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL173
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL173
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"mbedtls_pk_ec"
.LASF80:
	.string	"mbedtls_asn1_write_tag"
.LASF45:
	.string	"MBEDTLS_PK_RSA"
.LASF38:
	.string	"modp"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF43:
	.string	"mbedtls_ecp_keypair"
.LASF73:
	.string	"mbedtls_oid_get_oid_by_ec_grp"
.LASF28:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/pkwrite.c"
.LASF69:
	.string	"olen"
.LASF76:
	.string	"mbedtls_rsa_export"
.LASF13:
	.string	"uint32_t"
.LASF82:
	.string	"mbedtls_oid_get_oid_by_pk_alg"
.LASF79:
	.string	"mbedtls_asn1_write_len"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF39:
	.string	"t_pre"
.LASF81:
	.string	"mbedtls_pk_get_type"
.LASF52:
	.string	"mbedtls_pk_context"
.LASF34:
	.string	"mbedtls_ecp_point"
.LASF8:
	.string	"long long unsigned int"
.LASF46:
	.string	"MBEDTLS_PK_ECKEY"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF49:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF87:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF70:
	.string	"mbedtls_pk_write_key_pem"
.LASF5:
	.string	"size_t"
.LASF32:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF64:
	.string	"par_len"
.LASF72:
	.string	"mbedtls_ecp_point_write_binary"
.LASF55:
	.string	"mbedtls_pk_rsa"
.LASF42:
	.string	"T_size"
.LASF48:
	.string	"MBEDTLS_PK_ECDSA"
.LASF44:
	.string	"MBEDTLS_PK_NONE"
.LASF12:
	.string	"char"
.LASF59:
	.string	"oid_len"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF61:
	.string	"mbedtls_pk_write_pubkey"
.LASF7:
	.string	"long long int"
.LASF84:
	.string	"mbedtls_rsa_export_crt"
.LASF17:
	.string	"padding"
.LASF37:
	.string	"nbits"
.LASF41:
	.string	"t_data"
.LASF50:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF65:
	.string	"mbedtls_pk_write_key_der"
.LASF90:
	.string	"pk_write_ec_pubkey"
.LASF63:
	.string	"size"
.LASF68:
	.string	"output_buf"
.LASF16:
	.string	"mbedtls_rsa_context"
.LASF78:
	.string	"mbedtls_mpi_free"
.LASF85:
	.string	"mbedtls_asn1_write_int"
.LASF86:
	.string	"mbedtls_pem_write_buffer"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF74:
	.string	"mbedtls_asn1_write_oid"
.LASF19:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF83:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF53:
	.string	"pk_info"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF9:
	.string	"long int"
.LASF77:
	.string	"mbedtls_asn1_write_mpi"
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF58:
	.string	"start"
.LASF89:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF51:
	.string	"mbedtls_pk_info_t"
.LASF10:
	.string	"sizetype"
.LASF57:
	.string	"pk_write_ec_param"
.LASF11:
	.string	"long unsigned int"
.LASF54:
	.string	"pk_ctx"
.LASF36:
	.string	"pbits"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"mbedtls_pk_write_pubkey_pem"
.LASF6:
	.string	"__uint32_t"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF60:
	.string	"pk_write_rsa_pubkey"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"mbedtls_mpi"
.LASF33:
	.string	"mbedtls_ecp_group_id"
.LASF1:
	.string	"short unsigned int"
.LASF71:
	.string	"begin"
.LASF18:
	.string	"hash_id"
.LASF92:
	.string	"memcpy"
.LASF91:
	.string	"end_of_export"
.LASF35:
	.string	"mbedtls_ecp_group"
.LASF40:
	.string	"t_post"
.LASF66:
	.string	"pub_len"
.LASF62:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF75:
	.string	"mbedtls_mpi_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
