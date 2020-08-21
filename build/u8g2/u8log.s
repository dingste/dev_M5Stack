	.file	"u8log.c"
	.text
.Ltext0:
	.section	.text.u8log_write_char,"ax",@progbits
	.literal_position
	.align	4
	.global	u8log_write_char
	.type	u8log_write_char, @function
u8log_write_char:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log.c"
	.loc 1 139 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 139 0
	extui	a3, a3, 0, 8
	.loc 1 140 0
	beqi	a3, 10, .L3
	movi.n	a8, 0xa
	bltu	a8, a3, .L4
	movi.n	a8, 9
	beq	a3, a8, .L5
	j	.L2
.L4:
	beqi	a3, 12, .L6
	movi.n	a8, 0xd
	beq	a3, a8, .L7
	j	.L2
.L3:
.LVL1:
.LBB12:
.LBB13:
	.loc 1 144 0
	l8ui	a3, a2, 19
.LVL2:
	.loc 1 143 0
	movi.n	a8, 1
	.loc 1 145 0
	l8ui	a9, a2, 23
	.loc 1 143 0
	s8i	a8, a2, 21
	.loc 1 144 0
	s8i	a3, a2, 20
	.loc 1 145 0
	beqz.n	a9, .L8
	.loc 1 146 0
	s8i	a8, a2, 22
.L8:
	.loc 1 147 0
	movi.n	a8, 0
	.loc 1 148 0
	addi.n	a3, a3, 1
	.loc 1 147 0
	s8i	a8, a2, 23
	.loc 1 148 0
	s8i	a3, a2, 19
	.loc 1 149 0
	s8i	a8, a2, 18
	retw.n
.LVL3:
.L7:
.LBE13:
.LBE12:
	.loc 1 152 0
	movi.n	a3, 1
	s8i	a3, a2, 21
	.loc 1 153 0
	l8ui	a3, a2, 19
	s8i	a3, a2, 20
	.loc 1 154 0
	movi.n	a3, 0
	j	.L27
.L5:
	.loc 1 157 0
	l8ui	a3, a2, 18
	addi.n	a8, a3, 8
	movi.n	a3, -8
	and	a3, a8, a3
.L27:
	s8i	a3, a2, 18
	.loc 1 158 0
	retw.n
.L6:
.LVL4:
.LBB14:
.LBB15:
	.loc 1 57 0
	l8ui	a8, a2, 4
	.loc 1 56 0
	l8ui	a3, a2, 5
.LVL5:
	l32i.n	a9, a2, 12
	.loc 1 57 0
	mull	a3, a8, a3
.LVL6:
	.loc 1 60 0
	movi.n	a10, 0x20
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 16
	addi.n	a8, a8, 1
	loop	a8, .L10_LEND
.LVL7:
.L10:
	s8i	a10, a9, 0
	.loc 1 61 0
	addi.n	a3, a3, -1
.LVL8:
	extui	a3, a3, 0, 16
.LVL9:
	addi.n	a9, a9, 1
.LVL10:
	.L10_LEND:
.LBE15:
.LBE14:
	.loc 1 161 0
	movi.n	a8, 1
	s8i	a8, a2, 22
	.loc 1 162 0
	s8i	a3, a2, 18
	.loc 1 163 0
	s8i	a3, a2, 19
	.loc 1 164 0
	retw.n
.LVL11:
.L2:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.loc 1 99 0
	l8ui	a9, a2, 18
	l8ui	a8, a2, 4
	bltu	a9, a8, .L11
	.loc 1 101 0
	movi.n	a8, 0
	s8i	a8, a2, 18
	.loc 1 102 0
	l8ui	a8, a2, 19
	addi.n	a8, a8, 1
	s8i	a8, a2, 19
.L11:
.LBB20:
.LBB21:
	.loc 1 83 0
	movi.n	a12, 0x20
	movi.n	a11, 1
	j	.L12
.L17:
.LVL12:
	.loc 1 73 0
	addi.n	a9, a9, -1
.LVL13:
	.loc 1 74 0
	mull	a9, a9, a10
.LVL14:
	mov.n	a14, a8
	extui	a9, a9, 0, 16
.LVL15:
	addi.n	a13, a9, -1
	extui	a13, a13, 0, 16
	add.n	a10, a8, a10
.LVL16:
	addi.n	a13, a13, 1
	loop	a13, .L13_LEND
.LVL17:
.L13:
	.loc 1 77 0
	l8ui	a15, a10, 0
	addi.n	a10, a10, 1
.LVL18:
	s8i	a15, a14, 0
	addi.n	a14, a14, 1
	.L13_LEND:
	addi.n	a9, a9, -1
	.loc 1 80 0
	l8ui	a10, a2, 4
.LVL19:
	extui	a9, a9, 0, 16
	addi.n	a9, a9, 1
	add.n	a8, a8, a9
	.loc 1 83 0
	addi.n	a9, a10, -1
	extui	a9, a9, 0, 16
	addi.n	a9, a9, 1
	loop	a9, .L14_LEND
.LVL20:
.L14:
	s8i	a12, a8, 0
	addi.n	a8, a8, 1
.LVL21:
	.L14_LEND:
	.loc 1 87 0
	l8ui	a8, a2, 16
.LVL22:
	beqz.n	a8, .L15
	.loc 1 88 0
	s8i	a11, a2, 22
	j	.L16
.L15:
	.loc 1 90 0
	s8i	a11, a2, 23
.L16:
.LBE21:
.LBE20:
	.loc 1 107 0
	l8ui	a8, a2, 19
	addi.n	a8, a8, -1
	s8i	a8, a2, 19
.L12:
	.loc 1 104 0
	l8ui	a13, a2, 19
	l8ui	a9, a2, 5
	l8ui	a10, a2, 4
	l32i.n	a8, a2, 12
	bgeu	a13, a9, .L17
.LBE19:
.LBE18:
	.loc 1 117 0
	mul16u	a10, a13, a10
	l8ui	a9, a2, 18
	add.n	a10, a8, a10
	add.n	a10, a10, a9
	s8i	a3, a10, 0
	.loc 1 118 0
	l8ui	a3, a2, 18
.LVL23:
	addi.n	a3, a3, 1
	s8i	a3, a2, 18
	.loc 1 120 0
	l8ui	a3, a2, 16
	beqz.n	a3, .L1
	.loc 1 122 0
	movi.n	a3, 1
	s8i	a3, a2, 21
	.loc 1 123 0
	l8ui	a3, a2, 19
	s8i	a3, a2, 20
.L1:
	retw.n
.LBE17:
.LBE16:
.LFE4:
	.size	u8log_write_char, .-u8log_write_char
	.section	.text.u8log_Init,"ax",@progbits
	.align	4
	.global	u8log_Init
	.type	u8log_Init, @function
u8log_Init:
.LFB5:
	.loc 1 172 0
.LVL24:
	entry	sp, 32
.LCFI1:
	.loc 1 173 0
	mov.n	a10, a2
	movi.n	a12, 0x18
	movi.n	a11, 0
	call8	memset
.LVL25:
	.loc 1 172 0
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
.LBB24:
.LBB25:
	.loc 1 57 0
	mull	a8, a3, a4
.LBE25:
.LBE24:
	.loc 1 174 0
	s8i	a3, a2, 4
.LBB28:
.LBB26:
	.loc 1 60 0
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 16
.LBE26:
.LBE28:
	.loc 1 175 0
	s8i	a4, a2, 5
	.loc 1 176 0
	s32i.n	a5, a2, 12
.LVL26:
.LBB29:
.LBB27:
	.loc 1 60 0
	addi.n	a8, a8, 1
	movi.n	a2, 0x20
	loop	a8, .L29_LEND
.LVL27:
.L29:
	s8i	a2, a5, 0
	addi.n	a5, a5, 1
.LVL28:
	.L29_LEND:
.LBE27:
.LBE29:
	.loc 1 178 0
	retw.n
.LFE5:
	.size	u8log_Init, .-u8log_Init
	.section	.text.u8log_SetCallback,"ax",@progbits
	.align	4
	.global	u8log_SetCallback
	.type	u8log_SetCallback, @function
u8log_SetCallback:
.LFB6:
	.loc 1 181 0
.LVL29:
	entry	sp, 32
.LCFI2:
	.loc 1 182 0
	s32i.n	a3, a2, 8
	.loc 1 183 0
	s32i.n	a4, a2, 0
	retw.n
.LFE6:
	.size	u8log_SetCallback, .-u8log_SetCallback
	.section	.text.u8log_SetRedrawMode,"ax",@progbits
	.align	4
	.global	u8log_SetRedrawMode
	.type	u8log_SetRedrawMode, @function
u8log_SetRedrawMode:
.LFB7:
	.loc 1 187 0
.LVL30:
	entry	sp, 32
.LCFI3:
	.loc 1 188 0
	s8i	a3, a2, 16
	retw.n
.LFE7:
	.size	u8log_SetRedrawMode, .-u8log_SetRedrawMode
	.section	.text.u8log_SetLineHeightOffset,"ax",@progbits
	.align	4
	.global	u8log_SetLineHeightOffset
	.type	u8log_SetLineHeightOffset, @function
u8log_SetLineHeightOffset:
.LFB8:
	.loc 1 193 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 194 0
	s8i	a3, a2, 17
	retw.n
.LFE8:
	.size	u8log_SetLineHeightOffset, .-u8log_SetLineHeightOffset
	.section	.text.u8log_WriteChar,"ax",@progbits
	.literal_position
	.literal .LC2, 16776960
	.align	4
	.global	u8log_WriteChar
	.type	u8log_WriteChar, @function
u8log_WriteChar:
.LFB9:
	.loc 1 200 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 201 0
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	u8log_write_char
.LVL33:
	.loc 1 202 0
	l32i.n	a9, a2, 20
	l32r	a8, .LC2
	bnone	a9, a8, .L34
	.loc 1 204 0
	l32i.n	a8, a2, 8
	beqz.n	a8, .L36
	.loc 1 206 0
	mov.n	a10, a2
	callx8	a8
.LVL34:
.L36:
	.loc 1 208 0
	movi.n	a8, 0
	s8i	a8, a2, 21
	.loc 1 209 0
	s8i	a8, a2, 22
.L34:
	retw.n
.LFE9:
	.size	u8log_WriteChar, .-u8log_WriteChar
	.section	.text.u8log_WriteHexHalfByte,"ax",@progbits
	.align	4
	.type	u8log_WriteHexHalfByte, @function
u8log_WriteHexHalfByte:
.LFB11:
	.loc 1 224 0
.LVL35:
	entry	sp, 32
.LCFI6:
	.loc 1 225 0
	extui	a11, a3, 0, 4
.LVL36:
	.loc 1 226 0
	movi.n	a8, 9
	.loc 1 224 0
	mov.n	a10, a2
	.loc 1 226 0
	bltu	a8, a11, .L44
	.loc 1 227 0
	addi	a11, a11, 48
.LVL37:
	j	.L46
.LVL38:
.L44:
	.loc 1 229 0
	addi	a11, a11, 87
.LVL39:
.L46:
	call8	u8log_WriteChar
.LVL40:
	retw.n
.LFE11:
	.size	u8log_WriteHexHalfByte, .-u8log_WriteHexHalfByte
	.section	.text.u8log_WriteString,"ax",@progbits
	.align	4
	.global	u8log_WriteString
	.type	u8log_WriteString, @function
u8log_WriteString:
.LFB10:
	.loc 1 214 0
.LVL41:
	entry	sp, 32
.LCFI7:
	.loc 1 215 0
	j	.L48
.L49:
	.loc 1 217 0
	mov.n	a10, a2
	call8	u8log_WriteChar
.LVL42:
	.loc 1 218 0
	addi.n	a3, a3, 1
.LVL43:
.L48:
	.loc 1 215 0
	l8ui	a11, a3, 0
	bnez.n	a11, .L49
	.loc 1 220 0
	retw.n
.LFE10:
	.size	u8log_WriteString, .-u8log_WriteString
	.section	.text.u8log_WriteHex8,"ax",@progbits
	.align	4
	.global	u8log_WriteHex8
	.type	u8log_WriteHex8, @function
u8log_WriteHex8:
.LFB12:
	.loc 1 233 0
.LVL44:
	entry	sp, 32
.LCFI8:
	.loc 1 233 0
	extui	a3, a3, 0, 8
	.loc 1 234 0
	srli	a11, a3, 4
	mov.n	a10, a2
	call8	u8log_WriteHexHalfByte
.LVL45:
	.loc 1 235 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	u8log_WriteHexHalfByte
.LVL46:
	retw.n
.LFE12:
	.size	u8log_WriteHex8, .-u8log_WriteHex8
	.section	.text.u8log_WriteHex16,"ax",@progbits
	.align	4
	.global	u8log_WriteHex16
	.type	u8log_WriteHex16, @function
u8log_WriteHex16:
.LFB13:
	.loc 1 239 0
.LVL47:
	entry	sp, 32
.LCFI9:
	.loc 1 239 0
	extui	a3, a3, 0, 16
	.loc 1 240 0
	srli	a11, a3, 8
	mov.n	a10, a2
	call8	u8log_WriteHex8
.LVL48:
	.loc 1 241 0
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	u8log_WriteHex8
.LVL49:
	retw.n
.LFE13:
	.size	u8log_WriteHex16, .-u8log_WriteHex16
	.section	.text.u8log_WriteHex32,"ax",@progbits
	.align	4
	.global	u8log_WriteHex32
	.type	u8log_WriteHex32, @function
u8log_WriteHex32:
.LFB14:
	.loc 1 245 0
.LVL50:
	entry	sp, 32
.LCFI10:
	.loc 1 246 0
	extui	a11, a3, 16, 16
	mov.n	a10, a2
	call8	u8log_WriteHex16
.LVL51:
	.loc 1 247 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	u8log_WriteHex16
.LVL52:
	retw.n
.LFE14:
	.size	u8log_WriteHex32, .-u8log_WriteHex32
	.section	.text.u8log_WriteDec8,"ax",@progbits
	.align	4
	.global	u8log_WriteDec8
	.type	u8log_WriteDec8, @function
u8log_WriteDec8:
.LFB15:
	.loc 1 252 0
.LVL53:
	entry	sp, 32
.LCFI11:
	.loc 1 253 0
	extui	a11, a4, 0, 8
	extui	a10, a3, 0, 8
	call8	u8x8_u8toa
.LVL54:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8log_WriteString
.LVL55:
	retw.n
.LFE15:
	.size	u8log_WriteDec8, .-u8log_WriteDec8
	.section	.text.u8log_WriteDec16,"ax",@progbits
	.align	4
	.global	u8log_WriteDec16
	.type	u8log_WriteDec16, @function
u8log_WriteDec16:
.LFB16:
	.loc 1 258 0
.LVL56:
	entry	sp, 32
.LCFI12:
	.loc 1 259 0
	extui	a11, a4, 0, 8
	extui	a10, a3, 0, 16
	call8	u8x8_u16toa
.LVL57:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	u8log_WriteString
.LVL58:
	retw.n
.LFE16:
	.size	u8log_WriteDec16, .-u8log_WriteDec16
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI4-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI7-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI8-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI9-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI11-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI12-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x799
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x187
	.4byte	0xf0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x18
	.byte	0x4
	.2byte	0x18d
	.4byte	0x1a6
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x190
	.4byte	0xc3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x191
	.4byte	0x94
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x191
	.4byte	0x94
	.byte	0x5
	.uleb128 0xb
	.string	"cb"
	.byte	0x4
	.2byte	0x192
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x193
	.4byte	0xde
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x194
	.4byte	0x94
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x195
	.4byte	0x89
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x199
	.4byte	0x94
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x199
	.4byte	0x94
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x19a
	.4byte	0x94
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x19b
	.4byte	0x94
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x19c
	.4byte	0x94
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x19d
	.4byte	0x94
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x18b
	.4byte	0x1b2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b8
	.uleb128 0xc
	.4byte	0x1c3
	.uleb128 0xd
	.4byte	0x1c3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	0x1ea
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8a
	.4byte	0x1c3
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x8a
	.4byte	0x94
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x218
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x35
	.4byte	0x1c3
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x37
	.4byte	0xde
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0x239
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x72
	.4byte	0x1c3
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x72
	.4byte	0x94
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x251
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.4byte	0x1c3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x28a
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x44
	.4byte	0x1c3
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x46
	.4byte	0xde
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x47
	.4byte	0xde
	.uleb128 0x13
	.string	"cnt"
	.byte	0x1
	.byte	0x48
	.4byte	0x9f
	.byte	0
	.uleb128 0x14
	.4byte	0x1c9
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0x15
	.4byte	0x1d5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	0x1e0
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x2cd
	.uleb128 0x16
	.4byte	0x1e0
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	0x1d5
	.4byte	.LLST2
	.byte	0
	.uleb128 0x18
	.4byte	0x1ea
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0xa0
	.4byte	0x306
	.uleb128 0x16
	.4byte	0x1f6
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1a
	.4byte	0x201
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x20c
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x218
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xa6
	.uleb128 0x16
	.4byte	0x22f
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	0x224
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	0x239
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x74
	.uleb128 0x15
	.4byte	0x245
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	0x251
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x6a
	.uleb128 0x1c
	.4byte	0x25d
	.uleb128 0x19
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1a
	.4byte	0x268
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	0x273
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	0x27e
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xab
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x411
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0xab
	.4byte	0x1c3
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF21
	.byte	0x1
	.byte	0xab
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF22
	.byte	0x1
	.byte	0xab
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0xab
	.4byte	0xde
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	0x1ea
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb1
	.4byte	0x3f6
	.uleb128 0x16
	.4byte	0x1f6
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	0x201
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	0x20c
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x77b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44d
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb4
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"cb"
	.byte	0x1
	.byte	0xb4
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb4
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x1
	.byte	0xba
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47d
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xba
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0x1
	.byte	0xba
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ad
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc0
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc0
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc7
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xc7
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0x1c9
	.4byte	0x4f7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF57
	.byte	0x1
	.byte	0xdf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdf
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0xdf
	.4byte	0x94
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LVL40
	.4byte	0x4ad
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57d
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd5
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xd5
	.4byte	0xd3
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0x4ad
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dd
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe8
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.byte	0xe8
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL45
	.4byte	0x504
	.4byte	0x5c6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0x504
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0xee
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xee
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"v"
	.byte	0x1
	.byte	0xee
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL48
	.4byte	0x57d
	.4byte	0x626
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL49
	.4byte	0x57d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf4
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"v"
	.byte	0x1
	.byte	0xf4
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL51
	.4byte	0x5dd
	.4byte	0x689
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL52
	.4byte	0x5dd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70d
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0xfb
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"v"
	.byte	0x1
	.byte	0xfb
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.byte	0xfb
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL54
	.4byte	0x784
	.4byte	0x6fc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL55
	.4byte	0x53d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x101
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77b
	.uleb128 0x2c
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x101
	.4byte	0x1c3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.2byte	0x101
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.2byte	0x101
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0x790
	.4byte	0x76a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0x53d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF58
	.4byte	.LASF58
	.uleb128 0x2f
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x3c8
	.uleb128 0x2f
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x3c9
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xb
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x72
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7b
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"u8log_SetRedrawMode"
.LASF36:
	.string	"u8log_write_to_screen"
.LASF35:
	.string	"u8log_clear_screen"
.LASF1:
	.string	"__uint8_t"
.LASF25:
	.string	"line_height_offset"
.LASF50:
	.string	"u8x8_u8toa"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF53:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8log.c"
.LASF20:
	.string	"aux_data"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF47:
	.string	"u8log_WriteHex32"
.LASF19:
	.string	"u8log_t"
.LASF15:
	.string	"long int"
.LASF51:
	.string	"u8x8_u16toa"
.LASF49:
	.string	"u8log_WriteDec16"
.LASF13:
	.string	"uint16_t"
.LASF45:
	.string	"u8log_WriteHex8"
.LASF57:
	.string	"u8log_WriteHexHalfByte"
.LASF7:
	.string	"__uint32_t"
.LASF38:
	.string	"u8log_scroll_up"
.LASF8:
	.string	"unsigned int"
.LASF43:
	.string	"u8log_WriteChar"
.LASF23:
	.string	"screen_buffer"
.LASF17:
	.string	"long unsigned int"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"width"
.LASF6:
	.string	"short unsigned int"
.LASF33:
	.string	"u8log"
.LASF40:
	.string	"u8log_SetCallback"
.LASF56:
	.string	"u8log_write_char"
.LASF29:
	.string	"is_redraw_line"
.LASF44:
	.string	"u8log_WriteString"
.LASF16:
	.string	"sizetype"
.LASF28:
	.string	"redraw_line"
.LASF30:
	.string	"is_redraw_all"
.LASF27:
	.string	"cursor_y"
.LASF31:
	.string	"is_redraw_all_required_for_next_nl"
.LASF32:
	.string	"u8log_cb"
.LASF34:
	.string	"dest"
.LASF24:
	.string	"is_redraw_line_for_each_char"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"u8log_WriteDec8"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"u8log_SetLineHeightOffset"
.LASF14:
	.string	"uint32_t"
.LASF26:
	.string	"cursor_x"
.LASF18:
	.string	"char"
.LASF5:
	.string	"__uint16_t"
.LASF55:
	.string	"u8log_struct"
.LASF54:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF39:
	.string	"u8log_Init"
.LASF11:
	.string	"int8_t"
.LASF58:
	.string	"memset"
.LASF37:
	.string	"u8log_cursor_on_screen"
.LASF12:
	.string	"uint8_t"
.LASF46:
	.string	"u8log_WriteHex16"
.LASF22:
	.string	"height"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
