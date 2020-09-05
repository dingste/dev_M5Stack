	.file	"cache_utils.c"
	.text
.Ltext0:
	.section	.iram1.30,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693312
	.literal .LC1, 1072693316
	.align	4
	.type	spi_flash_restore_cache$part$0, @function
spi_flash_restore_cache$part$0:
.LFB45:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/cache_utils.c"
	.loc 1 282 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB60:
.LBB61:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 170 0
	l32r	a9, .LC0
.LBE61:
.LBE60:
	.loc 1 285 0
	movi.n	a8, 8
.LBB63:
.LBB62:
	.loc 2 170 0
	memw
	l32i.n	a10, a9, 0
.LBE62:
.LBE63:
	.loc 1 286 0
	extui	a2, a2, 0, 6
.LVL2:
	.loc 1 285 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LVL3:
.LBB64:
.LBB65:
	.loc 2 170 0
	l32r	a9, .LC1
.LBE65:
.LBE64:
	.loc 1 286 0
	movi	a8, -0x40
.LBB67:
.LBB66:
	.loc 2 170 0
	memw
	l32i.n	a10, a9, 0
.LBE66:
.LBE67:
	.loc 1 286 0
	and	a8, a10, a8
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	retw.n
.LFE45:
	.size	spi_flash_restore_cache$part$0, .-spi_flash_restore_cache$part$0
	.section	.iram1.29,"ax",@progbits
	.literal_position
	.literal .LC2, 1072693316
	.literal .LC3, 1072694256
	.literal .LC4, 1072693312
	.literal .LC5, s_flash_op_cache_state
	.align	4
	.type	spi_flash_disable_cache$constprop$1, @function
spi_flash_disable_cache$constprop$1:
.LFB46:
	.loc 1 263 0
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB68:
.LBB69:
	.loc 2 170 0
	l32r	a8, .LC2
.LBE69:
.LBE68:
.LBB71:
.LBB72:
	l32r	a10, .LC3
.LBE72:
.LBE71:
.LBB74:
.LBB70:
	memw
	l32i.n	a8, a8, 0
.LBE70:
.LBE74:
	.loc 1 267 0
	extui	a8, a8, 0, 6
.LVL5:
.L3:
.LBB75:
.LBB73:
	.loc 2 170 0
	memw
	l32i.n	a9, a10, 0
.LBE73:
.LBE75:
	.loc 1 268 0
	extui	a9, a9, 7, 12
	bnei	a9, 1, .L3
.LVL6:
.LBB76:
.LBB77:
	.loc 2 170 0
	l32r	a10, .LC4
.LBE77:
.LBE76:
	.loc 1 271 0
	movi.n	a9, -9
.LBB79:
.LBB78:
	.loc 2 170 0
	memw
	l32i.n	a11, a10, 0
.LBE78:
.LBE79:
	.loc 1 271 0
	and	a9, a11, a9
	memw
	s32i.n	a9, a10, 0
	.loc 1 279 0
	l32r	a9, .LC5
	s32i.n	a8, a9, 0
	retw.n
.LFE46:
	.size	spi_flash_disable_cache$constprop$1, .-spi_flash_disable_cache$constprop$1
	.section	.text.spi_flash_init_lock,"ax",@progbits
	.align	4
	.global	spi_flash_init_lock
	.type	spi_flash_init_lock, @function
spi_flash_init_lock:
.LFB35:
	.loc 1 207 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE35:
	.size	spi_flash_init_lock, .-spi_flash_init_lock
	.section	.text.spi_flash_op_lock,"ax",@progbits
	.align	4
	.global	spi_flash_op_lock
	.type	spi_flash_op_lock, @function
spi_flash_op_lock:
.LFB36:
	.loc 1 211 0
	.loc 1 211 0
	entry	sp, 32
.LCFI3:
	.loc 1 212 0
	call8	vTaskSuspendAll
.LVL7:
	retw.n
.LFE36:
	.size	spi_flash_op_lock, .-spi_flash_op_lock
	.section	.text.spi_flash_op_unlock,"ax",@progbits
	.align	4
	.global	spi_flash_op_unlock
	.type	spi_flash_op_unlock, @function
spi_flash_op_unlock:
.LFB37:
	.loc 1 216 0
	entry	sp, 32
.LCFI4:
	.loc 1 217 0
	call8	xTaskResumeAll
.LVL8:
	retw.n
.LFE37:
	.size	spi_flash_op_unlock, .-spi_flash_op_unlock
	.section	.iram1.25,"ax",@progbits
	.align	4
	.global	spi_flash_disable_interrupts_caches_and_other_cpu
	.type	spi_flash_disable_interrupts_caches_and_other_cpu, @function
spi_flash_disable_interrupts_caches_and_other_cpu:
.LFB38:
	.loc 1 222 0
	entry	sp, 32
.LCFI5:
.LBB80:
.LBB81:
	.loc 1 212 0
	call8	vTaskSuspendAll
.LVL9:
.LBE81:
.LBE80:
	.loc 1 224 0
	call8	esp_intr_noniram_disable
.LVL10:
	.loc 1 225 0
	call8	spi_flash_disable_cache$constprop$1
.LVL11:
	retw.n
.LFE38:
	.size	spi_flash_disable_interrupts_caches_and_other_cpu, .-spi_flash_disable_interrupts_caches_and_other_cpu
	.section	.iram1.26,"ax",@progbits
	.literal_position
	.literal .LC6, s_flash_op_cache_state
	.align	4
	.global	spi_flash_enable_interrupts_caches_and_other_cpu
	.type	spi_flash_enable_interrupts_caches_and_other_cpu, @function
spi_flash_enable_interrupts_caches_and_other_cpu:
.LFB39:
	.loc 1 229 0
	entry	sp, 32
.LCFI6:
.LVL12:
	.loc 1 230 0
	l32r	a8, .LC6
.LBB82:
.LBB83:
	l32i.n	a10, a8, 0
	call8	spi_flash_restore_cache$part$0
.LVL13:
.LBE83:
.LBE82:
	.loc 1 231 0
	call8	esp_intr_noniram_enable
.LVL14:
.LBB84:
.LBB85:
	.loc 1 217 0
	call8	xTaskResumeAll
.LVL15:
	retw.n
.LBE85:
.LBE84:
.LFE39:
	.size	spi_flash_enable_interrupts_caches_and_other_cpu, .-spi_flash_enable_interrupts_caches_and_other_cpu
	.section	.iram1.27,"ax",@progbits
	.align	4
	.global	spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.type	spi_flash_disable_interrupts_caches_and_other_cpu_no_os, @function
spi_flash_disable_interrupts_caches_and_other_cpu_no_os:
.LFB40:
	.loc 1 236 0
	entry	sp, 32
.LCFI7:
	.loc 1 238 0
	call8	esp_intr_noniram_disable
.LVL16:
	.loc 1 240 0
	call8	spi_flash_disable_cache$constprop$1
.LVL17:
	retw.n
.LFE40:
	.size	spi_flash_disable_interrupts_caches_and_other_cpu_no_os, .-spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.section	.iram1.28,"ax",@progbits
	.literal_position
	.literal .LC7, s_flash_op_cache_state
	.align	4
	.global	spi_flash_enable_interrupts_caches_no_os
	.type	spi_flash_enable_interrupts_caches_no_os, @function
spi_flash_enable_interrupts_caches_no_os:
.LFB41:
	.loc 1 244 0
	entry	sp, 32
.LCFI8:
.LVL18:
	.loc 1 246 0
	l32r	a8, .LC7
.LBB86:
.LBB87:
	l32i.n	a10, a8, 0
	call8	spi_flash_restore_cache$part$0
.LVL19:
.LBE87:
.LBE86:
	.loc 1 248 0
	call8	esp_intr_noniram_enable
.LVL20:
	retw.n
.LFE41:
	.size	spi_flash_enable_interrupts_caches_no_os, .-spi_flash_enable_interrupts_caches_no_os
	.section	.iram1.31,"ax",@progbits
	.literal_position
	.literal .LC8, 1072693312
	.align	4
	.global	spi_flash_cache_enabled
	.type	spi_flash_cache_enabled, @function
spi_flash_cache_enabled:
.LFB44:
	.loc 1 295 0
	entry	sp, 32
.LCFI9:
.LVL21:
.LBB88:
.LBB89:
	.loc 2 77 0
	l32r	a2, .LC8
	memw
	l32i.n	a2, a2, 0
.LVL22:
.LBE89:
.LBE88:
	.loc 1 301 0
	extui	a2, a2, 3, 1
.LVL23:
	retw.n
.LFE44:
	.size	spi_flash_cache_enabled, .-spi_flash_cache_enabled
	.section	.bss.s_flash_op_cache_state,"aw",@nobits
	.align	4
	.type	s_flash_op_cache_state, @object
	.size	s_flash_op_cache_state, 8
s_flash_op_cache_state:
	.zero	8
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI0-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI4-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI5-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI6-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI7-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI8-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI9-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_intr_alloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x442
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x78
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
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
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x2
	.byte	0xa7
	.4byte	0x84
	.byte	0x3
	.4byte	0xb2
	.uleb128 0x6
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x11a
	.byte	0x1
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x11a
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x11a
	.4byte	0x84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4a
	.4byte	0x84
	.byte	0x3
	.4byte	0x104
	.uleb128 0x6
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.4byte	0x136
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x107
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x107
	.4byte	0x136
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.2byte	0x109
	.4byte	0x84
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x84
	.uleb128 0xc
	.4byte	0xb2
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d
	.uleb128 0xd
	.4byte	0xcb
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	0xbf
	.uleb128 0x6
	.byte	0xfa
	.4byte	0xbf
	.byte	0x9f
	.uleb128 0xf
	.4byte	0x96
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x11d
	.4byte	0x182
	.uleb128 0x10
	.4byte	0xa6
	.4byte	0x3ff00040
	.byte	0
	.uleb128 0x11
	.4byte	0x96
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x11e
	.uleb128 0x10
	.4byte	0xa6
	.4byte	0x3ff00044
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x104
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222
	.uleb128 0x12
	.4byte	0x129
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	0x11d
	.uleb128 0x6
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.byte	0x9f
	.uleb128 0x13
	.4byte	0x111
	.byte	0
	.uleb128 0xf
	.4byte	0x96
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1e9
	.uleb128 0x10
	.4byte	0xa6
	.4byte	0x3ff00044
	.byte	0
	.uleb128 0xf
	.4byte	0x96
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x10c
	.4byte	0x207
	.uleb128 0x10
	.4byte	0xa6
	.4byte	0x3ff003f0
	.byte	0
	.uleb128 0x11
	.4byte	0x96
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x10f
	.uleb128 0x10
	.4byte	0xa6
	.4byte	0x3ff00040
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xce
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	0xd8
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x250
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x415
	.byte	0
	.uleb128 0xc
	.4byte	0xe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26d
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x421
	.byte	0
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b2
	.uleb128 0x17
	.4byte	0xd8
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.byte	0xdf
	.4byte	0x29f
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x415
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x42d
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x19d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x322
	.uleb128 0x17
	.4byte	0xb2
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.byte	0xe6
	.4byte	0x2fb
	.uleb128 0xd
	.4byte	0xcb
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	0xbf
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x13c
	.uleb128 0x19
	.4byte	0xbf
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xe0
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.byte	0xe8
	.4byte	0x318
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x421
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x439
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xeb
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34a
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x42d
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x19d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39d
	.uleb128 0x17
	.4byte	0xb2
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.byte	0xf6
	.4byte	0x393
	.uleb128 0xd
	.4byte	0xcb
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	0xbf
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x13c
	.uleb128 0x19
	.4byte	0xbf
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x439
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x126
	.4byte	0x8f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x128
	.4byte	0x8f
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0xe8
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.2byte	0x128
	.uleb128 0x10
	.4byte	0xf8
	.4byte	0x3ff00040
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x84
	.4byte	0x3f2
	.uleb128 0x1e
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	0x3e2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.uleb128 0x20
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x103
	.4byte	0x410
	.byte	0x3f
	.uleb128 0x21
	.4byte	0x84
	.uleb128 0x22
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x4cb
	.uleb128 0x22
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x4fd
	.uleb128 0x22
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x119
	.uleb128 0x22
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x11f
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
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_flash_op_cache_state
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x38
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"DPORT_READ_PERI_REG"
.LASF28:
	.string	"cache_mask"
.LASF29:
	.string	"vTaskSuspendAll"
.LASF15:
	.string	"saved_state"
.LASF17:
	.string	"spi_flash_op_unlock"
.LASF25:
	.string	"spi_flash_enable_interrupts_caches_no_os"
.LASF30:
	.string	"xTaskResumeAll"
.LASF22:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF37:
	.string	"spi_flash_cache_enabled"
.LASF16:
	.string	"spi_flash_op_lock"
.LASF2:
	.string	"signed char"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF20:
	.string	"spi_flash_restore_cache"
.LASF27:
	.string	"s_flash_op_cache_state"
.LASF21:
	.string	"spi_flash_disable_cache"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"__uint32_t"
.LASF34:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/cache_utils.c"
.LASF14:
	.string	"cpuid"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF35:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spi_flash"
.LASF26:
	.string	"result"
.LASF23:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"spi_flash_init_lock"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu_no_os"
.LASF31:
	.string	"esp_intr_noniram_disable"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"DPORT_REG_READ"
.LASF32:
	.string	"esp_intr_noniram_enable"
.LASF13:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
