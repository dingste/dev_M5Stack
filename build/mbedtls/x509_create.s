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
	.loc 1 129 0
.LVL0:
	entry	sp, 304
.LCFI0:
.LVL1:
	.loc 1 132 0
	mov.n	a10, a3
	.loc 1 129 0
	s32i	a2, sp, 256
	.loc 1 132 0
	call8	strlen
.LVL2:
	add.n	a6, a3, a10
.LVL3:
	.loc 1 140 0
	l32i	a10, sp, 256
	.loc 1 129 0
	mov.n	a2, a3
.LVL4:
	.loc 1 140 0
	call8	mbedtls_asn1_free_named_data_list
.LVL5:
	.loc 1 142 0
	mov.n	a4, a3
	.loc 1 134 0
	movi.n	a3, 0
.LVL6:
	.loc 1 137 0
	mov.n	a7, sp
.LVL7:
	.loc 1 135 0
	movi.n	a10, 1
	.loc 1 133 0
	mov.n	a9, a3
	.loc 1 142 0
	j	.L2
.LVL8:
.L18:
	l8ui	a5, a4, 0
	.loc 1 144 0
	beqz.n	a10, .L3
	.loc 1 144 0 is_stmt 0 discriminator 1
	movi.n	a10, 0x3d
.LVL9:
	bne	a5, a10, .L4
	.loc 1 146 0 is_stmt 1
	sub	a7, a4, a2
.LVL10:
.LBB5:
.LBB6:
	.loc 1 117 0
	l32r	a3, .LC3
.LVL11:
	j	.L5
.LVL12:
.L8:
	.loc 1 118 0
	l32i.n	a9, a3, 4
	bne	a7, a9, .L6
	.loc 1 119 0
	mov.n	a12, a7
	mov.n	a11, a2
	call8	strncmp
.LVL13:
	.loc 1 118 0
	beqz.n	a10, .L7
.L6:
	.loc 1 117 0
	addi	a3, a3, 16
.LVL14:
.L5:
	.loc 1 117 0
	l32i.n	a10, a3, 0
	bnez.n	a10, .L8
.LBE6:
.LBE5:
	.loc 1 148 0
	l32r	a2, .LC5
.LVL15:
	retw.n
.LVL16:
.L7:
	.loc 1 152 0
	l32i.n	a9, a3, 8
.LVL17:
	.loc 1 153 0
	addi.n	a2, a4, 1
.LVL18:
	.loc 1 155 0
	mov.n	a7, sp
.LVL19:
	j	.L3
.LVL20:
.L19:
	.loc 1 160 0
	addi.n	a5, a4, 1
.LVL21:
	.loc 1 163 0
	bne	a6, a5, .L10
.LVL22:
.L11:
	.loc 1 165 0
	l32r	a2, .LC6
.LVL23:
	retw.n
.LVL24:
.L10:
	.loc 1 163 0 discriminator 1
	l8ui	a10, a4, 1
	movi.n	a4, 0x2c
	bne	a10, a4, .L11
	mov.n	a4, a5
	j	.L12
.LVL25:
.L21:
	.loc 1 169 0 discriminator 1
	addi	a10, a5, -44
	movi.n	a8, 1
	movi.n	a5, 0
	movnez	a8, a5, a10
	extui	a5, a8, 0, 8
	bnez.n	a5, .L25
	movi.n	a8, 1
	moveqz	a5, a8, a11
	beqz.n	a5, .L12
.L25:
.LBB7:
	.loc 1 172 0
	mov.n	a10, a9
	s32i	a9, sp, 260
	call8	strlen
.LVL26:
	.loc 1 171 0
	l32i	a9, sp, 260
.LVL27:
	mov.n	a12, a10
	l32i	a10, sp, 256
	mov.n	a11, a9
	sub	a14, a7, sp
	mov.n	a13, sp
	call8	mbedtls_asn1_store_named_data
.LVL28:
	.loc 1 176 0
	l32i	a9, sp, 260
	beqz.n	a10, .L24
	.loc 1 182 0
	l32i.n	a5, a3, 12
	s32i.n	a5, a10, 12
	.loc 1 184 0
	j	.L14
.L16:
	.loc 1 185 0
	mov.n	a4, a13
.LVL29:
.L14:
	addi.n	a13, a4, 1
	.loc 1 184 0
	bne	a4, a6, .L15
.L17:
	.loc 1 187 0
	mov.n	a2, a13
.LVL30:
	j	.L4
.LVL31:
.L15:
	.loc 1 184 0 discriminator 1
	l8ui	a5, a4, 1
	beqi	a5, 32, .L16
	j	.L17
.LVL32:
.L23:
.LBE7:
	.loc 1 193 0
	l8ui	a10, a4, 0
	addi.n	a5, a7, 1
.LVL33:
	s8i	a10, a7, 0
	.loc 1 195 0
	sub	a8, a5, sp
	beqi	a8, 256, .L11
.L39:
	movi.n	a10, 0
.LVL34:
.L22:
	.loc 1 202 0
	addi.n	a4, a4, 1
.LVL35:
	mov.n	a7, a5
.LVL36:
.L2:
	.loc 1 142 0
	bgeu	a6, a4, .L18
	.loc 1 130 0
	movi.n	a2, 0
.LVL37:
	retw.n
.LVL38:
.L24:
.LBB8:
	.loc 1 178 0
	l32r	a2, .LC4
.LVL39:
	retw.n
.LVL40:
.L3:
.LBE8:
	.loc 1 158 0
	sub	a11, a4, a6
	beqz.n	a11, .L21
	addi	a10, a5, -92
	beqz.n	a10, .L19
	j	.L21
.LVL41:
.L4:
.LBB9:
	mov.n	a5, a7
	movi.n	a10, 1
	j	.L22
.LVL42:
.L12:
.LBE9:
	.loc 1 191 0
	addi.n	a5, a4, 1
	bne	a2, a5, .L23
	mov.n	a5, a7
	j	.L39
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
	.loc 1 215 0
.LVL43:
	entry	sp, 32
.LCFI1:
	.loc 1 218 0
	mov.n	a10, a2
	addi.n	a14, a7, 1
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	mbedtls_asn1_store_named_data
.LVL44:
	.loc 1 215 0
	.loc 1 221 0
	l32r	a2, .LC7
.LVL45:
	.loc 1 218 0
	beqz.n	a10, .L41
	.loc 1 224 0
	l32i.n	a2, a10, 20
	.loc 1 225 0
	mov.n	a12, a7
	.loc 1 224 0
	s8i	a5, a2, 0
	.loc 1 225 0
	l32i.n	a10, a10, 20
.LVL46:
	mov.n	a11, a6
	addi.n	a10, a10, 1
	call8	memcpy
.LVL47:
	.loc 1 227 0
	movi.n	a2, 0
.L41:
	.loc 1 228 0
	retw.n
.LFE12:
	.size	mbedtls_x509_set_extension, .-mbedtls_x509_set_extension
	.section	.text.mbedtls_x509_write_names,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_names
	.type	mbedtls_x509_write_names, @function
mbedtls_x509_write_names:
.LFB14:
	.loc 1 276 0
.LVL48:
	entry	sp, 48
.LCFI2:
.LVL49:
	.loc 1 278 0
	movi.n	a5, 0
	.loc 1 281 0
	j	.L44
.LVL50:
.L47:
.LBB12:
.LBB13:
	.loc 1 247 0
	l32i.n	a8, a4, 4
	.loc 1 252 0
	l32i.n	a14, a4, 16
	l32i.n	a13, a4, 20
	l32i.n	a12, a4, 12
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 1 246 0
	l32i.n	a7, a4, 8
.LVL51:
	.loc 1 252 0
	s32i.n	a8, sp, 0
	call8	mbedtls_asn1_write_tagged_string
.LVL52:
	mov.n	a6, a10
.LVL53:
	l32i.n	a8, sp, 0
	bltz	a10, .L48
.LVL54:
	.loc 1 258 0
	mov.n	a13, a8
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_oid
.LVL55:
	bltz	a10, .L56
	add.n	a6, a6, a10
.LVL56:
	.loc 1 261 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
.LVL57:
	call8	mbedtls_asn1_write_len
.LVL58:
	mov.n	a7, a10
.LVL59:
	bltz	a10, .L50
.LVL60:
	.loc 1 262 0
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_tag
.LVL61:
	bltz	a10, .L56
	.loc 1 261 0
	add.n	a6, a7, a6
.LVL62:
	.loc 1 262 0
	add.n	a6, a10, a6
.LVL63:
	.loc 1 266 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
.LVL64:
	call8	mbedtls_asn1_write_len
.LVL65:
	bltz	a10, .L56
	add.n	a6, a10, a6
.LVL66:
	.loc 1 267 0
	movi.n	a12, 0x31
	mov.n	a11, a3
	mov.n	a10, a2
.LVL67:
	call8	mbedtls_asn1_write_tag
.LVL68:
	bltz	a10, .L56
	add.n	a12, a10, a6
.LVL69:
	.loc 1 271 0
	mov.n	a10, a12
.LVL70:
.LBE13:
.LBE12:
	.loc 1 283 0
	bltz	a12, .L56
	.loc 1 284 0 discriminator 2
	l32i.n	a4, a4, 24
.LVL71:
	.loc 1 283 0 discriminator 2
	add.n	a5, a5, a12
.LVL72:
.L44:
	.loc 1 281 0
	bnez.n	a4, .L47
	.loc 1 287 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL73:
	bltz	a10, .L56
	.loc 1 287 0 is_stmt 0 discriminator 2
	add.n	a5, a10, a5
.LVL74:
	.loc 1 288 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL75:
	call8	mbedtls_asn1_write_tag
.LVL76:
	.loc 1 291 0 discriminator 2
	add.n	a5, a10, a5
.LVL77:
	movgez	a10, a5, a10
.LVL78:
	j	.L56
.LVL79:
.L48:
	j	.L56
.LVL80:
.L50:
.L56:
	.loc 1 292 0
	mov.n	a2, a10
.LVL81:
	retw.n
.LFE14:
	.size	mbedtls_x509_write_names, .-mbedtls_x509_write_names
	.section	.text.mbedtls_x509_write_sig,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_sig
	.type	mbedtls_x509_write_sig, @function
mbedtls_x509_write_sig:
.LFB15:
	.loc 1 297 0
.LVL82:
	entry	sp, 32
.LCFI3:
.LVL83:
	.loc 1 301 0
	l32i.n	a10, a2, 0
	.loc 1 297 0
	.loc 1 301 0
	bgeu	a10, a3, .L58
.LVL84:
.L60:
	.loc 1 302 0
	movi	a10, -0x6c
	j	.L59
.LVL85:
.L58:
	.loc 1 301 0 discriminator 1
	sub	a8, a10, a3
	bltu	a8, a7, .L60
.LVL86:
	.loc 1 305 0
	sub	a10, a10, a7
	.loc 1 306 0
	mov.n	a11, a6
	.loc 1 305 0
	s32i.n	a10, a2, 0
	.loc 1 306 0
	mov.n	a12, a7
	call8	memcpy
.LVL87:
	.loc 1 308 0
	l32i.n	a8, a2, 0
	sub	a6, a8, a3
.LVL88:
	blti	a6, 1, .L60
	.loc 1 311 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	movi.n	a6, 0
	.loc 1 312 0
	addi.n	a7, a7, 1
.LVL89:
	.loc 1 311 0
	s8i	a6, a8, 0
	.loc 1 314 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL90:
	mov.n	a6, a10
	bltz	a10, .L59
.LVL91:
	.loc 1 315 0 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_tag
.LVL92:
	bltz	a10, .L59
	.loc 1 314 0 discriminator 2
	add.n	a7, a6, a7
	.loc 1 315 0 discriminator 2
	add.n	a7, a10, a7
.LVL93:
	.loc 1 319 0 discriminator 2
	movi.n	a14, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL94:
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL95:
	.loc 1 322 0 discriminator 2
	add.n	a7, a10, a7
.LVL96:
	movgez	a10, a7, a10
.LVL97:
.L59:
	.loc 1 323 0
	mov.n	a2, a10
.LVL98:
	retw.n
.LFE15:
	.size	mbedtls_x509_write_sig, .-mbedtls_x509_write_sig
	.section	.text.mbedtls_x509_write_extensions,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_extensions
	.type	mbedtls_x509_write_extensions, @function
mbedtls_x509_write_extensions:
.LFB17:
	.loc 1 365 0
.LVL99:
	entry	sp, 48
.LCFI4:
.LVL100:
	.loc 1 365 0
	mov.n	a5, a2
	.loc 1 367 0
	movi.n	a6, 0
	.loc 1 370 0
	j	.L65
.LVL101:
.L69:
.LBB16:
.LBB17:
	.loc 1 331 0
	l32i.n	a13, a4, 16
	l32i.n	a12, a4, 20
	addi.n	a13, a13, -1
	addi.n	a12, a12, 1
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_raw_buffer
.LVL102:
	mov.n	a2, a10
.LVL103:
	bltz	a10, .L75
.LVL104:
	.loc 1 333 0
	l32i.n	a12, a4, 16
	mov.n	a11, a3
	addi.n	a12, a12, -1
	mov.n	a10, a5
	call8	mbedtls_asn1_write_len
.LVL105:
	bltz	a10, .L80
	add.n	a2, a2, a10
.LVL106:
	.loc 1 334 0
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a5
.LVL107:
	call8	mbedtls_asn1_write_tag
.LVL108:
	bltz	a10, .L80
	add.n	a7, a10, a2
.LVL109:
	.loc 1 336 0
	l32i.n	a2, a4, 20
	l8ui	a2, a2, 0
	beqz.n	a2, .L67
	.loc 1 338 0
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a5
.LVL110:
	call8	mbedtls_asn1_write_bool
.LVL111:
	bltz	a10, .L80
	add.n	a7, a7, a10
.LVL112:
.L67:
	.loc 1 341 0
	l32i.n	a13, a4, 4
	l32i.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, a5
.LVL113:
	call8	mbedtls_asn1_write_raw_buffer
.LVL114:
	mov.n	a8, a10
.LVL115:
	bltz	a10, .L74
.LVL116:
	.loc 1 343 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a5
	s32i.n	a8, sp, 0
	call8	mbedtls_asn1_write_len
.LVL117:
	mov.n	a2, a10
.LVL118:
	bltz	a10, .L75
	.loc 1 344 0
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	mbedtls_asn1_write_tag
.LVL119:
	l32i.n	a8, sp, 0
	bltz	a10, .L80
	.loc 1 341 0
	add.n	a7, a8, a7
	.loc 1 343 0
	add.n	a2, a2, a7
	.loc 1 344 0
	add.n	a2, a10, a2
.LVL120:
	.loc 1 346 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a5
.LVL121:
	call8	mbedtls_asn1_write_len
.LVL122:
	bltz	a10, .L80
	add.n	a2, a10, a2
.LVL123:
	.loc 1 347 0
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a5
.LVL124:
	call8	mbedtls_asn1_write_tag
.LVL125:
	bltz	a10, .L80
	add.n	a2, a10, a2
.LVL126:
	.loc 1 350 0
	mov.n	a10, a2
.LVL127:
.LBE17:
.LBE16:
	.loc 1 372 0
	bltz	a2, .L80
	.loc 1 373 0 discriminator 2
	l32i.n	a4, a4, 24
.LVL128:
	.loc 1 372 0 discriminator 2
	add.n	a6, a6, a2
.LVL129:
.L65:
	.loc 1 370 0
	bnez.n	a4, .L69
	.loc 1 376 0
	mov.n	a10, a6
	j	.L80
.LVL130:
.L74:
	j	.L80
.LVL131:
.L75:
.LBB19:
.LBB18:
	.loc 1 343 0
	mov.n	a10, a2
.LVL132:
.L80:
.LBE18:
.LBE19:
	.loc 1 377 0
	mov.n	a2, a10
	retw.n
.LFE17:
	.size	mbedtls_x509_write_extensions, .-mbedtls_x509_write_extensions
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"CN"
.LC9:
	.string	"U\004\003"
.LC10:
	.string	"commonName"
.LC11:
	.string	"C"
.LC12:
	.string	"U\004\006"
.LC13:
	.string	"countryName"
.LC14:
	.string	"O"
.LC15:
	.string	"U\004\n"
.LC16:
	.string	"organizationName"
.LC17:
	.string	"L"
.LC18:
	.string	"U\004\007"
.LC19:
	.string	"locality"
.LC20:
	.string	"R"
.LC21:
	.string	"*\206H\206\367\r\001\t\001"
.LC22:
	.string	"OU"
.LC23:
	.string	"U\004\013"
.LC24:
	.string	"organizationalUnitName"
.LC25:
	.string	"ST"
.LC26:
	.string	"U\004\b"
.LC27:
	.string	"stateOrProvinceName"
.LC28:
	.string	"emailAddress"
.LC29:
	.string	"serialNumber"
.LC30:
	.string	"U\004\005"
.LC31:
	.string	"postalAddress"
.LC32:
	.string	"U\004\020"
.LC33:
	.string	"postalCode"
.LC34:
	.string	"U\004\021"
.LC35:
	.string	"dnQualifier"
.LC36:
	.string	"U\004."
.LC37:
	.string	"title"
.LC38:
	.string	"U\004\f"
.LC39:
	.string	"surName"
.LC40:
	.string	"U\004\004"
.LC41:
	.string	"SN"
.LC42:
	.string	"givenName"
.LC43:
	.string	"U\004*"
.LC44:
	.string	"GN"
.LC45:
	.string	"initials"
.LC46:
	.string	"U\004+"
.LC47:
	.string	"pseudonym"
.LC48:
	.string	"U\004A"
.LC49:
	.string	"generationQualifier"
.LC50:
	.string	"U\004,"
.LC51:
	.string	"domainComponent"
.LC52:
	.string	"\t\222&\211\223\362,d\001\031"
.LC53:
	.string	"DC"
	.section	.rodata.x509_attrs,"a",@progbits
	.align	4
	.type	x509_attrs, @object
	.size	x509_attrs, 464
x509_attrs:
	.word	.LC8
	.word	2
	.word	.LC9
	.word	12
	.word	.LC10
	.word	10
	.word	.LC9
	.word	12
	.word	.LC11
	.word	1
	.word	.LC12
	.word	19
	.word	.LC13
	.word	11
	.word	.LC12
	.word	19
	.word	.LC14
	.word	1
	.word	.LC15
	.word	12
	.word	.LC16
	.word	16
	.word	.LC15
	.word	12
	.word	.LC17
	.word	1
	.word	.LC18
	.word	12
	.word	.LC19
	.word	8
	.word	.LC18
	.word	12
	.word	.LC20
	.word	1
	.word	.LC21
	.word	22
	.word	.LC22
	.word	2
	.word	.LC23
	.word	12
	.word	.LC24
	.word	22
	.word	.LC23
	.word	12
	.word	.LC25
	.word	2
	.word	.LC26
	.word	12
	.word	.LC27
	.word	19
	.word	.LC26
	.word	12
	.word	.LC28
	.word	12
	.word	.LC21
	.word	22
	.word	.LC29
	.word	12
	.word	.LC30
	.word	19
	.word	.LC31
	.word	13
	.word	.LC32
	.word	19
	.word	.LC33
	.word	10
	.word	.LC34
	.word	19
	.word	.LC35
	.word	11
	.word	.LC36
	.word	19
	.word	.LC37
	.word	5
	.word	.LC38
	.word	12
	.word	.LC39
	.word	7
	.word	.LC40
	.word	12
	.word	.LC41
	.word	2
	.word	.LC40
	.word	12
	.word	.LC42
	.word	9
	.word	.LC43
	.word	12
	.word	.LC44
	.word	2
	.word	.LC43
	.word	12
	.word	.LC45
	.word	8
	.word	.LC46
	.word	12
	.word	.LC47
	.word	9
	.word	.LC48
	.word	12
	.word	.LC49
	.word	19
	.word	.LC50
	.word	12
	.word	.LC51
	.word	15
	.word	.LC52
	.word	22
	.word	.LC53
	.word	2
	.word	.LC52
	.word	22
	.word	0
	.word	0
	.word	0
	.word	5
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
	.4byte	0xa09
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x10
	.byte	0x1
	.byte	0x26
	.4byte	0x167
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.4byte	0x25
	.byte	0x4
	.uleb128 0x8
	.string	"oid"
	.byte	0x1
	.byte	0x2a
	.4byte	0x90
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2c
	.4byte	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2f
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x71
	.4byte	0x1a4
	.byte	0x1
	.4byte	0x1a4
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x71
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.uleb128 0xd
	.string	"cur"
	.byte	0x1
	.byte	0x73
	.4byte	0x1a4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1aa
	.uleb128 0x6
	.4byte	0x167
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x324
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x80
	.4byte	0x324
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x80
	.4byte	0x90
	.4byte	.LLST1
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x82
	.4byte	0x3e
	.byte	0
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x83
	.4byte	0x90
	.4byte	.LLST2
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x83
	.4byte	0x90
	.4byte	.LLST3
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x84
	.4byte	0x90
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.string	"oid"
	.byte	0x1
	.byte	0x85
	.4byte	0x90
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x86
	.4byte	0x1a4
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x88
	.4byte	0x330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x11
	.string	"d"
	.byte	0x1
	.byte	0x89
	.4byte	0x83
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x1
	.byte	0xcd
	.uleb128 0x16
	.4byte	0x172
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x92
	.4byte	0x2b8
	.uleb128 0x17
	.4byte	0x18d
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	0x182
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x19
	.4byte	0x198
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x988
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2fe
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0xab
	.4byte	0x32a
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0x993
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0x99e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
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
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0x993
	.4byte	0x312
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0x9aa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x118
	.uleb128 0x1f
	.4byte	0x89
	.4byte	0x340
	.uleb128 0x20
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd5
	.4byte	0x3e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fa
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd5
	.4byte	0x324
	.4byte	.LLST12
	.uleb128 0x21
	.string	"oid"
	.byte	0x1
	.byte	0xd5
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF26
	.byte	0x1
	.byte	0xd5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd6
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0xd6
	.4byte	0x123
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0xd8
	.4byte	0x32a
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0x99e
	.4byte	0x3e3
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
	.4byte	.LVL47
	.4byte	0x9b6
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
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf2
	.4byte	0x3e
	.byte	0x1
	.4byte	0x46c
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xf2
	.4byte	0x46c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf2
	.4byte	0x7d
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf2
	.4byte	0x32a
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0xf4
	.4byte	0x3e
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0xf5
	.4byte	0x25
	.uleb128 0xd
	.string	"oid"
	.byte	0x1
	.byte	0xf6
	.4byte	0x90
	.uleb128 0x24
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf7
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf8
	.4byte	0x123
	.uleb128 0x24
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x25
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x112
	.4byte	0x3e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64b
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x112
	.4byte	0x46c
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x112
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x113
	.4byte	0x32a
	.4byte	.LLST15
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.4byte	0x3e
	.4byte	.LLST16
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x116
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x29
	.string	"cur"
	.byte	0x1
	.2byte	0x117
	.4byte	0x32a
	.4byte	.LLST18
	.uleb128 0x2a
	.4byte	0x3fa
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x11b
	.4byte	0x60e
	.uleb128 0x17
	.4byte	0x41e
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	0x413
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	0x40a
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x19
	.4byte	0x429
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	0x434
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	0x43f
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	0x44a
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	0x455
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	0x460
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	.LVL52
	.4byte	0x9bf
	.4byte	0x570
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
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL55
	.4byte	0x9ca
	.4byte	0x590
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
	.uleb128 0x1e
	.4byte	.LVL58
	.4byte	0x9d5
	.4byte	0x5b0
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL61
	.4byte	0x9e0
	.4byte	0x5d0
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
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL65
	.4byte	0x9d5
	.4byte	0x5f0
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x9e0
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
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL73
	.4byte	0x9d5
	.4byte	0x62e
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0x9e0
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
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x126
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75e
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x126
	.4byte	0x46c
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x126
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"oid"
	.byte	0x1
	.2byte	0x127
	.4byte	0x90
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.string	"sig"
	.byte	0x1
	.2byte	0x128
	.4byte	0x7d
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x128
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x3e
	.4byte	.LLST31
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LVL87
	.4byte	0x9b6
	.4byte	0x6f7
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
	.uleb128 0x1e
	.4byte	.LVL90
	.4byte	0x9d5
	.4byte	0x717
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
	.uleb128 0x1e
	.4byte	.LVL92
	.4byte	0x9e0
	.4byte	0x736
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
	.4byte	.LVL95
	.4byte	0x9eb
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
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x145
	.4byte	0x3e
	.byte	0x1
	.4byte	0x7aa
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.2byte	0x145
	.4byte	0x46c
	.uleb128 0x2e
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x145
	.4byte	0x7d
	.uleb128 0x2d
	.string	"ext"
	.byte	0x1
	.2byte	0x146
	.4byte	0x32a
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.2byte	0x148
	.4byte	0x3e
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.2byte	0x149
	.4byte	0x25
	.byte	0
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x16b
	.4byte	0x3e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x962
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x46c
	.4byte	.LLST33
	.uleb128 0x27
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x16b
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x16c
	.4byte	0x32a
	.4byte	.LLST34
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x3e
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x170
	.4byte	0x32a
	.4byte	.LLST36
	.uleb128 0x31
	.4byte	0x75e
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x174
	.uleb128 0x17
	.4byte	0x785
	.4byte	.LLST37
	.uleb128 0x17
	.4byte	0x779
	.4byte	.LLST38
	.uleb128 0x17
	.4byte	0x76f
	.4byte	.LLST39
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x19
	.4byte	0x791
	.4byte	.LLST40
	.uleb128 0x19
	.4byte	0x79d
	.4byte	.LLST41
	.uleb128 0x1e
	.4byte	.LVL102
	.4byte	0x9f6
	.4byte	0x878
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
	.uleb128 0x1e
	.4byte	.LVL105
	.4byte	0x9d5
	.4byte	0x892
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
	.uleb128 0x1e
	.4byte	.LVL108
	.4byte	0x9e0
	.4byte	0x8b1
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
	.uleb128 0x1e
	.4byte	.LVL111
	.4byte	0xa01
	.4byte	0x8d0
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
	.uleb128 0x1e
	.4byte	.LVL114
	.4byte	0x9f6
	.4byte	0x8ea
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
	.uleb128 0x1e
	.4byte	.LVL117
	.4byte	0x9d5
	.4byte	0x904
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
	.uleb128 0x1e
	.4byte	.LVL119
	.4byte	0x9e0
	.4byte	0x923
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
	.uleb128 0x1e
	.4byte	.LVL122
	.4byte	0x9d5
	.4byte	0x943
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
	.4byte	.LVL125
	.4byte	0x9e0
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
	.uleb128 0x1f
	.4byte	0x167
	.4byte	0x972
	.uleb128 0x20
	.4byte	0x6f
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x34
	.4byte	0x983
	.uleb128 0x5
	.byte	0x3
	.4byte	x509_attrs
	.uleb128 0x6
	.4byte	0x962
	.uleb128 0x33
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.byte	0x23
	.uleb128 0x33
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.byte	0x21
	.uleb128 0x34
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x140
	.uleb128 0x34
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x160
	.uleb128 0x35
	.4byte	.LASF56
	.4byte	.LASF56
	.uleb128 0x33
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0xd2
	.uleb128 0x33
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x8b
	.uleb128 0x33
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x3c
	.uleb128 0x33
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4a
	.uleb128 0x33
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9d
	.uleb128 0x33
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.byte	0x5a
	.uleb128 0x33
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x5
	.byte	0xaf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x3
	.4byte	x509_attrs
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL82
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL100
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL129
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL101
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL101
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL101
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
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
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
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
.LASF29:
	.string	"x509_attr_descr_from_name"
.LASF54:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF30:
	.string	"x509_write_name"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF8:
	.string	"sizetype"
.LASF40:
	.string	"x509_attrs"
.LASF56:
	.string	"memcpy"
.LASF22:
	.string	"in_tag"
.LASF41:
	.string	"strncmp"
.LASF20:
	.string	"head"
.LASF43:
	.string	"mbedtls_asn1_store_named_data"
.LASF33:
	.string	"mbedtls_x509_write_names"
.LASF28:
	.string	"val_len"
.LASF48:
	.string	"mbedtls_asn1_write_tag"
.LASF35:
	.string	"mbedtls_x509_write_sig"
.LASF51:
	.string	"mbedtls_asn1_write_bool"
.LASF17:
	.string	"name_len"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF37:
	.string	"x509_write_extension"
.LASF16:
	.string	"name"
.LASF55:
	.string	"exit"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"default_tag"
.LASF19:
	.string	"x509_attr_descriptor_t"
.LASF25:
	.string	"mbedtls_x509_set_extension"
.LASF2:
	.string	"signed char"
.LASF50:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF6:
	.string	"long long unsigned int"
.LASF24:
	.string	"mbedtls_x509_string_to_names"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"cur_ext"
.LASF27:
	.string	"critical"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF31:
	.string	"start"
.LASF26:
	.string	"oid_len"
.LASF38:
	.string	"mbedtls_x509_write_extensions"
.LASF10:
	.string	"char"
.LASF42:
	.string	"strlen"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"data"
.LASF21:
	.string	"attr_descr"
.LASF9:
	.string	"long unsigned int"
.LASF36:
	.string	"size"
.LASF49:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF44:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF47:
	.string	"mbedtls_asn1_write_len"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"cur_name"
.LASF45:
	.string	"mbedtls_asn1_write_tagged_string"
.LASF15:
	.string	"next_merged"
.LASF46:
	.string	"mbedtls_asn1_write_oid"
.LASF14:
	.string	"next"
.LASF53:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/x509_create.c"
.LASF34:
	.string	"first"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
