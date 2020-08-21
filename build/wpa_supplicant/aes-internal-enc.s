	.file	"aes-internal-enc.c"
	.text
.Ltext0:
	.section	.text.rijndaelEncrypt,"ax",@progbits
	.literal_position
	.literal .LC2, Te0
	.literal .LC3, -16777216
	.literal .LC4, 16711680
	.literal .LC5, 65280
	.align	4
	.global	rijndaelEncrypt
	.type	rijndaelEncrypt, @function
rijndaelEncrypt:
.LFB2:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-internal-enc.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 42 0
	l32i.n	a6, a2, 0
	l8ui	a14, a4, 3
	l8ui	a7, a4, 0
	xor	a14, a14, a6
	l8ui	a6, a4, 1
	slli	a7, a7, 24
	xor	a14, a14, a7
	slli	a6, a6, 16
	xor	a6, a14, a6
	l8ui	a14, a4, 2
	.loc 1 43 0
	l8ui	a13, a4, 7
	.loc 1 42 0
	slli	a14, a14, 8
	xor	a14, a6, a14
.LVL1:
	.loc 1 43 0
	l32i.n	a6, a2, 4
	l8ui	a7, a4, 4
	xor	a13, a13, a6
	l8ui	a6, a4, 5
	slli	a7, a7, 24
	xor	a13, a13, a7
	slli	a6, a6, 16
	xor	a6, a13, a6
	l8ui	a13, a4, 6
	.loc 1 44 0
	l8ui	a12, a4, 11
	.loc 1 43 0
	slli	a13, a13, 8
	xor	a13, a6, a13
.LVL2:
	.loc 1 44 0
	l32i.n	a6, a2, 8
	l8ui	a7, a4, 8
	xor	a12, a12, a6
	l8ui	a6, a4, 9
	slli	a7, a7, 24
	xor	a12, a12, a7
	slli	a6, a6, 16
	xor	a6, a12, a6
	l8ui	a12, a4, 10
	.loc 1 45 0
	l8ui	a11, a4, 15
	.loc 1 44 0
	slli	a12, a12, 8
	xor	a12, a6, a12
.LVL3:
	.loc 1 45 0
	l32i.n	a6, a2, 12
	l8ui	a7, a4, 12
	xor	a11, a11, a6
	l8ui	a6, a4, 13
	slli	a7, a7, 24
	xor	a11, a11, a7
	slli	a6, a6, 16
	xor	a6, a11, a6
	l8ui	a11, a4, 14
	.loc 1 78 0
	srai	a3, a3, 1
.LVL4:
	.loc 1 45 0
	slli	a11, a11, 8
	.loc 1 80 0
	l32r	a8, .LC2
	.loc 1 45 0
	xor	a11, a6, a11
.LVL5:
	.loc 1 78 0
	mov.n	a15, a2
	mov.n	a6, a3
.LVL6:
.L3:
	.loc 1 80 0
	extui	a4, a14, 24, 8
	addx4	a4, a4, a8
	l32i.n	a7, a4, 0
	l32i.n	a4, a15, 16
	.loc 1 82 0
	addi.n	a6, a6, -1
.LVL7:
	.loc 1 80 0
	xor	a7, a7, a4
	extui	a4, a11, 0, 8
	addx4	a4, a4, a8
	l32i.n	a4, a4, 0
	ssai	24
	src	a4, a4, a4
	xor	a9, a7, a4
	extui	a4, a13, 16, 8
	addx4	a4, a4, a8
	l32i.n	a4, a4, 0
	ssai	8
	src	a4, a4, a4
	xor	a7, a9, a4
	extui	a4, a12, 8, 8
	addx4	a4, a4, a8
	l32i.n	a4, a4, 0
	ssai	16
	src	a4, a4, a4
	xor	a4, a7, a4
.LVL8:
	extui	a7, a13, 24, 8
	addx4	a7, a7, a8
	l32i.n	a9, a7, 0
	l32i.n	a7, a15, 20
	xor	a7, a9, a7
	extui	a9, a14, 0, 8
	addx4	a9, a9, a8
	l32i.n	a9, a9, 0
	ssai	24
	src	a9, a9, a9
	xor	a9, a7, a9
	extui	a7, a12, 16, 8
	addx4	a7, a7, a8
	l32i.n	a10, a7, 0
	ssai	8
	src	a10, a10, a10
	xor	a7, a9, a10
	extui	a9, a11, 8, 8
	addx4	a9, a9, a8
	l32i.n	a10, a9, 0
	ssai	16
	src	a10, a10, a10
	xor	a10, a7, a10
.LVL9:
	extui	a7, a12, 24, 8
	addx4	a7, a7, a8
	l32i.n	a9, a7, 0
	l32i.n	a7, a15, 24
	extui	a12, a12, 0, 8
.LVL10:
	xor	a7, a9, a7
	extui	a9, a13, 0, 8
	addx4	a9, a9, a8
	l32i.n	a9, a9, 0
	addx4	a12, a12, a8
	ssai	24
	src	a9, a9, a9
	xor	a7, a7, a9
	extui	a9, a11, 16, 8
	addx4	a9, a9, a8
	l32i.n	a9, a9, 0
	extui	a11, a11, 24, 8
.LVL11:
	ssai	8
	src	a9, a9, a9
	xor	a7, a7, a9
	extui	a9, a14, 8, 8
	addx4	a9, a9, a8
	l32i.n	a9, a9, 0
	addx4	a11, a11, a8
	ssai	16
	src	a9, a9, a9
	l32i.n	a11, a11, 0
	l32i.n	a12, a12, 0
	xor	a9, a7, a9
.LVL12:
	l32i.n	a7, a15, 28
	extui	a14, a14, 16, 8
.LVL13:
	xor	a7, a11, a7
	addx4	a14, a14, a8
	ssai	24
	src	a11, a12, a12
	xor	a12, a7, a11
	l32i.n	a11, a14, 0
	extui	a13, a13, 8, 8
.LVL14:
	ssai	8
	src	a11, a11, a11
	addx4	a13, a13, a8
	xor	a7, a12, a11
	l32i.n	a11, a13, 0
	.loc 1 81 0
	addi	a15, a15, 32
.LVL15:
	.loc 1 80 0
	ssai	16
	src	a11, a11, a11
	xor	a11, a7, a11
.LVL16:
	extui	a12, a4, 24, 8
	.loc 1 82 0
	beqz.n	a6, .L2
.LVL17:
	.loc 1 84 0
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	l32i.n	a7, a15, 0
	xor	a7, a12, a7
	extui	a12, a11, 0, 8
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	ssai	24
	src	a12, a12, a12
	xor	a12, a7, a12
	extui	a7, a10, 16, 8
	addx4	a7, a7, a8
	l32i.n	a14, a7, 0
	ssai	8
	src	a14, a14, a14
	xor	a7, a12, a14
	extui	a12, a9, 8, 8
	addx4	a12, a12, a8
	l32i.n	a14, a12, 0
	ssai	16
	src	a14, a14, a14
	xor	a14, a7, a14
.LVL18:
	extui	a7, a10, 24, 8
	addx4	a7, a7, a8
	l32i.n	a12, a7, 0
	l32i.n	a7, a15, 4
	xor	a7, a12, a7
	extui	a12, a4, 0, 8
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	ssai	24
	src	a12, a12, a12
	xor	a12, a7, a12
	extui	a7, a9, 16, 8
	addx4	a7, a7, a8
	l32i.n	a13, a7, 0
	ssai	8
	src	a13, a13, a13
	xor	a7, a12, a13
	extui	a12, a11, 8, 8
	addx4	a12, a12, a8
	l32i.n	a13, a12, 0
	ssai	16
	src	a13, a13, a13
	xor	a13, a7, a13
.LVL19:
	extui	a7, a9, 24, 8
	addx4	a7, a7, a8
	l32i.n	a12, a7, 0
	l32i.n	a7, a15, 8
	extui	a9, a9, 0, 8
.LVL20:
	xor	a7, a12, a7
	extui	a12, a10, 0, 8
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	addx4	a9, a9, a8
	ssai	24
	src	a12, a12, a12
	xor	a7, a7, a12
	extui	a12, a11, 16, 8
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	extui	a11, a11, 24, 8
.LVL21:
	ssai	8
	src	a12, a12, a12
	xor	a7, a7, a12
	extui	a12, a4, 8, 8
	addx4	a12, a12, a8
	l32i.n	a12, a12, 0
	addx4	a11, a11, a8
	ssai	16
	src	a12, a12, a12
	l32i.n	a9, a9, 0
	xor	a12, a7, a12
.LVL22:
	l32i.n	a11, a11, 0
	l32i.n	a7, a15, 12
	extui	a4, a4, 16, 8
.LVL23:
	xor	a11, a11, a7
	addx4	a4, a4, a8
	ssai	24
	src	a7, a9, a9
	xor	a9, a11, a7
	l32i.n	a11, a4, 0
	extui	a10, a10, 8, 8
.LVL24:
	ssai	8
	src	a11, a11, a11
	addx4	a10, a10, a8
	xor	a4, a9, a11
	l32i.n	a11, a10, 0
	ssai	16
	src	a11, a11, a11
	xor	a11, a4, a11
.LVL25:
	.loc 1 85 0
	j	.L3
.LVL26:
.L2:
	.loc 1 95 0
	addx4	a12, a12, a8
	slli	a3, a3, 5
	add.n	a2, a2, a3
	l32i.n	a3, a12, 0
	l32r	a14, .LC3
	slli	a3, a3, 8
	and	a15, a3, a14
.LVL27:
	extui	a3, a10, 16, 8
	addx4	a3, a3, a8
	l32r	a13, .LC4
	l32i.n	a3, a3, 0
	l32r	a12, .LC5
	and	a3, a3, a13
	xor	a3, a15, a3
	l32i.n	a15, a2, 0
	extui	a6, a11, 0, 8
.LVL28:
	xor	a15, a3, a15
	extui	a3, a9, 8, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	addx4	a6, a6, a8
	and	a3, a3, a12
	xor	a3, a15, a3
	l8ui	a15, a6, 1
	.loc 1 97 0
	extui	a6, a4, 0, 8
	.loc 1 95 0
	xor	a15, a3, a15
.LVL29:
	.loc 1 96 0
	extui	a3, a15, 24, 8
	s8i	a3, a5, 0
	extui	a3, a15, 16, 16
	s8i	a3, a5, 1
	srli	a3, a15, 8
	s8i	a3, a5, 2
	.loc 1 97 0
	extui	a3, a10, 24, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	.loc 1 96 0
	s8i	a15, a5, 3
	.loc 1 97 0
	slli	a3, a3, 8
	and	a15, a3, a14
.LVL30:
	extui	a3, a9, 16, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	addx4	a6, a6, a8
	and	a3, a3, a13
	xor	a3, a15, a3
	l32i.n	a15, a2, 4
	xor	a15, a3, a15
	extui	a3, a11, 8, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	and	a3, a3, a12
	xor	a3, a15, a3
	l8ui	a15, a6, 1
	.loc 1 99 0
	extui	a6, a10, 0, 8
	.loc 1 97 0
	xor	a15, a3, a15
.LVL31:
	.loc 1 98 0
	extui	a3, a15, 24, 8
	s8i	a3, a5, 4
	extui	a3, a15, 16, 16
	s8i	a3, a5, 5
	srli	a3, a15, 8
	s8i	a3, a5, 6
	.loc 1 99 0
	extui	a3, a9, 24, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	.loc 1 98 0
	s8i	a15, a5, 7
	.loc 1 99 0
	slli	a3, a3, 8
	and	a15, a3, a14
.LVL32:
	extui	a3, a11, 16, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	addx4	a6, a6, a8
	and	a3, a3, a13
	xor	a3, a15, a3
	l32i.n	a15, a2, 8
	.loc 1 101 0
	extui	a11, a11, 24, 8
.LVL33:
	.loc 1 99 0
	xor	a15, a3, a15
	extui	a3, a4, 8, 8
	addx4	a3, a3, a8
	l32i.n	a3, a3, 0
	.loc 1 101 0
	addx4	a11, a11, a8
	.loc 1 99 0
	and	a3, a3, a12
	xor	a3, a15, a3
	l8ui	a15, a6, 1
	.loc 1 101 0
	extui	a4, a4, 16, 8
.LVL34:
	.loc 1 99 0
	xor	a15, a3, a15
.LVL35:
	.loc 1 100 0
	extui	a3, a15, 24, 8
	s8i	a3, a5, 8
	extui	a3, a15, 16, 16
	s8i	a3, a5, 9
	srli	a3, a15, 8
	s8i	a3, a5, 10
	.loc 1 101 0
	l32i.n	a3, a11, 0
	addx4	a4, a4, a8
	slli	a3, a3, 8
	and	a14, a3, a14
	l32i.n	a3, a4, 0
	.loc 1 100 0
	s8i	a15, a5, 11
	.loc 1 101 0
	l32i.n	a2, a2, 12
	and	a13, a3, a13
	extui	a10, a10, 8, 8
.LVL36:
	addx4	a10, a10, a8
	xor	a13, a14, a13
	xor	a13, a13, a2
	extui	a9, a9, 0, 8
.LVL37:
	l32i.n	a2, a10, 0
	addx4	a8, a9, a8
	and	a12, a2, a12
	l8ui	a2, a8, 1
	xor	a12, a13, a12
	xor	a12, a12, a2
.LVL38:
	.loc 1 102 0
	extui	a2, a12, 24, 8
	s8i	a2, a5, 12
	extui	a2, a12, 16, 16
	s8i	a2, a5, 13
	srli	a2, a12, 8
	s8i	a2, a5, 14
	s8i	a12, a5, 15
	retw.n
.LFE2:
	.size	rijndaelEncrypt, .-rijndaelEncrypt
	.section	.text.aes_encrypt_init,"ax",@progbits
	.align	4
	.global	aes_encrypt_init
	.type	aes_encrypt_init, @function
aes_encrypt_init:
.LFB3:
	.loc 1 107 0
.LVL39:
	entry	sp, 32
.LCFI1:
	.loc 1 110 0
	movi	a10, 0xf4
	call8	malloc
.LVL40:
	mov.n	a4, a10
.LVL41:
	.loc 1 112 0
	mov.n	a8, a10
	.loc 1 111 0
	beqz.n	a10, .L5
	.loc 1 113 0
	slli	a12, a3, 3
	mov.n	a11, a2
	call8	rijndaelKeySetupEnc
.LVL42:
	.loc 1 114 0
	bgez	a10, .L6
	.loc 1 115 0
	mov.n	a10, a4
.LVL43:
	call8	free
.LVL44:
	.loc 1 116 0
	movi.n	a8, 0
	j	.L5
.LVL45:
.L6:
	.loc 1 118 0
	s32i	a10, a4, 240
	.loc 1 119 0
	mov.n	a8, a4
.LVL46:
.L5:
	.loc 1 120 0
	mov.n	a2, a8
.LVL47:
	retw.n
.LFE3:
	.size	aes_encrypt_init, .-aes_encrypt_init
	.section	.text.aes_encrypt,"ax",@progbits
	.align	4
	.global	aes_encrypt
	.type	aes_encrypt, @function
aes_encrypt:
.LFB4:
	.loc 1 124 0
.LVL48:
	entry	sp, 32
.LCFI2:
.LVL49:
	.loc 1 126 0
	l32i	a11, a2, 240
	.loc 1 124 0
	mov.n	a10, a2
	.loc 1 126 0
	mov.n	a13, a4
	mov.n	a12, a3
	call8	rijndaelEncrypt
.LVL50:
	retw.n
.LFE4:
	.size	aes_encrypt, .-aes_encrypt
	.section	.text.aes_encrypt_deinit,"ax",@progbits
	.align	4
	.global	aes_encrypt_deinit
	.type	aes_encrypt_deinit, @function
aes_encrypt_deinit:
.LFB5:
	.loc 1 131 0
.LVL51:
	entry	sp, 32
.LCFI3:
	.loc 1 133 0
	mov.n	a10, a2
	call8	free
.LVL52:
	retw.n
.LFE5:
	.size	aes_encrypt_deinit, .-aes_encrypt_deinit
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
	.uleb128 0x20
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
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/aes_i.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x346
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.string	"u32"
	.byte	0x5
	.byte	0xa6
	.4byte	0x7e
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4c
	.4byte	0xb2
	.byte	0x3
	.4byte	0xee
	.uleb128 0x8
	.string	"val"
	.byte	0x7
	.byte	0x4c
	.4byte	0xb2
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4c
	.4byte	0x4c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7
	.uleb128 0xb
	.string	"rk"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1b7
	.4byte	.LLST0
	.uleb128 0xb
	.string	"Nr"
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0xb
	.string	"pt"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1c2
	.4byte	.LLST2
	.uleb128 0xc
	.string	"ct"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1cd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"s0"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0xd
	.string	"s1"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST4
	.uleb128 0xd
	.string	"s2"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST5
	.uleb128 0xd
	.string	"s3"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST6
	.uleb128 0xd
	.string	"t0"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST7
	.uleb128 0xd
	.string	"t1"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0xd
	.string	"t2"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST9
	.uleb128 0xd
	.string	"t3"
	.byte	0x1
	.byte	0x21
	.4byte	0xb2
	.4byte	.LLST10
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c
	.4byte	.LLST11
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0xf
	.4byte	0xb2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0xf
	.4byte	0xbd
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6a
	.4byte	0xa2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a
	.uleb128 0xb
	.string	"key"
	.byte	0x1
	.byte	0x6a
	.4byte	0x1c2
	.4byte	.LLST12
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x6a
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"rk"
	.byte	0x1
	.byte	0x6c
	.4byte	0x26a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0x6d
	.4byte	0x4c
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	.LVL40
	.4byte	0x328
	.4byte	0x237
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xf4
	.byte	0
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0x333
	.4byte	0x259
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.4byte	.LVL44
	.4byte	0x33e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb2
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x7b
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7b
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7b
	.4byte	0x1cd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"rk"
	.byte	0x1
	.byte	0x7d
	.4byte	0x26a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL50
	.4byte	0xee
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x82
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x308
	.uleb128 0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x82
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL52
	.4byte	0x33e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xb2
	.4byte	0x318
	.uleb128 0x17
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.string	"Te0"
	.byte	0x7
	.byte	0x17
	.4byte	0x323
	.uleb128 0xf
	.4byte	0x308
	.uleb128 0x19
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x6
	.byte	0x65
	.uleb128 0x19
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x7
	.byte	0x81
	.uleb128 0x19
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
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
	.uleb128 0x16
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7f
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	.LFB2
	.4byte	.LFE2
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
.LASF19:
	.string	"plain"
.LASF4:
	.string	"__uint8_t"
.LASF29:
	.string	"aes_encrypt_init"
.LASF28:
	.string	"rotr"
.LASF6:
	.string	"unsigned int"
.LASF20:
	.string	"crypt"
.LASF21:
	.string	"aes_encrypt_deinit"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF17:
	.string	"rijndaelEncrypt"
.LASF5:
	.string	"__uint32_t"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF13:
	.string	"sizetype"
.LASF24:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"rijndaelKeySetupEnc"
.LASF15:
	.string	"char"
.LASF16:
	.string	"bits"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF18:
	.string	"aes_encrypt"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"malloc"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/aes-internal-enc.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
