	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1.13,"ax",@progbits
	.align	4
	.type	get_all_caps, @function
get_all_caps:
.LFB26:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_private.h"
	.loc 1 55 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 56 0
	l32i.n	a9, a2, 28
	.loc 1 57 0
	mov.n	a8, a9
	.loc 1 56 0
	beqz.n	a9, .L2
.LVL1:
.LBB16:
	.loc 1 61 0 discriminator 1
	l32i.n	a8, a2, 4
	l32i.n	a9, a2, 0
	or	a9, a9, a8
.LVL2:
	l32i.n	a8, a2, 8
	or	a8, a9, a8
.LVL3:
.L2:
.LBE16:
	.loc 1 64 0
	mov.n	a2, a8
.LVL4:
	retw.n
.LFE26:
	.size	get_all_caps, .-get_all_caps
	.section	.iram1.21,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB36:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
	.loc 2 241 0
.LVL5:
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 2 244 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL7:
	j	.L5
.L8:
	.loc 2 245 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L6
	.loc 2 245 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L6
	.loc 2 245 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L7
.L6:
	.loc 2 244 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL8:
.L5:
	.loc 2 244 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L8
.L7:
	.loc 2 250 0 is_stmt 1
	mov.n	a2, a8
.LVL9:
	retw.n
.LFE36:
	.size	find_containing_heap, .-find_containing_heap
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB28:
	.loc 2 54 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 2 55 0
	l32i.n	a9, a2, 28
	.loc 2 54 0
	mov.n	a10, a2
	.loc 2 55 0
	mov.n	a2, a9
.LVL11:
	beqz.n	a9, .L14
	.loc 2 55 0 is_stmt 0 discriminator 1
	call8	get_all_caps
.LVL12:
	and	a10, a10, a3
	sub	a3, a10, a3
.LVL13:
	movi.n	a8, 0
	movi.n	a2, 1
	movnez	a2, a8, a3
.L14:
	.loc 2 56 0 is_stmt 1 discriminator 6
	extui	a2, a2, 0, 1
	retw.n
.LFE28:
	.size	heap_caps_match, .-heap_caps_match
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"esp_ptr_in_diram_dram((void *)dstart)"
.LC8:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
.LC11:
	.string	"esp_ptr_in_diram_dram((void *)dend)"
.LC13:
	.string	"(dstart & 3) == 0"
.LC15:
	.string	"(dend & 3) == 0"
	.section	.iram1.15,"ax",@progbits
	.literal_position
	.literal .LC1, 4194304
	.literal .LC2, registered_heaps
	.literal .LC3, -1073610752
	.literal .LC4, 131067
	.literal .LC6, .LC5
	.literal .LC7, __func__$5076
	.literal .LC9, .LC8
	.literal .LC10, -1073610756
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, -2146828292
	.align	4
	.global	heap_caps_malloc
	.type	heap_caps_malloc, @function
heap_caps_malloc:
.LFB29:
	.loc 2 62 0
.LVL14:
	entry	sp, 48
.LCFI3:
.LVL15:
	.loc 2 65 0
	l32r	a4, .LC1
	bgeu	a4, a2, .L17
.LVL16:
.L20:
	.loc 2 68 0
	movi.n	a2, 0
.LVL17:
	retw.n
.LVL18:
.L17:
	.loc 2 71 0
	bbci	a3, 0, .L19
	.loc 2 76 0
	movi.n	a4, 0xc
	bany	a3, a4, .L20
	.loc 2 79 0
	movi.n	a4, 2
	or	a3, a3, a4
.LVL19:
.L19:
	.loc 2 82 0
	bbci	a3, 1, .L21
	.loc 2 86 0
	addi.n	a2, a2, 3
.LVL20:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL21:
.L21:
.LBB27:
	.loc 2 89 0
	movi.n	a4, 0
.LVL22:
.L31:
.LBB28:
	.loc 2 92 0
	l32r	a5, .LC2
	l32i.n	a7, a5, 0
.LVL23:
	.loc 2 96 0
	slli	a5, a4, 2
	.loc 2 92 0
	j	.L22
.L30:
	.loc 2 93 0
	l32i.n	a12, a7, 28
	bnez.n	a12, .L23
.L24:
	.loc 2 92 0
	l32i.n	a7, a7, 32
.LVL24:
	j	.L22
.L23:
	.loc 2 96 0
	add.n	a6, a7, a5
	l32i.n	a6, a6, 0
	bnone	a3, a6, .L24
	.loc 2 99 0
	mov.n	a10, a7
	s32i.n	a12, sp, 0
	call8	get_all_caps
.LVL25:
	and	a10, a3, a10
	l32i.n	a12, sp, 0
	bne	a3, a10, .L24
	.loc 2 101 0
	bbci	a3, 0, .L25
.LVL26:
	.loc 2 101 0 is_stmt 0 discriminator 1
	l32i.n	a8, a7, 12
	l32r	a6, .LC3
	l32r	a9, .LC4
	add.n	a8, a8, a6
	bltu	a9, a8, .L25
	.loc 2 105 0 is_stmt 1
	addi.n	a6, a2, 4
	mov.n	a11, a6
	mov.n	a10, a12
	s32i.n	a9, sp, 0
.LVL27:
	call8	multi_heap_malloc
.LVL28:
	.loc 2 106 0
	l32i.n	a9, sp, 0
	beqz.n	a10, .L24
.LVL29:
.LBB29:
.LBB30:
	.loc 2 43 0
	l32r	a2, .LC3
.LVL30:
	.loc 2 42 0
	add.n	a8, a6, a10
	.loc 2 43 0
	add.n	a6, a10, a2
.LVL31:
	.loc 2 42 0
	addi	a4, a8, -4
.LVL32:
	.loc 2 43 0
	bgeu	a9, a6, .L26
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi.n	a11, 0x2b
	j	.L49
.L26:
.LVL33:
	.loc 2 44 0
	l32r	a3, .LC10
.LVL34:
	add.n	a8, a8, a3
	bgeu	a9, a8, .L27
	l32r	a13, .LC12
	l32r	a12, .LC7
	movi.n	a11, 0x2c
.LVL35:
.L49:
	l32r	a10, .LC9
.LVL36:
	call8	__assert_func
.LVL37:
.L27:
	.loc 2 45 0
	extui	a2, a10, 0, 2
	beqz.n	a2, .L28
	l32r	a13, .LC14
	l32r	a12, .LC7
	movi.n	a11, 0x2d
	j	.L49
.L28:
	.loc 2 46 0
	extui	a2, a4, 0, 2
	beqz.n	a2, .L29
	l32r	a13, .LC16
	l32r	a12, .LC7
	movi.n	a11, 0x2e
	j	.L49
.L29:
.LVL38:
	.loc 2 48 0
	l32r	a2, .LC17
	sub	a2, a2, a4
.LVL39:
	.loc 2 49 0
	s32i.n	a10, a2, 0
	.loc 2 50 0
	addi.n	a2, a2, 4
.LVL40:
.LBE30:
.LBE29:
	.loc 2 107 0
	retw.n
.LVL41:
.L25:
	.loc 2 111 0
	mov.n	a11, a2
	mov.n	a10, a12
	call8	multi_heap_malloc
.LVL42:
	.loc 2 112 0
	beqz.n	a10, .L24
	j	.L32
.LVL43:
.L22:
	.loc 2 92 0 discriminator 1
	bnez.n	a7, .L30
.LBE28:
	.loc 2 89 0 discriminator 2
	addi.n	a4, a4, 1
.LVL44:
	bnei	a4, 3, .L31
	j	.L20
.LVL45:
.L32:
.LBB31:
	.loc 2 111 0
	mov.n	a2, a10
.LVL46:
.LBE31:
.LBE27:
	.loc 2 122 0
	retw.n
.LFE29:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.section	.text.heap_caps_malloc_extmem_enable,"ax",@progbits
	.literal_position
	.literal .LC18, malloc_alwaysinternal_limit
	.align	4
	.global	heap_caps_malloc_extmem_enable
	.type	heap_caps_malloc_extmem_enable, @function
heap_caps_malloc_extmem_enable:
.LFB30:
	.loc 2 130 0
.LVL47:
	entry	sp, 32
.LCFI4:
	.loc 2 131 0
	l32r	a8, .LC18
	s32i.n	a2, a8, 0
	retw.n
.LFE30:
	.size	heap_caps_malloc_extmem_enable, .-heap_caps_malloc_extmem_enable
	.section	.iram1.16,"ax",@progbits
	.literal_position
	.literal .LC19, malloc_alwaysinternal_limit
	.literal .LC20, 6144
	.literal .LC21, 5120
	.literal .LC22, 4096
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB31:
	.loc 2 138 0
.LVL48:
	entry	sp, 32
.LCFI5:
	.loc 2 139 0
	l32r	a8, .LC19
	.loc 2 140 0
	l32r	a11, .LC20
	.loc 2 139 0
	l32i.n	a8, a8, 0
	beqi	a8, -1, .L58
.L52:
.LBB32:
	.loc 2 144 0
	l32r	a11, .LC20
	.loc 2 143 0
	bgeu	a8, a2, .L57
.L54:
	.loc 2 146 0
	l32r	a11, .LC21
.L57:
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL49:
	.loc 2 148 0
	bnez.n	a10, .L53
	.loc 2 150 0
	l32r	a11, .LC22
.LVL50:
.L58:
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL51:
.L53:
.LBE32:
	.loc 2 154 0
	mov.n	a2, a10
.LVL52:
	retw.n
.LFE31:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.section	.iram1.18,"ax",@progbits
	.align	4
	.global	heap_caps_malloc_prefer
	.type	heap_caps_malloc_prefer, @function
heap_caps_malloc_prefer:
.LFB33:
	.loc 2 183 0
.LVL53:
	entry	sp, 80
.LCFI6:
	.loc 2 185 0
	s32i.n	a4, sp, 24
	addi	a4, sp, 16
	s32i.n	a4, sp, 4
	addi	a4, sp, 48
	s32i.n	a4, sp, 0
	movi.n	a4, 8
	s32i.n	a4, sp, 8
.LVL54:
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB33:
	.loc 2 188 0
	movi.n	a4, 0x18
.LBE33:
	.loc 2 187 0
	j	.L60
.LVL55:
.L65:
.LBB34:
	.loc 2 188 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a4, a9, .L61
	.loc 2 188 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L62
.L61:
	.loc 2 188 0 discriminator 1
	blt	a4, a8, .L63
	.loc 2 188 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L63:
	.loc 2 188 0 discriminator 6
	l32i.n	a9, sp, 0
.L62:
.LVL56:
	.loc 2 188 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 189 0 discriminator 7
	mov.n	a10, a2
	.loc 2 188 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 189 0 discriminator 7
	l32i.n	a11, a8, 0
	addi.n	a3, a3, -1
.LVL57:
	call8	heap_caps_malloc
.LVL58:
	.loc 2 190 0 discriminator 7
	bnez.n	a10, .L64
.LVL59:
.L60:
.LBE34:
	.loc 2 187 0
	bnez.n	a3, .L65
	mov.n	a10, a3
.LVL60:
.L64:
	.loc 2 196 0
	mov.n	a2, a10
.LVL61:
	retw.n
.LFE33:
	.size	heap_caps_malloc_prefer, .-heap_caps_malloc_prefer
	.section	.rodata.str1.1
.LC25:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1.22,"ax",@progbits
	.literal_position
	.literal .LC23, -1074397184
	.literal .LC24, 131067
	.literal .LC26, .LC25
	.literal .LC27, __func__$5155
	.literal .LC28, .LC8
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB37:
	.loc 2 253 0
.LVL62:
	entry	sp, 32
.LCFI7:
	.loc 2 254 0
	beqz.n	a2, .L66
.LVL63:
	.loc 2 258 0
	l32r	a8, .LC23
	l32r	a9, .LC24
	add.n	a8, a2, a8
	bltu	a9, a8, .L68
.LVL64:
.LBB43:
	.loc 2 263 0
	addi	a2, a2, -4
.LVL65:
	l32i.n	a2, a2, 0
.LVL66:
.L68:
.LBE43:
	.loc 2 266 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL67:
	.loc 2 267 0
	bnez.n	a10, .L69
.LVL68:
.LBB44:
.LBB45:
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
.LVL69:
	movi	a11, 0x10b
	call8	__assert_func
.LVL70:
.L69:
.LBE45:
.LBE44:
	.loc 2 268 0
	l32i.n	a10, a10, 28
.LVL71:
	mov.n	a11, a2
	call8	multi_heap_free
.LVL72:
.L66:
	retw.n
.LFE37:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.1
.LC30:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
.LC34:
	.string	"old_size > 0"
	.section	.iram1.23,"ax",@progbits
	.literal_position
	.literal .LC29, 4194304
	.literal .LC31, .LC30
	.literal .LC32, __func__$5162
	.literal .LC33, .LC8
	.literal .LC35, .LC34
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB38:
	.loc 2 272 0
.LVL73:
	entry	sp, 32
.LCFI8:
	.loc 2 273 0
	bnez.n	a2, .L74
	.loc 2 274 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL74:
	j	.L75
.L74:
	.loc 2 277 0
	bnez.n	a3, .L76
	.loc 2 278 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL75:
	.loc 2 279 0
	mov.n	a10, a3
	j	.L75
.L76:
	.loc 2 282 0
	l32r	a5, .LC29
	bgeu	a5, a3, .L77
.LVL76:
.L81:
	.loc 2 283 0
	movi.n	a10, 0
	j	.L75
.LVL77:
.L77:
	.loc 2 286 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL78:
	mov.n	a5, a10
.LVL79:
	.loc 2 288 0
	bnez.n	a10, .L78
	.loc 2 288 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0x120
	j	.L85
.L78:
	.loc 2 292 0 is_stmt 1
	call8	get_all_caps
.LVL80:
	.loc 2 294 0
	and	a10, a10, a4
.LVL81:
	beq	a4, a10, .L79
.L82:
	.loc 2 305 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL82:
	mov.n	a4, a10
.LVL83:
	.loc 2 306 0
	bnez.n	a10, .L80
	j	.L81
.LVL84:
.L79:
.LBB46:
	.loc 2 297 0
	l32i.n	a10, a5, 28
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL85:
	.loc 2 298 0
	bnez.n	a10, .L75
	j	.L82
.LVL86:
.L80:
.LBE46:
.LBB47:
	.loc 2 307 0
	l32i.n	a10, a5, 28
	mov.n	a11, a2
	call8	multi_heap_get_allocated_size
.LVL87:
	.loc 2 308 0
	bnez.n	a10, .L83
	.loc 2 308 0 is_stmt 0 discriminator 1
	l32r	a13, .LC35
	l32r	a12, .LC32
	movi	a11, 0x134
.LVL88:
.L85:
	l32r	a10, .LC33
	call8	__assert_func
.LVL89:
.L83:
	.loc 2 309 0 is_stmt 1
	minu	a12, a3, a10
	mov.n	a11, a2
	mov.n	a10, a4
.LVL90:
	call8	memcpy
.LVL91:
	.loc 2 310 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL92:
	.loc 2 311 0
	mov.n	a10, a4
.LVL93:
.L75:
.LBE47:
	.loc 2 314 0
	mov.n	a2, a10
.LVL94:
	retw.n
.LFE38:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.section	.iram1.17,"ax",@progbits
	.literal_position
	.literal .LC36, malloc_alwaysinternal_limit
	.literal .LC37, 6144
	.literal .LC38, 5120
	.literal .LC39, 4096
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB32:
	.loc 2 161 0
.LVL95:
	entry	sp, 32
.LCFI9:
	.loc 2 162 0
	l32r	a8, .LC36
	.loc 2 163 0
	l32r	a12, .LC37
	.loc 2 162 0
	l32i.n	a8, a8, 0
	beqi	a8, -1, .L99
.L87:
.LBB48:
	.loc 2 167 0
	l32r	a12, .LC37
	.loc 2 166 0
	bgeu	a8, a3, .L98
.L89:
	.loc 2 169 0
	l32r	a12, .LC38
.L98:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL96:
	.loc 2 171 0
	bnez.n	a10, .L88
	beqz.n	a3, .L88
	.loc 2 173 0
	l32r	a12, .LC39
.LVL97:
.L99:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL98:
.L88:
.LBE48:
	.loc 2 177 0
	mov.n	a2, a10
.LVL99:
	retw.n
.LFE32:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.section	.iram1.19,"ax",@progbits
	.align	4
	.global	heap_caps_realloc_prefer
	.type	heap_caps_realloc_prefer, @function
heap_caps_realloc_prefer:
.LFB34:
	.loc 2 202 0
.LVL100:
	entry	sp, 80
.LCFI10:
	.loc 2 204 0
	s32i.n	a5, sp, 28
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL101:
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB49:
	.loc 2 207 0
	movi.n	a5, 0x18
.LBE49:
	.loc 2 206 0
	j	.L101
.LVL102:
.L106:
.LBB50:
	.loc 2 207 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a5, a9, .L102
	.loc 2 207 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L103
.L102:
	.loc 2 207 0 discriminator 1
	blt	a5, a8, .L104
	.loc 2 207 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L104:
	.loc 2 207 0 discriminator 6
	l32i.n	a9, sp, 0
.L103:
.LVL103:
	.loc 2 207 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 208 0 discriminator 7
	mov.n	a11, a3
	.loc 2 207 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 208 0 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL104:
	.loc 2 209 0 discriminator 7
	movi.n	a11, 1
	movi.n	a9, 0
	movnez	a9, a11, a10
	extui	a8, a9, 0, 8
	addi.n	a4, a4, -1
.LVL105:
	bnez.n	a8, .L105
	moveqz	a8, a11, a3
	bnez.n	a8, .L105
.LVL106:
.L101:
.LBE50:
	.loc 2 206 0
	bnez.n	a4, .L106
	mov.n	a10, a4
.LVL107:
.L105:
	.loc 2 215 0
	mov.n	a2, a10
.LVL108:
	retw.n
.LFE34:
	.size	heap_caps_realloc_prefer, .-heap_caps_realloc_prefer
	.section	.iram1.24,"ax",@progbits
	.align	4
	.global	heap_caps_calloc
	.type	heap_caps_calloc, @function
heap_caps_calloc:
.LFB39:
	.loc 2 317 0
.LVL109:
	entry	sp, 32
.LCFI11:
	.loc 2 321 0
	mull	a5, a2, a3
	muluh	a2, a2, a3
.LVL110:
	.loc 2 317 0
	mov.n	a11, a4
	.loc 2 321 0
	bnez.n	a2, .L116
	.loc 2 325 0
	mov.n	a10, a5
	call8	heap_caps_malloc
.LVL111:
	mov.n	a3, a10
.LVL112:
	.loc 2 326 0
	beqz.n	a10, .L110
	.loc 2 327 0
	mov.n	a11, a2
	mov.n	a12, a5
	call8	memset
.LVL113:
	mov.n	a2, a3
	retw.n
.LVL114:
.L116:
	.loc 2 322 0
	movi.n	a2, 0
.LVL115:
.L110:
	.loc 2 330 0
	retw.n
.LFE39:
	.size	heap_caps_calloc, .-heap_caps_calloc
	.section	.iram1.20,"ax",@progbits
	.align	4
	.global	heap_caps_calloc_prefer
	.type	heap_caps_calloc_prefer, @function
heap_caps_calloc_prefer:
.LFB35:
	.loc 2 221 0
.LVL116:
	entry	sp, 80
.LCFI12:
	.loc 2 223 0
	s32i.n	a5, sp, 28
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL117:
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB51:
	.loc 2 226 0
	movi.n	a5, 0x18
.LBE51:
	.loc 2 225 0
	j	.L118
.LVL118:
.L123:
.LBB52:
	.loc 2 226 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a5, a9, .L119
	.loc 2 226 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L120
.L119:
	.loc 2 226 0 discriminator 1
	blt	a5, a8, .L121
	.loc 2 226 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L121:
	.loc 2 226 0 discriminator 6
	l32i.n	a9, sp, 0
.L120:
.LVL119:
	.loc 2 226 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 227 0 discriminator 7
	mov.n	a11, a3
	.loc 2 226 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 227 0 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a10, a2
	call8	heap_caps_calloc
.LVL120:
	addi.n	a4, a4, -1
.LVL121:
	.loc 2 228 0 discriminator 7
	bnez.n	a10, .L122
.LVL122:
.L118:
.LBE52:
	.loc 2 225 0
	bnez.n	a4, .L123
	mov.n	a10, a4
.LVL123:
.L122:
	.loc 2 232 0
	mov.n	a2, a10
.LVL124:
	retw.n
.LFE35:
	.size	heap_caps_calloc_prefer, .-heap_caps_calloc_prefer
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC40, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB40:
	.loc 2 333 0
.LVL125:
	entry	sp, 32
.LCFI13:
.LVL126:
	.loc 2 333 0
	mov.n	a4, a2
	.loc 2 336 0
	l32r	a2, .LC40
.LVL127:
	l32i.n	a3, a2, 0
.LVL128:
	.loc 2 334 0
	movi.n	a2, 0
	.loc 2 336 0
	j	.L125
.LVL129:
.L127:
	.loc 2 337 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_match
.LVL130:
	beqz.n	a10, .L126
	.loc 2 338 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL131:
	add.n	a2, a2, a10
.LVL132:
.L126:
	.loc 2 336 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL133:
.L125:
	.loc 2 336 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L127
	.loc 2 342 0 is_stmt 1
	retw.n
.LFE40:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC41, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB41:
	.loc 2 345 0
.LVL134:
	entry	sp, 32
.LCFI14:
.LVL135:
	.loc 2 345 0
	mov.n	a4, a2
	.loc 2 348 0
	l32r	a2, .LC41
.LVL136:
	l32i.n	a3, a2, 0
.LVL137:
	.loc 2 346 0
	movi.n	a2, 0
	.loc 2 348 0
	j	.L132
.LVL138:
.L134:
	.loc 2 349 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_match
.LVL139:
	beqz.n	a10, .L133
	.loc 2 350 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL140:
	add.n	a2, a2, a10
.LVL141:
.L133:
	.loc 2 348 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL142:
.L132:
	.loc 2 348 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L134
	.loc 2 354 0 is_stmt 1
	retw.n
.LFE41:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC42, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB43:
	.loc 2 364 0
.LVL143:
	entry	sp, 64
.LCFI15:
	.loc 2 365 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL144:
	.loc 2 368 0
	l32r	a4, .LC42
	l32i.n	a4, a4, 0
.LVL145:
	j	.L139
.L141:
	.loc 2 369 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL146:
	beqz.n	a10, .L140
.LBB53:
	.loc 2 371 0
	l32i.n	a10, a4, 28
	mov.n	a11, sp
	call8	multi_heap_get_info
.LVL147:
	.loc 2 373 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 2 374 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 2 375 0
	l32i.n	a9, a2, 8
	l32i.n	a8, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 2 377 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 2 378 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 2 379 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 2 380 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L140:
.LBE53:
	.loc 2 368 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL148:
.L139:
	.loc 2 368 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L141
	.loc 2 383 0 is_stmt 1
	retw.n
.LFE43:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB42:
	.loc 2 357 0
.LVL149:
	entry	sp, 64
.LCFI16:
	.loc 2 359 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL150:
	.loc 2 361 0
	l32i.n	a2, sp, 8
.LVL151:
	retw.n
.LFE42:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.1
.LC43:
	.string	"Heap summary for capabilities 0x%08X:\n"
.LC46:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
.LC48:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
.LC50:
	.string	"  Totals:"
.LC52:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC44, .LC43
	.literal .LC45, registered_heaps
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB44:
	.loc 2 386 0
.LVL152:
	entry	sp, 64
.LCFI17:
	.loc 2 388 0
	l32r	a10, .LC44
	mov.n	a11, a2
	call8	printf
.LVL153:
	.loc 2 390 0
	l32r	a3, .LC45
	l32i.n	a3, a3, 0
.LVL154:
	j	.L147
.L149:
	.loc 2 391 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL155:
	beqz.n	a10, .L148
	.loc 2 392 0
	l32i.n	a10, a3, 28
	mov.n	a11, sp
	call8	multi_heap_get_info
.LVL156:
	.loc 2 395 0
	l32i.n	a11, a3, 12
	.loc 2 394 0
	l32i.n	a12, a3, 16
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	l32i.n	a15, sp, 12
	l32r	a10, .LC47
	sub	a12, a12, a11
	call8	printf
.LVL157:
	.loc 2 396 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC49
	call8	printf
.LVL158:
.L148:
	.loc 2 390 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL159:
.L147:
	.loc 2 390 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L149
	.loc 2 401 0 is_stmt 1
	l32r	a10, .LC51
	call8	puts
.LVL160:
	.loc 2 402 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL161:
	.loc 2 404 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC53
	call8	printf
.LVL162:
	retw.n
.LFE44:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC54, -2147483648
	.literal .LC55, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB45:
	.loc 2 408 0
.LVL163:
	entry	sp, 32
.LCFI18:
	.loc 2 409 0
	l32r	a5, .LC54
	.loc 2 408 0
	mov.n	a6, a2
	.loc 2 409 0
	and	a5, a2, a5
.LVL164:
	.loc 2 413 0
	l32r	a2, .LC55
.LVL165:
	.loc 2 408 0
	extui	a3, a3, 0, 8
	.loc 2 413 0
	l32i.n	a4, a2, 0
.LVL166:
	.loc 2 410 0
	movi.n	a2, 1
	.loc 2 413 0
	j	.L154
.LVL167:
.L157:
	.loc 2 414 0
	l32i.n	a7, a4, 28
	beqz.n	a7, .L155
	.loc 2 415 0
	bnez.n	a5, .L156
	.loc 2 415 0 is_stmt 0 discriminator 1
	mov.n	a10, a4
	call8	get_all_caps
.LVL168:
	and	a10, a6, a10
	bne	a6, a10, .L155
.L156:
	.loc 2 416 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a7
	call8	multi_heap_check
.LVL169:
	and	a2, a2, a10
.LVL170:
.L155:
	.loc 2 413 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL171:
.L154:
	.loc 2 413 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L157
	.loc 2 421 0 is_stmt 1
	retw.n
.LFE45:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.text.heap_caps_check_integrity_all,"ax",@progbits
	.literal_position
	.literal .LC56, -2147483648
	.align	4
	.global	heap_caps_check_integrity_all
	.type	heap_caps_check_integrity_all, @function
heap_caps_check_integrity_all:
.LFB46:
	.loc 2 424 0
.LVL172:
	entry	sp, 32
.LCFI19:
	.loc 2 425 0
	l32r	a10, .LC56
	extui	a11, a2, 0, 8
	call8	heap_caps_check_integrity
.LVL173:
	.loc 2 426 0
	mov.n	a2, a10
.LVL174:
	retw.n
.LFE46:
	.size	heap_caps_check_integrity_all, .-heap_caps_check_integrity_all
	.section	.text.heap_caps_check_integrity_addr,"ax",@progbits
	.align	4
	.global	heap_caps_check_integrity_addr
	.type	heap_caps_check_integrity_addr, @function
heap_caps_check_integrity_addr:
.LFB47:
	.loc 2 429 0
.LVL175:
	entry	sp, 32
.LCFI20:
	.loc 2 430 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL176:
	.loc 2 432 0
	movi.n	a2, 0
.LVL177:
	.loc 2 429 0
	extui	a3, a3, 0, 8
	.loc 2 431 0
	beq	a10, a2, .L163
	.loc 2 434 0
	l32i.n	a10, a10, 28
.LVL178:
	mov.n	a11, a3
	call8	multi_heap_check
.LVL179:
	mov.n	a2, a10
.L163:
	.loc 2 435 0
	retw.n
.LFE47:
	.size	heap_caps_check_integrity_addr, .-heap_caps_check_integrity_addr
	.section	.text.heap_caps_dump,"ax",@progbits
	.literal_position
	.literal .LC57, -2147483648
	.literal .LC58, registered_heaps
	.align	4
	.global	heap_caps_dump
	.type	heap_caps_dump, @function
heap_caps_dump:
.LFB48:
	.loc 2 438 0
.LVL180:
	entry	sp, 32
.LCFI21:
	.loc 2 439 0
	l32r	a4, .LC57
	.loc 2 441 0
	l32r	a3, .LC58
	.loc 2 439 0
	and	a4, a2, a4
.LVL181:
	.loc 2 441 0
	l32i.n	a3, a3, 0
.LVL182:
	j	.L167
.L170:
	.loc 2 442 0
	l32i.n	a5, a3, 28
	beqz.n	a5, .L168
	.loc 2 443 0
	bnez.n	a4, .L169
	.loc 2 443 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	get_all_caps
.LVL183:
	and	a10, a2, a10
	bne	a2, a10, .L168
.L169:
	.loc 2 444 0 is_stmt 1
	mov.n	a10, a5
	call8	multi_heap_dump
.LVL184:
.L168:
	.loc 2 441 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL185:
.L167:
	.loc 2 441 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L170
	.loc 2 447 0 is_stmt 1
	retw.n
.LFE48:
	.size	heap_caps_dump, .-heap_caps_dump
	.section	.text.heap_caps_dump_all,"ax",@progbits
	.literal_position
	.literal .LC59, -2147483648
	.align	4
	.global	heap_caps_dump_all
	.type	heap_caps_dump_all, @function
heap_caps_dump_all:
.LFB49:
	.loc 2 450 0
	entry	sp, 32
.LCFI22:
	.loc 2 451 0
	l32r	a10, .LC59
	call8	heap_caps_dump
.LVL186:
	retw.n
.LFE49:
	.size	heap_caps_dump_all, .-heap_caps_dump_all
	.section	.rodata.__func__$5162,"a",@progbits
	.type	__func__$5162, @object
	.size	__func__$5162, 18
__func__$5162:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$5155,"a",@progbits
	.type	__func__$5155, @object
	.size	__func__$5155, 15
__func__$5155:
	.string	"heap_caps_free"
	.section	.rodata.__func__$5076,"a",@progbits
	.type	__func__$5076, @object
	.size	__func__$5076, 24
__func__$5076:
	.string	"dram_alloc_to_iram_addr"
	.section	.data.malloc_alwaysinternal_limit,"aw",@progbits
	.align	4
	.type	malloc_alwaysinternal_limit, @object
	.size	malloc_alwaysinternal_limit, 4
malloc_alwaysinternal_limit:
	.word	-1
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI1-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
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
	.uleb128 0x30
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI6-.LFB33
	.byte	0xe
	.uleb128 0x50
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI10-.LFB34
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI11-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI12-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI13-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI14-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI15-.LFB43
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI17-.LFB44
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI18-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI19-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI20-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI21-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI22-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/multi_heap.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x106a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x32
	.4byte	0x37
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0xea
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0
	.4byte	0x97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0xaa
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x1e
	.4byte	0x116
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xa
	.4byte	.LASF111
	.uleb128 0xb
	.byte	0x1c
	.byte	0x8
	.byte	0x96
	.4byte	0x17e
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.byte	0x97
	.4byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x8
	.byte	0x98
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.byte	0x99
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x8
	.byte	0x9a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x9b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x9d
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x9e
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x62
	.4byte	0xae
	.uleb128 0xc
	.4byte	0xea
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0xb
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x9
	.byte	0x8a
	.4byte	0xea
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x9
	.byte	0x8f
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x94
	.4byte	0x1ab
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.4byte	0x1ec
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.4byte	0x241
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x24
	.byte	0x1
	.byte	0x22
	.4byte	0x241
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.4byte	0x194
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x24
	.4byte	0xf5
	.byte	0xc
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x25
	.4byte	0xf5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x1cc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x27
	.4byte	0x10b
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1
	.byte	0x28
	.4byte	0x1d7
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x1
	.byte	0x29
	.4byte	0x1ec
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.byte	0x1
	.byte	0x31
	.4byte	0x26b
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x31
	.4byte	0x241
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0xa
	.byte	0xca
	.4byte	0x1a4
	.byte	0x3
	.4byte	0x285
	.uleb128 0x10
	.string	"p"
	.byte	0xa
	.byte	0xca
	.4byte	0xa7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0xa
	.byte	0xce
	.4byte	0x1a4
	.byte	0x3
	.4byte	0x29f
	.uleb128 0x10
	.string	"p"
	.byte	0xa
	.byte	0xce
	.4byte	0xa7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x2
	.byte	0xfc
	.byte	0x1
	.4byte	0x2de
	.uleb128 0x10
	.string	"ptr"
	.byte	0x2
	.byte	0xfc
	.4byte	0x97
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x10a
	.4byte	0x2de
	.uleb128 0x13
	.4byte	.LASF49
	.4byte	0x2f4
	.4byte	.LASF59
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x106
	.4byte	0x2f9
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x247
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0x2f4
	.uleb128 0xd
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	0x2e4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xea
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x36
	.4byte	0xea
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x350
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x36
	.4byte	0x350
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x3b
	.4byte	0xea
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x356
	.uleb128 0x15
	.4byte	0x247
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x2
	.byte	0xf0
	.4byte	0x2de
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39e
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x2
	.byte	0xf0
	.4byte	0x97
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.byte	0xf2
	.4byte	0xf5
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x2
	.byte	0xf3
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x2
	.byte	0x35
	.4byte	0x1a4
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e7
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x2
	.byte	0x35
	.4byte	0x350
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x35
	.4byte	0xea
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0x2ff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x2
	.byte	0x27
	.4byte	0x97
	.byte	0x1
	.4byte	0x447
	.uleb128 0x20
	.4byte	.LASF56
	.byte	0x2
	.byte	0x27
	.4byte	0x97
	.uleb128 0x10
	.string	"len"
	.byte	0x2
	.byte	0x27
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x2
	.byte	0x29
	.4byte	0x100
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x2
	.byte	0x2a
	.4byte	0x100
	.uleb128 0x13
	.4byte	.LASF49
	.4byte	0x457
	.4byte	.LASF55
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x2
	.byte	0x2f
	.4byte	0xea
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x2
	.byte	0x30
	.4byte	0x2f9
	.byte	0
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0x457
	.uleb128 0xd
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.4byte	0x447
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x2
	.byte	0x3d
	.4byte	0x97
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x579
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x2
	.byte	0x3d
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x3d
	.4byte	0xea
	.4byte	.LLST8
	.uleb128 0x1b
	.string	"ret"
	.byte	0x2
	.byte	0x3f
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x2
	.byte	0x59
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x2
	.byte	0x5b
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	0x3e7
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x2
	.byte	0x6b
	.4byte	0x53e
	.uleb128 0x24
	.4byte	0x402
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	0x3f7
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x25
	.4byte	0x40d
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0x418
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	0x430
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	0x43b
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	0x423
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5076
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0xfd3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0x2ff
	.4byte	0x552
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL28
	.4byte	0xfde
	.4byte	0x566
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0xfde
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF81
	.byte	0x2
	.byte	0x81
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59c
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x2
	.byte	0x81
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x2
	.byte	0x89
	.4byte	0x97
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x600
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x2
	.byte	0x89
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x1b
	.string	"r"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LVL49
	.4byte	0x45c
	.4byte	0x5ee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL51
	.4byte	0x45c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x2
	.byte	0xb6
	.4byte	0x97
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67a
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x2
	.byte	0xb6
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x1a
	.string	"num"
	.byte	0x2
	.byte	0xb6
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x2a
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x2
	.byte	0xb8
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"r"
	.byte	0x2
	.byte	0xba
	.4byte	0x97
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x2
	.byte	0xbc
	.4byte	0xea
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LVL58
	.4byte	0x45c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x29f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73f
	.uleb128 0x24
	.4byte	0x2ab
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	0x2b6
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	0x2c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5155
	.uleb128 0x2c
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x6c1
	.uleb128 0x25
	.4byte	0x2d0
	.4byte	.LLST25
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x71a
	.uleb128 0x2d
	.4byte	0x2ab
	.uleb128 0x19
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x2e
	.4byte	0x2b6
	.uleb128 0x26
	.4byte	0x2c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5155
	.uleb128 0x1e
	.4byte	.LVL70
	.4byte	0xfd3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5155
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL67
	.4byte	0x35b
	.4byte	0x72e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL72
	.4byte	0xfe9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x10f
	.4byte	0x97
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cd
	.uleb128 0x30
	.string	"ptr"
	.byte	0x2
	.2byte	0x10f
	.4byte	0x97
	.4byte	.LLST26
	.uleb128 0x31
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x10f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x10f
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x33
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x11e
	.4byte	0x2de
	.4byte	.LLST28
	.uleb128 0x34
	.4byte	.LASF49
	.4byte	0x8dd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5162
	.uleb128 0x33
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x124
	.4byte	0x1a4
	.4byte	.LLST29
	.uleb128 0x33
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x131
	.4byte	0x97
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0x7f8
	.uleb128 0x35
	.string	"r"
	.byte	0x2
	.2byte	0x129
	.4byte	0x97
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LVL85
	.4byte	0xff4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x86b
	.uleb128 0x33
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x133
	.4byte	0x2c
	.4byte	.LLST32
	.uleb128 0x27
	.4byte	.LVL87
	.4byte	0xfff
	.4byte	0x829
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0xfd3
	.4byte	0x840
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x100a
	.4byte	0x85a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL92
	.4byte	0x29f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL74
	.4byte	0x45c
	.4byte	0x885
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL75
	.4byte	0x29f
	.4byte	0x899
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x35b
	.4byte	0x8ad
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL80
	.4byte	0x2ff
	.uleb128 0x1e
	.4byte	.LVL82
	.4byte	0x45c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0x8dd
	.uleb128 0xd
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x15
	.4byte	0x8cd
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x2
	.byte	0xa0
	.4byte	0x97
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95f
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x2
	.byte	0xa0
	.4byte	0x97
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LASF64
	.byte	0x2
	.byte	0xa0
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x1b
	.string	"r"
	.byte	0x2
	.byte	0xa5
	.4byte	0x97
	.4byte	.LLST34
	.uleb128 0x27
	.4byte	.LVL96
	.4byte	0x73f
	.4byte	0x947
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL98
	.4byte	0x73f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x2
	.byte	0xc9
	.4byte	0x97
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ec
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x2
	.byte	0xc9
	.4byte	0x97
	.4byte	.LLST35
	.uleb128 0x29
	.4byte	.LASF64
	.byte	0x2
	.byte	0xc9
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"num"
	.byte	0x2
	.byte	0xc9
	.4byte	0x2c
	.4byte	.LLST36
	.uleb128 0x2a
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x2
	.byte	0xcb
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"r"
	.byte	0x2
	.byte	0xcd
	.4byte	0x97
	.4byte	.LLST37
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x2
	.byte	0xcf
	.4byte	0xea
	.4byte	.LLST38
	.uleb128 0x1e
	.4byte	.LVL104
	.4byte	0x73f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x13c
	.4byte	0x97
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa85
	.uleb128 0x30
	.string	"n"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LLST39
	.uleb128 0x32
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x13c
	.4byte	0xea
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x13e
	.4byte	0x97
	.4byte	.LLST41
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x13f
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LVL111
	.4byte	0x45c
	.4byte	0xa68
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL113
	.4byte	0x1013
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x2
	.byte	0xdc
	.4byte	0x97
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb10
	.uleb128 0x1a
	.string	"n"
	.byte	0x2
	.byte	0xdc
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x29
	.4byte	.LASF64
	.byte	0x2
	.byte	0xdc
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"num"
	.byte	0x2
	.byte	0xdc
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x2a
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x2
	.byte	0xde
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"r"
	.byte	0x2
	.byte	0xe0
	.4byte	0x97
	.4byte	.LLST44
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x2
	.byte	0xe2
	.4byte	0xea
	.4byte	.LLST45
	.uleb128 0x1e
	.4byte	.LVL120
	.4byte	0x9ec
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x14c
	.4byte	0x2c
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7c
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x14c
	.4byte	0xea
	.4byte	.LLST46
	.uleb128 0x35
	.string	"ret"
	.byte	0x2
	.2byte	0x14e
	.4byte	0x2c
	.4byte	.LLST47
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x14f
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL130
	.4byte	0x39e
	.4byte	0xb72
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL131
	.4byte	0x101c
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x158
	.4byte	0x2c
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe8
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x158
	.4byte	0xea
	.4byte	.LLST48
	.uleb128 0x35
	.string	"ret"
	.byte	0x2
	.2byte	0x15a
	.4byte	0x2c
	.4byte	.LLST49
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x15b
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL139
	.4byte	0x39e
	.4byte	0xbde
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL140
	.4byte	0x1027
	.byte	0
	.uleb128 0x38
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x16b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8a
	.uleb128 0x31
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x16b
	.4byte	0xc8a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x16b
	.4byte	0xea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x16f
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0xc55
	.uleb128 0x37
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x172
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LVL147
	.4byte	0x1032
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL144
	.4byte	0x1013
	.4byte	0xc73
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL146
	.4byte	0x39e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x2f
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x164
	.4byte	0x2c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x164
	.4byte	0xea
	.4byte	.LLST50
	.uleb128 0x37
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x166
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LVL150
	.4byte	0xbe8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x181
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddf
	.uleb128 0x31
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x181
	.4byte	0xea
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x183
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x185
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL153
	.4byte	0x103d
	.4byte	0xd3e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL155
	.4byte	0x39e
	.4byte	0xd58
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL156
	.4byte	0x1032
	.4byte	0xd6c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL157
	.4byte	0x103d
	.4byte	0xd83
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x27
	.4byte	.LVL158
	.4byte	0x103d
	.4byte	0xd9a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x27
	.4byte	.LVL160
	.4byte	0x1048
	.4byte	0xdb1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x27
	.4byte	.LVL161
	.4byte	0xbe8
	.4byte	0xdcb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL162
	.4byte	0x103d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x197
	.4byte	0x1a4
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe72
	.uleb128 0x32
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x197
	.4byte	0xea
	.4byte	.LLST51
	.uleb128 0x31
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x197
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x199
	.4byte	0x1a4
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x33
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x19a
	.4byte	0x1a4
	.4byte	.LLST52
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x19c
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL168
	.4byte	0x2ff
	.4byte	0xe5b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL169
	.4byte	0x1057
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x1a7
	.4byte	0x1a4
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb8
	.uleb128 0x32
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x1a7
	.4byte	0x1a4
	.4byte	.LLST53
	.uleb128 0x1e
	.4byte	.LVL173
	.4byte	0xddf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x1ac
	.4byte	0x1a4
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf25
	.uleb128 0x32
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x1ac
	.4byte	0xf5
	.4byte	.LLST54
	.uleb128 0x31
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x1ac
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1ae
	.4byte	0x2de
	.4byte	.LLST55
	.uleb128 0x27
	.4byte	.LVL176
	.4byte	0x35b
	.4byte	0xf14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL179
	.4byte	0x1057
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x1b5
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8e
	.uleb128 0x31
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x1b5
	.4byte	0xea
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x1b7
	.4byte	0x1a4
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1b8
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL183
	.4byte	0x2ff
	.4byte	0xf7d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL184
	.4byte	0x1062
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x1c1
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb7
	.uleb128 0x1e
	.4byte	.LVL186
	.4byte	0xf25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x2
	.byte	0x7f
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_alwaysinternal_limit
	.uleb128 0x3a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x31
	.4byte	0x252
	.uleb128 0x3b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0x32
	.uleb128 0x3b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.byte	0x3e
	.uleb128 0x3b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.byte	0x49
	.uleb128 0x3c
	.4byte	.LASF100
	.4byte	.LASF100
	.uleb128 0x3c
	.4byte	.LASF101
	.4byte	.LASF101
	.uleb128 0x3b
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.byte	0x87
	.uleb128 0x3b
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.byte	0x93
	.uleb128 0x3b
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.byte	0xa7
	.uleb128 0x3b
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xc
	.byte	0xb2
	.uleb128 0x3d
	.4byte	.LASF114
	.4byte	.LASF115
	.byte	0x6
	.byte	0
	.4byte	.LASF114
	.uleb128 0x3b
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x8
	.byte	0x79
	.uleb128 0x3b
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x8
	.byte	0x6d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE36
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
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x76
	.sleb128 1073610752
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x76
	.sleb128 1073610752
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xa
	.byte	0x11
	.sleb128 -2146828292
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL73
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL79
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x20
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL119
	.4byte	.LVL120-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
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
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB42
	.4byte	.LFE42
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
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"heap_caps_malloc"
.LASF88:
	.string	"print_errors"
.LASF76:
	.string	"result"
.LASF56:
	.string	"addr"
.LASF44:
	.string	"heap_t"
.LASF74:
	.string	"heap_caps_realloc_prefer"
.LASF97:
	.string	"multi_heap_free"
.LASF43:
	.string	"next"
.LASF77:
	.string	"size_bytes"
.LASF73:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF113:
	.string	"registered_heaps"
.LASF55:
	.string	"dram_alloc_to_iram_addr"
.LASF18:
	.string	"__va_ndx"
.LASF60:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF48:
	.string	"esp_ptr_in_diram_iram"
.LASF72:
	.string	"old_size"
.LASF31:
	.string	"va_list"
.LASF37:
	.string	"__va_list_tag"
.LASF67:
	.string	"heap_caps_malloc_prefer"
.LASF25:
	.string	"largest_free_block"
.LASF104:
	.string	"multi_heap_get_info"
.LASF100:
	.string	"memcpy"
.LASF81:
	.string	"heap_caps_malloc_extmem_enable"
.LASF9:
	.string	"__intptr_t"
.LASF21:
	.string	"uintptr_t"
.LASF102:
	.string	"multi_heap_free_size"
.LASF94:
	.string	"malloc_alwaysinternal_limit"
.LASF42:
	.string	"heap"
.LASF110:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/heap"
.LASF89:
	.string	"all_heaps"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"intptr_t"
.LASF24:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"free_blocks"
.LASF61:
	.string	"iptr"
.LASF65:
	.string	"limit"
.LASF59:
	.string	"heap_caps_free"
.LASF53:
	.string	"get_all_caps"
.LASF101:
	.string	"memset"
.LASF11:
	.string	"long int"
.LASF57:
	.string	"dstart"
.LASF82:
	.string	"heap_caps_get_info"
.LASF105:
	.string	"printf"
.LASF62:
	.string	"heap_caps_match"
.LASF107:
	.string	"multi_heap_dump"
.LASF86:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"caps"
.LASF80:
	.string	"heap_caps_get_minimum_free_size"
.LASF98:
	.string	"multi_heap_realloc"
.LASF106:
	.string	"multi_heap_check"
.LASF49:
	.string	"__func__"
.LASF33:
	.string	"owner"
.LASF23:
	.string	"total_free_bytes"
.LASF103:
	.string	"multi_heap_minimum_free_size"
.LASF90:
	.string	"valid"
.LASF87:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF99:
	.string	"multi_heap_get_allocated_size"
.LASF112:
	.string	"heap_caps_dump_all"
.LASF35:
	.string	"portMUX_TYPE"
.LASF69:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"all_caps"
.LASF68:
	.string	"argp"
.LASF45:
	.string	"registered_heap_ll"
.LASF75:
	.string	"heap_caps_calloc"
.LASF50:
	.string	"dramAddrPtr"
.LASF114:
	.string	"puts"
.LASF46:
	.string	"slh_first"
.LASF16:
	.string	"__va_stk"
.LASF40:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF64:
	.string	"size"
.LASF38:
	.string	"heap_t_"
.LASF14:
	.string	"char"
.LASF26:
	.string	"minimum_free_bytes"
.LASF58:
	.string	"dend"
.LASF93:
	.string	"heap_caps_dump"
.LASF84:
	.string	"hinfo"
.LASF32:
	.string	"_Bool"
.LASF47:
	.string	"esp_ptr_in_diram_dram"
.LASF30:
	.string	"multi_heap_info_t"
.LASF96:
	.string	"multi_heap_malloc"
.LASF22:
	.string	"multi_heap_handle_t"
.LASF19:
	.string	"uint32_t"
.LASF41:
	.string	"heap_mux"
.LASF13:
	.string	"long unsigned int"
.LASF10:
	.string	"__uintptr_t"
.LASF27:
	.string	"allocated_blocks"
.LASF78:
	.string	"heap_caps_calloc_prefer"
.LASF36:
	.string	"sle_next"
.LASF29:
	.string	"total_blocks"
.LASF34:
	.string	"count"
.LASF83:
	.string	"info"
.LASF71:
	.string	"new_p"
.LASF54:
	.string	"find_containing_heap"
.LASF15:
	.string	"__gnuc_va_list"
.LASF17:
	.string	"__va_reg"
.LASF66:
	.string	"heap_caps_malloc_default"
.LASF109:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
.LASF115:
	.string	"__builtin_puts"
.LASF91:
	.string	"heap_caps_check_integrity_all"
.LASF95:
	.string	"__assert_func"
.LASF108:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"compatible_caps"
.LASF92:
	.string	"heap_caps_check_integrity_addr"
.LASF52:
	.string	"prio"
.LASF111:
	.string	"multi_heap_info"
.LASF79:
	.string	"heap_caps_get_free_size"
.LASF85:
	.string	"heap_caps_get_largest_free_block"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
