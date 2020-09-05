	.file	"cpu_start.c"
	.text
.Ltext0:
	.section	.text.main_task,"ax",@progbits
	.align	4
	.type	main_task, @function
main_task:
.LFB51:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c"
	.loc 1 500 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 508 0
	call8	heap_caps_enable_nonos_stack_heaps
.LVL1:
	.loc 1 543 0
	call8	rtc_wdt_disable
.LVL2:
	.loc 1 551 0
	call8	app_main
.LVL3:
	.loc 1 552 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL4:
	retw.n
.LFE51:
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
.LC25:
	.string	"main"
.LC28:
	.string	"res == pdTRUE"
.LC30:
	.string	"cpu_start"
.LC32:
	.string	"\033[0;32mI (%d) %s: Starting scheduler on PRO CPU.\033[0m\n"
	.section	.iram1.25,"ax",@progbits
	.literal_position
	.literal .LC3, 1072955424
	.literal .LC4, -134217729
	.literal .LC5, _global_impure_ptr
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, __func__$8874
	.literal .LC16, .LC15
	.literal .LC17, ob$8884
	.literal .LC18, __eh_frame
	.literal .LC19, __init_array_end
	.literal .LC20, __init_array_start
	.literal .LC21, g_flash_guard_default_ops
	.literal .LC22, g_coex_adapter_funcs
	.literal .LC23, 1061158912
	.literal .LC24, 4096
	.literal .LC26, .LC25
	.literal .LC27, main_task
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.align	4
	.global	start_cpu0_default
	.type	start_cpu0_default, @function
start_cpu0_default:
.LFB48:
	.loc 1 305 0
	entry	sp, 96
.LCFI1:
	.loc 1 307 0
	call8	esp_setup_syscall_table
.LVL5:
.LBB21:
.LBB22:
	.loc 1 296 0
	movi.n	a2, 0
.LBE22:
.LBE21:
	.loc 1 331 0
	call8	esp_clk_init
.LVL6:
.LBB25:
.LBB23:
	.loc 1 296 0
	movi.n	a3, 0x45
.LBE23:
.LBE25:
	.loc 1 332 0
	call8	esp_perip_clk_init
.LVL7:
.L3:
.LBB26:
.LBB24:
	.loc 1 297 0
	mov.n	a11, a2
	movi.n	a12, 6
	movi.n	a10, 0
	.loc 1 296 0
	addi.n	a2, a2, 1
.LVL8:
	.loc 1 297 0
	call8	intr_matrix_set
.LVL9:
	.loc 1 296 0
	bne	a2, a3, .L3
.LVL10:
.LBE24:
.LBE26:
	.loc 1 339 0
	l32r	a3, .LC3
	l32r	a2, .LC4
.LVL11:
	memw
	l32i.n	a4, a3, 0
	.loc 1 343 0
	movi	a11, 0x8a
	.loc 1 339 0
	and	a2, a4, a2
	.loc 1 343 0
	movi.n	a10, 0
	.loc 1 339 0
	memw
	s32i.n	a2, a3, 0
	.loc 1 343 0
	call8	uart_div_modify
.LVL12:
	.loc 1 350 0
	call8	esp_efuse_disable_basic_rom_console
.LVL13:
	.loc 1 357 0
	call8	rtc_gpio_force_hold_dis_all
.LVL14:
	.loc 1 358 0
	call8	esp_vfs_dev_uart_register
.LVL15:
	.loc 1 359 0
	l32r	a2, .LC5
	l32i.n	a10, a2, 0
	call8	esp_reent_init
.LVL16:
	.loc 1 362 0
	l32r	a3, .LC9
	l32r	a11, .LC7
	l32i.n	a4, a2, 0
	mov.n	a10, a3
	call8	fopen
.LVL17:
	s32i.n	a10, a4, 4
	.loc 1 363 0
	l32r	a4, .LC11
	l32i.n	a5, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL18:
	.loc 1 364 0
	mov.n	a11, a4
	.loc 1 363 0
	s32i.n	a10, a5, 8
	.loc 1 364 0
	l32i.n	a2, a2, 0
	mov.n	a10, a3
	call8	fopen
.LVL19:
	s32i.n	a10, a2, 12
	.loc 1 370 0
	call8	esp_timer_init
.LVL20:
	.loc 1 371 0
	call8	esp_set_time_from_rtc
.LVL21:
	.loc 1 382 0
	call8	esp_pthread_init
.LVL22:
	.loc 1 383 0
	beqz.n	a10, .L4
	.loc 1 383 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x17f
	j	.L9
.L4:
.LBB27:
.LBB28:
	.loc 1 490 0 is_stmt 1
	l32r	a11, .LC17
	l32r	a10, .LC18
.LVL23:
	call8	__register_frame_info
.LVL24:
	l32r	a2, .LC19
	.loc 1 494 0
	l32r	a3, .LC20
	j	.L5
.LVL25:
.L6:
	.loc 1 495 0
	l32i.n	a4, a2, 0
	callx8	a4
.LVL26:
.L5:
	addi	a2, a2, -4
.LVL27:
	.loc 1 494 0
	bgeu	a2, a3, .L6
.LBE28:
.LBE27:
	.loc 1 391 0
	call8	esp_cache_err_int_init
.LVL28:
	.loc 1 392 0
	call8	esp_crosscore_int_init
.LVL29:
	.loc 1 396 0
	call8	spi_flash_init
.LVL30:
	.loc 1 398 0
	l32r	a10, .LC21
	.loc 1 404 0
	movi	a3, 0xa0
	.loc 1 398 0
	call8	spi_flash_guard_set
.LVL31:
	.loc 1 401 0
	call8	esp_pm_impl_init
.LVL32:
	.loc 1 403 0
	call8	rtc_clk_xtal_freq_get
.LVL33:
	.loc 1 404 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	.loc 1 403 0
	mov.n	a2, a10
.LVL34:
	.loc 1 404 0
	addi	a10, sp, 40
	call8	memset
.LVL35:
	.loc 1 408 0
	addi	a10, sp, 40
	.loc 1 404 0
	s32i.n	a3, sp, 44
	s32i.n	a2, sp, 52
	.loc 1 408 0
	call8	esp_pm_configure
.LVL36:
	.loc 1 422 0
	l32r	a10, .LC22
	call8	esp_coex_adapter_register
.LVL37:
	.loc 1 423 0
	call8	coex_pre_init
.LVL38:
	.loc 1 426 0
	call8	bootloader_flash_update_id
.LVL39:
	.loc 1 429 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL40:
	.loc 1 432 0
	l32r	a11, .LC23
	movi.n	a12, 0x18
	addi	a10, sp, 16
	call8	memcpy
.LVL41:
	.loc 1 434 0
	addi	a10, sp, 16
	call8	bootloader_flash_clock_config
.LVL42:
	.loc 1 435 0
	addi	a10, sp, 16
	call8	bootloader_flash_gpio_config
.LVL43:
	.loc 1 436 0
	addi	a10, sp, 16
	call8	bootloader_flash_dummy_config
.LVL44:
	.loc 1 437 0
	call8	bootloader_flash_cs_timing_config
.LVL45:
	.loc 1 440 0
	movi.n	a13, 0
	l32r	a12, .LC24
	l32r	a11, .LC26
	l32r	a10, .LC27
	s32i.n	a13, sp, 0
	mov.n	a15, a13
	movi.n	a14, 1
	call8	xTaskCreatePinnedToCore
.LVL46:
	.loc 1 443 0
	beqi	a10, 1, .L7
	.loc 1 443 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC14
	movi	a11, 0x1bb
.LVL47:
.L9:
	l32r	a10, .LC16
	call8	__assert_func
.LVL48:
.L7:
	.loc 1 444 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL49:
	l32r	a11, .LC31
	l32r	a12, .LC33
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL50:
	.loc 1 445 0 discriminator 9
	call8	vTaskStartScheduler
.LVL51:
	.loc 1 446 0 discriminator 9
	call8	abort
.LVL52:
.LFE48:
	.size	start_cpu0_default, .-start_cpu0_default
	.weak	start_cpu0
	.set	start_cpu0,start_cpu0_default
	.section	.rodata.str1.1
.LC42:
	.string	"\033[0;32mI (%d) %s: Pro cpu up.\033[0m\n"
.LC44:
	.string	"\033[0;32mI (%d) %s: Application information:\033[0m\n"
.LC46:
	.string	"\033[0;32mI (%d) %s: Project name:     %s\033[0m\n"
.LC48:
	.string	"\033[0;32mI (%d) %s: App version:      %s\033[0m\n"
.LC50:
	.string	"\033[0;32mI (%d) %s: Compile time:     %s %s\033[0m\n"
.LC52:
	.string	"\033[0;32mI (%d) %s: ELF file SHA256:  %s...\033[0m\n"
.LC54:
	.string	"\033[0;32mI (%d) %s: ESP-IDF:          %s\033[0m\n"
.LC56:
	.string	"\033[0;32mI (%d) %s: Single core mode\033[0m\n"
.LC59:
	.string	"\033[0;32mI (%d) %s: Pro cpu start user code\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-1073741824
	.word	-536870912
	.section	.iram1.26,"ax",@progbits
	.literal_position
	.literal .LC34, .LC0
	.literal .LC35, 536870912
	.literal .LC36, _init_start
	.literal .LC37, _bss_end
	.literal .LC38, _bss_start
	.literal .LC39, _rtc_bss_end
	.literal .LC40, _rtc_bss_start
	.literal .LC41, .LC30
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC58, 1072693296
	.literal .LC60, .LC59
	.align	4
	.global	call_start_cpu0
	.type	call_start_cpu0, @function
call_start_cpu0:
.LFB46:
	.loc 1 122 0
	entry	sp, 64
.LCFI2:
.LBB45:
.LBB46:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.loc 2 76 0
	l32r	a11, .LC34
	movi.n	a12, 0x14
	mov.n	a10, sp
	call8	memcpy
.LVL53:
	movi.n	a3, 0
.LBB47:
.LBB48:
.LBB49:
	.loc 2 46 0
	movi.n	a9, 0xf
.LBE49:
.LBE48:
	.loc 2 77 0
	movi.n	a2, 5
.L11:
	.loc 2 78 0
	add.n	a8, sp, a3
	l32i.n	a8, a8, 0
.LVL54:
.LBB51:
.LBB50:
	.loc 2 46 0
#APP
# 46 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a9, a8; dsync

# 0 "" 2
.LVL55:
#NO_APP
.LBE50:
.LBE51:
.LBB52:
.LBB53:
	.loc 2 52 0
#APP
# 52 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a9, a8; isync

# 0 "" 2
#NO_APP
	addi.n	a3, a3, 4
.LBE53:
.LBE52:
	.loc 2 77 0
	addi.n	a2, a2, -1
	bnez.n	a2, .L11
.LVL56:
.LBE47:
.LBB54:
.LBB55:
	.loc 2 46 0
	l32r	a2, .LC35
	movi.n	a10, 0
#APP
# 46 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a2; dsync

# 0 "" 2
.LVL57:
#NO_APP
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 52 0
#APP
# 52 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a2; isync

# 0 "" 2
.LVL58:
#NO_APP
.LBE57:
.LBE56:
.LBE46:
.LBE45:
.LBB58:
.LBB59:
	.loc 2 59 0
#APP
# 59 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wsr a10, MEMCTL
# 0 "" 2
#NO_APP
.LBE59:
.LBE58:
	.loc 1 132 0
	l32r	a2, .LC36
#APP
# 132 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c" 1
	wsr    a2, vecbase

# 0 "" 2
	.loc 1 136 0
#NO_APP
	call8	rtc_get_reset_reason
.LVL59:
	.loc 1 143 0
	addi	a8, a10, -7
	movi.n	a3, -3
	.loc 1 136 0
	mov.n	a2, a10
.LVL60:
	.loc 1 143 0
	bany	a8, a3, .L12
	.loc 1 149 0
	call8	rtc_wdt_disable
.LVL61:
.L12:
	.loc 1 154 0
	l32r	a10, .LC38
	l32r	a12, .LC37
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL62:
	.loc 1 157 0
	beqi	a2, 5, .L13
	.loc 1 158 0
	l32r	a10, .LC40
	l32r	a12, .LC39
	movi.n	a11, 0
	sub	a12, a12, a10
	call8	memset
.LVL63:
.L13:
	.loc 1 179 0 discriminator 1
	call8	esp_log_timestamp
.LVL64:
	l32r	a2, .LC41
.LVL65:
	mov.n	a11, a10
	l32r	a10, .LC43
	mov.n	a12, a2
	call8	ets_printf
.LVL66:
.LBB60:
	.loc 1 181 0 discriminator 1
	call8	esp_ota_get_app_description
.LVL67:
	mov.n	a3, a10
.LVL68:
	.loc 1 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL69:
	mov.n	a11, a10
	l32r	a10, .LC45
	mov.n	a12, a2
	call8	ets_printf
.LVL70:
	.loc 1 184 0 discriminator 1
	call8	esp_log_timestamp
.LVL71:
	mov.n	a11, a10
	l32r	a10, .LC47
	addi	a13, a3, 48
	mov.n	a12, a2
	call8	ets_printf
.LVL72:
	.loc 1 187 0 discriminator 1
	call8	esp_log_timestamp
.LVL73:
	mov.n	a11, a10
	l32r	a10, .LC49
	addi	a13, a3, 16
	mov.n	a12, a2
	call8	ets_printf
.LVL74:
	.loc 1 193 0 discriminator 1
	call8	esp_log_timestamp
.LVL75:
	mov.n	a11, a10
	l32r	a10, .LC51
	addi	a14, a3, 80
	addi	a13, a3, 96
	mov.n	a12, a2
	call8	ets_printf
.LVL76:
	.loc 1 196 0 discriminator 1
	movi.n	a11, 0x11
	mov.n	a10, sp
	call8	esp_ota_get_app_elf_sha256
.LVL77:
	.loc 1 197 0 discriminator 1
	call8	esp_log_timestamp
.LVL78:
	mov.n	a11, a10
	l32r	a10, .LC53
	mov.n	a13, sp
	mov.n	a12, a2
	call8	ets_printf
.LVL79:
	.loc 1 198 0 discriminator 1
	call8	esp_log_timestamp
.LVL80:
	mov.n	a11, a10
	l32r	a10, .LC55
	addi	a13, a3, 112
	mov.n	a12, a2
	call8	ets_printf
.LVL81:
.LBE60:
	.loc 1 228 0 discriminator 1
	call8	esp_log_timestamp
.LVL82:
	mov.n	a11, a10
	l32r	a10, .LC57
	mov.n	a12, a2
	call8	ets_printf
.LVL83:
.LBB61:
.LBB62:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 170 0 discriminator 1
	l32r	a8, .LC58
.LBE62:
.LBE61:
	.loc 1 229 0 discriminator 1
	movi.n	a3, -2
.LVL84:
.LBB64:
.LBB63:
	.loc 3 170 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
.LBE63:
.LBE64:
	.loc 1 229 0 discriminator 1
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 253 0 discriminator 1
	call8	heap_caps_init
.LVL85:
	.loc 1 255 0 discriminator 1
	call8	esp_log_timestamp
.LVL86:
	mov.n	a11, a10
	l32r	a10, .LC60
	mov.n	a12, a2
	call8	ets_printf
.LVL87:
	.loc 1 256 0 discriminator 1
	call8	start_cpu0
.LVL88:
.LFE46:
	.size	call_start_cpu0, .-call_start_cpu0
	.section	.text.__cxx_eh_arena_size_get,"ax",@progbits
	.align	4
	.global	__cxx_eh_arena_size_get
	.type	__cxx_eh_arena_size_get, @function
__cxx_eh_arena_size_get:
.LFB49:
	.loc 1 481 0
	entry	sp, 32
.LCFI3:
	.loc 1 483 0
	movi.n	a2, 0
	retw.n
.LFE49:
	.size	__cxx_eh_arena_size_get, .-__cxx_eh_arena_size_get
	.section	.bss.ob$8884,"aw",@nobits
	.align	4
	.type	ob$8884, @object
	.size	ob$8884, 40
ob$8884:
	.zero	40
	.section	.rodata.__func__$8874,"a",@progbits
	.type	__func__$8874, @object
	.size	__func__$8874, 19
__func__$8874:
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI0-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI1-.LFB48
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI2-.LFB46
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI3-.LFB49
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
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_coexist_adapter.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp32/pm.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 23 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 24 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 25 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_clk_internal.h"
	.file 26 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.file 27 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/efuse/include/esp_efuse.h"
	.file 28 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/rtc_io.h"
	.file 29 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/vfs/include/esp_vfs_dev.h"
	.file 30 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 31 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_timer.h"
	.file 32 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_cache_err_int.h"
	.file 33 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 34 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/pm_impl.h"
	.file 35 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_pm.h"
	.file 36 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_coexist_internal.h"
	.file 37 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_flash_config.h"
	.file 38 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 39 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 40 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/app_update/include/esp_ota_ops.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a47
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF309
	.byte	0xc
	.4byte	.LASF310
	.4byte	.LASF311
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x38
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x7
	.byte	0xb
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0xc
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x8
	.byte	0x10
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x27
	.4byte	0xe1
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x165
	.4byte	0x69
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x11e
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4c
	.4byte	0xf3
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x8
	.byte	0x4d
	.4byte	0x11e
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x12e
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x156
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x49
	.4byte	0x57
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4e
	.4byte	0xff
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4f
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x53
	.4byte	0xcb
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x16
	.4byte	0x179
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF30
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x2f
	.4byte	0x1d3
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0x30
	.4byte	0x57
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x30
	.4byte	0x57
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x30
	.4byte	0x57
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x1d9
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x180
	.uleb128 0x8
	.4byte	0x16e
	.4byte	0x1e9
	.uleb128 0x9
	.4byte	0x12e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x262
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x37
	.4byte	0x57
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x38
	.4byte	0x57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x39
	.4byte	0x57
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3a
	.4byte	0x57
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3b
	.4byte	0x57
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3c
	.4byte	0x57
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3d
	.4byte	0x57
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x3e
	.4byte	0x57
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x3f
	.4byte	0x57
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x49
	.4byte	0x2a2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4a
	.4byte	0x2a2
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x9
	.byte	0x4c
	.4byte	0x16e
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x9
	.byte	0x4f
	.4byte	0x16e
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x16c
	.4byte	0x2b2
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x2ef
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x54
	.4byte	0x2ef
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x55
	.4byte	0x57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x56
	.4byte	0x2f5
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x57
	.4byte	0x30c
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x8
	.4byte	0x305
	.4byte	0x305
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30b
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x262
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x337
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x74
	.4byte	0x337
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x75
	.4byte	0x57
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x483
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x176
	.4byte	0x57
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x17b
	.4byte	0x6b8
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x17d
	.4byte	0x57
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x17f
	.4byte	0x5d1
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x181
	.4byte	0x57
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x183
	.4byte	0x57
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x184
	.4byte	0x602
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x805
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x188
	.4byte	0x816
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x18a
	.4byte	0x57
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x18d
	.4byte	0x57
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x18e
	.4byte	0x5d1
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x190
	.4byte	0x81c
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x191
	.4byte	0x822
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x192
	.4byte	0x5d1
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x195
	.4byte	0x833
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x199
	.4byte	0x2ef
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x19a
	.4byte	0x2b2
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x19d
	.4byte	0x67d
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x19e
	.4byte	0x6b8
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x19f
	.4byte	0x83f
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x5d1
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33d
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x5b3
	.uleb128 0xe
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x337
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x57
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x57
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0xb7
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x9
	.byte	0xb8
	.4byte	0x3e
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x312
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x9
	.byte	0xba
	.4byte	0x57
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x9
	.byte	0xbd
	.4byte	0x483
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0xc1
	.4byte	0x16c
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0xc3
	.4byte	0x5de
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x9
	.byte	0xc5
	.4byte	0x60d
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc8
	.4byte	0x631
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0xc9
	.4byte	0x64b
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x312
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x337
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x57
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x9
	.byte	0xd1
	.4byte	0x651
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x9
	.byte	0xd2
	.4byte	0x661
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x312
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x9
	.byte	0xd8
	.4byte	0x57
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x9
	.byte	0xd9
	.4byte	0xd6
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x9
	.byte	0xe0
	.4byte	0x161
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x9
	.byte	0xe2
	.4byte	0x156
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x9
	.byte	0xe3
	.4byte	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x5d1
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x5d1
	.uleb128 0x17
	.4byte	0x57
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF98
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x602
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x602
	.uleb128 0x17
	.4byte	0x57
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x608
	.uleb128 0x18
	.4byte	0x5d7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0x16
	.4byte	0xe8
	.4byte	0x631
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0xe8
	.uleb128 0x17
	.4byte	0x57
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x613
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x64b
	.uleb128 0x17
	.4byte	0x483
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x637
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x661
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x671
	.uleb128 0x9
	.4byte	0x12e
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x11d
	.4byte	0x489
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x6b2
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x123
	.4byte	0x6b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x124
	.4byte	0x57
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x125
	.4byte	0x6b8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x671
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x700
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x13e
	.4byte	0x700
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x13f
	.4byte	0x700
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x140
	.4byte	0x45
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x143
	.4byte	0x82
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x710
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x752
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x159
	.4byte	0x1d3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x15a
	.4byte	0x57
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x15b
	.4byte	0x1d3
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x15c
	.4byte	0x752
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x7f5
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x163
	.4byte	0x5d1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x164
	.4byte	0x156
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x165
	.4byte	0x156
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x166
	.4byte	0x156
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x167
	.4byte	0x7f5
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x168
	.4byte	0x57
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x169
	.4byte	0x156
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x16a
	.4byte	0x156
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x16b
	.4byte	0x156
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x16c
	.4byte	0x156
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x16d
	.4byte	0x156
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0x805
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x710
	.uleb128 0x19
	.4byte	0x816
	.uleb128 0x17
	.4byte	0x483
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x80b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6be
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x19
	.4byte	0x833
	.uleb128 0x17
	.4byte	0x57
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x839
	.uleb128 0xf
	.byte	0x4
	.4byte	0x828
	.uleb128 0xf
	.byte	0x4
	.4byte	0x758
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xa
	.byte	0x18
	.4byte	0x94
	.uleb128 0xf
	.byte	0x4
	.4byte	0x856
	.uleb128 0x19
	.4byte	0x861
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x52
	.4byte	0x8ce
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x7
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x9
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xa
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0xb
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0xd
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0xf
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xb
	.byte	0x63
	.4byte	0x861
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x69
	.byte	0xc
	.byte	0x46
	.4byte	0x904
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xc
	.byte	0x4c
	.4byte	0x8d9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF149
	.uleb128 0xa
	.byte	0x34
	.byte	0xd
	.byte	0x21
	.4byte	0x9ba
	.uleb128 0xe
	.string	"reg"
	.byte	0xd
	.byte	0x22
	.4byte	0x9f
	.byte	0
	.uleb128 0xe
	.string	"mux"
	.byte	0xd
	.byte	0x23
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xd
	.byte	0x24
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xe
	.string	"ie"
	.byte	0xd
	.byte	0x25
	.4byte	0x9f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xd
	.byte	0x26
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xd
	.byte	0x27
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xd
	.byte	0x28
	.4byte	0x9f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xd
	.byte	0x29
	.4byte	0x9f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xd
	.byte	0x2a
	.4byte	0x9f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xd
	.byte	0x2b
	.4byte	0x9f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xd
	.byte	0x2c
	.4byte	0x9f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xd
	.byte	0x2d
	.4byte	0x9f
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xd
	.byte	0x2e
	.4byte	0x57
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xd
	.byte	0x2f
	.4byte	0x916
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0xe
	.byte	0x6f
	.4byte	0x57
	.uleb128 0x18
	.4byte	0x602
	.uleb128 0x5
	.4byte	.LASF162
	.byte	0xf
	.2byte	0x12f
	.4byte	0x305
	.uleb128 0x5
	.4byte	.LASF163
	.byte	0xf
	.2byte	0x133
	.4byte	0x305
	.uleb128 0x5
	.4byte	.LASF164
	.byte	0xf
	.2byte	0x137
	.4byte	0x305
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0xf
	.2byte	0x13b
	.4byte	0x305
	.uleb128 0x5
	.4byte	.LASF166
	.byte	0xf
	.2byte	0x13f
	.4byte	0xa11
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa17
	.uleb128 0x16
	.4byte	0x90f
	.4byte	0xa2b
	.uleb128 0x17
	.4byte	0xb5
	.uleb128 0x17
	.4byte	0xb5
	.byte	0
	.uleb128 0x1c
	.byte	0x14
	.byte	0xf
	.2byte	0x160
	.4byte	0xa76
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0xf
	.2byte	0x161
	.4byte	0x9d5
	.byte	0
	.uleb128 0x15
	.string	"end"
	.byte	0xf
	.2byte	0x162
	.4byte	0x9e1
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0xf
	.2byte	0x163
	.4byte	0x9ed
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0xf
	.2byte	0x164
	.4byte	0x9f9
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x166
	.4byte	0xa05
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0xf
	.2byte	0x168
	.4byte	0xa2b
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0xa92
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0xaa2
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0xab2
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0xac2
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x69
	.byte	0x10
	.byte	0x1f
	.4byte	0xaf3
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x54
	.byte	0x11
	.byte	0x1d
	.4byte	0xbf8
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x11
	.byte	0x1e
	.4byte	0x94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x11
	.byte	0x1f
	.4byte	0xbfd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x11
	.byte	0x20
	.4byte	0x850
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x11
	.byte	0x21
	.4byte	0xc12
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x11
	.byte	0x22
	.4byte	0xc28
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0x11
	.byte	0x23
	.4byte	0x305
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0x11
	.byte	0x24
	.4byte	0xc42
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0x11
	.byte	0x25
	.4byte	0x850
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0x11
	.byte	0x26
	.4byte	0xc5c
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0x11
	.byte	0x27
	.4byte	0xc5c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x11
	.byte	0x28
	.4byte	0xc76
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x11
	.byte	0x29
	.4byte	0xc8b
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x11
	.byte	0x2a
	.4byte	0xc96
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x11
	.byte	0x2b
	.4byte	0xcab
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x11
	.byte	0x2c
	.4byte	0x850
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x11
	.byte	0x2d
	.4byte	0x850
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x11
	.byte	0x2e
	.4byte	0x850
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x11
	.byte	0x2f
	.4byte	0xcc6
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x11
	.byte	0x30
	.4byte	0xce1
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x11
	.byte	0x31
	.4byte	0xcec
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x11
	.byte	0x32
	.4byte	0x94
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.4byte	0x16c
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbf8
	.uleb128 0x16
	.4byte	0x9f
	.4byte	0xc12
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc03
	.uleb128 0x19
	.4byte	0xc28
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc18
	.uleb128 0x16
	.4byte	0x16c
	.4byte	0xc42
	.uleb128 0x17
	.4byte	0x9f
	.uleb128 0x17
	.4byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc2e
	.uleb128 0x16
	.4byte	0x94
	.4byte	0xc5c
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc48
	.uleb128 0x16
	.4byte	0x94
	.4byte	0xc76
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc62
	.uleb128 0x16
	.4byte	0x94
	.4byte	0xc8b
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc7c
	.uleb128 0x1d
	.4byte	0x94
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc91
	.uleb128 0x16
	.4byte	0x16c
	.4byte	0xcab
	.uleb128 0x17
	.4byte	0xb5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc9c
	.uleb128 0x19
	.4byte	0xcc6
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x16c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcb1
	.uleb128 0x19
	.4byte	0xce1
	.uleb128 0x17
	.4byte	0x16c
	.uleb128 0x17
	.4byte	0x9f
	.uleb128 0x17
	.4byte	0x90f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xccc
	.uleb128 0x1d
	.4byte	0xaa
	.uleb128 0xf
	.byte	0x4
	.4byte	0xce7
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x11
	.byte	0x33
	.4byte	0xaf3
	.uleb128 0xa
	.byte	0x14
	.byte	0x12
	.byte	0x21
	.4byte	0xd42
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0x12
	.byte	0x22
	.4byte	0x904
	.byte	0
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0x12
	.byte	0x23
	.4byte	0x57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0x12
	.byte	0x24
	.4byte	0x904
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0x12
	.byte	0x25
	.4byte	0x57
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0x12
	.byte	0x26
	.4byte	0x90f
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x12
	.byte	0x27
	.4byte	0xcfd
	.uleb128 0x1a
	.byte	0x2
	.4byte	0x45
	.byte	0x13
	.byte	0x3e
	.4byte	0xd67
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF207
	.2byte	0xffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x13
	.byte	0x41
	.4byte	0xd4d
	.uleb128 0xa
	.byte	0x18
	.byte	0x13
	.byte	0x48
	.4byte	0xe11
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0x13
	.byte	0x49
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x13
	.byte	0x4a
	.4byte	0x89
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF211
	.byte	0x13
	.byte	0x4c
	.4byte	0x89
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0x13
	.byte	0x4e
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x13
	.byte	0x50
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x13
	.byte	0x51
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x13
	.byte	0x54
	.4byte	0x89
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x13
	.byte	0x56
	.4byte	0xaa2
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x13
	.byte	0x57
	.4byte	0xd67
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x13
	.byte	0x58
	.4byte	0x89
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x13
	.byte	0x59
	.4byte	0xab2
	.byte	0xf
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x13
	.byte	0x5d
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0x13
	.byte	0x5e
	.4byte	0xd72
	.uleb128 0x20
	.2byte	0x100
	.byte	0x13
	.byte	0x6f
	.4byte	0xe9e
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x13
	.byte	0x70
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF223
	.byte	0x13
	.byte	0x71
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x13
	.byte	0x72
	.4byte	0xe9e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x13
	.byte	0x73
	.4byte	0xeae
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF226
	.byte	0x13
	.byte	0x74
	.4byte	0xeae
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x13
	.byte	0x75
	.4byte	0xebe
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF228
	.byte	0x13
	.byte	0x76
	.4byte	0xebe
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x13
	.byte	0x77
	.4byte	0xeae
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x13
	.byte	0x78
	.4byte	0xa92
	.byte	0x90
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x13
	.byte	0x79
	.4byte	0xece
	.byte	0xb0
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0xeae
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0xebe
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0xece
	.uleb128 0x9
	.4byte	0x12e
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0xede
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF232
	.byte	0x13
	.byte	0x7a
	.4byte	0xe1c
	.uleb128 0xd
	.4byte	.LASF233
	.byte	0x28
	.byte	0x1
	.byte	0x6d
	.4byte	0xf02
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x1
	.byte	0x6d
	.4byte	0xf02
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe1
	.4byte	0xf12
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x9
	.byte	0
	.uleb128 0x21
	.4byte	.LASF236
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.4byte	0xf35
	.uleb128 0x22
	.string	"vpn"
	.byte	0x2
	.byte	0x32
	.4byte	0x69
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x2
	.byte	0x32
	.4byte	0x69
	.byte	0
	.uleb128 0x21
	.4byte	.LASF237
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.4byte	0xf58
	.uleb128 0x22
	.string	"vpn"
	.byte	0x2
	.byte	0x2c
	.4byte	0x9f
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x2
	.byte	0x2c
	.4byte	0x69
	.byte	0
	.uleb128 0x24
	.4byte	.LASF246
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.4byte	0xf70
	.uleb128 0x25
	.4byte	.LASF239
	.byte	0x2
	.byte	0x3a
	.4byte	0x9f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF312
	.byte	0x3
	.byte	0xa7
	.4byte	0x9f
	.byte	0x3
	.4byte	0xf8c
	.uleb128 0x22
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x9f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x1f3
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdb
	.uleb128 0x28
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x16c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LVL1
	.4byte	0x1859
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0x1864
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0x186f
	.uleb128 0x2a
	.4byte	.LVL4
	.4byte	0x187a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	0xff5
	.uleb128 0x2d
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x128
	.4byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x1e6
	.byte	0x1
	.4byte	0x1018
	.uleb128 0x2e
	.string	"ob"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0xee9
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x1018
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x305
	.uleb128 0x2f
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x130
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b2
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x132
	.4byte	0x845
	.4byte	.LLST0
	.uleb128 0x31
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x151
	.4byte	0x13b2
	.4byte	0xf4240
	.uleb128 0x32
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x169
	.4byte	0x602
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.uleb128 0x33
	.4byte	.LASF243
	.4byte	0x13c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8874
	.uleb128 0x34
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x193
	.4byte	0x57
	.4byte	.LLST1
	.uleb128 0x35
	.string	"cfg"
	.byte	0x1
	.2byte	0x194
	.4byte	0xd42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xe11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"res"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x57
	.4byte	.LLST2
	.uleb128 0x36
	.4byte	0xfdb
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x14d
	.4byte	0x10f3
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x38
	.4byte	0xfe9
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LVL9
	.4byte	0x1886
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 -1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xff5
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.2byte	0x181
	.4byte	0x1145
	.uleb128 0x3a
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x38
	.4byte	0x100d
	.4byte	.LLST4
	.uleb128 0x3b
	.4byte	0x1002
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$8884
	.uleb128 0x3c
	.4byte	.LVL24
	.4byte	0x1892
	.4byte	0x113b
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ob$8884
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL26
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0x189d
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0x18a8
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0x18b3
	.uleb128 0x3c
	.4byte	.LVL12
	.4byte	0x18be
	.4byte	0x1179
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.byte	0
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0x18c9
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x18d5
	.uleb128 0x29
	.4byte	.LVL15
	.4byte	0x18e0
	.uleb128 0x29
	.4byte	.LVL16
	.4byte	0x18eb
	.uleb128 0x3c
	.4byte	.LVL17
	.4byte	0x18f6
	.4byte	0x11ba
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL18
	.4byte	0x18f6
	.4byte	0x11d4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL19
	.4byte	0x18f6
	.4byte	0x11ee
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0x1901
	.uleb128 0x29
	.4byte	.LVL21
	.4byte	0x190c
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0x1917
	.uleb128 0x29
	.4byte	.LVL28
	.4byte	0x1922
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0x192d
	.uleb128 0x29
	.4byte	.LVL30
	.4byte	0x1938
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0x1943
	.uleb128 0x29
	.4byte	.LVL32
	.4byte	0x194f
	.uleb128 0x29
	.4byte	.LVL33
	.4byte	0x195a
	.uleb128 0x3c
	.4byte	.LVL35
	.4byte	0x1965
	.4byte	0x125d
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL36
	.4byte	0x196e
	.4byte	0x1271
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0x1979
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0x1984
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0x198f
	.uleb128 0x3c
	.4byte	.LVL40
	.4byte	0x1965
	.4byte	0x12ab
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL41
	.4byte	0x199a
	.4byte	0x12cd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x8
	.byte	0xfd
	.byte	0x46
	.byte	0x24
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL42
	.4byte	0x19a3
	.4byte	0x12e2
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL43
	.4byte	0x19ae
	.4byte	0x12f7
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL44
	.4byte	0x19b9
	.4byte	0x130c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0x19c4
	.uleb128 0x3c
	.4byte	.LVL46
	.4byte	0x19cf
	.4byte	0x1351
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	main_task
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL48
	.4byte	0x19db
	.4byte	0x1368
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL50
	.4byte	0x19f1
	.4byte	0x139f
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL51
	.4byte	0x19fc
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0x1a08
	.byte	0
	.uleb128 0x18
	.4byte	0x57
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0x13c7
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x12
	.byte	0
	.uleb128 0x18
	.4byte	0x13b7
	.uleb128 0x24
	.4byte	.LASF247
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.4byte	0x13ef
	.uleb128 0x25
	.4byte	.LASF248
	.byte	0x2
	.byte	0x4c
	.4byte	0x13ff
	.uleb128 0x2d
	.uleb128 0x3e
	.string	"i"
	.byte	0x2
	.byte	0x4d
	.4byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x13ff
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	0x13ef
	.uleb128 0x3f
	.4byte	.LASF316
	.byte	0x1
	.byte	0x79
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175f
	.uleb128 0x40
	.4byte	.LASF249
	.byte	0x1
	.byte	0x7c
	.4byte	0x175f
	.4byte	.LLST5
	.uleb128 0x41
	.4byte	0x13cc
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x80
	.4byte	0x1507
	.uleb128 0x3a
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x3b
	.4byte	0x13d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x14a1
	.uleb128 0x43
	.4byte	0x13e4
	.uleb128 0x44
	.4byte	0xf35
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x4e
	.4byte	0x1481
	.uleb128 0x45
	.4byte	0xf4c
	.byte	0xf
	.uleb128 0x46
	.4byte	0xf41
	.4byte	.LLST6
	.byte	0
	.uleb128 0x47
	.4byte	0xf12
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x2
	.byte	0x4f
	.uleb128 0x45
	.4byte	0xf29
	.byte	0xf
	.uleb128 0x46
	.4byte	0xf1e
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0xf35
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x2
	.byte	0x51
	.4byte	0x14c4
	.uleb128 0x45
	.4byte	0xf4c
	.byte	0
	.uleb128 0x48
	.4byte	0xf41
	.4byte	0x20000000
	.byte	0
	.uleb128 0x41
	.4byte	0xf12
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x2
	.byte	0x52
	.4byte	0x14e7
	.uleb128 0x45
	.4byte	0xf29
	.byte	0
	.uleb128 0x48
	.4byte	0xf1e
	.4byte	0x20000000
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL53
	.4byte	0x199a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0xf58
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0x81
	.4byte	0x152b
	.uleb128 0x3a
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x49
	.4byte	0xf64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x167f
	.uleb128 0x40
	.4byte	.LASF250
	.byte	0x1
	.byte	0xb5
	.4byte	0x176f
	.4byte	.LLST8
	.uleb128 0x4a
	.string	"buf"
	.byte	0x1
	.byte	0xc3
	.4byte	0xa82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL67
	.4byte	0x1a13
	.uleb128 0x29
	.4byte	.LVL69
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL70
	.4byte	0x1a1e
	.4byte	0x1584
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL71
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL72
	.4byte	0x1a1e
	.4byte	0x15b0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL73
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL74
	.4byte	0x1a1e
	.4byte	0x15dc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL76
	.4byte	0x1a1e
	.4byte	0x1610
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x73
	.sleb128 96
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x73
	.sleb128 80
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL77
	.4byte	0x1a29
	.4byte	0x1629
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x29
	.4byte	.LVL78
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL79
	.4byte	0x1a1e
	.4byte	0x1655
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL80
	.4byte	0x19e6
	.uleb128 0x2a
	.4byte	.LVL81
	.4byte	0x1a1e
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x73
	.sleb128 112
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0xf70
	.4byte	.LBB61
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xe5
	.4byte	0x169c
	.uleb128 0x48
	.4byte	0xf80
	.4byte	0x3ff00030
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL59
	.4byte	0x1a34
	.4byte	0x16af
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL61
	.4byte	0x1864
	.uleb128 0x3c
	.4byte	.LVL62
	.4byte	0x1965
	.4byte	0x16cb
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL63
	.4byte	0x1965
	.4byte	0x16de
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL64
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL66
	.4byte	0x1a1e
	.4byte	0x1704
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL82
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL83
	.4byte	0x1a1e
	.4byte	0x172a
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL85
	.4byte	0x1a3f
	.uleb128 0x29
	.4byte	.LVL86
	.4byte	0x19e6
	.uleb128 0x3c
	.4byte	.LVL87
	.4byte	0x1a1e
	.4byte	0x1759
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.4byte	.LVL88
	.byte	0
	.uleb128 0x8
	.4byte	0x8ce
	.4byte	0x176f
	.uleb128 0x9
	.4byte	0x12e
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1775
	.uleb128 0x18
	.4byte	0xede
	.uleb128 0x4c
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xb5
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4a
	.string	"TAG"
	.byte	0x1
	.byte	0x6b
	.4byte	0x9d0
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC30
	.byte	0x9f
	.uleb128 0x4d
	.4byte	.LASF251
	.byte	0x1
	.byte	0x72
	.4byte	0x90f
	.byte	0x1
	.uleb128 0x4e
	.4byte	.LASF252
	.byte	0x9
	.2byte	0x303
	.4byte	0x483
	.uleb128 0x8
	.4byte	0x9ba
	.4byte	0x17ca
	.uleb128 0x9
	.4byte	0x12e
	.byte	0x27
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF253
	.byte	0xd
	.byte	0x38
	.4byte	0x17d5
	.uleb128 0x18
	.4byte	0x17ba
	.uleb128 0x4e
	.4byte	.LASF254
	.byte	0xf
	.2byte	0x17f
	.4byte	0x17e6
	.uleb128 0x18
	.4byte	0xa76
	.uleb128 0x4f
	.4byte	.LASF255
	.byte	0x11
	.byte	0x35
	.4byte	0xcf2
	.uleb128 0x4f
	.4byte	.LASF256
	.byte	0x1
	.byte	0x5e
	.4byte	0x57
	.uleb128 0x4f
	.4byte	.LASF257
	.byte	0x1
	.byte	0x5f
	.4byte	0x57
	.uleb128 0x4f
	.4byte	.LASF258
	.byte	0x1
	.byte	0x60
	.4byte	0x57
	.uleb128 0x4f
	.4byte	.LASF259
	.byte	0x1
	.byte	0x61
	.4byte	0x57
	.uleb128 0x4f
	.4byte	.LASF260
	.byte	0x1
	.byte	0x66
	.4byte	0x57
	.uleb128 0x4f
	.4byte	.LASF261
	.byte	0x1
	.byte	0x67
	.4byte	0x305
	.uleb128 0x4f
	.4byte	.LASF262
	.byte	0x1
	.byte	0x68
	.4byte	0x305
	.uleb128 0x8
	.4byte	0x5d7
	.4byte	0x184e
	.uleb128 0x50
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF263
	.byte	0x1
	.byte	0x6f
	.4byte	0x1843
	.uleb128 0x51
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x14
	.byte	0x28
	.uleb128 0x51
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x15
	.byte	0x85
	.uleb128 0x51
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x1
	.byte	0x5b
	.uleb128 0x52
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x16
	.2byte	0x2fb
	.uleb128 0x52
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x17
	.2byte	0x21b
	.uleb128 0x51
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0x1
	.byte	0x6e
	.uleb128 0x51
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x18
	.byte	0x22
	.uleb128 0x51
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x19
	.byte	0x1e
	.uleb128 0x51
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x19
	.byte	0x27
	.uleb128 0x51
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x1a
	.byte	0xc6
	.uleb128 0x52
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x1b
	.2byte	0x120
	.uleb128 0x51
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0x1c
	.byte	0xdf
	.uleb128 0x51
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x1d
	.byte	0x25
	.uleb128 0x51
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0x18
	.byte	0x1a
	.uleb128 0x51
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0x1e
	.byte	0xdd
	.uleb128 0x51
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0x1f
	.byte	0x62
	.uleb128 0x51
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0x18
	.byte	0x27
	.uleb128 0x51
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0x1
	.byte	0x5c
	.uleb128 0x51
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0x20
	.byte	0x17
	.uleb128 0x51
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x21
	.byte	0x1b
	.uleb128 0x51
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0xf
	.byte	0x2d
	.uleb128 0x52
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0xf
	.2byte	0x172
	.uleb128 0x51
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0x22
	.byte	0x53
	.uleb128 0x51
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0xc
	.byte	0xb2
	.uleb128 0x53
	.4byte	.LASF292
	.4byte	.LASF292
	.uleb128 0x51
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x23
	.byte	0x39
	.uleb128 0x51
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x24
	.byte	0xa0
	.uleb128 0x51
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x24
	.byte	0x28
	.uleb128 0x51
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x25
	.byte	0x1c
	.uleb128 0x53
	.4byte	.LASF293
	.4byte	.LASF293
	.uleb128 0x51
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x25
	.byte	0x31
	.uleb128 0x51
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x25
	.byte	0x3a
	.uleb128 0x51
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x25
	.byte	0x43
	.uleb128 0x51
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x25
	.byte	0x26
	.uleb128 0x52
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x16
	.2byte	0x151
	.uleb128 0x51
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x26
	.byte	0x29
	.uleb128 0x51
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x10
	.byte	0x57
	.uleb128 0x51
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0x10
	.byte	0x6b
	.uleb128 0x52
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x16
	.2byte	0x464
	.uleb128 0x51
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x27
	.byte	0x47
	.uleb128 0x51
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x28
	.byte	0x38
	.uleb128 0x51
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x17
	.byte	0xde
	.uleb128 0x51
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x28
	.byte	0x42
	.uleb128 0x51
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xb
	.byte	0x9c
	.uleb128 0x51
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x14
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
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
.LLST4:
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
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL54
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL55
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL68
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"_flock_t"
.LASF289:
	.string	"esp_coex_adapter_register"
.LASF168:
	.string	"op_lock"
.LASF79:
	.string	"_misc"
.LASF158:
	.string	"drv_s"
.LASF157:
	.string	"drv_v"
.LASF138:
	.string	"RTCWDT_CPU_RESET"
.LASF253:
	.string	"rtc_gpio_desc"
.LASF16:
	.string	"_lock_t"
.LASF274:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF127:
	.string	"POWERON_RESET"
.LASF159:
	.string	"rtc_num"
.LASF116:
	.string	"_wctomb_state"
.LASF166:
	.string	"spi_flash_is_safe_write_address_t"
.LASF299:
	.string	"__assert_func"
.LASF298:
	.string	"xTaskCreatePinnedToCore"
.LASF294:
	.string	"bootloader_flash_clock_config"
.LASF267:
	.string	"vTaskDelete"
.LASF80:
	.string	"_signal_buf"
.LASF7:
	.string	"unsigned int"
.LASF225:
	.string	"version"
.LASF260:
	.string	"_init_start"
.LASF310:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/cpu_start.c"
.LASF84:
	.string	"_lbfsize"
.LASF82:
	.string	"_flags"
.LASF236:
	.string	"cpu_write_itlb"
.LASF5:
	.string	"__int32_t"
.LASF212:
	.string	"spi_speed"
.LASF59:
	.string	"_errno"
.LASF187:
	.string	"_semphr_give_from_isr"
.LASF315:
	.string	"start_cpu0_default"
.LASF300:
	.string	"esp_log_timestamp"
.LASF217:
	.string	"chip_id"
.LASF96:
	.string	"_mbstate"
.LASF121:
	.string	"_mbrtowc_state"
.LASF72:
	.string	"_r48"
.LASF29:
	.string	"__ULong"
.LASF120:
	.string	"_mbrlen_state"
.LASF143:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF183:
	.string	"_task_yield_from_isr"
.LASF288:
	.string	"esp_pm_configure"
.LASF234:
	.string	"placeholder"
.LASF197:
	.string	"_esp_timer_get_time"
.LASF61:
	.string	"_stdout"
.LASF206:
	.string	"ESP_CHIP_ID_ESP32"
.LASF20:
	.string	"_fpos_t"
.LASF205:
	.string	"esp_pm_config_esp32_t"
.LASF53:
	.string	"_fns"
.LASF86:
	.string	"_cookie"
.LASF256:
	.string	"_bss_start"
.LASF221:
	.string	"esp_image_header_t"
.LASF239:
	.string	"memctl"
.LASF35:
	.string	"_Bigint"
.LASF185:
	.string	"_semphr_delete"
.LASF43:
	.string	"__tm_wday"
.LASF109:
	.string	"_result"
.LASF99:
	.string	"__FILE"
.LASF13:
	.string	"uint32_t"
.LASF39:
	.string	"__tm_hour"
.LASF263:
	.string	"__eh_frame"
.LASF126:
	.string	"NO_MEAN"
.LASF144:
	.string	"RTC_CPU_FREQ_80M"
.LASF248:
	.string	"pages_to_protect"
.LASF25:
	.string	"__count"
.LASF38:
	.string	"__tm_min"
.LASF276:
	.string	"esp_vfs_dev_uart_register"
.LASF305:
	.string	"ets_printf"
.LASF213:
	.string	"spi_size"
.LASF297:
	.string	"bootloader_flash_cs_timing_config"
.LASF262:
	.string	"__init_array_end"
.LASF163:
	.string	"spi_flash_guard_end_func_t"
.LASF10:
	.string	"long long unsigned int"
.LASF130:
	.string	"DEEPSLEEP_RESET"
.LASF250:
	.string	"app_desc"
.LASF103:
	.string	"_rand48"
.LASF81:
	.string	"__sFILE"
.LASF34:
	.string	"_wds"
.LASF307:
	.string	"rtc_get_reset_reason"
.LASF235:
	.string	"attr"
.LASF304:
	.string	"esp_ota_get_app_description"
.LASF208:
	.string	"esp_chip_id_t"
.LASF287:
	.string	"rtc_clk_xtal_freq_get"
.LASF94:
	.string	"_offset"
.LASF91:
	.string	"_ubuf"
.LASF133:
	.string	"TG1WDT_SYS_RESET"
.LASF227:
	.string	"time"
.LASF199:
	.string	"coex_adapter_funcs_t"
.LASF281:
	.string	"esp_pthread_init"
.LASF64:
	.string	"_emergency"
.LASF303:
	.string	"abort"
.LASF232:
	.string	"esp_app_desc_t"
.LASF200:
	.string	"max_cpu_freq"
.LASF195:
	.string	"_timer_setfn"
.LASF270:
	.string	"esp_setup_syscall_table"
.LASF132:
	.string	"TG0WDT_SYS_RESET"
.LASF15:
	.string	"size_t"
.LASF204:
	.string	"light_sleep_enable"
.LASF14:
	.string	"int64_t"
.LASF37:
	.string	"__tm_sec"
.LASF74:
	.string	"_asctime_buf"
.LASF150:
	.string	"func"
.LASF189:
	.string	"_semphr_give"
.LASF44:
	.string	"__tm_yday"
.LASF63:
	.string	"_inc"
.LASF149:
	.string	"_Bool"
.LASF233:
	.string	"object"
.LASF269:
	.string	"__register_frame_info"
.LASF31:
	.string	"_next"
.LASF122:
	.string	"_mbsrtowcs_state"
.LASF249:
	.string	"rst_reas"
.LASF176:
	.string	"ESP_LOG_DEBUG"
.LASF131:
	.string	"SDIO_RESET"
.LASF224:
	.string	"reserv1"
.LASF231:
	.string	"reserv2"
.LASF172:
	.string	"ESP_LOG_NONE"
.LASF139:
	.string	"EXT_CPU_RESET"
.LASF296:
	.string	"bootloader_flash_dummy_config"
.LASF247:
	.string	"cpu_configure_region_protection"
.LASF184:
	.string	"_semphr_create"
.LASF97:
	.string	"_flags2"
.LASF26:
	.string	"__value"
.LASF174:
	.string	"ESP_LOG_WARN"
.LASF193:
	.string	"_timer_disarm"
.LASF111:
	.string	"_p5s"
.LASF124:
	.string	"_wcsrtombs_state"
.LASF115:
	.string	"_mblen_state"
.LASF308:
	.string	"heap_caps_init"
.LASF98:
	.string	"char"
.LASF40:
	.string	"__tm_mday"
.LASF146:
	.string	"RTC_CPU_FREQ_240M"
.LASF75:
	.string	"_sig_func"
.LASF180:
	.string	"_spin_lock_delete"
.LASF76:
	.string	"_atexit0"
.LASF258:
	.string	"_rtc_bss_start"
.LASF153:
	.string	"slpsel"
.LASF110:
	.string	"_result_k"
.LASF228:
	.string	"date"
.LASF261:
	.string	"__init_array_start"
.LASF295:
	.string	"bootloader_flash_gpio_config"
.LASF22:
	.string	"__wch"
.LASF128:
	.string	"SW_RESET"
.LASF11:
	.string	"uint8_t"
.LASF202:
	.string	"min_cpu_freq"
.LASF230:
	.string	"app_elf_sha256"
.LASF54:
	.string	"_on_exit_args_ptr"
.LASF254:
	.string	"g_flash_guard_default_ops"
.LASF283:
	.string	"esp_crosscore_int_init"
.LASF90:
	.string	"_close"
.LASF151:
	.string	"pullup"
.LASF65:
	.string	"__sdidinit"
.LASF154:
	.string	"slpie"
.LASF242:
	.string	"default_uart_dev"
.LASF60:
	.string	"_stdin"
.LASF69:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF291:
	.string	"bootloader_flash_update_id"
.LASF181:
	.string	"_int_disable"
.LASF56:
	.string	"_base"
.LASF140:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF112:
	.string	"_freelist"
.LASF259:
	.string	"_rtc_bss_end"
.LASF105:
	.string	"_mult"
.LASF106:
	.string	"_add"
.LASF123:
	.string	"_wcrtomb_state"
.LASF136:
	.string	"TGWDT_CPU_RESET"
.LASF161:
	.string	"BaseType_t"
.LASF83:
	.string	"_file"
.LASF271:
	.string	"esp_clk_init"
.LASF264:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF178:
	.string	"_version"
.LASF292:
	.string	"memset"
.LASF68:
	.string	"__cleanup"
.LASF27:
	.string	"_mbstate_t"
.LASF108:
	.string	"_mprec"
.LASF162:
	.string	"spi_flash_guard_start_func_t"
.LASF17:
	.string	"_LOCK_RECURSIVE_T"
.LASF237:
	.string	"cpu_write_dtlb"
.LASF156:
	.string	"hold_force"
.LASF45:
	.string	"__tm_isdst"
.LASF175:
	.string	"ESP_LOG_INFO"
.LASF301:
	.string	"esp_log_write"
.LASF52:
	.string	"_ind"
.LASF272:
	.string	"esp_perip_clk_init"
.LASF277:
	.string	"esp_reent_init"
.LASF186:
	.string	"_semphr_take_from_isr"
.LASF278:
	.string	"fopen"
.LASF265:
	.string	"rtc_wdt_disable"
.LASF226:
	.string	"project_name"
.LASF251:
	.string	"s_spiram_okay"
.LASF41:
	.string	"__tm_mon"
.LASF314:
	.string	"args"
.LASF8:
	.string	"__int64_t"
.LASF245:
	.string	"fhdr"
.LASF306:
	.string	"esp_ota_get_app_elf_sha256"
.LASF164:
	.string	"spi_flash_op_lock_func_t"
.LASF142:
	.string	"RESET_REASON"
.LASF313:
	.string	"main_task"
.LASF145:
	.string	"RTC_CPU_FREQ_160M"
.LASF55:
	.string	"__sbuf"
.LASF192:
	.string	"_free"
.LASF191:
	.string	"_malloc_internal"
.LASF88:
	.string	"_write"
.LASF266:
	.string	"app_main"
.LASF42:
	.string	"__tm_year"
.LASF201:
	.string	"max_freq_mhz"
.LASF284:
	.string	"spi_flash_init"
.LASF246:
	.string	"cpu_init_memctl"
.LASF51:
	.string	"_atexit"
.LASF255:
	.string	"g_coex_adapter_funcs"
.LASF273:
	.string	"uart_div_modify"
.LASF2:
	.string	"short int"
.LASF170:
	.string	"is_safe_write_address"
.LASF207:
	.string	"ESP_CHIP_ID_INVALID"
.LASF19:
	.string	"long int"
.LASF78:
	.string	"__sf"
.LASF33:
	.string	"_sign"
.LASF211:
	.string	"spi_mode"
.LASF67:
	.string	"_current_locale"
.LASF137:
	.string	"SW_CPU_RESET"
.LASF85:
	.string	"_data"
.LASF23:
	.string	"__wchb"
.LASF252:
	.string	"_global_impure_ptr"
.LASF155:
	.string	"hold"
.LASF129:
	.string	"OWDT_RESET"
.LASF179:
	.string	"_spin_lock_create"
.LASF46:
	.string	"_on_exit_args"
.LASF113:
	.string	"_misc_reent"
.LASF171:
	.string	"spi_flash_guard_funcs_t"
.LASF152:
	.string	"pulldown"
.LASF73:
	.string	"_localtime_buf"
.LASF4:
	.string	"__uint8_t"
.LASF182:
	.string	"_int_enable"
.LASF70:
	.string	"_cvtlen"
.LASF32:
	.string	"_maxwds"
.LASF167:
	.string	"start"
.LASF66:
	.string	"_current_category"
.LASF134:
	.string	"RTCWDT_SYS_RESET"
.LASF147:
	.string	"RTC_CPU_FREQ_2M"
.LASF209:
	.string	"magic"
.LASF215:
	.string	"wp_pin"
.LASF244:
	.string	"xtal_freq"
.LASF93:
	.string	"_blksize"
.LASF36:
	.string	"__tm"
.LASF95:
	.string	"_lock"
.LASF141:
	.string	"RTCWDT_RTC_RESET"
.LASF24:
	.string	"sizetype"
.LASF30:
	.string	"long unsigned int"
.LASF177:
	.string	"ESP_LOG_VERBOSE"
.LASF101:
	.string	"_niobs"
.LASF21:
	.string	"wint_t"
.LASF198:
	.string	"_magic"
.LASF12:
	.string	"int32_t"
.LASF282:
	.string	"esp_cache_err_int_init"
.LASF194:
	.string	"_timer_done"
.LASF48:
	.string	"_dso_handle"
.LASF302:
	.string	"vTaskStartScheduler"
.LASF148:
	.string	"rtc_cpu_freq_t"
.LASF309:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF223:
	.string	"secure_version"
.LASF71:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF196:
	.string	"_timer_arm_us"
.LASF6:
	.string	"__uint32_t"
.LASF279:
	.string	"esp_timer_init"
.LASF240:
	.string	"do_global_ctors"
.LASF218:
	.string	"min_chip_rev"
.LASF275:
	.string	"rtc_gpio_force_hold_dis_all"
.LASF317:
	.string	"__cxx_eh_arena_size_get"
.LASF87:
	.string	"_read"
.LASF125:
	.string	"esp_err_t"
.LASF214:
	.string	"entry_addr"
.LASF241:
	.string	"uart_clk_freq"
.LASF257:
	.string	"_bss_end"
.LASF220:
	.string	"hash_appended"
.LASF312:
	.string	"DPORT_READ_PERI_REG"
.LASF216:
	.string	"spi_pin_drv"
.LASF100:
	.string	"_glue"
.LASF290:
	.string	"coex_pre_init"
.LASF77:
	.string	"__sglue"
.LASF119:
	.string	"_getdate_err"
.LASF169:
	.string	"op_unlock"
.LASF114:
	.string	"_strtok_last"
.LASF117:
	.string	"_mbtowc_state"
.LASF135:
	.string	"INTRUSION_RESET"
.LASF286:
	.string	"esp_pm_impl_init"
.LASF47:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF58:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF293:
	.string	"memcpy"
.LASF222:
	.string	"magic_word"
.LASF203:
	.string	"min_freq_mhz"
.LASF243:
	.string	"__func__"
.LASF219:
	.string	"reserved"
.LASF190:
	.string	"_is_in_isr"
.LASF285:
	.string	"spi_flash_guard_set"
.LASF49:
	.string	"_fntypes"
.LASF188:
	.string	"_semphr_take"
.LASF57:
	.string	"_size"
.LASF229:
	.string	"idf_ver"
.LASF18:
	.string	"_off_t"
.LASF92:
	.string	"_nbuf"
.LASF165:
	.string	"spi_flash_op_unlock_func_t"
.LASF238:
	.string	"intr_matrix_clear"
.LASF50:
	.string	"_is_cxa"
.LASF104:
	.string	"_seed"
.LASF316:
	.string	"call_start_cpu0"
.LASF107:
	.string	"_rand_next"
.LASF280:
	.string	"esp_set_time_from_rtc"
.LASF89:
	.string	"_seek"
.LASF160:
	.string	"rtc_gpio_desc_t"
.LASF62:
	.string	"_stderr"
.LASF311:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF102:
	.string	"_iobs"
.LASF268:
	.string	"intr_matrix_set"
.LASF118:
	.string	"_l64a_buf"
.LASF173:
	.string	"ESP_LOG_ERROR"
.LASF210:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
