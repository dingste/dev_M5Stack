	.file	"utl.c"
	.text
.Ltext0:
	.section	.text.utl_str2int,"ax",@progbits
	.literal_position
	.literal .LC2, 32767
	.align	4
	.global	utl_str2int
	.type	utl_str2int, @function
utl_str2int:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/utl.c"
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 46 0
	j	.L2
.L3:
	.loc 1 46 0 is_stmt 0 discriminator 2
	addi.n	a2, a2, 1
.LVL2:
.L2:
	.loc 1 46 0 discriminator 1
	l8ui	a9, a2, 0
	beqi	a9, 32, .L3
	.loc 1 49 0 is_stmt 1
	movi.n	a8, -1
	.loc 1 48 0
	beqz.n	a9, .L4
	.loc 1 59 0
	l32r	a11, .LC2
	movi.n	a8, 0
	.loc 1 53 0
	movi.n	a10, 9
.LVL3:
.L6:
	l8ui	a9, a2, 0
	addi	a9, a9, -48
	extui	a12, a9, 0, 8
	bltu	a10, a12, .L9
	.loc 1 57 0
	add.n	a8, a9, a8
.LVL4:
	addi.n	a2, a2, 1
.LVL5:
	.loc 1 59 0
	blt	a11, a8, .L9
	.loc 1 63 0
	l8ui	a9, a2, 0
	bnez.n	a9, .L5
	.loc 1 64 0
	sext	a8, a8, 15
.LVL6:
	j	.L4
.LVL7:
.L5:
	.loc 1 66 0
	addx4	a8, a8, a8
.LVL8:
	slli	a8, a8, 1
.LVL9:
	.loc 1 68 0
	j	.L6
.L9:
	.loc 1 49 0
	movi.n	a8, -1
.LVL10:
.L4:
	.loc 1 69 0
	mov.n	a2, a8
.LVL11:
	retw.n
.LFE12:
	.size	utl_str2int, .-utl_str2int
	.section	.text.utl_strucmp,"ax",@progbits
	.align	4
	.global	utl_strucmp
	.type	utl_strucmp, @function
utl_strucmp:
.LFB13:
	.loc 1 85 0
.LVL12:
	entry	sp, 32
.LCFI1:
	.loc 1 90 0
	movi.n	a11, 0x19
	.loc 1 88 0
	j	.L11
.L15:
	.loc 1 90 0
	addi	a10, a9, -97
	extui	a10, a10, 0, 8
	.loc 1 89 0
	addi.n	a3, a3, 1
.LVL13:
	.loc 1 90 0
	bltu	a11, a10, .L12
	.loc 1 91 0
	addi	a9, a9, -32
.LVL14:
	extui	a9, a9, 0, 8
.LVL15:
.L12:
	.loc 1 93 0
	addi.n	a2, a2, 1
.LVL16:
	bne	a9, a8, .L16
.LVL17:
.L11:
	.loc 1 88 0
	l8ui	a8, a2, 0
	beqz.n	a8, .L14
	.loc 1 88 0 is_stmt 0 discriminator 1
	l8ui	a9, a3, 0
	bnez.n	a9, .L15
.L14:
	.loc 1 94 0 is_stmt 1
	l8ui	a3, a3, 0
.LVL18:
	movi.n	a2, 0
.LVL19:
	movi.n	a9, 1
	mov.n	a4, a2
	moveqz	a4, a9, a3
	movnez	a2, a9, a8
	mov.n	a3, a4
	and	a2, a4, a2
	retw.n
.LVL20:
.L16:
	movi.n	a2, -1
.LVL21:
	.loc 1 105 0
	retw.n
.LFE13:
	.size	utl_strucmp, .-utl_strucmp
	.section	.text.utl_itoa,"ax",@progbits
	.literal_position
	.literal .LC3, 10000
	.literal .LC4, -858993459
	.align	4
	.global	utl_itoa
	.type	utl_itoa, @function
utl_itoa:
.LFB14:
	.loc 1 120 0
.LVL22:
	entry	sp, 32
.LCFI2:
.LVL23:
	.loc 1 120 0
	extui	a2, a2, 0, 16
	.loc 1 125 0
	bnez.n	a2, .L21
	.loc 1 127 0
	movi.n	a2, 0x30
.LVL24:
	addi.n	a8, a3, 1
.LVL25:
	s8i	a2, a3, 0
	j	.L22
.LVL26:
.L21:
	l32r	a9, .LC3
	.loc 1 129 0
	l32r	a13, .LC4
	mov.n	a8, a3
	movi.n	a12, 0
	movi.n	a11, 5
	loop	a11, .L25_LEND
.LVL27:
.L25:
	.loc 1 130 0
	quou	a10, a2, a9
.LVL28:
	.loc 1 131 0
	remu	a2, a2, a9
.LVL29:
	.loc 1 132 0
	bnez.n	a10, .L27
	beqz.n	a12, .L23
.L27:
.LVL30:
	.loc 1 133 0
	addi	a10, a10, 48
.LVL31:
	s8i	a10, a8, 0
.LVL32:
	.loc 1 134 0
	movi.n	a12, 1
	.loc 1 133 0
	addi.n	a8, a8, 1
.LVL33:
.L23:
	.loc 1 129 0 discriminator 2
	muluh	a9, a9, a13
.LVL34:
	extui	a9, a9, 3, 16
.LVL35:
	.L25_LEND:
.LVL36:
.L22:
	.loc 1 138 0
	movi.n	a2, 0
	s8i	a2, a8, 0
	.loc 1 139 0
	sub	a2, a8, a3
	.loc 1 140 0
	extui	a2, a2, 0, 8
	retw.n
.LFE14:
	.size	utl_itoa, .-utl_itoa
	.section	.text.utl_freebuf,"ax",@progbits
	.align	4
	.global	utl_freebuf
	.type	utl_freebuf, @function
utl_freebuf:
.LFB15:
	.loc 1 155 0
.LVL37:
	entry	sp, 32
.LCFI3:
	.loc 1 156 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L31
	.loc 1 157 0
	call8	free
.LVL38:
	.loc 1 158 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L31:
	retw.n
.LFE15:
	.size	utl_freebuf, .-utl_freebuf
	.section	.text.utl_set_device_class,"ax",@progbits
	.literal_position
	.literal .LC5, .L39
	.align	4
	.global	utl_set_device_class
	.type	utl_set_device_class, @function
utl_set_device_class:
.LFB16:
	.loc 1 183 0
.LVL39:
	entry	sp, 48
.LCFI4:
	.loc 1 189 0
	call8	BTM_ReadDeviceClass
.LVL40:
	.loc 1 190 0
	l8ui	a8, a10, 0
.LVL41:
	l8ui	a9, a10, 1
	slli	a11, a8, 8
.LVL42:
	movi.n	a8, -0x20
	and	a8, a9, a8
	add.n	a8, a11, a8
	.loc 1 183 0
	extui	a3, a3, 0, 8
	.loc 1 191 0
	l8ui	a11, a10, 2
.LVL43:
	.loc 1 194 0
	addi.n	a3, a3, -1
.LVL44:
	.loc 1 191 0
	movi	a10, 0xfc
.LVL45:
	and	a10, a11, a10
	.loc 1 194 0
	extui	a3, a3, 0, 8
.LVL46:
	movi.n	a11, 9
	.loc 1 190 0
	extui	a8, a8, 0, 16
.LVL47:
	.loc 1 192 0
	extui	a9, a9, 0, 5
.LVL48:
	.loc 1 194 0
	bltu	a11, a3, .L45
	l32r	a11, .LC5
	addx4	a3, a3, a11
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.utl_set_device_class,"a",@progbits
	.align	4
	.align	4
.L39:
	.word	.L38
	.word	.L46
	.word	.L45
	.word	.L41
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L42
	.word	.L45
	.word	.L43
	.section	.text.utl_set_device_class
.L38:
	.loc 1 196 0
	l8ui	a10, a2, 0
.LVL49:
	.loc 1 197 0
	l8ui	a9, a2, 1
.LVL50:
	.loc 1 196 0
	movi	a3, 0xfc
	and	a10, a10, a3
.LVL51:
	.loc 1 197 0
	extui	a9, a9, 0, 5
.LVL52:
	.loc 1 198 0
	j	.L44
.L41:
	.loc 1 207 0
	l16ui	a11, a2, 2
	movi.n	a3, -0x20
	and	a3, a11, a3
	s16i	a3, a2, 2
	.loc 1 208 0
	movi.n	a2, -1
.LVL53:
	xor	a3, a2, a3
	and	a8, a3, a8
.LVL54:
	.loc 1 209 0
	j	.L44
.LVL55:
.L42:
	.loc 1 212 0
	l8ui	a10, a2, 0
.LVL56:
	.loc 1 213 0
	l8ui	a9, a2, 1
.LVL57:
	.loc 1 212 0
	movi	a3, 0xfc
	and	a10, a10, a3
.LVL58:
	.loc 1 213 0
	extui	a9, a9, 0, 5
.LVL59:
.L46:
	.loc 1 214 0
	l16ui	a11, a2, 2
	movi.n	a3, -0x20
	and	a3, a11, a3
	s16i	a3, a2, 2
	.loc 1 215 0
	or	a8, a8, a3
.LVL60:
	.loc 1 216 0
	j	.L44
.LVL61:
.L43:
	.loc 1 219 0
	l8ui	a10, a2, 0
.LVL62:
	.loc 1 220 0
	l8ui	a9, a2, 1
.LVL63:
	.loc 1 221 0
	l16ui	a8, a2, 2
.LVL64:
	.loc 1 219 0
	movi	a3, 0xfc
	.loc 1 221 0
	movi.n	a2, -0x20
.LVL65:
	.loc 1 219 0
	and	a10, a10, a3
.LVL66:
	.loc 1 220 0
	extui	a9, a9, 0, 5
.LVL67:
	.loc 1 221 0
	and	a8, a8, a2
.LVL68:
.L44:
	.loc 1 229 0
	movi.n	a2, -0x20
	and	a2, a8, a2
	add.n	a9, a9, a2
.LVL69:
	s8i	a10, sp, 2
	srli	a8, a8, 8
.LVL70:
	.loc 1 231 0
	mov.n	a10, sp
.LVL71:
	.loc 1 229 0
	s8i	a9, sp, 1
	s8i	a8, sp, 0
	.loc 1 231 0
	movi.n	a3, 1
	call8	BTM_SetDeviceClass
.LVL72:
	movi.n	a2, 0
	moveqz	a2, a3, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL73:
.L45:
	.loc 1 225 0
	movi.n	a2, 0
.LVL74:
	.loc 1 236 0
	retw.n
.LFE16:
	.size	utl_set_device_class, .-utl_set_device_class
	.section	.text.utl_get_device_class,"ax",@progbits
	.align	4
	.global	utl_get_device_class
	.type	utl_get_device_class, @function
utl_get_device_class:
.LFB17:
	.loc 1 252 0
.LVL75:
	entry	sp, 32
.LCFI5:
	.loc 1 257 0
	call8	BTM_ReadDeviceClass
.LVL76:
	.loc 1 258 0
	l8ui	a8, a10, 0
.LVL77:
	.loc 1 262 0
	movi.n	a9, -4
	.loc 1 258 0
	slli	a11, a8, 8
.LVL78:
	l8ui	a8, a10, 1
.LVL79:
	.loc 1 262 0
	l8ui	a10, a10, 2
.LVL80:
	and	a9, a10, a9
	s8i	a9, a2, 0
	.loc 1 263 0
	extui	a9, a8, 0, 5
	s8i	a9, a2, 1
	.loc 1 264 0
	movi.n	a9, -0x20
	and	a8, a8, a9
.LVL81:
	add.n	a8, a11, a8
	s16i	a8, a2, 2
	.loc 1 267 0
	movi.n	a2, 1
.LVL82:
	retw.n
.LFE17:
	.size	utl_get_device_class, .-utl_get_device_class
	.section	.text.utl_isintstr,"ax",@progbits
	.align	4
	.global	utl_isintstr
	.type	utl_isintstr, @function
utl_isintstr:
.LFB18:
	.loc 1 281 0
.LVL83:
	entry	sp, 32
.LCFI6:
.LVL84:
	.loc 1 284 0
	movi.n	a9, 0
	.loc 1 285 0
	movi.n	a11, 9
	.loc 1 284 0
	j	.L49
.LVL85:
.L53:
	.loc 1 285 0
	addi	a10, a8, -48
	extui	a10, a10, 0, 8
	bgeu	a11, a10, .L55
	addi	a8, a8, -59
	bnez.n	a8, .L54
.L55:
	.loc 1 284 0 discriminator 2
	addi.n	a9, a9, 1
.LVL86:
	extui	a9, a9, 0, 16
.LVL87:
.L49:
	.loc 1 284 0 is_stmt 0 discriminator 1
	add.n	a8, a2, a9
	l8ui	a8, a8, 0
	bnez.n	a8, .L53
	.loc 1 290 0 is_stmt 1
	movi.n	a2, 1
.LVL88:
	retw.n
.LVL89:
.L54:
	.loc 1 286 0
	movi.n	a2, 0
.LVL90:
	.loc 1 291 0
	retw.n
.LFE18:
	.size	utl_isintstr, .-utl_isintstr
	.section	.text.utl_isdialstr,"ax",@progbits
	.literal_position
	.literal .LC6, 25158017
	.align	4
	.global	utl_isdialstr
	.type	utl_isdialstr, @function
utl_isdialstr:
.LFB19:
	.loc 1 305 0
.LVL91:
	entry	sp, 32
.LCFI7:
.LVL92:
	.loc 1 308 0
	movi.n	a10, 0
	.loc 1 310 0
	movi.n	a11, 0x18
	.loc 1 312 0
	movi	a12, -0x21
	.loc 1 313 0
	movi.n	a13, 1
	.loc 1 310 0
	l32r	a14, .LC6
	.loc 1 308 0
	j	.L60
.LVL93:
.L65:
	.loc 1 310 0
	addi	a9, a8, -35
	extui	a9, a9, 0, 8
	bltu	a11, a9, .L61
	ssr	a9
	srl	a9, a14
	extui	a9, a9, 0, 1
	beq	a9, a13, .L62
.L61:
	.loc 1 311 0
	addi	a9, a8, -65
	extui	a9, a9, 0, 8
	bltui	a9, 3, .L62
	.loc 1 312 0
	and	a8, a8, a12
	.loc 1 313 0
	addi	a9, a8, -80
	beqz.n	a9, .L62
	addi	a8, a8, -87
	bnez.n	a8, .L66
.L62:
	.loc 1 308 0 discriminator 2
	addi.n	a10, a10, 1
.LVL94:
	extui	a10, a10, 0, 16
.LVL95:
.L60:
	.loc 1 308 0 is_stmt 0 discriminator 1
	add.n	a8, a2, a10
	l8ui	a8, a8, 0
	bnez.n	a8, .L65
	.loc 1 318 0 is_stmt 1
	movi.n	a2, 1
.LVL96:
	retw.n
.LVL97:
.L66:
	.loc 1 314 0
	movi.n	a2, 0
.LVL98:
	.loc 1 319 0
	retw.n
.LFE19:
	.size	utl_isdialstr, .-utl_isdialstr
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
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
	.uleb128 0x20
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/utl.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x523
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x20
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0xd2
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1a
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x20
	.4byte	0x94
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x21
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x22
	.4byte	0x11b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x8
	.4byte	0xe4
	.4byte	0x132
	.uleb128 0x9
	.4byte	0xbe
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x147
	.4byte	0x144
	.uleb128 0x8
	.4byte	0xe4
	.4byte	0x154
	.uleb128 0x9
	.4byte	0xbe
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.4byte	0x181
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x2e
	.4byte	0xe4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0xe4
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x30
	.4byte	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x31
	.4byte	0x154
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x31
	.4byte	0x23b
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x17
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x19
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x2a
	.4byte	0xfa
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x273
	.uleb128 0x10
	.string	"p_s"
	.byte	0x1
	.byte	0x2a
	.4byte	0xd9
	.4byte	.LLST0
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x2c
	.4byte	0x105
	.4byte	.LLST1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0x10
	.string	"p_s"
	.byte	0x1
	.byte	0x54
	.4byte	0xd9
	.4byte	.LLST2
	.uleb128 0x10
	.string	"p_t"
	.byte	0x1
	.byte	0x54
	.4byte	0xd9
	.4byte	.LLST3
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x56
	.4byte	0xd2
	.4byte	.LLST4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0x77
	.4byte	0xe4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x322
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x77
	.4byte	0xef
	.4byte	.LLST5
	.uleb128 0x12
	.string	"p_s"
	.byte	0x1
	.byte	0x77
	.4byte	0xcc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x79
	.4byte	0xef
	.4byte	.LLST6
	.uleb128 0x11
	.string	"k"
	.byte	0x1
	.byte	0x79
	.4byte	0xef
	.4byte	.LLST7
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0xcc
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x7b
	.4byte	0x110
	.4byte	.LLST9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34c
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.4byte	0x34c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x503
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb6
	.4byte	0x110
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb6
	.4byte	0x3ed
	.4byte	.LLST10
	.uleb128 0x10
	.string	"cmd"
	.byte	0x1
	.byte	0xb6
	.4byte	0xe4
	.4byte	.LLST11
	.uleb128 0x11
	.string	"dev"
	.byte	0x1
	.byte	0xb8
	.4byte	0x132
	.4byte	.LLST12
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb9
	.4byte	0xef
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xba
	.4byte	0xe4
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xba
	.4byte	0xe4
	.4byte	.LLST15
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0xbb
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0x50e
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0x51a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x181
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0xfb
	.4byte	0x110
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0xfb
	.4byte	0x3ed
	.4byte	.LLST16
	.uleb128 0x11
	.string	"dev"
	.byte	0x1
	.byte	0xfd
	.4byte	0x132
	.4byte	.LLST17
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xfe
	.4byte	0xef
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xff
	.4byte	0xe4
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xff
	.4byte	0xe4
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LVL76
	.4byte	0x50e
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x118
	.4byte	0x110
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49a
	.uleb128 0x1b
	.string	"p_s"
	.byte	0x1
	.2byte	0x118
	.4byte	0xd9
	.4byte	.LLST21
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x11a
	.4byte	0xef
	.4byte	.LLST22
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x130
	.4byte	0x110
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x1b
	.string	"p_s"
	.byte	0x1
	.2byte	0x130
	.4byte	0xd9
	.4byte	.LLST23
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x132
	.4byte	0xef
	.4byte	.LLST24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x4e6
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0x122
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x4fe
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x122
	.uleb128 0x1e
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x7cc
	.uleb128 0x1f
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x7a2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7a
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0xc
	.byte	0x78
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x8
	.byte	0x7a
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE17
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"bd_addr_null"
.LASF29:
	.string	"tBTA_UTL_COD"
.LASF56:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF5:
	.string	"__int16_t"
.LASF55:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF62:
	.string	"p_cod"
.LASF70:
	.string	"BTM_ReadDeviceClass"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"sizetype"
.LASF12:
	.string	"int16_t"
.LASF7:
	.string	"__uint16_t"
.LASF31:
	.string	"BTM_CMD_STARTED"
.LASF49:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF60:
	.string	"fill"
.LASF27:
	.string	"major"
.LASF44:
	.string	"BTM_ILLEGAL_ACTION"
.LASF69:
	.string	"free"
.LASF36:
	.string	"BTM_WRONG_MODE"
.LASF61:
	.string	"utl_set_device_class"
.LASF9:
	.string	"long long int"
.LASF23:
	.string	"BOOLEAN"
.LASF15:
	.string	"long int"
.LASF65:
	.string	"utl_isintstr"
.LASF50:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF34:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF19:
	.string	"UINT8"
.LASF47:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF4:
	.string	"__uint8_t"
.LASF75:
	.string	"utl_freebuf"
.LASF21:
	.string	"INT16"
.LASF58:
	.string	"utl_strucmp"
.LASF48:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF43:
	.string	"BTM_CMD_STORED"
.LASF37:
	.string	"BTM_UNKNOWN_ADDR"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"BTM_BUSY"
.LASF35:
	.string	"BTM_ILLEGAL_VALUE"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"uint16_t"
.LASF71:
	.string	"BTM_SetDeviceClass"
.LASF73:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/sys/utl.c"
.LASF1:
	.string	"short unsigned int"
.LASF74:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF20:
	.string	"UINT16"
.LASF18:
	.string	"char"
.LASF28:
	.string	"service"
.LASF38:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF14:
	.string	"int32_t"
.LASF54:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF57:
	.string	"utl_str2int"
.LASF24:
	.string	"_Bool"
.LASF30:
	.string	"BTM_SUCCESS"
.LASF40:
	.string	"BTM_ERR_PROCESSING"
.LASF59:
	.string	"utl_itoa"
.LASF64:
	.string	"utl_get_device_class"
.LASF52:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF53:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF17:
	.string	"long unsigned int"
.LASF51:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF41:
	.string	"BTM_NOT_AUTHORIZED"
.LASF42:
	.string	"BTM_DEV_RESET"
.LASF8:
	.string	"__int32_t"
.LASF46:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF26:
	.string	"minor"
.LASF11:
	.string	"uint8_t"
.LASF72:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"BTM_DELAY_CHECK"
.LASF63:
	.string	"dev_class"
.LASF25:
	.string	"DEV_CLASS"
.LASF66:
	.string	"utl_isdialstr"
.LASF67:
	.string	"bd_addr_any"
.LASF22:
	.string	"INT32"
.LASF33:
	.string	"BTM_NO_RESOURCES"
.LASF39:
	.string	"BTM_BAD_VALUE_RET"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
