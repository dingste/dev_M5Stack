	.file	"utils.c"
	.text
.Ltext0:
	.section	.text._sodium_memzero_as_a_weak_symbol_to_prevent_lto,"ax",@progbits
	.literal_position
	.align	4
	.weak	_sodium_memzero_as_a_weak_symbol_to_prevent_lto
	.type	_sodium_memzero_as_a_weak_symbol_to_prevent_lto, @function
_sodium_memzero_as_a_weak_symbol_to_prevent_lto:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/utils.c"
	.loc 1 69 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	add.n	a3, a2, a3
.LVL2:
	.loc 1 74 0
	movi.n	a8, 0
	.loc 1 73 0
	j	.L2
.LVL3:
.L3:
	.loc 1 74 0
	s8i	a8, a2, 0
	addi.n	a2, a2, 1
.LVL4:
.L2:
	.loc 1 73 0
	bne	a2, a3, .L3
	.loc 1 76 0
	retw.n
.LFE0:
	.size	_sodium_memzero_as_a_weak_symbol_to_prevent_lto, .-_sodium_memzero_as_a_weak_symbol_to_prevent_lto
	.section	.text.sodium_memzero,"ax",@progbits
	.align	4
	.global	sodium_memzero
	.type	sodium_memzero, @function
sodium_memzero:
.LFB1:
	.loc 1 81 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 91 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_memzero_as_a_weak_symbol_to_prevent_lto
.LVL6:
	retw.n
.LFE1:
	.size	sodium_memzero, .-sodium_memzero
	.section	.text._sodium_dummy_symbol_to_prevent_memcmp_lto,"ax",@progbits
	.align	4
	.weak	_sodium_dummy_symbol_to_prevent_memcmp_lto
	.type	_sodium_dummy_symbol_to_prevent_memcmp_lto, @function
_sodium_dummy_symbol_to_prevent_memcmp_lto:
.LFB27:
	entry	sp, 32
.LCFI2:
	retw.n
.LFE27:
	.size	_sodium_dummy_symbol_to_prevent_memcmp_lto, .-_sodium_dummy_symbol_to_prevent_memcmp_lto
	.section	.text.sodium_memcmp,"ax",@progbits
	.align	4
	.global	sodium_memcmp
	.type	sodium_memcmp, @function
sodium_memcmp:
.LFB3:
	.loc 1 117 0
.LVL7:
	.loc 1 117 0
	entry	sp, 32
.LCFI3:
.LVL8:
	.loc 1 131 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_dummy_symbol_to_prevent_memcmp_lto
.LVL9:
	add.n	a4, a2, a4
.LVL10:
	.loc 1 128 0
	movi.n	a8, 0
	.loc 1 133 0
	j	.L7
.LVL11:
.L8:
	.loc 1 134 0 discriminator 3
	l8ui	a10, a2, 0
	l8ui	a9, a3, 0
	addi.n	a2, a2, 1
.LVL12:
	xor	a9, a10, a9
	or	a8, a8, a9
.LVL13:
	extui	a8, a8, 0, 8
.LVL14:
	addi.n	a3, a3, 1
.LVL15:
.L7:
	.loc 1 133 0 discriminator 1
	bne	a2, a4, .L8
	.loc 1 136 0
	addi.n	a2, a8, -1
.LVL16:
	extui	a2, a2, 8, 1
	.loc 1 137 0
	addi.n	a2, a2, -1
	retw.n
.LFE3:
	.size	sodium_memcmp, .-sodium_memcmp
	.section	.text._sodium_dummy_symbol_to_prevent_compare_lto,"ax",@progbits
	.align	4
	.weak	_sodium_dummy_symbol_to_prevent_compare_lto
	.type	_sodium_dummy_symbol_to_prevent_compare_lto, @function
_sodium_dummy_symbol_to_prevent_compare_lto:
.LFB4:
	.loc 1 144 0
.LVL17:
	entry	sp, 32
.LCFI4:
	retw.n
.LFE4:
	.size	_sodium_dummy_symbol_to_prevent_compare_lto, .-_sodium_dummy_symbol_to_prevent_compare_lto
	.section	.text.sodium_compare,"ax",@progbits
	.align	4
	.global	sodium_compare
	.type	sodium_compare, @function
sodium_compare:
.LFB5:
	.loc 1 153 0
.LVL18:
	.loc 1 153 0
	entry	sp, 32
.LCFI5:
.LVL19:
	.loc 1 168 0
	mov.n	a11, a3
	mov.n	a10, a2
	mov.n	a12, a4
	call8	_sodium_dummy_symbol_to_prevent_compare_lto
.LVL20:
	.loc 1 164 0
	movi.n	a10, 1
	.loc 1 163 0
	movi.n	a11, 0
	.loc 1 171 0
	j	.L11
.LVL21:
.L12:
	.loc 1 172 0
	addi.n	a4, a4, -1
.LVL22:
	.loc 1 173 0
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	l8ui	a8, a8, 0
	extui	a10, a10, 0, 8
.LVL23:
	sub	a12, a9, a8
	.loc 1 174 0
	xor	a9, a9, a8
	addi.n	a9, a9, -1
	.loc 1 173 0
	srai	a12, a12, 8
	.loc 1 174 0
	srai	a9, a9, 8
	.loc 1 173 0
	and	a12, a12, a10
	.loc 1 174 0
	and	a8, a10, a9
	.loc 1 173 0
	or	a11, a12, a11
.LVL24:
	.loc 1 174 0
	extui	a10, a8, 0, 8
.LVL25:
.L11:
	.loc 1 171 0
	bnez.n	a4, .L12
	.loc 1 176 0
	addx2	a2, a11, a10
.LVL26:
	.loc 1 177 0
	addi.n	a2, a2, -1
	retw.n
.LFE5:
	.size	sodium_compare, .-sodium_compare
	.section	.text.sodium_is_zero,"ax",@progbits
	.align	4
	.global	sodium_is_zero
	.type	sodium_is_zero, @function
sodium_is_zero:
.LFB6:
	.loc 1 181 0
.LVL27:
	entry	sp, 32
.LCFI6:
.LVL28:
	add.n	a3, a2, a3
.LVL29:
	.loc 1 183 0
	movi.n	a8, 0
	.loc 1 185 0
	j	.L14
.LVL30:
.L15:
	.loc 1 186 0 discriminator 3
	l8ui	a9, a2, 0
	addi.n	a2, a2, 1
.LVL31:
	or	a8, a8, a9
.LVL32:
.L14:
	.loc 1 185 0 discriminator 1
	bne	a2, a3, .L15
	.loc 1 188 0
	addi.n	a2, a8, -1
.LVL33:
	.loc 1 189 0
	extui	a2, a2, 8, 1
	retw.n
.LFE6:
	.size	sodium_is_zero, .-sodium_is_zero
	.section	.text.sodium_increment,"ax",@progbits
	.align	4
	.global	sodium_increment
	.type	sodium_increment, @function
sodium_increment:
.LFB7:
	.loc 1 193 0
.LVL34:
	entry	sp, 32
.LCFI7:
.LVL35:
	add.n	a3, a2, a3
.LVL36:
	.loc 1 195 0
	movi.n	a8, 1
	.loc 1 231 0
	j	.L17
.LVL37:
.L18:
	.loc 1 232 0 discriminator 2
	l8ui	a9, a2, 0
	add.n	a8, a9, a8
.LVL38:
	.loc 1 233 0 discriminator 2
	s8i	a8, a2, 0
	.loc 1 234 0 discriminator 2
	srli	a8, a8, 8
.LVL39:
	addi.n	a2, a2, 1
.LVL40:
.L17:
	.loc 1 231 0 discriminator 1
	bne	a2, a3, .L18
	.loc 1 236 0
	retw.n
.LFE7:
	.size	sodium_increment, .-sodium_increment
	.section	.text.sodium_add,"ax",@progbits
	.align	4
	.global	sodium_add
	.type	sodium_add, @function
sodium_add:
.LFB8:
	.loc 1 240 0
.LVL41:
	entry	sp, 32
.LCFI8:
.LVL42:
	add.n	a4, a2, a4
.LVL43:
	.loc 1 242 0
	movi.n	a8, 0
	.loc 1 280 0
	j	.L20
.LVL44:
.L21:
	.loc 1 281 0 discriminator 2
	l8ui	a10, a2, 0
	l8ui	a9, a3, 0
	addi.n	a3, a3, 1
	add.n	a9, a10, a9
	add.n	a8, a9, a8
.LVL45:
	.loc 1 282 0 discriminator 2
	s8i	a8, a2, 0
	.loc 1 283 0 discriminator 2
	srli	a8, a8, 8
.LVL46:
	addi.n	a2, a2, 1
.LVL47:
.L20:
	.loc 1 280 0 discriminator 1
	bne	a2, a4, .L21
	.loc 1 285 0
	retw.n
.LFE8:
	.size	sodium_add, .-sodium_add
	.section	.text.sodium_bin2hex,"ax",@progbits
	.literal_position
	.literal .LC2, 2147483646
	.align	4
	.global	sodium_bin2hex
	.type	sodium_bin2hex, @function
sodium_bin2hex:
.LFB9:
	.loc 1 291 0
.LVL48:
	entry	sp, 32
.LCFI9:
.LVL49:
	.loc 1 297 0
	l32r	a8, .LC2
	bltu	a8, a5, .L23
	.loc 1 297 0 is_stmt 0 discriminator 1
	slli	a5, a5, 1
.LVL50:
	bgeu	a5, a3, .L23
	mov.n	a11, a2
	add.n	a5, a2, a5
	.loc 1 303 0 is_stmt 1
	movi	a12, -0x27
	j	.L24
.L23:
	.loc 1 298 0
	call8	abort
.LVL51:
.L25:
	.loc 1 301 0
	l8ui	a9, a4, 0
	addi.n	a4, a4, 1
.LVL52:
	extui	a10, a9, 0, 4
.LVL53:
	.loc 1 303 0
	addi	a8, a10, -10
	srli	a8, a8, 8
	.loc 1 302 0
	srli	a9, a9, 4
.LVL54:
	.loc 1 303 0
	addi	a10, a10, 87
.LVL55:
	and	a8, a8, a12
	add.n	a8, a8, a10
	addi	a10, a9, -10
.LVL56:
	srli	a10, a10, 8
	and	a10, a10, a12
	addi	a9, a9, 87
.LVL57:
	extui	a8, a8, 0, 8
	add.n	a9, a10, a9
.LVL58:
	slli	a8, a8, 8
	extui	a9, a9, 0, 8
	or	a8, a8, a9
.LVL59:
	.loc 1 305 0
	s8i	a8, a11, 0
.LVL60:
	.loc 1 307 0
	srli	a8, a8, 8
.LVL61:
	s8i	a8, a11, 1
.LVL62:
	addi.n	a11, a11, 2
.LVL63:
.L24:
	.loc 1 300 0
	bne	a5, a11, .L25
	.loc 1 310 0
	movi.n	a4, 0
.LVL64:
	s8i	a4, a5, 0
	.loc 1 313 0
	retw.n
.LFE9:
	.size	sodium_bin2hex, .-sodium_bin2hex
	.section	.text.sodium_hex2bin,"ax",@progbits
	.align	4
	.global	sodium_hex2bin
	.type	sodium_hex2bin, @function
sodium_hex2bin:
.LFB10:
	.loc 1 320 0
.LVL65:
	entry	sp, 64
.LCFI10:
.LVL66:
	addi.n	a5, a5, 1
.LVL67:
	.loc 1 320 0
	s32i.n	a3, sp, 12
	.loc 1 329 0
	movi.n	a3, 0
.LVL68:
	.loc 1 320 0
	mov.n	a13, a6
	s32i.n	a5, sp, 4
	s32i.n	a2, sp, 8
	mov.n	a12, a4
	.loc 1 331 0
	movi.n	a5, 1
.LVL69:
	.loc 1 325 0
	s32i.n	a3, sp, 0
	.loc 1 321 0
	mov.n	a6, a3
.LVL70:
	.loc 1 331 0
	j	.L27
.LVL71:
.L35:
	.loc 1 332 0
	l8ui	a11, a12, 0
.LVL72:
	.loc 1 333 0
	movi.n	a8, 0x30
	xor	a15, a11, a8
	.loc 1 335 0
	movi	a8, -0x21
	and	a9, a11, a8
	addi	a9, a9, -55
	extui	a9, a9, 0, 8
	.loc 1 336 0
	addi	a14, a9, -10
	.loc 1 333 0
	extui	a15, a15, 0, 8
.LVL73:
	.loc 1 336 0
	addi	a8, a9, -16
	xor	a8, a14, a8
	.loc 1 334 0
	addi	a10, a15, -10
	extui	a10, a10, 8, 8
.LVL74:
	.loc 1 336 0
	extui	a8, a8, 8, 8
.LVL75:
	.loc 1 337 0
	or	a14, a10, a8
	bnez.n	a14, .L28
	.loc 1 338 0
	movi.n	a8, 1
.LVL76:
	moveqz	a8, a14, a13
	beqz.n	a8, .L38
	movi.n	a8, 1
	movnez	a8, a14, a3
	beqz.n	a8, .L38
	.loc 1 338 0 discriminator 1
	mov.n	a10, a13
.LVL77:
	s32i.n	a12, sp, 16
.LVL78:
	s32i.n	a13, sp, 20
	s32i.n	a14, sp, 24
	call8	strchr
.LVL79:
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	l32i.n	a14, sp, 24
	bnez.n	a10, .L39
.LVL80:
	j	.L31
.LVL81:
.L28:
	.loc 1 344 0
	and	a8, a9, a8
.LVL82:
	and	a10, a15, a10
.LVL83:
	or	a10, a10, a8
.LVL84:
	.loc 1 345 0
	l32i.n	a8, sp, 12
	bltu	a6, a8, .L32
.LVL85:
	.loc 1 347 0
	call8	__errno
.LVL86:
	movi.n	a8, 0x22
	s32i.n	a8, a10, 0
	.loc 1 346 0
	movi.n	a10, -1
	.loc 1 348 0
	j	.L29
.LVL87:
.L32:
	.loc 1 350 0
	bnez.n	a3, .L33
	.loc 1 351 0
	slli	a10, a10, 4
.LVL88:
	extui	a10, a10, 0, 8
	s32i.n	a10, sp, 0
.LVL89:
	j	.L34
.LVL90:
.L33:
	.loc 1 353 0
	l32i.n	a8, sp, 8
	add.n	a2, a8, a6
.LVL91:
	l32i.n	a8, sp, 0
	addi.n	a6, a6, 1
.LVL92:
	or	a10, a8, a10
.LVL93:
	s8i	a10, a2, 0
.LVL94:
.L34:
	.loc 1 355 0
	movi.n	a2, -1
	xor	a3, a2, a3
.LVL95:
	extui	a3, a3, 0, 8
.LVL96:
	j	.L30
.LVL97:
.L39:
	mov.n	a3, a14
.LVL98:
.L30:
	addi.n	a5, a5, 1
	addi.n	a12, a12, 1
.LVL99:
.L27:
	.loc 1 331 0
	l32i.n	a8, sp, 4
	addi.n	a2, a5, -1
.LVL100:
	bne	a5, a8, .L35
.L38:
	.loc 1 323 0
	movi.n	a10, 0
.LVL101:
.L29:
	.loc 1 359 0
	addi	a5, a5, -2
	movnez	a2, a5, a3
.LVL102:
.L31:
	.loc 1 361 0
	l32i	a3, sp, 64
.LVL103:
	beqz.n	a3, .L36
	.loc 1 362 0
	add.n	a4, a4, a2
.LVL104:
	s32i.n	a4, a3, 0
.L36:
	.loc 1 364 0
	beqz.n	a7, .L37
	.loc 1 365 0
	s32i.n	a6, a7, 0
.L37:
	.loc 1 368 0
	mov.n	a2, a10
.LVL105:
	retw.n
.LFE10:
	.size	sodium_hex2bin, .-sodium_hex2bin
	.section	.text._sodium_alloc_init,"ax",@progbits
	.literal_position
	.literal .LC3, canary
	.align	4
	.global	_sodium_alloc_init
	.type	_sodium_alloc_init, @function
_sodium_alloc_init:
.LFB11:
	.loc 1 372 0
	entry	sp, 32
.LCFI11:
	.loc 1 388 0
	l32r	a10, .LC3
	movi.n	a11, 0x10
	call8	randombytes_buf
.LVL106:
	.loc 1 391 0
	movi.n	a2, 0
	retw.n
.LFE11:
	.size	_sodium_alloc_init, .-_sodium_alloc_init
	.section	.text.sodium_mlock,"ax",@progbits
	.align	4
	.global	sodium_mlock
	.type	sodium_mlock, @function
sodium_mlock:
.LFB12:
	.loc 1 395 0
.LVL107:
	entry	sp, 32
.LCFI12:
	.loc 1 404 0
	call8	__errno
.LVL108:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 407 0
	movi.n	a2, -1
.LVL109:
	retw.n
.LFE12:
	.size	sodium_mlock, .-sodium_mlock
	.section	.text.sodium_munlock,"ax",@progbits
	.align	4
	.global	sodium_munlock
	.type	sodium_munlock, @function
sodium_munlock:
.LFB13:
	.loc 1 411 0
.LVL110:
	entry	sp, 32
.LCFI13:
.LVL111:
.LBB4:
.LBB5:
	.loc 1 91 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_memzero_as_a_weak_symbol_to_prevent_lto
.LVL112:
.LBE5:
.LBE4:
	.loc 1 421 0
	call8	__errno
.LVL113:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 424 0
	movi.n	a2, -1
.LVL114:
	retw.n
.LFE13:
	.size	sodium_munlock, .-sodium_munlock
	.section	.text.sodium_malloc,"ax",@progbits
	.align	4
	.global	sodium_malloc
	.type	sodium_malloc, @function
sodium_malloc:
.LFB18:
	.loc 1 596 0
.LVL115:
	entry	sp, 32
.LCFI14:
.LVL116:
.LBB8:
.LBB9:
	.loc 1 548 0
	movi.n	a10, 1
	movnez	a10, a2, a2
	call8	malloc
.LVL117:
	mov.n	a8, a10
.LBE9:
.LBE8:
	.loc 1 599 0
	beqz.n	a10, .L59
	.loc 1 602 0
	mov.n	a12, a2
	movi	a11, 0xdb
	call8	memset
.LVL118:
	mov.n	a8, a10
.L59:
	.loc 1 605 0
	mov.n	a2, a8
.LVL119:
	retw.n
.LFE18:
	.size	sodium_malloc, .-sodium_malloc
	.section	.text.sodium_allocarray,"ax",@progbits
	.align	4
	.global	sodium_allocarray
	.type	sodium_allocarray, @function
sodium_allocarray:
.LFB19:
	.loc 1 609 0
.LVL120:
	entry	sp, 32
.LCFI15:
	.loc 1 612 0
	beqz.n	a2, .L65
	.loc 1 612 0 is_stmt 0 discriminator 1
	movi.n	a8, -1
	quou	a8, a8, a2
	bltu	a3, a8, .L65
	.loc 1 613 0 is_stmt 1
	call8	__errno
.LVL121:
	movi.n	a2, 0xc
.LVL122:
	s32i.n	a2, a10, 0
	.loc 1 614 0
	movi.n	a2, 0
	retw.n
.LVL123:
.L65:
	.loc 1 618 0
	mull	a10, a2, a3
.LVL124:
	call8	sodium_malloc
.LVL125:
	mov.n	a2, a10
.LVL126:
	.loc 1 619 0
	retw.n
.LFE19:
	.size	sodium_allocarray, .-sodium_allocarray
	.section	.text.sodium_free,"ax",@progbits
	.align	4
	.global	sodium_free
	.type	sodium_free, @function
sodium_free:
.LFB20:
	.loc 1 624 0
.LVL127:
	entry	sp, 32
.LCFI16:
	.loc 1 625 0
	mov.n	a10, a2
	call8	free
.LVL128:
	retw.n
.LFE20:
	.size	sodium_free, .-sodium_free
	.section	.text.sodium_mprotect_noaccess,"ax",@progbits
	.align	4
	.global	sodium_mprotect_noaccess
	.type	sodium_mprotect_noaccess, @function
sodium_mprotect_noaccess:
.LFB31:
	entry	sp, 32
.LCFI17:
	call8	__errno
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	movi.n	a2, -1
	retw.n
.LFE31:
	.size	sodium_mprotect_noaccess, .-sodium_mprotect_noaccess
	.section	.text.sodium_mprotect_readonly,"ax",@progbits
	.align	4
	.global	sodium_mprotect_readonly
	.type	sodium_mprotect_readonly, @function
sodium_mprotect_readonly:
.LFB29:
	entry	sp, 32
.LCFI18:
	call8	__errno
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	movi.n	a2, -1
	retw.n
.LFE29:
	.size	sodium_mprotect_readonly, .-sodium_mprotect_readonly
	.section	.text.sodium_mprotect_readwrite,"ax",@progbits
	.align	4
	.global	sodium_mprotect_readwrite
	.type	sodium_mprotect_readwrite, @function
sodium_mprotect_readwrite:
.LFB24:
	.loc 1 699 0
.LVL129:
	.loc 1 699 0
	entry	sp, 32
.LCFI19:
.LVL130:
.LBB12:
.LBB13:
	.loc 1 666 0
	call8	__errno
.LVL131:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
.LBE13:
.LBE12:
	.loc 1 701 0
	movi.n	a2, -1
.LVL132:
	retw.n
.LFE24:
	.size	sodium_mprotect_readwrite, .-sodium_mprotect_readwrite
	.section	.bss.canary,"aw",@nobits
	.type	canary, @object
	.size	canary, 16
canary:
	.zero	16
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI16-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI17-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI18-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI19-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x952
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x87
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x55
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x72
	.uleb128 0x7
	.4byte	0x21
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x296
	.4byte	0x3a
	.byte	0x1
	.4byte	0xde
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x296
	.4byte	0x72
	.uleb128 0xa
	.string	"cb"
	.byte	0x1
	.2byte	0x296
	.4byte	0xf2
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0xf2
	.uleb128 0xc
	.4byte	0x72
	.uleb128 0xc
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xde
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x11b
	.uleb128 0xe
	.string	"pnt"
	.byte	0x1
	.byte	0x50
	.4byte	0xab
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0x50
	.4byte	0xb0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x43
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b
	.uleb128 0x10
	.string	"pnt"
	.byte	0x1
	.byte	0x43
	.4byte	0xab
	.4byte	.LLST0
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x44
	.4byte	0xb0
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x1
	.byte	0x46
	.4byte	0x7b
	.4byte	.LLST2
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.4byte	.LLST3
	.byte	0
	.uleb128 0x13
	.4byte	0xf8
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a3
	.uleb128 0x14
	.4byte	0x104
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	0x10f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x11b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0x1
	.byte	0x74
	.4byte	0x3a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x238
	.uleb128 0x10
	.string	"b1_"
	.byte	0x1
	.byte	0x74
	.4byte	0x238
	.4byte	.LLST4
	.uleb128 0x10
	.string	"b2_"
	.byte	0x1
	.byte	0x74
	.4byte	0x238
	.4byte	.LLST5
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x74
	.4byte	0x21
	.4byte	.LLST6
	.uleb128 0x12
	.string	"b1"
	.byte	0x1
	.byte	0x77
	.4byte	0x23d
	.4byte	.LLST7
	.uleb128 0x12
	.string	"b2"
	.byte	0x1
	.byte	0x78
	.4byte	0x23d
	.4byte	.LLST8
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.4byte	0x21
	.4byte	.LLST9
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0x80
	.4byte	0x48
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LVL9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x99
	.uleb128 0x6
	.byte	0x4
	.4byte	0x243
	.uleb128 0x7
	.4byte	0x48
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	0x274
	.uleb128 0xe
	.string	"b1"
	.byte	0x1
	.byte	0x8d
	.4byte	0x23d
	.uleb128 0xe
	.string	"b2"
	.byte	0x1
	.byte	0x8e
	.4byte	0x23d
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0x8f
	.4byte	0xb0
	.byte	0
	.uleb128 0x13
	.4byte	0x248
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x14
	.4byte	0x254
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	0x25e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	0x268
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.4byte	.LASF17
	.byte	0x1
	.byte	0x98
	.4byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x10
	.string	"b1_"
	.byte	0x1
	.byte	0x98
	.4byte	0x23d
	.4byte	.LLST11
	.uleb128 0x19
	.string	"b2_"
	.byte	0x1
	.byte	0x98
	.4byte	0x23d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x98
	.4byte	0x21
	.4byte	.LLST12
	.uleb128 0x12
	.string	"b1"
	.byte	0x1
	.byte	0x9b
	.4byte	0x23d
	.4byte	.LLST13
	.uleb128 0x1a
	.string	"b2"
	.byte	0x1
	.byte	0x9c
	.4byte	0x23d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"gt"
	.byte	0x1
	.byte	0xa3
	.4byte	0x48
	.4byte	.LLST14
	.uleb128 0x12
	.string	"eq"
	.byte	0x1
	.byte	0xa4
	.4byte	0x48
	.4byte	.LLST15
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.4byte	0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x248
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb4
	.4byte	0x3a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38f
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xb4
	.4byte	0x23d
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb4
	.4byte	0xb0
	.4byte	.LLST17
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.4byte	0x21
	.4byte	.LLST18
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0xb7
	.4byte	0x48
	.4byte	.LLST19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3db
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xc0
	.4byte	0x7b
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	.LASF19
	.byte	0x1
	.byte	0xc0
	.4byte	0xb0
	.4byte	.LLST21
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.4byte	0x21
	.4byte	.LLST22
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xc3
	.4byte	0xa0
	.4byte	.LLST23
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0xef
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x434
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0xef
	.4byte	0x7b
	.4byte	.LLST24
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0xef
	.4byte	0x23d
	.4byte	.LLST25
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xef
	.4byte	0xb0
	.4byte	.LLST26
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.4byte	0x21
	.4byte	.LLST27
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xf2
	.4byte	0xa0
	.4byte	.LLST28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x121
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cc
	.uleb128 0x1d
	.string	"hex"
	.byte	0x1
	.2byte	0x121
	.4byte	0x4cc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x121
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"bin"
	.byte	0x1
	.2byte	0x122
	.4byte	0x4d1
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x122
	.4byte	0xb0
	.4byte	.LLST30
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0x21
	.4byte	.LLST31
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.2byte	0x125
	.4byte	0x2c
	.4byte	.LLST32
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.2byte	0x126
	.4byte	0x3a
	.4byte	.LLST33
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x127
	.4byte	0x3a
	.4byte	.LLST34
	.uleb128 0x22
	.4byte	.LVL51
	.4byte	0x908
	.byte	0
	.uleb128 0x7
	.4byte	0x81
	.uleb128 0x7
	.4byte	0x23d
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x13c
	.4byte	0x3a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62a
	.uleb128 0x1f
	.string	"bin"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x62a
	.4byte	.LLST35
	.uleb128 0x20
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x13c
	.4byte	0xb0
	.4byte	.LLST36
	.uleb128 0x1f
	.string	"hex"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x62f
	.4byte	.LLST37
	.uleb128 0x20
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x13d
	.4byte	0xb0
	.4byte	.LLST38
	.uleb128 0x20
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x13e
	.4byte	0x62f
	.4byte	.LLST39
	.uleb128 0x1e
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x13e
	.4byte	0x63a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x13f
	.4byte	0x645
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x141
	.4byte	0x21
	.4byte	.LLST40
	.uleb128 0x23
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x142
	.4byte	0x21
	.4byte	.LLST41
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.2byte	0x143
	.4byte	0x3a
	.4byte	.LLST42
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x144
	.4byte	0x48
	.4byte	.LLST43
	.uleb128 0x23
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x145
	.4byte	0x48
	.4byte	.LLST44
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x146
	.4byte	0x48
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x146
	.4byte	0x48
	.4byte	.LLST46
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x147
	.4byte	0x48
	.4byte	.LLST47
	.uleb128 0x23
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x147
	.4byte	0x48
	.4byte	.LLST48
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x148
	.4byte	0x48
	.4byte	.LLST49
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x149
	.4byte	0x48
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0x913
	.4byte	0x620
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x22
	.4byte	.LVL86
	.4byte	0x91e
	.byte	0
	.uleb128 0x7
	.4byte	0x7b
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21
	.uleb128 0x7
	.4byte	0x634
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x7
	.4byte	0x63f
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x173
	.4byte	0x3a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67d
	.uleb128 0x15
	.4byte	.LVL106
	.4byte	0x929
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	canary
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x18a
	.4byte	0x3a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bf
	.uleb128 0x20
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x18a
	.4byte	0xab
	.4byte	.LLST51
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x18a
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x91e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x19a
	.4byte	0x3a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73c
	.uleb128 0x20
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x19a
	.4byte	0xab
	.4byte	.LLST52
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	0xf8
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x19c
	.4byte	0x732
	.uleb128 0x14
	.4byte	0x10f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	0x104
	.4byte	.LLST53
	.uleb128 0x15
	.4byte	.LVL112
	.4byte	0x11b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL113
	.4byte	0x91e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x222
	.4byte	0x72
	.byte	0x1
	.4byte	0x75a
	.uleb128 0x27
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x222
	.4byte	0xb0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x253
	.4byte	0x72
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7df
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x253
	.4byte	0xb0
	.4byte	.LLST54
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x255
	.4byte	0x72
	.uleb128 0x25
	.4byte	0x73c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x257
	.4byte	0x7c8
	.uleb128 0x26
	.4byte	0x74d
	.4byte	.LLST55
	.uleb128 0x15
	.4byte	.LVL117
	.4byte	0x934
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL118
	.4byte	0x93f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x260
	.4byte	0x72
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x844
	.uleb128 0x20
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x260
	.4byte	0x21
	.4byte	.LLST56
	.uleb128 0x1e
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x260
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x262
	.4byte	0x21
	.4byte	.LLST57
	.uleb128 0x22
	.4byte	.LVL121
	.4byte	0x91e
	.uleb128 0x15
	.4byte	.LVL125
	.4byte	0x75a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x26f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x879
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.2byte	0x26f
	.4byte	0x72
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL128
	.4byte	0x94a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x3a
	.byte	0x1
	.4byte	0x897
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x72
	.byte	0
	.uleb128 0x13
	.4byte	0x879
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x26
	.4byte	0x88a
	.4byte	.LLST58
	.uleb128 0x2b
	.4byte	0xb5
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x2bc
	.uleb128 0x26
	.4byte	0xc6
	.4byte	.LLST59
	.uleb128 0x2c
	.4byte	0xd2
	.uleb128 0x22
	.4byte	.LVL131
	.4byte	0x91e
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3e
	.4byte	0x21
	.uleb128 0x2e
	.4byte	0x48
	.4byte	0x8f7
	.uleb128 0x2f
	.4byte	0x6b
	.byte	0xf
	.byte	0
	.uleb128 0x30
	.4byte	.LASF53
	.byte	0x1
	.byte	0x3f
	.4byte	0x8e7
	.uleb128 0x5
	.byte	0x3
	.4byte	canary
	.uleb128 0x31
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x47
	.uleb128 0x31
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0x1b
	.uleb128 0x31
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.byte	0xf
	.uleb128 0x31
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x21
	.uleb128 0x31
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x4
	.byte	0x65
	.uleb128 0x31
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.byte	0x19
	.uleb128 0x31
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x4
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
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
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
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
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE7
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE8
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x20
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x79
	.sleb128 -87
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0xa
	.byte	0x74
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x7
	.byte	0x7a
	.sleb128 -87
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0xa
	.byte	0x74
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL65
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL79-1
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL101
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL66
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL87
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL100
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL79-1
	.2byte	0xc
	.byte	0x79
	.sleb128 -10
	.byte	0x79
	.sleb128 -16
	.byte	0x27
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL86-1
	.2byte	0xc
	.byte	0x79
	.sleb128 -10
	.byte	0x79
	.sleb128 -16
	.byte	0x27
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL97
	.2byte	0xc
	.byte	0x79
	.sleb128 -10
	.byte	0x79
	.sleb128 -16
	.byte	0x27
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL74
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x9
	.byte	0x7f
	.sleb128 -10
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL86-1
	.2byte	0x9
	.byte	0x7f
	.sleb128 -10
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL97
	.2byte	0x9
	.byte	0x7f
	.sleb128 -10
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL73
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL87
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL84
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1b
	.byte	0x7f
	.sleb128 -10
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x1a
	.byte	0x79
	.sleb128 -10
	.byte	0x79
	.sleb128 -16
	.byte	0x27
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1b
	.byte	0x7f
	.sleb128 -10
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x7f
	.sleb128 0
	.byte	0x1a
	.byte	0x79
	.sleb128 -10
	.byte	0x79
	.sleb128 -16
	.byte	0x27
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL116
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125-1
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LFE19
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"count"
.LASF58:
	.string	"malloc"
.LASF23:
	.string	"sodium_bin2hex"
.LASF57:
	.string	"randombytes_buf"
.LASF11:
	.string	"size_t"
.LASF52:
	.string	"page_size"
.LASF16:
	.string	"sodium_memcmp"
.LASF62:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/utils.c"
.LASF56:
	.string	"__errno"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"hex_len"
.LASF42:
	.string	"addr"
.LASF31:
	.string	"bin_pos"
.LASF50:
	.string	"total_size"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF55:
	.string	"strchr"
.LASF46:
	.string	"size"
.LASF39:
	.string	"state"
.LASF7:
	.string	"long int"
.LASF26:
	.string	"sodium_hex2bin"
.LASF45:
	.string	"_sodium_malloc"
.LASF47:
	.string	"sodium_malloc"
.LASF21:
	.string	"sodium_increment"
.LASF63:
	.string	"sodium_mprotect_readwrite"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"sodium_add"
.LASF19:
	.string	"nlen"
.LASF9:
	.string	"long unsigned int"
.LASF17:
	.string	"sodium_compare"
.LASF61:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"short unsigned int"
.LASF53:
	.string	"canary"
.LASF36:
	.string	"c_num0"
.LASF43:
	.string	"sodium_munlock"
.LASF51:
	.string	"sodium_free"
.LASF8:
	.string	"sizetype"
.LASF25:
	.string	"bin_len"
.LASF30:
	.string	"hex_end"
.LASF24:
	.string	"hex_maxlen"
.LASF14:
	.string	"sodium_memzero"
.LASF44:
	.string	"_sodium_mprotect"
.LASF12:
	.string	"uint_fast16_t"
.LASF29:
	.string	"ignore"
.LASF18:
	.string	"sodium_is_zero"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"_sodium_dummy_symbol_to_prevent_compare_lto"
.LASF32:
	.string	"hex_pos"
.LASF13:
	.string	"pnt_"
.LASF40:
	.string	"_sodium_alloc_init"
.LASF10:
	.string	"char"
.LASF27:
	.string	"bin_maxlen"
.LASF54:
	.string	"abort"
.LASF20:
	.string	"_sodium_memzero_as_a_weak_symbol_to_prevent_lto"
.LASF48:
	.string	"sodium_allocarray"
.LASF60:
	.string	"free"
.LASF41:
	.string	"sodium_mlock"
.LASF38:
	.string	"c_val"
.LASF59:
	.string	"memset"
.LASF33:
	.string	"c_acc"
.LASF37:
	.string	"c_num"
.LASF35:
	.string	"c_alpha"
.LASF34:
	.string	"c_alpha0"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
