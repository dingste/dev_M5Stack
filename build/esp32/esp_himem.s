	.file	"esp_himem.c"
	.text
.Ltext0:
	.section	.text.esp_himem_get_phys_size,"ax",@progbits
	.literal_position
	.literal .LC0, -4194304
	.align	4
	.global	esp_himem_get_phys_size
	.type	esp_himem_get_phys_size, @function
esp_himem_get_phys_size:
.LFB29:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_himem.c"
	.loc 1 121 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 123 0
	call8	esp_spiram_get_size
.LVL1:
	.loc 1 124 0
	l32r	a2, .LC0
	add.n	a2, a10, a2
	retw.n
.LFE29:
	.size	esp_himem_get_phys_size, .-esp_himem_get_phys_size
	.section	.text.esp_himem_get_free_size,"ax",@progbits
	.align	4
	.global	esp_himem_get_free_size
	.type	esp_himem_get_free_size, @function
esp_himem_get_free_size:
.LFB30:
	.loc 1 127 0
	entry	sp, 32
.LCFI1:
.LVL2:
	.loc 1 133 0
	movi.n	a2, 0
	retw.n
.LFE30:
	.size	esp_himem_get_free_size, .-esp_himem_get_free_size
	.section	.text.esp_himem_reserved_area_size,"ax",@progbits
	.align	4
	.global	esp_himem_reserved_area_size
	.type	esp_himem_reserved_area_size, @function
esp_himem_reserved_area_size:
.LFB31:
	.loc 1 135 0
	entry	sp, 32
.LCFI2:
	.loc 1 137 0
	movi.n	a2, 0
	retw.n
.LFE31:
	.size	esp_himem_reserved_area_size, .-esp_himem_reserved_area_size
	.section	.text.startup.esp_himem_init,"ax",@progbits
	.align	4
	.global	esp_himem_init
	.type	esp_himem_init, @function
esp_himem_init:
.LFB32:
	.loc 1 141 0
	entry	sp, 32
.LCFI3:
	retw.n
.LFE32:
	.size	esp_himem_init, .-esp_himem_init
	.section	.text.esp_himem_alloc,"ax",@progbits
	.literal_position
	.literal .LC1, spinlock
	.align	4
	.global	esp_himem_alloc
	.type	esp_himem_alloc, @function
esp_himem_alloc:
.LFB34:
	.loc 1 195 0
.LVL3:
	.loc 1 195 0
	entry	sp, 32
.LCFI4:
	.loc 1 196 0
	extui	a4, a2, 0, 15
	.loc 1 195 0
	mov.n	a5, a2
	.loc 1 197 0
	movi	a2, 0x104
.LVL4:
	.loc 1 196 0
	bnez.n	a4, .L14
.LVL5:
	.loc 1 200 0
	movi.n	a11, 1
	movi.n	a10, 8
	call8	calloc
.LVL6:
	mov.n	a4, a10
.LVL7:
	.loc 1 201 0
	beqz.n	a10, .L7
	.loc 1 199 0
	srli	a2, a5, 15
.LVL8:
	.loc 1 204 0
	mov.n	a11, a2
	movi.n	a10, 2
	call8	calloc
.LVL9:
	s32i.n	a10, a4, 4
	.loc 1 205 0
	beqz.n	a10, .L8
	.loc 1 208 0
	l32r	a5, .LC1
.LVL10:
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL11:
	.loc 1 210 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL12:
	.loc 1 211 0
	bnez.n	a2, .L8
	.loc 1 214 0
	s32i.n	a2, a4, 0
	.loc 1 215 0
	s32i.n	a4, a3, 0
	.loc 1 216 0
	retw.n
.LVL13:
.L7:
	.loc 1 221 0
	mov.n	a10, a4
	call8	free
.LVL14:
	.loc 1 222 0
	movi	a2, 0x101
	retw.n
.LVL15:
.L8:
	.loc 1 219 0
	l32i.n	a10, a4, 4
	call8	free
.LVL16:
	j	.L7
.LVL17:
.L14:
	.loc 1 223 0
	retw.n
.LFE34:
	.size	esp_himem_alloc, .-esp_himem_alloc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"ramblock_idx_valid(handle->block[i])"
.LC5:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_himem.c"
	.section	.text.esp_himem_free,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$5292
	.literal .LC6, .LC5
	.literal .LC7, spinlock
	.align	4
	.global	esp_himem_free
	.type	esp_himem_free, @function
esp_himem_free:
.LFB35:
	.loc 1 226 0
.LVL18:
	entry	sp, 32
.LCFI5:
.LVL19:
.LBB14:
	.loc 1 228 0
	l32i.n	a3, a2, 0
	blti	a3, 1, .L18
.LVL20:
	.loc 1 229 0
	l32r	a13, .LC3
	l32r	a12, .LC4
	l32r	a10, .LC6
	movi	a11, 0xe5
	call8	__assert_func
.LVL21:
.L18:
.LBE14:
	.loc 1 233 0
	l32r	a3, .LC7
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL22:
.LBB15:
	.loc 1 234 0
	l32i.n	a11, a2, 0
	movi.n	a8, 0
	mov.n	a10, a3
	.loc 1 235 0
	movi.n	a12, -2
	.loc 1 234 0
	j	.L19
.LVL23:
.L20:
	.loc 1 235 0 discriminator 3
	l32i.n	a3, a2, 4
	addx2	a3, a8, a3
	l16ui	a3, a3, 0
	.loc 1 234 0 discriminator 3
	addi.n	a8, a8, 1
.LVL24:
	.loc 1 235 0 discriminator 3
	slli	a3, a3, 2
	l8ui	a9, a3, 0
	and	a9, a9, a12
	s8i	a9, a3, 0
.LVL25:
.L19:
	.loc 1 234 0 discriminator 1
	blt	a8, a11, .L20
.LBE15:
	.loc 1 237 0
	call8	vTaskExitCritical
.LVL26:
	.loc 1 240 0
	l32i.n	a10, a2, 4
	call8	free
.LVL27:
	.loc 1 241 0
	mov.n	a10, a2
	call8	free
.LVL28:
	.loc 1 243 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LFE35:
	.size	esp_himem_free, .-esp_himem_free
	.section	.rodata.str1.1
.LC9:
	.string	"esp_himem"
.LC11:
	.string	"\033[0;31mE (%d) %s: %s: %s\033[0m\n"
.LC13:
	.string	"Himem not available!"
	.section	.text.esp_himem_alloc_map_range,"ax",@progbits
	.literal_position
	.literal .LC8, __FUNCTION__$5305
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	esp_himem_alloc_map_range
	.type	esp_himem_alloc_map_range, @function
esp_himem_alloc_map_range:
.LFB36:
	.loc 1 247 0
.LVL30:
	entry	sp, 48
.LCFI6:
	.loc 1 248 0
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC10
	l32r	a8, .LC14
	l32r	a15, .LC8
	l32r	a12, .LC12
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 283 0
	movi	a2, 0x103
.LVL33:
	retw.n
.LFE36:
	.size	esp_himem_alloc_map_range, .-esp_himem_alloc_map_range
	.section	.rodata.str1.1
.LC15:
	.string	"rangeblock_idx_valid(handle->block_start + i)"
	.section	.text.esp_himem_free_map_range,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC17, __func__$5321
	.literal .LC18, .LC5
	.literal .LC19, spinlock
	.align	4
	.global	esp_himem_free_map_range
	.type	esp_himem_free_map_range, @function
esp_himem_free_map_range:
.LFB37:
	.loc 1 286 0
.LVL34:
	entry	sp, 32
.LCFI7:
.LVL35:
.LBB16:
	.loc 1 288 0
	l32i.n	a3, a2, 0
	blti	a3, 1, .L23
.LVL36:
	.loc 1 289 0
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32r	a10, .LC18
	movi	a11, 0x121
	call8	__assert_func
.LVL37:
.L23:
.LBE16:
	.loc 1 294 0
	l32r	a3, .LC19
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL38:
.LBB17:
	.loc 1 295 0
	l32i.n	a11, a2, 0
	movi.n	a9, 0
	mov.n	a10, a3
	.loc 1 296 0
	movi.n	a12, -2
	.loc 1 295 0
	j	.L24
.LVL39:
.L25:
	.loc 1 296 0 discriminator 3
	l32i.n	a8, a2, 4
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32i.n	a3, a8, 0
	.loc 1 295 0 discriminator 3
	addi.n	a9, a9, 1
.LVL40:
	.loc 1 296 0 discriminator 3
	and	a3, a3, a12
	s32i.n	a3, a8, 0
.LVL41:
.L24:
	.loc 1 295 0 discriminator 1
	blt	a9, a11, .L25
.LBE17:
	.loc 1 298 0
	call8	vTaskExitCritical
.LVL42:
	.loc 1 299 0
	mov.n	a10, a2
	call8	free
.LVL43:
	.loc 1 301 0
	movi.n	a2, 0
.LVL44:
	retw.n
.LFE37:
	.size	esp_himem_free_map_range, .-esp_himem_free_map_range
	.section	.text.esp_himem_map,"ax",@progbits
	.literal_position
	.literal .LC20, __FUNCTION__$5342
	.literal .LC21, .LC9
	.literal .LC22, .LC11
	.literal .LC23, .LC13
	.align	4
	.global	esp_himem_map
	.type	esp_himem_map, @function
esp_himem_map:
.LFB38:
	.loc 1 305 0
.LVL45:
	entry	sp, 48
.LCFI8:
.LVL46:
	.loc 1 309 0
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC21
	l32r	a8, .LC23
	l32r	a15, .LC20
	l32r	a12, .LC22
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	.loc 1 340 0
	movi	a2, 0x103
.LVL49:
	.loc 1 305 0
	.loc 1 340 0
	retw.n
.LFE38:
	.size	esp_himem_map, .-esp_himem_map
	.section	.rodata.str1.1
.LC28:
	.string	"range offset not block-aligned"
.LC30:
	.string	"map length not block-aligned"
.LC33:
	.string	"range out of bounds for handle"
.LC36:
	.string	"ramblock_idx_valid(ramblock)"
	.section	.text.esp_himem_unmap,"ax",@progbits
	.literal_position
	.literal .LC24, -1069547520
	.literal .LC25, __FUNCTION__$5364
	.literal .LC26, .LC9
	.literal .LC27, .LC11
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC32, 32767
	.literal .LC34, .LC33
	.literal .LC35, spinlock
	.literal .LC37, .LC36
	.literal .LC38, __func__$5367
	.literal .LC39, .LC5
	.align	4
	.global	esp_himem_unmap
	.type	esp_himem_unmap, @function
esp_himem_unmap:
.LFB39:
	.loc 1 343 0
.LVL50:
	entry	sp, 48
.LCFI9:
	.loc 1 347 0
	l32r	a8, .LC24
	add.n	a3, a3, a8
.LVL51:
	.loc 1 350 0
	extui	a8, a3, 0, 15
	beqz.n	a8, .L28
	.loc 1 350 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC26
	l32r	a2, .LC29
.LVL53:
	j	.L33
.LVL54:
.L28:
	.loc 1 351 0 is_stmt 1
	extui	a8, a4, 0, 15
	beqz.n	a8, .L30
	.loc 1 351 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC26
	l32r	a2, .LC31
.LVL56:
.L33:
	l32r	a15, .LC25
	l32r	a12, .LC27
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL57:
	movi	a2, 0x102
	retw.n
.LVL58:
.L30:
	.loc 1 352 0 is_stmt 1
	l32r	a8, .LC32
	.loc 1 349 0
	srli	a4, a4, 15
.LVL59:
	.loc 1 352 0
	add.n	a8, a3, a8
	movltz	a3, a8, a3
.LVL60:
	l32i.n	a8, a2, 4
.LVL61:
	srai	a3, a3, 15
	sub	a3, a3, a8
	l32i.n	a2, a2, 0
.LVL62:
	add.n	a3, a3, a4
	bge	a2, a3, .L31
	.loc 1 352 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC26
	l32r	a2, .LC34
	j	.L33
.LVL64:
.L31:
	.loc 1 354 0 is_stmt 1
	l32r	a2, .LC35
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL65:
.LBB29:
	.loc 1 355 0
	beqz.n	a4, .L32
.LVL66:
.LBB30:
	.loc 1 357 0
	l32r	a13, .LC37
	l32r	a12, .LC38
	l32r	a10, .LC39
	movi	a11, 0x165
	call8	__assert_func
.LVL67:
.L32:
.LBE30:
.LBE29:
	.loc 1 361 0
	call8	esp_spiram_writeback_cache
.LVL68:
	.loc 1 362 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL69:
	.loc 1 363 0
	mov.n	a2, a4
	.loc 1 364 0
	retw.n
.LFE39:
	.size	esp_himem_unmap, .-esp_himem_unmap
	.section	.rodata.__func__$5367,"a",@progbits
	.type	__func__$5367, @object
	.size	__func__$5367, 16
__func__$5367:
	.string	"esp_himem_unmap"
	.section	.rodata.__FUNCTION__$5364,"a",@progbits
	.type	__FUNCTION__$5364, @object
	.size	__FUNCTION__$5364, 16
__FUNCTION__$5364:
	.string	"esp_himem_unmap"
	.section	.rodata.__FUNCTION__$5342,"a",@progbits
	.type	__FUNCTION__$5342, @object
	.size	__FUNCTION__$5342, 14
__FUNCTION__$5342:
	.string	"esp_himem_map"
	.section	.rodata.__func__$5321,"a",@progbits
	.type	__func__$5321, @object
	.size	__func__$5321, 25
__func__$5321:
	.string	"esp_himem_free_map_range"
	.section	.rodata.__FUNCTION__$5305,"a",@progbits
	.type	__FUNCTION__$5305, @object
	.size	__FUNCTION__$5305, 26
__FUNCTION__$5305:
	.string	"esp_himem_alloc_map_range"
	.section	.rodata.__func__$5292,"a",@progbits
	.type	__func__$5292, @object
	.size	__func__$5292, 15
__func__$5292:
	.string	"esp_himem_free"
	.section	.data.spinlock,"aw",@progbits
	.align	4
	.type	spinlock, @object
	.size	spinlock, 8
spinlock:
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI5-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI6-.LFB36
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_himem.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_spiram.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xade
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xfb
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x8a
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x8f
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x94
	.4byte	0xda
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x18
	.4byte	0x117
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.4byte	0x142
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x60
	.4byte	0x106
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x19
	.4byte	0x14d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x153
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0x58
	.4byte	0x178
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x1a9
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.4byte	0x1d0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x47
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1
	.byte	0x49
	.4byte	0x1a9
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x4c
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4d
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4f
	.4byte	0x37
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0x50
	.4byte	0x1db
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5b
	.4byte	0x153
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x1
	.byte	0x61
	.4byte	0x11d
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.byte	0x3
	.4byte	0x24e
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x291
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x10
	.string	"ct"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF44
	.4byte	0x2a1
	.4byte	.LASF53
	.byte	0
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x2a1
	.uleb128 0x14
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.4byte	0x291
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x78
	.4byte	0x2c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d8
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7a
	.4byte	0x25
	.4byte	0x400000
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0xa7e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7e
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fe
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x87
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x353
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.uleb128 0x1d
	.4byte	.LASF62
	.4byte	0x363
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF49
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x363
	.uleb128 0x14
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	0x353
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x1
	.byte	0xab
	.4byte	0xd3
	.byte	0x1
	.4byte	0x3bf
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0xab
	.4byte	0x106
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0xad
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF44
	.4byte	0x3cf
	.4byte	.LASF51
	.uleb128 0x1e
	.4byte	0x3b3
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x3cf
	.uleb128 0x14
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	0x3bf
	.uleb128 0x20
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc2
	.4byte	0xc8
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ad
	.uleb128 0x21
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc2
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc2
	.4byte	0x4ad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x24
	.string	"r"
	.byte	0x1
	.byte	0xc8
	.4byte	0x4b3
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd9
	.uleb128 0x11
	.string	"ok"
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0xa89
	.4byte	0x44e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0xa89
	.4byte	0x467
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0xa94
	.4byte	0x47b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL12
	.4byte	0xa9f
	.4byte	0x48f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL14
	.4byte	0xaaa
	.4byte	0x4a3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xaaa
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x227
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.byte	0x3
	.4byte	0x4d5
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.byte	0
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe1
	.4byte	0xc8
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5aa
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe1
	.4byte	0x10c
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LASF44
	.4byte	0x5aa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x1d
	.4byte	.LASF62
	.4byte	0x5af
	.uleb128 0x29
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x558
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL21
	.4byte	0xab5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x573
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0xa94
	.4byte	0x587
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0xa9f
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0xaaa
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0xaaa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x353
	.uleb128 0x15
	.4byte	0x353
	.uleb128 0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf6
	.4byte	0xc8
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65f
	.uleb128 0x21
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf6
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf6
	.4byte	0x65f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF62
	.4byte	0x675
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5305
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.byte	0xfa
	.4byte	0x25
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xfb
	.4byte	0x67a
	.uleb128 0x2b
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x101
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LVL31
	.4byte	0xac0
	.uleb128 0x2a
	.4byte	.LVL32
	.4byte	0xacb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5305
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x142
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x675
	.uleb128 0x14
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x15
	.4byte	0x665
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x2c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x11d
	.4byte	0xc8
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x751
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x11d
	.4byte	0x142
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LASF44
	.4byte	0x761
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5321
	.uleb128 0x1d
	.4byte	.LASF62
	.4byte	0x766
	.uleb128 0x29
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x707
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL37
	.4byte	0xab5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5321
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x723
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LLST7
	.byte	0
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0xa94
	.4byte	0x737
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0xa9f
	.uleb128 0x2a
	.4byte	.LVL43
	.4byte	0xaaa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x761
	.uleb128 0x14
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.4byte	0x751
	.uleb128 0x15
	.4byte	0x751
	.uleb128 0x2c
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x130
	.4byte	0xc8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87f
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x130
	.4byte	0x10c
	.4byte	.LLST8
	.uleb128 0x30
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x130
	.4byte	0x142
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x130
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x130
	.4byte	0x87f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x32
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x28
	.4byte	.LASF62
	.4byte	0x895
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5342
	.uleb128 0x1d
	.4byte	.LASF44
	.4byte	0x89a
	.uleb128 0x18
	.4byte	.LVL47
	.4byte	0xac0
	.uleb128 0x2a
	.4byte	.LVL48
	.4byte	0xacb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5342
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x97
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x895
	.uleb128 0x14
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x15
	.4byte	0x885
	.uleb128 0x15
	.4byte	0x885
	.uleb128 0x2c
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x156
	.4byte	0xc8
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa19
	.uleb128 0x2d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x156
	.4byte	0x142
	.4byte	.LLST9
	.uleb128 0x33
	.string	"ptr"
	.byte	0x1
	.2byte	0x156
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.2byte	0x156
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x34
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x15b
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x34
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x15c
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x34
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	.LASF62
	.4byte	0xa19
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5364
	.uleb128 0x28
	.4byte	.LASF44
	.4byte	0xa1e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5367
	.uleb128 0x29
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x992
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.byte	0
	.uleb128 0x35
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x2b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x164
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LVL67
	.4byte	0xab5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5367
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0xac0
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0xac0
	.uleb128 0x26
	.4byte	.LVL57
	.4byte	0xacb
	.4byte	0x9e2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5364
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL63
	.4byte	0xac0
	.uleb128 0x26
	.4byte	.LVL65
	.4byte	0xa94
	.4byte	0x9ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL68
	.4byte	0xad6
	.uleb128 0x2a
	.4byte	.LVL69
	.4byte	0xa9f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x3bf
	.uleb128 0x15
	.4byte	0x3bf
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.byte	0x52
	.4byte	0xa34
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x15
	.4byte	0xa2e
	.uleb128 0x36
	.4byte	.LASF77
	.byte	0x1
	.byte	0x53
	.4byte	0xa4b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x211
	.uleb128 0x15
	.4byte	0xa45
	.uleb128 0x36
	.4byte	.LASF78
	.byte	0x1
	.byte	0x54
	.4byte	0xa5c
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x36
	.4byte	.LASF79
	.byte	0x1
	.byte	0x55
	.4byte	0xa5c
	.byte	0
	.uleb128 0x37
	.4byte	.LASF80
	.byte	0x1
	.byte	0x63
	.4byte	0xfb
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0x38
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.byte	0x50
	.uleb128 0x38
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.byte	0xda
	.uleb128 0x38
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd9
	.uleb128 0x38
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.byte	0x5a
	.uleb128 0x38
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xa
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xb
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xb
	.byte	0x6b
	.uleb128 0x38
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.byte	0x5a
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
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x17
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x7
	.byte	0x73
	.sleb128 1069547520
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x5
	.byte	0x78
	.sleb128 -32767
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE39
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0xd
	.byte	0x78
	.sleb128 -32767
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE39
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3f
	.byte	0x25
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"block_start"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF83:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"size_t"
.LASF36:
	.string	"is_alloced"
.LASF12:
	.string	"sizetype"
.LASF27:
	.string	"esp_himem_ramdata_t"
.LASF63:
	.string	"esp_himem_alloc_map_range"
.LASF37:
	.string	"is_mapped"
.LASF45:
	.string	"esp_himem_get_phys_size"
.LASF95:
	.string	"nomem"
.LASF6:
	.string	"__uint16_t"
.LASF60:
	.string	"esp_himem_free"
.LASF59:
	.string	"esp_himem_alloc"
.LASF66:
	.string	"esp_himem_map"
.LASF61:
	.string	"handle"
.LASF22:
	.string	"portMUX_TYPE"
.LASF78:
	.string	"s_ramblockcnt"
.LASF76:
	.string	"s_ram_descriptor"
.LASF85:
	.string	"free"
.LASF57:
	.string	"ramblock_idx_valid"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"esp_himem_rangedata_t"
.LASF9:
	.string	"long long int"
.LASF87:
	.string	"esp_log_timestamp"
.LASF40:
	.string	"rangeblock_t"
.LASF11:
	.string	"long int"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF39:
	.string	"ram_block"
.LASF93:
	.string	"esp_himem_reserved_area_size"
.LASF38:
	.string	"ramblock_t"
.LASF58:
	.string	"ramblock_idx"
.LASF84:
	.string	"vTaskExitCritical"
.LASF72:
	.string	"range_block"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"set_bank"
.LASF44:
	.string	"__func__"
.LASF20:
	.string	"owner"
.LASF47:
	.string	"paddr_start"
.LASF69:
	.string	"range_offset"
.LASF43:
	.string	"phys_bank"
.LASF2:
	.string	"signed char"
.LASF70:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"block_ct"
.LASF17:
	.string	"uint32_t"
.LASF56:
	.string	"blocks"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"esp_himem_init"
.LASF15:
	.string	"uint16_t"
.LASF75:
	.string	"ramblock"
.LASF41:
	.string	"rangeblock_idx"
.LASF88:
	.string	"esp_log_write"
.LASF1:
	.string	"short unsigned int"
.LASF26:
	.string	"esp_himem_rangehandle_t"
.LASF14:
	.string	"char"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF82:
	.string	"calloc"
.LASF50:
	.string	"rangeblock_idx_valid"
.LASF19:
	.string	"_Bool"
.LASF71:
	.string	"out_ptr"
.LASF79:
	.string	"s_rangeblockcnt"
.LASF77:
	.string	"s_range_descriptor"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF49:
	.string	"paddr_end"
.LASF51:
	.string	"allocate_blocks"
.LASF89:
	.string	"esp_spiram_writeback_cache"
.LASF13:
	.string	"long unsigned int"
.LASF42:
	.string	"virt_bank"
.LASF68:
	.string	"ram_offset"
.LASF8:
	.string	"__uint32_t"
.LASF54:
	.string	"size"
.LASF21:
	.string	"count"
.LASF80:
	.string	"spinlock"
.LASF48:
	.string	"maxram"
.LASF7:
	.string	"__int32_t"
.LASF25:
	.string	"block"
.LASF67:
	.string	"range"
.LASF55:
	.string	"handle_out"
.LASF65:
	.string	"esp_himem_free_map_range"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/esp_himem.c"
.LASF73:
	.string	"blockcount"
.LASF64:
	.string	"start_free"
.LASF52:
	.string	"blocks_out"
.LASF81:
	.string	"esp_spiram_get_size"
.LASF74:
	.string	"esp_himem_unmap"
.LASF86:
	.string	"__assert_func"
.LASF90:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF62:
	.string	"__FUNCTION__"
.LASF92:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"esp_err_t"
.LASF46:
	.string	"esp_himem_get_free_size"
.LASF23:
	.string	"esp_himem_handle_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
