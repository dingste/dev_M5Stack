	.file	"bootloader_flash.c"
	.text
.Ltext0:
	.section	.text.bootloader_mmap_get_free_pages,"ax",@progbits
	.align	4
	.global	bootloader_mmap_get_free_pages
	.type	bootloader_mmap_get_free_pages, @function
bootloader_mmap_get_free_pages:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_flash.c"
	.loc 1 29 0
	entry	sp, 32
.LCFI0:
	.loc 1 30 0
	movi.n	a10, 0
	call8	spi_flash_mmap_get_free_pages
.LVL0:
	.loc 1 31 0
	mov.n	a2, a10
	retw.n
.LFE2:
	.size	bootloader_mmap_get_free_pages, .-bootloader_mmap_get_free_pages
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"bootloader_mmap"
.LC3:
	.string	"\033[0;31mE (%d) %s: tried to bootloader_mmap twice\033[0m\n"
.LC6:
	.string	"\033[0;31mE (%d) %s: spi_flash_mmap failed: 0x%x\033[0m\n"
	.section	.text.bootloader_mmap,"ax",@progbits
	.literal_position
	.literal .LC0, map
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, -65536
	.literal .LC7, .LC6
	.align	4
	.global	bootloader_mmap
	.type	bootloader_mmap, @function
bootloader_mmap:
.LFB3:
	.loc 1 34 0
.LVL1:
	entry	sp, 48
.LCFI1:
	.loc 1 35 0
	l32r	a14, .LC0
	l32i.n	a4, a14, 0
	beqz.n	a4, .L3
	.loc 1 36 0 discriminator 2
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 37 0 discriminator 2
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 40 0
	l32r	a10, .LC5
	.loc 1 42 0
	mov.n	a13, sp
	.loc 1 40 0
	and	a10, a2, a10
.LVL6:
	.loc 1 41 0
	sub	a2, a2, a10
.LVL7:
	.loc 1 42 0
	add.n	a11, a2, a3
.LVL8:
	mov.n	a12, a4
	.loc 1 39 0
	s32i.n	a4, sp, 0
	.loc 1 42 0
	call8	spi_flash_mmap
.LVL9:
	.loc 1 47 0
	l32i.n	a8, sp, 0
	.loc 1 42 0
	mov.n	a3, a10
.LVL10:
	.loc 1 47 0
	add.n	a2, a8, a2
.LVL11:
	.loc 1 43 0
	beqz.n	a10, .L4
	.loc 1 44 0 discriminator 2
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC2
	l32r	a12, .LC7
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	.loc 1 45 0 discriminator 2
	mov.n	a2, a4
.L4:
	.loc 1 48 0
	retw.n
.LFE3:
	.size	bootloader_mmap, .-bootloader_mmap
	.section	.text.bootloader_munmap,"ax",@progbits
	.literal_position
	.literal .LC8, map
	.align	4
	.global	bootloader_munmap
	.type	bootloader_munmap, @function
bootloader_munmap:
.LFB4:
	.loc 1 51 0
.LVL14:
	entry	sp, 32
.LCFI2:
	l32r	a3, .LC8
	.loc 1 52 0
	beqz.n	a2, .L8
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 0
	beqz.n	a10, .L8
	.loc 1 53 0 is_stmt 1
	call8	spi_flash_munmap
.LVL15:
.L8:
	.loc 1 55 0
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	retw.n
.LFE4:
	.size	bootloader_munmap, .-bootloader_munmap
	.section	.text.bootloader_flash_read,"ax",@progbits
	.literal_position
	.literal .LC9, 1073061888
	.align	4
	.global	bootloader_flash_read
	.type	bootloader_flash_read, @function
bootloader_flash_read:
.LFB5:
	.loc 1 59 0
.LVL16:
	entry	sp, 32
.LCFI3:
	.loc 1 59 0
	extui	a5, a5, 0, 8
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 60 0
	beqz.n	a5, .L16
.LBB4:
.LBB5:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a8, .LC9
	.loc 2 41 0
	movi.n	a9, 0
	.loc 2 39 0
	memw
	l32i.n	a8, a8, 0
	.loc 2 44 0
	movi.n	a13, 1
	.loc 2 39 0
	extui	a8, a8, 20, 7
.LVL17:
	j	.L17
.LVL18:
.L19:
	.loc 2 43 0
	bbci	a8, 0, .L18
	.loc 2 44 0
	xor	a9, a9, a13
.LVL19:
	extui	a9, a9, 0, 8
.LVL20:
.L18:
	.loc 2 46 0
	srli	a8, a8, 1
.LVL21:
.L17:
	.loc 2 42 0
	bnez.n	a8, .L19
.LBE5:
.LBE4:
	.loc 1 60 0
	beqz.n	a9, .L16
	.loc 1 61 0
	call8	spi_flash_read_encrypted
.LVL22:
	j	.L20
.L16:
	.loc 1 63 0
	call8	spi_flash_read
.LVL23:
.L20:
	.loc 1 65 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE5:
	.size	bootloader_flash_read, .-bootloader_flash_read
	.section	.text.bootloader_flash_write,"ax",@progbits
	.align	4
	.global	bootloader_flash_write
	.type	bootloader_flash_write, @function
bootloader_flash_write:
.LFB6:
	.loc 1 68 0
.LVL25:
	entry	sp, 32
.LCFI4:
	.loc 1 68 0
	extui	a5, a5, 0, 8
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	.loc 1 69 0
	beqz.n	a5, .L31
	.loc 1 70 0
	call8	spi_flash_write_encrypted
.LVL26:
	j	.L32
.L31:
	.loc 1 72 0
	call8	spi_flash_write
.LVL27:
.L32:
	.loc 1 74 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LFE6:
	.size	bootloader_flash_write, .-bootloader_flash_write
	.section	.text.bootloader_flash_erase_sector,"ax",@progbits
	.align	4
	.global	bootloader_flash_erase_sector
	.type	bootloader_flash_erase_sector, @function
bootloader_flash_erase_sector:
.LFB7:
	.loc 1 77 0
.LVL29:
	entry	sp, 32
.LCFI5:
	.loc 1 78 0
	mov.n	a10, a2
	call8	spi_flash_erase_sector
.LVL30:
	.loc 1 79 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LFE7:
	.size	bootloader_flash_erase_sector, .-bootloader_flash_erase_sector
	.section	.text.bootloader_flash_erase_range,"ax",@progbits
	.align	4
	.global	bootloader_flash_erase_range
	.type	bootloader_flash_erase_range, @function
bootloader_flash_erase_range:
.LFB8:
	.loc 1 82 0
.LVL32:
	entry	sp, 32
.LCFI6:
	.loc 1 83 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	spi_flash_erase_range
.LVL33:
	.loc 1 84 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LFE8:
	.size	bootloader_flash_erase_range, .-bootloader_flash_erase_range
	.section	.bss.map,"aw",@nobits
	.align	4
	.type	map, @object
	.size	map, 4
map:
	.zero	4
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
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
	.uleb128 0x30
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI5-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0x89
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0xa1
	.4byte	0xfe
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0xa9
	.4byte	0x94
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1f
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1c
	.4byte	0x94
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a
	.uleb128 0xc
	.4byte	.LVL0
	.4byte	0x476
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.4byte	0xd3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26b
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x21
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x27
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x2a
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x481
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x48c
	.4byte	0x202
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x497
	.4byte	0x231
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x481
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x48c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x32
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x297
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x32
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x4a2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x2
	.byte	0x26
	.4byte	0x109
	.byte	0x3
	.4byte	0x2be
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x2
	.byte	0x27
	.4byte	0x94
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x2
	.byte	0x29
	.4byte	0x109
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3a
	.4byte	0xda
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x350
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0x3a
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3a
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3a
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3a
	.4byte	0x109
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	0x297
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x3c
	.4byte	0x33d
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1c
	.4byte	0x2a7
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x2b2
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x4ad
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x4b8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x43
	.4byte	0xda
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c9
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x43
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x43
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x43
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x1
	.byte	0x43
	.4byte	0x109
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LVL26
	.4byte	0x4c3
	.4byte	0x3bf
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x4ce
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4c
	.4byte	0xda
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x402
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4c
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LVL30
	.4byte	0x4d9
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x51
	.4byte	0xda
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44e
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x51
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x51
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL33
	.4byte	0x4e4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"TAG"
	.byte	0x1
	.byte	0x18
	.4byte	0x460
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x12
	.string	"map"
	.byte	0x1
	.byte	0x1a
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x3
	.4byte	map
	.uleb128 0x1e
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0xff
	.uleb128 0x1e
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x57
	.uleb128 0x1e
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1e
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0xc1
	.uleb128 0x1e
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0xe9
	.uleb128 0x1e
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x8b
	.uleb128 0x1e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x74
	.uleb128 0x1e
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3f
	.uleb128 0x1e
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0x4a
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LFE3
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"write_encrypted"
.LASF61:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/src/bootloader_flash.c"
.LASF32:
	.string	"src_page"
.LASF9:
	.string	"long long unsigned int"
.LASF21:
	.string	"spi_flash_mmap_handle_t"
.LASF38:
	.string	"bootloader_mmap"
.LASF49:
	.string	"spi_flash_mmap_get_free_pages"
.LASF59:
	.string	"spi_flash_erase_range"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"long int"
.LASF51:
	.string	"esp_log_write"
.LASF36:
	.string	"flash_crypt_cnt"
.LASF7:
	.string	"__uint32_t"
.LASF10:
	.string	"__intptr_t"
.LASF5:
	.string	"size_t"
.LASF0:
	.string	"unsigned int"
.LASF54:
	.string	"spi_flash_read_encrypted"
.LASF55:
	.string	"spi_flash_read"
.LASF46:
	.string	"sector"
.LASF16:
	.string	"long unsigned int"
.LASF60:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"bootloader_flash_erase_sector"
.LASF30:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF56:
	.string	"spi_flash_write_encrypted"
.LASF13:
	.string	"intptr_t"
.LASF42:
	.string	"bootloader_flash_write"
.LASF52:
	.string	"spi_flash_mmap"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF15:
	.string	"sizetype"
.LASF47:
	.string	"bootloader_flash_erase_range"
.LASF19:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF20:
	.string	"SPI_FLASH_MMAP_INST"
.LASF40:
	.string	"dest"
.LASF22:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"start_addr"
.LASF4:
	.string	"short int"
.LASF50:
	.string	"esp_log_timestamp"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF35:
	.string	"mapping"
.LASF63:
	.string	"esp_flash_encryption_enabled"
.LASF12:
	.string	"uint32_t"
.LASF41:
	.string	"allow_decrypt"
.LASF37:
	.string	"enabled"
.LASF17:
	.string	"char"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF29:
	.string	"src_addr"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF62:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bootloader_support"
.LASF6:
	.string	"__int32_t"
.LASF53:
	.string	"spi_flash_munmap"
.LASF33:
	.string	"bootloader_mmap_get_free_pages"
.LASF43:
	.string	"dest_addr"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF18:
	.string	"esp_err_t"
.LASF57:
	.string	"spi_flash_write"
.LASF34:
	.string	"bootloader_munmap"
.LASF58:
	.string	"spi_flash_erase_sector"
.LASF31:
	.string	"result"
.LASF39:
	.string	"bootloader_flash_read"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
