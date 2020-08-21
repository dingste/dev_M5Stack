	.file	"asn1write.c"
	.text
.Ltext0:
	.section	.text.mbedtls_asn1_write_len,"ax",@progbits
	.literal_position
	.literal .LC0, 65535
	.literal .LC1, 16777215
	.align	4
	.global	mbedtls_asn1_write_len
	.type	mbedtls_asn1_write_len, @function
mbedtls_asn1_write_len:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/asn1write.c"
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	mov.n	a8, a2
	l32i.n	a9, a2, 0
	.loc 1 44 0
	movi	a2, 0x7f
.LVL1:
	bltu	a2, a4, .L2
	.loc 1 46 0
	sub	a3, a9, a3
.LVL2:
	.loc 1 47 0
	movi	a2, -0x6c
	.loc 1 46 0
	blti	a3, 1, .L3
	.loc 1 49 0
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	s8i	a4, a9, 0
	.loc 1 50 0
	movi.n	a2, 1
	retw.n
.LVL3:
.L2:
	.loc 1 53 0
	movi	a2, 0xff
	bltu	a2, a4, .L4
	.loc 1 55 0
	sub	a3, a9, a3
.LVL4:
	.loc 1 47 0
	movi	a2, -0x6c
	.loc 1 55 0
	blti	a3, 2, .L3
	.loc 1 58 0
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	s8i	a4, a9, 0
	.loc 1 59 0
	l32i.n	a2, a8, 0
	movi	a3, -0x7f
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 60 0
	movi.n	a2, 2
	retw.n
.LVL5:
.L4:
.LBB4:
.LBB5:
	.loc 1 63 0
	l32r	a2, .LC0
	bltu	a2, a4, .L5
	.loc 1 65 0
	sub	a3, a9, a3
.LVL6:
.LBE5:
.LBE4:
	.loc 1 47 0
	movi	a2, -0x6c
.LBB9:
.LBB6:
	.loc 1 65 0
	blti	a3, 3, .L3
	.loc 1 68 0
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	s8i	a4, a9, 0
	.loc 1 69 0
	l32i.n	a2, a8, 0
	srli	a4, a4, 8
.LVL7:
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a4, a2, 0
	.loc 1 70 0
	l32i.n	a2, a8, 0
	movi	a3, -0x7e
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 71 0
	movi.n	a2, 3
	retw.n
.LVL8:
.L5:
	.loc 1 74 0
	l32r	a2, .LC1
	.loc 1 76 0
	sub	a3, a9, a3
.LVL9:
	.loc 1 74 0
	bltu	a2, a4, .L6
.LBE6:
.LBE9:
	.loc 1 47 0
	movi	a2, -0x6c
.LBB10:
.LBB7:
	.loc 1 76 0
	blti	a3, 4, .L3
	.loc 1 79 0
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	s8i	a4, a9, 0
	.loc 1 80 0
	l32i.n	a2, a8, 0
	srli	a3, a4, 8
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 81 0
	l32i.n	a2, a8, 0
	extui	a4, a4, 16, 16
.LVL10:
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a4, a2, 0
	.loc 1 82 0
	l32i.n	a2, a8, 0
	movi	a3, -0x7d
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 83 0
	movi.n	a2, 4
	retw.n
.LVL11:
.L6:
.LBE7:
.LBE10:
	.loc 1 47 0
	movi	a2, -0x6c
.LBB11:
.LBB8:
	.loc 1 90 0
	blti	a3, 5, .L3
	.loc 1 93 0
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	s8i	a4, a9, 0
	.loc 1 94 0
	l32i.n	a2, a8, 0
	srli	a3, a4, 8
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 95 0
	l32i.n	a2, a8, 0
	extui	a3, a4, 16, 16
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 96 0
	l32i.n	a2, a8, 0
	extui	a4, a4, 24, 8
.LVL12:
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a4, a2, 0
	.loc 1 97 0
	l32i.n	a2, a8, 0
	movi	a3, -0x7c
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	s8i	a3, a2, 0
	.loc 1 98 0
	movi.n	a2, 5
.LVL13:
.L3:
.LBE8:
.LBE11:
	.loc 1 104 0
	retw.n
.LFE0:
	.size	mbedtls_asn1_write_len, .-mbedtls_asn1_write_len
	.section	.text.mbedtls_asn1_write_tag,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_tag
	.type	mbedtls_asn1_write_tag, @function
mbedtls_asn1_write_tag:
.LFB1:
	.loc 1 107 0
.LVL14:
	entry	sp, 32
.LCFI1:
	.loc 1 108 0
	l32i.n	a8, a2, 0
	.loc 1 107 0
	extui	a4, a4, 0, 8
	.loc 1 108 0
	sub	a3, a8, a3
.LVL15:
	.loc 1 109 0
	movi	a9, -0x6c
	.loc 1 108 0
	blti	a3, 1, .L13
	.loc 1 111 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	s8i	a4, a8, 0
	.loc 1 113 0
	movi.n	a9, 1
.L13:
	.loc 1 114 0
	mov.n	a2, a9
.LVL16:
	retw.n
.LFE1:
	.size	mbedtls_asn1_write_tag, .-mbedtls_asn1_write_tag
	.section	.text.mbedtls_asn1_write_raw_buffer,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_raw_buffer
	.type	mbedtls_asn1_write_raw_buffer, @function
mbedtls_asn1_write_raw_buffer:
.LFB2:
	.loc 1 118 0
.LVL17:
	entry	sp, 32
.LCFI2:
.LVL18:
	.loc 1 121 0
	l32i.n	a10, a2, 0
	.loc 1 118 0
	mov.n	a11, a4
	.loc 1 122 0
	movi	a8, -0x6c
	.loc 1 121 0
	bltu	a10, a3, .L16
	.loc 1 121 0 is_stmt 0 discriminator 1
	sub	a3, a10, a3
.LVL19:
	bltu	a3, a5, .L16
.LVL20:
	.loc 1 125 0 is_stmt 1
	sub	a10, a10, a5
	s32i.n	a10, a2, 0
	.loc 1 126 0
	mov.n	a12, a5
	call8	memcpy
.LVL21:
	.loc 1 128 0
	mov.n	a8, a5
.LVL22:
.L16:
	.loc 1 129 0
	mov.n	a2, a8
.LVL23:
	retw.n
.LFE2:
	.size	mbedtls_asn1_write_raw_buffer, .-mbedtls_asn1_write_raw_buffer
	.section	.text.mbedtls_asn1_write_mpi,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_mpi
	.type	mbedtls_asn1_write_mpi, @function
mbedtls_asn1_write_mpi:
.LFB3:
	.loc 1 133 0
.LVL24:
	entry	sp, 32
.LCFI3:
.LVL25:
	.loc 1 139 0
	mov.n	a10, a4
	call8	mbedtls_mpi_size
.LVL26:
	.loc 1 141 0
	l32i.n	a11, a2, 0
	.loc 1 139 0
	mov.n	a5, a10
.LVL27:
	.loc 1 141 0
	bgeu	a11, a3, .L20
.LVL28:
.L22:
	.loc 1 142 0
	movi	a10, -0x6c
	j	.L21
.LVL29:
.L20:
	.loc 1 141 0 discriminator 1
	sub	a8, a11, a3
	bltu	a8, a10, .L22
	.loc 1 144 0
	sub	a11, a11, a10
	.loc 1 145 0
	mov.n	a12, a10
	.loc 1 144 0
	s32i.n	a11, a2, 0
	.loc 1 145 0
	mov.n	a10, a4
	call8	mbedtls_mpi_write_binary
.LVL30:
	mov.n	a9, a10
.LVL31:
	bnez.n	a10, .L21
	.loc 1 150 0
	l32i.n	a4, a4, 0
.LVL32:
	bnei	a4, 1, .L23
	.loc 1 150 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	l8ui	a10, a8, 0
	sext	a10, a10, 7
	bgez	a10, .L23
	.loc 1 152 0 is_stmt 1
	sub	a4, a8, a3
	blti	a4, 1, .L22
	.loc 1 155 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	s8i	a9, a8, 0
	.loc 1 156 0
	addi.n	a5, a5, 1
.LVL33:
.L23:
	.loc 1 159 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL34:
	bltz	a10, .L21
	.loc 1 159 0 is_stmt 0 discriminator 2
	add.n	a5, a10, a5
.LVL35:
	.loc 1 160 0 is_stmt 1 discriminator 2
	movi.n	a12, 2
	mov.n	a11, a3
	mov.n	a10, a2
.LVL36:
	call8	mbedtls_asn1_write_tag
.LVL37:
	add.n	a5, a10, a5
.LVL38:
	movgez	a10, a5, a10
.LVL39:
.L21:
	.loc 1 166 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LFE3:
	.size	mbedtls_asn1_write_mpi, .-mbedtls_asn1_write_mpi
	.section	.text.mbedtls_asn1_write_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_null
	.type	mbedtls_asn1_write_null, @function
mbedtls_asn1_write_null:
.LFB4:
	.loc 1 170 0
.LVL41:
	entry	sp, 32
.LCFI4:
.LVL42:
	.loc 1 176 0
	mov.n	a10, a2
	movi.n	a12, 0
	mov.n	a11, a3
	call8	mbedtls_asn1_write_len
.LVL43:
	.loc 1 170 0
	mov.n	a4, a2
	.loc 1 176 0
	mov.n	a2, a10
.LVL44:
	bltz	a10, .L28
.LVL45:
	.loc 1 177 0 discriminator 2
	movi.n	a12, 5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	mbedtls_asn1_write_tag
.LVL46:
	.loc 1 179 0 discriminator 2
	add.n	a2, a10, a2
.LVL47:
	movltz	a2, a10, a10
.LVL48:
.L28:
	.loc 1 180 0
	retw.n
.LFE4:
	.size	mbedtls_asn1_write_null, .-mbedtls_asn1_write_null
	.section	.text.mbedtls_asn1_write_oid,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_oid
	.type	mbedtls_asn1_write_oid, @function
mbedtls_asn1_write_oid:
.LFB5:
	.loc 1 184 0
.LVL49:
	entry	sp, 32
.LCFI5:
.LVL50:
	.loc 1 188 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL51:
	mov.n	a4, a10
.LVL52:
	bltz	a10, .L32
.LVL53:
	.loc 1 190 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL54:
	bltz	a10, .L32
	add.n	a4, a10, a4
.LVL55:
	.loc 1 191 0 discriminator 2
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
.LVL56:
	call8	mbedtls_asn1_write_tag
.LVL57:
	.loc 1 193 0 discriminator 2
	add.n	a4, a10, a4
.LVL58:
	movgez	a10, a4, a10
.LVL59:
.L32:
	.loc 1 194 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE5:
	.size	mbedtls_asn1_write_oid, .-mbedtls_asn1_write_oid
	.section	.text.mbedtls_asn1_write_algorithm_identifier,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_algorithm_identifier
	.type	mbedtls_asn1_write_algorithm_identifier, @function
mbedtls_asn1_write_algorithm_identifier:
.LFB6:
	.loc 1 199 0
.LVL61:
	entry	sp, 32
.LCFI6:
.LVL62:
	.loc 1 203 0
	bnez.n	a6, .L37
	.loc 1 204 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_null
.LVL63:
	mov.n	a6, a10
.LVL64:
	bltz	a10, .L38
.LVL65:
.L37:
	.loc 1 208 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_oid
.LVL66:
	bltz	a10, .L38
	.loc 1 208 0 is_stmt 0 discriminator 2
	add.n	a6, a10, a6
.LVL67:
	.loc 1 210 0 is_stmt 1 discriminator 2
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
.LVL68:
	call8	mbedtls_asn1_write_len
.LVL69:
	bltz	a10, .L38
	add.n	a6, a10, a6
.LVL70:
	.loc 1 211 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL71:
	call8	mbedtls_asn1_write_tag
.LVL72:
	.loc 1 214 0 discriminator 2
	add.n	a6, a10, a6
.LVL73:
	movgez	a10, a6, a10
.LVL74:
.L38:
	.loc 1 215 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LFE6:
	.size	mbedtls_asn1_write_algorithm_identifier, .-mbedtls_asn1_write_algorithm_identifier
	.section	.text.mbedtls_asn1_write_bool,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_bool
	.type	mbedtls_asn1_write_bool, @function
mbedtls_asn1_write_bool:
.LFB7:
	.loc 1 218 0
.LVL76:
	entry	sp, 32
.LCFI7:
.LVL77:
	.loc 1 222 0
	l32i.n	a8, a2, 0
	.loc 1 223 0
	movi	a10, -0x6c
	.loc 1 222 0
	sub	a5, a8, a3
	blti	a5, 1, .L44
	.loc 1 225 0
	movi.n	a5, 1
	movi.n	a9, 0
	addi.n	a8, a8, -1
	movnez	a9, a5, a4
	s32i.n	a8, a2, 0
	neg	a4, a9
.LVL78:
	s8i	a4, a8, 0
.LVL79:
	.loc 1 228 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL80:
	bltz	a10, .L44
	.loc 1 228 0 is_stmt 0 discriminator 2
	add.n	a4, a10, a5
.LVL81:
	.loc 1 229 0 is_stmt 1 discriminator 2
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
.LVL82:
	call8	mbedtls_asn1_write_tag
.LVL83:
	.loc 1 231 0 discriminator 2
	add.n	a4, a10, a4
.LVL84:
	movgez	a10, a4, a10
.LVL85:
.L44:
	.loc 1 232 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LFE7:
	.size	mbedtls_asn1_write_bool, .-mbedtls_asn1_write_bool
	.section	.text.mbedtls_asn1_write_int,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_int
	.type	mbedtls_asn1_write_int, @function
mbedtls_asn1_write_int:
.LFB8:
	.loc 1 235 0
.LVL87:
	entry	sp, 32
.LCFI8:
.LVL88:
	.loc 1 239 0
	l32i.n	a8, a2, 0
	sub	a9, a8, a3
	bgei	a9, 1, .L49
.LVL89:
.L52:
	.loc 1 240 0
	movi	a10, -0x6c
	j	.L50
.LVL90:
.L49:
	.loc 1 243 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	s8i	a4, a8, 0
	.loc 1 245 0
	blti	a4, 1, .L53
	.loc 1 245 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	.loc 1 242 0 is_stmt 1 discriminator 1
	movi.n	a4, 1
.LVL91:
	.loc 1 245 0 discriminator 1
	l8ui	a9, a8, 0
	sext	a9, a9, 7
	bgez	a9, .L51
	.loc 1 247 0
	sub	a4, a8, a3
	blti	a4, 1, .L52
	.loc 1 250 0
	addi.n	a8, a8, -1
	movi.n	a4, 0
	s32i.n	a8, a2, 0
	s8i	a4, a8, 0
.LVL92:
	.loc 1 251 0
	movi.n	a4, 2
	j	.L51
.LVL93:
.L53:
	.loc 1 242 0
	movi.n	a4, 1
.LVL94:
.L51:
	.loc 1 254 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL95:
	bltz	a10, .L50
	.loc 1 254 0 is_stmt 0 discriminator 2
	add.n	a4, a10, a4
.LVL96:
	.loc 1 255 0 is_stmt 1 discriminator 2
	movi.n	a12, 2
	mov.n	a11, a3
	mov.n	a10, a2
.LVL97:
	call8	mbedtls_asn1_write_tag
.LVL98:
	.loc 1 257 0 discriminator 2
	add.n	a4, a10, a4
.LVL99:
	movgez	a10, a4, a10
.LVL100:
.L50:
	.loc 1 258 0
	mov.n	a2, a10
.LVL101:
	retw.n
.LFE8:
	.size	mbedtls_asn1_write_int, .-mbedtls_asn1_write_int
	.section	.text.mbedtls_asn1_write_printable_string,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_printable_string
	.type	mbedtls_asn1_write_printable_string, @function
mbedtls_asn1_write_printable_string:
.LFB9:
	.loc 1 262 0
.LVL102:
	entry	sp, 32
.LCFI9:
.LVL103:
	.loc 1 266 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL104:
	mov.n	a4, a10
.LVL105:
	bltz	a10, .L58
.LVL106:
	.loc 1 269 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL107:
	bltz	a10, .L58
	add.n	a4, a10, a4
.LVL108:
	.loc 1 270 0 discriminator 2
	movi.n	a12, 0x13
	mov.n	a11, a3
	mov.n	a10, a2
.LVL109:
	call8	mbedtls_asn1_write_tag
.LVL110:
	.loc 1 272 0 discriminator 2
	add.n	a4, a10, a4
.LVL111:
	movgez	a10, a4, a10
.LVL112:
.L58:
	.loc 1 273 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LFE9:
	.size	mbedtls_asn1_write_printable_string, .-mbedtls_asn1_write_printable_string
	.section	.text.mbedtls_asn1_write_ia5_string,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_ia5_string
	.type	mbedtls_asn1_write_ia5_string, @function
mbedtls_asn1_write_ia5_string:
.LFB10:
	.loc 1 277 0
.LVL114:
	entry	sp, 32
.LCFI10:
.LVL115:
	.loc 1 281 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL116:
	mov.n	a4, a10
.LVL117:
	bltz	a10, .L63
.LVL118:
	.loc 1 284 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL119:
	bltz	a10, .L63
	add.n	a4, a10, a4
.LVL120:
	.loc 1 285 0 discriminator 2
	movi.n	a12, 0x16
	mov.n	a11, a3
	mov.n	a10, a2
.LVL121:
	call8	mbedtls_asn1_write_tag
.LVL122:
	.loc 1 287 0 discriminator 2
	add.n	a4, a10, a4
.LVL123:
	movgez	a10, a4, a10
.LVL124:
.L63:
	.loc 1 288 0
	mov.n	a2, a10
.LVL125:
	retw.n
.LFE10:
	.size	mbedtls_asn1_write_ia5_string, .-mbedtls_asn1_write_ia5_string
	.section	.text.mbedtls_asn1_write_bitstring,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_bitstring
	.type	mbedtls_asn1_write_bitstring, @function
mbedtls_asn1_write_bitstring:
.LFB11:
	.loc 1 292 0
.LVL126:
	entry	sp, 32
.LCFI11:
.LVL127:
	.loc 1 296 0
	extui	a7, a5, 0, 3
	movi.n	a8, 1
	movi.n	a6, 0
	movnez	a6, a8, a7
	.loc 1 300 0
	l32i.n	a8, a2, 0
	.loc 1 296 0
	srli	a7, a5, 3
	.loc 1 292 0
	mov.n	a11, a4
	.loc 1 296 0
	add.n	a6, a6, a7
.LVL128:
	.loc 1 301 0
	movi	a10, -0x6c
	.loc 1 300 0
	bltu	a8, a3, .L68
	.loc 1 300 0 is_stmt 0 discriminator 1
	addi.n	a7, a6, 1
	sub	a9, a8, a3
	bltu	a9, a7, .L68
.LVL129:
	.loc 1 304 0 is_stmt 1
	sub	a10, a8, a6
	.loc 1 305 0
	mov.n	a12, a6
	.loc 1 304 0
	s32i.n	a10, a2, 0
	.loc 1 305 0
	call8	memcpy
.LVL130:
	.loc 1 309 0
	l32i.n	a8, a2, 0
	subx8	a5, a6, a5
.LVL131:
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	s8i	a5, a8, 0
	.loc 1 311 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL132:
	bltz	a10, .L68
	.loc 1 311 0 is_stmt 0 discriminator 2
	add.n	a6, a10, a7
.LVL133:
	.loc 1 312 0 is_stmt 1 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
.LVL134:
	call8	mbedtls_asn1_write_tag
.LVL135:
	.loc 1 314 0 discriminator 2
	add.n	a6, a10, a6
.LVL136:
	movgez	a10, a6, a10
.LVL137:
.L68:
	.loc 1 315 0
	mov.n	a2, a10
.LVL138:
	retw.n
.LFE11:
	.size	mbedtls_asn1_write_bitstring, .-mbedtls_asn1_write_bitstring
	.section	.text.mbedtls_asn1_write_octet_string,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_write_octet_string
	.type	mbedtls_asn1_write_octet_string, @function
mbedtls_asn1_write_octet_string:
.LFB12:
	.loc 1 319 0
.LVL139:
	entry	sp, 32
.LCFI12:
.LVL140:
	.loc 1 323 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL141:
	mov.n	a4, a10
.LVL142:
	bltz	a10, .L74
.LVL143:
	.loc 1 325 0 discriminator 2
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL144:
	bltz	a10, .L74
	add.n	a4, a10, a4
.LVL145:
	.loc 1 326 0 discriminator 2
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL146:
	call8	mbedtls_asn1_write_tag
.LVL147:
	.loc 1 328 0 discriminator 2
	add.n	a4, a10, a4
.LVL148:
	movgez	a10, a4, a10
.LVL149:
.L74:
	.loc 1 329 0
	mov.n	a2, a10
.LVL150:
	retw.n
.LFE12:
	.size	mbedtls_asn1_write_octet_string, .-mbedtls_asn1_write_octet_string
	.section	.text.mbedtls_asn1_store_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_store_named_data
	.type	mbedtls_asn1_store_named_data, @function
mbedtls_asn1_store_named_data:
.LFB13:
	.loc 1 335 0
.LVL151:
	entry	sp, 48
.LCFI13:
	.loc 1 338 0
	l32i.n	a10, a2, 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	mbedtls_asn1_find_named_data
.LVL152:
	mov.n	a7, a10
.LVL153:
	bnez.n	a10, .L79
	.loc 1 342 0
	movi.n	a11, 0x20
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL154:
	mov.n	a7, a10
.LVL155:
	.loc 1 344 0
	bnez.n	a10, .L80
.LVL156:
.L85:
	.loc 1 345 0
	movi.n	a2, 0
	retw.n
.LVL157:
.L80:
	.loc 1 347 0
	s32i.n	a4, a10, 4
	.loc 1 348 0
	mov.n	a11, a4
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL158:
	s32i.n	a10, a7, 8
	mov.n	a8, a10
	.loc 1 349 0
	bnez.n	a10, .L82
	.loc 1 351 0
	mov.n	a10, a7
	s32i.n	a8, sp, 0
	j	.L91
.L82:
	.loc 1 355 0
	mov.n	a11, a3
	mov.n	a12, a4
	call8	memcpy
.LVL159:
	.loc 1 358 0
	mov.n	a11, a6
	.loc 1 357 0
	s32i.n	a6, a7, 16
	.loc 1 358 0
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL160:
	s32i.n	a10, a7, 20
	mov.n	a3, a10
.LVL161:
	.loc 1 359 0
	bnez.n	a10, .L83
	.loc 1 361 0
	l32i.n	a10, a7, 8
	call8	mbedtls_free
.LVL162:
	.loc 1 362 0
	mov.n	a10, a7
.L91:
	call8	mbedtls_free
.LVL163:
	j	.L85
.L83:
	.loc 1 366 0
	l32i.n	a3, a2, 0
	s32i.n	a3, a7, 24
	.loc 1 367 0
	s32i.n	a7, a2, 0
	j	.L84
.LVL164:
.L79:
	.loc 1 369 0
	l32i.n	a2, a10, 16
.LVL165:
	bgeu	a2, a6, .L84
.LBB12:
	.loc 1 376 0
	mov.n	a11, a6
	movi.n	a10, 1
	call8	mbedtls_calloc
.LVL166:
	mov.n	a2, a10
.LVL167:
	.loc 1 377 0
	beqz.n	a10, .L85
	.loc 1 380 0
	l32i.n	a10, a7, 20
	call8	mbedtls_free
.LVL168:
	.loc 1 381 0
	s32i.n	a2, a7, 20
	.loc 1 382 0
	s32i.n	a6, a7, 16
.LVL169:
.L84:
.LBE12:
	mov.n	a2, a7
	.loc 1 385 0
	beqz.n	a5, .L81
.LVL170:
	.loc 1 386 0
	l32i.n	a10, a7, 20
	mov.n	a12, a6
	mov.n	a11, a5
	call8	memcpy
.LVL171:
.L81:
	.loc 1 389 0
	retw.n
.LFE13:
	.size	mbedtls_asn1_store_named_data, .-mbedtls_asn1_store_named_data
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc2c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0x28
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
	.byte	0xc
	.byte	0x6
	.byte	0x86
	.4byte	0x123
	.uleb128 0x9
	.string	"tag"
	.byte	0x6
	.byte	0x88
	.4byte	0x3e
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x89
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x6
	.byte	0x8a
	.4byte	0x8a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x8c
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x20
	.byte	0x6
	.byte	0xa6
	.4byte	0x16b
	.uleb128 0x9
	.string	"oid"
	.byte	0x6
	.byte	0xa8
	.4byte	0x123
	.byte	0
	.uleb128 0x9
	.string	"val"
	.byte	0x6
	.byte	0xa9
	.4byte	0x123
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0xaa
	.4byte	0x16b
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0xad
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1
	.byte	0x2a
	.4byte	0x3e
	.byte	0x1
	.4byte	0x1ac
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1ac
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.4byte	0x8a
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x2a
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8a
	.uleb128 0xe
	.4byte	0x17c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x202
	.uleb128 0xf
	.4byte	0x18c
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	0x195
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	0x1a0
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xf
	.4byte	0x1a0
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	0x195
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	0x18c
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6a
	.4byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x245
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x1ac
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6a
	.4byte	0x8a
	.4byte	.LLST7
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x6a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x74
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ba
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x74
	.4byte	0x1ac
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x74
	.4byte	0x8a
	.4byte	.LLST9
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x75
	.4byte	0x2ba
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x77
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0xbec
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
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x84
	.4byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x394
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x84
	.4byte	0x1ac
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0x84
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"X"
	.byte	0x1
	.byte	0x84
	.4byte	0x394
	.4byte	.LLST12
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.4byte	0x3e
	.4byte	.LLST13
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x87
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa4
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0xbf5
	.4byte	0x33e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0xc01
	.4byte	0x358
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
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
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0x17c
	.4byte	0x378
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39a
	.uleb128 0x7
	.4byte	0xe9
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa9
	.4byte	0x3e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42b
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xa9
	.4byte	0x1ac
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa9
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.4byte	0x3e
	.4byte	.LLST16
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LVL43
	.4byte	0x17c
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xb6
	.4byte	0x3e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fa
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xb6
	.4byte	0x1ac
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb6
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"oid"
	.byte	0x1
	.byte	0xb7
	.4byte	0x97
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xb9
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xba
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x245
	.4byte	0x4be
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL54
	.4byte	0x17c
	.4byte	0x4de
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.uleb128 0x17
	.4byte	.LVL57
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc4
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f1
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xc4
	.4byte	0x1ac
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xc4
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"oid"
	.byte	0x1
	.byte	0xc5
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xc8
	.4byte	0x3e
	.4byte	.LLST24
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LVL63
	.4byte	0x39f
	.4byte	0x58e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0x42b
	.4byte	0x5b4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL69
	.4byte	0x17c
	.4byte	0x5d4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd9
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68e
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xd9
	.4byte	0x1ac
	.4byte	.LLST26
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd9
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd9
	.4byte	0x3e
	.4byte	.LLST27
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xdb
	.4byte	0x3e
	.4byte	.LLST28
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xdc
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	.LVL80
	.4byte	0x17c
	.4byte	0x671
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL83
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0xea
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xea
	.4byte	0x1ac
	.4byte	.LLST30
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0xea
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0xea
	.4byte	0x3e
	.4byte	.LLST31
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xec
	.4byte	0x3e
	.4byte	.LLST32
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x17c
	.4byte	0x70e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.uleb128 0x17
	.4byte	.LVL98
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x104
	.4byte	0x3e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x800
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x104
	.4byte	0x1ac
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x104
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x105
	.4byte	0x97
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x107
	.4byte	0x3e
	.4byte	.LLST36
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x108
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x1a
	.4byte	.LVL104
	.4byte	0x245
	.4byte	0x7c4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL107
	.4byte	0x17c
	.4byte	0x7e4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.uleb128 0x17
	.4byte	.LVL110
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x43
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x113
	.4byte	0x3e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d6
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x113
	.4byte	0x1ac
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x113
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x114
	.4byte	0x97
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x116
	.4byte	0x3e
	.4byte	.LLST40
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x1a
	.4byte	.LVL116
	.4byte	0x245
	.4byte	0x89a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL119
	.4byte	0x17c
	.4byte	0x8ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.uleb128 0x17
	.4byte	.LVL122
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x122
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x122
	.4byte	0x1ac
	.4byte	.LLST42
	.uleb128 0x1d
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x122
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.2byte	0x123
	.4byte	0x2ba
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x123
	.4byte	0x25
	.4byte	.LLST43
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x125
	.4byte	0x3e
	.4byte	.LLST44
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x126
	.4byte	0x25
	.4byte	.LLST45
	.uleb128 0x21
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x126
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x1a
	.4byte	.LVL130
	.4byte	0xbec
	.4byte	0x974
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL132
	.4byte	0x17c
	.4byte	0x994
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL135
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x13d
	.4byte	0x3e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa86
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x1ac
	.4byte	.LLST47
	.uleb128 0x1d
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x2ba
	.4byte	.LLST48
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x13e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x140
	.4byte	0x3e
	.4byte	.LLST49
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x141
	.4byte	0x25
	.4byte	.LLST50
	.uleb128 0x1a
	.4byte	.LVL141
	.4byte	0x245
	.4byte	0xa4a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL144
	.4byte	0x17c
	.4byte	0xa6a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.uleb128 0x17
	.4byte	.LVL147
	.4byte	0x202
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x14b
	.4byte	0xbe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe0
	.uleb128 0x1e
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x14b
	.4byte	0xbe6
	.4byte	.LLST51
	.uleb128 0x1c
	.string	"oid"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x97
	.4byte	.LLST52
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x14c
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x2ba
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x14e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"cur"
	.byte	0x1
	.2byte	0x150
	.4byte	0xbe0
	.4byte	.LLST53
	.uleb128 0x22
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xb38
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.2byte	0x178
	.4byte	0x81
	.4byte	.LLST54
	.uleb128 0x1a
	.4byte	.LVL166
	.4byte	0xc0d
	.4byte	0xb2e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL168
	.4byte	0xc18
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0xc23
	.4byte	0xb52
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL154
	.4byte	0xc0d
	.4byte	0xb6b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL158
	.4byte	0xc0d
	.4byte	0xb84
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL159
	.4byte	0xbec
	.4byte	0xb9e
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL160
	.4byte	0xc0d
	.4byte	0xbb7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL162
	.4byte	0xc18
	.uleb128 0x23
	.4byte	.LVL163
	.4byte	0xc18
	.uleb128 0x17
	.4byte	.LVL171
	.4byte	0xbec
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x171
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe0
	.uleb128 0x24
	.4byte	.LASF53
	.4byte	.LASF53
	.uleb128 0x25
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x161
	.uleb128 0x25
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x1bf
	.uleb128 0x26
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x7c
	.uleb128 0x26
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.byte	0x7d
	.uleb128 0x25
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x150
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL76
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL87
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL102
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL114
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL126
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE11
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x37
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL139
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL151
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL151
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL153
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL170
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF24:
	.string	"mbedtls_asn1_write_mpi"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"next"
.LASF15:
	.string	"mbedtls_mpi"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF38:
	.string	"bits"
.LASF9:
	.string	"long int"
.LASF27:
	.string	"oid_len"
.LASF53:
	.string	"memcpy"
.LASF35:
	.string	"text_len"
.LASF42:
	.string	"val_len"
.LASF6:
	.string	"__uint32_t"
.LASF22:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"mbedtls_asn1_write_ia5_string"
.LASF23:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"mbedtls_mpi_size"
.LASF29:
	.string	"par_len"
.LASF37:
	.string	"mbedtls_asn1_write_bitstring"
.LASF44:
	.string	"mbedtls_mpi_write_binary"
.LASF10:
	.string	"sizetype"
.LASF30:
	.string	"mbedtls_asn1_write_bool"
.LASF32:
	.string	"mbedtls_asn1_write_int"
.LASF52:
	.string	"cleanup"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"mbedtls_asn1_store_named_data"
.LASF41:
	.string	"head"
.LASF13:
	.string	"uint32_t"
.LASF25:
	.string	"mbedtls_asn1_write_null"
.LASF12:
	.string	"char"
.LASF34:
	.string	"text"
.LASF26:
	.string	"mbedtls_asn1_write_oid"
.LASF31:
	.string	"boolean"
.LASF46:
	.string	"mbedtls_free"
.LASF49:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/asn1write.c"
.LASF47:
	.string	"mbedtls_asn1_find_named_data"
.LASF39:
	.string	"mbedtls_asn1_write_octet_string"
.LASF51:
	.string	"mbedtls_asn1_write_len"
.LASF21:
	.string	"mbedtls_asn1_write_tag"
.LASF45:
	.string	"mbedtls_calloc"
.LASF17:
	.string	"mbedtls_asn1_named_data"
.LASF19:
	.string	"next_merged"
.LASF33:
	.string	"mbedtls_asn1_write_printable_string"
.LASF20:
	.string	"start"
.LASF28:
	.string	"mbedtls_asn1_write_algorithm_identifier"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
