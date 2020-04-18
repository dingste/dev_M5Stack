	.file	"pthread.c"
	.text
.Ltext0:
	.section	.rodata.pthread_condattr_setclock.str1.1,"aMS",@progbits,1
.LC1:
	.string	"esp32_asio_pthread"
.LC3:
	.string	"\033[0;33mW (%d) %s: %s: not yet supported!\033[0m\n"
	.section	.text.pthread_condattr_setclock,"ax",@progbits
	.literal_position
	.literal .LC0, __FUNCTION__$3333
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	pthread_condattr_setclock
	.type	pthread_condattr_setclock, @function
pthread_condattr_setclock:
.LVL0:
.LFB16:
	.file 1 "/home/dieter/Development/esp-idf/components/newlib/pthread.c"
	.loc 1 7 1 view -0
	.loc 1 7 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 8 5 is_stmt 1 view .LVU2
	.loc 1 8 10 view .LVU3
	.loc 1 8 35 view .LVU4
	.loc 1 8 40 view .LVU5
	.loc 1 8 235 view .LVU6
	.loc 1 8 270 view .LVU7
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	l32r	a15, .LC0
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL2:
	.loc 1 9 5 view .LVU8
	.loc 1 10 1 is_stmt 0 view .LVU9
	movi.n	a2, 0
.LVL3:
	.loc 1 10 1 view .LVU10
	retw.n
.LFE16:
	.size	pthread_condattr_setclock, .-pthread_condattr_setclock
	.section	.text.pthread_setcancelstate,"ax",@progbits
	.align	4
	.global	pthread_setcancelstate
	.type	pthread_setcancelstate, @function
pthread_setcancelstate:
.LVL4:
.LFB17:
	.loc 1 13 1 is_stmt 1 view -0
	.loc 1 13 1 is_stmt 0 view .LVU12
	entry	sp, 32
.LCFI1:
	.loc 1 14 5 is_stmt 1 view .LVU13
	.loc 1 15 1 is_stmt 0 view .LVU14
	movi.n	a2, 0
.LVL5:
	.loc 1 15 1 view .LVU15
	retw.n
.LFE17:
	.size	pthread_setcancelstate, .-pthread_setcancelstate
	.section	.text.newlib_include_pthread_impl,"ax",@progbits
	.align	4
	.global	newlib_include_pthread_impl
	.type	newlib_include_pthread_impl, @function
newlib_include_pthread_impl:
.LFB18:
	.loc 1 18 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 20 1 view .LVU17
	retw.n
.LFE18:
	.size	newlib_include_pthread_impl, .-newlib_include_pthread_impl
	.section	.rodata.__FUNCTION__$3333,"a"
	.type	__FUNCTION__$3333, @object
	.size	__FUNCTION__$3333, 26
__FUNCTION__$3333:
	.string	"pthread_condattr_setclock"
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/time.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/unistd.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/pthread.h"
	.file 13 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
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
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x75
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.byte	0xe
	.4byte	0x75
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.byte	0x3
	.4byte	0xc3
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0x94
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x13
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.byte	0x9
	.4byte	0xf7
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x5
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0xab
	.byte	0x3
	.4byte	0xd3
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x1b
	.4byte	0x69
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0xc5
	.byte	0x17
	.4byte	0x111
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7b
	.byte	0x17
	.4byte	0x111
	.uleb128 0xd
	.byte	0x4
	.4byte	0x136
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xe
	.4byte	0x136
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd7
	.byte	0x15
	.4byte	0x118
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0xb4
	.byte	0x9
	.4byte	0x172
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xb5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xb6
	.byte	0xb
	.4byte	0x124
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0xba
	.byte	0x3
	.4byte	0x14e
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x111
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x1e4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x1e4
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
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
	.4byte	0x1ea
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x8
	.4byte	0x17e
	.4byte	0x1fa
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x27d
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x2c2
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x2c2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x2c2
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x17e
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x17e
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x10f
	.4byte	0x2d2
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x7
	.byte	0x55
	.byte	0x8
	.4byte	0x314
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x56
	.byte	0x12
	.4byte	0x314
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x58
	.byte	0x9
	.4byte	0x31a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0x20
	.4byte	0x331
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2d2
	.uleb128 0x8
	.4byte	0x32a
	.4byte	0x32a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x330
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x27d
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x35f
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x35f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x20
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x3d8
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0x9a
	.byte	0x12
	.4byte	0x35f
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
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
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
	.4byte	0x337
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa2
	.byte	0x12
	.4byte	0x53c
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x365
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.2byte	0x174
	.byte	0x8
	.4byte	0x53c
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x17d
	.byte	0xb
	.4byte	0x782
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x17d
	.byte	0x14
	.4byte	0x782
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x782
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x181
	.byte	0x9
	.4byte	0x130
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ea
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x7
	.2byte	0x188
	.byte	0x12
	.4byte	0x8f0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x18a
	.byte	0xa
	.4byte	0x901
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x190
	.byte	0x9
	.4byte	0x130
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x192
	.byte	0x13
	.4byte	0x907
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x193
	.byte	0x10
	.4byte	0x90d
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x194
	.byte	0x9
	.4byte	0x130
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x197
	.byte	0xb
	.4byte	0x91e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x19b
	.byte	0x13
	.4byte	0x314
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2d2
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x19f
	.byte	0x10
	.4byte	0x743
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x782
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x92a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x130
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x685
	.uleb128 0x10
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x35f
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
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
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
	.4byte	0x337
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbf
	.byte	0x12
	.4byte	0x53c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x10f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x7
	.byte	0xc5
	.byte	0x9
	.4byte	0x6a3
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x6d2
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x6f6
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x710
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x337
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x35f
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x716
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x726
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x337
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0x7c
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x103
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0xf7
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6a3
	.uleb128 0x18
	.4byte	0x53c
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x130
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x685
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x53c
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x6c7
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x13d
	.uleb128 0xe
	.4byte	0x6c7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	0x88
	.4byte	0x6f6
	.uleb128 0x18
	.4byte	0x53c
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x88
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6d8
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x710
	.uleb128 0x18
	.4byte	0x53c
	.uleb128 0x18
	.4byte	0x10f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6fc
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x726
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x736
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x542
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0x77c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0x77c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0x782
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x743
	.uleb128 0xd
	.byte	0x4
	.4byte	0x736
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x18
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7cf
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0x7cf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0x7cf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x7df
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x10
	.byte	0x7
	.2byte	0x158
	.byte	0x8
	.4byte	0x826
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1e4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1e4
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x15e
	.byte	0x14
	.4byte	0x826
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x50
	.byte	0x7
	.2byte	0x162
	.byte	0x8
	.4byte	0x8d5
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x165
	.byte	0x9
	.4byte	0x130
	.byte	0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x167
	.byte	0xe
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x168
	.byte	0xe
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x169
	.byte	0x8
	.4byte	0x8d5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x16b
	.byte	0xe
	.4byte	0xf7
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x16c
	.byte	0xe
	.4byte	0xf7
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0xf7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x16e
	.byte	0xe
	.4byte	0xf7
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x16f
	.byte	0xe
	.4byte	0xf7
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x136
	.4byte	0x8e5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8e5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x1a
	.4byte	0x901
	.uleb128 0x18
	.4byte	0x53c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x788
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x1a
	.4byte	0x91e
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x924
	.uleb128 0xd
	.byte	0x4
	.4byte	0x913
	.uleb128 0xd
	.byte	0x4
	.4byte	0x82c
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3d8
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3d8
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3d8
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x30a
	.byte	0x18
	.4byte	0x53c
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x8
	.byte	0x9a
	.byte	0xd
	.4byte	0x75
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0x9b
	.byte	0xc
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x130
	.4byte	0x98c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x8
	.byte	0x9e
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x9
	.byte	0x10
	.byte	0xf
	.4byte	0x9a4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x130
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x9
	.byte	0xfc
	.byte	0xe
	.4byte	0x130
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x9
	.byte	0xfd
	.byte	0xc
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x9
	.byte	0xfd
	.byte	0x14
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x9
	.byte	0xfd
	.byte	0x1c
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x9
	.byte	0xff
	.byte	0xc
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x130
	.uleb128 0x8
	.4byte	0x6cd
	.4byte	0xa02
	.uleb128 0x9
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x9f2
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0xa02
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x48
	.byte	0xd
	.byte	0x23
	.byte	0xe
	.4byte	0xa46
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x5
	.byte	0
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x4
	.byte	0x14
	.4byte	0x6c7
	.uleb128 0x20
	.4byte	.LASF155
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x13d
	.byte	0x5
	.4byte	0x41
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x1
	.byte	0xc
	.byte	0x20
	.4byte	0x41
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0xc
	.byte	0x2c
	.4byte	0xaa2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x41
	.uleb128 0x24
	.4byte	.LASF144
	.byte	0xc
	.byte	0x61
	.byte	0x5
	.4byte	0x41
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb30
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6
	.byte	0x33
	.4byte	0xb30
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6
	.byte	0x43
	.4byte	0x142
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF156
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3333
	.uleb128 0x26
	.4byte	.LVL1
	.4byte	0xb4b
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0xb57
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3333
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x172
	.uleb128 0x8
	.4byte	0x13d
	.4byte	0xb46
	.uleb128 0x9
	.4byte	0x48
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	0xb36
	.uleb128 0x29
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.byte	0x5b
	.byte	0xa
	.uleb128 0x29
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xd
	.byte	0x7e
	.byte	0x6
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"_misc"
.LASF7:
	.string	"_lock_t"
.LASF43:
	.string	"_on_exit_args"
.LASF86:
	.string	"_write"
.LASF127:
	.string	"_daylight"
.LASF156:
	.string	"__FUNCTION__"
.LASF113:
	.string	"_wctomb_state"
.LASF133:
	.string	"optopt"
.LASF74:
	.string	"_r48"
.LASF82:
	.string	"_signal_buf"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"is_initialized"
.LASF56:
	.string	"_flags"
.LASF61:
	.string	"_errno"
.LASF149:
	.string	"esp_log_timestamp"
.LASF141:
	.string	"ESP_LOG_DEBUG"
.LASF153:
	.string	"/home/dieter/Development/ProjektEi/build/newlib"
.LASF123:
	.string	"__sf_fake_stdout"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF85:
	.string	"_read"
.LASF117:
	.string	"_mbrlen_state"
.LASF63:
	.string	"_stdout"
.LASF11:
	.string	"_fpos_t"
.LASF50:
	.string	"_fns"
.LASF84:
	.string	"_cookie"
.LASF32:
	.string	"_Bigint"
.LASF40:
	.string	"__tm_wday"
.LASF106:
	.string	"_result"
.LASF36:
	.string	"__tm_hour"
.LASF15:
	.string	"__count"
.LASF132:
	.string	"opterr"
.LASF35:
	.string	"__tm_min"
.LASF80:
	.string	"__sf"
.LASF100:
	.string	"_rand48"
.LASF107:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF76:
	.string	"_asctime_buf"
.LASF83:
	.string	"__sFILE"
.LASF31:
	.string	"_wds"
.LASF146:
	.string	"attr"
.LASF96:
	.string	"__FILE"
.LASF92:
	.string	"_offset"
.LASF89:
	.string	"_ubuf"
.LASF21:
	.string	"clock_t"
.LASF66:
	.string	"_emergency"
.LASF34:
	.string	"__tm_sec"
.LASF135:
	.string	"suboptarg"
.LASF41:
	.string	"__tm_yday"
.LASF65:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF28:
	.string	"_next"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF137:
	.string	"ESP_LOG_NONE"
.LASF143:
	.string	"pthread_setcancelstate"
.LASF128:
	.string	"_tzname"
.LASF16:
	.string	"__value"
.LASF108:
	.string	"_p5s"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF112:
	.string	"_mblen_state"
.LASF22:
	.string	"char"
.LASF37:
	.string	"__tm_mday"
.LASF77:
	.string	"_sig_func"
.LASF118:
	.string	"_mbrtowc_state"
.LASF129:
	.string	"environ"
.LASF18:
	.string	"_flock_t"
.LASF13:
	.string	"__wch"
.LASF99:
	.string	"_iobs"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF88:
	.string	"_close"
.LASF67:
	.string	"__sdidinit"
.LASF55:
	.string	"__sFILE_fake"
.LASF126:
	.string	"_timezone"
.LASF62:
	.string	"_stdin"
.LASF71:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF53:
	.string	"_base"
.LASF109:
	.string	"_freelist"
.LASF102:
	.string	"_mult"
.LASF27:
	.string	"__ULong"
.LASF120:
	.string	"_wcrtomb_state"
.LASF57:
	.string	"_file"
.LASF131:
	.string	"optind"
.LASF136:
	.string	"exc_cause_table"
.LASF147:
	.string	"oldstate"
.LASF70:
	.string	"__cleanup"
.LASF17:
	.string	"_mbstate_t"
.LASF105:
	.string	"_mprec"
.LASF42:
	.string	"__tm_isdst"
.LASF140:
	.string	"ESP_LOG_INFO"
.LASF152:
	.string	"/home/dieter/Development/esp-idf/components/newlib/pthread.c"
.LASF150:
	.string	"esp_log_write"
.LASF38:
	.string	"__tm_mon"
.LASF130:
	.string	"optarg"
.LASF78:
	.string	"_atexit0"
.LASF26:
	.string	"pthread_condattr_t"
.LASF48:
	.string	"_atexit"
.LASF94:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF20:
	.string	"__clockid_t"
.LASF134:
	.string	"optreset"
.LASF30:
	.string	"_sign"
.LASF148:
	.string	"clock_id"
.LASF59:
	.string	"_data"
.LASF14:
	.string	"__wchb"
.LASF125:
	.string	"_global_impure_ptr"
.LASF39:
	.string	"__tm_year"
.LASF110:
	.string	"_misc_reent"
.LASF144:
	.string	"pthread_condattr_setclock"
.LASF138:
	.string	"ESP_LOG_ERROR"
.LASF75:
	.string	"_localtime_buf"
.LASF72:
	.string	"_cvtlen"
.LASF29:
	.string	"_maxwds"
.LASF115:
	.string	"_l64a_buf"
.LASF91:
	.string	"_blksize"
.LASF33:
	.string	"__tm"
.LASF93:
	.string	"_lock"
.LASF19:
	.string	"long unsigned int"
.LASF142:
	.string	"ESP_LOG_VERBOSE"
.LASF98:
	.string	"_niobs"
.LASF151:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"_dso_handle"
.LASF145:
	.string	"state"
.LASF23:
	.string	"clockid_t"
.LASF73:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF139:
	.string	"ESP_LOG_WARN"
.LASF116:
	.string	"_getdate_err"
.LASF58:
	.string	"_lbfsize"
.LASF103:
	.string	"_add"
.LASF52:
	.string	"__sbuf"
.LASF97:
	.string	"_glue"
.LASF79:
	.string	"__sglue"
.LASF111:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbtowc_state"
.LASF69:
	.string	"_locale"
.LASF44:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF60:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"clock"
.LASF46:
	.string	"_fntypes"
.LASF54:
	.string	"_size"
.LASF155:
	.string	"newlib_include_pthread_impl"
.LASF10:
	.string	"_off_t"
.LASF90:
	.string	"_nbuf"
.LASF68:
	.string	"_unspecified_locale_info"
.LASF124:
	.string	"__sf_fake_stderr"
.LASF95:
	.string	"_flags2"
.LASF47:
	.string	"_is_cxa"
.LASF101:
	.string	"_seed"
.LASF104:
	.string	"_rand_next"
.LASF154:
	.string	"__locale_t"
.LASF87:
	.string	"_seek"
.LASF64:
	.string	"_stderr"
.LASF12:
	.string	"wint_t"
.LASF122:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
