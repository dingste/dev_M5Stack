	.file	"pthread_local_storage.c"
	.text
.Ltext0:
	.section	.text.find_key,"ax",@progbits
	.literal_position
	.literal .LC0, s_keys_lock
	.literal .LC1, s_keys
	.align	4
	.type	find_key, @function
find_key:
.LFB19:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_local_storage.c"
	.loc 1 79 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 80 0
	l32r	a3, .LC0
	.loc 1 79 0
	mov.n	a4, a2
	.loc 1 80 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL1:
	.loc 1 82 0
	l32r	a2, .LC1
.LVL2:
	mov.n	a10, a3
	l32i.n	a2, a2, 0
.LVL3:
	j	.L2
.L4:
	.loc 1 83 0
	l32i.n	a3, a2, 0
	beq	a3, a4, .L3
	.loc 1 82 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL4:
.L2:
	.loc 1 82 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L4
.L3:
	.loc 1 87 0 is_stmt 1
	call8	vTaskExitCritical
.LVL5:
	.loc 1 89 0
	retw.n
.LFE19:
	.size	find_key, .-find_key
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"tls != NULL"
.LC5:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_local_storage.c"
	.section	.text.pthread_local_storage_thread_deleted_callback,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$5797
	.literal .LC6, .LC5
	.align	4
	.type	pthread_local_storage_thread_deleted_callback, @function
pthread_local_storage_thread_deleted_callback:
.LFB21:
	.loc 1 124 0
.LVL6:
	entry	sp, 32
.LCFI1:
.LVL7:
	.loc 1 126 0
	bnez.n	a3, .L6
.LVL8:
.LBB7:
.LBB8:
	l32r	a13, .LC3
	l32r	a12, .LC4
	l32r	a10, .LC6
	movi	a11, 0x7e
	call8	__assert_func
.LVL9:
.L6:
.LBE8:
.LBE7:
	.loc 1 129 0
	l32i.n	a2, a3, 0
.LVL10:
	.loc 1 130 0
	j	.L7
.L9:
.LBB9:
	.loc 1 134 0
	l32i.n	a10, a2, 0
	call8	find_key
.LVL11:
	.loc 1 135 0
	beqz.n	a10, .L8
	.loc 1 135 0 discriminator 1
	l32i.n	a8, a10, 4
	beqz.n	a8, .L8
	.loc 1 136 0
	l32i.n	a10, a2, 4
.LVL12:
	callx8	a8
.LVL13:
.L8:
	.loc 1 138 0
	l32i.n	a4, a2, 8
.LVL14:
	.loc 1 139 0
	mov.n	a10, a2
	call8	free
.LVL15:
	.loc 1 140 0
	mov.n	a2, a4
.LVL16:
.L7:
.LBE9:
	.loc 1 130 0
	bnez.n	a2, .L9
	.loc 1 142 0
	mov.n	a10, a3
	call8	free
.LVL17:
	retw.n
.LFE21:
	.size	pthread_local_storage_thread_deleted_callback, .-pthread_local_storage_thread_deleted_callback
	.section	.text.pthread_key_create,"ax",@progbits
	.literal_position
	.literal .LC7, s_keys_lock
	.literal .LC8, s_keys
	.align	4
	.global	pthread_key_create
	.type	pthread_key_create, @function
pthread_key_create:
.LFB18:
	.loc 1 59 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 60 0
	movi.n	a10, 0xc
	call8	malloc
.LVL19:
	mov.n	a4, a10
.LVL20:
	.loc 1 62 0
	movi.n	a5, 0xc
	.loc 1 61 0
	beqz.n	a10, .L17
	.loc 1 65 0
	l32r	a5, .LC7
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL21:
	.loc 1 67 0
	l32r	a8, .LC8
	mov.n	a10, a5
	l32i.n	a9, a8, 0
.LVL22:
	mov.n	a5, a8
	.loc 1 68 0
	movi.n	a8, 1
	beqz.n	a9, .L18
	.loc 1 68 0 is_stmt 0 discriminator 1
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
.L18:
	.loc 1 70 0 is_stmt 1 discriminator 4
	s32i.n	a8, a2, 0
	.loc 1 68 0 discriminator 4
	s32i.n	a8, a4, 0
	.loc 1 69 0 discriminator 4
	s32i.n	a3, a4, 4
	.loc 1 72 0 discriminator 4
	s32i.n	a9, a4, 8
	s32i.n	a4, a5, 0
	.loc 1 74 0 discriminator 4
	call8	vTaskExitCritical
.LVL23:
	.loc 1 75 0 discriminator 4
	movi.n	a5, 0
.L17:
	.loc 1 76 0
	mov.n	a2, a5
.LVL24:
	retw.n
.LFE18:
	.size	pthread_key_create, .-pthread_key_create
	.section	.text.pthread_key_delete,"ax",@progbits
	.literal_position
	.literal .LC9, s_keys_lock
	.literal .LC10, s_keys
	.align	4
	.global	pthread_key_delete
	.type	pthread_key_delete, @function
pthread_key_delete:
.LFB20:
	.loc 1 92 0
.LVL25:
	entry	sp, 32
.LCFI3:
	.loc 1 94 0
	l32r	a3, .LC9
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL26:
	.loc 1 100 0
	mov.n	a10, a2
	call8	find_key
.LVL27:
	.loc 1 101 0
	beqz.n	a10, .L23
	.loc 1 102 0
	l32r	a9, .LC10
	l32i.n	a8, a9, 0
	bne	a10, a8, .L30
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 8
	s32i.n	a8, a9, 0
	j	.L25
.LVL28:
.L27:
.LBB10:
	mov.n	a8, a9
.LVL29:
.L30:
	.loc 1 102 0 discriminator 3
	l32i.n	a9, a8, 8
	bne	a10, a9, .L27
	.loc 1 102 0 discriminator 6
	l32i.n	a9, a10, 8
	s32i.n	a9, a8, 8
.LVL30:
.L25:
.LBE10:
	.loc 1 103 0 is_stmt 1
	call8	free
.LVL31:
.L23:
	.loc 1 106 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL32:
	.loc 1 109 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LFE20:
	.size	pthread_key_delete, .-pthread_key_delete
	.section	.text.pthread_internal_local_storage_destructor_callback,"ax",@progbits
	.align	4
	.global	pthread_internal_local_storage_destructor_callback
	.type	pthread_internal_local_storage_destructor_callback, @function
pthread_internal_local_storage_destructor_callback:
.LFB22:
	.loc 1 170 0
	entry	sp, 32
.LCFI4:
	.loc 1 171 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pvTaskGetThreadLocalStoragePointer
.LVL34:
	.loc 1 172 0
	beqz.n	a10, .L32
	.loc 1 173 0
	mov.n	a11, a10
	movi.n	a10, 0
.LVL35:
	call8	pthread_local_storage_thread_deleted_callback
.LVL36:
	.loc 1 180 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a13
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL37:
.L32:
	retw.n
.LFE22:
	.size	pthread_internal_local_storage_destructor_callback, .-pthread_internal_local_storage_destructor_callback
	.section	.text.pthread_getspecific,"ax",@progbits
	.align	4
	.global	pthread_getspecific
	.type	pthread_getspecific, @function
pthread_getspecific:
.LFB24:
	.loc 1 200 0
.LVL38:
	entry	sp, 32
.LCFI5:
	.loc 1 201 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pvTaskGetThreadLocalStoragePointer
.LVL39:
	.loc 1 203 0
	mov.n	a8, a10
	.loc 1 202 0
	beqz.n	a10, .L43
.LVL40:
.LBB13:
.LBB14:
	.loc 1 191 0
	l32i.n	a8, a10, 0
.LVL41:
	j	.L39
.L41:
	.loc 1 192 0
	l32i.n	a9, a8, 0
	beq	a2, a9, .L40
	.loc 1 191 0
	l32i.n	a8, a8, 8
.LVL42:
.L39:
	bnez.n	a8, .L41
	j	.L43
.L40:
.LBE14:
.LBE13:
	.loc 1 208 0
	l32i.n	a8, a8, 4
.LVL43:
.L43:
	.loc 1 211 0
	mov.n	a2, a8
.LVL44:
	retw.n
.LFE24:
	.size	pthread_getspecific, .-pthread_getspecific
	.section	.text.pthread_setspecific,"ax",@progbits
	.literal_position
	.literal .LC11, pthread_local_storage_thread_deleted_callback
	.align	4
	.global	pthread_setspecific
	.type	pthread_setspecific, @function
pthread_setspecific:
.LFB25:
	.loc 1 214 0
.LVL45:
	entry	sp, 32
.LCFI6:
	.loc 1 215 0
	mov.n	a10, a2
	call8	find_key
.LVL46:
	.loc 1 217 0
	movi.n	a4, 2
	.loc 1 216 0
	beqz.n	a10, .L63
	.loc 1 220 0
	movi.n	a11, 0
	mov.n	a10, a11
.LVL47:
	call8	pvTaskGetThreadLocalStoragePointer
.LVL48:
	mov.n	a5, a10
.LVL49:
	.loc 1 221 0
	bnez.n	a10, .L46
	.loc 1 222 0
	movi.n	a11, 4
	movi.n	a10, 1
	call8	calloc
.LVL50:
	mov.n	a5, a10
.LVL51:
	.loc 1 223 0
	bnez.n	a10, .L47
.L55:
	.loc 1 224 0
	movi.n	a4, 0xc
	j	.L63
.L47:
	.loc 1 229 0
	movi.n	a11, 0
	l32r	a13, .LC11
	mov.n	a12, a10
	mov.n	a10, a11
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL52:
.L46:
.LBB18:
.LBB19:
	.loc 1 191 0
	l32i.n	a8, a5, 0
.LVL53:
	mov.n	a4, a8
	j	.L48
.LVL54:
.L50:
	.loc 1 192 0
	l32i.n	a9, a4, 0
	beq	a2, a9, .L49
	.loc 1 191 0
	l32i.n	a4, a4, 8
.LVL55:
.L48:
	bnez.n	a4, .L50
	j	.L67
.L57:
.LBE19:
.LBE18:
	.loc 1 241 0
	s32i.n	a3, a4, 4
	j	.L69
.L68:
	.loc 1 243 0
	bne	a8, a4, .L64
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32i.n	a2, a4, 8
.LVL56:
	s32i.n	a2, a5, 0
	j	.L53
.LVL57:
.L60:
.LBB20:
	mov.n	a8, a2
.LVL58:
.L64:
	.loc 1 243 0 discriminator 3
	l32i.n	a2, a8, 8
	bne	a2, a4, .L60
	.loc 1 243 0 discriminator 6
	l32i.n	a2, a4, 8
	s32i.n	a2, a8, 8
.LVL59:
.L53:
.LBE20:
	.loc 1 244 0 is_stmt 1
	mov.n	a10, a4
	call8	free
.LVL60:
.L69:
	.loc 1 256 0
	movi.n	a4, 0
.LVL61:
	j	.L63
.LVL62:
.L56:
	.loc 1 247 0
	movi.n	a10, 0xc
	call8	malloc
.LVL63:
	.loc 1 248 0
	beqz.n	a10, .L55
	.loc 1 251 0
	s32i.n	a2, a10, 0
	.loc 1 253 0
	l32i.n	a2, a5, 0
.LVL64:
	.loc 1 252 0
	s32i.n	a3, a10, 4
	.loc 1 253 0
	s32i.n	a2, a10, 8
	s32i.n	a10, a5, 0
	j	.L63
.LVL65:
.L67:
	.loc 1 246 0
	bnez.n	a3, .L56
	.loc 1 256 0
	mov.n	a4, a3
.LVL66:
	j	.L63
.LVL67:
.L49:
	.loc 1 238 0
	bnez.n	a3, .L57
	j	.L68
.LVL68:
.L63:
	.loc 1 257 0
	mov.n	a2, a4
	retw.n
.LFE25:
	.size	pthread_setspecific, .-pthread_setspecific
	.section	.rodata.__func__$5797,"a",@progbits
	.type	__func__$5797, @object
	.size	__func__$5797, 46
__func__$5797:
	.string	"pthread_local_storage_thread_deleted_callback"
	.section	.data.s_keys_lock,"aw",@progbits
	.align	4
	.type	s_keys_lock, @object
	.size	s_keys_lock, 8
s_keys_lock:
	.word	-1287651329
	.word	0
	.global	s_keys
	.section	.bss.s_keys,"aw",@nobits
	.align	4
	.type	s_keys, @object
	.size	s_keys, 4
s_keys:
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ce
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x4f
	.uleb128 0x7
	.4byte	0x9d
	.uleb128 0x8
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb4
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xdd
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8a
	.4byte	0xa3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x5
	.byte	0x8f
	.4byte	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x94
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.4byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x27
	.4byte	0x108
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0xc
	.byte	0x1
	.byte	0x24
	.4byte	0x139
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x25
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0xe8
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0xf3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.4byte	0x108
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1
	.byte	0x2b
	.4byte	0x163
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2b
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x33
	.4byte	0x178
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x33
	.4byte	0x1a9
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0xc
	.byte	0x1
	.byte	0x30
	.4byte	0x1a9
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x31
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x32
	.4byte	0x76
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x33
	.4byte	0x163
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x178
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x1
	.byte	0x34
	.4byte	0x178
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1
	.byte	0x37
	.4byte	0x1d3
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x37
	.4byte	0x1a9
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x1ba
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0x23c
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7b
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7b
	.4byte	0x76
	.uleb128 0x11
	.string	"tls"
	.byte	0x1
	.byte	0x7d
	.4byte	0x23c
	.uleb128 0x12
	.4byte	.LASF33
	.4byte	0x252
	.4byte	.LASF58
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x81
	.4byte	0x257
	.uleb128 0x14
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x86
	.4byte	0x25d
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8a
	.4byte	0x257
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x15
	.4byte	0x7f
	.4byte	0x252
	.uleb128 0x16
	.4byte	0x6f
	.byte	0x2d
	.byte	0
	.uleb128 0x17
	.4byte	0x242
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1af
	.uleb128 0x9
	.byte	0x4
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4e
	.4byte	0x25d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0x4e
	.4byte	0x86
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x51
	.4byte	0x25d
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x777
	.4byte	0x2ae
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x782
	.byte	0
	.uleb128 0x1e
	.4byte	0x1de
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3aa
	.uleb128 0x1f
	.4byte	0x1ea
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	0x1f5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	0x200
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5797
	.uleb128 0x22
	.4byte	0x218
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x360
	.uleb128 0x1f
	.4byte	0x1ea
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	0x1f5
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x25
	.4byte	0x200
	.uleb128 0x25
	.4byte	0x218
	.uleb128 0x21
	.4byte	0x20b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5797
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x78d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5797
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x399
	.uleb128 0x22
	.4byte	0x224
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	0x22f
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x263
	.uleb128 0x26
	.4byte	.LVL15
	.4byte	0x798
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x798
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42c
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0x3a
	.4byte	0x42c
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3a
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3c
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0x432
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x7a3
	.4byte	0x40e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x777
	.4byte	0x422
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x782
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x86
	.uleb128 0x9
	.byte	0x4
	.4byte	0x438
	.uleb128 0x17
	.4byte	0x13f
	.uleb128 0x27
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0x5b
	.4byte	0x86
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x64
	.4byte	0x25d
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x491
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0x66
	.4byte	0x139
	.4byte	.LLST12
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x777
	.4byte	0x4a5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x263
	.4byte	0x4b9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x798
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0x782
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x541
	.uleb128 0x2b
	.string	"tls"
	.byte	0x1
	.byte	0xab
	.4byte	0x76
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0x7ae
	.4byte	0x50f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x1de
	.4byte	0x522
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x7ba
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF61
	.byte	0x1
	.byte	0xbc
	.4byte	0x257
	.byte	0x1
	.4byte	0x573
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbc
	.4byte	0x573
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.byte	0xbc
	.4byte	0x86
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbe
	.4byte	0x257
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x579
	.uleb128 0x17
	.4byte	0x1d3
	.uleb128 0x27
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc7
	.4byte	0x76
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60e
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0xc7
	.4byte	0x86
	.4byte	.LLST14
	.uleb128 0x2e
	.string	"tls"
	.byte	0x1
	.byte	0xc9
	.4byte	0x23c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x29
	.4byte	.LASF34
	.byte	0x1
	.byte	0xce
	.4byte	0x257
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2f
	.4byte	0x541
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0xce
	.4byte	0x5f9
	.uleb128 0x1f
	.4byte	0x55c
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	0x551
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x22
	.4byte	0x567
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0x7ae
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd5
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x19
	.string	"key"
	.byte	0x1
	.byte	0xd5
	.4byte	0x86
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd5
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd7
	.4byte	0x25d
	.4byte	.LLST19
	.uleb128 0x2b
	.string	"tls"
	.byte	0x1
	.byte	0xdc
	.4byte	0x23c
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0xec
	.4byte	0x257
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	0x541
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xec
	.4byte	0x6a9
	.uleb128 0x1f
	.4byte	0x55c
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	0x551
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x22
	.4byte	0x567
	.4byte	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x6c6
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf3
	.4byte	0x1a9
	.4byte	.LLST25
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL46
	.4byte	0x263
	.4byte	0x6da
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0x7ae
	.4byte	0x6f2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL50
	.4byte	0x7c6
	.4byte	0x70a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL52
	.4byte	0x7ba
	.4byte	0x731
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_local_storage_thread_deleted_callback
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x798
	.4byte	0x745
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0x7a3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2d
	.4byte	0xdd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.uleb128 0x30
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2b
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys
	.uleb128 0x31
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0xda
	.uleb128 0x31
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0xd9
	.uleb128 0x31
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x29
	.uleb128 0x31
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x65
	.uleb128 0x32
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x590
	.uleb128 0x32
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x5b0
	.uleb128 0x31
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.byte	0x57
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL52
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL59
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"uint32_t"
.LASF36:
	.string	"result"
.LASF53:
	.string	"vTaskSetThreadLocalStoragePointerAndDelCallback"
.LASF47:
	.string	"vTaskEnterCritical"
.LASF51:
	.string	"malloc"
.LASF8:
	.string	"sizetype"
.LASF58:
	.string	"pthread_local_storage_thread_deleted_callback"
.LASF11:
	.string	"__uint32_t"
.LASF18:
	.string	"pthread_destructor_t"
.LASF59:
	.string	"find_key"
.LASF43:
	.string	"pthread_getspecific"
.LASF27:
	.string	"value"
.LASF38:
	.string	"head"
.LASF31:
	.string	"index"
.LASF32:
	.string	"v_tls"
.LASF24:
	.string	"key_list_t"
.LASF40:
	.string	"pthread_key_delete"
.LASF50:
	.string	"free"
.LASF41:
	.string	"curelm"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"long long int"
.LASF20:
	.string	"destructor"
.LASF28:
	.string	"value_entry_t"
.LASF7:
	.string	"long int"
.LASF37:
	.string	"new_key"
.LASF26:
	.string	"value_entry_t_"
.LASF48:
	.string	"vTaskExitCritical"
.LASF34:
	.string	"entry"
.LASF3:
	.string	"unsigned char"
.LASF57:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/pthread"
.LASF30:
	.string	"values_list_t"
.LASF23:
	.string	"key_entry_t_"
.LASF33:
	.string	"__func__"
.LASF15:
	.string	"owner"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF44:
	.string	"pthread_setspecific"
.LASF17:
	.string	"portMUX_TYPE"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"key_entry"
.LASF25:
	.string	"slh_first"
.LASF1:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF29:
	.string	"values_list_t_"
.LASF62:
	.string	"s_keys"
.LASF56:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/pthread/pthread_local_storage.c"
.LASF42:
	.string	"list"
.LASF54:
	.string	"calloc"
.LASF61:
	.string	"find_value"
.LASF14:
	.string	"_Bool"
.LASF9:
	.string	"long unsigned int"
.LASF60:
	.string	"pthread_internal_local_storage_destructor_callback"
.LASF19:
	.string	"sle_next"
.LASF12:
	.string	"pthread_key_t"
.LASF16:
	.string	"count"
.LASF46:
	.string	"s_keys_lock"
.LASF49:
	.string	"__assert_func"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF52:
	.string	"pvTaskGetThreadLocalStoragePointer"
.LASF22:
	.string	"key_entry_t"
.LASF21:
	.string	"next"
.LASF35:
	.string	"next_entry"
.LASF39:
	.string	"pthread_key_create"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
