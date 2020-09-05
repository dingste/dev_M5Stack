	.file	"transport.c"
	.text
.Ltext0:
	.section	.text.esp_transport_get_default_parent,"ax",@progbits
	.align	4
	.type	esp_transport_get_default_parent, @function
esp_transport_get_default_parent:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport.c"
	.loc 1 56 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 61 0
	retw.n
.LFE0:
	.size	esp_transport_get_default_parent, .-esp_transport_get_default_parent
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport.c"
.LC2:
	.string	"TRANSPORT"
.LC4:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
.LC6:
	.string	"Memory exhausted"
	.section	.text.esp_transport_list_init,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, __FUNCTION__$3432
	.align	4
	.global	esp_transport_list_init
	.type	esp_transport_list_init, @function
esp_transport_list_init:
.LFB1:
	.loc 1 64 0
	entry	sp, 48
.LCFI1:
	.loc 1 65 0
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL1:
	mov.n	a2, a10
.LVL2:
	.loc 1 66 0
	bnez.n	a10, .L3
	.loc 1 66 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL3:
	l32r	a8, .LC7
	l32r	a11, .LC3
	s32i.n	a8, sp, 8
	l32r	a8, .LC8
	l32r	a15, .LC1
	s32i.n	a8, sp, 4
	l32r	a12, .LC5
	movi.n	a8, 0x42
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL4:
	.loc 1 66 0 is_stmt 1 discriminator 4
	retw.n
.L3:
	.loc 1 67 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 67 0
	s32i.n	a10, a2, 4
	.loc 1 69 0
	retw.n
.LFE1:
	.size	esp_transport_list_init, .-esp_transport_list_init
	.section	.text.esp_transport_list_add,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC10, .LC2
	.literal .LC11, .LC4
	.literal .LC12, .LC6
	.literal .LC13, __FUNCTION__$3438
	.align	4
	.global	esp_transport_list_add
	.type	esp_transport_list_add, @function
esp_transport_list_add:
.LFB2:
	.loc 1 72 0
.LVL5:
	entry	sp, 48
.LCFI2:
	.loc 1 73 0
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a2
	extui	a5, a5, 0, 8
	bnez.n	a5, .L8
	moveqz	a5, a6, a3
	bnez.n	a5, .L8
	.loc 1 76 0
	mov.n	a10, a4
	call8	strlen
.LVL6:
	add.n	a11, a10, a6
	mov.n	a10, a6
	call8	calloc
.LVL7:
	s32i.n	a10, a3, 8
	.loc 1 77 0
	bnez.n	a10, .L7
	.loc 1 77 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL8:
	l32r	a2, .LC12
.LVL9:
	l32r	a11, .LC10
	s32i.n	a2, sp, 8
	l32r	a2, .LC13
	l32r	a15, .LC9
	s32i.n	a2, sp, 4
	l32r	a12, .LC11
	movi.n	a2, 0x4d
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a6
	call8	esp_log_write
.LVL10:
	movi	a2, 0x101
	retw.n
.LVL11:
.L7:
	.loc 1 78 0 is_stmt 1
	mov.n	a11, a4
	call8	strcpy
.LVL12:
	.loc 1 79 0
	l32i.n	a4, a2, 4
.LVL13:
	.loc 1 79 0
	s32i.n	a5, a3, 56
	.loc 1 79 0
	s32i.n	a3, a4, 0
	addi	a3, a3, 56
.LVL14:
	s32i.n	a3, a2, 4
.LVL15:
	.loc 1 80 0
	mov.n	a2, a5
.LVL16:
	retw.n
.LVL17:
.L8:
	.loc 1 74 0
	movi	a2, 0x102
.LVL18:
	.loc 1 81 0
	retw.n
.LFE2:
	.size	esp_transport_list_add, .-esp_transport_list_add
	.section	.text.esp_transport_list_get_transport,"ax",@progbits
	.align	4
	.global	esp_transport_list_get_transport
	.type	esp_transport_list_get_transport, @function
esp_transport_list_get_transport:
.LFB3:
	.loc 1 84 0
.LVL19:
	entry	sp, 32
.LCFI3:
	.loc 1 85 0
	beqz.n	a2, .L10
	l32i.n	a8, a2, 0
	.loc 1 92 0
	mov.n	a2, a8
.LVL20:
	.loc 1 88 0
	bnez.n	a3, .L16
	.loc 1 89 0
	retw.n
.LVL21:
.L13:
	.loc 1 93 0
	l32i.n	a10, a2, 8
	mov.n	a11, a3
	call8	strcasecmp
.LVL22:
	beqz.n	a10, .L10
	.loc 1 92 0 discriminator 2
	l32i.n	a2, a2, 56
.LVL23:
.L16:
	.loc 1 92 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L13
.LVL24:
.L10:
	.loc 1 98 0 is_stmt 1
	retw.n
.LFE3:
	.size	esp_transport_list_get_transport, .-esp_transport_list_get_transport
	.section	.text.esp_transport_init,"ax",@progbits
	.literal_position
	.literal .LC14, .LC0
	.literal .LC15, .LC2
	.literal .LC16, .LC4
	.literal .LC17, .LC6
	.literal .LC18, __FUNCTION__$3461
	.align	4
	.global	esp_transport_init
	.type	esp_transport_init, @function
esp_transport_init:
.LFB6:
	.loc 1 124 0
	entry	sp, 48
.LCFI4:
	.loc 1 125 0
	movi.n	a11, 0x3c
	movi.n	a10, 1
	call8	calloc
.LVL25:
	mov.n	a2, a10
.LVL26:
	.loc 1 126 0
	bnez.n	a10, .L18
	.loc 1 126 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL27:
	l32r	a8, .LC17
	l32r	a11, .LC15
	s32i.n	a8, sp, 8
	l32r	a8, .LC18
	l32r	a15, .LC14
	s32i.n	a8, sp, 4
	l32r	a12, .LC16
	movi	a8, 0x7e
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
.L18:
	.loc 1 128 0 is_stmt 1
	retw.n
.LFE6:
	.size	esp_transport_init, .-esp_transport_init
	.section	.text.esp_transport_get_payload_transport_handle,"ax",@progbits
	.align	4
	.global	esp_transport_get_payload_transport_handle
	.type	esp_transport_get_payload_transport_handle, @function
esp_transport_get_payload_transport_handle:
.LFB7:
	.loc 1 131 0
.LVL29:
	entry	sp, 32
.LCFI5:
	.loc 1 135 0
	mov.n	a10, a2
	.loc 1 132 0
	beqz.n	a2, .L20
	.loc 1 132 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 24
	.loc 1 135 0 is_stmt 1 discriminator 1
	mov.n	a10, a9
	.loc 1 132 0 discriminator 1
	beqz.n	a9, .L20
	.loc 1 133 0
	l32i.n	a9, a2, 52
	mov.n	a10, a2
	callx8	a9
.LVL30:
.L20:
	.loc 1 136 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LFE7:
	.size	esp_transport_get_payload_transport_handle, .-esp_transport_get_payload_transport_handle
	.section	.text.esp_transport_destroy,"ax",@progbits
	.align	4
	.global	esp_transport_destroy
	.type	esp_transport_destroy, @function
esp_transport_destroy:
.LFB8:
	.loc 1 139 0
.LVL32:
	entry	sp, 32
.LCFI6:
	.loc 1 140 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L24
	.loc 1 141 0
	call8	free
.LVL33:
.L24:
	.loc 1 143 0
	mov.n	a10, a2
	call8	free
.LVL34:
	.loc 1 145 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LFE8:
	.size	esp_transport_destroy, .-esp_transport_destroy
	.section	.text.esp_transport_list_clean,"ax",@progbits
	.align	4
	.global	esp_transport_list_clean
	.type	esp_transport_list_clean, @function
esp_transport_list_clean:
.LFB5:
	.loc 1 108 0
.LVL36:
	entry	sp, 32
.LCFI7:
	.loc 1 108 0
	mov.n	a3, a2
	.loc 1 109 0
	l32i.n	a2, a2, 0
.LVL37:
	.loc 1 111 0
	j	.L29
.L31:
	.loc 1 113 0
	l32i.n	a8, a2, 44
	.loc 1 112 0
	l32i.n	a4, a2, 56
.LVL38:
	.loc 1 113 0
	beqz.n	a8, .L30
	.loc 1 114 0
	mov.n	a10, a2
	callx8	a8
.LVL39:
.L30:
	.loc 1 116 0
	mov.n	a10, a2
	call8	esp_transport_destroy
.LVL40:
	.loc 1 117 0
	mov.n	a2, a4
.LVL41:
.L29:
	.loc 1 111 0
	bnez.n	a2, .L31
	.loc 1 119 0
	s32i.n	a2, a3, 0
	.loc 1 119 0
	s32i.n	a3, a3, 4
	.loc 1 121 0
	retw.n
.LFE5:
	.size	esp_transport_list_clean, .-esp_transport_list_clean
	.section	.text.esp_transport_list_destroy,"ax",@progbits
	.align	4
	.global	esp_transport_list_destroy
	.type	esp_transport_list_destroy, @function
esp_transport_list_destroy:
.LFB4:
	.loc 1 101 0
.LVL42:
	entry	sp, 32
.LCFI8:
	.loc 1 102 0
	mov.n	a10, a2
	call8	esp_transport_list_clean
.LVL43:
	.loc 1 103 0
	mov.n	a10, a2
	call8	free
.LVL44:
	.loc 1 105 0
	movi.n	a2, 0
.LVL45:
	retw.n
.LFE4:
	.size	esp_transport_list_destroy, .-esp_transport_list_destroy
	.section	.text.esp_transport_connect,"ax",@progbits
	.align	4
	.global	esp_transport_connect
	.type	esp_transport_connect, @function
esp_transport_connect:
.LFB9:
	.loc 1 148 0
.LVL46:
	entry	sp, 32
.LCFI9:
.LVL47:
	.loc 1 148 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 153 0
	movi.n	a2, -1
.LVL48:
	.loc 1 150 0
	beqz.n	a10, .L37
	.loc 1 150 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 20
	beqz.n	a9, .L37
	.loc 1 151 0 is_stmt 1
	callx8	a9
.LVL49:
	mov.n	a2, a10
.L37:
	.loc 1 154 0
	retw.n
.LFE9:
	.size	esp_transport_connect, .-esp_transport_connect
	.section	.text.esp_transport_connect_async,"ax",@progbits
	.align	4
	.global	esp_transport_connect_async
	.type	esp_transport_connect_async, @function
esp_transport_connect_async:
.LFB10:
	.loc 1 157 0
.LVL50:
	entry	sp, 32
.LCFI10:
.LVL51:
	.loc 1 157 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 162 0
	movi.n	a2, -1
.LVL52:
	.loc 1 159 0
	beqz.n	a10, .L41
	.loc 1 159 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 48
	beqz.n	a9, .L41
	.loc 1 160 0 is_stmt 1
	callx8	a9
.LVL53:
	mov.n	a2, a10
.L41:
	.loc 1 163 0
	retw.n
.LFE10:
	.size	esp_transport_connect_async, .-esp_transport_connect_async
	.section	.text.esp_transport_read,"ax",@progbits
	.align	4
	.global	esp_transport_read
	.type	esp_transport_read, @function
esp_transport_read:
.LFB11:
	.loc 1 166 0
.LVL54:
	entry	sp, 32
.LCFI11:
	.loc 1 166 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 170 0
	movi.n	a2, -1
.LVL55:
	.loc 1 167 0
	beqz.n	a10, .L45
	.loc 1 167 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 24
	beqz.n	a9, .L45
	.loc 1 168 0 is_stmt 1
	callx8	a9
.LVL56:
	mov.n	a2, a10
.L45:
	.loc 1 171 0
	retw.n
.LFE11:
	.size	esp_transport_read, .-esp_transport_read
	.section	.text.esp_transport_write,"ax",@progbits
	.align	4
	.global	esp_transport_write
	.type	esp_transport_write, @function
esp_transport_write:
.LFB12:
	.loc 1 174 0
.LVL57:
	entry	sp, 32
.LCFI12:
	.loc 1 174 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	.loc 1 178 0
	movi.n	a2, -1
.LVL58:
	.loc 1 175 0
	beqz.n	a10, .L49
	.loc 1 175 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 28
	beqz.n	a9, .L49
	.loc 1 176 0 is_stmt 1
	callx8	a9
.LVL59:
	mov.n	a2, a10
.L49:
	.loc 1 179 0
	retw.n
.LFE12:
	.size	esp_transport_write, .-esp_transport_write
	.section	.text.esp_transport_poll_read,"ax",@progbits
	.align	4
	.global	esp_transport_poll_read
	.type	esp_transport_poll_read, @function
esp_transport_poll_read:
.LFB13:
	.loc 1 182 0
.LVL60:
	entry	sp, 32
.LCFI13:
	.loc 1 182 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 186 0
	movi.n	a2, -1
.LVL61:
	.loc 1 183 0
	beqz.n	a10, .L53
	.loc 1 183 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 36
	beqz.n	a9, .L53
	.loc 1 184 0 is_stmt 1
	callx8	a9
.LVL62:
	mov.n	a2, a10
.L53:
	.loc 1 187 0
	retw.n
.LFE13:
	.size	esp_transport_poll_read, .-esp_transport_poll_read
	.section	.text.esp_transport_poll_write,"ax",@progbits
	.align	4
	.global	esp_transport_poll_write
	.type	esp_transport_poll_write, @function
esp_transport_poll_write:
.LFB14:
	.loc 1 190 0
.LVL63:
	entry	sp, 32
.LCFI14:
	.loc 1 190 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 194 0
	movi.n	a2, -1
.LVL64:
	.loc 1 191 0
	beqz.n	a10, .L57
	.loc 1 191 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 40
	beqz.n	a9, .L57
	.loc 1 192 0 is_stmt 1
	callx8	a9
.LVL65:
	mov.n	a2, a10
.L57:
	.loc 1 195 0
	retw.n
.LFE14:
	.size	esp_transport_poll_write, .-esp_transport_poll_write
	.section	.text.esp_transport_close,"ax",@progbits
	.align	4
	.global	esp_transport_close
	.type	esp_transport_close, @function
esp_transport_close:
.LFB15:
	.loc 1 198 0
.LVL66:
	entry	sp, 32
.LCFI15:
	.loc 1 202 0
	mov.n	a10, a2
	.loc 1 199 0
	beqz.n	a2, .L61
	.loc 1 199 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 32
	.loc 1 202 0 is_stmt 1 discriminator 1
	movi.n	a10, 0
	.loc 1 199 0 discriminator 1
	beq	a9, a10, .L61
	.loc 1 200 0
	mov.n	a10, a2
	callx8	a9
.LVL67:
.L61:
	.loc 1 203 0
	mov.n	a2, a10
.LVL68:
	retw.n
.LFE15:
	.size	esp_transport_close, .-esp_transport_close
	.section	.text.esp_transport_get_context_data,"ax",@progbits
	.align	4
	.global	esp_transport_get_context_data
	.type	esp_transport_get_context_data, @function
esp_transport_get_context_data:
.LFB16:
	.loc 1 206 0
.LVL69:
	entry	sp, 32
.LCFI16:
	.loc 1 207 0
	beqz.n	a2, .L66
	.loc 1 208 0
	l32i.n	a2, a2, 16
.LVL70:
.L66:
	.loc 1 211 0
	retw.n
.LFE16:
	.size	esp_transport_get_context_data, .-esp_transport_get_context_data
	.section	.text.esp_transport_set_context_data,"ax",@progbits
	.align	4
	.global	esp_transport_set_context_data
	.type	esp_transport_set_context_data, @function
esp_transport_set_context_data:
.LFB17:
	.loc 1 214 0
.LVL71:
	entry	sp, 32
.LCFI17:
	.loc 1 219 0
	movi.n	a8, -1
	.loc 1 215 0
	beqz.n	a2, .L69
	.loc 1 216 0
	s32i.n	a3, a2, 16
	.loc 1 217 0
	movi.n	a8, 0
.L69:
	.loc 1 220 0
	mov.n	a2, a8
.LVL72:
	retw.n
.LFE17:
	.size	esp_transport_set_context_data, .-esp_transport_set_context_data
	.section	.text.esp_transport_set_func,"ax",@progbits
	.literal_position
	.literal .LC19, esp_transport_get_default_parent
	.align	4
	.global	esp_transport_set_func
	.type	esp_transport_set_func, @function
esp_transport_set_func:
.LFB18:
	.loc 1 230 0
.LVL73:
	entry	sp, 32
.LCFI18:
	.loc 1 230 0
	mov.n	a8, a2
	.loc 1 232 0
	movi.n	a2, -1
.LVL74:
	.loc 1 231 0
	beqz.n	a8, .L72
	.loc 1 239 0
	l32i.n	a2, sp, 32
	.loc 1 242 0
	l32r	a9, .LC19
	.loc 1 239 0
	s32i.n	a2, a8, 40
	.loc 1 240 0
	l32i.n	a2, sp, 36
	.loc 1 234 0
	s32i.n	a3, a8, 20
	.loc 1 240 0
	s32i.n	a2, a8, 44
	.loc 1 241 0
	movi.n	a2, 0
	.loc 1 235 0
	s32i.n	a4, a8, 24
	.loc 1 236 0
	s32i.n	a5, a8, 28
	.loc 1 237 0
	s32i.n	a6, a8, 32
	.loc 1 238 0
	s32i.n	a7, a8, 36
	.loc 1 241 0
	s32i.n	a2, a8, 48
	.loc 1 242 0
	s32i.n	a9, a8, 52
.L72:
	.loc 1 244 0
	retw.n
.LFE18:
	.size	esp_transport_set_func, .-esp_transport_set_func
	.section	.text.esp_transport_get_default_port,"ax",@progbits
	.align	4
	.global	esp_transport_get_default_port
	.type	esp_transport_get_default_port, @function
esp_transport_get_default_port:
.LFB19:
	.loc 1 247 0
.LVL75:
	entry	sp, 32
.LCFI19:
	.loc 1 249 0
	movi.n	a8, -1
	.loc 1 248 0
	beqz.n	a2, .L75
	.loc 1 251 0
	l32i.n	a8, a2, 0
.L75:
	.loc 1 252 0
	mov.n	a2, a8
.LVL76:
	retw.n
.LFE19:
	.size	esp_transport_get_default_port, .-esp_transport_get_default_port
	.section	.text.esp_transport_set_default_port,"ax",@progbits
	.align	4
	.global	esp_transport_set_default_port
	.type	esp_transport_set_default_port, @function
esp_transport_set_default_port:
.LFB20:
	.loc 1 255 0
.LVL77:
	entry	sp, 32
.LCFI20:
	.loc 1 257 0
	movi.n	a8, -1
	.loc 1 256 0
	beqz.n	a2, .L78
	.loc 1 259 0
	s32i.n	a3, a2, 0
	.loc 1 260 0
	movi.n	a8, 0
.L78:
	.loc 1 261 0
	mov.n	a2, a8
.LVL78:
	retw.n
.LFE20:
	.size	esp_transport_set_default_port, .-esp_transport_set_default_port
	.section	.text.esp_transport_set_async_connect_func,"ax",@progbits
	.align	4
	.global	esp_transport_set_async_connect_func
	.type	esp_transport_set_async_connect_func, @function
esp_transport_set_async_connect_func:
.LFB21:
	.loc 1 264 0
.LVL79:
	entry	sp, 32
.LCFI21:
	.loc 1 266 0
	movi.n	a8, -1
	.loc 1 265 0
	beqz.n	a2, .L81
	.loc 1 268 0
	s32i.n	a3, a2, 48
	.loc 1 269 0
	movi.n	a8, 0
.L81:
	.loc 1 270 0
	mov.n	a2, a8
.LVL80:
	retw.n
.LFE21:
	.size	esp_transport_set_async_connect_func, .-esp_transport_set_async_connect_func
	.section	.text.esp_transport_set_parent_transport_func,"ax",@progbits
	.align	4
	.global	esp_transport_set_parent_transport_func
	.type	esp_transport_set_parent_transport_func, @function
esp_transport_set_parent_transport_func:
.LFB22:
	.loc 1 273 0
.LVL81:
	entry	sp, 32
.LCFI22:
	.loc 1 275 0
	movi.n	a8, -1
	.loc 1 274 0
	beqz.n	a2, .L84
	.loc 1 277 0
	s32i.n	a3, a2, 52
	.loc 1 278 0
	movi.n	a8, 0
.L84:
	.loc 1 279 0
	mov.n	a2, a8
.LVL82:
	retw.n
.LFE22:
	.size	esp_transport_set_parent_transport_func, .-esp_transport_set_parent_transport_func
	.section	.rodata.__FUNCTION__$3461,"a",@progbits
	.type	__FUNCTION__$3461, @object
	.size	__FUNCTION__$3461, 19
__FUNCTION__$3461:
	.string	"esp_transport_init"
	.section	.rodata.__FUNCTION__$3438,"a",@progbits
	.type	__FUNCTION__$3438, @object
	.size	__FUNCTION__$3438, 23
__FUNCTION__$3438:
	.string	"esp_transport_list_add"
	.section	.rodata.__FUNCTION__$3432,"a",@progbits
	.type	__FUNCTION__$3432, @object
	.size	__FUNCTION__$3432, 24
__FUNCTION__$3432:
	.string	"esp_transport_list_init"
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI5-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
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
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/include/esp_transport.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb81
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1f
	.4byte	0xd3
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x19
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x35
	.4byte	0x114
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x35
	.4byte	0x11f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x35
	.4byte	0x2d4
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1a
	.4byte	0x11f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3c
	.byte	0x1
	.byte	0x1e
	.4byte	0x1e6
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x20
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x21
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x22
	.4byte	0x76
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x23
	.4byte	0x76
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x24
	.4byte	0x1e6
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x25
	.4byte	0x220
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x26
	.4byte	0x215
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0x27
	.4byte	0x24f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x28
	.4byte	0x26f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x29
	.4byte	0x26f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2a
	.4byte	0x24f
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2b
	.4byte	0x294
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2c
	.4byte	0x29f
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2e
	.4byte	0x2bf
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x5
	.byte	0x1c
	.4byte	0x1f1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x215
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x8c
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.byte	0x1d
	.4byte	0x1f1
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x5
	.byte	0x1e
	.4byte	0x22b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x231
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x24f
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x7f
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x5
	.byte	0x1f
	.4byte	0x25a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x260
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x26f
	.uleb128 0xd
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.byte	0x20
	.4byte	0x27a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x280
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x294
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x5
	.byte	0x21
	.4byte	0x1f1
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x22
	.4byte	0x2aa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b0
	.uleb128 0xc
	.4byte	0x114
	.4byte	0x2bf
	.uleb128 0xd
	.4byte	0x114
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.byte	0x2e
	.4byte	0x2d4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2e
	.4byte	0x11f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x1
	.byte	0x37
	.4byte	0x114
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ff
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x37
	.4byte	0x114
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3f
	.4byte	0xde
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a4
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x41
	.4byte	0xde
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF50
	.4byte	0x3b4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3432
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0xb37
	.4byte	0x34c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0xb42
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0xb4d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3432
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x85
	.4byte	0x3b4
	.uleb128 0x19
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x3a4
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.byte	0x47
	.4byte	0xd3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a1
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0xde
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x47
	.4byte	0x114
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF28
	.byte	0x1
	.byte	0x47
	.4byte	0x8c
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF50
	.4byte	0x4b1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3438
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0xb58
	.4byte	0x420
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0xb37
	.4byte	0x434
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0xb42
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0xb4d
	.4byte	0x490
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
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
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3438
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0xb63
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x85
	.4byte	0x4b1
	.uleb128 0x19
	.4byte	0x6f
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x4a1
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0x53
	.4byte	0x114
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x53
	.4byte	0xde
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x1
	.byte	0x53
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5b
	.4byte	0x114
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0xb6e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7b
	.4byte	0x114
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5af
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.byte	0x7d
	.4byte	0x114
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF50
	.4byte	0x5bf
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3461
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0xb37
	.4byte	0x557
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0xb42
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0xb4d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3461
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x85
	.4byte	0x5bf
	.uleb128 0x19
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x5af
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0x82
	.4byte	0x114
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f7
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x82
	.4byte	0x114
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LVL30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8a
	.4byte	0xd3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.4byte	0x114
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0xb79
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0xb79
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF58
	.byte	0x1
	.byte	0x6b
	.4byte	0xd3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6b
	.4byte	0xde
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6d
	.4byte	0x114
	.4byte	.LLST8
	.uleb128 0x21
	.string	"tmp"
	.byte	0x1
	.byte	0x6e
	.4byte	0x114
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x68d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x5f7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x64
	.4byte	0xd3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6eb
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x64
	.4byte	0xde
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LVL43
	.4byte	0x637
	.4byte	0x6da
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0xb79
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x93
	.4byte	0x33
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x764
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x93
	.4byte	0x114
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x93
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1
	.byte	0x93
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0x93
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x95
	.4byte	0x33
	.sleb128 -1
	.uleb128 0x20
	.4byte	.LVL49
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9c
	.4byte	0x33
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dd
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x9c
	.4byte	0x114
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9c
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9c
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0x9e
	.4byte	0x33
	.sleb128 -1
	.uleb128 0x20
	.4byte	.LVL53
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa5
	.4byte	0x33
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84a
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xa5
	.4byte	0x114
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa5
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xa5
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa5
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LVL56
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0xad
	.4byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xad
	.4byte	0x114
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF65
	.byte	0x1
	.byte	0xad
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xad
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xad
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LVL59
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0xb5
	.4byte	0x33
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fe
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xb5
	.4byte	0x114
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb5
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL62
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0xbd
	.4byte	0x33
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x945
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xbd
	.4byte	0x114
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xbd
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL65
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0xc5
	.4byte	0x33
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x978
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xc5
	.4byte	0x114
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LVL67
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF70
	.byte	0x1
	.byte	0xcd
	.4byte	0x76
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99f
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xcd
	.4byte	0x114
	.4byte	.LLST18
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd5
	.4byte	0xd3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xd5
	.4byte	0x114
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd5
	.4byte	0x76
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0xde
	.4byte	0xd3
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa57
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xde
	.4byte	0x114
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdf
	.4byte	0x1e6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe0
	.4byte	0x220
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe1
	.4byte	0x215
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe2
	.4byte	0x24f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe3
	.4byte	0x26f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe4
	.4byte	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe5
	.4byte	0x24f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0xf6
	.4byte	0x33
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7e
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xf6
	.4byte	0x114
	.4byte	.LLST21
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0xfe
	.4byte	0xd3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab2
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xfe
	.4byte	0x114
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1
	.byte	0xfe
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x107
	.4byte	0xd3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae9
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x107
	.4byte	0x114
	.4byte	.LLST23
	.uleb128 0x26
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x107
	.4byte	0x294
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x110
	.4byte	0xd3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb20
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x110
	.4byte	0x114
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x110
	.4byte	0x29f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x19
	.4byte	0xb32
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x8c
	.uleb128 0x27
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x7
	.byte	0x6b
	.uleb128 0x27
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x8
	.byte	0x21
	.uleb128 0x27
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0x1e
	.uleb128 0x27
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0x49
	.uleb128 0x27
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x6
	.byte	0x5a
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x1
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xd
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
	.uleb128 0x17
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
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x73
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"io_read_func"
.LASF73:
	.string	"esp_transport_get_default_port"
.LASF20:
	.string	"esp_transport_list_handle_t"
.LASF63:
	.string	"esp_transport_connect_async"
.LASF27:
	.string	"socket"
.LASF47:
	.string	"payload_transfer_func"
.LASF28:
	.string	"scheme"
.LASF6:
	.string	"long long unsigned int"
.LASF81:
	.string	"esp_log_write"
.LASF31:
	.string	"_connect"
.LASF45:
	.string	"poll_func"
.LASF40:
	.string	"next"
.LASF38:
	.string	"_connect_async"
.LASF17:
	.string	"ESP_LOG_DEBUG"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF7:
	.string	"long int"
.LASF89:
	.string	"esp_transport_get_default_parent"
.LASF64:
	.string	"esp_transport_read"
.LASF71:
	.string	"esp_transport_set_context_data"
.LASF58:
	.string	"esp_transport_list_clean"
.LASF46:
	.string	"connect_async_func"
.LASF56:
	.string	"esp_transport_get_payload_transport_handle"
.LASF26:
	.string	"port"
.LASF32:
	.string	"_read"
.LASF61:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF82:
	.string	"strlen"
.LASF34:
	.string	"_close"
.LASF9:
	.string	"long unsigned int"
.LASF78:
	.string	"_parent_transport"
.LASF50:
	.string	"__FUNCTION__"
.LASF86:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"connect_func"
.LASF88:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/tcp_transport"
.LASF30:
	.string	"data"
.LASF1:
	.string	"short unsigned int"
.LASF84:
	.string	"strcasecmp"
.LASF83:
	.string	"strcpy"
.LASF55:
	.string	"esp_transport_init"
.LASF53:
	.string	"item"
.LASF60:
	.string	"esp_transport_connect"
.LASF52:
	.string	"esp_transport_list_get_transport"
.LASF33:
	.string	"_write"
.LASF16:
	.string	"ESP_LOG_INFO"
.LASF72:
	.string	"esp_transport_set_func"
.LASF8:
	.string	"sizetype"
.LASF35:
	.string	"_poll_read"
.LASF51:
	.string	"esp_transport_list_add"
.LASF39:
	.string	"_parent_transfer"
.LASF74:
	.string	"esp_transport_set_default_port"
.LASF23:
	.string	"esp_transport_handle_t"
.LASF21:
	.string	"stqh_first"
.LASF57:
	.string	"esp_transport_destroy"
.LASF68:
	.string	"esp_transport_poll_write"
.LASF69:
	.string	"esp_transport_close"
.LASF62:
	.string	"timeout_ms"
.LASF12:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"esp_transport_poll_read"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"_destroy"
.LASF80:
	.string	"esp_log_timestamp"
.LASF14:
	.string	"ESP_LOG_ERROR"
.LASF65:
	.string	"buffer"
.LASF66:
	.string	"esp_transport_write"
.LASF59:
	.string	"esp_transport_list_destroy"
.LASF10:
	.string	"char"
.LASF18:
	.string	"ESP_LOG_VERBOSE"
.LASF24:
	.string	"esp_transport_list_t"
.LASF70:
	.string	"esp_transport_get_context_data"
.LASF22:
	.string	"stqh_last"
.LASF13:
	.string	"ESP_LOG_NONE"
.LASF11:
	.string	"__int32_t"
.LASF54:
	.string	"esp_transport_list_init"
.LASF25:
	.string	"esp_transport_item_t"
.LASF29:
	.string	"context"
.LASF85:
	.string	"free"
.LASF48:
	.string	"stqe_next"
.LASF75:
	.string	"esp_transport_set_async_connect_func"
.LASF44:
	.string	"trans_func"
.LASF15:
	.string	"ESP_LOG_WARN"
.LASF87:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/tcp_transport/transport.c"
.LASF19:
	.string	"esp_err_t"
.LASF79:
	.string	"calloc"
.LASF42:
	.string	"io_func"
.LASF36:
	.string	"_poll_write"
.LASF76:
	.string	"_connect_async_func"
.LASF77:
	.string	"esp_transport_set_parent_transport_func"
.LASF49:
	.string	"list"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
