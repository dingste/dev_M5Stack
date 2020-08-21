	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.type	get_all_caps, @function
get_all_caps:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_private.h"
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 54 0
	l32i.n	a9, a2, 28
	.loc 1 55 0
	mov.n	a8, a9
	.loc 1 54 0
	beqz.n	a9, .L2
.LVL1:
.LBB3:
	.loc 1 59 0 discriminator 1
	l32i.n	a8, a2, 4
	l32i.n	a9, a2, 0
	or	a9, a9, a8
.LVL2:
	l32i.n	a8, a2, 8
	or	a8, a9, a8
.LVL3:
.L2:
.LBE3:
	.loc 1 62 0
	mov.n	a2, a8
.LVL4:
	retw.n
.LFE17:
	.size	get_all_caps, .-get_all_caps
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB27:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
	.loc 2 240 0
.LVL5:
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 2 243 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL7:
	j	.L5
.L8:
	.loc 2 244 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L6
	.loc 2 244 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L6
	.loc 2 244 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L7
.L6:
	.loc 2 243 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL8:
.L5:
	.loc 2 243 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L8
.L7:
	.loc 2 249 0 is_stmt 1
	mov.n	a2, a8
.LVL9:
	retw.n
.LFE27:
	.size	find_containing_heap, .-find_containing_heap
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB19:
	.loc 2 59 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 2 60 0
	l32i.n	a9, a2, 28
	.loc 2 59 0
	mov.n	a10, a2
	.loc 2 60 0
	mov.n	a2, a9
.LVL11:
	beqz.n	a9, .L14
	.loc 2 60 0 is_stmt 0 discriminator 1
	call8	get_all_caps
.LVL12:
	and	a10, a10, a3
	sub	a3, a10, a3
.LVL13:
	movi.n	a8, 0
	movi.n	a2, 1
	movnez	a2, a8, a3
.L14:
	.loc 2 61 0 is_stmt 1 discriminator 6
	extui	a2, a2, 0, 1
	retw.n
.LFE19:
	.size	heap_caps_match, .-heap_caps_match
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"dstart >= SOC_DIRAM_DRAM_LOW"
.LC8:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
.LC11:
	.string	"dend <= SOC_DIRAM_DRAM_HIGH"
.LC13:
	.string	"(dstart & 3) == 0"
.LC15:
	.string	"(dend & 3) == 0"
	.section	.iram1
	.literal_position
	.literal .LC1, registered_heaps
	.literal .LC2, -1073610752
	.literal .LC3, 131067
	.literal .LC4, 1073610751
	.literal .LC6, .LC5
	.literal .LC7, __func__$5030
	.literal .LC9, .LC8
	.literal .LC10, 1073741820
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, -2146828292
	.align	4
	.global	heap_caps_malloc
	.type	heap_caps_malloc, @function
heap_caps_malloc:
.LFB20:
	.loc 2 67 0
.LVL14:
	entry	sp, 32
.LCFI3:
.LVL15:
	.loc 2 70 0
	bbci	a3, 0, .L17
	.loc 2 75 0
	movi.n	a4, 0xc
	and	a4, a3, a4
	.loc 2 78 0
	movi.n	a5, 2
	or	a3, a3, a5
.LVL16:
	.loc 2 75 0
	beqz.n	a4, .L17
.LVL17:
.L31:
	.loc 2 76 0
	movi.n	a2, 0
.LVL18:
	retw.n
.LVL19:
.L17:
	.loc 2 81 0
	bbci	a3, 1, .L20
	.loc 2 85 0
	addi.n	a2, a2, 3
.LVL20:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL21:
.L20:
.LBB8:
	.loc 2 88 0
	movi.n	a4, 0
.LVL22:
.L30:
.LBB9:
	.loc 2 91 0
	l32r	a5, .LC1
	l32i.n	a6, a5, 0
.LVL23:
	.loc 2 95 0
	slli	a5, a4, 2
	.loc 2 91 0
	j	.L21
.L29:
	.loc 2 92 0
	l32i.n	a7, a6, 28
	bnez.n	a7, .L22
.L23:
	.loc 2 91 0
	l32i.n	a6, a6, 32
.LVL24:
	j	.L21
.L22:
	.loc 2 95 0
	add.n	a8, a6, a5
	l32i.n	a8, a8, 0
	bnone	a3, a8, .L23
	.loc 2 98 0
	mov.n	a10, a6
	call8	get_all_caps
.LVL25:
	and	a10, a3, a10
	bne	a3, a10, .L23
	.loc 2 100 0
	bbci	a3, 0, .L24
	.loc 2 100 0 is_stmt 0 discriminator 1
	l32i.n	a9, a6, 12
	l32r	a8, .LC2
	add.n	a8, a9, a8
	l32r	a9, .LC3
	bltu	a9, a8, .L24
	.loc 2 104 0 is_stmt 1
	addi.n	a11, a2, 4
	mov.n	a10, a7
	call8	multi_heap_malloc
.LVL26:
	.loc 2 105 0
	beqz.n	a10, .L23
.LVL27:
.LBB10:
.LBB11:
	.loc 2 48 0
	l32r	a3, .LC4
.LVL28:
	.loc 2 47 0
	add.n	a2, a2, a10
.LVL29:
	.loc 2 48 0
	bltu	a3, a10, .L25
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi.n	a11, 0x30
	j	.L50
.L25:
	.loc 2 49 0
	l32r	a3, .LC10
	bgeu	a3, a2, .L26
	l32r	a13, .LC12
	l32r	a12, .LC7
	movi.n	a11, 0x31
.L50:
	l32r	a10, .LC9
.LVL30:
	call8	__assert_func
.LVL31:
.L26:
	.loc 2 50 0
	extui	a3, a10, 0, 2
	beqz.n	a3, .L27
	l32r	a13, .LC14
	l32r	a12, .LC7
	movi.n	a11, 0x32
	j	.L50
.L27:
	.loc 2 51 0
	extui	a3, a2, 0, 2
	beqz.n	a3, .L28
	l32r	a13, .LC16
	l32r	a12, .LC7
	movi.n	a11, 0x33
	j	.L50
.L28:
.LVL32:
	.loc 2 53 0
	l32r	a8, .LC17
	sub	a2, a8, a2
.LVL33:
	.loc 2 54 0
	s32i.n	a10, a2, 0
	.loc 2 55 0
	addi.n	a2, a2, 4
.LVL34:
.LBE11:
.LBE10:
	.loc 2 106 0
	retw.n
.LVL35:
.L24:
	.loc 2 110 0
	mov.n	a11, a2
	mov.n	a10, a7
	call8	multi_heap_malloc
.LVL36:
	.loc 2 111 0
	beqz.n	a10, .L23
	j	.L32
.LVL37:
.L21:
	.loc 2 91 0 discriminator 1
	bnez.n	a6, .L29
.LBE9:
	.loc 2 88 0 discriminator 2
	addi.n	a4, a4, 1
.LVL38:
	bnei	a4, 3, .L30
	j	.L31
.LVL39:
.L32:
.LBB12:
	.loc 2 110 0
	mov.n	a2, a10
.LVL40:
.LBE12:
.LBE8:
	.loc 2 121 0
	retw.n
.LFE20:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.section	.text.heap_caps_malloc_extmem_enable,"ax",@progbits
	.literal_position
	.literal .LC18, malloc_alwaysinternal_limit
	.align	4
	.global	heap_caps_malloc_extmem_enable
	.type	heap_caps_malloc_extmem_enable, @function
heap_caps_malloc_extmem_enable:
.LFB21:
	.loc 2 129 0
.LVL41:
	entry	sp, 32
.LCFI4:
	.loc 2 130 0
	l32r	a8, .LC18
	s32i.n	a2, a8, 0
	retw.n
.LFE21:
	.size	heap_caps_malloc_extmem_enable, .-heap_caps_malloc_extmem_enable
	.section	.iram1
	.literal_position
	.literal .LC19, malloc_alwaysinternal_limit
	.literal .LC20, 6144
	.literal .LC21, 5120
	.literal .LC22, 4096
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB22:
	.loc 2 137 0
.LVL42:
	entry	sp, 32
.LCFI5:
	.loc 2 138 0
	l32r	a8, .LC19
	.loc 2 139 0
	l32r	a11, .LC20
	.loc 2 138 0
	l32i.n	a8, a8, 0
	beqi	a8, -1, .L59
.L53:
.LBB13:
	.loc 2 143 0
	l32r	a11, .LC20
	.loc 2 142 0
	bgeu	a8, a2, .L58
.L55:
	.loc 2 145 0
	l32r	a11, .LC21
.L58:
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL43:
	.loc 2 147 0
	bnez.n	a10, .L54
	.loc 2 149 0
	l32r	a11, .LC22
.LVL44:
.L59:
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL45:
.L54:
.LBE13:
	.loc 2 153 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LFE22:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.align	4
	.global	heap_caps_malloc_prefer
	.type	heap_caps_malloc_prefer, @function
heap_caps_malloc_prefer:
.LFB24:
	.loc 2 182 0
.LVL47:
	entry	sp, 80
.LCFI6:
	.loc 2 184 0
	s32i.n	a4, sp, 24
	addi	a4, sp, 16
	s32i.n	a4, sp, 4
	addi	a4, sp, 48
	s32i.n	a4, sp, 0
	movi.n	a4, 8
	s32i.n	a4, sp, 8
.LVL48:
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB14:
	.loc 2 187 0
	movi.n	a4, 0x18
.LBE14:
	.loc 2 186 0
	j	.L61
.LVL49:
.L66:
.LBB15:
	.loc 2 187 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a4, a9, .L62
	.loc 2 187 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L63
.L62:
	.loc 2 187 0 discriminator 1
	blt	a4, a8, .L64
	.loc 2 187 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L64:
	.loc 2 187 0 discriminator 6
	l32i.n	a9, sp, 0
.L63:
.LVL50:
	.loc 2 187 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 188 0 discriminator 7
	mov.n	a10, a2
	.loc 2 187 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 188 0 discriminator 7
	l32i.n	a11, a8, 0
	addi.n	a3, a3, -1
.LVL51:
	call8	heap_caps_malloc
.LVL52:
	.loc 2 189 0 discriminator 7
	bnez.n	a10, .L65
.LVL53:
.L61:
.LBE15:
	.loc 2 186 0
	bnez.n	a3, .L66
	mov.n	a10, a3
.LVL54:
.L65:
	.loc 2 195 0
	mov.n	a2, a10
.LVL55:
	retw.n
.LFE24:
	.size	heap_caps_malloc_prefer, .-heap_caps_malloc_prefer
	.section	.rodata.str1.1
.LC25:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1
	.literal_position
	.literal .LC23, -1074397184
	.literal .LC24, 131068
	.literal .LC26, .LC25
	.literal .LC27, __func__$5110
	.literal .LC28, .LC8
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB28:
	.loc 2 252 0
.LVL56:
	entry	sp, 32
.LCFI7:
.LVL57:
	.loc 2 255 0
	beqz.n	a2, .L67
	.loc 2 259 0
	l32r	a8, .LC23
	l32r	a9, .LC24
	add.n	a8, a2, a8
	bltu	a9, a8, .L69
.LVL58:
.LBB20:
	.loc 2 264 0
	addi	a2, a2, -4
.LVL59:
	l32i.n	a2, a2, 0
.LVL60:
.L69:
.LBE20:
	.loc 2 267 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL61:
	.loc 2 268 0
	bnez.n	a10, .L70
.LVL62:
.LBB21:
.LBB22:
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
.LVL63:
	movi	a11, 0x10c
	call8	__assert_func
.LVL64:
.L70:
.LBE22:
.LBE21:
	.loc 2 269 0
	l32i.n	a10, a10, 28
.LVL65:
	mov.n	a11, a2
	call8	multi_heap_free
.LVL66:
.L67:
	retw.n
.LFE28:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.1
.LC29:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
.LC33:
	.string	"old_size > 0"
	.section	.iram1
	.literal_position
	.literal .LC30, .LC29
	.literal .LC31, __func__$5117
	.literal .LC32, .LC8
	.literal .LC34, .LC33
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB29:
	.loc 2 273 0
.LVL67:
	entry	sp, 32
.LCFI8:
	.loc 2 274 0
	bnez.n	a2, .L75
	.loc 2 275 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL68:
	j	.L76
.L75:
	.loc 2 279 0
	mov.n	a10, a2
	.loc 2 278 0
	bnez.n	a3, .L77
	.loc 2 279 0
	call8	heap_caps_free
.LVL69:
	.loc 2 280 0
	mov.n	a10, a3
	j	.L76
.L77:
	.loc 2 283 0
	call8	find_containing_heap
.LVL70:
	mov.n	a5, a10
.LVL71:
	.loc 2 285 0
	bnez.n	a10, .L78
	.loc 2 285 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0x11d
	j	.L85
.L78:
	.loc 2 289 0 is_stmt 1
	call8	get_all_caps
.LVL72:
	.loc 2 291 0
	and	a10, a10, a4
.LVL73:
	beq	a4, a10, .L79
.L81:
	.loc 2 302 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL74:
	mov.n	a4, a10
.LVL75:
	.loc 2 303 0
	bnez.n	a10, .L80
	j	.L84
.LVL76:
.L79:
.LBB23:
	.loc 2 294 0
	l32i.n	a10, a5, 28
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL77:
	.loc 2 295 0
	bnez.n	a10, .L76
	j	.L81
.LVL78:
.L80:
.LBE23:
.LBB24:
	.loc 2 304 0
	l32i.n	a10, a5, 28
	mov.n	a11, a2
	call8	multi_heap_get_allocated_size
.LVL79:
	.loc 2 305 0
	bnez.n	a10, .L82
	.loc 2 305 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC31
	movi	a11, 0x131
.LVL80:
.L85:
	l32r	a10, .LC32
	call8	__assert_func
.LVL81:
.L82:
	.loc 2 306 0 is_stmt 1
	minu	a12, a3, a10
	mov.n	a11, a2
	mov.n	a10, a4
.LVL82:
	call8	memcpy
.LVL83:
	.loc 2 307 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL84:
.L84:
	.loc 2 308 0
	mov.n	a10, a4
.LVL85:
.L76:
.LBE24:
	.loc 2 311 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LFE29:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.literal_position
	.literal .LC35, malloc_alwaysinternal_limit
	.literal .LC36, 6144
	.literal .LC37, 5120
	.literal .LC38, 4096
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB23:
	.loc 2 160 0
.LVL87:
	entry	sp, 32
.LCFI9:
	.loc 2 161 0
	l32r	a8, .LC35
	.loc 2 162 0
	l32r	a12, .LC36
	.loc 2 161 0
	l32i.n	a8, a8, 0
	beqi	a8, -1, .L99
.L87:
.LBB25:
	.loc 2 166 0
	l32r	a12, .LC36
	.loc 2 165 0
	bgeu	a8, a3, .L98
.L89:
	.loc 2 168 0
	l32r	a12, .LC37
.L98:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL88:
	.loc 2 170 0
	bnez.n	a10, .L88
	beqz.n	a3, .L88
	.loc 2 172 0
	l32r	a12, .LC38
.LVL89:
.L99:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL90:
.L88:
.LBE25:
	.loc 2 176 0
	mov.n	a2, a10
.LVL91:
	retw.n
.LFE23:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.align	4
	.global	heap_caps_realloc_prefer
	.type	heap_caps_realloc_prefer, @function
heap_caps_realloc_prefer:
.LFB25:
	.loc 2 201 0
.LVL92:
	entry	sp, 80
.LCFI10:
	.loc 2 203 0
	s32i.n	a5, sp, 28
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL93:
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB26:
	.loc 2 206 0
	movi.n	a5, 0x18
.LBE26:
	.loc 2 205 0
	j	.L101
.LVL94:
.L106:
.LBB27:
	.loc 2 206 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a5, a9, .L102
	.loc 2 206 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L103
.L102:
	.loc 2 206 0 discriminator 1
	blt	a5, a8, .L104
	.loc 2 206 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L104:
	.loc 2 206 0 discriminator 6
	l32i.n	a9, sp, 0
.L103:
.LVL95:
	.loc 2 206 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 207 0 discriminator 7
	mov.n	a11, a3
	.loc 2 206 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 207 0 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL96:
	.loc 2 208 0 discriminator 7
	movi.n	a11, 1
	movi.n	a9, 0
	movnez	a9, a11, a10
	extui	a8, a9, 0, 8
	addi.n	a4, a4, -1
.LVL97:
	bnez.n	a8, .L105
	moveqz	a8, a11, a3
	bnez.n	a8, .L105
.LVL98:
.L101:
.LBE27:
	.loc 2 205 0
	bnez.n	a4, .L106
	mov.n	a10, a4
.LVL99:
.L105:
	.loc 2 214 0
	mov.n	a2, a10
.LVL100:
	retw.n
.LFE25:
	.size	heap_caps_realloc_prefer, .-heap_caps_realloc_prefer
	.align	4
	.global	heap_caps_calloc
	.type	heap_caps_calloc, @function
heap_caps_calloc:
.LFB30:
	.loc 2 314 0
.LVL101:
	entry	sp, 32
.LCFI11:
	.loc 2 318 0
	mull	a5, a2, a3
	muluh	a2, a2, a3
.LVL102:
	.loc 2 314 0
	mov.n	a11, a4
	.loc 2 318 0
	bnez.n	a2, .L116
	.loc 2 322 0
	mov.n	a10, a5
	call8	heap_caps_malloc
.LVL103:
	mov.n	a3, a10
.LVL104:
	.loc 2 323 0
	beqz.n	a10, .L110
	.loc 2 324 0
	mov.n	a11, a2
	mov.n	a12, a5
	call8	memset
.LVL105:
	mov.n	a2, a3
	retw.n
.LVL106:
.L116:
	.loc 2 319 0
	movi.n	a2, 0
.LVL107:
.L110:
	.loc 2 327 0
	retw.n
.LFE30:
	.size	heap_caps_calloc, .-heap_caps_calloc
	.align	4
	.global	heap_caps_calloc_prefer
	.type	heap_caps_calloc_prefer, @function
heap_caps_calloc_prefer:
.LFB26:
	.loc 2 220 0
.LVL108:
	entry	sp, 80
.LCFI12:
	.loc 2 222 0
	s32i.n	a5, sp, 28
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL109:
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
.LBB28:
	.loc 2 225 0
	movi.n	a5, 0x18
.LBE28:
	.loc 2 224 0
	j	.L118
.LVL110:
.L123:
.LBB29:
	.loc 2 225 0
	l32i.n	a8, sp, 8
	addi.n	a9, a8, 4
	s32i.n	a9, sp, 8
	blt	a5, a9, .L119
	.loc 2 225 0 is_stmt 0 discriminator 2
	l32i.n	a9, sp, 4
	j	.L120
.L119:
	.loc 2 225 0 discriminator 1
	blt	a5, a8, .L121
	.loc 2 225 0 discriminator 5
	movi.n	a8, 0x24
	s32i.n	a8, sp, 8
.L121:
	.loc 2 225 0 discriminator 6
	l32i.n	a9, sp, 0
.L120:
.LVL111:
	.loc 2 225 0 is_stmt 1 discriminator 7
	l32i.n	a8, sp, 8
	.loc 2 226 0 discriminator 7
	mov.n	a11, a3
	.loc 2 225 0 discriminator 7
	add.n	a8, a9, a8
	addi	a8, a8, -4
	.loc 2 226 0 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a10, a2
	call8	heap_caps_calloc
.LVL112:
	addi.n	a4, a4, -1
.LVL113:
	.loc 2 227 0 discriminator 7
	bnez.n	a10, .L122
.LVL114:
.L118:
.LBE29:
	.loc 2 224 0
	bnez.n	a4, .L123
	mov.n	a10, a4
.LVL115:
.L122:
	.loc 2 231 0
	mov.n	a2, a10
.LVL116:
	retw.n
.LFE26:
	.size	heap_caps_calloc_prefer, .-heap_caps_calloc_prefer
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC39, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB31:
	.loc 2 330 0
.LVL117:
	entry	sp, 32
.LCFI13:
.LVL118:
	.loc 2 330 0
	mov.n	a4, a2
	.loc 2 333 0
	l32r	a2, .LC39
.LVL119:
	l32i.n	a3, a2, 0
.LVL120:
	.loc 2 331 0
	movi.n	a2, 0
	.loc 2 333 0
	j	.L125
.LVL121:
.L127:
	.loc 2 334 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_match
.LVL122:
	beqz.n	a10, .L126
	.loc 2 335 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL123:
	add.n	a2, a2, a10
.LVL124:
.L126:
	.loc 2 333 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL125:
.L125:
	.loc 2 333 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L127
	.loc 2 339 0 is_stmt 1
	retw.n
.LFE31:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC40, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB32:
	.loc 2 342 0
.LVL126:
	entry	sp, 32
.LCFI14:
.LVL127:
	.loc 2 342 0
	mov.n	a4, a2
	.loc 2 345 0
	l32r	a2, .LC40
.LVL128:
	l32i.n	a3, a2, 0
.LVL129:
	.loc 2 343 0
	movi.n	a2, 0
	.loc 2 345 0
	j	.L132
.LVL130:
.L134:
	.loc 2 346 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_match
.LVL131:
	beqz.n	a10, .L133
	.loc 2 347 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL132:
	add.n	a2, a2, a10
.LVL133:
.L133:
	.loc 2 345 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL134:
.L132:
	.loc 2 345 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L134
	.loc 2 351 0 is_stmt 1
	retw.n
.LFE32:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC41, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB34:
	.loc 2 361 0
.LVL135:
	entry	sp, 64
.LCFI15:
	.loc 2 362 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL136:
	.loc 2 365 0
	l32r	a4, .LC41
	l32i.n	a4, a4, 0
.LVL137:
	j	.L139
.L141:
	.loc 2 366 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL138:
	beqz.n	a10, .L140
.LBB30:
	.loc 2 368 0
	l32i.n	a10, a4, 28
	mov.n	a11, sp
	call8	multi_heap_get_info
.LVL139:
	.loc 2 370 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 2 371 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 2 372 0
	l32i.n	a9, a2, 8
	l32i.n	a8, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 2 374 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 2 375 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 2 376 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 2 377 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L140:
.LBE30:
	.loc 2 365 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL140:
.L139:
	.loc 2 365 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L141
	.loc 2 380 0 is_stmt 1
	retw.n
.LFE34:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB33:
	.loc 2 354 0
.LVL141:
	entry	sp, 64
.LCFI16:
	.loc 2 356 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL142:
	.loc 2 358 0
	l32i.n	a2, sp, 8
.LVL143:
	retw.n
.LFE33:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.1
.LC42:
	.string	"Heap summary for capabilities 0x%08X:\n"
.LC45:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
.LC47:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
.LC49:
	.string	"  Totals:"
.LC51:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC43, .LC42
	.literal .LC44, registered_heaps
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB35:
	.loc 2 383 0
.LVL144:
	entry	sp, 64
.LCFI17:
	.loc 2 385 0
	l32r	a10, .LC43
	mov.n	a11, a2
	call8	printf
.LVL145:
	.loc 2 387 0
	l32r	a3, .LC44
	l32i.n	a3, a3, 0
.LVL146:
	j	.L147
.L149:
	.loc 2 388 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL147:
	beqz.n	a10, .L148
	.loc 2 389 0
	l32i.n	a10, a3, 28
	mov.n	a11, sp
	call8	multi_heap_get_info
.LVL148:
	.loc 2 392 0
	l32i.n	a11, a3, 12
	.loc 2 391 0
	l32i.n	a12, a3, 16
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	l32i.n	a15, sp, 12
	l32r	a10, .LC46
	sub	a12, a12, a11
	call8	printf
.LVL149:
	.loc 2 393 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC48
	call8	printf
.LVL150:
.L148:
	.loc 2 387 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL151:
.L147:
	.loc 2 387 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L149
	.loc 2 398 0 is_stmt 1
	l32r	a10, .LC50
	call8	puts
.LVL152:
	.loc 2 399 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL153:
	.loc 2 401 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC52
	call8	printf
.LVL154:
	retw.n
.LFE35:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC53, -2147483648
	.literal .LC54, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB36:
	.loc 2 405 0
.LVL155:
	entry	sp, 32
.LCFI18:
	.loc 2 406 0
	l32r	a5, .LC53
	.loc 2 405 0
	mov.n	a6, a2
	.loc 2 406 0
	and	a5, a2, a5
.LVL156:
	.loc 2 410 0
	l32r	a2, .LC54
.LVL157:
	.loc 2 405 0
	extui	a3, a3, 0, 8
	.loc 2 410 0
	l32i.n	a4, a2, 0
.LVL158:
	.loc 2 407 0
	movi.n	a2, 1
	.loc 2 410 0
	j	.L154
.LVL159:
.L157:
	.loc 2 411 0
	l32i.n	a7, a4, 28
	beqz.n	a7, .L155
	.loc 2 412 0
	bnez.n	a5, .L156
	.loc 2 412 0 is_stmt 0 discriminator 1
	mov.n	a10, a4
	call8	get_all_caps
.LVL160:
	and	a10, a6, a10
	bne	a6, a10, .L155
.L156:
	.loc 2 413 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a7
	call8	multi_heap_check
.LVL161:
	and	a2, a2, a10
.LVL162:
.L155:
	.loc 2 410 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL163:
.L154:
	.loc 2 410 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L157
	.loc 2 418 0 is_stmt 1
	retw.n
.LFE36:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.text.heap_caps_check_integrity_all,"ax",@progbits
	.literal_position
	.literal .LC55, -2147483648
	.align	4
	.global	heap_caps_check_integrity_all
	.type	heap_caps_check_integrity_all, @function
heap_caps_check_integrity_all:
.LFB37:
	.loc 2 421 0
.LVL164:
	entry	sp, 32
.LCFI19:
	.loc 2 422 0
	l32r	a10, .LC55
	extui	a11, a2, 0, 8
	call8	heap_caps_check_integrity
.LVL165:
	.loc 2 423 0
	mov.n	a2, a10
.LVL166:
	retw.n
.LFE37:
	.size	heap_caps_check_integrity_all, .-heap_caps_check_integrity_all
	.section	.text.heap_caps_check_integrity_addr,"ax",@progbits
	.align	4
	.global	heap_caps_check_integrity_addr
	.type	heap_caps_check_integrity_addr, @function
heap_caps_check_integrity_addr:
.LFB38:
	.loc 2 426 0
.LVL167:
	entry	sp, 32
.LCFI20:
	.loc 2 427 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL168:
	.loc 2 429 0
	movi.n	a2, 0
.LVL169:
	.loc 2 426 0
	extui	a3, a3, 0, 8
	.loc 2 428 0
	beq	a10, a2, .L163
	.loc 2 431 0
	l32i.n	a10, a10, 28
.LVL170:
	mov.n	a11, a3
	call8	multi_heap_check
.LVL171:
	mov.n	a2, a10
.L163:
	.loc 2 432 0
	retw.n
.LFE38:
	.size	heap_caps_check_integrity_addr, .-heap_caps_check_integrity_addr
	.section	.text.heap_caps_dump,"ax",@progbits
	.literal_position
	.literal .LC56, -2147483648
	.literal .LC57, registered_heaps
	.align	4
	.global	heap_caps_dump
	.type	heap_caps_dump, @function
heap_caps_dump:
.LFB39:
	.loc 2 435 0
.LVL172:
	entry	sp, 32
.LCFI21:
	.loc 2 436 0
	l32r	a4, .LC56
	.loc 2 438 0
	l32r	a3, .LC57
	.loc 2 436 0
	and	a4, a2, a4
.LVL173:
	.loc 2 438 0
	l32i.n	a3, a3, 0
.LVL174:
	j	.L167
.L170:
	.loc 2 439 0
	l32i.n	a5, a3, 28
	beqz.n	a5, .L168
	.loc 2 440 0
	bnez.n	a4, .L169
	.loc 2 440 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	get_all_caps
.LVL175:
	and	a10, a2, a10
	bne	a2, a10, .L168
.L169:
	.loc 2 441 0 is_stmt 1
	mov.n	a10, a5
	call8	multi_heap_dump
.LVL176:
.L168:
	.loc 2 438 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL177:
.L167:
	.loc 2 438 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L170
	.loc 2 444 0 is_stmt 1
	retw.n
.LFE39:
	.size	heap_caps_dump, .-heap_caps_dump
	.section	.text.heap_caps_dump_all,"ax",@progbits
	.literal_position
	.literal .LC58, -2147483648
	.align	4
	.global	heap_caps_dump_all
	.type	heap_caps_dump_all, @function
heap_caps_dump_all:
.LFB40:
	.loc 2 447 0
	entry	sp, 32
.LCFI22:
	.loc 2 448 0
	l32r	a10, .LC58
	call8	heap_caps_dump
.LVL178:
	retw.n
.LFE40:
	.size	heap_caps_dump_all, .-heap_caps_dump_all
	.section	.rodata.__func__$5117,"a",@progbits
	.type	__func__$5117, @object
	.size	__func__$5117, 18
__func__$5117:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$5110,"a",@progbits
	.type	__func__$5110, @object
	.size	__func__$5110, 15
__func__$5110:
	.string	"heap_caps_free"
	.section	.rodata.__func__$5030,"a",@progbits
	.type	__func__$5030, @object
	.size	__func__$5030, 24
__func__$5030:
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI10-.LFB25
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI12-.LFB26
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI13-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI14-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI15-.LFB34
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI16-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI17-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI18-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI19-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI21-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI22-.LFB40
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
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1031
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x28
	.4byte	0xa7
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.byte	0
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x1e
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xff
	.uleb128 0x9
	.4byte	.LASF107
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x96
	.4byte	0x161
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x8
	.byte	0x97
	.4byte	0x2c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0x98
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x8
	.byte	0x99
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x9a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x8
	.byte	0x9b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x8
	.byte	0x9c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x8
	.byte	0x9d
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9e
	.4byte	0x104
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x62
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0xd8
	.4byte	0x187
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x1af
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x9
	.byte	0x8a
	.4byte	0xd8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x9
	.byte	0x8f
	.4byte	0xd8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x94
	.4byte	0x18e
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.4byte	0x1cf
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.4byte	0x224
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x24
	.byte	0x1
	.byte	0x20
	.4byte	0x224
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1
	.byte	0x21
	.4byte	0x177
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.byte	0x22
	.4byte	0xe3
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x23
	.4byte	0xe3
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0x24
	.4byte	0x1af
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.4byte	0xee
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x1ba
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x1
	.byte	0x27
	.4byte	0x1cf
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x4
	.byte	0x1
	.byte	0x2f
	.4byte	0x24e
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2f
	.4byte	0x224
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x2
	.byte	0xfb
	.byte	0x1
	.4byte	0x296
	.uleb128 0xf
	.string	"ptr"
	.byte	0x2
	.byte	0xfb
	.4byte	0x8c
	.uleb128 0x10
	.string	"p"
	.byte	0x2
	.byte	0xfd
	.4byte	0xe3
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x10b
	.4byte	0x296
	.uleb128 0x12
	.4byte	.LASF45
	.4byte	0x2ac
	.4byte	.LASF54
	.uleb128 0x13
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x107
	.4byte	0x2b1
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22a
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x2ac
	.uleb128 0xc
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.4byte	0x29c
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0x34
	.4byte	0xd8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x308
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x34
	.4byte	0x308
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x39
	.4byte	0xd8
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30e
	.uleb128 0x14
	.4byte	0x22a
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x2
	.byte	0xef
	.4byte	0x296
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x356
	.uleb128 0x19
	.string	"ptr"
	.byte	0x2
	.byte	0xef
	.4byte	0x8c
	.4byte	.LLST3
	.uleb128 0x1a
	.string	"p"
	.byte	0x2
	.byte	0xf1
	.4byte	0xe3
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x2
	.byte	0xf2
	.4byte	0x296
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x2
	.byte	0x3a
	.4byte	0x187
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39f
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x2
	.byte	0x3a
	.4byte	0x308
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x2
	.byte	0x3a
	.4byte	0xd8
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0x2b7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF55
	.byte	0x2
	.byte	0x2c
	.4byte	0x8c
	.byte	0x1
	.4byte	0x3ff
	.uleb128 0x20
	.4byte	.LASF51
	.byte	0x2
	.byte	0x2c
	.4byte	0x8c
	.uleb128 0xf
	.string	"len"
	.byte	0x2
	.byte	0x2c
	.4byte	0x2c
	.uleb128 0x21
	.4byte	.LASF52
	.byte	0x2
	.byte	0x2e
	.4byte	0xd8
	.uleb128 0x21
	.4byte	.LASF53
	.byte	0x2
	.byte	0x2f
	.4byte	0xd8
	.uleb128 0x12
	.4byte	.LASF45
	.4byte	0x40f
	.4byte	.LASF55
	.uleb128 0x21
	.4byte	.LASF56
	.byte	0x2
	.byte	0x34
	.4byte	0xd8
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x2
	.byte	0x35
	.4byte	0x2b1
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x40f
	.uleb128 0xc
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	0x3ff
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x2
	.byte	0x42
	.4byte	0x8c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0x42
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x2
	.byte	0x42
	.4byte	0xd8
	.4byte	.LLST8
	.uleb128 0x1a
	.string	"ret"
	.byte	0x2
	.byte	0x44
	.4byte	0x8c
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x2
	.byte	0x58
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x2
	.byte	0x5a
	.4byte	0x296
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	0x39f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x2
	.byte	0x6a
	.4byte	0x4f6
	.uleb128 0x24
	.4byte	0x3ba
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	0x3af
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x25
	.4byte	0x3c5
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0x3d0
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	0x3e8
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	0x3f3
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	0x3db
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5030
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0xf9a
	.uleb128 0x1e
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
	.4byte	0x2b7
	.4byte	0x50a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xfa5
	.4byte	0x524
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL36
	.4byte	0xfa5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
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
	.4byte	.LASF77
	.byte	0x2
	.byte	0x80
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0x2
	.byte	0x80
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x2
	.byte	0x88
	.4byte	0x8c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0x88
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.byte	0x8d
	.4byte	0x8c
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LVL43
	.4byte	0x414
	.4byte	0x5b2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0x414
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x2
	.byte	0xb5
	.4byte	0x8c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63e
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0xb5
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x19
	.string	"num"
	.byte	0x2
	.byte	0xb5
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x2a
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x2
	.byte	0xb7
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.byte	0xb9
	.4byte	0x8c
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x2
	.byte	0xbb
	.4byte	0xd8
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL52
	.4byte	0x414
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x24e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x711
	.uleb128 0x24
	.4byte	0x25a
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	0x265
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	0x26e
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5110
	.uleb128 0x2c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x68e
	.uleb128 0x25
	.4byte	0x288
	.4byte	.LLST26
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x6ec
	.uleb128 0x2d
	.4byte	0x25a
	.uleb128 0x18
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2e
	.4byte	0x265
	.uleb128 0x2e
	.4byte	0x26e
	.uleb128 0x26
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5110
	.uleb128 0x1d
	.4byte	.LVL64
	.4byte	0xf9a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5110
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x313
	.4byte	0x700
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0xfb0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x110
	.4byte	0x8c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x894
	.uleb128 0x30
	.string	"ptr"
	.byte	0x2
	.2byte	0x110
	.4byte	0x8c
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x110
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x33
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x11b
	.4byte	0x296
	.4byte	.LLST29
	.uleb128 0x34
	.4byte	.LASF45
	.4byte	0x8a4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5117
	.uleb128 0x33
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x121
	.4byte	0x187
	.4byte	.LLST30
	.uleb128 0x33
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x12e
	.4byte	0x8c
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x7ca
	.uleb128 0x35
	.string	"r"
	.byte	0x2
	.2byte	0x126
	.4byte	0x8c
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	.LVL77
	.4byte	0xfbb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x83d
	.uleb128 0x33
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x130
	.4byte	0x2c
	.4byte	.LLST33
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0xfc6
	.4byte	0x7fb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL81
	.4byte	0xf9a
	.4byte	0x812
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x27
	.4byte	.LVL83
	.4byte	0xfd1
	.4byte	0x82c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL84
	.4byte	0x24e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL68
	.4byte	0x414
	.4byte	0x857
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0x24e
	.4byte	0x86b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL70
	.4byte	0x313
	.uleb128 0x36
	.4byte	.LVL72
	.4byte	0x2b7
	.uleb128 0x1d
	.4byte	.LVL74
	.4byte	0x414
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x8a4
	.uleb128 0xc
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	0x894
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x2
	.byte	0x9f
	.4byte	0x8c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x926
	.uleb128 0x19
	.string	"ptr"
	.byte	0x2
	.byte	0x9f
	.4byte	0x8c
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x2
	.byte	0x9f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.byte	0xa4
	.4byte	0x8c
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	.LVL88
	.4byte	0x711
	.4byte	0x90e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL90
	.4byte	0x711
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x2
	.byte	0xc8
	.4byte	0x8c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b3
	.uleb128 0x19
	.string	"ptr"
	.byte	0x2
	.byte	0xc8
	.4byte	0x8c
	.4byte	.LLST36
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x2
	.byte	0xc8
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"num"
	.byte	0x2
	.byte	0xc8
	.4byte	0x2c
	.4byte	.LLST37
	.uleb128 0x2a
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x2
	.byte	0xca
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.byte	0xcc
	.4byte	0x8c
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x2
	.byte	0xce
	.4byte	0xd8
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	.LVL96
	.4byte	0x711
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x139
	.4byte	0x8c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4c
	.uleb128 0x30
	.string	"n"
	.byte	0x2
	.2byte	0x139
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x32
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x139
	.4byte	0x2c
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x139
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x13b
	.4byte	0x8c
	.4byte	.LLST42
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x13c
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LVL103
	.4byte	0x414
	.4byte	0xa2f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL105
	.4byte	0xfda
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x2
	.byte	0xdb
	.4byte	0x8c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad7
	.uleb128 0x19
	.string	"n"
	.byte	0x2
	.byte	0xdb
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x2
	.byte	0xdb
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"num"
	.byte	0x2
	.byte	0xdb
	.4byte	0x2c
	.4byte	.LLST44
	.uleb128 0x2a
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x2
	.byte	0xdd
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.byte	0xdf
	.4byte	0x8c
	.4byte	.LLST45
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x2
	.byte	0xe1
	.4byte	0xd8
	.4byte	.LLST46
	.uleb128 0x1d
	.4byte	.LVL112
	.4byte	0x9b3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
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
	.2byte	0x149
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb43
	.uleb128 0x32
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x149
	.4byte	0xd8
	.4byte	.LLST47
	.uleb128 0x35
	.string	"ret"
	.byte	0x2
	.2byte	0x14b
	.4byte	0x2c
	.4byte	.LLST48
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x14c
	.4byte	0x296
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x356
	.4byte	0xb39
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL123
	.4byte	0xfe3
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x155
	.4byte	0x2c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbaf
	.uleb128 0x32
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x155
	.4byte	0xd8
	.4byte	.LLST49
	.uleb128 0x35
	.string	"ret"
	.byte	0x2
	.2byte	0x157
	.4byte	0x2c
	.4byte	.LLST50
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x158
	.4byte	0x296
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL131
	.4byte	0x356
	.4byte	0xba5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL132
	.4byte	0xfee
	.byte	0
	.uleb128 0x38
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x168
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc51
	.uleb128 0x31
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x168
	.4byte	0xc51
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x168
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x16c
	.4byte	0x296
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xc1c
	.uleb128 0x37
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x16f
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL139
	.4byte	0xff9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL136
	.4byte	0xfda
	.4byte	0xc3a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL138
	.4byte	0x356
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x161
	.uleb128 0x2f
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x161
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca7
	.uleb128 0x32
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x161
	.4byte	0xd8
	.4byte	.LLST51
	.uleb128 0x37
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x163
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL142
	.4byte	0xbaf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x17e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda6
	.uleb128 0x31
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x17e
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x180
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x182
	.4byte	0x296
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL145
	.4byte	0x1004
	.4byte	0xd05
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL147
	.4byte	0x356
	.4byte	0xd1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL148
	.4byte	0xff9
	.4byte	0xd33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL149
	.4byte	0x1004
	.4byte	0xd4a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x27
	.4byte	.LVL150
	.4byte	0x1004
	.4byte	0xd61
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x27
	.4byte	.LVL152
	.4byte	0x100f
	.4byte	0xd78
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x27
	.4byte	.LVL153
	.4byte	0xbaf
	.4byte	0xd92
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL154
	.4byte	0x1004
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x194
	.4byte	0x187
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe39
	.uleb128 0x32
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x194
	.4byte	0xd8
	.4byte	.LLST52
	.uleb128 0x31
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x194
	.4byte	0x187
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x196
	.4byte	0x187
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x33
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x197
	.4byte	0x187
	.4byte	.LLST53
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x199
	.4byte	0x296
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL160
	.4byte	0x2b7
	.4byte	0xe22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL161
	.4byte	0x101e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x1a4
	.4byte	0x187
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7f
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x1a4
	.4byte	0x187
	.4byte	.LLST54
	.uleb128 0x1d
	.4byte	.LVL165
	.4byte	0xda6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
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
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x1a9
	.4byte	0x187
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeec
	.uleb128 0x32
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x1a9
	.4byte	0xe3
	.4byte	.LLST55
	.uleb128 0x31
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x1a9
	.4byte	0x187
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x1ab
	.4byte	0x296
	.4byte	.LLST56
	.uleb128 0x27
	.4byte	.LVL168
	.4byte	0x313
	.4byte	0xedb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL171
	.4byte	0x101e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x1b2
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf55
	.uleb128 0x31
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x1b2
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x187
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x296
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL175
	.4byte	0x2b7
	.4byte	0xf44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL176
	.4byte	0x1029
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x1be
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7e
	.uleb128 0x1d
	.4byte	.LVL178
	.4byte	0xeec
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x2
	.byte	0x7e
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_alwaysinternal_limit
	.uleb128 0x3a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2f
	.4byte	0x235
	.uleb128 0x3b
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0x32
	.uleb128 0x3b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.byte	0x3e
	.uleb128 0x3b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x49
	.uleb128 0x3c
	.4byte	.LASF96
	.4byte	.LASF96
	.uleb128 0x3c
	.4byte	.LASF97
	.4byte	.LASF97
	.uleb128 0x3b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.byte	0x87
	.uleb128 0x3b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.byte	0x93
	.uleb128 0x3b
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa7
	.uleb128 0x3b
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0xb2
	.uleb128 0x3d
	.4byte	.LASF110
	.4byte	.LASF111
	.byte	0x6
	.byte	0
	.4byte	.LASF110
	.uleb128 0x3b
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.byte	0x79
	.uleb128 0x3b
	.4byte	.LASF103
	.4byte	.LASF103
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.4byte	.LFE17
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
	.4byte	.LFE27
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
	.4byte	.LFE27
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
	.4byte	.LFE19
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
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
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
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE20
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
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0xa
	.byte	0x11
	.sleb128 -2146828292
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL50
	.4byte	.LVL52-1
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
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL71
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL72
	.4byte	.LVL73
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
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL95
	.4byte	.LVL96-1
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
.LLST40:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL108
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL111
	.4byte	.LVL112-1
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
.LLST47:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL156
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL168
	.4byte	.LVL170
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB33
	.4byte	.LFE33
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"heap_caps_malloc"
.LASF84:
	.string	"print_errors"
.LASF72:
	.string	"result"
.LASF51:
	.string	"addr"
.LASF42:
	.string	"heap_t"
.LASF70:
	.string	"heap_caps_realloc_prefer"
.LASF93:
	.string	"multi_heap_free"
.LASF41:
	.string	"next"
.LASF73:
	.string	"size_bytes"
.LASF69:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF109:
	.string	"registered_heaps"
.LASF55:
	.string	"dram_alloc_to_iram_addr"
.LASF17:
	.string	"__va_ndx"
.LASF56:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF68:
	.string	"old_size"
.LASF29:
	.string	"va_list"
.LASF35:
	.string	"__va_list_tag"
.LASF63:
	.string	"heap_caps_malloc_prefer"
.LASF23:
	.string	"largest_free_block"
.LASF100:
	.string	"multi_heap_get_info"
.LASF96:
	.string	"memcpy"
.LASF77:
	.string	"heap_caps_malloc_extmem_enable"
.LASF9:
	.string	"__intptr_t"
.LASF98:
	.string	"multi_heap_free_size"
.LASF90:
	.string	"malloc_alwaysinternal_limit"
.LASF40:
	.string	"heap"
.LASF106:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/heap"
.LASF85:
	.string	"all_heaps"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"intptr_t"
.LASF22:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF26:
	.string	"free_blocks"
.LASF57:
	.string	"iptr"
.LASF61:
	.string	"limit"
.LASF54:
	.string	"heap_caps_free"
.LASF49:
	.string	"get_all_caps"
.LASF97:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF52:
	.string	"dstart"
.LASF78:
	.string	"heap_caps_get_info"
.LASF101:
	.string	"printf"
.LASF58:
	.string	"heap_caps_match"
.LASF103:
	.string	"multi_heap_dump"
.LASF82:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"caps"
.LASF76:
	.string	"heap_caps_get_minimum_free_size"
.LASF94:
	.string	"multi_heap_realloc"
.LASF102:
	.string	"multi_heap_check"
.LASF45:
	.string	"__func__"
.LASF31:
	.string	"owner"
.LASF21:
	.string	"total_free_bytes"
.LASF99:
	.string	"multi_heap_minimum_free_size"
.LASF86:
	.string	"valid"
.LASF83:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF95:
	.string	"multi_heap_get_allocated_size"
.LASF108:
	.string	"heap_caps_dump_all"
.LASF33:
	.string	"portMUX_TYPE"
.LASF65:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"all_caps"
.LASF64:
	.string	"argp"
.LASF43:
	.string	"registered_heap_ll"
.LASF71:
	.string	"heap_caps_calloc"
.LASF46:
	.string	"dramAddrPtr"
.LASF110:
	.string	"puts"
.LASF44:
	.string	"slh_first"
.LASF15:
	.string	"__va_stk"
.LASF38:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF60:
	.string	"size"
.LASF36:
	.string	"heap_t_"
.LASF13:
	.string	"char"
.LASF24:
	.string	"minimum_free_bytes"
.LASF53:
	.string	"dend"
.LASF89:
	.string	"heap_caps_dump"
.LASF80:
	.string	"hinfo"
.LASF30:
	.string	"_Bool"
.LASF28:
	.string	"multi_heap_info_t"
.LASF92:
	.string	"multi_heap_malloc"
.LASF20:
	.string	"multi_heap_handle_t"
.LASF18:
	.string	"uint32_t"
.LASF39:
	.string	"heap_mux"
.LASF12:
	.string	"long unsigned int"
.LASF25:
	.string	"allocated_blocks"
.LASF74:
	.string	"heap_caps_calloc_prefer"
.LASF34:
	.string	"sle_next"
.LASF27:
	.string	"total_blocks"
.LASF32:
	.string	"count"
.LASF79:
	.string	"info"
.LASF67:
	.string	"new_p"
.LASF50:
	.string	"find_containing_heap"
.LASF14:
	.string	"__gnuc_va_list"
.LASF16:
	.string	"__va_reg"
.LASF62:
	.string	"heap_caps_malloc_default"
.LASF105:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/heap_caps.c"
.LASF111:
	.string	"__builtin_puts"
.LASF87:
	.string	"heap_caps_check_integrity_all"
.LASF91:
	.string	"__assert_func"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF66:
	.string	"compatible_caps"
.LASF88:
	.string	"heap_caps_check_integrity_addr"
.LASF48:
	.string	"prio"
.LASF107:
	.string	"multi_heap_info"
.LASF75:
	.string	"heap_caps_get_free_size"
.LASF81:
	.string	"heap_caps_get_largest_free_block"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
