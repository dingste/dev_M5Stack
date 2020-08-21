	.file	"heap_caps_init.c"
	.text
.Ltext0:
	.section	.text.heap_caps_enable_nonos_stack_heaps,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.global	heap_caps_enable_nonos_stack_heaps
	.type	heap_caps_enable_nonos_stack_heaps, @function
heap_caps_enable_nonos_stack_heaps:
.LFB20:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
	.loc 1 41 0
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 0
.LVL0:
	j	.L2
.L6:
	.loc 1 46 0
	l32i.n	a8, a2, 28
	bnez.n	a8, .L4
.LVL1:
.LBB4:
.LBB5:
	.loc 1 34 0
	l32i.n	a10, a2, 12
	l32i.n	a11, a2, 16
	sub	a11, a11, a10
	call8	multi_heap_register
.LVL2:
	s32i.n	a10, a2, 28
.LBE5:
.LBE4:
	.loc 1 48 0
	beqz.n	a10, .L4
	.loc 1 49 0
	addi	a11, a2, 20
	call8	multi_heap_set_lock
.LVL3:
.L4:
	.loc 1 43 0 discriminator 2
	l32i.n	a2, a2, 32
.LVL4:
.L2:
	.loc 1 43 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L6
	.loc 1 53 0 is_stmt 1
	retw.n
.LFE20:
	.size	heap_caps_enable_nonos_stack_heaps, .-heap_caps_enable_nonos_stack_heaps
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"heap_init"
.LC5:
	.string	"\033[0;32mI (%d) %s: Initializing. RAM available for dynamic allocation:\033[0m\n"
.LC7:
	.string	"heap_idx <= num_heaps"
.LC10:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
.LC13:
	.string	"\033[0;32mI (%d) %s: At %08X len %08X (%d KiB): %s\033[0m\n"
.LC15:
	.string	"heap_idx == num_heaps"
.LC18:
	.string	"SLIST_EMPTY(&registered_heaps)"
.LC21:
	.string	"heaps_array != NULL"
	.section	.text.heap_caps_init,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, __func__$5319
	.literal .LC11, .LC10
	.literal .LC12, soc_memory_types
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, registered_heaps
	.literal .LC19, .LC18
	.literal .LC20, 2052
	.literal .LC22, .LC21
	.align	4
	.global	heap_caps_init
	.type	heap_caps_init, @function
heap_caps_init:
.LFB21:
	.loc 1 59 0
	entry	sp, 80
	mov.n	a7, sp
.LCFI1:
	.loc 1 63 0
	call8	soc_get_available_memory_region_max_count
.LVL5:
	.loc 1 64 0
	slli	a10, a10, 4
.LVL6:
	addi	a10, a10, 16
	sub	a10, sp, a10
	movsp	sp, a10
	addi	a3, sp, 16
.LVL7:
	.loc 1 65 0
	mov.n	a10, a3
	call8	soc_get_available_memory_regions
.LVL8:
	s32i.n	a10, a7, 16
.LVL9:
	mov.n	a6, a3
.LBB15:
	.loc 1 69 0
	mov.n	a2, a3
	movi.n	a5, 1
.LBB16:
	.loc 1 73 0
	movi.n	a10, -1
.LVL10:
.LBE16:
	.loc 1 69 0
	j	.L11
.LVL11:
.L13:
.LBB17:
	.loc 1 72 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a2, 4
	l32i.n	a12, a2, 16
	add.n	a11, a8, a4
	bne	a12, a11, .L12
	.loc 1 72 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 24
	l32i.n	a11, a2, 8
	bne	a12, a11, .L12
	.loc 1 74 0 is_stmt 1
	s32i.n	a8, a2, 16
	.loc 1 75 0
	l32i.n	a8, a2, 20
	.loc 1 73 0
	s32i.n	a10, a2, 8
	.loc 1 75 0
	add.n	a4, a8, a4
	s32i.n	a4, a2, 20
.L12:
.LBE17:
	.loc 1 69 0 discriminator 2
	addi.n	a5, a5, 1
.LVL12:
	addi	a2, a2, 16
.LVL13:
.L11:
	.loc 1 69 0 is_stmt 0 discriminator 1
	l32i.n	a4, a7, 16
	bltu	a5, a4, .L13
	.loc 1 69 0
	movi.n	a4, 0
	addi.n	a3, a3, 8
	mov.n	a2, a4
.LBE15:
.LBB18:
	.loc 1 83 0 is_stmt 1
	movi.n	a8, 1
	mov.n	a10, a4
	j	.L14
.LVL14:
.L16:
	.loc 1 82 0
	l32i.n	a5, a3, 0
	.loc 1 83 0
	mov.n	a9, a10
	addi.n	a5, a5, 1
	movnez	a9, a8, a5
	add.n	a2, a2, a9
.LVL15:
	.loc 1 81 0
	addi.n	a4, a4, 1
.LVL16:
	addi	a3, a3, 16
.LVL17:
.L14:
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32i.n	a5, a7, 16
	bne	a4, a5, .L16
.LVL18:
.LBE18:
	.loc 1 91 0 is_stmt 1
	addx8	a4, a2, a2
.LVL19:
	slli	a4, a4, 2
	addi	a3, a4, 18
	srli	a3, a3, 4
	slli	a3, a3, 4
	sub	a3, sp, a3
	movsp	sp, a3
	s32i.n	a4, a7, 20
	.loc 1 94 0
	call8	esp_log_timestamp
.LVL20:
	mov.n	a11, a10
	l32r	a12, .LC4
	l32r	a10, .LC6
.LBB19:
	.loc 1 95 0
	movi.n	a5, 0
.LBE19:
	.loc 1 94 0
	call8	ets_printf
.LVL21:
	.loc 1 91 0
	addi	a3, sp, 16
.LVL22:
	.loc 1 92 0
	mov.n	a13, a5
.LBB23:
	.loc 1 95 0
	j	.L17
.LVL23:
.L22:
.LBB20:
	.loc 1 97 0
	l32i.n	a4, a6, 8
.LVL24:
	.loc 1 99 0
	beqi	a4, -1, .L18
	.loc 1 102 0
	addi.n	a8, a13, 1
	s32i.n	a8, a7, 24
.LVL25:
	.loc 1 103 0
	bgeu	a2, a8, .L19
	.loc 1 103 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	movi	a11, 0x67
	j	.L46
.L19:
	.loc 1 105 0 is_stmt 1
	l32r	a8, .LC12
.LVL26:
	slli	a9, a13, 3
	addx4	a11, a4, a4
	addx4	a11, a11, a8
	add.n	a10, a9, a13
	l32i.n	a15, a11, 4
	l32i.n	a14, a11, 12
	slli	a10, a10, 2
	add.n	a12, a3, a10
	s32i.n	a15, a12, 0
	s32i.n	a14, a12, 8
	.loc 1 107 0
	l32i.n	a15, a6, 4
	.loc 1 106 0
	l32i.n	a14, a6, 0
	.loc 1 105 0
	s32i.n	a9, a7, 28
	l32i.n	a9, a11, 8
	.loc 1 106 0
	s32i.n	a14, a12, 12
	.loc 1 107 0
	add.n	a14, a15, a14
	.loc 1 105 0
	s32i.n	a9, a12, 4
	.loc 1 107 0
	s32i.n	a14, a12, 16
	.loc 1 108 0
	addi	a10, a12, 20
	s32i.n	a11, a7, 32
	s32i.n	a12, a7, 40
	s32i.n	a13, a7, 36
	call8	vPortCPUInitializeMutex
.LVL27:
	.loc 1 109 0
	l32i.n	a11, a7, 32
	l32i.n	a12, a7, 40
	l8ui	a10, a11, 17
	l32i.n	a13, a7, 36
	beqz.n	a10, .L20
	.loc 1 111 0
	movi.n	a10, 0
	s32i.n	a10, a12, 28
	j	.L21
.L20:
.LVL28:
.LBB21:
.LBB22:
	.loc 1 34 0
	l32i.n	a10, a12, 12
	l32i.n	a11, a12, 16
	s32i.n	a12, a7, 40
	sub	a11, a11, a10
	s32i.n	a13, a7, 36
	call8	multi_heap_register
.LVL29:
	l32i.n	a12, a7, 40
	l32i.n	a13, a7, 36
	s32i.n	a10, a12, 28
.L21:
.LBE22:
.LBE21:
	.loc 1 115 0
	l32i.n	a8, a7, 28
	movi.n	a10, 0
	add.n	a13, a8, a13
	addx4	a13, a13, a3
	s32i.n	a10, a13, 32
	.loc 1 117 0
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC12
	addx4	a8, a4, a4
	addx4	a8, a8, a11
	l32i.n	a8, a8, 0
	l32i.n	a14, a6, 4
	s32i.n	a8, sp, 0
.LVL31:
	l32i.n	a13, a6, 0
	mov.n	a11, a10
	l32r	a12, .LC4
	l32r	a10, .LC14
	srli	a15, a14, 10
	call8	ets_printf
.LVL32:
	l32i.n	a13, a7, 24
.L18:
.LVL33:
.LBE20:
	.loc 1 95 0 discriminator 2
	addi.n	a5, a5, 1
.LVL34:
	addi	a6, a6, 16
.LVL35:
.L17:
	.loc 1 95 0 is_stmt 0 discriminator 1
	l32i.n	a9, a7, 16
	bne	a5, a9, .L22
.LBE23:
	.loc 1 121 0 is_stmt 1
	beq	a2, a13, .L23
	.loc 1 121 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
.LVL36:
	l32r	a12, .LC9
	movi	a11, 0x79
.LVL37:
.L46:
	l32r	a10, .LC11
	call8	__assert_func
.LVL38:
.L23:
	.loc 1 126 0 is_stmt 1
	l32r	a5, .LC17
.LVL39:
	mov.n	a12, a3
	.loc 1 126 0
	l32i.n	a8, a5, 0
.LBB24:
	.loc 1 130 0
	l32r	a4, .LC20
.LBE24:
	.loc 1 126 0
	beqz.n	a8, .L25
.L24:
	.loc 1 126 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
.LVL40:
	l32r	a12, .LC9
	movi	a11, 0x7e
	j	.L46
.LVL41:
.L29:
.LBB25:
	.loc 1 130 0 is_stmt 1
	mov.n	a10, a12
	mov.n	a11, a4
	s32i.n	a8, a7, 32
	s32i.n	a12, a7, 40
	call8	heap_caps_match
.LVL42:
	l32i.n	a8, a7, 32
	l32i.n	a12, a7, 40
	bnez.n	a10, .L26
.LVL43:
.L28:
	.loc 1 129 0
	addi.n	a8, a8, 1
.LVL44:
	addi	a12, a12, 36
	j	.L25
.LVL45:
.L26:
	.loc 1 132 0
	l32i.n	a10, a12, 28
	l32i.n	a11, a7, 20
	s32i.n	a8, a7, 32
	s32i.n	a12, a7, 40
	call8	multi_heap_malloc
.LVL46:
	mov.n	a6, a10
.LVL47:
	.loc 1 133 0
	l32i.n	a8, a7, 32
	l32i.n	a12, a7, 40
	beqz.n	a10, .L28
	j	.L27
.LVL48:
.L25:
	.loc 1 129 0 discriminator 1
	bne	a8, a2, .L29
	j	.L44
.LVL49:
.L34:
.LBE25:
.LBB26:
	.loc 1 144 0
	l32i.n	a10, a3, 32
	addi.n	a9, a3, 4
	beqz.n	a10, .L31
	.loc 1 145 0
	addi	a11, a3, 24
	s32i.n	a9, a7, 32
	call8	multi_heap_set_lock
.LVL50:
	l32i.n	a9, a7, 32
.L31:
	.loc 1 147 0
	bnez.n	a4, .L32
	.loc 1 148 0
	l32i.n	a8, a5, 0
	s32i.n	a6, a5, 0
	s32i.n	a8, a6, 32
	j	.L33
.L32:
	.loc 1 150 0
	l32i.n	a8, a3, 0
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 36
.L33:
	.loc 1 143 0 discriminator 2
	addi.n	a4, a4, 1
.LVL51:
	addi	a3, a3, 36
.LVL52:
.L35:
	.loc 1 143 0 is_stmt 0 discriminator 1
	bne	a4, a2, .L34
	retw.n
.LVL53:
.L44:
.LBE26:
	.loc 1 138 0 is_stmt 1
	l32r	a13, .LC22
	l32r	a12, .LC9
	movi	a11, 0x8a
	j	.L46
.LVL54:
.L27:
	.loc 1 140 0
	l32i.n	a12, a7, 20
	mov.n	a11, a3
	call8	memcpy
.LVL55:
	addi	a3, a6, -4
.LVL56:
.LBB27:
	.loc 1 143 0
	movi.n	a4, 0
	j	.L35
.LBE27:
.LFE21:
	.size	heap_caps_init, .-heap_caps_init
	.section	.text.heap_caps_add_region_with_caps,"ax",@progbits
	.literal_position
	.literal .LC23, registered_heaps
	.literal .LC24, 2052
	.literal .LC25, registered_heaps_write_lock$5354
	.align	4
	.global	heap_caps_add_region_with_caps
	.type	heap_caps_add_region_with_caps, @function
heap_caps_add_region_with_caps:
.LFB23:
	.loc 1 174 0
.LVL57:
	entry	sp, 32
.LCFI2:
.LVL58:
	.loc 1 176 0
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a2
	extui	a5, a5, 0, 8
	bnez.n	a5, .L60
	moveqz	a5, a6, a3
	bnez.n	a5, .L60
	.loc 1 176 0 discriminator 1
	moveqz	a5, a6, a4
	bnez.n	a5, .L60
	bge	a3, a4, .L60
	.loc 1 202 0 discriminator 1
	l32r	a7, .LC23
	l32i.n	a5, a7, 0
.LVL59:
	j	.L50
.L57:
	.loc 1 203 0
	l32i.n	a6, a5, 12
	blt	a6, a3, .L65
	blt	a6, a4, .L62
.L65:
	.loc 1 204 0
	l32i.n	a6, a5, 16
	bge	a6, a4, .L66
	blt	a3, a6, .L62
.L66:
	.loc 1 202 0 discriminator 2
	l32i.n	a5, a5, 32
.LVL60:
.L50:
	.loc 1 202 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L57
.LVL61:
.LBB30:
.LBB31:
	.loc 1 209 0 is_stmt 1
	l32r	a11, .LC24
	movi.n	a10, 0x24
	call8	heap_caps_malloc
.LVL62:
	mov.n	a6, a10
.LVL63:
	.loc 1 210 0
	beqz.n	a10, .L63
	.loc 1 214 0
	mov.n	a11, a2
	movi.n	a12, 0xc
	call8	memcpy
.LVL64:
	.loc 1 217 0
	addi	a2, a6, 20
.LVL65:
	mov.n	a10, a2
	.loc 1 215 0
	s32i.n	a3, a6, 12
	.loc 1 216 0
	s32i.n	a4, a6, 16
	.loc 1 217 0
	call8	vPortCPUInitializeMutex
.LVL66:
	.loc 1 218 0
	sub	a11, a4, a3
	mov.n	a10, a3
	call8	multi_heap_register
.LVL67:
	s32i.n	a10, a6, 28
	.loc 1 219 0
	s32i.n	a5, a6, 32
	.loc 1 220 0
	beqz.n	a10, .L64
	.loc 1 224 0
	mov.n	a11, a2
	call8	multi_heap_set_lock
.LVL68:
	.loc 1 230 0
	l32r	a2, .LC25
	mov.n	a10, a2
	call8	_lock_acquire
.LVL69:
	.loc 1 231 0
	l32i.n	a3, a7, 0
.LVL70:
	.loc 1 232 0
	mov.n	a10, a2
	.loc 1 231 0
	s32i.n	a3, a6, 32
	s32i.n	a6, a7, 0
	.loc 1 232 0
	call8	_lock_release
.LVL71:
	mov.n	a2, a5
	retw.n
.LVL72:
.L60:
.LBE31:
.LBE30:
	.loc 1 177 0
	movi	a2, 0x102
.LVL73:
	retw.n
.LVL74:
.L62:
	.loc 1 205 0
	movi.n	a2, -1
.LVL75:
	retw.n
.LVL76:
.L63:
.LBB33:
.LBB32:
	.loc 1 211 0
	movi	a2, 0x101
.LVL77:
	j	.L58
.L64:
	.loc 1 221 0
	movi	a2, 0x104
.L58:
.LVL78:
	.loc 1 238 0
	mov.n	a10, a6
	call8	free
.LVL79:
.LBE32:
.LBE33:
	.loc 1 241 0
	retw.n
.LFE23:
	.size	heap_caps_add_region_with_caps, .-heap_caps_add_region_with_caps
	.section	.text.heap_caps_add_region,"ax",@progbits
	.literal_position
	.literal .LC26, soc_memory_regions
	.literal .LC27, soc_memory_region_count
	.literal .LC28, soc_memory_types
	.align	4
	.global	heap_caps_add_region
	.type	heap_caps_add_region, @function
heap_caps_add_region:
.LFB22:
	.loc 1 156 0
.LVL80:
	entry	sp, 32
.LCFI3:
	.loc 1 156 0
	mov.n	a11, a2
	mov.n	a12, a3
	.loc 1 158 0
	movi	a10, 0x102
	.loc 1 157 0
	beqz.n	a2, .L78
.LBB34:
	.loc 1 161 0
	l32r	a8, .LC27
	l32r	a9, .LC26
	l32i.n	a14, a8, 0
	mov.n	a15, a9
	movi.n	a8, 0
	j	.L79
.LVL81:
.L81:
.LBB35:
	.loc 1 164 0
	l32i.n	a13, a9, 0
	blt	a11, a13, .L80
	.loc 1 164 0 is_stmt 0 discriminator 1
	l32i.n	a10, a9, 4
	add.n	a10, a13, a10
	bgeu	a11, a10, .L80
.LVL82:
.LBB36:
	.loc 1 165 0 is_stmt 1
	slli	a8, a8, 4
.LVL83:
	add.n	a8, a15, a8
.LVL84:
	l32i.n	a10, a8, 8
	l32r	a8, .LC28
	addx4	a10, a10, a10
	addx4	a10, a10, a8
	.loc 1 166 0
	addi.n	a10, a10, 4
	call8	heap_caps_add_region_with_caps
.LVL85:
	j	.L78
.LVL86:
.L80:
.LBE36:
.LBE35:
	.loc 1 161 0 discriminator 2
	addi.n	a8, a8, 1
.LVL87:
	addi	a9, a9, 16
.LVL88:
.L79:
	.loc 1 161 0 is_stmt 0 discriminator 1
	bne	a8, a14, .L81
.LBE34:
	.loc 1 170 0 is_stmt 1
	movi	a10, 0x105
.LVL89:
.L78:
	.loc 1 171 0
	mov.n	a2, a10
.LVL90:
	retw.n
.LFE22:
	.size	heap_caps_add_region, .-heap_caps_add_region
	.section	.bss.registered_heaps_write_lock$5354,"aw",@nobits
	.align	4
	.type	registered_heaps_write_lock$5354, @object
	.size	registered_heaps_write_lock$5354, 4
registered_heaps_write_lock$5354:
	.zero	4
	.section	.rodata.__func__$5319,"a",@progbits
	.type	__func__$5319, @object
	.size	__func__$5319, 15
__func__$5319:
	.string	"heap_caps_init"
	.comm	registered_heaps,4,4
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/multi_heap.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_private.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x90b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0xbb
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x7
	.byte	0x1e
	.4byte	0xf2
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x7
	.4byte	.LASF82
	.uleb128 0x8
	.byte	0x14
	.byte	0x8
	.byte	0x3b
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x8
	.byte	0x3c
	.4byte	0xb0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x8
	.byte	0x3d
	.4byte	0x136
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.byte	0x3e
	.4byte	0x146
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3f
	.4byte	0x146
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	0xc6
	.4byte	0x146
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x8
	.byte	0x40
	.4byte	0xfd
	.uleb128 0x8
	.byte	0x10
	.byte	0x8
	.byte	0x48
	.4byte	0x191
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4a
	.4byte	0xd1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.byte	0x4b
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4c
	.4byte	0x25
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4d
	.4byte	0xd1
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4e
	.4byte	0x158
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x1bd
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x9
	.byte	0x8a
	.4byte	0xc6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x9
	.byte	0x8f
	.4byte	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0x94
	.4byte	0x19c
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.byte	0x26
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xa
	.byte	0x26
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x24
	.byte	0xa
	.byte	0x20
	.4byte	0x232
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0x21
	.4byte	0x136
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xa
	.byte	0x22
	.4byte	0xd1
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0xa
	.byte	0x23
	.4byte	0xd1
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xa
	.byte	0x24
	.4byte	0x1bd
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa
	.byte	0x25
	.4byte	0xe7
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.byte	0x26
	.4byte	0x1c8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xa
	.byte	0x27
	.4byte	0x1dd
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0xa
	.byte	0x2f
	.4byte	0x25c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xa
	.byte	0x2f
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x1f
	.4byte	0x28d
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.byte	0xad
	.4byte	0xdc
	.byte	0x1
	.4byte	0x2f7
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xad
	.4byte	0x2f7
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0xad
	.4byte	0xd1
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0xad
	.4byte	0xd1
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0xaf
	.4byte	0xdc
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc9
	.4byte	0x302
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd1
	.4byte	0x302
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0xec
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe5
	.4byte	0x89
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fd
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x238
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0x320
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x20
	.4byte	0x302
	.byte	0
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x28
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x379
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2a
	.4byte	0x302
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	0x308
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x2f
	.4byte	0x368
	.uleb128 0x1a
	.4byte	0x314
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0x86b
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x876
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d1
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	0x5e4
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x40
	.4byte	0x5d1
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x50
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5b
	.4byte	0x5e9
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF59
	.4byte	0x60b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5319
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.byte	0x80
	.4byte	0x302
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x42d
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x3e
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x46
	.4byte	0x610
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x47
	.4byte	0x610
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x448
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x51
	.4byte	0x3e
	.4byte	.LLST7
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x4f3
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.4byte	0x3e
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x60
	.4byte	0x610
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x61
	.4byte	0x616
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x62
	.4byte	0x302
	.uleb128 0x19
	.4byte	0x308
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x71
	.4byte	0x4aa
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0x86b
	.byte	0
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x881
	.4byte	0x4cc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x10
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0x88c
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x897
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x52f
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x81
	.4byte	0x3e
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LVL42
	.4byte	0x8a2
	.4byte	0x51d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL46
	.4byte	0x8ad
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x556
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x3e
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LVL50
	.4byte	0x876
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x8b8
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0x8c3
	.4byte	0x573
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x88c
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x897
	.4byte	0x59c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0x8ce
	.4byte	0x5b3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x8d9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x191
	.4byte	0x5e4
	.uleb128 0x28
	.4byte	0x9b
	.4byte	0x39d
	.byte	0
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0x238
	.4byte	0x5fb
	.uleb128 0x29
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x72
	.sleb128 -1
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x60b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x5fb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x191
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x6
	.4byte	0x14d
	.uleb128 0x2a
	.4byte	0x292
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x777
	.uleb128 0x1a
	.4byte	0x2a2
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x2ad
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	0x2c3
	.sleb128 -1
	.uleb128 0x2d
	.4byte	0x2ce
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	0x2d9
	.uleb128 0x2f
	.4byte	0x2e4
	.uleb128 0x30
	.4byte	0x2eb
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$5354
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1a
	.4byte	0x2b8
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	0x2ad
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	0x2a2
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x2d
	.4byte	0x2c3
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	0x2ce
	.uleb128 0x2d
	.4byte	0x2d9
	.4byte	.LLST18
	.uleb128 0x2f
	.4byte	0x2e4
	.uleb128 0x30
	.4byte	0x2eb
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$5354
	.uleb128 0x27
	.4byte	.LVL62
	.4byte	0x8e2
	.4byte	0x6d8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x27
	.4byte	.LVL64
	.4byte	0x8d9
	.4byte	0x6f7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL66
	.4byte	0x881
	.4byte	0x70b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL67
	.4byte	0x86b
	.4byte	0x728
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL68
	.4byte	0x876
	.4byte	0x73c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0x8ed
	.4byte	0x750
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL71
	.4byte	0x8f8
	.4byte	0x764
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL79
	.4byte	0x903
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9b
	.4byte	0xdc
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f7
	.uleb128 0x32
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9b
	.4byte	0xd1
	.4byte	.LLST19
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.byte	0x9b
	.4byte	0xd1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa2
	.4byte	0x7f7
	.uleb128 0x25
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa5
	.4byte	0x2f7
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x292
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7fd
	.uleb128 0x6
	.4byte	0x191
	.uleb128 0x34
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0xa
	.4byte	0x14d
	.4byte	0x81f
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.4byte	.LASF61
	.byte	0x8
	.byte	0x43
	.4byte	0x82a
	.uleb128 0x6
	.4byte	0x814
	.uleb128 0xa
	.4byte	0x191
	.4byte	0x83a
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.4byte	.LASF62
	.byte	0x8
	.byte	0x50
	.4byte	0x845
	.uleb128 0x6
	.4byte	0x82f
	.uleb128 0x36
	.4byte	.LASF63
	.byte	0x8
	.byte	0x51
	.4byte	0x855
	.uleb128 0x6
	.4byte	0x25
	.uleb128 0x37
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1e
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps
	.uleb128 0x38
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x7
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.byte	0x65
	.uleb128 0x38
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x9
	.byte	0xcb
	.uleb128 0x38
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xb
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xc
	.byte	0xde
	.uleb128 0x38
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xa
	.byte	0x31
	.uleb128 0x38
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0x8c
	.uleb128 0x38
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x86
	.uleb128 0x38
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xd
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF87
	.4byte	.LASF87
	.uleb128 0x38
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xe
	.byte	0x37
	.uleb128 0x38
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.byte	0x20
	.uleb128 0x38
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.byte	0x24
	.uleb128 0x38
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xf
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x39
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL56
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL61
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"heap_caps_malloc"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/heap"
.LASF50:
	.string	"registered_heaps_write_lock"
.LASF54:
	.string	"num_regions"
.LASF48:
	.string	"ESP_LOG_VERBOSE"
.LASF51:
	.string	"region"
.LASF38:
	.string	"next"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF64:
	.string	"registered_heaps"
.LASF72:
	.string	"soc_get_available_memory_region_max_count"
.LASF7:
	.string	"__uint32_t"
.LASF85:
	.string	"register_heap"
.LASF11:
	.string	"_lock_t"
.LASF87:
	.string	"memcpy"
.LASF35:
	.string	"sle_next"
.LASF65:
	.string	"multi_heap_register"
.LASF10:
	.string	"__intptr_t"
.LASF84:
	.string	"done"
.LASF77:
	.string	"_lock_release"
.LASF26:
	.string	"soc_memory_type_desc_t"
.LASF37:
	.string	"heap"
.LASF78:
	.string	"free"
.LASF83:
	.string	"heap_caps_add_region_with_caps"
.LASF76:
	.string	"_lock_acquire"
.LASF61:
	.string	"soc_memory_types"
.LASF18:
	.string	"intptr_t"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"long int"
.LASF62:
	.string	"soc_memory_regions"
.LASF46:
	.string	"ESP_LOG_INFO"
.LASF70:
	.string	"heap_caps_match"
.LASF30:
	.string	"iram_address"
.LASF21:
	.string	"name"
.LASF22:
	.string	"caps"
.LASF3:
	.string	"unsigned char"
.LASF58:
	.string	"heap_idx"
.LASF55:
	.string	"regions"
.LASF59:
	.string	"__func__"
.LASF32:
	.string	"owner"
.LASF52:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"heap_mux"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF56:
	.string	"num_heaps"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"registered_heap_ll"
.LASF63:
	.string	"soc_memory_region_count"
.LASF42:
	.string	"slh_first"
.LASF27:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF69:
	.string	"ets_printf"
.LASF23:
	.string	"aliased_iram"
.LASF40:
	.string	"heap_t_"
.LASF15:
	.string	"char"
.LASF49:
	.string	"p_new"
.LASF47:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF43:
	.string	"ESP_LOG_NONE"
.LASF25:
	.string	"_Bool"
.LASF66:
	.string	"multi_heap_set_lock"
.LASF67:
	.string	"vPortCPUInitializeMutex"
.LASF24:
	.string	"startup_stack"
.LASF71:
	.string	"multi_heap_malloc"
.LASF53:
	.string	"heap_caps_init"
.LASF20:
	.string	"multi_heap_handle_t"
.LASF86:
	.string	"heap_caps_add_region"
.LASF17:
	.string	"uint32_t"
.LASF45:
	.string	"ESP_LOG_WARN"
.LASF14:
	.string	"long unsigned int"
.LASF80:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
.LASF31:
	.string	"soc_memory_region_t"
.LASF28:
	.string	"size"
.LASF57:
	.string	"temp_heaps"
.LASF33:
	.string	"count"
.LASF6:
	.string	"__int32_t"
.LASF73:
	.string	"soc_get_available_memory_regions"
.LASF34:
	.string	"portMUX_TYPE"
.LASF68:
	.string	"esp_log_timestamp"
.LASF60:
	.string	"heaps_array"
.LASF74:
	.string	"__assert_func"
.LASF39:
	.string	"heap_t"
.LASF79:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF82:
	.string	"multi_heap_info"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
