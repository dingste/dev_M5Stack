	.file	"core_hsalsa20_ref2.c"
	.text
.Ltext0:
	.section	.text.load32_le,"ax",@progbits
	.align	4
	.type	load32_le, @function
load32_le:
.LFB6:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 1 80 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 83 0
	l8ui	a8, a2, 0
	l8ui	a9, a2, 1
	s8i	a8, sp, 0
	l8ui	a8, a2, 2
	l8ui	a2, a2, 3
.LVL1:
	s8i	a9, sp, 1
	s8i	a8, sp, 2
	s8i	a2, sp, 3
	.loc 1 92 0
	l32i.n	a2, sp, 0
	retw.n
.LFE6:
	.size	load32_le, .-load32_le
	.section	.text.store32_le,"ax",@progbits
	.align	4
	.type	store32_le, @function
store32_le:
.LFB7:
	.loc 1 97 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 99 0
	srli	a9, a3, 8
	extui	a8, a3, 16, 16
	s8i	a3, a2, 0
	extui	a3, a3, 24, 8
.LVL3:
	s8i	a9, a2, 1
	s8i	a8, a2, 2
	s8i	a3, a2, 3
	retw.n
.LFE7:
	.size	store32_le, .-store32_le
	.section	.text.crypto_core_hsalsa20,"ax",@progbits
	.literal_position
	.literal .LC0, 1797285236
	.literal .LC1, 2036477234
	.literal .LC2, 857760878
	.literal .LC3, 1634760805
	.align	4
	.global	crypto_core_hsalsa20
	.type	crypto_core_hsalsa20, @function
crypto_core_hsalsa20:
.LFB12:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/ref2/core_hsalsa20_ref2.c"
	.loc 2 21 0
.LVL4:
	entry	sp, 112
.LCFI2:
	.loc 2 26 0
	beqz.n	a5, .L7
	.loc 2 32 0
	mov.n	a10, a5
	call8	load32_le
.LVL5:
	mov.n	a11, a10
.LVL6:
	.loc 2 33 0
	addi.n	a10, a5, 4
.LVL7:
	s32i	a11, sp, 64
	call8	load32_le
.LVL8:
	mov.n	a7, a10
.LVL9:
	.loc 2 34 0
	addi.n	a10, a5, 8
	call8	load32_le
.LVL10:
	mov.n	a6, a10
.LVL11:
	.loc 2 35 0
	addi.n	a10, a5, 12
	call8	load32_le
.LVL12:
	mov.n	a5, a10
.LVL13:
	l32i	a11, sp, 64
	j	.L4
.LVL14:
.L7:
	.loc 2 30 0
	l32r	a5, .LC0
.LVL15:
	.loc 2 29 0
	l32r	a6, .LC1
	.loc 2 28 0
	l32r	a7, .LC2
	.loc 2 27 0
	l32r	a11, .LC3
.L4:
.LVL16:
	.loc 2 37 0
	mov.n	a10, a4
	s32i	a11, sp, 64
	call8	load32_le
.LVL17:
	s32i.n	a10, sp, 0
.LVL18:
	.loc 2 38 0
	addi.n	a10, a4, 4
.LVL19:
	call8	load32_le
.LVL20:
	s32i.n	a10, sp, 8
.LVL21:
	.loc 2 39 0
	addi.n	a10, a4, 8
.LVL22:
	call8	load32_le
.LVL23:
	s32i.n	a10, sp, 20
.LVL24:
	.loc 2 40 0
	addi.n	a10, a4, 12
.LVL25:
	call8	load32_le
.LVL26:
	mov.n	a13, a10
.LVL27:
	.loc 2 41 0
	addi	a10, a4, 16
.LVL28:
	s32i.n	a13, sp, 60
	call8	load32_le
.LVL29:
	mov.n	a15, a10
.LVL30:
	.loc 2 42 0
	addi	a10, a4, 20
.LVL31:
	s32i.n	a15, sp, 52
	call8	load32_le
.LVL32:
	mov.n	a9, a10
.LVL33:
	.loc 2 43 0
	addi	a10, a4, 24
	s32i.n	a9, sp, 48
	call8	load32_le
.LVL34:
	mov.n	a12, a10
.LVL35:
	.loc 2 44 0
	addi	a10, a4, 28
.LVL36:
	s32i.n	a12, sp, 44
	call8	load32_le
.LVL37:
	mov.n	a14, a10
.LVL38:
	.loc 2 45 0
	mov.n	a10, a3
.LVL39:
	s32i.n	a14, sp, 40
	call8	load32_le
.LVL40:
	mov.n	a4, a10
.LVL41:
	.loc 2 46 0
	addi.n	a10, a3, 4
	call8	load32_le
.LVL42:
	s32i.n	a10, sp, 4
.LVL43:
	.loc 2 47 0
	addi.n	a10, a3, 8
.LVL44:
	call8	load32_le
.LVL45:
	mov.n	a8, a10
.LVL46:
	.loc 2 48 0
	addi.n	a10, a3, 12
	s32i.n	a8, sp, 56
	call8	load32_le
.LVL47:
	mov.n	a3, a10
.LVL48:
	.loc 2 50 0
	movi.n	a10, 0xb
	s32i.n	a10, sp, 16
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 48
	l32i	a11, sp, 64
	l32i.n	a12, sp, 44
	l32i.n	a13, sp, 60
	l32i.n	a14, sp, 40
	l32i.n	a15, sp, 52
	j	.L5
.LVL49:
.L6:
	.loc 2 51 0 discriminator 3
	add.n	a10, a11, a9
.LVL50:
	ssai	25
	src	a10, a10, a10
.LVL51:
	xor	a13, a10, a13
.LVL52:
	.loc 2 52 0 discriminator 3
	add.n	a10, a11, a13
.LVL53:
	ssai	23
	src	a10, a10, a10
.LVL54:
	xor	a10, a10, a8
	.loc 2 53 0 discriminator 3
	add.n	a8, a13, a10
.LVL55:
	ssai	19
	src	a8, a8, a8
	xor	a8, a8, a9
	s32i.n	a8, sp, 36
	.loc 2 55 0 discriminator 3
	l32i.n	a9, sp, 0
.LVL56:
	.loc 2 54 0 discriminator 3
	add.n	a8, a10, a8
	ssai	14
	src	a8, a8, a8
	xor	a11, a8, a11
.LVL57:
	.loc 2 55 0 discriminator 3
	add.n	a8, a9, a7
	ssai	25
	src	a8, a8, a8
	xor	a8, a8, a3
	.loc 2 56 0 discriminator 3
	add.n	a3, a7, a8
.LVL58:
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a12
	.loc 2 55 0 discriminator 3
	s32i.n	a8, sp, 12
	.loc 2 57 0 discriminator 3
	add.n	a8, a8, a3
	ssai	19
	src	a8, a8, a8
	xor	a8, a8, a9
	.loc 2 56 0 discriminator 3
	s32i.n	a3, sp, 28
	.loc 2 58 0 discriminator 3
	add.n	a3, a3, a8
	ssai	14
	src	a3, a3, a3
	xor	a7, a3, a7
.LVL59:
	.loc 2 59 0 discriminator 3
	add.n	a3, a4, a6
	ssai	25
	src	a3, a3, a3
	xor	a14, a3, a14
.LVL60:
	.loc 2 60 0 discriminator 3
	add.n	a3, a6, a14
	l32i.n	a12, sp, 8
.LVL61:
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a12
	.loc 2 61 0 discriminator 3
	add.n	a9, a14, a3
	ssai	19
	src	a9, a9, a9
	xor	a4, a9, a4
.LVL62:
	.loc 2 62 0 discriminator 3
	add.n	a9, a3, a4
	ssai	14
	src	a9, a9, a9
	xor	a6, a9, a6
.LVL63:
	.loc 2 52 0 discriminator 3
	s32i.n	a10, sp, 24
.LVL64:
	.loc 2 63 0 discriminator 3
	l32i.n	a9, sp, 20
	add.n	a10, a15, a5
.LVL65:
	ssai	25
	src	a10, a10, a10
.LVL66:
	xor	a10, a10, a9
.LVL67:
	.loc 2 64 0 discriminator 3
	add.n	a9, a5, a10
.LVL68:
	l32i.n	a12, sp, 4
	ssai	23
	src	a9, a9, a9
.LVL69:
	xor	a9, a9, a12
.LVL70:
	.loc 2 65 0 discriminator 3
	add.n	a12, a10, a9
.LVL71:
	ssai	19
	src	a12, a12, a12
.LVL72:
	xor	a15, a12, a15
.LVL73:
	.loc 2 66 0 discriminator 3
	add.n	a12, a9, a15
.LVL74:
	ssai	14
	src	a12, a12, a12
.LVL75:
	xor	a12, a12, a5
	.loc 2 67 0 discriminator 3
	add.n	a5, a11, a10
.LVL76:
	ssai	25
	src	a5, a5, a5
	xor	a5, a5, a8
	s32i.n	a5, sp, 0
	.loc 2 68 0 discriminator 3
	add.n	a5, a11, a5
	.loc 2 69 0 discriminator 3
	l32i.n	a8, sp, 0
.LVL77:
	.loc 2 68 0 discriminator 3
	ssai	23
	src	a5, a5, a5
	xor	a5, a5, a3
	.loc 2 69 0 discriminator 3
	add.n	a3, a8, a5
.LVL78:
	ssai	19
	src	a3, a3, a3
	xor	a3, a3, a10
	s32i.n	a3, sp, 20
	.loc 2 70 0 discriminator 3
	add.n	a3, a5, a3
	ssai	14
	src	a3, a3, a3
	xor	a11, a3, a11
.LVL79:
	.loc 2 71 0 discriminator 3
	add.n	a3, a13, a7
	ssai	25
	src	a3, a3, a3
	xor	a4, a3, a4
.LVL80:
	.loc 2 72 0 discriminator 3
	add.n	a3, a7, a4
	ssai	23
	src	a3, a3, a3
	xor	a3, a3, a9
	s32i.n	a3, sp, 4
	.loc 2 73 0 discriminator 3
	add.n	a3, a4, a3
	ssai	19
	src	a3, a3, a3
	.loc 2 74 0 discriminator 3
	l32i.n	a9, sp, 4
.LVL81:
	.loc 2 73 0 discriminator 3
	xor	a13, a3, a13
.LVL82:
	.loc 2 75 0 discriminator 3
	l32i.n	a10, sp, 12
.LVL83:
	.loc 2 74 0 discriminator 3
	add.n	a3, a9, a13
	ssai	14
	src	a3, a3, a3
	xor	a7, a3, a7
.LVL84:
	.loc 2 75 0 discriminator 3
	add.n	a3, a10, a6
	ssai	25
	src	a3, a3, a3
	xor	a15, a3, a15
.LVL85:
	.loc 2 66 0 discriminator 3
	s32i.n	a12, sp, 32
.LVL86:
	.loc 2 76 0 discriminator 3
	add.n	a8, a6, a15
.LVL87:
	l32i.n	a12, sp, 24
.LVL88:
	ssai	23
	src	a8, a8, a8
	xor	a8, a8, a12
	.loc 2 77 0 discriminator 3
	add.n	a3, a15, a8
	ssai	19
	src	a3, a3, a3
	xor	a3, a3, a10
	.loc 2 68 0 discriminator 3
	s32i.n	a5, sp, 8
.LVL89:
	.loc 2 78 0 discriminator 3
	add.n	a5, a8, a3
.LVL90:
	ssai	14
	src	a5, a5, a5
.LVL91:
	xor	a6, a5, a6
.LVL92:
	.loc 2 79 0 discriminator 3
	l32i.n	a5, sp, 32
	l32i.n	a10, sp, 36
	add.n	a9, a14, a5
.LVL93:
	ssai	25
	src	a9, a9, a9
.LVL94:
	xor	a9, a9, a10
.LVL95:
	.loc 2 80 0 discriminator 3
	add.n	a12, a5, a9
.LVL96:
	l32i.n	a5, sp, 28
	ssai	23
	src	a12, a12, a12
.LVL97:
	xor	a12, a12, a5
.LVL98:
	.loc 2 81 0 discriminator 3
	add.n	a5, a9, a12
.LVL99:
	ssai	19
	src	a5, a5, a5
.LVL100:
	xor	a14, a5, a14
.LVL101:
	.loc 2 82 0 discriminator 3
	add.n	a5, a12, a14
.LVL102:
	l32i.n	a10, sp, 32
	ssai	14
	src	a5, a5, a5
.LVL103:
	xor	a5, a5, a10
.LVL104:
.L5:
	l32i.n	a10, sp, 16
	addi.n	a10, a10, -1
	s32i.n	a10, sp, 16
.LVL105:
	.loc 2 50 0 discriminator 1
	bnez.n	a10, .L6
	.loc 2 85 0
	mov.n	a10, a2
.LVL106:
	s32i.n	a8, sp, 56
	call8	store32_le
.LVL107:
	.loc 2 86 0
	mov.n	a11, a7
	addi.n	a10, a2, 4
	call8	store32_le
.LVL108:
	.loc 2 87 0
	mov.n	a11, a6
	addi.n	a10, a2, 8
	call8	store32_le
.LVL109:
	.loc 2 88 0
	mov.n	a11, a5
	addi.n	a10, a2, 12
	call8	store32_le
.LVL110:
	.loc 2 89 0
	mov.n	a11, a4
	addi	a10, a2, 16
	call8	store32_le
.LVL111:
	.loc 2 90 0
	l32i.n	a11, sp, 4
	addi	a10, a2, 20
	call8	store32_le
.LVL112:
	.loc 2 91 0
	l32i.n	a8, sp, 56
	addi	a10, a2, 24
	mov.n	a11, a8
	call8	store32_le
.LVL113:
	.loc 2 92 0
	addi	a10, a2, 28
	mov.n	a11, a3
	call8	store32_le
.LVL114:
	.loc 2 95 0
	l32i.n	a2, sp, 16
.LVL115:
	retw.n
.LFE12:
	.size	crypto_core_hsalsa20, .-crypto_core_hsalsa20
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x498
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc
	.4byte	0x7a
	.byte	0x3
	.4byte	0xca
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xc
	.4byte	0xca
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.byte	0xc
	.4byte	0xcf
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4f
	.4byte	0x7a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109
	.uleb128 0xa
	.string	"src"
	.byte	0x1
	.byte	0x4f
	.4byte	0x109
	.4byte	.LLST0
	.uleb128 0xb
	.string	"w"
	.byte	0x1
	.byte	0x52
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10f
	.uleb128 0x8
	.4byte	0x6f
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x60
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x144
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x60
	.4byte	0x144
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"w"
	.byte	0x1
	.byte	0x60
	.4byte	0x7a
	.4byte	.LLST1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x2
	.byte	0x11
	.4byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x490
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x11
	.4byte	0x9a
	.4byte	.LLST2
	.uleb128 0xa
	.string	"in"
	.byte	0x2
	.byte	0x12
	.4byte	0x490
	.4byte	.LLST3
	.uleb128 0xa
	.string	"k"
	.byte	0x2
	.byte	0x13
	.4byte	0x490
	.4byte	.LLST4
	.uleb128 0xa
	.string	"c"
	.byte	0x2
	.byte	0x14
	.4byte	0x490
	.4byte	.LLST5
	.uleb128 0xf
	.string	"x0"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0xf
	.string	"x1"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xf
	.string	"x2"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST8
	.uleb128 0xf
	.string	"x3"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0xf
	.string	"x4"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0xf
	.string	"x5"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0xf
	.string	"x6"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0xf
	.string	"x7"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST13
	.uleb128 0xf
	.string	"x8"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0xf
	.string	"x9"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0xf
	.string	"x10"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST16
	.uleb128 0xf
	.string	"x11"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0xf
	.string	"x12"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0xf
	.string	"x13"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0xf
	.string	"x14"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0xf
	.string	"x15"
	.byte	0x2
	.byte	0x17
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0xf
	.string	"i"
	.byte	0x2
	.byte	0x18
	.4byte	0x48
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0xd4
	.4byte	0x2a1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0xd4
	.4byte	0x2b5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0xd4
	.4byte	0x2c9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0xd4
	.4byte	0x2dd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL17
	.4byte	0xd4
	.4byte	0x2f1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL20
	.4byte	0xd4
	.4byte	0x305
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL23
	.4byte	0xd4
	.4byte	0x319
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL26
	.4byte	0xd4
	.4byte	0x32d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL29
	.4byte	0xd4
	.4byte	0x341
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.4byte	.LVL32
	.4byte	0xd4
	.4byte	0x355
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL34
	.4byte	0xd4
	.4byte	0x369
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x10
	.4byte	.LVL37
	.4byte	0xd4
	.4byte	0x37d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0x10
	.4byte	.LVL40
	.4byte	0xd4
	.4byte	0x391
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL42
	.4byte	0xd4
	.4byte	0x3a5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL45
	.4byte	0xd4
	.4byte	0x3b9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL47
	.4byte	0xd4
	.4byte	0x3cd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL107
	.4byte	0x114
	.4byte	0x3e1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL108
	.4byte	0x114
	.4byte	0x3fb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL109
	.4byte	0x114
	.4byte	0x415
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL110
	.4byte	0x114
	.4byte	0x42f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL111
	.4byte	0x114
	.4byte	0x449
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL112
	.4byte	0x114
	.4byte	0x465
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL113
	.4byte	0x114
	.4byte	0x479
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x12
	.4byte	.LVL114
	.4byte	0x114
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x496
	.uleb128 0x8
	.4byte	0x33
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL64
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL64
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL67
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL89
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL64
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL70
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL89
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL95
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL98
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL64
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL104
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x9
	.byte	0x7a
	.sleb128 -2147483648
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL104
	.2byte	0xb
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0xd
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x23
	.uleb128 0x7fffffff
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x9
	.byte	0x7a
	.sleb128 -2147483648
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE12
	.2byte	0xb
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF16:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hsalsa20/ref2/core_hsalsa20_ref2.c"
.LASF19:
	.string	"store32_le"
.LASF15:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"__uint32_t"
.LASF18:
	.string	"load32_le"
.LASF17:
	.string	"rotl32"
.LASF20:
	.string	"crypto_core_hsalsa20"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF6:
	.string	"unsigned int"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
