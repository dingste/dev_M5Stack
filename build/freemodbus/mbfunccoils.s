	.file	"mbfunccoils.c"
	.text
.Ltext0:
	.section	.text.eMBFuncReadCoils,"ax",@progbits
	.align	4
	.global	eMBFuncReadCoils
	.type	eMBFuncReadCoils, @function
eMBFuncReadCoils:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/functions/mbfunccoils.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 79 0
	l16ui	a4, a3, 0
	.loc 1 141 0
	movi.n	a10, 3
	.loc 1 79 0
	bnei	a4, 5, .L2
.LVL2:
	.loc 1 85 0
	l8ui	a12, a2, 3
	.loc 1 86 0
	l8ui	a4, a2, 4
	.loc 1 85 0
	slli	a12, a12, 8
.LVL3:
	.loc 1 86 0
	or	a12, a12, a4
.LVL4:
	.loc 1 91 0
	addi.n	a4, a12, -1
	extui	a4, a4, 0, 16
	movi	a8, 0x7ce
	bltu	a8, a4, .L2
	.loc 1 96 0
	movi.n	a4, 0
	.loc 1 81 0
	l8ui	a11, a2, 1
	.loc 1 82 0
	l8ui	a8, a2, 2
.LVL5:
	.loc 1 96 0
	s16i	a4, a3, 0
.LVL6:
	.loc 1 99 0
	movi.n	a4, 1
	s8i	a4, a2, 0
	.loc 1 100 0
	l16ui	a4, a3, 0
	srli	a9, a12, 3
	addi.n	a4, a4, 1
	s16i	a4, a3, 0
	.loc 1 104 0
	extui	a10, a12, 0, 3
	.loc 1 110 0
	extui	a4, a9, 0, 8
	.loc 1 104 0
	beqz.n	a10, .L4
	.loc 1 106 0
	addi.n	a9, a9, 1
	extui	a4, a9, 0, 8
.LVL7:
.L4:
	.loc 1 112 0
	s8i	a4, a2, 1
	.loc 1 113 0
	l16ui	a9, a3, 0
	.loc 1 81 0
	slli	a11, a11, 8
.LVL8:
	.loc 1 82 0
	or	a11, a11, a8
	.loc 1 113 0
	addi.n	a9, a9, 1
	.loc 1 115 0
	addi.n	a11, a11, 1
	.loc 1 113 0
	s16i	a9, a3, 0
	.loc 1 115 0
	movi.n	a13, 0
	extui	a11, a11, 0, 16
	addi.n	a10, a2, 2
.LVL9:
	call8	eMBRegCoilsCB
.LVL10:
	.loc 1 120 0
	beqz.n	a10, .L5
	.loc 1 122 0
	call8	prveMBError2Exception
.LVL11:
	j	.L2
.LVL12:
.L5:
	.loc 1 129 0
	l16ui	a2, a3, 0
.LVL13:
	add.n	a9, a4, a2
	s16i	a9, a3, 0
.LVL14:
.L2:
	.loc 1 144 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	eMBFuncReadCoils, .-eMBFuncReadCoils
	.section	.text.eMBFuncWriteCoil,"ax",@progbits
	.align	4
	.global	eMBFuncWriteCoil
	.type	eMBFuncWriteCoil, @function
eMBFuncWriteCoil:
.LFB31:
	.loc 1 149 0
.LVL15:
	entry	sp, 48
.LCFI1:
.LVL16:
	.loc 1 156 0
	l16ui	a9, a3, 0
	.loc 1 149 0
	mov.n	a8, a2
	.loc 1 193 0
	movi.n	a2, 3
.LVL17:
	.loc 1 156 0
	bnei	a9, 5, .L10
.LVL18:
	.loc 1 162 0
	l8ui	a9, a8, 4
	bnez.n	a9, .L10
	.loc 1 163 0 discriminator 1
	l8ui	a12, a8, 3
	.loc 1 162 0 discriminator 1
	movi	a11, 0xfd
	addi.n	a10, a12, -1
	extui	a10, a10, 0, 8
	bgeu	a11, a10, .L10
	.loc 1 166 0
	s8i	a9, sp, 1
	.loc 1 167 0
	movi	a2, 0xff
	.loc 1 158 0
	l8ui	a11, a8, 1
	.loc 1 159 0
	l8ui	a8, a8, 2
.LVL19:
	.loc 1 167 0
	bne	a12, a2, .L11
	.loc 1 169 0
	movi.n	a2, 1
	s8i	a2, sp, 0
	j	.L12
.L11:
	.loc 1 173 0
	s8i	a9, sp, 0
.L12:
	.loc 1 158 0
	slli	a11, a11, 8
.LVL20:
	.loc 1 159 0
	or	a11, a11, a8
	.loc 1 175 0
	movi.n	a13, 1
	addi.n	a11, a11, 1
	mov.n	a12, a13
	extui	a11, a11, 0, 16
	mov.n	a10, sp
	call8	eMBRegCoilsCB
.LVL21:
	.loc 1 153 0
	movi.n	a2, 0
	.loc 1 179 0
	beq	a10, a2, .L10
	.loc 1 181 0
	call8	prveMBError2Exception
.LVL22:
	mov.n	a2, a10
.LVL23:
.L10:
	.loc 1 196 0
	retw.n
.LFE31:
	.size	eMBFuncWriteCoil, .-eMBFuncWriteCoil
	.section	.text.eMBFuncWriteMultipleCoils,"ax",@progbits
	.align	4
	.global	eMBFuncWriteMultipleCoils
	.type	eMBFuncWriteMultipleCoils, @function
eMBFuncWriteMultipleCoils:
.LFB32:
	.loc 1 203 0
.LVL24:
	entry	sp, 32
.LCFI2:
.LVL25:
	.loc 1 212 0
	l16ui	a8, a3, 0
	.loc 1 263 0
	movi.n	a10, 3
	.loc 1 212 0
	bltui	a8, 6, .L19
.LVL26:
	.loc 1 218 0
	l8ui	a12, a2, 3
	.loc 1 219 0
	l8ui	a8, a2, 4
	.loc 1 218 0
	slli	a12, a12, 8
.LVL27:
	.loc 1 219 0
	or	a12, a12, a8
.LVL28:
	ssr	a10
	srl	a8, a12
	.loc 1 224 0
	extui	a9, a12, 0, 3
	.loc 1 221 0
	l8ui	a11, a2, 5
.LVL29:
	.loc 1 230 0
	extui	a10, a8, 0, 8
	.loc 1 224 0
	beqz.n	a9, .L21
	.loc 1 226 0
	addi.n	a8, a8, 1
	extui	a10, a8, 0, 8
.LVL30:
.L21:
	.loc 1 234 0
	addi.n	a9, a12, -1
	extui	a9, a9, 0, 16
	movi	a8, 0x7af
	bltu	a8, a9, .L25
	bne	a10, a11, .L25
	.loc 1 214 0
	l8ui	a11, a2, 1
	.loc 1 215 0
	l8ui	a8, a2, 2
	.loc 1 214 0
	slli	a11, a11, 8
	.loc 1 215 0
	or	a11, a11, a8
	.loc 1 237 0
	addi.n	a11, a11, 1
	movi.n	a13, 1
	extui	a11, a11, 0, 16
	addi.n	a10, a2, 6
.LVL31:
	call8	eMBRegCoilsCB
.LVL32:
	.loc 1 242 0
	beqz.n	a10, .L23
	.loc 1 244 0
	call8	prveMBError2Exception
.LVL33:
	j	.L19
.LVL34:
.L23:
	.loc 1 251 0
	movi.n	a2, 5
.LVL35:
	s16i	a2, a3, 0
	j	.L19
.LVL36:
.L25:
	.loc 1 263 0
	movi.n	a10, 3
.LVL37:
.L19:
	.loc 1 266 0
	mov.n	a2, a10
	retw.n
.LFE32:
	.size	eMBFuncWriteMultipleCoils, .-eMBFuncWriteMultipleCoils
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/include/mb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x377
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x47
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4a
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x3b
	.4byte	0xdf
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x46
	.4byte	0x96
	.uleb128 0x7
	.byte	0x4
	.4byte	0x80
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x68
	.4byte	0x10f
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x71
	.4byte	0x14c
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.byte	0x7a
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1
	.byte	0x45
	.4byte	0xdf
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0xea
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x45
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x47
	.4byte	0x8b
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x48
	.4byte	0x8b
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x49
	.4byte	0x80
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4a
	.4byte	0xea
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4c
	.4byte	0xdf
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x14c
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x363
	.4byte	0x1ff
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL11
	.4byte	0x36f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1
	.byte	0x94
	.4byte	0xdf
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x94
	.4byte	0xea
	.4byte	.LLST7
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x94
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x96
	.4byte	0x8b
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x97
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x99
	.4byte	0xdf
	.4byte	.LLST9
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x9a
	.4byte	0x14c
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LVL21
	.4byte	0x363
	.4byte	0x297
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x36f
	.byte	0
	.uleb128 0x10
	.4byte	0x80
	.4byte	0x2b1
	.uleb128 0x11
	.4byte	0x64
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0xca
	.4byte	0xdf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x363
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0xca
	.4byte	0xea
	.4byte	.LLST11
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0xca
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xcc
	.4byte	0x8b
	.4byte	.LLST12
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0xcd
	.4byte	0x8b
	.4byte	.LLST13
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0xce
	.4byte	0x80
	.4byte	.LLST14
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0xcf
	.4byte	0x80
	.4byte	.LLST15
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd1
	.4byte	0xdf
	.4byte	.LLST16
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd2
	.4byte	0x14c
	.4byte	.LLST17
	.uleb128 0xc
	.4byte	.LVL32
	.4byte	0x363
	.4byte	0x359
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL33
	.4byte	0x36f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x17e
	.uleb128 0x13
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3e
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x14
	.byte	0x72
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x10
	.byte	0x7b
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x14
	.byte	0x78
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x10
	.byte	0x7b
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x15
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL32-1
	.2byte	0x14
	.byte	0x72
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x14
	.byte	0x72
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL32-1
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"MB_EINVAL"
.LASF40:
	.string	"ucNBytes"
.LASF14:
	.string	"MB_EX_NONE"
.LASF19:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF44:
	.string	"eMBFuncReadCoils"
.LASF39:
	.string	"usCoilCount"
.LASF48:
	.string	"usCoilCnt"
.LASF42:
	.string	"eStatus"
.LASF47:
	.string	"eMBFuncWriteMultipleCoils"
.LASF41:
	.string	"pucFrameCur"
.LASF36:
	.string	"pucFrame"
.LASF43:
	.string	"eRegStatus"
.LASF37:
	.string	"usLen"
.LASF18:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF21:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"ucByteCountVerify"
.LASF17:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF38:
	.string	"usRegAddress"
.LASF35:
	.string	"eMBErrorCode"
.LASF51:
	.string	"eMBRegCoilsCB"
.LASF28:
	.string	"MB_ENOREG"
.LASF25:
	.string	"MB_REG_READ"
.LASF16:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"eMBException"
.LASF45:
	.string	"eMBFuncWriteCoil"
.LASF15:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF26:
	.string	"MB_REG_WRITE"
.LASF55:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF23:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF8:
	.string	"sizetype"
.LASF34:
	.string	"MB_ETIMEDOUT"
.LASF5:
	.string	"long long int"
.LASF52:
	.string	"prveMBError2Exception"
.LASF31:
	.string	"MB_ENORES"
.LASF10:
	.string	"char"
.LASF54:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/modbus/functions/mbfunccoils.c"
.LASF46:
	.string	"ucBuf"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"USHORT"
.LASF49:
	.string	"ucByteCount"
.LASF32:
	.string	"MB_EIO"
.LASF12:
	.string	"UCHAR"
.LASF7:
	.string	"long int"
.LASF30:
	.string	"MB_EPORTERR"
.LASF22:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"MB_EX_SLAVE_BUSY"
.LASF11:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF33:
	.string	"MB_EILLSTATE"
.LASF27:
	.string	"MB_ENOERR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
