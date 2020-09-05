	.file	"secure_boot_signatures.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"secure_boot"
.LC5:
	.string	"\033[0;31mE (%d) %s: Embedded public verification key has wrong length %d\033[0m\n"
.LC7:
	.string	"\033[0;31mE (%d) %s: image has invalid signature version field 0x%08x\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature_block,"ax",@progbits
	.literal_position
	.literal .LC0, 8194
	.literal .LC1, _binary_signature_verification_key_bin_end
	.literal .LC2, _binary_signature_verification_key_bin_start
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	esp_secure_boot_verify_signature_block
	.type	esp_secure_boot_verify_signature_block, @function
esp_secure_boot_verify_signature_block:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 92 0
	l32r	a5, .LC2
	l32r	a4, .LC1
	sub	a4, a4, a5
.LVL1:
	.loc 1 93 0
	beqi	a4, 64, .L2
	.loc 1 94 0 discriminator 2
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC4
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	j	.L6
.L2:
	.loc 1 98 0
	l32i.n	a4, a2, 0
.LVL3:
	beqz.n	a4, .L4
.LVL4:
.LBB4:
.LBB5:
	.loc 1 99 0
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC4
	l32i.n	a15, a2, 0
	l32r	a12, .LC8
	mov.n	a14, a11
	mov.n	a13, a10
.LVL6:
.L6:
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	movi.n	a2, -1
.LVL8:
	retw.n
.LVL9:
.L4:
.LBE5:
.LBE4:
	.loc 1 105 0
	call8	uECC_secp256r1
.LVL10:
	mov.n	a14, a10
	addi.n	a13, a2, 4
	movi.n	a12, 0x20
	mov.n	a11, a3
	mov.n	a10, a5
	call8	uECC_verify
.LVL11:
	.loc 1 111 0
	l32r	a2, .LC0
.LVL12:
	movnez	a2, a4, a10
	.loc 1 112 0
	retw.n
.LFE4:
	.size	esp_secure_boot_verify_signature_block, .-esp_secure_boot_verify_signature_block
	.section	.rodata.str1.1
.LC10:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature,"ax",@progbits
	.literal_position
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.align	4
	.global	esp_secure_boot_verify_signature
	.type	esp_secure_boot_verify_signature, @function
esp_secure_boot_verify_signature:
.LFB3:
	.loc 1 39 0
.LVL13:
	entry	sp, 96
.LCFI1:
	.loc 1 46 0
	call8	bootloader_sha256_start
.LVL14:
	mov.n	a5, a10
.LVL15:
	.loc 1 48 0
	call8	bootloader_mmap_get_free_pages
.LVL16:
	s32i.n	a10, sp, 48
.LVL17:
	.loc 1 51 0
	mov.n	a6, a3
.LVL18:
	.loc 1 52 0
	mov.n	a7, a2
	.loc 1 53 0
	j	.L8
.LVL19:
.L11:
.LBB6:
	.loc 1 56 0
	extui	a4, a7, 0, 16
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a9, a8, a4
	l32i.n	a8, sp, 48
	.loc 1 57 0
	mov.n	a10, a7
	.loc 1 56 0
	sub	a4, a8, a9
	slli	a4, a4, 16
	minu	a4, a4, a6
.LVL20:
	.loc 1 57 0
	mov.n	a11, a4
	call8	bootloader_mmap
.LVL21:
	mov.n	a8, a10
.LVL22:
	.loc 1 58 0
	bnez.n	a10, .L9
	.loc 1 59 0 discriminator 2
	s32i.n	a10, sp, 52
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC9
	l32r	a12, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a15, a7
	movi.n	a10, 1
	call8	esp_log_write
.LVL24:
	.loc 1 60 0 discriminator 2
	l32i.n	a8, sp, 52
	mov.n	a10, a5
	mov.n	a11, a8
	call8	bootloader_sha256_finish
.LVL25:
	j	.L13
.LVL26:
.L9:
	.loc 1 63 0
	mov.n	a11, a10
	mov.n	a12, a4
	mov.n	a10, a5
	s32i.n	a8, sp, 52
	call8	bootloader_sha256_data
.LVL27:
	.loc 1 64 0
	l32i.n	a8, sp, 52
	.loc 1 66 0
	add.n	a7, a7, a4
.LVL28:
	.loc 1 64 0
	mov.n	a10, a8
	call8	bootloader_munmap
.LVL29:
	.loc 1 67 0
	sub	a6, a6, a4
.LVL30:
.L8:
.LBE6:
	.loc 1 53 0
	bgei	a6, 1, .L11
	.loc 1 71 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	bootloader_sha256_finish
.LVL31:
	.loc 1 74 0
	add.n	a2, a3, a2
.LVL32:
	movi.n	a11, 0x44
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL33:
	mov.n	a3, a10
.LVL34:
	.loc 1 75 0
	bnez.n	a10, .L12
	.loc 1 76 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC9
	movi.n	a3, 0x44
.LVL36:
	l32r	a12, .LC11
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL37:
.L13:
	.loc 1 77 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL38:
.L12:
	.loc 1 80 0
	addi	a11, sp, 16
	call8	esp_secure_boot_verify_signature_block
.LVL39:
	mov.n	a2, a10
.LVL40:
	.loc 1 82 0
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL41:
	.loc 1 85 0
	retw.n
.LFE3:
	.size	esp_secure_boot_verify_signature, .-esp_secure_boot_verify_signature
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/micro-ecc/micro-ecc/uECC.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x95
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x94
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1b
	.4byte	0xaa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x121
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x131
	.uleb128 0xb
	.4byte	0xb3
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.byte	0x44
	.byte	0x7
	.byte	0x77
	.4byte	0x152
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x78
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x79
	.4byte	0x152
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x162
	.uleb128 0xb
	.4byte	0xb3
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x7a
	.4byte	0x131
	.uleb128 0x6
	.byte	0x4
	.4byte	0x173
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x1
	.byte	0x57
	.4byte	0xd3
	.byte	0x1
	.4byte	0x1b5
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x57
	.4byte	0x1b5
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x57
	.4byte	0x16d
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x7
	.4byte	0x162
	.uleb128 0x11
	.4byte	0x178
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x278
	.uleb128 0x12
	.4byte	0x188
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	0x193
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	0x19e
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	0x1a9
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x243
	.uleb128 0x12
	.4byte	0x193
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	0x188
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x18
	.4byte	0x19e
	.uleb128 0x18
	.4byte	0x1a9
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x4df
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x4ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x4df
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x4f5
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x500
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.byte	0x26
	.4byte	0xd3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x26
	.4byte	0x9f
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.4byte	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x29
	.4byte	0x16d
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2a
	.4byte	0x1b5
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2e
	.4byte	0xe5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF40
	.byte	0x1
	.byte	0x30
	.4byte	0x9f
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF41
	.byte	0x1
	.byte	0x33
	.4byte	0x94
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	.LASF42
	.byte	0x1
	.byte	0x34
	.4byte	0x9f
	.4byte	.LLST10
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.byte	0x50
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x3e4
	.uleb128 0x1f
	.4byte	.LASF43
	.byte	0x1
	.byte	0x36
	.4byte	0x9f
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.LASF44
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x50c
	.4byte	0x368
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x4df
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x4ea
	.4byte	0x3ac
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x517
	.4byte	0x3c0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x522
	.4byte	0x3da
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x52d
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x538
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x543
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x517
	.4byte	0x411
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x21
	.4byte	.LVL33
	.4byte	0x50c
	.4byte	0x42b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x4df
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0x4ea
	.4byte	0x46f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x178
	.4byte	0x484
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x52d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x1a
	.4byte	0x4a7
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x4b7
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1c
	.4byte	.LASF47
	.4byte	0x4c6
	.uleb128 0x7
	.4byte	0x4ac
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1d
	.4byte	.LASF48
	.4byte	0x4da
	.uleb128 0x7
	.4byte	0x4ac
	.uleb128 0x24
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x8
	.byte	0x57
	.uleb128 0x24
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6b
	.uleb128 0x24
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.byte	0x60
	.uleb128 0x25
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.2byte	0x163
	.uleb128 0x24
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xa
	.byte	0x39
	.uleb128 0x24
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x21
	.uleb128 0x24
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0x1f
	.uleb128 0x24
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0xa
	.byte	0x41
	.uleb128 0x24
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0x1d
	.uleb128 0x24
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xa
	.byte	0x26
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"bootloader_mmap_get_free_pages"
.LASF27:
	.string	"version"
.LASF31:
	.string	"image_digest"
.LASF6:
	.string	"short int"
.LASF15:
	.string	"sizetype"
.LASF8:
	.string	"__uint32_t"
.LASF41:
	.string	"data_len_remain"
.LASF36:
	.string	"digest"
.LASF11:
	.string	"uint8_t"
.LASF32:
	.string	"keylen"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"sigblock"
.LASF9:
	.string	"long long int"
.LASF30:
	.string	"sig_block"
.LASF14:
	.string	"long int"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF34:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF63:
	.string	"esp_secure_boot_verify_signature"
.LASF48:
	.string	"_binary_signature_verification_key_bin_end"
.LASF35:
	.string	"length"
.LASF5:
	.string	"unsigned char"
.LASF39:
	.string	"handle"
.LASF55:
	.string	"bootloader_sha256_data"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF44:
	.string	"data_len"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"bootloader_sha256_handle_t"
.LASF43:
	.string	"offset_page"
.LASF50:
	.string	"esp_log_write"
.LASF56:
	.string	"bootloader_munmap"
.LASF17:
	.string	"char"
.LASF57:
	.string	"bootloader_sha256_start"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF12:
	.string	"int32_t"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"esp_secure_boot_sig_block_t"
.LASF19:
	.string	"_Bool"
.LASF40:
	.string	"free_page_count"
.LASF37:
	.string	"data"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF52:
	.string	"uECC_verify"
.LASF16:
	.string	"long unsigned int"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF62:
	.string	"esp_secure_boot_verify_signature_block"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
.LASF45:
	.string	"signature_verification_key_start"
.LASF7:
	.string	"__int32_t"
.LASF28:
	.string	"signature"
.LASF42:
	.string	"data_addr"
.LASF49:
	.string	"esp_log_timestamp"
.LASF51:
	.string	"uECC_secp256r1"
.LASF47:
	.string	"_binary_signature_verification_key_bin_start"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"ptrdiff_t"
.LASF33:
	.string	"is_valid"
.LASF46:
	.string	"signature_verification_key_end"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"esp_err_t"
.LASF54:
	.string	"bootloader_sha256_finish"
.LASF53:
	.string	"bootloader_mmap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
