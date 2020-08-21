	.file	"dh_group5.c"
	.text
.Ltext0:
	.section	.text.dh5_init,"ax",@progbits
	.align	4
	.global	dh5_init
	.type	dh5_init, @function
dh5_init:
.LFB18:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/dh_group5.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	movi.n	a10, 5
	call8	dh_groups_get
.LVL1:
	mov.n	a11, a2
	call8	dh_init
.LVL2:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL3:
	s32i.n	a10, a3, 0
	movnez	a2, a8, a10
	.loc 1 29 0
	retw.n
.LFE18:
	.size	dh5_init, .-dh5_init
	.section	.text.dh5_derive_shared,"ax",@progbits
	.align	4
	.global	dh5_derive_shared
	.type	dh5_derive_shared, @function
dh5_derive_shared:
.LFB19:
	.loc 1 35 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 36 0
	movi.n	a10, 5
	call8	dh_groups_get
.LVL5:
	mov.n	a12, a10
	mov.n	a11, a4
	mov.n	a10, a3
	call8	dh_derive_shared
.LVL6:
	.loc 1 37 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE19:
	.size	dh5_derive_shared, .-dh5_derive_shared
	.section	.text.dh5_free,"ax",@progbits
	.align	4
	.global	dh5_free
	.type	dh5_free, @function
dh5_free:
.LFB20:
	.loc 1 42 0
.LVL8:
	entry	sp, 32
.LCFI2:
	retw.n
.LFE20:
	.size	dh5_free, .-dh5_free
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/wpa/wpabuf.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/dh_groups.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.string	"u8"
	.byte	0x7
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xc
	.byte	0x5
	.byte	0x17
	.4byte	0xd7
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x19
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1a
	.4byte	0xd7
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9c
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x17
	.4byte	0x8c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x136
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x136
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x1dc
	.4byte	0x125
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x1e7
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x13c
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa6
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x21
	.4byte	0x13c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0x10
	.string	"ctx"
	.byte	0x1
	.byte	0x21
	.4byte	0x8c
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x21
	.4byte	0x1ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x22
	.4byte	0x1ae
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x1dc
	.4byte	0x197
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x1f2
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0x11
	.4byte	0xa6
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dc
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x29
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1a
	.uleb128 0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
	.byte	0x1b
	.uleb128 0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1c
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x14
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF21:
	.string	"peer_public"
.LASF17:
	.string	"priv"
.LASF30:
	.string	"dh5_free"
.LASF15:
	.string	"used"
.LASF27:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/wpa_supplicant/src/crypto/dh_group5.c"
.LASF29:
	.string	"wpabuf"
.LASF25:
	.string	"dh_derive_shared"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"size"
.LASF18:
	.string	"publ"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"own_private"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"unsigned int"
.LASF19:
	.string	"dh5_init"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF16:
	.string	"ext_data"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF20:
	.string	"dh5_derive_shared"
.LASF13:
	.string	"char"
.LASF24:
	.string	"dh_init"
.LASF23:
	.string	"dh_groups_get"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/wpa_supplicant"
.LASF10:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
