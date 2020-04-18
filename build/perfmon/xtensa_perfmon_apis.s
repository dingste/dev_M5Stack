	.file	"xtensa_perfmon_apis.c"
	.text
.Ltext0:
	.section	.rodata.xtensa_perfmon_exec.str1.1,"aMS",@progbits,1
.LC1:
	.string	"perfmon"
.LC3:
	.string	"\033[0;31mE (%d) %s: Parameter call_function must be defined.\033[0m\n"
.LC5:
	.string	"\033[0;31mE (%d) %s: Parameter callback must be defined.\033[0m\n"
	.global	__divsf3
	.section	.text.xtensa_perfmon_exec,"ax",@progbits
	.literal_position
	.literal .LC0, 0x00000000
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, 65535
	.align	4
	.global	xtensa_perfmon_exec
	.type	xtensa_perfmon_exec, @function
xtensa_perfmon_exec:
.LVL0:
.LFB3:
	.file 1 "/home/dieter/Development/esp-idf/components/perfmon/xtensa_perfmon_apis.c"
	.loc 1 22 1 view -0
	.loc 1 22 1 is_stmt 0 view .LVU1
	entry	sp, 48
.LCFI0:
	.loc 1 23 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 24 5 view .LVU3
	.loc 1 24 8 is_stmt 0 view .LVU4
	l32i.n	a3, a2, 12
	bnez.n	a3, .L2
	.loc 1 25 9 is_stmt 1 discriminator 2 view .LVU5
	.loc 1 25 14 discriminator 2 view .LVU6
	.loc 1 25 40 discriminator 2 view .LVU7
	.loc 1 25 45 discriminator 2 view .LVU8
	.loc 1 25 82 discriminator 2 view .LVU9
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC2
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC4
	j	.L11
.L2:
	.loc 1 28 5 view .LVU10
	.loc 1 28 8 is_stmt 0 view .LVU11
	l32i.n	a3, a2, 16
.LBB2:
	.loc 1 32 17 view .LVU12
	movi.n	a8, 0
.LBE2:
	.loc 1 28 8 view .LVU13
	bne	a3, a8, .L4
	.loc 1 29 9 is_stmt 1 discriminator 2 view .LVU14
	.loc 1 29 14 discriminator 2 view .LVU15
	.loc 1 29 40 discriminator 2 view .LVU16
	.loc 1 29 45 discriminator 2 view .LVU17
	.loc 1 29 82 discriminator 2 view .LVU18
	call8	esp_log_timestamp
.LVL3:
	l32r	a11, .LC2
	l32r	a12, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
.L11:
	.loc 1 29 82 is_stmt 0 discriminator 2 view .LVU19
	movi.n	a10, 1
	call8	esp_log_write
.LVL4:
	.loc 1 30 9 is_stmt 1 discriminator 2 view .LVU20
	.loc 1 30 16 is_stmt 0 discriminator 2 view .LVU21
	movi	a2, 0x102
.LVL5:
	.loc 1 30 16 discriminator 2 view .LVU22
	j	.L1
.LVL6:
.L5:
.LBB12:
.LBB3:
.LBB4:
.LBB5:
	.loc 1 39 13 is_stmt 1 view .LVU23
	s32i.n	a8, sp, 8
	ssi	f0, sp, 4
	call8	xtensa_perfmon_stop
.LVL7:
	.loc 1 40 13 view .LVU24
	.loc 1 42 13 view .LVU25
	.loc 1 42 23 is_stmt 0 view .LVU26
	l32i.n	a14, a2, 24
	.loc 1 42 16 view .LVU27
	movi.n	a9, -1
	xor	a15, a9, a14
	extui	a15, a15, 31, 1
.LVL8:
	.loc 1 43 13 is_stmt 1 view .LVU28
	movi.n	a11, 0
	l32r	a12, .LC7
	mov.n	a13, a15
	mov.n	a10, a11
	s32i.n	a15, sp, 0
	call8	xtensa_perfmon_init
.LVL9:
	.loc 1 44 13 view .LVU29
	l32i.n	a10, a2, 32
	l32i.n	a15, sp, 0
	.loc 1 44 87 is_stmt 0 view .LVU30
	add.n	a11, a10, a6
	.loc 1 44 55 view .LVU31
	add.n	a10, a10, a7
	.loc 1 44 13 view .LVU32
	l32i.n	a14, a2, 24
	l16ui	a12, a11, 0
	l16ui	a11, a10, 0
	mov.n	a13, a15
	movi.n	a10, 1
	call8	xtensa_perfmon_init
.LVL10:
	.loc 1 45 13 is_stmt 1 view .LVU33
	call8	xtensa_perfmon_start
.LVL11:
	.loc 1 46 13 view .LVU34
	l32i.n	a11, a2, 12
	l32i.n	a10, a2, 8
.LBE5:
	.loc 1 37 55 is_stmt 0 view .LVU35
	addi.n	a5, a5, 1
.LVL12:
.LBB6:
	.loc 1 46 13 view .LVU36
	callx8	a11
.LVL13:
	.loc 1 47 13 is_stmt 1 view .LVU37
	call8	xtensa_perfmon_stop
.LVL14:
	.loc 1 48 13 view .LVU38
	.loc 1 48 27 is_stmt 0 view .LVU39
	movi.n	a10, 0
	call8	xtensa_perfmon_value
.LVL15:
	mov.n	a12, a10
.LVL16:
	.loc 1 49 13 is_stmt 1 view .LVU40
	.loc 1 49 27 is_stmt 0 view .LVU41
	movi.n	a10, 1
.LVL17:
	.loc 1 49 27 view .LVU42
	s32i.n	a12, sp, 0
	call8	xtensa_perfmon_value
.LVL18:
	.loc 1 50 13 is_stmt 1 view .LVU43
	.loc 1 50 39 is_stmt 0 view .LVU44
	l32i.n	a11, a2, 0
	float.s	f1, a11, 0
	rfr	a11, f1
	ufloat.s	f1, a10, 0
	rfr	a10, f1
.LVL19:
	.loc 1 50 39 view .LVU45
	call8	__divsf3
.LVL20:
	.loc 1 50 26 view .LVU46
	lsi	f0, sp, 4
	wfr	f1, a10
	add.s	f0, f0, f1
.LVL21:
	.loc 1 51 13 is_stmt 1 view .LVU47
	l32i.n	a12, sp, 0
.LBE6:
	.loc 1 37 55 is_stmt 0 view .LVU48
	l32i.n	a8, sp, 8
	minu	a4, a4, a12
.LVL22:
.LBB7:
	.loc 1 54 13 is_stmt 1 view .LVU49
	maxu	a3, a3, a12
.LVL23:
	.loc 1 57 13 view .LVU50
	.loc 1 57 18 view .LVU51
.L6:
	.loc 1 57 18 is_stmt 0 view .LVU52
.LBE7:
	.loc 1 37 9 discriminator 1 view .LVU53
	l32i.n	a10, a2, 0
	bltu	a5, a10, .L5
.LBE4:
	.loc 1 59 9 is_stmt 1 view .LVU54
.LVL24:
	.loc 1 61 9 view .LVU55
	.loc 1 61 34 is_stmt 0 view .LVU56
	ufloat.s	f2, a3, 0
	lsi	f3, a2, 4
	.loc 1 59 18 view .LVU57
	sub	a4, a3, a4
.LVL25:
	.loc 1 61 34 view .LVU58
	mul.s	f2, f2, f3
	.loc 1 61 23 view .LVU59
	ufloat.s	f1, a4, 0
	.loc 1 61 12 view .LVU60
	olt.s	b0, f2, f1
	bt	b0, .L8
	.loc 1 64 13 is_stmt 1 discriminator 2 view .LVU61
	l32i.n	a3, a2, 32
.LVL26:
	.loc 1 64 13 is_stmt 0 discriminator 2 view .LVU62
	l32i.n	a4, a2, 16
.LVL27:
	.loc 1 64 13 discriminator 2 view .LVU63
	add.n	a6, a3, a6
	add.n	a3, a3, a7
	l32i.n	a12, a6, 0
	l32i.n	a11, a3, 0
	l32i.n	a10, a2, 20
	utrunc.s	a13, f0, 0
	s32i.n	a8, sp, 8
	callx8	a4
.LVL28:
	.loc 1 64 13 discriminator 2 view .LVU64
.LBE3:
	.loc 1 32 52 discriminator 2 view .LVU65
	l32i.n	a8, sp, 8
	addi.n	a8, a8, 1
.LVL29:
.L4:
	.loc 1 32 5 discriminator 1 view .LVU66
	l32i.n	a3, a2, 28
	bgeu	a8, a3, .L9
.LBB11:
	.loc 1 35 15 view .LVU67
	l32r	a3, .LC0
	slli	a7, a8, 3
.LBB9:
	.loc 1 37 21 view .LVU68
	movi.n	a5, 0
.LBE9:
	.loc 1 35 15 view .LVU69
	wfr	f0, a3
.LBB10:
.LBB8:
	.loc 1 44 87 view .LVU70
	addi.n	a6, a7, 4
.LBE8:
.LBE10:
	.loc 1 34 18 view .LVU71
	mov.n	a3, a5
	.loc 1 33 18 view .LVU72
	movi.n	a4, -1
	j	.L6
.LVL30:
.L8:
	.loc 1 62 20 view .LVU73
	movi.n	a2, -1
.LVL31:
	.loc 1 62 20 view .LVU74
	j	.L1
.LVL32:
.L9:
	.loc 1 62 20 view .LVU75
.LBE11:
.LBE12:
	.loc 1 67 12 view .LVU76
	movi.n	a2, 0
.LVL33:
.L1:
	.loc 1 68 1 view .LVU77
	retw.n
.LFE3:
	.size	xtensa_perfmon_exec, .-xtensa_perfmon_exec
	.section	.rodata.xtensa_perfmon_view_cb.str1.1,"aMS",@progbits,1
.LC9:
	.string	"Value = %9i, select = %2i, mask = %04x.  %s.\n"
.LC12:
	.string	"                  %s\n"
	.section	.text.xtensa_perfmon_view_cb,"ax",@progbits
	.literal_position
	.literal .LC8, xtensa_perfmon_select_table
	.literal .LC10, .LC9
	.literal .LC11, xtensa_perfmon_masks_table
	.literal .LC13, .LC12
	.align	4
	.global	xtensa_perfmon_view_cb
	.type	xtensa_perfmon_view_cb, @function
xtensa_perfmon_view_cb:
.LVL34:
.LFB4:
	.loc 1 71 1 is_stmt 1 view -0
	.loc 1 71 1 is_stmt 0 view .LVU79
	entry	sp, 32
.LCFI1:
	.loc 1 72 5 is_stmt 1 view .LVU80
	.loc 1 73 5 view .LVU81
	.loc 1 73 8 is_stmt 0 view .LVU82
	bnez.n	a2, .L13
	.loc 1 76 9 is_stmt 1 view .LVU83
	.loc 1 76 19 is_stmt 0 view .LVU84
	call8	__getreent
.LVL35:
	.loc 1 76 16 view .LVU85
	l32i.n	a2, a10, 8
.LVL36:
.L13:
	.loc 1 78 5 is_stmt 1 view .LVU86
.LBB13:
	.loc 1 78 10 view .LVU87
	.loc 1 78 10 is_stmt 0 view .LVU88
	l32r	a6, .LC8
	.loc 1 78 5 view .LVU89
	j	.L14
.LVL37:
.L16:
	.loc 1 79 9 is_stmt 1 view .LVU90
	.loc 1 79 12 is_stmt 0 view .LVU91
	bne	a8, a3, .L15
	.loc 1 80 13 is_stmt 1 view .LVU92
	l32i.n	a15, a6, 4
	l32r	a11, .LC10
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a5
	mov.n	a10, a2
	call8	fprintf
.LVL38:
.L15:
	.loc 1 80 13 is_stmt 0 view .LVU93
	addi.n	a6, a6, 8
.L14:
	.loc 1 78 52 discriminator 1 view .LVU94
	l32i.n	a8, a6, 0
	.loc 1 78 5 discriminator 1 view .LVU95
	bnei	a8, -1, .L16
	l32r	a5, .LC11
.LVL39:
	.loc 1 78 5 discriminator 1 view .LVU96
	j	.L17
.L19:
.LBE13:
.LBB14:
	.loc 1 84 9 is_stmt 1 view .LVU97
	.loc 1 84 12 is_stmt 0 view .LVU98
	bne	a6, a3, .L18
	.loc 1 84 101 discriminator 1 view .LVU99
	l32i.n	a6, a5, 4
	.loc 1 84 62 discriminator 1 view .LVU100
	bnone	a4, a6, .L18
	.loc 1 85 13 is_stmt 1 view .LVU101
	l32i.n	a12, a5, 8
	l32r	a11, .LC13
	mov.n	a10, a2
	call8	fprintf
.LVL40:
.L18:
	.loc 1 85 13 is_stmt 0 view .LVU102
	addi.n	a5, a5, 12
.L17:
	.loc 1 83 51 discriminator 1 view .LVU103
	l32i.n	a6, a5, 0
	.loc 1 83 5 discriminator 1 view .LVU104
	bnei	a6, -1, .L19
.LBE14:
	.loc 1 88 1 view .LVU105
	retw.n
.LFE4:
	.size	xtensa_perfmon_view_cb, .-xtensa_perfmon_view_cb
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h"
	.file 10 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/perfmon/include/xtensa_perfmon_masks.h"
	.file 13 "/home/dieter/Development/esp-idf/components/perfmon/include/xtensa_perfmon_apis.h"
	.file 14 "/home/dieter/Development/esp-idf/components/perfmon/include/xtensa_perfmon_access.h"
	.file 15 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe7f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0xc
	.4byte	.LASF175
	.4byte	.LASF176
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0xd
	.4byte	0x3f
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x31
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x3f
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0x81
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x99
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x31
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	0x4d
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0x31
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x11b
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xc5
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0xf7
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0x8d
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xd
	.byte	0x4
	.4byte	0x142
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0xe
	.4byte	0x142
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x135
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1b4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1b4
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x3f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x3f
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1ba
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x15a
	.uleb128 0x8
	.4byte	0x14e
	.4byte	0x1ca
	.uleb128 0x9
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x24d
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x3f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x3f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x3f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x3f
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x3f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x3f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x3f
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x292
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x292
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x292
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x14e
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x14e
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x133
	.4byte	0x2a2
	.uleb128 0x9
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x2e4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x2e4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x3f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x2ea
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x301
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2a2
	.uleb128 0x8
	.4byte	0x2fa
	.4byte	0x2fa
	.uleb128 0x9
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x300
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24d
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x32f
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x32f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x3f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3a8
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x32f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x3f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x54
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x54
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x307
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x3f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x50c
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x335
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x50c
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x3f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x752
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x752
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x752
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x3f
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x13c
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x3f
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x3f
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8ba
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8c0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8d1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x3f
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x3f
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x13c
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8d7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8dd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x13c
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x8ee
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2e4
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2a2
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x713
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x752
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8fa
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x13c
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3ad
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x655
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x32f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x3f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x54
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x54
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x307
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x3f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x50c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x133
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x673
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6a2
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6c6
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x6e0
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x307
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x32f
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x3f
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x6e6
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x6f6
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x307
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x3f
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xa0
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x127
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x11b
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x3f
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x3f
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x133
	.uleb128 0x18
	.4byte	0x13c
	.uleb128 0x18
	.4byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x655
	.uleb128 0x17
	.4byte	0x3f
	.4byte	0x697
	.uleb128 0x18
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x133
	.uleb128 0x18
	.4byte	0x697
	.uleb128 0x18
	.4byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x149
	.uleb128 0xe
	.4byte	0x697
	.uleb128 0xd
	.byte	0x4
	.4byte	0x679
	.uleb128 0x17
	.4byte	0xac
	.4byte	0x6c6
	.uleb128 0x18
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x133
	.uleb128 0x18
	.4byte	0xac
	.uleb128 0x18
	.4byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x17
	.4byte	0x3f
	.4byte	0x6e0
	.uleb128 0x18
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x133
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x8
	.4byte	0x4d
	.4byte	0x6f6
	.uleb128 0x9
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x4d
	.4byte	0x706
	.uleb128 0x9
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x512
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x74c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x74c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x752
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x713
	.uleb128 0xd
	.byte	0x4
	.4byte	0x706
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x79f
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x79f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x79f
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x38
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x38
	.4byte	0x7af
	.uleb128 0x9
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x7f6
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1b4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x3f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1b4
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7f6
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8a5
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x13c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x11b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x11b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x11b
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8a5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x3f
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x11b
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x11b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x11b
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x11b
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x11b
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x142
	.4byte	0x8b5
	.uleb128 0x9
	.4byte	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF177
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7af
	.uleb128 0x1a
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0x50c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x758
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x1a
	.4byte	0x8ee
	.uleb128 0x18
	.4byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3a8
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3a8
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3a8
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x50c
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x13c
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.uleb128 0xe
	.4byte	0x94c
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x9
	.byte	0x42
	.byte	0x10
	.4byte	0x706
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xa
	.byte	0x18
	.byte	0x11
	.4byte	0x940
	.uleb128 0xd
	.byte	0x4
	.4byte	0x97b
	.uleb128 0x1a
	.4byte	0x986
	.uleb128 0x18
	.4byte	0x133
	.byte	0
	.uleb128 0x8
	.4byte	0x69d
	.4byte	0x996
	.uleb128 0x9
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x986
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x996
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0xf
	.byte	0x23
	.byte	0xe
	.4byte	0x9da
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x8
	.byte	0xc
	.byte	0x1f
	.byte	0x10
	.4byte	0xa02
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xc
	.byte	0x20
	.byte	0x9
	.4byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0x697
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xc
	.byte	0x22
	.byte	0x3
	.4byte	0x9da
	.uleb128 0xe
	.4byte	0xa02
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0xc
	.byte	0xc
	.byte	0x29
	.byte	0x10
	.4byte	0xa48
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xc
	.byte	0x2a
	.byte	0x9
	.4byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xc
	.byte	0x2b
	.byte	0x9
	.4byte	0x3f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xc
	.byte	0x2c
	.byte	0x11
	.4byte	0x697
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xc
	.byte	0x2d
	.byte	0x3
	.4byte	0xa13
	.uleb128 0xe
	.4byte	0xa48
	.uleb128 0x8
	.4byte	0xa0e
	.4byte	0xa64
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.4byte	0xa59
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0xc
	.byte	0x37
	.byte	0x26
	.4byte	0xa64
	.uleb128 0x8
	.4byte	0xa54
	.4byte	0xa80
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.4byte	0xa75
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0xc
	.byte	0x3e
	.byte	0x25
	.4byte	0xa80
	.uleb128 0x8
	.4byte	0x958
	.4byte	0xaa1
	.uleb128 0x9
	.4byte	0x31
	.byte	0xeb
	.byte	0
	.uleb128 0xe
	.4byte	0xa91
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0xc
	.byte	0x45
	.byte	0x17
	.4byte	0xaa1
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x24
	.byte	0xd
	.byte	0x1f
	.byte	0x10
	.4byte	0xb35
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xd
	.byte	0x20
	.byte	0x9
	.4byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xd
	.byte	0x21
	.byte	0xb
	.4byte	0xb35
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xd
	.byte	0x22
	.byte	0xb
	.4byte	0x133
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xd
	.byte	0x23
	.byte	0xc
	.4byte	0x975
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xd
	.byte	0x24
	.byte	0xc
	.4byte	0xb56
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xd
	.byte	0x25
	.byte	0xb
	.4byte	0x133
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xd
	.byte	0x26
	.byte	0x9
	.4byte	0x3f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xd
	.byte	0x29
	.byte	0xe
	.4byte	0x94c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xd
	.byte	0x2a
	.byte	0x15
	.4byte	0xb5c
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF155
	.uleb128 0x1a
	.4byte	0xb56
	.uleb128 0x18
	.4byte	0x133
	.uleb128 0x18
	.4byte	0x94c
	.uleb128 0x18
	.4byte	0x94c
	.uleb128 0x18
	.4byte	0x94c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb3c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x958
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0xd
	.byte	0x2b
	.byte	0x3
	.4byte	0xab2
	.uleb128 0xe
	.4byte	0xb62
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x697
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc73
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0x1
	.byte	0x46
	.byte	0x23
	.4byte	0x133
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x46
	.byte	0x34
	.4byte	0x94c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x46
	.byte	0x45
	.4byte	0x94c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF158
	.byte	0x1
	.byte	0x46
	.byte	0x54
	.4byte	0x94c
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x24
	.4byte	.LASF159
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0xc73
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xc38
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.4byte	0x3f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0xe21
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xc69
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0x3f
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0xe21
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL35
	.4byte	0xe2d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x95d
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x1
	.byte	0x15
	.byte	0xb
	.4byte	0x969
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1b
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x1
	.byte	0x15
	.byte	0x3e
	.4byte	0xe1b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2b
	.4byte	.LASF180
	.byte	0x1
	.byte	0x17
	.byte	0xf
	.4byte	0x969
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.4byte	0xdf9
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0x20
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.4byte	.LASF161
	.byte	0x1
	.byte	0x21
	.byte	0x12
	.4byte	0x94c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.byte	0x22
	.byte	0x12
	.4byte	0x94c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.4byte	0xb35
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.4byte	0x94c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xdef
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x24
	.4byte	.LASF165
	.byte	0x1
	.byte	0x28
	.byte	0x11
	.4byte	0x3f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.string	"p0"
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.4byte	0x94c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.string	"p1"
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.4byte	0x94c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xe3a
	.uleb128 0x2e
	.4byte	.LVL9
	.4byte	0xe46
	.4byte	0xda6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL10
	.4byte	0xe46
	.4byte	0xdb9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL11
	.4byte	0xe52
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0xe3a
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0xe5e
	.4byte	0xdde
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xe5e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL28
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xe6a
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0xe6a
	.uleb128 0x27
	.4byte	.LVL4
	.4byte	0xe76
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb6e
	.uleb128 0x30
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x9
	.byte	0xc4
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x6
	.2byte	0x312
	.byte	0x13
	.uleb128 0x30
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xe
	.byte	0x4e
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xe
	.byte	0x2d
	.byte	0xb
	.uleb128 0x30
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xe
	.byte	0x45
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xe
	.byte	0x5c
	.byte	0xa
	.uleb128 0x30
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xf
	.byte	0x5b
	.byte	0xa
	.uleb128 0x30
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xf
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU86
	.uleb128 0
.LLST12:
	.4byte	.LVL36
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU88
	.uleb128 .LVU90
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU77
.LLST1:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU23
	.uleb128 .LVU58
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU23
	.uleb128 .LVU62
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU47
	.uleb128 .LVU64
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL21
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU55
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU63
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU23
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU43
	.uleb128 .LVU45
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF157:
	.string	"params"
.LASF78:
	.string	"_misc"
.LASF10:
	.string	"_lock_t"
.LASF40:
	.string	"_on_exit_args"
.LASF83:
	.string	"_write"
.LASF110:
	.string	"_wctomb_state"
.LASF71:
	.string	"_r48"
.LASF79:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF178:
	.string	"xtensa_perfmon_view_cb"
.LASF55:
	.string	"_lbfsize"
.LASF53:
	.string	"_flags"
.LASF6:
	.string	"__int32_t"
.LASF141:
	.string	"xtensa_perfmon_masks_t"
.LASF126:
	.string	"FILE"
.LASF58:
	.string	"_errno"
.LASF172:
	.string	"esp_log_timestamp"
.LASF133:
	.string	"ESP_LOG_DEBUG"
.LASF167:
	.string	"__getreent"
.LASF120:
	.string	"__sf_fake_stdout"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF82:
	.string	"_read"
.LASF153:
	.string	"counters_size"
.LASF114:
	.string	"_mbrlen_state"
.LASF60:
	.string	"_stdout"
.LASF152:
	.string	"tracelevel"
.LASF14:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF81:
	.string	"_cookie"
.LASF170:
	.string	"xtensa_perfmon_start"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF103:
	.string	"_result"
.LASF142:
	.string	"xtensa_perfmon_select_table"
.LASF125:
	.string	"uint32_t"
.LASF33:
	.string	"__tm_hour"
.LASF135:
	.string	"xtensa_perfmon_select"
.LASF18:
	.string	"__count"
.LASF155:
	.string	"float"
.LASF32:
	.string	"__tm_min"
.LASF77:
	.string	"__sf"
.LASF97:
	.string	"_rand48"
.LASF180:
	.string	"result"
.LASF104:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"_asctime_buf"
.LASF80:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF164:
	.string	"call_diff"
.LASF93:
	.string	"__FILE"
.LASF89:
	.string	"_offset"
.LASF86:
	.string	"_ubuf"
.LASF158:
	.string	"value"
.LASF165:
	.string	"kernelcnt"
.LASF63:
	.string	"_emergency"
.LASF161:
	.string	"call_min"
.LASF5:
	.string	"size_t"
.LASF31:
	.string	"__tm_sec"
.LASF123:
	.string	"suboptarg"
.LASF38:
	.string	"__tm_yday"
.LASF62:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF25:
	.string	"_next"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF156:
	.string	"xtensa_perfmon_config_t"
.LASF129:
	.string	"ESP_LOG_NONE"
.LASF138:
	.string	"xtensa_perfmon_select_t"
.LASF19:
	.string	"__value"
.LASF105:
	.string	"_p5s"
.LASF151:
	.string	"callback_params"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF109:
	.string	"_mblen_state"
.LASF169:
	.string	"xtensa_perfmon_init"
.LASF23:
	.string	"char"
.LASF34:
	.string	"__tm_mday"
.LASF146:
	.string	"repeat_count"
.LASF74:
	.string	"_sig_func"
.LASF115:
	.string	"_mbrtowc_state"
.LASF148:
	.string	"call_params"
.LASF21:
	.string	"_flock_t"
.LASF16:
	.string	"__wch"
.LASF96:
	.string	"_iobs"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF85:
	.string	"_close"
.LASF64:
	.string	"__sdidinit"
.LASF52:
	.string	"__sFILE_fake"
.LASF163:
	.string	"result_value"
.LASF59:
	.string	"_stdin"
.LASF68:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF50:
	.string	"_base"
.LASF137:
	.string	"description"
.LASF106:
	.string	"_freelist"
.LASF99:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF117:
	.string	"_wcrtomb_state"
.LASF54:
	.string	"_file"
.LASF128:
	.string	"exc_cause_table"
.LASF67:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF102:
	.string	"_mprec"
.LASF39:
	.string	"__tm_isdst"
.LASF132:
	.string	"ESP_LOG_INFO"
.LASF140:
	.string	"mask"
.LASF173:
	.string	"esp_log_write"
.LASF35:
	.string	"__tm_mon"
.LASF75:
	.string	"_atexit0"
.LASF45:
	.string	"_atexit"
.LASF91:
	.string	"_mbstate"
.LASF160:
	.string	"config"
.LASF4:
	.string	"short int"
.LASF139:
	.string	"xtensa_perfmon_masks"
.LASF12:
	.string	"long int"
.LASF27:
	.string	"_sign"
.LASF171:
	.string	"xtensa_perfmon_value"
.LASF56:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF122:
	.string	"_global_impure_ptr"
.LASF36:
	.string	"__tm_year"
.LASF166:
	.string	"fprintf"
.LASF107:
	.string	"_misc_reent"
.LASF130:
	.string	"ESP_LOG_ERROR"
.LASF72:
	.string	"_localtime_buf"
.LASF69:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF112:
	.string	"_l64a_buf"
.LASF162:
	.string	"call_max"
.LASF149:
	.string	"call_function"
.LASF88:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF90:
	.string	"_lock"
.LASF22:
	.string	"long unsigned int"
.LASF179:
	.string	"xtensa_perfmon_exec"
.LASF134:
	.string	"ESP_LOG_VERBOSE"
.LASF95:
	.string	"_niobs"
.LASF174:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF124:
	.string	"int32_t"
.LASF42:
	.string	"_dso_handle"
.LASF144:
	.string	"xtensa_perfmon_select_mask_all"
.LASF154:
	.string	"select_mask"
.LASF70:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF131:
	.string	"ESP_LOG_WARN"
.LASF7:
	.string	"__uint32_t"
.LASF113:
	.string	"_getdate_err"
.LASF100:
	.string	"_add"
.LASF127:
	.string	"esp_err_t"
.LASF49:
	.string	"__sbuf"
.LASF150:
	.string	"callback"
.LASF94:
	.string	"_glue"
.LASF76:
	.string	"__sglue"
.LASF108:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbtowc_state"
.LASF176:
	.string	"/home/dieter/Development/ProjektEi/build/perfmon"
.LASF136:
	.string	"select"
.LASF66:
	.string	"_locale"
.LASF41:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF147:
	.string	"max_deviation"
.LASF57:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF159:
	.string	"handle"
.LASF175:
	.string	"/home/dieter/Development/esp-idf/components/perfmon/xtensa_perfmon_apis.c"
.LASF43:
	.string	"_fntypes"
.LASF51:
	.string	"_size"
.LASF168:
	.string	"xtensa_perfmon_stop"
.LASF13:
	.string	"_off_t"
.LASF87:
	.string	"_nbuf"
.LASF145:
	.string	"xtensa_perfmon_config"
.LASF65:
	.string	"_unspecified_locale_info"
.LASF121:
	.string	"__sf_fake_stderr"
.LASF92:
	.string	"_flags2"
.LASF44:
	.string	"_is_cxa"
.LASF98:
	.string	"_seed"
.LASF101:
	.string	"_rand_next"
.LASF177:
	.string	"__locale_t"
.LASF84:
	.string	"_seek"
.LASF61:
	.string	"_stderr"
.LASF143:
	.string	"xtensa_perfmon_masks_table"
.LASF15:
	.string	"wint_t"
.LASF119:
	.string	"__sf_fake_stdin"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
