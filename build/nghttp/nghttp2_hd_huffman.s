	.file	"nghttp2_hd_huffman.c"
	.text
.Ltext0:
	.section	.text.nghttp2_hd_huff_encode_count,"ax",@progbits
	.literal_position
	.literal .LC2, huff_sym_table
	.align	4
	.global	nghttp2_hd_huff_encode_count
	.type	nghttp2_hd_huff_encode_count, @function
nghttp2_hd_huff_encode_count:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_hd_huffman.c"
	.loc 1 141 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	add.n	a3, a2, a3
.LVL2:
	.loc 1 143 0
	movi.n	a8, 0
	.loc 1 146 0
	l32r	a10, .LC2
	.loc 1 145 0
	j	.L2
.LVL3:
.L3:
	.loc 1 146 0 discriminator 3
	l8ui	a9, a2, 0
	addi.n	a2, a2, 1
.LVL4:
	addx8	a9, a9, a10
	l32i.n	a9, a9, 0
	add.n	a8, a8, a9
.LVL5:
.L2:
	.loc 1 145 0 discriminator 1
	bne	a2, a3, .L3
	.loc 1 149 0
	addi.n	a2, a8, 7
.LVL6:
	.loc 1 150 0
	srli	a2, a2, 3
	retw.n
.LFE1:
	.size	nghttp2_hd_huff_encode_count, .-nghttp2_hd_huff_encode_count
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"avail"
.LC7:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_hd_huffman.c"
	.section	.text.nghttp2_hd_huff_encode,"ax",@progbits
	.literal_position
	.literal .LC3, huff_sym_table
	.literal .LC5, .LC4
	.literal .LC6, __func__$4417
	.literal .LC8, .LC7
	.align	4
	.global	nghttp2_hd_huff_encode
	.type	nghttp2_hd_huff_encode, @function
nghttp2_hd_huff_encode:
.LFB2:
	.loc 1 153 0
.LVL7:
	entry	sp, 48
.LCFI1:
	.loc 1 159 0
	l32i.n	a5, a2, 4
	.loc 1 153 0
	mov.n	a7, a2
.LVL8:
	.loc 1 159 0
	l32i.n	a6, a5, 8
	l32i.n	a2, a5, 16
.LVL9:
	add.n	a4, a3, a4
.LVL10:
	sub	a2, a6, a2
.LVL11:
	s32i.n	a4, sp, 0
	.loc 1 155 0
	movi.n	a5, 8
	.loc 1 161 0
	j	.L5
.LVL12:
.L27:
.LBB10:
	.loc 1 162 0
	l8ui	a6, a3, 0
.LVL13:
	.loc 1 163 0
	bnei	a5, 8, .L6
	.loc 1 164 0
	beqz.n	a2, .L7
	.loc 1 165 0
	l32i.n	a8, a7, 4
	movi.n	a4, 0
	l32i.n	a8, a8, 16
	s8i	a4, a8, 0
	j	.L6
.L7:
	.loc 1 167 0
	mov.n	a11, a2
	mov.n	a10, a7
	call8	nghttp2_bufs_addb_hold
.LVL14:
	.loc 1 168 0
	bnez.n	a10, .L30
	.loc 1 171 0
	l32i.n	a8, a7, 4
	l32i.n	a10, a8, 8
.LVL15:
	l32i.n	a2, a8, 16
.LVL16:
	sub	a2, a10, a2
.LVL17:
.L6:
.LBB11:
.LBB12:
	.loc 1 43 0
	l32r	a8, .LC3
	addx8	a8, a6, a8
	l32i.n	a6, a8, 0
.LVL18:
	.loc 1 44 0
	l32i.n	a4, a8, 4
.LVL19:
	l32i.n	a8, a7, 4
	.loc 1 47 0
	bgeu	a6, a5, .L9
.LBB13:
	.loc 1 48 0
	l32i.n	a8, a8, 16
.LVL20:
	sub	a10, a5, a6
	l8ui	a5, a8, 0
.LVL21:
	ssl	a10
	sll	a12, a4
	or	a12, a12, a5
	s8i	a12, a8, 0
	j	.L34
.LVL22:
.L9:
	addi.n	a10, a2, -1
.LBE13:
	.loc 1 52 0
	bne	a5, a6, .L11
.LVL23:
.LBB14:
	.loc 1 53 0
	l32i.n	a2, a8, 16
.LVL24:
	l8ui	a11, a2, 0
	or	a12, a4, a11
	s8i	a12, a2, 0
	l32i.n	a2, a8, 16
	addi.n	a2, a2, 1
	s32i.n	a2, a8, 16
.LBE14:
	.loc 1 54 0
	mov.n	a2, a10
.LVL25:
	j	.L45
.LVL26:
.L11:
.LBB15:
	.loc 1 58 0
	l32i.n	a11, a8, 16
	sub	a6, a6, a5
.LVL27:
	l8ui	a2, a11, 0
.LVL28:
	ssr	a6
	srl	a5, a4
.LVL29:
	or	a2, a5, a2
	s8i	a2, a11, 0
	l32i.n	a2, a8, 16
	addi.n	a2, a2, 1
	s32i.n	a2, a8, 16
.LBE15:
	.loc 1 62 0
	extui	a8, a6, 0, 3
.LVL30:
	.loc 1 59 0
	mov.n	a2, a10
.LVL31:
	.loc 1 62 0
	beqz.n	a8, .L13
.LVL32:
	.loc 1 64 0
	movi.n	a5, 8
	sub	a5, a5, a8
	ssl	a5
	sll	a4, a4
.LVL33:
.L13:
	.loc 1 67 0
	addi.n	a5, a6, 7
	srli	a5, a5, 3
	bgeu	a10, a5, .L14
	.loc 1 69 0
	movi.n	a5, 0x18
	bgeu	a5, a6, .L15
	.loc 1 70 0
	ssr	a5
	srl	a11, a4
	mov.n	a10, a7
	call8	nghttp2_bufs_addb
.LVL34:
	.loc 1 71 0
	bnez.n	a10, .L34
	.loc 1 74 0
	addi	a6, a6, -8
.LVL35:
	j	.L16
.LVL36:
.L15:
	.loc 1 76 0
	movi.n	a5, 0x10
	bgeu	a5, a6, .L17
.L16:
	.loc 1 77 0
	extui	a11, a4, 16, 8
	mov.n	a10, a7
	call8	nghttp2_bufs_addb
.LVL37:
	.loc 1 78 0
	bnez.n	a10, .L34
	.loc 1 81 0
	addi	a6, a6, -8
.LVL38:
	j	.L18
.LVL39:
.L17:
	.loc 1 83 0
	movi.n	a5, 8
	bgeu	a5, a6, .L19
.L18:
	.loc 1 84 0
	extui	a11, a4, 8, 8
	mov.n	a10, a7
	call8	nghttp2_bufs_addb
.LVL40:
	.loc 1 85 0
	bnez.n	a10, .L34
	.loc 1 88 0
	addi	a6, a6, -8
.LVL41:
.L19:
	extui	a11, a4, 0, 8
	.loc 1 91 0
	mov.n	a10, a7
	.loc 1 90 0
	bnei	a6, 8, .L20
	.loc 1 91 0
	call8	nghttp2_bufs_addb
.LVL42:
	.loc 1 92 0
	bnez.n	a10, .L34
	.loc 1 95 0
	l32i.n	a5, a7, 4
	l32i.n	a8, a5, 8
	l32i.n	a2, a5, 16
.LVL43:
	.loc 1 96 0
	mov.n	a5, a6
	.loc 1 95 0
	sub	a2, a8, a2
.LVL44:
	j	.L29
.LVL45:
.L20:
	.loc 1 99 0
	call8	nghttp2_bufs_addb_hold
.LVL46:
	mov.n	a5, a10
.LVL47:
	.loc 1 100 0
	bnez.n	a10, .L10
	j	.L44
.LVL48:
.L14:
	l32i.n	a2, a7, 4
.LVL49:
	.loc 1 108 0
	bgeui	a6, 8, .L21
	.loc 1 109 0
	l32i.n	a2, a2, 16
	.loc 1 111 0
	movi.n	a10, 8
.LVL50:
	.loc 1 109 0
	s8i	a4, a2, 0
	.loc 1 110 0
	l32i.n	a5, a7, 4
	l32i.n	a8, a5, 8
	l32i.n	a2, a5, 16
	.loc 1 111 0
	sub	a5, a10, a6
	.loc 1 110 0
	sub	a2, a8, a2
.LVL51:
	j	.L29
.LVL52:
.L21:
	.loc 1 115 0
	movi.n	a5, 0x18
	bgeu	a5, a6, .L22
	.loc 1 116 0
	l32i.n	a5, a2, 16
	.loc 1 117 0
	addi	a6, a6, -8
.LVL53:
	.loc 1 116 0
	addi.n	a8, a5, 1
	s32i.n	a8, a2, 16
	extui	a2, a4, 24, 8
	s8i	a2, a5, 0
	j	.L23
.L22:
	.loc 1 120 0
	movi.n	a2, 0x10
	bgeu	a2, a6, .L24
.L23:
	.loc 1 121 0
	l32i.n	a5, a7, 4
	.loc 1 122 0
	addi	a6, a6, -8
.LVL54:
	.loc 1 121 0
	l32i.n	a2, a5, 16
	addi.n	a8, a2, 1
	s32i.n	a8, a5, 16
	extui	a5, a4, 16, 16
	s8i	a5, a2, 0
	j	.L25
.L24:
	.loc 1 125 0
	bnei	a6, 8, .L25
.L26:
.LVL55:
	.loc 1 131 0
	l32i.n	a5, a7, 4
	l32i.n	a2, a5, 16
	addi.n	a6, a2, 1
	s32i.n	a6, a5, 16
	s8i	a4, a2, 0
	.loc 1 132 0
	l32i.n	a5, a7, 4
	l32i.n	a6, a5, 8
	l32i.n	a2, a5, 16
	sub	a2, a6, a2
.L45:
.LVL56:
	.loc 1 133 0
	movi.n	a5, 8
	j	.L29
.LVL57:
.L25:
	.loc 1 126 0
	l32i.n	a5, a7, 4
	.loc 1 127 0
	addi	a6, a6, -8
.LVL58:
	.loc 1 126 0
	l32i.n	a2, a5, 16
	addi.n	a8, a2, 1
	s32i.n	a8, a5, 16
	srli	a5, a4, 8
	s8i	a5, a2, 0
	.loc 1 130 0
	beqi	a6, 8, .L26
	.loc 1 136 0
	l32i.n	a2, a7, 4
	l32i.n	a2, a2, 16
	s8i	a4, a2, 0
.LVL59:
.L44:
	.loc 1 137 0
	l32i.n	a5, a7, 4
	.loc 1 138 0
	movi.n	a10, 8
	.loc 1 137 0
	l32i.n	a8, a5, 8
	l32i.n	a2, a5, 16
	.loc 1 138 0
	sub	a5, a10, a6
	.loc 1 137 0
	sub	a2, a8, a2
.LVL60:
	j	.L10
.LVL61:
.L34:
	.loc 1 92 0
	mov.n	a5, a10
.L10:
.LVL62:
.LBE12:
.LBE11:
	.loc 1 175 0
	bltz	a5, .L36
.LVL63:
.L29:
	addi.n	a3, a3, 1
.LVL64:
.L5:
.LBE10:
	.loc 1 161 0 discriminator 1
	l32i.n	a4, sp, 0
	bne	a4, a3, .L27
	.loc 1 180 0
	bgei	a5, 8, .L37
.LVL65:
.LBB16:
	.loc 1 184 0
	bnez.n	a2, .L28
	.loc 1 184 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	l32r	a10, .LC8
	movi	a11, 0xb8
	call8	__assert_func
.LVL66:
.L28:
.LBB17:
	.loc 1 186 0 is_stmt 1
	l32r	a3, .LC3
.LVL67:
	l32i.n	a4, a7, 4
.LVL68:
	addmi	a3, a3, 0x800
	l32i.n	a10, a3, 0
	l32i.n	a2, a4, 16
.LVL69:
	l32i.n	a3, a3, 4
	sub	a5, a10, a5
.LVL70:
	ssr	a5
	srl	a5, a3
	l8ui	a3, a2, 0
	or	a5, a5, a3
	s8i	a5, a2, 0
	l32i.n	a2, a4, 16
	addi.n	a2, a2, 1
	s32i.n	a2, a4, 16
	j	.L37
.LVL71:
.L30:
.LBE17:
.LBE16:
.LBB18:
	.loc 1 167 0
	mov.n	a2, a10
.LVL72:
	retw.n
.LVL73:
.L36:
	mov.n	a2, a5
.LVL74:
	retw.n
.LVL75:
.L37:
.LBE18:
	.loc 1 190 0
	movi.n	a2, 0
	.loc 1 191 0
	retw.n
.LFE2:
	.size	nghttp2_hd_huff_encode, .-nghttp2_hd_huff_encode
	.section	.text.nghttp2_hd_huff_decode_context_init,"ax",@progbits
	.align	4
	.global	nghttp2_hd_huff_decode_context_init
	.type	nghttp2_hd_huff_decode_context_init, @function
nghttp2_hd_huff_decode_context_init:
.LFB3:
	.loc 1 193 0
.LVL76:
	entry	sp, 32
.LCFI2:
	.loc 1 194 0
	movi.n	a8, 0
	s8i	a8, a2, 0
	.loc 1 195 0
	movi.n	a8, 1
	s8i	a8, a2, 1
	retw.n
.LFE3:
	.size	nghttp2_hd_huff_decode_context_init, .-nghttp2_hd_huff_decode_context_init
	.section	.text.nghttp2_hd_huff_decode,"ax",@progbits
	.literal_position
	.literal .LC9, huff_decode_table
	.align	4
	.global	nghttp2_hd_huff_decode
	.type	nghttp2_hd_huff_decode, @function
nghttp2_hd_huff_decode:
.LFB4:
	.loc 1 200 0
.LVL77:
	entry	sp, 48
.LCFI3:
.LVL78:
	.loc 1 200 0
	s32i.n	a6, sp, 0
	.loc 1 205 0
	movi.n	a12, 0
.LBB19:
	.loc 1 212 0
	movi.n	a13, 2
.LBE19:
	.loc 1 205 0
	j	.L48
.LVL79:
.L54:
.LBB20:
	.loc 1 208 0
	l8ui	a6, a2, 0
	l8ui	a8, a4, 0
	.loc 1 209 0
	slli	a9, a6, 1
	.loc 1 208 0
	srli	a8, a8, 4
.LVL80:
	.loc 1 209 0
	slli	a10, a8, 1
	add.n	a7, a9, a6
	add.n	a11, a10, a8
	slli	a7, a7, 4
	add.n	a7, a11, a7
	l32r	a11, .LC9
	movi.n	a14, 4
	add.n	a7, a11, a7
	l8ui	a11, a7, 1
	bnone	a11, a14, .L49
.LVL81:
.L52:
	.loc 1 210 0
	movi	a2, -0x20b
	retw.n
.LVL82:
.L49:
	.loc 1 212 0
	bnone	a11, a13, .L51
	.loc 1 213 0
	l32i.n	a11, a3, 12
	l8ui	a7, a7, 2
	addi.n	a14, a11, 1
	s32i.n	a14, a3, 12
	s8i	a7, a11, 0
.L51:
	.loc 1 216 0
	add.n	a6, a9, a6
.LVL83:
	add.n	a8, a10, a8
	slli	a6, a6, 4
	add.n	a8, a8, a6
	l32r	a6, .LC9
	l8ui	a10, a4, 0
	add.n	a8, a6, a8
	l8ui	a8, a8, 0
	extui	a10, a10, 0, 4
.LVL84:
	.loc 1 217 0
	slli	a14, a8, 1
	slli	a15, a10, 1
	add.n	a6, a14, a8
	slli	a6, a6, 4
	l32r	a11, .LC9
	add.n	a9, a15, a10
	add.n	a9, a9, a6
	add.n	a9, a11, a9
	l8ui	a11, a9, 1
	movi.n	a6, 4
	bany	a11, a6, .L52
	.loc 1 220 0
	bnone	a11, a13, .L53
	.loc 1 221 0
	l32i.n	a6, a3, 12
	addi.n	a7, a6, 1
	s32i.n	a7, a3, 12
	l8ui	a7, a9, 2
	s8i	a7, a6, 0
.L53:
	.loc 1 224 0 discriminator 2
	add.n	a8, a14, a8
.LVL85:
	add.n	a10, a15, a10
	slli	a8, a8, 4
	l32r	a14, .LC9
	add.n	a10, a10, a8
	add.n	a10, a14, a10
	l8ui	a6, a10, 0
	.loc 1 225 0 discriminator 2
	extui	a11, a11, 0, 1
	.loc 1 224 0 discriminator 2
	s8i	a6, a2, 0
	.loc 1 225 0 discriminator 2
	s8i	a11, a2, 1
.LBE20:
	.loc 1 205 0 discriminator 2
	addi.n	a12, a12, 1
.LVL86:
	addi.n	a4, a4, 1
.LVL87:
.L48:
	.loc 1 205 0 is_stmt 0 discriminator 1
	bne	a12, a5, .L54
	.loc 1 227 0 is_stmt 1
	l32i.n	a3, sp, 0
.LVL88:
	beqz.n	a3, .L55
	.loc 1 227 0 is_stmt 0 discriminator 1
	l8ui	a2, a2, 1
.LVL89:
	beqz.n	a2, .L52
.L55:
	.loc 1 230 0 is_stmt 1
	mov.n	a2, a5
	.loc 1 231 0
	retw.n
.LFE4:
	.size	nghttp2_hd_huff_decode, .-nghttp2_hd_huff_decode
	.section	.rodata.__func__$4417,"a",@progbits
	.type	__func__$4417, @object
	.size	__func__$4417, 23
__func__$4417:
	.string	"nghttp2_hd_huff_encode"
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_hd_huffman.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_buf.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8f2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
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
	.byte	0x3
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x37
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xcb
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.byte	0x7
	.byte	0xe7
	.4byte	0x1e6
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 -501
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 -502
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 -503
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 -504
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 -505
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -506
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -507
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -508
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -509
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -510
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -511
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -512
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -513
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -514
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -515
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -516
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -517
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -518
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -519
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -521
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -522
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -523
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -524
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 -525
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 -526
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 -527
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 -528
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 -529
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 -530
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 -531
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 -532
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 -533
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 -534
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 -535
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 -900
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 -901
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 -902
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 -903
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 -904
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x9
	.4byte	0xb2
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x8df
	.4byte	0x203
	.uleb128 0x8
	.byte	0x4
	.4byte	0x209
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x21d
	.uleb128 0xc
	.4byte	0x73
	.uleb128 0xc
	.4byte	0x7e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x8e7
	.4byte	0x229
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22f
	.uleb128 0xd
	.4byte	0x23f
	.uleb128 0xc
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x7e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x8ef
	.4byte	0x24b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x251
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x26a
	.uleb128 0xc
	.4byte	0x73
	.uleb128 0xc
	.4byte	0x73
	.uleb128 0xc
	.4byte	0x7e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x8f7
	.4byte	0x276
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27c
	.uleb128 0xb
	.4byte	0x7e
	.4byte	0x295
	.uleb128 0xc
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x73
	.uleb128 0xc
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0x7
	.2byte	0x920
	.4byte	0x2e0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x925
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x929
	.4byte	0x1f7
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x92d
	.4byte	0x21d
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x931
	.4byte	0x23f
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x935
	.4byte	0x26a
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x936
	.4byte	0x295
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x22
	.4byte	0x30b
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x3
	.byte	0x8
	.byte	0x2c
	.4byte	0x338
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x8
	.byte	0x31
	.4byte	0xb2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x8
	.byte	0x33
	.4byte	0xb2
	.byte	0x1
	.uleb128 0x13
	.string	"sym"
	.byte	0x8
	.byte	0x35
	.4byte	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x8
	.byte	0x36
	.4byte	0x30b
	.uleb128 0x11
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.4byte	0x364
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x8
	.byte	0x3d
	.4byte	0xb2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x8
	.byte	0x40
	.4byte	0xb2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x41
	.4byte	0x343
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x43
	.4byte	0x390
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x8
	.byte	0x45
	.4byte	0xbd
	.byte	0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x47
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0x48
	.4byte	0x36f
	.uleb128 0x11
	.byte	0x14
	.byte	0x9
	.byte	0x25
	.4byte	0x3e0
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x9
	.byte	0x28
	.4byte	0x1e6
	.byte	0
	.uleb128 0x13
	.string	"end"
	.byte	0x9
	.byte	0x2b
	.4byte	0x1e6
	.byte	0x4
	.uleb128 0x13
	.string	"pos"
	.byte	0x9
	.byte	0x2e
	.4byte	0x1e6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x9
	.byte	0x31
	.4byte	0x1e6
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x9
	.byte	0x33
	.4byte	0x1e6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x9
	.byte	0x34
	.4byte	0x39b
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x9
	.byte	0x7c
	.4byte	0x3f6
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x18
	.byte	0x9
	.byte	0x7f
	.4byte	0x41b
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x9
	.byte	0x82
	.4byte	0x41b
	.byte	0
	.uleb128 0x13
	.string	"buf"
	.byte	0x9
	.byte	0x83
	.4byte	0x3e0
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3eb
	.uleb128 0x11
	.byte	0x20
	.byte	0x9
	.byte	0x86
	.4byte	0x48a
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x9
	.byte	0x88
	.4byte	0x41b
	.byte	0
	.uleb128 0x13
	.string	"cur"
	.byte	0x9
	.byte	0x8a
	.4byte	0x41b
	.byte	0x4
	.uleb128 0x13
	.string	"mem"
	.byte	0x9
	.byte	0x8c
	.4byte	0x48a
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x9
	.byte	0x90
	.4byte	0x73
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x9
	.byte	0x92
	.4byte	0x73
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x9
	.byte	0x94
	.4byte	0x73
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x9
	.byte	0x96
	.4byte	0x73
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x9
	.byte	0x9a
	.4byte	0x73
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2e0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0x9b
	.4byte	0x421
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.byte	0x8d
	.4byte	0x73
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ef
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.byte	0x8d
	.4byte	0x1ec
	.4byte	.LLST0
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x8d
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x8e
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8f
	.4byte	0x73
	.4byte	.LLST3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x1
	.byte	0x28
	.4byte	0xa7
	.byte	0x1
	.4byte	0x575
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x28
	.4byte	0x575
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0x28
	.4byte	0x57b
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.uleb128 0x1b
	.string	"sym"
	.byte	0x1
	.byte	0x29
	.4byte	0x581
	.uleb128 0x1c
	.string	"rv"
	.byte	0x1
	.byte	0x2a
	.4byte	0x4c
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2b
	.4byte	0x73
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2c
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	0x55a
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x30
	.4byte	0x1e6
	.byte	0
	.uleb128 0x1e
	.4byte	0x569
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x35
	.4byte	0x58c
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.4byte	0x58c
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x490
	.uleb128 0x8
	.byte	0x4
	.4byte	0x73
	.uleb128 0x8
	.byte	0x4
	.4byte	0x587
	.uleb128 0x9
	.4byte	0x390
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.byte	0x98
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c8
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x98
	.4byte	0x575
	.4byte	.LLST4
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.byte	0x98
	.4byte	0x1ec
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF96
	.byte	0x1
	.byte	0x99
	.4byte	0x73
	.4byte	.LLST6
	.uleb128 0x17
	.string	"rv"
	.byte	0x1
	.byte	0x9a
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x1
	.byte	0x9b
	.4byte	0xa7
	.4byte	.LLST8
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x73
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.byte	0x9d
	.4byte	0x73
	.4byte	.LLST10
	.uleb128 0x21
	.4byte	.LASF98
	.4byte	0x7d8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4417
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0x76c
	.uleb128 0x1c
	.string	"sym"
	.byte	0x1
	.byte	0xa2
	.4byte	0x581
	.uleb128 0x23
	.4byte	0x4ef
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0xae
	.4byte	0x755
	.uleb128 0x24
	.4byte	0x520
	.uleb128 0x25
	.4byte	0x515
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	0x50a
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0x4ff
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x27
	.4byte	0x52b
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	0x535
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	0x540
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x6a2
	.uleb128 0x27
	.4byte	0x550
	.4byte	.LLST17
	.byte	0
	.uleb128 0x28
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x6b9
	.uleb128 0x27
	.4byte	0x55f
	.4byte	.LLST18
	.byte	0
	.uleb128 0x28
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x6d0
	.uleb128 0x27
	.4byte	0x56a
	.4byte	.LLST19
	.byte	0
	.uleb128 0x29
	.4byte	.LVL34
	.4byte	0x8d2
	.4byte	0x6ed
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0x8d2
	.4byte	0x70d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xec
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.4byte	.LVL40
	.4byte	0x8d2
	.4byte	0x72d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0x8d2
	.4byte	0x74a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL46
	.4byte	0x8de
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL14
	.4byte	0x8de
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x1c
	.string	"sym"
	.byte	0x1
	.byte	0xb7
	.4byte	0x581
	.uleb128 0x28
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x79b
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0xba
	.4byte	0x58c
	.4byte	.LLST20
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL66
	.4byte	0x8ea
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4417
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xa0
	.4byte	0x7d8
	.uleb128 0x2e
	.4byte	0x92
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.4byte	0x7c8
	.uleb128 0x2f
	.4byte	.LASF110
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x800
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.byte	0xc1
	.4byte	0x800
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x364
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc6
	.4byte	0xa7
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x885
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0xc6
	.4byte	0x800
	.4byte	.LLST21
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xc7
	.4byte	0x885
	.4byte	.LLST22
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.byte	0xc7
	.4byte	0x1ec
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LASF96
	.byte	0x1
	.byte	0xc8
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc8
	.4byte	0x4c
	.4byte	.LLST24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.4byte	0x73
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0xce
	.4byte	0x88b
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x891
	.uleb128 0x9
	.4byte	0x338
	.uleb128 0x2d
	.4byte	0x390
	.4byte	0x8a1
	.uleb128 0x33
	.byte	0
	.uleb128 0x34
	.4byte	.LASF101
	.byte	0x8
	.byte	0x4a
	.4byte	0x8ac
	.uleb128 0x9
	.4byte	0x896
	.uleb128 0x2d
	.4byte	0x338
	.4byte	0x8c2
	.uleb128 0x33
	.uleb128 0x2e
	.4byte	0x92
	.byte	0xf
	.byte	0
	.uleb128 0x34
	.4byte	.LASF102
	.byte	0x8
	.byte	0x4b
	.4byte	0x8cd
	.uleb128 0x9
	.4byte	0x8b1
	.uleb128 0x35
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x11f
	.uleb128 0x35
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x125
	.uleb128 0x36
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xa
	.byte	0x29
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
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
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL64
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1538
	.sleb128 0
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1538
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x78
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x78
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x74
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL79
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"calloc"
.LASF35:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF95:
	.string	"nghttp2_hd_huff_encode"
.LASF18:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF72:
	.string	"nghttp2_huff_decode"
.LASF110:
	.string	"nghttp2_hd_huff_decode_context_init"
.LASF96:
	.string	"srclen"
.LASF69:
	.string	"NGHTTP2_HUFF_FAIL"
.LASF46:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF59:
	.string	"nghttp2_calloc"
.LASF66:
	.string	"nghttp2_mem"
.LASF62:
	.string	"malloc"
.LASF30:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF29:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF47:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF78:
	.string	"begin"
.LASF28:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF12:
	.string	"sizetype"
.LASF49:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF108:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/nghttp"
.LASF25:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF90:
	.string	"nghttp2_bufs"
.LASF44:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF39:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF2:
	.string	"short int"
.LASF93:
	.string	"rembits"
.LASF91:
	.string	"bufs"
.LASF84:
	.string	"head"
.LASF16:
	.string	"uint8_t"
.LASF40:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF58:
	.string	"nghttp2_free"
.LASF63:
	.string	"free"
.LASF57:
	.string	"nghttp2_malloc"
.LASF56:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF68:
	.string	"NGHTTP2_HUFF_SYM"
.LASF104:
	.string	"nghttp2_bufs_addb_hold"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF20:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF32:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF10:
	.string	"long int"
.LASF107:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_hd_huffman.c"
.LASF89:
	.string	"offset"
.LASF13:
	.string	"long unsigned int"
.LASF99:
	.string	"nghttp2_hd_huff_decode"
.LASF22:
	.string	"NGHTTP2_ERR_PROTO"
.LASF43:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF38:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF21:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF70:
	.string	"state"
.LASF1:
	.string	"unsigned char"
.LASF48:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF67:
	.string	"NGHTTP2_HUFF_ACCEPTED"
.LASF36:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF33:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF92:
	.string	"avail_ptr"
.LASF24:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF71:
	.string	"flags"
.LASF23:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF85:
	.string	"chunk_length"
.LASF17:
	.string	"uint32_t"
.LASF80:
	.string	"mark"
.LASF6:
	.string	"unsigned int"
.LASF42:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF15:
	.string	"ssize_t"
.LASF76:
	.string	"code"
.LASF79:
	.string	"last"
.LASF50:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF3:
	.string	"short unsigned int"
.LASF81:
	.string	"nghttp2_buf"
.LASF100:
	.string	"final"
.LASF14:
	.string	"char"
.LASF19:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF102:
	.string	"huff_decode_table"
.LASF88:
	.string	"chunk_keep"
.LASF87:
	.string	"chunk_used"
.LASF41:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF9:
	.string	"size_t"
.LASF73:
	.string	"accept"
.LASF53:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF65:
	.string	"realloc"
.LASF55:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF103:
	.string	"nghttp2_bufs_addb"
.LASF54:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF86:
	.string	"max_chunk"
.LASF34:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF5:
	.string	"__uint32_t"
.LASF82:
	.string	"nghttp2_buf_chain"
.LASF37:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF77:
	.string	"nghttp2_huff_sym"
.LASF98:
	.string	"__func__"
.LASF109:
	.string	"huff_encode_sym"
.LASF75:
	.string	"nbits"
.LASF52:
	.string	"NGHTTP2_ERR_FATAL"
.LASF94:
	.string	"nghttp2_hd_huff_encode_count"
.LASF74:
	.string	"nghttp2_hd_huff_decode_context"
.LASF101:
	.string	"huff_sym_table"
.LASF97:
	.string	"avail"
.LASF31:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF61:
	.string	"mem_user_data"
.LASF105:
	.string	"__assert_func"
.LASF106:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF60:
	.string	"nghttp2_realloc"
.LASF83:
	.string	"next"
.LASF4:
	.string	"__uint8_t"
.LASF51:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF11:
	.string	"_ssize_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
