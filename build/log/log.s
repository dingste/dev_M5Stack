	.file	"log.c"
	.text
.Ltext0:
	.section	.text.heap_bubble_down,"ax",@progbits
	.literal_position
	.literal .LC0, s_log_cache
	.align	4
	.type	heap_bubble_down, @function
heap_bubble_down:
.LFB26:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/log.c"
	.loc 1 297 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 298 0
	movi.n	a13, 0xe
.LBB19:
	.loc 1 301 0
	l32r	a9, .LC0
.LBE19:
	.loc 1 298 0
	j	.L2
.L4:
.LBB22:
	.loc 1 299 0
	slli	a8, a2, 1
	addi.n	a10, a8, 1
.LVL1:
	.loc 1 301 0
	addx8	a11, a10, a9
	.loc 1 300 0
	addi.n	a8, a8, 2
.LVL2:
	.loc 1 301 0
	l32i.n	a12, a11, 4
	addx8	a11, a8, a9
	l32i.n	a11, a11, 4
	srli	a12, a12, 3
	srli	a11, a11, 3
	blt	a12, a11, .L3
	mov.n	a10, a8
.LVL3:
.L3:
.LBB20:
.LBB21:
	.loc 1 310 0 discriminator 4
	addx8	a8, a10, a9
.LVL4:
	.loc 1 309 0 discriminator 4
	addx8	a2, a2, a9
.LVL5:
	.loc 1 310 0 discriminator 4
	l32i.n	a15, a8, 0
	l32i.n	a14, a8, 4
	.loc 1 309 0 discriminator 4
	l32i.n	a12, a2, 0
	l32i.n	a11, a2, 4
	.loc 1 310 0 discriminator 4
	s32i.n	a15, a2, 0
	s32i.n	a14, a2, 4
	.loc 1 309 0 discriminator 4
	s32i.n	a12, sp, 0
	s32i.n	a11, sp, 4
	.loc 1 311 0 discriminator 4
	s32i.n	a12, a8, 0
	s32i.n	a11, a8, 4
.LBE21:
.LBE20:
	.loc 1 303 0 discriminator 4
	mov.n	a2, a10
.LVL6:
.L2:
.LBE22:
	.loc 1 298 0
	bge	a13, a2, .L4
	.loc 1 305 0
	retw.n
.LFE26:
	.size	heap_bubble_down, .-heap_bubble_down
	.section	.text.esp_log_set_vprintf,"ax",@progbits
	.literal_position
	.literal .LC1, s_log_mutex
	.literal .LC2, s_log_print_func
	.align	4
	.global	esp_log_set_vprintf
	.type	esp_log_set_vprintf, @function
esp_log_set_vprintf:
.LFB18:
	.loc 1 110 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 111 0
	l32r	a3, .LC1
	.loc 1 110 0
	mov.n	a4, a2
	.loc 1 111 0
	l32i.n	a2, a3, 0
.LVL8:
	bnez.n	a2, .L6
	.loc 1 112 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL9:
	s32i.n	a10, a3, 0
.L6:
	.loc 1 114 0
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	mov.n	a11, a13
	movi.n	a12, -1
	call8	xQueueGenericReceive
.LVL10:
	.loc 1 116 0
	l32r	a8, .LC2
	.loc 1 119 0
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	mov.n	a12, a13
	mov.n	a11, a13
	.loc 1 116 0
	l32i.n	a2, a8, 0
.LVL11:
	.loc 1 117 0
	s32i.n	a4, a8, 0
	.loc 1 119 0
	call8	xQueueGenericSend
.LVL12:
	.loc 1 121 0
	retw.n
.LFE18:
	.size	esp_log_set_vprintf, .-esp_log_set_vprintf
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"*"
	.section	.text.esp_log_level_set,"ax",@progbits
	.literal_position
	.literal .LC5, s_log_mutex
	.literal .LC7, .LC6
	.literal .LC8, s_log_default_level
	.literal .LC9, s_log_tags
	.literal .LC10, s_log_cache_entry_count
	.literal .LC11, s_log_cache_max_generation
	.literal .LC12, s_log_cache
	.align	4
	.global	esp_log_level_set
	.type	esp_log_level_set, @function
esp_log_level_set:
.LFB19:
	.loc 1 124 0
.LVL13:
	entry	sp, 48
.LCFI2:
	.loc 1 125 0
	l32r	a5, .LC5
	l32i.n	a4, a5, 0
	bnez.n	a4, .L8
	.loc 1 126 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL14:
	s32i.n	a10, a5, 0
.L8:
	.loc 1 128 0
	movi.n	a13, 0
	l32i.n	a10, a5, 0
	mov.n	a11, a13
	movi.n	a12, -1
	call8	xQueueGenericReceive
.LVL15:
	.loc 1 131 0
	l32r	a11, .LC7
	mov.n	a10, a2
	call8	strcmp
.LVL16:
	l32r	a6, .LC9
	bnez.n	a10, .L9
	.loc 1 132 0
	l32r	a2, .LC8
.LVL17:
	s32i.n	a3, a2, 0
	l32i.n	a2, a6, 0
	j	.L10
.L11:
.LBB27:
.LBB28:
	.loc 1 178 0
	l32i.n	a2, a2, 0
	movi.n	a10, 1
.L10:
	.loc 1 177 0
	bnez.n	a2, .L11
	beqz.n	a10, .L12
	s32i.n	a2, a6, 0
.L12:
	.loc 1 180 0
	l32r	a2, .LC10
	movi.n	a11, 0
	s32i.n	a11, a2, 0
	.loc 1 181 0
	l32r	a2, .LC11
.LBE28:
.LBE27:
	.loc 1 134 0
	mov.n	a13, a11
.LBB30:
.LBB29:
	.loc 1 181 0
	s32i.n	a11, a2, 0
.LBE29:
.LBE30:
	.loc 1 134 0
	mov.n	a12, a11
	j	.L30
.LVL18:
.L9:
	.loc 1 140 0
	l32i.n	a7, a6, 0
.LVL19:
	mov.n	a4, a7
	j	.L14
.LVL20:
.L17:
	.loc 1 141 0
	mov.n	a11, a2
	addi.n	a10, a4, 5
	call8	strcmp
.LVL21:
	bnez.n	a10, .L15
	.loc 1 143 0
	s8i	a3, a4, 4
	j	.L16
.L15:
	.loc 1 140 0 discriminator 2
	l32i.n	a4, a4, 0
.LVL22:
.L14:
	.loc 1 140 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L17
	j	.L28
.LVL23:
.L23:
.LBB31:
	.loc 1 154 0 is_stmt 1
	mov.n	a13, a4
	mov.n	a12, a4
	mov.n	a11, a4
	j	.L30
.L29:
	.loc 1 157 0
	s8i	a3, a8, 4
	.loc 1 158 0
	addi.n	a10, a8, 5
	mov.n	a11, a2
	s32i.n	a8, sp, 0
	call8	strcpy
.LVL24:
	.loc 1 159 0
	l32i.n	a8, sp, 0
	s32i.n	a7, a8, 0
	s32i.n	a8, a6, 0
.L16:
.LVL25:
.LBE31:
.LBB32:
	.loc 1 163 0
	l32r	a4, .LC10
.LVL26:
	l32i.n	a7, a4, 0
	movi.n	a4, 0
	j	.L19
.LVL27:
.L22:
	.loc 1 167 0
	l32r	a8, .LC12
	mov.n	a11, a2
	addx8	a6, a4, a8
	l32i.n	a10, a6, 0
	call8	strcmp
.LVL28:
	bnez.n	a10, .L20
	.loc 1 168 0
	l32i.n	a4, a6, 4
.LVL29:
	movi.n	a2, -8
.LVL30:
	extui	a3, a3, 0, 3
.LVL31:
	and	a2, a4, a2
	or	a3, a2, a3
	s32i.n	a3, a6, 4
	.loc 1 169 0
	j	.L21
.LVL32:
.L20:
	.loc 1 163 0 discriminator 2
	addi.n	a4, a4, 1
.LVL33:
.L19:
	.loc 1 163 0 is_stmt 0 discriminator 1
	bne	a4, a7, .L22
.LVL34:
.L21:
.LBE32:
	.loc 1 172 0 is_stmt 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
.L30:
	l32i.n	a10, a5, 0
	call8	xQueueGenericSend
.LVL35:
	retw.n
.LVL36:
.L28:
.LBB33:
	.loc 1 151 0
	mov.n	a10, a2
	call8	strlen
.LVL37:
	.loc 1 152 0
	addi.n	a10, a10, 6
.LVL38:
	call8	malloc
.LVL39:
	mov.n	a8, a10
.LVL40:
	.loc 1 153 0
	bnez.n	a10, .L29
	j	.L23
.LBE33:
.LFE19:
	.size	esp_log_level_set, .-esp_log_level_set
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC13, s_log_mutex
	.literal .LC14, s_log_cache_entry_count
	.literal .LC15, s_log_cache
	.literal .LC16, s_log_cache_max_generation
	.literal .LC17, s_log_print_func
	.literal .LC18, s_log_tags
	.literal .LC19, s_log_default_level
	.align	4
	.global	esp_log_write
	.type	esp_log_write, @function
esp_log_write:
.LFB21:
	.loc 1 190 0
.LVL41:
	entry	sp, 96
.LCFI3:
	.loc 1 214 0
	s32i.n	a7, sp, 36
	.loc 1 191 0
	l32r	a7, .LC13
	.loc 1 214 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	.loc 1 191 0
	l32i.n	a5, a7, 0
	.loc 1 190 0
	s32i.n	a2, sp, 48
	.loc 1 214 0
	.loc 1 191 0
	bnez.n	a5, .L32
	.loc 1 192 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL42:
	s32i.n	a10, a7, 0
.L32:
	.loc 1 194 0
	movi.n	a13, 0
	l32i.n	a10, a7, 0
	movi.n	a12, 1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL43:
	beqz.n	a10, .L31
.LBB40:
.LBB41:
	.loc 1 223 0
	l32r	a12, .LC14
	l32r	a9, .LC15
	l32i.n	a8, a12, 0
	movi.n	a6, 0
	mov.n	a10, a8
	mov.n	a5, a9
	j	.L34
.LVL44:
.L38:
	addi.n	a9, a9, 8
	.loc 1 227 0
	addi	a11, a9, -8
	l32i.n	a11, a11, 0
	bne	a3, a11, .L35
	mov.n	a10, a6
.L39:
	.loc 1 231 0
	bne	a6, a8, .L52
	j	.L36
.L35:
	.loc 1 223 0
	addi.n	a6, a6, 1
.LVL45:
.L34:
	bne	a8, a6, .L38
	j	.L39
.L52:
	.loc 1 235 0
	addx8	a5, a10, a5
	l32i.n	a9, a5, 4
	.loc 1 241 0
	movi.n	a3, 0x1f
.LVL46:
	.loc 1 235 0
	extui	a6, a9, 0, 3
.LVL47:
	.loc 1 241 0
	bne	a8, a3, .L40
	.loc 1 243 0
	l32r	a8, .LC16
	l32i.n	a3, a8, 0
	addi.n	a9, a3, 1
	s32i.n	a9, a8, 0
	l32i.n	a8, a5, 4
	slli	a3, a3, 3
	extui	a8, a8, 0, 3
	or	a3, a8, a3
	s32i.n	a3, a5, 4
	.loc 1 245 0
	call8	heap_bubble_down
.LVL48:
	j	.L40
.LVL49:
.L43:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 1 283 0
	addi.n	a11, a2, 5
	mov.n	a10, a3
	s32i.n	a12, sp, 52
	call8	strcmp
.LVL50:
	l32i.n	a12, sp, 52
	bnez.n	a10, .L41
	.loc 1 284 0
	l8ui	a2, a2, 4
.LVL51:
	j	.L42
.LVL52:
.L41:
	.loc 1 282 0
	l32i.n	a2, a2, 0
.LVL53:
.L48:
	bnez.n	a2, .L43
	j	.L53
.LVL54:
.L42:
.LBE43:
.LBE42:
.LBB45:
.LBB46:
	.loc 1 252 0
	l32r	a10, .LC16
	l32i.n	a8, a10, 0
	addi.n	a11, a8, 1
	s32i.n	a11, a10, 0
.LVL55:
	.loc 1 256 0
	movi.n	a11, 0x1e
	extui	a10, a2, 0, 8
	slli	a8, a8, 3
.LVL56:
	bltu	a11, a6, .L45
	.loc 1 257 0
	extui	a10, a10, 0, 3
	addx8	a5, a6, a5
	or	a8, a10, a8
	.loc 1 262 0
	addi.n	a6, a6, 1
.LVL57:
	.loc 1 257 0
	s32i.n	a3, a5, 0
	s32i.n	a8, a5, 4
	.loc 1 262 0
	s32i.n	a6, a12, 0
	j	.L46
.LVL58:
.L45:
	.loc 1 269 0
	extui	a10, a10, 0, 3
	or	a8, a10, a8
	s32i.n	a3, a5, 0
	s32i.n	a8, a5, 4
	.loc 1 274 0
	movi.n	a10, 0
	call8	heap_bubble_down
.LVL59:
.L46:
.LBE46:
.LBE45:
	.loc 1 208 0
	movi.n	a13, 0
	l32i.n	a10, a7, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL60:
	.loc 1 209 0
	l32i.n	a3, sp, 48
	bltu	a2, a3, .L31
	.loc 1 215 0
	l32r	a2, .LC17
.LVL61:
	.loc 1 214 0
	addi	a12, sp, 16
	.loc 1 215 0
	l32i.n	a2, a2, 0
	.loc 1 214 0
	addi	a11, sp, 64
	movi.n	a13, 0xc
	.loc 1 215 0
	mov.n	a10, a4
	.loc 1 214 0
	s32i.n	a12, sp, 4
	s32i.n	a11, sp, 0
	s32i.n	a13, sp, 8
	.loc 1 215 0
	callx8	a2
.LVL62:
	retw.n
.LVL63:
.L40:
	.loc 1 201 0
	mov.n	a2, a6
.LVL64:
	j	.L46
.LVL65:
.L36:
.LBB47:
.LBB44:
	.loc 1 282 0
	l32r	a8, .LC18
	l32i.n	a2, a8, 0
.LVL66:
	j	.L48
.L53:
.LBE44:
.LBE47:
	.loc 1 201 0
	l32r	a8, .LC19
	l32i.n	a2, a8, 0
.LVL67:
	j	.L42
.LVL68:
.L31:
	retw.n
.LFE21:
	.size	esp_log_write, .-esp_log_write
	.literal_position
	.literal .LC20, g_ticks_per_us_pro
	.align	4
	.global	esp_log_early_timestamp
	.type	esp_log_early_timestamp, @function
esp_log_early_timestamp:
.LFB28:
	.loc 1 327 0
	entry	sp, 32
.LCFI4:
	.loc 1 328 0
	call8	xthal_get_ccount
.LVL69:
	l32r	a2, .LC20
	l32i.n	a8, a2, 0
	slli	a2, a8, 5
	sub	a2, a2, a8
	addx4	a2, a2, a8
	slli	a2, a2, 3
	.loc 1 329 0
	quou	a2, a10, a2
	retw.n
.LFE28:
	.size	esp_log_early_timestamp, .-esp_log_early_timestamp
	.literal_position
	.literal .LC21, base$5514
	.align	4
	.global	esp_log_timestamp
	.type	esp_log_timestamp, @function
esp_log_timestamp:
.LFB29:
	.loc 1 334 0
	entry	sp, 32
.LCFI5:
	.loc 1 335 0
	call8	xTaskGetSchedulerState
.LVL70:
	bnei	a10, 1, .L56
	.loc 1 336 0
	call8	esp_log_early_timestamp
.LVL71:
	j	.L57
.L56:
	.loc 1 339 0
	l32r	a3, .LC21
	l32i.n	a2, a3, 0
	bnez.n	a2, .L58
.LBB48:
.LBB49:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL72:
#NO_APP
.LBE49:
.LBE48:
	.loc 1 339 0
	bnez.n	a2, .L58
	.loc 1 340 0
	call8	esp_log_early_timestamp
.LVL73:
	s32i.n	a10, a3, 0
.LVL74:
.L58:
	.loc 1 342 0
	call8	xTaskGetTickCount
.LVL75:
	l32i.n	a2, a3, 0
	addx4	a10, a10, a10
	addx2	a10, a10, a2
.L57:
	.loc 1 343 0
	mov.n	a2, a10
	retw.n
.LFE29:
	.size	esp_log_timestamp, .-esp_log_timestamp
	.section	.rodata.str1.1
.LC26:
	.string	"%02x "
.LC28:
	.string	"\033[0;31mE (%d) %s: %s\033[0m\n"
.LC30:
	.string	"\033[0;33mW (%d) %s: %s\033[0m\n"
.LC32:
	.string	"D (%d) %s: %s\033[0m\n"
.LC34:
	.string	"V (%d) %s: %s\033[0m\n"
.LC36:
	.string	"\033[0;32mI (%d) %s: %s\033[0m\n"
	.section	.text.esp_log_buffer_hex_internal,"ax",@progbits
	.literal_position
	.literal .LC24, -1073283072
	.literal .LC25, 458751
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.align	4
	.global	esp_log_buffer_hex_internal
	.type	esp_log_buffer_hex_internal, @function
esp_log_buffer_hex_internal:
.LFB30:
	.loc 1 353 0
.LVL76:
	entry	sp, 128
.LCFI6:
	.loc 1 353 0
	extui	a4, a4, 0, 16
	.loc 1 354 0
	beqz.n	a4, .L59
	.loc 1 361 0
	movi.n	a7, 0x10
.LVL77:
.L69:
	.loc 1 362 0
	movi.n	a6, 0x10
	.loc 1 361 0
	bltu	a7, a4, .L61
	.loc 1 364 0
	mov.n	a6, a4
.LVL78:
.L61:
	.loc 1 366 0
	l32r	a9, .LC24
	l32r	a10, .LC25
	add.n	a9, a3, a9
	mov.n	a8, a3
	bgeu	a10, a9, .L62
	.loc 1 368 0
	addi.n	a12, a6, 3
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	addi	a10, sp, 49
	call8	memcpy
.LVL79:
	.loc 1 369 0
	addi	a8, sp, 49
.LVL80:
.L62:
	mov.n	a9, sp
	add.n	a13, a8, a6
.LVL81:
.L63:
.LBB50:
	.loc 1 375 0 discriminator 3
	l8ui	a12, a8, 0
	l32r	a11, .LC27
	mov.n	a10, a9
	s32i	a8, sp, 88
	s32i	a9, sp, 84
	s32i	a13, sp, 80
	call8	sprintf
.LVL82:
	l32i	a8, sp, 88
	l32i	a9, sp, 84
	.loc 1 374 0 discriminator 3
	l32i	a13, sp, 80
	addi.n	a8, a8, 1
	addi.n	a9, a9, 3
	bne	a13, a8, .L63
.LBE50:
	.loc 1 377 0
	bnei	a5, 1, .L64
	.loc 1 377 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL83:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC29
	j	.L79
.L64:
	.loc 1 377 0 discriminator 2
	bnei	a5, 2, .L66
	.loc 1 377 0 discriminator 3
	call8	esp_log_timestamp
.LVL84:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC31
	j	.L79
.L66:
	.loc 1 377 0 discriminator 4
	bnei	a5, 4, .L67
	.loc 1 377 0 discriminator 5
	call8	esp_log_timestamp
.LVL85:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC33
	j	.L79
.L67:
	.loc 1 377 0 discriminator 6
	bnei	a5, 5, .L68
	.loc 1 377 0 discriminator 7
	call8	esp_log_timestamp
.LVL86:
	l32r	a12, .LC35
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
.L79:
	mov.n	a11, a2
	mov.n	a10, a5
	j	.L78
.L68:
	.loc 1 377 0 discriminator 8
	call8	esp_log_timestamp
.LVL87:
	l32r	a12, .LC37
	mov.n	a13, a10
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
.L78:
	.loc 1 379 0 is_stmt 1 discriminator 8
	sub	a4, a4, a6
.LVL88:
	extui	a4, a4, 0, 16
	.loc 1 377 0 discriminator 8
	call8	esp_log_write
.LVL89:
	.loc 1 378 0 discriminator 8
	add.n	a3, a3, a6
.LVL90:
	.loc 1 380 0 discriminator 8
	bnez.n	a4, .L69
.LVL91:
.L59:
	retw.n
.LFE30:
	.size	esp_log_buffer_hex_internal, .-esp_log_buffer_hex_internal
	.section	.rodata.str1.1
.LC40:
	.string	"%c"
	.section	.text.esp_log_buffer_char_internal,"ax",@progbits
	.literal_position
	.literal .LC38, -1073283072
	.literal .LC39, 458751
	.literal .LC41, .LC40
	.literal .LC42, .LC28
	.literal .LC43, .LC30
	.literal .LC44, .LC32
	.literal .LC45, .LC34
	.literal .LC46, .LC36
	.align	4
	.global	esp_log_buffer_char_internal
	.type	esp_log_buffer_char_internal, @function
esp_log_buffer_char_internal:
.LFB31:
	.loc 1 385 0
.LVL92:
	entry	sp, 96
.LCFI7:
.LVL93:
.L99:
	.loc 1 385 0
	extui	a4, a4, 0, 16
	.loc 1 386 0
	beqz.n	a4, .L80
.LVL94:
	.loc 1 394 0
	movi.n	a7, 0x10
	.loc 1 393 0
	bltu	a7, a4, .L82
	.loc 1 396 0
	mov.n	a7, a4
.LVL95:
.L82:
	.loc 1 398 0
	l32r	a6, .LC38
	l32r	a9, .LC39
	add.n	a6, a3, a6
	mov.n	a8, a3
	bgeu	a9, a6, .L83
	.loc 1 400 0
	addi.n	a12, a7, 3
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL96:
	.loc 1 401 0
	mov.n	a8, sp
.LVL97:
.L83:
	addi	a9, sp, 19
	add.n	a13, a8, a7
	mov.n	a6, a9
.LVL98:
.L84:
.LBB51:
	.loc 1 407 0 discriminator 3
	l8ui	a12, a8, 0
	l32r	a11, .LC41
	mov.n	a10, a9
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 52
	s32i.n	a13, sp, 48
	call8	sprintf
.LVL99:
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 52
	.loc 1 406 0 discriminator 3
	l32i.n	a13, sp, 48
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	bne	a13, a8, .L84
.LBE51:
	.loc 1 409 0
	bnei	a5, 1, .L85
	.loc 1 409 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL100:
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC42
	j	.L101
.L85:
	.loc 1 409 0 discriminator 2
	bnei	a5, 2, .L87
	.loc 1 409 0 discriminator 3
	call8	esp_log_timestamp
.LVL101:
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC43
	j	.L101
.L87:
	.loc 1 409 0 discriminator 4
	bnei	a5, 4, .L88
	.loc 1 409 0 discriminator 5
	call8	esp_log_timestamp
.LVL102:
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC44
	j	.L101
.L88:
	.loc 1 409 0 discriminator 6
	bnei	a5, 5, .L89
	.loc 1 409 0 discriminator 7
	call8	esp_log_timestamp
.LVL103:
	l32r	a12, .LC45
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a13, a10
.L101:
	mov.n	a11, a2
	mov.n	a10, a5
	j	.L100
.L89:
	.loc 1 409 0 discriminator 8
	call8	esp_log_timestamp
.LVL104:
	l32r	a12, .LC46
	mov.n	a13, a10
	mov.n	a15, a6
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
.L100:
	call8	esp_log_write
.LVL105:
	.loc 1 410 0 is_stmt 1 discriminator 8
	add.n	a3, a3, a7
.LVL106:
	.loc 1 411 0 discriminator 8
	sub	a4, a4, a7
.LVL107:
	j	.L99
.LVL108:
.L80:
	retw.n
.LFE31:
	.size	esp_log_buffer_char_internal, .-esp_log_buffer_char_internal
	.section	.rodata.str1.1
.LC49:
	.string	"%p "
.LC51:
	.string	" "
.LC53:
	.string	" %02x"
.LC55:
	.string	"   "
.LC57:
	.string	"  |"
.LC61:
	.string	"."
.LC63:
	.string	"|"
	.section	.text.esp_log_buffer_hexdump_internal,"ax",@progbits
	.literal_position
	.literal .LC47, -1073283072
	.literal .LC48, 458751
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.literal .LC58, .LC57
	.literal .LC59, __ctype_ptr__
	.literal .LC60, .LC40
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.literal .LC65, .LC28
	.literal .LC66, .LC30
	.literal .LC67, .LC32
	.literal .LC68, .LC34
	.literal .LC69, .LC36
	.align	4
	.global	esp_log_buffer_hexdump_internal
	.type	esp_log_buffer_hexdump_internal, @function
esp_log_buffer_hexdump_internal:
.LFB32:
	.loc 1 416 0
.LVL109:
	entry	sp, 160
.LCFI8:
.LVL110:
.L128:
	.loc 1 416 0
	extui	a4, a4, 0, 16
	.loc 1 418 0
	beqz.n	a4, .L102
.LVL111:
	.loc 1 429 0
	movi.n	a7, 0x10
	.loc 1 428 0
	bltu	a7, a4, .L104
	.loc 1 431 0
	mov.n	a7, a4
.LVL112:
.L104:
	.loc 1 433 0
	l32r	a8, .LC47
	l32r	a9, .LC48
	add.n	a8, a3, a8
	s32i	a3, sp, 112
	bgeu	a9, a8, .L105
	.loc 1 435 0
	addi.n	a12, a7, 3
	srai	a12, a12, 2
	slli	a12, a12, 2
	mov.n	a11, a3
	addi	a10, sp, 82
	call8	memcpy
.LVL113:
	.loc 1 436 0
	addi	a8, sp, 82
.LVL114:
	s32i	a8, sp, 112
.LVL115:
.L105:
	.loc 1 442 0
	l32r	a11, .LC50
	mov.n	a12, a3
	mov.n	a10, sp
.LVL116:
	call8	sprintf
.LVL117:
	add.n	a6, sp, a10
.LVL118:
.LBB52:
	.loc 1 443 0
	movi.n	a9, 0
.LVL119:
.L109:
	.loc 1 444 0
	extui	a10, a9, 0, 3
	bnez.n	a10, .L106
	.loc 1 445 0
	l32r	a11, .LC52
	mov.n	a10, a6
	s32i	a9, sp, 120
	call8	strcpy
.LVL120:
	l32i	a9, sp, 120
	addi.n	a6, a6, 1
.LVL121:
.L106:
	.loc 1 447 0
	bge	a9, a7, .L107
	.loc 1 448 0
	l32i	a8, sp, 112
	l32r	a11, .LC54
	add.n	a10, a8, a9
	l8ui	a12, a10, 0
	mov.n	a10, a6
	s32i	a9, sp, 120
	call8	sprintf
.LVL122:
	add.n	a6, a6, a10
.LVL123:
	j	.L129
.L107:
	.loc 1 450 0
	l32r	a11, .LC56
	mov.n	a10, a6
	s32i	a9, sp, 120
	addi.n	a6, a6, 3
.LVL124:
	call8	strcpy
.LVL125:
.L129:
	l32i	a9, sp, 120
	.loc 1 443 0
	addi.n	a9, a9, 1
.LVL126:
	bnei	a9, 16, .L109
.LBE52:
	.loc 1 453 0
	l32r	a11, .LC58
	mov.n	a10, a6
	call8	strcpy
.LVL127:
.LBB53:
	.loc 1 455 0
	l32r	a10, .LC59
.LBE53:
	.loc 1 453 0
	addi.n	a8, a6, 3
.LVL128:
	l32i	a6, sp, 112
.LBB54:
	.loc 1 455 0
	l32i.n	a10, a10, 0
	add.n	a9, a6, a7
	s32i	a9, sp, 112
	s32i	a10, sp, 116
.LVL129:
.L112:
	l8ui	a12, a6, 0
	l32i	a9, sp, 116
	movi	a11, 0x97
	add.n	a10, a9, a12
	l8ui	a10, a10, 1
	bnone	a11, a10, .L110
	.loc 1 456 0
	l32r	a11, .LC60
	mov.n	a10, a8
	s32i	a8, sp, 120
	call8	sprintf
.LVL130:
	l32i	a8, sp, 120
	add.n	a8, a8, a10
.LVL131:
	j	.L111
.L110:
	.loc 1 458 0
	l32r	a11, .LC62
	mov.n	a10, a8
	call8	strcpy
.LVL132:
	addi.n	a8, a10, 1
.LVL133:
.L111:
	.loc 1 454 0 discriminator 2
	l32i	a9, sp, 112
	addi.n	a6, a6, 1
	bne	a9, a6, .L112
.LBE54:
	.loc 1 461 0
	l32r	a11, .LC64
	mov.n	a10, a8
	call8	strcpy
.LVL134:
	.loc 1 463 0
	bnei	a5, 1, .L113
	.loc 1 463 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL135:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC65
	j	.L131
.L113:
	.loc 1 463 0 discriminator 2
	bnei	a5, 2, .L115
	.loc 1 463 0 discriminator 3
	call8	esp_log_timestamp
.LVL136:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC66
	j	.L131
.L115:
	.loc 1 463 0 discriminator 4
	bnei	a5, 4, .L116
	.loc 1 463 0 discriminator 5
	call8	esp_log_timestamp
.LVL137:
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC67
	j	.L131
.L116:
	.loc 1 463 0 discriminator 6
	bnei	a5, 5, .L117
	.loc 1 463 0 discriminator 7
	call8	esp_log_timestamp
.LVL138:
	l32r	a12, .LC68
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a13, a10
.L131:
	mov.n	a11, a2
	mov.n	a10, a5
	j	.L130
.L117:
	.loc 1 463 0 discriminator 8
	call8	esp_log_timestamp
.LVL139:
	l32r	a12, .LC69
	mov.n	a13, a10
	mov.n	a15, sp
	mov.n	a14, a2
	mov.n	a11, a2
	movi.n	a10, 3
.L130:
	call8	esp_log_write
.LVL140:
	.loc 1 464 0 is_stmt 1 discriminator 8
	add.n	a3, a3, a7
.LVL141:
	.loc 1 465 0 discriminator 8
	sub	a4, a4, a7
.LVL142:
	j	.L128
.LVL143:
.L102:
	retw.n
.LFE32:
	.size	esp_log_buffer_hexdump_internal, .-esp_log_buffer_hexdump_internal
	.section	.bss.base$5514,"aw",@nobits
	.align	4
	.type	base$5514, @object
	.size	base$5514, 4
base$5514:
	.zero	4
	.section	.bss.s_log_mutex,"aw",@nobits
	.align	4
	.type	s_log_mutex, @object
	.size	s_log_mutex, 4
s_log_mutex:
	.zero	4
	.section	.data.s_log_print_func,"aw",@progbits
	.align	4
	.type	s_log_print_func, @object
	.size	s_log_print_func, 4
s_log_print_func:
	.word	vprintf
	.section	.bss.s_log_cache_entry_count,"aw",@nobits
	.align	4
	.type	s_log_cache_entry_count, @object
	.size	s_log_cache_entry_count, 4
s_log_cache_entry_count:
	.zero	4
	.section	.bss.s_log_cache_max_generation,"aw",@nobits
	.align	4
	.type	s_log_cache_max_generation, @object
	.size	s_log_cache_max_generation, 4
s_log_cache_max_generation:
	.zero	4
	.section	.bss.s_log_cache,"aw",@nobits
	.align	4
	.type	s_log_cache, @object
	.size	s_log_cache, 248
s_log_cache:
	.zero	248
	.section	.bss.s_log_tags,"aw",@nobits
	.align	4
	.type	s_log_tags, @object
	.size	s_log_tags, 4
s_log_tags:
	.zero	4
	.section	.data.s_log_default_level,"aw",@progbits
	.align	4
	.type	s_log_default_level, @object
	.size	s_log_default_level, 4
s_log_default_level:
	.word	5
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI8-.LFB32
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/ctype.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/xtensa/hal.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe01
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf5
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x28
	.4byte	0x101
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xc
	.byte	0x7
	.byte	0
	.4byte	0x132
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x7
	.byte	0
	.4byte	0xa2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x76
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xa
	.byte	0x4f
	.4byte	0x154
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x62
	.4byte	0xf6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x26
	.4byte	0x175
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xb
	.byte	0x28
	.4byte	0x1bc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x1d6
	.uleb128 0xe
	.4byte	0xb8
	.uleb128 0xe
	.4byte	0x16a
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x4d
	.4byte	0x209
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x4e
	.4byte	0xb8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.4byte	0xd9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x50
	.4byte	0xd9
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.4byte	0x1d6
	.uleb128 0xf
	.byte	0x4
	.byte	0x1
	.byte	0x54
	.4byte	0x229
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0x54
	.4byte	0x25a
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.4byte	0x25a
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x54
	.4byte	0x214
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x55
	.4byte	0xc3
	.byte	0x4
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x56
	.4byte	0x260
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x229
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0x26f
	.uleb128 0x13
	.4byte	0x9b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x1
	.byte	0x57
	.4byte	0x229
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.4byte	0x293
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0x5a
	.4byte	0x25a
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x123
	.4byte	0x132
	.byte	0x3
	.4byte	0x2bd
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x123
	.4byte	0x1a6
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x123
	.4byte	0x1a6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x2
	.byte	0xce
	.4byte	0xd9
	.byte	0x3
	.4byte	0x2d8
	.uleb128 0x17
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0xc
	.byte	0x9b
	.4byte	0x132
	.byte	0x3
	.4byte	0x2fb
	.uleb128 0x19
	.string	"p"
	.byte	0xc
	.byte	0x9b
	.4byte	0xef
	.uleb128 0x17
	.string	"r"
	.byte	0xc
	.byte	0x9d
	.4byte	0x132
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x133
	.byte	0x3
	.4byte	0x329
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.2byte	0x135
	.4byte	0x209
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x128
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bb
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x128
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x12b
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12c
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x12d
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	0x2fb
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x12e
	.uleb128 0x22
	.4byte	0x312
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	0x308
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x24
	.4byte	0x31c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6d
	.4byte	0x1b1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43b
	.uleb128 0x26
	.4byte	.LASF58
	.byte	0x1
	.byte	0x6d
	.4byte	0x1b1
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LASF59
	.byte	0x1
	.byte	0x74
	.4byte	0x1b1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0xd6d
	.4byte	0x403
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xd79
	.4byte	0x421
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL12
	.4byte	0xd85
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF110
	.byte	0x1
	.byte	0xaf
	.byte	0x3
	.uleb128 0x2c
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x589
	.uleb128 0x2d
	.string	"tag"
	.byte	0x1
	.byte	0x7b
	.4byte	0xb8
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7b
	.4byte	0x1a6
	.4byte	.LLST8
	.uleb128 0x2e
	.string	"it"
	.byte	0x1
	.byte	0x8b
	.4byte	0x589
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	0x43b
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x85
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x4ec
	.uleb128 0x31
	.4byte	.LASF60
	.byte	0x1
	.byte	0x97
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x31
	.4byte	.LASF61
	.byte	0x1
	.byte	0x98
	.4byte	0x589
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0xd91
	.4byte	0x4ce
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0xd9c
	.4byte	0x4e2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL39
	.4byte	0xda7
	.byte	0
	.uleb128 0x33
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x517
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0xdb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0xd6d
	.4byte	0x52a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xd79
	.4byte	0x548
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0xdb2
	.4byte	0x565
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0xdb2
	.4byte	0x57f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL35
	.4byte	0xd85
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26f
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0xdb
	.4byte	0x132
	.byte	0x3
	.4byte	0x5bf
	.uleb128 0x19
	.string	"tag"
	.byte	0x1
	.byte	0xdb
	.4byte	0xb8
	.uleb128 0x34
	.4byte	.LASF38
	.byte	0x1
	.byte	0xdb
	.4byte	0x5bf
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xde
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x115
	.4byte	0x132
	.byte	0x3
	.4byte	0x5fa
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.2byte	0x115
	.4byte	0xb8
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x115
	.4byte	0x5bf
	.uleb128 0x1c
	.string	"it"
	.byte	0x1
	.2byte	0x119
	.4byte	0x589
	.byte	0
	.uleb128 0x35
	.4byte	.LASF64
	.byte	0x1
	.byte	0xfa
	.byte	0x3
	.4byte	0x628
	.uleb128 0x19
	.string	"tag"
	.byte	0x1
	.byte	0xfa
	.4byte	0xb8
	.uleb128 0x34
	.4byte	.LASF38
	.byte	0x1
	.byte	0xfa
	.4byte	0x1a6
	.uleb128 0x36
	.4byte	.LASF39
	.byte	0x1
	.byte	0xfc
	.4byte	0xd9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF66
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbb
	.4byte	0x1a6
	.4byte	.LLST13
	.uleb128 0x2d
	.string	"tag"
	.byte	0x1
	.byte	0xbc
	.4byte	0xb8
	.4byte	.LLST14
	.uleb128 0x37
	.4byte	.LASF67
	.byte	0x1
	.byte	0xbd
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.uleb128 0x31
	.4byte	.LASF49
	.byte	0x1
	.byte	0xc5
	.4byte	0x1a6
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0x1
	.byte	0xd5
	.4byte	0x16a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.4byte	0x58f
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xc7
	.4byte	0x6c1
	.uleb128 0x3a
	.4byte	0x5aa
	.uleb128 0x3a
	.4byte	0x59f
	.uleb128 0x23
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x3b
	.4byte	0x5b5
	.4byte	.LLST16
	.uleb128 0x32
	.4byte	.LVL48
	.4byte	0x329
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0x5c5
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xc8
	.4byte	0x70c
	.uleb128 0x22
	.4byte	0x5e2
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	0x5d6
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x3b
	.4byte	0x5ee
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LVL50
	.4byte	0xdb2
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0x5fa
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0xcb
	.4byte	0x754
	.uleb128 0x22
	.4byte	0x611
	.4byte	.LLST20
	.uleb128 0x22
	.4byte	0x606
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x3b
	.4byte	0x61c
	.4byte	.LLST22
	.uleb128 0x2a
	.4byte	.LVL59
	.4byte	0x329
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0xd6d
	.4byte	0x767
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0xd79
	.4byte	0x784
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0xd85
	.4byte	0x7a1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL62
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x146
	.4byte	0xd9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL69
	.4byte	0xdbd
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x14d
	.4byte	0xd9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84e
	.uleb128 0x3f
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x152
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	base$5514
	.uleb128 0x40
	.4byte	0x2bd
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x153
	.4byte	0x829
	.uleb128 0x23
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x3b
	.4byte	0x2cd
	.4byte	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL70
	.4byte	0xdc9
	.uleb128 0x32
	.4byte	.LVL71
	.4byte	0x7b1
	.uleb128 0x32
	.4byte	.LVL73
	.4byte	0x7b1
	.uleb128 0x32
	.4byte	.LVL75
	.4byte	0xdd5
	.byte	0
	.uleb128 0x41
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x15f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96b
	.uleb128 0x42
	.string	"tag"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x15f
	.4byte	0xef
	.4byte	.LLST24
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x15f
	.4byte	0xce
	.4byte	.LLST25
	.uleb128 0x43
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x160
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x163
	.4byte	0x96b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x3f
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x164
	.4byte	0x97b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x165
	.4byte	0xb8
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x166
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x33
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x90f
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.2byte	0x176
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x2a
	.4byte	.LVL82
	.4byte	0xde1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL79
	.4byte	0xdec
	.4byte	0x934
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x76
	.sleb128 3
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x32
	.4byte	.LVL83
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL84
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL85
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL86
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL87
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL89
	.4byte	0x628
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0x97b
	.uleb128 0x45
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0x98b
	.uleb128 0x45
	.4byte	0x9b
	.byte	0x30
	.byte	0
	.uleb128 0x41
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa8
	.uleb128 0x42
	.string	"tag"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x17f
	.4byte	0xef
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x17f
	.4byte	0xce
	.4byte	.LLST30
	.uleb128 0x43
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x180
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x183
	.4byte	0x96b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x184
	.4byte	0xaa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x185
	.4byte	0xb8
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x186
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x33
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0xa4c
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.2byte	0x196
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x2a
	.4byte	.LVL99
	.4byte	0xde1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL96
	.4byte	0xdec
	.4byte	0xa71
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x77
	.sleb128 3
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x32
	.4byte	.LVL100
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL101
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL102
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL103
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL104
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0x628
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xab8
	.uleb128 0x45
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x41
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x19f
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbf
	.uleb128 0x42
	.string	"tag"
	.byte	0x1
	.2byte	0x19f
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x19f
	.4byte	0xef
	.4byte	.LLST34
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x19f
	.4byte	0xce
	.4byte	.LLST35
	.uleb128 0x43
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x19f
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x96b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xb8
	.4byte	.LLST36
	.uleb128 0x3f
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xcbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xab
	.4byte	.LLST37
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x33
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0xbc9
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0xdf5
	.4byte	0xb92
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.uleb128 0x28
	.4byte	.LVL122
	.4byte	0xde1
	.4byte	0xbaf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL125
	.4byte	0xdf5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 -3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xc0b
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x28
	.4byte	.LVL130
	.4byte	0xde1
	.4byte	0xbf7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL132
	.4byte	0xdf5
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL113
	.4byte	0xdec
	.4byte	0xc30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x77
	.sleb128 3
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0xde1
	.4byte	0xc54
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL127
	.4byte	0xdf5
	.4byte	0xc71
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0x28
	.4byte	.LVL134
	.4byte	0xdf5
	.4byte	0xc88
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0
	.uleb128 0x32
	.4byte	.LVL135
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL136
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL137
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL138
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL139
	.4byte	0x7d5
	.uleb128 0x32
	.4byte	.LVL140
	.4byte	0x628
	.byte	0
	.uleb128 0x12
	.4byte	0xb1
	.4byte	0xccf
	.uleb128 0x45
	.4byte	0x9b
	.byte	0x51
	.byte	0
	.uleb128 0x27
	.4byte	.LASF86
	.byte	0x1
	.byte	0x59
	.4byte	0x1a6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_default_level
	.uleb128 0x27
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5a
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_tags
	.uleb128 0x12
	.4byte	0x209
	.4byte	0xd01
	.uleb128 0x45
	.4byte	0x9b
	.byte	0x1e
	.byte	0
	.uleb128 0x27
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5b
	.4byte	0xcf1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache
	.uleb128 0x27
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5c
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache_max_generation
	.uleb128 0x27
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5d
	.4byte	0xd9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_cache_entry_count
	.uleb128 0x27
	.4byte	.LASF91
	.byte	0x1
	.byte	0x5e
	.4byte	0x1b1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_print_func
	.uleb128 0x27
	.4byte	.LASF92
	.byte	0x1
	.byte	0x5f
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_log_mutex
	.uleb128 0x46
	.4byte	.LASF93
	.byte	0xd
	.byte	0x2d
	.4byte	0x14f
	.uleb128 0x47
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x144
	.4byte	0xd9
	.uleb128 0x48
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x578
	.uleb128 0x48
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x38a
	.uleb128 0x48
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x265
	.uleb128 0x49
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xe
	.byte	0x1e
	.uleb128 0x49
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xe
	.byte	0x21
	.uleb128 0x49
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xf
	.byte	0x65
	.uleb128 0x49
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xe
	.byte	0x1c
	.uleb128 0x48
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x10
	.2byte	0x2d4
	.uleb128 0x48
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x11
	.2byte	0x8bb
	.uleb128 0x48
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x11
	.2byte	0x50a
	.uleb128 0x49
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x12
	.byte	0xde
	.uleb128 0x4a
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x4b
	.4byte	.LASF98
	.4byte	.LASF112
	.byte	0x7
	.byte	0
	.4byte	.LASF98
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7a
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1641
	.sleb128 0
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1641
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL59-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_log_cache_max_generation
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0x91
	.sleb128 -79
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL78
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL92
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL95
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL109
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0x91
	.sleb128 -78
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117-1
	.4byte	.LVL118
	.2byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125-1
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x76
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL112
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"should_output"
.LASF92:
	.string	"s_log_mutex"
.LASF88:
	.string	"s_log_cache"
.LASF64:
	.string	"add_to_cache"
.LASF78:
	.string	"hex_buffer"
.LASF83:
	.string	"esp_log_buffer_hexdump_internal"
.LASF39:
	.string	"generation"
.LASF86:
	.string	"s_log_default_level"
.LASF57:
	.string	"index"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF100:
	.string	"malloc"
.LASF13:
	.string	"sizetype"
.LASF53:
	.string	"heap_swap"
.LASF52:
	.string	"xPortGetCoreID"
.LASF103:
	.string	"xTaskGetSchedulerState"
.LASF93:
	.string	"__ctype_ptr__"
.LASF23:
	.string	"__va_ndx"
.LASF69:
	.string	"esp_log_set_vprintf"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF110:
	.string	"clear_log_level_list"
.LASF7:
	.string	"__uint16_t"
.LASF29:
	.string	"va_list"
.LASF42:
	.string	"__va_list_tag"
.LASF111:
	.string	"memcpy"
.LASF68:
	.string	"list"
.LASF16:
	.string	"uint8_t"
.LASF11:
	.string	"__intptr_t"
.LASF18:
	.string	"uint32_t"
.LASF66:
	.string	"esp_log_write"
.LASF97:
	.string	"xQueueGenericSend"
.LASF19:
	.string	"intptr_t"
.LASF81:
	.string	"esp_log_buffer_char_internal"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"uncached_tag_entry_t"
.LASF67:
	.string	"format"
.LASF10:
	.string	"long long unsigned int"
.LASF95:
	.string	"xQueueCreateMutex"
.LASF12:
	.string	"long int"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF107:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/log.c"
.LASF4:
	.string	"__uint8_t"
.LASF104:
	.string	"xTaskGetTickCount"
.LASF27:
	.string	"QueueHandle_t"
.LASF75:
	.string	"buff_len"
.LASF46:
	.string	"log_tags_head"
.LASF91:
	.string	"s_log_print_func"
.LASF40:
	.string	"cached_tag_entry_t"
.LASF105:
	.string	"sprintf"
.LASF28:
	.string	"SemaphoreHandle_t"
.LASF5:
	.string	"unsigned char"
.LASF58:
	.string	"func"
.LASF59:
	.string	"orig_func"
.LASF2:
	.string	"signed char"
.LASF44:
	.string	"entries"
.LASF90:
	.string	"s_log_cache_entry_count"
.LASF112:
	.string	"__builtin_strcpy"
.LASF43:
	.string	"uncached_tag_entry_"
.LASF62:
	.string	"get_cached_log_level"
.LASF17:
	.string	"uint16_t"
.LASF25:
	.string	"BaseType_t"
.LASF60:
	.string	"entry_size"
.LASF99:
	.string	"strlen"
.LASF79:
	.string	"ptr_line"
.LASF26:
	.string	"TickType_t"
.LASF47:
	.string	"slh_first"
.LASF71:
	.string	"esp_log_timestamp"
.LASF61:
	.string	"new_entry"
.LASF63:
	.string	"get_uncached_log_level"
.LASF108:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/log"
.LASF15:
	.string	"char"
.LASF48:
	.string	"level_for_message"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF76:
	.string	"log_level"
.LASF1:
	.string	"short unsigned int"
.LASF98:
	.string	"strcpy"
.LASF102:
	.string	"xthal_get_ccount"
.LASF84:
	.string	"hd_buffer"
.LASF24:
	.string	"_Bool"
.LASF70:
	.string	"esp_log_early_timestamp"
.LASF36:
	.string	"esp_log_level_t"
.LASF80:
	.string	"bytes_cur_line"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF96:
	.string	"xQueueGenericReceive"
.LASF74:
	.string	"buffer"
.LASF55:
	.string	"right_index"
.LASF14:
	.string	"long unsigned int"
.LASF49:
	.string	"level_for_tag"
.LASF54:
	.string	"left_index"
.LASF21:
	.string	"__va_stk"
.LASF41:
	.string	"sle_next"
.LASF72:
	.string	"base"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"level"
.LASF101:
	.string	"strcmp"
.LASF77:
	.string	"temp_buffer"
.LASF20:
	.string	"__gnuc_va_list"
.LASF22:
	.string	"__va_reg"
.LASF37:
	.string	"vprintf_like_t"
.LASF87:
	.string	"s_log_tags"
.LASF73:
	.string	"esp_log_buffer_hex_internal"
.LASF85:
	.string	"ptr_hd"
.LASF106:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF109:
	.string	"heap_bubble_down"
.LASF82:
	.string	"char_buffer"
.LASF51:
	.string	"esp_ptr_byte_accessible"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF94:
	.string	"g_ticks_per_us_pro"
.LASF56:
	.string	"next"
.LASF89:
	.string	"s_log_cache_max_generation"
.LASF65:
	.string	"esp_log_level_set"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
