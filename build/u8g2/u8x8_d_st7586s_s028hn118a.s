	.file	"u8x8_d_st7586s_s028hn118a.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7586s_s028hn118a,"ax",@progbits
	.literal_position
	.literal .LC2, 8388608
	.literal .LC3, 4194304
	.literal .LC4, 2097152
	.literal .LC5, u8x8_d_st7586s_sleep_off
	.literal .LC6, u8x8_d_st7586s_sleep_on
	.literal .LC7, u8x8_d_st7586s_s028hn118a_init_seq
	.literal .LC8, u8x8_st7586s_s028hn118a_display_info
	.literal .LC9, u8x8_d_st7586s_s028hn118a_flip0_seq
	.literal .LC10, u8x8_d_st7586s_s028hn118a_flip1_seq
	.align	4
	.global	u8x8_d_st7586s_s028hn118a
	.type	u8x8_d_st7586s_s028hn118a, @function
u8x8_d_st7586s_s028hn118a:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7586s_s028hn118a.c"
	.loc 1 218 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 218 0
	extui	a3, a3, 0, 8
.LVL2:
.LBB4:
.LBB5:
	.loc 1 74 0
	movi.n	a6, 0xe
.LBE5:
.LBE4:
	.loc 1 218 0
	extui	a4, a4, 0, 8
.LVL3:
.LBB7:
.LBB6:
	.loc 1 74 0
	beq	a3, a6, .L3
	movi.n	a6, 0xf
	beq	a3, a6, .L4
	movi.n	a5, 0xb
.LVL4:
	bne	a3, a5, .L28
	j	.L5
.LVL5:
.L4:
	.loc 1 76 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL6:
	.loc 1 77 0
	movi.n	a11, 0x2b
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL7:
	.loc 1 78 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL8:
	.loc 1 79 0
	l8ui	a11, a5, 6
	mov.n	a10, a2
	slli	a11, a11, 3
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL9:
	.loc 1 80 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL10:
	.loc 1 81 0
	l32i.n	a3, a2, 0
.LVL11:
	mov.n	a10, a2
	l8ui	a11, a3, 22
	addi.n	a11, a11, -1
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL12:
	.loc 1 82 0
	movi.n	a11, 0x2c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL13:
	.loc 1 83 0
	l8ui	a3, a5, 4
.LVL14:
	.loc 1 85 0
	l32i.n	a4, a5, 0
.LVL15:
	.loc 1 84 0
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL16:
	j	.L6
.LVL17:
.L11:
	.loc 1 90 0
	l8ui	a9, a4, 0
	l8ui	a5, a4, 1
	slli	a9, a9, 16
	slli	a5, a5, 8
	or	a5, a9, a5
	l8ui	a9, a4, 2
	movi.n	a10, 0
	.loc 1 96 0
	l32r	a15, .LC3
	.loc 1 90 0
	or	a9, a5, a9
.LVL18:
	.loc 1 95 0
	mov.n	a13, a10
	movi	a14, 0xc0
	.loc 1 97 0
	movi.n	a5, 0x18
	.loc 1 99 0
	movi.n	a6, 3
	movi.n	a11, 8
	loop	a11, .L10_LEND
.LVL19:
.L10:
	.loc 1 94 0
	l32r	a12, .LC2
	and	a8, a9, a12
	.loc 1 95 0
	mov.n	a12, a14
	moveqz	a12, a13, a8
	mov.n	a8, a12
.LVL20:
	.loc 1 96 0
	bnone	a9, a15, .L8
	.loc 1 97 0
	or	a8, a12, a5
.LVL21:
	extui	a8, a8, 0, 8
.LVL22:
.L8:
	.loc 1 98 0
	l32r	a12, .LC4
	bnone	a9, a12, .L9
	.loc 1 99 0
	or	a8, a8, a6
.LVL23:
	extui	a8, a8, 0, 8
.LVL24:
.L9:
	.loc 1 100 0
	add.n	a12, sp, a10
	s8i	a8, a12, 0
	.loc 1 101 0
	slli	a9, a9, 3
.LVL25:
	addi.n	a10, a10, 1
.LVL26:
	.L10_LEND:
	.loc 1 103 0
	mov.n	a12, sp
	movi.n	a11, 8
	mov.n	a10, a2
.LVL27:
	.loc 1 105 0
	addi	a3, a3, -3
.LVL28:
	.loc 1 103 0
	call8	u8x8_cad_SendData
.LVL29:
	.loc 1 104 0
	addi.n	a4, a4, 3
.LVL30:
	.loc 1 105 0
	extui	a3, a3, 0, 8
.LVL31:
.L6:
	.loc 1 89 0
	bnez.n	a3, .L11
	j	.L29
.LVL32:
.L5:
	.loc 1 111 0
	l32r	a11, .LC5
	.loc 1 110 0
	beqz.n	a4, .L30
.L12:
	.loc 1 113 0
	l32r	a11, .LC6
.L30:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL33:
	j	.L20
.LVL34:
.L3:
	.loc 1 117 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL35:
	.loc 1 118 0
	movi	a11, 0xc0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL36:
	.loc 1 119 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL37:
	.loc 1 120 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL38:
.L29:
	.loc 1 121 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL39:
	j	.L20
.L28:
	.loc 1 125 0
	movi.n	a5, 0
.LBE6:
.LBE7:
	.loc 1 222 0
	beqi	a3, 10, .L14
	movi.n	a6, 0xd
	beq	a3, a6, .L15
	movi.n	a4, 9
	bne	a3, a4, .L13
	j	.L16
.L14:
	.loc 1 224 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL40:
	.loc 1 225 0
	l32r	a11, .LC7
	j	.L30
.L16:
	.loc 1 228 0
	l32r	a11, .LC8
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL41:
	j	.L20
.L15:
	.loc 1 231 0
	bnez.n	a4, .L17
	.loc 1 233 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL42:
	.loc 1 234 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L31
.L17:
	.loc 1 238 0
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL43:
	.loc 1 239 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L31:
	s8i	a3, a2, 34
.L20:
	.loc 1 220 0
	movi.n	a5, 1
.L13:
	.loc 1 246 0
	mov.n	a2, a5
.LVL44:
	retw.n
.LFE1:
	.size	u8x8_d_st7586s_s028hn118a, .-u8x8_d_st7586s_s028hn118a
	.section	.rodata.u8x8_st7586s_s028hn118a_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7586s_s028hn118a_display_info, @object
	.size	u8x8_st7586s_s028hn118a_display_info, 24
u8x8_st7586s_s028hn118a_display_info:
	.byte	0
	.byte	1
	.byte	5
	.byte	5
	.byte	1
	.byte	6
	.byte	20
	.byte	100
	.word	8000000
	.byte	3
	.byte	4
	.byte	20
	.byte	40
	.byte	48
	.byte	17
	.byte	0
	.byte	0
	.short	384
	.short	136
	.section	.rodata.u8x8_d_st7586s_s028hn118a_init_seq,"a",@progbits
	.type	u8x8_d_st7586s_s028hn118a_init_seq, @object
	.size	u8x8_d_st7586s_s028hn118a_init_seq, 89
u8x8_d_st7586s_s028hn118a_init_seq:
	.byte	25
	.byte	-2
	.byte	60
	.byte	24
	.byte	21
	.byte	1
	.byte	-2
	.byte	60
	.byte	21
	.byte	17
	.byte	21
	.byte	40
	.byte	-2
	.byte	25
	.byte	21
	.byte	-64
	.byte	22
	.byte	-27
	.byte	22
	.byte	0
	.byte	21
	.byte	-61
	.byte	22
	.byte	4
	.byte	21
	.byte	-60
	.byte	22
	.byte	5
	.byte	21
	.byte	-48
	.byte	22
	.byte	29
	.byte	21
	.byte	-77
	.byte	22
	.byte	0
	.byte	21
	.byte	-75
	.byte	22
	.byte	-117
	.byte	21
	.byte	57
	.byte	21
	.byte	58
	.byte	22
	.byte	2
	.byte	21
	.byte	54
	.byte	22
	.byte	0
	.byte	21
	.byte	-80
	.byte	22
	.byte	-121
	.byte	21
	.byte	32
	.byte	21
	.byte	42
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	127
	.byte	21
	.byte	43
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	-121
	.byte	21
	.byte	-15
	.byte	22
	.byte	12
	.byte	22
	.byte	12
	.byte	22
	.byte	12
	.byte	22
	.byte	12
	.byte	21
	.byte	41
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_s028hn118a_flip1_seq,"a",@progbits
	.type	u8x8_d_st7586s_s028hn118a_flip1_seq, @object
	.size	u8x8_d_st7586s_s028hn118a_flip1_seq, 11
u8x8_d_st7586s_s028hn118a_flip1_seq:
	.byte	24
	.byte	21
	.byte	54
	.byte	22
	.byte	-56
	.byte	21
	.byte	55
	.byte	22
	.byte	24
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_s028hn118a_flip0_seq,"a",@progbits
	.type	u8x8_d_st7586s_s028hn118a_flip0_seq, @object
	.size	u8x8_d_st7586s_s028hn118a_flip0_seq, 11
u8x8_d_st7586s_s028hn118a_flip0_seq:
	.byte	24
	.byte	21
	.byte	54
	.byte	22
	.byte	0
	.byte	21
	.byte	55
	.byte	22
	.byte	0
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_sleep_off,"a",@progbits
	.type	u8x8_d_st7586s_sleep_off, @object
	.size	u8x8_d_st7586s_sleep_off, 7
u8x8_d_st7586s_sleep_off:
	.byte	24
	.byte	21
	.byte	17
	.byte	-2
	.byte	50
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_sleep_on,"a",@progbits
	.type	u8x8_d_st7586s_sleep_on, @object
	.size	u8x8_d_st7586s_sleep_on, 5
u8x8_d_st7586s_sleep_on:
	.byte	24
	.byte	21
	.byte	16
	.byte	25
	.byte	-1
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x798
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
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
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc3
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x4
	.2byte	0x146
	.4byte	0x1b1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x148
	.4byte	0x35e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x149
	.4byte	0x333
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x14a
	.4byte	0x2fe
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x14b
	.4byte	0x2fe
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x14c
	.4byte	0x2fe
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x14d
	.4byte	0x2fe
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x14e
	.4byte	0x94
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x14f
	.4byte	0x369
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x150
	.4byte	0x89
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x151
	.4byte	0x7e
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x152
	.4byte	0x7e
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x153
	.4byte	0x7e
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x156
	.4byte	0x7e
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x158
	.4byte	0x7e
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x159
	.4byte	0x7e
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x15a
	.4byte	0x7e
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x15b
	.4byte	0x7e
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x15c
	.4byte	0x7e
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x15d
	.4byte	0x7e
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0xc4
	.4byte	0x1bc
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x18
	.byte	0x4
	.byte	0xdd
	.4byte	0x2b6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe1
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0xe2
	.4byte	0x7e
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0xe4
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0xe5
	.4byte	0x7e
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0xe6
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0xe7
	.4byte	0x7e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xee
	.4byte	0x7e
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xf2
	.4byte	0x7e
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf5
	.4byte	0x94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0xff
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x102
	.4byte	0x7e
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x108
	.4byte	0x7e
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x10a
	.4byte	0x7e
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x10e
	.4byte	0x7e
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x110
	.4byte	0x7e
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x111
	.4byte	0x7e
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x119
	.4byte	0x89
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x11a
	.4byte	0x89
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xc5
	.4byte	0x2c1
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4
	.byte	0xd4
	.4byte	0x2fe
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd6
	.4byte	0x358
	.byte	0
	.uleb128 0xa
	.string	"cnt"
	.byte	0x4
	.byte	0xd7
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd8
	.4byte	0x7e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd9
	.4byte	0x7e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc7
	.4byte	0x309
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30f
	.uleb128 0xc
	.4byte	0x7e
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc8
	.4byte	0x33e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x344
	.uleb128 0xc
	.4byte	0x89
	.4byte	0x358
	.uleb128 0xd
	.4byte	0x32d
	.uleb128 0xd
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x364
	.uleb128 0xe
	.4byte	0x1b1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x36f
	.uleb128 0xe
	.4byte	0x7e
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.byte	0x1
	.4byte	0x3ef
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x44
	.4byte	0x32d
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x44
	.4byte	0x9f
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0x46
	.4byte	0x358
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x47
	.4byte	0x7e
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.byte	0x48
	.4byte	0x94
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1
	.byte	0x49
	.4byte	0x3ef
	.byte	0
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x3ff
	.uleb128 0x15
	.4byte	0x3ff
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x1
	.byte	0xda
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67c
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0xda
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0xda
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0xda
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xda
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	0x374
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xdb
	.4byte	0x614
	.uleb128 0x1a
	.4byte	0x3a5
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x39a
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	0x38f
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	0x384
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	0x3b0
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	0x3b9
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	0x3c4
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	0x3cd
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	0x3d8
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x73b
	.4byte	0x4e0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x747
	.4byte	0x4fa
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0x753
	.4byte	0x513
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0x753
	.4byte	0x527
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL10
	.4byte	0x753
	.4byte	0x540
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0x753
	.4byte	0x554
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL13
	.4byte	0x747
	.4byte	0x56e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0x75f
	.4byte	0x58d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0x76b
	.4byte	0x5a1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL35
	.4byte	0x73b
	.4byte	0x5b5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL36
	.4byte	0x747
	.4byte	0x5cf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0x753
	.4byte	0x5e9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL38
	.4byte	0x753
	.4byte	0x602
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x777
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL40
	.4byte	0x783
	.4byte	0x628
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0x78f
	.4byte	0x645
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7586s_s028hn118a_display_info
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0x76b
	.4byte	0x662
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_s028hn118a_flip0_seq
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0x76b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_s028hn118a_flip1_seq
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x68c
	.uleb128 0x15
	.4byte	0x3ff
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.4byte	0x69d
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_sleep_on
	.uleb128 0xe
	.4byte	0x67c
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x6b2
	.uleb128 0x15
	.4byte	0x3ff
	.byte	0x6
	.byte	0
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x1
	.byte	0x28
	.4byte	0x6c3
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_sleep_off
	.uleb128 0xe
	.4byte	0x6a2
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x6d8
	.uleb128 0x15
	.4byte	0x3ff
	.byte	0xa
	.byte	0
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0x30
	.4byte	0x6e9
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_s028hn118a_flip0_seq
	.uleb128 0xe
	.4byte	0x6c8
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3a
	.4byte	0x6ff
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_s028hn118a_flip1_seq
	.uleb128 0xe
	.4byte	0x6c8
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x714
	.uleb128 0x15
	.4byte	0x3ff
	.byte	0x58
	.byte	0
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0x82
	.4byte	0x725
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_s028hn118a_init_seq
	.uleb128 0xe
	.4byte	0x704
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xbe
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7586s_s028hn118a_display_info
	.uleb128 0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x259
	.uleb128 0x22
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x255
	.uleb128 0x22
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x256
	.uleb128 0x22
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x258
	.uleb128 0x22
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x278
	.uleb128 0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x25a
	.uleb128 0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x22
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x1a4
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL16
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7a
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"reset_pulse_width_ms"
.LASF3:
	.string	"__uint8_t"
.LASF18:
	.string	"byte_cb"
.LASF56:
	.string	"u8x8_tile_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"post_reset_wait_ms"
.LASF27:
	.string	"utf8_state"
.LASF28:
	.string	"gpio_result"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"is_font_inverse_mode"
.LASF16:
	.string	"display_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF72:
	.string	"u8x8_d_st7586s_s028hn118a_flip1_seq"
.LASF79:
	.string	"u8x8_cad_SendSequence"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF73:
	.string	"u8x8_d_st7586s_s028hn118a_init_seq"
.LASF74:
	.string	"u8x8_st7586s_s028hn118a_display_info"
.LASF65:
	.string	"byte"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF82:
	.string	"u8x8_d_helper_display_setup_memory"
.LASF58:
	.string	"x_pos"
.LASF55:
	.string	"u8x8_tile_t"
.LASF32:
	.string	"debounce_result_msg"
.LASF7:
	.string	"unsigned int"
.LASF63:
	.string	"arg_int"
.LASF25:
	.string	"i2c_address"
.LASF87:
	.string	"u8x8_d_st7586s_s028hn118a"
.LASF67:
	.string	"output"
.LASF83:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF78:
	.string	"u8x8_cad_SendData"
.LASF5:
	.string	"short unsigned int"
.LASF30:
	.string	"debounce_last_pin_state"
.LASF14:
	.string	"display_info"
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7586s_s028hn118a.c"
.LASF43:
	.string	"sck_pulse_width_ns"
.LASF34:
	.string	"u8x8_struct"
.LASF51:
	.string	"default_x_offset"
.LASF22:
	.string	"encoding"
.LASF52:
	.string	"flipmode_x_offset"
.LASF68:
	.string	"sizetype"
.LASF17:
	.string	"cad_cb"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF23:
	.string	"x_offset"
.LASF81:
	.string	"u8x8_d_helper_display_init"
.LASF71:
	.string	"u8x8_d_st7586s_s028hn118a_flip0_seq"
.LASF50:
	.string	"tile_height"
.LASF60:
	.string	"u8x8_msg_cb"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"u8x8"
.LASF66:
	.string	"input"
.LASF47:
	.string	"data_setup_time_ns"
.LASF46:
	.string	"i2c_bus_clock_100kHz"
.LASF12:
	.string	"uint32_t"
.LASF75:
	.string	"u8x8_cad_StartTransfer"
.LASF45:
	.string	"spi_mode"
.LASF36:
	.string	"chip_enable_level"
.LASF57:
	.string	"tile_ptr"
.LASF4:
	.string	"__uint16_t"
.LASF80:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
.LASF86:
	.string	"u8x8_d_st7586s_common"
.LASF31:
	.string	"debounce_state"
.LASF64:
	.string	"arg_ptr"
.LASF70:
	.string	"u8x8_d_st7586s_sleep_off"
.LASF37:
	.string	"chip_disable_level"
.LASF21:
	.string	"font"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"i2c_started"
.LASF53:
	.string	"pixel_width"
.LASF49:
	.string	"tile_width"
.LASF29:
	.string	"debounce_default_pin_state"
.LASF59:
	.string	"y_pos"
.LASF76:
	.string	"u8x8_cad_SendCmd"
.LASF77:
	.string	"u8x8_cad_SendArg"
.LASF35:
	.string	"u8x8_display_info_struct"
.LASF69:
	.string	"u8x8_d_st7586s_sleep_on"
.LASF54:
	.string	"pixel_height"
.LASF44:
	.string	"sck_clock_hz"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
