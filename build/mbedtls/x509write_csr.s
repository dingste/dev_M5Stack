	.file	"x509write_csr.c"
	.text
.Ltext0:
	.section	.text.mbedtls_x509write_csr_init,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_init
	.type	mbedtls_x509write_csr_init, @function
mbedtls_x509write_csr_init:
.LFB10:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509write_csr.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 49 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	retw.n
.LFE10:
	.size	mbedtls_x509write_csr_init, .-mbedtls_x509write_csr_init
	.section	.text.mbedtls_x509write_csr_free,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_free
	.type	mbedtls_x509write_csr_free, @function
mbedtls_x509write_csr_free:
.LFB11:
	.loc 1 53 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 54 0
	addi.n	a10, a2, 4
	call8	mbedtls_asn1_free_named_data_list
.LVL3:
	.loc 1 55 0
	addi.n	a10, a2, 12
	call8	mbedtls_asn1_free_named_data_list
.LVL4:
	.loc 1 57 0
	movi.n	a11, 0x10
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL5:
	retw.n
.LFE11:
	.size	mbedtls_x509write_csr_free, .-mbedtls_x509write_csr_free
	.section	.text.mbedtls_x509write_csr_set_md_alg,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_set_md_alg
	.type	mbedtls_x509write_csr_set_md_alg, @function
mbedtls_x509write_csr_set_md_alg:
.LFB12:
	.loc 1 61 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 62 0
	s32i.n	a3, a2, 8
	retw.n
.LFE12:
	.size	mbedtls_x509write_csr_set_md_alg, .-mbedtls_x509write_csr_set_md_alg
	.section	.text.mbedtls_x509write_csr_set_key,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_set_key
	.type	mbedtls_x509write_csr_set_key, @function
mbedtls_x509write_csr_set_key:
.LFB13:
	.loc 1 66 0
.LVL7:
	entry	sp, 32
.LCFI3:
	.loc 1 67 0
	s32i.n	a3, a2, 0
	retw.n
.LFE13:
	.size	mbedtls_x509write_csr_set_key, .-mbedtls_x509write_csr_set_key
	.section	.text.mbedtls_x509write_csr_set_subject_name,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_set_subject_name
	.type	mbedtls_x509write_csr_set_subject_name, @function
mbedtls_x509write_csr_set_subject_name:
.LFB14:
	.loc 1 72 0
.LVL8:
	entry	sp, 32
.LCFI4:
	.loc 1 73 0
	mov.n	a11, a3
	addi.n	a10, a2, 4
	call8	mbedtls_x509_string_to_names
.LVL9:
	.loc 1 74 0
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE14:
	.size	mbedtls_x509write_csr_set_subject_name, .-mbedtls_x509write_csr_set_subject_name
	.section	.text.mbedtls_x509write_csr_set_extension,"ax",@progbits
	.align	4
	.global	mbedtls_x509write_csr_set_extension
	.type	mbedtls_x509write_csr_set_extension, @function
mbedtls_x509write_csr_set_extension:
.LFB15:
	.loc 1 79 0
.LVL11:
	entry	sp, 32
.LCFI5:
	.loc 1 80 0
	mov.n	a15, a6
	mov.n	a14, a5
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, a2, 12
	call8	mbedtls_x509_set_extension
.LVL12:
	.loc 1 82 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE15:
	.size	mbedtls_x509write_csr_set_extension, .-mbedtls_x509write_csr_set_extension
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"U\035\017"
	.section	.text.mbedtls_x509write_csr_set_key_usage,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	mbedtls_x509write_csr_set_key_usage
	.type	mbedtls_x509write_csr_set_key_usage, @function
mbedtls_x509write_csr_set_key_usage:
.LFB16:
	.loc 1 85 0
.LVL14:
	entry	sp, 64
.LCFI6:
	.loc 1 90 0
	addi.n	a10, sp, 4
	.loc 1 92 0
	movi.n	a13, 7
	addi	a12, sp, 16
	mov.n	a11, sp
	.loc 1 85 0
	s8i	a3, sp, 16
	.loc 1 90 0
	s32i.n	a10, sp, 4
	.loc 1 92 0
	call8	mbedtls_asn1_write_bitstring
.LVL15:
	bnei	a10, 4, .L8
	.loc 1 95 0
	l32r	a11, .LC1
	mov.n	a14, a10
	mov.n	a13, sp
	movi.n	a12, 3
	mov.n	a10, a2
.LVL16:
	call8	mbedtls_x509write_csr_set_extension
.LVL17:
.L8:
	.loc 1 102 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LFE16:
	.size	mbedtls_x509write_csr_set_key_usage, .-mbedtls_x509write_csr_set_key_usage
	.section	.rodata.str1.1
.LC2:
	.string	"`\206H\001\206\370B\001\001"
	.section	.text.mbedtls_x509write_csr_set_ns_cert_type,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.align	4
	.global	mbedtls_x509write_csr_set_ns_cert_type
	.type	mbedtls_x509write_csr_set_ns_cert_type, @function
mbedtls_x509write_csr_set_ns_cert_type:
.LFB17:
	.loc 1 106 0
.LVL19:
	entry	sp, 64
.LCFI7:
	.loc 1 111 0
	addi.n	a10, sp, 4
	.loc 1 113 0
	movi.n	a13, 8
	addi	a12, sp, 16
	mov.n	a11, sp
	.loc 1 106 0
	s8i	a3, sp, 16
	.loc 1 111 0
	s32i.n	a10, sp, 4
	.loc 1 113 0
	call8	mbedtls_asn1_write_bitstring
.LVL20:
	bnei	a10, 4, .L11
	.loc 1 116 0
	l32r	a11, .LC3
	mov.n	a14, a10
	mov.n	a13, sp
	movi.n	a12, 9
	mov.n	a10, a2
.LVL21:
	call8	mbedtls_x509write_csr_set_extension
.LVL22:
.L11:
	.loc 1 123 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE17:
	.size	mbedtls_x509write_csr_set_ns_cert_type, .-mbedtls_x509write_csr_set_ns_cert_type
	.section	.rodata.str1.1
.LC6:
	.string	"*\206H\206\367\r\001\t\016"
	.section	.text.mbedtls_x509write_csr_der,"ax",@progbits
	.literal_position
	.literal .LC4, -8960
	.literal .LC5, 3144
	.literal .LC7, .LC6
	.literal .LC8, 3136
	.literal .LC9, 3148
	.literal .LC10, 3152
	.literal .LC12, 3192
	.literal .LC13, 3196
	.literal .LC14, 3200
	.literal .LC15, 3160
	.literal .LC16, 3184
	.literal .LC17, 3188
	.literal .LC18, 3208
	.literal .LC19, 3204
	.literal .LC20, 3156
	.align	4
	.global	mbedtls_x509write_csr_der
	.type	mbedtls_x509write_csr_der, @function
mbedtls_x509write_csr_der:
.LFB18:
	.loc 1 128 0
.LVL24:
	entry	sp, 3248
.LCFI8:
	.loc 1 128 0
	mov.n	a7, a2
	l32r	a10, .LC14
	l32r	a2, .LC12
.LVL25:
	l32r	a8, .LC13
	add.n	a2, a2, sp
	add.n	a10, a10, sp
	s32i.n	a4, a2, 0
	add.n	a8, a8, sp
	.loc 1 131 0
	addi	a4, sp, 16
.LVL26:
	.loc 1 128 0
	s32i.n	a6, a10, 0
	.loc 1 145 0
	l32r	a10, .LC15
	.loc 1 128 0
	s32i.n	a5, a8, 0
	.loc 1 131 0
	addmi	a2, a4, 0xc00
.LVL27:
	movi.n	a5, 0
.LVL28:
	.loc 1 145 0
	l32i.n	a12, a7, 12
	.loc 1 131 0
	s32i	a5, a2, 76
.LVL29:
	.loc 1 145 0
	mov.n	a11, a4
	.loc 1 143 0
	addmi	a5, a4, 0x800
	.loc 1 145 0
	add.n	a10, a10, sp
	.loc 1 143 0
	s32i	a5, a2, 72
	.loc 1 145 0
	call8	mbedtls_x509_write_extensions
.LVL30:
	mov.n	a2, a10
.LVL31:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL32:
	.loc 1 147 0 discriminator 2
	beqz.n	a10, .L18
	.loc 1 149 0
	mov.n	a12, a10
	l32r	a10, .LC15
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL33:
	mov.n	a8, a10
.LVL34:
	mov.n	a5, a10
	bltz	a10, .L14
.LVL35:
	.loc 1 150 0 discriminator 2
	l32r	a10, .LC15
	movi.n	a12, 0x30
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL36:
	mov.n	a8, a10
.LVL37:
	bltz	a10, .L14
	.loc 1 149 0 discriminator 2
	add.n	a5, a5, a2
	.loc 1 150 0 discriminator 2
	add.n	a5, a10, a5
.LVL38:
	.loc 1 153 0 discriminator 2
	l32r	a10, .LC15
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL39:
	mov.n	a8, a10
	mov.n	a6, a10
.LVL40:
	bltz	a10, .L14
.LVL41:
	.loc 1 154 0 discriminator 2
	l32r	a10, .LC15
	movi.n	a12, 0x31
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL42:
	mov.n	a8, a10
	mov.n	a2, a10
	bltz	a10, .L14
	.loc 1 157 0 discriminator 2
	l32r	a10, .LC15
	l32r	a12, .LC7
	movi.n	a13, 9
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_oid
.LVL43:
	mov.n	a8, a10
.LVL44:
	bltz	a10, .L14
	.loc 1 153 0 discriminator 2
	add.n	a5, a6, a5
	.loc 1 154 0 discriminator 2
	add.n	a5, a2, a5
	.loc 1 157 0 discriminator 2
	add.n	a5, a10, a5
.LVL45:
	.loc 1 160 0 discriminator 2
	l32r	a10, .LC15
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL46:
	mov.n	a8, a10
.LVL47:
	bltz	a10, .L14
	add.n	a5, a10, a5
.LVL48:
	.loc 1 161 0 discriminator 2
	l32r	a10, .LC15
	movi.n	a12, 0x30
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL49:
	mov.n	a8, a10
	bltz	a10, .L14
	l32r	a11, .LC16
	add.n	a2, a10, a5
	add.n	a11, a11, sp
	s32i.n	a2, a11, 0
.LVL50:
	j	.L15
.LVL51:
.L18:
	l32r	a5, .LC16
	add.n	a5, a5, sp
	s32i.n	a10, a5, 0
.LVL52:
.L15:
	.loc 1 165 0
	l32r	a6, .LC16
	l32r	a5, .LC5
	add.n	a6, a6, sp
	add.n	a5, a4, a5
	l32i.n	a12, a6, 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	mbedtls_asn1_write_len
.LVL53:
	mov.n	a2, a10
.LVL54:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL55:
	.loc 1 166 0 discriminator 2
	movi	a12, 0xa0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	mbedtls_asn1_write_tag
.LVL56:
	l32r	a8, .LC17
	add.n	a8, a8, sp
	s32i.n	a10, a8, 0
.LVL57:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL58:
	.loc 1 169 0 discriminator 2
	addmi	a6, a4, 0xc00
	l32i	a12, a6, 72
	l32i.n	a10, a7, 0
	sub	a12, a12, a4
	mov.n	a11, a4
	call8	mbedtls_pk_write_pubkey_der
.LVL59:
	mov.n	a9, a10
.LVL60:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL61:
	.loc 1 171 0 discriminator 2
	l32i	a8, a6, 72
	.loc 1 177 0 discriminator 2
	l32i.n	a12, a7, 4
	.loc 1 171 0 discriminator 2
	sub	a8, a8, a10
	s32i	a8, a6, 72
.LVL62:
	.loc 1 177 0 discriminator 2
	l32r	a8, .LC18
	mov.n	a11, a4
	add.n	a8, a8, sp
	s32i.n	a9, a8, 0
	mov.n	a10, a5
	call8	mbedtls_x509_write_names
.LVL63:
	mov.n	a13, a10
.LVL64:
	mov.n	a8, a10
	bltz	a13, .L14
	.loc 1 182 0 discriminator 2
	l32r	a8, .LC19
	mov.n	a11, a4
	add.n	a8, a8, sp
	s32i.n	a13, a8, 0
	movi.n	a12, 0
	mov.n	a10, a5
.LVL65:
	call8	mbedtls_asn1_write_int
.LVL66:
	l32r	a11, .LC18
	mov.n	a8, a10
	add.n	a11, a11, sp
	l32i.n	a9, a11, 0
	l32r	a11, .LC19
	add.n	a11, a11, sp
	l32i.n	a13, a11, 0
	bltz	a10, .L14
	.loc 1 165 0 discriminator 2
	l32r	a11, .LC16
	add.n	a11, a11, sp
	l32i.n	a11, a11, 0
	add.n	a8, a2, a11
	.loc 1 166 0 discriminator 2
	l32r	a2, .LC17
	.loc 1 184 0 discriminator 2
	mov.n	a11, a4
	.loc 1 166 0 discriminator 2
	add.n	a2, a2, sp
	l32i.n	a2, a2, 0
	add.n	a8, a2, a8
	.loc 1 172 0 discriminator 2
	add.n	a9, a8, a9
	.loc 1 177 0 discriminator 2
	add.n	a9, a13, a9
	.loc 1 182 0 discriminator 2
	add.n	a2, a10, a9
.LVL67:
	.loc 1 184 0 discriminator 2
	mov.n	a12, a2
	mov.n	a10, a5
.LVL68:
	call8	mbedtls_asn1_write_len
.LVL69:
	mov.n	a9, a10
.LVL70:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL71:
	.loc 1 185 0 discriminator 2
	mov.n	a10, a5
	l32r	a5, .LC18
	mov.n	a11, a4
	add.n	a5, a5, sp
	s32i.n	a9, a5, 0
	movi.n	a12, 0x30
	call8	mbedtls_asn1_write_tag
.LVL72:
	l32r	a11, .LC18
	mov.n	a8, a10
	add.n	a11, a11, sp
	l32i.n	a9, a11, 0
	bltz	a10, .L14
	.loc 1 184 0 discriminator 2
	add.n	a2, a9, a2
	.loc 1 185 0 discriminator 2
	add.n	a5, a10, a2
.LVL73:
	.loc 1 191 0 discriminator 2
	l32i.n	a10, a7, 8
.LVL74:
	call8	mbedtls_md_info_from_type
.LVL75:
	l32i	a11, a6, 72
	mov.n	a13, a6
	mov.n	a12, a5
	call8	mbedtls_md
.LVL76:
	.loc 1 193 0 discriminator 2
	l32r	a2, .LC14
.LVL77:
	l32r	a8, .LC13
.LVL78:
	add.n	a2, a2, sp
.LVL79:
	l32i.n	a2, a2, 0
	add.n	a8, a8, sp
.LVL80:
	s32i.n	a2, sp, 4
.LVL81:
	l32i.n	a8, a8, 0
	l32r	a15, .LC8
	s32i.n	a8, sp, 0
	l32i.n	a11, a7, 8
	l32i.n	a10, a7, 0
	add.n	a15, a4, a15
	addmi	a14, a4, 0x800
	movi.n	a13, 0
	mov.n	a12, a6
	call8	mbedtls_pk_sign
.LVL82:
	mov.n	a8, a10
	bnez.n	a10, .L14
	.loc 1 199 0
	l32i.n	a10, a7, 0
.LVL83:
	movi.n	a11, 1
	call8	mbedtls_pk_can_do
.LVL84:
	bnez.n	a10, .L34
	.loc 1 201 0
	l32i.n	a10, a7, 0
	movi.n	a11, 4
	call8	mbedtls_pk_can_do
.LVL85:
	.loc 1 204 0
	l32r	a8, .LC4
	.loc 1 201 0
	beqz.n	a10, .L14
	.loc 1 202 0
	movi.n	a10, 4
	j	.L16
.L34:
	.loc 1 200 0
	movi.n	a10, 1
.L16:
.LVL86:
	.loc 1 206 0
	l32r	a13, .LC9
	l32r	a12, .LC10
	addi	a11, sp, 16
	add.n	a13, a11, a13
	add.n	a12, a11, a12
	l32i.n	a11, a7, 8
	call8	mbedtls_oid_get_oid_by_sig_alg
.LVL87:
	mov.n	a8, a10
.LVL88:
	bnez.n	a10, .L14
	.loc 1 215 0
	l32r	a8, .LC12
.LVL89:
	addi	a2, sp, 16
	add.n	a8, a8, sp
	addmi	a6, a2, 0xc00
	l32i.n	a8, a8, 0
	.loc 1 216 0
	l32r	a10, .LC20
.LVL90:
	l32i	a15, a6, 64
	l32i	a13, a6, 76
	l32i	a12, a6, 80
	.loc 1 215 0
	add.n	a4, a3, a8
	.loc 1 216 0
	addmi	a14, a2, 0x800
	mov.n	a11, a3
	add.n	a10, a10, sp
	.loc 1 215 0
	s32i	a4, a6, 68
	.loc 1 216 0
	call8	mbedtls_x509_write_sig
.LVL91:
	mov.n	a2, a10
.LVL92:
	mov.n	a8, a10
	bltz	a10, .L14
.LVL93:
	.loc 1 219 0 discriminator 2
	l32i	a10, a6, 68
	.loc 1 220 0 discriminator 2
	movi	a8, -0x6c
	.loc 1 219 0 discriminator 2
	sub	a4, a10, a3
	bltu	a4, a5, .L14
	.loc 1 223 0
	l32i	a11, a6, 72
	.loc 1 222 0
	sub	a10, a10, a5
	.loc 1 223 0
	mov.n	a12, a5
	.loc 1 222 0
	s32i	a10, a6, 68
	.loc 1 223 0
	call8	memcpy
.LVL94:
	.loc 1 226 0
	l32r	a10, .LC20
	.loc 1 225 0
	add.n	a2, a5, a2
.LVL95:
	.loc 1 226 0
	mov.n	a12, a2
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL96:
	mov.n	a8, a10
.LVL97:
	bltz	a10, .L14
	.loc 1 226 0 is_stmt 0 discriminator 2
	add.n	a2, a10, a2
.LVL98:
	.loc 1 227 0 is_stmt 1 discriminator 2
	l32r	a10, .LC20
	movi.n	a12, 0x30
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL99:
	.loc 1 230 0 discriminator 2
	add.n	a2, a10, a2
.LVL100:
	mov.n	a8, a10
	movgez	a8, a2, a10
.LVL101:
.L14:
	.loc 1 231 0
	mov.n	a2, a8
	retw.n
.LFE18:
	.size	mbedtls_x509write_csr_der, .-mbedtls_x509write_csr_der
	.section	.rodata.str1.1
.LC22:
	.string	"-----END CERTIFICATE REQUEST-----\n"
.LC24:
	.string	"-----BEGIN CERTIFICATE REQUEST-----\n"
	.section	.text.mbedtls_x509write_csr_pem,"ax",@progbits
	.literal_position
	.literal .LC21, 4096
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, 4128
	.align	4
	.global	mbedtls_x509write_csr_pem
	.type	mbedtls_x509write_csr_pem, @function
mbedtls_x509write_csr_pem:
.LFB19:
	.loc 1 240 0
.LVL102:
	entry	sp, 4176
.LCFI9:
	.loc 1 243 0
	addi	a8, sp, 16
	.loc 1 240 0
	mov.n	a15, a4
	.loc 1 243 0
	movi.n	a7, 0
	addmi	a4, a8, 0x1000
.LVL103:
	.loc 1 245 0
	mov.n	a10, a2
	l32r	a2, .LC26
.LVL104:
	.loc 1 243 0
	s32i.n	a7, a4, 0
	.loc 1 245 0
	l32r	a7, .LC21
	add.n	a2, a2, sp
	mov.n	a11, a8
	s32i.n	a15, a2, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a7
	call8	mbedtls_x509write_csr_der
.LVL105:
	l32r	a8, .LC26
	add.n	a8, a8, sp
	l32i.n	a15, a8, 0
	bltz	a10, .L42
	.loc 1 251 0
	sub	a12, a7, a10
	mov.n	a13, a10
	addi	a2, sp, 16
	l32r	a11, .LC23
	l32r	a10, .LC25
.LVL106:
	s32i.n	a4, sp, 0
	mov.n	a14, a3
	add.n	a12, a2, a12
	call8	mbedtls_pem_write_buffer
.LVL107:
.L42:
	.loc 1 259 0
	mov.n	a2, a10
	retw.n
.LFE19:
	.size	mbedtls_x509write_csr_pem, .-mbedtls_x509write_csr_pem
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0xcb0
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI9-.LFB19
	.byte	0xe
	.uleb128 0x1050
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
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
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x9
	.4byte	0x95
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0xc
	.byte	0x2
	.byte	0x86
	.4byte	0xd6
	.uleb128 0xb
	.string	"tag"
	.byte	0x2
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x2
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.string	"p"
	.byte	0x2
	.byte	0x8a
	.4byte	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8c
	.4byte	0xa7
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x20
	.byte	0x2
	.byte	0xa6
	.4byte	0x11e
	.uleb128 0xb
	.string	"oid"
	.byte	0x2
	.byte	0xa8
	.4byte	0xd6
	.byte	0
	.uleb128 0xb
	.string	"val"
	.byte	0x2
	.byte	0xa9
	.4byte	0xd6
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x2
	.byte	0xaa
	.4byte	0x11e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x2
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xad
	.4byte	0xe1
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x4
	.byte	0x38
	.4byte	0x178
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x43
	.4byte	0x12f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x4c
	.4byte	0x1ba
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x54
	.4byte	0x183
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x5
	.byte	0x7b
	.4byte	0x1d0
	.uleb128 0xf
	.4byte	.LASF35
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x5
	.byte	0x80
	.4byte	0x1fa
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x82
	.4byte	0x1fa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x83
	.4byte	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x200
	.uleb128 0x9
	.4byte	0x1c5
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x5
	.byte	0x84
	.4byte	0x1d5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x216
	.uleb128 0x9
	.4byte	0x4c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x221
	.uleb128 0x10
	.4byte	0x3e
	.4byte	0x23a
	.uleb128 0x11
	.4byte	0x86
	.uleb128 0x11
	.4byte	0x8f
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x10
	.byte	0x6
	.byte	0x4a
	.4byte	0x277
	.uleb128 0xb
	.string	"key"
	.byte	0x6
	.byte	0x4c
	.4byte	0x277
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4d
	.4byte	0x27d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.4byte	0x178
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4f
	.4byte	0x27d
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x205
	.uleb128 0x8
	.byte	0x4
	.4byte	0x124
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x6
	.byte	0x51
	.4byte	0x23a
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cb
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x2f
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0xadf
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x283
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x34
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x34
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0xae8
	.4byte	0x307
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0xae8
	.4byte	0x31b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0xaf4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x3c
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3c
	.4byte	0x178
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x41
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x391
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x41
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"key"
	.byte	0x1
	.byte	0x41
	.4byte	0x277
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x46
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x46
	.4byte	0x2cb
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0xaff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4c
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2cb
	.4byte	.LLST1
	.uleb128 0x13
	.string	"oid"
	.byte	0x1
	.byte	0x4d
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x4e
	.4byte	0x210
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x4e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0xb0b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x54
	.4byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x54
	.4byte	0x2cb
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.byte	0x54
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x56
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x57
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x58
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0xb17
	.4byte	0x4ea
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x3dd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x68
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b7
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x68
	.4byte	0x2cb
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x1
	.byte	0x69
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x6b
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x6c
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x6d
	.4byte	0x3e
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0xb17
	.4byte	0x592
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x3dd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x7d
	.4byte	0x3e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ba
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x7d
	.4byte	0x2cb
	.4byte	.LLST6
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x7d
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x7e
	.4byte	0x21b
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x7f
	.4byte	0x86
	.4byte	.LLST9
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x81
	.4byte	0x3e
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x82
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x84
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.string	"c2"
	.byte	0x1
	.byte	0x84
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0x85
	.4byte	0x9ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.string	"sig"
	.byte	0x1
	.byte	0x86
	.4byte	0x9ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x1
	.byte	0x87
	.4byte	0x9db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3232
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0x88
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0x88
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x1
	.byte	0x88
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x8a
	.4byte	0x1ba
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xb22
	.4byte	0x6f4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0xb2e
	.4byte	0x715
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0xb39
	.4byte	0x736
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0xb2e
	.4byte	0x757
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0xb39
	.4byte	0x778
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0xb44
	.4byte	0x7a1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xb2e
	.4byte	0x7c2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0xb39
	.4byte	0x7e3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0xb2e
	.4byte	0x804
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL56
	.4byte	0xb39
	.4byte	0x824
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL59
	.4byte	0xb4f
	.4byte	0x838
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL63
	.4byte	0xb5b
	.4byte	0x852
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL66
	.4byte	0xb67
	.4byte	0x871
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL69
	.4byte	0xb2e
	.4byte	0x891
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL72
	.4byte	0xb39
	.4byte	0x8b2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 3144
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL75
	.4byte	0xb72
	.uleb128 0x16
	.4byte	.LVL76
	.4byte	0xb7d
	.4byte	0x8d5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL82
	.4byte	0xb89
	.4byte	0x903
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x74
	.sleb128 2048
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x74
	.sleb128 3136
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL84
	.4byte	0xb95
	.4byte	0x916
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.4byte	.LVL85
	.4byte	0xb95
	.4byte	0x929
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x16
	.4byte	.LVL87
	.4byte	0xba1
	.4byte	0x945
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 3152
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x74
	.sleb128 3148
	.byte	0
	.uleb128 0x16
	.4byte	.LVL91
	.4byte	0xbad
	.4byte	0x967
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x72
	.sleb128 2048
	.byte	0
	.uleb128 0x16
	.4byte	.LVL94
	.4byte	0xbb9
	.4byte	0x97b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL96
	.4byte	0xb2e
	.4byte	0x99c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL99
	.4byte	0xb39
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x9ca
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x9db
	.uleb128 0x20
	.4byte	0x7f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x9ec
	.uleb128 0x20
	.4byte	0x7f
	.2byte	0x7ff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.byte	0xed
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xace
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0xed
	.4byte	0x2cb
	.4byte	.LLST15
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xed
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0xee
	.4byte	0x21b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0xef
	.4byte	0x86
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xf1
	.4byte	0x3e
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf2
	.4byte	0xace
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x1
	.byte	0xf3
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LVL105
	.4byte	0x5b7
	.4byte	0xaa4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 -4096
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL107
	.4byte	0xbc2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
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
	.4byte	0xadf
	.uleb128 0x20
	.4byte	0x7f
	.2byte	0xfff
	.byte	0
	.uleb128 0x21
	.4byte	.LASF89
	.4byte	.LASF89
	.uleb128 0x22
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x160
	.uleb128 0x23
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.byte	0x42
	.uleb128 0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x134
	.uleb128 0x22
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x135
	.uleb128 0x23
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x9
	.byte	0xc5
	.uleb128 0x22
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x138
	.uleb128 0x23
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x2e
	.uleb128 0x23
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0x3a
	.uleb128 0x23
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x9
	.byte	0x6f
	.uleb128 0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x221
	.uleb128 0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x13a
	.uleb128 0x23
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0x99
	.uleb128 0x23
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7e
	.uleb128 0x22
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x148
	.uleb128 0x22
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x15b
	.uleb128 0x22
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x103
	.uleb128 0x22
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x211
	.uleb128 0x22
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x13c
	.uleb128 0x21
	.4byte	.LASF90
	.4byte	.LASF90
	.uleb128 0x23
	.4byte	.LASF91
	.4byte	.LASF91
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL27
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL81
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL30-1
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcb0
	.byte	0x1c
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL81
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcb0
	.byte	0x1c
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL81
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84-1
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
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0xb
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0xe
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL105-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF93:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509write_csr.c"
.LASF58:
	.string	"f_rng"
.LASF32:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF54:
	.string	"mbedtls_x509write_csr_set_ns_cert_type"
.LASF85:
	.string	"mbedtls_pk_sign"
.LASF87:
	.string	"mbedtls_oid_get_oid_by_sig_alg"
.LASF94:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF82:
	.string	"mbedtls_asn1_write_int"
.LASF71:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF55:
	.string	"ns_cert_type"
.LASF11:
	.string	"size_t"
.LASF42:
	.string	"extensions"
.LASF8:
	.string	"sizetype"
.LASF40:
	.string	"subject"
.LASF24:
	.string	"MBEDTLS_MD_SHA512"
.LASF83:
	.string	"mbedtls_md_info_from_type"
.LASF90:
	.string	"memcpy"
.LASF43:
	.string	"mbedtls_x509write_csr_init"
.LASF4:
	.string	"short int"
.LASF61:
	.string	"sig_oid_len"
.LASF69:
	.string	"output_buf"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF81:
	.string	"mbedtls_x509_write_names"
.LASF48:
	.string	"mbedtls_x509write_csr_set_subject_name"
.LASF34:
	.string	"mbedtls_pk_type_t"
.LASF51:
	.string	"val_len"
.LASF78:
	.string	"mbedtls_asn1_write_tag"
.LASF37:
	.string	"pk_info"
.LASF88:
	.string	"mbedtls_x509_write_sig"
.LASF5:
	.string	"long long int"
.LASF70:
	.string	"olen"
.LASF89:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF64:
	.string	"pub_len"
.LASF84:
	.string	"mbedtls_md"
.LASF63:
	.string	"tmp_buf"
.LASF46:
	.string	"mbedtls_x509write_csr_set_key"
.LASF29:
	.string	"MBEDTLS_PK_ECKEY"
.LASF86:
	.string	"mbedtls_pk_can_do"
.LASF3:
	.string	"unsigned char"
.LASF72:
	.string	"mbedtls_platform_zeroize"
.LASF27:
	.string	"MBEDTLS_PK_NONE"
.LASF30:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF38:
	.string	"pk_ctx"
.LASF74:
	.string	"mbedtls_x509_set_extension"
.LASF62:
	.string	"hash"
.LASF60:
	.string	"sig_oid"
.LASF59:
	.string	"p_rng"
.LASF41:
	.string	"md_alg"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"mbedtls_x509write_csr"
.LASF73:
	.string	"mbedtls_x509_string_to_names"
.LASF52:
	.string	"mbedtls_x509write_csr_set_key_usage"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"MBEDTLS_MD_SHA256"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF50:
	.string	"oid_len"
.LASF76:
	.string	"mbedtls_x509_write_extensions"
.LASF28:
	.string	"MBEDTLS_PK_RSA"
.LASF45:
	.string	"mbedtls_x509write_csr_set_md_alg"
.LASF10:
	.string	"char"
.LASF56:
	.string	"mbedtls_x509write_csr_der"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF53:
	.string	"key_usage"
.LASF17:
	.string	"MBEDTLS_MD_MD2"
.LASF65:
	.string	"sig_and_oid_len"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF67:
	.string	"pk_alg"
.LASF18:
	.string	"MBEDTLS_MD_MD4"
.LASF91:
	.string	"mbedtls_pem_write_buffer"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"mbedtls_pk_info_t"
.LASF9:
	.string	"long unsigned int"
.LASF21:
	.string	"MBEDTLS_MD_SHA224"
.LASF20:
	.string	"MBEDTLS_MD_SHA1"
.LASF36:
	.string	"mbedtls_pk_context"
.LASF57:
	.string	"size"
.LASF47:
	.string	"subject_name"
.LASF25:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF49:
	.string	"mbedtls_x509write_csr_set_extension"
.LASF75:
	.string	"mbedtls_asn1_write_bitstring"
.LASF66:
	.string	"sig_len"
.LASF68:
	.string	"mbedtls_x509write_csr_pem"
.LASF2:
	.string	"signed char"
.LASF77:
	.string	"mbedtls_asn1_write_len"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF44:
	.string	"mbedtls_x509write_csr_free"
.LASF31:
	.string	"MBEDTLS_PK_ECDSA"
.LASF33:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF80:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF92:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"MBEDTLS_MD_SHA384"
.LASF15:
	.string	"next_merged"
.LASF79:
	.string	"mbedtls_asn1_write_oid"
.LASF14:
	.string	"next"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
