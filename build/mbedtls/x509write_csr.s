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
	.loc 1 58 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 59 0
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
	.loc 1 63 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 64 0
	addi.n	a10, a2, 4
	call8	mbedtls_asn1_free_named_data_list
.LVL3:
	.loc 1 65 0
	addi.n	a10, a2, 12
	call8	mbedtls_asn1_free_named_data_list
.LVL4:
	.loc 1 67 0
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
	.loc 1 71 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 72 0
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
	.loc 1 76 0
.LVL7:
	entry	sp, 32
.LCFI3:
	.loc 1 77 0
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
	.loc 1 82 0
.LVL8:
	entry	sp, 32
.LCFI4:
	.loc 1 83 0
	mov.n	a11, a3
	addi.n	a10, a2, 4
	call8	mbedtls_x509_string_to_names
.LVL9:
	.loc 1 84 0
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
	.loc 1 89 0
.LVL11:
	entry	sp, 32
.LCFI5:
	.loc 1 90 0
	mov.n	a15, a6
	mov.n	a14, a5
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, a2, 12
	call8	mbedtls_x509_set_extension
.LVL12:
	.loc 1 92 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE15:
	.size	mbedtls_x509write_csr_set_extension, .-mbedtls_x509write_csr_set_extension
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"U\035\017"
	.section	.text.mbedtls_x509write_csr_set_key_usage,"ax",@progbits
	.literal_position
	.literal .LC0, -8576
	.literal .LC2, .LC1
	.align	4
	.global	mbedtls_x509write_csr_set_key_usage
	.type	mbedtls_x509write_csr_set_key_usage, @function
mbedtls_x509write_csr_set_key_usage:
.LFB17:
	.loc 1 108 0
.LVL14:
	entry	sp, 64
.LCFI6:
	.loc 1 114 0
	addi.n	a10, sp, 4
	.loc 1 108 0
	s8i	a3, sp, 16
	.loc 1 114 0
	s32i.n	a10, sp, 4
	.loc 1 116 0
	extui	a3, a3, 0, 8
.LVL15:
.LBB4:
.LBB5:
	.loc 1 100 0
	movi.n	a8, 0
	movi.n	a9, 8
	loop	a9, .L9_LEND
.LVL16:
.L9:
	.loc 1 101 0
	bbs	a3, a8, .L8
	.loc 1 100 0
	addi.n	a8, a8, 1
.LVL17:
	.L9_LEND:
.L8:
.LBE5:
.LBE4:
	.loc 1 117 0
	movi.n	a13, 8
	sub	a13, a13, a8
	addi	a12, sp, 16
.LVL18:
	mov.n	a11, sp
	call8	mbedtls_asn1_write_bitstring
.LVL19:
	mov.n	a14, a10
.LVL20:
	.loc 1 119 0
	bltz	a10, .L10
	.loc 1 121 0
	addi	a3, a10, -3
.LVL21:
	.loc 1 122 0
	l32r	a10, .LC0
.LVL22:
	.loc 1 121 0
	bgeui	a3, 2, .L10
	.loc 1 124 0
	l32i.n	a13, sp, 4
	l32r	a11, .LC2
	movi.n	a12, 3
	mov.n	a10, a2
	call8	mbedtls_x509write_csr_set_extension
.LVL23:
.L10:
	.loc 1 131 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE17:
	.size	mbedtls_x509write_csr_set_key_usage, .-mbedtls_x509write_csr_set_key_usage
	.section	.rodata.str1.1
.LC3:
	.string	"`\206H\001\206\370B\001\001"
	.section	.text.mbedtls_x509write_csr_set_ns_cert_type,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.align	4
	.global	mbedtls_x509write_csr_set_ns_cert_type
	.type	mbedtls_x509write_csr_set_ns_cert_type, @function
mbedtls_x509write_csr_set_ns_cert_type:
.LFB18:
	.loc 1 135 0
.LVL25:
	entry	sp, 64
.LCFI7:
	.loc 1 141 0
	addi.n	a10, sp, 4
	.loc 1 135 0
	s8i	a3, sp, 16
	.loc 1 141 0
	s32i.n	a10, sp, 4
	.loc 1 143 0
	extui	a3, a3, 0, 8
.LVL26:
.LBB8:
.LBB9:
	.loc 1 100 0
	movi.n	a8, 0
	movi.n	a9, 8
	loop	a9, .L16_LEND
.LVL27:
.L16:
	.loc 1 101 0
	bbs	a3, a8, .L15
	.loc 1 100 0
	addi.n	a8, a8, 1
.LVL28:
	.L16_LEND:
.L15:
.LBE9:
.LBE8:
	.loc 1 144 0
	movi.n	a13, 8
	sub	a13, a13, a8
	addi	a12, sp, 16
.LVL29:
	mov.n	a11, sp
	call8	mbedtls_asn1_write_bitstring
.LVL30:
	mov.n	a14, a10
	.loc 1 149 0
	bltz	a10, .L17
	.loc 1 151 0
	addi	a3, a10, -3
.LVL31:
	bgeui	a3, 2, .L17
	.loc 1 154 0
	l32i.n	a13, sp, 4
	l32r	a11, .LC4
	movi.n	a12, 9
	mov.n	a10, a2
.LVL32:
	call8	mbedtls_x509write_csr_set_extension
.LVL33:
	mov.n	a14, a10
.LVL34:
.L17:
	.loc 1 161 0
	mov.n	a2, a14
.LVL35:
	retw.n
.LFE18:
	.size	mbedtls_x509write_csr_set_ns_cert_type, .-mbedtls_x509write_csr_set_ns_cert_type
	.section	.rodata.str1.1
.LC7:
	.string	"*\206H\206\367\r\001\t\016"
	.section	.text.mbedtls_x509write_csr_der,"ax",@progbits
	.literal_position
	.literal .LC5, -8960
	.literal .LC6, 3144
	.literal .LC8, .LC7
	.literal .LC9, 3136
	.literal .LC10, 3148
	.literal .LC11, 3152
	.literal .LC13, 3192
	.literal .LC14, 3196
	.literal .LC15, 3200
	.literal .LC16, 3160
	.literal .LC17, 3184
	.literal .LC18, 3188
	.literal .LC19, 3208
	.literal .LC20, 3204
	.literal .LC21, 3156
	.align	4
	.global	mbedtls_x509write_csr_der
	.type	mbedtls_x509write_csr_der, @function
mbedtls_x509write_csr_der:
.LFB19:
	.loc 1 166 0
.LVL36:
	entry	sp, 3248
.LCFI8:
	.loc 1 166 0
	mov.n	a7, a2
	l32r	a10, .LC15
	l32r	a2, .LC13
.LVL37:
	l32r	a8, .LC14
	add.n	a2, a2, sp
	add.n	a10, a10, sp
	s32i.n	a4, a2, 0
	add.n	a8, a8, sp
	.loc 1 169 0
	addi	a4, sp, 16
.LVL38:
	.loc 1 166 0
	s32i.n	a6, a10, 0
	.loc 1 183 0
	l32r	a10, .LC16
	.loc 1 166 0
	s32i.n	a5, a8, 0
	.loc 1 169 0
	addmi	a2, a4, 0xc00
.LVL39:
	movi.n	a5, 0
.LVL40:
	.loc 1 183 0
	l32i.n	a12, a7, 12
	.loc 1 169 0
	s32i	a5, a2, 76
.LVL41:
	.loc 1 183 0
	mov.n	a11, a4
	.loc 1 181 0
	addmi	a5, a4, 0x800
	.loc 1 183 0
	add.n	a10, a10, sp
	.loc 1 181 0
	s32i	a5, a2, 72
	.loc 1 183 0
	call8	mbedtls_x509_write_extensions
.LVL42:
	mov.n	a2, a10
.LVL43:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL44:
	.loc 1 185 0 discriminator 2
	beqz.n	a10, .L26
	.loc 1 187 0
	mov.n	a12, a10
	l32r	a10, .LC16
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL45:
	mov.n	a8, a10
.LVL46:
	mov.n	a5, a10
	bltz	a10, .L22
.LVL47:
	.loc 1 188 0 discriminator 2
	l32r	a10, .LC16
	movi.n	a12, 0x30
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL48:
	mov.n	a8, a10
.LVL49:
	bltz	a10, .L22
	.loc 1 187 0 discriminator 2
	add.n	a5, a5, a2
	.loc 1 188 0 discriminator 2
	add.n	a5, a10, a5
.LVL50:
	.loc 1 191 0 discriminator 2
	l32r	a10, .LC16
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL51:
	mov.n	a8, a10
	mov.n	a6, a10
.LVL52:
	bltz	a10, .L22
.LVL53:
	.loc 1 192 0 discriminator 2
	l32r	a10, .LC16
	movi.n	a12, 0x31
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL54:
	mov.n	a8, a10
	mov.n	a2, a10
	bltz	a10, .L22
	.loc 1 195 0 discriminator 2
	l32r	a10, .LC16
	l32r	a12, .LC8
	movi.n	a13, 9
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_oid
.LVL55:
	mov.n	a8, a10
.LVL56:
	bltz	a10, .L22
	.loc 1 191 0 discriminator 2
	add.n	a5, a6, a5
	.loc 1 192 0 discriminator 2
	add.n	a5, a2, a5
	.loc 1 195 0 discriminator 2
	add.n	a5, a10, a5
.LVL57:
	.loc 1 198 0 discriminator 2
	l32r	a10, .LC16
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL58:
	mov.n	a8, a10
.LVL59:
	bltz	a10, .L22
	add.n	a5, a10, a5
.LVL60:
	.loc 1 199 0 discriminator 2
	l32r	a10, .LC16
	movi.n	a12, 0x30
	mov.n	a11, a4
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL61:
	mov.n	a8, a10
	bltz	a10, .L22
	l32r	a11, .LC17
	add.n	a2, a10, a5
	add.n	a11, a11, sp
	s32i.n	a2, a11, 0
.LVL62:
	j	.L23
.LVL63:
.L26:
	l32r	a5, .LC17
	add.n	a5, a5, sp
	s32i.n	a10, a5, 0
.LVL64:
.L23:
	.loc 1 203 0
	l32r	a6, .LC17
	l32r	a5, .LC6
	add.n	a6, a6, sp
	add.n	a5, a4, a5
	l32i.n	a12, a6, 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	mbedtls_asn1_write_len
.LVL65:
	mov.n	a2, a10
.LVL66:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL67:
	.loc 1 204 0 discriminator 2
	movi	a12, 0xa0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	mbedtls_asn1_write_tag
.LVL68:
	l32r	a8, .LC18
	add.n	a8, a8, sp
	s32i.n	a10, a8, 0
.LVL69:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL70:
	.loc 1 207 0 discriminator 2
	addmi	a6, a4, 0xc00
	l32i	a12, a6, 72
	l32i.n	a10, a7, 0
	sub	a12, a12, a4
	mov.n	a11, a4
	call8	mbedtls_pk_write_pubkey_der
.LVL71:
	mov.n	a9, a10
.LVL72:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL73:
	.loc 1 209 0 discriminator 2
	l32i	a8, a6, 72
	.loc 1 215 0 discriminator 2
	l32i.n	a12, a7, 4
	.loc 1 209 0 discriminator 2
	sub	a8, a8, a10
	s32i	a8, a6, 72
.LVL74:
	.loc 1 215 0 discriminator 2
	l32r	a8, .LC19
	mov.n	a11, a4
	add.n	a8, a8, sp
	s32i.n	a9, a8, 0
	mov.n	a10, a5
	call8	mbedtls_x509_write_names
.LVL75:
	mov.n	a13, a10
.LVL76:
	mov.n	a8, a10
	bltz	a13, .L22
	.loc 1 220 0 discriminator 2
	l32r	a8, .LC20
	mov.n	a11, a4
	add.n	a8, a8, sp
	s32i.n	a13, a8, 0
	movi.n	a12, 0
	mov.n	a10, a5
.LVL77:
	call8	mbedtls_asn1_write_int
.LVL78:
	l32r	a11, .LC19
	mov.n	a8, a10
	add.n	a11, a11, sp
	l32i.n	a9, a11, 0
	l32r	a11, .LC20
	add.n	a11, a11, sp
	l32i.n	a13, a11, 0
	bltz	a10, .L22
	.loc 1 203 0 discriminator 2
	l32r	a11, .LC17
	add.n	a11, a11, sp
	l32i.n	a11, a11, 0
	add.n	a8, a2, a11
	.loc 1 204 0 discriminator 2
	l32r	a2, .LC18
	.loc 1 222 0 discriminator 2
	mov.n	a11, a4
	.loc 1 204 0 discriminator 2
	add.n	a2, a2, sp
	l32i.n	a2, a2, 0
	add.n	a8, a2, a8
	.loc 1 210 0 discriminator 2
	add.n	a9, a8, a9
	.loc 1 215 0 discriminator 2
	add.n	a9, a13, a9
	.loc 1 220 0 discriminator 2
	add.n	a2, a10, a9
.LVL79:
	.loc 1 222 0 discriminator 2
	mov.n	a12, a2
	mov.n	a10, a5
.LVL80:
	call8	mbedtls_asn1_write_len
.LVL81:
	mov.n	a9, a10
.LVL82:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL83:
	.loc 1 223 0 discriminator 2
	mov.n	a10, a5
	l32r	a5, .LC19
	mov.n	a11, a4
	add.n	a5, a5, sp
	s32i.n	a9, a5, 0
	movi.n	a12, 0x30
	call8	mbedtls_asn1_write_tag
.LVL84:
	l32r	a11, .LC19
	mov.n	a8, a10
	add.n	a11, a11, sp
	l32i.n	a9, a11, 0
	bltz	a10, .L22
	.loc 1 222 0 discriminator 2
	add.n	a2, a9, a2
	.loc 1 223 0 discriminator 2
	add.n	a5, a10, a2
.LVL85:
	.loc 1 229 0 discriminator 2
	l32i.n	a10, a7, 8
.LVL86:
	call8	mbedtls_md_info_from_type
.LVL87:
	l32i	a11, a6, 72
	mov.n	a13, a6
	mov.n	a12, a5
	call8	mbedtls_md
.LVL88:
	mov.n	a8, a10
	.loc 1 230 0 discriminator 2
	bnez.n	a10, .L22
	.loc 1 233 0
	l32r	a2, .LC15
.LVL89:
	l32r	a8, .LC14
.LVL90:
	add.n	a2, a2, sp
.LVL91:
	l32i.n	a2, a2, 0
	add.n	a8, a8, sp
.LVL92:
	s32i.n	a2, sp, 4
.LVL93:
	l32i.n	a8, a8, 0
	l32r	a15, .LC9
	s32i.n	a8, sp, 0
	mov.n	a13, a10
	l32i.n	a11, a7, 8
	l32i.n	a10, a7, 0
.LVL94:
	add.n	a15, a4, a15
	addmi	a14, a4, 0x800
	mov.n	a12, a6
	call8	mbedtls_pk_sign
.LVL95:
	mov.n	a8, a10
	bnez.n	a10, .L22
	.loc 1 239 0
	l32i.n	a10, a7, 0
.LVL96:
	movi.n	a11, 1
	call8	mbedtls_pk_can_do
.LVL97:
	bnez.n	a10, .L43
	.loc 1 241 0
	l32i.n	a10, a7, 0
	movi.n	a11, 4
	call8	mbedtls_pk_can_do
.LVL98:
	.loc 1 244 0
	l32r	a8, .LC5
	.loc 1 241 0
	beqz.n	a10, .L22
	.loc 1 242 0
	movi.n	a10, 4
	j	.L24
.L43:
	.loc 1 240 0
	movi.n	a10, 1
.L24:
.LVL99:
	.loc 1 246 0
	l32r	a13, .LC10
	l32r	a12, .LC11
	addi	a11, sp, 16
	add.n	a13, a11, a13
	add.n	a12, a11, a12
	l32i.n	a11, a7, 8
	call8	mbedtls_oid_get_oid_by_sig_alg
.LVL100:
	mov.n	a8, a10
.LVL101:
	bnez.n	a10, .L22
	.loc 1 255 0
	l32r	a8, .LC13
.LVL102:
	addi	a2, sp, 16
	add.n	a8, a8, sp
	addmi	a6, a2, 0xc00
	l32i.n	a8, a8, 0
	.loc 1 256 0
	l32r	a10, .LC21
.LVL103:
	l32i	a15, a6, 64
	l32i	a13, a6, 76
	l32i	a12, a6, 80
	.loc 1 255 0
	add.n	a4, a3, a8
	.loc 1 256 0
	addmi	a14, a2, 0x800
	mov.n	a11, a3
	add.n	a10, a10, sp
	.loc 1 255 0
	s32i	a4, a6, 68
	.loc 1 256 0
	call8	mbedtls_x509_write_sig
.LVL104:
	mov.n	a2, a10
.LVL105:
	mov.n	a8, a10
	bltz	a10, .L22
.LVL106:
	.loc 1 259 0 discriminator 2
	l32i	a10, a6, 68
	.loc 1 260 0 discriminator 2
	movi	a8, -0x6c
	.loc 1 259 0 discriminator 2
	sub	a4, a10, a3
	bltu	a4, a5, .L22
	.loc 1 263 0
	l32i	a11, a6, 72
	.loc 1 262 0
	sub	a10, a10, a5
	.loc 1 263 0
	mov.n	a12, a5
	.loc 1 262 0
	s32i	a10, a6, 68
	.loc 1 263 0
	call8	memcpy
.LVL107:
	.loc 1 266 0
	l32r	a10, .LC21
	.loc 1 265 0
	add.n	a2, a5, a2
.LVL108:
	.loc 1 266 0
	mov.n	a12, a2
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_len
.LVL109:
	mov.n	a8, a10
.LVL110:
	bltz	a10, .L22
	.loc 1 266 0 is_stmt 0 discriminator 2
	add.n	a2, a10, a2
.LVL111:
	.loc 1 267 0 is_stmt 1 discriminator 2
	l32r	a10, .LC21
	movi.n	a12, 0x30
	mov.n	a11, a3
	add.n	a10, a10, sp
	call8	mbedtls_asn1_write_tag
.LVL112:
	.loc 1 270 0 discriminator 2
	add.n	a2, a10, a2
.LVL113:
	mov.n	a8, a10
	movgez	a8, a2, a10
.LVL114:
.L22:
	.loc 1 271 0
	mov.n	a2, a8
	retw.n
.LFE19:
	.size	mbedtls_x509write_csr_der, .-mbedtls_x509write_csr_der
	.section	.rodata.str1.1
.LC23:
	.string	"-----END CERTIFICATE REQUEST-----\n"
.LC25:
	.string	"-----BEGIN CERTIFICATE REQUEST-----\n"
	.section	.text.mbedtls_x509write_csr_pem,"ax",@progbits
	.literal_position
	.literal .LC22, 4096
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC27, 4128
	.align	4
	.global	mbedtls_x509write_csr_pem
	.type	mbedtls_x509write_csr_pem, @function
mbedtls_x509write_csr_pem:
.LFB20:
	.loc 1 280 0
.LVL115:
	entry	sp, 4176
.LCFI9:
	.loc 1 283 0
	addi	a8, sp, 16
	.loc 1 280 0
	mov.n	a15, a4
	.loc 1 283 0
	movi.n	a7, 0
	addmi	a4, a8, 0x1000
.LVL116:
	.loc 1 285 0
	mov.n	a10, a2
	l32r	a2, .LC27
.LVL117:
	.loc 1 283 0
	s32i.n	a7, a4, 0
	.loc 1 285 0
	l32r	a7, .LC22
	add.n	a2, a2, sp
	mov.n	a11, a8
	s32i.n	a15, a2, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a7
	call8	mbedtls_x509write_csr_der
.LVL118:
	l32r	a8, .LC27
	add.n	a8, a8, sp
	l32i.n	a15, a8, 0
	bltz	a10, .L51
	.loc 1 291 0
	sub	a12, a7, a10
	mov.n	a13, a10
	addi	a2, sp, 16
	l32r	a11, .LC24
	l32r	a10, .LC26
.LVL119:
	s32i.n	a4, sp, 0
	mov.n	a14, a3
	add.n	a12, a2, a12
	call8	mbedtls_pem_write_buffer
.LVL120:
.L51:
	.loc 1 299 0
	mov.n	a2, a10
	retw.n
.LFE20:
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0xcb0
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
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
	.4byte	0xc75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
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
	.byte	0x3a
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
	.byte	0x45
	.4byte	0x12f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x4e
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
	.byte	0x56
	.4byte	0x183
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x5
	.byte	0x7d
	.4byte	0x1d0
	.uleb128 0xf
	.4byte	.LASF35
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0x1fa
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x84
	.4byte	0x1fa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x85
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
	.byte	0x86
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
	.4byte	.LASF98
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.byte	0x1
	.4byte	0x2c0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x4c
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x61
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x39
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fd
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x39
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0xb89
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x283
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x363
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x3e
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0xb92
	.4byte	0x339
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0xb92
	.4byte	0x34d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0xb9e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x46
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x46
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0x46
	.4byte	0x178
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c3
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x4b
	.4byte	0x2fd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.byte	0x4b
	.4byte	0x277
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x1
	.byte	0x50
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40f
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x50
	.4byte	0x2fd
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x51
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0xba9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x56
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x499
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x56
	.4byte	0x2fd
	.4byte	.LLST1
	.uleb128 0x16
	.string	"oid"
	.byte	0x1
	.byte	0x57
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0x57
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x58
	.4byte	0x210
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x58
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0xbb5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6b
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57b
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x6b
	.4byte	0x2fd
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6b
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x6d
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x6e
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x70
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0x28e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x74
	.4byte	0x53c
	.uleb128 0x22
	.4byte	0x2a9
	.byte	0
	.uleb128 0x23
	.4byte	0x29e
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x25
	.4byte	0x2b4
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0xbc1
	.4byte	0x556
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x40f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x85
	.4byte	0x3e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65d
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x85
	.4byte	0x2fd
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF58
	.byte	0x1
	.byte	0x86
	.4byte	0x4c
	.4byte	.LLST8
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x88
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x89
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8a
	.4byte	0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x8b
	.4byte	0x3e
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	0x28e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x8f
	.4byte	0x61e
	.uleb128 0x22
	.4byte	0x2a9
	.byte	0
	.uleb128 0x23
	.4byte	0x29e
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x25
	.4byte	0x2b4
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0xbc1
	.4byte	0x638
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x17
	.4byte	.LVL33
	.4byte	0x40f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa3
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5b
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0xa3
	.4byte	0x2fd
	.4byte	.LLST12
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xa3
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa4
	.4byte	0x21b
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa5
	.4byte	0x86
	.4byte	.LLST15
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa8
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa9
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0xaa
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"c2"
	.byte	0x1
	.byte	0xaa
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.byte	0xab
	.4byte	0xa5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.byte	0xac
	.4byte	0xa6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0xad
	.4byte	0xa7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3232
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0xaf
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb0
	.4byte	0x1ba
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0xbcd
	.4byte	0x79a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0xbd9
	.4byte	0x7bb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0xbe4
	.4byte	0x7dc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0xbd9
	.4byte	0x7fd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0xbe4
	.4byte	0x81e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0xbef
	.4byte	0x847
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xbd9
	.4byte	0x868
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL61
	.4byte	0xbe4
	.4byte	0x889
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0xbd9
	.4byte	0x8aa
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0xbe4
	.4byte	0x8ca
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0xbfa
	.4byte	0x8de
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0xc06
	.4byte	0x8f8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0xc12
	.4byte	0x917
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0xbd9
	.4byte	0x937
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0xbe4
	.4byte	0x958
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 3144
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL87
	.4byte	0xc1d
	.uleb128 0x19
	.4byte	.LVL88
	.4byte	0xc28
	.4byte	0x97b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0xc34
	.4byte	0x9a4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x74
	.sleb128 2048
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x74
	.sleb128 3136
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL97
	.4byte	0xc40
	.4byte	0x9b7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL98
	.4byte	0xc40
	.4byte	0x9ca
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.4byte	.LVL100
	.4byte	0xc4c
	.4byte	0x9e6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x74
	.sleb128 3152
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x74
	.sleb128 3148
	.byte	0
	.uleb128 0x19
	.4byte	.LVL104
	.4byte	0xc58
	.4byte	0xa08
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x72
	.sleb128 2048
	.byte	0
	.uleb128 0x19
	.4byte	.LVL107
	.4byte	0xc64
	.4byte	0xa1c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL109
	.4byte	0xbd9
	.4byte	0xa3d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL112
	.4byte	0xbe4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0xa6b
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0xa7c
	.uleb128 0x28
	.4byte	0x7f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0xa8d
	.uleb128 0x28
	.4byte	0x7f
	.2byte	0x7ff
	.byte	0
	.uleb128 0x29
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x115
	.4byte	0x3e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb78
	.uleb128 0x2a
	.string	"ctx"
	.byte	0x1
	.2byte	0x115
	.4byte	0x2fd
	.4byte	.LLST21
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.2byte	0x115
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x115
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x116
	.4byte	0x21b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x117
	.4byte	0x86
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x119
	.4byte	0x3e
	.4byte	.LLST23
	.uleb128 0x2f
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x11a
	.4byte	0xb78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x2f
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x11b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.4byte	.LVL118
	.4byte	0x65d
	.4byte	0xb4e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 -4096
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL120
	.4byte	0xc6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
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
	.4byte	0xb89
	.uleb128 0x28
	.4byte	0x7f
	.2byte	0xfff
	.byte	0
	.uleb128 0x30
	.4byte	.LASF92
	.4byte	.LASF92
	.uleb128 0x31
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x160
	.uleb128 0x32
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x7
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x138
	.uleb128 0x31
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x139
	.uleb128 0x31
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x11b
	.uleb128 0x31
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x13c
	.uleb128 0x32
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x3c
	.uleb128 0x32
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x4a
	.uleb128 0x32
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0x8b
	.uleb128 0x31
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x2a7
	.uleb128 0x31
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x13e
	.uleb128 0x32
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.byte	0xbf
	.uleb128 0x32
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.byte	0x80
	.uleb128 0x31
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x14a
	.uleb128 0x31
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x1a8
	.uleb128 0x31
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x131
	.uleb128 0x31
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x211
	.uleb128 0x31
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x140
	.uleb128 0x30
	.4byte	.LASF93
	.4byte	.LASF93
	.uleb128 0x32
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xb
	.byte	0x7f
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL19-1
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23-1
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL19-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL30-1
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL33-1
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL30-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL39
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL93
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL42-1
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcb0
	.byte	0x1c
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL93
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xcb0
	.byte	0x1c
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL93
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL72
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL74
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
	.4byte	.LVL74
	.4byte	.LVL75-1
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
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120-1
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509write_csr.c"
.LASF61:
	.string	"f_rng"
.LASF32:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF57:
	.string	"mbedtls_x509write_csr_set_ns_cert_type"
.LASF88:
	.string	"mbedtls_pk_sign"
.LASF90:
	.string	"mbedtls_oid_get_oid_by_sig_alg"
.LASF97:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF85:
	.string	"mbedtls_asn1_write_int"
.LASF74:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF58:
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
.LASF86:
	.string	"mbedtls_md_info_from_type"
.LASF93:
	.string	"memcpy"
.LASF45:
	.string	"mbedtls_x509write_csr_init"
.LASF4:
	.string	"short int"
.LASF64:
	.string	"sig_oid_len"
.LASF98:
	.string	"csr_get_unused_bits_for_named_bitstring"
.LASF72:
	.string	"output_buf"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF84:
	.string	"mbedtls_x509_write_names"
.LASF50:
	.string	"mbedtls_x509write_csr_set_subject_name"
.LASF34:
	.string	"mbedtls_pk_type_t"
.LASF53:
	.string	"val_len"
.LASF81:
	.string	"mbedtls_asn1_write_tag"
.LASF37:
	.string	"pk_info"
.LASF91:
	.string	"mbedtls_x509_write_sig"
.LASF5:
	.string	"long long int"
.LASF73:
	.string	"olen"
.LASF44:
	.string	"bit_offset"
.LASF92:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF67:
	.string	"pub_len"
.LASF87:
	.string	"mbedtls_md"
.LASF66:
	.string	"tmp_buf"
.LASF48:
	.string	"mbedtls_x509write_csr_set_key"
.LASF29:
	.string	"MBEDTLS_PK_ECKEY"
.LASF89:
	.string	"mbedtls_pk_can_do"
.LASF3:
	.string	"unsigned char"
.LASF75:
	.string	"mbedtls_platform_zeroize"
.LASF27:
	.string	"MBEDTLS_PK_NONE"
.LASF30:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF38:
	.string	"pk_ctx"
.LASF77:
	.string	"mbedtls_x509_set_extension"
.LASF65:
	.string	"hash"
.LASF63:
	.string	"sig_oid"
.LASF62:
	.string	"p_rng"
.LASF41:
	.string	"md_alg"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"mbedtls_x509write_csr"
.LASF76:
	.string	"mbedtls_x509_string_to_names"
.LASF54:
	.string	"mbedtls_x509write_csr_set_key_usage"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"MBEDTLS_MD_SHA256"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF52:
	.string	"oid_len"
.LASF79:
	.string	"mbedtls_x509_write_extensions"
.LASF28:
	.string	"MBEDTLS_PK_RSA"
.LASF47:
	.string	"mbedtls_x509write_csr_set_md_alg"
.LASF10:
	.string	"char"
.LASF59:
	.string	"mbedtls_x509write_csr_der"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF55:
	.string	"key_usage"
.LASF17:
	.string	"MBEDTLS_MD_MD2"
.LASF68:
	.string	"sig_and_oid_len"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF70:
	.string	"pk_alg"
.LASF18:
	.string	"MBEDTLS_MD_MD4"
.LASF94:
	.string	"mbedtls_pem_write_buffer"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"bitstring"
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
.LASF60:
	.string	"size"
.LASF49:
	.string	"subject_name"
.LASF25:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF51:
	.string	"mbedtls_x509write_csr_set_extension"
.LASF78:
	.string	"mbedtls_asn1_write_bitstring"
.LASF69:
	.string	"sig_len"
.LASF71:
	.string	"mbedtls_x509write_csr_pem"
.LASF2:
	.string	"signed char"
.LASF56:
	.string	"unused_bits"
.LASF80:
	.string	"mbedtls_asn1_write_len"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF46:
	.string	"mbedtls_x509write_csr_free"
.LASF31:
	.string	"MBEDTLS_PK_ECDSA"
.LASF33:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF83:
	.string	"mbedtls_pk_write_pubkey_der"
.LASF95:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"MBEDTLS_MD_SHA384"
.LASF15:
	.string	"next_merged"
.LASF82:
	.string	"mbedtls_asn1_write_oid"
.LASF14:
	.string	"next"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
