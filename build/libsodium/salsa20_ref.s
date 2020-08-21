	.file	"salsa20_ref.c"
	.text
.Ltext0:
	.section	.text.stream_ref_xor_ic,"ax",@progbits
	.literal_position
	.align	4
	.type	stream_ref_xor_ic, @function
stream_ref_xor_ic:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
	.loc 1 67 0
.LVL0:
	entry	sp, 160
.LCFI0:
	.loc 1 74 0
	or	a8, a4, a5
	.loc 1 67 0
	l32i	a7, sp, 160
	l32i	a10, sp, 164
	l32i	a13, sp, 168
	.loc 1 74 0
	beqz.n	a8, .L4
	movi.n	a8, 0
.LBB4:
.LBB5:
	.loc 1 78 0
	movi.n	a9, 0x20
	loop	a9, .L6_LEND
.L6:
.LVL1:
	addi	a12, sp, 64
	add.n	a11, a12, a8
	add.n	a12, a13, a8
	l8ui	a12, a12, 0
	.loc 1 77 0
	addi.n	a8, a8, 1
.LVL2:
	.loc 1 78 0
	s8i	a12, a11, 0
	.L6_LEND:
	.loc 1 77 0
	movi.n	a8, 0
.LVL3:
	.loc 1 81 0
	movi.n	a9, 8
	loop	a9, .L7_LEND
.L7:
.LVL4:
	addi	a12, sp, 96
	add.n	a11, a12, a8
	add.n	a12, a6, a8
	l8ui	a12, a12, 0
	.loc 1 80 0
	addi.n	a8, a8, 1
.LVL5:
	.loc 1 81 0
	s8i	a12, a11, 0
	.L7_LEND:
	.loc 1 80 0
	movi.n	a6, 8
.LVL6:
	mov.n	a8, a6
	loop	a8, .L8_LEND
.LVL7:
.L8:
	.loc 1 84 0
	addi	a11, sp, 96
	add.n	a9, a11, a6
	s8i	a7, a9, 0
	.loc 1 85 0
	slli	a9, a10, 24
	srli	a7, a7, 8
.LVL8:
	or	a7, a9, a7
	srli	a10, a10, 8
.LVL9:
	.loc 1 83 0
	addi.n	a6, a6, 1
.LVL10:
	.L8_LEND:
	mov.n	a8, a4
	mov.n	a7, a5
.LVL11:
	mov.n	a14, a3
	mov.n	a9, a2
	.loc 1 87 0
	movi.n	a15, 0x3f
	j	.L9
.LVL12:
.L13:
	.loc 1 88 0
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	s32i	a8, sp, 120
	s32i	a9, sp, 112
	s32i	a14, sp, 116
	s32i	a15, sp, 124
	call8	crypto_core_salsa20
.LVL13:
	.loc 1 89 0
	l32i	a15, sp, 124
	l32i	a14, sp, 116
	l32i	a9, sp, 112
	l32i	a8, sp, 120
	movi.n	a6, 0
	movi.n	a10, 0x40
	loop	a10, .L10_LEND
.LVL14:
.L10:
	.loc 1 90 0
	add.n	a13, a14, a6
	add.n	a11, sp, a6
	l8ui	a13, a13, 0
	l8ui	a11, a11, 0
	add.n	a12, a9, a6
	xor	a11, a13, a11
	s8i	a11, a12, 0
	.loc 1 89 0
	addi.n	a6, a6, 1
.LVL15:
	.L10_LEND:
	addi	a10, sp, 96
	movi.n	a6, 1
.LVL16:
	movi.n	a11, 8
	loop	a11, .L11_LEND
.L11:
.LVL17:
	.loc 1 94 0
	l8ui	a12, a10, 8
	addi.n	a10, a10, 1
	add.n	a6, a12, a6
.LVL18:
	.loc 1 95 0
	s8i	a6, a10, 7
	.loc 1 96 0
	srli	a6, a6, 8
.LVL19:
	.L11_LEND:
	.loc 1 98 0
	addi	a10, a8, -64
	movi.n	a6, 1
.LVL20:
	bltu	a10, a8, .L12
	movi.n	a6, 0
.L12:
	addi.n	a7, a7, -1
	mov.n	a8, a10
	add.n	a7, a6, a7
.LVL21:
	.loc 1 99 0
	addi	a9, a9, 64
.LVL22:
	.loc 1 100 0
	addi	a14, a14, 64
.LVL23:
.L9:
	.loc 1 87 0
	bnez.n	a7, .L13
	bltu	a15, a8, .L13
	movi	a10, -0x40
	slli	a6, a5, 26
	srli	a8, a4, 6
.LVL24:
	srli	a9, a5, 6
.LVL25:
	or	a8, a6, a8
	mull	a9, a10, a9
	mull	a11, a10, a8
	sub	a9, a9, a8
	slli	a6, a8, 6
	muluh	a8, a10, a8
	add.n	a4, a11, a4
.LVL26:
	add.n	a8, a9, a8
	movi.n	a9, 1
	bltu	a4, a11, .L15
	mov.n	a9, a7
.L15:
	add.n	a5, a8, a5
	add.n	a5, a9, a5
	.loc 1 102 0
	or	a5, a4, a5
	bnez.n	a5, .L16
.LVL27:
.L19:
	.loc 1 108 0
	mov.n	a10, sp
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL28:
	.loc 1 109 0
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL29:
	j	.L4
.LVL30:
.L16:
	.loc 1 103 0
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	call8	crypto_core_salsa20
.LVL31:
	.loc 1 104 0
	movi.n	a5, 0
	j	.L17
.LVL32:
.L18:
	.loc 1 105 0
	add.n	a7, a5, a6
	add.n	a8, a2, a7
	add.n	a10, sp, a5
	add.n	a7, a3, a7
	l8ui	a9, a7, 0
	l8ui	a7, a10, 0
	.loc 1 104 0
	addi.n	a5, a5, 1
.LVL33:
	.loc 1 105 0
	xor	a7, a9, a7
	s8i	a7, a8, 0
.LVL34:
.L17:
	.loc 1 104 0
	bltu	a5, a4, .L18
	j	.L19
.LVL35:
.L4:
.LBE5:
.LBE4:
	.loc 1 112 0
	movi.n	a2, 0
.LVL36:
	retw.n
.LFE1:
	.size	stream_ref_xor_ic, .-stream_ref_xor_ic
	.section	.text.stream_ref,"ax",@progbits
	.literal_position
	.align	4
	.type	stream_ref, @function
stream_ref:
.LFB0:
	.loc 1 21 0
.LVL37:
	entry	sp, 160
.LCFI1:
	.loc 1 28 0
	or	a3, a4, a5
	.loc 1 21 0
	.loc 1 28 0
	beqz.n	a3, .L31
	movi.n	a3, 0
.LBB8:
.LBB9:
	.loc 1 32 0
	movi.n	a8, 0x20
	loop	a8, .L33_LEND
.L33:
.LVL38:
	addi	a10, sp, 64
	add.n	a9, a10, a3
	add.n	a10, a7, a3
	l8ui	a10, a10, 0
	.loc 1 31 0
	addi.n	a3, a3, 1
.LVL39:
	.loc 1 32 0
	s8i	a10, a9, 0
	.L33_LEND:
	.loc 1 31 0
	movi.n	a3, 0
.LVL40:
	.loc 1 35 0
	movi.n	a7, 8
	loop	a7, .L34_LEND
.LVL41:
.L34:
	addi	a9, sp, 96
	add.n	a8, a9, a3
	add.n	a9, a6, a3
	l8ui	a9, a9, 0
	.loc 1 34 0
	addi.n	a3, a3, 1
.LVL42:
	.loc 1 35 0
	s8i	a9, a8, 0
	.L34_LEND:
	.loc 1 34 0
	movi.n	a3, 8
.LVL43:
	.loc 1 38 0
	movi.n	a8, 0
	mov.n	a6, a3
	loop	a6, .L35_LEND
.LVL44:
.L35:
	addi	a10, sp, 96
	add.n	a7, a10, a3
	s8i	a8, a7, 0
	.loc 1 37 0
	addi.n	a3, a3, 1
.LVL45:
	.L35_LEND:
	mov.n	a7, a4
	mov.n	a3, a5
.LVL46:
	mov.n	a9, a2
	.loc 1 40 0
	movi.n	a14, 0x3f
	j	.L36
.LVL47:
.L39:
	.loc 1 41 0
	mov.n	a10, a9
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	s32i	a9, sp, 112
	s32i	a14, sp, 116
	call8	crypto_core_salsa20
.LVL48:
	.loc 1 42 0
	l32i	a14, sp, 116
	l32i	a9, sp, 112
	addi	a8, sp, 96
	movi.n	a6, 1
	movi.n	a10, 8
	loop	a10, .L37_LEND
.LVL49:
.L37:
	.loc 1 44 0
	l8ui	a11, a8, 8
	addi.n	a8, a8, 1
	add.n	a6, a11, a6
.LVL50:
	.loc 1 45 0
	s8i	a6, a8, 7
	.loc 1 46 0
	srli	a6, a6, 8
.LVL51:
	.L37_LEND:
	.loc 1 48 0
	addi	a8, a7, -64
	movi.n	a6, 1
.LVL52:
	bltu	a8, a7, .L38
	movi.n	a6, 0
.L38:
	addi.n	a3, a3, -1
.LVL53:
	mov.n	a7, a8
.LVL54:
	add.n	a3, a6, a3
.LVL55:
	.loc 1 49 0
	addi	a9, a9, 64
.LVL56:
.L36:
	.loc 1 40 0
	bnez.n	a3, .L39
	bltu	a14, a7, .L39
	movi	a7, -0x40
.LVL57:
	slli	a6, a5, 26
	srli	a8, a4, 6
	srli	a9, a5, 6
.LVL58:
	or	a8, a6, a8
	mull	a9, a7, a9
	mull	a10, a7, a8
	sub	a9, a9, a8
	slli	a6, a8, 6
	muluh	a8, a7, a8
	add.n	a4, a10, a4
.LVL59:
	add.n	a8, a9, a8
	movi.n	a7, 1
	bltu	a4, a10, .L41
	mov.n	a7, a3
.L41:
	add.n	a5, a8, a5
	add.n	a5, a7, a5
	.loc 1 51 0
	or	a5, a4, a5
	bnez.n	a5, .L42
.L45:
	.loc 1 57 0
	mov.n	a10, sp
	movi.n	a11, 0x40
	call8	sodium_memzero
.LVL60:
	.loc 1 58 0
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL61:
	j	.L31
.L42:
	.loc 1 52 0
	movi.n	a13, 0
	addi	a12, sp, 64
	addi	a11, sp, 96
	mov.n	a10, sp
	call8	crypto_core_salsa20
.LVL62:
	.loc 1 53 0
	movi.n	a3, 0
	j	.L43
.LVL63:
.L44:
	.loc 1 54 0
	add.n	a7, sp, a3
	add.n	a5, a3, a6
	l8ui	a7, a7, 0
	add.n	a5, a2, a5
	s8i	a7, a5, 0
	.loc 1 53 0
	addi.n	a3, a3, 1
.LVL64:
.L43:
	bltu	a3, a4, .L44
	j	.L45
.LVL65:
.L31:
.LBE9:
.LBE8:
	.loc 1 61 0
	movi.n	a2, 0
.LVL66:
	retw.n
.LFE0:
	.size	stream_ref, .-stream_ref
	.global	crypto_stream_salsa20_ref_implementation
	.section	.data.crypto_stream_salsa20_ref_implementation,"aw",@progbits
	.align	4
	.type	crypto_stream_salsa20_ref_implementation, @object
	.size	crypto_stream_salsa20_ref_implementation, 8
crypto_stream_salsa20_ref_implementation:
	.word	stream_ref
	.word	stream_ref_xor_ic
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/../stream_salsa20.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x39
	.4byte	0x59
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.byte	0x7
	.4byte	0x94
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x4
	.byte	0xa
	.4byte	0xf1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x44
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0x21
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xa
	.4byte	0x2f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x44
	.4byte	0xf1
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x21
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x64
	.uleb128 0x8
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x40
	.4byte	0x44
	.byte	0x1
	.4byte	0x173
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x40
	.4byte	0xb2
	.uleb128 0xc
	.string	"m"
	.byte	0x1
	.byte	0x40
	.4byte	0xb8
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x41
	.4byte	0x21
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x41
	.4byte	0xb8
	.uleb128 0xc
	.string	"ic"
	.byte	0x1
	.byte	0x41
	.4byte	0x64
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x42
	.4byte	0xb8
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x44
	.4byte	0x173
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x45
	.4byte	0x18a
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.byte	0x46
	.4byte	0x19a
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x4b
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x48
	.4byte	0x4b
	.byte	0
	.uleb128 0x10
	.4byte	0x2f
	.4byte	0x183
	.uleb128 0x11
	.4byte	0x183
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x10
	.4byte	0x2f
	.4byte	0x19a
	.uleb128 0x11
	.4byte	0x183
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.4byte	0x2f
	.4byte	0x1aa
	.uleb128 0x11
	.4byte	0x183
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.4byte	0x44
	.byte	0x1
	.4byte	0x213
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x13
	.4byte	0xb2
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.4byte	0x21
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x13
	.4byte	0xb8
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x14
	.4byte	0xb8
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x16
	.4byte	0x173
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x17
	.4byte	0x18a
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.byte	0x18
	.4byte	0x19a
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x19
	.4byte	0x4b
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x1a
	.4byte	0x4b
	.byte	0
	.uleb128 0x12
	.4byte	0xf7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x360
	.uleb128 0x13
	.4byte	0x107
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	0x119
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	0x124
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.4byte	0x140
	.uleb128 0x15
	.4byte	0x14a
	.uleb128 0x15
	.4byte	0x155
	.uleb128 0x15
	.4byte	0x160
	.uleb128 0x15
	.4byte	0x169
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x17
	.4byte	0x137
	.uleb128 0x13
	.4byte	0x12d
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x124
	.uleb128 0x13
	.4byte	0x119
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	0x110
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	0x107
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x18
	.4byte	0x140
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	0x14a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.4byte	0x155
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.4byte	0x160
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0x169
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x497
	.4byte	0x304
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0x4a2
	.4byte	0x31f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x4a2
	.4byte	0x33a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x497
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1aa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x486
	.uleb128 0x13
	.4byte	0x1ba
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	0x1c3
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	0x1ce
	.4byte	.LLST11
	.uleb128 0x13
	.4byte	0x1d7
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	0x1e0
	.uleb128 0x15
	.4byte	0x1ea
	.uleb128 0x15
	.4byte	0x1f5
	.uleb128 0x15
	.4byte	0x200
	.uleb128 0x15
	.4byte	0x209
	.uleb128 0x16
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x17
	.4byte	0x1d7
	.uleb128 0x17
	.4byte	0x1ce
	.uleb128 0x13
	.4byte	0x1c3
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	0x1ba
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x18
	.4byte	0x1e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	0x1ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.4byte	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.4byte	0x200
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	0x209
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x497
	.4byte	0x42a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL60
	.4byte	0x4a2
	.4byte	0x445
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL61
	.4byte	0x4a2
	.4byte	0x460
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL62
	.4byte	0x497
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0x73
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_stream_salsa20_ref_implementation
	.uleb128 0x1e
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.uleb128 0x1e
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x16
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL59
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"stream"
.LASF23:
	.string	"crypto_stream_salsa20_ref_implementation"
.LASF11:
	.string	"mlen"
.LASF8:
	.string	"uint64_t"
.LASF12:
	.string	"block"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"unsigned char"
.LASF18:
	.string	"crypto_core_salsa20"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"crypto_stream_salsa20_implementation"
.LASF10:
	.string	"stream_xor_ic"
.LASF13:
	.string	"kcopy"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF15:
	.string	"stream_ref_xor_ic"
.LASF14:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF16:
	.string	"stream_ref"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF1:
	.string	"signed char"
.LASF19:
	.string	"sodium_memzero"
.LASF21:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
.LASF17:
	.string	"clen"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
