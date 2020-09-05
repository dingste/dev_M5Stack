	.file	"mqtt_msg.c"
	.text
.Ltext0:
	.section	.text.append_string,"ax",@progbits
	.align	4
	.type	append_string, @function
append_string:
.LFB54:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_msg.c"
	.loc 1 49 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 50 0
	l32i.n	a8, a2, 4
	l32i.n	a12, a2, 24
	addi.n	a9, a8, 2
	add.n	a9, a9, a4
	.loc 1 49 0
	mov.n	a11, a3
	.loc 1 51 0
	movi.n	a10, -1
	.loc 1 50 0
	bltu	a12, a9, .L2
	.loc 1 54 0
	l32i.n	a9, a2, 20
	addi.n	a10, a8, 1
	s32i.n	a10, a2, 4
	add.n	a8, a9, a8
	srai	a9, a4, 8
	s8i	a9, a8, 0
	.loc 1 55 0
	l32i.n	a8, a2, 4
	l32i.n	a9, a2, 20
	addi.n	a10, a8, 1
	s32i.n	a10, a2, 4
	add.n	a8, a9, a8
	s8i	a4, a8, 0
	.loc 1 56 0
	l32i.n	a8, a2, 4
	l32i.n	a10, a2, 20
	mov.n	a12, a4
	add.n	a10, a10, a8
	call8	memcpy
.LVL1:
	.loc 1 57 0
	l32i.n	a8, a2, 4
	.loc 1 59 0
	addi.n	a10, a4, 2
	.loc 1 57 0
	add.n	a8, a8, a4
	s32i.n	a8, a2, 4
.L2:
	.loc 1 60 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE54:
	.size	append_string, .-append_string
	.section	.text.append_message_id,"ax",@progbits
	.literal_position
	.literal .LC0, 65535
	.align	4
	.type	append_message_id, @function
append_message_id:
.LFB55:
	.loc 1 63 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 66 0
	j	.L5
.L6:
	.loc 1 67 0
	l32r	a10, .LC0
	call8	platform_random
.LVL4:
	extui	a3, a10, 0, 16
.LVL5:
.L5:
	.loc 1 66 0
	beqz.n	a3, .L6
	.loc 1 70 0
	l32i.n	a8, a2, 4
	l32i.n	a11, a2, 24
	addi.n	a10, a8, 2
	.loc 1 71 0
	movi.n	a9, 0
	.loc 1 70 0
	bltu	a11, a10, .L7
	.loc 1 74 0
	l32i.n	a9, a2, 20
	addi.n	a10, a8, 1
	s32i.n	a10, a2, 4
	add.n	a8, a9, a8
	srli	a9, a3, 8
	s8i	a9, a8, 0
	.loc 1 75 0
	l32i.n	a8, a2, 4
	l32i.n	a9, a2, 20
	addi.n	a10, a8, 1
	s32i.n	a10, a2, 4
	add.n	a8, a9, a8
	s8i	a3, a8, 0
	.loc 1 77 0
	mov.n	a9, a3
.L7:
	.loc 1 78 0
	mov.n	a2, a9
.LVL6:
	retw.n
.LFE55:
	.size	append_message_id, .-append_message_id
	.section	.text.fini_message$constprop$4,"ax",@progbits
	.literal_position
	.literal .LC3, -2147483521
	.align	4
	.type	fini_message$constprop$4, @function
fini_message$constprop$4:
.LFB81:
	.loc 1 93 0
.LVL7:
	entry	sp, 48
.LCFI2:
.LVL8:
	.loc 1 100 0
	l32i.n	a10, a2, 8
	.loc 1 95 0
	l32i.n	a9, a2, 4
	.loc 1 98 0
	movi.n	a8, 0
	.loc 1 95 0
	addi	a12, a9, -5
.LVL9:
	.loc 1 101 0
	addi	a9, a10, -5
	moveqz	a9, a12, a10
	.loc 1 107 0
	l32r	a13, .LC3
	.loc 1 98 0
	s32i.n	a8, sp, 0
	.loc 1 101 0
	mov.n	a10, a9
	.loc 1 107 0
	movi	a14, -0x80
	.loc 1 110 0
	movi	a15, 0x80
.LVL10:
.L13:
	.loc 1 107 0
	and	a9, a10, a13
	bgez	a9, .L11
	addi.n	a9, a9, -1
	or	a9, a9, a14
	addi.n	a9, a9, 1
.L11:
.LVL11:
	.loc 1 108 0
	addi	a11, a10, 127
	movltz	a10, a11, a10
.LVL12:
	srai	a10, a10, 7
.LVL13:
	.loc 1 109 0
	blti	a10, 1, .L12
.LVL14:
	.loc 1 110 0
	or	a9, a9, a15
.LVL15:
.L12:
	.loc 1 112 0
	add.n	a11, sp, a8
	s8i	a9, a11, 0
	.loc 1 113 0
	addi.n	a8, a8, 1
.LVL16:
	.loc 1 114 0
	bgei	a10, 1, .L13
	.loc 1 122 0
	add.n	a9, a12, a8
	addi.n	a9, a9, 1
	.loc 1 125 0
	l32i.n	a11, a2, 12
	.loc 1 122 0
	s32i.n	a9, a2, 4
.LVL17:
	.loc 1 124 0
	movi.n	a10, 4
.LVL18:
	l32i.n	a9, a2, 20
	.loc 1 127 0
	extui	a4, a4, 0, 2
.LVL19:
	.loc 1 124 0
	sub	a10, a10, a8
.LVL20:
	.loc 1 127 0
	slli	a4, a4, 1
	slli	a3, a3, 4
.LVL21:
	.loc 1 124 0
	add.n	a9, a9, a10
	.loc 1 127 0
	or	a3, a4, a3
	.loc 1 125 0
	sub	a10, a11, a10
.LVL22:
	.loc 1 127 0
	extui	a5, a5, 0, 1
.LVL23:
	.loc 1 125 0
	s32i.n	a10, a2, 12
	.loc 1 127 0
	or	a5, a3, a5
	.loc 1 124 0
	s32i.n	a9, a2, 0
	.loc 1 127 0
	movi.n	a10, 5
	sub	a10, a10, a8
.LVL24:
	s8i	a5, a9, 0
.LVL25:
.LBB89:
	.loc 1 129 0
	movi.n	a3, 0
	loop	a8, .L14_LEND
.LVL26:
.L14:
	.loc 1 130 0
	l32i.n	a9, a2, 20
	add.n	a4, sp, a3
	add.n	a9, a9, a10
	l8ui	a4, a4, 0
	add.n	a9, a9, a3
	s8i	a4, a9, 0
	.loc 1 129 0
	addi.n	a3, a3, 1
.LVL27:
	.L14_LEND:
.LBE89:
	.loc 1 134 0
	retw.n
.LFE81:
	.size	fini_message$constprop$4, .-fini_message$constprop$4
	.section	.text.mqtt_msg_init,"ax",@progbits
	.align	4
	.global	mqtt_msg_init
	.type	mqtt_msg_init, @function
mqtt_msg_init:
.LFB59:
	.loc 1 137 0
.LVL28:
	entry	sp, 32
.LCFI3:
	.loc 1 138 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL29:
	.loc 1 139 0
	s32i.n	a3, a2, 20
	.loc 1 140 0
	s32i.n	a4, a2, 24
	retw.n
.LFE59:
	.size	mqtt_msg_init, .-mqtt_msg_init
	.section	.text.mqtt_get_total_length,"ax",@progbits
	.align	4
	.global	mqtt_get_total_length
	.type	mqtt_get_total_length, @function
mqtt_get_total_length:
.LFB60:
	.loc 1 144 0
.LVL30:
	entry	sp, 32
.LCFI4:
.LVL31:
	.loc 1 146 0
	movi.n	a9, 0
	.loc 1 148 0
	movi.n	a8, 1
	j	.L20
.LVL32:
.L23:
	.loc 1 149 0
	add.n	a10, a2, a8
	l8ui	a10, a10, 0
	subx8	a11, a8, a8
	extui	a12, a10, 0, 7
	addi	a11, a11, -7
	ssl	a11
	sll	a11, a12
	.loc 1 150 0
	sext	a10, a10, 7
	.loc 1 149 0
	add.n	a9, a9, a11
.LVL33:
	addi.n	a8, a8, 1
.LVL34:
	.loc 1 150 0
	bgez	a10, .L22
.LVL35:
.L20:
	.loc 1 148 0 discriminator 1
	bltu	a8, a3, .L23
.LVL36:
.L22:
	.loc 1 155 0
	add.n	a2, a8, a9
.LVL37:
	.loc 1 156 0
	beqz.n	a4, .L24
	.loc 1 157 0
	s32i.n	a8, a4, 0
.L24:
	.loc 1 161 0
	retw.n
.LFE60:
	.size	mqtt_get_total_length, .-mqtt_get_total_length
	.section	.text.mqtt_header_complete,"ax",@progbits
	.align	4
	.global	mqtt_header_complete
	.type	mqtt_header_complete, @function
mqtt_header_complete:
.LFB61:
	.loc 1 164 0
.LVL38:
	entry	sp, 32
.LCFI5:
.LVL39:
	.loc 1 164 0
	movi.n	a9, 1
	movi.n	a10, 4
	loop	a10, .L32_LEND
.LVL40:
.L32:
	extui	a8, a9, 0, 16
.LVL41:
	.loc 1 169 0
	bgeu	a9, a3, .L35
	.loc 1 172 0
	add.n	a11, a2, a9
	l8ui	a11, a11, 0
	sext	a11, a11, 7
	bltz	a11, .L30
	.loc 1 173 0
	addi.n	a8, a8, 1
.LVL42:
	extui	a8, a8, 0, 16
.LVL43:
	.loc 1 174 0
	j	.L31
.L30:
.LVL44:
	addi.n	a9, a9, 1
.LVL45:
	.L32_LEND:
	movi.n	a8, 5
.LVL46:
.L31:
	.loc 1 179 0
	addi.n	a11, a8, 2
	.loc 1 170 0
	movi.n	a9, 0
	.loc 1 179 0
	bgeu	a11, a3, .L29
.LVL47:
	.loc 1 182 0
	add.n	a9, a2, a8
	.loc 1 183 0
	addi.n	a8, a8, 1
.LVL48:
	extui	a8, a8, 0, 16
.LVL49:
	add.n	a8, a2, a8
	.loc 1 182 0
	l8ui	a10, a9, 0
	.loc 1 183 0
	l8ui	a9, a8, 0
	.loc 1 182 0
	slli	a10, a10, 8
.LVL50:
	.loc 1 187 0
	l8ui	a2, a2, 0
.LVL51:
	.loc 1 183 0
	or	a8, a10, a9
.LVL52:
	.loc 1 185 0
	add.n	a8, a11, a8
.LVL53:
	.loc 1 187 0
	extui	a2, a2, 1, 2
	.loc 1 185 0
	extui	a8, a8, 0, 16
.LVL54:
	.loc 1 187 0
	beqz.n	a2, .L33
	.loc 1 188 0
	addi.n	a8, a8, 2
.LVL55:
	extui	a8, a8, 0, 16
.LVL56:
.L33:
	.loc 1 191 0
	movi.n	a9, 1
.LVL57:
	bgeu	a3, a8, .L34
	movi.n	a9, 0
.L34:
	extui	a9, a9, 0, 8
	j	.L29
.LVL58:
.L35:
	.loc 1 170 0
	movi.n	a9, 0
.LVL59:
.L29:
	.loc 1 192 0
	mov.n	a2, a9
	retw.n
.LFE61:
	.size	mqtt_header_complete, .-mqtt_header_complete
	.section	.text.mqtt_get_publish_topic,"ax",@progbits
	.align	4
	.global	mqtt_get_publish_topic
	.type	mqtt_get_publish_topic, @function
mqtt_get_publish_topic:
.LFB62:
	.loc 1 195 0
.LVL60:
	entry	sp, 32
.LCFI6:
.LVL61:
	.loc 1 200 0
	l32i.n	a11, a3, 0
	movi.n	a8, 1
	j	.L42
.LVL62:
.L45:
	.loc 1 201 0
	add.n	a9, a2, a8
	.loc 1 202 0
	l8ui	a9, a9, 0
	addi.n	a8, a8, 1
.LVL63:
	sext	a9, a9, 7
	bgez	a9, .L44
.LVL64:
.L42:
	.loc 1 200 0 discriminator 1
	bltu	a8, a11, .L45
.LVL65:
.L44:
	.loc 1 209 0
	addi.n	a10, a8, 2
	.loc 1 210 0
	movi.n	a9, 0
	.loc 1 209 0
	bgeu	a10, a11, .L46
.LVL66:
	.loc 1 212 0
	add.n	a8, a2, a8
.LVL67:
	l8ui	a9, a8, 0
	.loc 1 213 0
	l8ui	a8, a8, 1
	.loc 1 212 0
	slli	a9, a9, 8
.LVL68:
	.loc 1 213 0
	or	a8, a8, a9
.LVL69:
	.loc 1 215 0
	add.n	a12, a10, a8
	.loc 1 210 0
	movi.n	a9, 0
	.loc 1 215 0
	bltu	a11, a12, .L46
	.loc 1 219 0
	s32i.n	a8, a3, 0
	.loc 1 220 0
	add.n	a9, a2, a10
.LVL70:
.L46:
	.loc 1 221 0
	mov.n	a2, a9
.LVL71:
	retw.n
.LFE62:
	.size	mqtt_get_publish_topic, .-mqtt_get_publish_topic
	.section	.text.mqtt_get_publish_data,"ax",@progbits
	.align	4
	.global	mqtt_get_publish_data
	.type	mqtt_get_publish_data, @function
mqtt_get_publish_data:
.LFB63:
	.loc 1 224 0
.LVL72:
	entry	sp, 32
.LCFI7:
.LVL73:
	.loc 1 229 0
	movi.n	a10, 0
	.loc 1 228 0
	l32i.n	a12, a3, 0
.LVL74:
	.loc 1 231 0
	movi.n	a8, 1
	.loc 1 229 0
	s32i.n	a10, a3, 0
.LVL75:
	.loc 1 231 0
	j	.L50
.LVL76:
.L53:
	.loc 1 232 0
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	subx8	a11, a8, a8
	extui	a13, a9, 0, 7
	addi	a11, a11, -7
	ssl	a11
	sll	a11, a13
	.loc 1 233 0
	sext	a9, a9, 7
	.loc 1 232 0
	add.n	a10, a10, a11
.LVL77:
	addi.n	a8, a8, 1
.LVL78:
	.loc 1 233 0
	bgez	a9, .L52
.LVL79:
.L50:
	.loc 1 231 0 discriminator 1
	blt	a8, a12, .L53
.LVL80:
.L52:
	.loc 1 240 0
	addi.n	a13, a8, 2
	.loc 1 238 0
	add.n	a10, a8, a10
.LVL81:
	.loc 1 241 0
	movi.n	a11, 0
	.loc 1 240 0
	bge	a13, a12, .L54
.LVL82:
	.loc 1 243 0
	add.n	a8, a2, a8
.LVL83:
	l8ui	a9, a8, 0
	.loc 1 244 0
	l8ui	a8, a8, 1
	.loc 1 243 0
	slli	a9, a9, 8
.LVL84:
	.loc 1 244 0
	or	a8, a8, a9
.LVL85:
	.loc 1 246 0
	add.n	a8, a13, a8
.LVL86:
	bge	a8, a12, .L54
.LVL87:
	.loc 1 252 0
	l8ui	a9, a2, 0
.LVL88:
	extui	a9, a9, 1, 2
	beq	a9, a11, .L55
	.loc 1 253 0
	addi.n	a8, a8, 2
.LVL89:
	bge	a8, a12, .L54
.LVL90:
.L55:
	.loc 1 241 0
	movi.n	a11, 0
	.loc 1 259 0
	blt	a10, a8, .L54
	.loc 1 263 0
	blt	a12, a10, .L56
	.loc 1 264 0
	sub	a10, a10, a8
.LVL91:
	s32i.n	a10, a3, 0
.LVL92:
	j	.L57
.LVL93:
.L56:
	.loc 1 266 0
	sub	a9, a12, a8
	s32i.n	a9, a3, 0
.LVL94:
.L57:
	.loc 1 268 0
	add.n	a11, a2, a8
.LVL95:
.L54:
	.loc 1 269 0
	mov.n	a2, a11
.LVL96:
	retw.n
.LFE63:
	.size	mqtt_get_publish_data, .-mqtt_get_publish_data
	.section	.text.mqtt_get_id,"ax",@progbits
	.align	4
	.global	mqtt_get_id
	.type	mqtt_get_id, @function
mqtt_get_id:
.LFB64:
	.loc 1 272 0
.LVL97:
	entry	sp, 32
.LCFI8:
	.loc 1 274 0
	movi.n	a8, 0
	.loc 1 273 0
	beq	a3, a8, .L66
	l8ui	a13, a2, 0
.LVL98:
	.loc 1 277 0
	srli	a9, a13, 4
	beqi	a9, 3, .L67
	bltui	a9, 3, .L74
	movi.n	a10, 0xb
	bgeu	a10, a9, .L82
	j	.L74
.L67:
	mov.n	a11, a3
	movi.n	a8, 1
	j	.L69
.LVL99:
.L72:
.LBB90:
	.loc 1 283 0
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	addi.n	a8, a8, 1
.LVL100:
	sext	a9, a9, 7
	bltz	a9, .L69
	.loc 1 284 0
	mov.n	a11, a8
.LVL101:
	.loc 1 285 0
	j	.L71
.LVL102:
.L69:
	.loc 1 282 0 discriminator 1
	bne	a8, a3, .L72
.LVL103:
.L71:
	.loc 1 289 0
	addi.n	a10, a11, 2
.LBE90:
	.loc 1 274 0
	movi.n	a8, 0
.LBB91:
	.loc 1 289 0
	bgeu	a10, a3, .L66
.LVL104:
	.loc 1 292 0
	add.n	a11, a2, a11
.LVL105:
	l8ui	a12, a11, 0
	.loc 1 295 0
	l8ui	a9, a11, 1
	.loc 1 292 0
	slli	a12, a12, 8
.LVL106:
	.loc 1 295 0
	or	a11, a9, a12
	add.n	a9, a11, a10
	bltu	a3, a9, .L66
.LVL107:
	.loc 1 300 0
	extui	a10, a13, 1, 2
.LVL108:
	beq	a10, a8, .L66
	.loc 1 301 0
	addi.n	a10, a9, 2
	bltu	a3, a10, .L66
	.loc 1 309 0
	add.n	a9, a2, a9
.LVL109:
	l8ui	a2, a9, 0
.LVL110:
	l8ui	a8, a9, 1
	slli	a2, a2, 8
	j	.L83
.LVL111:
.L82:
.LBE91:
	.loc 1 321 0
	bltui	a3, 4, .L66
	.loc 1 321 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 1
	sext	a9, a9, 7
	bltz	a9, .L66
	.loc 1 322 0 is_stmt 1
	l8ui	a8, a2, 2
	l8ui	a2, a2, 3
.LVL112:
	slli	a8, a8, 8
.L83:
	or	a8, a2, a8
	j	.L66
.LVL113:
.L74:
	.loc 1 329 0
	movi.n	a8, 0
.LVL114:
.L66:
	.loc 1 331 0
	mov.n	a2, a8
	retw.n
.LFE64:
	.size	mqtt_get_id, .-mqtt_get_id
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"MQIsdp"
.LC6:
	.string	"MQTT"
	.section	.text.mqtt_msg_connect,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	mqtt_msg_connect
	.type	mqtt_msg_connect, @function
mqtt_msg_connect:
.LFB65:
	.loc 1 334 0
.LVL115:
	entry	sp, 32
.LCFI9:
.LVL116:
	.loc 1 339 0
	l32i.n	a8, a3, 40
.LBB92:
.LBB93:
	.loc 1 82 0
	movi.n	a4, 5
.LBE93:
.LBE92:
	.loc 1 342 0
	movi.n	a5, 0xa
.LBB95:
.LBB94:
	.loc 1 82 0
	s32i.n	a4, a2, 4
.LBE94:
.LBE95:
	.loc 1 342 0
	addi.n	a4, a8, -1
	movi.n	a8, 0xc
	movnez	a8, a5, a4
.LVL117:
	.loc 1 345 0
	l32i.n	a4, a2, 24
	addi.n	a8, a8, 5
.LVL118:
	l32i.n	a5, a2, 20
	bgeu	a4, a8, .L86
.LVL119:
.LBB96:
.LBB97:
	.loc 1 88 0
	s32i.n	a5, a2, 0
	j	.L132
.LVL120:
.L86:
.LBE97:
.LBE96:
	.loc 1 352 0
	movi.n	a4, 0
	.loc 1 349 0
	s32i.n	a8, a2, 4
	.loc 1 352 0
	s8i	a4, a5, 5
	.loc 1 354 0
	l32i.n	a4, a3, 40
	.loc 1 348 0
	addi.n	a6, a5, 5
.LVL121:
	addi.n	a10, a5, 7
	.loc 1 354 0
	bnei	a4, 1, .L88
.LVL122:
	.loc 1 355 0
	movi.n	a4, 6
	.loc 1 356 0
	l32r	a11, .LC5
	.loc 1 355 0
	s8i	a4, a5, 6
	.loc 1 356 0
	movi.n	a12, 6
	.loc 1 358 0
	movi.n	a4, 3
	.loc 1 356 0
	call8	memcpy
.LVL123:
	.loc 1 358 0
	s8i	a4, a5, 13
	movi.n	a4, 9
	j	.L89
.LVL124:
.L88:
	.loc 1 362 0
	l32r	a8, .LC7
.LVL125:
	.loc 1 361 0
	movi.n	a9, 4
	.loc 1 362 0
	l8ui	a11, a8, 0
	l8ui	a4, a8, 1
	s8i	a11, a5, 7
	.loc 1 361 0
	s8i	a9, a5, 6
	.loc 1 362 0
	s8i	a4, a10, 1
	l8ui	a11, a8, 2
	l8ui	a4, a8, 3
	s8i	a11, a10, 2
	s8i	a4, a10, 3
.LVL126:
	.loc 1 364 0
	s8i	a9, a5, 11
	movi.n	a4, 7
.LVL127:
.L89:
	.loc 1 368 0
	add.n	a4, a6, a4
.LVL128:
	movi.n	a5, 0
	s8i	a5, a4, 0
	.loc 1 369 0
	l32i.n	a5, a3, 20
	srai	a5, a5, 8
	s8i	a5, a4, 1
	.loc 1 370 0
	l32i.n	a5, a3, 20
	s8i	a5, a4, 2
	.loc 1 372 0
	l32i.n	a5, a3, 36
	beqz.n	a5, .L90
	.loc 1 373 0
	movi.n	a5, 2
	s8i	a5, a4, 0
.L90:
	.loc 1 376 0
	l32i.n	a5, a3, 0
	beqz.n	a5, .L133
	.loc 1 376 0 discriminator 1
	l8ui	a8, a5, 0
	beqz.n	a8, .L133
	.loc 1 377 0
	mov.n	a10, a5
	call8	strlen
.LVL129:
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a2
	call8	append_string
.LVL130:
	bgez	a10, .L92
.LVL131:
.L133:
.LBB98:
.LBB99:
	.loc 1 88 0
	l32i.n	a3, a2, 20
	s32i.n	a3, a2, 0
.LVL132:
.L132:
	.loc 1 89 0
	movi.n	a3, 0
	s32i.n	a3, a2, 4
.LBE99:
.LBE98:
	.loc 1 378 0
	retw.n
.LVL133:
.L92:
	.loc 1 384 0
	l32i.n	a5, a3, 12
	beqz.n	a5, .L93
	.loc 1 384 0 discriminator 1
	l8ui	a8, a5, 0
	beqz.n	a8, .L93
	.loc 1 385 0
	mov.n	a10, a5
	call8	strlen
.LVL134:
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a2
	call8	append_string
.LVL135:
	bgez	a10, .L94
.LVL136:
	j	.L133
.LVL137:
.L94:
	.loc 1 389 0
	l32i.n	a12, a3, 24
	l32i.n	a11, a3, 16
	mov.n	a10, a2
	call8	append_string
.LVL138:
	bgez	a10, .L95
.LVL139:
	j	.L133
.LVL140:
.L95:
	.loc 1 393 0
	l8ui	a9, a4, 0
	movi.n	a8, 4
	or	a8, a9, a8
	s8i	a8, a4, 0
	.loc 1 394 0
	l32i.n	a5, a3, 32
	beqz.n	a5, .L96
	.loc 1 395 0
	movi.n	a5, 0x24
	or	a5, a9, a5
	s8i	a5, a4, 0
.L96:
	.loc 1 397 0
	l32i.n	a5, a3, 28
	l8ui	a8, a4, 0
	extui	a5, a5, 0, 2
	slli	a5, a5, 3
	or	a5, a5, a8
	s8i	a5, a4, 0
.L93:
	.loc 1 400 0
	l32i.n	a5, a3, 4
	beqz.n	a5, .L97
	.loc 1 400 0 discriminator 1
	l8ui	a8, a5, 0
	beqz.n	a8, .L97
	.loc 1 401 0
	mov.n	a10, a5
	call8	strlen
.LVL141:
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a2
	call8	append_string
.LVL142:
	bgez	a10, .L98
.LVL143:
	j	.L133
.LVL144:
.L98:
	.loc 1 405 0
	l8ui	a8, a4, 0
	movi	a5, -0x80
	or	a5, a8, a5
	s8i	a5, a4, 0
.L97:
	.loc 1 408 0
	l32i.n	a3, a3, 8
.LVL145:
	beqz.n	a3, .L99
	.loc 1 408 0 discriminator 1
	l8ui	a5, a3, 0
	beqz.n	a5, .L99
	.loc 1 409 0
	mov.n	a10, a3
	call8	strlen
.LVL146:
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	append_string
.LVL147:
	bgez	a10, .L100
.LVL148:
	j	.L133
.LVL149:
.L100:
	.loc 1 413 0
	l8ui	a5, a4, 0
	movi.n	a3, 0x40
	or	a3, a5, a3
	s8i	a3, a4, 0
.L99:
	.loc 1 416 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 1
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL150:
	mov.n	a2, a10
.LVL151:
	.loc 1 417 0
	retw.n
.LFE65:
	.size	mqtt_msg_connect, .-mqtt_msg_connect
	.section	.text.mqtt_msg_publish,"ax",@progbits
	.align	4
	.global	mqtt_msg_publish
	.type	mqtt_msg_publish, @function
mqtt_msg_publish:
.LFB66:
	.loc 1 420 0
.LVL152:
	entry	sp, 32
.LCFI10:
.LVL153:
.LBB100:
.LBB101:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE101:
.LBE100:
	.loc 1 420 0
	.loc 1 423 0
	beqz.n	a3, .L139
	.loc 1 423 0 discriminator 1
	l8ui	a8, a3, 0
	bnez.n	a8, .L136
.LVL154:
	j	.L139
.LVL155:
.L136:
	.loc 1 427 0
	mov.n	a10, a3
	call8	strlen
.LVL156:
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	append_string
.LVL157:
	bgez	a10, .L138
.LVL158:
.L139:
.LBB102:
.LBB103:
	.loc 1 88 0
	l32i.n	a3, a2, 20
	s32i.n	a3, a2, 0
	.loc 1 89 0
	movi.n	a3, 0
	s32i.n	a3, a2, 4
.LBE103:
.LBE102:
	.loc 1 428 0
	retw.n
.LVL159:
.L138:
	.loc 1 431 0
	bnez.n	a4, .L146
	srai	a3, a5, 31
.LVL160:
	sub	a3, a3, a5
	bltz	a3, .L139
.L146:
	.loc 1 435 0
	blti	a6, 1, .L141
	.loc 1 436 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	append_message_id
.LVL161:
	l32i.n	a3, sp, 32
	s16i	a10, a3, 0
	bnez.n	a10, .L142
.LVL162:
.LBB104:
.LBB105:
	.loc 1 88 0
	l32i.n	a3, a2, 20
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a3, a2, 0
.LBE105:
.LBE104:
	.loc 1 437 0
	retw.n
.LVL163:
.L141:
	.loc 1 440 0
	l32i.n	a8, sp, 32
	movi.n	a3, 0
	s16i	a3, a8, 0
.L142:
	.loc 1 443 0
	l32i.n	a8, a2, 4
	l32i.n	a12, a2, 24
	add.n	a3, a8, a5
	bgeu	a12, a3, .L143
	.loc 1 446 0
	l32i.n	a10, a2, 20
	.loc 1 445 0
	s32i.n	a8, a2, 12
	.loc 1 446 0
	sub	a12, a12, a8
	mov.n	a11, a4
	add.n	a10, a10, a8
	call8	memcpy
.LVL164:
	.loc 1 447 0
	l32i.n	a3, a2, 24
	s32i.n	a3, a2, 4
	.loc 1 448 0
	l32i.n	a3, a2, 12
	add.n	a5, a3, a5
.LVL165:
	s32i.n	a5, a2, 8
	j	.L144
.LVL166:
.L143:
	.loc 1 450 0
	beqz.n	a4, .L145
	.loc 1 452 0
	l32i.n	a10, a2, 20
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a10, a8
	call8	memcpy
.LVL167:
	.loc 1 453 0
	l32i.n	a3, a2, 4
	add.n	a5, a3, a5
.LVL168:
	s32i.n	a5, a2, 4
.L145:
	.loc 1 455 0
	movi.n	a3, 0
	s32i.n	a3, a2, 8
.L144:
	.loc 1 457 0
	mov.n	a13, a7
	mov.n	a12, a6
	movi.n	a11, 3
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL169:
	mov.n	a2, a10
.LVL170:
	.loc 1 458 0
	retw.n
.LFE66:
	.size	mqtt_msg_publish, .-mqtt_msg_publish
	.section	.text.mqtt_msg_puback,"ax",@progbits
	.align	4
	.global	mqtt_msg_puback
	.type	mqtt_msg_puback, @function
mqtt_msg_puback:
.LFB67:
	.loc 1 461 0
.LVL171:
	entry	sp, 32
.LCFI11:
.LVL172:
.LBB106:
.LBB107:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE107:
.LBE106:
	.loc 1 463 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	append_message_id
.LVL173:
	bnez.n	a10, .L157
.LVL174:
.LBB108:
.LBB109:
	.loc 1 88 0
	l32i.n	a8, a2, 20
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a8, a2, 0
.LBE109:
.LBE108:
	.loc 1 464 0
	retw.n
.LVL175:
.L157:
	.loc 1 466 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 4
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL176:
	mov.n	a2, a10
.LVL177:
	.loc 1 467 0
	retw.n
.LFE67:
	.size	mqtt_msg_puback, .-mqtt_msg_puback
	.section	.text.mqtt_msg_pubrec,"ax",@progbits
	.align	4
	.global	mqtt_msg_pubrec
	.type	mqtt_msg_pubrec, @function
mqtt_msg_pubrec:
.LFB68:
	.loc 1 470 0
.LVL178:
	entry	sp, 32
.LCFI12:
.LVL179:
.LBB110:
.LBB111:
	.loc 1 82 0
	movi.n	a4, 5
	s32i.n	a4, a2, 4
.LBE111:
.LBE110:
	.loc 1 472 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	append_message_id
.LVL180:
	bnez.n	a10, .L160
.LVL181:
.LBB112:
.LBB113:
	.loc 1 88 0
	l32i.n	a4, a2, 20
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a4, a2, 0
.LBE113:
.LBE112:
	.loc 1 473 0
	retw.n
.LVL182:
.L160:
	.loc 1 475 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a4
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL183:
	mov.n	a2, a10
.LVL184:
	.loc 1 476 0
	retw.n
.LFE68:
	.size	mqtt_msg_pubrec, .-mqtt_msg_pubrec
	.section	.text.mqtt_msg_pubrel,"ax",@progbits
	.align	4
	.global	mqtt_msg_pubrel
	.type	mqtt_msg_pubrel, @function
mqtt_msg_pubrel:
.LFB69:
	.loc 1 479 0
.LVL185:
	entry	sp, 32
.LCFI13:
.LVL186:
.LBB114:
.LBB115:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE115:
.LBE114:
	.loc 1 481 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	append_message_id
.LVL187:
	bnez.n	a10, .L163
.LVL188:
.LBB116:
.LBB117:
	.loc 1 88 0
	l32i.n	a8, a2, 20
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a8, a2, 0
.LBE117:
.LBE116:
	.loc 1 482 0
	retw.n
.LVL189:
.L163:
	.loc 1 484 0
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 6
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL190:
	mov.n	a2, a10
.LVL191:
	.loc 1 485 0
	retw.n
.LFE69:
	.size	mqtt_msg_pubrel, .-mqtt_msg_pubrel
	.section	.text.mqtt_msg_pubcomp,"ax",@progbits
	.align	4
	.global	mqtt_msg_pubcomp
	.type	mqtt_msg_pubcomp, @function
mqtt_msg_pubcomp:
.LFB70:
	.loc 1 488 0
.LVL192:
	entry	sp, 32
.LCFI14:
.LVL193:
.LBB118:
.LBB119:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE119:
.LBE118:
	.loc 1 490 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	append_message_id
.LVL194:
	bnez.n	a10, .L166
.LVL195:
.LBB120:
.LBB121:
	.loc 1 88 0
	l32i.n	a8, a2, 20
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a8, a2, 0
.LBE121:
.LBE120:
	.loc 1 491 0
	retw.n
.LVL196:
.L166:
	.loc 1 493 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 7
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL197:
	mov.n	a2, a10
.LVL198:
	.loc 1 494 0
	retw.n
.LFE70:
	.size	mqtt_msg_pubcomp, .-mqtt_msg_pubcomp
	.section	.text.mqtt_msg_subscribe,"ax",@progbits
	.align	4
	.global	mqtt_msg_subscribe
	.type	mqtt_msg_subscribe, @function
mqtt_msg_subscribe:
.LFB71:
	.loc 1 497 0
.LVL199:
	entry	sp, 32
.LCFI15:
.LVL200:
.LBB122:
.LBB123:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE123:
.LBE122:
	.loc 1 500 0
	beqz.n	a3, .L169
	.loc 1 500 0 discriminator 1
	l8ui	a8, a3, 0
	bnez.n	a8, .L170
.L169:
.LVL201:
.LBB124:
.LBB125:
	.loc 1 88 0
	l32i.n	a3, a2, 20
.LVL202:
	j	.L174
.LVL203:
.L170:
.LBE125:
.LBE124:
	.loc 1 504 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	append_message_id
.LVL204:
	s16i	a10, a5, 0
	bnez.n	a10, .L172
.LVL205:
.LBB126:
.LBB127:
	.loc 1 88 0
	l32i.n	a3, a2, 20
.LVL206:
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a3, a2, 0
.LBE127:
.LBE126:
	.loc 1 505 0
	retw.n
.LVL207:
.L172:
	.loc 1 508 0
	mov.n	a10, a3
	call8	strlen
.LVL208:
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	append_string
.LVL209:
	l32i.n	a3, a2, 20
.LVL210:
	bgez	a10, .L173
.L174:
.LVL211:
.LBB128:
.LBB129:
	.loc 1 88 0
	s32i.n	a3, a2, 0
	.loc 1 89 0
	movi.n	a3, 0
	s32i.n	a3, a2, 4
.LBE129:
.LBE128:
	.loc 1 509 0
	retw.n
.LVL212:
.L173:
	.loc 1 512 0
	l32i.n	a8, a2, 4
	l32i.n	a10, a2, 24
	addi.n	a9, a8, 1
	bltu	a10, a9, .L174
	.loc 1 515 0
	s32i.n	a9, a2, 4
	add.n	a8, a3, a8
	s8i	a4, a8, 0
	.loc 1 517 0
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 8
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL213:
	mov.n	a2, a10
.LVL214:
	.loc 1 518 0
	retw.n
.LFE71:
	.size	mqtt_msg_subscribe, .-mqtt_msg_subscribe
	.section	.text.mqtt_msg_unsubscribe,"ax",@progbits
	.align	4
	.global	mqtt_msg_unsubscribe
	.type	mqtt_msg_unsubscribe, @function
mqtt_msg_unsubscribe:
.LFB72:
	.loc 1 521 0
.LVL215:
	entry	sp, 32
.LCFI16:
.LVL216:
.LBB130:
.LBB131:
	.loc 1 82 0
	movi.n	a8, 5
	s32i.n	a8, a2, 4
.LBE131:
.LBE130:
	.loc 1 524 0
	beqz.n	a3, .L187
	.loc 1 524 0 discriminator 1
	l8ui	a8, a3, 0
	bnez.n	a8, .L180
.LVL217:
	j	.L187
.LVL218:
.L180:
	.loc 1 528 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	append_message_id
.LVL219:
	s16i	a10, a4, 0
	bnez.n	a10, .L182
.LVL220:
.LBB132:
.LBB133:
	.loc 1 88 0
	l32i.n	a3, a2, 20
.LVL221:
	.loc 1 89 0
	s32i.n	a10, a2, 4
	.loc 1 88 0
	s32i.n	a3, a2, 0
.LBE133:
.LBE132:
	.loc 1 529 0
	retw.n
.LVL222:
.L182:
	.loc 1 532 0
	mov.n	a10, a3
	call8	strlen
.LVL223:
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
	call8	append_string
.LVL224:
	bgez	a10, .L183
.L187:
.LVL225:
.LBB134:
.LBB135:
	.loc 1 88 0
	l32i.n	a3, a2, 20
.LVL226:
	s32i.n	a3, a2, 0
	.loc 1 89 0
	movi.n	a3, 0
	s32i.n	a3, a2, 4
.LBE135:
.LBE134:
	.loc 1 533 0
	retw.n
.LVL227:
.L183:
	.loc 1 536 0
	movi.n	a13, 0
	movi.n	a12, 1
	movi.n	a11, 0xa
	mov.n	a10, a2
	call8	fini_message$constprop$4
.LVL228:
	mov.n	a2, a10
.LVL229:
	.loc 1 537 0
	retw.n
.LFE72:
	.size	mqtt_msg_unsubscribe, .-mqtt_msg_unsubscribe
	.section	.text.mqtt_msg_pingreq,"ax",@progbits
	.align	4
	.global	mqtt_msg_pingreq
	.type	mqtt_msg_pingreq, @function
mqtt_msg_pingreq:
.LFB73:
	.loc 1 540 0
.LVL230:
	entry	sp, 32
.LCFI17:
.LVL231:
.LBB136:
.LBB137:
	.loc 1 82 0
	movi.n	a8, 5
.LBE137:
.LBE136:
	.loc 1 542 0
	movi.n	a13, 0
.LBB139:
.LBB138:
	.loc 1 82 0
	s32i.n	a8, a2, 4
.LBE138:
.LBE139:
	.loc 1 540 0
	mov.n	a10, a2
	.loc 1 542 0
	mov.n	a12, a13
	movi.n	a11, 0xc
	call8	fini_message$constprop$4
.LVL232:
	.loc 1 543 0
	mov.n	a2, a10
.LVL233:
	retw.n
.LFE73:
	.size	mqtt_msg_pingreq, .-mqtt_msg_pingreq
	.section	.text.mqtt_msg_pingresp,"ax",@progbits
	.align	4
	.global	mqtt_msg_pingresp
	.type	mqtt_msg_pingresp, @function
mqtt_msg_pingresp:
.LFB74:
	.loc 1 546 0
.LVL234:
	entry	sp, 32
.LCFI18:
.LVL235:
.LBB140:
.LBB141:
	.loc 1 82 0
	movi.n	a8, 5
.LBE141:
.LBE140:
	.loc 1 548 0
	movi.n	a13, 0
.LBB143:
.LBB142:
	.loc 1 82 0
	s32i.n	a8, a2, 4
.LBE142:
.LBE143:
	.loc 1 546 0
	mov.n	a10, a2
	.loc 1 548 0
	mov.n	a12, a13
	movi.n	a11, 0xd
	call8	fini_message$constprop$4
.LVL236:
	.loc 1 549 0
	mov.n	a2, a10
.LVL237:
	retw.n
.LFE74:
	.size	mqtt_msg_pingresp, .-mqtt_msg_pingresp
	.section	.text.mqtt_msg_disconnect,"ax",@progbits
	.align	4
	.global	mqtt_msg_disconnect
	.type	mqtt_msg_disconnect, @function
mqtt_msg_disconnect:
.LFB75:
	.loc 1 552 0
.LVL238:
	entry	sp, 32
.LCFI19:
.LVL239:
.LBB144:
.LBB145:
	.loc 1 82 0
	movi.n	a8, 5
.LBE145:
.LBE144:
	.loc 1 554 0
	movi.n	a13, 0
.LBB147:
.LBB146:
	.loc 1 82 0
	s32i.n	a8, a2, 4
.LBE146:
.LBE147:
	.loc 1 552 0
	mov.n	a10, a2
	.loc 1 554 0
	mov.n	a12, a13
	movi.n	a11, 0xe
	call8	fini_message$constprop$4
.LVL240:
	.loc 1 555 0
	mov.n	a2, a10
.LVL241:
	retw.n
.LFE75:
	.size	mqtt_msg_disconnect, .-mqtt_msg_disconnect
	.section	.text.mqtt_has_valid_msg_hdr,"ax",@progbits
	.literal_position
	.literal .LC8, 31414
	.align	4
	.global	mqtt_has_valid_msg_hdr
	.type	mqtt_has_valid_msg_hdr, @function
mqtt_has_valid_msg_hdr:
.LFB76:
	.loc 1 562 0
.LVL242:
	entry	sp, 32
.LCFI20:
	.loc 1 562 0
	mov.n	a8, a2
	.loc 1 591 0
	movi.n	a2, 0
.LVL243:
	.loc 1 565 0
	beq	a3, a2, .L192
	l8ui	a8, a8, 0
.LVL244:
	movi.n	a10, 0xf
.LBB148:
.LBB149:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/mqtt_msg.h"
	.loc 2 98 0
	srli	a9, a8, 4
	beq	a9, a10, .L192
	movi.n	a11, 1
	l32r	a10, .LC8
	ssl	a9
	sll	a9, a11
	bany	a9, a10, .L193
	movi	a10, 0x540
	bany	a9, a10, .L194
	movi.n	a12, 8
	bany	a9, a12, .L195
	retw.n
.L193:
.LBE149:
.LBE148:
	.loc 1 579 0
	extui	a8, a8, 0, 4
	j	.L201
.L194:
	.loc 1 583 0
	extui	a8, a8, 0, 4
	addi	a8, a8, -2
.L201:
	moveqz	a2, a11, a8
	retw.n
.L195:
.LVL245:
.LBB150:
.LBB151:
	.loc 2 118 0
	movi.n	a10, 6
	and	a10, a8, a10
	srai	a9, a10, 1
.LVL246:
.LBE151:
.LBE150:
	.loc 1 591 0
	beqi	a9, 3, .L192
	.loc 1 591 0 is_stmt 0 discriminator 1
	and	a2, a8, a12
	srai	a2, a2, 3
	neg	a9, a9
	xor	a2, a2, a11
	extui	a9, a9, 31, 1
	or	a2, a9, a2
.LVL247:
.L192:
	.loc 1 595 0 is_stmt 1
	retw.n
.LFE76:
	.size	mqtt_has_valid_msg_hdr, .-mqtt_has_valid_msg_hdr
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI0-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI1-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI2-.LFB81
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI3-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI4-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI5-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI6-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI7-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI8-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI9-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI10-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI11-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI12-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI13-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI14-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI15-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI16-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI17-.LFB73
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI18-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI19-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI20-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/include/mqtt_client.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/include/platform_esp32_idf.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xc
	.4byte	.LASF119
	.4byte	.LASF120
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x7
	.4byte	0xab
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x5f
	.4byte	0x10e
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x63
	.4byte	0xef
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x2f
	.4byte	0x17e
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x10
	.byte	0x2
	.byte	0x40
	.4byte	0x1bb
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x2
	.byte	0x41
	.4byte	0xd9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x2
	.byte	0x42
	.4byte	0xc1
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x2
	.byte	0x43
	.4byte	0xc1
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x2
	.byte	0x44
	.4byte	0xc1
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x2
	.byte	0x45
	.4byte	0x17e
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1c
	.byte	0x2
	.byte	0x47
	.4byte	0x203
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x2
	.byte	0x48
	.4byte	0x1bb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x2
	.byte	0x4a
	.4byte	0xb6
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x2
	.byte	0x4b
	.4byte	0xd9
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x2
	.byte	0x4c
	.4byte	0xc1
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x2
	.byte	0x4e
	.4byte	0x1c6
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x2c
	.byte	0x2
	.byte	0x50
	.4byte	0x29f
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x2
	.byte	0x51
	.4byte	0x93
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x2
	.byte	0x52
	.4byte	0x93
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x2
	.byte	0x53
	.4byte	0x93
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x2
	.byte	0x54
	.4byte	0x93
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x2
	.byte	0x55
	.4byte	0x93
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x2
	.byte	0x56
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x2
	.byte	0x57
	.4byte	0x25
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x2
	.byte	0x58
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x2
	.byte	0x59
	.4byte	0x25
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x2
	.byte	0x5a
	.4byte	0x25
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x2
	.byte	0x5b
	.4byte	0x10e
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x2
	.byte	0x5d
	.4byte	0x20e
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x28
	.4byte	0x2d9
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x2
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.4byte	0x2f5
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.byte	0x60
	.4byte	0x2f5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2
	.byte	0x6c
	.4byte	0x25
	.byte	0x3
	.4byte	0x31c
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.byte	0x6c
	.4byte	0x2f5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2
	.byte	0x74
	.4byte	0x25
	.byte	0x3
	.4byte	0x338
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.byte	0x74
	.4byte	0x2f5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0x50
	.4byte	0x25
	.byte	0x1
	.4byte	0x354
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1
	.byte	0x50
	.4byte	0x354
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x203
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x56
	.4byte	0x376
	.byte	0x1
	.4byte	0x376
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1
	.byte	0x56
	.4byte	0x354
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5d
	.4byte	0x376
	.byte	0x1
	.4byte	0x411
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5d
	.4byte	0x354
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.uleb128 0x10
	.string	"dup"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.uleb128 0x10
	.string	"qos"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x1
	.byte	0x61
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x62
	.4byte	0xdf
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7b
	.4byte	0x25
	.uleb128 0x12
	.uleb128 0x13
	.string	"j"
	.byte	0x1
	.byte	0x81
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46a
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0x30
	.4byte	0x354
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0x30
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x1199
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3e
	.4byte	0xb6
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b3
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3e
	.4byte	0x354
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3e
	.4byte	0xb6
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x11a2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x37c
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x535
	.uleb128 0x1b
	.4byte	0x38c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	0x397
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	0x3ad
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x3b8
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	0x3c3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1e
	.4byte	0x3ce
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	0x3d9
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	0x3ef
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	0x3fa
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	0x3a2
	.byte	0
	.uleb128 0x20
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.uleb128 0x1e
	.4byte	0x406
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.byte	0x88
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58c
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x88
	.4byte	0x354
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x88
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x88
	.4byte	0xc1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x11ad
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8f
	.4byte	0xc1
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5eb
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x8f
	.4byte	0x2f5
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8f
	.4byte	0xc1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x1
	.byte	0x8f
	.4byte	0x5eb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x91
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0x92
	.4byte	0xc1
	.4byte	.LLST13
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa3
	.4byte	0xcc
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x643
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa3
	.4byte	0xd9
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa3
	.4byte	0xc1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.4byte	0xb6
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa6
	.4byte	0xb6
	.4byte	.LLST16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF91
	.byte	0x1
	.byte	0xc2
	.4byte	0x93
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc2
	.4byte	0xd9
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc2
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0xc5
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.4byte	.LLST20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x22
	.4byte	.LASF92
	.byte	0x1
	.byte	0xdf
	.4byte	0x93
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x718
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0xdf
	.4byte	0xd9
	.4byte	.LLST21
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xdf
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xe1
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe2
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0xe3
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.byte	0xe4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x10f
	.4byte	0xb6
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x27
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x10f
	.4byte	0xd9
	.4byte	.LLST25
	.uleb128 0x28
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x10f
	.4byte	0xc1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x2b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x118
	.4byte	0x25
	.4byte	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x14d
	.4byte	0x376
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x957
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x14d
	.4byte	0x354
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x14d
	.4byte	0x957
	.4byte	.LLST29
	.uleb128 0x2b
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x152
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x2b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x15c
	.4byte	0x93
	.4byte	.LLST31
	.uleb128 0x2b
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x15f
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x2b
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x16f
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x2c
	.4byte	0x338
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x150
	.4byte	0x80d
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST34
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.2byte	0x15a
	.4byte	0x82b
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST35
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.2byte	0x17a
	.4byte	0x849
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST36
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL123
	.4byte	0x1199
	.4byte	0x86b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL129
	.4byte	0x11b6
	.4byte	0x87f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL130
	.4byte	0x411
	.4byte	0x899
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL134
	.4byte	0x11b6
	.4byte	0x8ad
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL135
	.4byte	0x411
	.4byte	0x8c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL138
	.4byte	0x411
	.4byte	0x8db
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL141
	.4byte	0x11b6
	.4byte	0x8ef
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL142
	.4byte	0x411
	.4byte	0x909
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL146
	.4byte	0x11b6
	.4byte	0x91d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL147
	.4byte	0x411
	.4byte	0x937
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL150
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29f
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x376
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x354
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xa0
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x2f
	.string	"qos"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x9fe
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST40
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xa1c
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST41
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xa3a
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST42
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL156
	.4byte	0x11b6
	.4byte	0xa4e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL157
	.4byte	0x411
	.4byte	0xa68
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL161
	.4byte	0x46a
	.4byte	0xa81
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL164
	.4byte	0x1199
	.4byte	0xa95
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL167
	.4byte	0x1199
	.4byte	0xaaf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL169
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x376
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb83
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x354
	.4byte	.LLST43
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xb6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xb27
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST44
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xb45
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST45
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL173
	.4byte	0x46a
	.4byte	0xb63
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL176
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x376
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc36
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x354
	.4byte	.LLST46
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xb6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xbd9
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST47
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xbf7
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST48
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL180
	.4byte	0x46a
	.4byte	0xc15
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL183
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1de
	.4byte	0x376
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce8
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1de
	.4byte	0x354
	.4byte	.LLST49
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xc8c
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST50
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.2byte	0x1e2
	.4byte	0xcaa
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST51
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL187
	.4byte	0x46a
	.4byte	0xcc8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL190
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x376
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9a
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x354
	.4byte	.LLST52
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xb6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0x1
	.2byte	0x1e9
	.4byte	0xd3e
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST53
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.byte	0x1
	.2byte	0x1eb
	.4byte	0xd5c
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST54
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL194
	.4byte	0x46a
	.4byte	0xd7a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL197
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x376
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecf
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x354
	.4byte	.LLST55
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xa0
	.4byte	.LLST56
	.uleb128 0x2f
	.string	"qos"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xe0e
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST57
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.byte	0x1
	.2byte	0x1f5
	.4byte	0xe2c
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST58
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.byte	0x1
	.2byte	0x1f9
	.4byte	0xe4a
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST59
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.2byte	0x1fd
	.4byte	0xe68
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST60
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL204
	.4byte	0x46a
	.4byte	0xe81
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL208
	.4byte	0x11b6
	.4byte	0xe95
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL209
	.4byte	0x411
	.4byte	0xeaf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL213
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x208
	.4byte	0x376
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd8
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x208
	.4byte	0x354
	.4byte	.LLST61
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x208
	.4byte	0xa0
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x208
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	0x338
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.2byte	0x20a
	.4byte	0xf35
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST63
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.byte	0x1
	.2byte	0x211
	.4byte	0xf53
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST64
	.byte	0
	.uleb128 0x2d
	.4byte	0x35a
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.byte	0x1
	.2byte	0x215
	.4byte	0xf71
	.uleb128 0x1c
	.4byte	0x36a
	.4byte	.LLST65
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL219
	.4byte	0x46a
	.4byte	0xf8a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL223
	.4byte	0x11b6
	.4byte	0xf9e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL224
	.4byte	0x411
	.4byte	0xfb8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL228
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x21b
	.4byte	0x376
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1040
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x21b
	.4byte	0x354
	.4byte	.LLST66
	.uleb128 0x2c
	.4byte	0x338
	.4byte	.LBB136
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x21d
	.4byte	0x1020
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST67
	.byte	0
	.uleb128 0x18
	.4byte	.LVL232
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x221
	.4byte	0x376
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a8
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x221
	.4byte	0x354
	.4byte	.LLST68
	.uleb128 0x2c
	.4byte	0x338
	.4byte	.LBB140
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x223
	.4byte	0x1088
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST69
	.byte	0
	.uleb128 0x18
	.4byte	.LVL236
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x227
	.4byte	0x376
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1110
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x227
	.4byte	0x354
	.4byte	.LLST70
	.uleb128 0x2c
	.4byte	0x338
	.4byte	.LBB144
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x229
	.4byte	0x10f0
	.uleb128 0x1c
	.4byte	0x348
	.4byte	.LLST71
	.byte	0
	.uleb128 0x18
	.4byte	.LVL240
	.4byte	0x4b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x231
	.4byte	0x25
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1199
	.uleb128 0x27
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x231
	.4byte	0xd9
	.4byte	.LLST72
	.uleb128 0x28
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x231
	.4byte	0xc1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"qos"
	.byte	0x1
	.2byte	0x233
	.4byte	0x25
	.uleb128 0x30
	.string	"dup"
	.byte	0x1
	.2byte	0x233
	.4byte	0x25
	.uleb128 0x2d
	.4byte	0x2d9
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.byte	0x1
	.2byte	0x238
	.4byte	0x117e
	.uleb128 0x1c
	.4byte	0x2e9
	.4byte	.LLST73
	.byte	0
	.uleb128 0x31
	.4byte	0x31c
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.2byte	0x249
	.uleb128 0x1c
	.4byte	0x32c
	.4byte	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF114
	.4byte	.LASF114
	.uleb128 0x33
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x6
	.byte	0x1b
	.uleb128 0x32
	.4byte	.LASF115
	.4byte	.LASF115
	.uleb128 0x33
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x7
	.byte	0x21
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x7b
	.sleb128 -127
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x34
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x34
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE81
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x79
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x13
	.byte	0x7b
	.sleb128 -1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL97
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL115
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL115
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL123-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x78
	.sleb128 -5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL121
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL133
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL116
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL152
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL152
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL168
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL153
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL171
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL172
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL178
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL179
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL185
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL192
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL193
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL199
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL210
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL200
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL215
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL215
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LFE72
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL216
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL237
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL237
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL239
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL244
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL244
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	0
	.4byte	0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	0
	.4byte	0
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB139
	.4byte	.LBE139
	.4byte	0
	.4byte	0
	.4byte	.LBB140
	.4byte	.LBE140
	.4byte	.LBB143
	.4byte	.LBE143
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	0
	.4byte	0
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"mqtt_get_total_length"
.LASF30:
	.string	"MQTT_MSG_TYPE_SUBACK"
.LASF68:
	.string	"mqtt_get_type"
.LASF111:
	.string	"mqtt_msg_pingresp"
.LASF83:
	.string	"string"
.LASF5:
	.string	"__uint8_t"
.LASF76:
	.string	"retain"
.LASF105:
	.string	"mqtt_msg_pubrec"
.LASF75:
	.string	"type"
.LASF51:
	.string	"password"
.LASF106:
	.string	"mqtt_msg_pubrel"
.LASF38:
	.string	"fragmented_msg_total_length"
.LASF9:
	.string	"long long unsigned int"
.LASF87:
	.string	"totlen"
.LASF54:
	.string	"keepalive"
.LASF58:
	.string	"clean_session"
.LASF28:
	.string	"MQTT_MSG_TYPE_PUBCOMP"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF46:
	.string	"buffer_length"
.LASF71:
	.string	"init_message"
.LASF20:
	.string	"MQTT_PROTOCOL_V_3_1_1"
.LASF119:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mqtt/esp-mqtt/lib/mqtt_msg.c"
.LASF47:
	.string	"mqtt_connection_t"
.LASF10:
	.string	"long int"
.LASF60:
	.string	"mqtt_connect_info_t"
.LASF102:
	.string	"topic"
.LASF63:
	.string	"MQTT_CONNECT_FLAG_USERNAME"
.LASF112:
	.string	"mqtt_msg_disconnect"
.LASF120:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mqtt"
.LASF114:
	.string	"memcpy"
.LASF92:
	.string	"mqtt_get_publish_data"
.LASF15:
	.string	"uint16_t"
.LASF121:
	.string	"mqtt_msg_init"
.LASF33:
	.string	"MQTT_MSG_TYPE_PINGREQ"
.LASF79:
	.string	"encoded_length"
.LASF7:
	.string	"__uint32_t"
.LASF89:
	.string	"mqtt_header_complete"
.LASF49:
	.string	"client_id"
.LASF81:
	.string	"len_bytes"
.LASF39:
	.string	"fragmented_msg_data_offset"
.LASF77:
	.string	"message_length"
.LASF0:
	.string	"unsigned int"
.LASF84:
	.string	"append_string"
.LASF117:
	.string	"strlen"
.LASF12:
	.string	"long unsigned int"
.LASF42:
	.string	"mqtt_connection"
.LASF85:
	.string	"append_message_id"
.LASF52:
	.string	"will_topic"
.LASF44:
	.string	"message_id"
.LASF108:
	.string	"mqtt_msg_subscribe"
.LASF118:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF86:
	.string	"fixed_size_len"
.LASF72:
	.string	"connection"
.LASF1:
	.string	"short unsigned int"
.LASF99:
	.string	"header_idx"
.LASF95:
	.string	"mqtt_msg_connect"
.LASF109:
	.string	"mqtt_msg_unsubscribe"
.LASF59:
	.string	"protocol_ver"
.LASF56:
	.string	"will_qos"
.LASF40:
	.string	"mqtt_message_t"
.LASF50:
	.string	"username"
.LASF18:
	.string	"MQTT_PROTOCOL_UNDEFINED"
.LASF48:
	.string	"mqtt_connect_info"
.LASF82:
	.string	"offs"
.LASF90:
	.string	"topiclen"
.LASF101:
	.string	"mqtt_msg_publish"
.LASF62:
	.string	"mqtt_connect_flag"
.LASF35:
	.string	"MQTT_MSG_TYPE_DISCONNECT"
.LASF55:
	.string	"will_length"
.LASF11:
	.string	"sizetype"
.LASF25:
	.string	"MQTT_MSG_TYPE_PUBACK"
.LASF64:
	.string	"MQTT_CONNECT_FLAG_PASSWORD"
.LASF57:
	.string	"will_retain"
.LASF43:
	.string	"message"
.LASF74:
	.string	"fini_message"
.LASF107:
	.string	"mqtt_msg_pubcomp"
.LASF103:
	.string	"data_length"
.LASF70:
	.string	"mqtt_get_qos"
.LASF23:
	.string	"MQTT_MSG_TYPE_CONNACK"
.LASF17:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF91:
	.string	"mqtt_get_publish_topic"
.LASF4:
	.string	"short int"
.LASF96:
	.string	"info"
.LASF41:
	.string	"mqtt_message"
.LASF26:
	.string	"MQTT_MSG_TYPE_PUBREC"
.LASF66:
	.string	"MQTT_CONNECT_FLAG_WILL"
.LASF116:
	.string	"platform_random"
.LASF29:
	.string	"MQTT_MSG_TYPE_SUBSCRIBE"
.LASF27:
	.string	"MQTT_MSG_TYPE_PUBREL"
.LASF19:
	.string	"MQTT_PROTOCOL_V_3_1"
.LASF32:
	.string	"MQTT_MSG_TYPE_UNSUBACK"
.LASF93:
	.string	"blength"
.LASF16:
	.string	"uint32_t"
.LASF110:
	.string	"mqtt_msg_pingreq"
.LASF94:
	.string	"mqtt_get_id"
.LASF13:
	.string	"char"
.LASF37:
	.string	"length"
.LASF69:
	.string	"mqtt_get_dup"
.LASF34:
	.string	"MQTT_MSG_TYPE_PINGRESP"
.LASF6:
	.string	"__uint16_t"
.LASF113:
	.string	"mqtt_has_valid_msg_hdr"
.LASF45:
	.string	"buffer"
.LASF36:
	.string	"data"
.LASF73:
	.string	"fail_message"
.LASF53:
	.string	"will_message"
.LASF65:
	.string	"MQTT_CONNECT_FLAG_WILL_RETAIN"
.LASF115:
	.string	"memset"
.LASF104:
	.string	"mqtt_msg_puback"
.LASF80:
	.string	"encoded_lens"
.LASF14:
	.string	"uint8_t"
.LASF100:
	.string	"flags_offset"
.LASF61:
	.string	"mqtt_message_type"
.LASF21:
	.string	"esp_mqtt_protocol_ver_t"
.LASF78:
	.string	"total_length"
.LASF22:
	.string	"MQTT_MSG_TYPE_CONNECT"
.LASF98:
	.string	"variable_header"
.LASF67:
	.string	"MQTT_CONNECT_FLAG_CLEAN_SESSION"
.LASF97:
	.string	"header_len"
.LASF24:
	.string	"MQTT_MSG_TYPE_PUBLISH"
.LASF31:
	.string	"MQTT_MSG_TYPE_UNSUBSCRIBE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
