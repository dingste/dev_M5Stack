	.file	"x509_create.c"
	.text
.Ltext0:
	.section	.text.mbedtls_x509_string_to_names,"ax",@progbits
	.literal_position
	.literal .LC3, x509_attrs
	.literal .LC4, -10368
	.literal .LC5, -8448
	.literal .LC6, -9088
	.align	4
	.global	mbedtls_x509_string_to_names
	.type	mbedtls_x509_string_to_names, @function
mbedtls_x509_string_to_names:
.LFB11:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509_create.c"
	.loc 1 90 0
.LVL0:
	entry	sp, 304
.LCFI0:
.LVL1:
	.loc 1 93 0
	mov.n	a10, a3
	call8	strlen
.LVL2:
	add.n	a6, a3, a10
.LVL3:
	.loc 1 100 0
	mov.n	a10, a2
	call8	mbedtls_asn1_free_named_data_list
.LVL4:
	.loc 1 102 0
	mov.n	a4, a3
	.loc 1 97 0
	mov.n	a7, sp
.LVL5:
	.loc 1 95 0
	movi.n	a10, 1
	.loc 1 94 0
	movi.n	a9, 0
	.loc 1 102 0
	j	.L2
.LVL6:
.L20:
	l8ui	a5, a4, 0
	.loc 1 104 0
	beqz.n	a10, .L3
	.loc 1 104 0 is_stmt 0 discriminator 1
	movi.n	a11, 0x3d
	bne	a5, a11, .L4
	.loc 1 106 0 is_stmt 1
	sub	a9, a4, a3
.LVL7:
.LBB4:
.LBB5:
	.loc 1 81 0
	l32r	a7, .LC3
.LVL8:
	j	.L5
.LVL9:
.L9:
	.loc 1 82 0
	l32i.n	a11, a7, 4
	bne	a9, a11, .L6
	.loc 1 83 0
	mov.n	a12, a9
	mov.n	a11, a3
	s32i	a9, sp, 256
	call8	strncmp
.LVL10:
	.loc 1 82 0
	l32i	a9, sp, 256
	bnez.n	a10, .L6
.LVL11:
.L10:
	.loc 1 86 0
	l32i.n	a9, a7, 8
.LVL12:
.LBE5:
.LBE4:
	.loc 1 106 0
	bnez.n	a9, .L36
	j	.L22
.LVL13:
.L6:
.LBB7:
.LBB6:
	.loc 1 81 0
	addi.n	a7, a7, 12
.LVL14:
.L5:
	.loc 1 81 0
	l32i.n	a10, a7, 0
	bnez.n	a10, .L9
	j	.L10
.LVL15:
.L36:
.LBE6:
.LBE7:
	.loc 1 112 0
	addi.n	a3, a4, 1
.LVL16:
	.loc 1 114 0
	mov.n	a7, sp
.LVL17:
	j	.L11
.LVL18:
.L3:
	.loc 1 117 0 discriminator 1
	movi.n	a12, 1
	addi	a11, a5, -92
	mov.n	a8, a12
	movnez	a8, a10, a11
	beqz.n	a8, .L11
	sub	a11, a4, a6
	movnez	a10, a12, a11
	beqz.n	a10, .L11
	.loc 1 119 0
	add.n	a5, a4, a12
.LVL19:
	.loc 1 122 0
	bne	a6, a5, .L12
.LVL20:
.L13:
	.loc 1 124 0
	l32r	a2, .LC6
.LVL21:
	retw.n
.LVL22:
.L12:
	.loc 1 122 0 discriminator 1
	l8ui	a10, a4, 1
	movi.n	a4, 0x2c
	bne	a10, a4, .L13
	mov.n	a10, a7
	mov.n	a4, a5
	j	.L14
.LVL23:
.L11:
	.loc 1 128 0 discriminator 1
	addi	a5, a5, -44
	movi.n	a11, 1
	movi.n	a8, 0
	moveqz	a8, a11, a5
	extui	a5, a8, 0, 8
	bnez.n	a5, .L25
	sub	a10, a4, a6
	moveqz	a5, a11, a10
	mov.n	a10, a7
	beqz.n	a5, .L14
.L25:
	.loc 1 130 0
	mov.n	a10, a9
	s32i	a9, sp, 256
	call8	strlen
.LVL24:
	l32i	a9, sp, 256
.LVL25:
	mov.n	a12, a10
	mov.n	a11, a9
	sub	a14, a7, sp
	mov.n	a13, sp
	mov.n	a10, a2
	call8	mbedtls_asn1_store_named_data
.LVL26:
	l32i	a9, sp, 256
	bnez.n	a10, .L16
	j	.L24
.LVL27:
.L18:
	.loc 1 138 0
	mov.n	a4, a3
.LVL28:
.L16:
	addi.n	a3, a4, 1
	.loc 1 137 0
	bne	a4, a6, .L17
.L19:
.LVL29:
	.loc 1 141 0
	movi.n	a10, 1
	j	.L4
.LVL30:
.L17:
	.loc 1 137 0 discriminator 1
	l8ui	a5, a4, 1
	beqi	a5, 32, .L18
	j	.L19
.LVL31:
.L21:
	.loc 1 146 0
	l8ui	a5, a4, 0
	addi.n	a7, a7, 1
.LVL32:
	s8i	a5, a10, 0
	.loc 1 148 0
	sub	a5, a7, sp
	beqi	a5, 256, .L13
.L38:
	movi.n	a10, 0
.LVL33:
.L4:
	.loc 1 155 0
	addi.n	a4, a4, 1
.LVL34:
.L2:
	.loc 1 102 0
	bgeu	a6, a4, .L20
	.loc 1 91 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L22:
	.loc 1 108 0
	l32r	a2, .LC5
.LVL37:
	retw.n
.LVL38:
.L24:
	.loc 1 134 0
	l32r	a2, .LC4
.LVL39:
	retw.n
.LVL40:
.L14:
	.loc 1 144 0
	addi.n	a5, a4, 1
	bne	a3, a5, .L21
	j	.L38
.LFE11:
	.size	mbedtls_x509_string_to_names, .-mbedtls_x509_string_to_names
	.section	.text.mbedtls_x509_set_extension,"ax",@progbits
	.literal_position
	.literal .LC7, -10368
	.align	4
	.global	mbedtls_x509_set_extension
	.type	mbedtls_x509_set_extension, @function
mbedtls_x509_set_extension:
.LFB12:
	.loc 1 168 0
.LVL41:
	entry	sp, 32
.LCFI1:
	.loc 1 171 0
	mov.n	a10, a2
	addi.n	a14, a7, 1
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	mbedtls_asn1_store_named_data
.LVL42:
	.loc 1 168 0
	.loc 1 174 0
	l32r	a2, .LC7
.LVL43:
	.loc 1 171 0
	beqz.n	a10, .L40
	.loc 1 177 0
	l32i.n	a2, a10, 20
	.loc 1 178 0
	mov.n	a12, a7
	.loc 1 177 0
	s8i	a5, a2, 0
	.loc 1 178 0
	l32i.n	a10, a10, 20
.LVL44:
	mov.n	a11, a6
	addi.n	a10, a10, 1
	call8	memcpy
.LVL45:
	.loc 1 180 0
	movi.n	a2, 0
.L40:
	.loc 1 181 0
	retw.n
.LFE12:
	.size	mbedtls_x509_set_extension, .-mbedtls_x509_set_extension
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"*\206H\206\367\r\001\t\001"
	.section	.text.mbedtls_x509_write_names,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.align	4
	.global	mbedtls_x509_write_names
	.type	mbedtls_x509_write_names, @function
mbedtls_x509_write_names:
.LFB14:
	.loc 1 235 0
.LVL46:
	entry	sp, 48
.LCFI2:
.LVL47:
	.loc 1 235 0
	mov.n	a5, a2
	.loc 1 237 0
	movi.n	a6, 0
	.loc 1 240 0
	j	.L43
.LVL48:
.L48:
	.loc 1 242 0
	l32i.n	a2, a4, 4
.LBB10:
.LBB11:
	.loc 1 204 0
	movi.n	a9, 9
.LBE11:
.LBE10:
	.loc 1 242 0
	l32i.n	a7, a4, 8
	l32i.n	a8, a4, 20
	l32i.n	a13, a4, 16
.LVL49:
.LBB13:
.LBB12:
	.loc 1 204 0
	bne	a2, a9, .L44
	.loc 1 205 0
	l32r	a11, .LC9
	mov.n	a12, a9
	mov.n	a10, a7
	s32i.n	a8, sp, 4
	s32i.n	a13, sp, 0
	call8	memcmp
.LVL50:
	.loc 1 204 0
	l32i.n	a8, sp, 4
.LVL51:
	l32i.n	a13, sp, 0
.LVL52:
	bnez.n	a10, .L44
	.loc 1 207 0
	mov.n	a12, a8
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_ia5_string
.LVL53:
	j	.L60
.LVL54:
.L44:
	.loc 1 213 0
	mov.n	a12, a8
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_printable_string
.LVL55:
.L60:
	bltz	a10, .L58
	mov.n	a8, a10
.LVL56:
	.loc 1 220 0
	mov.n	a13, a2
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a5
.LVL57:
	s32i.n	a8, sp, 4
	call8	mbedtls_asn1_write_oid
.LVL58:
	l32i.n	a8, sp, 4
	bltz	a10, .L58
	add.n	a7, a10, a8
.LVL59:
	.loc 1 222 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a5
.LVL60:
	call8	mbedtls_asn1_write_len
.LVL61:
	mov.n	a2, a10
.LVL62:
	bltz	a10, .L52
.LVL63:
	.loc 1 223 0
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_tag
.LVL64:
	bltz	a10, .L58
	.loc 1 222 0
	add.n	a2, a2, a7
.LVL65:
	.loc 1 223 0
	add.n	a2, a10, a2
.LVL66:
	.loc 1 226 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a5
.LVL67:
	call8	mbedtls_asn1_write_len
.LVL68:
	bltz	a10, .L58
	add.n	a2, a10, a2
.LVL69:
	.loc 1 227 0
	movi.n	a12, 0x31
	mov.n	a11, a3
	mov.n	a10, a5
.LVL70:
	call8	mbedtls_asn1_write_tag
.LVL71:
	bltz	a10, .L58
	add.n	a2, a10, a2
.LVL72:
	.loc 1 230 0
	mov.n	a10, a2
.LVL73:
.LBE12:
.LBE13:
	.loc 1 242 0
	bltz	a2, .L58
	.loc 1 245 0 discriminator 2
	l32i.n	a4, a4, 24
.LVL74:
	.loc 1 242 0 discriminator 2
	add.n	a6, a6, a2
.LVL75:
.L43:
	.loc 1 240 0
	bnez.n	a4, .L48
	.loc 1 248 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_len
.LVL76:
	bltz	a10, .L58
	.loc 1 248 0 is_stmt 0 discriminator 2
	add.n	a6, a10, a6
.LVL77:
	.loc 1 249 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a5
.LVL78:
	call8	mbedtls_asn1_write_tag
.LVL79:
	.loc 1 252 0 discriminator 2
	add.n	a6, a10, a6
.LVL80:
	movgez	a10, a6, a10
.LVL81:
	j	.L58
.LVL82:
.L52:
.L58:
	.loc 1 253 0
	mov.n	a2, a10
	retw.n
.LFE14:
	.size	mbedtls_x509_write_names, .-mbedtls_x509_write_names
	.section	.text.mbedtls_x509_write_sig,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_sig
	.type	mbedtls_x509_write_sig, @function
mbedtls_x509_write_sig:
.LFB15:
	.loc 1 258 0
.LVL83:
	entry	sp, 32
.LCFI3:
.LVL84:
	.loc 1 262 0
	l32i.n	a10, a2, 0
	.loc 1 258 0
	.loc 1 262 0
	bgeu	a10, a3, .L62
.LVL85:
.L64:
	.loc 1 263 0
	movi	a10, -0x6c
	j	.L63
.LVL86:
.L62:
	.loc 1 262 0 discriminator 1
	sub	a8, a10, a3
	bltu	a8, a7, .L64
.LVL87:
	.loc 1 266 0
	sub	a10, a10, a7
	.loc 1 267 0
	mov.n	a11, a6
	.loc 1 266 0
	s32i.n	a10, a2, 0
	.loc 1 267 0
	mov.n	a12, a7
	call8	memcpy
.LVL88:
	.loc 1 269 0
	l32i.n	a8, a2, 0
	sub	a6, a8, a3
.LVL89:
	blti	a6, 1, .L64
	.loc 1 272 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	movi.n	a6, 0
	.loc 1 273 0
	addi.n	a7, a7, 1
.LVL90:
	.loc 1 272 0
	s8i	a6, a8, 0
	.loc 1 275 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL91:
	mov.n	a6, a10
	bltz	a10, .L63
.LVL92:
	.loc 1 276 0 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_tag
.LVL93:
	bltz	a10, .L63
	.loc 1 275 0 discriminator 2
	add.n	a7, a6, a7
	.loc 1 276 0 discriminator 2
	add.n	a7, a10, a7
.LVL94:
	.loc 1 280 0 discriminator 2
	movi.n	a14, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL95:
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL96:
	.loc 1 283 0 discriminator 2
	add.n	a7, a10, a7
.LVL97:
	movgez	a10, a7, a10
.LVL98:
.L63:
	.loc 1 284 0
	mov.n	a2, a10
.LVL99:
	retw.n
.LFE15:
	.size	mbedtls_x509_write_sig, .-mbedtls_x509_write_sig
	.section	.text.mbedtls_x509_write_extensions,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_extensions
	.type	mbedtls_x509_write_extensions, @function
mbedtls_x509_write_extensions:
.LFB17:
	.loc 1 326 0
.LVL100:
	entry	sp, 48
.LCFI4:
.LVL101:
	.loc 1 326 0
	mov.n	a5, a2
	.loc 1 328 0
	movi.n	a6, 0
	.loc 1 331 0
	j	.L69
.LVL102:
.L73:
.LBB16:
.LBB17:
	.loc 1 292 0
	l32i.n	a13, a4, 16
	l32i.n	a12, a4, 20
	addi.n	a13, a13, -1
	addi.n	a12, a12, 1
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_raw_buffer
.LVL103:
	mov.n	a2, a10
.LVL104:
	bltz	a10, .L79
.LVL105:
	.loc 1 294 0
	l32i.n	a12, a4, 16
	mov.n	a11, a3
	addi.n	a12, a12, -1
	mov.n	a10, a5
	call8	mbedtls_asn1_write_len
.LVL106:
	bltz	a10, .L84
	add.n	a2, a2, a10
.LVL107:
	.loc 1 295 0
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a5
.LVL108:
	call8	mbedtls_asn1_write_tag
.LVL109:
	bltz	a10, .L84
	add.n	a7, a10, a2
.LVL110:
	.loc 1 297 0
	l32i.n	a2, a4, 20
	l8ui	a2, a2, 0
	beqz.n	a2, .L71
	.loc 1 299 0
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a5
.LVL111:
	call8	mbedtls_asn1_write_bool
.LVL112:
	bltz	a10, .L84
	add.n	a7, a7, a10
.LVL113:
.L71:
	.loc 1 302 0
	l32i.n	a13, a4, 4
	l32i.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, a5
.LVL114:
	call8	mbedtls_asn1_write_raw_buffer
.LVL115:
	mov.n	a8, a10
.LVL116:
	bltz	a10, .L78
.LVL117:
	.loc 1 304 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a5
	s32i.n	a8, sp, 0
	call8	mbedtls_asn1_write_len
.LVL118:
	mov.n	a2, a10
.LVL119:
	bltz	a10, .L79
	.loc 1 305 0
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_tag
.LVL120:
	l32i.n	a8, sp, 0
	bltz	a10, .L84
	.loc 1 302 0
	add.n	a7, a8, a7
	.loc 1 304 0
	add.n	a2, a2, a7
	.loc 1 305 0
	add.n	a2, a10, a2
.LVL121:
	.loc 1 307 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a5
.LVL122:
	call8	mbedtls_asn1_write_len
.LVL123:
	bltz	a10, .L84
	add.n	a2, a10, a2
.LVL124:
	.loc 1 308 0
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a5
.LVL125:
	call8	mbedtls_asn1_write_tag
.LVL126:
	bltz	a10, .L84
	add.n	a2, a10, a2
.LVL127:
	.loc 1 311 0
	mov.n	a10, a2
.LVL128:
.LBE17:
.LBE16:
	.loc 1 333 0
	bltz	a2, .L84
	.loc 1 334 0 discriminator 2
	l32i.n	a4, a4, 24
.LVL129:
	.loc 1 333 0 discriminator 2
	add.n	a6, a6, a2
.LVL130:
.L69:
	.loc 1 331 0
	bnez.n	a4, .L73
	.loc 1 337 0
	mov.n	a10, a6
	j	.L84
.LVL131:
.L78:
	j	.L84
.LVL132:
.L79:
.LBB19:
.LBB18:
	.loc 1 304 0
	mov.n	a10, a2
.LVL133:
.L84:
.LBE18:
.LBE19:
	.loc 1 338 0
	mov.n	a2, a10
	retw.n
.LFE17:
	.size	mbedtls_x509_write_extensions, .-mbedtls_x509_write_extensions
	.section	.rodata.str1.1
.LC10:
	.string	"CN"
.LC11:
	.string	"U\004\003"
.LC12:
	.string	"commonName"
.LC13:
	.string	"C"
.LC14:
	.string	"U\004\006"
.LC15:
	.string	"countryName"
.LC16:
	.string	"O"
.LC17:
	.string	"U\004\n"
.LC18:
	.string	"organizationName"
.LC19:
	.string	"L"
.LC20:
	.string	"U\004\007"
.LC21:
	.string	"locality"
.LC22:
	.string	"R"
.LC23:
	.string	"OU"
.LC24:
	.string	"U\004\013"
.LC25:
	.string	"organizationalUnitName"
.LC26:
	.string	"ST"
.LC27:
	.string	"U\004\b"
.LC28:
	.string	"stateOrProvinceName"
.LC29:
	.string	"emailAddress"
.LC30:
	.string	"serialNumber"
.LC31:
	.string	"U\004\005"
.LC32:
	.string	"postalAddress"
.LC33:
	.string	"U\004\020"
.LC34:
	.string	"postalCode"
.LC35:
	.string	"U\004\021"
.LC36:
	.string	"dnQualifier"
.LC37:
	.string	"U\004."
.LC38:
	.string	"title"
.LC39:
	.string	"U\004\f"
.LC40:
	.string	"surName"
.LC41:
	.string	"U\004\004"
.LC42:
	.string	"SN"
.LC43:
	.string	"givenName"
.LC44:
	.string	"U\004*"
.LC45:
	.string	"GN"
.LC46:
	.string	"initials"
.LC47:
	.string	"U\004+"
.LC48:
	.string	"pseudonym"
.LC49:
	.string	"U\004A"
.LC50:
	.string	"generationQualifier"
.LC51:
	.string	"U\004,"
.LC52:
	.string	"domainComponent"
.LC53:
	.string	"\t\222&\211\223\362,d\001\031"
.LC54:
	.string	"DC"
	.section	.rodata.x509_attrs,"a",@progbits
	.align	4
	.type	x509_attrs, @object
	.size	x509_attrs, 348
x509_attrs:
	.word	.LC10
	.word	2
	.word	.LC11
	.word	.LC12
	.word	10
	.word	.LC11
	.word	.LC13
	.word	1
	.word	.LC14
	.word	.LC15
	.word	11
	.word	.LC14
	.word	.LC16
	.word	1
	.word	.LC17
	.word	.LC18
	.word	16
	.word	.LC17
	.word	.LC19
	.word	1
	.word	.LC20
	.word	.LC21
	.word	8
	.word	.LC20
	.word	.LC22
	.word	1
	.word	.LC8
	.word	.LC23
	.word	2
	.word	.LC24
	.word	.LC25
	.word	22
	.word	.LC24
	.word	.LC26
	.word	2
	.word	.LC27
	.word	.LC28
	.word	19
	.word	.LC27
	.word	.LC29
	.word	12
	.word	.LC8
	.word	.LC30
	.word	12
	.word	.LC31
	.word	.LC32
	.word	13
	.word	.LC33
	.word	.LC34
	.word	10
	.word	.LC35
	.word	.LC36
	.word	11
	.word	.LC37
	.word	.LC38
	.word	5
	.word	.LC39
	.word	.LC40
	.word	7
	.word	.LC41
	.word	.LC42
	.word	2
	.word	.LC41
	.word	.LC43
	.word	9
	.word	.LC44
	.word	.LC45
	.word	2
	.word	.LC44
	.word	.LC46
	.word	8
	.word	.LC47
	.word	.LC48
	.word	9
	.word	.LC49
	.word	.LC50
	.word	19
	.word	.LC51
	.word	.LC52
	.word	15
	.word	.LC53
	.word	.LC54
	.word	2
	.word	.LC53
	.word	0
	.word	0
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa02
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x48
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x96
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0xc
	.byte	0x2
	.byte	0x86
	.4byte	0xca
	.uleb128 0x8
	.string	"tag"
	.byte	0x2
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x8a
	.4byte	0x7d
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8c
	.4byte	0x9b
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x20
	.byte	0x2
	.byte	0xa6
	.4byte	0x112
	.uleb128 0x8
	.string	"oid"
	.byte	0x2
	.byte	0xa8
	.4byte	0xca
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x2
	.byte	0xa9
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0xaa
	.4byte	0x112
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xad
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x129
	.uleb128 0x6
	.4byte	0x4c
	.uleb128 0xa
	.byte	0xc
	.byte	0x1
	.byte	0x24
	.4byte	0x15b
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x25
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"oid"
	.byte	0x1
	.byte	0x27
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.byte	0x28
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4d
	.4byte	0x90
	.byte	0x1
	.4byte	0x198
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4d
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.uleb128 0xd
	.string	"cur"
	.byte	0x1
	.byte	0x4f
	.4byte	0x198
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x6
	.4byte	0x15b
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x59
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f1
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x59
	.4byte	0x2f1
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x59
	.4byte	0x90
	.4byte	.LLST1
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0x3e
	.byte	0
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.4byte	0x90
	.4byte	.LLST2
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x5c
	.4byte	0x90
	.4byte	.LLST3
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x5d
	.4byte	0x90
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.string	"oid"
	.byte	0x1
	.byte	0x5e
	.4byte	0x90
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5f
	.4byte	0x3e
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0x60
	.4byte	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x11
	.string	"d"
	.byte	0x1
	.byte	0x61
	.4byte	0x83
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9e
	.uleb128 0x16
	.4byte	0x166
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6a
	.4byte	0x29c
	.uleb128 0x17
	.4byte	0x181
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	0x176
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.4byte	0x18c
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x96c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL2
	.4byte	0x977
	.4byte	0x2b0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x982
	.4byte	0x2c4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x977
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x98e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x8
	.byte	0x77
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x130
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2f7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x118
	.uleb128 0x1e
	.4byte	0x89
	.4byte	0x30d
	.uleb128 0x1f
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa6
	.4byte	0x3e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c7
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa6
	.4byte	0x2f1
	.4byte	.LLST10
	.uleb128 0x20
	.string	"oid"
	.byte	0x1
	.byte	0xa6
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0xa7
	.4byte	0x123
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0xa9
	.4byte	0x2f7
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LVL42
	.4byte	0x98e
	.4byte	0x3b0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 1
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0x999
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc3
	.4byte	0x3e
	.byte	0x1
	.4byte	0x42e
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0xc3
	.4byte	0x42e
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc3
	.4byte	0x7d
	.uleb128 0x22
	.string	"oid"
	.byte	0x1
	.byte	0xc4
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc4
	.4byte	0x25
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc5
	.4byte	0x123
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc5
	.4byte	0x25
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0xc7
	.4byte	0x3e
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe9
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xe9
	.4byte	0x42e
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe9
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xea
	.4byte	0x2f7
	.4byte	.LLST13
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xec
	.4byte	0x3e
	.4byte	.LLST14
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0xee
	.4byte	0x2f7
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	0x3c7
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xf2
	.4byte	0x5f5
	.uleb128 0x17
	.4byte	0x40c
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	0x401
	.4byte	.LLST18
	.uleb128 0x17
	.4byte	0x3f6
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	0x3eb
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	0x3e0
	.uleb128 0x24
	.4byte	0x3d7
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x19
	.4byte	0x417
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	0x422
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LVL50
	.4byte	0x9a2
	.4byte	0x51d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL53
	.4byte	0x9ad
	.4byte	0x537
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x9b8
	.4byte	0x551
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL58
	.4byte	0x9c3
	.4byte	0x577
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL61
	.4byte	0x9ce
	.4byte	0x597
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL64
	.4byte	0x9d9
	.4byte	0x5b7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL68
	.4byte	0x9ce
	.4byte	0x5d7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0x9d9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL76
	.4byte	0x9ce
	.4byte	0x615
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL79
	.4byte	0x9d9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0xff
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x742
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xff
	.4byte	0x42e
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF29
	.byte	0x1
	.byte	0xff
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"oid"
	.byte	0x1
	.2byte	0x100
	.4byte	0x90
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x100
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.string	"sig"
	.byte	0x1
	.2byte	0x101
	.4byte	0x7d
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x101
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.2byte	0x103
	.4byte	0x3e
	.4byte	.LLST26
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x104
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	.LVL88
	.4byte	0x999
	.4byte	0x6db
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL91
	.4byte	0x9ce
	.4byte	0x6fb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL93
	.4byte	0x9d9
	.4byte	0x71a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0x9e4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x11e
	.4byte	0x3e
	.byte	0x1
	.4byte	0x78e
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x42e
	.uleb128 0x2c
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x11e
	.4byte	0x7d
	.uleb128 0x2b
	.string	"ext"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x2f7
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x121
	.4byte	0x3e
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.2byte	0x122
	.4byte	0x25
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x144
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x946
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x144
	.4byte	0x42e
	.4byte	.LLST28
	.uleb128 0x26
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x144
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x145
	.4byte	0x2f7
	.4byte	.LLST29
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x147
	.4byte	0x3e
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x2f
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x149
	.4byte	0x2f7
	.4byte	.LLST31
	.uleb128 0x30
	.4byte	0x742
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x14d
	.uleb128 0x17
	.4byte	0x769
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	0x75d
	.4byte	.LLST33
	.uleb128 0x17
	.4byte	0x753
	.4byte	.LLST34
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x19
	.4byte	0x775
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	0x781
	.4byte	.LLST36
	.uleb128 0x1c
	.4byte	.LVL103
	.4byte	0x9ef
	.4byte	0x85c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL106
	.4byte	0x9ce
	.4byte	0x876
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL109
	.4byte	0x9d9
	.4byte	0x895
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL112
	.4byte	0x9fa
	.4byte	0x8b4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL115
	.4byte	0x9ef
	.4byte	0x8ce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL118
	.4byte	0x9ce
	.4byte	0x8e8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL120
	.4byte	0x9d9
	.4byte	0x907
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL123
	.4byte	0x9ce
	.4byte	0x927
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL126
	.4byte	0x9d9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x15b
	.4byte	0x956
	.uleb128 0x1f
	.4byte	0x6f
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0x967
	.uleb128 0x5
	.byte	0x3
	.4byte	x509_attrs
	.uleb128 0x6
	.4byte	0x946
	.uleb128 0x31
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.byte	0x23
	.uleb128 0x31
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x4
	.byte	0x21
	.uleb128 0x32
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x160
	.uleb128 0x31
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0xe7
	.uleb128 0x33
	.4byte	.LASF55
	.4byte	.LASF55
	.uleb128 0x31
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.byte	0x16
	.uleb128 0x31
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0xb6
	.uleb128 0x31
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0xa7
	.uleb128 0x31
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x6f
	.uleb128 0x31
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x2e
	.uleb128 0x31
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x3a
	.uleb128 0x31
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7f
	.uleb128 0x31
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x48
	.uleb128 0x31
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.byte	0x8d
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL38
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	x509_attrs
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL83
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL89
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL90
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL101
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL102
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL102
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL102
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF28:
	.string	"x509_write_name"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF8:
	.string	"sizetype"
.LASF37:
	.string	"x509_attrs"
.LASF55:
	.string	"memcpy"
.LASF20:
	.string	"in_tag"
.LASF38:
	.string	"strncmp"
.LASF19:
	.string	"head"
.LASF41:
	.string	"mbedtls_asn1_store_named_data"
.LASF30:
	.string	"mbedtls_x509_write_names"
.LASF26:
	.string	"val_len"
.LASF47:
	.string	"mbedtls_asn1_write_tag"
.LASF32:
	.string	"mbedtls_x509_write_sig"
.LASF50:
	.string	"mbedtls_asn1_write_bool"
.LASF17:
	.string	"name_len"
.LASF42:
	.string	"memcmp"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF43:
	.string	"mbedtls_asn1_write_ia5_string"
.LASF44:
	.string	"mbedtls_asn1_write_printable_string"
.LASF34:
	.string	"x509_write_extension"
.LASF16:
	.string	"name"
.LASF54:
	.string	"exit"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"x509_attr_descriptor_t"
.LASF23:
	.string	"mbedtls_x509_set_extension"
.LASF2:
	.string	"signed char"
.LASF49:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"mbedtls_x509_string_to_names"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"cur_ext"
.LASF25:
	.string	"critical"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF29:
	.string	"start"
.LASF24:
	.string	"oid_len"
.LASF35:
	.string	"mbedtls_x509_write_extensions"
.LASF10:
	.string	"char"
.LASF39:
	.string	"strlen"
.LASF1:
	.string	"short unsigned int"
.LASF21:
	.string	"data"
.LASF27:
	.string	"x509_at_oid_from_name"
.LASF9:
	.string	"long unsigned int"
.LASF33:
	.string	"size"
.LASF48:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF40:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF46:
	.string	"mbedtls_asn1_write_len"
.LASF51:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"next_merged"
.LASF45:
	.string	"mbedtls_asn1_write_oid"
.LASF14:
	.string	"next"
.LASF52:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509_create.c"
.LASF31:
	.string	"first"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
