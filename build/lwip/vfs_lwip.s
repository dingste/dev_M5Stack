	.file	"vfs_lwip.c"
	.text
.Ltext0:
	.section	.text.lwip_get_socket_select_semaphore,"ax",@progbits
	.align	4
	.type	lwip_get_socket_select_semaphore, @function
lwip_get_socket_select_semaphore:
.LFB47:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
	.loc 1 44 0
	entry	sp, 32
.LCFI0:
	.loc 1 48 0
	call8	sys_thread_sem_get
.LVL0:
	.loc 1 49 0
	mov.n	a2, a10
	retw.n
.LFE47:
	.size	lwip_get_socket_select_semaphore, .-lwip_get_socket_select_semaphore
	.section	.text.lwip_stop_socket_select_isr,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select_isr, @function
lwip_stop_socket_select_isr:
.LFB46:
	.loc 1 37 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	call8	sys_thread_sem_get
.LVL2:
	call8	sys_sem_signal_isr
.LVL3:
	beqz.n	a2, .L2
	beqz.n	a10, .L2
	.loc 1 39 0
	movi.n	a8, 1
	s32i.n	a8, a2, 0
.L2:
	retw.n
.LFE46:
	.size	lwip_stop_socket_select_isr, .-lwip_stop_socket_select_isr
	.section	.text.lwip_stop_socket_select,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select, @function
lwip_stop_socket_select:
.LFB45:
	.loc 1 32 0
	entry	sp, 32
.LCFI2:
	.loc 1 33 0
	call8	sys_thread_sem_get
.LVL4:
	call8	sys_sem_signal
.LVL5:
	retw.n
.LFE45:
	.size	lwip_stop_socket_select, .-lwip_stop_socket_select
	.section	.text.lwip_ioctl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_ioctl_r_wrapper, @function
lwip_ioctl_r_wrapper:
.LFB49:
	.loc 1 57 0
.LVL6:
	entry	sp, 48
.LCFI3:
.LVL7:
	.loc 1 57 0
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	s32i.n	a6, sp, 8
	.loc 1 58 0
	addi.n	a8, a6, 4
.LVL8:
	movi.n	a9, 0x18
	.loc 1 57 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 58 0
	blt	a9, a8, .L12
	.loc 1 58 0 is_stmt 0 discriminator 2
	mov.n	a9, a5
	j	.L13
.L12:
	.loc 1 58 0 discriminator 1
	blt	a9, a6, .L14
	.loc 1 58 0
	movi.n	a8, 0x24
.LVL9:
.L14:
	.loc 1 58 0 discriminator 6
	l32i.n	a9, sp, 0
.L13:
	.loc 1 58 0 discriminator 7
	add.n	a8, a9, a8
.LVL10:
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_ioctl_r
.LVL11:
	.loc 1 59 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE49:
	.size	lwip_ioctl_r_wrapper, .-lwip_ioctl_r_wrapper
	.section	.text.lwip_fcntl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_fcntl_r_wrapper, @function
lwip_fcntl_r_wrapper:
.LFB48:
	.loc 1 52 0
.LVL13:
	entry	sp, 48
.LCFI4:
.LVL14:
	.loc 1 52 0
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	s32i.n	a6, sp, 8
	.loc 1 53 0
	addi.n	a8, a6, 4
.LVL15:
	movi.n	a9, 0x18
	.loc 1 52 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 53 0
	blt	a9, a8, .L16
	.loc 1 53 0 is_stmt 0 discriminator 2
	mov.n	a9, a5
	j	.L17
.L16:
	.loc 1 53 0 discriminator 1
	blt	a9, a6, .L18
	.loc 1 53 0
	movi.n	a8, 0x24
.LVL16:
.L18:
	.loc 1 53 0 discriminator 6
	l32i.n	a9, sp, 0
.L17:
	.loc 1 53 0 discriminator 7
	add.n	a8, a9, a8
.LVL17:
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_fcntl_r
.LVL18:
	.loc 1 54 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE48:
	.size	lwip_fcntl_r_wrapper, .-lwip_fcntl_r_wrapper
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"esp_vfs_register_fd_range(&vfs, NULL, LWIP_SOCKET_OFFSET, MAX_FDS)"
.LC12:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
	.section	.text.esp_vfs_lwip_sockets_register,"ax",@progbits
	.literal_position
	.literal .LC0, lwip_write_r
	.literal .LC1, lwip_read_r
	.literal .LC2, lwip_close_r
	.literal .LC3, lwip_fcntl_r_wrapper
	.literal .LC4, lwip_ioctl_r_wrapper
	.literal .LC5, lwip_select
	.literal .LC6, lwip_stop_socket_select
	.literal .LC7, lwip_stop_socket_select_isr
	.literal .LC8, lwip_get_socket_select_semaphore
	.literal .LC10, .LC9
	.literal .LC11, __func__$7300
	.literal .LC13, .LC12
	.align	4
	.global	esp_vfs_lwip_sockets_register
	.type	esp_vfs_lwip_sockets_register, @function
esp_vfs_lwip_sockets_register:
.LFB50:
	.loc 1 62 0
	entry	sp, 192
.LCFI5:
	.loc 1 63 0
	movi	a12, 0x98
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL20:
	l32r	a8, .LC0
.LBB2:
	.loc 1 82 0
	movi.n	a13, 0x40
.LBE2:
	.loc 1 63 0
	s32i.n	a8, sp, 4
	l32r	a8, .LC1
.LBB3:
	.loc 1 82 0
	movi.n	a12, 0x36
.LBE3:
	.loc 1 63 0
	s32i.n	a8, sp, 12
	l32r	a8, .LC2
.LBB4:
	.loc 1 82 0
	movi.n	a11, 0
.LBE4:
	.loc 1 63 0
	s32i.n	a8, sp, 20
	l32r	a8, .LC3
.LBB5:
	.loc 1 82 0
	mov.n	a10, sp
.LBE5:
	.loc 1 63 0
	s32i	a8, sp, 76
	l32r	a8, .LC4
	s32i	a8, sp, 80
	l32r	a8, .LC5
	s32i	a8, sp, 132
	l32r	a8, .LC6
	s32i	a8, sp, 136
	l32r	a8, .LC7
	s32i	a8, sp, 140
	l32r	a8, .LC8
	s32i	a8, sp, 144
.LBB6:
	.loc 1 82 0
	call8	esp_vfs_register_fd_range
.LVL21:
	.loc 1 82 0
	beqz.n	a10, .L19
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a14, .LC10
	l32r	a13, .LC11
	l32r	a11, .LC13
	movi.n	a12, 0x52
	call8	_esp_error_check_failed
.LVL22:
.L19:
	retw.n
.LBE6:
.LFE50:
	.size	esp_vfs_lwip_sockets_register, .-esp_vfs_lwip_sockets_register
	.section	.rodata.__func__$7300,"a",@progbits
	.type	__func__$7300, @object
	.size	__func__$7300, 30
__func__$7300:
	.string	"esp_vfs_lwip_sockets_register"
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
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI2-.LFB45
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI4-.LFB48
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI5-.LFB50
	.byte	0xe
	.uleb128 0xc0
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/stat.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/time.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/sys/utime.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/platform_include/sys/termios.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/vfs/include/sys/dirent.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/vfs/include/esp_vfs.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11cc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0xc
	.4byte	.LASF175
	.4byte	.LASF176
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x10
	.4byte	0x9f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x14
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.4byte	0xe2
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x28
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x62
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x7a
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xb8
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xb9
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0xba
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0xbb
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0xc1
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0xcb
	.4byte	0xc7
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0xd9
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0xde
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0xf4
	.4byte	0x9f
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7
	.byte	0xfc
	.4byte	0x1cd
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0xfd
	.4byte	0x1cd
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1a9
	.4byte	0x1dd
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0xfe
	.4byte	0x1b4
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x11d
	.4byte	0x9f
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x3c
	.byte	0x8
	.byte	0x1a
	.4byte	0x2cd
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x1c
	.4byte	0x15c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1d
	.4byte	0x146
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x1e
	.4byte	0x193
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x1f
	.4byte	0x19e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x20
	.4byte	0x167
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x21
	.4byte	0x172
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x22
	.4byte	0x15c
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x23
	.4byte	0x151
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x31
	.4byte	0x13b
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x32
	.4byte	0x9f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x33
	.4byte	0x13b
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x34
	.4byte	0x9f
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x35
	.4byte	0x13b
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x36
	.4byte	0x9f
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x37
	.4byte	0x9f
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.byte	0x38
	.4byte	0x9f
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0x39
	.4byte	0x2cd
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x2dd
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x9
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x8
	.byte	0xa
	.byte	0x11
	.4byte	0x32e
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x12
	.4byte	0x13b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x13
	.4byte	0x1e8
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x8
	.byte	0xb
	.byte	0x18
	.4byte	0x353
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0x19
	.4byte	0x13b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0x1a
	.4byte	0x13b
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x359
	.uleb128 0xd
	.uleb128 0xe
	.4byte	0x361
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0x18
	.4byte	0x2f3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF70
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xd
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xe
	.byte	0x58
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xf
	.byte	0x4f
	.4byte	0x37e
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x10
	.byte	0xab
	.4byte	0x2dd
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x10
	.byte	0xac
	.4byte	0x2fe
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x10
	.byte	0xad
	.4byte	0x2e8
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x1c
	.byte	0x10
	.byte	0xaf
	.4byte	0x416
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x10
	.byte	0xb1
	.4byte	0x3aa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x10
	.byte	0xb2
	.4byte	0x3aa
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x10
	.byte	0xb3
	.4byte	0x3aa
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x10
	.byte	0xb4
	.4byte	0x3aa
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x10
	.byte	0xb5
	.4byte	0x416
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x10
	.byte	0xb6
	.4byte	0x39f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x10
	.byte	0xb7
	.4byte	0x39f
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x394
	.4byte	0x426
	.uleb128 0xb
	.4byte	0xd2
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x11
	.byte	0x1e
	.4byte	0x447
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x11
	.byte	0x1f
	.4byte	0x2e8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x11
	.byte	0x20
	.4byte	0x2e8
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"DIR"
	.byte	0x11
	.byte	0x22
	.4byte	0x426
	.uleb128 0x12
	.4byte	.LASF87
	.2byte	0x108
	.byte	0x11
	.byte	0x27
	.4byte	0x484
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x11
	.byte	0x28
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x11
	.byte	0x29
	.4byte	0x2dd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x11
	.byte	0x2d
	.4byte	0x484
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xe2
	.4byte	0x494
	.uleb128 0xb
	.4byte	0xd2
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x5d
	.4byte	0x4b3
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x12
	.byte	0x5e
	.4byte	0x4d1
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x12
	.byte	0x5f
	.4byte	0x4f0
	.byte	0
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x4d1
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x353
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b3
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x4f0
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x353
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d7
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x61
	.4byte	0x515
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x12
	.byte	0x62
	.4byte	0x533
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x12
	.byte	0x63
	.4byte	0x552
	.byte	0
	.uleb128 0x15
	.4byte	0x151
	.4byte	0x533
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x151
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x515
	.uleb128 0x15
	.4byte	0x151
	.4byte	0x552
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x151
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x539
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x65
	.4byte	0x577
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x12
	.byte	0x66
	.4byte	0x595
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x12
	.byte	0x67
	.4byte	0x5b4
	.byte	0
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x595
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x577
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x5b4
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59b
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x69
	.4byte	0x5d9
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x12
	.byte	0x6a
	.4byte	0x5f7
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x12
	.byte	0x6b
	.4byte	0x616
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5f7
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d9
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x616
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x6d
	.4byte	0x63b
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x12
	.byte	0x6e
	.4byte	0x64f
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x12
	.byte	0x6f
	.4byte	0x664
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x64f
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63b
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x664
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x655
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x71
	.4byte	0x689
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x12
	.byte	0x72
	.4byte	0x6a8
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x12
	.byte	0x73
	.4byte	0x6c2
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6a2
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x6a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x689
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6c2
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x6a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ae
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x75
	.4byte	0x6e7
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x12
	.byte	0x76
	.4byte	0x700
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x12
	.byte	0x77
	.4byte	0x71a
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x700
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x6a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e7
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x71a
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x6a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x706
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x79
	.4byte	0x73f
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x12
	.byte	0x7a
	.4byte	0x758
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x12
	.byte	0x7b
	.4byte	0x772
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x758
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x772
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75e
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x7d
	.4byte	0x797
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x12
	.byte	0x7e
	.4byte	0x7ab
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x12
	.byte	0x7f
	.4byte	0x7c0
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x7ab
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x797
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x7c0
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7b1
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x81
	.4byte	0x7e5
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x12
	.byte	0x82
	.4byte	0x758
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x12
	.byte	0x83
	.4byte	0x772
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x85
	.4byte	0x804
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x12
	.byte	0x86
	.4byte	0x81e
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x12
	.byte	0x87
	.4byte	0x833
	.byte	0
	.uleb128 0x15
	.4byte	0x818
	.4byte	0x818
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x447
	.uleb128 0x6
	.byte	0x4
	.4byte	0x804
	.uleb128 0x15
	.4byte	0x818
	.4byte	0x833
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x824
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x89
	.4byte	0x858
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x12
	.byte	0x8a
	.4byte	0x872
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x12
	.byte	0x8b
	.4byte	0x887
	.byte	0
	.uleb128 0x15
	.4byte	0x86c
	.4byte	0x86c
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x452
	.uleb128 0x6
	.byte	0x4
	.4byte	0x858
	.uleb128 0x15
	.4byte	0x86c
	.4byte	0x887
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x878
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x8d
	.4byte	0x8ac
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x12
	.byte	0x8e
	.4byte	0x8d0
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x12
	.byte	0x8f
	.4byte	0x8ef
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x8ca
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x818
	.uleb128 0x16
	.4byte	0x86c
	.uleb128 0x16
	.4byte	0x8ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ac
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x8ef
	.uleb128 0x16
	.4byte	0x818
	.uleb128 0x16
	.4byte	0x86c
	.uleb128 0x16
	.4byte	0x8ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d6
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x91
	.4byte	0x914
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x12
	.byte	0x92
	.4byte	0x928
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x12
	.byte	0x93
	.4byte	0x93d
	.byte	0
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x928
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x914
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x93d
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92e
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x95
	.4byte	0x962
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x12
	.byte	0x96
	.4byte	0x977
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x12
	.byte	0x97
	.4byte	0x98d
	.byte	0
	.uleb128 0x17
	.4byte	0x977
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x818
	.uleb128 0x16
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x962
	.uleb128 0x17
	.4byte	0x98d
	.uleb128 0x16
	.4byte	0x818
	.uleb128 0x16
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97d
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x99
	.4byte	0x9b2
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x12
	.byte	0x9a
	.4byte	0x9c6
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x12
	.byte	0x9b
	.4byte	0x9db
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9c6
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b2
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9db
	.uleb128 0x16
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9cc
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0x9d
	.4byte	0xa00
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x12
	.byte	0x9e
	.4byte	0xa19
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x12
	.byte	0x9f
	.4byte	0xa33
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa19
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x193
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa00
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa33
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x193
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa1f
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xa1
	.4byte	0xa58
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x12
	.byte	0xa2
	.4byte	0x7ab
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x12
	.byte	0xa3
	.4byte	0x7c0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xa5
	.4byte	0xa77
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x12
	.byte	0xa6
	.4byte	0xa95
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x12
	.byte	0xa7
	.4byte	0xab4
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa95
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa77
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xab4
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9b
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xa9
	.4byte	0xad9
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x12
	.byte	0xaa
	.4byte	0xa95
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x12
	.byte	0xab
	.4byte	0xab4
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xad
	.4byte	0xaf8
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x12
	.byte	0xae
	.4byte	0x64f
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x12
	.byte	0xaf
	.4byte	0x664
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xb1
	.4byte	0xb17
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x12
	.byte	0xb2
	.4byte	0xb30
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x12
	.byte	0xb3
	.4byte	0xb4a
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb30
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb17
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb4a
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb36
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xb5
	.4byte	0xb6f
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x12
	.byte	0xb6
	.4byte	0xb88
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x12
	.byte	0xb7
	.4byte	0xba2
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb88
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x151
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xba2
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x151
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8e
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xb9
	.4byte	0xbc7
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x12
	.byte	0xba
	.4byte	0xbeb
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x12
	.byte	0xbb
	.4byte	0xc05
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xbe0
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xbe0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe6
	.uleb128 0x7
	.4byte	0x32e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc7
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc05
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xbe0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf1
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xbe
	.4byte	0xc2a
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x12
	.byte	0xbf
	.4byte	0xc53
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x12
	.byte	0xc0
	.4byte	0xc72
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc48
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xc48
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4e
	.uleb128 0x7
	.4byte	0x3b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2a
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc72
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xc48
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc59
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xc2
	.4byte	0xc97
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0x12
	.byte	0xc3
	.4byte	0xcb6
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x12
	.byte	0xc4
	.4byte	0xcd0
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xcb0
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xcb0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc97
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xcd0
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xcb0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcbc
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xc6
	.4byte	0xcf5
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x12
	.byte	0xc7
	.4byte	0x64f
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x12
	.byte	0xc8
	.4byte	0x664
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xca
	.4byte	0xd14
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x12
	.byte	0xcb
	.4byte	0xd2d
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x12
	.byte	0xcc
	.4byte	0xd47
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xd2d
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd14
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xd47
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd33
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xce
	.4byte	0xd6c
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0x12
	.byte	0xcf
	.4byte	0xd2d
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x12
	.byte	0xd0
	.4byte	0xd47
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xd2
	.4byte	0xd8b
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x12
	.byte	0xd3
	.4byte	0xd9f
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x12
	.byte	0xd4
	.4byte	0xdb4
	.byte	0
	.uleb128 0x15
	.4byte	0x17d
	.4byte	0xd9f
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8b
	.uleb128 0x15
	.4byte	0x17d
	.4byte	0xdb4
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda5
	.uleb128 0x13
	.byte	0x4
	.byte	0x12
	.byte	0xd6
	.4byte	0xdd9
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x12
	.byte	0xd7
	.4byte	0xd2d
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0x12
	.byte	0xd8
	.4byte	0xd47
	.byte	0
	.uleb128 0x10
	.byte	0x98
	.byte	0x12
	.byte	0x5a
	.4byte	0xef0
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x12
	.byte	0x5c
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	0x494
	.byte	0x4
	.uleb128 0x18
	.4byte	0x4f6
	.byte	0x8
	.uleb128 0x18
	.4byte	0x558
	.byte	0xc
	.uleb128 0x18
	.4byte	0x5ba
	.byte	0x10
	.uleb128 0x18
	.4byte	0x61c
	.byte	0x14
	.uleb128 0x18
	.4byte	0x66a
	.byte	0x18
	.uleb128 0x18
	.4byte	0x6c8
	.byte	0x1c
	.uleb128 0x18
	.4byte	0x720
	.byte	0x20
	.uleb128 0x18
	.4byte	0x778
	.byte	0x24
	.uleb128 0x18
	.4byte	0x7c6
	.byte	0x28
	.uleb128 0x18
	.4byte	0x7e5
	.byte	0x2c
	.uleb128 0x18
	.4byte	0x839
	.byte	0x30
	.uleb128 0x18
	.4byte	0x88d
	.byte	0x34
	.uleb128 0x18
	.4byte	0x8f5
	.byte	0x38
	.uleb128 0x18
	.4byte	0x943
	.byte	0x3c
	.uleb128 0x18
	.4byte	0x993
	.byte	0x40
	.uleb128 0x18
	.4byte	0x9e1
	.byte	0x44
	.uleb128 0x18
	.4byte	0xa39
	.byte	0x48
	.uleb128 0x18
	.4byte	0xa58
	.byte	0x4c
	.uleb128 0x18
	.4byte	0xaba
	.byte	0x50
	.uleb128 0x18
	.4byte	0xad9
	.byte	0x54
	.uleb128 0x18
	.4byte	0xaf8
	.byte	0x58
	.uleb128 0x18
	.4byte	0xb50
	.byte	0x5c
	.uleb128 0x18
	.4byte	0xba8
	.byte	0x60
	.uleb128 0x18
	.4byte	0xc0b
	.byte	0x64
	.uleb128 0x18
	.4byte	0xc78
	.byte	0x68
	.uleb128 0x18
	.4byte	0xcd6
	.byte	0x6c
	.uleb128 0x18
	.4byte	0xcf5
	.byte	0x70
	.uleb128 0x18
	.4byte	0xd4d
	.byte	0x74
	.uleb128 0x18
	.4byte	0xd6c
	.byte	0x78
	.uleb128 0x18
	.4byte	0xdba
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x12
	.byte	0xdd
	.4byte	0xf1f
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x12
	.byte	0xdf
	.4byte	0xf4e
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x12
	.byte	0xe1
	.4byte	0xf54
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x12
	.byte	0xe3
	.4byte	0xf6b
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x12
	.byte	0xe5
	.4byte	0xf7c
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x12
	.byte	0xe7
	.4byte	0xf54
	.byte	0x94
	.byte	0
	.uleb128 0x15
	.4byte	0x361
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf19
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x389
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xf48
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf13
	.uleb128 0x16
	.4byte	0xf48
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x309
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x35a
	.uleb128 0x17
	.4byte	0xf65
	.uleb128 0x16
	.4byte	0xf65
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x373
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf5a
	.uleb128 0x19
	.4byte	0xd9
	.4byte	0xf7c
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf71
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x12
	.byte	0xe8
	.4byte	0xdd9
	.uleb128 0x1a
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2b
	.4byte	0xd9
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb0
	.uleb128 0x1b
	.4byte	.LVL0
	.4byte	0x1176
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.byte	0x24
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe5
	.uleb128 0x1d
	.4byte	.LASF162
	.byte	0x1
	.byte	0x24
	.4byte	0xf65
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0x1176
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x1181
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF177
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100d
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0x1176
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x118c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105a
	.uleb128 0x20
	.string	"fd"
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x21
	.string	"cmd"
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x38
	.4byte	0x130
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x1197
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a7
	.uleb128 0x20
	.string	"fd"
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x21
	.string	"cmd"
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x33
	.4byte	0x130
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0x11a3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.byte	0x3d
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1161
	.uleb128 0x24
	.string	"vfs"
	.byte	0x1
	.byte	0x3f
	.4byte	0xf82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.4byte	.LASF179
	.4byte	0x1171
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7300
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1144
	.uleb128 0x27
	.4byte	.LASF166
	.byte	0x1
	.byte	0x52
	.4byte	0x361
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0x11af
	.4byte	0x1118
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL22
	.4byte	0x11bb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7300
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL20
	.4byte	0x11c6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xe2
	.4byte	0x1171
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0x1161
	.uleb128 0x2b
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x13
	.byte	0x5b
	.uleb128 0x2b
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x14
	.byte	0xbb
	.uleb128 0x2b
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x14
	.byte	0xb5
	.uleb128 0x2c
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x15
	.2byte	0x22d
	.uleb128 0x2c
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x15
	.2byte	0x22e
	.uleb128 0x2c
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x12
	.2byte	0x110
	.uleb128 0x2b
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xc
	.byte	0x4f
	.uleb128 0x2d
	.4byte	.LASF180
	.4byte	.LASF180
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x17
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF67:
	.string	"actime"
.LASF115:
	.string	"readdir_r"
.LASF16:
	.string	"__gid_t"
.LASF110:
	.string	"opendir_p"
.LASF153:
	.string	"start_select"
.LASF3:
	.string	"size_t"
.LASF106:
	.string	"unlink_p"
.LASF100:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF33:
	.string	"ssize_t"
.LASF25:
	.string	"va_list"
.LASF137:
	.string	"utime"
.LASF11:
	.string	"long long unsigned int"
.LASF124:
	.string	"rmdir_p"
.LASF83:
	.string	"c_ispeed"
.LASF72:
	.string	"QueueHandle_t"
.LASF114:
	.string	"readdir_r_p"
.LASF77:
	.string	"termios"
.LASF126:
	.string	"fcntl_p"
.LASF41:
	.string	"stat"
.LASF123:
	.string	"mkdir"
.LASF149:
	.string	"tcgetsid"
.LASF2:
	.string	"signed char"
.LASF44:
	.string	"st_mode"
.LASF158:
	.string	"end_select"
.LASF43:
	.string	"st_ino"
.LASF93:
	.string	"lseek_p"
.LASF85:
	.string	"dd_vfs_idx"
.LASF170:
	.string	"lwip_ioctl_r"
.LASF166:
	.string	"__err_rc"
.LASF154:
	.string	"socket_select"
.LASF13:
	.string	"long int"
.LASF150:
	.string	"tcsendbreak_p"
.LASF86:
	.string	"dd_rsv"
.LASF79:
	.string	"c_oflag"
.LASF117:
	.string	"telldir"
.LASF10:
	.string	"long long int"
.LASF73:
	.string	"SemaphoreHandle_t"
.LASF60:
	.string	"uint16_t"
.LASF71:
	.string	"BaseType_t"
.LASF109:
	.string	"rename"
.LASF138:
	.string	"tcsetattr_p"
.LASF90:
	.string	"d_name"
.LASF35:
	.string	"nlink_t"
.LASF28:
	.string	"off_t"
.LASF31:
	.string	"gid_t"
.LASF9:
	.string	"__uint32_t"
.LASF63:
	.string	"timeval"
.LASF156:
	.string	"stop_socket_select_isr"
.LASF40:
	.string	"suseconds_t"
.LASF57:
	.string	"st_blocks"
.LASF46:
	.string	"st_uid"
.LASF51:
	.string	"st_spare1"
.LASF135:
	.string	"truncate"
.LASF95:
	.string	"read_p"
.LASF58:
	.string	"st_spare4"
.LASF173:
	.string	"_esp_error_check_failed"
.LASF23:
	.string	"__va_reg"
.LASF81:
	.string	"c_lflag"
.LASF155:
	.string	"stop_socket_select"
.LASF19:
	.string	"long unsigned int"
.LASF66:
	.string	"utimbuf"
.LASF174:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"uid_t"
.LASF121:
	.string	"closedir"
.LASF1:
	.string	"short unsigned int"
.LASF151:
	.string	"tcsendbreak"
.LASF94:
	.string	"lseek"
.LASF76:
	.string	"tcflag_t"
.LASF74:
	.string	"cc_t"
.LASF141:
	.string	"tcgetattr"
.LASF133:
	.string	"access"
.LASF147:
	.string	"tcflow"
.LASF128:
	.string	"ioctl_p"
.LASF50:
	.string	"st_atime"
.LASF157:
	.string	"get_socket_select_semaphore"
.LASF78:
	.string	"c_iflag"
.LASF84:
	.string	"c_ospeed"
.LASF8:
	.string	"__int32_t"
.LASF113:
	.string	"readdir"
.LASF177:
	.string	"lwip_stop_socket_select"
.LASF122:
	.string	"mkdir_p"
.LASF49:
	.string	"st_size"
.LASF180:
	.string	"memset"
.LASF92:
	.string	"write"
.LASF145:
	.string	"tcflush"
.LASF162:
	.string	"woken"
.LASF107:
	.string	"unlink"
.LASF18:
	.string	"sizetype"
.LASF97:
	.string	"open_p"
.LASF36:
	.string	"fd_mask"
.LASF98:
	.string	"open"
.LASF14:
	.string	"__dev_t"
.LASF64:
	.string	"tv_sec"
.LASF21:
	.string	"__gnuc_va_list"
.LASF87:
	.string	"dirent"
.LASF142:
	.string	"tcdrain_p"
.LASF88:
	.string	"d_ino"
.LASF12:
	.string	"_off_t"
.LASF29:
	.string	"dev_t"
.LASF26:
	.string	"time_t"
.LASF101:
	.string	"fstat_p"
.LASF99:
	.string	"close_p"
.LASF38:
	.string	"_types_fd_set"
.LASF178:
	.string	"esp_vfs_lwip_sockets_register"
.LASF168:
	.string	"sys_sem_signal_isr"
.LASF75:
	.string	"speed_t"
.LASF120:
	.string	"closedir_p"
.LASF82:
	.string	"c_cc"
.LASF131:
	.string	"fsync"
.LASF111:
	.string	"opendir"
.LASF45:
	.string	"st_nlink"
.LASF70:
	.string	"_Bool"
.LASF61:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF148:
	.string	"tcgetsid_p"
.LASF91:
	.string	"write_p"
.LASF89:
	.string	"d_type"
.LASF134:
	.string	"truncate_p"
.LASF39:
	.string	"fds_bits"
.LASF118:
	.string	"seekdir_p"
.LASF6:
	.string	"short int"
.LASF80:
	.string	"c_cflag"
.LASF56:
	.string	"st_blksize"
.LASF132:
	.string	"access_p"
.LASF22:
	.string	"__va_stk"
.LASF179:
	.string	"__func__"
.LASF54:
	.string	"st_ctime"
.LASF159:
	.string	"esp_vfs_t"
.LASF108:
	.string	"rename_p"
.LASF169:
	.string	"sys_sem_signal"
.LASF62:
	.string	"uint32_t"
.LASF167:
	.string	"sys_thread_sem_get"
.LASF48:
	.string	"st_rdev"
.LASF144:
	.string	"tcflush_p"
.LASF53:
	.string	"st_spare2"
.LASF55:
	.string	"st_spare3"
.LASF20:
	.string	"char"
.LASF161:
	.string	"lwip_stop_socket_select_isr"
.LASF0:
	.string	"unsigned int"
.LASF119:
	.string	"seekdir"
.LASF7:
	.string	"__uint16_t"
.LASF32:
	.string	"pid_t"
.LASF176:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF68:
	.string	"modtime"
.LASF59:
	.string	"uint8_t"
.LASF130:
	.string	"fsync_p"
.LASF104:
	.string	"link_p"
.LASF129:
	.string	"ioctl"
.LASF15:
	.string	"__uid_t"
.LASF175:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
.LASF105:
	.string	"link"
.LASF165:
	.string	"lwip_fcntl_r_wrapper"
.LASF47:
	.string	"st_gid"
.LASF116:
	.string	"telldir_p"
.LASF65:
	.string	"tv_usec"
.LASF171:
	.string	"lwip_fcntl_r"
.LASF127:
	.string	"fcntl"
.LASF143:
	.string	"tcdrain"
.LASF69:
	.string	"esp_err_t"
.LASF125:
	.string	"rmdir"
.LASF34:
	.string	"mode_t"
.LASF42:
	.string	"st_dev"
.LASF164:
	.string	"lwip_ioctl_r_wrapper"
.LASF17:
	.string	"_ssize_t"
.LASF152:
	.string	"flags"
.LASF102:
	.string	"fstat"
.LASF96:
	.string	"read"
.LASF172:
	.string	"esp_vfs_register_fd_range"
.LASF136:
	.string	"utime_p"
.LASF139:
	.string	"tcsetattr"
.LASF140:
	.string	"tcgetattr_p"
.LASF24:
	.string	"__va_ndx"
.LASF146:
	.string	"tcflow_p"
.LASF163:
	.string	"args"
.LASF160:
	.string	"lwip_get_socket_select_semaphore"
.LASF103:
	.string	"stat_p"
.LASF52:
	.string	"st_mtime"
.LASF37:
	.string	"__va_list_tag"
.LASF27:
	.string	"ino_t"
.LASF112:
	.string	"readdir_p"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
