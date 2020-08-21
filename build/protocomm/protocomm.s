	.file	"protocomm.c"
	.text
.Ltext0:
	.section	.text.protocomm_common_security_handler,"ax",@progbits
	.align	4
	.type	protocomm_common_security_handler, @function
protocomm_common_security_handler:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/common/protocomm.c"
	.loc 1 252 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 255 0
	l32i.n	a8, a7, 8
	.loc 1 252 0
	mov.n	a11, a2
	mov.n	a12, a3
	mov.n	a13, a4
	mov.n	a14, a5
	mov.n	a15, a6
	.loc 1 262 0
	mov.n	a10, a8
	.loc 1 255 0
	beqz.n	a8, .L2
	.loc 1 255 0 is_stmt 0 discriminator 1
	l32i.n	a8, a8, 20
	.loc 1 262 0 is_stmt 1 discriminator 1
	movi.n	a10, 0
	.loc 1 255 0 discriminator 1
	beq	a8, a10, .L2
	.loc 1 256 0
	l32i.n	a10, a7, 12
	s32i.n	a7, sp, 0
	callx8	a8
.LVL2:
.L2:
	.loc 1 263 0
	mov.n	a2, a10
.LVL3:
	retw.n
.LFE7:
	.size	protocomm_common_security_handler, .-protocomm_common_security_handler
	.section	.text.protocomm_version_handler,"ax",@progbits
	.align	4
	.type	protocomm_version_handler, @function
protocomm_version_handler:
.LFB10:
	.loc 1 335 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 337 0
	l32i.n	a10, a7, 24
	.loc 1 335 0
	.loc 1 337 0
	bnez.n	a10, .L7
	.loc 1 338 0
	s32i.n	a10, a6, 0
	.loc 1 339 0
	s32i.n	a10, a5, 0
	.loc 1 340 0
	j	.L8
.L7:
	.loc 1 344 0
	call8	strlen
.LVL6:
	s32i.n	a10, a6, 0
	.loc 1 345 0
	call8	malloc
.LVL7:
	.loc 1 351 0
	l32i.n	a12, a6, 0
	l32i.n	a11, a7, 24
	.loc 1 345 0
	s32i.n	a10, a5, 0
	.loc 1 351 0
	call8	memcpy
.LVL8:
.L8:
	.loc 1 353 0
	movi.n	a2, 0
.LVL9:
	retw.n
.LFE10:
	.size	protocomm_version_handler, .-protocomm_version_handler
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"protocomm"
.LC2:
	.string	"\033[0;31mE (%d) %s: Error adding endpoint\033[0m\n"
.LC4:
	.string	"\033[0;31mE (%d) %s: Error allocating endpoint resource\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: Endpoint with this name already exists\033[0m\n"
	.section	.text.protocomm_add_endpoint_internal,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.type	protocomm_add_endpoint_internal, @function
protocomm_add_endpoint_internal:
.LFB3:
	.loc 1 85 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 86 0
	movi.n	a9, 0
	movi.n	a7, 1
	mov.n	a8, a9
	moveqz	a8, a7, a3
	moveqz	a9, a7, a4
	or	a8, a8, a9
	bnez.n	a8, .L18
	moveqz	a8, a7, a2
	bnez.n	a8, .L18
	l32i.n	a7, a2, 16
.LVL11:
	j	.L11
.L13:
.LBB9:
.LBB10:
	.loc 1 75 0
	l32i.n	a10, a7, 0
	mov.n	a11, a3
	call8	strcmp
.LVL12:
	beqz.n	a10, .L12
	.loc 1 74 0
	l32i.n	a7, a7, 16
.LVL13:
.L11:
	bnez.n	a7, .L13
	j	.L22
.LVL14:
.L17:
.LBE10:
.LBE9:
.LBB11:
.LBB12:
	.loc 1 100 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a7
.LVL15:
	mov.n	a7, a10
.LVL16:
	.loc 1 101 0
	beqz.n	a10, .L15
	.loc 1 102 0
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC1
	l32r	a12, .LC3
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	mov.n	a2, a7
.LVL19:
	retw.n
.LVL20:
.L15:
	.loc 1 107 0
	movi.n	a11, 0x14
	movi.n	a10, 1
	call8	calloc
.LVL21:
	.loc 1 108 0
	bnez.n	a10, .L16
	.loc 1 109 0
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC1
	l32r	a12, .LC5
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 110 0
	movi	a2, 0x101
.LVL24:
	retw.n
.LVL25:
.L16:
	.loc 1 114 0
	s32i.n	a3, a10, 0
	.loc 1 120 0
	l32i.n	a3, a2, 16
.LVL26:
	.loc 1 115 0
	s32i.n	a4, a10, 4
	.loc 1 120 0
	s32i.n	a10, a2, 16
	.loc 1 116 0
	s32i.n	a5, a10, 8
	.loc 1 117 0
	s32i.n	a6, a10, 12
	.loc 1 120 0
	s32i.n	a3, a10, 16
	.loc 1 122 0
	movi.n	a2, 0
.LVL27:
	retw.n
.LVL28:
.L18:
.LBE12:
.LBE11:
	.loc 1 87 0
	movi	a2, 0x102
.LVL29:
	retw.n
.LVL30:
.L12:
	.loc 1 95 0
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC1
	l32r	a12, .LC7
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 96 0
	movi.n	a2, -1
.LVL33:
	retw.n
.LVL34:
.L22:
.LBB14:
.LBB13:
	.loc 1 99 0
	l32i.n	a7, a2, 0
.LVL35:
	bnez.n	a7, .L17
	j	.L15
.LBE13:
.LBE14:
.LFE3:
	.size	protocomm_add_endpoint_internal, .-protocomm_add_endpoint_internal
	.section	.rodata.str1.1
.LC9:
	.string	"\033[0;31mE (%d) %s: Error allocating protocomm\033[0m\n"
	.section	.text.protocomm_new,"ax",@progbits
	.literal_position
	.literal .LC8, .LC0
	.literal .LC10, .LC9
	.align	4
	.global	protocomm_new
	.type	protocomm_new, @function
protocomm_new:
.LFB0:
	.loc 1 30 0
	entry	sp, 32
.LCFI3:
	.loc 1 33 0
	movi.n	a11, 0x1c
	movi.n	a10, 1
	call8	calloc
.LVL36:
	mov.n	a2, a10
.LVL37:
	.loc 1 34 0
	bnez.n	a10, .L25
	.loc 1 35 0 discriminator 2
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC8
	l32r	a12, .LC10
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	.loc 1 36 0 discriminator 2
	retw.n
.L25:
	.loc 1 38 0
	movi.n	a8, 0
	s32i.n	a8, a10, 16
	.loc 1 41 0
	retw.n
.LFE0:
	.size	protocomm_new, .-protocomm_new
	.section	.text.protocomm_delete,"ax",@progbits
	.align	4
	.global	protocomm_delete
	.type	protocomm_delete, @function
protocomm_delete:
.LFB1:
	.loc 1 44 0
.LVL40:
	entry	sp, 32
.LCFI4:
	.loc 1 45 0
	beqz.n	a2, .L27
	.loc 1 51 0
	l32i.n	a10, a2, 16
.LVL41:
.L30:
	.loc 1 51 0 is_stmt 0 discriminator 1
	beqz.n	a10, .L29
	.loc 1 51 0 discriminator 3
	l32i.n	a3, a10, 16
.LVL42:
	.loc 1 52 0 is_stmt 1 discriminator 3
	call8	free
.LVL43:
	.loc 1 51 0 discriminator 3
	mov.n	a10, a3
	j	.L30
.LVL44:
.L29:
	.loc 1 56 0
	l32i.n	a10, a2, 24
.LVL45:
	beqz.n	a10, .L31
	.loc 1 57 0
	call8	free
.LVL46:
.L31:
	.loc 1 61 0
	l32i.n	a8, a2, 8
	beqz.n	a8, .L32
	.loc 1 61 0 is_stmt 0 discriminator 1
	l32i.n	a10, a8, 8
	beqz.n	a10, .L32
	.loc 1 62 0 is_stmt 1
	callx8	a10
.LVL47:
.L32:
	.loc 1 64 0
	l32i.n	a10, a2, 12
	beqz.n	a10, .L33
	.loc 1 65 0
	call8	free
.LVL48:
.L33:
	.loc 1 68 0
	mov.n	a10, a2
	call8	free
.LVL49:
.L27:
	retw.n
.LFE1:
	.size	protocomm_delete, .-protocomm_delete
	.section	.text.protocomm_add_endpoint,"ax",@progbits
	.align	4
	.global	protocomm_add_endpoint
	.type	protocomm_add_endpoint, @function
protocomm_add_endpoint:
.LFB4:
	.loc 1 127 0
.LVL50:
	entry	sp, 32
.LCFI5:
	.loc 1 128 0
	movi.n	a14, 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_add_endpoint_internal
.LVL51:
	.loc 1 129 0
	mov.n	a2, a10
.LVL52:
	retw.n
.LFE4:
	.size	protocomm_add_endpoint, .-protocomm_add_endpoint
	.section	.text.protocomm_remove_endpoint,"ax",@progbits
	.align	4
	.global	protocomm_remove_endpoint
	.type	protocomm_remove_endpoint, @function
protocomm_remove_endpoint:
.LFB5:
	.loc 1 132 0
.LVL53:
	entry	sp, 32
.LCFI6:
	.loc 1 132 0
	mov.n	a6, a2
	.loc 1 133 0
	movi.n	a9, 0
	movi.n	a2, 1
.LVL54:
	moveqz	a9, a2, a6
	extui	a8, a9, 0, 8
	bnez.n	a8, .L58
	moveqz	a8, a2, a3
	bnez.n	a8, .L58
.LVL55:
.LBB18:
.LBB19:
	.loc 1 137 0
	l32i.n	a2, a6, 4
	beqz.n	a2, .L52
	.loc 1 138 0
	mov.n	a10, a3
	callx8	a2
.LVL56:
.L52:
	.loc 1 142 0
	l32i.n	a5, a6, 16
.LVL57:
	mov.n	a4, a5
	j	.L53
.LVL58:
.L57:
	.loc 1 144 0
	bne	a5, a4, .L63
	s32i.n	a7, a6, 16
	j	.L55
.LVL59:
.L59:
.LBB20:
	mov.n	a5, a3
.LVL60:
.L63:
	l32i.n	a3, a5, 16
	bne	a4, a3, .L59
	s32i.n	a7, a5, 16
.LVL61:
.L55:
.LBE20:
	.loc 1 145 0
	mov.n	a10, a4
	call8	free
.LVL62:
	retw.n
.LVL63:
.L53:
	.loc 1 142 0
	beqz.n	a4, .L60
	.loc 1 143 0
	l32i.n	a11, a4, 0
	mov.n	a10, a3
	call8	strcmp
.LVL64:
	.loc 1 142 0
	l32i.n	a7, a4, 16
.LVL65:
	.loc 1 143 0
	mov.n	a2, a10
	beqz.n	a10, .L57
	.loc 1 142 0
	mov.n	a4, a7
.LVL66:
	j	.L53
.LVL67:
.L58:
.LBE19:
.LBE18:
	.loc 1 134 0
	movi	a2, 0x102
	retw.n
.LVL68:
.L60:
.LBB22:
.LBB21:
	.loc 1 149 0
	movi	a2, 0x105
.LBE21:
.LBE22:
	.loc 1 150 0
	retw.n
.LFE5:
	.size	protocomm_remove_endpoint, .-protocomm_remove_endpoint
	.section	.rodata.str1.1
.LC12:
	.string	"\033[0;31mE (%d) %s: Invalid params %p %p\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Failed to allocate decrypt buf len %d\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: Decryption of response failed for endpoint %s\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: Request handler for %s failed\033[0m\n"
.LC20:
	.string	"\033[0;31mE (%d) %s: Encryption of response failed for endpoint %s\033[0m\n"
.LC22:
	.string	"\033[0;31mE (%d) %s: No registered endpoint for %s\033[0m\n"
	.section	.text.protocomm_req_handle,"ax",@progbits
	.literal_position
	.literal .LC11, .LC0
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.align	4
	.global	protocomm_req_handle
	.type	protocomm_req_handle, @function
protocomm_req_handle:
.LFB6:
	.loc 1 155 0
.LVL69:
	entry	sp, 80
.LCFI7:
	.loc 1 155 0
	s32i.n	a2, sp, 32
	.loc 1 156 0
	l32i.n	a9, sp, 32
	.loc 1 155 0
	mov.n	a8, a5
	.loc 1 156 0
	movi.n	a2, 0
.LVL70:
	movi.n	a5, 1
.LVL71:
	moveqz	a2, a5, a9
	extui	a2, a2, 0, 8
	.loc 1 155 0
	.loc 1 156 0
	bnez.n	a2, .L66
	moveqz	a2, a5, a3
	bnez.n	a2, .L66
	.loc 1 156 0 is_stmt 0 discriminator 1
	moveqz	a2, a5, a7
	bnez.n	a2, .L66
	l32i	a9, sp, 80
.LVL72:
	moveqz	a2, a5, a9
	beqz.n	a2, .L67
.L66:
	.loc 1 157 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC11
	l32i.n	a15, sp, 32
	l32r	a12, .LC13
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	.loc 1 158 0 discriminator 2
	movi	a2, 0x102
	retw.n
.LVL75:
.L67:
	.loc 1 162 0
	l32i	a5, sp, 80
	.loc 1 161 0
	s32i.n	a2, a7, 0
	.loc 1 162 0
	s32i.n	a2, a5, 0
	l32i.n	a2, sp, 32
	l32i.n	a9, a2, 16
.LVL76:
	j	.L70
.LVL77:
.L72:
.LBB26:
.LBB27:
	.loc 1 75 0
	l32i.n	a10, a9, 0
	mov.n	a11, a3
	s32i.n	a8, sp, 44
	s32i.n	a9, sp, 40
	call8	strcmp
.LVL78:
	mov.n	a2, a10
	l32i.n	a8, sp, 44
	l32i.n	a9, sp, 40
.LVL79:
	beqz.n	a10, .L71
.LVL80:
	.loc 1 74 0
	l32i.n	a9, a9, 16
.LVL81:
.L70:
	bnez.n	a9, .L72
	j	.L92
.LVL82:
.L93:
.LBE27:
.LBE26:
	.loc 1 175 0
	bbci	a5, 0, .L74
	.loc 1 176 0
	l32i.n	a10, sp, 32
	l32i.n	a5, a10, 8
	beqz.n	a5, .L94
	.loc 1 176 0 is_stmt 0 discriminator 1
	l32i.n	a15, a5, 28
	beqz.n	a15, .L94
.LBB28:
	.loc 1 178 0 is_stmt 1
	mov.n	a10, a6
	s32i.n	a8, sp, 44
	s32i.n	a9, sp, 40
	s32i.n	a15, sp, 36
	call8	malloc
.LVL83:
	mov.n	a5, a10
.LVL84:
	.loc 1 179 0
	l32i.n	a8, sp, 44
	l32i.n	a9, sp, 40
	l32i.n	a15, sp, 36
	bnez.n	a10, .L76
	.loc 1 180 0 discriminator 2
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC11
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a15, a6
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL86:
	j	.L95
.L76:
	.loc 1 185 0
	mov.n	a13, a10
	s32i.n	a9, sp, 40
	.loc 1 184 0
	s32i.n	a6, sp, 28
	.loc 1 185 0
	addi	a14, sp, 28
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a4
	callx8	a15
.LVL87:
	.loc 1 186 0
	l32i.n	a9, sp, 40
	beqz.n	a10, .L78
	.loc 1 187 0 discriminator 2
	s32i.n	a10, sp, 44
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC11
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	j	.L96
.LVL90:
.L78:
	.loc 1 195 0
	l32i.n	a8, a9, 4
	l32i.n	a15, a9, 8
	l32i.n	a12, sp, 28
	.loc 1 193 0
	s32i.n	a2, sp, 24
	.loc 1 194 0
	s32i.n	a2, sp, 20
	.loc 1 195 0
	addi	a14, sp, 20
	addi	a13, sp, 24
	mov.n	a11, a5
	mov.n	a10, a4
.LVL91:
	callx8	a8
.LVL92:
	.loc 1 199 0
	beqz.n	a10, .L79
	.loc 1 200 0 discriminator 2
	s32i.n	a10, sp, 44
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC11
	l32r	a12, .LC19
	mov.n	a13, a10
	mov.n	a15, a3
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL94:
	.loc 1 201 0 discriminator 2
	l32i.n	a10, sp, 24
	call8	free
.LVL95:
.L96:
	.loc 1 202 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL96:
	.loc 1 203 0 discriminator 2
	l32i.n	a8, sp, 44
	mov.n	a2, a8
	retw.n
.LVL97:
.L79:
	.loc 1 206 0
	mov.n	a10, a5
.LVL98:
	call8	free
.LVL99:
	.loc 1 209 0
	l32i.n	a10, sp, 20
	call8	malloc
.LVL100:
	mov.n	a5, a10
.LVL101:
	.loc 1 210 0
	bnez.n	a10, .L80
	.loc 1 211 0 discriminator 2
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC11
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a15, a6
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL103:
	.loc 1 212 0 discriminator 2
	l32i.n	a10, sp, 24
	call8	free
.LVL104:
.L95:
	.loc 1 213 0 discriminator 2
	movi	a2, 0x101
	retw.n
.LVL105:
.L80:
	.loc 1 217 0
	l32i.n	a8, sp, 32
	.loc 1 216 0
	l32i.n	a12, sp, 20
	.loc 1 217 0
	l32i.n	a6, a8, 8
.LVL106:
	l32i.n	a11, sp, 24
	l32i.n	a6, a6, 24
	mov.n	a13, a10
	.loc 1 216 0
	s32i.n	a12, sp, 16
	.loc 1 217 0
	mov.n	a10, a4
	addi	a14, sp, 16
	callx8	a6
.LVL107:
	mov.n	a4, a10
.LVL108:
	.loc 1 220 0
	beqz.n	a10, .L81
	.loc 1 221 0 discriminator 2
	call8	esp_log_timestamp
.LVL109:
	l32r	a11, .LC11
	l32r	a12, .LC21
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL110:
	.loc 1 222 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL111:
	.loc 1 223 0 discriminator 2
	l32i.n	a10, sp, 24
	.loc 1 224 0 discriminator 2
	mov.n	a2, a4
	.loc 1 223 0 discriminator 2
	call8	free
.LVL112:
	.loc 1 224 0 discriminator 2
	retw.n
.L81:
	.loc 1 228 0
	l32i.n	a10, sp, 24
	call8	free
.LVL113:
	.loc 1 232 0
	l32i	a9, sp, 80
	l32i.n	a3, sp, 16
.LVL114:
	.loc 1 231 0
	s32i.n	a5, a7, 0
	.loc 1 232 0
	s32i.n	a3, a9, 0
.LBE28:
	.loc 1 176 0
	retw.n
.LVL115:
.L74:
	.loc 1 170 0
	movi.n	a2, -1
	.loc 1 241 0
	bbci	a5, 2, .L91
.L94:
	.loc 1 242 0
	l32i.n	a2, a9, 4
	l32i.n	a15, a9, 8
	l32i	a14, sp, 80
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a4
	callx8	a2
.LVL116:
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L92:
	.loc 1 166 0
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC11
	l32r	a12, .LC23
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
	.loc 1 167 0
	movi	a2, 0x105
	retw.n
.LVL121:
.L71:
	.loc 1 171 0
	l32i.n	a5, a9, 12
	bbci	a5, 1, .L93
	j	.L94
.L91:
	.loc 1 246 0
	retw.n
.LFE6:
	.size	protocomm_req_handle, .-protocomm_req_handle
	.section	.rodata.str1.1
.LC26:
	.string	"\033[0;31mE (%d) %s: Error adding security endpoint\033[0m\n"
.LC28:
	.string	"\033[0;31mE (%d) %s: Error initializing security\033[0m\n"
.LC30:
	.string	"\033[0;31mE (%d) %s: Error allocating Proof of Possession\033[0m\n"
	.section	.text.protocomm_set_security,"ax",@progbits
	.literal_position
	.literal .LC24, protocomm_common_security_handler
	.literal .LC25, .LC0
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.align	4
	.global	protocomm_set_security
	.type	protocomm_set_security, @function
protocomm_set_security:
.LFB8:
	.loc 1 268 0
.LVL122:
	entry	sp, 48
.LCFI8:
	.loc 1 269 0
	movi.n	a6, 0
	.loc 1 268 0
	mov.n	a8, a4
	mov.n	a7, a2
	.loc 1 269 0
	movi.n	a4, 1
.LVL123:
	mov.n	a2, a6
.LVL124:
	moveqz	a2, a4, a3
	moveqz	a6, a4, a8
	or	a2, a2, a6
	bnez.n	a2, .L103
	moveqz	a2, a4, a7
	bnez.n	a2, .L103
	.loc 1 273 0
	l32i.n	a6, a7, 8
	.loc 1 274 0
	movi	a2, 0x103
	.loc 1 273 0
	bnez.n	a6, .L98
	.loc 1 277 0
	l32r	a12, .LC24
	movi.n	a14, 2
	mov.n	a13, a7
	mov.n	a11, a3
	mov.n	a10, a7
	s32i.n	a8, sp, 0
	call8	protocomm_add_endpoint_internal
.LVL125:
	mov.n	a2, a10
.LVL126:
	.loc 1 280 0
	l32i.n	a8, sp, 0
	beqz.n	a10, .L99
	.loc 1 281 0 discriminator 2
	call8	esp_log_timestamp
.LVL127:
	l32r	a11, .LC25
	l32r	a12, .LC27
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a4
	call8	esp_log_write
.LVL128:
	.loc 1 282 0 discriminator 2
	retw.n
.L99:
	.loc 1 285 0
	l32i.n	a10, a8, 4
	beqz.n	a10, .L100
	.loc 1 286 0
	s32i.n	a8, sp, 0
	callx8	a10
.LVL129:
	mov.n	a6, a10
.LVL130:
	.loc 1 287 0
	l32i.n	a8, sp, 0
	beqz.n	a10, .L100
	.loc 1 288 0 discriminator 2
	call8	esp_log_timestamp
.LVL131:
	l32r	a11, .LC25
	l32r	a12, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	mov.n	a10, a4
	call8	esp_log_write
.LVL132:
	.loc 1 289 0 discriminator 2
	mov.n	a11, a3
	mov.n	a10, a7
	call8	protocomm_remove_endpoint
.LVL133:
	.loc 1 290 0 discriminator 2
	mov.n	a2, a6
	retw.n
.LVL134:
.L100:
	.loc 1 293 0
	s32i.n	a8, a7, 8
	.loc 1 309 0
	movi.n	a2, 0
	.loc 1 295 0
	beq	a5, a2, .L98
	.loc 1 296 0
	movi.n	a10, 8
	call8	malloc
.LVL135:
	s32i.n	a10, a7, 12
	mov.n	a4, a10
	.loc 1 297 0
	bne	a10, a2, .L101
	.loc 1 298 0 discriminator 2
	call8	esp_log_timestamp
.LVL136:
	l32r	a11, .LC25
	l32r	a12, .LC31
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL137:
	.loc 1 299 0 discriminator 2
	l32i.n	a2, a7, 8
	beqz.n	a2, .L102
	.loc 1 299 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 8
	beqz.n	a10, .L102
	.loc 1 300 0 is_stmt 1
	callx8	a10
.LVL138:
	.loc 1 301 0
	s32i.n	a4, a7, 8
.L102:
	.loc 1 304 0
	mov.n	a11, a3
	mov.n	a10, a7
	call8	protocomm_remove_endpoint
.LVL139:
	.loc 1 305 0
	movi	a2, 0x101
	retw.n
.L101:
	.loc 1 307 0
	movi.n	a12, 8
	mov.n	a11, a5
	call8	memcpy
.LVL140:
	retw.n
.LVL141:
.L103:
	.loc 1 270 0
	movi	a2, 0x102
.LVL142:
.L98:
	.loc 1 310 0
	retw.n
.LFE8:
	.size	protocomm_set_security, .-protocomm_set_security
	.section	.text.protocomm_unset_security,"ax",@progbits
	.align	4
	.global	protocomm_unset_security
	.type	protocomm_unset_security, @function
protocomm_unset_security:
.LFB9:
	.loc 1 313 0
.LVL143:
	entry	sp, 32
.LCFI9:
	.loc 1 314 0
	movi.n	a8, 1
	movi.n	a4, 0
	moveqz	a4, a8, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L123
	moveqz	a4, a8, a3
	bnez.n	a4, .L123
	.loc 1 318 0
	l32i.n	a8, a2, 8
	beqz.n	a8, .L121
	.loc 1 318 0 is_stmt 0 discriminator 1
	l32i.n	a10, a8, 8
	beqz.n	a10, .L121
	.loc 1 319 0 is_stmt 1
	callx8	a10
.LVL144:
	.loc 1 320 0
	s32i.n	a4, a2, 8
.L121:
	.loc 1 323 0
	l32i.n	a10, a2, 12
	beqz.n	a10, .L122
	.loc 1 325 0
	movi.n	a4, 0
	.loc 1 324 0
	call8	free
.LVL145:
	.loc 1 325 0
	s32i.n	a4, a2, 12
.L122:
	.loc 1 328 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL146:
	mov.n	a2, a10
.LVL147:
	retw.n
.LVL148:
.L123:
	.loc 1 315 0
	movi.n	a2, -1
.LVL149:
	.loc 1 329 0
	retw.n
.LFE9:
	.size	protocomm_unset_security, .-protocomm_unset_security
	.section	.rodata.str1.1
.LC33:
	.string	"\033[0;31mE (%d) %s: Error allocating version string\033[0m\n"
.LC36:
	.string	"\033[0;31mE (%d) %s: Error adding version endpoint\033[0m\n"
	.section	.text.protocomm_set_version,"ax",@progbits
	.literal_position
	.literal .LC32, .LC0
	.literal .LC34, .LC33
	.literal .LC35, protocomm_version_handler
	.literal .LC37, .LC36
	.align	4
	.global	protocomm_set_version
	.type	protocomm_set_version, @function
protocomm_set_version:
.LFB11:
	.loc 1 356 0
.LVL150:
	entry	sp, 32
.LCFI10:
	.loc 1 357 0
	movi.n	a9, 0
	movi.n	a5, 1
	mov.n	a8, a9
	moveqz	a8, a5, a3
	moveqz	a9, a5, a4
	or	a8, a8, a9
	.loc 1 356 0
	mov.n	a10, a4
	.loc 1 357 0
	bnez.n	a8, .L136
	moveqz	a8, a5, a2
	bnez.n	a8, .L136
	.loc 1 361 0
	l32i.n	a6, a2, 24
	.loc 1 362 0
	movi	a8, 0x103
	.loc 1 361 0
	bnez.n	a6, .L134
	.loc 1 365 0
	call8	strdup
.LVL151:
	s32i.n	a10, a2, 24
	.loc 1 366 0
	bnez.n	a10, .L135
	.loc 1 367 0 discriminator 2
	call8	esp_log_timestamp
.LVL152:
	l32r	a11, .LC32
	l32r	a12, .LC34
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL153:
	.loc 1 368 0 discriminator 2
	movi	a8, 0x101
	j	.L134
.L135:
	.loc 1 371 0
	l32r	a12, .LC35
	mov.n	a13, a2
	mov.n	a10, a2
	movi.n	a14, 4
	mov.n	a11, a3
	call8	protocomm_add_endpoint_internal
.LVL154:
	mov.n	a2, a10
.LVL155:
	.loc 1 378 0
	mov.n	a8, a6
	.loc 1 374 0
	beqz.n	a10, .L134
	.loc 1 375 0 discriminator 2
	call8	esp_log_timestamp
.LVL156:
	l32r	a11, .LC32
	l32r	a12, .LC37
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL157:
	.loc 1 376 0 discriminator 2
	mov.n	a8, a2
	j	.L134
.LVL158:
.L136:
	.loc 1 358 0
	movi	a8, 0x102
.LVL159:
.L134:
	.loc 1 379 0
	mov.n	a2, a8
	retw.n
.LFE11:
	.size	protocomm_set_version, .-protocomm_set_version
	.section	.text.protocomm_unset_version,"ax",@progbits
	.align	4
	.global	protocomm_unset_version
	.type	protocomm_unset_version, @function
protocomm_unset_version:
.LFB12:
	.loc 1 382 0
.LVL160:
	entry	sp, 32
.LCFI11:
	.loc 1 383 0
	movi.n	a8, 1
	movi.n	a4, 0
	moveqz	a4, a8, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L143
	moveqz	a4, a8, a3
	bnez.n	a4, .L143
	.loc 1 387 0
	l32i.n	a10, a2, 24
	beqz.n	a10, .L142
	.loc 1 388 0
	call8	free
.LVL161:
	.loc 1 389 0
	s32i.n	a4, a2, 24
.L142:
	.loc 1 392 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL162:
	mov.n	a2, a10
.LVL163:
	retw.n
.LVL164:
.L143:
	.loc 1 384 0
	movi	a2, 0x102
.LVL165:
	.loc 1 393 0
	retw.n
.LFE12:
	.size	protocomm_unset_version, .-protocomm_unset_version
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.uleb128 0x50
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
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI11-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/common/protocomm_priv.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11a6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x37
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xcb
	.4byte	0x90
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x18
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x1f
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.4byte	0x155
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1e
	.4byte	0x155
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x7
	.byte	0x23
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x24
	.4byte	0x130
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x20
	.byte	0x7
	.byte	0x2f
	.4byte	0x1d8
	.uleb128 0xc
	.string	"ver"
	.byte	0x7
	.byte	0x33
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x39
	.4byte	0x1e3
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3e
	.4byte	0x1e3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x43
	.4byte	0x1f8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x48
	.4byte	0x1f8
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x4e
	.4byte	0x248
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x57
	.4byte	0x271
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x5e
	.4byte	0x271
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xf4
	.4byte	0x1e3
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x1f8
	.uleb128 0x10
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x22b
	.uleb128 0x10
	.4byte	0x22b
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x236
	.uleb128 0x10
	.4byte	0x242
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x231
	.uleb128 0x7
	.4byte	0x160
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fe
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x271
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x23c
	.uleb128 0x10
	.4byte	0x242
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24e
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x7
	.byte	0x61
	.4byte	0x16b
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1b
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x293
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x2bb
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x236
	.uleb128 0x10
	.4byte	0x242
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2b
	.4byte	0x2c6
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1c
	.byte	0x9
	.byte	0x37
	.4byte	0x327
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3a
	.4byte	0x3c8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x3e
	.4byte	0x3dd
	.byte	0x4
	.uleb128 0xc
	.string	"sec"
	.byte	0x9
	.byte	0x42
	.4byte	0x3e3
	.byte	0x8
	.uleb128 0xc
	.string	"pop"
	.byte	0x9
	.byte	0x45
	.4byte	0x3ee
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x48
	.4byte	0x396
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4b
	.4byte	0xa2
	.byte	0x14
	.uleb128 0xc
	.string	"ver"
	.byte	0x9
	.byte	0x4e
	.4byte	0xb2
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.4byte	0x33c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x2d
	.4byte	0x385
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x14
	.byte	0x9
	.byte	0x22
	.4byte	0x385
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x23
	.4byte	0xb2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x24
	.4byte	0x282
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x28
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2a
	.4byte	0xde
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2d
	.4byte	0x327
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33c
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2e
	.4byte	0x33c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.4byte	0x3af
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x48
	.4byte	0x385
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x3c8
	.uleb128 0x10
	.4byte	0xb2
	.uleb128 0x10
	.4byte	0x282
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3af
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x3dd
	.uleb128 0x10
	.4byte	0xb2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e9
	.uleb128 0x7
	.4byte	0x277
	.uleb128 0x6
	.byte	0x4
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x47
	.4byte	0x424
	.byte	0x1
	.4byte	0x424
	.uleb128 0x13
	.string	"pc"
	.byte	0x1
	.byte	0x47
	.4byte	0x42a
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0xb2
	.uleb128 0x15
	.string	"it"
	.byte	0x1
	.byte	0x49
	.4byte	0x424
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x52
	.4byte	0xf4
	.byte	0x1
	.4byte	0x48a
	.uleb128 0x13
	.string	"pc"
	.byte	0x1
	.byte	0x52
	.4byte	0x42a
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x52
	.4byte	0xb2
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0x53
	.4byte	0x282
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x53
	.4byte	0xa2
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x54
	.4byte	0xde
	.uleb128 0x15
	.string	"ep"
	.byte	0x1
	.byte	0x5a
	.4byte	0x424
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0xf4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x14b
	.4byte	0x33
	.byte	0x1
	.4byte	0x4ef
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x14b
	.4byte	0xde
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x14c
	.4byte	0x155
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x14c
	.4byte	0xe9
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x14d
	.4byte	0x236
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14d
	.4byte	0x242
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x14e
	.4byte	0xa2
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.2byte	0x150
	.4byte	0x42a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.byte	0x83
	.4byte	0xf4
	.byte	0x1
	.4byte	0x537
	.uleb128 0x13
	.string	"pc"
	.byte	0x1
	.byte	0x83
	.4byte	0x42a
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x83
	.4byte	0xb2
	.uleb128 0x15
	.string	"it"
	.byte	0x1
	.byte	0x8d
	.4byte	0x424
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.byte	0x8d
	.4byte	0x424
	.uleb128 0x1a
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x90
	.4byte	0x385
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0xf8
	.4byte	0x33
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d8
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf8
	.4byte	0xde
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf9
	.4byte	0x155
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf9
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0xfa
	.4byte	0x236
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0xfa
	.4byte	0x242
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0xfb
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"pc"
	.byte	0x1
	.byte	0xfd
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x20
	.4byte	.LVL2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x48a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63a
	.uleb128 0x23
	.4byte	0x49b
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	0x4a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	0x4b3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x4bf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	0x4cb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	0x4d7
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x25
	.4byte	0x4e3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0x1148
	.uleb128 0x26
	.4byte	.LVL7
	.4byte	0x1153
	.uleb128 0x26
	.4byte	.LVL8
	.4byte	0x115e
	.byte	0
	.uleb128 0x22
	.4byte	0x430
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e8
	.uleb128 0x23
	.4byte	0x440
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	0x44a
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0x455
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x45e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	0x469
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x27
	.4byte	0x474
	.uleb128 0x27
	.4byte	0x47e
	.uleb128 0x28
	.4byte	0x3f4
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0x5d
	.4byte	0x6c7
	.uleb128 0x23
	.4byte	0x404
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	0x40e
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x2a
	.4byte	0x419
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x1167
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7b4
	.uleb128 0x23
	.4byte	0x469
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	0x45e
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	0x455
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	0x44a
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	0x440
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.4byte	0x474
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	0x47e
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0x730
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL18
	.4byte	0x117d
	.4byte	0x767
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL21
	.4byte	0x1188
	.4byte	0x77f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0x1172
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0x117d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL31
	.4byte	0x1172
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0x117d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1d
	.4byte	0x42a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x859
	.uleb128 0x1f
	.string	"pc"
	.byte	0x1
	.byte	0x1f
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL36
	.4byte	0x1188
	.4byte	0x825
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0x1172
	.uleb128 0x2b
	.4byte	.LVL39
	.4byte	0x117d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c3
	.uleb128 0x32
	.string	"pc"
	.byte	0x1
	.byte	0x2b
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.string	"it"
	.byte	0x1
	.byte	0x31
	.4byte	0x424
	.4byte	.LLST14
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.byte	0x31
	.4byte	0x424
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LVL43
	.4byte	0x1193
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x1193
	.uleb128 0x26
	.4byte	.LVL48
	.4byte	0x1193
	.uleb128 0x2b
	.4byte	.LVL49
	.4byte	0x1193
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.4byte	0xf4
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x937
	.uleb128 0x35
	.string	"pc"
	.byte	0x1
	.byte	0x7d
	.4byte	0x42a
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7d
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"h"
	.byte	0x1
	.byte	0x7e
	.4byte	0x282
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LVL51
	.4byte	0x430
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x4ef
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e5
	.uleb128 0x23
	.4byte	0x4ff
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	0x509
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	0x514
	.uleb128 0x27
	.4byte	0x51e
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.4byte	0x509
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	0x4ff
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.4byte	0x514
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	0x51e
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x9ab
	.uleb128 0x2a
	.4byte	0x52a
	.4byte	.LLST23
	.byte	0
	.uleb128 0x37
	.4byte	.LVL56
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x9be
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL62
	.4byte	0x1193
	.4byte	0x9d2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL64
	.4byte	0x1167
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF69
	.byte	0x1
	.byte	0x98
	.4byte	0xf4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde8
	.uleb128 0x35
	.string	"pc"
	.byte	0x1
	.byte	0x98
	.4byte	0x42a
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x98
	.4byte	0xb2
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x98
	.4byte	0xde
	.4byte	.LLST26
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x99
	.4byte	0x155
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0x99
	.4byte	0xe9
	.4byte	.LLST28
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9a
	.4byte	0x236
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9a
	.4byte	0x242
	.4byte	.LLST29
	.uleb128 0x15
	.string	"ep"
	.byte	0x1
	.byte	0xa4
	.4byte	0x424
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.byte	0xaa
	.4byte	0xf4
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	0x3f4
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xa4
	.4byte	0xac6
	.uleb128 0x23
	.4byte	0x404
	.4byte	.LLST31
	.uleb128 0x23
	.4byte	0x40e
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x2a
	.4byte	0x419
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	.LVL78
	.4byte	0x1167
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0xd3b
	.uleb128 0x38
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb2
	.4byte	0x23c
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	.LASF71
	.byte	0x1
	.byte	0xb8
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc1
	.4byte	0x23c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc2
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.4byte	.LASF74
	.byte	0x1
	.byte	0xd1
	.4byte	0x23c
	.4byte	.LLST35
	.uleb128 0x39
	.4byte	.LASF75
	.byte	0x1
	.byte	0xd8
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.4byte	.LVL83
	.4byte	0x1153
	.4byte	0xb3d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL85
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL86
	.4byte	0x117d
	.4byte	0xb7a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL87
	.4byte	0xb9c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL89
	.4byte	0x117d
	.4byte	0xbd9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL92
	.4byte	0xbfb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x26
	.4byte	.LVL93
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL94
	.4byte	0x117d
	.4byte	0xc38
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL95
	.4byte	0x1193
	.uleb128 0x2f
	.4byte	.LVL96
	.4byte	0x1193
	.4byte	0xc55
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL99
	.4byte	0x1193
	.4byte	0xc69
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x1153
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL103
	.4byte	0x117d
	.4byte	0xcaf
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x1193
	.uleb128 0x37
	.4byte	.LVL107
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.4byte	0xcd7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL110
	.4byte	0x117d
	.4byte	0xd14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL111
	.4byte	0x1193
	.4byte	0xd28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL112
	.4byte	0x1193
	.uleb128 0x26
	.4byte	.LVL113
	.4byte	0x1193
	.byte	0
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL74
	.4byte	0x117d
	.4byte	0xd81
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL116
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xdae
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.4byte	.LVL119
	.4byte	0x1172
	.uleb128 0x2b
	.4byte	.LVL120
	.4byte	0x117d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x109
	.4byte	0xf4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7f
	.uleb128 0x3b
	.string	"pc"
	.byte	0x1
	.2byte	0x109
	.4byte	0x42a
	.4byte	.LLST36
	.uleb128 0x3c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x109
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.string	"sec"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3e3
	.4byte	.LLST37
	.uleb128 0x3d
	.string	"pop"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x22b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3e
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.4byte	0xf4
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LVL125
	.4byte	0x430
	.4byte	0xe7b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_common_security_handler
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x26
	.4byte	.LVL127
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL128
	.4byte	0x117d
	.4byte	0xeb3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL131
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL132
	.4byte	0x117d
	.4byte	0xeeb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL133
	.4byte	0x4ef
	.4byte	0xf05
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL135
	.4byte	0x1153
	.4byte	0xf18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.4byte	.LVL136
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL137
	.4byte	0x117d
	.4byte	0xf4f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL139
	.4byte	0x4ef
	.4byte	0xf69
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL140
	.4byte	0x115e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x138
	.4byte	0xf4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd6
	.uleb128 0x3b
	.string	"pc"
	.byte	0x1
	.2byte	0x138
	.4byte	0x42a
	.4byte	.LLST39
	.uleb128 0x3c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x138
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL145
	.4byte	0x1193
	.uleb128 0x2b
	.4byte	.LVL146
	.4byte	0x4ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x163
	.4byte	0xf4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10da
	.uleb128 0x3b
	.string	"pc"
	.byte	0x1
	.2byte	0x163
	.4byte	0x42a
	.4byte	.LLST40
	.uleb128 0x3c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x163
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x163
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3e
	.string	"ret"
	.byte	0x1
	.2byte	0x173
	.4byte	0xf4
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	.LVL151
	.4byte	0x119e
	.4byte	0x103f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL152
	.4byte	0x1172
	.uleb128 0x2f
	.4byte	.LVL153
	.4byte	0x117d
	.4byte	0x1077
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL154
	.4byte	0x430
	.4byte	0x10a5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_version_handler
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x26
	.4byte	.LVL156
	.4byte	0x1172
	.uleb128 0x2b
	.4byte	.LVL157
	.4byte	0x117d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x17d
	.4byte	0xf4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1131
	.uleb128 0x3b
	.string	"pc"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x42a
	.4byte	.LLST42
	.uleb128 0x3c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x17d
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL161
	.4byte	0x1193
	.uleb128 0x2b
	.4byte	.LVL162
	.4byte	0x4ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x1143
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x40
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xa
	.byte	0x21
	.uleb128 0x40
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.byte	0x65
	.uleb128 0x41
	.4byte	.LASF94
	.4byte	.LASF94
	.uleb128 0x40
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0x1c
	.uleb128 0x40
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xc
	.byte	0x57
	.uleb128 0x40
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xc
	.byte	0x6b
	.uleb128 0x40
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.byte	0x57
	.uleb128 0x40
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xb
	.byte	0x5a
	.uleb128 0x40
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xa
	.byte	0x50
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
	.uleb128 0x4
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78-1
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83-1
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116-1
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL119-1
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL69
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL76
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL121
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL84
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125-1
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL142
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"session_id"
.LASF82:
	.string	"malloc"
.LASF50:
	.string	"req_handler"
.LASF83:
	.string	"strcmp"
.LASF78:
	.string	"protocomm_set_version"
.LASF77:
	.string	"protocomm_unset_security"
.LASF5:
	.string	"__uint8_t"
.LASF20:
	.string	"ssize_t"
.LASF32:
	.string	"init"
.LASF10:
	.string	"long long unsigned int"
.LASF85:
	.string	"esp_log_write"
.LASF71:
	.string	"dec_inbuf_len"
.LASF53:
	.string	"next"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long int"
.LASF34:
	.string	"new_transport_session"
.LASF61:
	.string	"inbuf"
.LASF55:
	.string	"eptable_t"
.LASF94:
	.string	"memcpy"
.LASF93:
	.string	"protocomm_common_security_handler"
.LASF72:
	.string	"plaintext_resp"
.LASF17:
	.string	"uint16_t"
.LASF36:
	.string	"security_req_handler"
.LASF47:
	.string	"sle_next"
.LASF45:
	.string	"endpoints"
.LASF74:
	.string	"enc_resp"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/protocomm"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"protocomm_security_pop"
.LASF62:
	.string	"inlen"
.LASF0:
	.string	"unsigned int"
.LASF81:
	.string	"strlen"
.LASF41:
	.string	"protocomm_t"
.LASF14:
	.string	"long unsigned int"
.LASF68:
	.string	"protocomm_add_endpoint"
.LASF89:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"encrypt"
.LASF28:
	.string	"data"
.LASF70:
	.string	"dec_inbuf"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"protocomm_security_pop_t"
.LASF31:
	.string	"protocomm_security"
.LASF69:
	.string	"protocomm_req_handle"
.LASF49:
	.string	"ep_name"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF58:
	.string	"protocomm_add_endpoint_internal"
.LASF79:
	.string	"version"
.LASF13:
	.string	"sizetype"
.LASF84:
	.string	"esp_log_timestamp"
.LASF33:
	.string	"cleanup"
.LASF75:
	.string	"enc_resp_len"
.LASF66:
	.string	"protocomm_new"
.LASF46:
	.string	"priv"
.LASF90:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/common/protocomm.c"
.LASF76:
	.string	"protocomm_set_security"
.LASF18:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"protocomm_delete"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"protocomm_ep"
.LASF92:
	.string	"protocomm_remove_endpoint"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF52:
	.string	"flag"
.LASF65:
	.string	"curelm"
.LASF16:
	.string	"uint8_t"
.LASF80:
	.string	"protocomm_unset_version"
.LASF51:
	.string	"priv_data"
.LASF39:
	.string	"protocomm_security_t"
.LASF40:
	.string	"protocomm_req_handler_t"
.LASF19:
	.string	"uint32_t"
.LASF15:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF57:
	.string	"search_endpoint"
.LASF35:
	.string	"close_transport_session"
.LASF6:
	.string	"__uint16_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF59:
	.string	"protocomm_version_handler"
.LASF87:
	.string	"free"
.LASF38:
	.string	"decrypt"
.LASF63:
	.string	"outbuf"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"esp_err_t"
.LASF86:
	.string	"calloc"
.LASF88:
	.string	"strdup"
.LASF12:
	.string	"_ssize_t"
.LASF56:
	.string	"slh_first"
.LASF43:
	.string	"add_endpoint"
.LASF54:
	.string	"protocomm_ep_t"
.LASF64:
	.string	"outlen"
.LASF73:
	.string	"plaintext_resp_len"
.LASF44:
	.string	"remove_endpoint"
.LASF42:
	.string	"protocomm"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
