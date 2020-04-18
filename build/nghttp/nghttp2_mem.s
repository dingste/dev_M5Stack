	.file	"nghttp2_mem.c"
	.text
.Ltext0:
	.section	.text.default_realloc,"ax",@progbits
	.align	4
	.type	default_realloc, @function
default_realloc:
.LVL0:
.LFB6:
	.file 1 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_mem.c"
	.loc 1 45 75 view -0
	.loc 1 45 75 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 46 3 is_stmt 1 view .LVU2
	.loc 1 48 3 view .LVU3
	.loc 1 48 10 is_stmt 0 view .LVU4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	realloc
.LVL1:
	.loc 1 49 1 view .LVU5
	mov.n	a2, a10
.LVL2:
	.loc 1 49 1 view .LVU6
	retw.n
.LFE6:
	.size	default_realloc, .-default_realloc
	.section	.text.default_calloc,"ax",@progbits
	.align	4
	.type	default_calloc, @function
default_calloc:
.LVL3:
.LFB5:
	.loc 1 39 77 is_stmt 1 view -0
	.loc 1 39 77 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI1:
	.loc 1 40 3 is_stmt 1 view .LVU9
	.loc 1 42 3 view .LVU10
	.loc 1 42 10 is_stmt 0 view .LVU11
	mov.n	a11, a3
	mov.n	a10, a2
	call8	calloc
.LVL4:
	.loc 1 43 1 view .LVU12
	mov.n	a2, a10
.LVL5:
	.loc 1 43 1 view .LVU13
	retw.n
.LFE5:
	.size	default_calloc, .-default_calloc
	.section	.text.default_free,"ax",@progbits
	.align	4
	.type	default_free, @function
default_free:
.LVL6:
.LFB4:
	.loc 1 33 58 is_stmt 1 view -0
	.loc 1 33 58 is_stmt 0 view .LVU15
	entry	sp, 32
.LCFI2:
	.loc 1 34 3 is_stmt 1 view .LVU16
	.loc 1 36 3 view .LVU17
	mov.n	a10, a2
	call8	free
.LVL7:
	.loc 1 37 1 is_stmt 0 view .LVU18
	retw.n
.LFE4:
	.size	default_free, .-default_free
	.section	.text.default_malloc,"ax",@progbits
	.align	4
	.type	default_malloc, @function
default_malloc:
.LVL8:
.LFB3:
	.loc 1 27 63 is_stmt 1 view -0
	.loc 1 27 63 is_stmt 0 view .LVU20
	entry	sp, 32
.LCFI3:
	.loc 1 28 3 is_stmt 1 view .LVU21
	.loc 1 30 3 view .LVU22
	.loc 1 30 10 is_stmt 0 view .LVU23
	mov.n	a10, a2
	call8	malloc
.LVL9:
	.loc 1 31 1 view .LVU24
	mov.n	a2, a10
.LVL10:
	.loc 1 31 1 view .LVU25
	retw.n
.LFE3:
	.size	default_malloc, .-default_malloc
	.section	.text.nghttp2_mem_default,"ax",@progbits
	.literal_position
	.literal .LC0, mem_default
	.align	4
	.global	nghttp2_mem_default
	.type	nghttp2_mem_default, @function
nghttp2_mem_default:
.LFB7:
	.loc 1 54 40 is_stmt 1 view -0
	entry	sp, 32
.LCFI4:
	.loc 1 54 42 view .LVU27
	.loc 1 54 1 is_stmt 0 view .LVU28
	l32r	a2, .LC0
	retw.n
.LFE7:
	.size	nghttp2_mem_default, .-nghttp2_mem_default
	.section	.text.nghttp2_mem_malloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_malloc
	.type	nghttp2_mem_malloc, @function
nghttp2_mem_malloc:
.LVL11:
.LFB8:
	.loc 1 56 57 is_stmt 1 view -0
	.loc 1 56 57 is_stmt 0 view .LVU30
	entry	sp, 32
.LCFI5:
	.loc 1 57 3 is_stmt 1 view .LVU31
	.loc 1 57 10 is_stmt 0 view .LVU32
	l32i.n	a8, a2, 4
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	callx8	a8
.LVL12:
	.loc 1 58 1 view .LVU33
	mov.n	a2, a10
.LVL13:
	.loc 1 58 1 view .LVU34
	retw.n
.LFE8:
	.size	nghttp2_mem_malloc, .-nghttp2_mem_malloc
	.section	.text.nghttp2_mem_free,"ax",@progbits
	.align	4
	.global	nghttp2_mem_free
	.type	nghttp2_mem_free, @function
nghttp2_mem_free:
.LVL14:
.LFB9:
	.loc 1 60 52 is_stmt 1 view -0
	.loc 1 60 52 is_stmt 0 view .LVU36
	entry	sp, 32
.LCFI6:
	.loc 1 61 3 is_stmt 1 view .LVU37
	l32i.n	a8, a2, 8
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	callx8	a8
.LVL15:
	.loc 1 62 1 is_stmt 0 view .LVU38
	retw.n
.LFE9:
	.size	nghttp2_mem_free, .-nghttp2_mem_free
	.section	.text.nghttp2_mem_free2,"ax",@progbits
	.align	4
	.global	nghttp2_mem_free2
	.type	nghttp2_mem_free2, @function
nghttp2_mem_free2:
.LVL16:
.LFB10:
	.loc 1 64 80 is_stmt 1 view -0
	.loc 1 64 80 is_stmt 0 view .LVU40
	entry	sp, 32
.LCFI7:
	.loc 1 65 3 is_stmt 1 view .LVU41
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a2
.LVL17:
	.loc 1 66 1 is_stmt 0 view .LVU42
	retw.n
.LFE10:
	.size	nghttp2_mem_free2, .-nghttp2_mem_free2
	.section	.text.nghttp2_mem_calloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_calloc
	.type	nghttp2_mem_calloc, @function
nghttp2_mem_calloc:
.LVL18:
.LFB11:
	.loc 1 68 71 is_stmt 1 view -0
	.loc 1 68 71 is_stmt 0 view .LVU44
	entry	sp, 32
.LCFI8:
	.loc 1 69 3 is_stmt 1 view .LVU45
	.loc 1 69 10 is_stmt 0 view .LVU46
	l32i.n	a8, a2, 12
	l32i.n	a12, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a8
.LVL19:
	.loc 1 70 1 view .LVU47
	mov.n	a2, a10
.LVL20:
	.loc 1 70 1 view .LVU48
	retw.n
.LFE11:
	.size	nghttp2_mem_calloc, .-nghttp2_mem_calloc
	.section	.text.nghttp2_mem_realloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_realloc
	.type	nghttp2_mem_realloc, @function
nghttp2_mem_realloc:
.LVL21:
.LFB12:
	.loc 1 72 69 is_stmt 1 view -0
	.loc 1 72 69 is_stmt 0 view .LVU50
	entry	sp, 32
.LCFI9:
	.loc 1 73 3 is_stmt 1 view .LVU51
	.loc 1 73 10 is_stmt 0 view .LVU52
	l32i.n	a8, a2, 16
	l32i.n	a12, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a8
.LVL22:
	.loc 1 74 1 view .LVU53
	mov.n	a2, a10
.LVL23:
	.loc 1 74 1 view .LVU54
	retw.n
.LFE12:
	.size	nghttp2_mem_realloc, .-nghttp2_mem_realloc
	.section	.data.mem_default,"aw"
	.align	4
	.type	mem_default, @object
	.size	mem_default, 20
mem_default:
	.word	0
	.word	default_malloc
	.word	default_free
	.word	default_calloc
	.word	default_realloc
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI6-.LFB9
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI8-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI9-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd68
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x83
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xd1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xd1
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xe1
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x105
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xaf
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x11d
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x18a
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x18a
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x41
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x190
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x130
	.uleb128 0x9
	.4byte	0x124
	.4byte	0x1a0
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x223
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x268
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x268
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x268
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x69
	.4byte	0x278
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2ba
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2ba
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2c0
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2d7
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x278
	.uleb128 0x9
	.4byte	0x2d0
	.4byte	0x2d0
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d6
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x223
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x305
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x305
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x37e
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x305
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2dd
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4e2
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x30b
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4e2
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x735
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x735
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x735
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x649
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x89d
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x8a3
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8b4
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x649
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ba
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8c0
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x649
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8d1
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2ba
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x278
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6f6
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x735
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8dd
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x649
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x383
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x62b
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x305
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2dd
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4e2
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x69
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x65b
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x685
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x6a9
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6c3
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2dd
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x305
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6c9
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6d9
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2dd
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x8a
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x111
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0x105
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x649
	.uleb128 0x18
	.4byte	0x4e2
	.uleb128 0x18
	.4byte	0x69
	.uleb128 0x18
	.4byte	0x649
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.uleb128 0x13
	.4byte	0x64f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x67f
	.uleb128 0x18
	.4byte	0x4e2
	.uleb128 0x18
	.4byte	0x69
	.uleb128 0x18
	.4byte	0x67f
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x656
	.uleb128 0xf
	.byte	0x4
	.4byte	0x661
	.uleb128 0x17
	.4byte	0x96
	.4byte	0x6a9
	.uleb128 0x18
	.4byte	0x4e2
	.uleb128 0x18
	.4byte	0x69
	.uleb128 0x18
	.4byte	0x96
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x68b
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6c3
	.uleb128 0x18
	.4byte	0x4e2
	.uleb128 0x18
	.4byte	0x69
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6af
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x6d9
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x6e9
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4e8
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x72f
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x72f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x735
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6f6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e9
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x782
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x782
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x782
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x792
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7d9
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x18a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x18a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7d9
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x888
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x649
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0x105
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0x105
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0x105
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x888
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0x105
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0x105
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0x105
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0x105
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0x105
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x64f
	.4byte	0x898
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF146
	.uleb128 0xf
	.byte	0x4
	.4byte	0x898
	.uleb128 0xf
	.byte	0x4
	.4byte	0x792
	.uleb128 0x1a
	.4byte	0x8b4
	.uleb128 0x18
	.4byte	0x4e2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8a9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x73b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0x1a
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x37e
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x37e
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x37e
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4e2
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x649
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x8df
	.byte	0x11
	.4byte	0x930
	.uleb128 0xf
	.byte	0x4
	.4byte	0x936
	.uleb128 0x17
	.4byte	0x69
	.4byte	0x94a
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x8e7
	.byte	0x10
	.4byte	0x957
	.uleb128 0xf
	.byte	0x4
	.4byte	0x95d
	.uleb128 0x1a
	.4byte	0x96d
	.uleb128 0x18
	.4byte	0x69
	.uleb128 0x18
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x8ef
	.byte	0x11
	.4byte	0x97a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x980
	.uleb128 0x17
	.4byte	0x69
	.4byte	0x999
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x8f7
	.byte	0x11
	.4byte	0x9a6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9ac
	.uleb128 0x17
	.4byte	0x69
	.4byte	0x9c5
	.uleb128 0x18
	.4byte	0x69
	.uleb128 0x18
	.4byte	0x5d
	.uleb128 0x18
	.4byte	0x69
	.byte	0
	.uleb128 0x1d
	.byte	0x14
	.byte	0x7
	.2byte	0x920
	.byte	0x9
	.4byte	0xa16
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x925
	.byte	0x9
	.4byte	0x69
	.byte	0
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x929
	.byte	0x12
	.4byte	0x923
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x92d
	.byte	0x10
	.4byte	0x94a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x931
	.byte	0x12
	.4byte	0x96d
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x935
	.byte	0x13
	.4byte	0x999
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x936
	.byte	0x3
	.4byte	0x9c5
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x33
	.byte	0x14
	.4byte	0xa16
	.uleb128 0x5
	.byte	0x3
	.4byte	mem_default
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.4byte	0x69
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa92
	.uleb128 0x20
	.string	"mem"
	.byte	0x1
	.byte	0x48
	.byte	0x28
	.4byte	0xa92
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.byte	0x48
	.byte	0x33
	.4byte	0x69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x48
	.byte	0x3f
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa16
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x44
	.byte	0x7
	.4byte	0x69
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf5
	.uleb128 0x20
	.string	"mem"
	.byte	0x1
	.byte	0x44
	.byte	0x27
	.4byte	0xa92
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x44
	.byte	0x33
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x44
	.byte	0x41
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4b
	.uleb128 0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0x40
	.byte	0x25
	.4byte	0x94a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.byte	0x40
	.byte	0x36
	.4byte	0x69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x40
	.byte	0x41
	.4byte	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL17
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF138
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8a
	.uleb128 0x21
	.string	"mem"
	.byte	0x1
	.byte	0x3c
	.byte	0x24
	.4byte	0xa92
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.byte	0x3c
	.byte	0x2f
	.4byte	0x69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL15
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.byte	0x38
	.byte	0x7
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd3
	.uleb128 0x20
	.string	"mem"
	.byte	0x1
	.byte	0x38
	.byte	0x27
	.4byte	0xa92
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x38
	.byte	0x33
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL12
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0xa92
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF140
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x69
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4a
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0x2d
	.byte	0x24
	.4byte	0x69
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2d
	.byte	0x30
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x2d
	.byte	0x3c
	.4byte	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL1
	.4byte	0xd3b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF141
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcab
	.uleb128 0x2a
	.4byte	.LASF135
	.byte	0x1
	.byte	0x27
	.byte	0x24
	.4byte	0x5d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x27
	.byte	0x32
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x27
	.byte	0x3e
	.4byte	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xd47
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcee
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.byte	0x21
	.byte	0x20
	.4byte	0x69
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x21
	.byte	0x2b
	.4byte	0x69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xd53
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF142
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x69
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3b
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1b
	.byte	0x24
	.4byte	0x5d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1b
	.byte	0x30
	.4byte	0x69
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xd5f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.uleb128 0x2c
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x6
	.byte	0x5e
	.byte	0x8
	.uleb128 0x2c
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x6
	.byte	0x61
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x6
	.byte	0x6c
	.byte	0x8
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
	.uleb128 0x39
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x39
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long int"
.LASF75:
	.string	"_misc"
.LASF8:
	.string	"_lock_t"
.LASF37:
	.string	"_on_exit_args"
.LASF80:
	.string	"_write"
.LASF108:
	.string	"_wctomb_state"
.LASF131:
	.string	"nghttp2_mem"
.LASF68:
	.string	"_r48"
.LASF76:
	.string	"_signal_buf"
.LASF4:
	.string	"unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF50:
	.string	"_flags"
.LASF55:
	.string	"_errno"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF79:
	.string	"_read"
.LASF112:
	.string	"_mbrlen_state"
.LASF124:
	.string	"nghttp2_calloc"
.LASF57:
	.string	"_stdout"
.LASF12:
	.string	"_fpos_t"
.LASF44:
	.string	"_fns"
.LASF78:
	.string	"_cookie"
.LASF26:
	.string	"_Bigint"
.LASF34:
	.string	"__tm_wday"
.LASF101:
	.string	"_result"
.LASF30:
	.string	"__tm_hour"
.LASF122:
	.string	"nghttp2_malloc"
.LASF16:
	.string	"__count"
.LASF29:
	.string	"__tm_min"
.LASF127:
	.string	"malloc"
.LASF74:
	.string	"__sf"
.LASF95:
	.string	"_rand48"
.LASF140:
	.string	"default_realloc"
.LASF102:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF70:
	.string	"_asctime_buf"
.LASF77:
	.string	"__sFILE"
.LASF25:
	.string	"_wds"
.LASF91:
	.string	"__FILE"
.LASF86:
	.string	"_offset"
.LASF83:
	.string	"_ubuf"
.LASF60:
	.string	"_emergency"
.LASF137:
	.string	"nghttp2_mem_free2"
.LASF7:
	.string	"size_t"
.LASF28:
	.string	"__tm_sec"
.LASF121:
	.string	"suboptarg"
.LASF35:
	.string	"__tm_yday"
.LASF59:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF22:
	.string	"_next"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF17:
	.string	"__value"
.LASF103:
	.string	"_p5s"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF107:
	.string	"_mblen_state"
.LASF90:
	.string	"char"
.LASF31:
	.string	"__tm_mday"
.LASF71:
	.string	"_sig_func"
.LASF113:
	.string	"_mbrtowc_state"
.LASF123:
	.string	"nghttp2_free"
.LASF19:
	.string	"_flock_t"
.LASF149:
	.string	"default_free"
.LASF14:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF125:
	.string	"nghttp2_realloc"
.LASF82:
	.string	"_close"
.LASF61:
	.string	"__sdidinit"
.LASF49:
	.string	"__sFILE_fake"
.LASF133:
	.string	"nghttp2_mem_realloc"
.LASF56:
	.string	"_stdin"
.LASF65:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF47:
	.string	"_base"
.LASF104:
	.string	"_freelist"
.LASF97:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF139:
	.string	"nghttp2_mem_malloc"
.LASF115:
	.string	"_wcrtomb_state"
.LASF51:
	.string	"_file"
.LASF64:
	.string	"__cleanup"
.LASF147:
	.string	"mem_default"
.LASF134:
	.string	"nghttp2_mem_calloc"
.LASF18:
	.string	"_mbstate_t"
.LASF100:
	.string	"_mprec"
.LASF141:
	.string	"default_calloc"
.LASF132:
	.string	"size"
.LASF36:
	.string	"__tm_isdst"
.LASF32:
	.string	"__tm_mon"
.LASF136:
	.string	"free_func"
.LASF138:
	.string	"nghttp2_mem_free"
.LASF72:
	.string	"_atexit0"
.LASF42:
	.string	"_atexit"
.LASF88:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF126:
	.string	"mem_user_data"
.LASF145:
	.string	"/home/dieter/Development/ProjektEi/build/nghttp"
.LASF24:
	.string	"_sign"
.LASF53:
	.string	"_data"
.LASF15:
	.string	"__wchb"
.LASF120:
	.string	"_global_impure_ptr"
.LASF33:
	.string	"__tm_year"
.LASF105:
	.string	"_misc_reent"
.LASF69:
	.string	"_localtime_buf"
.LASF128:
	.string	"free"
.LASF66:
	.string	"_cvtlen"
.LASF23:
	.string	"_maxwds"
.LASF110:
	.string	"_l64a_buf"
.LASF85:
	.string	"_blksize"
.LASF27:
	.string	"__tm"
.LASF87:
	.string	"_lock"
.LASF20:
	.string	"long unsigned int"
.LASF93:
	.string	"_niobs"
.LASF143:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF135:
	.string	"nmemb"
.LASF39:
	.string	"_dso_handle"
.LASF67:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF111:
	.string	"_getdate_err"
.LASF98:
	.string	"_add"
.LASF46:
	.string	"__sbuf"
.LASF92:
	.string	"_glue"
.LASF130:
	.string	"realloc"
.LASF73:
	.string	"__sglue"
.LASF106:
	.string	"_strtok_last"
.LASF109:
	.string	"_mbtowc_state"
.LASF63:
	.string	"_locale"
.LASF38:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF54:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF129:
	.string	"calloc"
.LASF40:
	.string	"_fntypes"
.LASF48:
	.string	"_size"
.LASF11:
	.string	"_off_t"
.LASF84:
	.string	"_nbuf"
.LASF142:
	.string	"default_malloc"
.LASF62:
	.string	"_unspecified_locale_info"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF89:
	.string	"_flags2"
.LASF41:
	.string	"_is_cxa"
.LASF96:
	.string	"_seed"
.LASF99:
	.string	"_rand_next"
.LASF146:
	.string	"__locale_t"
.LASF81:
	.string	"_seek"
.LASF144:
	.string	"/home/dieter/Development/esp-idf/components/nghttp/nghttp2/lib/nghttp2_mem.c"
.LASF148:
	.string	"nghttp2_mem_default"
.LASF58:
	.string	"_stderr"
.LASF13:
	.string	"wint_t"
.LASF117:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
