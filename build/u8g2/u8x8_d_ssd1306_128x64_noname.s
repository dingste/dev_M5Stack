	.file	"u8x8_d_ssd1306_128x64_noname.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_ssd1306_sh1106_generic,"ax",@progbits
	.literal_position
	.literal .LC0, u8x8_d_ssd1306_128x64_noname_powersave0_seq
	.literal .LC1, u8x8_d_ssd1306_128x64_noname_powersave1_seq
	.literal .LC2, u8x8_d_ssd1306_128x64_noname_flip0_seq
	.literal .LC3, u8x8_d_ssd1306_128x64_noname_flip1_seq
	.align	4
	.type	u8x8_d_ssd1306_sh1106_generic, @function
u8x8_d_ssd1306_sh1106_generic:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c"
	.loc 1 208 1 view -0
	.loc 1 208 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 209 3 is_stmt 1 view .LVU2
	.loc 1 210 3 view .LVU3
	.loc 1 211 3 view .LVU4
	movi.n	a8, 0xd
	beq	a3, a8, .L2
	bltu	a8, a3, .L3
	movi.n	a5, 0xb
.LVL1:
	.loc 1 211 3 is_stmt 0 view .LVU5
	beq	a3, a5, .L4
	j	.L14
.LVL2:
.L3:
	.loc 1 211 3 view .LVU6
	movi.n	a8, 0xe
	beq	a3, a8, .L6
	movi.n	a8, 0xf
	beq	a3, a8, .L7
.LVL3:
.L14:
	.loc 1 282 14 view .LVU7
	movi.n	a2, 0
.LVL4:
	.loc 1 282 14 view .LVU8
	j	.L5
.LVL5:
.L4:
	.loc 1 225 7 is_stmt 1 view .LVU9
	.loc 1 226 2 is_stmt 0 view .LVU10
	l32r	a11, .LC0
	.loc 1 225 10 view .LVU11
	beqz.n	a4, .L16
.L8:
	.loc 1 228 2 is_stmt 1 view .LVU12
	l32r	a11, .LC1
.L16:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL6:
	j	.L12
.LVL7:
.L2:
	.loc 1 231 7 view .LVU13
	.loc 1 231 10 is_stmt 0 view .LVU14
	bnez.n	a4, .L9
	.loc 1 233 2 is_stmt 1 view .LVU15
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL8:
	.loc 1 234 2 view .LVU16
	.loc 1 234 37 is_stmt 0 view .LVU17
	l32i.n	a3, a2, 0
.LVL9:
	.loc 1 234 17 view .LVU18
	l8ui	a3, a3, 18
	j	.L15
.LVL10:
.L9:
	.loc 1 238 2 is_stmt 1 view .LVU19
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL11:
	.loc 1 239 2 view .LVU20
	.loc 1 239 37 is_stmt 0 view .LVU21
	l32i.n	a3, a2, 0
.LVL12:
	.loc 1 239 17 view .LVU22
	l8ui	a3, a3, 19
.L15:
	.loc 1 239 17 view .LVU23
	s8i	a3, a2, 34
	j	.L12
.LVL13:
.L6:
	.loc 1 244 7 is_stmt 1 view .LVU24
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL14:
	.loc 1 245 7 view .LVU25
	movi	a11, 0x81
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL15:
	.loc 1 246 7 view .LVU26
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL16:
	.loc 1 247 7 view .LVU27
	j	.L13
.L7:
	.loc 1 251 7 view .LVU28
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL17:
	.loc 1 252 7 view .LVU29
	.loc 1 252 9 is_stmt 0 view .LVU30
	l8ui	a3, a5, 5
.LVL18:
	.loc 1 253 7 is_stmt 1 view .LVU31
	.loc 1 254 9 is_stmt 0 view .LVU32
	l8ui	a8, a2, 34
	.loc 1 253 9 view .LVU33
	slli	a3, a3, 3
.LVL19:
	.loc 1 254 7 is_stmt 1 view .LVU34
	.loc 1 254 9 is_stmt 0 view .LVU35
	add.n	a3, a3, a8
.LVL20:
	.loc 1 256 7 view .LVU36
	movi.n	a11, 0x40
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL21:
	.loc 1 254 9 view .LVU37
	extui	a3, a3, 0, 8
.LVL22:
	.loc 1 256 7 is_stmt 1 view .LVU38
	.loc 1 258 7 view .LVU39
	movi.n	a8, 0x10
	srli	a11, a3, 4
	or	a11, a11, a8
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL23:
	.loc 1 259 7 view .LVU40
	extui	a11, a3, 0, 4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL24:
	.loc 1 260 7 view .LVU41
	l8ui	a3, a5, 6
.LVL25:
	.loc 1 260 7 is_stmt 0 view .LVU42
	movi	a11, 0xb0
	or	a11, a11, a3
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL26:
.L10:
	.loc 1 263 7 is_stmt 1 discriminator 1 view .LVU43
	.loc 1 265 2 discriminator 1 view .LVU44
	.loc 1 266 2 discriminator 1 view .LVU45
	.loc 1 267 2 discriminator 1 view .LVU46
	l8ui	a11, a5, 4
	l32i.n	a12, a5, 0
	slli	a11, a11, 3
	.loc 1 276 9 is_stmt 0 discriminator 1 view .LVU47
	addi.n	a4, a4, -1
.LVL27:
	.loc 1 267 2 discriminator 1 view .LVU48
	extui	a11, a11, 0, 8
	mov.n	a10, a2
	.loc 1 276 9 discriminator 1 view .LVU49
	extui	a4, a4, 0, 8
.LVL28:
	.loc 1 267 2 discriminator 1 view .LVU50
	call8	u8x8_cad_SendData
.LVL29:
	.loc 1 276 2 is_stmt 1 discriminator 1 view .LVU51
	.loc 1 277 7 is_stmt 0 discriminator 1 view .LVU52
	bnez.n	a4, .L10
.LVL30:
.L13:
	.loc 1 279 7 is_stmt 1 view .LVU53
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL31:
.L12:
	.loc 1 280 7 view .LVU54
	.loc 1 284 10 is_stmt 0 view .LVU55
	movi.n	a2, 1
.LVL32:
.L5:
	.loc 1 285 1 view .LVU56
	retw.n
.LFE0:
	.size	u8x8_d_ssd1306_sh1106_generic, .-u8x8_d_ssd1306_sh1106_generic
	.section	.text.u8x8_d_ssd1306_128x64_noname,"ax",@progbits
	.literal_position
	.literal .LC4, u8x8_d_ssd1306_128x64_noname_init_seq
	.literal .LC5, u8x8_ssd1306_128x64_noname_display_info
	.align	4
	.global	u8x8_d_ssd1306_128x64_noname
	.type	u8x8_d_ssd1306_128x64_noname, @function
u8x8_d_ssd1306_128x64_noname:
.LVL33:
.LFB1:
	.loc 1 313 1 is_stmt 1 view -0
	.loc 1 313 1 is_stmt 0 view .LVU58
	entry	sp, 32
.LCFI1:
	.loc 1 315 3 is_stmt 1 view .LVU59
	.loc 1 313 1 is_stmt 0 view .LVU60
	extui	a3, a3, 0, 8
	.loc 1 315 8 view .LVU61
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL34:
	.loc 1 315 6 view .LVU62
	bnez.n	a10, .L20
	.loc 1 318 3 is_stmt 1 view .LVU63
	movi.n	a8, 9
	beq	a3, a8, .L19
	bnei	a3, 10, .L18
	.loc 1 321 7 view .LVU64
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL35:
	.loc 1 322 7 view .LVU65
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL36:
	.loc 1 323 7 view .LVU66
	j	.L20
.L19:
	.loc 1 325 7 view .LVU67
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL37:
	.loc 1 326 7 view .LVU68
.L20:
	.loc 1 316 12 is_stmt 0 view .LVU69
	movi.n	a10, 1
.L18:
	.loc 1 331 1 view .LVU70
	mov.n	a2, a10
.LVL38:
	.loc 1 331 1 view .LVU71
	retw.n
.LFE1:
	.size	u8x8_d_ssd1306_128x64_noname, .-u8x8_d_ssd1306_128x64_noname
	.section	.text.u8x8_d_ssd1306_128x64_vcomh0,"ax",@progbits
	.literal_position
	.literal .LC6, u8x8_d_ssd1306_128x64_vcomh0_init_seq
	.literal .LC7, u8x8_ssd1306_128x64_noname_display_info
	.align	4
	.global	u8x8_d_ssd1306_128x64_vcomh0
	.type	u8x8_d_ssd1306_128x64_vcomh0, @function
u8x8_d_ssd1306_128x64_vcomh0:
.LVL39:
.LFB2:
	.loc 1 334 1 is_stmt 1 view -0
	.loc 1 334 1 is_stmt 0 view .LVU73
	entry	sp, 32
.LCFI2:
	.loc 1 336 3 is_stmt 1 view .LVU74
	.loc 1 334 1 is_stmt 0 view .LVU75
	extui	a3, a3, 0, 8
	.loc 1 336 8 view .LVU76
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL40:
	.loc 1 336 6 view .LVU77
	bnez.n	a10, .L24
	.loc 1 339 3 is_stmt 1 view .LVU78
	movi.n	a8, 9
	beq	a3, a8, .L23
	bnei	a3, 10, .L22
	.loc 1 342 7 view .LVU79
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL41:
	.loc 1 343 7 view .LVU80
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL42:
	.loc 1 344 7 view .LVU81
	j	.L24
.L23:
	.loc 1 346 7 view .LVU82
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL43:
	.loc 1 347 7 view .LVU83
.L24:
	.loc 1 337 12 is_stmt 0 view .LVU84
	movi.n	a10, 1
.L22:
	.loc 1 352 1 view .LVU85
	mov.n	a2, a10
.LVL44:
	.loc 1 352 1 view .LVU86
	retw.n
.LFE2:
	.size	u8x8_d_ssd1306_128x64_vcomh0, .-u8x8_d_ssd1306_128x64_vcomh0
	.section	.text.u8x8_d_ssd1306_128x64_alt0,"ax",@progbits
	.literal_position
	.literal .LC8, u8x8_d_ssd1306_128x64_alt0_init_seq
	.literal .LC9, u8x8_ssd1306_128x64_noname_display_info
	.align	4
	.global	u8x8_d_ssd1306_128x64_alt0
	.type	u8x8_d_ssd1306_128x64_alt0, @function
u8x8_d_ssd1306_128x64_alt0:
.LVL45:
.LFB3:
	.loc 1 355 1 is_stmt 1 view -0
	.loc 1 355 1 is_stmt 0 view .LVU88
	entry	sp, 32
.LCFI3:
	.loc 1 357 3 is_stmt 1 view .LVU89
	.loc 1 355 1 is_stmt 0 view .LVU90
	extui	a3, a3, 0, 8
	.loc 1 357 8 view .LVU91
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL46:
	.loc 1 357 6 view .LVU92
	bnez.n	a10, .L28
	.loc 1 360 3 is_stmt 1 view .LVU93
	movi.n	a8, 9
	beq	a3, a8, .L27
	bnei	a3, 10, .L26
	.loc 1 363 7 view .LVU94
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL47:
	.loc 1 364 7 view .LVU95
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL48:
	.loc 1 365 7 view .LVU96
	j	.L28
.L27:
	.loc 1 367 7 view .LVU97
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL49:
	.loc 1 368 7 view .LVU98
.L28:
	.loc 1 358 12 is_stmt 0 view .LVU99
	movi.n	a10, 1
.L26:
	.loc 1 373 1 view .LVU100
	mov.n	a2, a10
.LVL50:
	.loc 1 373 1 view .LVU101
	retw.n
.LFE3:
	.size	u8x8_d_ssd1306_128x64_alt0, .-u8x8_d_ssd1306_128x64_alt0
	.section	.text.u8x8_d_sh1106_128x64_noname,"ax",@progbits
	.literal_position
	.literal .LC10, u8x8_d_ssd1306_128x64_noname_init_seq
	.literal .LC11, u8x8_sh1106_128x64_noname_display_info
	.align	4
	.global	u8x8_d_sh1106_128x64_noname
	.type	u8x8_d_sh1106_128x64_noname, @function
u8x8_d_sh1106_128x64_noname:
.LVL51:
.LFB4:
	.loc 1 401 1 is_stmt 1 view -0
	.loc 1 401 1 is_stmt 0 view .LVU103
	entry	sp, 32
.LCFI4:
	.loc 1 402 3 is_stmt 1 view .LVU104
	.loc 1 401 1 is_stmt 0 view .LVU105
	extui	a3, a3, 0, 8
	.loc 1 402 8 view .LVU106
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL52:
	.loc 1 402 6 view .LVU107
	bnez.n	a10, .L32
	.loc 1 405 3 is_stmt 1 view .LVU108
	movi.n	a8, 9
	beq	a3, a8, .L31
	bnei	a3, 10, .L30
	.loc 1 408 7 view .LVU109
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL53:
	.loc 1 412 7 view .LVU110
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL54:
	.loc 1 413 7 view .LVU111
	j	.L32
.L31:
	.loc 1 415 7 view .LVU112
	l32r	a11, .LC11
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL55:
	.loc 1 416 7 view .LVU113
.L32:
	.loc 1 403 12 is_stmt 0 view .LVU114
	movi.n	a10, 1
.L30:
	.loc 1 422 1 view .LVU115
	mov.n	a2, a10
.LVL56:
	.loc 1 422 1 view .LVU116
	retw.n
.LFE4:
	.size	u8x8_d_sh1106_128x64_noname, .-u8x8_d_sh1106_128x64_noname
	.section	.text.u8x8_d_sh1106_128x64_vcomh0,"ax",@progbits
	.literal_position
	.literal .LC12, u8x8_d_ssd1306_128x64_vcomh0_init_seq
	.literal .LC13, u8x8_sh1106_128x64_noname_display_info
	.align	4
	.global	u8x8_d_sh1106_128x64_vcomh0
	.type	u8x8_d_sh1106_128x64_vcomh0, @function
u8x8_d_sh1106_128x64_vcomh0:
.LVL57:
.LFB5:
	.loc 1 425 1 is_stmt 1 view -0
	.loc 1 425 1 is_stmt 0 view .LVU118
	entry	sp, 32
.LCFI5:
	.loc 1 426 3 is_stmt 1 view .LVU119
	.loc 1 425 1 is_stmt 0 view .LVU120
	extui	a3, a3, 0, 8
	.loc 1 426 8 view .LVU121
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL58:
	.loc 1 426 6 view .LVU122
	bnez.n	a10, .L36
	.loc 1 429 3 is_stmt 1 view .LVU123
	movi.n	a8, 9
	beq	a3, a8, .L35
	bnei	a3, 10, .L34
	.loc 1 432 7 view .LVU124
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL59:
	.loc 1 433 7 view .LVU125
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL60:
	.loc 1 434 7 view .LVU126
	j	.L36
.L35:
	.loc 1 436 7 view .LVU127
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL61:
	.loc 1 437 7 view .LVU128
.L36:
	.loc 1 427 12 is_stmt 0 view .LVU129
	movi.n	a10, 1
.L34:
	.loc 1 443 1 view .LVU130
	mov.n	a2, a10
.LVL62:
	.loc 1 443 1 view .LVU131
	retw.n
.LFE5:
	.size	u8x8_d_sh1106_128x64_vcomh0, .-u8x8_d_sh1106_128x64_vcomh0
	.section	.text.u8x8_d_sh1106_128x64_winstar,"ax",@progbits
	.literal_position
	.literal .LC14, u8x8_d_sh1106_128x64_winstar_init_seq
	.literal .LC15, u8x8_sh1106_128x64_noname_display_info
	.align	4
	.global	u8x8_d_sh1106_128x64_winstar
	.type	u8x8_d_sh1106_128x64_winstar, @function
u8x8_d_sh1106_128x64_winstar:
.LVL63:
.LFB6:
	.loc 1 446 1 is_stmt 1 view -0
	.loc 1 446 1 is_stmt 0 view .LVU133
	entry	sp, 32
.LCFI6:
	.loc 1 447 3 is_stmt 1 view .LVU134
	.loc 1 446 1 is_stmt 0 view .LVU135
	extui	a3, a3, 0, 8
	.loc 1 447 8 view .LVU136
	mov.n	a13, a5
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8x8_d_ssd1306_sh1106_generic
.LVL64:
	.loc 1 447 6 view .LVU137
	bnez.n	a10, .L40
	.loc 1 450 3 is_stmt 1 view .LVU138
	movi.n	a8, 9
	beq	a3, a8, .L39
	bnei	a3, 10, .L38
	.loc 1 453 7 view .LVU139
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL65:
	.loc 1 454 7 view .LVU140
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL66:
	.loc 1 455 7 view .LVU141
	j	.L40
.L39:
	.loc 1 457 7 view .LVU142
	l32r	a11, .LC15
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL67:
	.loc 1 458 7 view .LVU143
.L40:
	.loc 1 448 12 is_stmt 0 view .LVU144
	movi.n	a10, 1
.L38:
	.loc 1 464 1 view .LVU145
	mov.n	a2, a10
.LVL68:
	.loc 1 464 1 view .LVU146
	retw.n
.LFE6:
	.size	u8x8_d_sh1106_128x64_winstar, .-u8x8_d_sh1106_128x64_winstar
	.section	.rodata.u8x8_sh1106_128x64_noname_display_info,"a"
	.align	4
	.type	u8x8_sh1106_128x64_noname_display_info, @object
	.size	u8x8_sh1106_128x64_noname_display_info, 24
u8x8_sh1106_128x64_noname_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	4000000
	.byte	3
	.byte	4
	.byte	40
	.byte	-106
	.byte	16
	.byte	8
	.byte	2
	.byte	2
	.short	128
	.short	64
	.section	.rodata.u8x8_ssd1306_128x64_noname_display_info,"a"
	.align	4
	.type	u8x8_ssd1306_128x64_noname_display_info, @object
	.size	u8x8_ssd1306_128x64_noname_display_info, 24
u8x8_ssd1306_128x64_noname_display_info:
	.byte	0
	.byte	1
	.byte	20
	.byte	10
	.byte	100
	.byte	100
	.byte	50
	.byte	50
	.word	8000000
	.byte	0
	.byte	4
	.byte	40
	.byte	-106
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.short	128
	.short	64
	.section	.rodata.u8x8_d_ssd1306_128x64_noname_flip1_seq,"a"
	.type	u8x8_d_ssd1306_128x64_noname_flip1_seq, @object
	.size	u8x8_d_ssd1306_128x64_noname_flip1_seq, 7
u8x8_d_ssd1306_128x64_noname_flip1_seq:
	.byte	24
	.byte	21
	.byte	-96
	.byte	21
	.byte	-64
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_noname_flip0_seq,"a"
	.type	u8x8_d_ssd1306_128x64_noname_flip0_seq, @object
	.size	u8x8_d_ssd1306_128x64_noname_flip0_seq, 7
u8x8_d_ssd1306_128x64_noname_flip0_seq:
	.byte	24
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_noname_powersave1_seq,"a"
	.type	u8x8_d_ssd1306_128x64_noname_powersave1_seq, @object
	.size	u8x8_d_ssd1306_128x64_noname_powersave1_seq, 5
u8x8_d_ssd1306_128x64_noname_powersave1_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_noname_powersave0_seq,"a"
	.type	u8x8_d_ssd1306_128x64_noname_powersave0_seq, @object
	.size	u8x8_d_ssd1306_128x64_noname_powersave0_seq, 5
u8x8_d_ssd1306_128x64_noname_powersave0_seq:
	.byte	24
	.byte	21
	.byte	-81
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_sh1106_128x64_winstar_init_seq,"a"
	.type	u8x8_d_sh1106_128x64_winstar_init_seq, @object
	.size	u8x8_d_sh1106_128x64_winstar_init_seq, 45
u8x8_d_sh1106_128x64_winstar_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-92
	.byte	21
	.byte	-43
	.byte	22
	.byte	80
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	21
	.byte	-83
	.byte	22
	.byte	-117
	.byte	21
	.byte	-39
	.byte	22
	.byte	34
	.byte	21
	.byte	-37
	.byte	22
	.byte	53
	.byte	21
	.byte	50
	.byte	21
	.byte	-127
	.byte	22
	.byte	-1
	.byte	21
	.byte	-90
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_alt0_init_seq,"a"
	.type	u8x8_d_ssd1306_128x64_alt0_init_seq, @object
	.size	u8x8_d_ssd1306_128x64_alt0_init_seq, 53
u8x8_d_ssd1306_128x64_alt0_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-43
	.byte	22
	.byte	-128
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	21
	.byte	-115
	.byte	22
	.byte	20
	.byte	21
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-38
	.byte	22
	.byte	2
	.byte	21
	.byte	-127
	.byte	22
	.byte	-49
	.byte	21
	.byte	-39
	.byte	22
	.byte	-15
	.byte	21
	.byte	-37
	.byte	22
	.byte	64
	.byte	21
	.byte	46
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_vcomh0_init_seq,"a"
	.type	u8x8_d_ssd1306_128x64_vcomh0_init_seq, @object
	.size	u8x8_d_ssd1306_128x64_vcomh0_init_seq, 53
u8x8_d_ssd1306_128x64_vcomh0_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-43
	.byte	22
	.byte	-128
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	21
	.byte	-115
	.byte	22
	.byte	20
	.byte	21
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	21
	.byte	-127
	.byte	22
	.byte	-17
	.byte	21
	.byte	-39
	.byte	22
	.byte	-95
	.byte	21
	.byte	-37
	.byte	22
	.byte	0
	.byte	21
	.byte	46
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_ssd1306_128x64_noname_init_seq,"a"
	.type	u8x8_d_ssd1306_128x64_noname_init_seq, @object
	.size	u8x8_d_ssd1306_128x64_noname_init_seq, 53
u8x8_d_ssd1306_128x64_noname_init_seq:
	.byte	24
	.byte	21
	.byte	-82
	.byte	21
	.byte	-43
	.byte	22
	.byte	-128
	.byte	21
	.byte	-88
	.byte	22
	.byte	63
	.byte	21
	.byte	-45
	.byte	22
	.byte	0
	.byte	21
	.byte	64
	.byte	21
	.byte	-115
	.byte	22
	.byte	20
	.byte	21
	.byte	32
	.byte	22
	.byte	0
	.byte	21
	.byte	-95
	.byte	21
	.byte	-56
	.byte	21
	.byte	-38
	.byte	22
	.byte	18
	.byte	21
	.byte	-127
	.byte	22
	.byte	-49
	.byte	21
	.byte	-39
	.byte	22
	.byte	-15
	.byte	21
	.byte	-37
	.byte	22
	.byte	64
	.byte	21
	.byte	46
	.byte	21
	.byte	-92
	.byte	21
	.byte	-90
	.byte	25
	.byte	-1
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1290
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0xc
	.4byte	.LASF221
	.4byte	.LASF222
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
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
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
	.byte	0x4f
	.byte	0x16
	.4byte	0x6c
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
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc3
	.byte	0x1c
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x148
	.byte	0x1e
	.4byte	0x3a0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.byte	0x10
	.4byte	0x374
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.byte	0xf
	.4byte	0x33e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.byte	0xf
	.4byte	0x33e
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.byte	0xf
	.4byte	0x33e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.byte	0xf
	.4byte	0x33e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14e
	.byte	0xc
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14f
	.byte	0x12
	.4byte	0x3a6
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x150
	.byte	0xc
	.4byte	0x92
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x151
	.byte	0xb
	.4byte	0x81
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x152
	.byte	0xb
	.4byte	0x81
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x153
	.byte	0xb
	.4byte	0x81
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x156
	.byte	0xb
	.4byte	0x81
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x158
	.byte	0xb
	.4byte	0x81
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x159
	.byte	0xb
	.4byte	0x81
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x15a
	.byte	0xb
	.4byte	0x81
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x15b
	.byte	0xb
	.4byte	0x81
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15c
	.byte	0xb
	.4byte	0x81
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15d
	.byte	0xb
	.4byte	0x81
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc4
	.byte	0x29
	.4byte	0x1e2
	.uleb128 0x5
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.byte	0x8
	.4byte	0x2f0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe1
	.byte	0xb
	.4byte	0x81
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0xe2
	.byte	0xb
	.4byte	0x81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe4
	.byte	0xb
	.4byte	0x81
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe5
	.byte	0xb
	.4byte	0x81
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe6
	.byte	0xb
	.4byte	0x81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe7
	.byte	0xb
	.4byte	0x81
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0xee
	.byte	0xb
	.4byte	0x81
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xf2
	.byte	0xb
	.4byte	0x81
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.4byte	0x9e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xff
	.byte	0xb
	.4byte	0x81
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x102
	.byte	0xb
	.4byte	0x81
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x108
	.byte	0xb
	.4byte	0x81
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x10a
	.byte	0xb
	.4byte	0x81
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.byte	0xb
	.4byte	0x81
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10e
	.byte	0xb
	.4byte	0x81
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x110
	.byte	0xb
	.4byte	0x81
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x111
	.byte	0xb
	.4byte	0x81
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x119
	.byte	0xc
	.4byte	0x92
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x11a
	.byte	0xc
	.4byte	0x92
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xc5
	.byte	0x21
	.4byte	0x2fc
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4
	.byte	0xd4
	.byte	0x8
	.4byte	0x33e
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd6
	.byte	0xc
	.4byte	0x39a
	.byte	0
	.uleb128 0xb
	.string	"cnt"
	.byte	0x4
	.byte	0xd7
	.byte	0xb
	.4byte	0x81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd8
	.byte	0xb
	.4byte	0x81
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd9
	.byte	0xb
	.4byte	0x81
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc7
	.byte	0x13
	.4byte	0x34a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x350
	.uleb128 0xd
	.4byte	0x81
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x81
	.uleb128 0xe
	.4byte	0x81
	.uleb128 0xe
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xac
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc8
	.byte	0x14
	.4byte	0x380
	.uleb128 0xc
	.byte	0x4
	.4byte	0x386
	.uleb128 0xd
	.4byte	0x92
	.4byte	0x39a
	.uleb128 0xe
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0x81
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x81
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0x3b7
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x3ac
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x420
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x421
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x422
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x423
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x424
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x425
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x426
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x427
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x428
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x429
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x42a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x42b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x42c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x42d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x42e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x42f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x430
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x431
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x432
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x433
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x434
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x435
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x436
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x437
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x438
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x439
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x43a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x43b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x43c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x43d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x43e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x43f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x440
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x441
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x442
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x443
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x444
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x445
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x446
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x447
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x448
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x449
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x44a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x44b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x44c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x44e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x44f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x450
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x451
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x452
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x453
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x454
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x455
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x456
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x457
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x458
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x459
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x45a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x45b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x45c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x45d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x45e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x45f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x460
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x461
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x462
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x463
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x464
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x465
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x466
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x467
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x468
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x469
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x46a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x46b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x46c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x46d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x46e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x46f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x470
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x471
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x472
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x473
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x474
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x475
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x476
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x477
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x478
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x479
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x47a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x47b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x47c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x47d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x47e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x47f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x4
	.2byte	0x480
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x481
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x482
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x483
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x484
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x4
	.2byte	0x485
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x486
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x487
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x4
	.2byte	0x488
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x4
	.2byte	0x489
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0x4
	.2byte	0x48a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x4
	.2byte	0x48b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x4
	.2byte	0x48c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x4
	.2byte	0x48d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x4
	.2byte	0x48e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x48f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x4
	.2byte	0x490
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x4
	.2byte	0x491
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x4
	.2byte	0x492
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x4
	.2byte	0x493
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x4
	.2byte	0x494
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x4
	.2byte	0x495
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x4
	.2byte	0x496
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x497
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x4
	.2byte	0x498
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x4
	.2byte	0x499
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x4
	.2byte	0x49a
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x4
	.2byte	0x49b
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0x4
	.2byte	0x49c
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x4
	.2byte	0x49d
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x4
	.2byte	0x49e
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x4
	.2byte	0x49f
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x4
	.2byte	0x4a0
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0x4
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x4
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xa73
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.4byte	0xa63
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2a
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_init_seq
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.byte	0x4f
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_vcomh0_init_seq
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x1
	.byte	0x73
	.byte	0x16
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_alt0_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xabe
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.4byte	0xaae
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.byte	0x99
	.byte	0x16
	.4byte	0xabe
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1106_128x64_winstar_init_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xae5
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xad5
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.byte	0xb0
	.byte	0x16
	.4byte	0xae5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_powersave0_seq
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x1
	.byte	0xb7
	.byte	0x16
	.4byte	0xae5
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_powersave1_seq
	.uleb128 0xf
	.4byte	0x8d
	.4byte	0xb1e
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xb0e
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.byte	0xbe
	.byte	0x16
	.4byte	0xb1e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_flip0_seq
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0xc6
	.byte	0x16
	.4byte	0xb1e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_flip1_seq
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x120
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1306_128x64_noname_display_info
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x178
	.byte	0x22
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1106_128x64_noname_display_info
	.uleb128 0x15
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1bd
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3e
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1bd
	.byte	0x2e
	.4byte	0x36e
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1bd
	.byte	0x3c
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1bd
	.byte	0x49
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1bd
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x1053
	.4byte	0xbf3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0x122b
	.4byte	0xc07
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x1238
	.4byte	0xc24
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_sh1106_128x64_winstar_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1106_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1a8
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0f
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1a8
	.byte	0x2d
	.4byte	0x36e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x1a8
	.byte	0x3b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1a8
	.byte	0x48
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1a8
	.byte	0x57
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x1053
	.4byte	0xcc4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x122b
	.4byte	0xcd8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0x1238
	.4byte	0xcf5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_vcomh0_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1106_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x190
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde0
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x190
	.byte	0x2d
	.4byte	0x36e
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x190
	.byte	0x3b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x190
	.byte	0x48
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x190
	.byte	0x57
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x1053
	.4byte	0xd95
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL53
	.4byte	0x122b
	.4byte	0xda9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0x1238
	.4byte	0xdc6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_sh1106_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x162
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb1
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x162
	.byte	0x2c
	.4byte	0x36e
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x162
	.byte	0x3a
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x162
	.byte	0x47
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x162
	.byte	0x56
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0x1053
	.4byte	0xe66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0x122b
	.4byte	0xe7a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x1238
	.4byte	0xe97
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_alt0_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1306_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x14d
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf82
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x14d
	.byte	0x2e
	.4byte	0x36e
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x14d
	.byte	0x3c
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x14d
	.byte	0x49
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x14d
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x1053
	.4byte	0xf37
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0x122b
	.4byte	0xf4b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0x1238
	.4byte	0xf68
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_vcomh0_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL43
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1306_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x138
	.byte	0x9
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1053
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x138
	.byte	0x2e
	.4byte	0x36e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.2byte	0x138
	.byte	0x3c
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x138
	.byte	0x49
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x138
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x1053
	.4byte	0x1008
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x122b
	.4byte	0x101c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x1238
	.4byte	0x1039
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_init_seq
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x1245
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_ssd1306_128x64_noname_display_info
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF223
	.byte	0x1
	.byte	0xcf
	.byte	0x10
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122b
	.uleb128 0x1d
	.4byte	.LASF207
	.byte	0x1
	.byte	0xcf
	.byte	0x36
	.4byte	0x36e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xcf
	.byte	0x44
	.4byte	0x81
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1d
	.4byte	.LASF203
	.byte	0x1
	.byte	0xcf
	.byte	0x51
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1d
	.4byte	.LASF204
	.byte	0x1
	.byte	0xcf
	.byte	0x60
	.4byte	0xaa
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xd1
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0xd1
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.byte	0xd2
	.byte	0xc
	.4byte	0x39a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x1238
	.4byte	0x1109
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x1238
	.4byte	0x1126
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_flip0_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x1238
	.4byte	0x1143
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_ssd1306_128x64_noname_flip1_seq
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x1252
	.4byte	0x1157
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x125f
	.4byte	0x1171
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x126c
	.4byte	0x118b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x1252
	.4byte	0x119f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x125f
	.4byte	0x11b9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x125f
	.4byte	0x11cd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x126c
	.4byte	0x11e9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0x126c
	.4byte	0x1206
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xb0
	.byte	0x21
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x1279
	.4byte	0x121a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x1286
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x1a5
	.byte	0x6
	.uleb128 0x20
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x4
	.2byte	0x278
	.byte	0x6
	.uleb128 0x20
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x4
	.2byte	0x1a4
	.byte	0x6
	.uleb128 0x20
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x259
	.byte	0x9
	.uleb128 0x20
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x4
	.2byte	0x255
	.byte	0x9
	.uleb128 0x20
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x4
	.2byte	0x256
	.byte	0x9
	.uleb128 0x20
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x4
	.2byte	0x258
	.byte	0x9
	.uleb128 0x20
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x4
	.2byte	0x25a
	.byte	0x9
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
	.uleb128 0x39
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS12:
	.uleb128 0
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU53
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU42
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x75
	.sleb128 5
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0xd
	.byte	0x75
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU45
	.uleb128 .LVU51
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU46
	.uleb128 .LVU51
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"u8x8_font_artosserif8_n"
.LASF202:
	.string	"u8x8_sh1106_128x64_noname_display_info"
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF127:
	.string	"u8x8_font_victoriabold8_u"
.LASF116:
	.string	"u8x8_font_artosserif8_u"
.LASF143:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_f"
.LASF129:
	.string	"u8x8_font_victoriamedium8_n"
.LASF203:
	.string	"arg_int"
.LASF222:
	.string	"/home/dieter/Development/ProjektEi/build/u8g2"
.LASF3:
	.string	"__uint8_t"
.LASF145:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_n"
.LASF18:
	.string	"byte_cb"
.LASF85:
	.string	"u8x8_font_open_iconic_check_1x1"
.LASF192:
	.string	"u8x8_font_px437wyse700b_2x2_n"
.LASF144:
	.string	"u8x8_font_lucasarts_scumm_subtitle_o_2x2_r"
.LASF76:
	.string	"u8x8_font_8x13B_1x2_r"
.LASF125:
	.string	"u8x8_font_victoriabold8_r"
.LASF183:
	.string	"u8x8_font_pxplustandynewtv_f"
.LASF196:
	.string	"u8x8_d_sh1106_128x64_winstar_init_seq"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF185:
	.string	"u8x8_font_pxplustandynewtv_n"
.LASF165:
	.string	"u8x8_font_inb46_4x8_r"
.LASF184:
	.string	"u8x8_font_pxplustandynewtv_r"
.LASF186:
	.string	"u8x8_font_pxplustandynewtv_u"
.LASF164:
	.string	"u8x8_font_inb46_4x8_f"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF78:
	.string	"u8x8_font_7x14_1x2_f"
.LASF27:
	.string	"utf8_state"
.LASF126:
	.string	"u8x8_font_victoriabold8_n"
.LASF166:
	.string	"u8x8_font_inb46_4x8_n"
.LASF28:
	.string	"gpio_result"
.LASF80:
	.string	"u8x8_font_7x14_1x2_n"
.LASF106:
	.string	"u8x8_font_open_iconic_thing_8x8"
.LASF210:
	.string	"u8x8_d_ssd1306_128x64_vcomh0"
.LASF79:
	.string	"u8x8_font_7x14_1x2_r"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF205:
	.string	"u8x8_d_sh1106_128x64_winstar"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF123:
	.string	"u8x8_font_torussansbold8_n"
.LASF16:
	.string	"display_cb"
.LASF122:
	.string	"u8x8_font_torussansbold8_r"
.LASF124:
	.string	"u8x8_font_torussansbold8_u"
.LASF197:
	.string	"u8x8_d_ssd1306_128x64_noname_powersave0_seq"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF128:
	.string	"u8x8_font_victoriamedium8_r"
.LASF130:
	.string	"u8x8_font_victoriamedium8_u"
.LASF218:
	.string	"u8x8_cad_SendData"
.LASF94:
	.string	"u8x8_font_open_iconic_thing_2x2"
.LASF112:
	.string	"u8x8_font_artossans8_n"
.LASF134:
	.string	"u8x8_font_courR18_2x3_f"
.LASF111:
	.string	"u8x8_font_artossans8_r"
.LASF113:
	.string	"u8x8_font_artossans8_u"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF171:
	.string	"u8x8_font_pcsenior_f"
.LASF136:
	.string	"u8x8_font_courR18_2x3_n"
.LASF201:
	.string	"u8x8_ssd1306_128x64_noname_display_info"
.LASF135:
	.string	"u8x8_font_courR18_2x3_r"
.LASF173:
	.string	"u8x8_font_pcsenior_n"
.LASF172:
	.string	"u8x8_font_pcsenior_r"
.LASF174:
	.string	"u8x8_font_pcsenior_u"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF160:
	.string	"u8x8_font_inb21_2x4_n"
.LASF208:
	.string	"u8x8_d_sh1106_128x64_noname"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF214:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF55:
	.string	"u8x8_tile_t"
.LASF158:
	.string	"u8x8_font_inb21_2x4_f"
.LASF140:
	.string	"u8x8_font_courR24_3x4_f"
.LASF179:
	.string	"u8x8_font_pxplusibmcga_f"
.LASF194:
	.string	"u8x8_d_ssd1306_128x64_vcomh0_init_seq"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF159:
	.string	"u8x8_font_inb21_2x4_r"
.LASF142:
	.string	"u8x8_font_courR24_3x4_n"
.LASF215:
	.string	"u8x8_cad_StartTransfer"
.LASF90:
	.string	"u8x8_font_open_iconic_arrow_2x2"
.LASF141:
	.string	"u8x8_font_courR24_3x4_r"
.LASF188:
	.string	"u8x8_font_px437wyse700a_2x2_r"
.LASF25:
	.string	"i2c_address"
.LASF169:
	.string	"u8x8_font_pressstart2p_n"
.LASF99:
	.string	"u8x8_font_open_iconic_play_4x4"
.LASF92:
	.string	"u8x8_font_open_iconic_embedded_2x2"
.LASF77:
	.string	"u8x8_font_8x13B_1x2_n"
.LASF175:
	.string	"u8x8_font_pxplusibmcgathin_f"
.LASF199:
	.string	"u8x8_d_ssd1306_128x64_noname_flip0_seq"
.LASF170:
	.string	"u8x8_font_pressstart2p_u"
.LASF209:
	.string	"u8x8_d_ssd1306_128x64_alt0"
.LASF177:
	.string	"u8x8_font_pxplusibmcgathin_n"
.LASF5:
	.string	"short unsigned int"
.LASF176:
	.string	"u8x8_font_pxplusibmcgathin_r"
.LASF178:
	.string	"u8x8_font_pxplusibmcgathin_u"
.LASF96:
	.string	"u8x8_font_open_iconic_arrow_4x4"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF223:
	.string	"u8x8_d_ssd1306_sh1106_generic"
.LASF161:
	.string	"u8x8_font_inb33_3x6_f"
.LASF14:
	.string	"display_info"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF88:
	.string	"u8x8_font_open_iconic_thing_1x1"
.LASF98:
	.string	"u8x8_font_open_iconic_embedded_4x4"
.LASF120:
	.string	"u8x8_font_saikyosansbold8_n"
.LASF51:
	.string	"default_x_offset"
.LASF162:
	.string	"u8x8_font_inb33_3x6_r"
.LASF22:
	.string	"encoding"
.LASF121:
	.string	"u8x8_font_saikyosansbold8_u"
.LASF190:
	.string	"u8x8_font_px437wyse700b_2x2_f"
.LASF52:
	.string	"flipmode_x_offset"
.LASF101:
	.string	"u8x8_font_open_iconic_weather_4x4"
.LASF155:
	.string	"u8x8_font_inr46_4x8_f"
.LASF193:
	.string	"u8x8_d_ssd1306_128x64_noname_init_seq"
.LASF107:
	.string	"u8x8_font_open_iconic_weather_8x8"
.LASF157:
	.string	"u8x8_font_inr46_4x8_n"
.LASF97:
	.string	"u8x8_font_open_iconic_check_4x4"
.LASF191:
	.string	"u8x8_font_px437wyse700b_2x2_r"
.LASF156:
	.string	"u8x8_font_inr46_4x8_r"
.LASF187:
	.string	"u8x8_font_px437wyse700a_2x2_f"
.LASF139:
	.string	"u8x8_font_courB24_3x4_n"
.LASF17:
	.string	"cad_cb"
.LASF189:
	.string	"u8x8_font_px437wyse700a_2x2_n"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF181:
	.string	"u8x8_font_pxplusibmcga_n"
.LASF23:
	.string	"x_offset"
.LASF212:
	.string	"u8x8_d_helper_display_init"
.LASF163:
	.string	"u8x8_font_inb33_3x6_n"
.LASF146:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_f"
.LASF50:
	.string	"tile_height"
.LASF148:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_n"
.LASF72:
	.string	"u8x8_font_8x13_1x2_f"
.LASF108:
	.string	"u8x8_font_profont29_2x3_f"
.LASF114:
	.string	"u8x8_font_artosserif8_r"
.LASF74:
	.string	"u8x8_font_8x13_1x2_n"
.LASF110:
	.string	"u8x8_font_profont29_2x3_n"
.LASF147:
	.string	"u8x8_font_lucasarts_scumm_subtitle_r_2x2_r"
.LASF73:
	.string	"u8x8_font_8x13_1x2_r"
.LASF109:
	.string	"u8x8_font_profont29_2x3_r"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF105:
	.string	"u8x8_font_open_iconic_play_8x8"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF198:
	.string	"u8x8_d_ssd1306_128x64_noname_powersave1_seq"
.LASF207:
	.string	"u8x8"
.LASF86:
	.string	"u8x8_font_open_iconic_embedded_1x1"
.LASF152:
	.string	"u8x8_font_inr33_3x6_f"
.LASF102:
	.string	"u8x8_font_open_iconic_arrow_8x8"
.LASF149:
	.string	"u8x8_font_inr21_2x4_f"
.LASF154:
	.string	"u8x8_font_inr33_3x6_n"
.LASF93:
	.string	"u8x8_font_open_iconic_play_2x2"
.LASF151:
	.string	"u8x8_font_inr21_2x4_n"
.LASF153:
	.string	"u8x8_font_inr33_3x6_r"
.LASF47:
	.string	"data_setup_time_ns"
.LASF150:
	.string	"u8x8_font_inr21_2x4_r"
.LASF75:
	.string	"u8x8_font_8x13B_1x2_f"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF104:
	.string	"u8x8_font_open_iconic_embedded_8x8"
.LASF62:
	.string	"u8x8_font_amstrad_cpc_extended_f"
.LASF69:
	.string	"u8x8_font_5x8_f"
.LASF221:
	.string	"/home/dieter/Development/ProjektEi/components/u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF64:
	.string	"u8x8_font_amstrad_cpc_extended_n"
.LASF71:
	.string	"u8x8_font_5x8_n"
.LASF167:
	.string	"u8x8_font_pressstart2p_f"
.LASF63:
	.string	"u8x8_font_amstrad_cpc_extended_r"
.LASF70:
	.string	"u8x8_font_5x8_r"
.LASF65:
	.string	"u8x8_font_amstrad_cpc_extended_u"
.LASF180:
	.string	"u8x8_font_pxplusibmcga_r"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF182:
	.string	"u8x8_font_pxplusibmcga_u"
.LASF168:
	.string	"u8x8_font_pressstart2p_r"
.LASF219:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF200:
	.string	"u8x8_d_ssd1306_128x64_noname_flip1_seq"
.LASF103:
	.string	"u8x8_font_open_iconic_check_8x8"
.LASF220:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF131:
	.string	"u8x8_font_courB18_2x3_f"
.LASF95:
	.string	"u8x8_font_open_iconic_weather_2x2"
.LASF31:
	.string	"debounce_state"
.LASF100:
	.string	"u8x8_font_open_iconic_thing_4x4"
.LASF204:
	.string	"arg_ptr"
.LASF133:
	.string	"u8x8_font_courB18_2x3_n"
.LASF132:
	.string	"u8x8_font_courB18_2x3_r"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF195:
	.string	"u8x8_d_ssd1306_128x64_alt0_init_seq"
.LASF87:
	.string	"u8x8_font_open_iconic_play_1x1"
.LASF10:
	.string	"uint8_t"
.LASF89:
	.string	"u8x8_font_open_iconic_weather_1x1"
.LASF26:
	.string	"i2c_started"
.LASF206:
	.string	"u8x8_d_sh1106_128x64_vcomh0"
.LASF53:
	.string	"pixel_width"
.LASF91:
	.string	"u8x8_font_open_iconic_check_2x2"
.LASF49:
	.string	"tile_width"
.LASF66:
	.string	"u8x8_font_5x7_f"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF137:
	.string	"u8x8_font_courB24_3x4_f"
.LASF59:
	.string	"y_pos"
.LASF216:
	.string	"u8x8_cad_SendCmd"
.LASF68:
	.string	"u8x8_font_5x7_n"
.LASF84:
	.string	"u8x8_font_open_iconic_arrow_1x1"
.LASF67:
	.string	"u8x8_font_5x7_r"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF138:
	.string	"u8x8_font_courB24_3x4_r"
.LASF118:
	.string	"u8x8_font_chroma48medium8_n"
.LASF217:
	.string	"u8x8_cad_SendArg"
.LASF117:
	.string	"u8x8_font_chroma48medium8_r"
.LASF119:
	.string	"u8x8_font_chroma48medium8_u"
.LASF81:
	.string	"u8x8_font_7x14B_1x2_f"
.LASF211:
	.string	"u8x8_d_ssd1306_128x64_noname"
.LASF54:
	.string	"pixel_height"
.LASF213:
	.string	"u8x8_cad_SendSequence"
.LASF83:
	.string	"u8x8_font_7x14B_1x2_n"
.LASF44:
	.string	"sck_clock_hz"
.LASF82:
	.string	"u8x8_font_7x14B_1x2_r"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
