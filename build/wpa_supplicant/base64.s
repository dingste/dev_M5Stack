	.file	"base64.c"
	.text
.Ltext0:
	.section	.text.base64_encode,"ax",@progbits
	.literal_position
	.literal .LC2, -1431655765
	.literal .LC3, 954437177
	.literal .LC4, base64_table
	.align	4
	.global	base64_encode
	.type	base64_encode, @function
base64_encode:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/utils/base64.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 37 0
	l32r	a8, .LC2
	slli	a9, a3, 2
	muluh	a9, a9, a8
	.loc 1 38 0
	l32r	a8, .LC3
	.loc 1 37 0
	srli	a9, a9, 1
.LVL1:
	.loc 1 38 0
	addi.n	a10, a9, 4
.LVL2:
	muluh	a10, a10, a8
.LVL3:
	srli	a8, a10, 4
.LVL4:
	.loc 1 39 0
	addi.n	a10, a9, 5
	add.n	a10, a10, a8
.LVL5:
	.loc 1 40 0
	bgeu	a10, a3, .L2
.LVL6:
.L4:
	.loc 1 41 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L2:
	.loc 1 42 0
	call8	malloc
.LVL9:
	.loc 1 43 0
	beqz.n	a10, .L4
	.loc 1 46 0
	add.n	a3, a2, a3
.LVL10:
	.loc 1 50 0
	mov.n	a8, a10
	.loc 1 49 0
	movi.n	a12, 0
	.loc 1 51 0
	l32r	a13, .LC4
	.loc 1 57 0
	movi.n	a14, 0x47
	.loc 1 58 0
	movi.n	a15, 0xa
	.loc 1 50 0
	j	.L5
.LVL11:
.L8:
	.loc 1 51 0
	l8ui	a9, a2, 0
	.loc 1 52 0
	l8ui	a11, a2, 1
	.loc 1 51 0
	srli	a5, a9, 2
	add.n	a5, a13, a5
	l8ui	a5, a5, 0
	.loc 1 52 0
	extui	a9, a9, 0, 2
	.loc 1 51 0
	s8i	a5, a8, 0
.LVL12:
	.loc 1 52 0
	slli	a9, a9, 4
	srli	a5, a11, 4
	or	a9, a9, a5
	add.n	a9, a13, a9
	l8ui	a5, a9, 0
	.loc 1 53 0
	l8ui	a9, a2, 2
	extui	a11, a11, 0, 4
	.loc 1 52 0
	s8i	a5, a8, 1
.LVL13:
	.loc 1 53 0
	slli	a11, a11, 2
	srli	a5, a9, 6
	or	a11, a11, a5
	add.n	a11, a13, a11
	l8ui	a5, a11, 0
	.loc 1 54 0
	extui	a9, a9, 0, 6
	add.n	a9, a13, a9
	.loc 1 53 0
	s8i	a5, a8, 2
.LVL14:
	.loc 1 54 0
	l8ui	a5, a9, 0
	.loc 1 56 0
	addi.n	a12, a12, 4
.LVL15:
	.loc 1 54 0
	s8i	a5, a8, 3
	.loc 1 55 0
	addi.n	a2, a2, 3
.LVL16:
	.loc 1 57 0
	blt	a14, a12, .L6
	.loc 1 54 0
	addi.n	a8, a8, 4
.LVL17:
	j	.L5
.LVL18:
.L6:
	.loc 1 58 0
	s8i	a15, a8, 4
.LVL19:
	.loc 1 59 0
	movi.n	a12, 0
	.loc 1 58 0
	addi.n	a8, a8, 5
.LVL20:
.L5:
	.loc 1 50 0
	sub	a5, a3, a2
	bgei	a5, 3, .L8
	.loc 1 63 0
	beq	a3, a2, .L9
.LVL21:
	.loc 1 64 0
	l8ui	a9, a2, 0
	l32r	a12, .LC4
.LVL22:
	srli	a3, a9, 2
.LVL23:
	add.n	a3, a12, a3
	l8ui	a3, a3, 0
	extui	a9, a9, 0, 2
	s8i	a3, a8, 0
	addi.n	a11, a8, 3
	.loc 1 65 0
	bnei	a5, 1, .L10
.LVL24:
	.loc 1 66 0
	slli	a9, a9, 4
	add.n	a9, a12, a9
	l8ui	a2, a9, 0
.LVL25:
	s8i	a2, a8, 1
.LVL26:
	.loc 1 67 0
	movi.n	a2, 0x3d
	j	.L21
.LVL27:
.L10:
	.loc 1 70 0
	l8ui	a2, a2, 1
.LVL28:
	.loc 1 69 0
	slli	a9, a9, 4
	srli	a3, a2, 4
	or	a3, a9, a3
	.loc 1 71 0
	extui	a2, a2, 0, 4
	.loc 1 69 0
	add.n	a3, a12, a3
	l8ui	a3, a3, 0
	.loc 1 71 0
	addx4	a9, a2, a12
	l8ui	a2, a9, 0
	.loc 1 69 0
	s8i	a3, a8, 1
.LVL29:
.L21:
	.loc 1 71 0
	s8i	a2, a8, 2
	.loc 1 73 0
	movi.n	a2, 0x3d
	addi.n	a8, a11, 1
.LVL30:
	s8i	a2, a11, 0
	j	.L12
.LVL31:
.L9:
	.loc 1 77 0
	beqz.n	a12, .L13
.LVL32:
.L12:
	.loc 1 78 0
	movi.n	a2, 0xa
	s8i	a2, a8, 0
	addi.n	a8, a8, 1
.LVL33:
.L13:
	.loc 1 80 0
	movi.n	a2, 0
	s8i	a2, a8, 0
	mov.n	a2, a10
	.loc 1 81 0
	beqz.n	a4, .L3
.LVL34:
	.loc 1 82 0
	sub	a8, a8, a10
.LVL35:
	s32i.n	a8, a4, 0
.L3:
	.loc 1 84 0
	retw.n
.LFE0:
	.size	base64_encode, .-base64_encode
	.section	.text.base64_decode,"ax",@progbits
	.literal_position
	.literal .LC5, base64_table
	.align	4
	.global	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.loc 1 99 0
.LVL36:
	entry	sp, 304
.LCFI1:
.LVL37:
	.loc 1 104 0
	movi	a12, 0x100
	movi	a11, 0x80
	mov.n	a10, sp
	call8	memset
.LVL38:
	.loc 1 106 0
	l32r	a10, .LC5
	.loc 1 105 0
	movi.n	a8, 0
	.loc 1 106 0
	movi.n	a5, 0x40
	loop	a5, .L23_LEND
.LVL39:
.L23:
	.loc 1 106 0 is_stmt 0 discriminator 3
	add.n	a9, a8, a10
	l8ui	a9, a9, 0
	add.n	a9, sp, a9
	s8i	a8, a9, 0
	.loc 1 105 0 is_stmt 1 discriminator 3
	addi.n	a8, a8, 1
.LVL40:
	.L23_LEND:
	.loc 1 107 0
	movi.n	a5, 0
	.loc 1 109 0
	movi.n	a10, 0
	.loc 1 107 0
	s8i	a5, sp, 61
.LVL41:
	add.n	a3, a2, a3
.LVL42:
	.loc 1 110 0
	mov.n	a9, a2
	.loc 1 112 0
	movi.n	a11, 1
	mov.n	a12, a10
	.loc 1 110 0
	j	.L24
.LVL43:
.L26:
	.loc 1 111 0
	l8ui	a5, a9, 0
	addi.n	a9, a9, 1
.LVL44:
	add.n	a5, sp, a5
	l8ui	a8, a5, 0
	.loc 1 112 0
	mov.n	a5, a12
	addi	a8, a8, -128
	movnez	a5, a11, a8
	add.n	a10, a10, a5
.LVL45:
.L24:
	.loc 1 110 0 discriminator 1
	bne	a9, a3, .L26
	.loc 1 115 0
	bnez.n	a10, .L27
	j	.L47
.L27:
	.loc 1 115 0 is_stmt 0 discriminator 1
	extui	a5, a10, 0, 2
	bnez.n	a5, .L47
.LVL46:
	.loc 1 119 0 is_stmt 1
	srli	a10, a10, 2
.LVL47:
	addx2	a10, a10, a10
	call8	malloc
.LVL48:
	.loc 1 120 0
	beqz.n	a10, .L47
	mov.n	a8, a10
	mov.n	a9, a5
	mov.n	a12, a5
	.loc 1 130 0
	movi.n	a14, 1
	mov.n	a15, a5
	.loc 1 131 0
	addmi	a13, sp, 0x100
	j	.L30
.LVL49:
.L36:
	.loc 1 125 0
	l8ui	a11, a2, 0
	add.n	a5, sp, a11
	l8ui	a5, a5, 0
.LVL50:
	.loc 1 126 0
	beqi	a5, 128, .L31
	.loc 1 130 0
	addi	a11, a11, -61
.LVL51:
	mov.n	a6, a15
	moveqz	a6, a14, a11
	.loc 1 131 0
	add.n	a11, a13, a12
.LVL52:
	s8i	a5, a11, 0
	.loc 1 132 0
	addi.n	a12, a12, 1
.LVL53:
	.loc 1 130 0
	add.n	a9, a9, a6
.LVL54:
	.loc 1 133 0
	bnei	a12, 4, .L31
.LVL55:
	.loc 1 134 0
	l8ui	a12, a13, 1
.LVL56:
	l8ui	a5, a13, 0
	slli	a11, a5, 2
	srli	a5, a12, 4
	or	a5, a11, a5
	.loc 1 135 0
	l8ui	a11, a13, 2
	.loc 1 134 0
	s8i	a5, a8, 0
.LVL57:
	.loc 1 135 0
	slli	a12, a12, 4
	srli	a5, a11, 2
	or	a12, a12, a5
	s8i	a12, a8, 1
	.loc 1 136 0
	l8ui	a12, a13, 3
	slli	a11, a11, 6
	or	a11, a11, a12
	s8i	a11, a8, 2
	addi.n	a5, a8, 3
.LVL58:
	.loc 1 138 0
	beqz.n	a9, .L37
	.loc 1 139 0
	bnei	a9, 1, .L33
	.loc 1 140 0
	addi.n	a8, a8, 2
.LVL59:
	j	.L34
.LVL60:
.L33:
	.loc 1 142 0
	addi.n	a8, a8, 1
	.loc 1 141 0
	beqi	a9, 2, .L34
.L35:
	.loc 1 145 0
	call8	free
.LVL61:
.L47:
	.loc 1 146 0
	movi.n	a2, 0
	retw.n
.LVL62:
.L37:
	.loc 1 136 0
	mov.n	a8, a5
	.loc 1 137 0
	mov.n	a12, a9
.LVL63:
.L31:
	addi.n	a2, a2, 1
.LVL64:
.L30:
	.loc 1 124 0 discriminator 1
	bne	a2, a3, .L36
.LVL65:
.L34:
	.loc 1 153 0
	sub	a8, a8, a10
.LVL66:
	s32i.n	a8, a4, 0
	.loc 1 154 0
	mov.n	a2, a10
.LVL67:
	.loc 1 155 0
	retw.n
.LFE1:
	.size	base64_decode, .-base64_decode
	.section	.rodata.base64_table,"a",@progbits
	.type	base64_table, @object
	.size	base64_table, 65
base64_table:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
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
	.uleb128 0x130
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
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
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.4byte	0x8d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x1d
	.4byte	0x141
	.4byte	.LLST0
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x1d
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1e
	.4byte	0x14c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x20
	.4byte	0x8d
	.4byte	.LLST2
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x20
	.4byte	0x8d
	.4byte	.LLST3
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0x21
	.4byte	0x141
	.4byte	.LLST4
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x21
	.4byte	0x141
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x23
	.4byte	0x4f
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x285
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x147
	.uleb128 0xe
	.4byte	0x3a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x61
	.4byte	0x8d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x61
	.4byte	0x141
	.4byte	.LLST8
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x61
	.4byte	0x5d
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x62
	.4byte	0x14c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x64
	.4byte	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x64
	.4byte	0x8d
	.4byte	.LLST10
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x64
	.4byte	0x8d
	.4byte	.LLST11
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x64
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x3a
	.4byte	.LLST12
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST15
	.uleb128 0xb
	.string	"pad"
	.byte	0x1
	.byte	0x66
	.4byte	0x4f
	.4byte	.LLST16
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0x290
	.4byte	0x23c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0xd
	.4byte	.LVL48
	.4byte	0x285
	.uleb128 0xd
	.4byte	.LVL61
	.4byte	0x29b
	.byte	0
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x25f
	.uleb128 0x6
	.4byte	0x7f
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x26f
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xe
	.4byte	0x280
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_table
	.uleb128 0xe
	.4byte	0x25f
	.uleb128 0x12
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x65
	.uleb128 0x12
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.byte	0x19
	.uleb128 0x12
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x78
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x79
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x79
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x55
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x55
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x57
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7c
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x130
	.byte	0x1c
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xf3
	.byte	0x1c
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x130
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x33
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"char"
.LASF18:
	.string	"count"
.LASF17:
	.string	"block"
.LASF23:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"base64_decode"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/wpa2/utils/base64.c"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"size_t"
.LASF16:
	.string	"dtable"
.LASF21:
	.string	"memset"
.LASF19:
	.string	"base64_table"
.LASF11:
	.string	"out_len"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"line_len"
.LASF0:
	.string	"long long unsigned int"
.LASF12:
	.string	"olen"
.LASF8:
	.string	"sizetype"
.LASF22:
	.string	"free"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF14:
	.string	"base64_encode"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
