	.file	"hci_audio.c"
	.text
.Ltext0:
	.section	.text.set_audio_state,"ax",@progbits
	.align	4
	.global	set_audio_state
	.type	set_audio_state, @function
set_audio_state:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/hci_audio.c"
	.loc 1 4 1 view -0
	.loc 1 4 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 6 5 is_stmt 1 view .LVU2
	.loc 1 7 1 is_stmt 0 view .LVU3
	retw.n
.LFE0:
	.size	set_audio_state, .-set_audio_state
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 4 "/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/include/hci/hci_audio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x46
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
	.byte	0x24
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x54
	.byte	0x4
	.byte	0x18
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.4byte	0x75
	.uleb128 0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x54
	.byte	0x4
	.byte	0x20
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x3
	.4byte	0xa8
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3
	.byte	0x1f
	.4byte	0x69
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3
	.byte	0x33
	.4byte	0xc9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3
	.byte	0x46
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
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
.LASF20:
	.string	"state"
.LASF17:
	.string	"sco_codec_t"
.LASF22:
	.string	"/home/dieter/Development/esp-idf/components/bt/host/bluedroid/hci/hci_audio.c"
.LASF12:
	.string	"SCO_STATE_SETUP"
.LASF14:
	.string	"SCO_CODEC_NONE"
.LASF23:
	.string	"/home/dieter/Development/ProjektEi/build/bt"
.LASF13:
	.string	"sco_state_t"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"codec"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"handle"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"SCO_STATE_OFF"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF21:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"SCO_STATE_ON"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"set_audio_state"
.LASF8:
	.string	"uint16_t"
.LASF10:
	.string	"SCO_STATE_OFF_TRANSFER"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"SCO_CODEC_CVSD"
.LASF16:
	.string	"SCO_CODEC_MSBC"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
