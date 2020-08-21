	.file	"cpu_start.c"
	.text
.Ltext0:
	.section	.text.main_task,"ax",@progbits
	.align	4
	.type	main_task, @function
main_task:
.LFB45:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c"
	.loc 1 449 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 457 0
	call8	heap_caps_enable_nonos_stack_heaps
.LVL1:
	.loc 1 492 0
	call8	rtc_wdt_disable
.LVL2:
	.loc 1 494 0
	call8	app_main
.LVL3:
	.loc 1 495 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL4:
	retw.n
.LFE45:
	.size	main_task, .-main_task
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"r"
.LC8:
	.string	"/dev/uart/0"
.LC10:
	.string	"w"
.LC12:
	.string	"err == ESP_OK && \"Failed to init pthread module!\""
.LC15:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c"
.LC23:
	.string	"main"
.LC26:
	.string	"res == pdTRUE"
.LC28:
	.string	"cpu_start"
.LC30:
	.string	"\033[0;32mI (%d) %s: Starting scheduler on PRO CPU.\033[0m\n"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC3, 1072955424
	.literal .LC4, -134217729
	.literal .LC5, _global_impure_ptr
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, __func__$8427
	.literal .LC16, .LC15
	.literal .LC17, ob$8436
	.literal .LC18, __eh_frame
	.literal .LC19, __init_array_end
	.literal .LC20, __init_array_start
	.literal .LC21, g_flash_guard_default_ops
	.literal .LC22, 4096
	.literal .LC24, .LC23
	.literal .LC25, main_task
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.align	4
	.global	start_cpu0_default
	.type	start_cpu0_default, @function
start_cpu0_default:
.LFB42:
	.loc 1 283 0
	entry	sp, 80
.LCFI1:
	.loc 1 285 0
	call8	esp_setup_syscall_table
.LVL5:
.LBB20:
.LBB21:
	.loc 1 274 0
	movi.n	a2, 0
.LBE21:
.LBE20:
	.loc 1 309 0
	call8	esp_clk_init
.LVL6:
.LBB24:
.LBB22:
	.loc 1 274 0
	movi.n	a3, 0x45
.LBE22:
.LBE24:
	.loc 1 310 0
	call8	esp_perip_clk_init
.LVL7:
.L3:
.LBB25:
.LBB23:
	.loc 1 275 0
	mov.n	a11, a2
	movi.n	a12, 6
	movi.n	a10, 0
	.loc 1 274 0
	addi.n	a2, a2, 1
.LVL8:
	.loc 1 275 0
	call8	intr_matrix_set
.LVL9:
	.loc 1 274 0
	bne	a2, a3, .L3
.LVL10:
.LBE23:
.LBE25:
	.loc 1 317 0
	l32r	a3, .LC3
	l32r	a2, .LC4
.LVL11:
	memw
	l32i.n	a4, a3, 0
	.loc 1 321 0
	movi	a11, 0x8a
	.loc 1 317 0
	and	a2, a4, a2
	.loc 1 321 0
	movi.n	a10, 0
	.loc 1 317 0
	memw
	s32i.n	a2, a3, 0
	.loc 1 321 0
	call8	uart_div_modify
.LVL12:
	.loc 1 328 0
	call8	esp_efuse_disable_basic_rom_console
.LVL13:
	.loc 1 330 0
	call8	rtc_gpio_force_hold_dis_all
.LVL14:
	.loc 1 331 0
	call8	esp_vfs_dev_uart_register
.LVL15:
	.loc 1 332 0
	l32r	a2, .LC5
	l32i.n	a10, a2, 0
	call8	esp_reent_init
.LVL16:
	.loc 1 335 0
	l32r	a3, .LC9
	l32r	a11, .LC7
	l32i.n	a4, a2, 0
	mov.n	a10, a3
	call8	fopen
.LVL17:
	s32i.n	a10, a4, 4
	.loc 1 336 0
	l32r	a4, .LC11
	l32i.n	a5, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL18:
	.loc 1 337 0
	mov.n	a11, a4
	.loc 1 336 0
	s32i.n	a10, a5, 8
	.loc 1 337 0
	l32i.n	a2, a2, 0
	mov.n	a10, a3
	call8	fopen
.LVL19:
	s32i.n	a10, a2, 12
	.loc 1 343 0
	call8	esp_timer_init
.LVL20:
	.loc 1 344 0
	call8	esp_set_time_from_rtc
.LVL21:
	.loc 1 355 0
	call8	esp_pthread_init
.LVL22:
	.loc 1 356 0
	beqz.n	a10, .L4
	.loc 1 356 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x164
	j	.L9
.L4:
.LBB26:
.LBB27:
	.loc 1 439 0 is_stmt 1
	l32r	a11, .LC17
	l32r	a10, .LC18
.LVL23:
	call8	__register_frame_info
.LVL24:
	l32r	a2, .LC19
	.loc 1 443 0
	l32r	a3, .LC20
	j	.L5
.LVL25:
.L6:
	.loc 1 444 0
	l32i.n	a4, a2, 0
	callx8	a4
.LVL26:
.L5:
	addi	a2, a2, -4
.LVL27:
	.loc 1 443 0
	bgeu	a2, a3, .L6
.LBE27:
.LBE26:
	.loc 1 364 0
	call8	esp_cache_err_int_init
.LVL28:
	.loc 1 365 0
	call8	esp_crosscore_int_init
.LVL29:
	.loc 1 369 0
	call8	spi_flash_init
.LVL30:
	.loc 1 371 0
	l32r	a10, .LC21
	call8	spi_flash_guard_set
.LVL31:
	.loc 1 373 0
	call8	esp_pm_impl_init
.LVL32:
	.loc 1 376 0
	addi	a11, sp, 36
	movi	a10, 0xa0
	call8	rtc_clk_cpu_freq_from_mhz
.LVL33:
	.loc 1 377 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL34:
	l32i.n	a2, sp, 36
.LVL35:
	.loc 1 381 0
	addi	a10, sp, 16
	.loc 1 377 0
	s32i.n	a2, sp, 16
	.loc 1 381 0
	call8	esp_pm_configure
.LVL36:
	.loc 1 389 0
	movi.n	a13, 0
	l32r	a12, .LC22
	l32r	a11, .LC24
	l32r	a10, .LC25
	s32i.n	a13, sp, 0
	mov.n	a15, a13
	movi.n	a14, 1
	call8	xTaskCreatePinnedToCore
.LVL37:
	.loc 1 392 0
	beqi	a10, 1, .L7
	.loc 1 392 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC14
	movi	a11, 0x188
.LVL38:
.L9:
	l32r	a10, .LC16
	call8	__assert_func
.LVL39:
.L7:
	.loc 1 393 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL40:
	l32r	a11, .LC29
	l32r	a12, .LC31
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL41:
	.loc 1 394 0 discriminator 9
	call8	vTaskStartScheduler
.LVL42:
	.loc 1 395 0 discriminator 9
	call8	abort
.LVL43:
.LFE42:
	.size	start_cpu0_default, .-start_cpu0_default
	.weak	start_cpu0
	.set	start_cpu0,start_cpu0_default
	.section	.rodata.str1.1
.LC40:
	.string	"\033[0;32mI (%d) %s: Pro cpu up.\033[0m\n"
.LC42:
	.string	"\033[0;32mI (%d) %s: Single core mode\033[0m\n"
.LC45:
	.string	"\033[0;32mI (%d) %s: Pro cpu start user code\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-1073741824
	.word	-536870912
	.section	.iram1
	.literal_position
	.literal .LC32, .LC0
	.literal .LC33, 536870912
	.literal .LC34, _init_start
	.literal .LC35, _bss_end
	.literal .LC36, _bss_start
	.literal .LC37, _rtc_bss_end
	.literal .LC38, _rtc_bss_start
	.literal .LC39, .LC28
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC44, 1072693296
	.literal .LC46, .LC45
	.align	4
	.global	call_start_cpu0
	.type	call_start_cpu0, @function
call_start_cpu0:
.LFB40:
	.loc 1 120 0
	entry	sp, 64
.LCFI2:
.LBB43:
.LBB44:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.loc 2 76 0
	l32r	a11, .LC32
	movi.n	a12, 0x14
	mov.n	a10, sp
	call8	memcpy
.LVL44:
	movi.n	a8, 0
.LBB45:
.LBB46:
.LBB47:
	.loc 2 46 0
	movi.n	a10, 0xf
.LBE47:
.LBE46:
	.loc 2 77 0
	movi.n	a2, 5
.L11:
	.loc 2 78 0
	add.n	a9, sp, a8
	l32i.n	a9, a9, 0
.LVL45:
.LBB49:
.LBB48:
	.loc 2 46 0
#APP
# 46 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a9; dsync

# 0 "" 2
.LVL46:
#NO_APP
.LBE48:
.LBE49:
.LBB50:
.LBB51:
	.loc 2 52 0
#APP
# 52 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a9; isync

# 0 "" 2
#NO_APP
	addi.n	a8, a8, 4
.LBE51:
.LBE50:
	.loc 2 77 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L11
.LVL47:
.LBE45:
.LBB52:
.LBB53:
	.loc 2 46 0
	l32r	a2, .LC33
	movi.n	a10, 0
#APP
# 46 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a2; dsync

# 0 "" 2
.LVL48:
#NO_APP
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 2 52 0
#APP
# 52 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a2; isync

# 0 "" 2
.LVL49:
#NO_APP
.LBE55:
.LBE54:
.LBE44:
.LBE43:
.LBB56:
.LBB57:
	.loc 2 59 0
#APP
# 59 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wsr a10, MEMCTL
# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
	.loc 1 130 0
	l32r	a2, .LC34
#APP
# 130 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c" 1
	wsr    a2, vecbase

# 0 "" 2
	.loc 1 134 0
#NO_APP
	call8	rtc_get_reset_reason
.LVL50:
	.loc 1 141 0
	addi	a9, a10, -7
	movi.n	a8, -3
	.loc 1 134 0
	mov.n	a2, a10
.LVL51:
	.loc 1 141 0
	bany	a9, a8, .L12
	.loc 1 147 0
	call8	rtc_wdt_disable
.LVL52:
.L12:
	.loc 1 152 0
	l32r	a10, .LC36
	l32r	a12, .LC35
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL53:
	.loc 1 155 0
	beqi	a2, 5, .L13
	.loc 1 156 0
	l32r	a10, .LC38
	l32r	a12, .LC37
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL54:
.L13:
	.loc 1 177 0 discriminator 1
	call8	esp_log_timestamp
.LVL55:
	l32r	a2, .LC39
.LVL56:
	mov.n	a11, a10
	l32r	a10, .LC41
	mov.n	a12, a2
	call8	ets_printf
.LVL57:
	.loc 1 206 0 discriminator 1
	call8	esp_log_timestamp
.LVL58:
	mov.n	a11, a10
	l32r	a10, .LC43
	mov.n	a12, a2
	call8	ets_printf
.LVL59:
.LBB58:
.LBB59:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 170 0 discriminator 1
	l32r	a9, .LC44
.LBE59:
.LBE58:
	.loc 1 207 0 discriminator 1
	movi.n	a8, -2
.LBB61:
.LBB60:
	.loc 3 170 0 discriminator 1
	memw
	l32i.n	a10, a9, 0
.LBE60:
.LBE61:
	.loc 1 207 0 discriminator 1
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 231 0 discriminator 1
	call8	heap_caps_init
.LVL60:
	.loc 1 233 0 discriminator 1
	call8	esp_log_timestamp
.LVL61:
	mov.n	a11, a10
	l32r	a10, .LC46
	mov.n	a12, a2
	call8	ets_printf
.LVL62:
	.loc 1 234 0 discriminator 1
	call8	start_cpu0
.LVL63:
.LFE40:
	.size	call_start_cpu0, .-call_start_cpu0
	.section	.text.__cxx_eh_arena_size_get,"ax",@progbits
	.align	4
	.global	__cxx_eh_arena_size_get
	.type	__cxx_eh_arena_size_get, @function
__cxx_eh_arena_size_get:
.LFB43:
	.loc 1 430 0
	entry	sp, 32
.LCFI3:
	.loc 1 432 0
	movi.n	a2, 0
	retw.n
.LFE43:
	.size	__cxx_eh_arena_size_get, .-__cxx_eh_arena_size_get
	.section	.bss.ob$8436,"aw",@nobits
	.align	4
	.type	ob$8436, @object
	.size	ob$8436, 40
ob$8436:
	.zero	40
	.section	.rodata.__func__$8427,"a",@progbits
	.type	__func__$8427, @object
	.size	__func__$8427, 19
__func__$8427:
	.string	"start_cpu0_default"
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI1-.LFB42
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI3-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/reent.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/rtc.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_periph.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp32/pm.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_clk_internal.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_efuse.h"
	.file 26 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/rtc_io.h"
	.file 27 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/vfs/include/esp_vfs_dev.h"
	.file 28 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 29 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 30 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_cache_err_int.h"
	.file 31 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 32 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_impl.h"
	.file 33 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_pm.h"
	.file 34 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 35 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1380
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0xc
	.4byte	.LASF243
	.4byte	.LASF244
	.4byte	.Ldebug_ranges0+0x50
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
	.4byte	.LASF4
	.byte	0x4
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x6
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x7
	.byte	0xb
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x7
	.byte	0xc
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x8
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x8
	.byte	0x27
	.4byte	0xb5
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x165
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0xf2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4c
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x8
	.byte	0x4d
	.4byte	0xf2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x102
	.uleb128 0x9
	.4byte	0x102
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x8
	.byte	0x49
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4e
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x4f
	.4byte	0x109
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x53
	.4byte	0x9f
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0x16
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x1a7
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2f
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x30
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x1ad
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x154
	.uleb128 0x8
	.4byte	0x142
	.4byte	0x1bd
	.uleb128 0x9
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x236
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x37
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x38
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x39
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x3a
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3b
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3c
	.4byte	0x4c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3d
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3e
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3f
	.4byte	0x4c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x49
	.4byte	0x276
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x4a
	.4byte	0x276
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.byte	0x4c
	.4byte	0x142
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4f
	.4byte	0x142
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x140
	.4byte	0x286
	.uleb128 0x9
	.4byte	0x102
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x2c3
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x9
	.byte	0x54
	.4byte	0x2c3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x55
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x56
	.4byte	0x2c9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x57
	.4byte	0x2e0
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x286
	.uleb128 0x8
	.4byte	0x2d9
	.4byte	0x2d9
	.uleb128 0x9
	.4byte	0x102
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2df
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x236
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x30b
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x74
	.4byte	0x30b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x75
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x457
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x9
	.2byte	0x176
	.4byte	0x4c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x9
	.2byte	0x17b
	.4byte	0x68c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x17b
	.4byte	0x68c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x17b
	.4byte	0x68c
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x17d
	.4byte	0x4c
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x17f
	.4byte	0x5a5
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9
	.2byte	0x181
	.4byte	0x4c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x183
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x184
	.4byte	0x5d6
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x7d9
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x188
	.4byte	0x7ea
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x18a
	.4byte	0x4c
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x18d
	.4byte	0x4c
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x18e
	.4byte	0x5a5
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x190
	.4byte	0x7f0
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x191
	.4byte	0x7f6
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x192
	.4byte	0x5a5
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x195
	.4byte	0x807
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x9
	.2byte	0x199
	.4byte	0x2c3
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x19a
	.4byte	0x286
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x19d
	.4byte	0x651
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x19e
	.4byte	0x68c
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x19f
	.4byte	0x813
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x5a5
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x311
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x587
	.uleb128 0xe
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x30b
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x9
	.byte	0xb7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x9
	.byte	0xb8
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x2e6
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x9
	.byte	0xba
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x9
	.byte	0xbd
	.4byte	0x457
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0xc1
	.4byte	0x140
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x9
	.byte	0xc3
	.4byte	0x5b2
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x9
	.byte	0xc5
	.4byte	0x5e1
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x9
	.byte	0xc8
	.4byte	0x605
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0xc9
	.4byte	0x61f
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x2e6
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x30b
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x4c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0xd1
	.4byte	0x625
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd2
	.4byte	0x635
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x2e6
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0xd8
	.4byte	0x4c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd9
	.4byte	0xaa
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe0
	.4byte	0x135
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x9
	.byte	0xe2
	.4byte	0x12a
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x9
	.byte	0xe3
	.4byte	0x4c
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x5a5
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x5a5
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.uleb128 0xf
	.byte	0x4
	.4byte	0x587
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x18
	.4byte	0x5ab
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b8
	.uleb128 0x16
	.4byte	0xbc
	.4byte	0x605
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0xbc
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x61f
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60b
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x635
	.uleb128 0x9
	.4byte	0x102
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x645
	.uleb128 0x9
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x11d
	.4byte	0x45d
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x686
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x123
	.4byte	0x686
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x124
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x125
	.4byte	0x68c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x651
	.uleb128 0xf
	.byte	0x4
	.4byte	0x645
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x6d4
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x13e
	.4byte	0x6d4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6d4
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6e4
	.uleb128 0x9
	.4byte	0x102
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x726
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x159
	.4byte	0x1a7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x15a
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x15b
	.4byte	0x1a7
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x15c
	.4byte	0x726
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x7c9
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x163
	.4byte	0x5a5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x164
	.4byte	0x12a
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x165
	.4byte	0x12a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x166
	.4byte	0x12a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x167
	.4byte	0x7c9
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x168
	.4byte	0x4c
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x169
	.4byte	0x12a
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x16a
	.4byte	0x12a
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x16b
	.4byte	0x12a
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x16c
	.4byte	0x12a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x16d
	.4byte	0x12a
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5ab
	.4byte	0x7d9
	.uleb128 0x9
	.4byte	0x102
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x19
	.4byte	0x7ea
	.uleb128 0x17
	.4byte	0x457
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7df
	.uleb128 0xf
	.byte	0x4
	.4byte	0x692
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0x19
	.4byte	0x807
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x80d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x72c
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xa
	.byte	0x18
	.4byte	0x73
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.byte	0x52
	.4byte	0x891
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x7
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x9
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0xa
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0xb
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0xd
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0xf
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xb
	.byte	0x63
	.4byte	0x824
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x46
	.4byte	0x8c7
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xc
	.byte	0x4c
	.4byte	0x89c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF145
	.uleb128 0xa
	.byte	0x34
	.byte	0xd
	.byte	0x21
	.4byte	0x97d
	.uleb128 0xe
	.string	"reg"
	.byte	0xd
	.byte	0x22
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.string	"mux"
	.byte	0xd
	.byte	0x23
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xd
	.byte	0x24
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xe
	.string	"ie"
	.byte	0xd
	.byte	0x25
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xd
	.byte	0x26
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xd
	.byte	0x27
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xd
	.byte	0x28
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xd
	.byte	0x29
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xd
	.byte	0x2a
	.4byte	0x7e
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xd
	.byte	0x2b
	.4byte	0x7e
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xd
	.byte	0x2c
	.4byte	0x7e
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xd
	.byte	0x2d
	.4byte	0x7e
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xd
	.byte	0x2e
	.4byte	0x4c
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xd
	.byte	0x2f
	.4byte	0x8d9
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xe
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x18
	.4byte	0x5d6
	.uleb128 0x5
	.4byte	.LASF158
	.byte	0xf
	.2byte	0x12f
	.4byte	0x2d9
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0xf
	.2byte	0x133
	.4byte	0x2d9
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0xf
	.2byte	0x137
	.4byte	0x2d9
	.uleb128 0x5
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x13b
	.4byte	0x2d9
	.uleb128 0x1c
	.byte	0x10
	.byte	0xf
	.2byte	0x159
	.4byte	0xa06
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0xf
	.2byte	0x15a
	.4byte	0x998
	.byte	0
	.uleb128 0x15
	.string	"end"
	.byte	0xf
	.2byte	0x15b
	.4byte	0x9a4
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0xf
	.2byte	0x15c
	.4byte	0x9b0
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0xf
	.2byte	0x15d
	.4byte	0x9bc
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0xf
	.2byte	0x15e
	.4byte	0x9c8
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0x10
	.byte	0x1f
	.4byte	0xa43
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0x11
	.byte	0x21
	.4byte	0xa88
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x11
	.byte	0x22
	.4byte	0x8c7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x11
	.byte	0x23
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x11
	.byte	0x24
	.4byte	0x8c7
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x11
	.byte	0x25
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x11
	.byte	0x26
	.4byte	0x8d2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x11
	.byte	0x27
	.4byte	0xa43
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x28
	.byte	0x1
	.byte	0x6b
	.4byte	0xaac
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x1
	.byte	0x6b
	.4byte	0xaac
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb5
	.4byte	0xabc
	.uleb128 0x9
	.4byte	0x102
	.byte	0x9
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.4byte	0xadf
	.uleb128 0x1e
	.string	"vpn"
	.byte	0x2
	.byte	0x32
	.4byte	0x5e
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x2
	.byte	0x32
	.4byte	0x5e
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.4byte	0xb02
	.uleb128 0x1e
	.string	"vpn"
	.byte	0x2
	.byte	0x2c
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x2
	.byte	0x2c
	.4byte	0x5e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.4byte	0xb1a
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0x2
	.byte	0x3a
	.4byte	0x7e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF245
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0x3
	.4byte	0xb36
	.uleb128 0x1e
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0
	.uleb128 0x23
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1c0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb85
	.uleb128 0x24
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x140
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL1
	.4byte	0x11f5
	.uleb128 0x25
	.4byte	.LVL2
	.4byte	0x1200
	.uleb128 0x25
	.4byte	.LVL3
	.4byte	0x120b
	.uleb128 0x26
	.4byte	.LVL4
	.4byte	0x1216
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x10f
	.byte	0x1
	.4byte	0xb9f
	.uleb128 0x29
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x112
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1b3
	.byte	0x1
	.4byte	0xbc2
	.uleb128 0x2a
	.string	"ob"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa93
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xbc2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d9
	.uleb128 0x2b
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb8
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x819
	.4byte	.LLST0
	.uleb128 0x2d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x13b
	.4byte	0xeb8
	.4byte	0xf4240
	.uleb128 0x2e
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x14e
	.4byte	0x5d6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.uleb128 0x2f
	.4byte	.LASF188
	.4byte	0xecd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8427
	.uleb128 0x2e
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x177
	.4byte	0x8c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"cfg"
	.byte	0x1
	.2byte	0x179
	.4byte	0xa88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"res"
	.byte	0x1
	.2byte	0x185
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x31
	.4byte	0xb85
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x137
	.4byte	0xc8c
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x33
	.4byte	0xb93
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x1222
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 -1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xb9f
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x166
	.4byte	0xcde
	.uleb128 0x35
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x33
	.4byte	0xbb7
	.4byte	.LLST3
	.uleb128 0x36
	.4byte	0xbac
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$8436
	.uleb128 0x37
	.4byte	.LVL24
	.4byte	0x122e
	.4byte	0xcd4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$8436
	.byte	0
	.uleb128 0x38
	.4byte	.LVL26
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0x1239
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0x1244
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0x124f
	.uleb128 0x37
	.4byte	.LVL12
	.4byte	0x125a
	.4byte	0xd12
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.byte	0
	.uleb128 0x25
	.4byte	.LVL13
	.4byte	0x1265
	.uleb128 0x25
	.4byte	.LVL14
	.4byte	0x1270
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0x127b
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0x1286
	.uleb128 0x37
	.4byte	.LVL17
	.4byte	0x1291
	.4byte	0xd53
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x37
	.4byte	.LVL18
	.4byte	0x1291
	.4byte	0xd6d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL19
	.4byte	0x1291
	.4byte	0xd87
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0x129c
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0x12a7
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0x12b2
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0x12bd
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0x12c8
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0x12d3
	.uleb128 0x25
	.4byte	.LVL31
	.4byte	0x12de
	.uleb128 0x25
	.4byte	.LVL32
	.4byte	0x12ea
	.uleb128 0x37
	.4byte	.LVL33
	.4byte	0x12f5
	.4byte	0xde9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x37
	.4byte	.LVL34
	.4byte	0x1301
	.4byte	0xe07
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x37
	.4byte	.LVL36
	.4byte	0x130a
	.4byte	0xe1b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL37
	.4byte	0x1315
	.4byte	0xe57
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	main_task
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL39
	.4byte	0x1321
	.4byte	0xe6e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x25
	.4byte	.LVL40
	.4byte	0x132c
	.uleb128 0x37
	.4byte	.LVL41
	.4byte	0x1337
	.4byte	0xea5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x1342
	.uleb128 0x25
	.4byte	.LVL43
	.4byte	0x134e
	.byte	0
	.uleb128 0x18
	.4byte	0x4c
	.uleb128 0x8
	.4byte	0x5ab
	.4byte	0xecd
	.uleb128 0x9
	.4byte	0x102
	.byte	0x12
	.byte	0
	.uleb128 0x18
	.4byte	0xebd
	.uleb128 0x20
	.4byte	.LASF191
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.4byte	0xef5
	.uleb128 0x21
	.4byte	.LASF192
	.byte	0x2
	.byte	0x4c
	.4byte	0xf05
	.uleb128 0x29
	.uleb128 0x39
	.string	"i"
	.byte	0x2
	.byte	0x4d
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0xf05
	.uleb128 0x9
	.4byte	0x102
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	0xef5
	.uleb128 0x3a
	.4byte	.LASF249
	.byte	0x1
	.byte	0x77
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1111
	.uleb128 0x3b
	.4byte	.LASF193
	.byte	0x1
	.byte	0x7a
	.4byte	0x1111
	.4byte	.LLST4
	.uleb128 0x3c
	.4byte	0xed2
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0x7e
	.4byte	0x100d
	.uleb128 0x35
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x36
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3d
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0xfa7
	.uleb128 0x3e
	.4byte	0xeea
	.uleb128 0x3f
	.4byte	0xadf
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x4e
	.4byte	0xf87
	.uleb128 0x40
	.4byte	0xaf6
	.byte	0xf
	.uleb128 0x41
	.4byte	0xaeb
	.4byte	.LLST5
	.byte	0
	.uleb128 0x42
	.4byte	0xabc
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x2
	.byte	0x4f
	.uleb128 0x40
	.4byte	0xad3
	.byte	0xf
	.uleb128 0x41
	.4byte	0xac8
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0xadf
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x2
	.byte	0x51
	.4byte	0xfca
	.uleb128 0x40
	.4byte	0xaf6
	.byte	0
	.uleb128 0x43
	.4byte	0xaeb
	.4byte	0x20000000
	.byte	0
	.uleb128 0x3c
	.4byte	0xabc
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x2
	.byte	0x52
	.4byte	0xfed
	.uleb128 0x40
	.4byte	0xad3
	.byte	0
	.uleb128 0x43
	.4byte	0xac8
	.4byte	0x20000000
	.byte	0
	.uleb128 0x26
	.4byte	.LVL44
	.4byte	0x1359
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0xb02
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x7f
	.4byte	0x1031
	.uleb128 0x35
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x44
	.4byte	0xb0e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0xb1a
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xcf
	.4byte	0x104e
	.uleb128 0x43
	.4byte	0xb2a
	.4byte	0x3ff00030
	.byte	0
	.uleb128 0x37
	.4byte	.LVL50
	.4byte	0x1362
	.4byte	0x1061
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL52
	.4byte	0x1200
	.uleb128 0x37
	.4byte	.LVL53
	.4byte	0x1301
	.4byte	0x107d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL54
	.4byte	0x1301
	.4byte	0x1090
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL55
	.4byte	0x132c
	.uleb128 0x37
	.4byte	.LVL57
	.4byte	0x136d
	.4byte	0x10b6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0x132c
	.uleb128 0x37
	.4byte	.LVL59
	.4byte	0x136d
	.4byte	0x10dc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL60
	.4byte	0x1378
	.uleb128 0x25
	.4byte	.LVL61
	.4byte	0x132c
	.uleb128 0x37
	.4byte	.LVL62
	.4byte	0x136d
	.4byte	0x110b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.4byte	.LVL63
	.byte	0
	.uleb128 0x8
	.4byte	0x891
	.4byte	0x1121
	.uleb128 0x9
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x89
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.string	"TAG"
	.byte	0x1
	.byte	0x69
	.4byte	0x993
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC28
	.byte	0x9f
	.uleb128 0x48
	.4byte	.LASF194
	.byte	0x1
	.byte	0x70
	.4byte	0x8d2
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x303
	.4byte	0x457
	.uleb128 0x8
	.4byte	0x97d
	.4byte	0x1171
	.uleb128 0x9
	.4byte	0x102
	.byte	0x27
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF196
	.byte	0xd
	.byte	0x38
	.4byte	0x117c
	.uleb128 0x18
	.4byte	0x1161
	.uleb128 0x49
	.4byte	.LASF197
	.byte	0xf
	.2byte	0x176
	.4byte	0x118d
	.uleb128 0x18
	.4byte	0xa06
	.uleb128 0x4a
	.4byte	.LASF198
	.byte	0x1
	.byte	0x5c
	.4byte	0x4c
	.uleb128 0x4a
	.4byte	.LASF199
	.byte	0x1
	.byte	0x5d
	.4byte	0x4c
	.uleb128 0x4a
	.4byte	.LASF200
	.byte	0x1
	.byte	0x5e
	.4byte	0x4c
	.uleb128 0x4a
	.4byte	.LASF201
	.byte	0x1
	.byte	0x5f
	.4byte	0x4c
	.uleb128 0x4a
	.4byte	.LASF202
	.byte	0x1
	.byte	0x64
	.4byte	0x4c
	.uleb128 0x4a
	.4byte	.LASF203
	.byte	0x1
	.byte	0x65
	.4byte	0x2d9
	.uleb128 0x4a
	.4byte	.LASF204
	.byte	0x1
	.byte	0x66
	.4byte	0x2d9
	.uleb128 0x8
	.4byte	0x5ab
	.4byte	0x11ea
	.uleb128 0x4b
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF205
	.byte	0x1
	.byte	0x6d
	.4byte	0x11df
	.uleb128 0x4c
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x12
	.byte	0x28
	.uleb128 0x4c
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x13
	.byte	0x85
	.uleb128 0x4c
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x1
	.byte	0x59
	.uleb128 0x4d
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x14
	.2byte	0x2fb
	.uleb128 0x4d
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x15
	.2byte	0x21b
	.uleb128 0x4c
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x1
	.byte	0x6c
	.uleb128 0x4c
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x16
	.byte	0x22
	.uleb128 0x4c
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x17
	.byte	0x1e
	.uleb128 0x4c
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x17
	.byte	0x27
	.uleb128 0x4c
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x18
	.byte	0xc6
	.uleb128 0x4c
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x19
	.byte	0x3c
	.uleb128 0x4c
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x1a
	.byte	0xdf
	.uleb128 0x4c
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x1b
	.byte	0x25
	.uleb128 0x4c
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x16
	.byte	0x1a
	.uleb128 0x4c
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x1c
	.byte	0xdd
	.uleb128 0x4c
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x1d
	.byte	0x62
	.uleb128 0x4c
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x16
	.byte	0x27
	.uleb128 0x4c
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x1
	.byte	0x5a
	.uleb128 0x4c
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x1e
	.byte	0x17
	.uleb128 0x4c
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x1f
	.byte	0x1b
	.uleb128 0x4c
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xf
	.byte	0x2d
	.uleb128 0x4d
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xf
	.2byte	0x168
	.uleb128 0x4c
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x20
	.byte	0x53
	.uleb128 0x4d
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x17c
	.uleb128 0x4e
	.4byte	.LASF237
	.4byte	.LASF237
	.uleb128 0x4c
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x21
	.byte	0x39
	.uleb128 0x4d
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x14
	.2byte	0x151
	.uleb128 0x4c
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x22
	.byte	0x29
	.uleb128 0x4c
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x10
	.byte	0x57
	.uleb128 0x4c
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x10
	.byte	0x6b
	.uleb128 0x4d
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x14
	.2byte	0x464
	.uleb128 0x4c
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x23
	.byte	0x47
	.uleb128 0x4e
	.4byte	.LASF238
	.4byte	.LASF238
	.uleb128 0x4c
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xb
	.byte	0x9c
	.uleb128 0x4c
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x15
	.byte	0xde
	.uleb128 0x4c
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x12
	.byte	0x1e
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x87
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x87
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL45
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"_flock_t"
.LASF163:
	.string	"op_lock"
.LASF75:
	.string	"_misc"
.LASF154:
	.string	"drv_s"
.LASF153:
	.string	"drv_v"
.LASF134:
	.string	"RTCWDT_CPU_RESET"
.LASF196:
	.string	"rtc_gpio_desc"
.LASF12:
	.string	"_lock_t"
.LASF216:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF123:
	.string	"POWERON_RESET"
.LASF155:
	.string	"rtc_num"
.LASF112:
	.string	"_wctomb_state"
.LASF68:
	.string	"_r48"
.LASF232:
	.string	"__assert_func"
.LASF231:
	.string	"xTaskCreatePinnedToCore"
.LASF209:
	.string	"vTaskDelete"
.LASF76:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF202:
	.string	"_init_start"
.LASF243:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c"
.LASF80:
	.string	"_lbfsize"
.LASF78:
	.string	"_flags"
.LASF181:
	.string	"cpu_write_itlb"
.LASF4:
	.string	"__int32_t"
.LASF55:
	.string	"_errno"
.LASF248:
	.string	"start_cpu0_default"
.LASF233:
	.string	"esp_log_timestamp"
.LASF170:
	.string	"ESP_LOG_DEBUG"
.LASF92:
	.string	"_mbstate"
.LASF25:
	.string	"__ULong"
.LASF116:
	.string	"_mbrlen_state"
.LASF139:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF179:
	.string	"placeholder"
.LASF57:
	.string	"_stdout"
.LASF16:
	.string	"_fpos_t"
.LASF177:
	.string	"esp_pm_config_esp32_t"
.LASF49:
	.string	"_fns"
.LASF82:
	.string	"_cookie"
.LASF198:
	.string	"_bss_start"
.LASF184:
	.string	"memctl"
.LASF31:
	.string	"_Bigint"
.LASF39:
	.string	"__tm_wday"
.LASF105:
	.string	"_result"
.LASF10:
	.string	"uint32_t"
.LASF35:
	.string	"__tm_hour"
.LASF205:
	.string	"__eh_frame"
.LASF182:
	.string	"cpu_write_dtlb"
.LASF140:
	.string	"RTC_CPU_FREQ_80M"
.LASF192:
	.string	"pages_to_protect"
.LASF21:
	.string	"__count"
.LASF34:
	.string	"__tm_min"
.LASF218:
	.string	"esp_vfs_dev_uart_register"
.LASF240:
	.string	"ets_printf"
.LASF204:
	.string	"__init_array_end"
.LASF159:
	.string	"spi_flash_guard_end_func_t"
.LASF8:
	.string	"long long unsigned int"
.LASF126:
	.string	"DEEPSLEEP_RESET"
.LASF70:
	.string	"_asctime_buf"
.LASF99:
	.string	"_rand48"
.LASF77:
	.string	"__sFILE"
.LASF30:
	.string	"_wds"
.LASF239:
	.string	"rtc_get_reset_reason"
.LASF180:
	.string	"attr"
.LASF95:
	.string	"__FILE"
.LASF90:
	.string	"_offset"
.LASF87:
	.string	"_ubuf"
.LASF129:
	.string	"TG1WDT_SYS_RESET"
.LASF223:
	.string	"esp_pthread_init"
.LASF60:
	.string	"_emergency"
.LASF236:
	.string	"abort"
.LASF172:
	.string	"max_cpu_freq"
.LASF212:
	.string	"esp_setup_syscall_table"
.LASF128:
	.string	"TG0WDT_SYS_RESET"
.LASF11:
	.string	"size_t"
.LASF176:
	.string	"light_sleep_enable"
.LASF33:
	.string	"__tm_sec"
.LASF146:
	.string	"func"
.LASF40:
	.string	"__tm_yday"
.LASF59:
	.string	"_inc"
.LASF145:
	.string	"_Bool"
.LASF178:
	.string	"object"
.LASF211:
	.string	"__register_frame_info"
.LASF27:
	.string	"_next"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF193:
	.string	"rst_reas"
.LASF127:
	.string	"SDIO_RESET"
.LASF166:
	.string	"ESP_LOG_NONE"
.LASF135:
	.string	"EXT_CPU_RESET"
.LASF191:
	.string	"cpu_configure_region_protection"
.LASF93:
	.string	"_flags2"
.LASF22:
	.string	"__value"
.LASF107:
	.string	"_p5s"
.LASF229:
	.string	"rtc_clk_cpu_freq_from_mhz"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF111:
	.string	"_mblen_state"
.LASF241:
	.string	"heap_caps_init"
.LASF94:
	.string	"char"
.LASF36:
	.string	"__tm_mday"
.LASF142:
	.string	"RTC_CPU_FREQ_240M"
.LASF71:
	.string	"_sig_func"
.LASF117:
	.string	"_mbrtowc_state"
.LASF72:
	.string	"_atexit0"
.LASF200:
	.string	"_rtc_bss_start"
.LASF106:
	.string	"_result_k"
.LASF149:
	.string	"slpsel"
.LASF203:
	.string	"__init_array_start"
.LASF18:
	.string	"__wch"
.LASF124:
	.string	"SW_RESET"
.LASF174:
	.string	"min_cpu_freq"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF197:
	.string	"g_flash_guard_default_ops"
.LASF225:
	.string	"esp_crosscore_int_init"
.LASF86:
	.string	"_close"
.LASF147:
	.string	"pullup"
.LASF61:
	.string	"__sdidinit"
.LASF189:
	.string	"max_freq"
.LASF150:
	.string	"slpie"
.LASF187:
	.string	"default_uart_dev"
.LASF56:
	.string	"_stdin"
.LASF65:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF122:
	.string	"NO_MEAN"
.LASF52:
	.string	"_base"
.LASF136:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF108:
	.string	"_freelist"
.LASF201:
	.string	"_rtc_bss_end"
.LASF101:
	.string	"_mult"
.LASF102:
	.string	"_add"
.LASF119:
	.string	"_wcrtomb_state"
.LASF132:
	.string	"TGWDT_CPU_RESET"
.LASF157:
	.string	"BaseType_t"
.LASF79:
	.string	"_file"
.LASF213:
	.string	"esp_clk_init"
.LASF206:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF237:
	.string	"memset"
.LASF64:
	.string	"__cleanup"
.LASF23:
	.string	"_mbstate_t"
.LASF104:
	.string	"_mprec"
.LASF158:
	.string	"spi_flash_guard_start_func_t"
.LASF152:
	.string	"hold_force"
.LASF41:
	.string	"__tm_isdst"
.LASF169:
	.string	"ESP_LOG_INFO"
.LASF234:
	.string	"esp_log_write"
.LASF48:
	.string	"_ind"
.LASF214:
	.string	"esp_perip_clk_init"
.LASF219:
	.string	"esp_reent_init"
.LASF220:
	.string	"fopen"
.LASF207:
	.string	"rtc_wdt_disable"
.LASF194:
	.string	"s_spiram_okay"
.LASF37:
	.string	"__tm_mon"
.LASF247:
	.string	"args"
.LASF160:
	.string	"spi_flash_op_lock_func_t"
.LASF138:
	.string	"RESET_REASON"
.LASF246:
	.string	"main_task"
.LASF141:
	.string	"RTC_CPU_FREQ_160M"
.LASF51:
	.string	"__sbuf"
.LASF84:
	.string	"_write"
.LASF208:
	.string	"app_main"
.LASF173:
	.string	"max_freq_mhz"
.LASF226:
	.string	"spi_flash_init"
.LASF190:
	.string	"cpu_init_memctl"
.LASF47:
	.string	"_atexit"
.LASF215:
	.string	"uart_div_modify"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"long int"
.LASF74:
	.string	"__sf"
.LASF29:
	.string	"_sign"
.LASF63:
	.string	"_current_locale"
.LASF133:
	.string	"SW_CPU_RESET"
.LASF81:
	.string	"_data"
.LASF19:
	.string	"__wchb"
.LASF195:
	.string	"_global_impure_ptr"
.LASF151:
	.string	"hold"
.LASF125:
	.string	"OWDT_RESET"
.LASF38:
	.string	"__tm_year"
.LASF42:
	.string	"_on_exit_args"
.LASF109:
	.string	"_misc_reent"
.LASF165:
	.string	"spi_flash_guard_funcs_t"
.LASF148:
	.string	"pulldown"
.LASF69:
	.string	"_localtime_buf"
.LASF66:
	.string	"_cvtlen"
.LASF28:
	.string	"_maxwds"
.LASF162:
	.string	"start"
.LASF62:
	.string	"_current_category"
.LASF130:
	.string	"RTCWDT_SYS_RESET"
.LASF143:
	.string	"RTC_CPU_FREQ_2M"
.LASF89:
	.string	"_blksize"
.LASF32:
	.string	"__tm"
.LASF91:
	.string	"_lock"
.LASF137:
	.string	"RTCWDT_RTC_RESET"
.LASF20:
	.string	"sizetype"
.LASF26:
	.string	"long unsigned int"
.LASF171:
	.string	"ESP_LOG_VERBOSE"
.LASF97:
	.string	"_niobs"
.LASF17:
	.string	"wint_t"
.LASF9:
	.string	"int32_t"
.LASF224:
	.string	"esp_cache_err_int_init"
.LASF44:
	.string	"_dso_handle"
.LASF235:
	.string	"vTaskStartScheduler"
.LASF144:
	.string	"rtc_cpu_freq_t"
.LASF242:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF67:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF168:
	.string	"ESP_LOG_WARN"
.LASF5:
	.string	"__uint32_t"
.LASF221:
	.string	"esp_timer_init"
.LASF185:
	.string	"do_global_ctors"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF217:
	.string	"rtc_gpio_force_hold_dis_all"
.LASF250:
	.string	"__cxx_eh_arena_size_get"
.LASF83:
	.string	"_read"
.LASF121:
	.string	"esp_err_t"
.LASF186:
	.string	"uart_clk_freq"
.LASF199:
	.string	"_bss_end"
.LASF245:
	.string	"DPORT_READ_PERI_REG"
.LASF114:
	.string	"_l64a_buf"
.LASF96:
	.string	"_glue"
.LASF230:
	.string	"esp_pm_configure"
.LASF73:
	.string	"__sglue"
.LASF115:
	.string	"_getdate_err"
.LASF164:
	.string	"op_unlock"
.LASF110:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbtowc_state"
.LASF131:
	.string	"INTRUSION_RESET"
.LASF228:
	.string	"esp_pm_impl_init"
.LASF43:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF54:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF238:
	.string	"memcpy"
.LASF175:
	.string	"min_freq_mhz"
.LASF188:
	.string	"__func__"
.LASF227:
	.string	"spi_flash_guard_set"
.LASF45:
	.string	"_fntypes"
.LASF53:
	.string	"_size"
.LASF14:
	.string	"_off_t"
.LASF88:
	.string	"_nbuf"
.LASF161:
	.string	"spi_flash_op_unlock_func_t"
.LASF183:
	.string	"intr_matrix_clear"
.LASF46:
	.string	"_is_cxa"
.LASF100:
	.string	"_seed"
.LASF249:
	.string	"call_start_cpu0"
.LASF103:
	.string	"_rand_next"
.LASF222:
	.string	"esp_set_time_from_rtc"
.LASF85:
	.string	"_seek"
.LASF156:
	.string	"rtc_gpio_desc_t"
.LASF58:
	.string	"_stderr"
.LASF244:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF98:
	.string	"_iobs"
.LASF210:
	.string	"intr_matrix_set"
.LASF167:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
