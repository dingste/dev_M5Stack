	.file	"nghttp2_pq.c"
	.text
.Ltext0:
	.section	.text.bubble_down,"ax",@progbits
	.align	4
	.type	bubble_down, @function
bubble_down:
.LFB6:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_pq.c"
	.loc 1 98 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.L6:
	.loc 1 101 0
	slli	a4, a3, 1
	addi.n	a5, a4, 1
.LVL2:
	addi.n	a6, a4, 3
	slli	a7, a5, 2
	mov.n	a4, a3
.LVL3:
.L4:
	.loc 1 104 0
	l32i.n	a8, a2, 8
	bgeu	a5, a8, .L2
	.loc 1 107 0
	l32i.n	a8, a2, 0
	l32i.n	a9, a2, 16
	addx4	a10, a4, a8
	add.n	a8, a8, a7
	l32i.n	a11, a10, 0
	l32i.n	a10, a8, 0
	addi.n	a7, a7, 4
	callx8	a9
.LVL4:
	movnez	a4, a5, a10
.LVL5:
	.loc 1 103 0
	addi.n	a5, a5, 1
.LVL6:
	bne	a5, a6, .L4
.LVL7:
.L2:
	.loc 1 111 0
	beq	a3, a4, .L1
.LVL8:
.LBB4:
.LBB5:
	.loc 1 47 0
	l32i.n	a8, a2, 0
	.loc 1 48 0
	slli	a5, a4, 2
.LVL9:
	.loc 1 47 0
	addx4	a9, a3, a8
	.loc 1 48 0
	add.n	a8, a8, a5
	l32i.n	a7, a8, 0
	.loc 1 47 0
	l32i.n	a6, a9, 0
.LVL10:
	.loc 1 50 0
	s32i.n	a7, a9, 0
	.loc 1 51 0
	s32i.n	a3, a7, 0
	.loc 1 52 0
	l32i.n	a3, a2, 0
.LVL11:
	add.n	a5, a3, a5
	s32i.n	a6, a5, 0
	.loc 1 53 0
	s32i.n	a4, a6, 0
.LVL12:
	mov.n	a3, a4
	j	.L6
.LVL13:
.L1:
	retw.n
.LBE5:
.LBE4:
.LFE6:
	.size	bubble_down, .-bubble_down
	.section	.text.bubble_up,"ax",@progbits
	.align	4
	.type	bubble_up, @function
bubble_up:
.LFB3:
	.loc 1 56 0
.LVL14:
	entry	sp, 32
.LCFI1:
	.loc 1 58 0
	j	.L11
.L13:
	.loc 1 59 0
	addi.n	a4, a3, -1
	.loc 1 60 0
	l32i.n	a8, a2, 0
	.loc 1 59 0
	srli	a4, a4, 1
.LVL15:
	.loc 1 60 0
	slli	a5, a3, 2
	slli	a6, a4, 2
	add.n	a10, a8, a6
	add.n	a8, a8, a5
	l32i.n	a11, a10, 0
	l32i.n	a9, a2, 16
	l32i.n	a10, a8, 0
	callx8	a9
.LVL16:
	beqz.n	a10, .L10
.LVL17:
.LBB8:
.LBB9:
	.loc 1 47 0
	l32i.n	a8, a2, 0
	add.n	a6, a8, a6
	.loc 1 48 0
	add.n	a8, a8, a5
	l32i.n	a8, a8, 0
	.loc 1 47 0
	l32i.n	a9, a6, 0
.LVL18:
	.loc 1 50 0
	s32i.n	a8, a6, 0
	.loc 1 52 0
	l32i.n	a6, a2, 0
	.loc 1 51 0
	s32i.n	a4, a8, 0
	.loc 1 52 0
	add.n	a5, a6, a5
	s32i.n	a9, a5, 0
	.loc 1 53 0
	s32i.n	a3, a9, 0
.LBE9:
.LBE8:
	.loc 1 64 0
	mov.n	a3, a4
.LVL19:
.L11:
	.loc 1 58 0
	bnez.n	a3, .L13
.L10:
	retw.n
.LFE3:
	.size	bubble_up, .-bubble_up
	.section	.text.nghttp2_pq_init,"ax",@progbits
	.align	4
	.global	nghttp2_pq_init
	.type	nghttp2_pq_init, @function
nghttp2_pq_init:
.LFB0:
	.loc 1 32 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 32 0
	mov.n	a8, a2
	.loc 1 33 0
	s32i.n	a4, a2, 4
	.loc 1 34 0
	movi.n	a2, 0
.LVL21:
	s32i.n	a2, a8, 12
	.loc 1 35 0
	s32i.n	a2, a8, 0
	.loc 1 36 0
	s32i.n	a2, a8, 8
	.loc 1 37 0
	s32i.n	a3, a8, 16
	.loc 1 39 0
	retw.n
.LFE0:
	.size	nghttp2_pq_init, .-nghttp2_pq_init
	.section	.text.nghttp2_pq_free,"ax",@progbits
	.align	4
	.global	nghttp2_pq_free
	.type	nghttp2_pq_free, @function
nghttp2_pq_free:
.LFB1:
	.loc 1 41 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 42 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a2, 4
	call8	nghttp2_mem_free
.LVL23:
	.loc 1 43 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	retw.n
.LFE1:
	.size	nghttp2_pq_free, .-nghttp2_pq_free
	.section	.text.nghttp2_pq_push,"ax",@progbits
	.align	4
	.global	nghttp2_pq_push
	.type	nghttp2_pq_push, @function
nghttp2_pq_push:
.LFB4:
	.loc 1 68 0
.LVL24:
	entry	sp, 32
.LCFI4:
	.loc 1 69 0
	l32i.n	a4, a2, 12
	l32i.n	a8, a2, 8
	bltu	a8, a4, .L18
.LBB10:
	.loc 1 73 0
	movi.n	a8, 4
	slli	a4, a4, 1
	maxu	a4, a4, a8
.LVL25:
	.loc 1 75 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a2, 4
	slli	a12, a4, 2
	call8	nghttp2_mem_realloc
.LVL26:
	.loc 1 78 0
	movi	a8, -0x385
	.loc 1 77 0
	beqz.n	a10, .L19
	.loc 1 80 0
	s32i.n	a4, a2, 12
	.loc 1 81 0
	s32i.n	a10, a2, 0
.LVL27:
.L18:
.LBE10:
	.loc 1 83 0
	l32i.n	a11, a2, 8
	l32i.n	a4, a2, 0
	.loc 1 86 0
	mov.n	a10, a2
	.loc 1 83 0
	addx4	a4, a11, a4
	s32i.n	a3, a4, 0
	.loc 1 84 0
	s32i.n	a11, a3, 0
	.loc 1 85 0
	addi.n	a3, a11, 1
.LVL28:
	s32i.n	a3, a2, 8
	.loc 1 86 0
	call8	bubble_up
.LVL29:
	.loc 1 87 0
	movi.n	a8, 0
.L19:
	.loc 1 88 0
	mov.n	a2, a8
.LVL30:
	retw.n
.LFE4:
	.size	nghttp2_pq_push, .-nghttp2_pq_push
	.section	.text.nghttp2_pq_top,"ax",@progbits
	.align	4
	.global	nghttp2_pq_top
	.type	nghttp2_pq_top, @function
nghttp2_pq_top:
.LFB5:
	.loc 1 90 0
.LVL31:
	entry	sp, 32
.LCFI5:
	.loc 1 91 0
	l32i.n	a9, a2, 8
	.loc 1 92 0
	mov.n	a8, a9
	.loc 1 91 0
	beqz.n	a9, .L22
	.loc 1 94 0
	l32i.n	a2, a2, 0
.LVL32:
	l32i.n	a8, a2, 0
.L22:
	.loc 1 96 0
	mov.n	a2, a8
	retw.n
.LFE5:
	.size	nghttp2_pq_top, .-nghttp2_pq_top
	.section	.text.nghttp2_pq_pop,"ax",@progbits
	.literal_position
	.literal .LC0, 1073741823
	.align	4
	.global	nghttp2_pq_pop
	.type	nghttp2_pq_pop, @function
nghttp2_pq_pop:
.LFB7:
	.loc 1 119 0
.LVL33:
	entry	sp, 32
.LCFI6:
	.loc 1 120 0
	l32i.n	a8, a2, 8
	.loc 1 119 0
	mov.n	a10, a2
	.loc 1 120 0
	beqz.n	a8, .L24
	.loc 1 121 0
	l32r	a9, .LC0
	l32i.n	a11, a2, 0
	add.n	a9, a8, a9
	addx4	a9, a9, a11
	l32i.n	a9, a9, 0
	.loc 1 123 0
	addi.n	a8, a8, -1
	.loc 1 121 0
	s32i.n	a9, a11, 0
	.loc 1 122 0
	l32i.n	a9, a2, 0
	movi.n	a11, 0
	l32i.n	a9, a9, 0
	s32i.n	a11, a9, 0
	.loc 1 123 0
	s32i.n	a8, a2, 8
	.loc 1 124 0
	call8	bubble_down
.LVL34:
.L24:
	retw.n
.LFE7:
	.size	nghttp2_pq_pop, .-nghttp2_pq_pop
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"pq->q[item->index] == item"
.LC4:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_pq.c"
	.section	.text.nghttp2_pq_remove,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$4144
	.literal .LC5, .LC4
	.literal .LC6, 1073741823
	.align	4
	.global	nghttp2_pq_remove
	.type	nghttp2_pq_remove, @function
nghttp2_pq_remove:
.LFB8:
	.loc 1 128 0
.LVL35:
	entry	sp, 32
.LCFI7:
	.loc 1 129 0
	l32i.n	a8, a3, 0
	l32i.n	a14, a2, 0
	slli	a11, a8, 2
	add.n	a13, a14, a11
	l32i.n	a9, a13, 0
	beq	a3, a9, .L30
	.loc 1 129 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi	a11, 0x81
	call8	__assert_func
.LVL36:
.L30:
	.loc 1 131 0 is_stmt 1
	bnez.n	a8, .L31
	.loc 1 132 0
	mov.n	a10, a2
	call8	nghttp2_pq_pop
.LVL37:
	.loc 1 133 0
	retw.n
.L31:
	.loc 1 136 0
	l32i.n	a9, a2, 8
	addi.n	a12, a9, -1
	bne	a8, a12, .L33
	.loc 1 137 0
	s32i.n	a8, a2, 8
	.loc 1 138 0
	retw.n
.L33:
	.loc 1 141 0
	l32r	a10, .LC6
	add.n	a9, a9, a10
	addx4	a9, a9, a14
	l32i.n	a9, a9, 0
	s32i.n	a9, a13, 0
	.loc 1 142 0
	l32i.n	a9, a2, 0
	add.n	a11, a9, a11
	l32i.n	a10, a11, 0
	s32i.n	a8, a10, 0
	.loc 1 145 0
	l32i.n	a8, a3, 0
	.loc 1 143 0
	s32i.n	a12, a2, 8
	.loc 1 145 0
	addx4	a8, a8, a9
	l32i.n	a11, a8, 0
	l32i.n	a9, a2, 16
	mov.n	a10, a3
	callx8	a9
.LVL38:
	.loc 1 146 0
	l32i.n	a11, a3, 0
	.loc 1 145 0
	beqz.n	a10, .L34
	.loc 1 146 0
	mov.n	a10, a2
	call8	bubble_down
.LVL39:
	retw.n
.L34:
	.loc 1 148 0
	mov.n	a10, a2
	call8	bubble_up
.LVL40:
	retw.n
.LFE8:
	.size	nghttp2_pq_remove, .-nghttp2_pq_remove
	.section	.text.nghttp2_pq_empty,"ax",@progbits
	.align	4
	.global	nghttp2_pq_empty
	.type	nghttp2_pq_empty, @function
nghttp2_pq_empty:
.LFB9:
	.loc 1 152 0
.LVL41:
	entry	sp, 32
.LCFI8:
	.loc 1 152 0
	l32i.n	a8, a2, 8
	movi.n	a9, 1
	movi.n	a2, 0
.LVL42:
	moveqz	a2, a9, a8
	retw.n
.LFE9:
	.size	nghttp2_pq_empty, .-nghttp2_pq_empty
	.section	.text.nghttp2_pq_size,"ax",@progbits
	.align	4
	.global	nghttp2_pq_size
	.type	nghttp2_pq_size, @function
nghttp2_pq_size:
.LFB10:
	.loc 1 154 0
.LVL43:
	entry	sp, 32
.LCFI9:
	.loc 1 154 0
	l32i.n	a2, a2, 8
.LVL44:
	retw.n
.LFE10:
	.size	nghttp2_pq_size, .-nghttp2_pq_size
	.section	.text.nghttp2_pq_update,"ax",@progbits
	.align	4
	.global	nghttp2_pq_update
	.type	nghttp2_pq_update, @function
nghttp2_pq_update:
.LFB11:
	.loc 1 156 0
.LVL45:
	entry	sp, 32
.LCFI10:
.LVL46:
	.loc 1 159 0
	l32i.n	a5, a2, 8
	beqz.n	a5, .L37
	movi.n	a6, 0
	mov.n	a7, a6
	j	.L39
.LVL47:
.L40:
	.loc 1 163 0 discriminator 3
	l32i.n	a5, a2, 0
	mov.n	a11, a4
	addx4	a5, a7, a5
	l32i.n	a10, a5, 0
	.loc 1 162 0 discriminator 3
	addi.n	a7, a7, 1
.LVL48:
	.loc 1 163 0 discriminator 3
	callx8	a3
.LVL49:
	or	a6, a6, a10
.LVL50:
.L39:
	.loc 1 162 0 discriminator 1
	l32i.n	a5, a2, 8
	bltu	a7, a5, .L40
	.loc 1 165 0
	bnez.n	a6, .L41
	retw.n
.LVL51:
.L42:
	.loc 1 167 0 discriminator 3
	addi.n	a5, a5, -1
.LVL52:
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bubble_down
.LVL53:
.L41:
	.loc 1 166 0 discriminator 1
	bnez.n	a5, .L42
.LVL54:
.L37:
	retw.n
.LFE11:
	.size	nghttp2_pq_update, .-nghttp2_pq_update
	.section	.text.nghttp2_pq_each,"ax",@progbits
	.align	4
	.global	nghttp2_pq_each
	.type	nghttp2_pq_each, @function
nghttp2_pq_each:
.LFB12:
	.loc 1 172 0
.LVL55:
	entry	sp, 32
.LCFI11:
	.loc 1 175 0
	l32i.n	a5, a2, 8
	beqz.n	a5, .L50
	movi.n	a5, 0
	j	.L51
.L50:
	.loc 1 176 0
	movi.n	a2, 0
.LVL56:
	retw.n
.LVL57:
.L53:
	.loc 1 179 0
	l32i.n	a8, a2, 0
	mov.n	a11, a4
	addx4	a8, a5, a8
	l32i.n	a10, a8, 0
	callx8	a3
.LVL58:
	bnez.n	a10, .L54
	.loc 1 178 0 discriminator 2
	addi.n	a5, a5, 1
.LVL59:
.L51:
	.loc 1 178 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 8
	bltu	a5, a8, .L53
	j	.L50
.L54:
	.loc 1 180 0 is_stmt 1
	movi.n	a2, 1
.LVL60:
	.loc 1 184 0
	retw.n
.LFE12:
	.size	nghttp2_pq_each, .-nghttp2_pq_each
	.section	.rodata.__func__$4144,"a",@progbits
	.type	__func__$4144, @object
	.size	__func__$4144, 18
__func__$4144:
	.string	"nghttp2_pq_remove"
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI2-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI10-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI11-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_int.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_pq.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_mem.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x837
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.4byte	0x41
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0xa0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x41
	.byte	0x3
	.byte	0xe7
	.4byte	0x1c5
	.uleb128 0xb
	.4byte	.LASF11
	.sleb128 -501
	.uleb128 0xb
	.4byte	.LASF12
	.sleb128 -502
	.uleb128 0xb
	.4byte	.LASF13
	.sleb128 -503
	.uleb128 0xb
	.4byte	.LASF14
	.sleb128 -504
	.uleb128 0xb
	.4byte	.LASF15
	.sleb128 -505
	.uleb128 0xb
	.4byte	.LASF16
	.sleb128 -506
	.uleb128 0xb
	.4byte	.LASF17
	.sleb128 -507
	.uleb128 0xb
	.4byte	.LASF18
	.sleb128 -508
	.uleb128 0xb
	.4byte	.LASF19
	.sleb128 -509
	.uleb128 0xb
	.4byte	.LASF20
	.sleb128 -510
	.uleb128 0xb
	.4byte	.LASF21
	.sleb128 -511
	.uleb128 0xb
	.4byte	.LASF22
	.sleb128 -512
	.uleb128 0xb
	.4byte	.LASF23
	.sleb128 -513
	.uleb128 0xb
	.4byte	.LASF24
	.sleb128 -514
	.uleb128 0xb
	.4byte	.LASF25
	.sleb128 -515
	.uleb128 0xb
	.4byte	.LASF26
	.sleb128 -516
	.uleb128 0xb
	.4byte	.LASF27
	.sleb128 -517
	.uleb128 0xb
	.4byte	.LASF28
	.sleb128 -518
	.uleb128 0xb
	.4byte	.LASF29
	.sleb128 -519
	.uleb128 0xb
	.4byte	.LASF30
	.sleb128 -521
	.uleb128 0xb
	.4byte	.LASF31
	.sleb128 -522
	.uleb128 0xb
	.4byte	.LASF32
	.sleb128 -523
	.uleb128 0xb
	.4byte	.LASF33
	.sleb128 -524
	.uleb128 0xb
	.4byte	.LASF34
	.sleb128 -525
	.uleb128 0xb
	.4byte	.LASF35
	.sleb128 -526
	.uleb128 0xb
	.4byte	.LASF36
	.sleb128 -527
	.uleb128 0xb
	.4byte	.LASF37
	.sleb128 -528
	.uleb128 0xb
	.4byte	.LASF38
	.sleb128 -529
	.uleb128 0xb
	.4byte	.LASF39
	.sleb128 -530
	.uleb128 0xb
	.4byte	.LASF40
	.sleb128 -531
	.uleb128 0xb
	.4byte	.LASF41
	.sleb128 -532
	.uleb128 0xb
	.4byte	.LASF42
	.sleb128 -533
	.uleb128 0xb
	.4byte	.LASF43
	.sleb128 -534
	.uleb128 0xb
	.4byte	.LASF44
	.sleb128 -535
	.uleb128 0xb
	.4byte	.LASF45
	.sleb128 -900
	.uleb128 0xb
	.4byte	.LASF46
	.sleb128 -901
	.uleb128 0xb
	.4byte	.LASF47
	.sleb128 -902
	.uleb128 0xb
	.4byte	.LASF48
	.sleb128 -903
	.uleb128 0xb
	.4byte	.LASF49
	.sleb128 -904
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x8df
	.4byte	0x1d1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0x7
	.4byte	0x68
	.4byte	0x1eb
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x8e7
	.4byte	0x1f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0xd
	.4byte	0x20d
	.uleb128 0x8
	.4byte	0x68
	.uleb128 0x8
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x8ef
	.4byte	0x219
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x7
	.4byte	0x68
	.4byte	0x238
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x8f7
	.4byte	0x244
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x7
	.4byte	0x68
	.4byte	0x263
	.uleb128 0x8
	.4byte	0x68
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0x3
	.2byte	0x920
	.4byte	0x2ae
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x925
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x929
	.4byte	0x1c5
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x92d
	.4byte	0x1eb
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x931
	.4byte	0x20d
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x935
	.4byte	0x238
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x936
	.4byte	0x263
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x4
	.byte	0x25
	.4byte	0x86
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.byte	0x26
	.4byte	0x2da
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x5
	.byte	0x26
	.4byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x5
	.byte	0x26
	.4byte	0x2c5
	.uleb128 0x10
	.byte	0x14
	.byte	0x5
	.byte	0x28
	.4byte	0x328
	.uleb128 0x12
	.string	"q"
	.byte	0x5
	.byte	0x2a
	.4byte	0x328
	.byte	0
	.uleb128 0x12
	.string	"mem"
	.byte	0x5
	.byte	0x2c
	.4byte	0x334
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x5
	.byte	0x2e
	.4byte	0x5d
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x5
	.byte	0x31
	.4byte	0x5d
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x5
	.byte	0x33
	.4byte	0x2ba
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ae
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x5
	.byte	0x34
	.4byte	0x2e5
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x5
	.byte	0x68
	.4byte	0x350
	.uleb128 0x6
	.byte	0x4
	.4byte	0x356
	.uleb128 0x7
	.4byte	0x41
	.4byte	0x36a
	.uleb128 0x8
	.4byte	0x32e
	.uleb128 0x8
	.4byte	0x68
	.byte	0
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	0x3a5
	.uleb128 0x14
	.string	"pq"
	.byte	0x1
	.byte	0x2e
	.4byte	0x3a5
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.4byte	0x5d
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.4byte	0x5d
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.4byte	0x32e
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.byte	0x30
	.4byte	0x32e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33a
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44c
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x62
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0x62
	.4byte	0x5d
	.4byte	.LLST0
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x63
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.byte	0x63
	.4byte	0x5d
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.4byte	0x5d
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	0x36a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x72
	.uleb128 0x1c
	.4byte	0x376
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	0x389
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	0x380
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1e
	.4byte	0x392
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	0x39b
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x38
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x38
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0x38
	.4byte	0x5d
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x39
	.4byte	0x5d
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x36a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x3f
	.uleb128 0x1c
	.4byte	0x376
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	0x389
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	0x380
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1e
	.4byte	0x392
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	0x39b
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x515
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0x20
	.4byte	0x3a5
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0x20
	.4byte	0x2ba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x20
	.4byte	0x334
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.4byte	.LASF78
	.byte	0x1
	.byte	0x29
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x540
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x29
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x819
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x44
	.4byte	0x41
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ca
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0x44
	.4byte	0x3a5
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x44
	.4byte	0x32e
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x5b3
	.uleb128 0x19
	.string	"nq"
	.byte	0x1
	.byte	0x46
	.4byte	0x68
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0x47
	.4byte	0x5d
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LVL26
	.4byte	0x824
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0x44c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5a
	.4byte	0x32e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f2
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0x5a
	.4byte	0x3a5
	.4byte	.LLST21
	.byte	0
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x1
	.byte	0x77
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x629
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x77
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL34
	.4byte	0x3ab
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.byte	0x80
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6de
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x80
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0x80
	.4byte	0x32e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF81
	.4byte	0x6ee
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4144
	.uleb128 0x28
	.4byte	.LVL36
	.4byte	0x82f
	.4byte	0x695
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4144
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0x5f2
	.4byte	0x6a9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0x6b9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0x3ab
	.4byte	0x6cd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL40
	.4byte	0x44c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x7f
	.4byte	0x6ee
	.uleb128 0x2b
	.4byte	0x71
	.byte	0x11
	.byte	0
	.uleb128 0x2c
	.4byte	0x6de
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.byte	0x98
	.4byte	0x41
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71b
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0x98
	.4byte	0x3a5
	.4byte	.LLST22
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9a
	.4byte	0x5d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x743
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0x9a
	.4byte	0x3a5
	.4byte	.LLST23
	.byte	0
	.uleb128 0x22
	.4byte	.LASF84
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x17
	.string	"pq"
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"fun"
	.byte	0x1
	.byte	0x9c
	.4byte	0x345
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x9c
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.4byte	0x5d
	.4byte	.LLST24
	.uleb128 0x19
	.string	"rv"
	.byte	0x1
	.byte	0x9e
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0x7a9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL53
	.4byte	0x3ab
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF85
	.byte	0x1
	.byte	0xac
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x819
	.uleb128 0x20
	.string	"pq"
	.byte	0x1
	.byte	0xac
	.4byte	0x3a5
	.4byte	.LLST26
	.uleb128 0x17
	.string	"fun"
	.byte	0x1
	.byte	0xac
	.4byte	0x345
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0xac
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LVL58
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x6
	.byte	0x28
	.uleb128 0x2f
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.byte	0x2b
	.uleb128 0x2f
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x7
	.byte	0x29
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
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x76
	.sleb128 -3
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL29-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"nghttp2_pq_free"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF73:
	.string	"nghttp2_pq_init"
.LASF61:
	.string	"nghttp2_less"
.LASF53:
	.string	"nghttp2_calloc"
.LASF60:
	.string	"nghttp2_mem"
.LASF56:
	.string	"malloc"
.LASF23:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF22:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF40:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF83:
	.string	"nghttp2_pq_size"
.LASF21:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF42:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF86:
	.string	"nghttp2_mem_free"
.LASF91:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/nghttp"
.LASF18:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF37:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF62:
	.string	"index"
.LASF33:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF52:
	.string	"nghttp2_free"
.LASF72:
	.string	"parent"
.LASF57:
	.string	"free"
.LASF51:
	.string	"nghttp2_malloc"
.LASF49:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF64:
	.string	"length"
.LASF20:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF13:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF58:
	.string	"calloc"
.LASF5:
	.string	"long long int"
.LASF6:
	.string	"long long unsigned int"
.LASF79:
	.string	"nghttp2_pq_pop"
.LASF31:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF25:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF7:
	.string	"long int"
.LASF70:
	.string	"bubble_down"
.LASF9:
	.string	"long unsigned int"
.LASF45:
	.string	"NGHTTP2_ERR_FATAL"
.LASF15:
	.string	"NGHTTP2_ERR_PROTO"
.LASF36:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF39:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF76:
	.string	"ncapacity"
.LASF14:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF41:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF26:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF1:
	.string	"unsigned char"
.LASF87:
	.string	"nghttp2_mem_realloc"
.LASF17:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"capacity"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF4:
	.string	"unsigned int"
.LASF35:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF82:
	.string	"nghttp2_pq_empty"
.LASF71:
	.string	"bubble_up"
.LASF67:
	.string	"nghttp2_pq"
.LASF43:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF3:
	.string	"short unsigned int"
.LASF68:
	.string	"nghttp2_pq_item_cb"
.LASF32:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF10:
	.string	"char"
.LASF12:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF74:
	.string	"nghttp2_pq_push"
.LASF34:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF50:
	.string	"size_t"
.LASF46:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF59:
	.string	"realloc"
.LASF48:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF24:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF47:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF27:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF63:
	.string	"nghttp2_pq_entry"
.LASF92:
	.string	"swap"
.LASF30:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF80:
	.string	"nghttp2_pq_remove"
.LASF84:
	.string	"nghttp2_pq_update"
.LASF81:
	.string	"__func__"
.LASF75:
	.string	"item"
.LASF85:
	.string	"nghttp2_pq_each"
.LASF8:
	.string	"sizetype"
.LASF77:
	.string	"nghttp2_pq_top"
.LASF19:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF55:
	.string	"mem_user_data"
.LASF69:
	.string	"minindex"
.LASF90:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_pq.c"
.LASF88:
	.string	"__assert_func"
.LASF89:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF54:
	.string	"nghttp2_realloc"
.LASF44:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF66:
	.string	"less"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
