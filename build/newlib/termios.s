	.file	"termios.c"
	.text
.Ltext0:
	.section	.text.cfgetispeed,"ax",@progbits
	.align	4
	.global	cfgetispeed
	.type	cfgetispeed, @function
cfgetispeed:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/newlib/termios.c"
	.loc 1 23 1 view -0
	.loc 1 23 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 24 5 is_stmt 1 view .LVU2
	.loc 1 24 28 is_stmt 0 view .LVU3
	movi.n	a8, 0
	beq	a2, a8, .L1
	.loc 1 24 28 discriminator 1 view .LVU4
	l32i.n	a8, a2, 20
.L1:
	.loc 1 25 1 view .LVU5
	mov.n	a2, a8
.LVL1:
	.loc 1 25 1 view .LVU6
	retw.n
.LFE0:
	.size	cfgetispeed, .-cfgetispeed
	.section	.text.cfgetospeed,"ax",@progbits
	.align	4
	.global	cfgetospeed
	.type	cfgetospeed, @function
cfgetospeed:
.LVL2:
.LFB1:
	.loc 1 28 1 is_stmt 1 view -0
	.loc 1 28 1 is_stmt 0 view .LVU8
	entry	sp, 32
.LCFI1:
	.loc 1 29 5 is_stmt 1 view .LVU9
	.loc 1 29 28 is_stmt 0 view .LVU10
	movi.n	a8, 0
	beq	a2, a8, .L5
	.loc 1 29 28 discriminator 1 view .LVU11
	l32i.n	a8, a2, 24
.L5:
	.loc 1 30 1 view .LVU12
	mov.n	a2, a8
.LVL3:
	.loc 1 30 1 view .LVU13
	retw.n
.LFE1:
	.size	cfgetospeed, .-cfgetospeed
	.section	.text.cfsetispeed,"ax",@progbits
	.align	4
	.global	cfsetispeed
	.type	cfsetispeed, @function
cfsetispeed:
.LVL4:
.LFB2:
	.loc 1 33 1 is_stmt 1 view -0
	.loc 1 33 1 is_stmt 0 view .LVU15
	entry	sp, 32
.LCFI2:
	.loc 1 34 5 is_stmt 1 view .LVU16
	.loc 1 34 8 is_stmt 0 view .LVU17
	beqz.n	a2, .L10
	.loc 1 35 9 is_stmt 1 view .LVU18
	.loc 1 35 21 is_stmt 0 view .LVU19
	s32i.n	a3, a2, 20
	.loc 1 36 9 is_stmt 1 view .LVU20
	.loc 1 36 16 is_stmt 0 view .LVU21
	movi.n	a2, 0
.LVL5:
	.loc 1 36 16 view .LVU22
	j	.L9
.LVL6:
.L10:
	.loc 1 38 8 is_stmt 1 view .LVU23
	.loc 1 38 14 is_stmt 0 view .LVU24
	movi.n	a2, 0x16
.LVL7:
	.loc 1 38 10 view .LVU25
	call8	__errno
.LVL8:
	.loc 1 38 14 view .LVU26
	s32i.n	a2, a10, 0
	.loc 1 39 9 is_stmt 1 view .LVU27
	.loc 1 39 16 is_stmt 0 view .LVU28
	movi.n	a2, -1
.L9:
	.loc 1 41 1 view .LVU29
	retw.n
.LFE2:
	.size	cfsetispeed, .-cfsetispeed
	.section	.text.cfsetospeed,"ax",@progbits
	.align	4
	.global	cfsetospeed
	.type	cfsetospeed, @function
cfsetospeed:
.LVL9:
.LFB3:
	.loc 1 44 1 is_stmt 1 view -0
	.loc 1 44 1 is_stmt 0 view .LVU31
	entry	sp, 32
.LCFI3:
	.loc 1 45 5 is_stmt 1 view .LVU32
	.loc 1 45 8 is_stmt 0 view .LVU33
	beqz.n	a2, .L13
	.loc 1 46 9 is_stmt 1 view .LVU34
	.loc 1 46 21 is_stmt 0 view .LVU35
	s32i.n	a3, a2, 24
	.loc 1 47 9 is_stmt 1 view .LVU36
	.loc 1 47 16 is_stmt 0 view .LVU37
	movi.n	a2, 0
.LVL10:
	.loc 1 47 16 view .LVU38
	j	.L12
.LVL11:
.L13:
	.loc 1 49 8 is_stmt 1 view .LVU39
	.loc 1 49 14 is_stmt 0 view .LVU40
	movi.n	a2, 0x16
.LVL12:
	.loc 1 49 10 view .LVU41
	call8	__errno
.LVL13:
	.loc 1 49 14 view .LVU42
	s32i.n	a2, a10, 0
	.loc 1 50 9 is_stmt 1 view .LVU43
	.loc 1 50 16 is_stmt 0 view .LVU44
	movi.n	a2, -1
.L12:
	.loc 1 52 1 view .LVU45
	retw.n
.LFE3:
	.size	cfsetospeed, .-cfsetospeed
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 7 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/termios.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb17
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
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xbd
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x10b
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xdc
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x10b
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x11b
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x13f
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xe9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x11b
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xb1
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.byte	0x4
	.4byte	0x166
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xe
	.4byte	0x166
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0xab
	.byte	0x11
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xac
	.byte	0x12
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xad
	.byte	0x12
	.4byte	0x8d
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1c
	.byte	0x7
	.byte	0xaf
	.byte	0x8
	.4byte	0x1ff
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0xb1
	.byte	0xe
	.4byte	0x18a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0xb2
	.byte	0xe
	.4byte	0x18a
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0xb3
	.byte	0xe
	.4byte	0x18a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0xb4
	.byte	0xe
	.4byte	0x18a
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0xb5
	.byte	0xa
	.4byte	0x204
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0xb6
	.byte	0xd
	.4byte	0x17e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0xb7
	.byte	0xd
	.4byte	0x17e
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	0x196
	.uleb128 0x8
	.4byte	0x172
	.4byte	0x214
	.uleb128 0x9
	.4byte	0x6c
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x159
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x27a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x31
	.byte	0x13
	.4byte	0x27a
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x32
	.byte	0xb
	.4byte	0x59
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.4byte	0x59
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.4byte	0x59
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x8
	.byte	0x33
	.byte	0xb
	.4byte	0x280
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x220
	.uleb128 0x8
	.4byte	0x214
	.4byte	0x290
	.uleb128 0x9
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.byte	0x8
	.4byte	0x313
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x8
	.byte	0x3a
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3b
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.4byte	0x59
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x3d
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x59
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x59
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.2byte	0x108
	.byte	0x8
	.byte	0x4a
	.byte	0x8
	.4byte	0x358
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x358
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x358
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x8
	.byte	0x4e
	.byte	0xa
	.4byte	0x214
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x8
	.byte	0x51
	.byte	0xa
	.4byte	0x214
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x157
	.4byte	0x368
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8c
	.byte	0x8
	.byte	0x55
	.byte	0x8
	.4byte	0x3aa
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x56
	.byte	0x12
	.4byte	0x3aa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x8
	.byte	0x57
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x3b0
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x8
	.byte	0x59
	.byte	0x20
	.4byte	0x3c7
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x368
	.uleb128 0x8
	.4byte	0x3c0
	.4byte	0x3c0
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x313
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8
	.byte	0x75
	.byte	0x8
	.4byte	0x3f5
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x8
	.byte	0x76
	.byte	0x11
	.4byte	0x3f5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x8
	.byte	0x77
	.byte	0x6
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x20
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x46e
	.uleb128 0x10
	.string	"_p"
	.byte	0x8
	.byte	0x9a
	.byte	0x12
	.4byte	0x3f5
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x8
	.byte	0x9b
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x8
	.byte	0x9c
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0x9d
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0x9e
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x3cd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8
	.byte	0xa0
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x8
	.byte	0xa2
	.byte	0x12
	.4byte	0x5d2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x3fb
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xf0
	.byte	0x8
	.2byte	0x174
	.byte	0x8
	.4byte	0x5d2
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x178
	.byte	0x7
	.4byte	0x59
	.byte	0
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x17d
	.byte	0xb
	.4byte	0x818
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x17d
	.byte	0x14
	.4byte	0x818
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x818
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x17f
	.byte	0x7
	.4byte	0x59
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x181
	.byte	0x9
	.4byte	0x160
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x183
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	0x59
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x186
	.byte	0x16
	.4byte	0x980
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x8
	.2byte	0x188
	.byte	0x12
	.4byte	0x986
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x18a
	.byte	0xa
	.4byte	0x997
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x18c
	.byte	0x7
	.4byte	0x59
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x18f
	.byte	0x7
	.4byte	0x59
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x190
	.byte	0x9
	.4byte	0x160
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x192
	.byte	0x13
	.4byte	0x99d
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x193
	.byte	0x10
	.4byte	0x9a3
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x194
	.byte	0x9
	.4byte	0x160
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x197
	.byte	0xb
	.4byte	0x9b4
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x19b
	.byte	0x13
	.4byte	0x3aa
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x19c
	.byte	0x12
	.4byte	0x368
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x19f
	.byte	0x10
	.4byte	0x7d9
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x818
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x9c0
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x160
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x473
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x68
	.byte	0x8
	.byte	0xb5
	.byte	0x8
	.4byte	0x71b
	.uleb128 0x10
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x3f5
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.byte	0x7
	.4byte	0x59
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.byte	0x11
	.4byte	0x3cd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x59
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x8
	.byte	0xbf
	.byte	0x12
	.4byte	0x5d2
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x8
	.byte	0xc3
	.byte	0xa
	.4byte	0x157
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x8
	.byte	0xc5
	.byte	0x9
	.4byte	0x739
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x768
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x8
	.byte	0xca
	.byte	0xd
	.4byte	0x78c
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x7a6
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.byte	0x11
	.4byte	0x3cd
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.byte	0x12
	.4byte	0x3f5
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.byte	0x7
	.4byte	0x59
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x7ac
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x7bc
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x3cd
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x8
	.byte	0xda
	.byte	0x7
	.4byte	0x59
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x8
	.byte	0xdb
	.byte	0xa
	.4byte	0xc4
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x8
	.byte	0xe2
	.byte	0xc
	.4byte	0x14b
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x8
	.byte	0xe4
	.byte	0xe
	.4byte	0x13f
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x8
	.byte	0xe5
	.byte	0x7
	.4byte	0x59
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x739
	.uleb128 0x18
	.4byte	0x5d2
	.uleb128 0x18
	.4byte	0x157
	.uleb128 0x18
	.4byte	0x160
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x71b
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x75d
	.uleb128 0x18
	.4byte	0x5d2
	.uleb128 0x18
	.4byte	0x157
	.uleb128 0x18
	.4byte	0x75d
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x16d
	.uleb128 0xe
	.4byte	0x75d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x73f
	.uleb128 0x17
	.4byte	0xd0
	.4byte	0x78c
	.uleb128 0x18
	.4byte	0x5d2
	.uleb128 0x18
	.4byte	0x157
	.uleb128 0x18
	.4byte	0xd0
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x76e
	.uleb128 0x17
	.4byte	0x59
	.4byte	0x7a6
	.uleb128 0x18
	.4byte	0x5d2
	.uleb128 0x18
	.4byte	0x157
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x792
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x7bc
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x7cc
	.uleb128 0x9
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x11f
	.byte	0x18
	.4byte	0x5d8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xc
	.byte	0x8
	.2byte	0x123
	.byte	0x8
	.4byte	0x812
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x125
	.byte	0x11
	.4byte	0x812
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x127
	.byte	0xb
	.4byte	0x818
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7cc
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x18
	.byte	0x8
	.2byte	0x13f
	.byte	0x8
	.4byte	0x865
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x140
	.byte	0x12
	.4byte	0x865
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x141
	.byte	0x12
	.4byte	0x865
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x145
	.byte	0x24
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x52
	.4byte	0x875
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x10
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0x8bc
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x15b
	.byte	0x13
	.4byte	0x27a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x15c
	.byte	0x7
	.4byte	0x59
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x15d
	.byte	0x13
	.4byte	0x27a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x15e
	.byte	0x14
	.4byte	0x8bc
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x27a
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x50
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0x96b
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x165
	.byte	0x9
	.4byte	0x160
	.byte	0
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x166
	.byte	0xe
	.4byte	0x13f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x167
	.byte	0xe
	.4byte	0x13f
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x168
	.byte	0xe
	.4byte	0x13f
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x169
	.byte	0x8
	.4byte	0x96b
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x16a
	.byte	0x7
	.4byte	0x59
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x16b
	.byte	0xe
	.4byte	0x13f
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x16c
	.byte	0xe
	.4byte	0x13f
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x16d
	.byte	0xe
	.4byte	0x13f
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x16e
	.byte	0xe
	.4byte	0x13f
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x16f
	.byte	0xe
	.4byte	0x13f
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x166
	.4byte	0x97b
	.uleb128 0x9
	.4byte	0x6c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF146
	.uleb128 0xd
	.byte	0x4
	.4byte	0x97b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x875
	.uleb128 0x1a
	.4byte	0x997
	.uleb128 0x18
	.4byte	0x5d2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x98c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x81e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x290
	.uleb128 0x1a
	.4byte	0x9b4
	.uleb128 0x18
	.4byte	0x59
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9ba
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9a9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c2
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x46e
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x46e
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x46e
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x30a
	.byte	0x18
	.4byte	0x5d2
	.uleb128 0x8
	.4byte	0x763
	.4byte	0xa05
	.uleb128 0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x9fa
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x9
	.byte	0x14
	.byte	0x1b
	.4byte	0xa05
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x9
	.byte	0x15
	.byte	0xc
	.4byte	0x59
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x59
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa65
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x2b
	.byte	0x21
	.4byte	0xa65
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x2b
	.byte	0x2c
	.4byte	0x17e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0xb0e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x196
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x59
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaae
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x20
	.byte	0x21
	.4byte	0xa65
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x20
	.byte	0x2c
	.4byte	0x17e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xb0e
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x17e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadb
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x1b
	.byte	0x2b
	.4byte	0xadb
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.4byte	0x17e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0e
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x16
	.byte	0x2b
	.4byte	0xadb
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0xf
	.byte	0xd
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
	.uleb128 0x39
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST3:
	.4byte	.LVL9
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE2
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
	.4byte	.LVL2
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"/home/dieter/Development/ProjektEi/build/newlib"
.LASF65:
	.string	"_size"
.LASF139:
	.string	"cfsetospeed"
.LASF111:
	.string	"_rand48"
.LASF77:
	.string	"_emergency"
.LASF3:
	.string	"__uint8_t"
.LASF70:
	.string	"_data"
.LASF131:
	.string	"_wcrtomb_state"
.LASF132:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF69:
	.string	"_lbfsize"
.LASF146:
	.string	"__locale_t"
.LASF35:
	.string	"c_ispeed"
.LASF129:
	.string	"_mbrtowc_state"
.LASF38:
	.string	"termios"
.LASF124:
	.string	"_wctomb_state"
.LASF45:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF100:
	.string	"_ubuf"
.LASF64:
	.string	"_base"
.LASF47:
	.string	"__tm_hour"
.LASF91:
	.string	"__sf"
.LASF54:
	.string	"_on_exit_args"
.LASF95:
	.string	"_cookie"
.LASF90:
	.string	"__sglue"
.LASF147:
	.string	"__errno"
.LASF15:
	.string	"long int"
.LASF116:
	.string	"_mprec"
.LASF67:
	.string	"_flags"
.LASF58:
	.string	"_is_cxa"
.LASF73:
	.string	"_stdin"
.LASF31:
	.string	"c_oflag"
.LASF102:
	.string	"_blksize"
.LASF13:
	.string	"_lock_t"
.LASF11:
	.string	"uint16_t"
.LASF137:
	.string	"_sys_errlist"
.LASF141:
	.string	"cfgetospeed"
.LASF84:
	.string	"_cvtbuf"
.LASF103:
	.string	"_offset"
.LASF130:
	.string	"_mbsrtowcs_state"
.LASF122:
	.string	"_strtok_last"
.LASF128:
	.string	"_mbrlen_state"
.LASF55:
	.string	"_fnargs"
.LASF61:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF42:
	.string	"_sign"
.LASF24:
	.string	"_flock_t"
.LASF75:
	.string	"_stderr"
.LASF39:
	.string	"_Bigint"
.LASF82:
	.string	"_gamma_signgam"
.LASF96:
	.string	"_read"
.LASF118:
	.string	"_result_k"
.LASF44:
	.string	"__tm"
.LASF62:
	.string	"_on_exit_args_ptr"
.LASF7:
	.string	"unsigned int"
.LASF33:
	.string	"c_lflag"
.LASF20:
	.string	"__wchb"
.LASF74:
	.string	"_stdout"
.LASF83:
	.string	"_cvtlen"
.LASF25:
	.string	"long unsigned int"
.LASF56:
	.string	"_dso_handle"
.LASF28:
	.string	"speed_t"
.LASF109:
	.string	"_niobs"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"tcflag_t"
.LASF93:
	.string	"_signal_buf"
.LASF27:
	.string	"cc_t"
.LASF117:
	.string	"_result"
.LASF19:
	.string	"__wch"
.LASF18:
	.string	"wint_t"
.LASF104:
	.string	"_lock"
.LASF30:
	.string	"c_iflag"
.LASF106:
	.string	"_flags2"
.LASF36:
	.string	"c_ospeed"
.LASF97:
	.string	"_write"
.LASF50:
	.string	"__tm_year"
.LASF92:
	.string	"_misc"
.LASF133:
	.string	"__sf_fake_stdin"
.LASF134:
	.string	"__sf_fake_stdout"
.LASF49:
	.string	"__tm_mon"
.LASF59:
	.string	"_atexit"
.LASF78:
	.string	"__sdidinit"
.LASF16:
	.string	"_off_t"
.LASF120:
	.string	"_freelist"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF34:
	.string	"c_cc"
.LASF1:
	.string	"unsigned char"
.LASF110:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF52:
	.string	"__tm_yday"
.LASF32:
	.string	"c_cflag"
.LASF63:
	.string	"__sbuf"
.LASF144:
	.string	"/home/dieter/Development/esp-idf/components/newlib/termios.c"
.LASF107:
	.string	"__FILE"
.LASF23:
	.string	"_mbstate_t"
.LASF94:
	.string	"__sFILE"
.LASF138:
	.string	"_sys_nerr"
.LASF105:
	.string	"_mbstate"
.LASF115:
	.string	"_rand_next"
.LASF123:
	.string	"_mblen_state"
.LASF76:
	.string	"_inc"
.LASF60:
	.string	"_ind"
.LASF80:
	.string	"_locale"
.LASF81:
	.string	"__cleanup"
.LASF79:
	.string	"_unspecified_locale_info"
.LASF41:
	.string	"_maxwds"
.LASF71:
	.string	"_reent"
.LASF112:
	.string	"_seed"
.LASF89:
	.string	"_atexit0"
.LASF21:
	.string	"__count"
.LASF12:
	.string	"uint32_t"
.LASF98:
	.string	"_seek"
.LASF17:
	.string	"_fpos_t"
.LASF72:
	.string	"_errno"
.LASF26:
	.string	"char"
.LASF46:
	.string	"__tm_min"
.LASF4:
	.string	"__uint16_t"
.LASF113:
	.string	"_mult"
.LASF40:
	.string	"_next"
.LASF143:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"__value"
.LASF57:
	.string	"_fntypes"
.LASF121:
	.string	"_misc_reent"
.LASF114:
	.string	"_add"
.LASF37:
	.string	"__ULong"
.LASF127:
	.string	"_getdate_err"
.LASF136:
	.string	"_global_impure_ptr"
.LASF87:
	.string	"_asctime_buf"
.LASF68:
	.string	"_file"
.LASF43:
	.string	"_wds"
.LASF51:
	.string	"__tm_wday"
.LASF108:
	.string	"_glue"
.LASF10:
	.string	"uint8_t"
.LASF126:
	.string	"_l64a_buf"
.LASF142:
	.string	"cfgetispeed"
.LASF88:
	.string	"_sig_func"
.LASF101:
	.string	"_nbuf"
.LASF140:
	.string	"cfsetispeed"
.LASF53:
	.string	"__tm_isdst"
.LASF86:
	.string	"_localtime_buf"
.LASF99:
	.string	"_close"
.LASF135:
	.string	"__sf_fake_stderr"
.LASF85:
	.string	"_r48"
.LASF125:
	.string	"_mbtowc_state"
.LASF119:
	.string	"_p5s"
.LASF66:
	.string	"__sFILE_fake"
.LASF48:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
