	.file	"semaphore.c"
	.text
.Ltext0:
	.section	.text.osi_sem_new,"ax",@progbits
	.align	4
	.global	osi_sem_new
	.type	osi_sem_new, @function
osi_sem_new:
.LVL0:
.LFB14:
	.file 1 "/home/dieter/Development/esp-idf/components/bt/common/osi/semaphore.c"
	.loc 1 27 1 view -0
	.loc 1 27 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 28 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 30 5 view .LVU3
	.loc 1 27 1 is_stmt 0 view .LVU4
	mov.n	a10, a3
	mov.n	a11, a4
	.loc 1 28 9 view .LVU5
	movi.n	a8, -1
	.loc 1 30 8 view .LVU6
	beqz.n	a2, .L1
	.loc 1 31 9 is_stmt 1 view .LVU7
	.loc 1 31 16 is_stmt 0 view .LVU8
	call8	xQueueCreateCountingSemaphore
.LVL2:
	.loc 1 31 14 view .LVU9
	s32i.n	a10, a2, 0
	.loc 1 32 9 is_stmt 1 view .LVU10
	.loc 1 32 12 is_stmt 0 view .LVU11
	movi.n	a8, 0
	movi.n	a2, 1
.LVL3:
	.loc 1 32 12 view .LVU12
	moveqz	a8, a2, a10
	neg	a8, a8
.L1:
	.loc 1 38 1 view .LVU13
	mov.n	a2, a8
	retw.n
.LFE14:
	.size	osi_sem_new, .-osi_sem_new
	.section	.text.osi_sem_give,"ax",@progbits
	.align	4
	.global	osi_sem_give
	.type	osi_sem_give, @function
osi_sem_give:
.LVL4:
.LFB15:
	.loc 1 43 1 is_stmt 1 view -0
	.loc 1 43 1 is_stmt 0 view .LVU15
	entry	sp, 32
.LCFI1:
	.loc 1 44 5 is_stmt 1 view .LVU16
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL5:
	.loc 1 45 1 is_stmt 0 view .LVU17
	retw.n
.LFE15:
	.size	osi_sem_give, .-osi_sem_give
	.section	.text.osi_sem_take,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	osi_sem_take
	.type	osi_sem_take, @function
osi_sem_take:
.LVL6:
.LFB16:
	.loc 1 56 1 is_stmt 1 view -0
	.loc 1 56 1 is_stmt 0 view .LVU19
	entry	sp, 32
.LCFI2:
	.loc 1 57 5 is_stmt 1 view .LVU20
.LVL7:
	.loc 1 59 5 view .LVU21
	.loc 1 56 1 is_stmt 0 view .LVU22
	mov.n	a12, a3
	l32i.n	a10, a2, 0
	.loc 1 59 8 view .LVU23
	bnei	a3, -1, .L6
	.loc 1 60 9 is_stmt 1 view .LVU24
	.loc 1 60 13 is_stmt 0 view .LVU25
	movi.n	a13, 0
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL8:
	.loc 1 60 12 view .LVU26
	addi.n	a2, a10, -1
.LVL9:
	.loc 1 60 12 view .LVU27
	movi.n	a3, 1
.LVL10:
	.loc 1 60 12 view .LVU28
	movi.n	a10, 0
	movnez	a10, a3, a2
	neg	a2, a10
	j	.L5
.LVL11:
.L6:
	.loc 1 64 9 is_stmt 1 view .LVU29
	.loc 1 64 13 is_stmt 0 view .LVU30
	l32r	a3, .LC0
.LVL12:
	.loc 1 64 13 view .LVU31
	movi.n	a13, 0
	muluh	a12, a12, a3
.LVL13:
	.loc 1 64 13 view .LVU32
	mov.n	a11, a13
	srli	a12, a12, 3
	call8	xQueueGenericReceive
.LVL14:
	.loc 1 65 17 view .LVU33
	addi.n	a10, a10, -1
	movi.n	a8, 0
	movi.n	a2, -2
.LVL15:
	.loc 1 65 17 view .LVU34
	moveqz	a2, a8, a10
.L5:
	.loc 1 70 1 view .LVU35
	retw.n
.LFE16:
	.size	osi_sem_take, .-osi_sem_take
	.section	.text.osi_sem_free,"ax",@progbits
	.align	4
	.global	osi_sem_free
	.type	osi_sem_free, @function
osi_sem_free:
.LVL16:
.LFB17:
	.loc 1 74 1 is_stmt 1 view -0
	.loc 1 74 1 is_stmt 0 view .LVU37
	entry	sp, 32
.LCFI3:
	.loc 1 75 5 is_stmt 1 view .LVU38
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL17:
	.loc 1 76 5 view .LVU39
	.loc 1 76 10 is_stmt 0 view .LVU40
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 77 1 view .LVU41
	retw.n
.LFE17:
	.size	osi_sem_free, .-osi_sem_free
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 9 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
	.file 14 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 15 "/home/dieter/Development/esp-idf/components/bt/common/osi/include/osi/semaphore.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12bb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF277
	.byte	0xc
	.4byte	.LASF278
	.4byte	.LASF279
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	0x33
	.uleb128 0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.byte	0xd
	.4byte	0x33
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x95
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x95
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0xe3
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xb4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0xe3
	.byte	0
	.uleb128 0x9
	.4byte	0x57
	.4byte	0xf3
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x117
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xc1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xf3
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0x89
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xe
	.byte	0x4
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x4
	.4byte	0x13e
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x131
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1b0
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x33
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1b6
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x156
	.uleb128 0x9
	.4byte	0x14a
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x249
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x33
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x28e
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x28e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x28e
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x14a
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x14a
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x29e
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2e0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2e0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2e6
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x2fd
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x29e
	.uleb128 0x9
	.4byte	0x2f6
	.4byte	0x2f6
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x249
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x32b
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x32b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x57
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3a4
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x32b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x63
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x303
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x508
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x331
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x508
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x33
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x74e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x74e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x74e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x138
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8b6
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8bc
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8cd
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x33
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x138
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d3
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8d9
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x138
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ea
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2e0
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x29e
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x70f
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x74e
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8f6
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x138
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3a9
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x651
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x32b
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x63
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x303
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x508
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x12f
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x66f
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x69e
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6c2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6dc
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x303
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x32b
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x33
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e2
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f2
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x303
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x33
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0x9c
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x123
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x117
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x66f
	.uleb128 0x18
	.4byte	0x508
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x138
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x651
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x693
	.uleb128 0x18
	.4byte	0x508
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x693
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x145
	.uleb128 0x4
	.4byte	0x693
	.uleb128 0xe
	.byte	0x4
	.4byte	0x675
	.uleb128 0x17
	.4byte	0xa8
	.4byte	0x6c2
	.uleb128 0x18
	.4byte	0x508
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0xa8
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a4
	.uleb128 0x17
	.4byte	0x33
	.4byte	0x6dc
	.uleb128 0x18
	.4byte	0x508
	.uleb128 0x18
	.4byte	0x12f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x9
	.4byte	0x57
	.4byte	0x6f2
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x57
	.4byte	0x702
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x50e
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x748
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x748
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x74e
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x70f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x702
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79b
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x79b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x79b
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x44
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x44
	.4byte	0x7ab
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f2
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1b0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1b0
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1b0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a1
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x138
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x117
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x117
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x117
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a1
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x33
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x117
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x117
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x117
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x117
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x117
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x13e
	.4byte	0x8b1
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF280
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7ab
	.uleb128 0x1a
	.4byte	0x8cd
	.uleb128 0x18
	.4byte	0x508
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x754
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0x1a
	.4byte	0x8ea
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8f0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8df
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7f8
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3a4
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3a4
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3a4
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x508
	.uleb128 0x5
	.4byte	.LASF121
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x8
	.byte	0x94
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x9
	.4byte	0x12f
	.4byte	0x958
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x8
	.byte	0xb3
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x8
	.byte	0xb4
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x8
	.byte	0xb6
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x8
	.byte	0xb7
	.byte	0xe
	.4byte	0x948
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0xbd
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x8
	.byte	0xbe
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0x9b0
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x9a0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x8
	.byte	0xbf
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x8
	.byte	0xc0
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x8
	.byte	0xc1
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x8
	.byte	0xc2
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x9
	.4byte	0x699
	.4byte	0x9f5
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x9e5
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x8
	.byte	0xc4
	.byte	0x1b
	.4byte	0x9f5
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x8
	.byte	0xd1
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x8
	.byte	0xd4
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x8
	.byte	0xd6
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x8
	.byte	0xda
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x8
	.byte	0xed
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x8
	.byte	0xee
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x8
	.byte	0xf6
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x8
	.byte	0xf7
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x8
	.byte	0xf9
	.byte	0x1d
	.4byte	0x4b
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x8
	.byte	0xfa
	.byte	0x1d
	.4byte	0x4b
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x8
	.byte	0xfd
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x8
	.byte	0xfe
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x100
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x8
	.2byte	0x160
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x8
	.2byte	0x193
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x8
	.2byte	0x194
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x8
	.2byte	0x195
	.byte	0x1b
	.4byte	0x699
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x196
	.byte	0x1b
	.4byte	0x699
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x198
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x199
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x8
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x8
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x8
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x4b
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x8
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x8
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x8
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x699
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x8
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x699
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x8
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xc46
	.uleb128 0xa
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xc36
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc46
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc46
	.uleb128 0x9
	.4byte	0x5e
	.4byte	0xc75
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0xc65
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xc75
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xc75
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0x9b0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0xcb1
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0xca1
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x8
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x8
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x8
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x30b
	.byte	0x11
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x8
	.2byte	0x315
	.byte	0x11
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x8
	.2byte	0x318
	.byte	0x11
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x325
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x8
	.2byte	0x326
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x8
	.2byte	0x327
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x8
	.2byte	0x328
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x329
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x9
	.4byte	0x3f
	.4byte	0xdb8
	.uleb128 0x1d
	.byte	0
	.uleb128 0x4
	.4byte	0xdad
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x8
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x8
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x330
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x8
	.2byte	0x331
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x8
	.2byte	0x332
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x333
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x334
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x335
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x8
	.2byte	0x336
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x337
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x338
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x339
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xdb8
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x343
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x344
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x346
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x347
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x349
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x8
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x8
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x8
	.2byte	0x390
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x8
	.2byte	0x392
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x393
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x394
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x395
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x396
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x397
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x398
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x399
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x8
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0x9
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x500
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x9
	.2byte	0x503
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0x9
	.2byte	0x504
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0x9
	.2byte	0x507
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x508
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0x9
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0x9
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0x9
	.2byte	0x510
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x9
	.2byte	0x513
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0x9
	.2byte	0x514
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x9
	.2byte	0x517
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0x9
	.2byte	0x518
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x5e
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF259
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x138
	.uleb128 0x9
	.4byte	0x699
	.4byte	0x10be
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	0x10ae
	.uleb128 0x1c
	.4byte	.LASF260
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x10be
	.uleb128 0x5
	.4byte	.LASF261
	.byte	0xc
	.byte	0x76
	.byte	0xd
	.4byte	0x33
	.uleb128 0x5
	.4byte	.LASF262
	.byte	0xc
	.byte	0x7d
	.byte	0x13
	.4byte	0x930
	.uleb128 0x5
	.4byte	.LASF263
	.byte	0xd
	.byte	0x58
	.byte	0x10
	.4byte	0x12f
	.uleb128 0x5
	.4byte	.LASF264
	.byte	0xe
	.byte	0x4f
	.byte	0x17
	.4byte	0x10e7
	.uleb128 0x5
	.4byte	.LASF265
	.byte	0xf
	.byte	0x1d
	.byte	0x1b
	.4byte	0x10f3
	.uleb128 0x1e
	.4byte	.LASF267
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1139
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x49
	.byte	0x1e
	.4byte	0x1139
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0x128a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x10ff
	.uleb128 0x21
	.4byte	.LASF269
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x33
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11de
	.uleb128 0x22
	.string	"sem"
	.byte	0x1
	.byte	0x37
	.byte	0x19
	.4byte	0x1139
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.4byte	.LASF266
	.byte	0x1
	.byte	0x37
	.byte	0x27
	.4byte	0x930
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x33
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0x1297
	.4byte	0x11ac
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0x1297
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
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
	.byte	0xf7
	.uleb128 0
	.byte	0x33
	.byte	0x25
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121c
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x2a
	.byte	0x1e
	.4byte	0x1139
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL5
	.4byte	0x12a4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF270
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128a
	.uleb128 0x22
	.string	"sem"
	.byte	0x1
	.byte	0x1a
	.byte	0x1c
	.4byte	0x1139
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x28
	.4byte	.LASF271
	.byte	0x1
	.byte	0x1a
	.byte	0x2a
	.4byte	0x930
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF272
	.byte	0x1
	.byte	0x1a
	.byte	0x3e
	.4byte	0x930
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x33
	.sleb128 -1
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0x12b1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0xd
	.2byte	0x3ac
	.byte	0x6
	.uleb128 0x2a
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0xd
	.2byte	0x38a
	.byte	0xc
	.uleb128 0x2a
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xd
	.2byte	0x265
	.byte	0xc
	.uleb128 0x2a
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0xd
	.2byte	0x57a
	.byte	0xf
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE14
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF173:
	.string	"Xthal_hw_release_name"
.LASF169:
	.string	"Xthal_hw_configid0"
.LASF170:
	.string	"Xthal_hw_configid1"
.LASF234:
	.string	"Xthal_mmu_ca_bits"
.LASF279:
	.string	"/home/dieter/Development/ProjektEi/build/bt"
.LASF186:
	.string	"Xthal_have_ccount"
.LASF152:
	.string	"Xthal_memory_order"
.LASF8:
	.string	"_lock_t"
.LASF248:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF38:
	.string	"_on_exit_args"
.LASF81:
	.string	"_write"
.LASF201:
	.string	"Xthal_num_xlmi"
.LASF108:
	.string	"_wctomb_state"
.LASF204:
	.string	"Xthal_instrom_size"
.LASF241:
	.string	"Xthal_dtlb_ways"
.LASF69:
	.string	"_r48"
.LASF141:
	.string	"Xthal_dcache_linewidth"
.LASF133:
	.string	"Xthal_cp_names"
.LASF147:
	.string	"Xthal_debug_configured"
.LASF77:
	.string	"_signal_buf"
.LASF1:
	.string	"unsigned int"
.LASF136:
	.string	"Xthal_cp_max"
.LASF176:
	.string	"Xthal_num_interrupts"
.LASF240:
	.string	"Xthal_dtlb_way_bits"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF231:
	.string	"Xthal_mmu_rings"
.LASF151:
	.string	"Xthal_release_internal"
.LASF273:
	.string	"vQueueDelete"
.LASF257:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF272:
	.string	"init_count"
.LASF56:
	.string	"_errno"
.LASF129:
	.string	"Xthal_cpregs_size"
.LASF223:
	.string	"Xthal_have_spanning_way"
.LASF181:
	.string	"Xthal_inttype"
.LASF123:
	.string	"Xthal_cpregs_save_fn"
.LASF118:
	.string	"__sf_fake_stdout"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF192:
	.string	"Xthal_have_highlevel_interrupts"
.LASF175:
	.string	"Xthal_num_intlevels"
.LASF80:
	.string	"_read"
.LASF112:
	.string	"_mbrlen_state"
.LASF225:
	.string	"Xthal_have_mimic_cacheattr"
.LASF58:
	.string	"_stdout"
.LASF130:
	.string	"Xthal_cpregs_align"
.LASF12:
	.string	"_fpos_t"
.LASF235:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF45:
	.string	"_fns"
.LASF221:
	.string	"Xthal_icache_line_lockable"
.LASF79:
	.string	"_cookie"
.LASF27:
	.string	"_Bigint"
.LASF35:
	.string	"__tm_wday"
.LASF125:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF101:
	.string	"_result"
.LASF121:
	.string	"uint32_t"
.LASF252:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF31:
	.string	"__tm_hour"
.LASF178:
	.string	"Xthal_intlevel_mask"
.LASF228:
	.string	"Xthal_have_tlbs"
.LASF140:
	.string	"Xthal_icache_linewidth"
.LASF171:
	.string	"Xthal_hw_release_major"
.LASF16:
	.string	"__count"
.LASF138:
	.string	"Xthal_num_aregs"
.LASF30:
	.string	"__tm_min"
.LASF75:
	.string	"__sf"
.LASF274:
	.string	"xQueueGenericReceive"
.LASF205:
	.string	"Xthal_instram_vaddr"
.LASF95:
	.string	"_rand48"
.LASF102:
	.string	"_result_k"
.LASF0:
	.string	"long long unsigned int"
.LASF71:
	.string	"_asctime_buf"
.LASF187:
	.string	"Xthal_num_ccompare"
.LASF78:
	.string	"__sFILE"
.LASF26:
	.string	"_wds"
.LASF268:
	.string	"osi_sem_give"
.LASF233:
	.string	"Xthal_mmu_sr_bits"
.LASF271:
	.string	"max_count"
.LASF91:
	.string	"__FILE"
.LASF202:
	.string	"Xthal_instrom_vaddr"
.LASF247:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF87:
	.string	"_offset"
.LASF84:
	.string	"_ubuf"
.LASF256:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF159:
	.string	"Xthal_have_sext"
.LASF158:
	.string	"Xthal_have_minmax"
.LASF199:
	.string	"Xthal_num_datarom"
.LASF61:
	.string	"_emergency"
.LASF155:
	.string	"Xthal_have_booleans"
.LASF242:
	.string	"Xthal_dtlb_arf_ways"
.LASF197:
	.string	"Xthal_num_instrom"
.LASF161:
	.string	"Xthal_have_mac16"
.LASF196:
	.string	"Xthal_tram_sync"
.LASF244:
	.string	"Xthal_cp_mask_FPU"
.LASF206:
	.string	"Xthal_instram_paddr"
.LASF29:
	.string	"__tm_sec"
.LASF145:
	.string	"Xthal_dcache_size"
.LASF259:
	.string	"suboptarg"
.LASF36:
	.string	"__tm_yday"
.LASF60:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF253:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF23:
	.string	"_next"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF237:
	.string	"Xthal_itlb_way_bits"
.LASF203:
	.string	"Xthal_instrom_paddr"
.LASF217:
	.string	"Xthal_icache_setwidth"
.LASF163:
	.string	"Xthal_have_fp"
.LASF200:
	.string	"Xthal_num_dataram"
.LASF275:
	.string	"xQueueGenericSend"
.LASF198:
	.string	"Xthal_num_instram"
.LASF17:
	.string	"__value"
.LASF153:
	.string	"Xthal_have_windowed"
.LASF103:
	.string	"_p5s"
.LASF190:
	.string	"Xthal_xea_version"
.LASF224:
	.string	"Xthal_have_identity_map"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF107:
	.string	"_mblen_state"
.LASF172:
	.string	"Xthal_hw_release_minor"
.LASF21:
	.string	"char"
.LASF32:
	.string	"__tm_mday"
.LASF162:
	.string	"Xthal_have_mul16"
.LASF72:
	.string	"_sig_func"
.LASF113:
	.string	"_mbrtowc_state"
.LASF265:
	.string	"osi_sem_t"
.LASF180:
	.string	"Xthal_intlevel"
.LASF193:
	.string	"Xthal_have_nmi"
.LASF19:
	.string	"_flock_t"
.LASF263:
	.string	"QueueHandle_t"
.LASF194:
	.string	"Xthal_tram_pending"
.LASF14:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF150:
	.string	"Xthal_release_name"
.LASF46:
	.string	"_on_exit_args_ptr"
.LASF127:
	.string	"Xthal_extra_size"
.LASF83:
	.string	"_close"
.LASF62:
	.string	"__sdidinit"
.LASF50:
	.string	"__sFILE_fake"
.LASF124:
	.string	"Xthal_cpregs_restore_fn"
.LASF177:
	.string	"Xthal_excm_level"
.LASF57:
	.string	"_stdin"
.LASF66:
	.string	"_gamma_signgam"
.LASF6:
	.string	"long long int"
.LASF227:
	.string	"Xthal_have_cacheattr"
.LASF128:
	.string	"Xthal_extra_align"
.LASF48:
	.string	"_base"
.LASF168:
	.string	"Xthal_build_unique_id"
.LASF104:
	.string	"_freelist"
.LASF97:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF207:
	.string	"Xthal_instram_size"
.LASF115:
	.string	"_wcrtomb_state"
.LASF261:
	.string	"BaseType_t"
.LASF144:
	.string	"Xthal_icache_size"
.LASF122:
	.string	"Xthal_rev_no"
.LASF52:
	.string	"_file"
.LASF260:
	.string	"exc_cause_table"
.LASF211:
	.string	"Xthal_dataram_vaddr"
.LASF255:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF232:
	.string	"Xthal_mmu_ring_bits"
.LASF65:
	.string	"__cleanup"
.LASF18:
	.string	"_mbstate_t"
.LASF226:
	.string	"Xthal_have_xlt_cacheattr"
.LASF100:
	.string	"_mprec"
.LASF167:
	.string	"Xthal_num_writebuffer_entries"
.LASF184:
	.string	"Xthal_num_ibreak"
.LASF126:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF37:
	.string	"__tm_isdst"
.LASF278:
	.string	"/home/dieter/Development/esp-idf/components/bt/common/osi/semaphore.c"
.LASF216:
	.string	"Xthal_xlmi_size"
.LASF148:
	.string	"Xthal_release_major"
.LASF251:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF250:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF219:
	.string	"Xthal_icache_ways"
.LASF262:
	.string	"TickType_t"
.LASF179:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF33:
	.string	"__tm_mon"
.LASF243:
	.string	"Xthal_cp_id_FPU"
.LASF212:
	.string	"Xthal_dataram_paddr"
.LASF73:
	.string	"_atexit0"
.LASF218:
	.string	"Xthal_dcache_setwidth"
.LASF222:
	.string	"Xthal_dcache_line_lockable"
.LASF43:
	.string	"_atexit"
.LASF89:
	.string	"_mbstate"
.LASF154:
	.string	"Xthal_have_density"
.LASF229:
	.string	"Xthal_mmu_asid_bits"
.LASF5:
	.string	"short int"
.LASF208:
	.string	"Xthal_datarom_vaddr"
.LASF131:
	.string	"Xthal_all_extra_size"
.LASF10:
	.string	"long int"
.LASF156:
	.string	"Xthal_have_loops"
.LASF143:
	.string	"Xthal_dcache_linesize"
.LASF210:
	.string	"Xthal_datarom_size"
.LASF264:
	.string	"SemaphoreHandle_t"
.LASF25:
	.string	"_sign"
.LASF245:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF54:
	.string	"_data"
.LASF15:
	.string	"__wchb"
.LASF120:
	.string	"_global_impure_ptr"
.LASF34:
	.string	"__tm_year"
.LASF105:
	.string	"_misc_reent"
.LASF182:
	.string	"Xthal_inttype_mask"
.LASF239:
	.string	"Xthal_itlb_arf_ways"
.LASF70:
	.string	"_localtime_buf"
.LASF67:
	.string	"_cvtlen"
.LASF24:
	.string	"_maxwds"
.LASF110:
	.string	"_l64a_buf"
.LASF160:
	.string	"Xthal_have_clamps"
.LASF209:
	.string	"Xthal_datarom_paddr"
.LASF76:
	.string	"_misc"
.LASF86:
	.string	"_blksize"
.LASF28:
	.string	"__tm"
.LASF135:
	.string	"Xthal_cp_num"
.LASF139:
	.string	"Xthal_num_aregs_log2"
.LASF88:
	.string	"_lock"
.LASF146:
	.string	"Xthal_dcache_is_writeback"
.LASF149:
	.string	"Xthal_release_minor"
.LASF20:
	.string	"long unsigned int"
.LASF213:
	.string	"Xthal_dataram_size"
.LASF93:
	.string	"_niobs"
.LASF277:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF142:
	.string	"Xthal_icache_linesize"
.LASF267:
	.string	"osi_sem_free"
.LASF40:
	.string	"_dso_handle"
.LASF183:
	.string	"Xthal_timer_interrupt"
.LASF157:
	.string	"Xthal_have_nsa"
.LASF238:
	.string	"Xthal_itlb_ways"
.LASF68:
	.string	"_cvtbuf"
.LASF4:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF249:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF266:
	.string	"timeout"
.LASF111:
	.string	"_getdate_err"
.LASF220:
	.string	"Xthal_dcache_ways"
.LASF258:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF214:
	.string	"Xthal_xlmi_vaddr"
.LASF98:
	.string	"_add"
.LASF269:
	.string	"osi_sem_take"
.LASF191:
	.string	"Xthal_have_interrupts"
.LASF47:
	.string	"__sbuf"
.LASF164:
	.string	"Xthal_have_speculation"
.LASF92:
	.string	"_glue"
.LASF236:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF188:
	.string	"Xthal_have_prid"
.LASF74:
	.string	"__sglue"
.LASF174:
	.string	"Xthal_hw_release_internal"
.LASF106:
	.string	"_strtok_last"
.LASF109:
	.string	"_mbtowc_state"
.LASF195:
	.string	"Xthal_tram_enabled"
.LASF64:
	.string	"_locale"
.LASF39:
	.string	"_fnargs"
.LASF3:
	.string	"signed char"
.LASF55:
	.string	"_reent"
.LASF2:
	.string	"short unsigned int"
.LASF246:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF270:
	.string	"osi_sem_new"
.LASF41:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF189:
	.string	"Xthal_have_exceptions"
.LASF215:
	.string	"Xthal_xlmi_paddr"
.LASF11:
	.string	"_off_t"
.LASF85:
	.string	"_nbuf"
.LASF254:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF230:
	.string	"Xthal_mmu_asid_kernel"
.LASF166:
	.string	"Xthal_have_pif"
.LASF63:
	.string	"_unspecified_locale_info"
.LASF119:
	.string	"__sf_fake_stderr"
.LASF185:
	.string	"Xthal_num_dbreak"
.LASF90:
	.string	"_flags2"
.LASF132:
	.string	"Xthal_all_extra_align"
.LASF42:
	.string	"_is_cxa"
.LASF96:
	.string	"_seed"
.LASF99:
	.string	"_rand_next"
.LASF280:
	.string	"__locale_t"
.LASF165:
	.string	"Xthal_have_threadptr"
.LASF82:
	.string	"_seek"
.LASF137:
	.string	"Xthal_cp_mask"
.LASF59:
	.string	"_stderr"
.LASF13:
	.string	"wint_t"
.LASF276:
	.string	"xQueueCreateCountingSemaphore"
.LASF117:
	.string	"__sf_fake_stdin"
.LASF134:
	.string	"Xthal_num_coprocessors"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
