	.file	"pthread.c"
	.text
.Ltext0:
	.section	.text.pthread_list_find_item,"ax",@progbits
	.literal_position
	.literal .LC0, s_threads_list
	.align	4
	.type	pthread_list_find_item, @function
pthread_list_find_item:
.LFB20:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread.c"
	.loc 1 96 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 98 0
	l32r	a4, .LC0
	j	.L6
.LVL1:
.L4:
.LBB9:
	.loc 1 99 0
	mov.n	a11, a3
	mov.n	a10, a4
	callx8	a2
.LVL2:
	.loc 1 100 0
	bnez.n	a10, .L5
.LVL3:
.L6:
.LBE9:
	.loc 1 98 0 discriminator 2
	l32i.n	a4, a4, 0
.LVL4:
	bnez.n	a4, .L4
	.loc 1 104 0
	mov.n	a2, a4
.LVL5:
	retw.n
.LVL6:
.L5:
.LBB10:
	.loc 1 99 0
	mov.n	a2, a10
.LVL7:
.LBE10:
	.loc 1 105 0
	retw.n
.LFE20:
	.size	pthread_list_find_item, .-pthread_list_find_item
	.section	.text.pthread_get_handle_by_desc,"ax",@progbits
	.align	4
	.type	pthread_get_handle_by_desc, @function
pthread_get_handle_by_desc:
.LFB21:
	.loc 1 108 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	movi.n	a8, 0
	.loc 1 109 0
	bne	a2, a3, .L8
	.loc 1 110 0
	l32i.n	a8, a2, 4
.L8:
	.loc 1 113 0
	mov.n	a2, a8
.LVL9:
	retw.n
.LFE21:
	.size	pthread_get_handle_by_desc, .-pthread_get_handle_by_desc
	.section	.text.pthread_get_desc_by_handle,"ax",@progbits
	.align	4
	.type	pthread_get_desc_by_handle, @function
pthread_get_desc_by_handle:
.LFB22:
	.loc 1 116 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 117 0
	l32i.n	a8, a2, 4
	sub	a3, a8, a3
.LVL11:
	movi.n	a8, 0
	movnez	a2, a8, a3
.LVL12:
	.loc 1 121 0
	retw.n
.LFE22:
	.size	pthread_get_desc_by_handle, .-pthread_get_desc_by_handle
	.section	.text.esp_pthread_cfg_key_destructor,"ax",@progbits
	.align	4
	.type	esp_pthread_cfg_key_destructor, @function
esp_pthread_cfg_key_destructor:
.LFB18:
	.loc 1 78 0
.LVL13:
	entry	sp, 32
.LCFI3:
	.loc 1 79 0
	mov.n	a10, a2
	call8	free
.LVL14:
	retw.n
.LFE18:
	.size	esp_pthread_cfg_key_destructor, .-esp_pthread_cfg_key_destructor
	.section	.text.pthread_delete,"ax",@progbits
	.literal_position
	.literal .LC1, s_threads_list
	.align	4
	.type	pthread_delete, @function
pthread_delete:
.LFB25:
	.loc 1 134 0
.LVL15:
	entry	sp, 32
.LCFI4:
	.loc 1 135 0
	l32r	a9, .LC1
	.loc 1 134 0
	mov.n	a10, a2
	.loc 1 135 0
	l32i.n	a8, a9, 0
	bne	a8, a2, .L19
	.loc 1 135 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	s32i.n	a8, a9, 0
	j	.L16
.LVL16:
.L18:
.LBB11:
	mov.n	a8, a9
.LVL17:
.L19:
	.loc 1 135 0 discriminator 3
	l32i.n	a9, a8, 0
	bne	a10, a9, .L18
	.loc 1 135 0 discriminator 6
	l32i.n	a9, a10, 0
	s32i.n	a9, a8, 0
.LVL18:
.L16:
.LBE11:
	.loc 1 136 0 is_stmt 1
	call8	free
.LVL19:
	retw.n
.LFE25:
	.size	pthread_delete, .-pthread_delete
	.section	.iram1,"ax",@progbits
	.align	4
	.type	pthread_mutex_lock_internal, @function
pthread_mutex_lock_internal:
.LFB41:
	.loc 1 537 0
.LVL20:
	entry	sp, 32
.LCFI5:
	.loc 1 539 0
	movi.n	a8, 0x16
	.loc 1 538 0
	beqz.n	a2, .L21
	.loc 1 542 0
	l32i.n	a4, a2, 4
	beqi	a4, 2, .L22
.L25:
	.loc 1 547 0
	l32i.n	a4, a2, 4
	bnei	a4, 1, .L34
	j	.L23
.L22:
	.loc 1 543 0 discriminator 1
	l32i.n	a10, a2, 0
	call8	xQueueGetMutexHolder
.LVL21:
	mov.n	a4, a10
	call8	xTaskGetCurrentTaskHandle
.LVL22:
	.loc 1 544 0 discriminator 1
	movi.n	a8, 0x2d
	.loc 1 542 0 discriminator 1
	bne	a4, a10, .L25
	j	.L21
.L23:
.LVL23:
.LBB14:
.LBB15:
	.loc 1 548 0
	l32i.n	a10, a2, 0
	mov.n	a11, a3
	call8	xQueueTakeMutexRecursive
.LVL24:
.L35:
	.loc 1 549 0
	movi.n	a8, 0x10
	.loc 1 548 0
	bnei	a10, 1, .L21
.L26:
	.loc 1 557 0
	movi.n	a8, 0
	j	.L21
.L34:
.LBE15:
.LBE14:
	.loc 1 552 0
	movi.n	a13, 0
	l32i.n	a10, a2, 0
	mov.n	a12, a3
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL25:
	j	.L35
.L21:
	.loc 1 558 0
	mov.n	a2, a8
.LVL26:
	retw.n
.LFE41:
	.size	pthread_mutex_lock_internal, .-pthread_mutex_lock_internal
	.section	.text.esp_pthread_init,"ax",@progbits
	.literal_position
	.literal .LC2, esp_pthread_cfg_key_destructor
	.literal .LC3, s_pthread_cfg_key
	.literal .LC4, s_threads_mux
	.align	4
	.global	esp_pthread_init
	.type	esp_pthread_init, @function
esp_pthread_init:
.LFB19:
	.loc 1 83 0
	entry	sp, 32
.LCFI6:
	.loc 1 84 0
	l32r	a3, .LC3
	l32r	a11, .LC2
	mov.n	a10, a3
	call8	pthread_key_create
.LVL27:
	mov.n	a2, a10
	bnez.n	a10, .L38
	.loc 1 87 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL28:
	l32r	a8, .LC4
	s32i.n	a10, a8, 0
	.loc 1 88 0
	bnez.n	a10, .L37
	.loc 1 89 0
	l32i.n	a10, a3, 0
	call8	pthread_key_delete
.LVL29:
.L38:
	.loc 1 85 0
	movi	a2, 0x101
.L37:
	.loc 1 93 0
	retw.n
.LFE19:
	.size	esp_pthread_init, .-esp_pthread_init
	.section	.text.esp_pthread_set_cfg,"ax",@progbits
	.literal_position
	.literal .LC5, s_pthread_cfg_key
	.align	4
	.global	esp_pthread_set_cfg
	.type	esp_pthread_set_cfg, @function
esp_pthread_set_cfg:
.LFB26:
	.loc 1 142 0
.LVL30:
	entry	sp, 32
.LCFI7:
	.loc 1 143 0
	l32i.n	a3, a2, 0
	movi	a9, 0x2ff
	.loc 1 144 0
	movi	a8, 0x102
	.loc 1 143 0
	bgeu	a9, a3, .L40
.LVL31:
.LBB18:
.LBB19:
	.loc 1 148 0
	l32r	a3, .LC5
	l32i.n	a10, a3, 0
	call8	pthread_getspecific
.LVL32:
	.loc 1 149 0
	bnez.n	a10, .L41
	.loc 1 150 0
	movi.n	a10, 0xc
.LVL33:
	call8	malloc
.LVL34:
	.loc 1 152 0
	movi	a8, 0x101
	.loc 1 151 0
	beqz.n	a10, .L40
.L41:
	.loc 1 155 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a2, 4
	s32i.n	a9, a10, 0
	l32i.n	a2, a2, 8
.LVL35:
	.loc 1 156 0
	mov.n	a11, a10
	.loc 1 155 0
	s32i.n	a8, a10, 4
	s32i.n	a2, a10, 8
	.loc 1 156 0
	l32i.n	a10, a3, 0
.LVL36:
	call8	pthread_setspecific
.LVL37:
	.loc 1 157 0
	movi.n	a8, 0
.LVL38:
.L40:
.LBE19:
.LBE18:
	.loc 1 158 0
	mov.n	a2, a8
	retw.n
.LFE26:
	.size	esp_pthread_set_cfg, .-esp_pthread_set_cfg
	.section	.text.esp_pthread_get_cfg,"ax",@progbits
	.literal_position
	.literal .LC6, s_pthread_cfg_key
	.align	4
	.global	esp_pthread_get_cfg
	.type	esp_pthread_get_cfg, @function
esp_pthread_get_cfg:
.LFB27:
	.loc 1 161 0
.LVL39:
	entry	sp, 32
.LCFI8:
	.loc 1 162 0
	l32r	a8, .LC6
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL40:
	.loc 1 163 0
	beqz.n	a10, .L46
	.loc 1 164 0
	l32i.n	a8, a10, 0
	l32i.n	a9, a10, 4
	s32i.n	a8, a2, 0
	l32i.n	a8, a10, 8
	s32i.n	a9, a2, 4
	s32i.n	a8, a2, 8
	.loc 1 165 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L46:
	.loc 1 167 0
	mov.n	a11, a10
	movi.n	a12, 0xc
	mov.n	a10, a2
.LVL43:
	call8	memset
.LVL44:
	.loc 1 168 0
	movi	a2, 0x105
.LVL45:
	.loc 1 169 0
	retw.n
.LFE27:
	.size	esp_pthread_get_cfg, .-esp_pthread_get_cfg
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"pthread"
.LC10:
	.string	"\033[0;31mE (%d) %s: Failed to allocate task args!\033[0m\n"
.LC12:
	.string	"\033[0;31mE (%d) %s: Failed to allocate pthread data!\033[0m\n"
.LC17:
	.string	"\033[0;31mE (%d) %s: Failed to create task!\033[0m\n"
.LC20:
	.string	"false && \"Failed to lock threads list!\""
.LC23:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread.c"
	.section	.text.pthread_create,"ax",@progbits
	.literal_position
	.literal .LC7, 3072
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, s_pthread_cfg_key
	.literal .LC15, pthread_task_func
	.literal .LC16, 2147483647
	.literal .LC18, .LC17
	.literal .LC19, s_threads_mux
	.literal .LC21, .LC20
	.literal .LC22, __func__$5978
	.literal .LC24, .LC23
	.literal .LC25, s_threads_list
	.align	4
	.global	pthread_create
	.type	pthread_create, @function
pthread_create:
.LFB29:
	.loc 1 196 0
.LVL46:
	entry	sp, 80
.LCFI9:
	.loc 1 197 0
	movi.n	a6, 0
	.loc 1 200 0
	movi.n	a11, 0x14
	movi.n	a10, 1
	.loc 1 196 0
	s32i.n	a2, sp, 32
	.loc 1 197 0
	s32i.n	a6, sp, 16
	.loc 1 200 0
	call8	calloc
.LVL47:
	mov.n	a2, a10
.LVL48:
	l32r	a7, .LC9
	.loc 1 201 0
	bne	a10, a6, .L49
	.loc 1 202 0 discriminator 2
	call8	esp_log_timestamp
.LVL49:
	l32r	a12, .LC11
	mov.n	a13, a10
	mov.n	a14, a7
	mov.n	a11, a7
	movi.n	a10, 1
	call8	esp_log_write
.LVL50:
	j	.L69
.L49:
	.loc 1 206 0
	movi.n	a11, 0x1c
	movi.n	a10, 1
	call8	calloc
.LVL51:
	mov.n	a6, a10
.LVL52:
	.loc 1 207 0
	bnez.n	a10, .L51
	.loc 1 208 0 discriminator 2
	call8	esp_log_timestamp
.LVL53:
	l32r	a12, .LC13
	mov.n	a13, a10
	mov.n	a14, a7
	movi.n	a10, 1
	mov.n	a11, a7
	call8	esp_log_write
.LVL54:
	.loc 1 209 0 discriminator 2
	mov.n	a10, a2
	call8	free
.LVL55:
.L69:
	.loc 1 210 0 discriminator 2
	movi.n	a2, 0xc
.LVL56:
	retw.n
.LVL57:
.L51:
	.loc 1 216 0
	l32r	a9, .LC14
	l32i.n	a10, a9, 0
	call8	pthread_getspecific
.LVL58:
	.loc 1 214 0
	movi.n	a14, 5
	.loc 1 213 0
	l32r	a12, .LC7
	.loc 1 217 0
	beqz.n	a10, .L52
	.loc 1 213 0
	l32r	a9, .LC7
	.loc 1 218 0
	l32i.n	a12, a10, 0
	.loc 1 221 0
	movi.n	a13, 0x17
	.loc 1 213 0
	moveqz	a12, a9, a12
.LVL59:
	.loc 1 221 0
	l32i.n	a9, a10, 4
	addi.n	a11, a9, -1
	bltu	a13, a11, .L54
	.loc 1 222 0
	mov.n	a14, a9
.LVL60:
.L54:
	.loc 1 224 0
	l32i.n	a13, a10, 0
	l32i.n	a11, a10, 4
	s32i.n	a13, a2, 8
	l32i.n	a10, a10, 8
.LVL61:
	s32i.n	a11, a2, 12
	s32i.n	a10, a2, 16
.LVL62:
.L52:
	.loc 1 227 0
	beqz.n	a3, .L55
	.loc 1 229 0
	l32i.n	a12, a3, 8
.LVL63:
	.loc 1 231 0
	l32i.n	a3, a3, 28
.LVL64:
	bnez.n	a3, .L67
	.loc 1 233 0
	movi.n	a3, 1
	j	.L68
.L67:
	.loc 1 237 0
	movi.n	a3, 0
.L68:
	s8i	a3, a6, 16
.L55:
.LBB22:
.LBB23:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.loc 2 440 0
	l32r	a3, .LC16
.LBE23:
.LBE22:
	.loc 1 241 0
	s32i.n	a4, a2, 0
	.loc 1 242 0
	s32i.n	a5, a2, 4
	.loc 1 243 0
	s32i.n	a2, a6, 24
.LVL65:
.LBB25:
.LBB24:
	.loc 2 440 0
	l32r	a10, .LC15
	s32i.n	a3, sp, 0
.LVL66:
	addi	a15, sp, 16
.LVL67:
	mov.n	a13, a2
	mov.n	a11, a7
	call8	xTaskCreatePinnedToCore
.LVL68:
	mov.n	a3, a10
.LBE24:
.LBE25:
	.loc 1 246 0
	beqi	a10, 1, .L58
	.loc 1 247 0 discriminator 2
	call8	esp_log_timestamp
.LVL69:
	l32r	a12, .LC18
	mov.n	a13, a10
	mov.n	a14, a7
	mov.n	a11, a7
	movi.n	a10, 1
	call8	esp_log_write
.LVL70:
	.loc 1 248 0 discriminator 2
	mov.n	a10, a6
	call8	free
.LVL71:
	.loc 1 249 0 discriminator 2
	mov.n	a10, a2
	.loc 1 253 0 discriminator 2
	addi.n	a3, a3, 1
	movi.n	a4, 0xc
.LVL72:
	.loc 1 249 0 discriminator 2
	call8	free
.LVL73:
	.loc 1 253 0 discriminator 2
	movi.n	a2, 0xb
.LVL74:
	moveqz	a2, a4, a3
	retw.n
.LVL75:
.L58:
	.loc 1 256 0
	l32i.n	a3, sp, 16
	.loc 1 258 0
	movi.n	a13, 0
	.loc 1 256 0
	s32i.n	a3, a6, 4
	.loc 1 258 0
	l32r	a3, .LC19
	movi.n	a12, -1
	l32i.n	a10, a3, 0
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL76:
	beqi	a10, 1, .L59
	.loc 1 259 0
	l32r	a13, .LC21
	l32r	a12, .LC22
	l32r	a10, .LC24
	movi	a11, 0x103
	call8	__assert_func
.LVL77:
.L59:
	.loc 1 261 0
	l32r	a4, .LC25
.LVL78:
	.loc 1 262 0
	movi.n	a13, 0
	.loc 1 261 0
	l32i.n	a5, a4, 0
.LVL79:
	.loc 1 262 0
	l32i.n	a10, a3, 0
	mov.n	a12, a13
	mov.n	a11, a13
	.loc 1 261 0
	s32i.n	a5, a6, 0
	s32i.n	a6, a4, 0
	.loc 1 262 0
	call8	xQueueGenericSend
.LVL80:
	.loc 1 265 0
	movi.n	a12, 0
	l32i.n	a10, sp, 16
	mov.n	a11, a12
	call8	xTaskNotify
.LVL81:
	.loc 1 267 0
	l32i.n	a2, sp, 32
.LVL82:
	s32i.n	a6, a2, 0
	.loc 1 271 0
	movi.n	a2, 0
	.loc 1 272 0
	retw.n
.LFE29:
	.size	pthread_create, .-pthread_create
	.section	.text.pthread_join,"ax",@progbits
	.literal_position
	.literal .LC26, s_threads_mux
	.literal .LC27, .LC20
	.literal .LC28, __func__$5988
	.literal .LC29, .LC23
	.literal .LC30, pthread_get_handle_by_desc
	.literal .LC31, pthread_get_desc_by_handle
	.align	4
	.global	pthread_join
	.type	pthread_join, @function
pthread_join:
.LFB30:
	.loc 1 275 0
.LVL83:
	entry	sp, 48
.LCFI10:
.LVL84:
	.loc 1 284 0
	l32r	a6, .LC26
	movi.n	a13, 0
	l32i.n	a10, a6, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL85:
	beqi	a10, 1, .L71
	.loc 1 285 0
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x11d
	j	.L92
.L71:
.LVL86:
.LBB31:
.LBB32:
	.loc 1 125 0
	l32r	a10, .LC30
	mov.n	a11, a2
	call8	pthread_list_find_item
.LVL87:
	mov.n	a5, a10
.LBE32:
.LBE31:
	.loc 1 288 0
	beqz.n	a10, .L81
	.loc 1 291 0
	l8ui	a4, a2, 16
	beqz.n	a4, .L73
.L74:
	.loc 1 279 0
	movi.n	a4, 0
	.loc 1 278 0
	mov.n	a8, a4
	.loc 1 293 0
	movi.n	a7, 0x2d
	j	.L72
.L73:
	.loc 1 294 0
	l32i.n	a9, a2, 8
	.loc 1 278 0
	mov.n	a8, a4
	.loc 1 296 0
	movi.n	a7, 0x16
	.loc 1 294 0
	bnez.n	a9, .L72
	.loc 1 297 0
	call8	xTaskGetCurrentTaskHandle
.LVL88:
	beq	a5, a10, .L74
.LBB33:
	.loc 1 301 0
	call8	xTaskGetCurrentTaskHandle
.LVL89:
.LBB34:
.LBB35:
	.loc 1 130 0
	mov.n	a11, a10
	l32r	a10, .LC31
.LVL90:
	call8	pthread_list_find_item
.LVL91:
.LBE35:
.LBE34:
	.loc 1 302 0
	beqz.n	a10, .L75
	.loc 1 302 0 is_stmt 0 discriminator 1
	l32i.n	a4, a10, 8
	beq	a4, a5, .L74
.L75:
	.loc 1 306 0 is_stmt 1
	l32i.n	a4, a2, 12
	bnez.n	a4, .L76
	.loc 1 307 0
	call8	xTaskGetCurrentTaskHandle
.LVL92:
	s32i.n	a10, a2, 8
.LVL93:
	.loc 1 308 0
	movi.n	a8, 1
.LBE33:
	.loc 1 277 0
	mov.n	a7, a4
.LBB36:
	j	.L72
.LVL94:
.L76:
	.loc 1 311 0
	mov.n	a10, a2
	.loc 1 310 0
	l32i.n	a4, a2, 20
.LVL95:
	.loc 1 311 0
	call8	pthread_delete
.LVL96:
.LBE36:
	.loc 1 278 0
	movi.n	a8, 0
	.loc 1 277 0
	mov.n	a7, a8
	j	.L72
.LVL97:
.L81:
	.loc 1 279 0
	mov.n	a4, a10
	.loc 1 278 0
	mov.n	a8, a10
	.loc 1 290 0
	movi.n	a7, 3
.LVL98:
.L72:
	.loc 1 315 0
	movi.n	a13, 0
	l32i.n	a10, a6, 0
	mov.n	a12, a13
	mov.n	a11, a13
	s32i.n	a8, sp, 0
	call8	xQueueGenericSend
.LVL99:
	.loc 1 317 0
	l32i.n	a8, sp, 0
	bnez.n	a7, .L77
.LVL100:
	.loc 1 318 0
	beqz.n	a8, .L78
.LVL101:
	.loc 1 319 0
	movi.n	a13, -1
	mov.n	a12, a7
	mov.n	a11, a7
	mov.n	a10, a7
	call8	xTaskNotifyWait
.LVL102:
	.loc 1 320 0
	l32i.n	a10, a6, 0
	mov.n	a13, a7
	movi.n	a12, -1
	mov.n	a11, a7
	call8	xQueueGenericReceive
.LVL103:
	beqi	a10, 1, .L79
	.loc 1 321 0
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x141
.LVL104:
.L92:
	l32r	a10, .LC29
	call8	__assert_func
.LVL105:
.L79:
	.loc 1 324 0
	mov.n	a10, a2
	.loc 1 323 0
	l32i.n	a4, a2, 20
	.loc 1 324 0
	call8	pthread_delete
.LVL106:
	.loc 1 325 0
	l32i.n	a10, a6, 0
	mov.n	a13, a7
	mov.n	a12, a7
	mov.n	a11, a7
	call8	xQueueGenericSend
.LVL107:
.L78:
	.loc 1 327 0
	mov.n	a10, a5
	call8	vTaskDelete
.LVL108:
.L77:
	.loc 1 330 0
	beqz.n	a3, .L80
	.loc 1 331 0
	s32i.n	a4, a3, 0
.L80:
	.loc 1 336 0
	mov.n	a2, a7
.LVL109:
	retw.n
.LFE30:
	.size	pthread_join, .-pthread_join
	.section	.text.pthread_detach,"ax",@progbits
	.literal_position
	.literal .LC32, s_threads_mux
	.literal .LC33, .LC20
	.literal .LC34, __func__$5996
	.literal .LC35, .LC23
	.literal .LC36, pthread_get_handle_by_desc
	.align	4
	.global	pthread_detach
	.type	pthread_detach, @function
pthread_detach:
.LFB31:
	.loc 1 339 0
.LVL110:
	entry	sp, 32
.LCFI11:
.LVL111:
	.loc 1 343 0
	l32r	a3, .LC32
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL112:
	.loc 1 339 0
	mov.n	a4, a2
	.loc 1 343 0
	mov.n	a5, a10
	beqi	a10, 1, .L94
	.loc 1 344 0
	l32r	a13, .LC33
	l32r	a12, .LC34
	l32r	a10, .LC35
	movi	a11, 0x158
	call8	__assert_func
.LVL113:
.L94:
.LBB39:
.LBB40:
	.loc 1 125 0
	l32r	a10, .LC36
	mov.n	a11, a2
	call8	pthread_list_find_item
.LVL114:
.LBE40:
.LBE39:
	.loc 1 348 0
	movi.n	a2, 3
.LVL115:
	.loc 1 347 0
	beqz.n	a10, .L95
	.loc 1 350 0
	s8i	a5, a4, 16
	.loc 1 341 0
	movi.n	a2, 0
.L95:
.LVL116:
	.loc 1 352 0
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL117:
	.loc 1 355 0
	retw.n
.LFE31:
	.size	pthread_detach, .-pthread_detach
	.section	.rodata.str1.1
.LC42:
	.string	"false && \"Failed to find pthread for current task!\""
	.section	.text.pthread_exit,"ax",@progbits
	.literal_position
	.literal .LC37, s_threads_mux
	.literal .LC38, .LC20
	.literal .LC39, __func__$6003
	.literal .LC40, .LC23
	.literal .LC41, pthread_get_desc_by_handle
	.literal .LC43, .LC42
	.align	4
	.global	pthread_exit
	.type	pthread_exit, @function
pthread_exit:
.LFB32:
	.loc 1 358 0
.LVL118:
	entry	sp, 32
.LCFI12:
.LVL119:
	.loc 1 362 0
	call8	pthread_internal_local_storage_destructor_callback
.LVL120:
	.loc 1 364 0
	l32r	a3, .LC37
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL121:
	mov.n	a5, a3
	beqi	a10, 1, .L99
	.loc 1 365 0
	l32r	a13, .LC38
	l32r	a12, .LC39
	movi	a11, 0x16d
	j	.L110
.L99:
	.loc 1 367 0
	call8	xTaskGetCurrentTaskHandle
.LVL122:
.LBB43:
.LBB44:
	.loc 1 130 0
	mov.n	a11, a10
	l32r	a10, .LC41
.LVL123:
	call8	pthread_list_find_item
.LVL124:
	mov.n	a3, a10
.LBE44:
.LBE43:
	.loc 1 368 0
	bnez.n	a10, .L100
	.loc 1 369 0
	l32r	a13, .LC43
	l32r	a12, .LC39
	movi	a11, 0x171
.L110:
	l32r	a10, .LC40
	call8	__assert_func
.LVL125:
.L100:
	.loc 1 371 0
	l32i.n	a10, a10, 24
	beqz.n	a10, .L101
	.loc 1 372 0
	call8	free
.LVL126:
.L101:
	.loc 1 374 0
	l8ui	a4, a3, 16
	beqz.n	a4, .L102
	.loc 1 376 0
	mov.n	a10, a3
	call8	pthread_delete
.LVL127:
	.loc 1 377 0
	movi.n	a2, 1
.LVL128:
	j	.L103
.LVL129:
.L102:
	.loc 1 382 0
	l32i.n	a10, a3, 8
	.loc 1 380 0
	s32i.n	a2, a3, 20
	.loc 1 382 0
	beqz.n	a10, .L104
	.loc 1 384 0
	mov.n	a12, a4
	mov.n	a11, a4
	call8	xTaskNotify
.LVL130:
	.loc 1 359 0
	mov.n	a2, a4
.LVL131:
	j	.L103
.LVL132:
.L104:
	.loc 1 386 0
	movi.n	a2, 1
.LVL133:
	s32i.n	a2, a3, 12
	.loc 1 359 0
	mov.n	a2, a10
.LVL134:
.L103:
	.loc 1 389 0
	movi.n	a13, 0
	l32i.n	a10, a5, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL135:
	.loc 1 393 0
	beqz.n	a2, .L105
.LVL136:
	.loc 1 394 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL137:
	retw.n
.LVL138:
.L105:
	.loc 1 396 0
	mov.n	a10, a2
	call8	vTaskSuspend
.LVL139:
	retw.n
.LFE32:
	.size	pthread_exit, .-pthread_exit
	.section	.text.pthread_task_func,"ax",@progbits
	.align	4
	.type	pthread_task_func, @function
pthread_task_func:
.LFB28:
	.loc 1 172 0
.LVL140:
	entry	sp, 32
.LCFI13:
.LVL141:
	.loc 1 179 0
	movi.n	a12, 0
	movi.n	a13, -1
	mov.n	a11, a12
	mov.n	a10, a12
	call8	xTaskNotifyWait
.LVL142:
	.loc 1 181 0
	l8ui	a8, a2, 16
	beqz.n	a8, .L112
	.loc 1 183 0
	addi.n	a10, a2, 8
	call8	esp_pthread_set_cfg
.LVL143:
.L112:
	.loc 1 186 0
	l32i.n	a8, a2, 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL144:
	.loc 1 189 0
	call8	pthread_exit
.LVL145:
	retw.n
.LFE28:
	.size	pthread_task_func, .-pthread_task_func
	.section	.rodata.str1.1
.LC46:
	.string	"\033[0;31mE (%d) %s: %s: not supported!\033[0m\n"
	.section	.text.pthread_cancel,"ax",@progbits
	.literal_position
	.literal .LC44, __FUNCTION__$6009
	.literal .LC45, .LC8
	.literal .LC47, .LC46
	.align	4
	.global	pthread_cancel
	.type	pthread_cancel, @function
pthread_cancel:
.LFB33:
	.loc 1 403 0
.LVL146:
	entry	sp, 32
.LCFI14:
	.loc 1 404 0
	call8	esp_log_timestamp
.LVL147:
	l32r	a11, .LC45
	l32r	a15, .LC44
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL148:
	.loc 1 406 0
	movi.n	a2, 0x58
.LVL149:
	retw.n
.LFE33:
	.size	pthread_cancel, .-pthread_cancel
	.section	.text.sched_yield,"ax",@progbits
	.align	4
	.global	sched_yield
	.type	sched_yield, @function
sched_yield:
.LFB34:
	.loc 1 409 0
	entry	sp, 32
.LCFI15:
	.loc 1 410 0
	movi.n	a10, 0
	call8	vTaskDelay
.LVL150:
	.loc 1 412 0
	movi.n	a2, 0
	retw.n
.LFE34:
	.size	sched_yield, .-sched_yield
	.section	.rodata.str1.1
.LC53:
	.string	"false && \"Failed to find current thread ID!\""
	.section	.text.pthread_self,"ax",@progbits
	.literal_position
	.literal .LC48, s_threads_mux
	.literal .LC49, .LC20
	.literal .LC50, __func__$6016
	.literal .LC51, .LC23
	.literal .LC52, pthread_get_desc_by_handle
	.literal .LC54, .LC53
	.align	4
	.global	pthread_self
	.type	pthread_self, @function
pthread_self:
.LFB35:
	.loc 1 415 0
	entry	sp, 32
.LCFI16:
	.loc 1 416 0
	l32r	a3, .LC48
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	movi.n	a12, -1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL151:
	beqi	a10, 1, .L119
	.loc 1 417 0
	l32r	a13, .LC49
	l32r	a12, .LC50
	movi	a11, 0x1a1
	j	.L121
.L119:
	.loc 1 419 0
	call8	xTaskGetCurrentTaskHandle
.LVL152:
.LBB47:
.LBB48:
	.loc 1 130 0
	mov.n	a11, a10
	l32r	a10, .LC52
.LVL153:
	call8	pthread_list_find_item
.LVL154:
	mov.n	a2, a10
.LBE48:
.LBE47:
	.loc 1 420 0
	bnez.n	a10, .L120
	.loc 1 421 0
	l32r	a13, .LC54
	l32r	a12, .LC50
	movi	a11, 0x1a5
.L121:
	l32r	a10, .LC51
	call8	__assert_func
.LVL155:
.L120:
	.loc 1 423 0
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL156:
	.loc 1 425 0
	retw.n
.LFE35:
	.size	pthread_self, .-pthread_self
	.section	.text.pthread_equal,"ax",@progbits
	.align	4
	.global	pthread_equal
	.type	pthread_equal, @function
pthread_equal:
.LFB36:
	.loc 1 428 0
.LVL157:
	entry	sp, 32
.LCFI17:
	.loc 1 429 0
	sub	a3, a2, a3
.LVL158:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL159:
	moveqz	a2, a8, a3
	.loc 1 430 0
	retw.n
.LFE36:
	.size	pthread_equal, .-pthread_equal
	.section	.rodata.str1.1
.LC57:
	.string	"\033[0;31mE (%d) %s: %s: Invalid args!\033[0m\n"
	.section	.text.pthread_once,"ax",@progbits
	.literal_position
	.literal .LC55, __FUNCTION__$6027
	.literal .LC56, .LC8
	.literal .LC58, .LC57
	.align	4
	.global	pthread_once
	.type	pthread_once, @function
pthread_once:
.LFB37:
	.loc 1 434 0
.LVL160:
	entry	sp, 32
.LCFI18:
	.loc 1 435 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a2
	extui	a8, a8, 0, 8
	bnez.n	a8, .L124
	moveqz	a8, a9, a3
	bnez.n	a8, .L124
	.loc 1 435 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L125
.L124:
	.loc 1 436 0 discriminator 2
	call8	esp_log_timestamp
.LVL161:
	l32r	a11, .LC56
	l32r	a15, .LC55
	l32r	a12, .LC58
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL162:
	.loc 1 437 0 discriminator 2
	movi.n	a2, 0x16
.LVL163:
	retw.n
.LVL164:
.L125:
	.loc 1 446 0
	addi.n	a2, a2, 4
.LVL165:
.LBB49:
.LBB50:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 285 0
#APP
# 285 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a8,SCOMPARE1 
S32C1I     a9, a2, 0	 

# 0 "" 2
.LVL166:
#NO_APP
.LBE50:
.LBE49:
	.loc 1 456 0
	mov.n	a2, a8
.LVL167:
	.loc 1 451 0
	bnez.n	a9, .L126
	.loc 1 453 0
	callx8	a3
.LVL168:
.L126:
	.loc 1 457 0
	retw.n
.LFE37:
	.size	pthread_once, .-pthread_once
	.section	.text.pthread_mutex_init,"ax",@progbits
	.align	4
	.global	pthread_mutex_init
	.type	pthread_mutex_init, @function
pthread_mutex_init:
.LFB39:
	.loc 1 471 0
.LVL169:
	entry	sp, 32
.LCFI19:
.LVL170:
	.loc 1 475 0
	movi.n	a8, 0x16
	.loc 1 474 0
	beqz.n	a2, .L129
	.loc 1 478 0
	beqz.n	a3, .L130
.LBB51:
	.loc 1 479 0
	l32i.n	a4, a3, 0
	beqz.n	a4, .L129
	l32i.n	a3, a3, 4
.LVL171:
.LBB52:
.LBB53:
	.loc 1 462 0
	bgeui	a3, 3, .L129
.LVL172:
.L130:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 489 0
	movi.n	a10, 8
	call8	malloc
.LVL173:
	mov.n	a4, a10
.LVL174:
	.loc 1 491 0
	movi.n	a8, 0xc
	.loc 1 490 0
	beqz.n	a10, .L129
	.loc 1 493 0
	s32i.n	a3, a10, 4
	.loc 1 496 0
	movi.n	a10, 4
	.loc 1 495 0
	beqi	a3, 1, .L142
.L131:
	.loc 1 498 0
	movi.n	a10, 1
.L142:
	call8	xQueueCreateMutex
.LVL175:
	s32i.n	a10, a4, 0
	.loc 1 500 0
	l32i.n	a3, a4, 0
.LVL176:
	bnez.n	a3, .L133
	.loc 1 501 0
	mov.n	a10, a4
	call8	free
.LVL177:
	.loc 1 502 0
	movi.n	a8, 0xb
	j	.L129
.L133:
	.loc 1 505 0
	s32i.n	a4, a2, 0
	.loc 1 507 0
	movi.n	a8, 0
.LVL178:
.L129:
	.loc 1 508 0
	mov.n	a2, a8
.LVL179:
	retw.n
.LFE39:
	.size	pthread_mutex_init, .-pthread_mutex_init
	.section	.text.pthread_mutex_init_if_static$part$3,"ax",@progbits
	.literal_position
	.literal .LC59, s_mutex_init_lock
	.align	4
	.type	pthread_mutex_init_if_static$part$3, @function
pthread_mutex_init_if_static$part$3:
.LFB60:
	.loc 1 560 0
.LVL180:
	entry	sp, 32
.LCFI20:
	.loc 1 564 0
	l32r	a3, .LC59
	.loc 1 560 0
	mov.n	a4, a2
	.loc 1 564 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL181:
	.loc 1 565 0
	l32i.n	a8, a2, 0
	.loc 1 562 0
	movi.n	a2, 0
.LVL182:
	.loc 1 565 0
	bnei	a8, -1, .L144
	.loc 1 566 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	pthread_mutex_init
.LVL183:
	mov.n	a2, a10
.LVL184:
.L144:
	.loc 1 568 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL185:
	.loc 1 571 0
	retw.n
.LFE60:
	.size	pthread_mutex_init_if_static$part$3, .-pthread_mutex_init_if_static$part$3
	.section	.text.pthread_mutex_destroy,"ax",@progbits
	.align	4
	.global	pthread_mutex_destroy
	.type	pthread_mutex_destroy, @function
pthread_mutex_destroy:
.LFB40:
	.loc 1 511 0
.LVL186:
	entry	sp, 32
.LCFI21:
	.loc 1 517 0
	movi.n	a8, 0x16
	.loc 1 516 0
	beqz.n	a2, .L147
	.loc 1 519 0
	l32i.n	a3, a2, 0
.LVL187:
	.loc 1 520 0
	beqz.n	a3, .L147
	.loc 1 525 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	pthread_mutex_lock_internal
.LVL188:
	.loc 1 527 0
	movi.n	a8, 0x10
	.loc 1 526 0
	beq	a10, a8, .L147
	.loc 1 530 0
	l32i.n	a10, a3, 0
.LVL189:
	call8	vQueueDelete
.LVL190:
	.loc 1 531 0
	mov.n	a10, a3
	call8	free
.LVL191:
	.loc 1 533 0
	movi.n	a8, 0
.LVL192:
.L147:
	.loc 1 534 0
	mov.n	a2, a8
.LVL193:
	retw.n
.LFE40:
	.size	pthread_mutex_destroy, .-pthread_mutex_destroy
	.section	.iram1
	.align	4
	.global	pthread_mutex_lock
	.type	pthread_mutex_lock, @function
pthread_mutex_lock:
.LFB43:
	.loc 1 574 0
.LVL194:
	entry	sp, 32
.LCFI22:
	.loc 1 576 0
	movi.n	a10, 0x16
	.loc 1 575 0
	beqz.n	a2, .L155
.LVL195:
.LBB56:
.LBB57:
	.loc 1 563 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L156
.LVL196:
.L157:
.LBE57:
.LBE56:
	.loc 1 582 0
	l32i.n	a10, a2, 0
	movi.n	a11, -1
	call8	pthread_mutex_lock_internal
.LVL197:
	j	.L155
.LVL198:
.L156:
.LBB59:
.LBB58:
	mov.n	a10, a2
	call8	pthread_mutex_init_if_static$part$3
.LVL199:
.LBE58:
.LBE59:
	.loc 1 579 0
	beqz.n	a10, .L157
.LVL200:
.L155:
	.loc 1 583 0
	mov.n	a2, a10
.LVL201:
	retw.n
.LFE43:
	.size	pthread_mutex_lock, .-pthread_mutex_lock
	.literal_position
	.literal .LC60, 1125899907
	.literal .LC61, -858993459
	.align	4
	.global	pthread_mutex_timedlock
	.type	pthread_mutex_timedlock, @function
pthread_mutex_timedlock:
.LFB44:
	.loc 1 586 0
.LVL202:
	entry	sp, 48
.LCFI23:
	.loc 1 588 0
	movi.n	a10, 0x16
	.loc 1 587 0
	beqz.n	a2, .L164
.LVL203:
.LBB62:
.LBB63:
	.loc 1 563 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L165
.LVL204:
.L166:
.LBE63:
.LBE62:
	.loc 1 596 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	clock_gettime
.LVL205:
	.loc 1 600 0
	l32i.n	a9, sp, 0
	l32i.n	a8, a3, 0
	l32i.n	a11, sp, 4
	sub	a8, a8, a9
	slli	a9, a8, 5
	sub	a9, a9, a8
	addx4	a9, a9, a8
	l32i.n	a8, a3, 4
	l32r	a10, .LC60
	sub	a11, a8, a11
	mulsh	a8, a11, a10
	srai	a10, a8, 18
	srai	a8, a11, 31
	sub	a8, a10, a8
	l32r	a11, .LC61
	addx8	a8, a9, a8
	muluh	a11, a8, a11
	l32i.n	a10, a2, 0
	srli	a11, a11, 3
	call8	pthread_mutex_lock_internal
.LVL206:
	.loc 1 601 0
	addi	a8, a10, -16
	movi	a2, 0x74
.LVL207:
	moveqz	a10, a2, a8
.LVL208:
	j	.L164
.LVL209:
.L165:
.LBB65:
.LBB64:
	mov.n	a10, a2
	call8	pthread_mutex_init_if_static$part$3
.LVL210:
.LBE64:
.LBE65:
	.loc 1 591 0
	beqz.n	a10, .L166
.LVL211:
.L164:
	.loc 1 605 0
	mov.n	a2, a10
	retw.n
.LFE44:
	.size	pthread_mutex_timedlock, .-pthread_mutex_timedlock
	.align	4
	.global	pthread_mutex_trylock
	.type	pthread_mutex_trylock, @function
pthread_mutex_trylock:
.LFB45:
	.loc 1 608 0
.LVL212:
	entry	sp, 32
.LCFI24:
	.loc 1 610 0
	movi.n	a10, 0x16
	.loc 1 609 0
	beqz.n	a2, .L174
.LVL213:
.LBB68:
.LBB69:
	.loc 1 563 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L175
.LVL214:
.L176:
.LBE69:
.LBE68:
	.loc 1 616 0
	l32i.n	a10, a2, 0
	movi.n	a11, 0
	call8	pthread_mutex_lock_internal
.LVL215:
	j	.L174
.LVL216:
.L175:
.LBB71:
.LBB70:
	mov.n	a10, a2
	call8	pthread_mutex_init_if_static$part$3
.LVL217:
.LBE70:
.LBE71:
	.loc 1 613 0
	beqz.n	a10, .L176
.LVL218:
.L174:
	.loc 1 617 0
	mov.n	a2, a10
.LVL219:
	retw.n
.LFE45:
	.size	pthread_mutex_trylock, .-pthread_mutex_trylock
	.section	.rodata.str1.1
.LC62:
	.string	"false && \"Failed to unlock mutex!\""
	.section	.iram1
	.literal_position
	.literal .LC63, .LC62
	.literal .LC64, __func__$6073
	.literal .LC65, .LC23
	.align	4
	.global	pthread_mutex_unlock
	.type	pthread_mutex_unlock, @function
pthread_mutex_unlock:
.LFB46:
	.loc 1 620 0
.LVL220:
	entry	sp, 32
.LCFI25:
	.loc 1 623 0
	beqz.n	a2, .L190
	.loc 1 626 0
	l32i.n	a3, a2, 0
.LVL221:
	.loc 1 627 0
	beqz.n	a3, .L190
	.loc 1 631 0
	l32i.n	a2, a3, 4
.LVL222:
	addi.n	a2, a2, -1
	bltui	a2, 2, .L184
.L187:
	.loc 1 638 0
	l32i.n	a2, a3, 4
	bnei	a2, 1, .L194
	j	.L185
.L184:
	.loc 1 633 0
	l32i.n	a10, a3, 0
	.loc 1 634 0
	movi.n	a2, 1
	.loc 1 633 0
	call8	xQueueGetMutexHolder
.LVL223:
	mov.n	a4, a10
	call8	xTaskGetCurrentTaskHandle
.LVL224:
	.loc 1 632 0
	bne	a4, a10, .L183
	j	.L187
.L185:
	.loc 1 639 0
	l32i.n	a10, a3, 0
	call8	xQueueGiveMutexRecursive
.LVL225:
	j	.L188
.LVL226:
.L194:
	.loc 1 641 0
	movi.n	a13, 0
	l32i.n	a10, a3, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL227:
.L188:
	.loc 1 646 0
	movi.n	a2, 0
	.loc 1 643 0
	beqi	a10, 1, .L183
	.loc 1 644 0
	l32r	a13, .LC63
	l32r	a12, .LC64
	l32r	a10, .LC65
.LVL228:
	movi	a11, 0x284
	call8	__assert_func
.LVL229:
.L190:
	.loc 1 624 0
	movi.n	a2, 0x16
.LVL230:
.L183:
	.loc 1 647 0
	retw.n
.LFE46:
	.size	pthread_mutex_unlock, .-pthread_mutex_unlock
	.section	.text.pthread_mutexattr_init,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_init
	.type	pthread_mutexattr_init, @function
pthread_mutexattr_init:
.LFB47:
	.loc 1 650 0
.LVL231:
	entry	sp, 32
.LCFI26:
	.loc 1 650 0
	mov.n	a9, a2
	.loc 1 652 0
	movi.n	a2, 0x16
.LVL232:
	.loc 1 651 0
	beqz.n	a9, .L196
	.loc 1 654 0
	movi.n	a8, 0
	.loc 1 655 0
	movi.n	a2, 1
	s32i.n	a2, a9, 0
	.loc 1 654 0
	s32i.n	a8, a9, 4
	.loc 1 656 0
	mov.n	a2, a8
.L196:
	.loc 1 657 0
	retw.n
.LFE47:
	.size	pthread_mutexattr_init, .-pthread_mutexattr_init
	.section	.text.pthread_mutexattr_destroy,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_destroy
	.type	pthread_mutexattr_destroy, @function
pthread_mutexattr_destroy:
.LFB48:
	.loc 1 660 0
.LVL233:
	entry	sp, 32
.LCFI27:
	.loc 1 660 0
	mov.n	a9, a2
	.loc 1 662 0
	movi.n	a2, 0x16
.LVL234:
	.loc 1 661 0
	beqz.n	a9, .L200
	.loc 1 664 0
	movi.n	a8, 0
	s32i.n	a8, a9, 0
	.loc 1 665 0
	mov.n	a2, a8
.L200:
	.loc 1 666 0
	retw.n
.LFE48:
	.size	pthread_mutexattr_destroy, .-pthread_mutexattr_destroy
	.section	.text.pthread_mutexattr_gettype,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_gettype
	.type	pthread_mutexattr_gettype, @function
pthread_mutexattr_gettype:
.LFB49:
	.loc 1 669 0
.LVL235:
	entry	sp, 32
.LCFI28:
	.loc 1 671 0
	movi.n	a8, 0x16
	.loc 1 670 0
	beqz.n	a2, .L204
	.loc 1 673 0
	l32i.n	a2, a2, 4
.LVL236:
	.loc 1 674 0
	movi.n	a8, 0
	.loc 1 673 0
	s32i.n	a2, a3, 0
.L204:
	.loc 1 675 0
	mov.n	a2, a8
	retw.n
.LFE49:
	.size	pthread_mutexattr_gettype, .-pthread_mutexattr_gettype
	.section	.text.pthread_mutexattr_settype,"ax",@progbits
	.align	4
	.global	pthread_mutexattr_settype
	.type	pthread_mutexattr_settype, @function
pthread_mutexattr_settype:
.LFB50:
	.loc 1 678 0
.LVL237:
	entry	sp, 32
.LCFI29:
	.loc 1 680 0
	movi.n	a8, 0x16
	.loc 1 679 0
	beqz.n	a2, .L211
.LVL238:
.LBB72:
.LBB73:
	.loc 1 462 0
	bgeui	a3, 3, .L211
.LBE73:
.LBE72:
	.loc 1 685 0
	s32i.n	a3, a2, 4
	movi.n	a8, 0
.LVL239:
.L211:
	.loc 1 688 0
	mov.n	a2, a8
.LVL240:
	retw.n
.LFE50:
	.size	pthread_mutexattr_settype, .-pthread_mutexattr_settype
	.section	.text.pthread_attr_init,"ax",@progbits
	.literal_position
	.literal .LC66, 3072
	.align	4
	.global	pthread_attr_init
	.type	pthread_attr_init, @function
pthread_attr_init:
.LFB62:
	entry	sp, 32
.LCFI30:
	mov.n	a8, a2
	movi.n	a2, 0x16
	beqz.n	a8, .L214
	l32r	a2, .LC66
	s32i.n	a2, a8, 8
	movi.n	a2, 1
	s32i.n	a2, a8, 28
	movi.n	a2, 0
.L214:
	retw.n
.LFE62:
	.size	pthread_attr_init, .-pthread_attr_init
	.section	.text.pthread_attr_destroy,"ax",@progbits
	.literal_position
	.literal .LC67, 3072
	.align	4
	.global	pthread_attr_destroy
	.type	pthread_attr_destroy, @function
pthread_attr_destroy:
.LFB52:
	.loc 1 703 0
.LVL241:
	.loc 1 703 0
	entry	sp, 32
.LCFI31:
	.loc 1 703 0
	mov.n	a8, a2
	.loc 1 710 0
	movi.n	a2, 0x16
.LVL242:
	.loc 1 704 0
	beqz.n	a8, .L218
	.loc 1 706 0
	l32r	a2, .LC67
	s32i.n	a2, a8, 8
	.loc 1 707 0
	movi.n	a2, 1
	s32i.n	a2, a8, 28
	.loc 1 708 0
	movi.n	a2, 0
.L218:
	.loc 1 711 0
	retw.n
.LFE52:
	.size	pthread_attr_destroy, .-pthread_attr_destroy
	.section	.text.pthread_attr_getstacksize,"ax",@progbits
	.align	4
	.global	pthread_attr_getstacksize
	.type	pthread_attr_getstacksize, @function
pthread_attr_getstacksize:
.LFB53:
	.loc 1 714 0
.LVL243:
	entry	sp, 32
.LCFI32:
	.loc 1 719 0
	movi.n	a8, 0x16
	.loc 1 715 0
	beqz.n	a2, .L222
	.loc 1 716 0
	l32i.n	a2, a2, 8
.LVL244:
	.loc 1 717 0
	movi.n	a8, 0
	.loc 1 716 0
	s32i.n	a2, a3, 0
.L222:
	.loc 1 720 0
	mov.n	a2, a8
	retw.n
.LFE53:
	.size	pthread_attr_getstacksize, .-pthread_attr_getstacksize
	.section	.text.pthread_attr_setstacksize,"ax",@progbits
	.align	4
	.global	pthread_attr_setstacksize
	.type	pthread_attr_setstacksize, @function
pthread_attr_setstacksize:
.LFB54:
	.loc 1 723 0
.LVL245:
	entry	sp, 32
.LCFI33:
	.loc 1 724 0
	beqz.n	a2, .L228
	movi	a8, 0x2ff
	bgeu	a8, a3, .L228
	.loc 1 725 0
	s32i.n	a3, a2, 8
	.loc 1 726 0
	movi.n	a2, 0
.LVL246:
	retw.n
.LVL247:
.L228:
	.loc 1 728 0
	movi.n	a2, 0x16
.LVL248:
	.loc 1 729 0
	retw.n
.LFE54:
	.size	pthread_attr_setstacksize, .-pthread_attr_setstacksize
	.section	.text.pthread_attr_getdetachstate,"ax",@progbits
	.align	4
	.global	pthread_attr_getdetachstate
	.type	pthread_attr_getdetachstate, @function
pthread_attr_getdetachstate:
.LFB55:
	.loc 1 732 0
.LVL249:
	entry	sp, 32
.LCFI34:
	.loc 1 737 0
	movi.n	a8, 0x16
	.loc 1 733 0
	beqz.n	a2, .L236
	.loc 1 734 0
	l32i.n	a2, a2, 28
.LVL250:
	.loc 1 735 0
	movi.n	a8, 0
	.loc 1 734 0
	s32i.n	a2, a3, 0
.L236:
	.loc 1 738 0
	mov.n	a2, a8
	retw.n
.LFE55:
	.size	pthread_attr_getdetachstate, .-pthread_attr_getdetachstate
	.section	.text.pthread_attr_setdetachstate,"ax",@progbits
	.align	4
	.global	pthread_attr_setdetachstate
	.type	pthread_attr_setdetachstate, @function
pthread_attr_setdetachstate:
.LFB56:
	.loc 1 741 0
.LVL251:
	entry	sp, 32
.LCFI35:
	.loc 1 755 0
	movi.n	a8, 0x16
	.loc 1 742 0
	beqz.n	a2, .L240
	.loc 1 743 0
	beqz.n	a3, .L241
	beqi	a3, 1, .L242
	j	.L240
.L241:
	.loc 1 745 0
	s32i.n	a3, a2, 28
	.loc 1 753 0
	mov.n	a8, a3
	.loc 1 746 0
	j	.L240
.L242:
	.loc 1 748 0
	s32i.n	a3, a2, 28
	.loc 1 753 0
	movi.n	a8, 0
.L240:
	.loc 1 756 0
	mov.n	a2, a8
.LVL252:
	retw.n
.LFE56:
	.size	pthread_attr_setdetachstate, .-pthread_attr_setdetachstate
	.section	.rodata.__func__$6073,"a",@progbits
	.type	__func__$6073, @object
	.size	__func__$6073, 21
__func__$6073:
	.string	"pthread_mutex_unlock"
	.section	.rodata.__FUNCTION__$6027,"a",@progbits
	.type	__FUNCTION__$6027, @object
	.size	__FUNCTION__$6027, 13
__FUNCTION__$6027:
	.string	"pthread_once"
	.section	.rodata.__func__$6016,"a",@progbits
	.type	__func__$6016, @object
	.size	__func__$6016, 13
__func__$6016:
	.string	"pthread_self"
	.section	.rodata.__FUNCTION__$6009,"a",@progbits
	.type	__FUNCTION__$6009, @object
	.size	__FUNCTION__$6009, 15
__FUNCTION__$6009:
	.string	"pthread_cancel"
	.section	.rodata.__func__$6003,"a",@progbits
	.type	__func__$6003, @object
	.size	__func__$6003, 13
__func__$6003:
	.string	"pthread_exit"
	.section	.rodata.__func__$5996,"a",@progbits
	.type	__func__$5996, @object
	.size	__func__$5996, 15
__func__$5996:
	.string	"pthread_detach"
	.section	.rodata.__func__$5988,"a",@progbits
	.type	__func__$5988, @object
	.size	__func__$5988, 13
__func__$5988:
	.string	"pthread_join"
	.section	.rodata.__func__$5978,"a",@progbits
	.type	__func__$5978, @object
	.size	__func__$5978, 15
__func__$5978:
	.string	"pthread_create"
	.section	.bss.s_pthread_cfg_key,"aw",@nobits
	.align	4
	.type	s_pthread_cfg_key, @object
	.size	s_pthread_cfg_key, 4
s_pthread_cfg_key:
	.zero	4
	.section	.bss.s_threads_list,"aw",@nobits
	.align	4
	.type	s_threads_list, @object
	.size	s_threads_list, 4
s_threads_list:
	.zero	4
	.section	.data.s_mutex_init_lock,"aw",@progbits
	.align	4
	.type	s_mutex_init_lock, @object
	.size	s_mutex_init_lock, 8
s_mutex_init_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_threads_mux,"aw",@nobits
	.align	4
	.type	s_threads_mux, @object
	.size	s_threads_mux, 4
s_threads_mux:
	.zero	4
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
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI5-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI13-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI14-.LFB33
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
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI16-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI17-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI18-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI19-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI20-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI21-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI22-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI23-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI24-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI25-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI26-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI27-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI28-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI29-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI30-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI31-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI32-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI33-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI34-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI35-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/sched.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/include/esp_pthread.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/pthread.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_internal.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c70
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0xc
	.4byte	.LASF193
	.4byte	.LASF194
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x4
	.byte	0xd8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x5
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x5
	.byte	0x31
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xf4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x83
	.4byte	0xc4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x84
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x113
	.4byte	0xa4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x119
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x2f
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x134
	.4byte	0x70
	.uleb128 0xc
	.byte	0x20
	.byte	0x6
	.2byte	0x155
	.4byte	0x197
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x156
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x157
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x158
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x159
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x15a
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x15b
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x15c
	.4byte	0x100
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x165
	.4byte	0x2c
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x16b
	.4byte	0x125
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x1ba
	.4byte	0x70
	.uleb128 0xc
	.byte	0xc
	.byte	0x6
	.2byte	0x1bc
	.4byte	0x1e0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x1bd
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x1c6
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x1c8
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x1c9
	.4byte	0x1af
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x1d9
	.4byte	0x70
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.2byte	0x1db
	.4byte	0x21c
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x1dc
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x1dd
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x1de
	.4byte	0x1f8
	.uleb128 0xe
	.4byte	0x233
	.uleb128 0xf
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x8
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x8
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x9
	.byte	0x18
	.4byte	0x244
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xa
	.byte	0x4d
	.4byte	0x233
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF46
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x3
	.byte	0x6f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x3
	.byte	0x76
	.4byte	0x24f
	.uleb128 0x10
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x2c4
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x3
	.byte	0x8a
	.4byte	0x24f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x3
	.byte	0x8f
	.4byte	0x24f
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x3
	.byte	0x94
	.4byte	0x2a3
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2
	.byte	0x6e
	.4byte	0xa2
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0x2
	.byte	0x82
	.4byte	0x305
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xb
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xc
	.byte	0x4f
	.4byte	0x30a
	.uleb128 0x10
	.byte	0xc
	.byte	0xd
	.byte	0x1a
	.4byte	0x34d
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xd
	.byte	0x1b
	.4byte	0x33
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xd
	.byte	0x1c
	.4byte	0x33
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xd
	.byte	0x1d
	.4byte	0x27b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xd
	.byte	0x1e
	.4byte	0x320
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0xe
	.byte	0x1f
	.4byte	0x389
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x26
	.4byte	0x3a6
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.byte	0x2d
	.4byte	0x3bb
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2d
	.4byte	0x41c
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x1c
	.byte	0x1
	.byte	0x2c
	.4byte	0x41c
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2d
	.4byte	0x3a6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2e
	.4byte	0x2cf
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2f
	.4byte	0x2cf
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0x30
	.4byte	0x389
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.byte	0x31
	.4byte	0x27b
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x1
	.byte	0x32
	.4byte	0xa2
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bb
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x1
	.byte	0x34
	.4byte	0x3bb
	.uleb128 0x10
	.byte	0x14
	.byte	0x1
	.byte	0x37
	.4byte	0x45a
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0x38
	.4byte	0x469
	.byte	0
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.byte	0x39
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x14
	.string	"cfg"
	.byte	0x1
	.byte	0x3a
	.4byte	0x34d
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.4byte	0xa2
	.4byte	0x469
	.uleb128 0xf
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45a
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3b
	.4byte	0x42d
	.uleb128 0x10
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.4byte	0x49b
	.uleb128 0x14
	.string	"sem"
	.byte	0x1
	.byte	0x3f
	.4byte	0x315
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x40
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x1
	.byte	0x41
	.4byte	0x47a
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.4byte	0x4bf
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x1
	.byte	0x46
	.4byte	0x41c
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x2c
	.byte	0x1
	.4byte	0x4dd
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x4dd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e3
	.uleb128 0x8
	.4byte	0x1e0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x218
	.4byte	0x2c
	.byte	0x1
	.4byte	0x512
	.uleb128 0x18
	.string	"mux"
	.byte	0x1
	.2byte	0x218
	.4byte	0x512
	.uleb128 0x18
	.string	"tmo"
	.byte	0x1
	.2byte	0x218
	.4byte	0x298
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49b
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x1
	.byte	0x8d
	.4byte	0x265
	.byte	0x1
	.4byte	0x53d
	.uleb128 0x1a
	.string	"cfg"
	.byte	0x1
	.byte	0x8d
	.4byte	0x53d
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x94
	.4byte	0x548
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x543
	.uleb128 0x8
	.4byte	0x34d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34d
	.uleb128 0x1c
	.4byte	.LASF196
	.byte	0x3
	.2byte	0x11c
	.byte	0x3
	.4byte	0x580
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x11c
	.4byte	0x580
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x11c
	.4byte	0x24f
	.uleb128 0x18
	.string	"set"
	.byte	0x3
	.2byte	0x11c
	.4byte	0x58b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x586
	.uleb128 0x1d
	.4byte	0x24f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x230
	.4byte	0x2c
	.byte	0x1
	.4byte	0x5bb
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x230
	.4byte	0x5bb
	.uleb128 0x1e
	.string	"res"
	.byte	0x1
	.2byte	0x232
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a3
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x282
	.byte	0x3
	.4byte	0x61b
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x270
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x305
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x61b
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x620
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x28d
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x1b6
	.4byte	0x62b
	.byte	0
	.uleb128 0x8
	.4byte	0x24f
	.uleb128 0x8
	.4byte	0xa2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2cf
	.uleb128 0x8
	.4byte	0x625
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x5f
	.4byte	0xa2
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69b
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.byte	0x5f
	.4byte	0x6b5
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF103
	.byte	0x1
	.byte	0x5f
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"it"
	.byte	0x1
	.byte	0x61
	.4byte	0x6af
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.byte	0x63
	.4byte	0xa2
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LVL2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xa2
	.4byte	0x6af
	.uleb128 0xf
	.4byte	0x6af
	.uleb128 0xf
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x422
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69b
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.byte	0x6b
	.4byte	0xa2
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f1
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x6b
	.4byte	0x6af
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x1
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF108
	.byte	0x1
	.byte	0x73
	.4byte	0xa2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x729
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x73
	.4byte	0x6af
	.4byte	.LLST4
	.uleb128 0x26
	.string	"hnd"
	.byte	0x1
	.byte	0x73
	.4byte	0xa2
	.4byte	.LLST5
	.byte	0
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75c
	.uleb128 0x21
	.4byte	.LASF109
	.byte	0x1
	.byte	0x4d
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0x1b24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0x85
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a5
	.uleb128 0x21
	.4byte	.LASF112
	.byte	0x1
	.byte	0x85
	.4byte	0x6af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x79b
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x87
	.4byte	0x41c
	.4byte	.LLST6
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0x1b24
	.byte	0
	.uleb128 0x2c
	.4byte	0x4e8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x825
	.uleb128 0x2d
	.4byte	0x4f9
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	0x505
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x7f8
	.uleb128 0x2d
	.4byte	0x505
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	0x4f9
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0x1b2f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x1b3b
	.uleb128 0x2b
	.4byte	.LVL22
	.4byte	0x1b47
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0x1b53
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF114
	.byte	0x1
	.byte	0x52
	.4byte	0x265
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x878
	.uleb128 0x30
	.4byte	.LVL27
	.4byte	0x1b5f
	.4byte	0x85b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_pthread_cfg_key_destructor
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.4byte	0x1b6b
	.4byte	0x86e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0x1b77
	.byte	0
	.uleb128 0x2c
	.4byte	0x518
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e5
	.uleb128 0x2d
	.4byte	0x528
	.4byte	.LLST10
	.uleb128 0x31
	.4byte	0x533
	.uleb128 0x32
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2d
	.4byte	0x528
	.4byte	.LLST11
	.uleb128 0x32
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x33
	.4byte	0x533
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0x1b83
	.uleb128 0x30
	.4byte	.LVL34
	.4byte	0x1b8f
	.4byte	0x8d9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL37
	.4byte	0x1b9a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa0
	.4byte	0x265
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x939
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xa0
	.4byte	0x548
	.4byte	.LLST13
	.uleb128 0x22
	.string	"cfg"
	.byte	0x1
	.byte	0xa2
	.4byte	0x548
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LVL40
	.4byte	0x1b83
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0x1ba6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF116
	.byte	0x1
	.byte	0xc2
	.4byte	0x2c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0e
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x1
	.byte	0xc2
	.4byte	0xc0e
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc2
	.4byte	0xc14
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc3
	.4byte	0x469
	.4byte	.LLST17
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.byte	0xc3
	.4byte	0xa2
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc5
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0xc2f
	.uleb128 0x2a
	.4byte	.LASF81
	.byte	0x1
	.byte	0xc8
	.4byte	0xc34
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x1
	.byte	0xce
	.4byte	0x6af
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd5
	.4byte	0x24f
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd6
	.4byte	0x282
	.4byte	.LLST22
	.uleb128 0x2a
	.4byte	.LASF120
	.byte	0x1
	.byte	0xd8
	.4byte	0x548
	.4byte	.LLST23
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0xf4
	.4byte	0x282
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0xc3a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5978
	.uleb128 0x37
	.4byte	0x5c1
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xf4
	.4byte	0xa86
	.uleb128 0x2e
	.4byte	0x5d2
	.uleb128 0x6
	.byte	0x3
	.4byte	pthread_task_func
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0x5de
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.uleb128 0x2d
	.4byte	0x60e
	.4byte	.LLST24
	.uleb128 0x2d
	.4byte	0x602
	.4byte	.LLST25
	.uleb128 0x2d
	.4byte	0x5f6
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	0x5ea
	.4byte	.LLST27
	.uleb128 0x28
	.4byte	.LVL68
	.4byte	0x1baf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_task_func
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL47
	.4byte	0x1bbb
	.4byte	0xa9e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL49
	.4byte	0x1bc6
	.uleb128 0x30
	.4byte	.LVL50
	.4byte	0x1bd1
	.4byte	0xacf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL51
	.4byte	0x1bbb
	.4byte	0xae7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0x1bc6
	.uleb128 0x30
	.4byte	.LVL54
	.4byte	0x1bd1
	.4byte	0xb18
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL55
	.4byte	0x1b24
	.4byte	0xb2c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL58
	.4byte	0x1b83
	.uleb128 0x2b
	.4byte	.LVL69
	.4byte	0x1bc6
	.uleb128 0x30
	.4byte	.LVL70
	.4byte	0x1bd1
	.4byte	0xb66
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL71
	.4byte	0x1b24
	.4byte	0xb7a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL73
	.4byte	0x1b24
	.4byte	0xb8e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL76
	.4byte	0x1b53
	.4byte	0xbac
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL77
	.4byte	0x1bdc
	.4byte	0xbdc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x103
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5978
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x30
	.4byte	.LVL80
	.4byte	0x1be7
	.4byte	0xbf9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL81
	.4byte	0x1bf3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x119
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc1a
	.uleb128 0x8
	.4byte	0x197
	.uleb128 0x38
	.4byte	0xb2
	.4byte	0xc2f
	.uleb128 0x39
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xc1f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46f
	.uleb128 0x8
	.4byte	0xc1f
	.uleb128 0x3a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x7b
	.4byte	0x2cf
	.byte	0x3
	.4byte	0xc5b
	.uleb128 0x3b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x7b
	.4byte	0x119
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF123
	.byte	0x1
	.byte	0x80
	.4byte	0x6af
	.byte	0x1
	.4byte	0xc77
	.uleb128 0x3b
	.4byte	.LASF124
	.byte	0x1
	.byte	0x80
	.4byte	0x2cf
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x112
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe99
	.uleb128 0x3d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x112
	.4byte	0x119
	.4byte	.LLST28
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x112
	.4byte	0xe99
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x114
	.4byte	0x6af
	.4byte	.LLST29
	.uleb128 0x40
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.4byte	0x2c
	.4byte	.LLST30
	.uleb128 0x3f
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x116
	.4byte	0x27b
	.4byte	.LLST31
	.uleb128 0x3f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x117
	.4byte	0xa2
	.4byte	.LLST32
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0xeaf
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0xeb4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5988
	.uleb128 0x41
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x11f
	.4byte	0x2cf
	.uleb128 0x42
	.4byte	0xc3f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.2byte	0x11f
	.4byte	0xd4a
	.uleb128 0x2d
	.4byte	0xc4f
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	.LVL87
	.4byte	0x630
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_handle_by_desc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xdb3
	.uleb128 0x41
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x12d
	.4byte	0x6af
	.uleb128 0x42
	.4byte	0xc5b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x12d
	.4byte	0xd90
	.uleb128 0x2d
	.4byte	0xc6b
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	.LVL91
	.4byte	0x630
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_desc_by_handle
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL89
	.4byte	0x1b47
	.uleb128 0x2b
	.4byte	.LVL92
	.4byte	0x1b47
	.uleb128 0x28
	.4byte	.LVL96
	.4byte	0x75c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL85
	.4byte	0x1b53
	.4byte	0xdd1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0x1b47
	.uleb128 0x30
	.4byte	.LVL99
	.4byte	0x1be7
	.4byte	0xdf7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL102
	.4byte	0x1bff
	.4byte	0xe1d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x30
	.4byte	.LVL103
	.4byte	0x1b53
	.4byte	0xe3d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL105
	.4byte	0x1bdc
	.4byte	0xe54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x30
	.4byte	.LVL106
	.4byte	0x75c
	.4byte	0xe68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL107
	.4byte	0x1be7
	.4byte	0xe88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL108
	.4byte	0x1c0b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x38
	.4byte	0xb2
	.4byte	0xeaf
	.uleb128 0x39
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x3c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x152
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc6
	.uleb128 0x3d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x152
	.4byte	0x119
	.4byte	.LLST35
	.uleb128 0x3f
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x154
	.4byte	0x6af
	.4byte	.LLST36
	.uleb128 0x40
	.string	"ret"
	.byte	0x1
	.2byte	0x155
	.4byte	0x2c
	.4byte	.LLST37
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0xfc6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5996
	.uleb128 0x41
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x15a
	.4byte	0x2cf
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0xfcb
	.uleb128 0x42
	.4byte	0xc3f
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.2byte	0x15a
	.4byte	0xf5e
	.uleb128 0x2d
	.4byte	0xc4f
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	.LVL114
	.4byte	0x630
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_handle_by_desc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL112
	.4byte	0x1b53
	.4byte	0xf7c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL113
	.4byte	0x1bdc
	.4byte	0xfac
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x158
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5996
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL117
	.4byte	0x1be7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc1f
	.uleb128 0x8
	.4byte	0xc1f
	.uleb128 0x44
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x165
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111a
	.uleb128 0x3d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x165
	.4byte	0xa2
	.4byte	.LLST39
	.uleb128 0x3f
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x167
	.4byte	0x27b
	.4byte	.LLST40
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0x111a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6003
	.uleb128 0x41
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x16f
	.4byte	0x6af
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0x111f
	.uleb128 0x42
	.4byte	0xc5b
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x16f
	.4byte	0x105b
	.uleb128 0x2d
	.4byte	0xc6b
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	.LVL124
	.4byte	0x630
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_desc_by_handle
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL120
	.4byte	0x1c17
	.uleb128 0x30
	.4byte	.LVL121
	.4byte	0x1b53
	.4byte	0x1082
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL122
	.4byte	0x1b47
	.uleb128 0x30
	.4byte	.LVL125
	.4byte	0x1bdc
	.4byte	0x10a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL126
	.4byte	0x1b24
	.uleb128 0x30
	.4byte	.LVL127
	.4byte	0x75c
	.4byte	0x10bf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL130
	.4byte	0x1bf3
	.4byte	0x10d9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL135
	.4byte	0x1be7
	.4byte	0x10f6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL137
	.4byte	0x1c0b
	.4byte	0x1109
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL139
	.4byte	0x1c22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x45
	.4byte	.LASF132
	.byte	0x1
	.byte	0xab
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ac
	.uleb128 0x46
	.string	"arg"
	.byte	0x1
	.byte	0xab
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF133
	.byte	0x1
	.byte	0xad
	.4byte	0xa2
	.4byte	.LLST42
	.uleb128 0x34
	.4byte	.LASF81
	.byte	0x1
	.byte	0xae
	.4byte	0xc34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0x11bc
	.uleb128 0x30
	.4byte	.LVL142
	.4byte	0x1bff
	.4byte	0x118e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x30
	.4byte	.LVL143
	.4byte	0x518
	.4byte	0x11a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL145
	.4byte	0xfd0
	.byte	0
	.uleb128 0x38
	.4byte	0xb2
	.4byte	0x11bc
	.uleb128 0x39
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.4byte	0x11ac
	.uleb128 0x3c
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x192
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1237
	.uleb128 0x3d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x192
	.4byte	0x119
	.4byte	.LLST43
	.uleb128 0x36
	.4byte	.LASF128
	.4byte	0x1237
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6009
	.uleb128 0x2b
	.4byte	.LVL147
	.4byte	0x1bc6
	.uleb128 0x28
	.4byte	.LVL148
	.4byte	0x1bd1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6009
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xc1f
	.uleb128 0x3c
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x198
	.4byte	0x2c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1266
	.uleb128 0x28
	.4byte	.LVL150
	.4byte	0x1c2e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x19e
	.4byte	0x119
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1324
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0x1324
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6016
	.uleb128 0x41
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x6af
	.uleb128 0x42
	.4byte	0xc5b
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x12cc
	.uleb128 0x2d
	.4byte	0xc6b
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LVL154
	.4byte	0x630
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_get_desc_by_handle
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL151
	.4byte	0x1b53
	.4byte	0x12ea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL152
	.4byte	0x1b47
	.uleb128 0x30
	.4byte	.LVL155
	.4byte	0x1bdc
	.4byte	0x130a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x28
	.4byte	.LVL156
	.4byte	0x1be7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x3c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x2c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1362
	.uleb128 0x47
	.string	"t1"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x119
	.4byte	.LLST45
	.uleb128 0x47
	.string	"t2"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x119
	.4byte	.LLST46
	.byte	0
	.uleb128 0x48
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x2c
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1426
	.uleb128 0x3d
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x1426
	.4byte	.LLST47
	.uleb128 0x3e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF128
	.4byte	0x142c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6027
	.uleb128 0x40
	.string	"res"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x24f
	.4byte	.LLST48
	.uleb128 0x42
	.4byte	0x54e
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x1be
	.4byte	0x13e9
	.uleb128 0x2e
	.4byte	0x573
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5033
	.sleb128 0
	.uleb128 0x49
	.4byte	0x567
	.byte	0
	.uleb128 0x2d
	.4byte	0x55b
	.4byte	.LLST49
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL161
	.4byte	0x1bc6
	.uleb128 0x28
	.4byte	.LVL162
	.4byte	0x1bd1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6027
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x8
	.4byte	0xe9f
	.uleb128 0x3c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x2c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ec
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x5bb
	.4byte	.LLST50
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x4dd
	.4byte	.LLST51
	.uleb128 0x3f
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x2c
	.4byte	.LLST52
	.uleb128 0x40
	.string	"mux"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x512
	.4byte	.LLST53
	.uleb128 0x29
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x14bf
	.uleb128 0x1e
	.string	"res"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x2c
	.uleb128 0x4a
	.4byte	0x4bf
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.2byte	0x1e2
	.uleb128 0x2d
	.4byte	0x4d0
	.4byte	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL173
	.4byte	0x1b8f
	.4byte	0x14d2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL175
	.4byte	0x1b6b
	.uleb128 0x28
	.4byte	.LVL177
	.4byte	0x1b24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x591
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154e
	.uleb128 0x2d
	.4byte	0x5a2
	.4byte	.LLST55
	.uleb128 0x4b
	.4byte	0x5ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LVL181
	.4byte	0x1c3a
	.4byte	0x1523
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL183
	.4byte	0x1431
	.4byte	0x153d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL185
	.4byte	0x1c45
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x2c
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d4
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x5bb
	.4byte	.LLST56
	.uleb128 0x40
	.string	"mux"
	.byte	0x1
	.2byte	0x200
	.4byte	0x512
	.4byte	.LLST57
	.uleb128 0x35
	.4byte	.LASF128
	.4byte	0x15e4
	.uleb128 0x40
	.string	"res"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x2c
	.4byte	.LLST58
	.uleb128 0x30
	.4byte	.LVL188
	.4byte	0x4e8
	.4byte	0x15ba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL190
	.4byte	0x1c50
	.uleb128 0x28
	.4byte	.LVL191
	.4byte	0x1b24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xb2
	.4byte	0x15e4
	.uleb128 0x39
	.4byte	0x9b
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	0x15d4
	.uleb128 0x3c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x23d
	.4byte	0x2c
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166f
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x23d
	.4byte	0x5bb
	.4byte	.LLST59
	.uleb128 0x4c
	.string	"res"
	.byte	0x1
	.2byte	0x242
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4d
	.4byte	0x591
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x242
	.4byte	0x165e
	.uleb128 0x2d
	.4byte	0x5a2
	.4byte	.LLST60
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x33
	.4byte	0x5ae
	.4byte	.LLST61
	.uleb128 0x28
	.4byte	.LVL199
	.4byte	0x14ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL197
	.4byte	0x4e8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x249
	.4byte	0x2c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1736
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x249
	.4byte	0x5bb
	.4byte	.LLST62
	.uleb128 0x3e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x249
	.4byte	0x1736
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.string	"res"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x2c
	.4byte	.LLST63
	.uleb128 0x4e
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x253
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.string	"tmo"
	.byte	0x1
	.2byte	0x255
	.4byte	0x298
	.4byte	.LLST64
	.uleb128 0x4d
	.4byte	0x591
	.4byte	.LBB62
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x24e
	.4byte	0x1713
	.uleb128 0x2d
	.4byte	0x5a2
	.4byte	.LLST65
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x33
	.4byte	0x5ae
	.4byte	.LLST66
	.uleb128 0x28
	.4byte	.LVL210
	.4byte	0x14ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL205
	.4byte	0x1c5c
	.4byte	0x172c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL206
	.4byte	0x4e8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x173c
	.uleb128 0x8
	.4byte	0xcf
	.uleb128 0x3c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x25f
	.4byte	0x2c
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c6
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x25f
	.4byte	0x5bb
	.4byte	.LLST67
	.uleb128 0x4c
	.string	"res"
	.byte	0x1
	.2byte	0x264
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4d
	.4byte	0x591
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x264
	.4byte	0x17b6
	.uleb128 0x2d
	.4byte	0x5a2
	.4byte	.LLST68
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x33
	.4byte	0x5ae
	.4byte	.LLST69
	.uleb128 0x28
	.4byte	.LVL217
	.4byte	0x14ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL215
	.4byte	0x4e8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x26b
	.4byte	0x2c
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1884
	.uleb128 0x3d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x26b
	.4byte	0x5bb
	.4byte	.LLST70
	.uleb128 0x40
	.string	"mux"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x512
	.4byte	.LLST71
	.uleb128 0x40
	.string	"ret"
	.byte	0x1
	.2byte	0x27d
	.4byte	0x2c
	.4byte	.LLST72
	.uleb128 0x36
	.4byte	.LASF121
	.4byte	0x1894
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6073
	.uleb128 0x2b
	.4byte	.LVL223
	.4byte	0x1b3b
	.uleb128 0x2b
	.4byte	.LVL224
	.4byte	0x1b47
	.uleb128 0x2b
	.4byte	.LVL225
	.4byte	0x1c67
	.uleb128 0x30
	.4byte	.LVL227
	.4byte	0x1be7
	.4byte	0x1857
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL229
	.4byte	0x1bdc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x284
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6073
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xb2
	.4byte	0x1894
	.uleb128 0x39
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x1884
	.uleb128 0x3c
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x289
	.4byte	0x2c
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c4
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x289
	.4byte	0x18c4
	.4byte	.LLST73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x3c
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x293
	.4byte	0x2c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f5
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x293
	.4byte	0x18c4
	.4byte	.LLST74
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x29c
	.4byte	0x2c
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x192e
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x29c
	.4byte	0x4dd
	.4byte	.LLST75
	.uleb128 0x3e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x29c
	.4byte	0x192e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x3c
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x2c
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a3
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x18c4
	.4byte	.LLST76
	.uleb128 0x3e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x1e0
	.4byte	.LLST77
	.uleb128 0x1e
	.string	"res"
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x2c
	.uleb128 0x4a
	.4byte	0x4bf
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.2byte	0x2ab
	.uleb128 0x2d
	.4byte	0x4d0
	.4byte	.LLST78
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x2be
	.4byte	0x2c
	.byte	0x1
	.4byte	0x19c1
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2be
	.4byte	0x19c1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x197
	.uleb128 0x2c
	.4byte	0x19a3
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e4
	.uleb128 0x2d
	.4byte	0x19b4
	.4byte	.LLST79
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x2c
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a1d
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2c9
	.4byte	0xc14
	.4byte	.LLST80
	.uleb128 0x3e
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x1a1d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33
	.uleb128 0x3c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x2c
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5c
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x19c1
	.4byte	.LLST81
	.uleb128 0x3e
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x2db
	.4byte	0x2c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a95
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2db
	.4byte	0xc14
	.4byte	.LLST82
	.uleb128 0x3e
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2db
	.4byte	0x192e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x2c
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ace
	.uleb128 0x3d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x19c1
	.4byte	.LLST83
	.uleb128 0x3e
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x50
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x305
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF160
	.byte	0x1
	.byte	0x44
	.4byte	0x315
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_mux
	.uleb128 0x34
	.4byte	.LASF161
	.byte	0x1
	.byte	0x45
	.4byte	0x2c4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mutex_init_lock
	.uleb128 0x34
	.4byte	.LASF162
	.byte	0x1
	.byte	0x46
	.4byte	0x4a6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_threads_list
	.uleb128 0x34
	.4byte	.LASF163
	.byte	0x1
	.byte	0x48
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pthread_cfg_key
	.uleb128 0x51
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xf
	.byte	0x5a
	.uleb128 0x52
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x582
	.uleb128 0x52
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x57c
	.uleb128 0x52
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x899
	.uleb128 0x52
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x38a
	.uleb128 0x52
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x10
	.2byte	0x119
	.uleb128 0x52
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x578
	.uleb128 0x52
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x10
	.2byte	0x124
	.uleb128 0x52
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x10
	.2byte	0x120
	.uleb128 0x51
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xf
	.byte	0x65
	.uleb128 0x52
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x10
	.2byte	0x11e
	.uleb128 0x53
	.4byte	.LASF198
	.4byte	.LASF198
	.uleb128 0x52
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x2
	.2byte	0x151
	.uleb128 0x51
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xf
	.byte	0x57
	.uleb128 0x51
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xe
	.byte	0x57
	.uleb128 0x51
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0xe
	.byte	0x6b
	.uleb128 0x51
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x11
	.byte	0x29
	.uleb128 0x52
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x265
	.uleb128 0x52
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x2
	.2byte	0x6e2
	.uleb128 0x52
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x2
	.2byte	0x781
	.uleb128 0x52
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x2
	.2byte	0x2fb
	.uleb128 0x51
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x12
	.byte	0x10
	.uleb128 0x52
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x2
	.2byte	0x400
	.uleb128 0x52
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x2
	.2byte	0x32b
	.uleb128 0x51
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x3
	.byte	0xda
	.uleb128 0x51
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x3
	.byte	0xd9
	.uleb128 0x52
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xb
	.2byte	0x3ac
	.uleb128 0x51
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x13
	.byte	0x1d
	.uleb128 0x52
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xb
	.2byte	0x583
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE22
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
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL75
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
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xa
	.2byte	0xc00
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68-1
	.4byte	.LFE29
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL65
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x76
	.sleb128 24
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL83
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL84
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	.LVL106-1
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL86
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL111
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL118
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL134
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL119
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LFE37
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL169
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL174
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL186
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL187
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL194
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL195
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL202
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x78
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x1c
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1b
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x3a
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL203
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL212
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL213
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL221
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6508
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL244
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL252
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x12c
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
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
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB28
	.4byte	.LFE28
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
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
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
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF134:
	.string	"pthread_cancel"
.LASF146:
	.string	"currtime"
.LASF81:
	.string	"task_arg"
.LASF173:
	.string	"malloc"
.LASF79:
	.string	"detached"
.LASF38:
	.string	"init_executed"
.LASF185:
	.string	"vTaskSuspend"
.LASF3:
	.string	"size_t"
.LASF63:
	.string	"inherit_cfg"
.LASF93:
	.string	"pthread_mutex_init_if_static"
.LASF4:
	.string	"__uint8_t"
.LASF34:
	.string	"type"
.LASF155:
	.string	"pthread_attr_destroy"
.LASF172:
	.string	"pthread_getspecific"
.LASF24:
	.string	"is_initialized"
.LASF197:
	.string	"pthread_exit"
.LASF10:
	.string	"long long unsigned int"
.LASF147:
	.string	"pthread_mutex_trylock"
.LASF45:
	.string	"TaskFunction_t"
.LASF178:
	.string	"esp_log_write"
.LASF91:
	.string	"addr"
.LASF108:
	.string	"pthread_get_desc_by_handle"
.LASF135:
	.string	"sched_yield"
.LASF99:
	.string	"pvParameters"
.LASF36:
	.string	"pthread_mutexattr_t"
.LASF59:
	.string	"QueueHandle_t"
.LASF112:
	.string	"pthread"
.LASF164:
	.string	"free"
.LASF168:
	.string	"xQueueGenericReceive"
.LASF143:
	.string	"pthread_mutex_lock"
.LASF32:
	.string	"pthread_attr_t"
.LASF69:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF125:
	.string	"pthread_join"
.LASF114:
	.string	"esp_pthread_init"
.LASF186:
	.string	"vTaskDelay"
.LASF171:
	.string	"pthread_key_delete"
.LASF184:
	.string	"pthread_internal_local_storage_destructor_callback"
.LASF142:
	.string	"pthread_mutex_destroy"
.LASF102:
	.string	"item_check"
.LASF187:
	.string	"vTaskEnterCritical"
.LASF126:
	.string	"wait"
.LASF64:
	.string	"esp_pthread_cfg_t"
.LASF78:
	.string	"state"
.LASF175:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF55:
	.string	"eSetBits"
.LASF83:
	.string	"func"
.LASF53:
	.string	"TaskHandle_t"
.LASF117:
	.string	"thread"
.LASF49:
	.string	"TickType_t"
.LASF54:
	.string	"eNoAction"
.LASF80:
	.string	"retval"
.LASF96:
	.string	"pvTaskCode"
.LASF169:
	.string	"pthread_key_create"
.LASF195:
	.string	"esp_pthread_task_state"
.LASF47:
	.string	"BaseType_t"
.LASF124:
	.string	"task_handle"
.LASF26:
	.string	"stacksize"
.LASF52:
	.string	"portMUX_TYPE"
.LASF73:
	.string	"sle_next"
.LASF25:
	.string	"stackaddr"
.LASF51:
	.string	"count"
.LASF98:
	.string	"usStackDepth"
.LASF28:
	.string	"inheritsched"
.LASF8:
	.string	"__uint32_t"
.LASF11:
	.string	"__intptr_t"
.LASF72:
	.string	"PTHREAD_TASK_STATE_EXIT"
.LASF109:
	.string	"value"
.LASF90:
	.string	"attr"
.LASF84:
	.string	"esp_pthread_task_arg_t"
.LASF0:
	.string	"unsigned int"
.LASF165:
	.string	"xQueueTakeMutexRecursive"
.LASF101:
	.string	"pvCreatedTask"
.LASF111:
	.string	"pthread_delete"
.LASF136:
	.string	"pthread_self"
.LASF57:
	.string	"eSetValueWithOverwrite"
.LASF14:
	.string	"long unsigned int"
.LASF174:
	.string	"pthread_setspecific"
.LASF163:
	.string	"s_pthread_cfg_key"
.LASF115:
	.string	"esp_pthread_get_cfg"
.LASF145:
	.string	"timeout"
.LASF128:
	.string	"__FUNCTION__"
.LASF192:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF180:
	.string	"xQueueGenericSend"
.LASF58:
	.string	"eSetValueWithoutOverwrite"
.LASF160:
	.string	"s_threads_mux"
.LASF1:
	.string	"short unsigned int"
.LASF86:
	.string	"esp_thread_list_head"
.LASF29:
	.string	"schedpolicy"
.LASF170:
	.string	"xQueueCreateMutex"
.LASF132:
	.string	"pthread_task_func"
.LASF151:
	.string	"pthread_mutexattr_gettype"
.LASF196:
	.string	"uxPortCompareSet"
.LASF22:
	.string	"sched_priority"
.LASF43:
	.string	"intptr_t"
.LASF6:
	.string	"short int"
.LASF106:
	.string	"item"
.LASF141:
	.string	"pthread_mutex_init"
.LASF68:
	.string	"ESP_LOG_INFO"
.LASF150:
	.string	"pthread_mutexattr_destroy"
.LASF161:
	.string	"s_mutex_init_lock"
.LASF198:
	.string	"memset"
.LASF140:
	.string	"init_routine"
.LASF56:
	.string	"eIncrement"
.LASF120:
	.string	"pthread_cfg"
.LASF139:
	.string	"once_control"
.LASF18:
	.string	"tv_nsec"
.LASF13:
	.string	"sizetype"
.LASF177:
	.string	"esp_log_timestamp"
.LASF17:
	.string	"tv_sec"
.LASF95:
	.string	"xTaskCreate"
.LASF167:
	.string	"xTaskGetCurrentTaskHandle"
.LASF189:
	.string	"vQueueDelete"
.LASF107:
	.string	"desc"
.LASF92:
	.string	"compare"
.LASF89:
	.string	"pthread_mutex_lock_internal"
.LASF62:
	.string	"prio"
.LASF194:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/pthread"
.LASF166:
	.string	"xQueueGetMutexHolder"
.LASF16:
	.string	"time_t"
.LASF31:
	.string	"detachstate"
.LASF159:
	.string	"pthread_attr_setdetachstate"
.LASF30:
	.string	"schedparam"
.LASF104:
	.string	"pthread_list_find_item"
.LASF190:
	.string	"clock_gettime"
.LASF119:
	.string	"xHandle"
.LASF23:
	.string	"pthread_t"
.LASF46:
	.string	"_Bool"
.LASF41:
	.string	"int32_t"
.LASF129:
	.string	"cur_pthread"
.LASF71:
	.string	"PTHREAD_TASK_STATE_RUN"
.LASF82:
	.string	"esp_pthread_t"
.LASF137:
	.string	"pthread_equal"
.LASF105:
	.string	"pthread_get_handle_by_desc"
.LASF66:
	.string	"ESP_LOG_ERROR"
.LASF113:
	.string	"curelm"
.LASF20:
	.string	"timespec"
.LASF121:
	.string	"__func__"
.LASF191:
	.string	"xQueueGiveMutexRecursive"
.LASF75:
	.string	"list_node"
.LASF176:
	.string	"calloc"
.LASF157:
	.string	"pthread_attr_setstacksize"
.LASF74:
	.string	"esp_pthread_entry"
.LASF42:
	.string	"uint32_t"
.LASF50:
	.string	"owner"
.LASF152:
	.string	"pthread_mutexattr_settype"
.LASF123:
	.string	"pthread_find"
.LASF94:
	.string	"mutex"
.LASF65:
	.string	"ESP_LOG_NONE"
.LASF60:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF70:
	.string	"ESP_LOG_VERBOSE"
.LASF183:
	.string	"vTaskDelete"
.LASF188:
	.string	"vTaskExitCritical"
.LASF193:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread.c"
.LASF118:
	.string	"start_routine"
.LASF37:
	.string	"pthread_key_t"
.LASF7:
	.string	"__int32_t"
.LASF39:
	.string	"pthread_once_t"
.LASF5:
	.string	"unsigned char"
.LASF33:
	.string	"pthread_mutex_t"
.LASF154:
	.string	"esp_pthread_set_cfg"
.LASF103:
	.string	"check_arg"
.LASF149:
	.string	"pthread_mutexattr_init"
.LASF19:
	.string	"clockid_t"
.LASF27:
	.string	"contentionscope"
.LASF85:
	.string	"esp_pthread_mutex_t"
.LASF67:
	.string	"ESP_LOG_WARN"
.LASF133:
	.string	"rval"
.LASF44:
	.string	"esp_err_t"
.LASF116:
	.string	"pthread_create"
.LASF88:
	.string	"mutexattr_check"
.LASF182:
	.string	"xTaskNotifyWait"
.LASF40:
	.string	"uint8_t"
.LASF153:
	.string	"tmp_attr"
.LASF131:
	.string	"value_ptr"
.LASF127:
	.string	"child_task_retval"
.LASF61:
	.string	"stack_size"
.LASF87:
	.string	"slh_first"
.LASF162:
	.string	"s_threads_list"
.LASF179:
	.string	"__assert_func"
.LASF76:
	.string	"handle"
.LASF156:
	.string	"pthread_attr_getstacksize"
.LASF110:
	.string	"esp_pthread_cfg_key_destructor"
.LASF122:
	.string	"pthread_find_handle"
.LASF35:
	.string	"recursive"
.LASF130:
	.string	"pthread_detach"
.LASF100:
	.string	"uxPriority"
.LASF148:
	.string	"pthread_mutex_unlock"
.LASF21:
	.string	"sched_param"
.LASF48:
	.string	"UBaseType_t"
.LASF97:
	.string	"pcName"
.LASF77:
	.string	"join_task"
.LASF138:
	.string	"pthread_once"
.LASF144:
	.string	"pthread_mutex_timedlock"
.LASF181:
	.string	"xTaskNotify"
.LASF158:
	.string	"pthread_attr_getdetachstate"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
