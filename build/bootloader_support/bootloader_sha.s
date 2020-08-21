	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.loc 1 25 0
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	movi	a10, 0x70
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 27 0
	bnez.n	a10, .L2
.L4:
	.loc 1 28 0
	movi.n	a2, 0
.LVL2:
	retw.n
.LVL3:
.L2:
	.loc 1 30 0
	call8	mbedtls_sha256_init
.LVL4:
	.loc 1 31 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha256_starts_ret
.LVL5:
	.loc 1 32 0
	bnez.n	a10, .L4
	.loc 1 36 0
	retw.n
.LFE0:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"handle != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_sha.c"
.LC5:
	.string	"ret == 0"
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3188
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LFB1:
	.loc 1 39 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 39 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 40 0
	bnez.n	a2, .L6
	.loc 1 40 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x28
	j	.L8
.L6:
.LVL7:
	.loc 1 42 0 is_stmt 1
	call8	mbedtls_sha256_update_ret
.LVL8:
	.loc 1 43 0
	beqz.n	a10, .L5
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x2b
.LVL9:
.L8:
	l32r	a10, .LC4
	call8	__assert_func
.LVL10:
.L5:
	retw.n
.LFE1:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$3195
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LFB2:
	.loc 1 47 0 is_stmt 1
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 47 0
	mov.n	a11, a3
	.loc 1 48 0
	bnez.n	a2, .L10
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x30
	j	.L18
.L10:
.LVL12:
	.loc 1 50 0 is_stmt 1
	beqz.n	a3, .L11
.LBB2:
	.loc 1 51 0
	mov.n	a10, a2
	call8	mbedtls_sha256_finish_ret
.LVL13:
	.loc 1 52 0
	beqz.n	a10, .L11
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi.n	a11, 0x34
.LVL14:
.L18:
	l32r	a10, .LC9
	call8	__assert_func
.LVL15:
.L11:
.LBE2:
	.loc 1 54 0 is_stmt 1
	mov.n	a10, a2
	call8	mbedtls_sha256_free
.LVL16:
	.loc 1 55 0
	mov.n	a10, a2
	call8	free
.LVL17:
	retw.n
.LFE2:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.text.bootloader_sha256_hex_to_str,"ax",@progbits
	.literal_position
	.align	4
	.global	bootloader_sha256_hex_to_str
	.type	bootloader_sha256_hex_to_str, @function
bootloader_sha256_hex_to_str:
.LFB3:
	.loc 1 174 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 175 0
	movi.n	a9, 0
	movi.n	a10, 1
	mov.n	a8, a9
	moveqz	a8, a10, a4
	moveqz	a9, a10, a3
	or	a8, a8, a9
	bnez.n	a8, .L27
	moveqz	a8, a10, a2
	bnez.n	a8, .L27
	ssl	a10
	sll	a4, a4
.LVL19:
.LBB3:
.LBB4:
.LBB5:
	.loc 1 181 0
	movi.n	a11, 9
	j	.L21
.LVL20:
.L25:
	.loc 1 182 0
	addi	a9, a9, 48
.LVL21:
	j	.L30
.LVL22:
.L29:
	.loc 1 184 0
	addi	a9, a9, 87
.LVL23:
.L30:
	s8i	a9, a10, 1
.LVL24:
	addi.n	a8, a8, 2
	addi.n	a3, a3, 1
.LVL25:
.L21:
.LBE5:
.LBE4:
	.loc 1 178 0 discriminator 1
	beq	a8, a4, .L28
.LVL26:
.LBB7:
.LBB6:
	.loc 1 180 0
	l8ui	a9, a3, 0
	add.n	a10, a2, a8
	srli	a9, a9, 4
.LVL27:
	.loc 1 181 0
	bgeu	a11, a9, .L23
	.loc 1 184 0
	addi	a9, a9, 87
.LVL28:
	j	.L31
.LVL29:
.L23:
	.loc 1 182 0
	addi	a9, a9, 48
.LVL30:
.L31:
	s8i	a9, a10, 0
.LVL31:
	.loc 1 180 0
	l8ui	a9, a3, 0
	extui	a9, a9, 0, 4
.LVL32:
	.loc 1 181 0
	bgeu	a11, a9, .L25
	j	.L29
.LVL33:
.L27:
.LBE6:
.LBE7:
.LBE3:
	.loc 1 176 0
	movi	a2, 0x102
.LVL34:
	retw.n
.LVL35:
.L28:
	.loc 1 188 0
	movi.n	a2, 0
.LVL36:
	.loc 1 189 0
	retw.n
.LFE3:
	.size	bootloader_sha256_hex_to_str, .-bootloader_sha256_hex_to_str
	.section	.rodata.__func__$3195,"a",@progbits
	.type	__func__$3195, @object
	.size	__func__$3195, 25
__func__$3195:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$3188,"a",@progbits
	.type	__func__$3188, @object
	.size	__func__$3188, 23
__func__$3188:
	.string	"bootloader_sha256_data"
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/include/sha256_alt.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x457
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x20
	.4byte	0x10a
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x24
	.4byte	0xeb
	.uleb128 0xa
	.byte	0x70
	.byte	0x7
	.byte	0x29
	.4byte	0x15a
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2b
	.4byte	0x15a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2c
	.4byte	0x16a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2d
	.4byte	0x17a
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x2e
	.4byte	0x57
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x2f
	.4byte	0x10a
	.byte	0x6c
	.byte	0
	.uleb128 0xc
	.4byte	0x94
	.4byte	0x16a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x94
	.4byte	0x17a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x37
	.4byte	0x18a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.4byte	0x115
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x18
	.4byte	0xe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fd
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x1a
	.4byte	0x1fd
	.4byte	.LLST0
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x11
	.4byte	.LVL0
	.4byte	0x402
	.4byte	0x1de
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x418
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x289
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x26
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x26
	.4byte	0xce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF37
	.4byte	0x299
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3188
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x29
	.4byte	0x1fd
	.4byte	.LLST1
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x2a
	.4byte	0x57
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x423
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0x42e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc7
	.4byte	0x299
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x16
	.byte	0
	.uleb128 0x18
	.4byte	0x289
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x354
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2e
	.4byte	0x354
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF37
	.4byte	0x36a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3195
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x31
	.4byte	0x1fd
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x32f
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.4byte	0x57
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x439
	.4byte	0x31b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0x42e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x444
	.4byte	0x343
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x44f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0xc7
	.4byte	0x36a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x35a
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0xad
	.4byte	0xd5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f7
	.uleb128 0x1b
	.4byte	.LASF38
	.byte	0x1
	.byte	0xad
	.4byte	0xc1
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.byte	0xad
	.4byte	0x3f7
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0xad
	.4byte	0x9f
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xb2
	.4byte	0x57
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb3
	.4byte	0x57
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb4
	.4byte	0x7e
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x18
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x65
	.uleb128 0x20
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x9
	.byte	0x4b
	.uleb128 0x20
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x67
	.uleb128 0x20
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.byte	0x73
	.uleb128 0x20
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xa
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.byte	0x80
	.uleb128 0x20
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x9
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x79
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0x79
	.sleb128 -87
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
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
.LASF40:
	.string	"shift"
.LASF4:
	.string	"__uint8_t"
.LASF27:
	.string	"is224"
.LASF25:
	.string	"state"
.LASF5:
	.string	"__int32_t"
.LASF21:
	.string	"ESP_MBEDTLS_SHA256_HARDWARE"
.LASF35:
	.string	"bootloader_sha256_finish"
.LASF2:
	.string	"short int"
.LASF45:
	.string	"mbedtls_sha256_update_ret"
.LASF34:
	.string	"data_len"
.LASF43:
	.string	"mbedtls_sha256_init"
.LASF37:
	.string	"__func__"
.LASF33:
	.string	"data"
.LASF50:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"out_str"
.LASF19:
	.string	"bootloader_sha256_handle_t"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"in_array_hex"
.LASF22:
	.string	"ESP_MBEDTLS_SHA256_SOFTWARE"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"size_t"
.LASF53:
	.string	"bootloader_sha256_hex_to_str"
.LASF12:
	.string	"uint32_t"
.LASF32:
	.string	"handle"
.LASF44:
	.string	"mbedtls_sha256_starts_ret"
.LASF16:
	.string	"long unsigned int"
.LASF18:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint32_t"
.LASF31:
	.string	"bootloader_sha256_data"
.LASF46:
	.string	"__assert_func"
.LASF7:
	.string	"unsigned int"
.LASF52:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF28:
	.string	"mode"
.LASF24:
	.string	"total"
.LASF11:
	.string	"int32_t"
.LASF15:
	.string	"sizetype"
.LASF51:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_sha.c"
.LASF49:
	.string	"free"
.LASF8:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF47:
	.string	"mbedtls_sha256_finish_ret"
.LASF48:
	.string	"mbedtls_sha256_free"
.LASF29:
	.string	"mbedtls_sha256_context"
.LASF30:
	.string	"bootloader_sha256_start"
.LASF26:
	.string	"buffer"
.LASF36:
	.string	"digest"
.LASF14:
	.string	"long int"
.LASF20:
	.string	"ESP_MBEDTLS_SHA256_UNUSED"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"esp_mbedtls_sha256_mode"
.LASF42:
	.string	"malloc"
.LASF41:
	.string	"nibble"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
