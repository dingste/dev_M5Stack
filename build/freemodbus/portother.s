	.file	"portother.c"
	.text
.Ltext0:
	.section	.text.bMBPortIsWithinException,"ax",@progbits
	.align	4
	.global	bMBPortIsWithinException
	.type	bMBPortIsWithinException, @function
bMBPortIsWithinException:
.LFB30:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portother.c"
	.loc 1 50 0
	entry	sp, 32
.LCFI0:
	.loc 1 51 0
	call8	xPortInIsrContext
.LVL0:
	.loc 1 53 0
	extui	a2, a10, 0, 8
	retw.n
.LFE30:
	.size	bMBPortIsWithinException, .-bMBPortIsWithinException
	.section	.text.vMBPortEnterCritical,"ax",@progbits
	.literal_position
	.literal .LC0, s_port_lock
	.align	4
	.global	vMBPortEnterCritical
	.type	vMBPortEnterCritical, @function
vMBPortEnterCritical:
.LFB31:
	.loc 1 57 0
	entry	sp, 32
.LCFI1:
	.loc 1 58 0
	l32r	a10, .LC0
	call8	_lock_acquire
.LVL1:
	retw.n
.LFE31:
	.size	vMBPortEnterCritical, .-vMBPortEnterCritical
	.section	.text.vMBPortExitCritical,"ax",@progbits
	.literal_position
	.literal .LC1, s_port_lock
	.align	4
	.global	vMBPortExitCritical
	.type	vMBPortExitCritical, @function
vMBPortExitCritical:
.LFB32:
	.loc 1 63 0
	entry	sp, 32
.LCFI2:
	.loc 1 64 0
	l32r	a10, .LC1
	call8	_lock_release
.LVL2:
	retw.n
.LFE32:
	.size	vMBPortExitCritical, .-vMBPortExitCritical
	.section	.text.vMBPortClose,"ax",@progbits
	.align	4
	.global	vMBPortClose
	.type	vMBPortClose, @function
vMBPortClose:
.LFB33:
	.loc 1 69 0
	entry	sp, 32
.LCFI3:
	.loc 1 73 0
	call8	vMBPortSerialClose
.LVL3:
	.loc 1 74 0
	call8	vMBPortTimerClose
.LVL4:
	.loc 1 75 0
	call8	vMBPortEventClose
.LVL5:
	retw.n
.LFE33:
	.size	vMBPortClose, .-vMBPortClose
	.section	.bss.s_port_lock,"aw",@nobits
	.align	4
	.type	s_port_lock, @object
	.size	s_port_lock, 4
s_port_lock:
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/port.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ae
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xb
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x45
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	0x8b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.4byte	.LVL0
	.4byte	0x16f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x38
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x17a
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_port_lock
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118
	.uleb128 0x9
	.4byte	.LVL2
	.4byte	0x185
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_port_lock
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x44
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x46
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x47
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x48
	.uleb128 0x7
	.4byte	.LVL3
	.4byte	0x190
	.uleb128 0x7
	.4byte	.LVL4
	.4byte	0x19b
	.uleb128 0x7
	.4byte	.LVL5
	.4byte	0x1a6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_port_lock
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0xba
	.uleb128 0xc
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x2
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x1
	.byte	0x46
	.uleb128 0xc
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x1
	.byte	0x47
	.uleb128 0xc
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x1
	.byte	0x48
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF27:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/freemodbus"
.LASF13:
	.string	"BOOL"
.LASF9:
	.string	"long unsigned int"
.LASF24:
	.string	"_lock_release"
.LASF6:
	.string	"long long unsigned int"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"bMBPortIsWithinException"
.LASF14:
	.string	"vMBPortEnterCritical"
.LASF16:
	.string	"vMBPortClose"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freemodbus/port/portother.c"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF20:
	.string	"bIsWithinException"
.LASF15:
	.string	"vMBPortExitCritical"
.LASF21:
	.string	"s_port_lock"
.LASF17:
	.string	"vMBPortSerialClose"
.LASF11:
	.string	"_Bool"
.LASF18:
	.string	"vMBPortTimerClose"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"xPortInIsrContext"
.LASF23:
	.string	"_lock_acquire"
.LASF19:
	.string	"vMBPortEventClose"
.LASF8:
	.string	"sizetype"
.LASF12:
	.string	"_lock_t"
.LASF4:
	.string	"short int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
