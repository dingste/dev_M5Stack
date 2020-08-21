	.file	"nghttp2_map.c"
	.text
.Ltext0:
	.section	.text.hash,"ax",@progbits
	.align	4
	.type	hash, @function
hash:
.LFB5:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_map.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 90 0
	extui	a9, a2, 20, 12
	srli	a8, a2, 12
	xor	a8, a9, a8
	xor	a2, a2, a8
.LVL2:
	.loc 1 91 0
	srli	a9, a2, 7
	srli	a8, a2, 4
	xor	a8, a9, a8
.LVL3:
	.loc 1 92 0
	xor	a2, a2, a8
.LVL4:
	addi.n	a3, a3, -1
.LVL5:
	.loc 1 93 0
	and	a2, a2, a3
.LVL6:
	retw.n
.LFE5:
	.size	hash, .-hash
	.section	.text.insert,"ax",@progbits
	.align	4
	.type	insert, @function
insert:
.LFB6:
	.loc 1 96 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 97 0
	l32i.n	a5, a4, 4
	mov.n	a11, a3
	mov.n	a10, a5
	call8	hash
.LVL8:
	.loc 1 98 0
	addx4	a10, a10, a2
.LVL9:
	l32i.n	a2, a10, 0
.LVL10:
	mov.n	a8, a2
	bnez.n	a2, .L7
	.loc 1 99 0
	s32i.n	a4, a10, 0
	retw.n
.L7:
.LVL11:
.LBB2:
	.loc 1 104 0
	l32i.n	a9, a8, 4
	beq	a5, a9, .L6
	.loc 1 103 0 discriminator 2
	l32i.n	a8, a8, 0
.LVL12:
	bnez.n	a8, .L7
	.loc 1 108 0
	s32i.n	a2, a4, 0
	.loc 1 109 0
	s32i.n	a4, a10, 0
.LBE2:
	.loc 1 111 0
	mov.n	a2, a8
	retw.n
.L6:
.LBB3:
	.loc 1 105 0
	movi	a2, -0x1f5
.LBE3:
	.loc 1 112 0
	retw.n
.LFE6:
	.size	insert, .-insert
	.section	.text.nghttp2_map_init,"ax",@progbits
	.align	4
	.global	nghttp2_map_init
	.type	nghttp2_map_init, @function
nghttp2_map_init:
.LFB0:
	.loc 1 31 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 31 0
	mov.n	a4, a2
	.loc 1 32 0
	s32i.n	a3, a4, 4
	.loc 1 33 0
	movi	a11, 0x100
	s32i.n	a11, a2, 12
	.loc 1 31 0
	mov.n	a10, a3
	.loc 1 35 0
	movi.n	a12, 4
	call8	nghttp2_mem_calloc
.LVL14:
	.loc 1 34 0
	s32i.n	a10, a2, 0
	.loc 1 37 0
	movi	a2, -0x385
.LVL15:
	.loc 1 36 0
	beqz.n	a10, .L10
	.loc 1 40 0
	movi.n	a8, 0
	s32i.n	a8, a4, 8
	.loc 1 42 0
	mov.n	a2, a8
.L10:
	.loc 1 43 0
	retw.n
.LFE0:
	.size	nghttp2_map_init, .-nghttp2_map_init
	.section	.text.nghttp2_map_free,"ax",@progbits
	.align	4
	.global	nghttp2_map_free
	.type	nghttp2_map_free, @function
nghttp2_map_free:
.LFB1:
	.loc 1 45 0
.LVL16:
	entry	sp, 32
.LCFI3:
	.loc 1 46 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a2, 4
	call8	nghttp2_mem_free
.LVL17:
	retw.n
.LFE1:
	.size	nghttp2_map_free, .-nghttp2_map_free
	.section	.text.nghttp2_map_each_free,"ax",@progbits
	.align	4
	.global	nghttp2_map_each_free
	.type	nghttp2_map_each_free, @function
nghttp2_map_each_free:
.LFB2:
	.loc 1 51 0
.LVL18:
	entry	sp, 32
.LCFI4:
.LVL19:
	.loc 1 53 0
	movi.n	a5, 0
	j	.L14
.LVL20:
.L17:
.LBB4:
	.loc 1 55 0
	l32i.n	a8, a2, 0
	slli	a6, a5, 2
	add.n	a8, a8, a6
	l32i.n	a10, a8, 0
.LVL21:
	j	.L15
.L16:
.LBB5:
	.loc 1 56 0
	l32i.n	a7, a10, 0
.LVL22:
	.loc 1 57 0
	mov.n	a11, a4
	callx8	a3
.LVL23:
	.loc 1 58 0
	mov.n	a10, a7
.LVL24:
.L15:
.LBE5:
	.loc 1 55 0 discriminator 1
	bnez.n	a10, .L16
	.loc 1 60 0 discriminator 2
	l32i.n	a8, a2, 0
.LBE4:
	.loc 1 53 0 discriminator 2
	addi.n	a5, a5, 1
.LVL25:
.LBB6:
	.loc 1 60 0 discriminator 2
	add.n	a6, a8, a6
	s32i.n	a10, a6, 0
.LVL26:
.L14:
.LBE6:
	.loc 1 53 0 discriminator 1
	l32i.n	a6, a2, 12
	bltu	a5, a6, .L17
	.loc 1 62 0
	retw.n
.LFE2:
	.size	nghttp2_map_each_free, .-nghttp2_map_each_free
	.section	.text.nghttp2_map_each,"ax",@progbits
	.align	4
	.global	nghttp2_map_each
	.type	nghttp2_map_each, @function
nghttp2_map_each:
.LFB3:
	.loc 1 66 0
.LVL27:
	entry	sp, 32
.LCFI5:
.LVL28:
	.loc 1 69 0
	movi.n	a5, 0
	j	.L19
.LVL29:
.L23:
.LBB7:
	.loc 1 71 0
	l32i.n	a6, a2, 0
	addx4	a6, a5, a6
	j	.L25
.LVL30:
.L22:
	.loc 1 72 0
	mov.n	a11, a4
	mov.n	a10, a6
	callx8	a3
.LVL31:
	.loc 1 73 0
	bnez.n	a10, .L24
.LVL32:
.L25:
	.loc 1 71 0 discriminator 2
	l32i.n	a6, a6, 0
.LVL33:
	bnez.n	a6, .L22
.LBE7:
	.loc 1 69 0 discriminator 2
	addi.n	a5, a5, 1
.LVL34:
.L19:
	.loc 1 69 0 is_stmt 0 discriminator 1
	l32i.n	a6, a2, 12
	bltu	a5, a6, .L23
	.loc 1 78 0 is_stmt 1
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L24:
.LBB8:
	.loc 1 72 0
	mov.n	a2, a10
.LVL37:
.LBE8:
	.loc 1 79 0
	retw.n
.LFE3:
	.size	nghttp2_map_each, .-nghttp2_map_each
	.section	.text.nghttp2_map_entry_init,"ax",@progbits
	.align	4
	.global	nghttp2_map_entry_init
	.type	nghttp2_map_entry_init, @function
nghttp2_map_entry_init:
.LFB4:
	.loc 1 81 0
.LVL38:
	entry	sp, 32
.LCFI6:
	.loc 1 83 0
	movi.n	a8, 0
	.loc 1 82 0
	s32i.n	a3, a2, 4
	.loc 1 83 0
	s32i.n	a8, a2, 0
	retw.n
.LFE4:
	.size	nghttp2_map_entry_init, .-nghttp2_map_entry_init
	.section	.text.nghttp2_map_insert,"ax",@progbits
	.align	4
	.global	nghttp2_map_insert
	.type	nghttp2_map_insert, @function
nghttp2_map_insert:
.LFB8:
	.loc 1 142 0
.LVL39:
	entry	sp, 48
.LCFI7:
	.loc 1 145 0
	l32i.n	a8, a2, 12
	l32i.n	a4, a2, 8
	slli	a5, a8, 1
	addi.n	a4, a4, 1
	slli	a4, a4, 2
	add.n	a8, a5, a8
	bgeu	a8, a4, .L28
.LVL40:
.LBB13:
.LBB14:
	.loc 1 119 0
	l32i.n	a10, a2, 4
	movi.n	a12, 4
	mov.n	a11, a5
	call8	nghttp2_mem_calloc
.LVL41:
	mov.n	a6, a10
.LVL42:
	.loc 1 122 0
	movi	a10, -0x385
	.loc 1 121 0
	beqz.n	a6, .L29
	movi.n	a4, 0
.LBB15:
.LBB16:
	.loc 1 129 0
	mov.n	a7, a4
	j	.L30
.LVL43:
.L33:
.LBE16:
	.loc 1 127 0
	l32i.n	a8, a2, 0
	addx4	a8, a4, a8
	l32i.n	a12, a8, 0
.LVL44:
	j	.L31
.L32:
.LBB17:
	.loc 1 128 0
	l32i.n	a8, a12, 0
.LVL45:
	.loc 1 131 0
	mov.n	a11, a5
	.loc 1 129 0
	s32i.n	a7, a12, 0
	.loc 1 131 0
	mov.n	a10, a6
	s32i.n	a8, sp, 0
	call8	insert
.LVL46:
	.loc 1 132 0
	l32i.n	a8, sp, 0
	mov.n	a12, a8
.LVL47:
.L31:
.LBE17:
	.loc 1 127 0
	bnez.n	a12, .L32
.LBE15:
	.loc 1 125 0
	addi.n	a4, a4, 1
.LVL48:
.L30:
	l32i.n	a8, a2, 12
	bltu	a4, a8, .L33
	.loc 1 135 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a2, 4
	call8	nghttp2_mem_free
.LVL49:
	.loc 1 136 0
	s32i.n	a5, a2, 12
	.loc 1 137 0
	s32i.n	a6, a2, 0
.LVL50:
.L28:
.LBE14:
.LBE13:
	.loc 1 151 0
	l32i.n	a11, a2, 12
	l32i.n	a10, a2, 0
	mov.n	a12, a3
	call8	insert
.LVL51:
	.loc 1 152 0
	bnez.n	a10, .L29
	.loc 1 155 0
	l32i.n	a3, a2, 8
.LVL52:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 8
.LVL53:
.L29:
	.loc 1 157 0
	mov.n	a2, a10
.LVL54:
	retw.n
.LFE8:
	.size	nghttp2_map_insert, .-nghttp2_map_insert
	.section	.text.nghttp2_map_find,"ax",@progbits
	.align	4
	.global	nghttp2_map_find
	.type	nghttp2_map_find, @function
nghttp2_map_find:
.LFB9:
	.loc 1 159 0
.LVL55:
	entry	sp, 32
.LCFI8:
	.loc 1 162 0
	l32i.n	a11, a2, 12
	mov.n	a10, a3
	call8	hash
.LVL56:
	.loc 1 163 0
	l32i.n	a2, a2, 0
.LVL57:
	addx4	a10, a10, a2
.LVL58:
	l32i.n	a2, a10, 0
.LVL59:
	j	.L37
.L39:
	.loc 1 164 0
	l32i.n	a8, a2, 4
	beq	a3, a8, .L38
	.loc 1 163 0 discriminator 2
	l32i.n	a2, a2, 0
.LVL60:
.L37:
	.loc 1 163 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L39
.L38:
	.loc 1 169 0 is_stmt 1
	retw.n
.LFE9:
	.size	nghttp2_map_find, .-nghttp2_map_find
	.section	.text.nghttp2_map_remove,"ax",@progbits
	.align	4
	.global	nghttp2_map_remove
	.type	nghttp2_map_remove, @function
nghttp2_map_remove:
.LFB10:
	.loc 1 171 0
.LVL61:
	entry	sp, 32
.LCFI9:
	.loc 1 175 0
	l32i.n	a11, a2, 12
	mov.n	a10, a3
	call8	hash
.LVL62:
	.loc 1 177 0
	l32i.n	a8, a2, 0
	addx4	a10, a10, a8
.LVL63:
	j	.L42
.L45:
	.loc 1 178 0
	l32i.n	a9, a8, 4
	beq	a3, a9, .L43
	.loc 1 177 0
	mov.n	a10, a8
.LVL64:
	j	.L42
.LVL65:
.L43:
	.loc 1 182 0
	l32i.n	a3, a8, 0
.LVL66:
	.loc 1 183 0
	l32i.n	a8, a2, 8
	.loc 1 182 0
	s32i.n	a3, a10, 0
	.loc 1 183 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 8
	.loc 1 184 0
	movi.n	a2, 0
.LVL67:
	retw.n
.LVL68:
.L42:
	.loc 1 177 0 discriminator 1
	l32i.n	a8, a10, 0
	bnez.n	a8, .L45
	.loc 1 186 0
	movi	a2, -0x1f5
.LVL69:
	.loc 1 187 0
	retw.n
.LFE10:
	.size	nghttp2_map_remove, .-nghttp2_map_remove
	.section	.text.nghttp2_map_size,"ax",@progbits
	.align	4
	.global	nghttp2_map_size
	.type	nghttp2_map_size, @function
nghttp2_map_size:
.LFB11:
	.loc 1 189 0
.LVL70:
	entry	sp, 32
.LCFI10:
	.loc 1 189 0
	l32i.n	a2, a2, 8
.LVL71:
	retw.n
.LFE11:
	.size	nghttp2_map_size, .-nghttp2_map_size
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI2-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI10-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_map.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_mem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x83e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.byte	0x5
	.byte	0xe7
	.4byte	0x1d0
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 -501
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 -502
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 -503
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 -504
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 -505
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 -506
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 -507
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -508
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -509
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -510
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -511
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -512
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -513
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -514
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -515
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -516
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -517
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -518
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -519
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -521
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -522
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -523
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -524
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -525
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -526
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 -527
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 -528
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 -529
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 -530
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 -531
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 -532
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 -533
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 -534
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 -535
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 -900
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 -901
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 -902
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 -903
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 -904
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x8df
	.4byte	0x1dc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x1f6
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xb
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x8e7
	.4byte	0x202
	.uleb128 0x9
	.byte	0x4
	.4byte	0x208
	.uleb128 0xc
	.4byte	0x218
	.uleb128 0xb
	.4byte	0x7e
	.uleb128 0xb
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x8ef
	.4byte	0x224
	.uleb128 0x9
	.byte	0x4
	.4byte	0x22a
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x243
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xb
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x8f7
	.4byte	0x24f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x255
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x26e
	.uleb128 0xb
	.4byte	0x7e
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xb
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.byte	0x14
	.byte	0x5
	.2byte	0x920
	.4byte	0x2b9
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x925
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x929
	.4byte	0x1d0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x92d
	.4byte	0x1f6
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x931
	.4byte	0x218
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x935
	.4byte	0x243
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x936
	.4byte	0x26e
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x26
	.4byte	0x9c
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x8
	.byte	0x6
	.byte	0x28
	.4byte	0x2f5
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x6
	.byte	0x29
	.4byte	0x2f5
	.byte	0
	.uleb128 0x11
	.string	"key"
	.byte	0x6
	.byte	0x2a
	.4byte	0x2c5
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x2f
	.4byte	0x2d0
	.uleb128 0x12
	.byte	0x10
	.byte	0x6
	.byte	0x31
	.4byte	0x33f
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x6
	.byte	0x32
	.4byte	0x33f
	.byte	0
	.uleb128 0x11
	.string	"mem"
	.byte	0x6
	.byte	0x33
	.4byte	0x34b
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x6
	.byte	0x34
	.4byte	0x73
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x6
	.byte	0x35
	.4byte	0xa7
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x345
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2b9
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x6
	.byte	0x36
	.4byte	0x306
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.byte	0x58
	.4byte	0xa7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a1
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x58
	.4byte	0x9c
	.4byte	.LLST0
	.uleb128 0x14
	.string	"mod"
	.byte	0x1
	.byte	0x58
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0x59
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5f
	.4byte	0x4c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5f
	.4byte	0x33f
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x60
	.4byte	0x345
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0x61
	.4byte	0xa7
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x405
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x345
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x35c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46e
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0x1f
	.4byte	0x46e
	.4byte	.LLST5
	.uleb128 0x1d
	.string	"mem"
	.byte	0x1
	.byte	0x1f
	.4byte	0x34b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x82b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x351
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a0
	.uleb128 0x1d
	.string	"map"
	.byte	0x1
	.byte	0x2d
	.4byte	0x46e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL17
	.4byte	0x836
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x1
	.byte	0x31
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524
	.uleb128 0x1d
	.string	"map"
	.byte	0x1
	.byte	0x31
	.4byte	0x46e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0x32
	.4byte	0x538
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0x33
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x34
	.4byte	0xa7
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0x36
	.4byte	0x345
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0x38
	.4byte	0x345
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	.LVL23
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x4c
	.4byte	0x538
	.uleb128 0xb
	.4byte	0x345
	.uleb128 0xb
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x524
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0x40
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c3
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0x40
	.4byte	0x46e
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0x41
	.4byte	0x538
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0x42
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"rv"
	.byte	0x1
	.byte	0x43
	.4byte	0x4c
	.4byte	.LLST10
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x44
	.4byte	0xa7
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0x46
	.4byte	0x345
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0x51
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f3
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x51
	.4byte	0x345
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x51
	.4byte	0x2c5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF93
	.byte	0x1
	.byte	0x73
	.4byte	0x4c
	.byte	0x1
	.4byte	0x648
	.uleb128 0x25
	.string	"map"
	.byte	0x1
	.byte	0x73
	.4byte	0x46e
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x1
	.byte	0x73
	.4byte	0xa7
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x74
	.4byte	0xa7
	.uleb128 0x28
	.4byte	.LASF82
	.byte	0x1
	.byte	0x75
	.4byte	0x33f
	.uleb128 0x29
	.uleb128 0x28
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7e
	.4byte	0x345
	.uleb128 0x29
	.uleb128 0x28
	.4byte	.LASF66
	.byte	0x1
	.byte	0x80
	.4byte	0x345
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8e
	.4byte	0x4c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73e
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0x8e
	.4byte	0x46e
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x8e
	.4byte	0x345
	.4byte	.LLST14
	.uleb128 0x15
	.string	"rv"
	.byte	0x1
	.byte	0x8f
	.4byte	0x4c
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	0x5f3
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x92
	.4byte	0x72d
	.uleb128 0x2b
	.4byte	0x60e
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	0x603
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2c
	.4byte	0x619
	.4byte	.LLST18
	.uleb128 0x2c
	.4byte	0x622
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x709
	.uleb128 0x2c
	.4byte	0x62e
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2c
	.4byte	0x63a
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0x3a1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL41
	.4byte	0x82b
	.4byte	0x722
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0x836
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x3a1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x1
	.byte	0x9f
	.4byte	0x345
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79e
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0x9f
	.4byte	0x46e
	.4byte	.LLST22
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x9f
	.4byte	0x2c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0xa0
	.4byte	0xa7
	.4byte	.LLST23
	.uleb128 0x2f
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa1
	.4byte	0x345
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x35c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.byte	0xab
	.4byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x802
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0xab
	.4byte	0x46e
	.4byte	.LLST24
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xab
	.4byte	0x2c5
	.4byte	.LLST25
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0xac
	.4byte	0xa7
	.4byte	.LLST26
	.uleb128 0x15
	.string	"dst"
	.byte	0x1
	.byte	0xad
	.4byte	0x33f
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x35c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.byte	0xbd
	.4byte	0x73
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82b
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0xbd
	.4byte	0x46e
	.4byte	.LLST28
	.byte	0
	.uleb128 0x30
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x7
	.byte	0x2a
	.uleb128 0x30
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x7
	.byte	0x28
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x44
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x25
	.byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
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
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"calloc"
.LASF78:
	.string	"nghttp2_map_init"
.LASF87:
	.string	"nghttp2_map_size"
.LASF71:
	.string	"nghttp2_map"
.LASF86:
	.string	"nghttp2_map_remove"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_map.c"
.LASF93:
	.string	"resize"
.LASF44:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF57:
	.string	"nghttp2_calloc"
.LASF64:
	.string	"nghttp2_mem"
.LASF60:
	.string	"malloc"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF45:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF47:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF79:
	.string	"nghttp2_map_each"
.LASF89:
	.string	"nghttp2_mem_free"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/nghttp"
.LASF23:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF42:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF38:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF56:
	.string	"nghttp2_free"
.LASF67:
	.string	"nghttp2_map_entry"
.LASF68:
	.string	"table"
.LASF15:
	.string	"uint32_t"
.LASF61:
	.string	"free"
.LASF54:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF25:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF18:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF77:
	.string	"func"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF30:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF50:
	.string	"NGHTTP2_ERR_FATAL"
.LASF20:
	.string	"NGHTTP2_ERR_PROTO"
.LASF41:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF85:
	.string	"nghttp2_map_find"
.LASF36:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF19:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF84:
	.string	"new_entry"
.LASF1:
	.string	"unsigned char"
.LASF70:
	.string	"tablelen"
.LASF46:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF74:
	.string	"entry"
.LASF31:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF72:
	.string	"hash"
.LASF22:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF55:
	.string	"nghttp2_malloc"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF6:
	.string	"unsigned int"
.LASF40:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF88:
	.string	"nghttp2_mem_calloc"
.LASF12:
	.string	"long unsigned int"
.LASF76:
	.string	"nghttp2_map_each_free"
.LASF65:
	.string	"key_type"
.LASF80:
	.string	"nghttp2_map_entry_init"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF13:
	.string	"char"
.LASF17:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF10:
	.string	"long int"
.LASF14:
	.string	"int32_t"
.LASF39:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF9:
	.string	"size_t"
.LASF73:
	.string	"insert"
.LASF51:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF63:
	.string	"realloc"
.LASF69:
	.string	"size"
.LASF53:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF52:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF32:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF81:
	.string	"new_tablelen"
.LASF5:
	.string	"__uint32_t"
.LASF48:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF35:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF4:
	.string	"__int32_t"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF11:
	.string	"sizetype"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF24:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF59:
	.string	"mem_user_data"
.LASF90:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF58:
	.string	"nghttp2_realloc"
.LASF83:
	.string	"nghttp2_map_insert"
.LASF75:
	.string	"nghttp2_map_free"
.LASF66:
	.string	"next"
.LASF49:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF82:
	.string	"new_table"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
