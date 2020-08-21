	.file	"protocomm_httpd.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"protocomm_httpd"
.LC5:
	.string	"\033[0;31mE (%d) %s: Failed to close session with ID: %d\033[0m\n"
.LC7:
	.string	"\033[0;31mE (%d) %s: Failed to launch new session with ID: %d\033[0m\n"
.LC9:
	.string	"\033[0;31mE (%d) %s: Content length not found\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: Request content length should be less than 4kb\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: Unable to allocate for request length %d\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: Data handler failed\033[0m\n"
.LC18:
	.string	"\033[0;31mE (%d) %s: HTTP send failed\033[0m\n"
	.section	.text.common_post_handler,"ax",@progbits
	.literal_position
	.literal .LC1, session_id
	.literal .LC2, pc_httpd
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, 4096
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.type	common_post_handler, @function
common_post_handler:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/transports/protocomm_httpd.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 37 0
	movi.n	a3, 0
	.loc 1 42 0
	mov.n	a10, a2
	.loc 1 37 0
	s32i.n	a3, sp, 20
.LVL1:
	.loc 1 42 0
	call8	httpd_req_to_sockfd
.LVL2:
	.loc 1 44 0
	l32r	a4, .LC1
	.loc 1 42 0
	mov.n	a3, a10
.LVL3:
	.loc 1 44 0
	l32i.n	a10, a4, 0
	mov.n	a5, a4
	beq	a3, a10, .L2
	l32r	a6, .LC2
	.loc 1 46 0
	beqi	a10, -1, .L3
	.loc 1 50 0
	l32i.n	a8, a6, 0
	l32i.n	a8, a8, 8
	beqz.n	a8, .L4
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32i.n	a8, a8, 16
	beqz.n	a8, .L4
	.loc 1 51 0 is_stmt 1
	callx8	a8
.LVL4:
	.loc 1 52 0
	beqz.n	a10, .L4
	.loc 1 53 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC4
	l32i.n	a15, a4, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	j	.L47
.L4:
	.loc 1 58 0
	movi.n	a4, -1
	s32i.n	a4, a5, 0
.L3:
	.loc 1 60 0
	l32i.n	a4, a6, 0
	l32i.n	a4, a4, 8
	beqz.n	a4, .L6
	.loc 1 60 0 is_stmt 0 discriminator 1
	l32i.n	a4, a4, 12
	beqz.n	a4, .L6
	.loc 1 61 0 is_stmt 1
	mov.n	a10, a3
	callx8	a4
.LVL6:
	.loc 1 62 0
	beqz.n	a10, .L6
	.loc 1 63 0 discriminator 2
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC4
	l32r	a12, .LC8
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
.L47:
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	j	.L46
.LVL9:
.L6:
	.loc 1 68 0
	s32i.n	a3, a5, 0
.L2:
	.loc 1 72 0
	l32i	a10, a2, 524
	bnez.n	a10, .L7
	.loc 1 73 0 discriminator 2
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC10
	j	.L45
.L7:
	.loc 1 76 0
	l32r	a3, .LC11
.LVL11:
	bgeu	a3, a10, .L8
	.loc 1 77 0 discriminator 2
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC4
	l32r	a12, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
.L45:
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
.L46:
	.loc 1 78 0 discriminator 2
	movi.n	a2, -1
.LVL14:
	.loc 1 79 0 discriminator 2
	j	.L15
.LVL15:
.L8:
	.loc 1 82 0
	call8	malloc
.LVL16:
	mov.n	a4, a10
.LVL17:
	.loc 1 83 0
	beqz.n	a10, .L9
	movi.n	a3, 0
	j	.L10
.L9:
	.loc 1 84 0 discriminator 2
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC4
	l32i	a15, a2, 524
	l32r	a12, .LC15
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 85 0 discriminator 2
	movi	a2, 0x101
.LVL20:
	.loc 1 86 0 discriminator 2
	j	.L15
.LVL21:
.L12:
	.loc 1 91 0
	sub	a12, a12, a3
	add.n	a11, a4, a3
	mov.n	a10, a2
	call8	httpd_req_recv
.LVL22:
	.loc 1 92 0
	bltz	a10, .L16
	.loc 1 96 0
	add.n	a3, a3, a10
.LVL23:
.L10:
	.loc 1 90 0
	l32i	a12, a2, 524
	bltu	a3, a12, .L12
.LVL24:
	.loc 1 102 0
	addi	a6, sp, 16
	mov.n	a14, a3
	l32r	a3, .LC2
.LVL25:
	s32i.n	a6, sp, 0
	l32i.n	a12, a5, 0
	l32i.n	a10, a3, 0
	addi	a15, sp, 20
	mov.n	a13, a4
	addi.n	a11, a2, 9
.LVL26:
	call8	protocomm_req_handle
.LVL27:
	.loc 1 105 0
	beqz.n	a10, .L13
	.loc 1 106 0 discriminator 2
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC17
	j	.L48
.LVL29:
.L13:
	.loc 1 111 0
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 20
	mov.n	a10, a2
.LVL30:
	call8	httpd_resp_send
.LVL31:
	mov.n	a2, a10
.LVL32:
	.loc 1 112 0
	beqz.n	a10, .L11
	.loc 1 113 0 discriminator 2
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC4
	l32r	a12, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
.LVL34:
.L48:
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	j	.L16
.LVL36:
.L15:
	.loc 1 122 0
	l32i.n	a10, sp, 20
	beqz.n	a10, .L26
	.loc 1 123 0
	call8	free
.LVL37:
	.loc 1 125 0
	retw.n
.LVL38:
.L16:
	.loc 1 93 0
	movi.n	a2, -1
.L11:
.LVL39:
	.loc 1 120 0
	mov.n	a10, a4
	call8	free
.LVL40:
	j	.L15
.LVL41:
.L26:
	.loc 1 126 0
	retw.n
.LFE18:
	.size	common_post_handler, .-common_post_handler
	.section	.rodata.str1.1
.LC22:
	.string	"\033[0;31mE (%d) %s: Malloc failed for ep uri\033[0m\n"
.LC24:
	.string	"/%s"
.LC26:
	.string	"\033[0;31mE (%d) %s: Uri handler de-register failed: %s\033[0m\n"
	.section	.text.protocomm_httpd_remove_endpoint,"ax",@progbits
	.literal_position
	.literal .LC20, pc_httpd
	.literal .LC21, .LC3
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	protocomm_httpd_remove_endpoint, @function
protocomm_httpd_remove_endpoint:
.LFB20:
	.loc 1 168 0
.LVL42:
	entry	sp, 32
.LCFI1:
	.loc 1 169 0
	l32r	a4, .LC20
	.loc 1 170 0
	movi	a10, 0x103
	.loc 1 169 0
	l32i.n	a3, a4, 0
	beqz.n	a3, .L50
.LVL43:
.LBB4:
.LBB5:
	.loc 1 176 0
	mov.n	a10, a2
	call8	strlen
.LVL44:
	addi.n	a11, a10, 2
	movi.n	a10, 1
	call8	calloc
.LVL45:
	mov.n	a3, a10
.LVL46:
	.loc 1 177 0
	bnez.n	a10, .L51
	.loc 1 178 0
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC21
	l32r	a12, .LC23
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	.loc 1 179 0
	movi	a10, 0x101
	j	.L50
.L51:
	.loc 1 181 0
	l32r	a11, .LC25
	mov.n	a12, a2
	call8	sprintf
.LVL49:
	.loc 1 185 0
	l32i.n	a2, a4, 0
.LVL50:
	.loc 1 186 0
	movi.n	a12, 3
	l32i.n	a2, a2, 20
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	httpd_unregister_uri_handler
.LVL51:
	mov.n	a2, a10
.LVL52:
	beqz.n	a10, .L52
	.loc 1 187 0
	call8	esp_log_timestamp
.LVL53:
	mov.n	a4, a10
	mov.n	a10, a2
	call8	esp_err_to_name
.LVL54:
	l32r	a11, .LC21
	l32r	a12, .LC27
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 188 0
	mov.n	a10, a3
	call8	free
.LVL56:
	.loc 1 189 0
	movi.n	a10, -1
	j	.L50
.L52:
	.loc 1 192 0
	mov.n	a10, a3
	call8	free
.LVL57:
	.loc 1 193 0
	mov.n	a10, a2
.LVL58:
.L50:
.LBE5:
.LBE4:
	.loc 1 194 0
	mov.n	a2, a10
	retw.n
.LFE20:
	.size	protocomm_httpd_remove_endpoint, .-protocomm_httpd_remove_endpoint
	.section	.rodata.str1.1
.LC33:
	.string	"\033[0;31mE (%d) %s: Uri handler register failed: %s\033[0m\n"
	.section	.text.protocomm_httpd_add_endpoint,"ax",@progbits
	.literal_position
	.literal .LC28, pc_httpd
	.literal .LC29, .LC3
	.literal .LC30, .LC22
	.literal .LC31, .LC24
	.literal .LC32, common_post_handler
	.literal .LC34, .LC33
	.align	4
	.type	protocomm_httpd_add_endpoint, @function
protocomm_httpd_add_endpoint:
.LFB19:
	.loc 1 131 0
.LVL59:
	entry	sp, 48
.LCFI2:
	.loc 1 132 0
	l32r	a4, .LC28
.LVL60:
	.loc 1 133 0
	movi	a10, 0x103
	.loc 1 132 0
	l32i.n	a3, a4, 0
.LVL61:
	beqz.n	a3, .L56
.LVL62:
.LBB8:
.LBB9:
	.loc 1 139 0
	mov.n	a10, a2
	call8	strlen
.LVL63:
	addi.n	a11, a10, 2
	movi.n	a10, 1
	call8	calloc
.LVL64:
	mov.n	a3, a10
.LVL65:
	.loc 1 140 0
	bnez.n	a10, .L57
	.loc 1 141 0
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC29
	l32r	a12, .LC30
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	.loc 1 142 0
	movi	a10, 0x101
	j	.L56
.L57:
	.loc 1 146 0
	l32r	a11, .LC31
	mov.n	a12, a2
	.loc 1 147 0
	movi.n	a2, 3
.LVL68:
	.loc 1 146 0
	call8	sprintf
.LVL69:
	.loc 1 147 0
	s32i.n	a2, sp, 4
	l32r	a2, .LC32
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 8
	movi.n	a2, 0
	s32i.n	a2, sp, 12
.LVL70:
	.loc 1 156 0
	l32i.n	a2, a4, 0
	.loc 1 157 0
	mov.n	a11, sp
	l32i.n	a2, a2, 20
	l32i.n	a10, a2, 0
	call8	httpd_register_uri_handler
.LVL71:
	mov.n	a2, a10
.LVL72:
	beqz.n	a10, .L59
	.loc 1 158 0
	call8	esp_log_timestamp
.LVL73:
	mov.n	a4, a10
	mov.n	a10, a2
	call8	esp_err_to_name
.LVL74:
	l32r	a11, .LC29
	l32r	a12, .LC34
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a4
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
	.loc 1 159 0
	mov.n	a10, a3
	call8	free
.LVL76:
	.loc 1 160 0
	movi.n	a10, -1
	j	.L56
.L59:
	.loc 1 163 0
	mov.n	a10, a3
	call8	free
.LVL77:
	.loc 1 164 0
	mov.n	a10, a2
.LVL78:
.L56:
.LBE9:
.LBE8:
	.loc 1 165 0
	mov.n	a2, a10
	retw.n
.LFE19:
	.size	protocomm_httpd_add_endpoint, .-protocomm_httpd_add_endpoint
	.section	.rodata.str1.1
.LC37:
	.string	"\033[0;31mE (%d) %s: HTTP server already running for this protocomm instance\033[0m\n"
.LC39:
	.string	"\033[0;31mE (%d) %s: HTTP server started for another protocomm instance\033[0m\n"
.LC42:
	.string	"\033[0;31mE (%d) %s: Malloc failed for HTTP server handle\033[0m\n"
.LC45:
	.string	"\033[0;31mE (%d) %s: Failed to start http server: %s\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	5
	.word	4096
	.short	80
	.short	-32768
	.short	7
	.short	8
	.short	8
	.short	5
	.byte	0
	.zero	1
	.short	5
	.short	5
	.zero	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.protocomm_httpd_start,"ax",@progbits
	.literal_position
	.literal .LC35, pc_httpd
	.literal .LC36, .LC3
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC41, pc_ext_httpd_handle_provided
	.literal .LC43, .LC42
	.literal .LC44, .LC0
	.literal .LC46, .LC45
	.literal .LC47, protocomm_httpd_add_endpoint
	.literal .LC48, protocomm_httpd_remove_endpoint
	.align	4
	.global	protocomm_httpd_start
	.type	protocomm_httpd_start, @function
protocomm_httpd_start:
.LFB21:
	.loc 1 197 0
.LVL79:
	entry	sp, 96
.LCFI3:
	.loc 1 198 0
	movi.n	a4, 1
	movi.n	a8, 0
	moveqz	a8, a4, a2
	extui	a8, a8, 0, 8
	bnez.n	a8, .L71
	moveqz	a8, a4, a3
	bnez.n	a8, .L71
	.loc 1 202 0
	l32r	a5, .LC35
	l32i.n	a6, a5, 0
	beqz.n	a6, .L64
	l32r	a3, .LC36
.LVL80:
	.loc 1 203 0
	bne	a2, a6, .L65
	.loc 1 204 0 discriminator 2
	call8	esp_log_timestamp
.LVL81:
	l32r	a12, .LC38
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a10, a4
	mov.n	a11, a3
	call8	esp_log_write
.LVL82:
	.loc 1 205 0 discriminator 2
	movi	a10, 0x103
	j	.L63
.L65:
	.loc 1 207 0 discriminator 2
	call8	esp_log_timestamp
.LVL83:
	l32r	a12, .LC40
	mov.n	a13, a10
	mov.n	a14, a3
	mov.n	a10, a4
	mov.n	a11, a3
	call8	esp_log_write
.LVL84:
	.loc 1 208 0 discriminator 2
	movi	a10, 0x106
	j	.L63
.LVL85:
.L64:
	.loc 1 211 0
	l8ui	a6, a3, 0
	beqz.n	a6, .L66
	.loc 1 212 0
	l32i.n	a3, a3, 4
.LVL86:
	.loc 1 199 0
	movi	a10, 0x102
	.loc 1 212 0
	beqz.n	a3, .L63
	.loc 1 213 0
	s32i.n	a3, a2, 20
	.loc 1 214 0
	l32r	a3, .LC41
	s8i	a4, a3, 0
	j	.L67
.LVL87:
.L66:
.LBB10:
	.loc 1 220 0
	movi.n	a11, 4
	mov.n	a10, a4
	call8	calloc
.LVL88:
	s32i.n	a10, a2, 20
	mov.n	a6, a10
	.loc 1 221 0
	bnez.n	a10, .L68
	.loc 1 222 0 discriminator 2
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC36
	l32r	a12, .LC43
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a4
	call8	esp_log_write
.LVL90:
	.loc 1 223 0 discriminator 2
	movi	a10, 0x101
	j	.L63
.L68:
	.loc 1 227 0
	l32r	a11, .LC44
	movi.n	a12, 0x34
	mov.n	a10, sp
	call8	memcpy
.LVL91:
	.loc 1 228 0
	l16ui	a8, a3, 4
	.loc 1 235 0
	mov.n	a11, sp
	.loc 1 228 0
	s16i	a8, sp, 8
	.loc 1 229 0
	l32i.n	a8, a3, 8
	.loc 1 230 0
	l32i.n	a3, a3, 12
.LVL92:
	.loc 1 235 0
	mov.n	a10, a6
	.loc 1 230 0
	s32i.n	a3, sp, 0
	.loc 1 229 0
	s32i.n	a8, sp, 4
	.loc 1 231 0
	s8i	a4, sp, 20
	.loc 1 232 0
	s16i	a4, sp, 12
	.loc 1 235 0
	call8	httpd_start
.LVL93:
	mov.n	a3, a10
.LVL94:
	beqz.n	a10, .L67
	.loc 1 236 0 discriminator 2
	call8	esp_log_timestamp
.LVL95:
	mov.n	a5, a10
	mov.n	a10, a3
	call8	esp_err_to_name
.LVL96:
	l32r	a11, .LC36
	l32r	a12, .LC46
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a5
	mov.n	a10, a4
	call8	esp_log_write
.LVL97:
	.loc 1 237 0 discriminator 2
	l32i.n	a10, a2, 20
	call8	free
.LVL98:
	.loc 1 238 0 discriminator 2
	mov.n	a10, a3
	j	.L63
.LVL99:
.L67:
.LBE10:
	.loc 1 241 0
	l32r	a3, .LC47
	.loc 1 243 0
	s32i.n	a2, a5, 0
	.loc 1 241 0
	s32i.n	a3, a2, 0
	.loc 1 242 0
	l32r	a3, .LC48
	.loc 1 244 0
	movi.n	a10, 0
	.loc 1 242 0
	s32i.n	a3, a2, 4
	.loc 1 244 0
	j	.L63
.LVL100:
.L71:
	.loc 1 199 0
	movi	a10, 0x102
.LVL101:
.L63:
	.loc 1 245 0
	mov.n	a2, a10
.LVL102:
	retw.n
.LFE21:
	.size	protocomm_httpd_start, .-protocomm_httpd_start
	.section	.text.protocomm_httpd_stop,"ax",@progbits
	.literal_position
	.literal .LC49, pc_httpd
	.literal .LC50, pc_ext_httpd_handle_provided
	.align	4
	.global	protocomm_httpd_stop
	.type	protocomm_httpd_stop, @function
protocomm_httpd_stop:
.LFB22:
	.loc 1 248 0
.LVL103:
	entry	sp, 32
.LCFI4:
	.loc 1 248 0
	mov.n	a8, a2
	.loc 1 261 0
	movi	a2, 0x102
.LVL104:
	.loc 1 249 0
	beqz.n	a8, .L78
	.loc 1 249 0 discriminator 1
	l32r	a3, .LC49
	l32i.n	a9, a3, 0
	bne	a8, a9, .L78
	.loc 1 250 0
	l32r	a2, .LC50
	l8ui	a9, a2, 0
	bnez.n	a9, .L79
.LBB11:
	.loc 1 251 0
	l32i.n	a2, a8, 20
.LVL105:
	.loc 1 252 0
	l32i.n	a10, a2, 0
	call8	httpd_stop
.LVL106:
	.loc 1 253 0
	mov.n	a10, a2
	call8	free
.LVL107:
.LBE11:
	j	.L80
.LVL108:
.L79:
	.loc 1 255 0
	movi.n	a8, 0
.LVL109:
	s8i	a8, a2, 0
.L80:
	.loc 1 257 0
	l32i.n	a8, a3, 0
	movi.n	a2, 0
	s32i.n	a2, a8, 20
	.loc 1 258 0
	s32i.n	a2, a3, 0
.L78:
	.loc 1 262 0
	retw.n
.LFE22:
	.size	protocomm_httpd_stop, .-protocomm_httpd_stop
	.section	.data.session_id,"aw",@progbits
	.align	4
	.type	session_id, @object
	.size	session_id, 4
session_id:
	.word	-1
	.section	.bss.pc_ext_httpd_handle_provided,"aw",@nobits
	.type	pc_ext_httpd_handle_provided, @object
	.size	pc_ext_httpd_handle_provided, 1
pc_ext_httpd_handle_provided:
	.zero	1
	.section	.bss.pc_httpd,"aw",@nobits
	.align	4
	.type	pc_httpd, @object
	.size	pc_httpd, 4
pc_httpd:
	.zero	4
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_http_server/include/esp_http_server.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/common/protocomm_priv.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/include/transports/protocomm_httpd.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/port/include/http_parser.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1087
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xc
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x100
	.uleb128 0x8
	.4byte	0x10b
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xcb
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x70
	.4byte	0x37
	.uleb128 0x7
	.4byte	0xc3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x1f
	.4byte	0x169
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x4
	.4byte	0x37
	.byte	0x12
	.byte	0x88
	.4byte	0x240
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x4b
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x51
	.4byte	0x169
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0x57
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x63
	.4byte	0x26c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x272
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x286
	.uleb128 0x9
	.4byte	0x240
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x9
	.byte	0x6e
	.4byte	0x291
	.uleb128 0x6
	.byte	0x4
	.4byte	0x297
	.uleb128 0x8
	.4byte	0x2a7
	.uleb128 0x9
	.4byte	0x240
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x34
	.byte	0x9
	.byte	0x77
	.4byte	0x380
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x9
	.byte	0x78
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x9
	.byte	0x79
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x9
	.byte	0x7e
	.4byte	0xd9
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x9
	.byte	0x84
	.4byte	0xd9
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.byte	0x86
	.4byte	0xd9
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x9
	.byte	0x87
	.4byte	0xd9
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x9
	.byte	0x88
	.4byte	0xd9
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x9
	.byte	0x89
	.4byte	0xd9
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x9
	.byte	0x8a
	.4byte	0x121
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x9
	.byte	0x8b
	.4byte	0xd9
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x9
	.byte	0x8c
	.4byte	0xd9
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x9
	.byte	0x98
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x9
	.byte	0x9d
	.4byte	0x256
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x9
	.byte	0xa5
	.4byte	0xad
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x9
	.byte	0xaa
	.4byte	0x256
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x9
	.byte	0xb7
	.4byte	0x261
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x9
	.byte	0xc5
	.4byte	0x286
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0xc6
	.4byte	0x2a7
	.uleb128 0x10
	.4byte	.LASF88
	.2byte	0x224
	.byte	0x9
	.2byte	0x120
	.4byte	0x415
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x121
	.4byte	0x240
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x122
	.4byte	0x25
	.byte	0x4
	.uleb128 0x12
	.string	"uri"
	.byte	0x9
	.2byte	0x123
	.4byte	0x426
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x124
	.4byte	0x2c
	.2byte	0x20c
	.uleb128 0x14
	.string	"aux"
	.byte	0x9
	.2byte	0x125
	.4byte	0xad
	.2byte	0x210
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x12a
	.4byte	0xad
	.2byte	0x214
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x13b
	.4byte	0xad
	.2byte	0x218
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x146
	.4byte	0x256
	.2byte	0x21c
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x152
	.4byte	0x121
	.2byte	0x220
	.byte	0
	.uleb128 0x15
	.4byte	0xbc
	.4byte	0x426
	.uleb128 0x16
	.4byte	0xa6
	.2byte	0x200
	.byte	0
	.uleb128 0x7
	.4byte	0x415
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x153
	.4byte	0x38b
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x10
	.byte	0x9
	.2byte	0x158
	.4byte	0x479
	.uleb128 0x12
	.string	"uri"
	.byte	0x9
	.2byte	0x159
	.4byte	0xc3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x15a
	.4byte	0x24b
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x160
	.4byte	0x48e
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x165
	.4byte	0xad
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x488
	.uleb128 0x9
	.4byte	0x488
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x479
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x166
	.4byte	0x437
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa
	.byte	0x1a
	.4byte	0x4c5
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0xa
	.byte	0x1e
	.4byte	0x4c5
	.byte	0
	.uleb128 0x19
	.string	"len"
	.byte	0xa
	.byte	0x23
	.4byte	0xd9
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cb
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xa
	.byte	0x24
	.4byte	0x4a0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x20
	.byte	0xa
	.byte	0x2f
	.4byte	0x548
	.uleb128 0x19
	.string	"ver"
	.byte	0xa
	.byte	0x33
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0xa
	.byte	0x39
	.4byte	0x553
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0xa
	.byte	0x3e
	.4byte	0x553
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0xa
	.byte	0x43
	.4byte	0x568
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xa
	.byte	0x48
	.4byte	0x568
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xa
	.byte	0x4e
	.4byte	0x5b8
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0xa
	.byte	0x57
	.4byte	0x5e1
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0xa
	.byte	0x5e
	.4byte	0x5e1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.4byte	0x116
	.4byte	0x553
	.uleb128 0x1b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x548
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x568
	.uleb128 0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x559
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x59b
	.uleb128 0x9
	.4byte	0x59b
	.uleb128 0x9
	.4byte	0xef
	.uleb128 0x9
	.4byte	0x4c5
	.uleb128 0x9
	.4byte	0x10b
	.uleb128 0x9
	.4byte	0x5a6
	.uleb128 0x9
	.4byte	0x5b2
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a1
	.uleb128 0x7
	.4byte	0x4d0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56e
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x5e1
	.uleb128 0x9
	.4byte	0xef
	.uleb128 0x9
	.4byte	0x4c5
	.uleb128 0x9
	.4byte	0x10b
	.uleb128 0x9
	.4byte	0x5ac
	.uleb128 0x9
	.4byte	0x5b2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5be
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xa
	.byte	0x61
	.4byte	0x4db
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xb
	.byte	0x1b
	.4byte	0x5fd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x603
	.uleb128 0xd
	.4byte	0x116
	.4byte	0x62b
	.uleb128 0x9
	.4byte	0xef
	.uleb128 0x9
	.4byte	0x4c5
	.uleb128 0x9
	.4byte	0x10b
	.uleb128 0x9
	.4byte	0x5a6
	.uleb128 0x9
	.4byte	0x5b2
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xb
	.byte	0x2b
	.4byte	0x636
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x1c
	.byte	0xc
	.byte	0x37
	.4byte	0x697
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0xc
	.byte	0x3a
	.4byte	0x7bb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0xc
	.byte	0x3e
	.4byte	0x7d0
	.byte	0x4
	.uleb128 0x19
	.string	"sec"
	.byte	0xc
	.byte	0x42
	.4byte	0x7d6
	.byte	0x8
	.uleb128 0x19
	.string	"pop"
	.byte	0xc
	.byte	0x45
	.4byte	0x7e1
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0xc
	.byte	0x48
	.4byte	0x789
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0xc
	.byte	0x4b
	.4byte	0xad
	.byte	0x14
	.uleb128 0x19
	.string	"ver"
	.byte	0xc
	.byte	0x4e
	.4byte	0xc3
	.byte	0x18
	.byte	0
	.uleb128 0x1c
	.byte	0xc
	.byte	0xd
	.byte	0x20
	.4byte	0x6c4
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xd
	.byte	0x22
	.4byte	0xd9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0xd
	.byte	0x28
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0xd
	.byte	0x29
	.4byte	0x37
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xd
	.byte	0x2a
	.4byte	0x697
	.uleb128 0x1d
	.byte	0xc
	.byte	0xd
	.byte	0x2e
	.4byte	0x6ee
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0xd
	.byte	0x31
	.4byte	0xad
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0xd
	.byte	0x35
	.4byte	0x6c4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xd
	.byte	0x36
	.4byte	0x6cf
	.uleb128 0x1c
	.byte	0x10
	.byte	0xd
	.byte	0x3b
	.4byte	0x71a
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0xd
	.byte	0x40
	.4byte	0x121
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0xd
	.byte	0x42
	.4byte	0x6ee
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xd
	.byte	0x43
	.4byte	0x6f9
	.uleb128 0x1c
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.4byte	0x73a
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0xc
	.byte	0x2d
	.4byte	0x783
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x14
	.byte	0xc
	.byte	0x22
	.4byte	0x783
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0xc
	.byte	0x23
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0xc
	.byte	0x24
	.4byte	0x5f2
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0xc
	.byte	0x28
	.4byte	0xad
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0xc
	.byte	0x2a
	.4byte	0xef
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0xc
	.byte	0x2d
	.4byte	0x725
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73a
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x4
	.byte	0xc
	.byte	0x48
	.4byte	0x7a2
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0xc
	.byte	0x48
	.4byte	0x783
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x7bb
	.uleb128 0x9
	.4byte	0xc3
	.uleb128 0x9
	.4byte	0x5f2
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a2
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x7d0
	.uleb128 0x9
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7dc
	.uleb128 0x7
	.4byte	0x5e7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa7
	.4byte	0x116
	.byte	0x1
	.4byte	0x824
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0xa7
	.4byte	0xc3
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0xb0
	.4byte	0xb6
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xb8
	.4byte	0x116
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0xb9
	.4byte	0x824
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x240
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x80
	.4byte	0x116
	.byte	0x1
	.4byte	0x888
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0x80
	.4byte	0xc3
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.byte	0x81
	.4byte	0x5f2
	.uleb128 0x20
	.4byte	.LASF129
	.byte	0x1
	.byte	0x82
	.4byte	0xad
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0x8b
	.4byte	0xb6
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x93
	.4byte	0x494
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0x9b
	.4byte	0x116
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9c
	.4byte	0x824
	.byte	0
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0x1
	.byte	0x22
	.4byte	0x116
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa66
	.uleb128 0x24
	.string	"req"
	.byte	0x1
	.byte	0x22
	.4byte	0x488
	.4byte	.LLST0
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x24
	.4byte	0x116
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x25
	.4byte	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	.LASF140
	.byte	0x1
	.byte	0x26
	.4byte	0xb6
	.4byte	.LLST2
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.byte	0x27
	.4byte	0xc3
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x1
	.byte	0x28
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x28
	.string	"out"
	.byte	0x1
	.byte	0x76
	.uleb128 0x27
	.4byte	.LASF143
	.byte	0x1
	.byte	0x59
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xfcb
	.4byte	0x932
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xfd7
	.uleb128 0x2c
	.4byte	.LVL6
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x94e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL8
	.4byte	0xfe2
	.4byte	0x96a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0xfd7
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0xfe2
	.4byte	0x98f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL16
	.4byte	0xfed
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0xfe2
	.4byte	0x9cf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0xff8
	.4byte	0x9ec
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0x1004
	.4byte	0xa13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0x100f
	.4byte	0xa30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL35
	.4byte	0xfe2
	.4byte	0xa4c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL37
	.4byte	0x101b
	.uleb128 0x2d
	.4byte	.LVL40
	.4byte	0x101b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x7e7
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd3
	.uleb128 0x2f
	.4byte	0x7f7
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	0x802
	.uleb128 0x30
	.4byte	0x80d
	.uleb128 0x30
	.4byte	0x818
	.uleb128 0x31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x2f
	.4byte	0x7f7
	.4byte	.LLST7
	.uleb128 0x31
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x32
	.4byte	0x802
	.4byte	.LLST8
	.uleb128 0x32
	.4byte	0x80d
	.4byte	.LLST9
	.uleb128 0x32
	.4byte	0x818
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LVL44
	.4byte	0x1026
	.4byte	0xadb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0x1031
	.4byte	0xaee
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL47
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL48
	.4byte	0xfe2
	.4byte	0xb25
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0x103c
	.4byte	0xb42
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL51
	.4byte	0x1047
	.4byte	0xb5b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL54
	.4byte	0x1053
	.4byte	0xb78
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0xfe2
	.4byte	0xbac
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL56
	.4byte	0x101b
	.4byte	0xbc0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL57
	.4byte	0x101b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x82a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6d
	.uleb128 0x2f
	.4byte	0x83a
	.4byte	.LLST11
	.uleb128 0x2f
	.4byte	0x845
	.4byte	.LLST12
	.uleb128 0x2f
	.4byte	0x850
	.4byte	.LLST13
	.uleb128 0x30
	.4byte	0x85b
	.uleb128 0x30
	.4byte	0x866
	.uleb128 0x30
	.4byte	0x871
	.uleb128 0x30
	.4byte	0x87c
	.uleb128 0x31
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2f
	.4byte	0x845
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	0x850
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	0x83a
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x32
	.4byte	0x85b
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	0x866
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	0x871
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	0x87c
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	.LVL63
	.4byte	0x1026
	.4byte	0xc79
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL64
	.4byte	0x1031
	.4byte	0xc8c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL66
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL67
	.4byte	0xfe2
	.4byte	0xcc3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL69
	.4byte	0x103c
	.4byte	0xce1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x29
	.4byte	.LVL71
	.4byte	0x105e
	.4byte	0xcf5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL73
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL74
	.4byte	0x1053
	.4byte	0xd12
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0xfe2
	.4byte	0xd46
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL76
	.4byte	0x101b
	.4byte	0xd5a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0x101b
	.uleb128 0x2a
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
	.4byte	.LASF145
	.byte	0x1
	.byte	0xc4
	.4byte	0x116
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1b
	.uleb128 0x24
	.string	"pc"
	.byte	0x1
	.byte	0xc4
	.4byte	0xf1b
	.4byte	.LLST20
	.uleb128 0x35
	.4byte	.LASF121
	.byte	0x1
	.byte	0xc4
	.4byte	0xf21
	.4byte	.LLST21
	.uleb128 0x36
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xeba
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x1
	.byte	0xe3
	.4byte	0x380
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0xea
	.4byte	0x116
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LVL88
	.4byte	0x1031
	.4byte	0xde7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL89
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL90
	.4byte	0xfe2
	.4byte	0xe1f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL91
	.4byte	0x106a
	.4byte	0xe43
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.uleb128 0x29
	.4byte	.LVL93
	.4byte	0x1073
	.4byte	0xe5e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL95
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL96
	.4byte	0x1053
	.4byte	0xe7b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL97
	.4byte	0xfe2
	.4byte	0xeb0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL98
	.4byte	0x101b
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL81
	.4byte	0xfd7
	.uleb128 0x29
	.4byte	.LVL82
	.4byte	0xfe2
	.4byte	0xeec
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL83
	.4byte	0xfd7
	.uleb128 0x2d
	.4byte	.LVL84
	.4byte	0xfe2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf27
	.uleb128 0x7
	.4byte	0x71a
	.uleb128 0x34
	.4byte	.LASF146
	.byte	0x1
	.byte	0xf7
	.4byte	0x116
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf86
	.uleb128 0x24
	.string	"pc"
	.byte	0x1
	.byte	0xf7
	.4byte	0xf1b
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x1
	.byte	0xfb
	.4byte	0x824
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LVL106
	.4byte	0x107e
	.uleb128 0x2d
	.4byte	.LVL107
	.4byte	0x101b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x133
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x1
	.byte	0x1c
	.4byte	0xf1b
	.uleb128 0x5
	.byte	0x3
	.4byte	pc_httpd
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x1
	.byte	0x1d
	.4byte	0x121
	.uleb128 0x5
	.byte	0x3
	.4byte	pc_ext_httpd_handle_provided
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.byte	0x1e
	.4byte	0xef
	.uleb128 0x5
	.byte	0x3
	.4byte	session_id
	.uleb128 0x38
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x263
	.uleb128 0x39
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xe
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xe
	.byte	0x6b
	.uleb128 0x39
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xf
	.byte	0x65
	.uleb128 0x38
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x283
	.uleb128 0x39
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xb
	.byte	0x90
	.uleb128 0x38
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x31c
	.uleb128 0x39
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xf
	.byte	0x5a
	.uleb128 0x39
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x10
	.byte	0x21
	.uleb128 0x39
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xf
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x11
	.byte	0xde
	.uleb128 0x38
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x1ab
	.uleb128 0x39
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x7
	.byte	0x3a
	.uleb128 0x38
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x19c
	.uleb128 0x3a
	.4byte	.LASF172
	.4byte	.LASF172
	.uleb128 0x39
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x9
	.byte	0xee
	.uleb128 0x38
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x10b
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x17
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL42
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x8
	.byte	0x3
	.4byte	pc_httpd
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL51-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69-1
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x8
	.byte	0x3
	.4byte	pc_httpd
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL71-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106-1
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL109
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"session_id"
.LASF154:
	.string	"malloc"
.LASF42:
	.string	"HTTP_MOVE"
.LASF128:
	.string	"req_handler"
.LASF71:
	.string	"server_port"
.LASF3:
	.string	"size_t"
.LASF148:
	.string	"pc_httpd"
.LASF4:
	.string	"__uint8_t"
.LASF21:
	.string	"ssize_t"
.LASF163:
	.string	"esp_err_to_name"
.LASF36:
	.string	"HTTP_CONNECT"
.LASF155:
	.string	"httpd_req_recv"
.LASF52:
	.string	"HTTP_MKACTIVITY"
.LASF134:
	.string	"ep_uri"
.LASF32:
	.string	"HTTP_GET"
.LASF137:
	.string	"protocomm_httpd_add_endpoint"
.LASF11:
	.string	"long long unsigned int"
.LASF61:
	.string	"HTTP_MKCALENDAR"
.LASF135:
	.string	"server"
.LASF158:
	.string	"free"
.LASF80:
	.string	"global_user_ctx"
.LASF84:
	.string	"open_fn"
.LASF142:
	.string	"cur_session_id"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF82:
	.string	"global_transport_ctx"
.LASF62:
	.string	"HTTP_LINK"
.LASF43:
	.string	"HTTP_PROPFIND"
.LASF73:
	.string	"max_open_sockets"
.LASF91:
	.string	"content_len"
.LASF12:
	.string	"long int"
.LASF106:
	.string	"new_transport_session"
.LASF149:
	.string	"pc_ext_httpd_handle_provided"
.LASF78:
	.string	"recv_wait_timeout"
.LASF153:
	.string	"esp_log_write"
.LASF132:
	.string	"eptable_t"
.LASF140:
	.string	"req_body"
.LASF58:
	.string	"HTTP_UNSUBSCRIBE"
.LASF18:
	.string	"uint16_t"
.LASF161:
	.string	"sprintf"
.LASF51:
	.string	"HTTP_REPORT"
.LASF108:
	.string	"security_req_handler"
.LASF47:
	.string	"HTTP_BIND"
.LASF125:
	.string	"sle_next"
.LASF117:
	.string	"endpoints"
.LASF169:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/protocomm"
.LASF77:
	.string	"lru_purge_enable"
.LASF9:
	.string	"__uint32_t"
.LASF86:
	.string	"httpd_config_t"
.LASF100:
	.string	"protocomm_security_pop"
.LASF119:
	.string	"port"
.LASF99:
	.string	"httpd_uri_t"
.LASF48:
	.string	"HTTP_REBIND"
.LASF34:
	.string	"HTTP_POST"
.LASF59:
	.string	"HTTP_PATCH"
.LASF0:
	.string	"unsigned int"
.LASF64:
	.string	"httpd_handle_t"
.LASF76:
	.string	"backlog_conn"
.LASF75:
	.string	"max_resp_headers"
.LASF113:
	.string	"protocomm_t"
.LASF15:
	.string	"long unsigned int"
.LASF87:
	.string	"httpd_config"
.LASF39:
	.string	"HTTP_COPY"
.LASF45:
	.string	"HTTP_SEARCH"
.LASF167:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF109:
	.string	"encrypt"
.LASF97:
	.string	"httpd_uri"
.LASF101:
	.string	"data"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"HTTP_TRACE"
.LASF102:
	.string	"protocomm_security_pop_t"
.LASF55:
	.string	"HTTP_MSEARCH"
.LASF53:
	.string	"HTTP_CHECKOUT"
.LASF159:
	.string	"strlen"
.LASF138:
	.string	"config_handler"
.LASF103:
	.string	"protocomm_security"
.LASF170:
	.string	"http_method"
.LASF156:
	.string	"protocomm_req_handle"
.LASF6:
	.string	"short int"
.LASF127:
	.string	"ep_name"
.LASF89:
	.string	"handle"
.LASF124:
	.string	"protocomm_httpd_config_t"
.LASF98:
	.string	"handler"
.LASF28:
	.string	"ESP_LOG_INFO"
.LASF171:
	.string	"common_post_handler"
.LASF69:
	.string	"task_priority"
.LASF14:
	.string	"sizetype"
.LASF60:
	.string	"HTTP_PURGE"
.LASF120:
	.string	"protocomm_http_server_config_t"
.LASF63:
	.string	"HTTP_UNLINK"
.LASF105:
	.string	"cleanup"
.LASF44:
	.string	"HTTP_PROPPATCH"
.LASF74:
	.string	"max_uri_handlers"
.LASF104:
	.string	"init"
.LASF118:
	.string	"priv"
.LASF144:
	.string	"server_config"
.LASF72:
	.string	"ctrl_port"
.LASF88:
	.string	"httpd_req"
.LASF33:
	.string	"HTTP_HEAD"
.LASF90:
	.string	"method"
.LASF107:
	.string	"close_transport_session"
.LASF37:
	.string	"HTTP_OPTIONS"
.LASF40:
	.string	"HTTP_LOCK"
.LASF49:
	.string	"HTTP_UNBIND"
.LASF93:
	.string	"sess_ctx"
.LASF23:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF145:
	.string	"protocomm_httpd_start"
.LASF65:
	.string	"httpd_method_t"
.LASF116:
	.string	"remove_endpoint"
.LASF35:
	.string	"HTTP_PUT"
.LASF126:
	.string	"protocomm_ep"
.LASF152:
	.string	"esp_log_timestamp"
.LASF26:
	.string	"ESP_LOG_ERROR"
.LASF130:
	.string	"flag"
.LASF92:
	.string	"user_ctx"
.LASF129:
	.string	"priv_data"
.LASF160:
	.string	"calloc"
.LASF111:
	.string	"protocomm_security_t"
.LASF112:
	.string	"protocomm_req_handler_t"
.LASF20:
	.string	"uint32_t"
.LASF162:
	.string	"httpd_unregister_uri_handler"
.LASF147:
	.string	"server_handle"
.LASF16:
	.string	"char"
.LASF30:
	.string	"ESP_LOG_VERBOSE"
.LASF8:
	.string	"__int32_t"
.LASF66:
	.string	"httpd_free_ctx_fn_t"
.LASF121:
	.string	"config"
.LASF7:
	.string	"__uint16_t"
.LASF165:
	.string	"httpd_start"
.LASF25:
	.string	"ESP_LOG_NONE"
.LASF157:
	.string	"httpd_resp_send"
.LASF17:
	.string	"uint8_t"
.LASF31:
	.string	"HTTP_DELETE"
.LASF56:
	.string	"HTTP_NOTIFY"
.LASF172:
	.string	"memcpy"
.LASF146:
	.string	"protocomm_httpd_stop"
.LASF79:
	.string	"send_wait_timeout"
.LASF81:
	.string	"global_user_ctx_free_fn"
.LASF67:
	.string	"httpd_open_func_t"
.LASF110:
	.string	"decrypt"
.LASF166:
	.string	"httpd_stop"
.LASF139:
	.string	"outbuf"
.LASF68:
	.string	"httpd_close_func_t"
.LASF123:
	.string	"ext_handle_provided"
.LASF27:
	.string	"ESP_LOG_WARN"
.LASF96:
	.string	"httpd_req_t"
.LASF54:
	.string	"HTTP_MERGE"
.LASF22:
	.string	"esp_err_t"
.LASF151:
	.string	"httpd_req_to_sockfd"
.LASF50:
	.string	"HTTP_ACL"
.LASF85:
	.string	"close_fn"
.LASF57:
	.string	"HTTP_SUBSCRIBE"
.LASF13:
	.string	"_ssize_t"
.LASF70:
	.string	"stack_size"
.LASF133:
	.string	"slh_first"
.LASF122:
	.string	"protocomm_httpd_config_data_t"
.LASF115:
	.string	"add_endpoint"
.LASF168:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/src/transports/protocomm_httpd.c"
.LASF131:
	.string	"next"
.LASF94:
	.string	"free_ctx"
.LASF83:
	.string	"global_transport_ctx_free_fn"
.LASF164:
	.string	"httpd_register_uri_handler"
.LASF143:
	.string	"recv_size"
.LASF141:
	.string	"outlen"
.LASF29:
	.string	"ESP_LOG_DEBUG"
.LASF24:
	.string	"UBaseType_t"
.LASF136:
	.string	"protocomm_httpd_remove_endpoint"
.LASF46:
	.string	"HTTP_UNLOCK"
.LASF114:
	.string	"protocomm"
.LASF95:
	.string	"ignore_sess_ctx_changes"
.LASF41:
	.string	"HTTP_MKCOL"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
