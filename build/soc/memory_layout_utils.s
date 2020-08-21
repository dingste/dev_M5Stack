	.file	"memory_layout_utils.c"
	.text
.Ltext0:
	.section	.text.s_compare_reserved_regions,"ax",@progbits
	.align	4
	.type	s_compare_reserved_regions, @function
s_compare_reserved_regions:
.LFB10:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/src/memory_layout_utils.c"
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 56 0
	l32i.n	a2, a2, 0
.LVL2:
	l32i.n	a8, a3, 0
	.loc 1 57 0
	sub	a2, a2, a8
	retw.n
.LFE10:
	.size	s_compare_reserved_regions, .-s_compare_reserved_regions
	.section	.text.soc_get_available_memory_region_max_count,"ax",@progbits
	.literal_position
	.literal .LC0, soc_reserved_memory_region_end
	.literal .LC1, soc_reserved_memory_region_start
	.literal .LC2, soc_memory_region_count
	.align	4
	.global	soc_get_available_memory_region_max_count
	.type	soc_get_available_memory_region_max_count, @function
soc_get_available_memory_region_max_count:
.LFB9:
	.loc 1 45 0
	entry	sp, 32
.LCFI1:
	.loc 1 49 0
	l32r	a2, .LC1
	l32r	a8, .LC0
	sub	a8, a8, a2
	l32r	a2, .LC2
	srai	a8, a8, 3
	l32i.n	a2, a2, 0
	addi.n	a2, a2, 2
	.loc 1 50 0
	add.n	a2, a8, a2
	retw.n
.LFE9:
	.size	soc_get_available_memory_region_max_count, .-soc_get_available_memory_region_max_count
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"reserved[i].start < reserved[i].end"
.LC17:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/src/memory_layout_utils.c"
.LC19:
	.string	"reserved[i+1].start > reserved[i].start"
.LC21:
	.string	"memory_layout"
.LC23:
	.string	"\033[0;31mE (%d) %s: SOC_RESERVE_MEMORY_REGION region range 0x%08x - 0x%08x overlaps with 0x%08x - 0x%08x\033[0m\n"
	.section	.text.soc_get_available_memory_regions,"ax",@progbits
	.literal_position
	.literal .LC5, soc_memory_region_count
	.literal .LC6, soc_memory_regions
	.literal .LC7, soc_reserved_memory_region_end
	.literal .LC8, soc_reserved_memory_region_start
	.literal .LC9, _data_start
	.literal .LC10, _bss_end
	.literal .LC11, _iram_start
	.literal .LC12, _iram_end
	.literal .LC13, s_compare_reserved_regions
	.literal .LC15, .LC14
	.literal .LC16, __func__$2514
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.global	soc_get_available_memory_regions
	.type	soc_get_available_memory_regions, @function
soc_get_available_memory_regions:
.LFB12:
	.loc 1 104 0
.LVL3:
	entry	sp, 80
	mov.n	a7, sp
.LCFI2:
.LVL4:
	.loc 1 104 0
	s32i.n	a2, a7, 32
.LVL5:
	.loc 1 107 0
	l32r	a2, .LC5
.LVL6:
	.loc 1 108 0
	l32r	a11, .LC6
	.loc 1 107 0
	l32i.n	a8, a2, 0
	slli	a8, a8, 4
	addi	a2, a8, 16
.LVL7:
	sub	a2, sp, a2
	movsp	sp, a2
	addi	a9, sp, 16
.LVL8:
	.loc 1 108 0
	mov.n	a12, a8
	mov.n	a10, a9
	s32i.n	a8, a7, 44
	call8	memcpy
.LVL9:
.LBB15:
.LBB16:
	.loc 1 40 0
	l32r	a11, .LC8
	l32r	a5, .LC7
.LBE16:
.LBE15:
	.loc 1 108 0
	mov.n	a9, a10
.LVL10:
.LBB18:
.LBB17:
	.loc 1 40 0
	sub	a5, a5, a11
	srai	a5, a5, 3
	.loc 1 39 0
	addi.n	a4, a5, 2
.LVL11:
.LBE17:
.LBE18:
	.loc 1 112 0
	slli	a12, a4, 3
	addi	a2, a12, 18
	srli	a2, a2, 4
	slli	a2, a2, 4
	sub	a2, sp, a2
	movsp	sp, a2
.LVL12:
	addi	a3, sp, 16
.LVL13:
.LBB19:
.LBB20:
	.loc 1 65 0
	addi	a12, a12, -16
	addi	a10, a3, 16
	s32i.n	a9, a7, 40
	call8	memcpy
.LVL14:
	.loc 1 70 0
	l32r	a2, .LC9
	.loc 1 76 0
	l32r	a13, .LC13
	.loc 1 70 0
	s32i.n	a2, a3, 0
	.loc 1 71 0
	l32r	a2, .LC10
	.loc 1 76 0
	movi.n	a12, 8
	.loc 1 71 0
	s32i.n	a2, a3, 4
	.loc 1 72 0
	l32r	a2, .LC11
	.loc 1 76 0
	mov.n	a11, a4
	.loc 1 72 0
	s32i.n	a2, a3, 8
	.loc 1 73 0
	l32r	a2, .LC12
	.loc 1 76 0
	mov.n	a10, a3
	.loc 1 73 0
	s32i.n	a2, a3, 12
	.loc 1 76 0
	call8	qsort
.LVL15:
	mov.n	a2, a3
.LBB21:
	.loc 1 83 0
	movi.n	a11, 0
	.loc 1 87 0
	movi.n	a12, -4
	.loc 1 90 0
	addi.n	a5, a5, 1
	l32i.n	a8, a7, 44
	l32i.n	a9, a7, 40
	j	.L4
.LVL16:
.L8:
	.loc 1 88 0
	l32i.n	a6, a2, 4
	.loc 1 87 0
	l32i.n	a10, a2, 0
	.loc 1 88 0
	addi.n	a6, a6, 3
	.loc 1 87 0
	and	a10, a12, a10
	.loc 1 88 0
	and	a6, a6, a12
	.loc 1 87 0
	s32i.n	a10, a2, 0
	.loc 1 88 0
	s32i.n	a6, a2, 4
	.loc 1 89 0
	blt	a10, a6, .L5
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi.n	a11, 0x59
.LVL17:
	j	.L24
.LVL18:
.L5:
	addi.n	a13, a2, 8
	.loc 1 90 0
	bgeu	a11, a5, .L6
	.loc 1 91 0
	l32i.n	a14, a2, 8
	blt	a10, a14, .L7
	l32r	a13, .LC20
	l32r	a12, .LC16
	movi.n	a11, 0x5b
.LVL19:
.L24:
	l32r	a10, .LC18
	call8	__assert_func
.LVL20:
.L7:
	.loc 1 92 0
	bge	a14, a6, .L6
	.loc 1 93 0
	s32i.n	a13, a7, 40
	call8	esp_log_timestamp
.LVL21:
	l32i.n	a13, a7, 40
	mov.n	a11, a10
	l32i.n	a3, a13, 4
.LVL22:
	l32r	a12, .LC22
	s32i.n	a3, sp, 0
.LVL23:
	l32i.n	a15, a13, 0
	l32i.n	a14, a2, 4
	l32i.n	a13, a2, 0
	l32r	a10, .LC24
	call8	ets_printf
.LVL24:
	.loc 1 97 0
	call8	abort
.LVL25:
.L6:
	.loc 1 83 0
	addi.n	a11, a11, 1
.LVL26:
	mov.n	a2, a13
.LVL27:
.L4:
	bltu	a11, a4, .L8
.LBE21:
.LBE20:
.LBE19:
	.loc 1 121 0
	add.n	a8, a9, a8
.LBB24:
.LBB23:
.LBB22:
	.loc 1 83 0
	mov.n	a10, a9
	l32i.n	a2, a7, 32
.LBE22:
.LBE23:
.LBE24:
	.loc 1 121 0
	s32i.n	a8, a7, 36
	j	.L9
.LVL28:
.L18:
.LBB25:
	.loc 1 122 0
	l32i.n	a9, a10, 0
	l32i.n	a15, a10, 4
	l32i.n	a6, a10, 8
	l32i.n	a5, a10, 12
	s32i.n	a6, a7, 24
	s32i.n	a9, a7, 16
	s32i.n	a15, a7, 20
	s32i.n	a5, a7, 28
.LVL29:
	.loc 1 125 0
	add.n	a13, a9, a15
.LVL30:
.LBB26:
	.loc 1 129 0
	mov.n	a14, a3
.LBE26:
	.loc 1 122 0
	mov.n	a8, a15
	.loc 1 124 0
	mov.n	a12, a9
.LBB27:
	.loc 1 129 0
	movi.n	a6, 0
	j	.L10
.LVL31:
.L17:
	.loc 1 130 0
	l32i.n	a11, a14, 4
	bge	a12, a11, .L11
	.loc 1 134 0
	l32i.n	a5, a14, 0
	bge	a5, a13, .L20
	.loc 1 138 0
	blt	a12, a5, .L13
	.loc 1 138 0 is_stmt 0 discriminator 1
	blt	a11, a13, .L22
	j	.L14
.L13:
	sub	a8, a5, a12
	.loc 1 146 0 is_stmt 1 discriminator 1
	bge	a11, a13, .L16
.LVL32:
	.loc 1 159 0
	sub	a9, a9, a11
.LVL33:
	add.n	a15, a9, a15
.LVL34:
	s32i.n	a15, a10, 4
.LVL35:
	.loc 1 160 0
	s32i.n	a11, a10, 0
.LVL36:
	.loc 1 163 0
	movi.n	a6, 0
.LVL37:
	.loc 1 164 0
	j	.L12
.LVL38:
.L22:
	.loc 1 171 0
	sub	a8, a13, a11
.LVL39:
	mov.n	a12, a11
	j	.L11
.LVL40:
.L16:
	.loc 1 177 0
	mov.n	a13, a5
.LVL41:
.L11:
	.loc 1 129 0 discriminator 2
	addi.n	a6, a6, 1
.LVL42:
	addi.n	a14, a14, 8
.LVL43:
.L10:
	.loc 1 129 0 is_stmt 0 discriminator 1
	bltu	a6, a4, .L17
	j	.L20
.LVL44:
.L21:
.LBE27:
	.loc 1 183 0 is_stmt 1
	mov.n	a2, a5
.LVL45:
.L14:
	.loc 1 186 0
	addi	a10, a10, 16
.LVL46:
	mov.n	a5, a2
.LVL47:
.L19:
	mov.n	a2, a5
.LVL48:
.L9:
.LBE25:
	.loc 1 121 0
	l32i.n	a5, a7, 36
	bne	a10, a5, .L18
	.loc 1 190 0
	l32i.n	a3, a7, 32
.LVL49:
	sub	a2, a2, a3
.LVL50:
	srai	a2, a2, 4
	retw.n
.LVL51:
.L20:
.LBB28:
	.loc 1 127 0
	movi.n	a6, 1
.LVL52:
.L12:
	.loc 1 183 0
	s32i.n	a8, a7, 20
.LVL53:
	s32i.n	a8, a2, 4
	l32i.n	a8, a7, 24
.LVL54:
	s32i.n	a12, a7, 16
.LVL55:
	s32i.n	a8, a2, 8
	l32i.n	a8, a7, 28
	s32i.n	a12, a2, 0
	s32i.n	a8, a2, 12
	addi	a5, a2, 16
.LVL56:
	.loc 1 185 0
	beqz.n	a6, .L19
.LVL57:
	j	.L21
.LBE28:
.LFE12:
	.size	soc_get_available_memory_regions, .-soc_get_available_memory_regions
	.section	.rodata.__func__$2514,"a",@progbits
	.type	__func__$2514, @object
	.size	__func__$2514, 27
__func__$2514:
	.string	"s_prepare_reserved_regions"
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI1-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x50
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x518
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x31
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xa9
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x48
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x48
	.byte	0x7
	.byte	0x1f
	.4byte	0xdd
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0x48
	.4byte	0x11d
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4a
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x4b
	.4byte	0x73
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4c
	.4byte	0x73
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4d
	.4byte	0x68
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4e
	.4byte	0xe4
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x56
	.4byte	0x149
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x58
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.string	"end"
	.byte	0x5
	.byte	0x59
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x5a
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x25
	.4byte	0x73
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1
	.byte	0x34
	.4byte	0x41
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x34
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x34
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"r_a"
	.byte	0x1
	.byte	0x36
	.4byte	0x1ae
	.4byte	.LLST1
	.uleb128 0x12
	.string	"r_b"
	.byte	0x1
	.byte	0x37
	.4byte	0x1ae
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0x6
	.4byte	0x149
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2c
	.4byte	0x73
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	0x209
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3f
	.4byte	0x209
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3f
	.4byte	0x73
	.uleb128 0x16
	.4byte	.LASF29
	.4byte	0x21f
	.4byte	.LASF59
	.uleb128 0x17
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x73
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x149
	.uleb128 0x19
	.4byte	0x93
	.4byte	0x21f
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x20f
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x67
	.4byte	0x73
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x1c
	.4byte	.LASF30
	.byte	0x1
	.byte	0x67
	.4byte	0x406
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0x69
	.4byte	0x406
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	0x41f
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6b
	.4byte	0x40c
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6d
	.4byte	0x406
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6f
	.4byte	0x73
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0x70
	.4byte	0x424
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF29
	.4byte	0x446
	.uleb128 0x21
	.4byte	0x154
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6f
	.uleb128 0x22
	.4byte	0x1ce
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x72
	.4byte	0x38e
	.uleb128 0x23
	.4byte	0x1e5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x1da
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x26
	.4byte	0x1f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2514
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x34a
	.uleb128 0x28
	.4byte	0x1fe
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x4db
	.4byte	0x310
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x4e6
	.uleb128 0x29
	.4byte	.LVL24
	.4byte	0x4f1
	.4byte	0x340
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0x4fc
	.byte	0
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x507
	.4byte	0x368
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x40
	.byte	0x1c
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL15
	.4byte	0x510
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_compare_reserved_regions
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x3f5
	.uleb128 0x11
	.string	"in"
	.byte	0x1
	.byte	0x7a
	.4byte	0x11d
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7c
	.4byte	0x68
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7e
	.4byte	0xdd
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7f
	.4byte	0xdd
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x81
	.4byte	0x73
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL9
	.4byte	0x507
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x19
	.4byte	0x11d
	.4byte	0x41f
	.uleb128 0x2d
	.4byte	0x85
	.4byte	0x25b
	.byte	0
	.uleb128 0x6
	.4byte	0x85
	.uleb128 0x19
	.4byte	0x149
	.4byte	0x436
	.uleb128 0x2e
	.4byte	0x85
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.uleb128 0x19
	.4byte	0x93
	.4byte	0x446
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.4byte	0x436
	.uleb128 0x12
	.string	"TAG"
	.byte	0x1
	.byte	0x13
	.4byte	0x45d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC21
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.4byte	0x46e
	.byte	0x2
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x19
	.4byte	0x11d
	.4byte	0x47e
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.4byte	0x489
	.uleb128 0x6
	.4byte	0x473
	.uleb128 0x31
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.4byte	0x46e
	.uleb128 0x31
	.4byte	.LASF42
	.byte	0x1
	.byte	0x19
	.4byte	0x149
	.uleb128 0x31
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1a
	.4byte	0x149
	.uleb128 0x31
	.4byte	.LASF44
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x31
	.4byte	.LASF45
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x31
	.4byte	.LASF46
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x31
	.4byte	.LASF47
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x32
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.uleb128 0x32
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0xde
	.uleb128 0x32
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.byte	0x47
	.uleb128 0x33
	.4byte	.LASF61
	.4byte	.LASF61
	.uleb128 0x32
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.byte	0x88
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL28
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL9-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LVL25
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LVL51
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7a
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x5
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x8
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x8
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x9
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0xa
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL57
	.4byte	.LFE12
	.2byte	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"count"
.LASF9:
	.string	"size_t"
.LASF45:
	.string	"_bss_end"
.LASF23:
	.string	"type"
.LASF6:
	.string	"long long unsigned int"
.LASF58:
	.string	"soc_get_available_memory_region_max_count"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long int"
.LASF57:
	.string	"s_compare_reserved_regions"
.LASF34:
	.string	"num_reserved"
.LASF47:
	.string	"_iram_end"
.LASF61:
	.string	"memcpy"
.LASF56:
	.string	"s_get_num_reserved_regions"
.LASF55:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/soc"
.LASF52:
	.string	"qsort"
.LASF7:
	.string	"__intptr_t"
.LASF27:
	.string	"reserved"
.LASF4:
	.string	"unsigned int"
.LASF12:
	.string	"long unsigned int"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"regions"
.LASF24:
	.string	"iram_address"
.LASF8:
	.string	"intptr_t"
.LASF43:
	.string	"soc_reserved_memory_region_end"
.LASF39:
	.string	"EXTRA_RESERVED_REGIONS"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF11:
	.string	"sizetype"
.LASF50:
	.string	"ets_printf"
.LASF42:
	.string	"soc_reserved_memory_region_start"
.LASF54:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/src/memory_layout_utils.c"
.LASF20:
	.string	"_Bool"
.LASF48:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF59:
	.string	"s_prepare_reserved_regions"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"esp_log_timestamp"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF29:
	.string	"__func__"
.LASF33:
	.string	"in_region"
.LASF40:
	.string	"soc_memory_regions"
.LASF37:
	.string	"copy_in_to_out"
.LASF13:
	.string	"char"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF32:
	.string	"in_regions"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF51:
	.string	"abort"
.LASF44:
	.string	"_data_start"
.LASF26:
	.string	"soc_reserved_region_t"
.LASF38:
	.string	"move_to_next"
.LASF60:
	.string	"soc_get_available_memory_regions"
.LASF41:
	.string	"soc_memory_region_count"
.LASF46:
	.string	"_iram_start"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"start"
.LASF36:
	.string	"in_end"
.LASF35:
	.string	"in_start"
.LASF31:
	.string	"out_region"
.LASF25:
	.string	"soc_memory_region_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
