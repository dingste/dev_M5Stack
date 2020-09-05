	.file	"buffer.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"size > 0"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/buffer.c"
.LC5:
	.string	"BT_OSI"
.LC7:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate buffer of %zu bytes.\033[0m\n"
	.section	.text.buffer_new,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2427
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	buffer_new
	.type	buffer_new, @function
buffer_new:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/buffer.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 31 0
	mov.n	a3, a2
	.loc 1 32 0
	bnez.n	a2, .L2
	.loc 1 32 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi.n	a11, 0x20
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 34 0 is_stmt 1
	addi.n	a10, a2, 12
	call8	malloc
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 35 0
	bnez.n	a10, .L3
	.loc 1 36 0 discriminator 1
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC6
	l32r	a15, .LC2
	l32r	a12, .LC8
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 37 0 discriminator 1
	retw.n
.L3:
	.loc 1 40 0
	s32i.n	a10, a2, 0
	.loc 1 41 0
	movi.n	a8, 1
	s32i.n	a8, a10, 4
	.loc 1 42 0
	s32i.n	a3, a10, 8
	.loc 1 45 0
	retw.n
.LFE0:
	.size	buffer_new, .-buffer_new
	.section	.rodata.str1.1
.LC9:
	.string	"buf != NULL"
.LC13:
	.string	"slice_size > 0"
.LC15:
	.string	"slice_size <= buf->length"
.LC18:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate new buffer for slice of length %zu.\033[0m\n"
	.section	.text.buffer_new_slice,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, __func__$2437
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, .LC5
	.literal .LC19, .LC18
	.align	4
	.global	buffer_new_slice
	.type	buffer_new_slice, @function
buffer_new_slice:
.LFB2:
	.loc 1 54 0
.LVL6:
	entry	sp, 48
.LCFI1:
	.loc 1 54 0
	mov.n	a4, a2
	.loc 1 55 0
	bnez.n	a2, .L6
	.loc 1 55 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x37
	j	.L11
.L6:
	.loc 1 56 0 is_stmt 1
	bnez.n	a3, .L7
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC11
	movi.n	a11, 0x38
.LVL7:
.L11:
	l32r	a10, .LC12
	call8	__assert_func
.LVL8:
.L7:
	.loc 1 57 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL9:
	bgeu	a2, a3, .L8
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC11
	movi.n	a11, 0x39
	j	.L11
.L8:
	.loc 1 59 0 is_stmt 1
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 60 0
	bnez.n	a10, .L9
.LVL12:
.LBB4:
.LBB5:
	.loc 1 61 0
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC17
	l32r	a15, .LC11
	l32r	a12, .LC19
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	retw.n
.LVL15:
.L9:
.LBE5:
.LBE4:
	.loc 1 65 0
	l32i.n	a8, a4, 0
	.loc 1 66 0
	movi.n	a4, -1
.LVL16:
	s32i.n	a4, a10, 4
	.loc 1 67 0
	s32i.n	a3, a10, 8
	.loc 1 69 0
	l32i.n	a3, a8, 4
.LVL17:
	.loc 1 65 0
	s32i.n	a8, a10, 0
	.loc 1 69 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 4
	.loc 1 72 0
	retw.n
.LFE2:
	.size	buffer_new_slice, .-buffer_new_slice
	.section	.text.buffer_new_ref,"ax",@progbits
	.literal_position
	.literal .LC20, .LC9
	.literal .LC21, __func__$2432
	.literal .LC22, .LC3
	.align	4
	.global	buffer_new_ref
	.type	buffer_new_ref, @function
buffer_new_ref:
.LFB1:
	.loc 1 48 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 48 0
	mov.n	a10, a2
	.loc 1 49 0
	bnez.n	a2, .L13
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	l32r	a10, .LC22
	movi.n	a11, 0x31
	call8	__assert_func
.LVL19:
.L13:
	.loc 1 50 0 is_stmt 1
	l32i.n	a11, a2, 8
	call8	buffer_new_slice
.LVL20:
	.loc 1 51 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE1:
	.size	buffer_new_ref, .-buffer_new_ref
	.section	.text.buffer_free,"ax",@progbits
	.align	4
	.global	buffer_free
	.type	buffer_free, @function
buffer_free:
.LFB3:
	.loc 1 75 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 76 0
	beqz.n	a2, .L14
	.loc 1 80 0
	l32i.n	a10, a2, 0
	beq	a2, a10, .L17
	.loc 1 82 0
	l32i.n	a8, a10, 4
	addi.n	a8, a8, -1
	beqz.n	a8, .L18
	s32i.n	a8, a10, 4
	j	.L19
.L18:
	.loc 1 83 0
	call8	free
.LVL23:
.L19:
	.loc 1 85 0
	mov.n	a10, a2
	call8	free
.LVL24:
	retw.n
.L17:
	.loc 1 86 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 4
	beqz.n	a8, .L19
.L14:
	retw.n
.LFE3:
	.size	buffer_free, .-buffer_free
	.section	.text.buffer_ptr,"ax",@progbits
	.literal_position
	.literal .LC23, .LC9
	.literal .LC24, __func__$2445
	.literal .LC25, .LC3
	.align	4
	.global	buffer_ptr
	.type	buffer_ptr, @function
buffer_ptr:
.LFB4:
	.loc 1 93 0
.LVL25:
	entry	sp, 32
.LCFI4:
	.loc 1 94 0
	bnez.n	a2, .L25
	.loc 1 94 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	l32r	a10, .LC25
	movi.n	a11, 0x5e
	call8	__assert_func
.LVL26:
.L25:
	.loc 1 95 0 is_stmt 1
	l32i.n	a8, a2, 0
	l32i.n	a2, a2, 8
.LVL27:
	addi.n	a9, a8, 12
	l32i.n	a8, a8, 8
	sub	a2, a8, a2
	.loc 1 96 0
	add.n	a2, a9, a2
	retw.n
.LFE4:
	.size	buffer_ptr, .-buffer_ptr
	.section	.text.buffer_length,"ax",@progbits
	.literal_position
	.literal .LC26, .LC9
	.literal .LC27, __func__$2449
	.literal .LC28, .LC3
	.align	4
	.global	buffer_length
	.type	buffer_length, @function
buffer_length:
.LFB5:
	.loc 1 99 0
.LVL28:
	entry	sp, 32
.LCFI5:
	.loc 1 100 0
	bnez.n	a2, .L27
	.loc 1 100 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
	movi	a11, 0x64
	call8	__assert_func
.LVL29:
.L27:
	.loc 1 102 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL30:
	retw.n
.LFE5:
	.size	buffer_length, .-buffer_length
	.section	.rodata.__func__$2449,"a",@progbits
	.type	__func__$2449, @object
	.size	__func__$2449, 14
__func__$2449:
	.string	"buffer_length"
	.section	.rodata.__func__$2445,"a",@progbits
	.type	__func__$2445, @object
	.size	__func__$2445, 11
__func__$2445:
	.string	"buffer_ptr"
	.section	.rodata.__func__$2437,"a",@progbits
	.type	__func__$2437, @object
	.size	__func__$2437, 17
__func__$2437:
	.string	"buffer_new_slice"
	.section	.rodata.__func__$2432,"a",@progbits
	.type	__func__$2432, @object
	.size	__func__$2432, 15
__func__$2432:
	.string	"buffer_new_ref"
	.section	.rodata.__func__$2427,"a",@progbits
	.type	__func__$2427, @object
	.size	__func__$2427, 11
__func__$2427:
	.string	"buffer_new"
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
	.uleb128 0x30
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/buffer.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x529
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x53
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53
	.byte	0x8
	.byte	0x1f
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x19
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0xc
	.byte	0x1
	.byte	0x17
	.4byte	0x115
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x18
	.4byte	0x115
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	0x75
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.4byte	0x75
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1b
	.4byte	0x11b
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcd
	.uleb128 0xb
	.4byte	0x68
	.4byte	0x12a
	.uleb128 0xc
	.4byte	0x87
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	0x115
	.byte	0x1
	.4byte	0x169
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x35
	.4byte	0x169
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x35
	.4byte	0x75
	.uleb128 0x10
	.4byte	.LASF26
	.4byte	0x184
	.4byte	.LASF42
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x3b
	.4byte	0x115
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x16f
	.uleb128 0x12
	.4byte	0xcd
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x184
	.uleb128 0x13
	.4byte	0x87
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.4byte	0x174
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1e
	.4byte	0x115
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x254
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1e
	.4byte	0x75
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	0x264
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2427
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0x22
	.4byte	0x115
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x4ea
	.4byte	0x1fc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2427
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x4f5
	.4byte	0x210
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x500
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x50b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2427
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x264
	.uleb128 0x13
	.4byte	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.4byte	0x254
	.uleb128 0x1c
	.4byte	0x12a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x349
	.uleb128 0x1d
	.4byte	0x13a
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	0x145
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	0x150
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2437
	.uleb128 0x1e
	.4byte	0x15d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x31d
	.uleb128 0x1d
	.4byte	0x13a
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	0x145
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.4byte	0x15d
	.uleb128 0x1e
	.4byte	0x150
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2437
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x500
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x50b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2437
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x4ea
	.4byte	0x334
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x516
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2f
	.4byte	0x115
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b9
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x2f
	.4byte	0x169
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	0x3c9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2432
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x4ea
	.4byte	0x3af
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2432
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x12a
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x3c9
	.uleb128 0x13
	.4byte	0x87
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x3b9
	.uleb128 0x23
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40a
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4a
	.4byte	0x115
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x521
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0x521
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5c
	.4byte	0x73
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x5c
	.4byte	0x169
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	0x46d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2445
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x4ea
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2445
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x254
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x62
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d5
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x62
	.4byte	0x169
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	0x4e5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2449
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x4ea
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2449
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x4e5
	.uleb128 0x13
	.4byte	0x87
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.4byte	0x4d5
	.uleb128 0x25
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x29
	.uleb128 0x25
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x57
	.uleb128 0x25
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.byte	0x6b
	.uleb128 0x25
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x57
	.uleb128 0x25
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF43:
	.string	"buffer_free"
.LASF37:
	.string	"calloc"
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF30:
	.string	"buffer"
.LASF32:
	.string	"buffer_length"
.LASF26:
	.string	"__func__"
.LASF28:
	.string	"buffer_new_ref"
.LASF42:
	.string	"buffer_new_slice"
.LASF35:
	.string	"esp_log_timestamp"
.LASF25:
	.string	"slice_size"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF24:
	.string	"data"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"size"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"buffer_new"
.LASF22:
	.string	"refcount"
.LASF40:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/buffer.c"
.LASF20:
	.string	"buffer_t"
.LASF21:
	.string	"root"
.LASF33:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF31:
	.string	"buffer_ptr"
.LASF38:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF11:
	.string	"sizetype"
.LASF13:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF36:
	.string	"esp_log_write"
.LASF10:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"length"
.LASF34:
	.string	"malloc"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
