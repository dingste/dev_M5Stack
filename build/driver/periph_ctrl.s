	.file	"periph_ctrl.c"
	.text
.Ltext0:
	.section	.text.get_rst_en_mask,"ax",@progbits
	.literal_position
	.literal .LC0, 2048
	.literal .LC1, 8388608
	.literal .LC2, 262144
	.literal .LC3, 2097152
	.literal .LC4, 8192
	.literal .LC5, 32768
	.literal .LC6, 131072
	.literal .LC7, 1048576
	.literal .LC8, 33554432
	.literal .LC9, 67108864
	.literal .LC10, 4096
	.literal .LC11, 65536
	.literal .LC12, 4194304
	.literal .LC13, 524288
	.literal .LC14, .L4
	.align	4
	.type	get_rst_en_mask, @function
get_rst_en_mask:
.LFB33:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/periph_ctrl.c"
	.loc 1 133 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 134 0
	movi.n	a8, 0x22
	bltu	a8, a2, .L2
	l32r	a8, .LC14
	addx4	a2, a2, a8
.LVL1:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.get_rst_en_mask,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L5
	.word	.L27
	.word	.L7
	.word	.L29
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L34
	.word	.L21
	.word	.L22
	.word	.L26
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L31
	.word	.L32
	.word	.L33
	.section	.text.get_rst_en_mask
.L3:
	.loc 1 138 0
	l32r	a2, .LC0
	retw.n
.L5:
	.loc 1 140 0
	movi.n	a2, 4
	retw.n
.L7:
	.loc 1 144 0
	l32r	a2, .LC1
	retw.n
.L9:
	.loc 1 148 0
	l32r	a2, .LC2
	retw.n
.L10:
	.loc 1 150 0
	movi.n	a2, 0x10
	retw.n
.L11:
	.loc 1 152 0
	l32r	a2, .LC3
	retw.n
.L12:
	.loc 1 154 0
	l32r	a2, .LC4
	retw.n
.L13:
	.loc 1 156 0
	l32r	a2, .LC5
	retw.n
.L14:
	.loc 1 158 0
	l32r	a2, .LC6
	retw.n
.L15:
	.loc 1 160 0
	l32r	a2, .LC7
	retw.n
.L16:
	.loc 1 162 0
	l32r	a2, .LC8
	retw.n
.L17:
	.loc 1 164 0
	l32r	a2, .LC9
	retw.n
.L18:
	.loc 1 166 0
	movi	a2, 0x100
	retw.n
.L19:
	.loc 1 168 0
	l32r	a2, .LC10
	retw.n
.L21:
	.loc 1 170 0
	movi	a2, 0x400
	retw.n
.L22:
	.loc 1 172 0
	movi.n	a2, 2
	retw.n
.L24:
	.loc 1 176 0
	l32r	a2, .LC11
	retw.n
.L25:
	.loc 1 178 0
	l32r	a2, .LC12
	retw.n
.L26:
	.loc 1 180 0
	movi.n	a2, 0x40
	retw.n
.L27:
	.loc 1 182 0
	movi.n	a2, 0x20
	retw.n
.L28:
	.loc 1 184 0
	l32r	a2, .LC13
	retw.n
.L29:
	.loc 1 186 0
	movi	a2, 0x80
	retw.n
.L31:
	.loc 1 193 0
	movi.n	a2, 1
	movi.n	a8, 0x19
	j	.L38
.L32:
	.loc 1 201 0
	movi.n	a2, 2
	movi.n	a8, 0xa
	j	.L38
.L33:
	.loc 1 209 0
	movi.n	a2, 4
	movi.n	a8, 0x14
.L38:
	movnez	a2, a8, a3
	retw.n
.L2:
	.loc 1 218 0
	movi.n	a2, 0
	retw.n
.L34:
	.loc 1 136 0
	movi	a2, 0x200
	.loc 1 220 0
	retw.n
.LFE33:
	.size	get_rst_en_mask, .-get_rst_en_mask
	.section	.text.get_clk_en_reg,"ax",@progbits
	.literal_position
	.literal .LC15, 1072693276
	.literal .LC16, 1072693440
	.literal .LC17, 1072693452
	.literal .LC18, -20971520
	.align	4
	.type	get_clk_en_reg, @function
get_clk_en_reg:
.LFB35:
	.loc 1 243 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 244 0
	addi	a9, a2, -32
	.loc 1 245 0
	l32r	a8, .LC15
	.loc 1 244 0
	bltui	a9, 3, .L40
.LVL3:
	movi.n	a9, 0x1f
.LBB22:
.LBB23:
	.loc 1 247 0
	l32r	a8, .LC16
	bltu	a9, a2, .L40
	movi.n	a9, 1
	ssl	a2
	sll	a2, a9
.LVL4:
	l32r	a9, .LC18
	and	a2, a2, a9
	l32r	a9, .LC17
	movnez	a8, a9, a2
.LVL5:
.L40:
.LBE23:
.LBE22:
	.loc 1 249 0
	mov.n	a2, a8
	retw.n
.LFE35:
	.size	get_clk_en_reg, .-get_clk_en_reg
	.section	.text.get_rst_en_reg,"ax",@progbits
	.literal_position
	.literal .LC19, 1072693280
	.literal .LC20, 1072693444
	.literal .LC21, 1072693456
	.literal .LC22, -20971520
	.align	4
	.type	get_rst_en_reg, @function
get_rst_en_reg:
.LFB36:
	.loc 1 252 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 253 0
	addi	a9, a2, -32
	.loc 1 254 0
	l32r	a8, .LC19
	.loc 1 253 0
	bltui	a9, 3, .L45
.LVL7:
	movi.n	a9, 0x1f
.LBB28:
.LBB29:
	.loc 1 256 0
	l32r	a8, .LC20
	bltu	a9, a2, .L45
	movi.n	a9, 1
	ssl	a2
	sll	a2, a9
.LVL8:
	l32r	a9, .LC22
	and	a2, a2, a9
	l32r	a9, .LC21
	movnez	a8, a9, a2
.LVL9:
.L45:
.LBE29:
.LBE28:
	.loc 1 258 0
	mov.n	a2, a8
	retw.n
.LFE36:
	.size	get_rst_en_reg, .-get_rst_en_reg
	.section	.text.periph_module_enable,"ax",@progbits
	.literal_position
	.literal .LC23, periph_spinlock
	.literal .LC24, CSWTCH$5
	.align	4
	.global	periph_module_enable
	.type	periph_module_enable, @function
periph_module_enable:
.LFB29:
	.loc 1 31 0
.LVL10:
	entry	sp, 32
.LCFI3:
	.loc 1 32 0
	call8	xPortInIsrContext
.LVL11:
	l32r	a3, .LC23
.LBB30:
.LBB31:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 170 0
	movi.n	a5, 0
.LBE31:
.LBE30:
	.loc 1 32 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL12:
	.loc 1 33 0
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL13:
.LBB33:
.LBB32:
	.loc 2 170 0
	memw
	l32i.n	a4, a10, 0
.LVL14:
	movi.n	a8, 0x22
	bltu	a8, a2, .L50
	l32r	a8, .LC24
	addx4	a8, a2, a8
	l32i.n	a5, a8, 0
.L50:
.LBE32:
.LBE33:
	.loc 1 33 0
	or	a4, a5, a4
	memw
	s32i.n	a4, a10, 0
	.loc 1 34 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL15:
.LBB34:
.LBB35:
	.loc 2 170 0
	memw
	l32i.n	a4, a10, 0
.LBE35:
.LBE34:
	.loc 1 34 0
	mov.n	a5, a10
.LVL16:
	movi.n	a11, 1
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL17:
	movi.n	a2, -1
.LVL18:
	xor	a10, a2, a10
	and	a4, a10, a4
	memw
	s32i.n	a4, a5, 0
	.loc 1 35 0
	call8	xPortInIsrContext
.LVL19:
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL20:
	retw.n
.LFE29:
	.size	periph_module_enable, .-periph_module_enable
	.section	.text.periph_module_disable,"ax",@progbits
	.literal_position
	.literal .LC25, periph_spinlock
	.literal .LC26, CSWTCH$5
	.align	4
	.global	periph_module_disable
	.type	periph_module_disable, @function
periph_module_disable:
.LFB30:
	.loc 1 39 0
.LVL21:
	entry	sp, 32
.LCFI4:
	.loc 1 40 0
	call8	xPortInIsrContext
.LVL22:
	l32r	a4, .LC25
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL23:
	.loc 1 41 0
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL24:
	mov.n	a5, a4
.LBB36:
.LBB37:
	.loc 2 170 0
	memw
	l32i.n	a3, a10, 0
.LVL25:
	movi.n	a4, 0x22
	movi.n	a8, 0
	bltu	a4, a2, .L53
	l32r	a8, .LC26
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
.L53:
.LBE37:
.LBE36:
	.loc 1 41 0
	movi.n	a4, -1
	xor	a8, a4, a8
	and	a8, a8, a3
	memw
	s32i.n	a8, a10, 0
	.loc 1 42 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL26:
.LBB38:
.LBB39:
	.loc 2 170 0
	memw
	l32i.n	a3, a10, 0
.LBE39:
.LBE38:
	.loc 1 42 0
	mov.n	a4, a10
.LVL27:
	movi.n	a11, 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL28:
	or	a10, a3, a10
	memw
	s32i.n	a10, a4, 0
	.loc 1 43 0
	call8	xPortInIsrContext
.LVL29:
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL30:
	retw.n
.LFE30:
	.size	periph_module_disable, .-periph_module_disable
	.section	.text.periph_module_reset,"ax",@progbits
	.literal_position
	.literal .LC27, periph_spinlock
	.align	4
	.global	periph_module_reset
	.type	periph_module_reset, @function
periph_module_reset:
.LFB31:
	.loc 1 47 0
.LVL31:
	entry	sp, 32
.LCFI5:
	.loc 1 48 0
	call8	xPortInIsrContext
.LVL32:
	l32r	a4, .LC27
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL33:
	.loc 1 49 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL34:
.LBB40:
.LBB41:
	.loc 2 170 0
	memw
	l32i.n	a5, a10, 0
.LBE41:
.LBE40:
	.loc 1 49 0
	mov.n	a3, a10
.LVL35:
	movi.n	a11, 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL36:
	or	a5, a10, a5
	memw
	s32i.n	a5, a3, 0
.LVL37:
.LBB42:
.LBB43:
	.loc 2 170 0
	memw
	l32i.n	a8, a3, 0
.LBE43:
.LBE42:
	.loc 1 50 0
	movi.n	a2, -1
.LVL38:
	xor	a10, a2, a10
	and	a10, a10, a8
	memw
	s32i.n	a10, a3, 0
	.loc 1 51 0
	call8	xPortInIsrContext
.LVL39:
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL40:
	retw.n
.LFE31:
	.size	periph_module_reset, .-periph_module_reset
	.section	.rodata.CSWTCH$5,"a",@progbits
	.align	4
	.type	CSWTCH$5, @object
	.size	CSWTCH$5, 140
CSWTCH$5:
	.word	2048
	.word	4
	.word	32
	.word	8388608
	.word	128
	.word	262144
	.word	16
	.word	2097152
	.word	8192
	.word	32768
	.word	131072
	.word	1048576
	.word	33554432
	.word	67108864
	.word	256
	.word	4096
	.word	512
	.word	1024
	.word	2
	.word	64
	.word	65536
	.word	4194304
	.word	8192
	.word	16
	.word	524288
	.word	16384
	.word	32768
	.word	1030
	.word	198656
	.word	969
	.word	2048
	.word	196608
	.word	1
	.word	2
	.word	4
	.section	.data.periph_spinlock,"aw",@progbits
	.align	4
	.type	periph_spinlock, @object
	.size	periph_spinlock, 8
periph_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x559
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x8a
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8f
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x94
	.4byte	0x96
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x6
	.byte	0x16
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x22
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x6
	.byte	0x3a
	.4byte	0xc2
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf2
	.4byte	0x68
	.byte	0x1
	.4byte	0x1c8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf2
	.4byte	0x1a1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1
	.byte	0xfb
	.4byte	0x68
	.byte	0x1
	.4byte	0x1e4
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0xfb
	.4byte	0x1a1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x2
	.byte	0xa7
	.4byte	0x68
	.byte	0x3
	.4byte	0x200
	.uleb128 0xb
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x1
	.byte	0x36
	.4byte	0x68
	.byte	0x1
	.4byte	0x21c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0x36
	.4byte	0x1a1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0x84
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x252
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x84
	.4byte	0x1a1
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x84
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1
	.byte	0xde
	.4byte	0x8f
	.byte	0x1
	.4byte	0x26e
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0xde
	.4byte	0x1a1
	.byte	0
	.uleb128 0xf
	.4byte	0x1ac
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e
	.uleb128 0x10
	.4byte	0x1bc
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x10
	.4byte	0x1bc
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x1c8
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ce
	.uleb128 0x10
	.4byte	0x1d8
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x10
	.4byte	0x1d8
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39e
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1e
	.4byte	0x1a1
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	0x1e4
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x21
	.4byte	0x30b
	.uleb128 0x14
	.4byte	0x1f4
	.byte	0
	.uleb128 0x15
	.4byte	0x1e4
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x22
	.4byte	0x326
	.uleb128 0x16
	.4byte	0x1f4
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x53b
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x546
	.4byte	0x343
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x1ac
	.4byte	0x357
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x1c8
	.4byte	0x36b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x21c
	.4byte	0x384
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x53b
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x551
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x26
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46c
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0x26
	.4byte	0x1a1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	0x1e4
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x29
	.4byte	0x3d9
	.uleb128 0x14
	.4byte	0x1f4
	.byte	0
	.uleb128 0x15
	.4byte	0x1e4
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x2a
	.4byte	0x3f4
	.uleb128 0x16
	.4byte	0x1f4
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x53b
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0x546
	.4byte	0x411
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL24
	.4byte	0x1ac
	.4byte	0x425
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0x1c8
	.4byte	0x439
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x21c
	.4byte	0x452
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x53b
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0x551
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x2e
	.4byte	0x1a1
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	0x1e4
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x31
	.4byte	0x4ab
	.uleb128 0x16
	.4byte	0x1f4
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	0x1e4
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x32
	.4byte	0x4c6
	.uleb128 0x16
	.4byte	0x1f4
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x53b
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0x546
	.4byte	0x4e3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x1c8
	.4byte	0x4f7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x21c
	.4byte	0x510
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL39
	.4byte	0x53b
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x551
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x16
	.4byte	0xb7
	.uleb128 0x5
	.byte	0x3
	.4byte	periph_spinlock
	.uleb128 0x1c
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.byte	0xba
	.uleb128 0x1c
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0xf4
	.uleb128 0x1c
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.byte	0xf3
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"periph_module_disable"
.LASF28:
	.string	"PERIPH_PWM1_MODULE"
.LASF17:
	.string	"PERIPH_LEDC_MODULE"
.LASF47:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF36:
	.string	"PERIPH_HSPI_MODULE"
.LASF34:
	.string	"PERIPH_PCNT_MODULE"
.LASF64:
	.string	"vTaskEnterCritical"
.LASF42:
	.string	"PERIPH_EMAC_MODULE"
.LASF10:
	.string	"sizetype"
.LASF46:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF7:
	.string	"__uint32_t"
.LASF31:
	.string	"PERIPH_UHCI0_MODULE"
.LASF39:
	.string	"PERIPH_SDMMC_MODULE"
.LASF69:
	.string	"get_rst_en_mask"
.LASF23:
	.string	"PERIPH_I2S0_MODULE"
.LASF58:
	.string	"enable"
.LASF15:
	.string	"count"
.LASF62:
	.string	"periph_module_reset"
.LASF18:
	.string	"PERIPH_UART0_MODULE"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF9:
	.string	"long int"
.LASF29:
	.string	"PERIPH_PWM2_MODULE"
.LASF65:
	.string	"vTaskExitCritical"
.LASF45:
	.string	"PERIPH_BT_MODULE"
.LASF43:
	.string	"PERIPH_RNG_MODULE"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"owner"
.LASF25:
	.string	"PERIPH_TIMG0_MODULE"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF32:
	.string	"PERIPH_UHCI1_MODULE"
.LASF8:
	.string	"uint32_t"
.LASF16:
	.string	"portMUX_TYPE"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"PERIPH_I2S1_MODULE"
.LASF51:
	.string	"PERIPH_RSA_MODULE"
.LASF3:
	.string	"short unsigned int"
.LASF50:
	.string	"PERIPH_SHA_MODULE"
.LASF68:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/driver"
.LASF19:
	.string	"PERIPH_UART1_MODULE"
.LASF12:
	.string	"char"
.LASF52:
	.string	"periph_module_t"
.LASF21:
	.string	"PERIPH_I2C0_MODULE"
.LASF55:
	.string	"periph"
.LASF40:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF13:
	.string	"_Bool"
.LASF27:
	.string	"PERIPH_PWM0_MODULE"
.LASF37:
	.string	"PERIPH_VSPI_MODULE"
.LASF30:
	.string	"PERIPH_PWM3_MODULE"
.LASF44:
	.string	"PERIPH_WIFI_MODULE"
.LASF56:
	.string	"DPORT_READ_PERI_REG"
.LASF11:
	.string	"long unsigned int"
.LASF67:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/periph_ctrl.c"
.LASF48:
	.string	"PERIPH_BT_LC_MODULE"
.LASF63:
	.string	"xPortInIsrContext"
.LASF54:
	.string	"get_rst_en_reg"
.LASF26:
	.string	"PERIPH_TIMG1_MODULE"
.LASF57:
	.string	"get_clk_en_mask"
.LASF70:
	.string	"periph_spinlock"
.LASF41:
	.string	"PERIPH_CAN_MODULE"
.LASF33:
	.string	"PERIPH_RMT_MODULE"
.LASF59:
	.string	"is_wifi_clk_peripheral"
.LASF66:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF49:
	.string	"PERIPH_AES_MODULE"
.LASF20:
	.string	"PERIPH_UART2_MODULE"
.LASF60:
	.string	"periph_module_enable"
.LASF53:
	.string	"get_clk_en_reg"
.LASF35:
	.string	"PERIPH_SPI_MODULE"
.LASF22:
	.string	"PERIPH_I2C1_MODULE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
