	.file	"list.c"
	.text
.Ltext0:
	.section	.text.list_init,"ax",@progbits
	.align	4
	.global	list_init
	.type	list_init, @function
list_init:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/list.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 41 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	mtx_init
.LVL1:
	.loc 1 43 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL2:
	.loc 1 45 0
	movi.n	a8, 0
	s8i	a8, a2, 12
	.loc 1 46 0
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	.loc 1 47 0
	s32i.n	a8, a2, 4
	.loc 1 48 0
	s8i	a3, a2, 13
	.loc 1 50 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL3:
	retw.n
.LFE17:
	.size	list_init, .-list_init
	.section	.text.list_add,"ax",@progbits
	.align	4
	.global	list_add
	.type	list_add, @function
list_add:
.LFB18:
	.loc 1 53 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 58 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL6:
	.loc 1 61 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L3
.LVL7:
	.loc 1 64 0
	l32i.n	a5, a10, 8
	s32i.n	a5, a2, 8
	j	.L4
.LVL8:
.L7:
	.loc 1 77 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL9:
	.loc 1 78 0
	movi.n	a2, 0xc
.LVL10:
	retw.n
.LVL11:
.L13:
	.loc 1 81 0
	l32i.n	a7, a2, 4
	beqz.n	a7, .L6
	.loc 1 83 0
	addi.n	a5, a5, -1
	addx2	a12, a5, a5
	mov.n	a10, a7
	slli	a12, a12, 2
	mov.n	a11, a6
	call8	bcopy
.LVL12:
	.loc 1 86 0
	mov.n	a10, a7
	call8	free
.LVL13:
.L6:
	.loc 1 93 0
	l8ui	a5, a2, 12
	.loc 1 90 0
	s32i.n	a6, a2, 4
	.loc 1 93 0
	addx2	a10, a5, a5
	addx4	a10, a10, a6
	addi	a10, a10, -12
.LVL14:
	.loc 1 96 0
	addi.n	a5, a5, -1
	s8i	a5, a10, 4
.LVL15:
.L4:
	.loc 1 100 0
	movi.n	a5, 0
	s32i.n	a5, a10, 8
	.loc 1 102 0
	s8i	a5, a10, 5
	.loc 1 101 0
	s32i.n	a3, a10, 0
	.loc 1 105 0
	l8ui	a6, a10, 4
	l8ui	a3, a2, 13
.LVL16:
	.loc 1 107 0
	mov.n	a10, a2
.LVL17:
	.loc 1 105 0
	add.n	a3, a6, a3
	s32i.n	a3, a4, 0
	.loc 1 107 0
	call8	mtx_unlock
.LVL18:
	.loc 1 109 0
	mov.n	a2, a5
.LVL19:
	retw.n
.LVL20:
.L3:
	.loc 1 72 0
	l8ui	a5, a2, 12
	addi.n	a5, a5, 1
	extui	a5, a5, 0, 8
	.loc 1 75 0
	addx2	a10, a5, a5
	.loc 1 72 0
	s8i	a5, a2, 12
	.loc 1 75 0
	slli	a10, a10, 2
	call8	malloc
.LVL21:
	mov.n	a6, a10
.LVL22:
	.loc 1 76 0
	bnez.n	a10, .L13
	j	.L7
.LFE18:
	.size	list_add, .-list_add
	.section	.iram1,"ax",@progbits
	.align	4
	.global	list_get
	.type	list_get, @function
list_get:
.LFB19:
	.loc 1 112 0
.LVL23:
	entry	sp, 32
.LCFI2:
.LVL24:
	.loc 1 116 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL25:
	.loc 1 118 0
	l8ui	a5, a2, 12
	bnez.n	a5, .L15
	j	.L21
.L15:
	.loc 1 124 0
	l8ui	a8, a2, 13
	bge	a3, a8, .L17
	j	.L21
.L17:
	.loc 1 130 0
	sub	a3, a3, a8
.LVL26:
	.loc 1 133 0
	bge	a5, a3, .L18
	j	.L21
.L18:
	.loc 1 138 0
	l32i.n	a5, a2, 4
	addx2	a3, a3, a3
.LVL27:
	addx4	a3, a3, a5
.LVL28:
	.loc 1 140 0
	l8ui	a5, a3, 5
	beqz.n	a5, .L19
.LVL29:
.L21:
	.loc 1 141 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL30:
	.loc 1 142 0
	movi.n	a2, 0x16
.LVL31:
	retw.n
.LVL32:
.L19:
	.loc 1 145 0
	l32i.n	a3, a3, 0
.LVL33:
	.loc 1 147 0
	mov.n	a10, a2
	.loc 1 145 0
	s32i.n	a3, a4, 0
.LVL34:
	.loc 1 147 0
	call8	mtx_unlock
.LVL35:
	.loc 1 149 0
	mov.n	a2, a5
.LVL36:
	.loc 1 150 0
	retw.n
.LFE19:
	.size	list_get, .-list_get
	.section	.text.list_remove,"ax",@progbits
	.align	4
	.global	list_remove
	.type	list_remove, @function
list_remove:
.LFB20:
	.loc 1 152 0
.LVL37:
	entry	sp, 32
.LCFI3:
.LVL38:
	.loc 1 156 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL39:
	.loc 1 159 0
	l8ui	a8, a2, 13
	bge	a3, a8, .L23
	j	.L30
.L23:
	.loc 1 165 0
	sub	a3, a3, a8
.LVL40:
	.loc 1 168 0
	l8ui	a8, a2, 12
	bge	a8, a3, .L25
.LVL41:
.L30:
	.loc 1 169 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL42:
	.loc 1 170 0
	movi.n	a2, 0x16
.LVL43:
	retw.n
.LVL44:
.L25:
	.loc 1 173 0
	l32i.n	a8, a2, 4
	addx2	a3, a3, a3
.LVL45:
	addx4	a3, a3, a8
.LVL46:
	.loc 1 175 0
	beqz.n	a4, .L26
	.loc 1 176 0
	l32i.n	a10, a3, 0
	call8	free
.LVL47:
.L26:
	.loc 1 179 0
	l32i.n	a8, a2, 8
	.loc 1 183 0
	mov.n	a10, a2
	.loc 1 179 0
	s32i.n	a8, a3, 8
	.loc 1 180 0
	movi.n	a8, 1
	s8i	a8, a3, 5
	.loc 1 181 0
	s32i.n	a3, a2, 8
	.loc 1 183 0
	call8	mtx_unlock
.LVL48:
	.loc 1 185 0
	movi.n	a2, 0
.LVL49:
	.loc 1 186 0
	retw.n
.LFE20:
	.size	list_remove, .-list_remove
	.section	.iram1
	.align	4
	.global	list_first
	.type	list_first, @function
list_first:
.LFB21:
	.loc 1 188 0
.LVL50:
	entry	sp, 32
.LCFI4:
.LVL51:
	.loc 1 192 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL52:
	.loc 1 188 0
	mov.n	a3, a2
	.loc 1 194 0
	l8ui	a9, a2, 12
	movi.n	a8, 0
	j	.L32
.LVL53:
.L35:
	.loc 1 195 0
	l32i.n	a10, a3, 4
	addx2	a2, a8, a8
	addx4	a2, a2, a10
	l8ui	a2, a2, 5
	bnez.n	a2, .L33
	.loc 1 196 0
	l8ui	a2, a3, 13
	add.n	a2, a2, a8
.LVL54:
	.loc 1 197 0
	j	.L34
.LVL55:
.L33:
	.loc 1 194 0 discriminator 2
	addi.n	a8, a8, 1
.LVL56:
.L32:
	.loc 1 194 0 is_stmt 0 discriminator 1
	blt	a8, a9, .L35
	.loc 1 190 0 is_stmt 1
	movi.n	a2, -1
.LVL57:
.L34:
	.loc 1 201 0
	mov.n	a10, a3
	call8	mtx_unlock
.LVL58:
	.loc 1 204 0
	retw.n
.LFE21:
	.size	list_first, .-list_first
	.align	4
	.global	list_next
	.type	list_next, @function
list_next:
.LFB22:
	.loc 1 206 0
.LVL59:
	entry	sp, 32
.LCFI5:
.LVL60:
	.loc 1 210 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL61:
	.loc 1 213 0
	l8ui	a8, a2, 13
	bge	a3, a8, .L37
	.loc 1 214 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL62:
	.loc 1 215 0
	movi.n	a2, -1
.LVL63:
	retw.n
.LVL64:
.L37:
	.loc 1 219 0
	sub	a3, a3, a8
.LVL65:
	addi.n	a3, a3, 1
.LVL66:
	addx2	a9, a3, a3
	.loc 1 222 0
	l8ui	a11, a2, 12
	slli	a9, a9, 2
	j	.L39
.L42:
	.loc 1 223 0
	l32i.n	a10, a2, 4
	add.n	a10, a10, a9
	l8ui	a10, a10, 5
	addi.n	a9, a9, 12
	bnez.n	a10, .L40
	.loc 1 224 0
	add.n	a3, a3, a8
.LVL67:
	.loc 1 225 0
	j	.L41
.LVL68:
.L40:
	.loc 1 222 0
	addi.n	a3, a3, 1
.LVL69:
.L39:
	.loc 1 222 0 is_stmt 0 discriminator 1
	blt	a3, a11, .L42
	.loc 1 207 0 is_stmt 1
	movi.n	a3, -1
.LVL70:
.L41:
	.loc 1 229 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL71:
	.loc 1 231 0
	mov.n	a2, a3
.LVL72:
	.loc 1 232 0
	retw.n
.LFE22:
	.size	list_next, .-list_next
	.section	.text.list_destroy,"ax",@progbits
	.align	4
	.global	list_destroy
	.type	list_destroy, @function
list_destroy:
.LFB23:
	.loc 1 234 0
.LVL73:
	entry	sp, 32
.LCFI6:
	.loc 1 237 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL74:
	.loc 1 239 0
	beqz.n	a3, .L44
	movi.n	a3, 0
.LVL75:
	j	.L45
.L44:
	.loc 1 247 0
	l32i.n	a10, a2, 4
	call8	free
.LVL76:
	.loc 1 249 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL77:
	.loc 1 250 0
	mov.n	a10, a2
	call8	mtx_destroy
.LVL78:
	.loc 1 251 0
	retw.n
.LVL79:
.L47:
	.loc 1 241 0
	l32i.n	a9, a2, 4
	addx2	a8, a3, a3
	addx4	a8, a8, a9
	l8ui	a9, a8, 5
	bnez.n	a9, .L46
	.loc 1 242 0
	l32i.n	a10, a8, 0
	call8	free
.LVL80:
.L46:
	.loc 1 240 0 discriminator 2
	addi.n	a3, a3, 1
.LVL81:
.L45:
	.loc 1 240 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 12
	blt	a3, a8, .L47
	j	.L44
.LFE23:
	.size	list_destroy, .-list_destroy
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 6 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/list.h"
	.file 7 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/mutex.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5eb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
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
	.4byte	.LASF11
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x58
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4f
	.4byte	0x98
	.uleb128 0x6
	.string	"mtx"
	.byte	0x4
	.byte	0x7
	.byte	0x29
	.4byte	0xc7
	.uleb128 0x7
	.string	"sem"
	.byte	0x7
	.byte	0x2a
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x10
	.byte	0x6
	.byte	0x24
	.4byte	0x110
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x25
	.4byte	0xae
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x26
	.4byte	0x14d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x27
	.4byte	0x14d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x28
	.4byte	0x86
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x29
	.4byte	0x86
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x2c
	.4byte	0x14d
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2d
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2e
	.4byte	0x86
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2f
	.4byte	0x86
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x30
	.4byte	0x14d
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x110
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x27
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x1ca
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x5a1
	.4byte	0x1a5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x5ac
	.4byte	0x1b9
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x5b7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d0
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x35
	.4byte	0x1ca
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.4byte	0x76
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.4byte	0x14d
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.4byte	0x14d
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x5ac
	.4byte	0x255
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x5b7
	.4byte	0x269
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x5c2
	.4byte	0x290
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LVL13
	.4byte	0x5cd
	.4byte	0x2a4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL18
	.4byte	0x5b7
	.4byte	0x2b8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x5d8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x371
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x70
	.4byte	0x1ca
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x70
	.4byte	0x371
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x71
	.4byte	0x14d
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x72
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LVL25
	.4byte	0x5ac
	.4byte	0x34c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL30
	.4byte	0x5b7
	.4byte	0x360
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL35
	.4byte	0x5b7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41b
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x98
	.4byte	0x1ca
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x99
	.4byte	0x14d
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9a
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LVL39
	.4byte	0x5ac
	.4byte	0x3ed
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL42
	.4byte	0x5b7
	.4byte	0x401
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL47
	.4byte	0x5cd
	.uleb128 0xf
	.4byte	.LVL48
	.4byte	0x5b7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x486
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xbc
	.4byte	0x1ca
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xbe
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LVL52
	.4byte	0x5ac
	.4byte	0x475
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL58
	.4byte	0x5b7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0xce
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xce
	.4byte	0x1ca
	.4byte	.LLST16
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xce
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xcf
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd0
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LVL61
	.4byte	0x5ac
	.4byte	0x4ef
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL62
	.4byte	0x5b7
	.4byte	0x503
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL71
	.4byte	0x5b7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xea
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a1
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0xea
	.4byte	0x1ca
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xeb
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL74
	.4byte	0x5ac
	.4byte	0x566
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL76
	.4byte	0x5cd
	.uleb128 0xd
	.4byte	.LVL77
	.4byte	0x5b7
	.4byte	0x583
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL78
	.4byte	0x5e3
	.4byte	0x597
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL80
	.4byte	0x5cd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2e
	.uleb128 0x16
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2f
	.uleb128 0x16
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x31
	.uleb128 0x16
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x33
	.uleb128 0x16
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x9
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x65
	.uleb128 0x16
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x32
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"mtx_init"
.LASF11:
	.string	"__uint8_t"
.LASF25:
	.string	"next"
.LASF30:
	.string	"list_get"
.LASF23:
	.string	"item"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"QueueHandle_t"
.LASF38:
	.string	"list_destroy"
.LASF32:
	.string	"iindex"
.LASF26:
	.string	"item_index"
.LASF42:
	.string	"mtx_unlock"
.LASF36:
	.string	"list_next"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"cindex"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"list_index"
.LASF29:
	.string	"list_add"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"list"
.LASF37:
	.string	"list_init"
.LASF48:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spiffs"
.LASF39:
	.string	"items"
.LASF43:
	.string	"bcopy"
.LASF27:
	.string	"indexa"
.LASF15:
	.string	"SemaphoreHandle_t"
.LASF44:
	.string	"malloc"
.LASF28:
	.string	"grow"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"mtx_destroy"
.LASF10:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF34:
	.string	"destroy"
.LASF47:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/list.c"
.LASF8:
	.string	"sizetype"
.LASF19:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF33:
	.string	"list_remove"
.LASF41:
	.string	"mtx_lock"
.LASF18:
	.string	"index"
.LASF17:
	.string	"mutex"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"indexes"
.LASF21:
	.string	"first_index"
.LASF7:
	.string	"long int"
.LASF35:
	.string	"list_first"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF24:
	.string	"deleted"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
