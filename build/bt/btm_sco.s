	.file	"btm_sco.c"
	.text
.Ltext0:
	.section	.text.BTM_CreateSco,"ax",@progbits
	.align	4
	.global	BTM_CreateSco
	.type	BTM_CreateSco, @function
BTM_CreateSco:
.LFB39:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/btm/btm_sco.c"
	.loc 1 1776 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 1778 0
	movi.n	a2, 3
.LVL1:
	.loc 1 1776 0
	.loc 1 1778 0
	retw.n
.LFE39:
	.size	BTM_CreateSco, .-BTM_CreateSco
	.section	.text.BTM_RemoveSco,"ax",@progbits
	.align	4
	.global	BTM_RemoveSco
	.type	BTM_RemoveSco, @function
BTM_RemoveSco:
.LFB40:
	.loc 1 1780 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 1782 0
	movi.n	a2, 3
.LVL3:
	retw.n
.LFE40:
	.size	BTM_RemoveSco, .-BTM_RemoveSco
	.section	.text.BTM_SetScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_SetScoPacketTypes
	.type	BTM_SetScoPacketTypes, @function
BTM_SetScoPacketTypes:
.LFB41:
	.loc 1 1784 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 1786 0
	movi.n	a2, 3
.LVL5:
	retw.n
.LFE41:
	.size	BTM_SetScoPacketTypes, .-BTM_SetScoPacketTypes
	.section	.text.BTM_ReadScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_ReadScoPacketTypes
	.type	BTM_ReadScoPacketTypes, @function
BTM_ReadScoPacketTypes:
.LFB42:
	.loc 1 1788 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 1790 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LFE42:
	.size	BTM_ReadScoPacketTypes, .-BTM_ReadScoPacketTypes
	.section	.text.BTM_ReadDeviceScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_ReadDeviceScoPacketTypes
	.type	BTM_ReadDeviceScoPacketTypes, @function
BTM_ReadDeviceScoPacketTypes:
.LFB43:
	.loc 1 1792 0
	entry	sp, 32
.LCFI4:
	.loc 1 1794 0
	movi.n	a2, 0
	retw.n
.LFE43:
	.size	BTM_ReadDeviceScoPacketTypes, .-BTM_ReadDeviceScoPacketTypes
	.section	.text.BTM_ReadScoHandle,"ax",@progbits
	.literal_position
	.literal .LC0, 65535
	.align	4
	.global	BTM_ReadScoHandle
	.type	BTM_ReadScoHandle, @function
BTM_ReadScoHandle:
.LFB44:
	.loc 1 1796 0
.LVL8:
	entry	sp, 32
.LCFI5:
	.loc 1 1798 0
	l32r	a2, .LC0
.LVL9:
	retw.n
.LFE44:
	.size	BTM_ReadScoHandle, .-BTM_ReadScoHandle
	.section	.text.BTM_ReadScoBdAddr,"ax",@progbits
	.align	4
	.global	BTM_ReadScoBdAddr
	.type	BTM_ReadScoBdAddr, @function
BTM_ReadScoBdAddr:
.LFB45:
	.loc 1 1800 0
.LVL10:
	entry	sp, 32
.LCFI6:
	.loc 1 1802 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LFE45:
	.size	BTM_ReadScoBdAddr, .-BTM_ReadScoBdAddr
	.section	.text.BTM_ReadScoDiscReason,"ax",@progbits
	.literal_position
	.literal .LC1, 65535
	.align	4
	.global	BTM_ReadScoDiscReason
	.type	BTM_ReadScoDiscReason, @function
BTM_ReadScoDiscReason:
.LFB46:
	.loc 1 1804 0
	entry	sp, 32
.LCFI7:
	.loc 1 1806 0
	l32r	a2, .LC1
	retw.n
.LFE46:
	.size	BTM_ReadScoDiscReason, .-BTM_ReadScoDiscReason
	.section	.text.BTM_SetEScoMode,"ax",@progbits
	.align	4
	.global	BTM_SetEScoMode
	.type	BTM_SetEScoMode, @function
BTM_SetEScoMode:
.LFB47:
	.loc 1 1808 0
.LVL12:
	entry	sp, 32
.LCFI8:
	.loc 1 1810 0
	movi.n	a2, 4
.LVL13:
	retw.n
.LFE47:
	.size	BTM_SetEScoMode, .-BTM_SetEScoMode
	.section	.text.BTM_RegForEScoEvts,"ax",@progbits
	.align	4
	.global	BTM_RegForEScoEvts
	.type	BTM_RegForEScoEvts, @function
BTM_RegForEScoEvts:
.LFB48:
	.loc 1 1812 0
.LVL14:
	entry	sp, 32
.LCFI9:
	.loc 1 1814 0
	movi.n	a2, 5
.LVL15:
	retw.n
.LFE48:
	.size	BTM_RegForEScoEvts, .-BTM_RegForEScoEvts
	.section	.text.BTM_ReadEScoLinkParms,"ax",@progbits
	.align	4
	.global	BTM_ReadEScoLinkParms
	.type	BTM_ReadEScoLinkParms, @function
BTM_ReadEScoLinkParms:
.LFB54:
	entry	sp, 32
.LCFI10:
	movi.n	a2, 4
	retw.n
.LFE54:
	.size	BTM_ReadEScoLinkParms, .-BTM_ReadEScoLinkParms
	.section	.text.BTM_ChangeEScoLinkParms,"ax",@progbits
	.align	4
	.global	BTM_ChangeEScoLinkParms
	.type	BTM_ChangeEScoLinkParms, @function
BTM_ChangeEScoLinkParms:
.LFB50:
	.loc 1 1820 0
.LVL16:
	.loc 1 1820 0
	entry	sp, 32
.LCFI11:
	.loc 1 1822 0
	movi.n	a2, 4
.LVL17:
	retw.n
.LFE50:
	.size	BTM_ChangeEScoLinkParms, .-BTM_ChangeEScoLinkParms
	.section	.text.BTM_EScoConnRsp,"ax",@progbits
	.align	4
	.global	BTM_EScoConnRsp
	.type	BTM_EScoConnRsp, @function
BTM_EScoConnRsp:
.LFB51:
	.loc 1 1823 0
.LVL18:
	entry	sp, 32
.LCFI12:
	retw.n
.LFE51:
	.size	BTM_EScoConnRsp, .-BTM_EScoConnRsp
	.section	.text.BTM_GetNumScoLinks,"ax",@progbits
	.align	4
	.global	BTM_GetNumScoLinks
	.type	BTM_GetNumScoLinks, @function
BTM_GetNumScoLinks:
.LFB52:
	.loc 1 1825 0
	.loc 1 1825 0
	entry	sp, 32
.LCFI13:
	.loc 1 1827 0
	movi.n	a2, 0
	retw.n
.LFE52:
	.size	BTM_GetNumScoLinks, .-BTM_GetNumScoLinks
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI5-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI9-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI10-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI11-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI12-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI13-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1a
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1b
	.4byte	0xa5
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1c
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x22
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x12b
	.4byte	0xfa
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x10a
	.uleb128 0x7
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x147
	.4byte	0x11c
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x12c
	.uleb128 0x7
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x137
	.uleb128 0xa
	.4byte	0xc6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x31
	.4byte	0x1e6
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x5
	.byte	0x4f
	.4byte	0x9a
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x3b9
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x3f4
	.4byte	0x12c
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x40b
	.4byte	0xbb
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.2byte	0x40e
	.4byte	0x26d
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x40f
	.4byte	0xd1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x410
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x411
	.4byte	0xc6
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x412
	.4byte	0xc6
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x413
	.4byte	0xc6
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x414
	.4byte	0xbb
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x415
	.4byte	0x215
	.uleb128 0xd
	.byte	0x6
	.byte	0x5
	.2byte	0x417
	.4byte	0x2aa
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x418
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x419
	.4byte	0xc6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x41a
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x41b
	.4byte	0x279
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.2byte	0x428
	.4byte	0x31b
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x429
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x42a
	.4byte	0xc6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x42b
	.4byte	0xc6
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x42c
	.4byte	0xee
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x42d
	.4byte	0xbb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x42e
	.4byte	0xbb
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x42f
	.4byte	0xbb
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x430
	.4byte	0x2b6
	.uleb128 0xd
	.byte	0xc
	.byte	0x5
	.2byte	0x432
	.4byte	0x365
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x433
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x434
	.4byte	0xee
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x435
	.4byte	0x110
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x436
	.4byte	0x1f1
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x437
	.4byte	0x327
	.uleb128 0xf
	.byte	0x10
	.byte	0x5
	.2byte	0x439
	.4byte	0x393
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x43a
	.4byte	0x31b
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x43b
	.4byte	0x365
	.byte	0
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x43c
	.4byte	0x371
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x441
	.4byte	0x3ab
	.uleb128 0x9
	.4byte	0x3bb
	.uleb128 0xa
	.4byte	0x209
	.uleb128 0xa
	.4byte	0x3bb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x393
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x39f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x6ec
	.4byte	0x1e6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x6ec
	.4byte	0x10a
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x6ec
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x6ed
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x6ee
	.4byte	0x3cd
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x3cd
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x6f3
	.4byte	0x1e6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x6f3
	.4byte	0xc6
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x6f7
	.4byte	0x1e6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a8
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x6f7
	.4byte	0xc6
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x6f7
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x6fb
	.4byte	0xc6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x6fb
	.4byte	0xc6
	.4byte	.LLST3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x6ff
	.4byte	0xc6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x703
	.4byte	0xc6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x703
	.4byte	0xc6
	.4byte	.LLST4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x707
	.4byte	0x10a
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53f
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x707
	.4byte	0xc6
	.4byte	.LLST5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x70b
	.4byte	0xc6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x70f
	.4byte	0x1e6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58e
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x70f
	.4byte	0x1f1
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x70f
	.4byte	0x58e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x713
	.4byte	0x1e6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cd
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x713
	.4byte	0xc6
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x713
	.4byte	0x3c7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x71b
	.4byte	0x1e6
	.byte	0x1
	.4byte	0x5f7
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x71b
	.4byte	0xc6
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x71b
	.4byte	0x5f7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2aa
	.uleb128 0x17
	.4byte	0x5cd
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x18
	.4byte	0x5de
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	0x5ea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x71f
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x662
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x71f
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x71f
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x71f
	.4byte	0x58e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x720
	.4byte	0xbb
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x68b
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1c
	.4byte	0xfa
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x6a3
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0xfa
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"max_latency"
.LASF99:
	.string	"bd_addr_null"
.LASF65:
	.string	"tx_pkt_len"
.LASF62:
	.string	"tBTM_CHG_ESCO_PARAMS"
.LASF50:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF53:
	.string	"tBTM_SCO_CB"
.LASF54:
	.string	"tBTM_ESCO_EVT"
.LASF86:
	.string	"BTM_SetScoPacketTypes"
.LASF95:
	.string	"BTM_RegForEScoEvts"
.LASF76:
	.string	"tBTM_ESCO_EVT_DATA"
.LASF92:
	.string	"BTM_SetEScoMode"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF103:
	.string	"BTM_ChangeEScoLinkParms"
.LASF83:
	.string	"p_disc_cb"
.LASF75:
	.string	"conn_evt"
.LASF19:
	.string	"UINT32"
.LASF68:
	.string	"tx_interval"
.LASF25:
	.string	"BTM_CMD_STARTED"
.LASF6:
	.string	"__uint16_t"
.LASF80:
	.string	"pkt_types"
.LASF84:
	.string	"BTM_CreateSco"
.LASF43:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF64:
	.string	"rx_pkt_len"
.LASF85:
	.string	"BTM_RemoveSco"
.LASF14:
	.string	"uint8_t"
.LASF81:
	.string	"p_sco_inx"
.LASF51:
	.string	"tBTM_STATUS"
.LASF56:
	.string	"rx_bw"
.LASF30:
	.string	"BTM_WRONG_MODE"
.LASF87:
	.string	"BTM_ReadScoPacketTypes"
.LASF78:
	.string	"remote_bda"
.LASF77:
	.string	"tBTM_ESCO_CBACK"
.LASF8:
	.string	"long long int"
.LASF52:
	.string	"tBTM_SCO_TYPE"
.LASF66:
	.string	"bd_addr"
.LASF20:
	.string	"BOOLEAN"
.LASF10:
	.string	"long int"
.LASF104:
	.string	"BTM_EScoConnRsp"
.LASF44:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF28:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF17:
	.string	"UINT8"
.LASF41:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF23:
	.string	"DEV_CLASS"
.LASF5:
	.string	"__uint8_t"
.LASF97:
	.string	"BTM_GetNumScoLinks"
.LASF7:
	.string	"__uint32_t"
.LASF60:
	.string	"retrans_effort"
.LASF88:
	.string	"BTM_ReadScoHandle"
.LASF42:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF63:
	.string	"sco_inx"
.LASF93:
	.string	"sco_mode"
.LASF96:
	.string	"p_esco_cback"
.LASF31:
	.string	"BTM_UNKNOWN_ADDR"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"hci_status"
.LASF26:
	.string	"BTM_BUSY"
.LASF37:
	.string	"BTM_CMD_STORED"
.LASF2:
	.string	"signed char"
.LASF79:
	.string	"is_orig"
.LASF74:
	.string	"chg_evt"
.LASF91:
	.string	"BTM_ReadScoDiscReason"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF12:
	.string	"long unsigned int"
.LASF61:
	.string	"tBTM_ESCO_PARAMS"
.LASF73:
	.string	"tBTM_ESCO_CONN_REQ_EVT_DATA"
.LASF70:
	.string	"tBTM_CHG_ESCO_EVT_DATA"
.LASF1:
	.string	"short unsigned int"
.LASF102:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF49:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF18:
	.string	"UINT16"
.LASF13:
	.string	"char"
.LASF82:
	.string	"p_conn_cb"
.LASF32:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF58:
	.string	"voice_contfmt"
.LASF90:
	.string	"BTM_ReadDeviceScoPacketTypes"
.LASF48:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF21:
	.string	"_Bool"
.LASF24:
	.string	"BTM_SUCCESS"
.LASF72:
	.string	"link_type"
.LASF34:
	.string	"BTM_ERR_PROCESSING"
.LASF46:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF47:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF29:
	.string	"BTM_ILLEGAL_VALUE"
.LASF35:
	.string	"BTM_NOT_AUTHORIZED"
.LASF89:
	.string	"BTM_ReadScoBdAddr"
.LASF36:
	.string	"BTM_DEV_RESET"
.LASF38:
	.string	"BTM_ILLEGAL_ACTION"
.LASF40:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF59:
	.string	"packet_types"
.LASF98:
	.string	"bd_addr_any"
.LASF100:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"BTM_DELAY_CHECK"
.LASF22:
	.string	"BD_ADDR"
.LASF94:
	.string	"p_parms"
.LASF69:
	.string	"retrans_window"
.LASF101:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/btm/btm_sco.c"
.LASF71:
	.string	"dev_class"
.LASF45:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"tx_bw"
.LASF27:
	.string	"BTM_NO_RESOURCES"
.LASF33:
	.string	"BTM_BAD_VALUE_RET"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
