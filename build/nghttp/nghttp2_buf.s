	.file	"nghttp2_buf.c"
	.text
.Ltext0:
	.section	.text.nghttp2_buf_init,"ax",@progbits
	.align	4
	.global	nghttp2_buf_init
	.type	nghttp2_buf_init, @function
nghttp2_buf_init:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_buf.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 34 0
	s32i.n	a8, a2, 4
	.loc 1 35 0
	s32i.n	a8, a2, 8
	.loc 1 36 0
	s32i.n	a8, a2, 12
	.loc 1 37 0
	s32i.n	a8, a2, 16
	retw.n
.LFE0:
	.size	nghttp2_buf_init, .-nghttp2_buf_init
	.section	.text.nghttp2_buf_free,"ax",@progbits
	.align	4
	.global	nghttp2_buf_free
	.type	nghttp2_buf_free, @function
nghttp2_buf_free:
.LFB2:
	.loc 1 45 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 45 0
	mov.n	a10, a3
	.loc 1 46 0
	beqz.n	a2, .L2
	.loc 1 50 0
	l32i.n	a11, a2, 0
	call8	nghttp2_mem_free
.LVL2:
	.loc 1 51 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L2:
	retw.n
.LFE2:
	.size	nghttp2_buf_free, .-nghttp2_buf_free
	.section	.text.nghttp2_buf_reserve,"ax",@progbits
	.align	4
	.global	nghttp2_buf_reserve
	.type	nghttp2_buf_reserve, @function
nghttp2_buf_reserve:
.LFB3:
	.loc 1 54 0
.LVL3:
	entry	sp, 32
.LCFI2:
	.loc 1 58 0
	l32i.n	a11, a2, 0
	l32i.n	a8, a2, 4
	.loc 1 54 0
	mov.n	a10, a4
	.loc 1 58 0
	sub	a8, a8, a11
.LVL4:
	.loc 1 61 0
	movi.n	a5, 0
	.loc 1 60 0
	bgeu	a8, a3, .L8
	.loc 1 64 0
	slli	a8, a8, 1
.LVL5:
	maxu	a3, a8, a3
.LVL6:
	.loc 1 66 0
	mov.n	a12, a3
	call8	nghttp2_mem_realloc
.LVL7:
	.loc 1 67 0
	beq	a10, a5, .L10
	.loc 1 71 0
	l32i.n	a11, a2, 0
	l32i.n	a9, a2, 8
	.loc 1 73 0
	l32i.n	a8, a2, 16
	.loc 1 71 0
	sub	a9, a9, a11
	add.n	a9, a10, a9
	s32i.n	a9, a2, 8
	.loc 1 72 0
	l32i.n	a9, a2, 12
	.loc 1 73 0
	sub	a8, a8, a11
	.loc 1 72 0
	sub	a9, a9, a11
	add.n	a9, a10, a9
	.loc 1 73 0
	add.n	a8, a10, a8
	.loc 1 75 0
	add.n	a3, a10, a3
.LVL8:
	.loc 1 72 0
	s32i.n	a9, a2, 12
	.loc 1 73 0
	s32i.n	a8, a2, 16
	.loc 1 74 0
	s32i.n	a10, a2, 0
	.loc 1 75 0
	s32i.n	a3, a2, 4
	.loc 1 77 0
	j	.L8
.LVL9:
.L10:
	.loc 1 68 0
	movi	a5, -0x385
.LVL10:
.L8:
	.loc 1 78 0
	mov.n	a2, a5
.LVL11:
	retw.n
.LFE3:
	.size	nghttp2_buf_reserve, .-nghttp2_buf_reserve
	.section	.text.nghttp2_buf_init2,"ax",@progbits
	.align	4
	.global	nghttp2_buf_init2
	.type	nghttp2_buf_init2, @function
nghttp2_buf_init2:
.LFB1:
	.loc 1 40 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 41 0
	mov.n	a10, a2
	call8	nghttp2_buf_init
.LVL13:
	.loc 1 42 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_buf_reserve
.LVL14:
	.loc 1 43 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE1:
	.size	nghttp2_buf_init2, .-nghttp2_buf_init2
	.section	.text.buf_chain_new,"ax",@progbits
	.align	4
	.type	buf_chain_new, @function
buf_chain_new:
.LFB6:
	.loc 1 90 0
.LVL16:
	entry	sp, 32
.LCFI4:
	.loc 1 93 0
	movi.n	a11, 0x18
	mov.n	a10, a4
	call8	nghttp2_mem_malloc
.LVL17:
	s32i.n	a10, a2, 0
	.loc 1 90 0
	mov.n	a6, a2
	.loc 1 95 0
	movi	a2, -0x385
.LVL18:
	.loc 1 94 0
	beqz.n	a10, .L13
	.loc 1 98 0
	movi.n	a5, 0
	s32i.n	a5, a10, 0
	.loc 1 100 0
	l32i.n	a10, a6, 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, a10, 4
	call8	nghttp2_buf_init2
.LVL19:
	.loc 1 106 0
	mov.n	a2, a5
	.loc 1 101 0
	beq	a10, a5, .L13
	.loc 1 102 0
	l32i.n	a11, a6, 0
	mov.n	a10, a4
.LVL20:
	call8	nghttp2_mem_free
.LVL21:
	.loc 1 103 0
	movi	a2, -0x385
.L13:
	.loc 1 107 0
	retw.n
.LFE6:
	.size	buf_chain_new, .-buf_chain_new
	.section	.text.bufs_alloc_chain,"ax",@progbits
	.align	4
	.type	bufs_alloc_chain, @function
bufs_alloc_chain:
.LFB18:
	.loc 1 301 0
.LVL22:
	entry	sp, 48
.LCFI5:
	.loc 1 301 0
	mov.n	a3, a2
	.loc 1 305 0
	l32i.n	a2, a2, 4
.LVL23:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L18
	.loc 1 306 0
	s32i.n	a2, a3, 4
	.loc 1 308 0
	movi.n	a2, 0
	retw.n
.L18:
	.loc 1 311 0
	l32i.n	a9, a3, 16
	l32i.n	a8, a3, 20
	.loc 1 312 0
	movi	a2, -0x1f6
	.loc 1 311 0
	beq	a9, a8, .L19
.LVL24:
.LBB14:
.LBB15:
	.loc 1 315 0
	l32i.n	a12, a3, 8
	l32i.n	a11, a3, 12
	mov.n	a10, sp
	call8	buf_chain_new
.LVL25:
	.loc 1 316 0
	bnez.n	a10, .L20
	.loc 1 323 0
	l32i.n	a2, a3, 20
	.loc 1 325 0
	l32i.n	a8, a3, 4
	.loc 1 323 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 20
	.loc 1 325 0
	l32i.n	a2, sp, 0
	s32i.n	a2, a8, 0
	.loc 1 326 0
	s32i.n	a2, a3, 4
	.loc 1 328 0
	l32i.n	a8, a2, 12
	l32i.n	a3, a3, 28
.LVL26:
	add.n	a8, a8, a3
	s32i.n	a8, a2, 12
	l32i.n	a8, a2, 16
	add.n	a3, a8, a3
	s32i.n	a3, a2, 16
.L20:
	.loc 1 315 0
	mov.n	a2, a10
.LVL27:
.L19:
.LBE15:
.LBE14:
	.loc 1 331 0
	retw.n
.LFE18:
	.size	bufs_alloc_chain, .-bufs_alloc_chain
	.section	.text.bufs_ensure_addb,"ax",@progbits
	.align	4
	.type	bufs_ensure_addb, @function
bufs_ensure_addb:
.LFB20:
	.loc 1 361 0
.LVL28:
	entry	sp, 32
.LCFI6:
	.loc 1 365 0
	l32i.n	a8, a2, 4
.LVL29:
	.loc 1 361 0
	mov.n	a10, a2
	.loc 1 367 0
	l32i.n	a11, a8, 8
	l32i.n	a9, a8, 16
	.loc 1 368 0
	movi.n	a2, 0
.LVL30:
	.loc 1 367 0
	bne	a11, a9, .L23
.LVL31:
.LBB18:
.LBB19:
	.loc 1 371 0
	call8	bufs_alloc_chain
.LVL32:
	mov.n	a2, a10
.LVL33:
.L23:
.LBE19:
.LBE18:
	.loc 1 377 0
	retw.n
.LFE20:
	.size	bufs_ensure_addb, .-bufs_ensure_addb
	.section	.text.nghttp2_buf_reset,"ax",@progbits
	.align	4
	.global	nghttp2_buf_reset
	.type	nghttp2_buf_reset, @function
nghttp2_buf_reset:
.LFB4:
	.loc 1 80 0
.LVL34:
	entry	sp, 32
.LCFI7:
	.loc 1 81 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 8
	retw.n
.LFE4:
	.size	nghttp2_buf_reset, .-nghttp2_buf_reset
	.section	.text.nghttp2_buf_wrap_init,"ax",@progbits
	.align	4
	.global	nghttp2_buf_wrap_init
	.type	nghttp2_buf_wrap_init, @function
nghttp2_buf_wrap_init:
.LFB5:
	.loc 1 84 0
.LVL35:
	entry	sp, 32
.LCFI8:
	.loc 1 86 0
	add.n	a4, a3, a4
.LVL36:
	.loc 1 85 0
	s32i.n	a3, a2, 16
	s32i.n	a3, a2, 12
	s32i.n	a3, a2, 8
	s32i.n	a3, a2, 0
	.loc 1 86 0
	s32i.n	a4, a2, 4
	retw.n
.LFE5:
	.size	nghttp2_buf_wrap_init, .-nghttp2_buf_wrap_init
	.section	.text.nghttp2_bufs_init3,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init3
	.type	nghttp2_bufs_init3, @function
nghttp2_bufs_init3:
.LFB10:
	.loc 1 127 0
.LVL37:
	entry	sp, 48
.LCFI9:
	.loc 1 131 0
	movi.n	a9, 0
	movi.n	a8, 1
	mov.n	a10, a9
	.loc 1 127 0
	.loc 1 131 0
	moveqz	a10, a8, a5
	bltu	a4, a5, .L29
	mov.n	a8, a9
.L29:
	or	a8, a10, a8
	bbsi	a8, 0, .L31
	bltu	a3, a6, .L31
	.loc 1 135 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, sp
	call8	buf_chain_new
.LVL38:
	.loc 1 136 0
	bnez.n	a10, .L28
	.loc 1 143 0
	l32i.n	a8, sp, 0
	.loc 1 140 0
	s32i.n	a7, a2, 8
	.loc 1 146 0
	l32i.n	a7, a8, 12
.LVL39:
	.loc 1 141 0
	s32i.n	a6, a2, 28
	.loc 1 146 0
	add.n	a7, a7, a6
	.loc 1 143 0
	s32i.n	a8, a2, 0
	.loc 1 144 0
	s32i.n	a8, a2, 4
	.loc 1 146 0
	s32i.n	a7, a8, 12
	l32i.n	a7, a8, 16
	add.n	a6, a7, a6
.LVL40:
	s32i.n	a6, a8, 16
	.loc 1 148 0
	s32i.n	a3, a2, 12
	.loc 1 149 0
	movi.n	a3, 1
.LVL41:
	s32i.n	a3, a2, 20
	.loc 1 150 0
	s32i.n	a4, a2, 16
	.loc 1 151 0
	s32i.n	a5, a2, 24
	.loc 1 153 0
	j	.L28
.LVL42:
.L31:
	.loc 1 132 0
	movi	a10, -0x1f5
.LVL43:
.L28:
	.loc 1 154 0
	mov.n	a2, a10
.LVL44:
	retw.n
.LFE10:
	.size	nghttp2_bufs_init3, .-nghttp2_bufs_init3
	.section	.text.nghttp2_bufs_init2,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init2
	.type	nghttp2_bufs_init2, @function
nghttp2_bufs_init2:
.LFB9:
	.loc 1 120 0
.LVL45:
	entry	sp, 32
.LCFI10:
	.loc 1 120 0
	mov.n	a12, a4
	.loc 1 121 0
	mov.n	a15, a6
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_bufs_init3
.LVL46:
	.loc 1 123 0
	mov.n	a2, a10
.LVL47:
	retw.n
.LFE9:
	.size	nghttp2_bufs_init2, .-nghttp2_bufs_init2
	.section	.text.nghttp2_bufs_init,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init
	.type	nghttp2_bufs_init, @function
nghttp2_bufs_init:
.LFB8:
	.loc 1 115 0
.LVL48:
	entry	sp, 32
.LCFI11:
	.loc 1 116 0
	mov.n	a14, a5
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_bufs_init2
.LVL49:
	.loc 1 117 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE8:
	.size	nghttp2_bufs_init, .-nghttp2_bufs_init
	.section	.text.nghttp2_bufs_free,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_free
	.type	nghttp2_bufs_free, @function
nghttp2_bufs_free:
.LFB12:
	.loc 1 182 0
.LVL51:
	entry	sp, 32
.LCFI12:
	.loc 1 185 0
	beqz.n	a2, .L36
	.loc 1 189 0
	l32i.n	a3, a2, 0
.LVL52:
	j	.L38
.L39:
	.loc 1 192 0
	l32i.n	a4, a2, 8
.LBB22:
.LBB23:
	.loc 1 110 0
	addi.n	a10, a3, 4
	mov.n	a11, a4
.LBE23:
.LBE22:
	.loc 1 190 0
	l32i.n	a5, a3, 0
.LVL53:
.LBB25:
.LBB24:
	.loc 1 110 0
	call8	nghttp2_buf_free
.LVL54:
	.loc 1 111 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	nghttp2_mem_free
.LVL55:
.LBE24:
.LBE25:
	.loc 1 194 0
	mov.n	a3, a5
.LVL56:
.L38:
	.loc 1 189 0 discriminator 1
	bnez.n	a3, .L39
	.loc 1 197 0
	s32i.n	a3, a2, 0
.LVL57:
.L36:
	retw.n
.LFE12:
	.size	nghttp2_bufs_free, .-nghttp2_bufs_free
	.section	.text.nghttp2_bufs_realloc,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_realloc
	.type	nghttp2_bufs_realloc, @function
nghttp2_bufs_realloc:
.LFB11:
	.loc 1 156 0
.LVL58:
	entry	sp, 48
.LCFI13:
	.loc 1 160 0
	l32i.n	a8, a2, 28
	.loc 1 161 0
	movi	a4, -0x1f5
	.loc 1 160 0
	bltu	a3, a8, .L44
	.loc 1 164 0
	l32i.n	a12, a2, 8
	mov.n	a11, a3
	mov.n	a10, sp
	call8	buf_chain_new
.LVL59:
	mov.n	a4, a10
.LVL60:
	.loc 1 165 0
	bnez.n	a10, .L44
	.loc 1 169 0
	mov.n	a10, a2
	call8	nghttp2_bufs_free
.LVL61:
	.loc 1 171 0
	l32i.n	a8, sp, 0
	.loc 1 174 0
	l32i.n	a9, a2, 28
	l32i.n	a10, a8, 12
	.loc 1 171 0
	s32i.n	a8, a2, 0
	.loc 1 174 0
	add.n	a10, a10, a9
	.loc 1 172 0
	s32i.n	a8, a2, 4
	.loc 1 174 0
	s32i.n	a10, a8, 12
	l32i.n	a10, a8, 16
	add.n	a9, a10, a9
	s32i.n	a9, a8, 16
	.loc 1 176 0
	s32i.n	a3, a2, 12
	.loc 1 177 0
	movi.n	a3, 1
.LVL62:
	s32i.n	a3, a2, 20
.LVL63:
.L44:
	.loc 1 180 0
	mov.n	a2, a4
.LVL64:
	retw.n
.LFE11:
	.size	nghttp2_bufs_realloc, .-nghttp2_bufs_realloc
	.section	.text.nghttp2_bufs_wrap_init,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_wrap_init
	.type	nghttp2_bufs_wrap_init, @function
nghttp2_bufs_wrap_init:
.LFB13:
	.loc 1 201 0
.LVL65:
	entry	sp, 32
.LCFI14:
	.loc 1 204 0
	movi.n	a11, 0x18
	mov.n	a10, a5
	call8	nghttp2_mem_malloc
.LVL66:
	.loc 1 201 0
	mov.n	a6, a2
	.loc 1 206 0
	movi	a2, -0x385
.LVL67:
	.loc 1 205 0
	beqz.n	a10, .L48
.LBB26:
.LBB27:
	.loc 1 85 0
	s32i.n	a3, a10, 20
	s32i.n	a3, a10, 16
	s32i.n	a3, a10, 12
	s32i.n	a3, a10, 4
.LBE27:
.LBE26:
	.loc 1 209 0
	movi.n	a2, 0
.LBB29:
.LBB28:
	.loc 1 86 0
	add.n	a3, a3, a4
.LVL68:
	s32i.n	a3, a10, 8
.LBE28:
.LBE29:
	.loc 1 209 0
	s32i.n	a2, a10, 0
.LVL69:
	.loc 1 220 0
	movi.n	a3, 1
	.loc 1 213 0
	s32i.n	a5, a6, 8
	.loc 1 214 0
	s32i.n	a2, a6, 28
	.loc 1 216 0
	s32i.n	a10, a6, 0
	.loc 1 217 0
	s32i.n	a10, a6, 4
	.loc 1 219 0
	s32i.n	a4, a6, 12
	.loc 1 220 0
	s32i.n	a3, a6, 20
	.loc 1 221 0
	s32i.n	a3, a6, 16
	.loc 1 222 0
	s32i.n	a3, a6, 24
.LVL70:
.L48:
	.loc 1 225 0
	retw.n
.LFE13:
	.size	nghttp2_bufs_wrap_init, .-nghttp2_bufs_wrap_init
	.section	.text.nghttp2_bufs_wrap_init2,"ax",@progbits
	.literal_position
	.align	4
	.global	nghttp2_bufs_wrap_init2
	.type	nghttp2_bufs_wrap_init2, @function
nghttp2_bufs_wrap_init2:
.LFB14:
	.loc 1 228 0
.LVL71:
	entry	sp, 48
.LCFI15:
.LVL72:
	.loc 1 228 0
	mov.n	a6, a2
	.loc 1 234 0
	bnez.n	a4, .L51
	.loc 1 235 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a4
	mov.n	a10, a2
	call8	nghttp2_bufs_wrap_init
.LVL73:
	mov.n	a2, a10
.LVL74:
	retw.n
.LVL75:
.L51:
	.loc 1 238 0
	addx2	a11, a4, a4
	slli	a11, a11, 3
	mov.n	a10, a5
	call8	nghttp2_mem_malloc
.LVL76:
	s32i.n	a10, sp, 0
	.loc 1 240 0
	movi	a2, -0x385
.LVL77:
	.loc 1 239 0
	beqz.n	a10, .L52
	movi.n	a9, 0
	mov.n	a13, sp
.LVL78:
	.loc 1 245 0
	mov.n	a14, a9
	mov.n	a11, a4
	loop	a11, .L53_LEND
.LVL79:
.L53:
	.loc 1 244 0 discriminator 3
	l32i.n	a2, sp, 0
	addx2	a8, a9, a9
	addx8	a8, a8, a2
.LVL80:
	.loc 1 245 0 discriminator 3
	s32i.n	a14, a8, 0
	.loc 1 246 0 discriminator 3
	l32i.n	a10, a3, 0
	l32i.n	a12, a3, 4
.LVL81:
.LBB30:
.LBB31:
	.loc 1 85 0 discriminator 3
	s32i.n	a10, a8, 20
	s32i.n	a10, a8, 16
	s32i.n	a10, a8, 12
	s32i.n	a10, a8, 4
	.loc 1 86 0 discriminator 3
	add.n	a10, a10, a12
.LVL82:
	s32i.n	a10, a8, 8
.LBE31:
.LBE30:
	.loc 1 248 0 discriminator 3
	s32i.n	a8, a13, 0
.LVL83:
	.loc 1 245 0 discriminator 3
	movi.n	a2, 0
	.loc 1 249 0 discriminator 3
	mov.n	a13, a8
.LVL84:
	.loc 1 243 0 discriminator 3
	addi.n	a9, a9, 1
.LVL85:
	addi.n	a3, a3, 8
	.L53_LEND:
	.loc 1 255 0
	l32i.n	a3, sp, 0
	.loc 1 252 0
	s32i.n	a5, a6, 8
	.loc 1 253 0
	s32i.n	a2, a6, 28
	.loc 1 255 0
	s32i.n	a3, a6, 0
	.loc 1 256 0
	s32i.n	a3, a6, 4
	.loc 1 259 0
	s32i.n	a2, a6, 12
	.loc 1 260 0
	s32i.n	a4, a6, 20
	.loc 1 261 0
	s32i.n	a4, a6, 16
	.loc 1 262 0
	s32i.n	a4, a6, 24
.LVL86:
.L52:
	.loc 1 265 0
	retw.n
.LFE14:
	.size	nghttp2_bufs_wrap_init2, .-nghttp2_bufs_wrap_init2
	.section	.text.nghttp2_bufs_wrap_free,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_wrap_free
	.type	nghttp2_bufs_wrap_free, @function
nghttp2_bufs_wrap_free:
.LFB15:
	.loc 1 267 0
.LVL87:
	entry	sp, 32
.LCFI16:
	.loc 1 268 0
	beqz.n	a2, .L56
	.loc 1 272 0
	l32i.n	a11, a2, 0
	beqz.n	a11, .L56
	.loc 1 273 0
	l32i.n	a10, a2, 8
	call8	nghttp2_mem_free
.LVL88:
.L56:
	retw.n
.LFE15:
	.size	nghttp2_bufs_wrap_free, .-nghttp2_bufs_wrap_free
	.section	.text.nghttp2_bufs_seek_last_present,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_seek_last_present
	.type	nghttp2_bufs_seek_last_present, @function
nghttp2_bufs_seek_last_present:
.LFB16:
	.loc 1 277 0
.LVL89:
	entry	sp, 32
.LCFI17:
	.loc 1 280 0
	l32i.n	a8, a2, 4
.LVL90:
	j	.L65
.L67:
	.loc 1 281 0
	l32i.n	a10, a8, 16
	l32i.n	a9, a8, 12
	beq	a10, a9, .L64
	.loc 1 284 0 discriminator 2
	s32i.n	a8, a2, 4
	.loc 1 280 0 discriminator 2
	l32i.n	a8, a8, 0
.LVL91:
.L65:
	.loc 1 280 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L67
.L64:
	retw.n
.LFE16:
	.size	nghttp2_bufs_seek_last_present, .-nghttp2_bufs_seek_last_present
	.section	.text.nghttp2_bufs_len,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_len
	.type	nghttp2_bufs_len, @function
nghttp2_bufs_len:
.LFB17:
	.loc 1 289 0 is_stmt 1
.LVL92:
	entry	sp, 32
.LCFI18:
.LVL93:
	.loc 1 294 0
	l32i.n	a8, a2, 0
.LVL94:
	.loc 1 293 0
	movi.n	a2, 0
.LVL95:
	.loc 1 294 0
	j	.L69
.LVL96:
.L70:
	.loc 1 295 0 discriminator 3
	l32i.n	a9, a8, 16
	l32i.n	a10, a8, 12
	.loc 1 294 0 discriminator 3
	l32i.n	a8, a8, 0
.LVL97:
	.loc 1 295 0 discriminator 3
	sub	a9, a9, a10
	add.n	a2, a2, a9
.LVL98:
.L69:
	.loc 1 294 0 discriminator 1
	bnez.n	a8, .L70
	.loc 1 299 0
	retw.n
.LFE17:
	.size	nghttp2_bufs_len, .-nghttp2_bufs_len
	.section	.text.nghttp2_bufs_add,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_add
	.type	nghttp2_bufs_add, @function
nghttp2_bufs_add:
.LFB19:
	.loc 1 333 0
.LVL99:
	entry	sp, 32
.LCFI19:
.LVL100:
	.loc 1 333 0
	mov.n	a6, a2
	.loc 1 341 0
	j	.L72
.LVL101:
.L76:
	.loc 1 342 0
	l32i.n	a2, a6, 4
.LVL102:
	.loc 1 344 0
	l32i.n	a10, a2, 16
	l32i.n	a5, a2, 8
	sub	a5, a5, a10
	minu	a5, a5, a4
.LVL103:
	.loc 1 345 0
	bnez.n	a5, .L73
	.loc 1 346 0
	mov.n	a10, a6
	call8	bufs_alloc_chain
.LVL104:
	.loc 1 347 0
	beqz.n	a10, .L72
	j	.L77
.LVL105:
.L73:
	.loc 1 353 0
	mov.n	a11, a3
	mov.n	a12, a5
	call8	nghttp2_cpymem
.LVL106:
	s32i.n	a10, a2, 16
	.loc 1 354 0
	add.n	a3, a3, a5
.LVL107:
	.loc 1 355 0
	sub	a4, a4, a5
.LVL108:
.L72:
	.loc 1 341 0
	bnez.n	a4, .L76
	.loc 1 358 0
	mov.n	a2, a4
	retw.n
.LVL109:
.L77:
	.loc 1 346 0
	mov.n	a2, a10
.LVL110:
	.loc 1 359 0
	retw.n
.LFE19:
	.size	nghttp2_bufs_add, .-nghttp2_bufs_add
	.section	.text.nghttp2_bufs_addb,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_addb
	.type	nghttp2_bufs_addb, @function
nghttp2_bufs_addb:
.LFB21:
	.loc 1 379 0
.LVL111:
	entry	sp, 32
.LCFI20:
	.loc 1 382 0
	mov.n	a10, a2
	.loc 1 379 0
	extui	a3, a3, 0, 8
	.loc 1 382 0
	call8	bufs_ensure_addb
.LVL112:
	.loc 1 383 0
	bnez.n	a10, .L79
	.loc 1 387 0
	l32i.n	a9, a2, 4
	l32i.n	a8, a9, 16
	addi.n	a2, a8, 1
.LVL113:
	s32i.n	a2, a9, 16
	s8i	a3, a8, 0
.L79:
	.loc 1 390 0
	mov.n	a2, a10
	retw.n
.LFE21:
	.size	nghttp2_bufs_addb, .-nghttp2_bufs_addb
	.section	.text.nghttp2_bufs_addb_hold,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_addb_hold
	.type	nghttp2_bufs_addb_hold, @function
nghttp2_bufs_addb_hold:
.LFB22:
	.loc 1 392 0
.LVL114:
	entry	sp, 32
.LCFI21:
	.loc 1 395 0
	mov.n	a10, a2
	.loc 1 392 0
	extui	a3, a3, 0, 8
	.loc 1 395 0
	call8	bufs_ensure_addb
.LVL115:
	.loc 1 396 0
	bnez.n	a10, .L81
	.loc 1 400 0
	l32i.n	a2, a2, 4
.LVL116:
	l32i.n	a2, a2, 16
	s8i	a3, a2, 0
.L81:
	.loc 1 403 0
	mov.n	a2, a10
	retw.n
.LFE22:
	.size	nghttp2_bufs_addb_hold, .-nghttp2_bufs_addb_hold
	.section	.text.nghttp2_bufs_orb,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_orb
	.type	nghttp2_bufs_orb, @function
nghttp2_bufs_orb:
.LFB23:
	.loc 1 405 0
.LVL117:
	entry	sp, 32
.LCFI22:
	.loc 1 408 0
	mov.n	a10, a2
	.loc 1 405 0
	extui	a3, a3, 0, 8
	.loc 1 408 0
	call8	bufs_ensure_addb
.LVL118:
	.loc 1 409 0
	bnez.n	a10, .L83
	.loc 1 413 0
	l32i.n	a9, a2, 4
	l32i.n	a8, a9, 16
	addi.n	a2, a8, 1
.LVL119:
	s32i.n	a2, a9, 16
	l8ui	a9, a8, 0
	or	a3, a3, a9
.LVL120:
	s8i	a3, a8, 0
.L83:
	.loc 1 416 0
	mov.n	a2, a10
	retw.n
.LFE23:
	.size	nghttp2_bufs_orb, .-nghttp2_bufs_orb
	.section	.text.nghttp2_bufs_orb_hold,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_orb_hold
	.type	nghttp2_bufs_orb_hold, @function
nghttp2_bufs_orb_hold:
.LFB24:
	.loc 1 418 0
.LVL121:
	entry	sp, 32
.LCFI23:
	.loc 1 421 0
	mov.n	a10, a2
	.loc 1 418 0
	extui	a3, a3, 0, 8
	.loc 1 421 0
	call8	bufs_ensure_addb
.LVL122:
	.loc 1 422 0
	bnez.n	a10, .L85
	.loc 1 426 0
	l32i.n	a2, a2, 4
.LVL123:
	l32i.n	a9, a2, 16
	l8ui	a8, a9, 0
	or	a3, a3, a8
.LVL124:
	s8i	a3, a9, 0
.L85:
	.loc 1 429 0
	mov.n	a2, a10
	retw.n
.LFE24:
	.size	nghttp2_bufs_orb_hold, .-nghttp2_bufs_orb_hold
	.section	.text.nghttp2_bufs_remove,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_remove
	.type	nghttp2_bufs_remove, @function
nghttp2_bufs_remove:
.LFB25:
	.loc 1 431 0
.LVL125:
	entry	sp, 32
.LCFI24:
.LVL126:
	.loc 1 440 0
	l32i.n	a8, a2, 0
.LVL127:
	.loc 1 438 0
	movi.n	a4, 0
	.loc 1 440 0
	j	.L87
.LVL128:
.L88:
	.loc 1 441 0 discriminator 3
	l32i.n	a5, a8, 16
	l32i.n	a9, a8, 12
	.loc 1 440 0 discriminator 3
	l32i.n	a8, a8, 0
.LVL129:
	.loc 1 441 0 discriminator 3
	sub	a5, a5, a9
	add.n	a4, a4, a5
.LVL130:
.L87:
	.loc 1 440 0 discriminator 1
	bnez.n	a8, .L88
	.loc 1 444 0
	beqz.n	a4, .L89
	.loc 1 449 0
	l32i.n	a10, a2, 8
	mov.n	a11, a4
	call8	nghttp2_mem_malloc
.LVL131:
	mov.n	a5, a10
.LVL132:
	.loc 1 451 0
	movi	a8, -0x385
	.loc 1 450 0
	beqz.n	a10, .L89
.LVL133:
	.loc 1 456 0
	l32i.n	a2, a2, 0
.LVL134:
	j	.L90
.LVL135:
.L91:
	.loc 1 458 0 discriminator 3
	l32i.n	a11, a2, 12
	l32i.n	a12, a2, 16
	sub	a12, a12, a11
	call8	nghttp2_cpymem
.LVL136:
	.loc 1 456 0 discriminator 3
	l32i.n	a2, a2, 0
.LVL137:
.L90:
	.loc 1 456 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L91
	.loc 1 461 0 is_stmt 1
	s32i.n	a5, a3, 0
	.loc 1 463 0
	mov.n	a8, a4
.LVL138:
.L89:
	.loc 1 464 0
	mov.n	a2, a8
	retw.n
.LFE25:
	.size	nghttp2_bufs_remove, .-nghttp2_bufs_remove
	.section	.text.nghttp2_bufs_remove_copy,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_remove_copy
	.type	nghttp2_bufs_remove_copy, @function
nghttp2_bufs_remove_copy:
.LFB26:
	.loc 1 466 0
.LVL139:
	entry	sp, 32
.LCFI25:
	.loc 1 472 0
	mov.n	a10, a2
	call8	nghttp2_bufs_len
.LVL140:
	.loc 1 466 0
	mov.n	a4, a2
	.loc 1 472 0
	mov.n	a2, a10
.LVL141:
	j	.L98
.LVL142:
.L97:
	.loc 1 478 0 discriminator 3
	l32i.n	a11, a4, 12
	l32i.n	a12, a4, 16
	mov.n	a10, a3
	sub	a12, a12, a11
	call8	nghttp2_cpymem
.LVL143:
	mov.n	a3, a10
.LVL144:
.L98:
	.loc 1 476 0 discriminator 3
	l32i.n	a4, a4, 0
.LVL145:
	bnez.n	a4, .L97
	.loc 1 482 0
	retw.n
.LFE26:
	.size	nghttp2_bufs_remove_copy, .-nghttp2_bufs_remove_copy
	.section	.text.nghttp2_bufs_reset,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_reset
	.type	nghttp2_bufs_reset, @function
nghttp2_bufs_reset:
.LFB27:
	.loc 1 484 0
.LVL146:
	entry	sp, 32
.LCFI26:
	.loc 1 488 0
	l32i.n	a9, a2, 24
.LVL147:
	.loc 1 490 0
	l32i.n	a8, a2, 0
.LVL148:
	j	.L100
.L102:
.LVL149:
	.loc 1 492 0
	l32i.n	a3, a2, 28
.LBB36:
.LBB37:
	.loc 1 81 0
	l32i.n	a4, a8, 4
.LBE37:
.LBE36:
	.loc 1 494 0
	addi.n	a9, a9, -1
.LVL150:
	.loc 1 492 0
	add.n	a3, a4, a3
	s32i.n	a3, a8, 12
	s32i.n	a3, a8, 16
.LBB39:
.LBB38:
	.loc 1 81 0
	s32i.n	a4, a8, 20
	l32i.n	a3, a8, 0
.LBE38:
.LBE39:
	.loc 1 494 0
	beqz.n	a9, .L101
	.loc 1 490 0 discriminator 2
	mov.n	a8, a3
.LVL151:
.L100:
	.loc 1 490 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L102
	j	.L103
.LVL152:
.L104:
	.loc 1 506 0 is_stmt 1
	l32i.n	a4, a2, 8
.LBB40:
.LBB41:
	.loc 1 110 0
	addi.n	a10, a3, 4
	mov.n	a11, a4
.LBE41:
.LBE40:
	.loc 1 504 0
	l32i.n	a5, a3, 0
.LVL153:
.LBB43:
.LBB42:
	.loc 1 110 0
	call8	nghttp2_buf_free
.LVL154:
	.loc 1 111 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	nghttp2_mem_free
.LVL155:
.LBE42:
.LBE43:
	.loc 1 508 0
	mov.n	a3, a5
.LVL156:
.L105:
	.loc 1 503 0 discriminator 1
	bnez.n	a3, .L104
	.loc 1 511 0
	l32i.n	a3, a2, 24
.LVL157:
	s32i.n	a3, a2, 20
.L103:
	.loc 1 514 0
	l32i.n	a3, a2, 0
	s32i.n	a3, a2, 4
	.loc 1 515 0
	retw.n
.LVL158:
.L101:
	.loc 1 501 0
	s32i.n	a9, a8, 0
.LVL159:
	.loc 1 503 0
	j	.L105
.LFE27:
	.size	nghttp2_bufs_reset, .-nghttp2_bufs_reset
	.section	.text.nghttp2_bufs_advance,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_advance
	.type	nghttp2_bufs_advance, @function
nghttp2_bufs_advance:
.LFB28:
	.loc 1 517 0
.LVL160:
	entry	sp, 32
.LCFI27:
	.loc 1 517 0
	mov.n	a10, a2
	call8	bufs_alloc_chain
.LVL161:
	mov.n	a2, a10
.LVL162:
	retw.n
.LFE28:
	.size	nghttp2_bufs_advance, .-nghttp2_bufs_advance
	.section	.text.nghttp2_bufs_next_present,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_next_present
	.type	nghttp2_bufs_next_present, @function
nghttp2_bufs_next_present:
.LFB29:
	.loc 1 519 0
.LVL163:
	entry	sp, 32
.LCFI28:
	.loc 1 522 0
	l32i.n	a2, a2, 4
.LVL164:
	l32i.n	a8, a2, 0
.LVL165:
	.loc 1 524 0
	mov.n	a2, a8
	beqz.n	a8, .L109
	.loc 1 524 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 16
	l32i.n	a8, a8, 12
.LVL166:
	movi.n	a9, 1
	sub	a8, a2, a8
	movi.n	a2, 0
	movnez	a2, a9, a8
.L109:
	.loc 1 525 0 is_stmt 1 discriminator 6
	retw.n
.LFE29:
	.size	nghttp2_bufs_next_present, .-nghttp2_bufs_next_present
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI7-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI8-.LFB5
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
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI13-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI14-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI15-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI16-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI17-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI18-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI20-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI21-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI22-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI23-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI24-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI25-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI26-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI27-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI28-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_buf.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_mem.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_helper.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x119e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xc
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x37
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xcb
	.4byte	0x7c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c
	.byte	0x7
	.byte	0xe7
	.4byte	0x1d7
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 -501
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 -502
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 -503
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 -504
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 -505
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 -506
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 -507
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 -508
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 -509
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 -510
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 -511
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -512
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 -513
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 -514
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 -515
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 -516
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 -517
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -518
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 -519
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 -521
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 -522
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 -523
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 -524
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 -525
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 -526
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 -527
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 -528
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 -529
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 -530
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 -531
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 -532
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 -533
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 -534
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 -535
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 -900
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 -901
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 -902
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 -903
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 -904
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.2byte	0x1ac
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x1b0
	.4byte	0x1fb
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x7
	.2byte	0x1b4
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x1b5
	.4byte	0x1d7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x213
	.uleb128 0xe
	.4byte	0xae
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x8df
	.4byte	0x224
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22a
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x23e
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x8e7
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x250
	.uleb128 0x11
	.4byte	0x260
	.uleb128 0x10
	.4byte	0x73
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x8ef
	.4byte	0x26c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x272
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x28b
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x8f7
	.4byte	0x297
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29d
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	0x73
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0x7
	.2byte	0x920
	.4byte	0x301
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x925
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x929
	.4byte	0x218
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x92d
	.4byte	0x23e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x931
	.4byte	0x260
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x935
	.4byte	0x28b
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x936
	.4byte	0x2b6
	.uleb128 0x12
	.byte	0x14
	.byte	0x8
	.byte	0x25
	.4byte	0x352
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x8
	.byte	0x28
	.4byte	0x1fb
	.byte	0
	.uleb128 0x14
	.string	"end"
	.byte	0x8
	.byte	0x2b
	.4byte	0x1fb
	.byte	0x4
	.uleb128 0x14
	.string	"pos"
	.byte	0x8
	.byte	0x2e
	.4byte	0x1fb
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x8
	.byte	0x31
	.4byte	0x1fb
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x8
	.byte	0x33
	.4byte	0x1fb
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0x34
	.4byte	0x30d
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7c
	.4byte	0x368
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x18
	.byte	0x8
	.byte	0x7f
	.4byte	0x38d
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x8
	.byte	0x82
	.4byte	0x38d
	.byte	0
	.uleb128 0x14
	.string	"buf"
	.byte	0x8
	.byte	0x83
	.4byte	0x352
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x35d
	.uleb128 0x12
	.byte	0x20
	.byte	0x8
	.byte	0x86
	.4byte	0x3fc
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x8
	.byte	0x88
	.4byte	0x38d
	.byte	0
	.uleb128 0x14
	.string	"cur"
	.byte	0x8
	.byte	0x8a
	.4byte	0x38d
	.byte	0x4
	.uleb128 0x14
	.string	"mem"
	.byte	0x8
	.byte	0x8c
	.4byte	0x3fc
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x8
	.byte	0x90
	.4byte	0x68
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x8
	.byte	0x92
	.4byte	0x68
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x8
	.byte	0x94
	.4byte	0x68
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x8
	.byte	0x96
	.4byte	0x68
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x8
	.byte	0x9a
	.4byte	0x68
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x301
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0x9b
	.4byte	0x393
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x12d
	.4byte	0x4c
	.byte	0x1
	.4byte	0x442
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x12d
	.4byte	0x442
	.uleb128 0x18
	.string	"rv"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x4c
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x12f
	.4byte	0x38d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x402
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x169
	.4byte	0x4c
	.byte	0x1
	.4byte	0x47d
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x169
	.4byte	0x442
	.uleb128 0x18
	.string	"rv"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x4c
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x47d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x352
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x4b1
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x47d
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x54
	.4byte	0x1fb
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x54
	.4byte	0x68
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x50
	.4byte	0x47d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x20
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ec
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.4byte	0x47d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52c
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x2d
	.4byte	0x47d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x2d
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x1175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF89
	.byte	0x1
	.byte	0x36
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a5
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.4byte	0x47d
	.4byte	.LLST0
	.uleb128 0x23
	.4byte	.LASF88
	.byte	0x1
	.byte	0x36
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x36
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0x37
	.4byte	0x1fb
	.4byte	.LLST2
	.uleb128 0x24
	.string	"cap"
	.byte	0x1
	.byte	0x38
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LVL7
	.4byte	0x1180
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0x28
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x618
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x28
	.4byte	0x47d
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LASF91
	.byte	0x1
	.byte	0x28
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x28
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0x4c9
	.4byte	0x5fb
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0x52c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.byte	0x59
	.4byte	0x4c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ac
	.uleb128 0x23
	.4byte	.LASF80
	.byte	0x1
	.byte	0x59
	.4byte	0x6ac
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF74
	.byte	0x1
	.byte	0x59
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x5a
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x118b
	.4byte	0x681
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x5a5
	.4byte	0x69b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0x1175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38d
	.uleb128 0x28
	.4byte	0x40d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x717
	.uleb128 0x29
	.4byte	0x41e
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	0x42a
	.uleb128 0x2a
	.4byte	0x435
	.uleb128 0x2b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x29
	.4byte	0x41e
	.4byte	.LLST8
	.uleb128 0x2b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2c
	.4byte	0x42a
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL25
	.4byte	0x618
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x448
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77a
	.uleb128 0x29
	.4byte	0x459
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	0x465
	.uleb128 0x2c
	.4byte	0x470
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x29
	.4byte	0x459
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2a
	.4byte	0x465
	.uleb128 0x2a
	.4byte	0x470
	.uleb128 0x1f
	.4byte	.LVL32
	.4byte	0x40d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x4b1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x795
	.uleb128 0x2e
	.4byte	0x4bd
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x28
	.4byte	0x483
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x2e
	.4byte	0x48f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x4a5
	.4byte	.LLST13
	.byte	0
	.uleb128 0x21
	.4byte	.LASF92
	.byte	0x1
	.byte	0x7d
	.4byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x868
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0x7d
	.4byte	0x442
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF77
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.4byte	.LLST16
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.byte	0x7f
	.4byte	0x3fc
	.4byte	.LLST17
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.byte	0x80
	.4byte	0x4c
	.4byte	.LLST18
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x1
	.byte	0x81
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0x618
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.byte	0x77
	.4byte	0x4c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0x77
	.4byte	0x442
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LASF74
	.byte	0x1
	.byte	0x77
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.byte	0x78
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF78
	.byte	0x1
	.byte	0x78
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x78
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LVL46
	.4byte	0x7c0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF94
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0x72
	.4byte	0x442
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LASF74
	.byte	0x1
	.byte	0x72
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.byte	0x72
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0x73
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0x868
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF128
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x98d
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x1
	.byte	0x6d
	.4byte	0x38d
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0x6d
	.4byte	0x3fc
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0xb6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa20
	.uleb128 0x25
	.4byte	.LASF83
	.byte	0x1
	.byte	0xb6
	.4byte	0x442
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb7
	.4byte	0x38d
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb7
	.4byte	0x38d
	.4byte	.LLST22
	.uleb128 0x32
	.4byte	0x96a
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc0
	.uleb128 0x29
	.4byte	0x981
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	0x976
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LVL54
	.4byte	0x4ec
	.4byte	0xa08
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL55
	.4byte	0x1175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9c
	.4byte	0x442
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9c
	.4byte	0x68
	.4byte	.LLST26
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.byte	0x9d
	.4byte	0x4c
	.4byte	.LLST27
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9e
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL59
	.4byte	0x618
	.4byte	0xa8d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL61
	.4byte	0x98d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF98
	.byte	0x1
	.byte	0xc8
	.4byte	0x4c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3d
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0xc8
	.4byte	0x442
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc8
	.4byte	0x1fb
	.4byte	.LLST29
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0xc9
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x1
	.byte	0xca
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x33
	.4byte	0x483
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xd3
	.4byte	0xb27
	.uleb128 0x29
	.4byte	0x4a5
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	0x49a
	.uleb128 0x29
	.4byte	0x48f
	.4byte	.LLST31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0x118b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x1
	.byte	0xe3
	.4byte	0x4c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3a
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0xe3
	.4byte	0x442
	.4byte	.LLST32
	.uleb128 0x22
	.string	"vec"
	.byte	0x1
	.byte	0xe3
	.4byte	0xc3a
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe4
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"mem"
	.byte	0x1
	.byte	0xe4
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.4byte	0x68
	.4byte	.LLST34
	.uleb128 0x31
	.4byte	.LASF101
	.byte	0x1
	.byte	0xe6
	.4byte	0x38d
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xe7
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF103
	.byte	0x1
	.byte	0xe8
	.4byte	0x6ac
	.4byte	.LLST36
	.uleb128 0x35
	.4byte	0x483
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0xf6
	.4byte	0xbf6
	.uleb128 0x29
	.4byte	0x4a5
	.4byte	.LLST37
	.uleb128 0x29
	.4byte	0x49a
	.4byte	.LLST38
	.uleb128 0x29
	.4byte	0x48f
	.4byte	.LLST39
	.byte	0
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0xa9e
	.4byte	0xc1c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0x118b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc40
	.uleb128 0xe
	.4byte	0x201
	.uleb128 0x36
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc73
	.uleb128 0x37
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x10b
	.4byte	0x442
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LVL88
	.4byte	0x1175
	.byte	0
	.uleb128 0x36
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca5
	.uleb128 0x37
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x115
	.4byte	0x442
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.string	"ci"
	.byte	0x1
	.2byte	0x116
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x121
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x121
	.4byte	0x442
	.4byte	.LLST40
	.uleb128 0x3c
	.string	"ci"
	.byte	0x1
	.2byte	0x122
	.4byte	0x38d
	.4byte	.LLST41
	.uleb128 0x3c
	.string	"len"
	.byte	0x1
	.2byte	0x123
	.4byte	0x68
	.4byte	.LLST42
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x14d
	.4byte	0x4c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9f
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x14d
	.4byte	0x442
	.4byte	.LLST43
	.uleb128 0x3b
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x14d
	.4byte	0xa7
	.4byte	.LLST44
	.uleb128 0x3d
	.string	"len"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x68
	.4byte	.LLST45
	.uleb128 0x3c
	.string	"rv"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x4c
	.4byte	.LLST46
	.uleb128 0x3e
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x14f
	.4byte	0x68
	.4byte	.LLST47
	.uleb128 0x3c
	.string	"buf"
	.byte	0x1
	.2byte	0x150
	.4byte	0x47d
	.4byte	.LLST48
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.2byte	0x151
	.4byte	0x20d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x40d
	.4byte	0xd88
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL106
	.4byte	0x1196
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x17b
	.4byte	0x442
	.4byte	.LLST49
	.uleb128 0x3f
	.string	"b"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.string	"rv"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LVL112
	.4byte	0x448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x188
	.4byte	0x4c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe47
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x188
	.4byte	0x442
	.4byte	.LLST50
	.uleb128 0x3f
	.string	"b"
	.byte	0x1
	.2byte	0x188
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.string	"rv"
	.byte	0x1
	.2byte	0x189
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LVL115
	.4byte	0x448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x195
	.4byte	0x4c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9d
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x195
	.4byte	0x442
	.4byte	.LLST51
	.uleb128 0x3d
	.string	"b"
	.byte	0x1
	.2byte	0x195
	.4byte	0xae
	.4byte	.LLST52
	.uleb128 0x39
	.string	"rv"
	.byte	0x1
	.2byte	0x196
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LVL118
	.4byte	0x448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x4c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef3
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x442
	.4byte	.LLST53
	.uleb128 0x3d
	.string	"b"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xae
	.4byte	.LLST54
	.uleb128 0x39
	.string	"rv"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LVL122
	.4byte	0x448
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1af
	.4byte	0x9c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf99
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1af
	.4byte	0x442
	.4byte	.LLST55
	.uleb128 0x3f
	.string	"out"
	.byte	0x1
	.2byte	0x1af
	.4byte	0xf99
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"len"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x68
	.4byte	.LLST56
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x38d
	.4byte	.LLST57
	.uleb128 0x3c
	.string	"buf"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x47d
	.4byte	.LLST58
	.uleb128 0x3c
	.string	"res"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x1fb
	.4byte	.LLST59
	.uleb128 0x3e
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x352
	.4byte	.LLST60
	.uleb128 0x26
	.4byte	.LVL131
	.4byte	0x118b
	.4byte	0xf8f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL136
	.4byte	0x1196
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x3a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103c
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x442
	.4byte	.LLST61
	.uleb128 0x3d
	.string	"out"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1fb
	.4byte	.LLST62
	.uleb128 0x39
	.string	"len"
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x68
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x38d
	.4byte	.LLST63
	.uleb128 0x3c
	.string	"buf"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x47d
	.4byte	.LLST64
	.uleb128 0x3e
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x352
	.4byte	.LLST65
	.uleb128 0x26
	.4byte	.LVL140
	.4byte	0xca5
	.4byte	0x102b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL143
	.4byte	0x1196
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1e4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ff
	.uleb128 0x37
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x442
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x38d
	.4byte	.LLST66
	.uleb128 0x3c
	.string	"ci"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x38d
	.4byte	.LLST67
	.uleb128 0x3c
	.string	"k"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x68
	.4byte	.LLST68
	.uleb128 0x40
	.4byte	0x4b1
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x10ab
	.uleb128 0x29
	.4byte	0x4bd
	.4byte	.LLST69
	.byte	0
	.uleb128 0x41
	.4byte	0x96a
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1fa
	.uleb128 0x29
	.4byte	0x981
	.4byte	.LLST70
	.uleb128 0x29
	.4byte	0x976
	.4byte	.LLST71
	.uleb128 0x26
	.4byte	.LVL154
	.4byte	0x4ec
	.4byte	0x10e7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL155
	.4byte	0x1175
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x205
	.4byte	0x4c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113a
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x205
	.4byte	0x442
	.4byte	.LLST72
	.uleb128 0x1f
	.4byte	.LVL161
	.4byte	0x40d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x207
	.4byte	0x4c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1175
	.uleb128 0x3b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x207
	.4byte	0x442
	.4byte	.LLST73
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x208
	.4byte	0x38d
	.4byte	.LLST74
	.byte	0
	.uleb128 0x42
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x9
	.byte	0x28
	.uleb128 0x42
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x9
	.byte	0x2b
	.uleb128 0x42
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x9
	.byte	0x27
	.uleb128 0x42
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xa
	.byte	0x78
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x7
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL32-1
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
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
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x72
	.sleb128 28
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL63
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x7a
	.sleb128 20
	.4byte	.LVL70
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL71
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL99
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL125
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL134
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x14
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL135
	.4byte	.LVL136-1
	.2byte	0x14
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136-1
	.4byte	.LVL136
	.2byte	0x13
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x14
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x14
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LFE26
	.2byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL158
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL152
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL159
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL147
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL158
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LFE27
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL166
	.4byte	.LFE29
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xfc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF106:
	.string	"nghttp2_bufs_len"
.LASF101:
	.string	"cur_chain"
.LASF99:
	.string	"nghttp2_bufs_wrap_init2"
.LASF68:
	.string	"last"
.LASF51:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF46:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF85:
	.string	"nghttp2_buf_reset"
.LASF112:
	.string	"nghttp2_bufs_orb"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF96:
	.string	"next_chain"
.LASF41:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF66:
	.string	"nghttp2_mem"
.LASF39:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF91:
	.string	"initial"
.LASF4:
	.string	"unsigned int"
.LASF72:
	.string	"next"
.LASF73:
	.string	"head"
.LASF93:
	.string	"nghttp2_bufs_init2"
.LASF92:
	.string	"nghttp2_bufs_init3"
.LASF38:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF35:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF71:
	.string	"nghttp2_buf_chain"
.LASF126:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/nghttp"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF48:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF59:
	.string	"nghttp2_calloc"
.LASF64:
	.string	"calloc"
.LASF47:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF123:
	.string	"nghttp2_cpymem"
.LASF53:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF74:
	.string	"chunk_length"
.LASF57:
	.string	"nghttp2_malloc"
.LASF104:
	.string	"nghttp2_bufs_wrap_free"
.LASF97:
	.string	"nghttp2_bufs_realloc"
.LASF62:
	.string	"malloc"
.LASF75:
	.string	"max_chunk"
.LASF55:
	.string	"base"
.LASF6:
	.string	"long long unsigned int"
.LASF50:
	.string	"NGHTTP2_ERR_FATAL"
.LASF105:
	.string	"nghttp2_bufs_seek_last_present"
.LASF31:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF23:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF115:
	.string	"resbuf"
.LASF124:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF90:
	.string	"nghttp2_buf_init2"
.LASF83:
	.string	"bufs"
.LASF8:
	.string	"size_t"
.LASF78:
	.string	"offset"
.LASF40:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF49:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF102:
	.string	"head_chain"
.LASF63:
	.string	"free"
.LASF127:
	.string	"buf_chain_new"
.LASF94:
	.string	"nghttp2_bufs_init"
.LASF87:
	.string	"nghttp2_buf_free"
.LASF79:
	.string	"nghttp2_bufs"
.LASF22:
	.string	"NGHTTP2_ERR_EOF"
.LASF128:
	.string	"buf_chain_del"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF13:
	.string	"char"
.LASF100:
	.string	"veclen"
.LASF58:
	.string	"nghttp2_free"
.LASF116:
	.string	"nghttp2_bufs_remove_copy"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF118:
	.string	"nghttp2_bufs_advance"
.LASF108:
	.string	"data"
.LASF14:
	.string	"ssize_t"
.LASF110:
	.string	"nghttp2_bufs_addb"
.LASF15:
	.string	"uint8_t"
.LASF60:
	.string	"nghttp2_realloc"
.LASF111:
	.string	"nghttp2_bufs_addb_hold"
.LASF30:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF45:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF121:
	.string	"nghttp2_mem_realloc"
.LASF5:
	.string	"long long int"
.LASF69:
	.string	"mark"
.LASF122:
	.string	"nghttp2_mem_malloc"
.LASF81:
	.string	"bufs_alloc_chain"
.LASF107:
	.string	"nghttp2_bufs_add"
.LASF42:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF114:
	.string	"nghttp2_bufs_remove"
.LASF77:
	.string	"chunk_keep"
.LASF37:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF119:
	.string	"nghttp2_bufs_next_present"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF56:
	.string	"nghttp2_vec"
.LASF120:
	.string	"nghttp2_mem_free"
.LASF98:
	.string	"nghttp2_bufs_wrap_init"
.LASF36:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF18:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF17:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF103:
	.string	"dst_chain"
.LASF2:
	.string	"short int"
.LASF61:
	.string	"mem_user_data"
.LASF43:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF9:
	.string	"long int"
.LASF109:
	.string	"nwrite"
.LASF89:
	.string	"nghttp2_buf_reserve"
.LASF24:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF70:
	.string	"nghttp2_buf"
.LASF7:
	.string	"__uint8_t"
.LASF19:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF84:
	.string	"nghttp2_buf_wrap_init"
.LASF32:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF82:
	.string	"bufs_ensure_addb"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF86:
	.string	"nghttp2_buf_init"
.LASF117:
	.string	"nghttp2_bufs_reset"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"NGHTTP2_ERR_PROTO"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF54:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF44:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF52:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF65:
	.string	"realloc"
.LASF76:
	.string	"chunk_used"
.LASF25:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF10:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF67:
	.string	"begin"
.LASF80:
	.string	"chain"
.LASF113:
	.string	"nghttp2_bufs_orb_hold"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF95:
	.string	"nghttp2_bufs_free"
.LASF88:
	.string	"new_cap"
.LASF125:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/nghttp/nghttp2/lib/nghttp2_buf.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
