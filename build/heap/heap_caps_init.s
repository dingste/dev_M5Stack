	.file	"heap_caps_init.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"heap_size <= HEAP_SIZE_MAX"
.LC4:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
	.section	.text.register_heap,"ax",@progbits
	.literal_position
	.literal .LC0, 4194304
	.literal .LC2, .LC1
	.literal .LC3, __func__$5338
	.literal .LC5, .LC4
	.align	4
	.type	register_heap, @function
register_heap:
.LFB28:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 34 0
	l32i.n	a10, a2, 12
	l32i.n	a11, a2, 16
	.loc 1 35 0
	l32r	a8, .LC0
	.loc 1 34 0
	sub	a11, a11, a10
.LVL1:
	.loc 1 35 0
	bgeu	a8, a11, .L2
.LVL2:
.LBB4:
.LBB5:
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi.n	a11, 0x23
.LVL3:
	call8	__assert_func
.LVL4:
.L2:
.LBE5:
.LBE4:
	.loc 1 36 0
	call8	multi_heap_register
.LVL5:
	s32i.n	a10, a2, 28
	retw.n
.LFE28:
	.size	register_heap, .-register_heap
	.section	.text.heap_caps_enable_nonos_stack_heaps,"ax",@progbits
	.literal_position
	.literal .LC6, registered_heaps
	.align	4
	.global	heap_caps_enable_nonos_stack_heaps
	.type	heap_caps_enable_nonos_stack_heaps, @function
heap_caps_enable_nonos_stack_heaps:
.LFB29:
	.loc 1 43 0
	entry	sp, 32
.LCFI1:
	.loc 1 45 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
.LVL6:
	j	.L4
.L8:
	.loc 1 48 0
	l32i.n	a8, a2, 28
	bnez.n	a8, .L6
	.loc 1 49 0
	mov.n	a10, a2
	call8	register_heap
.LVL7:
	.loc 1 50 0
	l32i.n	a10, a2, 28
	beqz.n	a10, .L6
	.loc 1 51 0
	addi	a11, a2, 20
	call8	multi_heap_set_lock
.LVL8:
.L6:
	.loc 1 45 0 discriminator 2
	l32i.n	a2, a2, 32
.LVL9:
.L4:
	.loc 1 45 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L8
	.loc 1 55 0 is_stmt 1
	retw.n
.LFE29:
	.size	heap_caps_enable_nonos_stack_heaps, .-heap_caps_enable_nonos_stack_heaps
	.section	.rodata.str1.1
.LC9:
	.string	"heap_init"
.LC11:
	.string	"\033[0;32mI (%d) %s: Initializing. RAM available for dynamic allocation:\033[0m\n"
.LC13:
	.string	"heap_idx <= num_heaps"
.LC18:
	.string	"\033[0;32mI (%d) %s: At %08X len %08X (%d KiB): %s\033[0m\n"
.LC20:
	.string	"heap_idx == num_heaps"
.LC23:
	.string	"SLIST_EMPTY(&registered_heaps)"
.LC26:
	.string	"heaps_array != NULL"
	.section	.text.heap_caps_init,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, __func__$5367
	.literal .LC16, .LC4
	.literal .LC17, soc_memory_types
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC22, registered_heaps
	.literal .LC24, .LC23
	.literal .LC25, 2052
	.literal .LC27, .LC26
	.align	4
	.global	heap_caps_init
	.type	heap_caps_init, @function
heap_caps_init:
.LFB30:
	.loc 1 61 0
	entry	sp, 80
	mov.n	a7, sp
.LCFI2:
	.loc 1 65 0
	call8	soc_get_available_memory_region_max_count
.LVL10:
	.loc 1 66 0
	slli	a10, a10, 4
.LVL11:
	addi	a10, a10, 16
	sub	a10, sp, a10
	movsp	sp, a10
	addi	a3, sp, 16
.LVL12:
	.loc 1 67 0
	mov.n	a10, a3
	call8	soc_get_available_memory_regions
.LVL13:
	s32i.n	a10, a7, 16
.LVL14:
	mov.n	a6, a3
.LBB6:
	.loc 1 71 0
	mov.n	a2, a3
	movi.n	a5, 1
.LBB7:
	.loc 1 75 0
	movi.n	a10, -1
.LVL15:
.LBE7:
	.loc 1 71 0
	j	.L13
.LVL16:
.L15:
.LBB8:
	.loc 1 74 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a2, 4
	l32i.n	a12, a2, 16
	add.n	a11, a8, a4
	bne	a12, a11, .L14
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 24
	l32i.n	a11, a2, 8
	bne	a12, a11, .L14
	.loc 1 76 0 is_stmt 1
	s32i.n	a8, a2, 16
	.loc 1 77 0
	l32i.n	a8, a2, 20
	.loc 1 75 0
	s32i.n	a10, a2, 8
	.loc 1 77 0
	add.n	a4, a8, a4
	s32i.n	a4, a2, 20
.L14:
.LBE8:
	.loc 1 71 0 discriminator 2
	addi.n	a5, a5, 1
.LVL17:
	addi	a2, a2, 16
.LVL18:
.L13:
	.loc 1 71 0 is_stmt 0 discriminator 1
	l32i.n	a4, a7, 16
	bltu	a5, a4, .L15
	.loc 1 71 0
	movi.n	a4, 0
	addi.n	a3, a3, 8
	mov.n	a2, a4
.LBE6:
.LBB9:
	.loc 1 85 0 is_stmt 1
	movi.n	a8, 1
	mov.n	a10, a4
	j	.L16
.LVL19:
.L18:
	.loc 1 84 0
	l32i.n	a5, a3, 0
	.loc 1 85 0
	mov.n	a9, a10
	addi.n	a5, a5, 1
	movnez	a9, a8, a5
	add.n	a2, a2, a9
.LVL20:
	.loc 1 83 0
	addi.n	a4, a4, 1
.LVL21:
	addi	a3, a3, 16
.LVL22:
.L16:
	.loc 1 83 0 is_stmt 0 discriminator 1
	l32i.n	a5, a7, 16
	bne	a4, a5, .L18
.LVL23:
.LBE9:
	.loc 1 93 0 is_stmt 1
	addx8	a4, a2, a2
.LVL24:
	slli	a4, a4, 2
	addi	a3, a4, 18
	srli	a3, a3, 4
	slli	a3, a3, 4
	sub	a3, sp, a3
	movsp	sp, a3
	s32i.n	a4, a7, 20
	.loc 1 96 0
	call8	esp_log_timestamp
.LVL25:
	l32r	a12, .LC10
	mov.n	a11, a10
	l32r	a10, .LC12
.LBB10:
	.loc 1 97 0
	movi.n	a5, 0
.LBE10:
	.loc 1 96 0
	call8	ets_printf
.LVL26:
	.loc 1 93 0
	addi	a3, sp, 16
.LVL27:
	.loc 1 94 0
	mov.n	a12, a5
.LBB12:
	.loc 1 97 0
	j	.L19
.LVL28:
.L24:
.LBB11:
	.loc 1 99 0
	l32i.n	a4, a6, 8
.LVL29:
	.loc 1 101 0
	beqi	a4, -1, .L20
	.loc 1 104 0
	addi.n	a8, a12, 1
	s32i.n	a8, a7, 24
.LVL30:
	.loc 1 105 0
	bgeu	a2, a8, .L21
	.loc 1 105 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi	a11, 0x69
	j	.L48
.L21:
	.loc 1 107 0 is_stmt 1
	l32r	a8, .LC17
.LVL31:
	.loc 1 100 0
	slli	a9, a12, 3
	.loc 1 107 0
	addx4	a13, a4, a4
	addx4	a13, a13, a8
	.loc 1 100 0
	add.n	a10, a9, a12
	.loc 1 107 0
	l32i.n	a15, a13, 4
	l32i.n	a14, a13, 12
	.loc 1 100 0
	slli	a10, a10, 2
	add.n	a11, a3, a10
	.loc 1 107 0
	s32i.n	a15, a11, 0
	s32i.n	a14, a11, 8
	.loc 1 109 0
	l32i.n	a15, a6, 4
	.loc 1 108 0
	l32i.n	a14, a6, 0
	.loc 1 100 0
	s32i.n	a9, a7, 28
	.loc 1 107 0
	l32i.n	a9, a13, 8
	.loc 1 108 0
	s32i.n	a14, a11, 12
	.loc 1 109 0
	add.n	a14, a15, a14
	.loc 1 107 0
	s32i.n	a9, a11, 4
	.loc 1 109 0
	s32i.n	a14, a11, 16
	.loc 1 110 0
	addi	a10, a11, 20
	s32i.n	a11, a7, 32
	s32i.n	a12, a7, 40
	s32i.n	a13, a7, 36
	call8	vPortCPUInitializeMutex
.LVL32:
	.loc 1 111 0
	l32i.n	a13, a7, 36
	l32i.n	a11, a7, 32
	l8ui	a10, a13, 17
	l32i.n	a12, a7, 40
	beqz.n	a10, .L22
	.loc 1 113 0
	movi.n	a10, 0
	s32i.n	a10, a11, 28
	j	.L23
.L22:
	.loc 1 115 0
	mov.n	a10, a11
	s32i.n	a12, a7, 40
	call8	register_heap
.LVL33:
	l32i.n	a12, a7, 40
.L23:
	.loc 1 117 0
	l32i.n	a8, a7, 28
	movi.n	a10, 0
	add.n	a12, a8, a12
	addx4	a12, a12, a3
	s32i.n	a10, a12, 32
	.loc 1 119 0
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC17
	addx4	a8, a4, a4
	addx4	a8, a8, a11
	l32i.n	a8, a8, 0
	l32i.n	a14, a6, 4
	s32i.n	a8, sp, 0
.LVL35:
	l32r	a12, .LC10
	mov.n	a11, a10
	l32i.n	a13, a6, 0
	l32r	a10, .LC19
	srli	a15, a14, 10
	call8	ets_printf
.LVL36:
	l32i.n	a12, a7, 24
.L20:
.LVL37:
.LBE11:
	.loc 1 97 0 discriminator 2
	addi.n	a5, a5, 1
.LVL38:
	addi	a6, a6, 16
.LVL39:
.L19:
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32i.n	a9, a7, 16
	bne	a5, a9, .L24
.LBE12:
	.loc 1 123 0 is_stmt 1
	beq	a2, a12, .L25
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC15
.LVL40:
	movi	a11, 0x7b
.LVL41:
.L48:
	l32r	a10, .LC16
	call8	__assert_func
.LVL42:
.L25:
	.loc 1 128 0 is_stmt 1
	l32r	a5, .LC22
.LVL43:
	mov.n	a12, a3
.LVL44:
	.loc 1 128 0
	l32i.n	a8, a5, 0
.LBB13:
	.loc 1 132 0
	l32r	a4, .LC25
.LBE13:
	.loc 1 128 0
	beqz.n	a8, .L27
.L26:
	.loc 1 128 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC15
	movi	a11, 0x80
	j	.L48
.LVL45:
.L31:
.LBB14:
	.loc 1 132 0 is_stmt 1
	mov.n	a10, a12
	mov.n	a11, a4
	s32i.n	a8, a7, 32
	s32i.n	a12, a7, 40
	call8	heap_caps_match
.LVL46:
	l32i.n	a8, a7, 32
	l32i.n	a12, a7, 40
	bnez.n	a10, .L28
.LVL47:
.L30:
	.loc 1 131 0
	addi.n	a8, a8, 1
.LVL48:
	addi	a12, a12, 36
	j	.L27
.LVL49:
.L28:
	.loc 1 134 0
	l32i.n	a10, a12, 28
	l32i.n	a11, a7, 20
	s32i.n	a8, a7, 32
	s32i.n	a12, a7, 40
	call8	multi_heap_malloc
.LVL50:
	mov.n	a6, a10
.LVL51:
	.loc 1 135 0
	l32i.n	a8, a7, 32
	l32i.n	a12, a7, 40
	beqz.n	a10, .L30
	j	.L29
.LVL52:
.L27:
	.loc 1 131 0 discriminator 1
	bne	a8, a2, .L31
	j	.L46
.LVL53:
.L36:
.LBE14:
.LBB15:
	.loc 1 146 0
	l32i.n	a10, a3, 32
	addi.n	a9, a3, 4
	beqz.n	a10, .L33
	.loc 1 147 0
	addi	a11, a3, 24
	s32i.n	a9, a7, 32
	call8	multi_heap_set_lock
.LVL54:
	l32i.n	a9, a7, 32
.L33:
	.loc 1 149 0
	bnez.n	a4, .L34
	.loc 1 150 0
	l32i.n	a8, a5, 0
	s32i.n	a6, a5, 0
	s32i.n	a8, a6, 32
	j	.L35
.L34:
	.loc 1 152 0
	l32i.n	a8, a3, 0
	s32i.n	a9, a3, 0
	s32i.n	a8, a3, 36
.L35:
	.loc 1 145 0 discriminator 2
	addi.n	a4, a4, 1
.LVL55:
	addi	a3, a3, 36
.LVL56:
.L37:
	.loc 1 145 0 is_stmt 0 discriminator 1
	bne	a4, a2, .L36
	retw.n
.LVL57:
.L46:
.LBE15:
	.loc 1 140 0 is_stmt 1
	l32r	a13, .LC27
	l32r	a12, .LC15
	movi	a11, 0x8c
	j	.L48
.LVL58:
.L29:
	.loc 1 142 0
	l32i.n	a12, a7, 20
	mov.n	a11, a3
	call8	memcpy
.LVL59:
	addi	a3, a6, -4
.LVL60:
.LBB16:
	.loc 1 145 0
	movi.n	a4, 0
	j	.L37
.LBE16:
.LFE30:
	.size	heap_caps_init, .-heap_caps_init
	.section	.text.heap_caps_add_region_with_caps,"ax",@progbits
	.literal_position
	.literal .LC28, registered_heaps
	.literal .LC29, 2052
	.literal .LC30, registered_heaps_write_lock$5402
	.align	4
	.global	heap_caps_add_region_with_caps
	.type	heap_caps_add_region_with_caps, @function
heap_caps_add_region_with_caps:
.LFB32:
	.loc 1 176 0
.LVL61:
	entry	sp, 32
.LCFI3:
.LVL62:
	.loc 1 178 0
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a2
	extui	a5, a5, 0, 8
	bnez.n	a5, .L62
	moveqz	a5, a6, a3
	bnez.n	a5, .L62
	.loc 1 178 0 discriminator 1
	moveqz	a5, a6, a4
	bnez.n	a5, .L62
	bge	a3, a4, .L62
	.loc 1 204 0 discriminator 1
	l32r	a7, .LC28
	l32i.n	a5, a7, 0
.LVL63:
	j	.L52
.L59:
	.loc 1 205 0
	l32i.n	a6, a5, 12
	blt	a6, a3, .L67
	blt	a6, a4, .L64
.L67:
	.loc 1 206 0
	l32i.n	a6, a5, 16
	bge	a6, a4, .L68
	blt	a3, a6, .L64
.L68:
	.loc 1 204 0 discriminator 2
	l32i.n	a5, a5, 32
.LVL64:
.L52:
	.loc 1 204 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L59
.LVL65:
.LBB19:
.LBB20:
	.loc 1 211 0 is_stmt 1
	l32r	a11, .LC29
	movi.n	a10, 0x24
	call8	heap_caps_malloc
.LVL66:
	mov.n	a6, a10
.LVL67:
	.loc 1 212 0
	beqz.n	a10, .L65
	.loc 1 216 0
	mov.n	a11, a2
	movi.n	a12, 0xc
	call8	memcpy
.LVL68:
	.loc 1 219 0
	addi	a2, a6, 20
.LVL69:
	mov.n	a10, a2
	.loc 1 217 0
	s32i.n	a3, a6, 12
	.loc 1 218 0
	s32i.n	a4, a6, 16
	.loc 1 219 0
	call8	vPortCPUInitializeMutex
.LVL70:
	.loc 1 220 0
	sub	a11, a4, a3
	mov.n	a10, a3
	call8	multi_heap_register
.LVL71:
	s32i.n	a10, a6, 28
	.loc 1 221 0
	s32i.n	a5, a6, 32
	.loc 1 222 0
	beqz.n	a10, .L66
	.loc 1 226 0
	mov.n	a11, a2
	call8	multi_heap_set_lock
.LVL72:
	.loc 1 232 0
	l32r	a2, .LC30
	mov.n	a10, a2
	call8	_lock_acquire
.LVL73:
	.loc 1 233 0
	l32i.n	a3, a7, 0
.LVL74:
	.loc 1 234 0
	mov.n	a10, a2
	.loc 1 233 0
	s32i.n	a3, a6, 32
	s32i.n	a6, a7, 0
	.loc 1 234 0
	call8	_lock_release
.LVL75:
	mov.n	a2, a5
	retw.n
.LVL76:
.L62:
.LBE20:
.LBE19:
	.loc 1 179 0
	movi	a2, 0x102
.LVL77:
	retw.n
.LVL78:
.L64:
	.loc 1 207 0
	movi.n	a2, -1
.LVL79:
	retw.n
.LVL80:
.L65:
.LBB22:
.LBB21:
	.loc 1 213 0
	movi	a2, 0x101
.LVL81:
	j	.L60
.L66:
	.loc 1 223 0
	movi	a2, 0x104
.L60:
.LVL82:
	.loc 1 240 0
	mov.n	a10, a6
	call8	free
.LVL83:
.LBE21:
.LBE22:
	.loc 1 243 0
	retw.n
.LFE32:
	.size	heap_caps_add_region_with_caps, .-heap_caps_add_region_with_caps
	.section	.text.heap_caps_add_region,"ax",@progbits
	.literal_position
	.literal .LC31, soc_memory_regions
	.literal .LC32, soc_memory_region_count
	.literal .LC33, soc_memory_types
	.align	4
	.global	heap_caps_add_region
	.type	heap_caps_add_region, @function
heap_caps_add_region:
.LFB31:
	.loc 1 158 0
.LVL84:
	entry	sp, 32
.LCFI4:
	.loc 1 158 0
	mov.n	a11, a2
	mov.n	a12, a3
	.loc 1 160 0
	movi	a10, 0x102
	.loc 1 159 0
	beqz.n	a2, .L80
.LBB23:
	.loc 1 163 0
	l32r	a8, .LC32
	l32r	a9, .LC31
	l32i.n	a14, a8, 0
	mov.n	a15, a9
	movi.n	a8, 0
	j	.L81
.LVL85:
.L83:
.LBB24:
	.loc 1 166 0
	l32i.n	a13, a9, 0
	blt	a11, a13, .L82
	.loc 1 166 0 is_stmt 0 discriminator 1
	l32i.n	a10, a9, 4
	add.n	a10, a13, a10
	bgeu	a11, a10, .L82
.LVL86:
.LBB25:
	.loc 1 167 0 is_stmt 1
	slli	a8, a8, 4
.LVL87:
	add.n	a8, a15, a8
.LVL88:
	l32i.n	a10, a8, 8
	l32r	a8, .LC33
	addx4	a10, a10, a10
	addx4	a10, a10, a8
	.loc 1 168 0
	addi.n	a10, a10, 4
	call8	heap_caps_add_region_with_caps
.LVL89:
	j	.L80
.LVL90:
.L82:
.LBE25:
.LBE24:
	.loc 1 163 0 discriminator 2
	addi.n	a8, a8, 1
.LVL91:
	addi	a9, a9, 16
.LVL92:
.L81:
	.loc 1 163 0 is_stmt 0 discriminator 1
	bne	a8, a14, .L83
.LBE23:
	.loc 1 172 0 is_stmt 1
	movi	a10, 0x105
.LVL93:
.L80:
	.loc 1 173 0
	mov.n	a2, a10
.LVL94:
	retw.n
.LFE31:
	.size	heap_caps_add_region, .-heap_caps_add_region
	.section	.bss.registered_heaps_write_lock$5402,"aw",@nobits
	.align	4
	.type	registered_heaps_write_lock$5402, @object
	.size	registered_heaps_write_lock$5402, 4
registered_heaps_write_lock$5402:
	.zero	4
	.section	.rodata.__func__$5367,"a",@progbits
	.type	__func__$5367, @object
	.size	__func__$5367, 15
__func__$5367:
	.string	"heap_caps_init"
	.section	.rodata.__func__$5338,"a",@progbits
	.type	__func__$5338, @object
	.size	__func__$5338, 14
__func__$5338:
	.string	"register_heap"
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x50
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
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
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
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
	.4byte	.LASF83
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
	.byte	0x28
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xa
	.byte	0x28
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x24
	.byte	0xa
	.byte	0x22
	.4byte	0x232
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0x23
	.4byte	0x136
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xa
	.byte	0x24
	.4byte	0xd1
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0xa
	.byte	0x25
	.4byte	0xd1
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xa
	.byte	0x26
	.4byte	0x1bd
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa
	.byte	0x27
	.4byte	0xe7
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.byte	0x28
	.4byte	0x1c8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xa
	.byte	0x29
	.4byte	0x1dd
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0xa
	.byte	0x31
	.4byte	0x25c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xa
	.byte	0x31
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xc
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
	.4byte	.LASF84
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0x2c2
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x20
	.4byte	0x2c2
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF50
	.4byte	0x2d8
	.4byte	.LASF84
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x238
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x2d8
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x2c8
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0xaf
	.4byte	0xdc
	.byte	0x1
	.4byte	0x342
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xaf
	.4byte	0x342
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0xaf
	.4byte	0xd1
	.uleb128 0x15
	.string	"end"
	.byte	0x1
	.byte	0xaf
	.4byte	0xd1
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0xb1
	.4byte	0xdc
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xcb
	.4byte	0x2c2
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd3
	.4byte	0x2c2
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0xee
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0xe7
	.4byte	0x89
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x348
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x18
	.4byte	0x292
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e1
	.uleb128 0x19
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	0x2a9
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	0x2b4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5338
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x3d7
	.uleb128 0x1d
	.4byte	0x29e
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1f
	.4byte	0x2a9
	.uleb128 0x1b
	.4byte	0x2b4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5338
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0x901
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5338
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL5
	.4byte	0x90c
	.byte	0
	.uleb128 0x23
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x428
	.uleb128 0x24
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0x292
	.4byte	0x417
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x917
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x667
	.uleb128 0x26
	.4byte	.LASF56
	.byte	0x1
	.byte	0x41
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x27
	.4byte	0x67a
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x42
	.4byte	0x667
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5d
	.4byte	0x67f
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	.LASF50
	.4byte	0x6a1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5367
	.uleb128 0x26
	.4byte	.LASF61
	.byte	0x1
	.byte	0x82
	.4byte	0x2c2
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x4dc
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x48
	.4byte	0x6a6
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x49
	.4byte	0x6a6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x4f7
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x3e
	.4byte	.LLST8
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x589
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x61
	.4byte	0x3e
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x62
	.4byte	0x6a6
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x63
	.4byte	0x6ac
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x64
	.4byte	0x2c2
	.uleb128 0x25
	.4byte	.LVL32
	.4byte	0x922
	.4byte	0x559
	.uleb128 0x21
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
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0x292
	.uleb128 0x22
	.4byte	.LVL34
	.4byte	0x92d
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0x938
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x5c5
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x83
	.4byte	0x3e
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0x943
	.4byte	0x5b3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x94e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x5ec
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x91
	.4byte	0x3e
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0x917
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0x959
	.uleb128 0x25
	.4byte	.LVL13
	.4byte	0x964
	.4byte	0x609
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL25
	.4byte	0x92d
	.uleb128 0x25
	.4byte	.LVL26
	.4byte	0x938
	.4byte	0x632
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x901
	.4byte	0x649
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0x96f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
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
	.4byte	0x67a
	.uleb128 0x2c
	.4byte	0x9b
	.4byte	0x44c
	.byte	0
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0x238
	.4byte	0x691
	.uleb128 0x2d
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x72
	.sleb128 -1
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x6a1
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x691
	.uleb128 0x5
	.byte	0x4
	.4byte	0x191
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6b2
	.uleb128 0x6
	.4byte	0x14d
	.uleb128 0x18
	.4byte	0x2dd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80d
	.uleb128 0x1d
	.4byte	0x2ed
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	0x2f8
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	0x303
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	0x30e
	.sleb128 -1
	.uleb128 0x1a
	.4byte	0x319
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	0x324
	.uleb128 0x2f
	.4byte	0x32f
	.uleb128 0x1b
	.4byte	0x336
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$5402
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1d
	.4byte	0x303
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	0x2f8
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	0x2ed
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1a
	.4byte	0x30e
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	0x319
	.uleb128 0x1a
	.4byte	0x324
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	0x32f
	.uleb128 0x1b
	.4byte	0x336
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$5402
	.uleb128 0x25
	.4byte	.LVL66
	.4byte	0x978
	.4byte	0x76e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x25
	.4byte	.LVL68
	.4byte	0x96f
	.4byte	0x78d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0x922
	.4byte	0x7a1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL71
	.4byte	0x90c
	.4byte	0x7be
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x25
	.4byte	.LVL72
	.4byte	0x917
	.4byte	0x7d2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0x983
	.4byte	0x7e6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL75
	.4byte	0x98e
	.4byte	0x7fa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL83
	.4byte	0x999
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF87
	.byte	0x1
	.byte	0x9d
	.4byte	0xdc
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88d
	.uleb128 0x31
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9d
	.4byte	0xd1
	.4byte	.LLST20
	.uleb128 0x32
	.string	"end"
	.byte	0x1
	.byte	0x9d
	.4byte	0xd1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.4byte	0x3e
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa4
	.4byte	0x88d
	.uleb128 0x1e
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa7
	.4byte	0x342
	.uleb128 0x22
	.4byte	.LVL89
	.4byte	0x2dd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x893
	.uleb128 0x6
	.4byte	0x191
	.uleb128 0x33
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.uleb128 0xa
	.4byte	0x14d
	.4byte	0x8b5
	.uleb128 0x34
	.byte	0
	.uleb128 0x35
	.4byte	.LASF62
	.byte	0x8
	.byte	0x43
	.4byte	0x8c0
	.uleb128 0x6
	.4byte	0x8aa
	.uleb128 0xa
	.4byte	0x191
	.4byte	0x8d0
	.uleb128 0x34
	.byte	0
	.uleb128 0x35
	.4byte	.LASF63
	.byte	0x8
	.byte	0x50
	.4byte	0x8db
	.uleb128 0x6
	.4byte	0x8c5
	.uleb128 0x35
	.4byte	.LASF64
	.byte	0x8
	.byte	0x51
	.4byte	0x8eb
	.uleb128 0x6
	.4byte	0x25
	.uleb128 0x36
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1e
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps
	.uleb128 0x37
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0xb
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x7
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x7
	.byte	0x65
	.uleb128 0x37
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x9
	.byte	0xcb
	.uleb128 0x37
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xc
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xd
	.byte	0xde
	.uleb128 0x37
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xa
	.byte	0x33
	.uleb128 0x37
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x7
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x8
	.byte	0x8c
	.uleb128 0x37
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x86
	.uleb128 0x38
	.4byte	.LASF88
	.4byte	.LASF88
	.uleb128 0x37
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xe
	.byte	0x37
	.uleb128 0x37
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.byte	0x20
	.uleb128 0x37
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.byte	0x24
	.uleb128 0x37
	.4byte	.LASF79
	.4byte	.LASF79
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x8
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL60
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
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
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL84
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"heap_caps_malloc"
.LASF82:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/heap"
.LASF53:
	.string	"registered_heaps_write_lock"
.LASF56:
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
.LASF65:
	.string	"registered_heaps"
.LASF74:
	.string	"soc_get_available_memory_region_max_count"
.LASF7:
	.string	"__uint32_t"
.LASF84:
	.string	"register_heap"
.LASF11:
	.string	"_lock_t"
.LASF88:
	.string	"memcpy"
.LASF35:
	.string	"sle_next"
.LASF67:
	.string	"multi_heap_register"
.LASF10:
	.string	"__intptr_t"
.LASF86:
	.string	"done"
.LASF78:
	.string	"_lock_release"
.LASF26:
	.string	"soc_memory_type_desc_t"
.LASF37:
	.string	"heap"
.LASF79:
	.string	"free"
.LASF85:
	.string	"heap_caps_add_region_with_caps"
.LASF77:
	.string	"_lock_acquire"
.LASF62:
	.string	"soc_memory_types"
.LASF18:
	.string	"intptr_t"
.LASF8:
	.string	"long long int"
.LASF49:
	.string	"heap_size"
.LASF12:
	.string	"long int"
.LASF63:
	.string	"soc_memory_regions"
.LASF46:
	.string	"ESP_LOG_INFO"
.LASF72:
	.string	"heap_caps_match"
.LASF30:
	.string	"iram_address"
.LASF21:
	.string	"name"
.LASF22:
	.string	"caps"
.LASF3:
	.string	"unsigned char"
.LASF60:
	.string	"heap_idx"
.LASF57:
	.string	"regions"
.LASF50:
	.string	"__func__"
.LASF32:
	.string	"owner"
.LASF54:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"heap_mux"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF58:
	.string	"num_heaps"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"registered_heap_ll"
.LASF64:
	.string	"soc_memory_region_count"
.LASF42:
	.string	"slh_first"
.LASF27:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF71:
	.string	"ets_printf"
.LASF23:
	.string	"aliased_iram"
.LASF40:
	.string	"heap_t_"
.LASF15:
	.string	"char"
.LASF52:
	.string	"p_new"
.LASF47:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF43:
	.string	"ESP_LOG_NONE"
.LASF25:
	.string	"_Bool"
.LASF68:
	.string	"multi_heap_set_lock"
.LASF69:
	.string	"vPortCPUInitializeMutex"
.LASF24:
	.string	"startup_stack"
.LASF73:
	.string	"multi_heap_malloc"
.LASF55:
	.string	"heap_caps_init"
.LASF20:
	.string	"multi_heap_handle_t"
.LASF87:
	.string	"heap_caps_add_region"
.LASF17:
	.string	"uint32_t"
.LASF45:
	.string	"ESP_LOG_WARN"
.LASF14:
	.string	"long unsigned int"
.LASF81:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps_init.c"
.LASF31:
	.string	"soc_memory_region_t"
.LASF28:
	.string	"size"
.LASF59:
	.string	"temp_heaps"
.LASF33:
	.string	"count"
.LASF6:
	.string	"__int32_t"
.LASF75:
	.string	"soc_get_available_memory_regions"
.LASF34:
	.string	"portMUX_TYPE"
.LASF70:
	.string	"esp_log_timestamp"
.LASF61:
	.string	"heaps_array"
.LASF66:
	.string	"__assert_func"
.LASF39:
	.string	"heap_t"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF83:
	.string	"multi_heap_info"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
