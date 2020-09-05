	.file	"bta_gatts_api.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"BT_APPL"
.LC3:
	.string	"\033[0;33mW (%d) %s: GATTS Module not enabled/already disabled\033[0m\n"
	.section	.text.BTA_GATTS_Disable,"ax",@progbits
	.literal_position
	.literal .LC0, appl_trace_level
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, 8209
	.align	4
	.global	BTA_GATTS_Disable
	.type	BTA_GATTS_Disable, @function
BTA_GATTS_Disable:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gatts_api.c"
	.loc 1 56 0
	entry	sp, 32
.LCFI0:
	.loc 1 59 0
	movi.n	a10, 0x20
	call8	bta_sys_is_register
.LVL0:
	bnez.n	a10, .L2
	.loc 1 60 0
	l32r	a8, .LC0
	l8ui	a8, a8, 0
	bltui	a8, 2, .L1
	.loc 1 60 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL2:
	retw.n
.L2:
.LBB4:
.LBB5:
	.loc 1 64 0 is_stmt 1
	movi.n	a10, 8
	call8	malloc
.LVL3:
	beqz.n	a10, .L4
	.loc 1 65 0
	l32r	a2, .LC5
	s16i	a2, a10, 0
	.loc 1 66 0
	call8	bta_sys_sendmsg
.LVL4:
.L4:
	.loc 1 68 0
	movi.n	a10, 0x20
	call8	bta_sys_deregister
.LVL5:
.L1:
	retw.n
.LBE5:
.LBE4:
.LFE39:
	.size	BTA_GATTS_Disable, .-BTA_GATTS_Disable
	.section	.text.BTA_GATTS_AppRegister,"ax",@progbits
	.literal_position
	.literal .LC6, bta_gatts_reg
	.literal .LC7, 8192
	.align	4
	.global	BTA_GATTS_AppRegister
	.type	BTA_GATTS_AppRegister, @function
BTA_GATTS_AppRegister:
.LFB40:
	.loc 1 86 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 90 0
	movi.n	a10, 0x20
	call8	bta_sys_is_register
.LVL7:
	bnez.n	a10, .L9
	.loc 1 91 0
	l32r	a11, .LC6
	movi.n	a10, 0x20
	call8	bta_sys_register
.LVL8:
.L9:
	.loc 1 94 0
	movi.n	a10, 0x20
	call8	malloc
.LVL9:
	mov.n	a4, a10
.LVL10:
	beqz.n	a10, .L8
	.loc 1 95 0
	l32r	a5, .LC7
	s16i	a5, a10, 0
	.loc 1 97 0
	beqz.n	a2, .L11
	.loc 1 98 0
	movi.n	a12, 0x14
	mov.n	a11, a2
	addi.n	a10, a10, 8
	call8	memcpy
.LVL11:
.L11:
	.loc 1 100 0
	s32i.n	a3, a4, 28
	.loc 1 102 0
	mov.n	a10, a4
	call8	bta_sys_sendmsg
.LVL12:
.L8:
	retw.n
.LFE40:
	.size	BTA_GATTS_AppRegister, .-BTA_GATTS_AppRegister
	.section	.text.BTA_GATTS_AppDeregister,"ax",@progbits
	.literal_position
	.literal .LC8, 8194
	.align	4
	.global	BTA_GATTS_AppDeregister
	.type	BTA_GATTS_AppDeregister, @function
BTA_GATTS_AppDeregister:
.LFB41:
	.loc 1 121 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 124 0
	movi.n	a10, 0xa
	.loc 1 121 0
	extui	a2, a2, 0, 8
	.loc 1 124 0
	call8	malloc
.LVL14:
	beqz.n	a10, .L18
	.loc 1 125 0
	l32r	a3, .LC8
	.loc 1 126 0
	s8i	a2, a10, 8
	.loc 1 125 0
	s16i	a3, a10, 0
	.loc 1 128 0
	call8	bta_sys_sendmsg
.LVL15:
.L18:
	retw.n
.LFE41:
	.size	BTA_GATTS_AppDeregister, .-BTA_GATTS_AppDeregister
	.section	.text.BTA_GATTS_CreateService,"ax",@progbits
	.literal_position
	.literal .LC9, 8195
	.align	4
	.global	BTA_GATTS_CreateService
	.type	BTA_GATTS_CreateService, @function
BTA_GATTS_CreateService:
.LFB42:
	.loc 1 154 0
.LVL16:
	entry	sp, 32
.LCFI3:
	.loc 1 157 0
	movi.n	a10, 0x24
	call8	malloc
.LVL17:
	.loc 1 154 0
	extui	a2, a2, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 16
	extui	a6, a6, 0, 8
	.loc 1 157 0
	mov.n	a7, a10
.LVL18:
	beqz.n	a10, .L23
	.loc 1 158 0
	l32r	a8, .LC9
	.loc 1 160 0
	s8i	a2, a10, 8
	.loc 1 158 0
	s16i	a8, a10, 0
	.loc 1 161 0
	s8i	a4, a10, 34
	.loc 1 162 0
	movi.n	a12, 0x14
	mov.n	a11, a3
	addi.n	a10, a10, 12
	call8	memcpy
.LVL19:
	.loc 1 166 0
	mov.n	a10, a7
	.loc 1 163 0
	s16i	a5, a7, 32
	.loc 1 164 0
	s8i	a6, a7, 35
	.loc 1 166 0
	call8	bta_sys_sendmsg
.LVL20:
.L23:
	retw.n
.LFE42:
	.size	BTA_GATTS_CreateService, .-BTA_GATTS_CreateService
	.section	.text.BTA_GATTS_AddIncludeService,"ax",@progbits
	.literal_position
	.literal .LC10, 8197
	.align	4
	.global	BTA_GATTS_AddIncludeService
	.type	BTA_GATTS_AddIncludeService, @function
BTA_GATTS_AddIncludeService:
.LFB43:
	.loc 1 186 0
.LVL21:
	entry	sp, 32
.LCFI4:
	.loc 1 189 0
	movi.n	a10, 0xa
	.loc 1 186 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	.loc 1 189 0
	call8	malloc
.LVL22:
	beqz.n	a10, .L28
	.loc 1 192 0
	l32r	a4, .LC10
	.loc 1 194 0
	s16i	a2, a10, 6
	.loc 1 192 0
	s16i	a4, a10, 0
	.loc 1 195 0
	s16i	a3, a10, 8
	.loc 1 197 0
	call8	bta_sys_sendmsg
.LVL23:
.L28:
	retw.n
.LFE43:
	.size	BTA_GATTS_AddIncludeService, .-BTA_GATTS_AddIncludeService
	.section	.text.BTA_GATTS_AddCharacteristic,"ax",@progbits
	.literal_position
	.literal .LC11, 8198
	.align	4
	.global	BTA_GATTS_AddCharacteristic
	.type	BTA_GATTS_AddCharacteristic, @function
BTA_GATTS_AddCharacteristic:
.LFB44:
	.loc 1 220 0
.LVL24:
	entry	sp, 48
.LCFI5:
.LVL25:
	.loc 1 220 0
	extui	a2, a2, 0, 16
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 4
	mov.n	a3, a6
.LVL26:
	extui	a4, a4, 0, 16
	extui	a5, a5, 0, 8
	.loc 1 222 0
	mov.n	a2, a6
.LVL27:
	.loc 1 223 0
	beqz.n	a6, .L34
	.loc 1 224 0
	l16ui	a2, a6, 2
.LVL28:
.L34:
	.loc 1 226 0
	movi.n	a10, 0x28
	call8	malloc
.LVL29:
	mov.n	a6, a10
.LVL30:
	beqz.n	a10, .L33
	.loc 1 227 0
	movi.n	a12, 0x28
	movi.n	a11, 0
	call8	memset
.LVL31:
	.loc 1 229 0
	l32r	a8, .LC11
	.loc 1 231 0
	s16i	a4, a6, 28
	.loc 1 229 0
	s16i	a8, a6, 0
	.loc 1 230 0
	l32i.n	a8, sp, 4
	.loc 1 232 0
	s8i	a5, a6, 30
	.loc 1 230 0
	s16i	a8, a6, 6
	.loc 1 233 0
	beqz.n	a7, .L36
	.loc 1 234 0
	l8ui	a4, a7, 0
.LVL32:
	s8i	a4, a6, 31
.L36:
	.loc 1 236 0
	beqz.n	a3, .L38
	.loc 1 239 0
	l16ui	a4, a3, 2
	.loc 1 240 0
	l16ui	a5, a3, 0
.LVL33:
	.loc 1 239 0
	s16i	a4, a6, 34
	.loc 1 240 0
	s16i	a5, a6, 32
	.loc 1 241 0
	mov.n	a10, a2
	call8	malloc
.LVL34:
	s32i.n	a10, a6, 36
	.loc 1 242 0
	beqz.n	a10, .L38
	.loc 1 243 0
	l32i.n	a11, a3, 4
	mov.n	a12, a4
	call8	memcpy
.LVL35:
.L38:
	.loc 1 247 0
	l32i.n	a8, sp, 0
	beqz.n	a8, .L40
	.loc 1 248 0
	movi.n	a12, 0x14
	mov.n	a11, a8
	addi.n	a10, a6, 8
	call8	memcpy
.LVL36:
.L40:
	.loc 1 250 0
	mov.n	a10, a6
	call8	bta_sys_sendmsg
.LVL37:
.L33:
	retw.n
.LFE44:
	.size	BTA_GATTS_AddCharacteristic, .-BTA_GATTS_AddCharacteristic
	.section	.rodata.str1.1
.LC16:
	.string	"\033[0;31mE (%d) %s: Allocate fail for %s\n\033[0m\n"
	.section	.text.BTA_GATTS_AddCharDescriptor,"ax",@progbits
	.literal_position
	.literal .LC12, 8199
	.literal .LC13, appl_trace_level
	.literal .LC14, __func__$10043
	.literal .LC15, .LC1
	.literal .LC17, .LC16
	.align	4
	.global	BTA_GATTS_AddCharDescriptor
	.type	BTA_GATTS_AddCharDescriptor, @function
BTA_GATTS_AddCharDescriptor:
.LFB45:
	.loc 1 275 0
.LVL38:
	entry	sp, 32
.LCFI6:
.LVL39:
	.loc 1 279 0
	movi.n	a10, 0x28
	call8	malloc
.LVL40:
	.loc 1 275 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	.loc 1 279 0
	mov.n	a7, a10
.LVL41:
	beqz.n	a10, .L54
	.loc 1 280 0
	movi.n	a12, 0x28
	movi.n	a11, 0
	call8	memset
.LVL42:
	.loc 1 282 0
	l32r	a8, .LC12
	.loc 1 283 0
	s16i	a2, a7, 6
	.loc 1 282 0
	s16i	a8, a7, 0
	.loc 1 284 0
	s16i	a3, a7, 28
	.loc 1 286 0
	beqz.n	a6, .L56
	.loc 1 287 0
	l8ui	a6, a6, 0
.LVL43:
	s8i	a6, a7, 30
.L56:
	.loc 1 290 0
	beqz.n	a4, .L57
	.loc 1 291 0
	movi.n	a12, 0x14
	mov.n	a11, a4
	addi.n	a10, a7, 8
	call8	memcpy
.LVL44:
.L57:
	.loc 1 294 0
	beqz.n	a5, .L59
	.loc 1 295 0
	l16ui	a4, a5, 2
.LVL45:
	.loc 1 296 0
	l16ui	a6, a5, 0
	.loc 1 295 0
	s16i	a4, a7, 34
	.loc 1 296 0
	s16i	a6, a7, 32
.LVL46:
	.loc 1 298 0
	beqz.n	a4, .L59
	.loc 1 299 0
	mov.n	a10, a4
	call8	malloc
.LVL47:
	s32i.n	a10, a7, 36
	.loc 1 300 0
	beqz.n	a10, .L61
	.loc 1 301 0
	l32i.n	a11, a5, 4
	mov.n	a12, a4
	call8	memcpy
.LVL48:
	j	.L59
.L61:
	.loc 1 304 0
	l32r	a4, .LC13
.LVL49:
	l8ui	a4, a4, 0
	beqz.n	a4, .L59
	.loc 1 304 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC15
	l32r	a15, .LC14
	l32r	a12, .LC17
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
.L59:
	.loc 1 310 0 is_stmt 1
	mov.n	a10, a7
	call8	bta_sys_sendmsg
.LVL52:
.L54:
	retw.n
.LFE45:
	.size	BTA_GATTS_AddCharDescriptor, .-BTA_GATTS_AddCharDescriptor
	.section	.text.BTA_GATTS_DeleteService,"ax",@progbits
	.literal_position
	.literal .LC18, 8200
	.align	4
	.global	BTA_GATTS_DeleteService
	.type	BTA_GATTS_DeleteService, @function
BTA_GATTS_DeleteService:
.LFB46:
	.loc 1 329 0
.LVL53:
	entry	sp, 32
.LCFI7:
	.loc 1 332 0
	movi.n	a10, 8
	.loc 1 329 0
	extui	a2, a2, 0, 16
	.loc 1 332 0
	call8	malloc
.LVL54:
	beqz.n	a10, .L77
	.loc 1 333 0
	l32r	a3, .LC18
	.loc 1 335 0
	s16i	a2, a10, 6
	.loc 1 333 0
	s16i	a3, a10, 0
	.loc 1 337 0
	call8	bta_sys_sendmsg
.LVL55:
.L77:
	retw.n
.LFE46:
	.size	BTA_GATTS_DeleteService, .-BTA_GATTS_DeleteService
	.section	.text.BTA_GATTS_StartService,"ax",@progbits
	.literal_position
	.literal .LC19, 8201
	.align	4
	.global	BTA_GATTS_StartService
	.type	BTA_GATTS_StartService, @function
BTA_GATTS_StartService:
.LFB47:
	.loc 1 356 0
.LVL56:
	entry	sp, 32
.LCFI8:
	.loc 1 359 0
	movi.n	a10, 0xa
	.loc 1 356 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 8
	.loc 1 359 0
	call8	malloc
.LVL57:
	beqz.n	a10, .L82
	.loc 1 360 0
	l32r	a4, .LC19
	.loc 1 362 0
	s16i	a2, a10, 6
	.loc 1 360 0
	s16i	a4, a10, 0
	.loc 1 363 0
	s8i	a3, a10, 8
	.loc 1 365 0
	call8	bta_sys_sendmsg
.LVL58:
.L82:
	retw.n
.LFE47:
	.size	BTA_GATTS_StartService, .-BTA_GATTS_StartService
	.section	.text.BTA_GATTS_StopService,"ax",@progbits
	.literal_position
	.literal .LC20, 8202
	.align	4
	.global	BTA_GATTS_StopService
	.type	BTA_GATTS_StopService, @function
BTA_GATTS_StopService:
.LFB48:
	.loc 1 382 0
.LVL59:
	entry	sp, 32
.LCFI9:
	.loc 1 385 0
	movi.n	a10, 8
	.loc 1 382 0
	extui	a2, a2, 0, 16
	.loc 1 385 0
	call8	malloc
.LVL60:
	beqz.n	a10, .L87
	.loc 1 386 0
	l32r	a3, .LC20
	.loc 1 388 0
	s16i	a2, a10, 6
	.loc 1 386 0
	s16i	a3, a10, 0
	.loc 1 390 0
	call8	bta_sys_sendmsg
.LVL61:
.L87:
	retw.n
.LFE48:
	.size	BTA_GATTS_StopService, .-BTA_GATTS_StopService
	.section	.text.BTA_GATTS_HandleValueIndication,"ax",@progbits
	.literal_position
	.literal .LC21, 8196
	.align	4
	.global	BTA_GATTS_HandleValueIndication
	.type	BTA_GATTS_HandleValueIndication, @function
BTA_GATTS_HandleValueIndication:
.LFB49:
	.loc 1 412 0
.LVL62:
	entry	sp, 32
.LCFI10:
.LVL63:
	.loc 1 416 0
	movi	a10, 0x266
	call8	malloc
.LVL64:
	.loc 1 412 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 16
	extui	a6, a6, 0, 8
	.loc 1 416 0
	mov.n	a7, a10
.LVL65:
	beqz.n	a10, .L92
	.loc 1 417 0
	movi	a12, 0x266
	movi.n	a11, 0
	call8	memset
.LVL66:
	.loc 1 419 0
	l32r	a8, .LC21
	.loc 1 420 0
	s16i	a2, a7, 6
	.loc 1 419 0
	s16i	a8, a7, 0
	.loc 1 421 0
	s16i	a3, a7, 8
	.loc 1 422 0
	s8i	a6, a7, 12
	.loc 1 424 0
	beqz.n	a4, .L94
	beqz.n	a5, .L94
	.loc 1 425 0
	s16i	a4, a7, 10
	.loc 1 426 0
	mov.n	a12, a4
	mov.n	a11, a5
	addi.n	a10, a7, 13
	call8	memcpy
.LVL67:
.L94:
	.loc 1 429 0
	mov.n	a10, a7
	call8	bta_sys_sendmsg
.LVL68:
.L92:
	retw.n
.LFE49:
	.size	BTA_GATTS_HandleValueIndication, .-BTA_GATTS_HandleValueIndication
	.section	.text.BTA_GATTS_SendRsp,"ax",@progbits
	.literal_position
	.literal .LC22, 8203
	.align	4
	.global	BTA_GATTS_SendRsp
	.type	BTA_GATTS_SendRsp, @function
BTA_GATTS_SendRsp:
.LFB50:
	.loc 1 450 0
.LVL69:
	entry	sp, 32
.LCFI11:
.LVL70:
	.loc 1 454 0
	movi	a10, 0x276
	call8	malloc
.LVL71:
	.loc 1 450 0
	extui	a2, a2, 0, 16
	extui	a4, a4, 0, 8
	.loc 1 454 0
	mov.n	a6, a10
.LVL72:
	beqz.n	a10, .L104
	.loc 1 455 0
	movi	a12, 0x276
	movi.n	a11, 0
	call8	memset
.LVL73:
	.loc 1 457 0
	l32r	a8, .LC22
	.loc 1 458 0
	s16i	a2, a6, 6
	.loc 1 457 0
	s16i	a8, a6, 0
	.loc 1 459 0
	s32i.n	a3, a6, 8
	.loc 1 460 0
	s8i	a4, a6, 12
	.loc 1 462 0
	beqz.n	a5, .L106
	.loc 1 463 0
	addi	a10, a6, 20
	s32i.n	a10, a6, 16
	.loc 1 464 0
	movi	a12, 0x262
	mov.n	a11, a5
	call8	memcpy
.LVL74:
.L106:
	.loc 1 467 0
	mov.n	a10, a6
	call8	bta_sys_sendmsg
.LVL75:
.L104:
	retw.n
.LFE50:
	.size	BTA_GATTS_SendRsp, .-BTA_GATTS_SendRsp
	.section	.text.BTA_SetAttributeValue,"ax",@progbits
	.literal_position
	.literal .LC23, 8204
	.align	4
	.global	BTA_SetAttributeValue
	.type	BTA_SetAttributeValue, @function
BTA_SetAttributeValue:
.LFB51:
	.loc 1 475 0
.LVL76:
	entry	sp, 32
.LCFI12:
.LVL77:
	.loc 1 478 0
	movi.n	a10, 0x10
	call8	malloc
.LVL78:
	.loc 1 475 0
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	.loc 1 478 0
	mov.n	a5, a10
.LVL79:
	beqz.n	a10, .L113
	.loc 1 480 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	call8	memset
.LVL80:
	.loc 1 481 0
	l32r	a6, .LC23
	.loc 1 482 0
	s16i	a2, a5, 6
	.loc 1 481 0
	s16i	a6, a5, 0
	.loc 1 483 0
	s16i	a3, a5, 8
	.loc 1 484 0
	beqz.n	a4, .L116
	.loc 1 485 0
	mov.n	a10, a3
	call8	malloc
.LVL81:
	s32i.n	a10, a5, 12
	beqz.n	a10, .L116
	.loc 1 486 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	memcpy
.LVL82:
.L116:
	.loc 1 490 0
	mov.n	a10, a5
	call8	bta_sys_sendmsg
.LVL83:
.L113:
	retw.n
.LFE51:
	.size	BTA_SetAttributeValue, .-BTA_SetAttributeValue
	.section	.text.BTA_GetAttributeValue,"ax",@progbits
	.align	4
	.global	BTA_GetAttributeValue
	.type	BTA_GetAttributeValue, @function
BTA_GetAttributeValue:
.LFB52:
	.loc 1 496 0
.LVL84:
	entry	sp, 32
.LCFI13:
	.loc 1 497 0
	mov.n	a12, a4
	mov.n	a11, a3
	extui	a10, a2, 0, 16
	call8	bta_gatts_get_attr_value
.LVL85:
	.loc 1 498 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LFE52:
	.size	BTA_GetAttributeValue, .-BTA_GetAttributeValue
	.section	.text.BTA_GATTS_Open,"ax",@progbits
	.literal_position
	.literal .LC24, 8205
	.align	4
	.global	BTA_GATTS_Open
	.type	BTA_GATTS_Open, @function
BTA_GATTS_Open:
.LFB53:
	.loc 1 517 0
.LVL87:
	entry	sp, 32
.LCFI14:
	.loc 1 520 0
	movi.n	a10, 0x12
	call8	malloc
.LVL88:
	.loc 1 517 0
	extui	a2, a2, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 520 0
	mov.n	a6, a10
.LVL89:
	beqz.n	a10, .L125
	.loc 1 521 0
	l32r	a8, .LC24
	.loc 1 522 0
	s8i	a2, a10, 14
	.loc 1 521 0
	s16i	a8, a10, 0
	.loc 1 523 0
	s8i	a4, a10, 15
	.loc 1 524 0
	s8i	a5, a10, 16
	.loc 1 525 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, a10, 8
	call8	memcpy
.LVL90:
	.loc 1 527 0
	mov.n	a10, a6
	call8	bta_sys_sendmsg
.LVL91:
.L125:
	retw.n
.LFE53:
	.size	BTA_GATTS_Open, .-BTA_GATTS_Open
	.section	.text.BTA_GATTS_CancelOpen,"ax",@progbits
	.literal_position
	.literal .LC25, 8206
	.align	4
	.global	BTA_GATTS_CancelOpen
	.type	BTA_GATTS_CancelOpen, @function
BTA_GATTS_CancelOpen:
.LFB54:
	.loc 1 548 0
.LVL92:
	entry	sp, 32
.LCFI15:
	.loc 1 551 0
	movi.n	a10, 0x12
	call8	malloc
.LVL93:
	.loc 1 548 0
	extui	a2, a2, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 551 0
	mov.n	a5, a10
.LVL94:
	beqz.n	a10, .L130
	.loc 1 552 0
	l32r	a6, .LC25
	.loc 1 553 0
	s8i	a2, a10, 14
	.loc 1 552 0
	s16i	a6, a10, 0
	.loc 1 554 0
	s8i	a4, a10, 15
	.loc 1 555 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, a10, 8
	call8	memcpy
.LVL95:
	.loc 1 556 0
	mov.n	a10, a5
	call8	bta_sys_sendmsg
.LVL96:
.L130:
	retw.n
.LFE54:
	.size	BTA_GATTS_CancelOpen, .-BTA_GATTS_CancelOpen
	.section	.text.BTA_GATTS_Close,"ax",@progbits
	.literal_position
	.literal .LC26, 8207
	.align	4
	.global	BTA_GATTS_Close
	.type	BTA_GATTS_Close, @function
BTA_GATTS_Close:
.LFB55:
	.loc 1 573 0
.LVL97:
	entry	sp, 32
.LCFI16:
	.loc 1 576 0
	movi.n	a10, 8
	.loc 1 573 0
	extui	a2, a2, 0, 16
	.loc 1 576 0
	call8	malloc
.LVL98:
	beqz.n	a10, .L135
	.loc 1 577 0
	l32r	a3, .LC26
	.loc 1 578 0
	s16i	a2, a10, 6
	.loc 1 577 0
	s16i	a3, a10, 0
	.loc 1 579 0
	call8	bta_sys_sendmsg
.LVL99:
.L135:
	retw.n
.LFE55:
	.size	BTA_GATTS_Close, .-BTA_GATTS_Close
	.section	.text.BTA_GATTS_SendServiceChangeIndication,"ax",@progbits
	.literal_position
	.literal .LC27, 8210
	.align	4
	.global	BTA_GATTS_SendServiceChangeIndication
	.type	BTA_GATTS_SendServiceChangeIndication, @function
BTA_GATTS_SendServiceChangeIndication:
.LFB56:
	.loc 1 586 0
.LVL100:
	entry	sp, 32
.LCFI17:
	.loc 1 589 0
	movi.n	a10, 0x10
	call8	malloc
.LVL101:
	.loc 1 586 0
	extui	a2, a2, 0, 8
	.loc 1 589 0
	mov.n	a4, a10
.LVL102:
	beqz.n	a10, .L140
	.loc 1 590 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	call8	memset
.LVL103:
	.loc 1 591 0
	l32r	a5, .LC27
	.loc 1 592 0
	s8i	a2, a4, 8
	.loc 1 591 0
	s16i	a5, a4, 0
	.loc 1 593 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, a4, 9
	call8	memcpy
.LVL104:
	.loc 1 595 0
	mov.n	a10, a4
	call8	bta_sys_sendmsg
.LVL105:
.L140:
	retw.n
.LFE56:
	.size	BTA_GATTS_SendServiceChangeIndication, .-BTA_GATTS_SendServiceChangeIndication
	.section	.text.BTA_GATTS_Listen,"ax",@progbits
	.literal_position
	.literal .LC28, 8208
	.align	4
	.global	BTA_GATTS_Listen
	.type	BTA_GATTS_Listen, @function
BTA_GATTS_Listen:
.LFB57:
	.loc 1 617 0
.LVL106:
	entry	sp, 32
.LCFI18:
	.loc 1 620 0
	movi.n	a10, 0x16
	call8	malloc
.LVL107:
	.loc 1 617 0
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 620 0
	mov.n	a5, a10
.LVL108:
	beqz.n	a10, .L145
	.loc 1 621 0
	l32r	a6, .LC28
	.loc 1 623 0
	s8i	a2, a10, 12
	.loc 1 621 0
	s16i	a6, a10, 0
	.loc 1 624 0
	s8i	a3, a10, 13
	.loc 1 626 0
	beqz.n	a4, .L147
	.loc 1 627 0
	addi	a10, a10, 16
	s32i.n	a10, a5, 8
	.loc 1 628 0
	movi.n	a12, 6
	mov.n	a11, a4
	call8	memcpy
.LVL109:
	j	.L148
.L147:
	.loc 1 630 0
	s32i.n	a4, a10, 8
.L148:
	.loc 1 633 0
	mov.n	a10, a5
	call8	bta_sys_sendmsg
.LVL110:
.L145:
	retw.n
.LFE57:
	.size	BTA_GATTS_Listen, .-BTA_GATTS_Listen
	.section	.rodata.__func__$10043,"a",@progbits
	.type	__func__$10043, @object
	.size	__func__$10043, 28
__func__$10043:
	.string	"BTA_GATTS_AddCharDescriptor"
	.section	.rodata.bta_gatts_reg,"a",@progbits
	.align	4
	.type	bta_gatts_reg, @object
	.size	bta_gatts_reg, 8
bta_gatts_reg:
	.word	bta_gatts_hdl_event
	.word	BTA_GATTS_Disable
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI5-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI9-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI11-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI12-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI13-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI14-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI15-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI16-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI17-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI18-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_ble_api.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/gatt_api.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_gatt_api.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/include/bta_gatts_int.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bfa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0xc
	.4byte	.LASF268
	.4byte	.LASF269
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x1f
	.4byte	0xed
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1c
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x22
	.4byte	0x119
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x165
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0xc0
	.4byte	0x89
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0x89
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc2
	.4byte	0x89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc3
	.4byte	0x89
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0xc4
	.4byte	0x165
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x174
	.uleb128 0xc
	.4byte	0xa6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0xc5
	.4byte	0x120
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x12b
	.4byte	0x18b
	.uleb128 0xb
	.4byte	0xed
	.4byte	0x19b
	.uleb128 0xe
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x12c
	.4byte	0x1a7
	.uleb128 0xf
	.byte	0x4
	.4byte	0xed
	.uleb128 0xb
	.4byte	0xed
	.4byte	0x1bd
	.uleb128 0xe
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1eb
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x1a5
	.4byte	0xf8
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x1a6
	.4byte	0x103
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x1a7
	.4byte	0x1ad
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.byte	0x4
	.2byte	0x19d
	.4byte	0x20e
	.uleb128 0x13
	.string	"len"
	.byte	0x4
	.2byte	0x1a2
	.4byte	0xf8
	.byte	0
	.uleb128 0x13
	.string	"uu"
	.byte	0x4
	.2byte	0x1a8
	.4byte	0x1bd
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x1aa
	.4byte	0x1eb
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x26
	.4byte	0x225
	.uleb128 0x14
	.4byte	0x10e
	.4byte	0x234
	.uleb128 0x15
	.4byte	0x234
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x174
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x29
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x96
	.4byte	0x266
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x5
	.byte	0x97
	.4byte	0x266
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x5
	.byte	0x98
	.4byte	0x26c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x21a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x5
	.byte	0x99
	.4byte	0x245
	.uleb128 0x16
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x1c2
	.4byte	0x3a5
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x2e
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x6ec
	.4byte	0x3dd
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xf8
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x209
	.4byte	0xed
	.uleb128 0xf
	.byte	0x4
	.4byte	0x20e
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x139
	.4byte	0xed
	.uleb128 0x17
	.2byte	0x262
	.byte	0x9
	.2byte	0x13d
	.4byte	0x45a
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x13e
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x13f
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x140
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x13
	.string	"len"
	.byte	0x9
	.2byte	0x141
	.4byte	0xf8
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x142
	.4byte	0x3f5
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x143
	.4byte	0x45a
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	0xed
	.4byte	0x46b
	.uleb128 0x19
	.4byte	0xa6
	.2byte	0x257
	.byte	0
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x144
	.4byte	0x401
	.uleb128 0x12
	.byte	0x8
	.byte	0x9
	.2byte	0x146
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x147
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x148
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x149
	.4byte	0x1a7
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x14a
	.4byte	0x477
	.uleb128 0x12
	.byte	0x1
	.byte	0x9
	.2byte	0x14c
	.4byte	0x4cb
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x14d
	.4byte	0x7e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x14e
	.4byte	0x4b4
	.uleb128 0x1a
	.2byte	0x262
	.byte	0x9
	.2byte	0x156
	.4byte	0x4fa
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x158
	.4byte	0x46b
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x15a
	.4byte	0xf8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x15c
	.4byte	0x4d7
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x166
	.4byte	0xed
	.uleb128 0x12
	.byte	0x6
	.byte	0x9
	.2byte	0x169
	.4byte	0x550
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x16a
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x16b
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x16c
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x16d
	.4byte	0x10e
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x16e
	.4byte	0x512
	.uleb128 0x17
	.2byte	0x260
	.byte	0x9
	.2byte	0x171
	.4byte	0x5b7
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x172
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x173
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x13
	.string	"len"
	.byte	0x9
	.2byte	0x174
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x175
	.4byte	0x45a
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x176
	.4byte	0x10e
	.2byte	0x25e
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x177
	.4byte	0x10e
	.2byte	0x25f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x178
	.4byte	0x55c
	.uleb128 0x1a
	.2byte	0x260
	.byte	0x9
	.2byte	0x17b
	.4byte	0x60a
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x17c
	.4byte	0x550
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x17e
	.4byte	0x5b7
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x181
	.4byte	0xf8
	.uleb128 0x1c
	.string	"mtu"
	.byte	0x9
	.2byte	0x182
	.4byte	0xf8
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x183
	.4byte	0x506
	.byte	0
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x184
	.4byte	0x5c3
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xa
	.byte	0x8d
	.4byte	0xed
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xa
	.byte	0xf4
	.4byte	0xf8
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x1d5
	.4byte	0xed
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x1d6
	.4byte	0x3e3
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x1e2
	.4byte	0xf8
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x1e3
	.4byte	0x4a8
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x1e4
	.4byte	0x4cb
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x1f3
	.4byte	0xed
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x212
	.4byte	0xed
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x218
	.4byte	0x4fa
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x227
	.4byte	0x60a
	.uleb128 0x12
	.byte	0x1c
	.byte	0xa
	.2byte	0x229
	.4byte	0x70a
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x22a
	.4byte	0x616
	.byte	0
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x22b
	.4byte	0x17f
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x22c
	.4byte	0x103
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x22d
	.4byte	0xf8
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x22e
	.4byte	0xf8
	.byte	0xe
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x22f
	.4byte	0x70a
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x230
	.4byte	0xf8
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x231
	.4byte	0x1a7
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x68c
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x232
	.4byte	0x698
	.uleb128 0x12
	.byte	0x18
	.byte	0xa
	.2byte	0x234
	.4byte	0x74d
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x235
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x236
	.4byte	0x616
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x237
	.4byte	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x238
	.4byte	0x71c
	.uleb128 0x12
	.byte	0x1c
	.byte	0xa
	.2byte	0x23b
	.4byte	0x7b1
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x23c
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x23d
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x23e
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x23f
	.4byte	0x10e
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x240
	.4byte	0x616
	.byte	0x7
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x241
	.4byte	0x20e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x242
	.4byte	0x759
	.uleb128 0x12
	.byte	0x1c
	.byte	0xa
	.2byte	0x244
	.4byte	0x808
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x245
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x246
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x247
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x248
	.4byte	0x616
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x249
	.4byte	0x20e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x24a
	.4byte	0x7bd
	.uleb128 0x12
	.byte	0x8
	.byte	0xa
	.2byte	0x24b
	.4byte	0x852
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x24c
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x24d
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x24e
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x24f
	.4byte	0x616
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x250
	.4byte	0x814
	.uleb128 0x12
	.byte	0x6
	.byte	0xa
	.2byte	0x252
	.4byte	0x88f
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x253
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x254
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x255
	.4byte	0x616
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x256
	.4byte	0x85e
	.uleb128 0x12
	.byte	0xe
	.byte	0xa
	.2byte	0x259
	.4byte	0x8e6
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x25a
	.4byte	0x638
	.byte	0
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x25b
	.4byte	0x17f
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x25c
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x25d
	.4byte	0x621
	.byte	0xa
	.uleb128 0x18
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x25e
	.4byte	0x674
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x25f
	.4byte	0x89b
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.2byte	0x261
	.4byte	0x916
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x262
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x263
	.4byte	0x10e
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x264
	.4byte	0x8f2
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.2byte	0x266
	.4byte	0x946
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x267
	.4byte	0xf8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x268
	.4byte	0x616
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x269
	.4byte	0x922
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.2byte	0x26b
	.4byte	0x976
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x26c
	.4byte	0x616
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x26d
	.4byte	0xf8
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x26e
	.4byte	0x952
	.uleb128 0x12
	.byte	0x2
	.byte	0xa
	.2byte	0x270
	.4byte	0x9a6
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x271
	.4byte	0x616
	.byte	0
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x272
	.4byte	0x638
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x273
	.4byte	0x982
	.uleb128 0x12
	.byte	0x2
	.byte	0xa
	.2byte	0x275
	.4byte	0x9d6
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x276
	.4byte	0x616
	.byte	0
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x277
	.4byte	0x638
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x278
	.4byte	0x9b2
	.uleb128 0x12
	.byte	0x2
	.byte	0xa
	.2byte	0x27a
	.4byte	0xa06
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x27b
	.4byte	0x616
	.byte	0
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x27c
	.4byte	0x638
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x27d
	.4byte	0x9e2
	.uleb128 0x10
	.byte	0x1c
	.byte	0xa
	.2byte	0x27f
	.4byte	0xac4
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x280
	.4byte	0x74d
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x281
	.4byte	0x7b1
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x282
	.4byte	0x88f
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x283
	.4byte	0x616
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x284
	.4byte	0x808
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x287
	.4byte	0x852
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x288
	.4byte	0x710
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x289
	.4byte	0x8e6
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x28a
	.4byte	0x916
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x28b
	.4byte	0x946
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x28c
	.4byte	0x976
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x28d
	.4byte	0x9d6
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x28e
	.4byte	0xa06
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x28f
	.4byte	0x9a6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x291
	.4byte	0xa12
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x29f
	.4byte	0xadc
	.uleb128 0x1d
	.4byte	0xaec
	.uleb128 0x15
	.4byte	0x62c
	.uleb128 0x15
	.4byte	0xaec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xac4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x24
	.4byte	0xb84
	.uleb128 0x1e
	.4byte	.LASF176
	.2byte	0x2000
	.uleb128 0x1e
	.4byte	.LASF177
	.2byte	0x2001
	.uleb128 0x1e
	.4byte	.LASF178
	.2byte	0x2002
	.uleb128 0x1e
	.4byte	.LASF179
	.2byte	0x2003
	.uleb128 0x1e
	.4byte	.LASF180
	.2byte	0x2004
	.uleb128 0x1e
	.4byte	.LASF181
	.2byte	0x2005
	.uleb128 0x1e
	.4byte	.LASF182
	.2byte	0x2006
	.uleb128 0x1e
	.4byte	.LASF183
	.2byte	0x2007
	.uleb128 0x1e
	.4byte	.LASF184
	.2byte	0x2008
	.uleb128 0x1e
	.4byte	.LASF185
	.2byte	0x2009
	.uleb128 0x1e
	.4byte	.LASF186
	.2byte	0x200a
	.uleb128 0x1e
	.4byte	.LASF187
	.2byte	0x200b
	.uleb128 0x1e
	.4byte	.LASF188
	.2byte	0x200c
	.uleb128 0x1e
	.4byte	.LASF189
	.2byte	0x200d
	.uleb128 0x1e
	.4byte	.LASF190
	.2byte	0x200e
	.uleb128 0x1e
	.4byte	.LASF191
	.2byte	0x200f
	.uleb128 0x1e
	.4byte	.LASF192
	.2byte	0x2010
	.uleb128 0x1e
	.4byte	.LASF193
	.2byte	0x2011
	.uleb128 0x1e
	.4byte	.LASF194
	.2byte	0x2012
	.byte	0
	.uleb128 0x8
	.byte	0x20
	.byte	0xb
	.byte	0x43
	.4byte	0xbb1
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x44
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xb
	.byte	0x45
	.4byte	0x20e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xb
	.byte	0x46
	.4byte	0xbb1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xad0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0xb
	.byte	0x47
	.4byte	0xb84
	.uleb128 0x8
	.byte	0xa
	.byte	0xb
	.byte	0x49
	.4byte	0xbe3
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x4a
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xb
	.byte	0x4b
	.4byte	0x638
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0xb
	.byte	0x4c
	.4byte	0xbc2
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0xb
	.byte	0x4e
	.4byte	0xbe3
	.uleb128 0x8
	.byte	0x24
	.byte	0xb
	.byte	0x50
	.4byte	0xc4a
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x51
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xb
	.byte	0x52
	.4byte	0x638
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xb
	.byte	0x53
	.4byte	0x20e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xb
	.byte	0x54
	.4byte	0xf8
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xb
	.byte	0x55
	.4byte	0xed
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xb
	.byte	0x56
	.4byte	0x10e
	.byte	0x23
	.byte	0
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0xb
	.byte	0x58
	.4byte	0xbf9
	.uleb128 0x8
	.byte	0x28
	.byte	0xb
	.byte	0x5a
	.4byte	0xca6
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x5b
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0xb
	.byte	0x5c
	.4byte	0x20e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xb
	.byte	0x5d
	.4byte	0x644
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xb
	.byte	0x5e
	.4byte	0x668
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xb
	.byte	0x5f
	.4byte	0x65c
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xb
	.byte	0x60
	.4byte	0x650
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0xb
	.byte	0x61
	.4byte	0xc55
	.uleb128 0x8
	.byte	0xa
	.byte	0xb
	.byte	0x63
	.4byte	0xcd2
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x64
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xb
	.byte	0x65
	.4byte	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0xb
	.byte	0x66
	.4byte	0xcb1
	.uleb128 0x8
	.byte	0x28
	.byte	0xb
	.byte	0x68
	.4byte	0xd22
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x69
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xb
	.byte	0x6a
	.4byte	0x20e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xb
	.byte	0x6b
	.4byte	0x644
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xb
	.byte	0x6c
	.4byte	0x65c
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xb
	.byte	0x6d
	.4byte	0x650
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0xb
	.byte	0x6e
	.4byte	0xcdd
	.uleb128 0x1f
	.2byte	0x266
	.byte	0xb
	.byte	0x70
	.4byte	0xd73
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x71
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xb
	.byte	0x72
	.4byte	0xf8
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0xb
	.byte	0x73
	.4byte	0xf8
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xb
	.byte	0x74
	.4byte	0x10e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xb
	.byte	0x75
	.4byte	0x45a
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0xb
	.byte	0x76
	.4byte	0xd2d
	.uleb128 0x8
	.byte	0x14
	.byte	0xb
	.byte	0x78
	.4byte	0xdb7
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x79
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xb
	.byte	0x7a
	.4byte	0x103
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xb
	.byte	0x7b
	.4byte	0x616
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xb
	.byte	0x7c
	.4byte	0xdb7
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x680
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0xb
	.byte	0x7d
	.4byte	0xd7e
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x7f
	.4byte	0xdf5
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x80
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xb
	.byte	0x81
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xb
	.byte	0x82
	.4byte	0x1a7
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0xb
	.byte	0x83
	.4byte	0xdc8
	.uleb128 0x8
	.byte	0xa
	.byte	0xb
	.byte	0x85
	.4byte	0xe21
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x86
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xb
	.byte	0x87
	.4byte	0x674
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0xb
	.byte	0x88
	.4byte	0xe00
	.uleb128 0x8
	.byte	0x12
	.byte	0xb
	.byte	0x8b
	.4byte	0xe71
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x8c
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xb
	.byte	0x8d
	.4byte	0x17f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xb
	.byte	0x8e
	.4byte	0x638
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xb
	.byte	0x8f
	.4byte	0x10e
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xb
	.byte	0x90
	.4byte	0x674
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0xb
	.byte	0x92
	.4byte	0xe2c
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0xb
	.byte	0x94
	.4byte	0xe71
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x96
	.4byte	0xec0
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x97
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xb
	.byte	0x98
	.4byte	0x19b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xb
	.byte	0x99
	.4byte	0x638
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xb
	.byte	0x9a
	.4byte	0x10e
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF224
	.byte	0xb
	.byte	0x9b
	.4byte	0xe87
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x9d
	.4byte	0xef8
	.uleb128 0xa
	.string	"hdr"
	.byte	0xb
	.byte	0x9e
	.4byte	0x174
	.byte	0
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xb
	.byte	0x9f
	.4byte	0x638
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xb
	.byte	0xa0
	.4byte	0x17f
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF225
	.byte	0xb
	.byte	0xa1
	.4byte	0xecb
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0xf1b
	.uleb128 0x21
	.4byte	.LASF229
	.byte	0x1
	.byte	0x39
	.4byte	0x234
	.byte	0
	.uleb128 0x22
	.4byte	0xf03
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfbe
	.uleb128 0x23
	.4byte	0xf0f
	.uleb128 0x24
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xf76
	.uleb128 0x25
	.4byte	0xf0f
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LVL3
	.4byte	0x1b93
	.4byte	0xf5c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0x1b9e
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0x1ba9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL0
	.4byte	0x1bb4
	.4byte	0xf8a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0x1bbf
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0x1bca
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF227
	.byte	0x1
	.byte	0x55
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x106f
	.uleb128 0x2b
	.4byte	.LASF226
	.byte	0x1
	.byte	0x55
	.4byte	0x3ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF196
	.byte	0x1
	.byte	0x55
	.4byte	0xbb1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0x57
	.4byte	0x106f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL7
	.4byte	0x1bb4
	.4byte	0x100e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL8
	.4byte	0x1bd5
	.4byte	0x102b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_gatts_reg
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x1b93
	.4byte	0x103f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0x1be0
	.4byte	0x105e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbb7
	.uleb128 0x2a
	.4byte	.LASF228
	.byte	0x1
	.byte	0x78
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c3
	.uleb128 0x2b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x78
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.byte	0x7a
	.4byte	0x10c3
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LVL14
	.4byte	0x1b93
	.4byte	0x10b9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0x1b9e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbee
	.uleb128 0x2a
	.4byte	.LASF230
	.byte	0x1
	.byte	0x98
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1170
	.uleb128 0x2b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x98
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF231
	.byte	0x1
	.byte	0x98
	.4byte	0x3ef
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF202
	.byte	0x1
	.byte	0x98
	.4byte	0xed
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF201
	.byte	0x1
	.byte	0x99
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF145
	.byte	0x1
	.byte	0x99
	.4byte	0x10e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0x9b
	.4byte	0x1170
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x1b93
	.4byte	0x1140
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x1be0
	.4byte	0x115f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc4a
	.uleb128 0x2a
	.4byte	.LASF232
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d1
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x1
	.byte	0xb9
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0x1
	.byte	0xb9
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.byte	0xbb
	.4byte	0x11d1
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0x1b93
	.4byte	0x11c7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0x1b9e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcd2
	.uleb128 0x2a
	.4byte	.LASF233
	.byte	0x1
	.byte	0xd9
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ec
	.uleb128 0x2e
	.4byte	.LASF143
	.byte	0x1
	.byte	0xd9
	.4byte	0xf8
	.4byte	.LLST3
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.byte	0xd9
	.4byte	0x3ef
	.4byte	.LLST4
	.uleb128 0x2e
	.4byte	.LASF205
	.byte	0x1
	.byte	0xda
	.4byte	0x644
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	.LASF206
	.byte	0x1
	.byte	0xda
	.4byte	0x668
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xda
	.4byte	0x12ec
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF207
	.byte	0x1
	.byte	0xdb
	.4byte	0x12f2
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0xdd
	.4byte	0x12f8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.byte	0xde
	.4byte	0xf8
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x1b93
	.4byte	0x1274
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x26
	.4byte	.LVL31
	.4byte	0x1be9
	.4byte	0x1293
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x1b93
	.4byte	0x12a7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL35
	.4byte	0x1be0
	.4byte	0x12bb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0x1be0
	.4byte	0x12db
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4a8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65c
	.uleb128 0xf
	.byte	0x4
	.4byte	0xca6
	.uleb128 0x30
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x10f
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1456
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x10f
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x110
	.4byte	0x644
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x111
	.4byte	0x3ef
	.4byte	.LLST9
	.uleb128 0x31
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x111
	.4byte	0x1456
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x112
	.4byte	0x12f2
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x114
	.4byte	0x145c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x115
	.4byte	0xf8
	.4byte	.LLST11
	.uleb128 0x35
	.4byte	.LASF238
	.4byte	0x1472
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10043
	.uleb128 0x26
	.4byte	.LVL40
	.4byte	0x1b93
	.4byte	0x139f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0x1be9
	.4byte	0x13be
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x26
	.4byte	.LVL44
	.4byte	0x1be0
	.4byte	0x13dd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x26
	.4byte	.LVL47
	.4byte	0x1b93
	.4byte	0x13f1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL48
	.4byte	0x1be0
	.4byte	0x1405
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0x1bbf
	.uleb128 0x26
	.4byte	.LVL51
	.4byte	0x1bca
	.4byte	0x1445
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10043
	.byte	0
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x650
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd22
	.uleb128 0xb
	.4byte	0xb5
	.4byte	0x1472
	.uleb128 0xe
	.4byte	0xa6
	.byte	0x1b
	.byte	0
	.uleb128 0x36
	.4byte	0x1462
	.uleb128 0x30
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x148
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c8
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x148
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x14a
	.4byte	0x234
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LVL54
	.4byte	0x1b93
	.4byte	0x14be
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0x1b9e
	.byte	0
	.uleb128 0x30
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x163
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1527
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x163
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x163
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x165
	.4byte	0x1527
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LVL57
	.4byte	0x1b93
	.4byte	0x151d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0x1b9e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe21
	.uleb128 0x30
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x17d
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157e
	.uleb128 0x31
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x17d
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x17f
	.4byte	0x234
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LVL60
	.4byte	0x1b93
	.4byte	0x1574
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x1b9e
	.byte	0
	.uleb128 0x30
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x19a
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165c
	.uleb128 0x31
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x19b
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x19b
	.4byte	0x10e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x19d
	.4byte	0x165c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x37
	.string	"len"
	.byte	0x1
	.2byte	0x19e
	.4byte	0xf8
	.2byte	0x266
	.uleb128 0x26
	.4byte	.LVL64
	.4byte	0x1b93
	.4byte	0x160b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x266
	.byte	0
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0x1be9
	.4byte	0x162b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x266
	.byte	0
	.uleb128 0x26
	.4byte	.LVL67
	.4byte	0x1be0
	.4byte	0x164b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL68
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd73
	.uleb128 0x30
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1733
	.uleb128 0x31
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x103
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x616
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xdb7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1733
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x37
	.string	"len"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xf8
	.2byte	0x276
	.uleb128 0x26
	.4byte	.LVL71
	.4byte	0x1b93
	.4byte	0x16e1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x276
	.byte	0
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x1be9
	.4byte	0x1701
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x276
	.byte	0
	.uleb128 0x26
	.4byte	.LVL74
	.4byte	0x1be0
	.4byte	0x1722
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x262
	.byte	0
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdbd
	.uleb128 0x30
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1da
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1804
	.uleb128 0x31
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1da
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1da
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1da
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x1804
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xf8
	.byte	0x10
	.uleb128 0x26
	.4byte	.LVL78
	.4byte	0x1b93
	.4byte	0x17a7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL80
	.4byte	0x1be9
	.4byte	0x17c5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL81
	.4byte	0x1b93
	.4byte	0x17d9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL82
	.4byte	0x1be0
	.4byte	0x17f3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL83
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdf5
	.uleb128 0x39
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x616
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1871
	.uleb128 0x32
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xf8
	.4byte	.LLST15
	.uleb128 0x31
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x3dd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x1871
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL85
	.4byte	0x1bf2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x30
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x203
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1916
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x203
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x203
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x203
	.4byte	0x10e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x204
	.4byte	0x674
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x206
	.4byte	0x1916
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x1b93
	.4byte	0x18e6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0x1be0
	.4byte	0x1905
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL91
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe71
	.uleb128 0x30
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x223
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ad
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x223
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x223
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x223
	.4byte	0x10e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x225
	.4byte	0x19ad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LVL93
	.4byte	0x1b93
	.4byte	0x197d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x26
	.4byte	.LVL95
	.4byte	0x1be0
	.4byte	0x199c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL96
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe7c
	.uleb128 0x30
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x23c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a04
	.uleb128 0x31
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x23c
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x23e
	.4byte	0x234
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0x1b93
	.4byte	0x19fa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.4byte	.LVL99
	.4byte	0x1b9e
	.byte	0
	.uleb128 0x30
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x249
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa5
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x249
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x249
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x24b
	.4byte	0x1aa5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x1b93
	.4byte	0x1a57
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL103
	.4byte	0x1be9
	.4byte	0x1a75
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x1be0
	.4byte	0x1a94
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL105
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xef8
	.uleb128 0x30
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x268
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b3c
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x268
	.4byte	0x638
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x268
	.4byte	0x10e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x268
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x26a
	.4byte	0x1b3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LVL107
	.4byte	0x1b93
	.4byte	0x1b0c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0x1be0
	.4byte	0x1b2b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL110
	.4byte	0x1b9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xec0
	.uleb128 0x3a
	.4byte	.LASF254
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x1b55
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x36
	.4byte	0x18b
	.uleb128 0x3a
	.4byte	.LASF255
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x1b6d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x18b
	.uleb128 0x2c
	.4byte	.LASF256
	.byte	0x1
	.byte	0x27
	.4byte	0x1b83
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_gatts_reg
	.uleb128 0x36
	.4byte	0x272
	.uleb128 0x3b
	.4byte	.LASF272
	.byte	0x5
	.byte	0xa6
	.4byte	0xed
	.uleb128 0x3c
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xc
	.byte	0x65
	.uleb128 0x3c
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x5
	.byte	0xe0
	.uleb128 0x3c
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x5
	.byte	0xdd
	.uleb128 0x3c
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x5
	.byte	0xde
	.uleb128 0x3c
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x6
	.byte	0x57
	.uleb128 0x3c
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x6
	.byte	0x6b
	.uleb128 0x3c
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x5
	.byte	0xdc
	.uleb128 0x3d
	.4byte	.LASF264
	.4byte	.LASF264
	.uleb128 0x3d
	.4byte	.LASF265
	.4byte	.LASF265
	.uleb128 0x3c
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xb
	.byte	0xf0
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x2
	.byte	0x75
	.sleb128 2
	.4byte	.LVL47-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF209:
	.string	"included_service_id"
.LASF13:
	.string	"long int"
.LASF94:
	.string	"BTM_PM_STS_PARK"
.LASF234:
	.string	"p_char_uuid"
.LASF194:
	.string	"BTA_GATTS_API_SEND_SERVICE_CHANGE_EVT"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF35:
	.string	"uuid16"
.LASF91:
	.string	"BTM_PM_STS_ACTIVE"
.LASF157:
	.string	"tBTA_GATTS_CONF"
.LASF154:
	.string	"tBTA_GATTS_CONN"
.LASF167:
	.string	"conn"
.LASF172:
	.string	"cancel_open"
.LASF135:
	.string	"remote_bda"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF126:
	.string	"tBTA_GATTS_IF"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF148:
	.string	"char_uuid"
.LASF24:
	.string	"UINT16"
.LASF131:
	.string	"tBTA_GATT_TRANSPORT"
.LASF117:
	.string	"is_prep"
.LASF207:
	.string	"control"
.LASF7:
	.string	"unsigned int"
.LASF198:
	.string	"tBTA_GATTS_INT_START_IF"
.LASF137:
	.string	"p_data"
.LASF130:
	.string	"tBTA_GATT_CHAR_PROP"
.LASF146:
	.string	"tBTA_GATTS_CREATE"
.LASF142:
	.string	"tBTA_GATTS_REG_OPER"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF159:
	.string	"tBTA_GATTS_SERVICE_CHANGE"
.LASF34:
	.string	"BD_ADDR_PTR"
.LASF244:
	.string	"BTA_GATTS_SendRsp"
.LASF261:
	.string	"esp_log_timestamp"
.LASF109:
	.string	"auto_rsp"
.LASF181:
	.string	"BTA_GATTS_API_ADD_INCL_SRVC_EVT"
.LASF113:
	.string	"tGATT_EXEC_FLAG"
.LASF249:
	.string	"BTA_GATTS_CancelOpen"
.LASF253:
	.string	"target_bda"
.LASF216:
	.string	"tBTA_GATTS_API_RSP"
.LASF26:
	.string	"BOOLEAN"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF111:
	.string	"attr_value"
.LASF39:
	.string	"tBTA_SYS_EVT_HDLR"
.LASF200:
	.string	"service_uuid"
.LASF268:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/gatt/bta_gatts_api.c"
.LASF259:
	.string	"bta_sys_deregister"
.LASF180:
	.string	"BTA_GATTS_API_INDICATION_EVT"
.LASF36:
	.string	"uuid32"
.LASF163:
	.string	"create"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF243:
	.string	"BTA_GATTS_HandleValueIndication"
.LASF258:
	.string	"bta_sys_sendmsg"
.LASF250:
	.string	"BTA_GATTS_Close"
.LASF240:
	.string	"BTA_GATTS_StartService"
.LASF25:
	.string	"UINT32"
.LASF12:
	.string	"uint32_t"
.LASF176:
	.string	"BTA_GATTS_API_REG_EVT"
.LASF263:
	.string	"bta_sys_register"
.LASF106:
	.string	"attr_len"
.LASF220:
	.string	"is_direct"
.LASF28:
	.string	"event"
.LASF257:
	.string	"malloc"
.LASF271:
	.string	"BTA_GetAttributeValue"
.LASF93:
	.string	"BTM_PM_STS_SNIFF"
.LASF221:
	.string	"tBTA_GATTS_API_OPEN"
.LASF224:
	.string	"tBTA_GATTS_API_LISTEN"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF9:
	.string	"long long unsigned int"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF152:
	.string	"reason"
.LASF235:
	.string	"BTA_GATTS_AddCharDescriptor"
.LASF254:
	.string	"bd_addr_any"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF4:
	.string	"__uint16_t"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF144:
	.string	"svc_instance"
.LASF95:
	.string	"BTM_PM_STS_SSR"
.LASF175:
	.string	"tBTA_GATTS_CBACK"
.LASF103:
	.string	"value"
.LASF164:
	.string	"srvc_oper"
.LASF155:
	.string	"congested"
.LASF233:
	.string	"BTA_GATTS_AddCharacteristic"
.LASF192:
	.string	"BTA_GATTS_API_LISTEN_EVT"
.LASF266:
	.string	"bta_gatts_get_attr_value"
.LASF166:
	.string	"req_data"
.LASF29:
	.string	"offset"
.LASF251:
	.string	"BTA_GATTS_SendServiceChangeIndication"
.LASF27:
	.string	"_Bool"
.LASF127:
	.string	"tBTA_GATT_PERM"
.LASF267:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF150:
	.string	"tBAT_GATTS_ATTR_VAL_RESULT"
.LASF239:
	.string	"BTA_GATTS_DeleteService"
.LASF122:
	.string	"tGATTS_DATA"
.LASF226:
	.string	"p_app_uuid"
.LASF141:
	.string	"uuid"
.LASF260:
	.string	"bta_sys_is_register"
.LASF205:
	.string	"perm"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF229:
	.string	"p_buf"
.LASF231:
	.string	"p_service_uuid"
.LASF246:
	.string	"BTA_SetAttributeValue"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF222:
	.string	"tBTA_GATTS_API_CANCEL_OPEN"
.LASF132:
	.string	"tBTA_GATTS_RSP"
.LASF237:
	.string	"value_len"
.LASF190:
	.string	"BTA_GATTS_API_CANCEL_OPEN_EVT"
.LASF232:
	.string	"BTA_GATTS_AddIncludeService"
.LASF16:
	.string	"char"
.LASF203:
	.string	"is_pri"
.LASF37:
	.string	"uuid128"
.LASF170:
	.string	"close"
.LASF104:
	.string	"tGATT_VALUE"
.LASF179:
	.string	"BTA_GATTS_API_CREATE_SRVC_EVT"
.LASF202:
	.string	"inst"
.LASF178:
	.string	"BTA_GATTS_API_DEREG_EVT"
.LASF125:
	.string	"tBTA_GATTS_EVT"
.LASF10:
	.string	"uint8_t"
.LASF134:
	.string	"status"
.LASF30:
	.string	"layer_specific"
.LASF236:
	.string	"p_descr_uuid"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF139:
	.string	"tBTA_GATTS_REQ"
.LASF156:
	.string	"tBTA_GATTS_CONGEST"
.LASF8:
	.string	"long long int"
.LASF145:
	.string	"is_primary"
.LASF153:
	.string	"transport"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF129:
	.string	"tBTA_GATTS_ATTR_CONTROL"
.LASF165:
	.string	"add_result"
.LASF219:
	.string	"tBTA_GATTS_API_START"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF136:
	.string	"trans_id"
.LASF196:
	.string	"p_cback"
.LASF265:
	.string	"memset"
.LASF213:
	.string	"need_confirm"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF269:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF98:
	.string	"tGATT_IF"
.LASF128:
	.string	"tBTA_GATT_ATTR_VAL"
.LASF187:
	.string	"BTA_GATTS_API_RSP_EVT"
.LASF162:
	.string	"reg_oper"
.LASF262:
	.string	"esp_log_write"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF97:
	.string	"BTM_PM_STS_ERROR"
.LASF215:
	.string	"p_rsp"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF270:
	.string	"BTA_GATTS_Disable"
.LASF245:
	.string	"p_msg"
.LASF31:
	.string	"data"
.LASF110:
	.string	"tGATTS_ATTR_CONTROL"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF256:
	.string	"bta_gatts_reg"
.LASF169:
	.string	"confirm"
.LASF11:
	.string	"uint16_t"
.LASF174:
	.string	"tBTA_GATTS"
.LASF214:
	.string	"tBTA_GATTS_API_INDICATION"
.LASF102:
	.string	"auth_req"
.LASF92:
	.string	"BTM_PM_STS_HOLD"
.LASF138:
	.string	"data_len"
.LASF115:
	.string	"need_rsp"
.LASF185:
	.string	"BTA_GATTS_API_START_SRVC_EVT"
.LASF158:
	.string	"tBTA_GATTS_CLOSE"
.LASF255:
	.string	"bd_addr_null"
.LASF210:
	.string	"tBTA_GATTS_API_ADD_INCL_SRVC"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF2:
	.string	"short int"
.LASF100:
	.string	"conn_id"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF189:
	.string	"BTA_GATTS_API_OPEN_EVT"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF247:
	.string	"attr_handle"
.LASF252:
	.string	"BTA_GATTS_Listen"
.LASF168:
	.string	"congest"
.LASF217:
	.string	"length"
.LASF143:
	.string	"service_id"
.LASF225:
	.string	"tBTA_GATTS_API_SEND_SERVICE_CHANGE"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF230:
	.string	"BTA_GATTS_CreateService"
.LASF38:
	.string	"tBT_UUID"
.LASF208:
	.string	"tBTA_GATTS_API_ADD_CHAR"
.LASF99:
	.string	"tGATT_AUTH_REQ"
.LASF211:
	.string	"descr_uuid"
.LASF124:
	.string	"tBTA_GATT_REASON"
.LASF177:
	.string	"BTA_GATTS_INT_START_IF_EVT"
.LASF40:
	.string	"tBTA_SYS_DISABLE"
.LASF171:
	.string	"open"
.LASF182:
	.string	"BTA_GATTS_API_ADD_CHAR_EVT"
.LASF248:
	.string	"BTA_GATTS_Open"
.LASF43:
	.string	"tBTA_SYS_REG"
.LASF195:
	.string	"app_uuid"
.LASF3:
	.string	"__uint8_t"
.LASF161:
	.string	"tBTA_GATTS_CANCEL_OPEN"
.LASF223:
	.string	"start"
.LASF116:
	.string	"tGATT_READ_REQ"
.LASF151:
	.string	"tBTA_GATTS_SRVC_OPER"
.LASF118:
	.string	"tGATT_WRITE_REQ"
.LASF33:
	.string	"BD_ADDR"
.LASF160:
	.string	"tBTA_GATTS_OPEN"
.LASF133:
	.string	"tBTA_GATTS_REQ_DATA"
.LASF204:
	.string	"tBTA_GATTS_API_CREATE_SRVC"
.LASF42:
	.string	"disable"
.LASF119:
	.string	"read_req"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF228:
	.string	"BTA_GATTS_AppDeregister"
.LASF227:
	.string	"BTA_GATTS_AppRegister"
.LASF197:
	.string	"tBTA_GATTS_API_REG"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF241:
	.string	"sup_transport"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF1:
	.string	"unsigned char"
.LASF184:
	.string	"BTA_GATTS_API_DEL_SRVC_EVT"
.LASF6:
	.string	"__uint32_t"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF147:
	.string	"attr_id"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF173:
	.string	"service_change"
.LASF105:
	.string	"attr_max_len"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF114:
	.string	"is_long"
.LASF193:
	.string	"BTA_GATTS_API_DISABLE_EVT"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF183:
	.string	"BTA_GATTS_API_ADD_DESCR_EVT"
.LASF149:
	.string	"tBTA_GATTS_ADD_RESULT"
.LASF272:
	.string	"appl_trace_level"
.LASF107:
	.string	"attr_val"
.LASF120:
	.string	"write_req"
.LASF0:
	.string	"signed char"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF140:
	.string	"server_if"
.LASF5:
	.string	"short unsigned int"
.LASF101:
	.string	"handle"
.LASF264:
	.string	"memcpy"
.LASF212:
	.string	"tBTA_GATTS_API_ADD_DESCR"
.LASF123:
	.string	"tBTA_GATT_STATUS"
.LASF238:
	.string	"__func__"
.LASF41:
	.string	"evt_hdlr"
.LASF201:
	.string	"num_handle"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF191:
	.string	"BTA_GATTS_API_CLOSE_EVT"
.LASF23:
	.string	"UINT8"
.LASF186:
	.string	"BTA_GATTS_API_STOP_SRVC_EVT"
.LASF206:
	.string	"property"
.LASF242:
	.string	"BTA_GATTS_StopService"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF199:
	.string	"tBTA_GATTS_API_DEREG"
.LASF218:
	.string	"tBTA_GATTS_API_SET_ATTR_VAL"
.LASF96:
	.string	"BTM_PM_STS_PENDING"
.LASF108:
	.string	"tGATT_ATTR_VAL"
.LASF188:
	.string	"BTA_GATTS_API_SET_ATTR_VAL_EVT"
.LASF32:
	.string	"BT_HDR"
.LASF121:
	.string	"exec_write"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF90:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF112:
	.string	"tGATTS_RSP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
