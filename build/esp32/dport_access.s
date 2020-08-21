	.file	"dport_access.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.global	esp_dport_access_stall_other_cpu_start
	.type	esp_dport_access_stall_other_cpu_start, @function
esp_dport_access_stall_other_cpu_start:
.LFB54:
	entry	sp, 32
.LCFI0:
	retw.n
.LFE54:
	.size	esp_dport_access_stall_other_cpu_start, .-esp_dport_access_stall_other_cpu_start
	.align	4
	.global	esp_dport_access_stall_other_cpu_end
	.type	esp_dport_access_stall_other_cpu_end, @function
esp_dport_access_stall_other_cpu_end:
.LFB52:
	entry	sp, 32
.LCFI1:
	retw.n
.LFE52:
	.size	esp_dport_access_stall_other_cpu_end, .-esp_dport_access_stall_other_cpu_end
	.align	4
	.global	esp_dport_access_stall_other_cpu_start_wrap
	.type	esp_dport_access_stall_other_cpu_start_wrap, @function
esp_dport_access_stall_other_cpu_start_wrap:
.LFB50:
	entry	sp, 32
.LCFI2:
	retw.n
.LFE50:
	.size	esp_dport_access_stall_other_cpu_start_wrap, .-esp_dport_access_stall_other_cpu_start_wrap
	.align	4
	.global	esp_dport_access_stall_other_cpu_end_wrap
	.type	esp_dport_access_stall_other_cpu_end_wrap, @function
esp_dport_access_stall_other_cpu_end_wrap:
.LFB48:
	entry	sp, 32
.LCFI3:
	retw.n
.LFE48:
	.size	esp_dport_access_stall_other_cpu_end_wrap, .-esp_dport_access_stall_other_cpu_end_wrap
	.section	.text.esp_dport_access_int_init,"ax",@progbits
	.align	4
	.global	esp_dport_access_int_init
	.type	esp_dport_access_int_init, @function
esp_dport_access_int_init:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/dport_access.c"
	.loc 1 184 0
	.loc 1 184 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE34:
	.size	esp_dport_access_int_init, .-esp_dport_access_int_init
	.section	.iram1
	.align	4
	.global	esp_dport_access_int_pause
	.type	esp_dport_access_int_pause, @function
esp_dport_access_int_pause:
.LFB46:
	entry	sp, 32
.LCFI5:
	retw.n
.LFE46:
	.size	esp_dport_access_int_pause, .-esp_dport_access_int_pause
	.align	4
	.global	esp_dport_access_int_abort
	.type	esp_dport_access_int_abort, @function
esp_dport_access_int_abort:
.LFB44:
	entry	sp, 32
.LCFI6:
	retw.n
.LFE44:
	.size	esp_dport_access_int_abort, .-esp_dport_access_int_abort
	.align	4
	.global	esp_dport_access_int_resume
	.type	esp_dport_access_int_resume, @function
esp_dport_access_int_resume:
.LFB37:
	.loc 1 211 0
	.loc 1 211 0
	entry	sp, 32
.LCFI7:
	retw.n
.LFE37:
	.size	esp_dport_access_int_resume, .-esp_dport_access_int_resume
	.literal_position
	.align	4
	.global	esp_dport_access_read_buffer
	.type	esp_dport_access_read_buffer, @function
esp_dport_access_read_buffer:
.LFB38:
	.loc 1 232 0
.LVL0:
	.loc 1 232 0
	entry	sp, 32
.LCFI8:
.LVL1:
	addx4	a4, a4, a2
.LVL2:
	sub	a3, a3, a2
.LVL3:
.LBB5:
	.loc 1 234 0
	j	.L10
.LVL4:
.L11:
	add.n	a8, a3, a2
.LBB6:
.LBB7:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 110 0 discriminator 3
	memw
	l32i.n	a8, a8, 0
.LBE7:
.LBE6:
	.loc 1 235 0 discriminator 3
	s32i.n	a8, a2, 0
	addi.n	a2, a2, 4
.L10:
	.loc 1 234 0 discriminator 1
	bne	a2, a4, .L11
.LBE5:
	.loc 1 238 0
	retw.n
.LFE38:
	.size	esp_dport_access_read_buffer, .-esp_dport_access_read_buffer
	.align	4
	.global	esp_dport_access_reg_read
	.type	esp_dport_access_reg_read, @function
esp_dport_access_reg_read:
.LFB42:
	entry	sp, 32
.LCFI9:
	memw
	l32i.n	a2, a2, 0
	retw.n
.LFE42:
	.size	esp_dport_access_reg_read, .-esp_dport_access_reg_read
	.align	4
	.global	esp_dport_access_sequence_reg_read
	.type	esp_dport_access_sequence_reg_read, @function
esp_dport_access_sequence_reg_read:
.LFB40:
	.loc 1 297 0
.LVL5:
	.loc 1 297 0
	entry	sp, 32
.LCFI10:
	.loc 1 299 0
	memw
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 312 0
	retw.n
.LFE40:
	.size	esp_dport_access_sequence_reg_read, .-esp_dport_access_sequence_reg_read
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI0-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI1-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI2-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI3-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI5-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI6-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI7-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI8-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI9-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI10-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x183
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x53
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x2
	.byte	0x6b
	.4byte	0x68
	.byte	0x3
	.4byte	0xb2
	.uleb128 0x6
	.string	"reg"
	.byte	0x2
	.byte	0x6b
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uleb128 0x9
	.4byte	0xc3
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0xe7
	.4byte	0x149
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe7
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0xe7
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	0x96
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xeb
	.uleb128 0xf
	.4byte	0xa6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x68
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x128
	.4byte	0x68
	.byte	0x1
	.4byte	0x16d
	.uleb128 0x12
	.string	"reg"
	.byte	0x1
	.2byte	0x128
	.4byte	0x68
	.byte	0
	.uleb128 0x13
	.4byte	0x14f
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	0x160
	.4byte	.LLST4
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF7:
	.string	"__uint32_t"
.LASF15:
	.string	"address"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF17:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"num_words"
.LASF23:
	.string	"esp_dport_access_read_buffer"
.LASF22:
	.string	"esp_dport_access_int_resume"
.LASF21:
	.string	"esp_dport_access_int_init"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF14:
	.string	"buff_out"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF20:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF13:
	.string	"_Bool"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/dport_access.c"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"esp_dport_access_sequence_reg_read"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
