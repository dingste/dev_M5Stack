	.file	"app_trace_util.c"
	.text
.Ltext0:
	.section	.text.esp_apptrace_tmo_check,"ax",@progbits
	.literal_position
	.literal .LC0, 1125899907
	.align	4
	.global	esp_apptrace_tmo_check
	.type	esp_apptrace_tmo_check, @function
esp_apptrace_tmo_check:
.LFB31:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_trace/app_trace_util.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	call8	esp_clk_cpu_freq
.LVL1:
	.loc 1 30 0
	l32i.n	a8, a2, 4
	.loc 1 29 0
	mov.n	a3, a10
.LVL2:
	.loc 1 30 0
	beqi	a8, -1, .L2
.LBB11:
	.loc 1 31 0
	call8	xthal_get_ccount
.LVL3:
	.loc 1 32 0
	l32i.n	a11, a2, 0
	l32r	a8, .LC0
	srai	a12, a3, 31
	bltu	a10, a11, .L3
	.loc 1 33 0
	mulsh	a9, a3, a8
	sub	a10, a10, a11
.LVL4:
	srai	a9, a9, 18
	j	.L10
.LVL5:
.L3:
	.loc 1 35 0
	movi.n	a9, -1
	mulsh	a8, a3, a8
	xor	a11, a9, a11
	add.n	a10, a11, a10
.LVL6:
	srai	a9, a8, 18
.L10:
	sub	a8, a9, a12
	quou	a8, a10, a8
	s32i.n	a8, a2, 8
.LVL7:
.LBE11:
.LBB12:
.LBB13:
.LBB14:
	.loc 1 37 0
	l32i.n	a8, a2, 8
	l32i.n	a3, a2, 4
.LVL8:
	.loc 1 38 0
	movi	a2, 0x107
.LVL9:
	.loc 1 37 0
	bgeu	a8, a3, .L5
.LVL10:
.L2:
.LBE14:
	.loc 1 41 0
	movi.n	a2, 0
.L5:
.LBE13:
.LBE12:
	.loc 1 42 0
	retw.n
.LFE31:
	.size	esp_apptrace_tmo_check, .-esp_apptrace_tmo_check
	.section	.text.esp_apptrace_lock_take,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_take
	.type	esp_apptrace_lock_take, @function
esp_apptrace_lock_take:
.LFB32:
	.loc 1 49 0
.LVL11:
	entry	sp, 32
.LCFI1:
.L14:
.LBB15:
.LBB16:
.LBB17:
.LBB18:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 2 317 0
#APP
# 317 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a4, 3

# 0 "" 2
.LVL12:
#NO_APP
.LBE18:
.LBE17:
.LBE16:
	.loc 1 61 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	vPortCPUAcquireMutexTimeout
.LVL13:
	.loc 1 63 0
	beqz.n	a10, .L12
	.loc 1 64 0
	s32i.n	a4, a2, 8
	.loc 1 65 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L12:
	.loc 1 67 0
	mov.n	a10, a4
.LVL16:
	call8	_xtos_set_intlevel
.LVL17:
	.loc 1 69 0
	mov.n	a10, a3
	call8	esp_apptrace_tmo_check
.LVL18:
	.loc 1 70 0
	beqz.n	a10, .L14
	.loc 1 69 0
	mov.n	a2, a10
.LVL19:
.LBE15:
	.loc 1 75 0
	retw.n
.LFE32:
	.size	esp_apptrace_lock_take, .-esp_apptrace_lock_take
	.section	.text.esp_apptrace_lock_give,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_give
	.type	esp_apptrace_lock_give, @function
esp_apptrace_lock_give:
.LFB33:
	.loc 1 78 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 78 0
	mov.n	a10, a2
	.loc 1 80 0
	l32i.n	a2, a2, 8
.LVL21:
	.loc 1 86 0
	call8	vPortCPUReleaseMutex
.LVL22:
	.loc 1 88 0
	mov.n	a10, a2
	call8	_xtos_set_intlevel
.LVL23:
	.loc 1 90 0
	movi.n	a2, 0
.LVL24:
	retw.n
.LFE33:
	.size	esp_apptrace_lock_give, .-esp_apptrace_lock_give
	.section	.text.esp_apptrace_rb_produce,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_produce
	.type	esp_apptrace_rb_produce, @function
esp_apptrace_rb_produce:
.LFB34:
	.loc 1 97 0
.LVL25:
	entry	sp, 32
.LCFI3:
	.loc 1 97 0
	mov.n	a8, a2
	.loc 1 98 0
	memw
	l32i.n	a9, a8, 16
	l32i.n	a2, a2, 0
.LVL26:
	.loc 1 100 0
	memw
	l32i.n	a10, a8, 12
	memw
	l32i.n	a11, a8, 16
	.loc 1 98 0
	add.n	a9, a2, a9
.LVL27:
	.loc 1 100 0
	bltu	a11, a10, .L19
	.loc 1 102 0
	memw
	l32i.n	a10, a8, 16
	memw
	l32i.n	a11, a8, 4
	add.n	a10, a10, a3
	bltu	a10, a11, .L30
	.loc 1 103 0
	memw
	l32i.n	a10, a8, 12
	beqz.n	a10, .L27
	.loc 1 106 0
	memw
	l32i.n	a11, a8, 16
	memw
	l32i.n	a12, a8, 4
	add.n	a11, a3, a11
	movi.n	a10, 0
	bne	a11, a12, .L22
	.loc 1 107 0
	memw
	s32i.n	a10, a8, 16
	j	.L29
.L22:
	.loc 1 110 0
	memw
	l32i.n	a9, a8, 12
.LVL28:
	addi.n	a9, a9, -1
	bltu	a9, a3, .L27
	.loc 1 114 0
	memw
	l32i.n	a9, a8, 16
	memw
	s32i.n	a9, a8, 8
	.loc 1 115 0
	memw
	s32i.n	a10, a8, 16
.LVL29:
	.loc 1 117 0
	memw
	l32i.n	a11, a8, 12
	memw
	l32i.n	a9, a8, 8
	bne	a11, a9, .L24
	.loc 1 118 0
	memw
	s32i.n	a10, a8, 12
	.loc 1 119 0
	memw
	l32i.n	a10, a8, 8
	memw
	l32i.n	a9, a8, 4
	bgeu	a10, a9, .L24
	.loc 1 120 0
	memw
	l32i.n	a9, a8, 4
	memw
	s32i.n	a9, a8, 8
.L24:
	.loc 1 123 0
	memw
	l32i.n	a9, a8, 16
	add.n	a3, a3, a9
.LVL30:
	memw
	s32i.n	a3, a8, 16
	retw.n
.LVL31:
.L19:
	.loc 1 130 0
	memw
	l32i.n	a2, a8, 12
	memw
	l32i.n	a10, a8, 16
	addi.n	a2, a2, -1
	sub	a10, a2, a10
	.loc 1 104 0
	movi.n	a2, 0
	.loc 1 130 0
	bltu	a10, a3, .L21
.L30:
	.loc 1 133 0
	memw
	l32i.n	a2, a8, 16
	add.n	a3, a3, a2
.LVL32:
	memw
	s32i.n	a3, a8, 16
.L29:
	.loc 1 98 0
	mov.n	a2, a9
	retw.n
.LVL33:
.L27:
	.loc 1 104 0
	mov.n	a2, a10
.L21:
	.loc 1 136 0
	retw.n
.LFE34:
	.size	esp_apptrace_rb_produce, .-esp_apptrace_rb_produce
	.section	.text.esp_apptrace_rb_consume,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_consume
	.type	esp_apptrace_rb_consume, @function
esp_apptrace_rb_consume:
.LFB35:
	.loc 1 139 0
.LVL34:
	entry	sp, 32
.LCFI4:
	.loc 1 139 0
	mov.n	a8, a2
	.loc 1 140 0
	l32i.n	a9, a8, 0
	memw
	l32i.n	a2, a2, 12
.LVL35:
	add.n	a9, a9, a2
.LVL36:
	.loc 1 141 0
	memw
	l32i.n	a2, a8, 12
	memw
	l32i.n	a10, a8, 16
	bltu	a10, a2, .L32
	.loc 1 143 0
	memw
	l32i.n	a10, a8, 12
	memw
	l32i.n	a11, a8, 16
	add.n	a10, a10, a3
	.loc 1 144 0
	movi.n	a2, 0
	.loc 1 143 0
	bltu	a11, a10, .L33
	j	.L34
.L32:
	.loc 1 149 0
	memw
	l32i.n	a10, a8, 12
	memw
	l32i.n	a11, a8, 8
	add.n	a10, a3, a10
	.loc 1 144 0
	movi.n	a2, 0
	.loc 1 149 0
	bltu	a11, a10, .L33
	.loc 1 151 0
	memw
	l32i.n	a2, a8, 12
	memw
	l32i.n	a10, a8, 8
	add.n	a2, a3, a2
	bne	a2, a10, .L34
	.loc 1 153 0
	memw
	l32i.n	a3, a8, 8
.LVL37:
	memw
	l32i.n	a2, a8, 4
	bgeu	a3, a2, .L35
	.loc 1 154 0
	memw
	l32i.n	a2, a8, 4
	memw
	s32i.n	a2, a8, 8
.L35:
	.loc 1 156 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a8, 12
	j	.L38
.LVL38:
.L34:
	.loc 1 158 0
	memw
	l32i.n	a2, a8, 12
	add.n	a3, a3, a2
.LVL39:
	memw
	s32i.n	a3, a8, 12
.L38:
	.loc 1 161 0
	mov.n	a2, a9
.L33:
	.loc 1 162 0
	retw.n
.LFE35:
	.size	esp_apptrace_rb_consume, .-esp_apptrace_rb_consume
	.section	.text.esp_apptrace_rb_read_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_read_size_get
	.type	esp_apptrace_rb_read_size_get, @function
esp_apptrace_rb_read_size_get:
.LFB36:
	.loc 1 165 0
.LVL40:
	entry	sp, 32
.LCFI5:
.LVL41:
	.loc 1 167 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L40
	.loc 1 169 0
	memw
	l32i.n	a8, a2, 16
	j	.L42
.L40:
	.loc 1 172 0
	memw
	l32i.n	a8, a2, 8
.L42:
	memw
	l32i.n	a2, a2, 12
.LVL42:
	sub	a2, a8, a2
.LVL43:
	.loc 1 175 0
	retw.n
.LFE36:
	.size	esp_apptrace_rb_read_size_get, .-esp_apptrace_rb_read_size_get
	.section	.text.esp_apptrace_rb_write_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_write_size_get
	.type	esp_apptrace_rb_write_size_get, @function
esp_apptrace_rb_write_size_get:
.LFB37:
	.loc 1 178 0
.LVL44:
	entry	sp, 32
.LCFI6:
.LVL45:
	.loc 1 180 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L44
	.loc 1 182 0
	memw
	l32i.n	a8, a2, 4
	memw
	l32i.n	a9, a2, 16
	sub	a8, a8, a9
.LVL46:
	.loc 1 183 0
	beqz.n	a8, .L45
	.loc 1 183 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a9, a2, 12
	.loc 1 184 0 is_stmt 1 discriminator 1
	movi.n	a10, 1
	movi.n	a2, 0
.LVL47:
	moveqz	a2, a10, a9
	j	.L49
.LVL48:
.L44:
	.loc 1 188 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a2, a2, 16
.LVL49:
	addi.n	a8, a8, -1
.LVL50:
.L49:
	sub	a8, a8, a2
.LVL51:
.L45:
	.loc 1 191 0
	mov.n	a2, a8
	retw.n
.LFE37:
	.size	esp_apptrace_rb_write_size_get, .-esp_apptrace_rb_write_size_get
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI2-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI3-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI6-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_trace/include/esp_app_trace_util.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/hal.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_clk.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x511
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.LASF49
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0x82
	.4byte	0xee
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x8a
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0x8f
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.byte	0x94
	.4byte	0xcd
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x1c
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1d
	.4byte	0xb0
	.byte	0
	.uleb128 0x7
	.string	"tmo"
	.byte	0x6
	.byte	0x1e
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1f
	.4byte	0xb0
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x20
	.4byte	0xf9
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x3e
	.4byte	0x152
	.uleb128 0x7
	.string	"mux"
	.byte	0x6
	.byte	0x3f
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x6
	.byte	0x40
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x41
	.4byte	0x131
	.uleb128 0x5
	.byte	0x14
	.byte	0x6
	.byte	0x66
	.4byte	0x1a0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0x67
	.4byte	0x1a0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0x68
	.4byte	0x1a6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0x69
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0x7
	.string	"rd"
	.byte	0x6
	.byte	0x6a
	.4byte	0x1a6
	.byte	0xc
	.uleb128 0x7
	.string	"wr"
	.byte	0x6
	.byte	0x6b
	.4byte	0x1a6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x9
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x6c
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1b
	.4byte	0xbb
	.byte	0x1
	.4byte	0x1ea
	.uleb128 0xb
	.string	"tmo"
	.byte	0x1
	.byte	0x1b
	.4byte	0x1ea
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0xd
	.uleb128 0xe
	.string	"cur"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x126
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x13c
	.4byte	0x2c
	.byte	0x3
	.4byte	0x21c
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x13d
	.4byte	0x2c
	.uleb128 0xd
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x13d
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x1b6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a0
	.uleb128 0x12
	.4byte	0x1c6
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	0x1d1
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x261
	.uleb128 0x13
	.4byte	0x1dd
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0x4db
	.byte	0
	.uleb128 0x14
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x296
	.uleb128 0x12
	.4byte	0x1c6
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x17
	.4byte	0x1d1
	.uleb128 0x16
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x17
	.4byte	0x1dd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x4e7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.byte	0x30
	.4byte	0xbb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37a
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x30
	.4byte	0x37a
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"tmo"
	.byte	0x1
	.byte	0x30
	.4byte	0x1ea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x36
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3d
	.4byte	0xc6
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	0x1f0
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x36
	.4byte	0x33b
	.uleb128 0x16
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x1e
	.4byte	0x201
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1e
	.4byte	0x20e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL13
	.4byte	0x4f2
	.4byte	0x354
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL17
	.4byte	0x4fd
	.4byte	0x368
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0x1b6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x152
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4d
	.4byte	0xbb
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4d
	.4byte	0x37a
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LVL22
	.4byte	0x508
	.4byte	0x3cc
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x4fd
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x60
	.4byte	0x1a0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x423
	.uleb128 0x22
	.string	"rb"
	.byte	0x1
	.byte	0x60
	.4byte	0x423
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x60
	.4byte	0xb0
	.4byte	.LLST9
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x62
	.4byte	0x1a0
	.4byte	.LLST10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8a
	.4byte	0x1a0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0x22
	.string	"rb"
	.byte	0x1
	.byte	0x8a
	.4byte	0x423
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8a
	.4byte	0xb0
	.4byte	.LLST12
	.uleb128 0x1b
	.string	"ptr"
	.byte	0x1
	.byte	0x8c
	.4byte	0x1a0
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa4
	.4byte	0xb0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a4
	.uleb128 0x22
	.string	"rb"
	.byte	0x1
	.byte	0xa4
	.4byte	0x423
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa6
	.4byte	0xb0
	.4byte	.LLST14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb1
	.4byte	0xb0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db
	.uleb128 0x22
	.string	"rb"
	.byte	0x1
	.byte	0xb1
	.4byte	0x423
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb3
	.4byte	0xb0
	.4byte	.LLST16
	.byte	0
	.uleb128 0x24
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x2d4
	.uleb128 0x25
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x35
	.uleb128 0x25
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x2
	.byte	0xff
	.uleb128 0x25
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.byte	0x99
	.uleb128 0x24
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x100
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"success"
.LASF41:
	.string	"esp_apptrace_rb_write_size_get"
.LASF5:
	.string	"__uint8_t"
.LASF37:
	.string	"esp_apptrace_lock_give"
.LASF32:
	.string	"state"
.LASF20:
	.string	"count"
.LASF21:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF31:
	.string	"cpu_freq"
.LASF39:
	.string	"esp_apptrace_rb_consume"
.LASF6:
	.string	"__int32_t"
.LASF50:
	.string	"esp_apptrace_tmo_check"
.LASF44:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF46:
	.string	"vPortCPUReleaseMutex"
.LASF27:
	.string	"data"
.LASF47:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"cur_size"
.LASF7:
	.string	"__uint32_t"
.LASF12:
	.string	"long unsigned int"
.LASF36:
	.string	"esp_apptrace_lock_take"
.LASF25:
	.string	"int_state"
.LASF17:
	.string	"esp_err_t"
.LASF26:
	.string	"esp_apptrace_lock_t"
.LASF42:
	.string	"xthal_get_ccount"
.LASF19:
	.string	"owner"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"portENTER_CRITICAL_NESTED"
.LASF24:
	.string	"esp_apptrace_tmo_t"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF23:
	.string	"elapsed"
.LASF40:
	.string	"esp_apptrace_rb_read_size_get"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF45:
	.string	"_xtos_set_intlevel"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"esp_clk_cpu_freq"
.LASF48:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_trace/app_trace_util.c"
.LASF33:
	.string	"__tmp"
.LASF49:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/app_trace"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"lock"
.LASF28:
	.string	"size"
.LASF18:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
.LASF38:
	.string	"esp_apptrace_rb_produce"
.LASF30:
	.string	"esp_apptrace_rb_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
