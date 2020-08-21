	.file	"btc_util.c"
	.text
.Ltext0:
	.section	.text.devclass2uint,"ax",@progbits
	.align	4
	.global	devclass2uint
	.type	devclass2uint, @function
devclass2uint:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_util.c"
	.loc 1 124 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 124 0
	mov.n	a9, a2
	.loc 1 127 0
	beqz.n	a2, .L2
	.loc 1 129 0
	l8ui	a8, a2, 1
	slli	a2, a8, 8
.LVL2:
	l8ui	a8, a9, 0
	slli	a8, a8, 16
	or	a8, a2, a8
	l8ui	a2, a9, 2
	or	a2, a8, a2
.LVL3:
.L2:
	.loc 1 132 0
	retw.n
.LFE12:
	.size	devclass2uint, .-devclass2uint
	.section	.text.uint2devclass,"ax",@progbits
	.align	4
	.global	uint2devclass
	.type	uint2devclass, @function
uint2devclass:
.LFB13:
	.loc 1 135 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 137 0
	srli	a8, a2, 8
	.loc 1 136 0
	s8i	a2, a3, 2
	.loc 1 138 0
	extui	a2, a2, 16, 16
.LVL5:
	.loc 1 137 0
	s8i	a8, a3, 1
	.loc 1 138 0
	s8i	a2, a3, 0
	retw.n
.LFE13:
	.size	uint2devclass, .-uint2devclass
	.section	.text.uuid128_be_to_esp_uuid,"ax",@progbits
	.literal_position
	.literal .LC2, base_uuid_be+4
	.align	4
	.global	uuid128_be_to_esp_uuid
	.type	uuid128_be_to_esp_uuid, @function
uuid128_be_to_esp_uuid:
.LFB14:
	.loc 1 145 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 146 0
	l32r	a10, .LC2
	movi.n	a12, 0xc
	addi.n	a11, a3, 4
	call8	memcmp
.LVL7:
	beqz.n	a10, .L6
.LBB30:
	.loc 1 147 0
	movi.n	a8, 0x10
	s8i	a8, a2, 0
	movi.n	a8, 0
	s8i	a8, a2, 1
.LVL8:
	addi.n	a3, a3, 15
.LVL9:
	.loc 1 149 0
	addi.n	a8, a2, 2
.LVL10:
	.loc 1 150 0
	addi	a2, a2, 18
.LVL11:
	.loc 1 151 0
	j	.L7
.LVL12:
.L8:
	.loc 1 151 0 is_stmt 0 discriminator 2
	l8ui	a9, a3, 0
	addi.n	a3, a3, -1
.LVL13:
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
.LVL14:
.L7:
	.loc 1 151 0 discriminator 1
	bne	a8, a2, .L8
	retw.n
.LVL15:
.L6:
.LBE30:
	.loc 1 153 0 is_stmt 1
	l8ui	a8, a3, 0
	bnez.n	a8, .L10
	.loc 1 153 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 1
	bnez.n	a8, .L10
	.loc 1 154 0 is_stmt 1
	movi.n	a9, 2
	s8i	a9, a2, 0
	s8i	a8, a2, 1
	.loc 1 155 0
	l8ui	a8, a3, 2
	l8ui	a3, a3, 3
.LVL16:
	slli	a8, a8, 8
	add.n	a3, a3, a8
	extui	a3, a3, 0, 16
	s8i	a3, a2, 2
	srli	a3, a3, 8
	s8i	a3, a2, 3
	retw.n
.LVL17:
.L10:
	.loc 1 157 0
	movi.n	a8, 4
	s8i	a8, a2, 0
	movi.n	a8, 0
	s8i	a8, a2, 1
	.loc 1 158 0
	l8ui	a8, a3, 2
	slli	a9, a8, 8
	l8ui	a8, a3, 3
	add.n	a8, a9, a8
	extui	a10, a8, 8, 8
	s8i	a10, a2, 3
	extui	a10, a8, 16, 8
	s8i	a10, a2, 4
	extui	a10, a8, 24, 8
	s8i	a8, a2, 2
	s8i	a10, a2, 5
	.loc 1 159 0
	l8ui	a10, a3, 0
	l8ui	a3, a3, 1
.LVL18:
	slli	a10, a10, 24
	slli	a3, a3, 16
	add.n	a3, a10, a3
	add.n	a8, a3, a8
	s8i	a8, a2, 2
	.loc 1 158 0
	addi.n	a9, a2, 2
	.loc 1 159 0
	extui	a2, a8, 8, 8
.LVL19:
	s8i	a2, a9, 1
	extui	a2, a8, 16, 8
	extui	a8, a8, 24, 8
	s8i	a2, a9, 2
	s8i	a8, a9, 3
	retw.n
.LFE14:
	.size	uuid128_be_to_esp_uuid, .-uuid128_be_to_esp_uuid
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"%.8x-%.4x-%.4x-%.4x-%.8x%.4x"
	.section	.text.uuid_to_string_legacy,"ax",@progbits
	.literal_position
	.literal .LC3, 65280
	.literal .LC4, 16711680
	.literal .LC6, .LC5
	.align	4
	.global	uuid_to_string_legacy
	.type	uuid_to_string_legacy, @function
uuid_to_string_legacy:
.LFB15:
	.loc 1 166 0
.LVL20:
	entry	sp, 64
.LCFI3:
	.loc 1 170 0
	l8ui	a4, a2, 1
	l8ui	a8, a2, 0
	s8i	a4, sp, 21
	l8ui	a4, a2, 3
	s8i	a8, sp, 20
	s8i	a4, sp, 23
	.loc 1 171 0
	l8ui	a4, a2, 5
	.loc 1 170 0
	l8ui	a8, a2, 2
	.loc 1 171 0
	s8i	a4, sp, 31
	.loc 1 172 0
	l8ui	a4, a2, 7
	.loc 1 170 0
	s8i	a8, sp, 22
	.loc 1 172 0
	s8i	a4, sp, 29
	.loc 1 173 0
	l8ui	a4, a2, 9
	.loc 1 171 0
	l8ui	a8, a2, 4
	.loc 1 173 0
	s8i	a4, sp, 27
	.loc 1 174 0
	l8ui	a4, a2, 11
	l8ui	a9, a2, 10
	.loc 1 171 0
	s8i	a8, sp, 30
	.loc 1 174 0
	s8i	a4, sp, 17
	.loc 1 172 0
	l8ui	a8, a2, 6
	.loc 1 174 0
	l8ui	a4, a2, 13
	.loc 1 172 0
	s8i	a8, sp, 28
	.loc 1 174 0
	s8i	a9, sp, 16
	.loc 1 173 0
	l8ui	a8, a2, 8
	.loc 1 174 0
	l8ui	a9, a2, 12
	s8i	a4, sp, 19
	.loc 1 175 0
	l8ui	a4, a2, 14
	l8ui	a2, a2, 15
.LVL21:
	.loc 1 173 0
	s8i	a8, sp, 26
	.loc 1 174 0
	s8i	a9, sp, 18
	.loc 1 175 0
	s8i	a4, sp, 24
	s8i	a2, sp, 25
	.loc 1 177 0
	l32i.n	a2, sp, 20
.LVL22:
	l16ui	a8, sp, 26
	l16ui	a10, sp, 24
	slli	a15, a8, 8
	extui	a8, a8, 8, 8
	or	a15, a15, a8
	l16ui	a8, sp, 28
	l32r	a9, .LC3
	slli	a14, a8, 8
	extui	a8, a8, 8, 8
	or	a14, a14, a8
	l16ui	a8, sp, 30
	slli	a12, a2, 24
	slli	a13, a8, 8
	extui	a8, a8, 8, 8
	or	a13, a13, a8
	extui	a8, a2, 24, 8
	slli	a4, a10, 8
	or	a12, a12, a8
	extui	a10, a10, 8, 8
	and	a8, a2, a9
	l32i.n	a11, sp, 16
.LVL23:
	slli	a8, a8, 8
	or	a10, a4, a10
	or	a12, a12, a8
	extui	a10, a10, 0, 16
	l32r	a8, .LC4
	slli	a4, a11, 24
	s32i.n	a10, sp, 4
	and	a9, a11, a9
	extui	a10, a11, 24, 8
	or	a10, a4, a10
	and	a2, a2, a8
.LVL24:
	slli	a9, a9, 8
	and	a8, a11, a8
	or	a9, a10, a9
	srli	a8, a8, 8
	srli	a2, a2, 8
	or	a8, a9, a8
	l32r	a11, .LC6
.LVL25:
	s32i.n	a8, sp, 0
	extui	a15, a15, 0, 16
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	or	a12, a12, a2
	mov.n	a10, a3
	call8	sprintf
.LVL26:
	retw.n
.LFE15:
	.size	uuid_to_string_legacy, .-uuid_to_string_legacy
	.section	.text.btc_hci_to_esp_status,"ax",@progbits
	.align	4
	.global	btc_hci_to_esp_status
	.type	btc_hci_to_esp_status, @function
btc_hci_to_esp_status:
.LFB16:
	.loc 1 185 0
.LVL27:
	entry	sp, 32
.LCFI4:
.LVL28:
	.loc 1 185 0
	extui	a8, a2, 0, 8
	.loc 1 192 0
	mov.n	a2, a8
	.loc 1 187 0
	beqi	a8, 16, .L16
	movi.n	a2, 0x10
.LVL29:
	bltu	a2, a8, .L15
	.loc 1 189 0
	movi.n	a2, 0
	.loc 1 187 0
	beq	a8, a2, .L16
	.loc 1 195 0
	movi.n	a2, 0xd
	.loc 1 187 0
	beqi	a8, 1, .L16
	j	.L13
.L15:
	movi.n	a9, 0x30
	.loc 1 201 0
	movi.n	a2, 0xf
	.loc 1 187 0
	beq	a8, a9, .L16
	movi.n	a9, 0x3b
	.loc 1 198 0
	movi.n	a2, 0xe
	.loc 1 187 0
	beq	a8, a9, .L16
	movi.n	a9, 0x12
	.loc 1 204 0
	movi.n	a2, 0x13
	.loc 1 187 0
	beq	a8, a9, .L16
.L13:
	.loc 1 207 0
	movi.n	a2, 1
.L16:
.LVL30:
	.loc 1 212 0
	retw.n
.LFE16:
	.size	btc_hci_to_esp_status, .-btc_hci_to_esp_status
	.section	.text.btc_btm_status_to_esp_status,"ax",@progbits
	.literal_position
	.literal .LC7, CSWTCH$18
	.align	4
	.global	btc_btm_status_to_esp_status
	.type	btc_btm_status_to_esp_status, @function
btc_btm_status_to_esp_status:
.LFB17:
	.loc 1 215 0
.LVL31:
	entry	sp, 32
.LCFI5:
.LVL32:
	.loc 1 215 0
	extui	a8, a2, 0, 8
	movi.n	a9, 0x18
	movi.n	a2, 1
.LVL33:
	bltu	a9, a8, .L25
	l32r	a2, .LC7
	add.n	a8, a2, a8
.LVL34:
	l8ui	a2, a8, 0
.L25:
.LVL35:
	.loc 1 248 0
	retw.n
.LFE17:
	.size	btc_btm_status_to_esp_status, .-btc_btm_status_to_esp_status
	.section	.rodata.CSWTCH$18,"a",@progbits
	.type	CSWTCH$18, @object
	.size	CSWTCH$18, 25
CSWTCH$18:
	.byte	0
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	13
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	17
	.byte	18
	.byte	0
	.byte	1
	.section	.rodata.base_uuid_be,"a",@progbits
	.type	base_uuid_be, @object
	.size	base_uuid_be, 16
base_uuid_be:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	95
	.byte	-101
	.byte	52
	.byte	-5
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x705
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xc
	.4byte	.LASF157
	.4byte	.LASF158
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0xa0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x23
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x6
	.4byte	0xc1
	.4byte	0xee
	.uleb128 0x7
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xc1
	.4byte	0x104
	.uleb128 0x7
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.byte	0x40
	.4byte	0x118
	.uleb128 0x9
	.string	"uu"
	.byte	0x5
	.byte	0x41
	.4byte	0x118
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0x128
	.uleb128 0x7
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x42
	.4byte	0x104
	.uleb128 0xa
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x21
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x37
	.4byte	0x133
	.uleb128 0xc
	.byte	0x10
	.byte	0x6
	.byte	0x57
	.4byte	0x1f3
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.byte	0x58
	.4byte	0xab
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.byte	0x59
	.4byte	0xb6
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5a
	.4byte	0x118
	.byte	0
	.uleb128 0x8
	.byte	0x12
	.byte	0x6
	.byte	0x52
	.4byte	0x214
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x56
	.4byte	0xab
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5b
	.4byte	0x1c9
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5c
	.4byte	0x1f3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x31
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x1c2
	.4byte	0x3f6
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xd
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x23
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x25
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x26
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x27
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x29
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x2b
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x2d
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x2e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x6ec
	.4byte	0x42e
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x5
	.byte	0x61
	.4byte	0xab
	.byte	0x3
	.4byte	0x448
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0x61
	.4byte	0xab
	.byte	0
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x5
	.byte	0x67
	.4byte	0xb6
	.byte	0x3
	.4byte	0x462
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0x67
	.4byte	0xb6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x5
	.byte	0x70
	.4byte	0xab
	.byte	0x3
	.4byte	0x47c
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0x70
	.4byte	0xab
	.byte	0
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x5
	.byte	0x86
	.4byte	0xb6
	.byte	0x3
	.4byte	0x496
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0x86
	.4byte	0xb6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0x1
	.byte	0x7b
	.4byte	0xcc
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ce
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x1
	.byte	0x7b
	.4byte	0xee
	.4byte	.LLST0
	.uleb128 0x14
	.string	"cod"
	.byte	0x1
	.byte	0x7d
	.4byte	0xcc
	.4byte	.LLST1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x1
	.byte	0x86
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x500
	.uleb128 0x16
	.string	"cod"
	.byte	0x1
	.byte	0x86
	.4byte	0xcc
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF133
	.byte	0x1
	.byte	0x86
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x1
	.byte	0x90
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x16
	.string	"u"
	.byte	0x1
	.byte	0x90
	.4byte	0x58b
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x591
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x56c
	.uleb128 0x14
	.string	"p_i"
	.byte	0x1
	.byte	0x94
	.4byte	0x591
	.4byte	.LLST5
	.uleb128 0x14
	.string	"p_o"
	.byte	0x1
	.byte	0x95
	.4byte	0x591
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x1
	.byte	0x96
	.4byte	0x591
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x6f2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_uuid_be+4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x214
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x636
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x1
	.byte	0xa5
	.4byte	0x636
	.4byte	.LLST8
	.uleb128 0x1c
	.string	"str"
	.byte	0x1
	.byte	0xa5
	.4byte	0x93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x1
	.byte	0xa7
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x1
	.byte	0xa7
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1d
	.4byte	.LASF144
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x6fd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x128
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb8
	.4byte	0x1be
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x674
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb8
	.4byte	0xa0
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.byte	0xba
	.4byte	0x1be
	.4byte	.LLST10
	.byte	0
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0x1
	.byte	0xd6
	.4byte	0x1be
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ac
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0x1
	.byte	0xd6
	.4byte	0xa0
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.byte	0xd8
	.4byte	0x1be
	.4byte	.LLST12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x6bf
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1f
	.4byte	0xde
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x6d7
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xde
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x8d
	.4byte	0x6ed
	.uleb128 0x5
	.byte	0x3
	.4byte	base_uuid_be
	.uleb128 0x1f
	.4byte	0xf4
	.uleb128 0x20
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.byte	0x16
	.uleb128 0x20
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x9
	.byte	0xde
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 -18
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x73
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x72
	.sleb128 18
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
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
.LASF146:
	.string	"btc_hci_to_esp_status"
.LASF138:
	.string	"p_uuid"
.LASF155:
	.string	"sprintf"
.LASF40:
	.string	"ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF3:
	.string	"__uint8_t"
.LASF27:
	.string	"ESP_BT_STATUS_UNSUPPORTED"
.LASF41:
	.string	"ESP_BT_STATUS_MEMORY_FULL"
.LASF65:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF72:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF74:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF64:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF157:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_util.c"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF21:
	.string	"ESP_BT_STATUS_SUCCESS"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF70:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"BTM_ILLEGAL_VALUE"
.LASF66:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF148:
	.string	"esp_status"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF10:
	.string	"long int"
.LASF150:
	.string	"btm_status"
.LASF55:
	.string	"BTM_UNKNOWN_ADDR"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"uint16_t"
.LASF149:
	.string	"btc_btm_status_to_esp_status"
.LASF123:
	.string	"BTM_PM_STS_HOLD"
.LASF44:
	.string	"uuid32"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF35:
	.string	"ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF50:
	.string	"BTM_BUSY"
.LASF48:
	.string	"BTM_SUCCESS"
.LASF137:
	.string	"uuid_to_string_legacy"
.LASF6:
	.string	"__uint32_t"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF23:
	.string	"ESP_BT_STATUS_NOT_READY"
.LASF63:
	.string	"BTM_DELAY_CHECK"
.LASF121:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF153:
	.string	"base_uuid_be"
.LASF7:
	.string	"unsigned int"
.LASF36:
	.string	"ESP_BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF12:
	.string	"long unsigned int"
.LASF33:
	.string	"ESP_BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF58:
	.string	"BTM_ERR_PROCESSING"
.LASF156:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF122:
	.string	"BTM_PM_STS_ACTIVE"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF38:
	.string	"ESP_BT_STATUS_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF5:
	.string	"short unsigned int"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF18:
	.string	"UINT32"
.LASF45:
	.string	"uuid128"
.LASF129:
	.string	"swap_byte_16"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF130:
	.string	"swap_byte_32"
.LASF59:
	.string	"BTM_NOT_AUTHORIZED"
.LASF20:
	.string	"bt_uuid_t"
.LASF29:
	.string	"ESP_BT_STATUS_UNHANDLED"
.LASF71:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF11:
	.string	"sizetype"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF34:
	.string	"ESP_BT_STATUS_PENDING"
.LASF24:
	.string	"ESP_BT_STATUS_NOMEM"
.LASF22:
	.string	"ESP_BT_STATUS_FAIL"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF61:
	.string	"BTM_CMD_STORED"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF73:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF42:
	.string	"esp_bt_status_t"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF128:
	.string	"BTM_PM_STS_ERROR"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF147:
	.string	"hci_status"
.LASF57:
	.string	"BTM_BAD_VALUE_RET"
.LASF152:
	.string	"bd_addr_null"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF158:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF67:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF19:
	.string	"_Bool"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF1:
	.string	"unsigned char"
.LASF132:
	.string	"ntohl"
.LASF145:
	.string	"devclass2uint"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF49:
	.string	"BTM_CMD_STARTED"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF139:
	.string	"uuid0"
.LASF141:
	.string	"uuid1"
.LASF142:
	.string	"uuid2"
.LASF143:
	.string	"uuid3"
.LASF140:
	.string	"uuid4"
.LASF144:
	.string	"uuid5"
.LASF25:
	.string	"ESP_BT_STATUS_BUSY"
.LASF125:
	.string	"BTM_PM_STS_PARK"
.LASF52:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF60:
	.string	"BTM_DEV_RESET"
.LASF51:
	.string	"BTM_NO_RESOURCES"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF30:
	.string	"ESP_BT_STATUS_AUTH_FAILURE"
.LASF28:
	.string	"ESP_BT_STATUS_PARM_INVALID"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF46:
	.string	"uuid"
.LASF13:
	.string	"char"
.LASF124:
	.string	"BTM_PM_STS_SNIFF"
.LASF4:
	.string	"__uint16_t"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF47:
	.string	"esp_bt_uuid_t"
.LASF37:
	.string	"ESP_BT_STATUS_TIMEOUT"
.LASF136:
	.string	"p_end"
.LASF154:
	.string	"memcmp"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF56:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF126:
	.string	"BTM_PM_STS_SSR"
.LASF68:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF26:
	.string	"ESP_BT_STATUS_DONE"
.LASF69:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF54:
	.string	"BTM_WRONG_MODE"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF31:
	.string	"ESP_BT_STATUS_RMT_DEV_DOWN"
.LASF17:
	.string	"UINT8"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF14:
	.string	"uint8_t"
.LASF151:
	.string	"bd_addr_any"
.LASF134:
	.string	"uint2devclass"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF127:
	.string	"BTM_PM_STS_PENDING"
.LASF131:
	.string	"ntohs"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF62:
	.string	"BTM_ILLEGAL_ACTION"
.LASF39:
	.string	"ESP_BT_STATUS_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF32:
	.string	"ESP_BT_STATUS_AUTH_REJECTED"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF135:
	.string	"uuid128_be_to_esp_uuid"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF133:
	.string	"dev_class"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF16:
	.string	"uint32_t"
.LASF43:
	.string	"uuid16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
