	.file	"open_memstream.c"
	.text
.Ltext0:
	.section	.text.close_buffer,"ax",@progbits
	.align	4
	.type	close_buffer, @function
close_buffer:
.LVL0:
.LFB54:
	.file 1 "/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/open_memstream.c"
	.loc 1 83 1 view -0
	.loc 1 83 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 84 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 85 5 view .LVU3
	.loc 1 85 9 is_stmt 0 view .LVU4
	l32i.n	a8, a2, 0
	.loc 1 83 1 view .LVU5
	mov.n	a10, a2
	.loc 1 85 9 view .LVU6
	l32i.n	a8, a8, 0
	.loc 1 85 8 view .LVU7
	beqz.n	a8, .L2
	.loc 1 86 9 is_stmt 1 view .LVU8
	.loc 1 86 19 is_stmt 0 view .LVU9
	l32i.n	a9, a2, 4
	.loc 1 86 28 view .LVU10
	l32i.n	a9, a9, 0
	add.n	a8, a8, a9
	movi.n	a9, 0
	s8i	a9, a8, 0
.L2:
	.loc 1 87 5 is_stmt 1 view .LVU11
	call8	free
.LVL2:
	.loc 1 88 5 view .LVU12
	.loc 1 89 1 is_stmt 0 view .LVU13
	movi.n	a2, 0
.LVL3:
	.loc 1 89 1 view .LVU14
	retw.n
.LFE54:
	.size	close_buffer, .-close_buffer
	.section	.text.write_to_buffer,"ax",@progbits
	.align	4
	.type	write_to_buffer, @function
write_to_buffer:
.LVL4:
.LFB53:
	.loc 1 58 1 is_stmt 1 view -0
	.loc 1 58 1 is_stmt 0 view .LVU16
	entry	sp, 32
.LCFI1:
	.loc 1 59 5 is_stmt 1 view .LVU17
.LVL5:
	.loc 1 60 5 view .LVU18
	.loc 1 60 11 is_stmt 0 view .LVU19
	l32i.n	a5, a2, 0
	l32i.n	a7, a5, 0
.LVL6:
	.loc 1 61 5 is_stmt 1 view .LVU20
	.loc 1 63 4 view .LVU21
	.loc 1 63 6 is_stmt 0 view .LVU22
	call8	__errno
.LVL7:
	.loc 1 63 10 view .LVU23
	movi.n	a5, 0x1b
	s32i.n	a5, a10, 0
	.loc 1 64 5 is_stmt 1 view .LVU24
.LVL8:
.LBB5:
.LBI5:
	.file 2 "/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/compilersupport_p.h"
	.loc 2 193 19 view .LVU25
.LBB6:
	.loc 2 196 5 view .LVU26
.LBE6:
.LBE5:
	.loc 1 64 29 is_stmt 0 view .LVU27
	l32i.n	a5, a2, 4
.LBB8:
.LBB7:
	.loc 2 196 12 view .LVU28
	l32i.n	a5, a5, 0
	add.n	a6, a4, a5
	bgeu	a6, a5, .L9
.LVL9:
.L12:
	.loc 2 196 12 view .LVU29
.LBE7:
.LBE8:
	.loc 1 65 16 view .LVU30
	movi.n	a2, -1
.LVL10:
	.loc 1 65 16 view .LVU31
	j	.L6
.LVL11:
.L9:
	.loc 1 67 5 is_stmt 1 view .LVU32
	.loc 1 67 8 is_stmt 0 view .LVU33
	l32i.n	a5, a2, 8
.LVL12:
	.loc 1 67 8 view .LVU34
	bltu	a6, a5, .L11
.LBB9:
	.loc 1 69 9 is_stmt 1 view .LVU35
	.loc 1 69 45 is_stmt 0 view .LVU36
	srli	a8, a6, 1
	.loc 1 69 16 view .LVU37
	addi.n	a5, a6, 1
	add.n	a5, a5, a8
.LVL13:
	.loc 1 70 9 is_stmt 1 view .LVU38
	.loc 1 70 15 is_stmt 0 view .LVU39
	mov.n	a10, a7
	mov.n	a11, a5
	call8	realloc
.LVL14:
	.loc 1 70 15 view .LVU40
	mov.n	a7, a10
.LVL15:
	.loc 1 71 9 is_stmt 1 view .LVU41
	.loc 1 71 12 is_stmt 0 view .LVU42
	beqz.n	a10, .L12
	.loc 1 73 9 is_stmt 1 view .LVU43
	.loc 1 73 18 is_stmt 0 view .LVU44
	s32i.n	a5, a2, 8
	.loc 1 74 9 is_stmt 1 view .LVU45
	.loc 1 74 17 is_stmt 0 view .LVU46
	l32i.n	a5, a2, 0
.LVL16:
	.loc 1 74 17 view .LVU47
	s32i.n	a10, a5, 0
.LVL17:
.L11:
	.loc 1 74 17 view .LVU48
.LBE9:
	.loc 1 77 5 is_stmt 1 view .LVU49
	.loc 1 77 18 is_stmt 0 view .LVU50
	l32i.n	a5, a2, 4
	.loc 1 77 5 view .LVU51
	mov.n	a12, a4
	.loc 1 77 16 view .LVU52
	l32i.n	a10, a5, 0
	.loc 1 77 5 view .LVU53
	mov.n	a11, a3
	add.n	a10, a7, a10
	call8	memcpy
.LVL18:
	.loc 1 78 5 is_stmt 1 view .LVU54
	.loc 1 78 13 is_stmt 0 view .LVU55
	l32i.n	a2, a2, 4
.LVL19:
	.loc 1 78 13 view .LVU56
	s32i.n	a6, a2, 0
	.loc 1 79 5 is_stmt 1 view .LVU57
	.loc 1 79 12 is_stmt 0 view .LVU58
	mov.n	a2, a4
.LVL20:
.L6:
	.loc 1 80 1 view .LVU59
	retw.n
.LFE53:
	.size	write_to_buffer, .-write_to_buffer
	.section	.rodata.open_memstream.str1.1,"aMS",@progbits,1
.LC1:
	.string	"w"
	.section	.text.open_memstream,"ax",@progbits
	.literal_position
	.literal .LC0, vtable$3759
	.literal .LC2, .LC1
	.align	4
	.global	open_memstream
	.type	open_memstream, @function
open_memstream:
.LVL21:
.LFB55:
	.loc 1 92 1 is_stmt 1 view -0
	.loc 1 92 1 is_stmt 0 view .LVU61
	entry	sp, 32
.LCFI2:
	.loc 1 93 5 is_stmt 1 view .LVU62
	.loc 1 93 41 is_stmt 0 view .LVU63
	movi.n	a10, 0xc
	call8	malloc
.LVL22:
	.loc 1 94 5 is_stmt 1 view .LVU64
	movi.n	a8, 0
	.loc 1 95 15 is_stmt 0 view .LVU65
	mov.n	a9, a10
	.loc 1 94 8 view .LVU66
	beq	a10, a8, .L16
	.loc 1 96 5 is_stmt 1 view .LVU67
	.loc 1 99 13 is_stmt 0 view .LVU68
	s32i.n	a8, a2, 0
	.loc 1 96 14 view .LVU69
	s32i.n	a8, a10, 8
	.loc 1 97 5 is_stmt 1 view .LVU70
	.loc 1 100 13 is_stmt 0 view .LVU71
	s32i.n	a8, a3, 0
	.loc 1 111 12 view .LVU72
	l32r	a8, .LC0
	l32r	a11, .LC2
	l32i.n	a12, a8, 0
	l32i.n	a13, a8, 4
	l32i.n	a14, a8, 8
	l32i.n	a15, a8, 12
	.loc 1 97 12 view .LVU73
	s32i.n	a3, a10, 4
	.loc 1 98 5 is_stmt 1 view .LVU74
	.loc 1 98 12 is_stmt 0 view .LVU75
	s32i.n	a2, a10, 0
	.loc 1 99 5 is_stmt 1 view .LVU76
	.loc 1 100 5 view .LVU77
	.loc 1 105 5 view .LVU78
	.loc 1 111 5 view .LVU79
	.loc 1 111 12 is_stmt 0 view .LVU80
	call8	fopencookie
.LVL23:
	.loc 1 111 12 view .LVU81
	mov.n	a9, a10
.L16:
	.loc 1 113 1 view .LVU82
	mov.n	a2, a9
.LVL24:
	.loc 1 113 1 view .LVU83
	retw.n
.LFE55:
	.size	open_memstream, .-open_memstream
	.section	.rodata.vtable$3759,"a"
	.align	4
	.type	vtable$3759, @object
	.size	vtable$3759, 16
vtable$3759:
	.word	0
	.word	write_to_buffer
	.word	0
	.word	close_buffer
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI0-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI1-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI2-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/cbor.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd68
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0xc
	.4byte	.LASF158
	.4byte	.LASF159
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x86
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x5
	.byte	0x64
	.byte	0x10
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x86
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x91
	.byte	0x14
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xec
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xfc
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x120
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x5
	.4byte	0x147
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0xad
	.byte	0x11
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0xc8
	.byte	0x12
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x13a
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d1
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x41
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x1d7
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x177
	.uleb128 0x9
	.4byte	0x16b
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x26a
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2af
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2af
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2af
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x16b
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x16b
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x138
	.4byte	0x2bf
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x301
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x301
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x307
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x31e
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2bf
	.uleb128 0x9
	.4byte	0x317
	.4byte	0x317
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x31d
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x26a
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x34c
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x34c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3c5
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0x9b
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0x9c
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x352
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x529
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x76f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x76f
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x76f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x141
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8d7
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8dd
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8ee
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x141
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x8f4
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x8fa
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x141
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x90b
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x301
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2bf
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x730
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x76f
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x917
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x141
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ca
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x672
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x34c
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x324
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x529
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x138
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x690
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6bf
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6e3
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x6fd
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x324
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x34c
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x703
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x713
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x324
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0x8d
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x12c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x120
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x690
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x141
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x672
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14e
	.uleb128 0x5
	.4byte	0x6b4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x696
	.uleb128 0x17
	.4byte	0xa5
	.4byte	0x6e3
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0xa5
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c5
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6fd
	.uleb128 0x18
	.4byte	0x529
	.uleb128 0x18
	.4byte	0x138
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6e9
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x713
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x723
	.uleb128 0xa
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x52f
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x769
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x769
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x76f
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x730
	.uleb128 0xe
	.byte	0x4
	.4byte	0x723
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7bc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7bc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7bc
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x7cc
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x813
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x813
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c2
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x141
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0x120
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0x120
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0x120
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c2
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0x120
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0x120
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0x120
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0x120
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0x120
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x8d2
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF160
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7cc
	.uleb128 0x1a
	.4byte	0x8ee
	.uleb128 0x18
	.4byte	0x529
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x775
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x1a
	.4byte	0x90b
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x911
	.uleb128 0xe
	.byte	0x4
	.4byte	0x900
	.uleb128 0xe
	.byte	0x4
	.4byte	0x819
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c5
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x529
	.uleb128 0x9
	.4byte	0x6ba
	.4byte	0x95c
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x951
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x8
	.byte	0x14
	.byte	0x1b
	.4byte	0x95c
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x8
	.byte	0x15
	.byte	0xc
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x9
	.byte	0x42
	.byte	0x10
	.4byte	0x723
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x270
	.byte	0x11
	.4byte	0x992
	.uleb128 0x17
	.4byte	0x15f
	.4byte	0x9ab
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x141
	.uleb128 0x18
	.4byte	0x5d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x271
	.byte	0x11
	.4byte	0x9b8
	.uleb128 0x17
	.4byte	0x15f
	.4byte	0x9d1
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x6b4
	.uleb128 0x18
	.4byte	0x5d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x277
	.byte	0xd
	.4byte	0x9de
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x9f7
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x9f7
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x153
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x279
	.byte	0xd
	.4byte	0xa0a
	.uleb128 0x17
	.4byte	0x41
	.4byte	0xa19
	.uleb128 0x18
	.4byte	0x138
	.byte	0
	.uleb128 0x1e
	.byte	0x10
	.byte	0x9
	.2byte	0x27a
	.byte	0x9
	.4byte	0xa5c
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x27e
	.byte	0x1b
	.4byte	0xa5c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x27f
	.byte	0x1c
	.4byte	0xa62
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x280
	.byte	0x1b
	.4byte	0xa68
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x281
	.byte	0x1c
	.4byte	0xa6e
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x985
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9d1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9fd
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x282
	.byte	0x3
	.4byte	0xa19
	.uleb128 0x5
	.4byte	0xa74
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x141
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2a
	.byte	0x11
	.4byte	0x15f
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2b
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0xb
	.byte	0xd9
	.byte	0x15
	.4byte	0x69
	.4byte	0xffffffff
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0xc
	.byte	0x1
	.byte	0x32
	.byte	0x8
	.4byte	0xaef
	.uleb128 0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0xaef
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	0xaf5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.4byte	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x141
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x17c
	.byte	0x8
	.4byte	0xb83
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb83
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	0xaef
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x22
	.4byte	.LASF148
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xaf5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0x5d
	.byte	0x14
	.4byte	0xb89
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x24
	.4byte	.LASF143
	.byte	0x1
	.byte	0x69
	.byte	0x28
	.4byte	0xa81
	.uleb128 0x5
	.byte	0x3
	.4byte	vtable$3759
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0xd23
	.4byte	0xb6f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL23
	.4byte	0xd2f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x979
	.uleb128 0xe
	.byte	0x4
	.4byte	0xaba
	.uleb128 0x28
	.4byte	.LASF146
	.byte	0x1
	.byte	0x52
	.byte	0xc
	.4byte	0x41
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd9
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0x52
	.byte	0x1f
	.4byte	0x138
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0x54
	.byte	0x14
	.4byte	0xb89
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xd3c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF147
	.byte	0x1
	.byte	0x39
	.byte	0x10
	.4byte	0xa92
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcea
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0x39
	.byte	0x26
	.4byte	0x138
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0x1
	.byte	0x39
	.byte	0x3a
	.4byte	0x6b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0x39
	.byte	0x48
	.4byte	0xa9e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0x3b
	.byte	0x14
	.4byte	0xb89
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x3c
	.byte	0xb
	.4byte	0x141
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2b
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x5d
	.uleb128 0x2c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xc8d
	.uleb128 0x2d
	.4byte	.LASF150
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x5d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0xd48
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xcea
	.4byte	.LBI5
	.byte	.LVU25
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.4byte	0xcca
	.uleb128 0x2f
	.4byte	0xd11
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2f
	.4byte	0xd06
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2f
	.4byte	0xcfb
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xd54
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xd60
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF163
	.byte	0x2
	.byte	0xc1
	.byte	0x13
	.4byte	0xd1c
	.byte	0x3
	.4byte	0xd1c
	.uleb128 0x31
	.string	"v1"
	.byte	0x2
	.byte	0xc1
	.byte	0x2d
	.4byte	0x5d
	.uleb128 0x31
	.string	"v2"
	.byte	0x2
	.byte	0xc1
	.byte	0x38
	.4byte	0x5d
	.uleb128 0x31
	.string	"r"
	.byte	0x2
	.byte	0xc1
	.byte	0x44
	.4byte	0xaf5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF151
	.uleb128 0x32
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xa
	.byte	0x6c
	.byte	0x8
	.uleb128 0x33
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x283
	.byte	0x7
	.uleb128 0x32
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x61
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.uleb128 0x32
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x8
	.byte	0xf
	.byte	0xd
	.uleb128 0x34
	.4byte	.LASF164
	.4byte	.LASF165
	.byte	0xc
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x34
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU64
	.uleb128 .LVU81
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST2:
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
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU18
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST3:
	.4byte	.LVL5
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
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU20
	.uleb128 0
.LLST4:
	.4byte	.LVL6
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU38
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU25
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LFE53
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3145
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU25
	.uleb128 0
.LLST6:
	.4byte	.LVL8
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU25
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU40
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x6
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"bufptr"
.LASF136:
	.string	"cookie_io_functions_t"
.LASF80:
	.string	"_misc"
.LASF8:
	.string	"_lock_t"
.LASF42:
	.string	"_on_exit_args"
.LASF85:
	.string	"_write"
.LASF112:
	.string	"_wctomb_state"
.LASF156:
	.string	"__errno"
.LASF73:
	.string	"_r48"
.LASF81:
	.string	"_signal_buf"
.LASF4:
	.string	"unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF55:
	.string	"_flags"
.LASF127:
	.string	"FILE"
.LASF60:
	.string	"_errno"
.LASF126:
	.string	"_sys_nerr"
.LASF122:
	.string	"__sf_fake_stdout"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF130:
	.string	"cookie_seek_function_t"
.LASF84:
	.string	"_read"
.LASF116:
	.string	"_mbrlen_state"
.LASF165:
	.string	"__builtin_memcpy"
.LASF62:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF49:
	.string	"_fns"
.LASF83:
	.string	"_cookie"
.LASF31:
	.string	"_Bigint"
.LASF39:
	.string	"__tm_wday"
.LASF105:
	.string	"_result"
.LASF35:
	.string	"__tm_hour"
.LASF18:
	.string	"__count"
.LASF145:
	.string	"cookie"
.LASF139:
	.string	"LenType"
.LASF34:
	.string	"__tm_min"
.LASF152:
	.string	"malloc"
.LASF79:
	.string	"__sf"
.LASF99:
	.string	"_rand48"
.LASF106:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF75:
	.string	"_asctime_buf"
.LASF82:
	.string	"__sFILE"
.LASF30:
	.string	"_wds"
.LASF163:
	.string	"add_check_overflow"
.LASF95:
	.string	"__FILE"
.LASF148:
	.string	"lenptr"
.LASF91:
	.string	"_offset"
.LASF88:
	.string	"_ubuf"
.LASF65:
	.string	"_emergency"
.LASF7:
	.string	"size_t"
.LASF33:
	.string	"__tm_sec"
.LASF137:
	.string	"suboptarg"
.LASF40:
	.string	"__tm_yday"
.LASF64:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF27:
	.string	"_next"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF153:
	.string	"fopencookie"
.LASF158:
	.string	"/home/dieter/Development/esp-idf/components/cbor/tinycbor/src/open_memstream.c"
.LASF19:
	.string	"__value"
.LASF107:
	.string	"_p5s"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF111:
	.string	"_mblen_state"
.LASF23:
	.string	"char"
.LASF36:
	.string	"__tm_mday"
.LASF76:
	.string	"_sig_func"
.LASF117:
	.string	"_mbrtowc_state"
.LASF135:
	.string	"close"
.LASF21:
	.string	"_flock_t"
.LASF25:
	.string	"ssize_t"
.LASF16:
	.string	"__wch"
.LASF98:
	.string	"_iobs"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF87:
	.string	"_close"
.LASF66:
	.string	"__sdidinit"
.LASF54:
	.string	"__sFILE_fake"
.LASF61:
	.string	"_stdin"
.LASF70:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF133:
	.string	"write"
.LASF52:
	.string	"_base"
.LASF150:
	.string	"newalloc"
.LASF108:
	.string	"_freelist"
.LASF101:
	.string	"_mult"
.LASF26:
	.string	"__ULong"
.LASF119:
	.string	"_wcrtomb_state"
.LASF143:
	.string	"vtable"
.LASF56:
	.string	"_file"
.LASF162:
	.string	"newsize"
.LASF69:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF104:
	.string	"_mprec"
.LASF43:
	.string	"_fnargs"
.LASF41:
	.string	"__tm_isdst"
.LASF159:
	.string	"/home/dieter/Development/ProjektEi/build/cbor"
.LASF142:
	.string	"CborIndefiniteLength"
.LASF134:
	.string	"seek"
.LASF149:
	.string	"data"
.LASF37:
	.string	"__tm_mon"
.LASF77:
	.string	"_atexit0"
.LASF47:
	.string	"_atexit"
.LASF93:
	.string	"_mbstate"
.LASF141:
	.string	"alloc"
.LASF2:
	.string	"short int"
.LASF140:
	.string	"Buffer"
.LASF10:
	.string	"long int"
.LASF29:
	.string	"_sign"
.LASF58:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF124:
	.string	"_global_impure_ptr"
.LASF38:
	.string	"__tm_year"
.LASF146:
	.string	"close_buffer"
.LASF109:
	.string	"_misc_reent"
.LASF131:
	.string	"cookie_close_function_t"
.LASF74:
	.string	"_localtime_buf"
.LASF154:
	.string	"free"
.LASF71:
	.string	"_cvtlen"
.LASF28:
	.string	"_maxwds"
.LASF114:
	.string	"_l64a_buf"
.LASF90:
	.string	"_blksize"
.LASF32:
	.string	"__tm"
.LASF92:
	.string	"_lock"
.LASF147:
	.string	"write_to_buffer"
.LASF22:
	.string	"long unsigned int"
.LASF97:
	.string	"_niobs"
.LASF157:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF138:
	.string	"RetType"
.LASF161:
	.string	"open_memstream"
.LASF44:
	.string	"_dso_handle"
.LASF72:
	.string	"_cvtbuf"
.LASF128:
	.string	"cookie_read_function_t"
.LASF1:
	.string	"unsigned char"
.LASF115:
	.string	"_getdate_err"
.LASF102:
	.string	"_add"
.LASF129:
	.string	"cookie_write_function_t"
.LASF151:
	.string	"_Bool"
.LASF51:
	.string	"__sbuf"
.LASF96:
	.string	"_glue"
.LASF155:
	.string	"realloc"
.LASF78:
	.string	"__sglue"
.LASF110:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbtowc_state"
.LASF12:
	.string	"__off_t"
.LASF68:
	.string	"_locale"
.LASF14:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF59:
	.string	"_reent"
.LASF24:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF164:
	.string	"memcpy"
.LASF125:
	.string	"_sys_errlist"
.LASF45:
	.string	"_fntypes"
.LASF53:
	.string	"_size"
.LASF11:
	.string	"_off_t"
.LASF89:
	.string	"_nbuf"
.LASF67:
	.string	"_unspecified_locale_info"
.LASF123:
	.string	"__sf_fake_stderr"
.LASF94:
	.string	"_flags2"
.LASF46:
	.string	"_is_cxa"
.LASF100:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF160:
	.string	"__locale_t"
.LASF132:
	.string	"read"
.LASF86:
	.string	"_seek"
.LASF63:
	.string	"_stderr"
.LASF15:
	.string	"wint_t"
.LASF121:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
