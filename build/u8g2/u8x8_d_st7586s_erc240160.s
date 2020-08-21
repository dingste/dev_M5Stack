	.file	"u8x8_d_st7586s_erc240160.c"
	.text
.Ltext0:
	.section	.text.u8x8_d_st7586s_erc240160,"ax",@progbits
	.literal_position
	.literal .LC2, .L4
	.literal .LC3, u8x8_d_st7586s_erc240160_init_seq
	.literal .LC4, u8x8_st7586s_erc240160_display_info
	.literal .LC5, u8x8_d_st7586s_erc240160_flip0_seq
	.literal .LC6, u8x8_d_st7586s_erc240160_flip1_seq
	.literal .LC7, u8x8_d_st7586s_sleep_off
	.literal .LC8, u8x8_d_st7586s_sleep_on
	.align	4
	.global	u8x8_d_st7586s_erc240160
	.type	u8x8_d_st7586s_erc240160, @function
u8x8_d_st7586s_erc240160:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7586s_erc240160.c"
	.loc 1 166 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 173 0
	addi	a3, a3, -9
.LVL1:
	extui	a3, a3, 0, 8
	.loc 1 166 0
	extui	a4, a4, 0, 8
	.loc 1 173 0
	bgeui	a3, 7, .L20
	l32r	a6, .LC2
	addx4	a3, a3, a6
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.u8x8_d_st7586s_erc240160,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L20
	.word	.L7
	.word	.L8
	.word	.L9
	.section	.text.u8x8_d_st7586s_erc240160
.L9:
	.loc 1 175 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL2:
	.loc 1 176 0
	movi.n	a11, 0x2b
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL3:
	.loc 1 177 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL4:
	.loc 1 178 0
	l8ui	a11, a5, 6
	mov.n	a10, a2
	slli	a11, a11, 3
	extui	a11, a11, 0, 8
	call8	u8x8_cad_SendArg
.LVL5:
	.loc 1 179 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL6:
	.loc 1 180 0
	movi	a11, 0x9f
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL7:
	.loc 1 181 0
	movi.n	a11, 0x2c
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL8:
	.loc 1 182 0
	l8ui	a3, a5, 4
.LVL9:
	.loc 1 184 0
	l32i.n	a4, a5, 0
.LVL10:
	.loc 1 183 0
	slli	a3, a3, 3
	extui	a3, a3, 0, 8
.LVL11:
	.loc 1 195 0
	movi.n	a5, 0
.LVL12:
	.loc 1 190 0
	j	.L10
.L17:
	.loc 1 191 0
	l8ui	a9, a4, 0
.LVL13:
	.loc 1 196 0
	l8ui	a12, a2, 34
	movi.n	a11, 0
	.loc 1 203 0
	movi	a13, 0x80
	.loc 1 205 0
	movi.n	a14, 0x40
	.loc 1 198 0
	movi.n	a6, 0x18
	.loc 1 200 0
	movi.n	a7, 3
	movi.n	a10, 4
	loop	a10, .L16_LEND
.LVL14:
.L16:
	.loc 1 196 0
	bnez.n	a12, .L11
	.loc 1 197 0
	and	a8, a9, a13
	.loc 1 198 0
	mov.n	a15, a6
	moveqz	a15, a5, a8
	mov.n	a8, a15
.LVL15:
	.loc 1 199 0
	bnone	a9, a14, .L14
	.loc 1 200 0
	or	a8, a15, a7
.LVL16:
	j	.L31
.LVL17:
.L11:
	.loc 1 195 0
	movi.n	a8, 0
	.loc 1 202 0
	bnei	a12, 1, .L14
	.loc 1 203 0
	and	a8, a9, a13
	.loc 1 195 0
	movi	a15, 0xc0
	moveqz	a15, a5, a8
	mov.n	a8, a15
.LVL18:
	.loc 1 205 0
	bnone	a9, a14, .L14
	.loc 1 206 0
	movi.n	a15, 0x18
	or	a8, a8, a15
.LVL19:
.L31:
	extui	a8, a8, 0, 8
.LVL20:
.L14:
	.loc 1 208 0 discriminator 2
	add.n	a15, sp, a11
	s8i	a8, a15, 0
	.loc 1 209 0 discriminator 2
	slli	a9, a9, 2
.LVL21:
	addi.n	a11, a11, 1
.LVL22:
	.L16_LEND:
	.loc 1 212 0
	mov.n	a12, sp
	movi.n	a11, 4
.LVL23:
	mov.n	a10, a2
	.loc 1 214 0
	addi.n	a3, a3, -1
.LVL24:
	.loc 1 212 0
	call8	u8x8_cad_SendData
.LVL25:
	.loc 1 213 0
	addi.n	a4, a4, 1
.LVL26:
	.loc 1 214 0
	extui	a3, a3, 0, 8
.LVL27:
.L10:
	.loc 1 190 0
	bnez.n	a3, .L17
	j	.L34
.LVL28:
.L5:
	.loc 1 219 0
	mov.n	a10, a2
	call8	u8x8_d_helper_display_init
.LVL29:
	.loc 1 220 0
	l32r	a11, .LC3
	j	.L33
.L3:
	.loc 1 223 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	u8x8_d_helper_display_setup_memory
.LVL30:
	j	.L32
.L7:
	.loc 1 226 0
	bnez.n	a4, .L18
	.loc 1 228 0
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL31:
	.loc 1 229 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 18
	j	.L35
.L18:
	.loc 1 233 0
	l32r	a11, .LC6
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL32:
	.loc 1 234 0
	l32i.n	a3, a2, 0
	l8ui	a3, a3, 19
.L35:
	s8i	a3, a2, 34
	j	.L32
.L6:
	.loc 1 239 0
	l32r	a11, .LC7
	.loc 1 238 0
	beqz.n	a4, .L33
.L19:
	.loc 1 241 0
	l32r	a11, .LC8
.L33:
	mov.n	a10, a2
	call8	u8x8_cad_SendSequence
.LVL33:
.L32:
	.loc 1 255 0
	movi.n	a2, 1
.LVL34:
	retw.n
.LVL35:
.L8:
	.loc 1 245 0
	mov.n	a10, a2
	call8	u8x8_cad_StartTransfer
.LVL36:
	.loc 1 246 0
	movi	a11, 0xc0
	mov.n	a10, a2
	call8	u8x8_cad_SendCmd
.LVL37:
	.loc 1 247 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL38:
	.loc 1 248 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	u8x8_cad_SendArg
.LVL39:
.L34:
	.loc 1 249 0
	mov.n	a10, a2
	call8	u8x8_cad_EndTransfer
.LVL40:
	j	.L32
.LVL41:
.L20:
	.loc 1 253 0
	movi.n	a2, 0
.LVL42:
	.loc 1 256 0
	retw.n
.LFE0:
	.size	u8x8_d_st7586s_erc240160, .-u8x8_d_st7586s_erc240160
	.section	.rodata.u8x8_st7586s_erc240160_display_info,"a",@progbits
	.align	4
	.type	u8x8_st7586s_erc240160_display_info, @object
	.size	u8x8_st7586s_erc240160_display_info, 24
u8x8_st7586s_erc240160_display_info:
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
	.byte	30
	.byte	20
	.byte	0
	.byte	1
	.short	240
	.short	160
	.section	.rodata.u8x8_d_st7586s_erc240160_init_seq,"a",@progbits
	.type	u8x8_d_st7586s_erc240160_init_seq, @object
	.size	u8x8_d_st7586s_erc240160_init_seq, 83
u8x8_d_st7586s_erc240160_init_seq:
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
	.byte	54
	.byte	22
	.byte	1
	.byte	21
	.byte	-61
	.byte	22
	.byte	0
	.byte	21
	.byte	-60
	.byte	22
	.byte	7
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
	.byte	0
	.byte	21
	.byte	57
	.byte	21
	.byte	58
	.byte	22
	.byte	2
	.byte	21
	.byte	54
	.byte	22
	.byte	-56
	.byte	21
	.byte	-79
	.byte	22
	.byte	0
	.byte	21
	.byte	-80
	.byte	22
	.byte	-97
	.byte	21
	.byte	32
	.byte	21
	.byte	42
	.byte	22
	.byte	0
	.byte	22
	.byte	8
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
	.byte	-97
	.byte	21
	.byte	41
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_erc240160_flip1_seq,"a",@progbits
	.type	u8x8_d_st7586s_erc240160_flip1_seq, @object
	.size	u8x8_d_st7586s_erc240160_flip1_seq, 21
u8x8_d_st7586s_erc240160_flip1_seq:
	.byte	24
	.byte	21
	.byte	54
	.byte	22
	.byte	0
	.byte	21
	.byte	55
	.byte	22
	.byte	0
	.byte	21
	.byte	42
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	0
	.byte	22
	.byte	119
	.byte	25
	.byte	-1
	.section	.rodata.u8x8_d_st7586s_erc240160_flip0_seq,"a",@progbits
	.type	u8x8_d_st7586s_erc240160_flip0_seq, @object
	.size	u8x8_d_st7586s_erc240160_flip0_seq, 21
u8x8_d_st7586s_erc240160_flip0_seq:
	.byte	24
	.byte	21
	.byte	54
	.byte	22
	.byte	-56
	.byte	21
	.byte	55
	.byte	22
	.byte	0
	.byte	21
	.byte	42
	.byte	22
	.byte	0
	.byte	22
	.byte	8
	.byte	22
	.byte	0
	.byte	22
	.byte	127
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
	.4byte	0x709
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
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
	.byte	0xa6
	.4byte	0x7e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d6
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa6
	.4byte	0x32d
	.4byte	.LLST0
	.uleb128 0x11
	.string	"msg"
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa6
	.4byte	0x9f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1
	.byte	0xa9
	.4byte	0x358
	.4byte	.LLST5
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0xaa
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.byte	0xab
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0xac
	.4byte	0x5d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x6ac
	.4byte	0x432
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0x6b8
	.4byte	0x44c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x6c4
	.4byte	0x465
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x6c4
	.4byte	0x479
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x6c4
	.4byte	0x492
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x6c4
	.4byte	0x4ac
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x6b8
	.4byte	0x4c6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0x6d0
	.4byte	0x4e5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x6dc
	.4byte	0x4f9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0x6e8
	.4byte	0x516
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7586s_erc240160_display_info
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x6f4
	.4byte	0x533
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_erc240160_flip0_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x6f4
	.4byte	0x550
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_erc240160_flip1_seq
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x6f4
	.4byte	0x564
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x6ac
	.4byte	0x578
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0x6b8
	.4byte	0x592
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x6c4
	.4byte	0x5ac
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0x6c4
	.4byte	0x5c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x700
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x5e6
	.uleb128 0x19
	.4byte	0x5e6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x5fd
	.uleb128 0x19
	.4byte	0x5e6
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x24
	.4byte	0x60e
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_sleep_on
	.uleb128 0xe
	.4byte	0x5ed
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x623
	.uleb128 0x19
	.4byte	0x5e6
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2b
	.4byte	0x634
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_sleep_off
	.uleb128 0xe
	.4byte	0x613
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x649
	.uleb128 0x19
	.4byte	0x5e6
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x33
	.4byte	0x65a
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_erc240160_flip0_seq
	.uleb128 0xe
	.4byte	0x639
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x42
	.4byte	0x670
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_erc240160_flip1_seq
	.uleb128 0xe
	.4byte	0x639
	.uleb128 0x18
	.4byte	0x7e
	.4byte	0x685
	.uleb128 0x19
	.4byte	0x5e6
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x51
	.4byte	0x696
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_d_st7586s_erc240160_init_seq
	.uleb128 0xe
	.4byte	0x675
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8a
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	u8x8_st7586s_erc240160_display_info
	.uleb128 0x1a
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x259
	.uleb128 0x1a
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x255
	.uleb128 0x1a
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x256
	.uleb128 0x1a
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x258
	.uleb128 0x1a
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x1a5
	.uleb128 0x1a
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x1a4
	.uleb128 0x1a
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x278
	.uleb128 0x1a
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x25a
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL11
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL25-1
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
.LASF86:
	.string	"u8x8_d_st7586s_erc240160"
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
.LASF73:
	.string	"u8x8_d_st7586s_erc240160_init_seq"
.LASF16:
	.string	"display_cb"
.LASF39:
	.string	"pre_chip_disable_wait_ns"
.LASF81:
	.string	"u8x8_cad_SendSequence"
.LASF11:
	.string	"uint16_t"
.LASF15:
	.string	"next_cb"
.LASF61:
	.string	"u8x8_char_cb"
.LASF19:
	.string	"gpio_and_delay_cb"
.LASF65:
	.string	"byte"
.LASF33:
	.string	"u8x8_display_info_t"
.LASF6:
	.string	"__uint32_t"
.LASF42:
	.string	"sda_setup_time_ns"
.LASF80:
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
.LASF67:
	.string	"output"
.LASF72:
	.string	"u8x8_d_st7586s_erc240160_flip1_seq"
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
.LASF84:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/u8g2/csrc/u8x8_d_st7586s_erc240160.c"
.LASF48:
	.string	"write_pulse_width_ns"
.LASF23:
	.string	"x_offset"
.LASF79:
	.string	"u8x8_d_helper_display_init"
.LASF50:
	.string	"tile_height"
.LASF74:
	.string	"u8x8_st7586s_erc240160_display_info"
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
.LASF71:
	.string	"u8x8_d_st7586s_erc240160_flip0_seq"
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
.LASF82:
	.string	"u8x8_cad_EndTransfer"
.LASF38:
	.string	"post_chip_enable_wait_ns"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/u8g2"
.LASF13:
	.string	"u8x8_t"
.LASF20:
	.string	"bus_clock"
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
