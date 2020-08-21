	.file	"x509write_crt.c"
	.text
.Ltext0:
	.section	.text.x509_write_time$constprop$0,"ax",@progbits
	.align	4
	.type	x509_write_time$constprop$0, @function
x509_write_time$constprop$0:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509write_crt.c"
	.loc 1 268 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 277 0
	l8ui	a8, a4, 0
	.loc 1 268 0
	mov.n	a12, a4
	.loc 1 277 0
	movi.n	a4, 0x32
.LVL2:
	bne	a8, a4, .L2
	l8ui	a8, a12, 1
	movi.n	a4, 0x30
	bne	a8, a4, .L2
	l8ui	a4, a12, 2
	movi.n	a8, 0x34
	bltu	a8, a4, .L2
	.loc 1 279 0
	movi.n	a13, 0xd
	addi.n	a12, a12, 2
.LVL3:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL4:
	mov.n	a4, a10
	bltz	a10, .L3
.LVL5:
	.loc 1 282 0
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL6:
	bltz	a10, .L3
	add.n	a4, a10, a4
.LVL7:
	.loc 1 283 0
	movi.n	a12, 0x17
	j	.L12
.LVL8:
.L2:
	.loc 1 287 0
	movi.n	a13, 0xf
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL9:
	mov.n	a4, a10
	bltz	a10, .L3
.LVL10:
	.loc 1 290 0
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL11:
	bltz	a10, .L3
	add.n	a4, a10, a4
.LVL12:
	.loc 1 291 0
	movi.n	a12, 0x18
.LVL13:
.L12:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_tag
.LVL14:
	bltz	a10, .L3
	add.n	a10, a10, a4
.LVL15:
.L3:
	.loc 1 295 0
	mov.n	a2, a10
.LVL16:
	retw.n
.LFE29:
	.size	x509_write_time$constprop$0, .-x509_write_time$constprop$0
	.section	.text.mbedtls_x509write_crt_init,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_init
	.type	mbedtls_x509write_crt_init, @function
mbedtls_x509write_crt_init:
.LFB10:
	.loc 1 49 0
.LVL17:
	entry	sp, 32
.LCFI1:
	.loc 1 50 0
	movi.n	a12, 0x48
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL18:
	.loc 1 52 0
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_init
.LVL19:
	.loc 1 53 0
	movi.n	a8, 2
	s32i.n	a8, a2, 0
	retw.n
.LFE10:
	.size	mbedtls_x509write_crt_init, .-mbedtls_x509write_crt_init
	.section	.text.mbedtls_x509write_crt_free,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_free
	.type	mbedtls_x509write_crt_free, @function
mbedtls_x509write_crt_free:
.LFB11:
	.loc 1 57 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 58 0
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_free
.LVL21:
	.loc 1 60 0
	addi	a10, a2, 24
	call8	mbedtls_asn1_free_named_data_list
.LVL22:
	.loc 1 61 0
	addi	a10, a2, 28
	call8	mbedtls_asn1_free_named_data_list
.LVL23:
	.loc 1 62 0
	addi	a10, a2, 68
	call8	mbedtls_asn1_free_named_data_list
.LVL24:
	.loc 1 64 0
	movi.n	a11, 0x48
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL25:
	retw.n
.LFE11:
	.size	mbedtls_x509write_crt_free, .-mbedtls_x509write_crt_free
	.section	.text.mbedtls_x509write_crt_set_version,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_version
	.type	mbedtls_x509write_crt_set_version, @function
mbedtls_x509write_crt_set_version:
.LFB12:
	.loc 1 68 0
.LVL26:
	entry	sp, 32
.LCFI3:
	.loc 1 69 0
	s32i.n	a3, a2, 0
	retw.n
.LFE12:
	.size	mbedtls_x509write_crt_set_version, .-mbedtls_x509write_crt_set_version
	.section	.text.mbedtls_x509write_crt_set_md_alg,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_md_alg
	.type	mbedtls_x509write_crt_set_md_alg, @function
mbedtls_x509write_crt_set_md_alg:
.LFB13:
	.loc 1 73 0
.LVL27:
	entry	sp, 32
.LCFI4:
	.loc 1 74 0
	s32i.n	a3, a2, 32
	retw.n
.LFE13:
	.size	mbedtls_x509write_crt_set_md_alg, .-mbedtls_x509write_crt_set_md_alg
	.section	.text.mbedtls_x509write_crt_set_subject_key,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_subject_key
	.type	mbedtls_x509write_crt_set_subject_key, @function
mbedtls_x509write_crt_set_subject_key:
.LFB14:
	.loc 1 78 0
.LVL28:
	entry	sp, 32
.LCFI5:
	.loc 1 79 0
	s32i.n	a3, a2, 16
	retw.n
.LFE14:
	.size	mbedtls_x509write_crt_set_subject_key, .-mbedtls_x509write_crt_set_subject_key
	.section	.text.mbedtls_x509write_crt_set_issuer_key,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_issuer_key
	.type	mbedtls_x509write_crt_set_issuer_key, @function
mbedtls_x509write_crt_set_issuer_key:
.LFB15:
	.loc 1 83 0
.LVL29:
	entry	sp, 32
.LCFI6:
	.loc 1 84 0
	s32i.n	a3, a2, 20
	retw.n
.LFE15:
	.size	mbedtls_x509write_crt_set_issuer_key, .-mbedtls_x509write_crt_set_issuer_key
	.section	.text.mbedtls_x509write_crt_set_subject_name,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_subject_name
	.type	mbedtls_x509write_crt_set_subject_name, @function
mbedtls_x509write_crt_set_subject_name:
.LFB16:
	.loc 1 89 0
.LVL30:
	entry	sp, 32
.LCFI7:
	.loc 1 90 0
	mov.n	a11, a3
	addi	a10, a2, 24
	call8	mbedtls_x509_string_to_names
.LVL31:
	.loc 1 91 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LFE16:
	.size	mbedtls_x509write_crt_set_subject_name, .-mbedtls_x509write_crt_set_subject_name
	.section	.text.mbedtls_x509write_crt_set_issuer_name,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_issuer_name
	.type	mbedtls_x509write_crt_set_issuer_name, @function
mbedtls_x509write_crt_set_issuer_name:
.LFB17:
	.loc 1 95 0
.LVL33:
	entry	sp, 32
.LCFI8:
	.loc 1 96 0
	mov.n	a11, a3
	addi	a10, a2, 28
	call8	mbedtls_x509_string_to_names
.LVL34:
	.loc 1 97 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LFE17:
	.size	mbedtls_x509write_crt_set_issuer_name, .-mbedtls_x509write_crt_set_issuer_name
	.section	.text.mbedtls_x509write_crt_set_serial,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_serial
	.type	mbedtls_x509write_crt_set_serial, @function
mbedtls_x509write_crt_set_serial:
.LFB18:
	.loc 1 100 0
.LVL36:
	entry	sp, 32
.LCFI9:
	.loc 1 103 0
	mov.n	a11, a3
	addi.n	a10, a2, 4
	call8	mbedtls_mpi_copy
.LVL37:
	.loc 1 107 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LFE18:
	.size	mbedtls_x509write_crt_set_serial, .-mbedtls_x509write_crt_set_serial
	.section	.text.mbedtls_x509write_crt_set_validity,"ax",@progbits
	.literal_position
	.literal .LC0, -10240
	.align	4
	.global	mbedtls_x509write_crt_set_validity
	.type	mbedtls_x509write_crt_set_validity, @function
mbedtls_x509write_crt_set_validity:
.LFB19:
	.loc 1 111 0
.LVL39:
	entry	sp, 32
.LCFI10:
	.loc 1 112 0
	mov.n	a10, a3
	call8	strlen
.LVL40:
	movi.n	a9, 0xe
	mov.n	a5, a10
	.loc 1 115 0
	l32r	a8, .LC0
	.loc 1 112 0
	bne	a10, a9, .L23
	.loc 1 113 0 discriminator 1
	mov.n	a10, a4
	call8	strlen
.LVL41:
	.loc 1 115 0 discriminator 1
	l32r	a8, .LC0
	.loc 1 112 0 discriminator 1
	bne	a10, a5, .L23
	.loc 1 117 0
	movi.n	a12, 0xf
	mov.n	a11, a3
	addi	a10, a2, 36
	call8	strncpy
.LVL42:
	.loc 1 118 0
	movi.n	a12, 0xf
	mov.n	a11, a4
	addi	a10, a2, 52
	call8	strncpy
.LVL43:
	.loc 1 119 0
	movi.n	a8, 0x5a
	s8i	a8, a2, 50
	.loc 1 120 0
	s8i	a8, a2, 66
	.loc 1 122 0
	movi.n	a8, 0
.L23:
	.loc 1 123 0
	mov.n	a2, a8
.LVL44:
	retw.n
.LFE19:
	.size	mbedtls_x509write_crt_set_validity, .-mbedtls_x509write_crt_set_validity
	.section	.text.mbedtls_x509write_crt_set_extension,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_crt_set_extension
	.type	mbedtls_x509write_crt_set_extension, @function
mbedtls_x509write_crt_set_extension:
.LFB20:
	.loc 1 129 0
.LVL45:
	entry	sp, 32
.LCFI11:
	.loc 1 129 0
	mov.n	a15, a7
	.loc 1 130 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a2, 68
	call8	mbedtls_x509_set_extension
.LVL46:
	.loc 1 132 0
	mov.n	a2, a10
.LVL47:
	.loc 1 129 0
	.loc 1 132 0
	retw.n
.LFE20:
	.size	mbedtls_x509write_crt_set_extension, .-mbedtls_x509write_crt_set_extension
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"U\035\023"
	.section	.text.mbedtls_x509write_crt_set_basic_constraints,"ax",@progbits
	.literal_position
	.literal .LC1, -10240
	.literal .LC3, .LC2
	.align	4
	.global	mbedtls_x509write_crt_set_basic_constraints
	.type	mbedtls_x509write_crt_set_basic_constraints, @function
mbedtls_x509write_crt_set_basic_constraints:
.LFB21:
	.loc 1 136 0
.LVL48:
	entry	sp, 48
.LCFI12:
	.loc 1 139 0
	addi.n	a8, sp, 9
	.loc 1 142 0
	movi.n	a12, 9
	movi.n	a11, 0
	mov.n	a10, sp
	.loc 1 139 0
	s32i.n	a8, sp, 12
.LVL49:
	.loc 1 142 0
	call8	memset
.LVL50:
	.loc 1 144 0
	beqz.n	a3, .L40
	movi	a8, 0x7f
	.loc 1 145 0
	l32r	a10, .LC1
	.loc 1 144 0
	blt	a8, a4, .L28
.L40:
	.loc 1 147 0
	beqz.n	a3, .L31
	.loc 1 149 0
	bltz	a4, .L35
	.loc 1 151 0
	mov.n	a12, a4
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_int
.LVL51:
	mov.n	a3, a10
.LVL52:
	bltz	a10, .L28
.LVL53:
	j	.L32
.LVL54:
.L35:
	.loc 1 140 0
	movi.n	a3, 0
.LVL55:
.L32:
	.loc 1 153 0
	movi.n	a12, 1
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_bool
.LVL56:
	bltz	a10, .L28
	.loc 1 153 0 is_stmt 0 discriminator 2
	add.n	a3, a10, a3
.LVL57:
.L31:
	.loc 1 156 0 is_stmt 1
	mov.n	a12, a3
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_len
.LVL58:
	mov.n	a4, a10
.LVL59:
	bltz	a10, .L28
.LVL60:
	.loc 1 157 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	mbedtls_asn1_write_tag
.LVL61:
	bltz	a10, .L28
	.loc 1 156 0 discriminator 2
	add.n	a3, a4, a3
	.loc 1 157 0 discriminator 2
	add.n	a15, a10, a3
.LVL62:
.LBB12:
.LBB13:
	.loc 1 130 0 discriminator 2
	sub	a14, sp, a15
	l32r	a11, .LC3
	addi.n	a14, a14, 9
	movi.n	a13, 0
	movi.n	a12, 3
	addi	a10, a2, 68
.LVL63:
	call8	mbedtls_x509_set_extension
.LVL64:
.L28:
.LBE13:
.LBE12:
	.loc 1 163 0
	mov.n	a2, a10
.LVL65:
	retw.n
.LFE21:
	.size	mbedtls_x509write_crt_set_basic_constraints, .-mbedtls_x509write_crt_set_basic_constraints
	.section	.rodata.str1.1
.LC5:
	.string	"U\035\016"
	.section	.text.mbedtls_x509write_crt_set_subject_key_identifier,"ax",@progbits
	.literal_position
	.literal .LC4, 2068
	.literal .LC6, .LC5
	.align	4
	.global	mbedtls_x509write_crt_set_subject_key_identifier
	.type	mbedtls_x509write_crt_set_subject_key_identifier, @function
mbedtls_x509write_crt_set_subject_key_identifier:
.LFB22:
	.loc 1 167 0
.LVL66:
	entry	sp, 2112
.LCFI13:
	.loc 1 170 0
	l32r	a3, .LC4
	.loc 1 173 0
	movi.n	a11, 0
	.loc 1 170 0
	add.n	a6, sp, a3
	.loc 1 173 0
	mov.n	a12, a3
	.loc 1 170 0
	addmi	a5, sp, 0x800
	.loc 1 173 0
	mov.n	a10, sp
	.loc 1 170 0
	s32i.n	a6, a5, 20
.LVL67:
	.loc 1 173 0
	call8	memset
.LVL68:
	.loc 1 174 0
	l32i.n	a12, a2, 16
	mov.n	a11, sp
	mov.n	a10, a6
	call8	mbedtls_pk_write_pubkey
.LVL69:
	bltz	a10, .L46
.LVL70:
	.loc 1 176 0 discriminator 2
	sub	a4, a3, a10
	mov.n	a11, a10
	mov.n	a12, a5
	add.n	a10, sp, a4
.LVL71:
	call8	mbedtls_sha1_ret
.LVL72:
	mov.n	a4, a10
	.loc 1 178 0 discriminator 2
	bnez.n	a10, .L46
	.loc 1 183 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	mov.n	a10, a6
	.loc 1 180 0
	s32i.n	a5, a5, 20
.LVL73:
	.loc 1 183 0
	call8	mbedtls_asn1_write_len
.LVL74:
	mov.n	a5, a10
	bltz	a10, .L46
.LVL75:
	.loc 1 184 0 discriminator 2
	movi.n	a12, 4
	mov.n	a11, sp
	mov.n	a10, a6
	call8	mbedtls_asn1_write_tag
.LVL76:
	bltz	a10, .L46
	.loc 1 183 0 discriminator 2
	addi	a15, a5, 20
	.loc 1 184 0 discriminator 2
	add.n	a15, a10, a15
.LVL77:
.LBB14:
.LBB15:
	.loc 1 130 0 discriminator 2
	sub	a14, a3, a15
	l32r	a11, .LC6
	add.n	a14, sp, a14
	mov.n	a13, a4
	movi.n	a12, 3
	addi	a10, a2, 68
.LVL78:
	call8	mbedtls_x509_set_extension
.LVL79:
.L46:
.LBE15:
.LBE14:
	.loc 1 189 0
	mov.n	a2, a10
.LVL80:
	retw.n
.LFE22:
	.size	mbedtls_x509write_crt_set_subject_key_identifier, .-mbedtls_x509write_crt_set_subject_key_identifier
	.section	.rodata.str1.1
.LC8:
	.string	"U\035#"
	.section	.text.mbedtls_x509write_crt_set_authority_key_identifier,"ax",@progbits
	.literal_position
	.literal .LC7, 2068
	.literal .LC9, .LC8
	.align	4
	.global	mbedtls_x509write_crt_set_authority_key_identifier
	.type	mbedtls_x509write_crt_set_authority_key_identifier, @function
mbedtls_x509write_crt_set_authority_key_identifier:
.LFB23:
	.loc 1 192 0
.LVL81:
	entry	sp, 2112
.LCFI14:
	.loc 1 195 0
	l32r	a4, .LC7
	.loc 1 198 0
	movi.n	a11, 0
	.loc 1 195 0
	add.n	a6, sp, a4
	.loc 1 198 0
	mov.n	a12, a4
	.loc 1 195 0
	addmi	a3, sp, 0x800
	.loc 1 198 0
	mov.n	a10, sp
	.loc 1 195 0
	s32i.n	a6, a3, 20
.LVL82:
	.loc 1 198 0
	call8	memset
.LVL83:
	.loc 1 199 0
	l32i.n	a12, a2, 20
	mov.n	a11, sp
	mov.n	a10, a6
	call8	mbedtls_pk_write_pubkey
.LVL84:
	bltz	a10, .L52
.LVL85:
	.loc 1 201 0 discriminator 2
	sub	a5, a4, a10
	mov.n	a11, a10
	mov.n	a12, a3
	add.n	a10, sp, a5
.LVL86:
	call8	mbedtls_sha1_ret
.LVL87:
	mov.n	a5, a10
	.loc 1 203 0 discriminator 2
	bnez.n	a10, .L52
	.loc 1 208 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	mov.n	a10, a6
	.loc 1 205 0
	s32i.n	a3, a3, 20
.LVL88:
	.loc 1 208 0
	call8	mbedtls_asn1_write_len
.LVL89:
	mov.n	a3, a10
	bltz	a10, .L52
.LVL90:
	.loc 1 209 0 discriminator 2
	movi	a12, 0x80
	mov.n	a11, sp
	mov.n	a10, a6
	call8	mbedtls_asn1_write_tag
.LVL91:
	bltz	a10, .L52
	.loc 1 208 0 discriminator 2
	addi	a3, a3, 20
	.loc 1 209 0 discriminator 2
	add.n	a3, a10, a3
.LVL92:
	.loc 1 211 0 discriminator 2
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a6
.LVL93:
	call8	mbedtls_asn1_write_len
.LVL94:
	mov.n	a7, a10
	bltz	a10, .L52
.LVL95:
	.loc 1 212 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, sp
	mov.n	a10, a6
	call8	mbedtls_asn1_write_tag
.LVL96:
	bltz	a10, .L52
	.loc 1 211 0 discriminator 2
	add.n	a15, a7, a3
	.loc 1 212 0 discriminator 2
	add.n	a15, a10, a15
.LVL97:
.LBB16:
.LBB17:
	.loc 1 130 0 discriminator 2
	sub	a14, a4, a15
	l32r	a11, .LC9
	add.n	a14, sp, a14
	mov.n	a13, a5
	movi.n	a12, 3
	addi	a10, a2, 68
.LVL98:
	call8	mbedtls_x509_set_extension
.LVL99:
.L52:
.LBE17:
.LBE16:
	.loc 1 218 0
	mov.n	a2, a10
.LVL100:
	retw.n
.LFE23:
	.size	mbedtls_x509write_crt_set_authority_key_identifier, .-mbedtls_x509write_crt_set_authority_key_identifier
	.section	.rodata.str1.1
.LC11:
	.string	"U\035\017"
	.section	.text.mbedtls_x509write_crt_set_key_usage,"ax",@progbits
	.literal_position
	.literal .LC10, -8320
	.literal .LC12, .LC11
	.align	4
	.global	mbedtls_x509write_crt_set_key_usage
	.type	mbedtls_x509write_crt_set_key_usage, @function
mbedtls_x509write_crt_set_key_usage:
.LFB24:
	.loc 1 223 0
.LVL101:
	entry	sp, 48
.LCFI15:
	.loc 1 229 0
	movi	a8, -0xff
	.loc 1 230 0
	l32r	a10, .LC10
	.loc 1 229 0
	bany	a3, a8, .L60
	.loc 1 232 0
	addi.n	a10, sp, 4
	.loc 1 235 0
	movi.n	a13, 7
	addi.n	a12, sp, 8
	mov.n	a11, sp
	.loc 1 232 0
	s32i.n	a10, sp, 4
	.loc 1 233 0
	s8i	a3, sp, 8
	.loc 1 235 0
	call8	mbedtls_asn1_write_bitstring
.LVL102:
	bnei	a10, 4, .L60
.LVL103:
.LBB18:
.LBB19:
	.loc 1 130 0
	l32r	a11, .LC12
	mov.n	a15, a10
	mov.n	a14, sp
.LVL104:
	movi.n	a13, 1
	movi.n	a12, 3
	addi	a10, a2, 68
.LVL105:
	call8	mbedtls_x509_set_extension
.LVL106:
.L60:
.LBE19:
.LBE18:
	.loc 1 245 0
	mov.n	a2, a10
.LVL107:
	retw.n
.LFE24:
	.size	mbedtls_x509write_crt_set_key_usage, .-mbedtls_x509write_crt_set_key_usage
	.section	.rodata.str1.1
.LC13:
	.string	"`\206H\001\206\370B\001\001"
	.section	.text.mbedtls_x509write_crt_set_ns_cert_type,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.align	4
	.global	mbedtls_x509write_crt_set_ns_cert_type
	.type	mbedtls_x509write_crt_set_ns_cert_type, @function
mbedtls_x509write_crt_set_ns_cert_type:
.LFB25:
	.loc 1 249 0
.LVL108:
	entry	sp, 64
.LCFI16:
	.loc 1 254 0
	addi.n	a10, sp, 4
	.loc 1 256 0
	movi.n	a13, 8
	addi	a12, sp, 16
	mov.n	a11, sp
	.loc 1 249 0
	s8i	a3, sp, 16
	.loc 1 254 0
	s32i.n	a10, sp, 4
	.loc 1 256 0
	call8	mbedtls_asn1_write_bitstring
.LVL109:
	bnei	a10, 4, .L64
.LVL110:
.LBB20:
.LBB21:
	.loc 1 130 0
	l32r	a11, .LC14
	mov.n	a15, a10
	mov.n	a14, sp
.LVL111:
	movi.n	a13, 0
	movi.n	a12, 9
	addi	a10, a2, 68
.LVL112:
	call8	mbedtls_x509_set_extension
.LVL113:
.L64:
.LBE21:
.LBE20:
	.loc 1 266 0
	mov.n	a2, a10
.LVL114:
	retw.n
.LFE25:
	.size	mbedtls_x509write_crt_set_ns_cert_type, .-mbedtls_x509write_crt_set_ns_cert_type
	.section	.text.mbedtls_x509write_crt_der,"ax",@progbits
	.literal_position
	.literal .LC15, -8960
	.literal .LC16, 3148
	.literal .LC17, 3152
	.literal .LC18, 3144
	.literal .LC19, 3136
	.literal .LC20, 3140
	.literal .LC21, 3204
	.literal .LC22, 3208
	.literal .LC23, 3212
	.literal .LC24, 3184
	.literal .LC25, 3188
	.literal .LC26, 3192
	.literal .LC27, 3196
	.literal .LC28, 3200
	.literal .LC29, 3216
	.align	4
	.global	mbedtls_x509write_crt_der
	.type	mbedtls_x509write_crt_der, @function
mbedtls_x509write_crt_der:
.LFB27:
	.loc 1 300 0
.LVL115:
	entry	sp, 3264
.LCFI17:
	.loc 1 300 0
	mov.n	a7, a2
	l32r	a2, .LC21
.LVL116:
	.loc 1 321 0
	l32i.n	a10, a7, 20
	.loc 1 300 0
	add.n	a2, a2, sp
	s32i.n	a4, a2, 0
	l32r	a4, .LC22
.LVL117:
	.loc 1 321 0
	movi.n	a11, 1
	.loc 1 300 0
	add.n	a4, a4, sp
	s32i.n	a5, a4, 0
	l32r	a5, .LC23
.LVL118:
	.loc 1 303 0
	movi.n	a4, 0
.LVL119:
	.loc 1 300 0
	add.n	a5, a5, sp
	s32i.n	a6, a5, 0
	.loc 1 303 0
	addi	a5, sp, 16
	addmi	a2, a5, 0xc00
.LVL120:
	s32i	a4, a2, 76
.LVL121:
	.loc 1 315 0
	addmi	a4, a5, 0x800
	s32i	a4, a2, 72
	.loc 1 321 0
	call8	mbedtls_pk_can_do
.LVL122:
	bnez.n	a10, .L71
	.loc 1 323 0
	l32i.n	a10, a7, 20
	movi.n	a11, 4
	call8	mbedtls_pk_can_do
.LVL123:
	.loc 1 326 0
	l32r	a13, .LC15
	.loc 1 323 0
	beqz.n	a10, .L68
	.loc 1 324 0
	movi.n	a10, 4
	j	.L67
.L71:
	.loc 1 322 0
	movi.n	a10, 1
.L67:
.LVL124:
	.loc 1 328 0
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32i.n	a11, a7, 32
	add.n	a13, a5, a13
	add.n	a12, a5, a12
	call8	mbedtls_oid_get_oid_by_sig_alg
.LVL125:
	mov.n	a13, a10
.LVL126:
	bnez.n	a10, .L68
	.loc 1 309 0
	l32r	a6, .LC24
.LVL127:
	.loc 1 339 0
	l32i.n	a2, a7, 0
	.loc 1 309 0
	add.n	a6, a6, sp
	s32i.n	a10, a6, 0
	.loc 1 339 0
	bnei	a2, 2, .L69
	.loc 1 341 0
	l32r	a6, .LC18
	l32i	a12, a7, 68
	add.n	a6, a5, a6
	mov.n	a11, a5
	mov.n	a10, a6
.LVL128:
	call8	mbedtls_x509_write_extensions
.LVL129:
	mov.n	a13, a10
.LVL130:
	mov.n	a4, a10
	bltz	a10, .L68
.LVL131:
	.loc 1 342 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a6
	call8	mbedtls_asn1_write_len
.LVL132:
	mov.n	a13, a10
	mov.n	a2, a10
	bltz	a10, .L68
.LVL133:
	.loc 1 343 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a5
	mov.n	a10, a6
	call8	mbedtls_asn1_write_tag
.LVL134:
	mov.n	a13, a10
.LVL135:
	bltz	a10, .L68
	.loc 1 342 0 discriminator 2
	add.n	a4, a2, a4
	.loc 1 343 0 discriminator 2
	add.n	a4, a10, a4
.LVL136:
	.loc 1 345 0 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a6
.LVL137:
	call8	mbedtls_asn1_write_len
.LVL138:
	mov.n	a13, a10
.LVL139:
	bltz	a10, .L68
	add.n	a4, a10, a4
.LVL140:
	.loc 1 346 0 discriminator 2
	movi	a12, 0xa3
	mov.n	a11, a5
	mov.n	a10, a6
.LVL141:
	call8	mbedtls_asn1_write_tag
.LVL142:
	mov.n	a13, a10
	bltz	a10, .L68
	l32r	a8, .LC24
	add.n	a9, a10, a4
	add.n	a8, a8, sp
	s32i.n	a9, a8, 0
.LVL143:
.L69:
	.loc 1 353 0
	addmi	a2, a5, 0xc00
	l32i	a12, a2, 72
	l32i.n	a10, a7, 16
	sub	a12, a12, a5
	mov.n	a11, a5
	call8	mbedtls_pk_write_pubkey_der
.LVL144:
	l32r	a4, .LC25
	mov.n	a13, a10
	add.n	a4, a4, sp
	s32i.n	a10, a4, 0
	bltz	a10, .L68
.LVL145:
	.loc 1 361 0 discriminator 2
	l32r	a6, .LC18
	.loc 1 355 0 discriminator 2
	l32i	a4, a2, 72
	.loc 1 361 0 discriminator 2
	add.n	a6, a5, a6
	l32i.n	a12, a7, 24
	.loc 1 355 0 discriminator 2
	sub	a13, a4, a10
	.loc 1 361 0 discriminator 2
	mov.n	a11, a5
	mov.n	a10, a6
.LVL146:
	.loc 1 355 0 discriminator 2
	s32i	a13, a2, 72
.LVL147:
	.loc 1 361 0 discriminator 2
	call8	mbedtls_x509_write_names
.LVL148:
	l32r	a8, .LC26
	mov.n	a13, a10
	add.n	a8, a8, sp
	s32i.n	a10, a8, 0
	bltz	a10, .L68
.LVL149:
	.loc 1 370 0 discriminator 2
	addi	a12, a7, 52
	mov.n	a11, a5
	mov.n	a10, a6
	call8	x509_write_time$constprop$0
.LVL150:
	mov.n	a13, a10
	mov.n	a4, a10
	bltz	a10, .L68
.LVL151:
	.loc 1 373 0 discriminator 2
	addi	a12, a7, 36
	mov.n	a11, a5
	mov.n	a10, a6
	call8	x509_write_time$constprop$0
.LVL152:
	mov.n	a13, a10
.LVL153:
	bltz	a10, .L68
	add.n	a4, a4, a10
.LVL154:
	.loc 1 377 0 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a6
.LVL155:
	call8	mbedtls_asn1_write_len
.LVL156:
	l32r	a9, .LC27
	mov.n	a13, a10
	add.n	a9, a9, sp
	s32i.n	a10, a9, 0
	bltz	a10, .L68
	.loc 1 378 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a5
	mov.n	a10, a6
	call8	mbedtls_asn1_write_tag
.LVL157:
	l32r	a8, .LC28
	mov.n	a13, a10
	add.n	a8, a8, sp
	s32i.n	a10, a8, 0
	bltz	a10, .L68
	.loc 1 384 0 discriminator 2
	l32i.n	a12, a7, 28
	mov.n	a11, a5
	mov.n	a10, a6
	call8	mbedtls_x509_write_names
.LVL158:
	mov.n	a13, a10
	bltz	a10, .L68
	.loc 1 389 0 discriminator 2
	l32r	a9, .LC29
	l32i	a2, a2, 80
	add.n	a9, a9, sp
	s32i.n	a13, a9, 0
	mov.n	a10, a2
	call8	strlen
.LVL159:
	mov.n	a13, a10
	mov.n	a12, a2
	movi.n	a14, 0
	mov.n	a11, a5
	mov.n	a10, a6
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL160:
	l32r	a2, .LC29
	mov.n	a13, a10
.LVL161:
	add.n	a2, a2, sp
	l32i.n	a8, a2, 0
	bltz	a10, .L68
	.loc 1 356 0 discriminator 2
	l32r	a9, .LC24
	.loc 1 395 0 discriminator 2
	addi.n	a12, a7, 4
	.loc 1 356 0 discriminator 2
	add.n	a9, a9, sp
	l32i.n	a2, a9, 0
	l32r	a9, .LC25
.LVL162:
	.loc 1 395 0 discriminator 2
	mov.n	a11, a5
	.loc 1 356 0 discriminator 2
	add.n	a9, a9, sp
.LVL163:
	l32i.n	a9, a9, 0
.LVL164:
	add.n	a10, a2, a9
.LVL165:
	.loc 1 361 0 discriminator 2
	l32r	a2, .LC26
	.loc 1 377 0 discriminator 2
	l32r	a9, .LC27
	.loc 1 361 0 discriminator 2
	add.n	a2, a2, sp
	l32i.n	a2, a2, 0
	.loc 1 377 0 discriminator 2
	add.n	a9, a9, sp
	.loc 1 361 0 discriminator 2
	add.n	a10, a2, a10
	.loc 1 378 0 discriminator 2
	l32r	a2, .LC28
	.loc 1 377 0 discriminator 2
	l32i.n	a9, a9, 0
	.loc 1 378 0 discriminator 2
	add.n	a2, a2, sp
	.loc 1 376 0 discriminator 2
	add.n	a4, a10, a4
.LVL166:
	.loc 1 378 0 discriminator 2
	l32i.n	a2, a2, 0
	.loc 1 377 0 discriminator 2
	add.n	a4, a9, a4
	.loc 1 378 0 discriminator 2
	add.n	a4, a2, a4
	.loc 1 384 0 discriminator 2
	add.n	a4, a8, a4
	.loc 1 395 0 discriminator 2
	mov.n	a10, a6
	.loc 1 389 0 discriminator 2
	add.n	a4, a13, a4
.LVL167:
	.loc 1 395 0 discriminator 2
	call8	mbedtls_asn1_write_mpi
.LVL168:
	mov.n	a13, a10
	bltz	a10, .L68
	.loc 1 402 0 discriminator 2
	l32i.n	a12, a7, 0
	.loc 1 395 0 discriminator 2
	add.n	a4, a10, a4
.LVL169:
	.loc 1 402 0 discriminator 2
	beqz.n	a12, .L70
.LVL170:
	.loc 1 405 0
	l32r	a2, .LC18
	addi	a5, sp, 16
	add.n	a2, a5, a2
	mov.n	a11, a5
	mov.n	a10, a2
.LVL171:
	call8	mbedtls_asn1_write_int
.LVL172:
	mov.n	a13, a10
	mov.n	a5, a10
	bltz	a10, .L68
.LVL173:
	.loc 1 407 0 discriminator 2
	mov.n	a12, a10
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL174:
	mov.n	a13, a10
.LVL175:
	bltz	a10, .L68
	.loc 1 406 0 discriminator 2
	add.n	a4, a4, a5
.LVL176:
	.loc 1 407 0 discriminator 2
	add.n	a4, a10, a4
.LVL177:
	.loc 1 408 0 discriminator 2
	movi	a12, 0xa0
	addi	a11, sp, 16
	mov.n	a10, a2
.LVL178:
	call8	mbedtls_asn1_write_tag
.LVL179:
	mov.n	a13, a10
	bltz	a10, .L68
	add.n	a4, a10, a4
.LVL180:
.L70:
	.loc 1 412 0
	l32r	a2, .LC18
	addi	a6, sp, 16
	add.n	a2, a6, a2
	mov.n	a12, a4
	mov.n	a11, a6
	mov.n	a10, a2
.LVL181:
	call8	mbedtls_asn1_write_len
.LVL182:
	mov.n	a13, a10
	mov.n	a5, a10
	bltz	a10, .L68
.LVL183:
	.loc 1 413 0 discriminator 2
	movi.n	a12, 0x30
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	mbedtls_asn1_write_tag
.LVL184:
	mov.n	a13, a10
.LVL185:
	bltz	a10, .L68
	.loc 1 412 0 discriminator 2
	add.n	a5, a5, a4
	.loc 1 413 0 discriminator 2
	add.n	a5, a10, a5
.LVL186:
	.loc 1 419 0 discriminator 2
	l32i.n	a10, a7, 32
.LVL187:
	call8	mbedtls_md_info_from_type
.LVL188:
	addi	a8, sp, 16
	addmi	a6, a8, 0xc00
	l32i	a11, a6, 72
	mov.n	a13, a6
	mov.n	a12, a5
	call8	mbedtls_md
.LVL189:
	mov.n	a13, a10
.LVL190:
	bnez.n	a10, .L68
	.loc 1 425 0
	l32r	a2, .LC23
.LVL191:
	l32r	a8, .LC22
.LVL192:
	add.n	a2, a2, sp
.LVL193:
	l32i.n	a2, a2, 0
	add.n	a8, a8, sp
.LVL194:
	s32i.n	a2, sp, 4
.LVL195:
	l32i.n	a8, a8, 0
	addi	a9, sp, 16
	s32i.n	a8, sp, 0
	l32r	a15, .LC19
	addmi	a4, a9, 0x800
	l32i.n	a11, a7, 32
	l32i.n	a10, a7, 20
.LVL196:
	add.n	a15, a9, a15
	mov.n	a14, a4
	mov.n	a12, a6
	call8	mbedtls_pk_sign
.LVL197:
	mov.n	a13, a10
.LVL198:
	bnez.n	a10, .L68
	.loc 1 434 0
	l32r	a9, .LC21
	.loc 1 435 0
	l32r	a7, .LC20
.LVL199:
	.loc 1 434 0
	add.n	a9, a9, sp
	l32i.n	a9, a9, 0
	.loc 1 435 0
	l32i	a13, a6, 76
	.loc 1 434 0
	add.n	a2, a3, a9
	s32i	a2, a6, 68
	.loc 1 435 0
	addi	a2, sp, 16
	add.n	a7, a2, a7
	l32i	a15, a6, 64
	l32i	a12, a6, 80
	mov.n	a14, a4
	mov.n	a11, a3
	mov.n	a10, a7
.LVL200:
	call8	mbedtls_x509_write_sig
.LVL201:
	mov.n	a2, a10
.LVL202:
	mov.n	a13, a10
	bltz	a10, .L68
.LVL203:
	.loc 1 438 0 discriminator 2
	l32i	a10, a6, 68
	.loc 1 439 0 discriminator 2
	movi	a13, -0x6c
	.loc 1 438 0 discriminator 2
	sub	a4, a10, a3
	bltu	a4, a5, .L68
	.loc 1 442 0
	l32i	a11, a6, 72
	.loc 1 441 0
	sub	a10, a10, a5
	.loc 1 442 0
	mov.n	a12, a5
	.loc 1 441 0
	s32i	a10, a6, 68
	.loc 1 444 0
	add.n	a5, a5, a2
.LVL204:
	.loc 1 442 0
	call8	memcpy
.LVL205:
	.loc 1 445 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a7
	call8	mbedtls_asn1_write_len
.LVL206:
	mov.n	a13, a10
.LVL207:
	bltz	a10, .L68
.LVL208:
	.loc 1 446 0 discriminator 2
	l32r	a4, .LC29
	movi.n	a12, 0x30
	add.n	a4, a4, sp
	s32i.n	a13, a4, 0
	mov.n	a11, a3
	mov.n	a10, a7
.LVL209:
	call8	mbedtls_asn1_write_tag
.LVL210:
	l32r	a6, .LC29
	add.n	a6, a6, sp
	l32i.n	a13, a6, 0
	.loc 1 445 0 discriminator 2
	add.n	a13, a13, a5
.LVL211:
	.loc 1 449 0 discriminator 2
	add.n	a13, a10, a13
.LVL212:
	.loc 1 446 0 discriminator 2
	bgez	a10, .L68
.L99:
	mov.n	a13, a10
.LVL213:
.L68:
	.loc 1 450 0
	mov.n	a2, a13
	retw.n
.LFE27:
	.size	mbedtls_x509write_crt_der, .-mbedtls_x509write_crt_der
	.section	.rodata.str1.1
.LC31:
	.string	"-----END CERTIFICATE-----\n"
.LC33:
	.string	"-----BEGIN CERTIFICATE-----\n"
	.section	.text.mbedtls_x509write_crt_pem,"ax",@progbits
	.literal_position
	.literal .LC30, 4096
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC35, 4128
	.align	4
	.global	mbedtls_x509write_crt_pem
	.type	mbedtls_x509write_crt_pem, @function
mbedtls_x509write_crt_pem:
.LFB28:
	.loc 1 459 0
.LVL214:
	entry	sp, 4176
.LCFI18:
	.loc 1 462 0
	addi	a8, sp, 16
	.loc 1 459 0
	mov.n	a15, a4
	.loc 1 462 0
	movi.n	a7, 0
	addmi	a4, a8, 0x1000
.LVL215:
	.loc 1 464 0
	mov.n	a10, a2
	l32r	a2, .LC35
.LVL216:
	.loc 1 462 0
	s32i.n	a7, a4, 0
	.loc 1 464 0
	l32r	a7, .LC30
	add.n	a2, a2, sp
	mov.n	a11, a8
	s32i.n	a15, a2, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a7
	call8	mbedtls_x509write_crt_der
.LVL217:
	l32r	a8, .LC35
	add.n	a8, a8, sp
	l32i.n	a15, a8, 0
	bltz	a10, .L104
	.loc 1 470 0
	sub	a12, a7, a10
	mov.n	a13, a10
	addi	a2, sp, 16
	l32r	a11, .LC32
	l32r	a10, .LC34
.LVL218:
	s32i.n	a4, sp, 0
	mov.n	a14, a3
	add.n	a12, a2, a12
	call8	mbedtls_pem_write_buffer
.LVL219:
.L104:
	.loc 1 478 0
	mov.n	a2, a10
	retw.n
.LFE28:
	.size	mbedtls_x509write_crt_pem, .-mbedtls_x509write_crt_pem
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI4-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI9-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI10-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI11-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI12-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x840
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI14-.LFB23
	.byte	0xe
	.uleb128 0x840
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI15-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI16-.LFB25
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI17-.LFB27
	.byte	0xe
	.uleb128 0xcc0
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI18-.LFB28
	.byte	0xe
	.uleb128 0x1050
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1650
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xc
	.4byte	.LASF127
	.4byte	.LASF128
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
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.byte	0x4
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xa0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.4byte	0xb2
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xf3
	.uleb128 0xb
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xf3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbc
	.4byte	0xc8
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x86
	.4byte	0x133
	.uleb128 0xb
	.string	"tag"
	.byte	0x6
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x6
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x6
	.byte	0x8a
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x8c
	.4byte	0x104
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x20
	.byte	0x6
	.byte	0xa6
	.4byte	0x17b
	.uleb128 0xb
	.string	"oid"
	.byte	0x6
	.byte	0xa8
	.4byte	0x133
	.byte	0
	.uleb128 0xb
	.string	"val"
	.byte	0x6
	.byte	0xa9
	.4byte	0x133
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.byte	0xaa
	.4byte	0x17b
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13e
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0xad
	.4byte	0x13e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x38
	.4byte	0x1d5
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x43
	.4byte	0x18c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x4c
	.4byte	0x217
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x54
	.4byte	0x1e0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x7b
	.4byte	0x22d
	.uleb128 0xf
	.4byte	.LASF39
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x8
	.byte	0x80
	.4byte	0x257
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x82
	.4byte	0x257
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x83
	.4byte	0x91
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x9
	.4byte	0x222
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x8
	.byte	0x84
	.4byte	0x232
	.uleb128 0x8
	.byte	0x4
	.4byte	0x273
	.uleb128 0x9
	.4byte	0x4c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x10
	.4byte	0x3e
	.4byte	0x297
	.uleb128 0x11
	.4byte	0x91
	.uleb128 0x11
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x48
	.byte	0x9
	.byte	0x83
	.4byte	0x31c
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x9
	.byte	0x85
	.4byte	0x3e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x9
	.byte	0x86
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x9
	.byte	0x87
	.4byte	0x31c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x9
	.byte	0x88
	.4byte	0x31c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x9
	.byte	0x89
	.4byte	0x322
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x9
	.byte	0x8a
	.4byte	0x322
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x9
	.byte	0x8b
	.4byte	0x1d5
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x9
	.byte	0x8c
	.4byte	0x328
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x9
	.byte	0x8d
	.4byte	0x328
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x9
	.byte	0x8e
	.4byte	0x322
	.byte	0x44
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x262
	.uleb128 0x8
	.byte	0x4
	.4byte	0x181
	.uleb128 0x5
	.4byte	0xa0
	.4byte	0x338
	.uleb128 0x6
	.4byte	0x8a
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x9
	.byte	0x90
	.4byte	0x297
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x353
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0x1
	.byte	0x7d
	.4byte	0x3e
	.byte	0x1
	.4byte	0x3a6
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x7d
	.4byte	0x3a6
	.uleb128 0x13
	.string	"oid"
	.byte	0x1
	.byte	0x7e
	.4byte	0xa7
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7e
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7f
	.4byte	0x3e
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x80
	.4byte	0x26d
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x80
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x338
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3e
	.byte	0x1
	.4byte	0x402
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x402
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10c
	.4byte	0x9a
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.2byte	0x10d
	.4byte	0xa7
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x3e
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x19
	.4byte	0x3ac
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ea
	.uleb128 0x1a
	.4byte	0x3bd
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	0x3c7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	0x3d3
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	0x3e9
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	0x3f5
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	0x3dd
	.byte	0xf
	.uleb128 0x1e
	.4byte	.LVL4
	.4byte	0x14f5
	.4byte	0x474
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x1500
	.4byte	0x494
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0x14f5
	.4byte	0x4b3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x1500
	.4byte	0x4d3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL14
	.4byte	0x150b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.byte	0x30
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53c
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x30
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0x1516
	.4byte	0x52b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0x151f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0x38
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c6
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x38
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LVL21
	.4byte	0x152a
	.4byte	0x572
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL22
	.4byte	0x1535
	.4byte	0x586
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0x1535
	.4byte	0x59a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL24
	.4byte	0x1535
	.4byte	0x5af
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.byte	0
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0x1541
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.byte	0x43
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x43
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF44
	.byte	0x1
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0x48
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x626
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x48
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0x1
	.byte	0x48
	.4byte	0x1d5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x656
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x4d
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.byte	0x4d
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x52
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x686
	.uleb128 0x22
	.string	"ctx"
	.byte	0x1
	.byte	0x52
	.4byte	0x3a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.byte	0x52
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.byte	0x57
	.4byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x57
	.4byte	0x3a6
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.byte	0x58
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x154c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5d
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71e
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x5d
	.4byte	0x3a6
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0x154c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.4byte	0x3e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x777
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x63
	.4byte	0x3a6
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.LASF45
	.byte	0x1
	.byte	0x63
	.4byte	0x777
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0x1558
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x77d
	.uleb128 0x9
	.4byte	0xf9
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6d
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x827
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x6d
	.4byte	0x3a6
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6d
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL40
	.4byte	0x1563
	.4byte	0x7d8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0x1563
	.4byte	0x7ec
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0x156e
	.4byte	0x80b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0x156e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 52
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x353
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x896
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	0x379
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	0x384
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	0x38f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	0x39a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x86
	.4byte	0x3e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1c
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x86
	.4byte	0x3a6
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST11
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0x89
	.4byte	0x3e
	.4byte	.LLST12
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.byte	0x8a
	.4byte	0xa1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0x8b
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	0x353
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xa0
	.4byte	0x982
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	0x379
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	0x36e
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LVL64
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL50
	.4byte	0x1516
	.4byte	0x9a0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL51
	.4byte	0x1585
	.4byte	0x9c0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL56
	.4byte	0x1590
	.4byte	0x9df
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL58
	.4byte	0x1500
	.4byte	0x9ff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL61
	.4byte	0x150b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0xa2c
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa6
	.4byte	0x3e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb95
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0xa6
	.4byte	0x3a6
	.4byte	.LLST20
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0xa8
	.4byte	0x3e
	.4byte	.LLST21
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.byte	0xa9
	.4byte	0xb95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xaa
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	0x353
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0xba
	.4byte	0xafc
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST24
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	0x379
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	0x36e
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST28
	.uleb128 0x20
	.4byte	.LVL79
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0x1516
	.4byte	0xb1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL69
	.4byte	0x159b
	.4byte	0xb37
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL72
	.4byte	0x15a7
	.4byte	0xb58
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL74
	.4byte	0x1500
	.4byte	0xb78
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.4byte	.LVL76
	.4byte	0x150b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0xba6
	.uleb128 0x2a
	.4byte	0x8a
	.2byte	0x813
	.byte	0
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.byte	0xbf
	.4byte	0x3e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd52
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0xbf
	.4byte	0x3a6
	.4byte	.LLST29
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0xc1
	.4byte	0x3e
	.4byte	.LLST30
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.byte	0xc2
	.4byte	0xb95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xc3
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	0x353
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xd7
	.4byte	0xc76
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST34
	.uleb128 0x1a
	.4byte	0x379
	.4byte	.LLST35
	.uleb128 0x1a
	.4byte	0x36e
	.4byte	.LLST36
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST37
	.uleb128 0x20
	.4byte	.LVL99
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL83
	.4byte	0x1516
	.4byte	0xc96
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL84
	.4byte	0x159b
	.4byte	0xcb1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL87
	.4byte	0x15a7
	.4byte	0xcd2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x840
	.byte	0x1c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL89
	.4byte	0x1500
	.4byte	0xcf2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL91
	.4byte	0x150b
	.4byte	0xd13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL94
	.4byte	0x1500
	.4byte	0xd34
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL96
	.4byte	0x150b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.byte	0xdd
	.4byte	0x3e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe53
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0xdd
	.4byte	0x3a6
	.4byte	.LLST38
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0xde
	.4byte	0x30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.byte	0xe0
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ku"
	.byte	0x1
	.byte	0xe0
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xe1
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.4byte	0x3e
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	0x353
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xee
	.4byte	0xe31
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST40
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST41
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST42
	.uleb128 0x1a
	.4byte	0x379
	.4byte	.LLST43
	.uleb128 0x1a
	.4byte	0x36e
	.4byte	.LLST44
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST45
	.uleb128 0x20
	.4byte	.LVL106
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL102
	.4byte	0x15b3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf7
	.4byte	0x3e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf48
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0xf7
	.4byte	0x3a6
	.4byte	.LLST46
	.uleb128 0x23
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf8
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.byte	0xfa
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xfb
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.byte	0xfc
	.4byte	0x3e
	.4byte	.LLST47
	.uleb128 0x2b
	.4byte	0x353
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x103
	.4byte	0xf26
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST48
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST49
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST50
	.uleb128 0x1a
	.4byte	0x379
	.4byte	.LLST51
	.uleb128 0x1a
	.4byte	0x36e
	.4byte	.LLST52
	.uleb128 0x1a
	.4byte	0x363
	.4byte	.LLST53
	.uleb128 0x20
	.4byte	.LVL113
	.4byte	0x1579
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL109
	.4byte	0x15b3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x129
	.4byte	0x3e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d7
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.2byte	0x129
	.4byte	0x3a6
	.4byte	.LLST54
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x129
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x129
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x2f
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x12a
	.4byte	0x278
	.4byte	.LLST56
	.uleb128 0x2f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x12b
	.4byte	0x91
	.4byte	.LLST57
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x3e
	.4byte	.LLST58
	.uleb128 0x31
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x12e
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.2byte	0x130
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.string	"c2"
	.byte	0x1
	.2byte	0x130
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x131
	.4byte	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x32
	.string	"sig"
	.byte	0x1
	.2byte	0x132
	.4byte	0x13d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x31
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x133
	.4byte	0x13e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3248
	.uleb128 0x33
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.4byte	.LLST59
	.uleb128 0x33
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.4byte	.LLST60
	.uleb128 0x33
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.4byte	.LLST61
	.uleb128 0x31
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.2byte	0x135
	.4byte	0x25
	.4byte	.LLST62
	.uleb128 0x33
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x136
	.4byte	0x217
	.4byte	.LLST63
	.uleb128 0x1e
	.4byte	.LVL122
	.4byte	0x15be
	.4byte	0x10a0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL123
	.4byte	0x15be
	.4byte	0x10b3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL125
	.4byte	0x15ca
	.4byte	0x10cf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x75
	.sleb128 3152
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x75
	.sleb128 3148
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL129
	.4byte	0x15d6
	.4byte	0x10e9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL132
	.4byte	0x1500
	.4byte	0x1109
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL134
	.4byte	0x150b
	.4byte	0x1129
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL138
	.4byte	0x1500
	.4byte	0x1149
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL142
	.4byte	0x150b
	.4byte	0x1169
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL144
	.4byte	0x15e2
	.4byte	0x117d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL148
	.4byte	0x15ee
	.4byte	0x1197
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL150
	.4byte	0x408
	.4byte	0x11b7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 52
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL152
	.4byte	0x408
	.4byte	0x11d7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 36
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL156
	.4byte	0x1500
	.4byte	0x11f7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL157
	.4byte	0x150b
	.4byte	0x1217
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL158
	.4byte	0x15ee
	.4byte	0x1231
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL159
	.4byte	0x1563
	.4byte	0x1245
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL160
	.4byte	0x15fa
	.4byte	0x126a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL168
	.4byte	0x1605
	.4byte	0x128a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL172
	.4byte	0x1585
	.4byte	0x12a4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL174
	.4byte	0x1500
	.4byte	0x12c5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 -3144
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL179
	.4byte	0x150b
	.4byte	0x12e6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 -3144
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL182
	.4byte	0x1500
	.4byte	0x1306
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL184
	.4byte	0x150b
	.4byte	0x1326
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.4byte	.LVL188
	.4byte	0x1610
	.uleb128 0x1e
	.4byte	.LVL189
	.4byte	0x161b
	.4byte	0x1349
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL197
	.4byte	0x1627
	.4byte	0x1371
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x74
	.sleb128 1088
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL201
	.4byte	0x1633
	.4byte	0x1391
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL205
	.4byte	0x163f
	.uleb128 0x1e
	.4byte	.LVL206
	.4byte	0x1500
	.4byte	0x13ba
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL210
	.4byte	0x150b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x13e8
	.uleb128 0x2a
	.4byte	0x8a
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x13f9
	.uleb128 0x2a
	.4byte	0x8a
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x3e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e4
	.uleb128 0x2d
	.string	"crt"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x3a6
	.4byte	.LLST64
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x25
	.4byte	.LLST65
	.uleb128 0x35
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x278
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x35
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x91
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x3e
	.4byte	.LLST66
	.uleb128 0x31
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x14e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x31
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LVL217
	.4byte	0xf48
	.4byte	0x14ba
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 -4096
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL219
	.4byte	0x1648
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x14f5
	.uleb128 0x2a
	.4byte	0x8a
	.2byte	0xfff
	.byte	0
	.uleb128 0x36
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xa
	.byte	0x48
	.uleb128 0x36
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.byte	0x2e
	.uleb128 0x36
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3a
	.uleb128 0x37
	.4byte	.LASF123
	.4byte	.LASF123
	.uleb128 0x36
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x5
	.byte	0xc5
	.uleb128 0x36
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x5
	.byte	0xcc
	.uleb128 0x38
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x160
	.uleb128 0x36
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x42
	.uleb128 0x38
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xc
	.2byte	0x134
	.uleb128 0x36
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x5
	.byte	0xf3
	.uleb128 0x36
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xd
	.byte	0x21
	.uleb128 0x36
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xd
	.byte	0x24
	.uleb128 0x38
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x135
	.uleb128 0x36
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.byte	0x99
	.uleb128 0x36
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xa
	.byte	0x8d
	.uleb128 0x38
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x25a
	.uleb128 0x38
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xe
	.2byte	0x10e
	.uleb128 0x36
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.byte	0xc5
	.uleb128 0x38
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x103
	.uleb128 0x38
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xf
	.2byte	0x211
	.uleb128 0x38
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x138
	.uleb128 0x38
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x221
	.uleb128 0x38
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x13a
	.uleb128 0x36
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xa
	.byte	0x7f
	.uleb128 0x36
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xa
	.byte	0x56
	.uleb128 0x36
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x7
	.byte	0x7e
	.uleb128 0x38
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x148
	.uleb128 0x38
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x15b
	.uleb128 0x38
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x13c
	.uleb128 0x37
	.4byte	.LASF124
	.4byte	.LASF124
	.uleb128 0x36
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE29
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
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x3
	.byte	0x7c
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL4-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x27
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x2c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL81
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x2c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL106-1
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL113-1
	.4byte	.LVL113
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x3
	.4byte	.LC13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL199
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL120
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL195
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL119
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcc0
	.byte	0x1c
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL195
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL115
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL127
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcc0
	.byte	0x1c
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL195
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL129-1
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL168
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL175
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL178
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL182-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL187
	.4byte	.LVL188-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL190
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL210
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL121
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL121
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL162
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcc0
	.byte	0x1c
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL164
	.4byte	.LVL195
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL121
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL121
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0xa
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL176
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL186
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL204
	.4byte	.LVL205-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL205
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL217-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL217-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL215
	.4byte	.LVL217-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL217-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL219-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF89:
	.string	"sig_and_oid_len"
.LASF46:
	.string	"subject_key"
.LASF104:
	.string	"strlen"
.LASF34:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF70:
	.string	"mbedtls_x509write_crt_set_validity"
.LASF30:
	.string	"mbedtls_md_type_t"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"next"
.LASF44:
	.string	"version"
.LASF48:
	.string	"subject"
.LASF69:
	.string	"mbedtls_x509write_crt_set_serial"
.LASF83:
	.string	"sig_oid"
.LASF97:
	.string	"mbedtls_asn1_write_tag"
.LASF65:
	.string	"subject_name"
.LASF50:
	.string	"md_alg"
.LASF32:
	.string	"MBEDTLS_PK_RSA"
.LASF25:
	.string	"MBEDTLS_MD_SHA224"
.LASF59:
	.string	"mbedtls_x509write_crt_init"
.LASF122:
	.string	"mbedtls_x509_write_sig"
.LASF94:
	.string	"olen"
.LASF13:
	.string	"uint32_t"
.LASF96:
	.string	"mbedtls_asn1_write_len"
.LASF40:
	.string	"mbedtls_pk_context"
.LASF73:
	.string	"max_pathlen"
.LASF8:
	.string	"long long unsigned int"
.LASF105:
	.string	"strncpy"
.LASF28:
	.string	"MBEDTLS_MD_SHA512"
.LASF33:
	.string	"MBEDTLS_PK_ECKEY"
.LASF82:
	.string	"p_rng"
.LASF76:
	.string	"mbedtls_x509write_crt_set_key_usage"
.LASF78:
	.string	"mbedtls_x509write_crt_set_ns_cert_type"
.LASF77:
	.string	"key_usage"
.LASF112:
	.string	"mbedtls_pk_can_do"
.LASF36:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF126:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF5:
	.string	"size_t"
.LASF118:
	.string	"mbedtls_asn1_write_mpi"
.LASF19:
	.string	"next_merged"
.LASF26:
	.string	"MBEDTLS_MD_SHA256"
.LASF102:
	.string	"mbedtls_x509_string_to_names"
.LASF67:
	.string	"mbedtls_x509write_crt_set_issuer_name"
.LASF35:
	.string	"MBEDTLS_PK_ECDSA"
.LASF31:
	.string	"MBEDTLS_PK_NONE"
.LASF12:
	.string	"char"
.LASF129:
	.string	"mbedtls_x509write_crt_set_extension"
.LASF64:
	.string	"mbedtls_x509write_crt_set_issuer_key"
.LASF62:
	.string	"mbedtls_x509write_crt_set_md_alg"
.LASF103:
	.string	"mbedtls_mpi_copy"
.LASF99:
	.string	"mbedtls_mpi_free"
.LASF38:
	.string	"mbedtls_pk_type_t"
.LASF120:
	.string	"mbedtls_md"
.LASF54:
	.string	"oid_len"
.LASF111:
	.string	"mbedtls_asn1_write_bitstring"
.LASF55:
	.string	"critical"
.LASF49:
	.string	"issuer"
.LASF116:
	.string	"mbedtls_x509_write_names"
.LASF107:
	.string	"mbedtls_asn1_write_int"
.LASF108:
	.string	"mbedtls_asn1_write_bool"
.LASF109:
	.string	"mbedtls_pk_write_pubkey"
.LASF91:
	.string	"pk_alg"
.LASF79:
	.string	"ns_cert_type"
.LASF7:
	.string	"long long int"
.LASF74:
	.string	"mbedtls_x509write_crt_set_subject_key_identifier"
.LASF47:
	.string	"issuer_key"
.LASF53:
	.string	"extensions"
.LASF20:
	.string	"MBEDTLS_MD_NONE"
.LASF95:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF123:
	.string	"memset"
.LASF37:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF124:
	.string	"memcpy"
.LASF58:
	.string	"size"
.LASF114:
	.string	"mbedtls_x509_write_extensions"
.LASF106:
	.string	"mbedtls_x509_set_extension"
.LASF127:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509write_crt.c"
.LASF93:
	.string	"output_buf"
.LASF110:
	.string	"mbedtls_sha1_ret"
.LASF39:
	.string	"mbedtls_pk_info_t"
.LASF63:
	.string	"mbedtls_x509write_crt_set_subject_key"
.LASF92:
	.string	"mbedtls_x509write_crt_pem"
.LASF86:
	.string	"tmp_buf"
.LASF43:
	.string	"mbedtls_x509write_cert"
.LASF71:
	.string	"mbedtls_x509write_crt_set_basic_constraints"
.LASF125:
	.string	"mbedtls_pem_write_buffer"
.LASF87:
	.string	"sub_len"
.LASF90:
	.string	"sig_len"
.LASF117:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF41:
	.string	"pk_info"
.LASF4:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF85:
	.string	"hash"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF56:
	.string	"val_len"
.LASF60:
	.string	"mbedtls_x509write_crt_free"
.LASF81:
	.string	"f_rng"
.LASF75:
	.string	"mbedtls_x509write_crt_set_authority_key_identifier"
.LASF57:
	.string	"start"
.LASF24:
	.string	"MBEDTLS_MD_SHA1"
.LASF68:
	.string	"issuer_name"
.LASF128:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF21:
	.string	"MBEDTLS_MD_MD2"
.LASF22:
	.string	"MBEDTLS_MD_MD4"
.LASF23:
	.string	"MBEDTLS_MD_MD5"
.LASF10:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF61:
	.string	"mbedtls_x509write_crt_set_version"
.LASF66:
	.string	"mbedtls_x509write_crt_set_subject_name"
.LASF45:
	.string	"serial"
.LASF42:
	.string	"pk_ctx"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF119:
	.string	"mbedtls_md_info_from_type"
.LASF84:
	.string	"sig_oid_len"
.LASF100:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF52:
	.string	"not_after"
.LASF80:
	.string	"mbedtls_x509write_crt_der"
.LASF51:
	.string	"not_before"
.LASF115:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF17:
	.string	"mbedtls_asn1_named_data"
.LASF130:
	.string	"x509_write_time"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"mbedtls_mpi"
.LASF29:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"MBEDTLS_MD_SHA384"
.LASF121:
	.string	"mbedtls_pk_sign"
.LASF88:
	.string	"pub_len"
.LASF113:
	.string	"mbedtls_oid_get_oid_by_sig_alg"
.LASF72:
	.string	"is_ca"
.LASF101:
	.string	"mbedtls_platform_zeroize"
.LASF98:
	.string	"mbedtls_mpi_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
